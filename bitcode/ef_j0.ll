; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_j0.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_j0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pR8 = internal unnamed_addr constant [6 x float] [float 0.000000e+00, float -7.031250e-02, float 0xC02029D0C0000000, float 0xC070110280000000, float 0xC0A36A6EC0000000, float 0xC0B4850B40000000], align 16, !dbg !0
@pS8 = internal unnamed_addr constant [5 x float] [float 0x405D223300000000, float 0x40ADF37D60000000, float 0x40E3D2BB60000000, float 0x40FC810F80000000, float 0x40E7417740000000], align 16, !dbg !57
@pR5 = internal unnamed_addr constant [6 x float] [float 0xBDA918B140000000, float 0xBFB1FFFFE0000000, float 0xC010A37100000000, float 0xC050EB2F60000000, float 0xC074B3B360000000, float 0xC075A6EF20000000], align 16, !dbg !62
@pS5 = internal unnamed_addr constant [5 x float] [float 0x404E608100000000, float 0x40906D0260000000, float 0x40B75AF880000000, float 0x40C2CCB900000000, float 0x40A2CC1DC0000000], align 16, !dbg !67
@pR3 = internal unnamed_addr constant [6 x float] [float 0xBE25E10360000000, float 0xBFB1FFF700000000, float 0xC00345B2A0000000, float 0xC035F74A40000000, float 0xC04D0A2240000000, float 0xC03F72ACA0000000], align 16, !dbg !69
@pS3 = internal unnamed_addr constant [5 x float] [float 0x4041ED9280000000, float 0x4076983940000000, float 0x4092A66E60000000, float 0x40919FFCC0000000, float 0x4065B29700000000], align 16, !dbg !71
@pR2 = internal unnamed_addr constant [6 x float] [float 0xBE77D316E0000000, float 0xBFB1FF6240000000, float 0xBFF7363980000000, float 0xC01E8AF3E0000000, float 0xC02662E6C0000000, float 0xC009DE81A0000000], align 16, !dbg !73
@pS2 = internal unnamed_addr constant [5 x float] [float 0x40363865A0000000, float 0x4061069E00000000, float 0x4070E78640000000, float 0x40633C0340000000, float 0x402D50B340000000], align 16, !dbg !75
@qR8 = internal unnamed_addr constant [6 x float] [float 0.000000e+00, float 0x3FB2C00000000000, float 0x4027895260000000, float 0x40816D6320000000, float 0x40C14D9940000000, float 0x40E212D400000000], align 16, !dbg !77
@qS8 = internal unnamed_addr constant [6 x float] [float 0x406478D540000000, float 0x40BFA25840000000, float 0x4101665260000000, float 0x412883DA80000000, float 0x4129A66B20000000, float 0xC114FD6D20000000], align 16, !dbg !79
@qR5 = internal unnamed_addr constant [6 x float] [float 0x3DB43D8F20000000, float 0x3FB2BFFFE0000000, float 0x401757B0C0000000, float 0x4060E39200000000, float 0x40900CF9A0000000, float 0x409F17E960000000], align 16, !dbg !81
@qS5 = internal unnamed_addr constant [6 x float] [float 0x4054B1B400000000, float 0x40A03BA0E0000000, float 0x40D267D280000000, float 0x40EBB5E3A0000000, float 0x40E1911820000000, float 0xC0B4EA57C0000000], align 16, !dbg !83
@qR3 = internal unnamed_addr constant [6 x float] [float 0x3E32CD0360000000, float 0x3FB2BFEE00000000, float 0x400AC0FC60000000, float 0x40454F98A0000000, float 0x406559DBE0000000, float 0x4064D77C80000000], align 16, !dbg !85
@qS3 = internal unnamed_addr constant [6 x float] [float 0x40486122C0000000, float 0x40862D8380000000, float 0x40ACF04BE0000000, float 0x40B93C6CE0000000, float 0x40A3A8AAE0000000, float 0xC062A7EB20000000], align 16, !dbg !87
@qR2 = internal unnamed_addr constant [6 x float] [float 0x3E84313B60000000, float 0x3FB2BEC540000000, float 0x3FFFF897E0000000, float 0x402CFDBFA0000000, float 0x403FAA8E20000000, float 0x403040B180000000], align 16, !dbg !89
@qS2 = internal unnamed_addr constant [6 x float] [float 0x403E5D9700000000, float 0x4070D591E0000000, float 0x408A664520000000, float 0x408B977CA0000000, float 0x406A955300000000, float 0xC0153E6B00000000], align 16, !dbg !91
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_j0f(float) local_unnamed_addr #0 !dbg !97 {
  %2 = bitcast float %0 to i32, !dbg !126
  %3 = and i32 %2, 2147483647, !dbg !128
  %4 = icmp ult i32 %3, 2139095040, !dbg !130
  br i1 %4, label %8, label %5, !dbg !132

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !133
  %7 = fdiv float 1.000000e+00, %6, !dbg !134
  br label %190, !dbg !135

; <label>:8:                                      ; preds = %1
  %9 = tail call float @fabsf(float %0) #3, !dbg !136
  %10 = icmp ugt i32 %3, 1073741823, !dbg !137
  br i1 %10, label %11, label %148, !dbg !139

; <label>:11:                                     ; preds = %8
  %12 = tail call float @sinf(float %9) #3, !dbg !140
  %13 = tail call float @cosf(float %9) #3, !dbg !143
  %14 = fsub float %12, %13, !dbg !145
  %15 = fadd float %12, %13, !dbg !147
  %16 = icmp ult i32 %3, 2130706432, !dbg !149
  br i1 %16, label %17, label %27, !dbg !151

; <label>:17:                                     ; preds = %11
  %18 = fadd float %9, %9, !dbg !152
  %19 = tail call float @cosf(float %18) #3, !dbg !154
  %20 = fsub float -0.000000e+00, %19, !dbg !155
  %21 = fmul float %12, %13, !dbg !157
  %22 = fcmp olt float %21, 0.000000e+00, !dbg !159
  br i1 %22, label %23, label %25, !dbg !160

; <label>:23:                                     ; preds = %17
  %24 = fdiv float %20, %14, !dbg !161
  br label %27, !dbg !162

; <label>:25:                                     ; preds = %17
  %26 = fdiv float %20, %15, !dbg !163
  br label %27

; <label>:27:                                     ; preds = %11, %25, %23
  %28 = phi float [ %24, %23 ], [ %15, %25 ], [ %15, %11 ], !dbg !164
  %29 = phi float [ %14, %23 ], [ %26, %25 ], [ %14, %11 ], !dbg !164
  %30 = bitcast float %9 to i32, !dbg !181
  %31 = and i32 %30, 2147483647, !dbg !183
  %32 = icmp ugt i32 %31, 1090519039, !dbg !184
  br i1 %32, label %39, label %33, !dbg !186

; <label>:33:                                     ; preds = %27
  %34 = icmp ugt i32 %31, 1089936471, !dbg !187
  br i1 %34, label %39, label %35, !dbg !189

; <label>:35:                                     ; preds = %33
  %36 = icmp ugt i32 %31, 1077336935, !dbg !190
  %37 = select i1 %36, float* getelementptr inbounds ([5 x float], [5 x float]* @pS3, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @pS2, i64 0, i64 0), !dbg !192
  %38 = select i1 %36, float* getelementptr inbounds ([6 x float], [6 x float]* @pR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @pR2, i64 0, i64 0), !dbg !192
  br label %39, !dbg !192

; <label>:39:                                     ; preds = %27, %33, %35
  %40 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @pS8, i64 0, i64 0), %27 ], [ getelementptr inbounds ([5 x float], [5 x float]* @pS5, i64 0, i64 0), %33 ], [ %37, %35 ], !dbg !194
  %41 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @pR8, i64 0, i64 0), %27 ], [ getelementptr inbounds ([6 x float], [6 x float]* @pR5, i64 0, i64 0), %33 ], [ %38, %35 ], !dbg !194
  %42 = fmul float %9, %9, !dbg !198
  %43 = fdiv float 1.000000e+00, %42, !dbg !199
  %44 = load float, float* %41, align 4, !dbg !201, !tbaa !202
  %45 = getelementptr inbounds float, float* %41, i64 1, !dbg !206
  %46 = load float, float* %45, align 4, !dbg !206, !tbaa !202
  %47 = getelementptr inbounds float, float* %41, i64 2, !dbg !207
  %48 = load float, float* %47, align 4, !dbg !207, !tbaa !202
  %49 = getelementptr inbounds float, float* %41, i64 3, !dbg !208
  %50 = load float, float* %49, align 4, !dbg !208, !tbaa !202
  %51 = getelementptr inbounds float, float* %41, i64 4, !dbg !209
  %52 = load float, float* %51, align 4, !dbg !209, !tbaa !202
  %53 = getelementptr inbounds float, float* %41, i64 5, !dbg !210
  %54 = load float, float* %53, align 4, !dbg !210, !tbaa !202
  %55 = fmul float %43, %54, !dbg !211
  %56 = fadd float %52, %55, !dbg !212
  %57 = fmul float %43, %56, !dbg !213
  %58 = fadd float %50, %57, !dbg !214
  %59 = fmul float %43, %58, !dbg !215
  %60 = fadd float %48, %59, !dbg !216
  %61 = fmul float %43, %60, !dbg !217
  %62 = fadd float %46, %61, !dbg !218
  %63 = fmul float %43, %62, !dbg !219
  %64 = fadd float %44, %63, !dbg !220
  %65 = load float, float* %40, align 4, !dbg !222, !tbaa !202
  %66 = getelementptr inbounds float, float* %40, i64 1, !dbg !223
  %67 = load float, float* %66, align 4, !dbg !223, !tbaa !202
  %68 = getelementptr inbounds float, float* %40, i64 2, !dbg !224
  %69 = load float, float* %68, align 4, !dbg !224, !tbaa !202
  %70 = getelementptr inbounds float, float* %40, i64 3, !dbg !225
  %71 = load float, float* %70, align 4, !dbg !225, !tbaa !202
  %72 = getelementptr inbounds float, float* %40, i64 4, !dbg !226
  %73 = load float, float* %72, align 4, !dbg !226, !tbaa !202
  %74 = fmul float %43, %73, !dbg !227
  %75 = fadd float %71, %74, !dbg !228
  %76 = fmul float %43, %75, !dbg !229
  %77 = fadd float %69, %76, !dbg !230
  %78 = fmul float %43, %77, !dbg !231
  %79 = fadd float %67, %78, !dbg !232
  %80 = fmul float %43, %79, !dbg !233
  %81 = fadd float %65, %80, !dbg !234
  %82 = fmul float %43, %81, !dbg !235
  %83 = fadd float %82, 1.000000e+00, !dbg !236
  %84 = fdiv float %64, %83, !dbg !238
  %85 = fadd float %84, 1.000000e+00, !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %32, label %92, label %86, !dbg !256

; <label>:86:                                     ; preds = %39
  %87 = icmp ugt i32 %31, 1089936471, !dbg !257
  br i1 %87, label %92, label %88, !dbg !260

; <label>:88:                                     ; preds = %86
  %89 = icmp ugt i32 %31, 1077336935, !dbg !261
  %90 = select i1 %89, float* getelementptr inbounds ([6 x float], [6 x float]* @qS3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qS2, i64 0, i64 0), !dbg !263
  %91 = select i1 %89, float* getelementptr inbounds ([6 x float], [6 x float]* @qR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qR2, i64 0, i64 0), !dbg !263
  br label %92, !dbg !263

; <label>:92:                                     ; preds = %39, %86, %88
  %93 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qS8, i64 0, i64 0), %39 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qS5, i64 0, i64 0), %86 ], [ %90, %88 ], !dbg !265
  %94 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qR8, i64 0, i64 0), %39 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qR5, i64 0, i64 0), %86 ], [ %91, %88 ], !dbg !265
  %95 = load float, float* %94, align 4, !dbg !270, !tbaa !202
  %96 = getelementptr inbounds float, float* %94, i64 1, !dbg !271
  %97 = load float, float* %96, align 4, !dbg !271, !tbaa !202
  %98 = getelementptr inbounds float, float* %94, i64 2, !dbg !272
  %99 = load float, float* %98, align 4, !dbg !272, !tbaa !202
  %100 = getelementptr inbounds float, float* %94, i64 3, !dbg !273
  %101 = load float, float* %100, align 4, !dbg !273, !tbaa !202
  %102 = getelementptr inbounds float, float* %94, i64 4, !dbg !274
  %103 = load float, float* %102, align 4, !dbg !274, !tbaa !202
  %104 = getelementptr inbounds float, float* %94, i64 5, !dbg !275
  %105 = load float, float* %104, align 4, !dbg !275, !tbaa !202
  %106 = fmul float %43, %105, !dbg !276
  %107 = fadd float %103, %106, !dbg !277
  %108 = fmul float %43, %107, !dbg !278
  %109 = fadd float %101, %108, !dbg !279
  %110 = fmul float %43, %109, !dbg !280
  %111 = fadd float %99, %110, !dbg !281
  %112 = fmul float %43, %111, !dbg !282
  %113 = fadd float %97, %112, !dbg !283
  %114 = fmul float %43, %113, !dbg !284
  %115 = fadd float %95, %114, !dbg !285
  %116 = load float, float* %93, align 4, !dbg !287, !tbaa !202
  %117 = getelementptr inbounds float, float* %93, i64 1, !dbg !288
  %118 = load float, float* %117, align 4, !dbg !288, !tbaa !202
  %119 = getelementptr inbounds float, float* %93, i64 2, !dbg !289
  %120 = load float, float* %119, align 4, !dbg !289, !tbaa !202
  %121 = getelementptr inbounds float, float* %93, i64 3, !dbg !290
  %122 = load float, float* %121, align 4, !dbg !290, !tbaa !202
  %123 = getelementptr inbounds float, float* %93, i64 4, !dbg !291
  %124 = load float, float* %123, align 4, !dbg !291, !tbaa !202
  %125 = getelementptr inbounds float, float* %93, i64 5, !dbg !292
  %126 = load float, float* %125, align 4, !dbg !292, !tbaa !202
  %127 = fmul float %43, %126, !dbg !293
  %128 = fadd float %124, %127, !dbg !294
  %129 = fmul float %43, %128, !dbg !295
  %130 = fadd float %122, %129, !dbg !296
  %131 = fmul float %43, %130, !dbg !297
  %132 = fadd float %120, %131, !dbg !298
  %133 = fmul float %43, %132, !dbg !299
  %134 = fadd float %118, %133, !dbg !300
  %135 = fmul float %43, %134, !dbg !301
  %136 = fadd float %116, %135, !dbg !302
  %137 = fmul float %43, %136, !dbg !303
  %138 = fadd float %137, 1.000000e+00, !dbg !304
  %139 = fdiv float %115, %138, !dbg !306
  %140 = fadd float %139, -1.250000e-01, !dbg !307
  %141 = fdiv float %140, %9, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %142 = tail call float @__ieee754_sqrtf(float %9) #3, !dbg !311
  %143 = fmul float %28, %85, !dbg !312
  %144 = fmul float %29, %141, !dbg !313
  %145 = fsub float %143, %144, !dbg !314
  %146 = fmul float %145, 0x3FE20DD760000000, !dbg !315
  %147 = fdiv float %146, %142, !dbg !316
  br label %190, !dbg !317

; <label>:148:                                    ; preds = %8
  %149 = icmp ult i32 %3, 956301312, !dbg !318
  %150 = fadd float %9, 0x46293E5940000000, !dbg !320
  %151 = fcmp ogt float %150, 1.000000e+00, !dbg !323
  %152 = and i1 %149, %151, !dbg !324
  br i1 %152, label %153, label %159, !dbg !324

; <label>:153:                                    ; preds = %148
  %154 = icmp ult i32 %3, 838860800, !dbg !325
  br i1 %154, label %190, label %155, !dbg !328

; <label>:155:                                    ; preds = %153
  %156 = fmul float %9, 2.500000e-01, !dbg !329
  %157 = fmul float %9, %156, !dbg !330
  %158 = fsub float 1.000000e+00, %157, !dbg !331
  br label %190, !dbg !332

; <label>:159:                                    ; preds = %148
  %160 = fmul float %9, %9, !dbg !333
  %161 = fmul float %160, 0x3E33D5E780000000, !dbg !334
  %162 = fsub float 0x3EBEB1D100000000, %161, !dbg !334
  %163 = fmul float %160, %162, !dbg !335
  %164 = fadd float %163, 0xBF28E6A5C0000000, !dbg !336
  %165 = fmul float %160, %164, !dbg !337
  %166 = fadd float %165, 1.562500e-02, !dbg !338
  %167 = fmul float %160, %166, !dbg !339
  %168 = fmul float %160, 0x3E1408BD00000000, !dbg !341
  %169 = fadd float %168, 0x3EA13B54C0000000, !dbg !342
  %170 = fmul float %160, %169, !dbg !343
  %171 = fadd float %170, 0x3F1EA6D2E0000000, !dbg !344
  %172 = fmul float %160, %171, !dbg !345
  %173 = fadd float %172, 0x3F8FFCE880000000, !dbg !346
  %174 = fmul float %160, %173, !dbg !347
  %175 = fadd float %174, 1.000000e+00, !dbg !348
  %176 = icmp ult i32 %3, 1065353216, !dbg !349
  br i1 %176, label %177, label %182, !dbg !351

; <label>:177:                                    ; preds = %159
  %178 = fdiv float %167, %175, !dbg !352
  %179 = fadd float %178, -2.500000e-01, !dbg !354
  %180 = fmul float %160, %179, !dbg !355
  %181 = fadd float %180, 1.000000e+00, !dbg !356
  br label %190, !dbg !357

; <label>:182:                                    ; preds = %159
  %183 = fmul float %9, 5.000000e-01, !dbg !358
  %184 = fadd float %183, 1.000000e+00, !dbg !360
  %185 = fsub float 1.000000e+00, %183, !dbg !361
  %186 = fmul float %184, %185, !dbg !362
  %187 = fdiv float %167, %175, !dbg !363
  %188 = fmul float %160, %187, !dbg !364
  %189 = fadd float %186, %188, !dbg !365
  br label %190, !dbg !366

; <label>:190:                                    ; preds = %153, %182, %177, %155, %92, %5
  %191 = phi float [ %147, %92 ], [ %158, %155 ], [ %181, %177 ], [ %189, %182 ], [ %7, %5 ], [ 1.000000e+00, %153 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  ret float %191, !dbg !368
}

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @sinf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @cosf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_y0f(float) local_unnamed_addr #0 !dbg !369 {
  %2 = bitcast float %0 to i32, !dbg !384
  %3 = and i32 %2, 2147483647, !dbg !386
  %4 = icmp ult i32 %3, 2139095040, !dbg !388
  br i1 %4, label %9, label %5, !dbg !390

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !391
  %7 = fadd float %6, %0, !dbg !392
  %8 = fdiv float 1.000000e+00, %7, !dbg !393
  br label %187, !dbg !394

; <label>:9:                                      ; preds = %1
  %10 = icmp eq i32 %3, 0, !dbg !395
  br i1 %10, label %187, label %11, !dbg !397

; <label>:11:                                     ; preds = %9
  %12 = icmp slt i32 %2, 0, !dbg !398
  br i1 %12, label %187, label %13, !dbg !400

; <label>:13:                                     ; preds = %11
  %14 = icmp ugt i32 %3, 1073741823, !dbg !401
  br i1 %14, label %15, label %153, !dbg !403

; <label>:15:                                     ; preds = %13
  %16 = tail call float @sinf(float %0) #3, !dbg !404
  %17 = tail call float @cosf(float %0) #3, !dbg !407
  %18 = fsub float %16, %17, !dbg !409
  %19 = fadd float %16, %17, !dbg !411
  %20 = icmp ult i32 %3, 2130706432, !dbg !413
  br i1 %20, label %21, label %41, !dbg !415

; <label>:21:                                     ; preds = %15
  %22 = fadd float %0, %0, !dbg !416
  %23 = tail call float @cosf(float %22) #3, !dbg !418
  %24 = fsub float -0.000000e+00, %23, !dbg !419
  %25 = fmul float %16, %17, !dbg !421
  %26 = fcmp olt float %25, 0.000000e+00, !dbg !423
  br i1 %26, label %27, label %29, !dbg !424

; <label>:27:                                     ; preds = %21
  %28 = fdiv float %24, %18, !dbg !425
  br label %31, !dbg !426

; <label>:29:                                     ; preds = %21
  %30 = fdiv float %24, %19, !dbg !427
  br label %31

; <label>:31:                                     ; preds = %29, %27
  %32 = phi float [ %28, %27 ], [ %19, %29 ], !dbg !428
  %33 = phi float [ %18, %27 ], [ %30, %29 ], !dbg !428
  %34 = icmp ugt i32 %3, 1090519039, !dbg !434
  br i1 %34, label %41, label %35, !dbg !435

; <label>:35:                                     ; preds = %31
  %36 = icmp ugt i32 %3, 1089936471, !dbg !436
  br i1 %36, label %41, label %37, !dbg !437

; <label>:37:                                     ; preds = %35
  %38 = icmp ugt i32 %3, 1077336935, !dbg !438
  %39 = select i1 %38, float* getelementptr inbounds ([5 x float], [5 x float]* @pS3, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @pS2, i64 0, i64 0), !dbg !439
  %40 = select i1 %38, float* getelementptr inbounds ([6 x float], [6 x float]* @pR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @pR2, i64 0, i64 0), !dbg !439
  br label %41, !dbg !439

; <label>:41:                                     ; preds = %15, %31, %35, %37
  %42 = phi i1 [ true, %31 ], [ false, %35 ], [ false, %37 ], [ true, %15 ]
  %43 = phi float [ %33, %31 ], [ %33, %35 ], [ %33, %37 ], [ %18, %15 ]
  %44 = phi float [ %32, %31 ], [ %32, %35 ], [ %32, %37 ], [ %19, %15 ]
  %45 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @pS8, i64 0, i64 0), %31 ], [ getelementptr inbounds ([5 x float], [5 x float]* @pS5, i64 0, i64 0), %35 ], [ %39, %37 ], [ getelementptr inbounds ([5 x float], [5 x float]* @pS8, i64 0, i64 0), %15 ], !dbg !440
  %46 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @pR8, i64 0, i64 0), %31 ], [ getelementptr inbounds ([6 x float], [6 x float]* @pR5, i64 0, i64 0), %35 ], [ %40, %37 ], [ getelementptr inbounds ([6 x float], [6 x float]* @pR8, i64 0, i64 0), %15 ], !dbg !440
  %47 = fmul float %0, %0, !dbg !443
  %48 = fdiv float 1.000000e+00, %47, !dbg !444
  %49 = load float, float* %46, align 4, !dbg !446, !tbaa !202
  %50 = getelementptr inbounds float, float* %46, i64 1, !dbg !447
  %51 = load float, float* %50, align 4, !dbg !447, !tbaa !202
  %52 = getelementptr inbounds float, float* %46, i64 2, !dbg !448
  %53 = load float, float* %52, align 4, !dbg !448, !tbaa !202
  %54 = getelementptr inbounds float, float* %46, i64 3, !dbg !449
  %55 = load float, float* %54, align 4, !dbg !449, !tbaa !202
  %56 = getelementptr inbounds float, float* %46, i64 4, !dbg !450
  %57 = load float, float* %56, align 4, !dbg !450, !tbaa !202
  %58 = getelementptr inbounds float, float* %46, i64 5, !dbg !451
  %59 = load float, float* %58, align 4, !dbg !451, !tbaa !202
  %60 = fmul float %48, %59, !dbg !452
  %61 = fadd float %57, %60, !dbg !453
  %62 = fmul float %48, %61, !dbg !454
  %63 = fadd float %55, %62, !dbg !455
  %64 = fmul float %48, %63, !dbg !456
  %65 = fadd float %53, %64, !dbg !457
  %66 = fmul float %48, %65, !dbg !458
  %67 = fadd float %51, %66, !dbg !459
  %68 = fmul float %48, %67, !dbg !460
  %69 = fadd float %49, %68, !dbg !461
  %70 = load float, float* %45, align 4, !dbg !463, !tbaa !202
  %71 = getelementptr inbounds float, float* %45, i64 1, !dbg !464
  %72 = load float, float* %71, align 4, !dbg !464, !tbaa !202
  %73 = getelementptr inbounds float, float* %45, i64 2, !dbg !465
  %74 = load float, float* %73, align 4, !dbg !465, !tbaa !202
  %75 = getelementptr inbounds float, float* %45, i64 3, !dbg !466
  %76 = load float, float* %75, align 4, !dbg !466, !tbaa !202
  %77 = getelementptr inbounds float, float* %45, i64 4, !dbg !467
  %78 = load float, float* %77, align 4, !dbg !467, !tbaa !202
  %79 = fmul float %48, %78, !dbg !468
  %80 = fadd float %76, %79, !dbg !469
  %81 = fmul float %48, %80, !dbg !470
  %82 = fadd float %74, %81, !dbg !471
  %83 = fmul float %48, %82, !dbg !472
  %84 = fadd float %72, %83, !dbg !473
  %85 = fmul float %48, %84, !dbg !474
  %86 = fadd float %70, %85, !dbg !475
  %87 = fmul float %48, %86, !dbg !476
  %88 = fadd float %87, 1.000000e+00, !dbg !477
  %89 = fdiv float %69, %88, !dbg !479
  %90 = fadd float %89, 1.000000e+00, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %42, label %97, label %91, !dbg !486

; <label>:91:                                     ; preds = %41
  %92 = icmp ugt i32 %3, 1089936471, !dbg !487
  br i1 %92, label %97, label %93, !dbg !488

; <label>:93:                                     ; preds = %91
  %94 = icmp ugt i32 %3, 1077336935, !dbg !489
  %95 = select i1 %94, float* getelementptr inbounds ([6 x float], [6 x float]* @qS3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qS2, i64 0, i64 0), !dbg !490
  %96 = select i1 %94, float* getelementptr inbounds ([6 x float], [6 x float]* @qR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qR2, i64 0, i64 0), !dbg !490
  br label %97, !dbg !490

; <label>:97:                                     ; preds = %41, %91, %93
  %98 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qS8, i64 0, i64 0), %41 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qS5, i64 0, i64 0), %91 ], [ %95, %93 ], !dbg !491
  %99 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qR8, i64 0, i64 0), %41 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qR5, i64 0, i64 0), %91 ], [ %96, %93 ], !dbg !491
  %100 = load float, float* %99, align 4, !dbg !495, !tbaa !202
  %101 = getelementptr inbounds float, float* %99, i64 1, !dbg !496
  %102 = load float, float* %101, align 4, !dbg !496, !tbaa !202
  %103 = getelementptr inbounds float, float* %99, i64 2, !dbg !497
  %104 = load float, float* %103, align 4, !dbg !497, !tbaa !202
  %105 = getelementptr inbounds float, float* %99, i64 3, !dbg !498
  %106 = load float, float* %105, align 4, !dbg !498, !tbaa !202
  %107 = getelementptr inbounds float, float* %99, i64 4, !dbg !499
  %108 = load float, float* %107, align 4, !dbg !499, !tbaa !202
  %109 = getelementptr inbounds float, float* %99, i64 5, !dbg !500
  %110 = load float, float* %109, align 4, !dbg !500, !tbaa !202
  %111 = fmul float %48, %110, !dbg !501
  %112 = fadd float %108, %111, !dbg !502
  %113 = fmul float %48, %112, !dbg !503
  %114 = fadd float %106, %113, !dbg !504
  %115 = fmul float %48, %114, !dbg !505
  %116 = fadd float %104, %115, !dbg !506
  %117 = fmul float %48, %116, !dbg !507
  %118 = fadd float %102, %117, !dbg !508
  %119 = fmul float %48, %118, !dbg !509
  %120 = fadd float %100, %119, !dbg !510
  %121 = load float, float* %98, align 4, !dbg !512, !tbaa !202
  %122 = getelementptr inbounds float, float* %98, i64 1, !dbg !513
  %123 = load float, float* %122, align 4, !dbg !513, !tbaa !202
  %124 = getelementptr inbounds float, float* %98, i64 2, !dbg !514
  %125 = load float, float* %124, align 4, !dbg !514, !tbaa !202
  %126 = getelementptr inbounds float, float* %98, i64 3, !dbg !515
  %127 = load float, float* %126, align 4, !dbg !515, !tbaa !202
  %128 = getelementptr inbounds float, float* %98, i64 4, !dbg !516
  %129 = load float, float* %128, align 4, !dbg !516, !tbaa !202
  %130 = getelementptr inbounds float, float* %98, i64 5, !dbg !517
  %131 = load float, float* %130, align 4, !dbg !517, !tbaa !202
  %132 = fmul float %48, %131, !dbg !518
  %133 = fadd float %129, %132, !dbg !519
  %134 = fmul float %48, %133, !dbg !520
  %135 = fadd float %127, %134, !dbg !521
  %136 = fmul float %48, %135, !dbg !522
  %137 = fadd float %125, %136, !dbg !523
  %138 = fmul float %48, %137, !dbg !524
  %139 = fadd float %123, %138, !dbg !525
  %140 = fmul float %48, %139, !dbg !526
  %141 = fadd float %121, %140, !dbg !527
  %142 = fmul float %48, %141, !dbg !528
  %143 = fadd float %142, 1.000000e+00, !dbg !529
  %144 = fdiv float %120, %143, !dbg !531
  %145 = fadd float %144, -1.250000e-01, !dbg !532
  %146 = fdiv float %145, %0, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  %147 = fmul float %43, %90, !dbg !536
  %148 = fmul float %44, %146, !dbg !537
  %149 = fadd float %147, %148, !dbg !538
  %150 = fmul float %149, 0x3FE20DD760000000, !dbg !539
  %151 = tail call float @__ieee754_sqrtf(float %0) #3, !dbg !540
  %152 = fdiv float %150, %151, !dbg !541
  br label %187, !dbg !542

; <label>:153:                                    ; preds = %13
  %154 = icmp ult i32 %3, 838860801, !dbg !543
  br i1 %154, label %155, label %159, !dbg !545

; <label>:155:                                    ; preds = %153
  %156 = tail call float @__ieee754_logf(float %0) #3, !dbg !546
  %157 = fmul float %156, 0x3FE45F3060000000, !dbg !548
  %158 = fadd float %157, 0xBFB2E4D6A0000000, !dbg !549
  br label %187, !dbg !550

; <label>:159:                                    ; preds = %153
  %160 = fmul float %0, %0, !dbg !551
  %161 = fmul float %160, 0x3DC5E43D60000000, !dbg !552
  %162 = fsub float 0x3E55005740000000, %161, !dbg !552
  %163 = fmul float %160, %162, !dbg !553
  %164 = fadd float %163, 0xBECFFEA780000000, !dbg !554
  %165 = fmul float %160, %164, !dbg !555
  %166 = fadd float %165, 0x3F36C54D20000000, !dbg !556
  %167 = fmul float %160, %166, !dbg !557
  %168 = fadd float %167, 0xBF8C4CE8C0000000, !dbg !558
  %169 = fmul float %160, %168, !dbg !559
  %170 = fadd float %169, 0x3FC69D01A0000000, !dbg !560
  %171 = fmul float %160, %170, !dbg !561
  %172 = fadd float %171, 0xBFB2E4D6A0000000, !dbg !562
  %173 = fmul float %160, 0x3DFE501840000000, !dbg !563
  %174 = fadd float %173, 0x3E91642D80000000, !dbg !564
  %175 = fmul float %160, %174, !dbg !565
  %176 = fadd float %175, 0x3F13ECBC00000000, !dbg !566
  %177 = fmul float %160, %176, !dbg !567
  %178 = fadd float %177, 0x3F8A1270A0000000, !dbg !568
  %179 = fmul float %160, %178, !dbg !569
  %180 = fadd float %179, 1.000000e+00, !dbg !570
  %181 = fdiv float %172, %180, !dbg !571
  %182 = tail call float @__ieee754_j0f(float %0) #4, !dbg !572
  %183 = tail call float @__ieee754_logf(float %0) #3, !dbg !573
  %184 = fmul float %182, %183, !dbg !574
  %185 = fmul float %184, 0x3FE45F3060000000, !dbg !575
  %186 = fadd float %181, %185, !dbg !576
  br label %187, !dbg !577

; <label>:187:                                    ; preds = %11, %9, %159, %155, %97, %5
  %188 = phi float [ %152, %97 ], [ %158, %155 ], [ %186, %159 ], [ %8, %5 ], [ 0xFFF0000000000000, %9 ], [ 0x7FF8000000000000, %11 ], !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  ret float %188, !dbg !579
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!93, !94, !95}
!llvm.ident = !{!96}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pR8", scope: !2, file: !3, line: 185, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_j0.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!8, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !0, !57, !62, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 30, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 44, type: !10, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 1058041531, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !3, line: 31, type: !10, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 29, type: !10, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 1015021568, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "R02", scope: !2, file: !3, line: 34, type: !10, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 3108451630, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "R03", scope: !2, file: !3, line: 35, type: !10, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 905285256, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "R04", scope: !2, file: !3, line: 36, type: !10, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 2979966780, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "R05", scope: !2, file: !3, line: 37, type: !10, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 1015015236, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "S01", scope: !2, file: !3, line: 38, type: !10, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 955594391, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "S02", scope: !2, file: !3, line: 39, type: !10, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression(DW_OP_constu, 889838246, DW_OP_stack_value))
!30 = distinct !DIGlobalVariable(name: "S03", scope: !2, file: !3, line: 40, type: !10, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression(DW_OP_constu, 815810024, DW_OP_stack_value))
!32 = distinct !DIGlobalVariable(name: "S04", scope: !2, file: !3, line: 41, type: !10, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression(DW_OP_constu, 3180799669, DW_OP_stack_value))
!34 = distinct !DIGlobalVariable(name: "u00", scope: !2, file: !3, line: 106, type: !10, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_constu, 1059256707, DW_OP_stack_value))
!36 = distinct !DIGlobalVariable(name: "tpi", scope: !2, file: !3, line: 32, type: !10, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression(DW_OP_constu, 1043654669, DW_OP_stack_value))
!38 = distinct !DIGlobalVariable(name: "u01", scope: !2, file: !3, line: 107, type: !10, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression(DW_OP_constu, 3160565574, DW_OP_stack_value))
!40 = distinct !DIGlobalVariable(name: "u02", scope: !2, file: !3, line: 108, type: !10, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression(DW_OP_constu, 968239721, DW_OP_stack_value))
!42 = distinct !DIGlobalVariable(name: "u03", scope: !2, file: !3, line: 109, type: !10, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression(DW_OP_constu, 3061839164, DW_OP_stack_value))
!44 = distinct !DIGlobalVariable(name: "u04", scope: !2, file: !3, line: 110, type: !10, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression(DW_OP_constu, 849871546, DW_OP_stack_value))
!46 = distinct !DIGlobalVariable(name: "u05", scope: !2, file: !3, line: 111, type: !10, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression(DW_OP_constu, 2922324459, DW_OP_stack_value))
!48 = distinct !DIGlobalVariable(name: "u06", scope: !2, file: !3, line: 112, type: !10, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression(DW_OP_constu, 1011913605, DW_OP_stack_value))
!50 = distinct !DIGlobalVariable(name: "v01", scope: !2, file: !3, line: 113, type: !10, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_constu, 949970400, DW_OP_stack_value))
!52 = distinct !DIGlobalVariable(name: "v02", scope: !2, file: !3, line: 114, type: !10, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression(DW_OP_constu, 881533292, DW_OP_stack_value))
!54 = distinct !DIGlobalVariable(name: "v03", scope: !2, file: !3, line: 115, type: !10, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression(DW_OP_constu, 804421826, DW_OP_stack_value))
!56 = distinct !DIGlobalVariable(name: "v04", scope: !2, file: !3, line: 116, type: !10, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "pS8", scope: !2, file: !3, line: 197, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "pR5", scope: !2, file: !3, line: 208, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 6)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "pS5", scope: !2, file: !3, line: 220, type: !59, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "pR3", scope: !2, file: !3, line: 232, type: !64, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "pS3", scope: !2, file: !3, line: 244, type: !59, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "pR2", scope: !2, file: !3, line: 256, type: !64, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "pS2", scope: !2, file: !3, line: 268, type: !59, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "qR8", scope: !2, file: !3, line: 316, type: !64, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "qS8", scope: !2, file: !3, line: 328, type: !64, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "qR5", scope: !2, file: !3, line: 341, type: !64, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "qS5", scope: !2, file: !3, line: 353, type: !64, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "qR3", scope: !2, file: !3, line: 366, type: !64, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "qS3", scope: !2, file: !3, line: 378, type: !64, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "qR2", scope: !2, file: !3, line: 391, type: !64, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "qS2", scope: !2, file: !3, line: 403, type: !64, isLocal: true, isDefinition: true)
!93 = !{i32 2, !"Dwarf Version", i32 4}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!97 = distinct !DISubprogram(name: "__ieee754_j0f", scope: !3, file: !3, line: 50, type: !98, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!6, !6}
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !114, !115}
!101 = !DILocalVariable(name: "x", arg: 1, scope: !97, file: !3, line: 50, type: !6)
!102 = !DILocalVariable(name: "z", scope: !97, file: !3, line: 56, type: !6)
!103 = !DILocalVariable(name: "s", scope: !97, file: !3, line: 56, type: !6)
!104 = !DILocalVariable(name: "c", scope: !97, file: !3, line: 56, type: !6)
!105 = !DILocalVariable(name: "ss", scope: !97, file: !3, line: 56, type: !6)
!106 = !DILocalVariable(name: "cc", scope: !97, file: !3, line: 56, type: !6)
!107 = !DILocalVariable(name: "r", scope: !97, file: !3, line: 56, type: !6)
!108 = !DILocalVariable(name: "u", scope: !97, file: !3, line: 56, type: !6)
!109 = !DILocalVariable(name: "v", scope: !97, file: !3, line: 56, type: !6)
!110 = !DILocalVariable(name: "hx", scope: !97, file: !3, line: 57, type: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !112, line: 77, baseType: !113)
!112 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DILocalVariable(name: "ix", scope: !97, file: !3, line: 57, type: !111)
!115 = !DILocalVariable(name: "gf_u", scope: !116, file: !3, line: 59, type: !117)
!116 = distinct !DILexicalBlock(scope: !97, file: !3, line: 59, column: 2)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !118, line: 347, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !118, line: 343, size: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !119, file: !118, line: 345, baseType: !6, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !119, file: !118, line: 346, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !112, line: 79, baseType: !124)
!124 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!125 = !DILocation(line: 50, column: 28, scope: !97)
!126 = !DILocation(line: 59, column: 2, scope: !116)
!127 = !DILocation(line: 57, column: 12, scope: !97)
!128 = !DILocation(line: 60, column: 9, scope: !97)
!129 = !DILocation(line: 57, column: 15, scope: !97)
!130 = !DILocation(line: 61, column: 6, scope: !131)
!131 = distinct !DILexicalBlock(scope: !97, file: !3, line: 61, column: 5)
!132 = !DILocation(line: 61, column: 5, scope: !97)
!133 = !DILocation(line: 61, column: 44, scope: !131)
!134 = !DILocation(line: 61, column: 41, scope: !131)
!135 = !DILocation(line: 61, column: 31, scope: !131)
!136 = !DILocation(line: 62, column: 6, scope: !97)
!137 = !DILocation(line: 63, column: 8, scope: !138)
!138 = distinct !DILexicalBlock(scope: !97, file: !3, line: 63, column: 5)
!139 = !DILocation(line: 63, column: 5, scope: !97)
!140 = !DILocation(line: 64, column: 7, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 63, column: 23)
!142 = !DILocation(line: 56, column: 11, scope: !97)
!143 = !DILocation(line: 65, column: 7, scope: !141)
!144 = !DILocation(line: 56, column: 13, scope: !97)
!145 = !DILocation(line: 66, column: 9, scope: !141)
!146 = !DILocation(line: 56, column: 15, scope: !97)
!147 = !DILocation(line: 67, column: 9, scope: !141)
!148 = !DILocation(line: 56, column: 18, scope: !97)
!149 = !DILocation(line: 68, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !141, file: !3, line: 68, column: 6)
!151 = !DILocation(line: 68, column: 6, scope: !141)
!152 = !DILocation(line: 69, column: 18, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 68, column: 30)
!154 = !DILocation(line: 69, column: 12, scope: !153)
!155 = !DILocation(line: 69, column: 11, scope: !153)
!156 = !DILocation(line: 56, column: 8, scope: !97)
!157 = !DILocation(line: 70, column: 13, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !3, line: 70, column: 11)
!159 = !DILocation(line: 70, column: 16, scope: !158)
!160 = !DILocation(line: 70, column: 11, scope: !153)
!161 = !DILocation(line: 70, column: 29, scope: !158)
!162 = !DILocation(line: 70, column: 23, scope: !158)
!163 = !DILocation(line: 71, column: 23, scope: !158)
!164 = !DILocation(line: 0, scope: !141)
!165 = !DILocalVariable(name: "x", arg: 1, scope: !166, file: !3, line: 280, type: !6)
!166 = distinct !DISubprogram(name: "pzerof", scope: !3, file: !3, line: 280, type: !98, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !167)
!167 = !{!165, !168, !170, !171, !172, !173, !174, !175}
!168 = !DILocalVariable(name: "p", scope: !166, file: !3, line: 287, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!170 = !DILocalVariable(name: "q", scope: !166, file: !3, line: 287, type: !169)
!171 = !DILocalVariable(name: "z", scope: !166, file: !3, line: 291, type: !6)
!172 = !DILocalVariable(name: "r", scope: !166, file: !3, line: 291, type: !6)
!173 = !DILocalVariable(name: "s", scope: !166, file: !3, line: 291, type: !6)
!174 = !DILocalVariable(name: "ix", scope: !166, file: !3, line: 292, type: !111)
!175 = !DILocalVariable(name: "gf_u", scope: !176, file: !3, line: 293, type: !117)
!176 = distinct !DILexicalBlock(scope: !166, file: !3, line: 293, column: 2)
!177 = !DILocation(line: 280, column: 28, scope: !166, inlinedAt: !178)
!178 = distinct !DILocation(line: 79, column: 11, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 78, column: 8)
!180 = distinct !DILexicalBlock(scope: !141, file: !3, line: 77, column: 6)
!181 = !DILocation(line: 293, column: 2, scope: !176, inlinedAt: !178)
!182 = !DILocation(line: 292, column: 12, scope: !166, inlinedAt: !178)
!183 = !DILocation(line: 294, column: 5, scope: !166, inlinedAt: !178)
!184 = !DILocation(line: 295, column: 7, scope: !185, inlinedAt: !178)
!185 = distinct !DILexicalBlock(scope: !166, file: !3, line: 295, column: 5)
!186 = !DILocation(line: 295, column: 5, scope: !166, inlinedAt: !178)
!187 = !DILocation(line: 296, column: 12, scope: !188, inlinedAt: !178)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 296, column: 10)
!189 = !DILocation(line: 296, column: 10, scope: !185, inlinedAt: !178)
!190 = !DILocation(line: 297, column: 12, scope: !191, inlinedAt: !178)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 297, column: 10)
!192 = !DILocation(line: 297, column: 42, scope: !193, inlinedAt: !178)
!193 = distinct !DILexicalBlock(scope: !191, file: !3, line: 297, column: 25)
!194 = !DILocation(line: 0, scope: !195, inlinedAt: !178)
!195 = distinct !DILexicalBlock(scope: !191, file: !3, line: 298, column: 12)
!196 = !DILocation(line: 287, column: 15, scope: !166, inlinedAt: !178)
!197 = !DILocation(line: 287, column: 18, scope: !166, inlinedAt: !178)
!198 = !DILocation(line: 299, column: 12, scope: !166, inlinedAt: !178)
!199 = !DILocation(line: 299, column: 9, scope: !166, inlinedAt: !178)
!200 = !DILocation(line: 291, column: 8, scope: !166, inlinedAt: !178)
!201 = !DILocation(line: 300, column: 6, scope: !166, inlinedAt: !178)
!202 = !{!203, !203, i64 0}
!203 = !{!"float", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !DILocation(line: 300, column: 14, scope: !166, inlinedAt: !178)
!207 = !DILocation(line: 300, column: 22, scope: !166, inlinedAt: !178)
!208 = !DILocation(line: 300, column: 30, scope: !166, inlinedAt: !178)
!209 = !DILocation(line: 300, column: 38, scope: !166, inlinedAt: !178)
!210 = !DILocation(line: 300, column: 45, scope: !166, inlinedAt: !178)
!211 = !DILocation(line: 300, column: 44, scope: !166, inlinedAt: !178)
!212 = !DILocation(line: 300, column: 42, scope: !166, inlinedAt: !178)
!213 = !DILocation(line: 300, column: 36, scope: !166, inlinedAt: !178)
!214 = !DILocation(line: 300, column: 34, scope: !166, inlinedAt: !178)
!215 = !DILocation(line: 300, column: 28, scope: !166, inlinedAt: !178)
!216 = !DILocation(line: 300, column: 26, scope: !166, inlinedAt: !178)
!217 = !DILocation(line: 300, column: 20, scope: !166, inlinedAt: !178)
!218 = !DILocation(line: 300, column: 18, scope: !166, inlinedAt: !178)
!219 = !DILocation(line: 300, column: 12, scope: !166, inlinedAt: !178)
!220 = !DILocation(line: 300, column: 10, scope: !166, inlinedAt: !178)
!221 = !DILocation(line: 291, column: 10, scope: !166, inlinedAt: !178)
!222 = !DILocation(line: 301, column: 13, scope: !166, inlinedAt: !178)
!223 = !DILocation(line: 301, column: 21, scope: !166, inlinedAt: !178)
!224 = !DILocation(line: 301, column: 29, scope: !166, inlinedAt: !178)
!225 = !DILocation(line: 301, column: 37, scope: !166, inlinedAt: !178)
!226 = !DILocation(line: 301, column: 44, scope: !166, inlinedAt: !178)
!227 = !DILocation(line: 301, column: 43, scope: !166, inlinedAt: !178)
!228 = !DILocation(line: 301, column: 41, scope: !166, inlinedAt: !178)
!229 = !DILocation(line: 301, column: 35, scope: !166, inlinedAt: !178)
!230 = !DILocation(line: 301, column: 33, scope: !166, inlinedAt: !178)
!231 = !DILocation(line: 301, column: 27, scope: !166, inlinedAt: !178)
!232 = !DILocation(line: 301, column: 25, scope: !166, inlinedAt: !178)
!233 = !DILocation(line: 301, column: 19, scope: !166, inlinedAt: !178)
!234 = !DILocation(line: 301, column: 17, scope: !166, inlinedAt: !178)
!235 = !DILocation(line: 301, column: 11, scope: !166, inlinedAt: !178)
!236 = !DILocation(line: 301, column: 9, scope: !166, inlinedAt: !178)
!237 = !DILocation(line: 291, column: 12, scope: !166, inlinedAt: !178)
!238 = !DILocation(line: 302, column: 15, scope: !166, inlinedAt: !178)
!239 = !DILocation(line: 302, column: 12, scope: !166, inlinedAt: !178)
!240 = !DILocation(line: 302, column: 2, scope: !166, inlinedAt: !178)
!241 = !DILocation(line: 56, column: 23, scope: !97)
!242 = !DILocalVariable(name: "x", arg: 1, scope: !243, file: !3, line: 416, type: !6)
!243 = distinct !DISubprogram(name: "qzerof", scope: !3, file: !3, line: 416, type: !98, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !244)
!244 = !{!242, !245, !246, !247, !248, !249, !250, !251}
!245 = !DILocalVariable(name: "p", scope: !243, file: !3, line: 423, type: !169)
!246 = !DILocalVariable(name: "q", scope: !243, file: !3, line: 423, type: !169)
!247 = !DILocalVariable(name: "s", scope: !243, file: !3, line: 427, type: !6)
!248 = !DILocalVariable(name: "r", scope: !243, file: !3, line: 427, type: !6)
!249 = !DILocalVariable(name: "z", scope: !243, file: !3, line: 427, type: !6)
!250 = !DILocalVariable(name: "ix", scope: !243, file: !3, line: 428, type: !111)
!251 = !DILocalVariable(name: "gf_u", scope: !252, file: !3, line: 429, type: !117)
!252 = distinct !DILexicalBlock(scope: !243, file: !3, line: 429, column: 2)
!253 = !DILocation(line: 416, column: 28, scope: !243, inlinedAt: !254)
!254 = distinct !DILocation(line: 79, column: 26, scope: !179)
!255 = !DILocation(line: 428, column: 12, scope: !243, inlinedAt: !254)
!256 = !DILocation(line: 431, column: 5, scope: !243, inlinedAt: !254)
!257 = !DILocation(line: 432, column: 12, scope: !258, inlinedAt: !254)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 432, column: 10)
!259 = distinct !DILexicalBlock(scope: !243, file: !3, line: 431, column: 5)
!260 = !DILocation(line: 432, column: 10, scope: !259, inlinedAt: !254)
!261 = !DILocation(line: 433, column: 12, scope: !262, inlinedAt: !254)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 433, column: 10)
!263 = !DILocation(line: 433, column: 42, scope: !264, inlinedAt: !254)
!264 = distinct !DILexicalBlock(scope: !262, file: !3, line: 433, column: 25)
!265 = !DILocation(line: 0, scope: !266, inlinedAt: !254)
!266 = distinct !DILexicalBlock(scope: !262, file: !3, line: 434, column: 12)
!267 = !DILocation(line: 423, column: 15, scope: !243, inlinedAt: !254)
!268 = !DILocation(line: 423, column: 18, scope: !243, inlinedAt: !254)
!269 = !DILocation(line: 427, column: 12, scope: !243, inlinedAt: !254)
!270 = !DILocation(line: 436, column: 6, scope: !243, inlinedAt: !254)
!271 = !DILocation(line: 436, column: 14, scope: !243, inlinedAt: !254)
!272 = !DILocation(line: 436, column: 22, scope: !243, inlinedAt: !254)
!273 = !DILocation(line: 436, column: 30, scope: !243, inlinedAt: !254)
!274 = !DILocation(line: 436, column: 38, scope: !243, inlinedAt: !254)
!275 = !DILocation(line: 436, column: 45, scope: !243, inlinedAt: !254)
!276 = !DILocation(line: 436, column: 44, scope: !243, inlinedAt: !254)
!277 = !DILocation(line: 436, column: 42, scope: !243, inlinedAt: !254)
!278 = !DILocation(line: 436, column: 36, scope: !243, inlinedAt: !254)
!279 = !DILocation(line: 436, column: 34, scope: !243, inlinedAt: !254)
!280 = !DILocation(line: 436, column: 28, scope: !243, inlinedAt: !254)
!281 = !DILocation(line: 436, column: 26, scope: !243, inlinedAt: !254)
!282 = !DILocation(line: 436, column: 20, scope: !243, inlinedAt: !254)
!283 = !DILocation(line: 436, column: 18, scope: !243, inlinedAt: !254)
!284 = !DILocation(line: 436, column: 12, scope: !243, inlinedAt: !254)
!285 = !DILocation(line: 436, column: 10, scope: !243, inlinedAt: !254)
!286 = !DILocation(line: 427, column: 10, scope: !243, inlinedAt: !254)
!287 = !DILocation(line: 437, column: 13, scope: !243, inlinedAt: !254)
!288 = !DILocation(line: 437, column: 21, scope: !243, inlinedAt: !254)
!289 = !DILocation(line: 437, column: 29, scope: !243, inlinedAt: !254)
!290 = !DILocation(line: 437, column: 37, scope: !243, inlinedAt: !254)
!291 = !DILocation(line: 437, column: 45, scope: !243, inlinedAt: !254)
!292 = !DILocation(line: 437, column: 52, scope: !243, inlinedAt: !254)
!293 = !DILocation(line: 437, column: 51, scope: !243, inlinedAt: !254)
!294 = !DILocation(line: 437, column: 49, scope: !243, inlinedAt: !254)
!295 = !DILocation(line: 437, column: 43, scope: !243, inlinedAt: !254)
!296 = !DILocation(line: 437, column: 41, scope: !243, inlinedAt: !254)
!297 = !DILocation(line: 437, column: 35, scope: !243, inlinedAt: !254)
!298 = !DILocation(line: 437, column: 33, scope: !243, inlinedAt: !254)
!299 = !DILocation(line: 437, column: 27, scope: !243, inlinedAt: !254)
!300 = !DILocation(line: 437, column: 25, scope: !243, inlinedAt: !254)
!301 = !DILocation(line: 437, column: 19, scope: !243, inlinedAt: !254)
!302 = !DILocation(line: 437, column: 17, scope: !243, inlinedAt: !254)
!303 = !DILocation(line: 437, column: 11, scope: !243, inlinedAt: !254)
!304 = !DILocation(line: 437, column: 9, scope: !243, inlinedAt: !254)
!305 = !DILocation(line: 427, column: 8, scope: !243, inlinedAt: !254)
!306 = !DILocation(line: 438, column: 26, scope: !243, inlinedAt: !254)
!307 = !DILocation(line: 438, column: 23, scope: !243, inlinedAt: !254)
!308 = !DILocation(line: 438, column: 29, scope: !243, inlinedAt: !254)
!309 = !DILocation(line: 438, column: 2, scope: !243, inlinedAt: !254)
!310 = !DILocation(line: 56, column: 25, scope: !97)
!311 = !DILocation(line: 80, column: 33, scope: !179)
!312 = !DILocation(line: 80, column: 23, scope: !179)
!313 = !DILocation(line: 80, column: 28, scope: !179)
!314 = !DILocation(line: 80, column: 26, scope: !179)
!315 = !DILocation(line: 80, column: 20, scope: !179)
!316 = !DILocation(line: 80, column: 32, scope: !179)
!317 = !DILocation(line: 82, column: 3, scope: !141)
!318 = !DILocation(line: 84, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !97, file: !3, line: 84, column: 5)
!320 = !DILocation(line: 85, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 85, column: 9)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 84, column: 20)
!323 = !DILocation(line: 85, column: 15, scope: !321)
!324 = !DILocation(line: 84, column: 5, scope: !97)
!325 = !DILocation(line: 86, column: 15, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 86, column: 13)
!327 = distinct !DILexicalBlock(scope: !321, file: !3, line: 85, column: 21)
!328 = !DILocation(line: 86, column: 13, scope: !327)
!329 = !DILocation(line: 87, column: 46, scope: !326)
!330 = !DILocation(line: 87, column: 48, scope: !326)
!331 = !DILocation(line: 87, column: 33, scope: !326)
!332 = !DILocation(line: 87, column: 22, scope: !326)
!333 = !DILocation(line: 90, column: 7, scope: !97)
!334 = !DILocation(line: 91, column: 29, scope: !97)
!335 = !DILocation(line: 91, column: 22, scope: !97)
!336 = !DILocation(line: 91, column: 20, scope: !97)
!337 = !DILocation(line: 91, column: 15, scope: !97)
!338 = !DILocation(line: 91, column: 13, scope: !97)
!339 = !DILocation(line: 91, column: 8, scope: !97)
!340 = !DILocation(line: 56, column: 21, scope: !97)
!341 = !DILocation(line: 92, column: 33, scope: !97)
!342 = !DILocation(line: 92, column: 31, scope: !97)
!343 = !DILocation(line: 92, column: 26, scope: !97)
!344 = !DILocation(line: 92, column: 24, scope: !97)
!345 = !DILocation(line: 92, column: 19, scope: !97)
!346 = !DILocation(line: 92, column: 17, scope: !97)
!347 = !DILocation(line: 92, column: 12, scope: !97)
!348 = !DILocation(line: 92, column: 10, scope: !97)
!349 = !DILocation(line: 93, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !97, file: !3, line: 93, column: 5)
!351 = !DILocation(line: 93, column: 5, scope: !97)
!352 = !DILocation(line: 94, column: 37, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 93, column: 22)
!354 = !DILocation(line: 94, column: 34, scope: !353)
!355 = !DILocation(line: 94, column: 20, scope: !353)
!356 = !DILocation(line: 94, column: 17, scope: !353)
!357 = !DILocation(line: 94, column: 6, scope: !353)
!358 = !DILocation(line: 96, column: 20, scope: !359)
!359 = distinct !DILexicalBlock(scope: !350, file: !3, line: 95, column: 9)
!360 = !DILocation(line: 97, column: 17, scope: !359)
!361 = !DILocation(line: 97, column: 25, scope: !359)
!362 = !DILocation(line: 97, column: 20, scope: !359)
!363 = !DILocation(line: 97, column: 33, scope: !359)
!364 = !DILocation(line: 97, column: 30, scope: !359)
!365 = !DILocation(line: 97, column: 28, scope: !359)
!366 = !DILocation(line: 97, column: 6, scope: !359)
!367 = !DILocation(line: 0, scope: !131)
!368 = !DILocation(line: 99, column: 1, scope: !97)
!369 = distinct !DISubprogram(name: "__ieee754_y0f", scope: !3, file: !3, line: 119, type: !98, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!371 = !DILocalVariable(name: "x", arg: 1, scope: !369, file: !3, line: 119, type: !6)
!372 = !DILocalVariable(name: "z", scope: !369, file: !3, line: 125, type: !6)
!373 = !DILocalVariable(name: "s", scope: !369, file: !3, line: 125, type: !6)
!374 = !DILocalVariable(name: "c", scope: !369, file: !3, line: 125, type: !6)
!375 = !DILocalVariable(name: "ss", scope: !369, file: !3, line: 125, type: !6)
!376 = !DILocalVariable(name: "cc", scope: !369, file: !3, line: 125, type: !6)
!377 = !DILocalVariable(name: "u", scope: !369, file: !3, line: 125, type: !6)
!378 = !DILocalVariable(name: "v", scope: !369, file: !3, line: 125, type: !6)
!379 = !DILocalVariable(name: "hx", scope: !369, file: !3, line: 126, type: !111)
!380 = !DILocalVariable(name: "ix", scope: !369, file: !3, line: 126, type: !111)
!381 = !DILocalVariable(name: "gf_u", scope: !382, file: !3, line: 128, type: !117)
!382 = distinct !DILexicalBlock(scope: !369, file: !3, line: 128, column: 2)
!383 = !DILocation(line: 119, column: 28, scope: !369)
!384 = !DILocation(line: 128, column: 2, scope: !382)
!385 = !DILocation(line: 126, column: 12, scope: !369)
!386 = !DILocation(line: 129, column: 24, scope: !369)
!387 = !DILocation(line: 126, column: 15, scope: !369)
!388 = !DILocation(line: 131, column: 6, scope: !389)
!389 = distinct !DILexicalBlock(scope: !369, file: !3, line: 131, column: 5)
!390 = !DILocation(line: 131, column: 5, scope: !369)
!391 = !DILocation(line: 131, column: 47, scope: !389)
!392 = !DILocation(line: 131, column: 45, scope: !389)
!393 = !DILocation(line: 131, column: 42, scope: !389)
!394 = !DILocation(line: 131, column: 31, scope: !389)
!395 = !DILocation(line: 132, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !369, file: !3, line: 132, column: 12)
!397 = !DILocation(line: 132, column: 12, scope: !369)
!398 = !DILocation(line: 133, column: 14, scope: !399)
!399 = distinct !DILexicalBlock(scope: !369, file: !3, line: 133, column: 12)
!400 = !DILocation(line: 133, column: 12, scope: !369)
!401 = !DILocation(line: 134, column: 15, scope: !402)
!402 = distinct !DILexicalBlock(scope: !369, file: !3, line: 134, column: 12)
!403 = !DILocation(line: 134, column: 12, scope: !369)
!404 = !DILocation(line: 146, column: 21, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 134, column: 30)
!406 = !DILocation(line: 125, column: 11, scope: !369)
!407 = !DILocation(line: 147, column: 21, scope: !405)
!408 = !DILocation(line: 125, column: 13, scope: !369)
!409 = !DILocation(line: 148, column: 23, scope: !405)
!410 = !DILocation(line: 125, column: 15, scope: !369)
!411 = !DILocation(line: 149, column: 23, scope: !405)
!412 = !DILocation(line: 125, column: 18, scope: !369)
!413 = !DILocation(line: 154, column: 22, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !3, line: 154, column: 20)
!415 = !DILocation(line: 154, column: 20, scope: !405)
!416 = !DILocation(line: 155, column: 32, scope: !417)
!417 = distinct !DILexicalBlock(scope: !414, file: !3, line: 154, column: 44)
!418 = !DILocation(line: 155, column: 26, scope: !417)
!419 = !DILocation(line: 155, column: 25, scope: !417)
!420 = !DILocation(line: 125, column: 8, scope: !369)
!421 = !DILocation(line: 156, column: 27, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !3, line: 156, column: 25)
!423 = !DILocation(line: 156, column: 30, scope: !422)
!424 = !DILocation(line: 156, column: 25, scope: !417)
!425 = !DILocation(line: 156, column: 43, scope: !422)
!426 = !DILocation(line: 156, column: 37, scope: !422)
!427 = !DILocation(line: 157, column: 43, scope: !422)
!428 = !DILocation(line: 0, scope: !405)
!429 = !DILocation(line: 280, column: 28, scope: !166, inlinedAt: !430)
!430 = distinct !DILocation(line: 161, column: 25, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 160, column: 22)
!432 = distinct !DILexicalBlock(scope: !405, file: !3, line: 159, column: 20)
!433 = !DILocation(line: 292, column: 12, scope: !166, inlinedAt: !430)
!434 = !DILocation(line: 295, column: 7, scope: !185, inlinedAt: !430)
!435 = !DILocation(line: 295, column: 5, scope: !166, inlinedAt: !430)
!436 = !DILocation(line: 296, column: 12, scope: !188, inlinedAt: !430)
!437 = !DILocation(line: 296, column: 10, scope: !185, inlinedAt: !430)
!438 = !DILocation(line: 297, column: 12, scope: !191, inlinedAt: !430)
!439 = !DILocation(line: 297, column: 42, scope: !193, inlinedAt: !430)
!440 = !DILocation(line: 0, scope: !195, inlinedAt: !430)
!441 = !DILocation(line: 287, column: 15, scope: !166, inlinedAt: !430)
!442 = !DILocation(line: 287, column: 18, scope: !166, inlinedAt: !430)
!443 = !DILocation(line: 299, column: 12, scope: !166, inlinedAt: !430)
!444 = !DILocation(line: 299, column: 9, scope: !166, inlinedAt: !430)
!445 = !DILocation(line: 291, column: 8, scope: !166, inlinedAt: !430)
!446 = !DILocation(line: 300, column: 6, scope: !166, inlinedAt: !430)
!447 = !DILocation(line: 300, column: 14, scope: !166, inlinedAt: !430)
!448 = !DILocation(line: 300, column: 22, scope: !166, inlinedAt: !430)
!449 = !DILocation(line: 300, column: 30, scope: !166, inlinedAt: !430)
!450 = !DILocation(line: 300, column: 38, scope: !166, inlinedAt: !430)
!451 = !DILocation(line: 300, column: 45, scope: !166, inlinedAt: !430)
!452 = !DILocation(line: 300, column: 44, scope: !166, inlinedAt: !430)
!453 = !DILocation(line: 300, column: 42, scope: !166, inlinedAt: !430)
!454 = !DILocation(line: 300, column: 36, scope: !166, inlinedAt: !430)
!455 = !DILocation(line: 300, column: 34, scope: !166, inlinedAt: !430)
!456 = !DILocation(line: 300, column: 28, scope: !166, inlinedAt: !430)
!457 = !DILocation(line: 300, column: 26, scope: !166, inlinedAt: !430)
!458 = !DILocation(line: 300, column: 20, scope: !166, inlinedAt: !430)
!459 = !DILocation(line: 300, column: 18, scope: !166, inlinedAt: !430)
!460 = !DILocation(line: 300, column: 12, scope: !166, inlinedAt: !430)
!461 = !DILocation(line: 300, column: 10, scope: !166, inlinedAt: !430)
!462 = !DILocation(line: 291, column: 10, scope: !166, inlinedAt: !430)
!463 = !DILocation(line: 301, column: 13, scope: !166, inlinedAt: !430)
!464 = !DILocation(line: 301, column: 21, scope: !166, inlinedAt: !430)
!465 = !DILocation(line: 301, column: 29, scope: !166, inlinedAt: !430)
!466 = !DILocation(line: 301, column: 37, scope: !166, inlinedAt: !430)
!467 = !DILocation(line: 301, column: 44, scope: !166, inlinedAt: !430)
!468 = !DILocation(line: 301, column: 43, scope: !166, inlinedAt: !430)
!469 = !DILocation(line: 301, column: 41, scope: !166, inlinedAt: !430)
!470 = !DILocation(line: 301, column: 35, scope: !166, inlinedAt: !430)
!471 = !DILocation(line: 301, column: 33, scope: !166, inlinedAt: !430)
!472 = !DILocation(line: 301, column: 27, scope: !166, inlinedAt: !430)
!473 = !DILocation(line: 301, column: 25, scope: !166, inlinedAt: !430)
!474 = !DILocation(line: 301, column: 19, scope: !166, inlinedAt: !430)
!475 = !DILocation(line: 301, column: 17, scope: !166, inlinedAt: !430)
!476 = !DILocation(line: 301, column: 11, scope: !166, inlinedAt: !430)
!477 = !DILocation(line: 301, column: 9, scope: !166, inlinedAt: !430)
!478 = !DILocation(line: 291, column: 12, scope: !166, inlinedAt: !430)
!479 = !DILocation(line: 302, column: 15, scope: !166, inlinedAt: !430)
!480 = !DILocation(line: 302, column: 12, scope: !166, inlinedAt: !430)
!481 = !DILocation(line: 302, column: 2, scope: !166, inlinedAt: !430)
!482 = !DILocation(line: 125, column: 21, scope: !369)
!483 = !DILocation(line: 416, column: 28, scope: !243, inlinedAt: !484)
!484 = distinct !DILocation(line: 161, column: 40, scope: !431)
!485 = !DILocation(line: 428, column: 12, scope: !243, inlinedAt: !484)
!486 = !DILocation(line: 431, column: 5, scope: !243, inlinedAt: !484)
!487 = !DILocation(line: 432, column: 12, scope: !258, inlinedAt: !484)
!488 = !DILocation(line: 432, column: 10, scope: !259, inlinedAt: !484)
!489 = !DILocation(line: 433, column: 12, scope: !262, inlinedAt: !484)
!490 = !DILocation(line: 433, column: 42, scope: !264, inlinedAt: !484)
!491 = !DILocation(line: 0, scope: !266, inlinedAt: !484)
!492 = !DILocation(line: 423, column: 15, scope: !243, inlinedAt: !484)
!493 = !DILocation(line: 423, column: 18, scope: !243, inlinedAt: !484)
!494 = !DILocation(line: 427, column: 12, scope: !243, inlinedAt: !484)
!495 = !DILocation(line: 436, column: 6, scope: !243, inlinedAt: !484)
!496 = !DILocation(line: 436, column: 14, scope: !243, inlinedAt: !484)
!497 = !DILocation(line: 436, column: 22, scope: !243, inlinedAt: !484)
!498 = !DILocation(line: 436, column: 30, scope: !243, inlinedAt: !484)
!499 = !DILocation(line: 436, column: 38, scope: !243, inlinedAt: !484)
!500 = !DILocation(line: 436, column: 45, scope: !243, inlinedAt: !484)
!501 = !DILocation(line: 436, column: 44, scope: !243, inlinedAt: !484)
!502 = !DILocation(line: 436, column: 42, scope: !243, inlinedAt: !484)
!503 = !DILocation(line: 436, column: 36, scope: !243, inlinedAt: !484)
!504 = !DILocation(line: 436, column: 34, scope: !243, inlinedAt: !484)
!505 = !DILocation(line: 436, column: 28, scope: !243, inlinedAt: !484)
!506 = !DILocation(line: 436, column: 26, scope: !243, inlinedAt: !484)
!507 = !DILocation(line: 436, column: 20, scope: !243, inlinedAt: !484)
!508 = !DILocation(line: 436, column: 18, scope: !243, inlinedAt: !484)
!509 = !DILocation(line: 436, column: 12, scope: !243, inlinedAt: !484)
!510 = !DILocation(line: 436, column: 10, scope: !243, inlinedAt: !484)
!511 = !DILocation(line: 427, column: 10, scope: !243, inlinedAt: !484)
!512 = !DILocation(line: 437, column: 13, scope: !243, inlinedAt: !484)
!513 = !DILocation(line: 437, column: 21, scope: !243, inlinedAt: !484)
!514 = !DILocation(line: 437, column: 29, scope: !243, inlinedAt: !484)
!515 = !DILocation(line: 437, column: 37, scope: !243, inlinedAt: !484)
!516 = !DILocation(line: 437, column: 45, scope: !243, inlinedAt: !484)
!517 = !DILocation(line: 437, column: 52, scope: !243, inlinedAt: !484)
!518 = !DILocation(line: 437, column: 51, scope: !243, inlinedAt: !484)
!519 = !DILocation(line: 437, column: 49, scope: !243, inlinedAt: !484)
!520 = !DILocation(line: 437, column: 43, scope: !243, inlinedAt: !484)
!521 = !DILocation(line: 437, column: 41, scope: !243, inlinedAt: !484)
!522 = !DILocation(line: 437, column: 35, scope: !243, inlinedAt: !484)
!523 = !DILocation(line: 437, column: 33, scope: !243, inlinedAt: !484)
!524 = !DILocation(line: 437, column: 27, scope: !243, inlinedAt: !484)
!525 = !DILocation(line: 437, column: 25, scope: !243, inlinedAt: !484)
!526 = !DILocation(line: 437, column: 19, scope: !243, inlinedAt: !484)
!527 = !DILocation(line: 437, column: 17, scope: !243, inlinedAt: !484)
!528 = !DILocation(line: 437, column: 11, scope: !243, inlinedAt: !484)
!529 = !DILocation(line: 437, column: 9, scope: !243, inlinedAt: !484)
!530 = !DILocation(line: 427, column: 8, scope: !243, inlinedAt: !484)
!531 = !DILocation(line: 438, column: 26, scope: !243, inlinedAt: !484)
!532 = !DILocation(line: 438, column: 23, scope: !243, inlinedAt: !484)
!533 = !DILocation(line: 438, column: 29, scope: !243, inlinedAt: !484)
!534 = !DILocation(line: 438, column: 2, scope: !243, inlinedAt: !484)
!535 = !DILocation(line: 125, column: 23, scope: !369)
!536 = !DILocation(line: 162, column: 37, scope: !431)
!537 = !DILocation(line: 162, column: 42, scope: !431)
!538 = !DILocation(line: 162, column: 40, scope: !431)
!539 = !DILocation(line: 162, column: 34, scope: !431)
!540 = !DILocation(line: 162, column: 47, scope: !431)
!541 = !DILocation(line: 162, column: 46, scope: !431)
!542 = !DILocation(line: 164, column: 17, scope: !405)
!543 = !DILocation(line: 166, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !369, file: !3, line: 166, column: 5)
!545 = !DILocation(line: 166, column: 5, scope: !369)
!546 = !DILocation(line: 167, column: 23, scope: !547)
!547 = distinct !DILexicalBlock(scope: !544, file: !3, line: 166, column: 21)
!548 = !DILocation(line: 167, column: 22, scope: !547)
!549 = !DILocation(line: 167, column: 17, scope: !547)
!550 = !DILocation(line: 167, column: 6, scope: !547)
!551 = !DILocation(line: 169, column: 7, scope: !369)
!552 = !DILocation(line: 170, column: 46, scope: !369)
!553 = !DILocation(line: 170, column: 39, scope: !369)
!554 = !DILocation(line: 170, column: 37, scope: !369)
!555 = !DILocation(line: 170, column: 32, scope: !369)
!556 = !DILocation(line: 170, column: 30, scope: !369)
!557 = !DILocation(line: 170, column: 25, scope: !369)
!558 = !DILocation(line: 170, column: 23, scope: !369)
!559 = !DILocation(line: 170, column: 18, scope: !369)
!560 = !DILocation(line: 170, column: 16, scope: !369)
!561 = !DILocation(line: 170, column: 11, scope: !369)
!562 = !DILocation(line: 170, column: 9, scope: !369)
!563 = !DILocation(line: 171, column: 32, scope: !369)
!564 = !DILocation(line: 171, column: 30, scope: !369)
!565 = !DILocation(line: 171, column: 25, scope: !369)
!566 = !DILocation(line: 171, column: 23, scope: !369)
!567 = !DILocation(line: 171, column: 18, scope: !369)
!568 = !DILocation(line: 171, column: 16, scope: !369)
!569 = !DILocation(line: 171, column: 11, scope: !369)
!570 = !DILocation(line: 171, column: 9, scope: !369)
!571 = !DILocation(line: 172, column: 10, scope: !369)
!572 = !DILocation(line: 172, column: 20, scope: !369)
!573 = !DILocation(line: 172, column: 37, scope: !369)
!574 = !DILocation(line: 172, column: 36, scope: !369)
!575 = !DILocation(line: 172, column: 18, scope: !369)
!576 = !DILocation(line: 172, column: 13, scope: !369)
!577 = !DILocation(line: 172, column: 2, scope: !369)
!578 = !DILocation(line: 0, scope: !389)
!579 = !DILocation(line: 173, column: 1, scope: !369)
