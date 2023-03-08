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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %4, label %8, label %5, !dbg !132

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !133
  %7 = fdiv float 1.000000e+00, %6, !dbg !134
  br label %140, !dbg !135

; <label>:8:                                      ; preds = %1
  %9 = tail call float @fabsf(float %0) #3, !dbg !136
  %10 = icmp ugt i32 %3, 1073741823, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br i1 %10, label %11, label %98, !dbg !139

; <label>:11:                                     ; preds = %8
  %12 = tail call float @sinf(float %9) #3, !dbg !140
  %13 = tail call float @cosf(float %9) #3, !dbg !143
  %14 = fsub float %12, %13, !dbg !145
  %15 = fadd float %12, %13, !dbg !147
  %16 = icmp ult i32 %3, 2130706432, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br i1 %16, label %17, label %30, !dbg !151

; <label>:17:                                     ; preds = %11
  %18 = fadd float %9, %9, !dbg !152
  %19 = tail call float @cosf(float %18) #3, !dbg !154
  %20 = fsub float -0.000000e+00, %19, !dbg !155
  %21 = fmul float %12, %13, !dbg !157
  %22 = fcmp olt float %21, 0.000000e+00, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %22, label %23, label %25, !dbg !160

; <label>:23:                                     ; preds = %17
  %24 = fdiv float %20, %14, !dbg !161
  br label %27, !dbg !162

; <label>:25:                                     ; preds = %17
  %26 = fdiv float %20, %15, !dbg !163
  br label %27

; <label>:27:                                     ; preds = %25, %23
  %28 = phi float [ %15, %25 ], [ %24, %23 ]
  %29 = phi float [ %26, %25 ], [ %14, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30, !dbg !164

; <label>:30:                                     ; preds = %27, %11
  %31 = phi float [ %15, %11 ], [ %28, %27 ], !dbg !165
  %32 = phi float [ %14, %11 ], [ %29, %27 ], !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  %33 = bitcast float %9 to i32, !dbg !182
  %34 = and i32 %33, 2147483647, !dbg !184
  %35 = icmp ugt i32 %34, 1090519039, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %35, label %36, label %37, !dbg !187

; <label>:36:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br label %44, !dbg !188

; <label>:37:                                     ; preds = %30
  %38 = icmp ugt i32 %34, 1089936471, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %38, label %39, label %40, !dbg !192

; <label>:39:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br label %44, !dbg !193

; <label>:40:                                     ; preds = %37
  %41 = icmp ugt i32 %34, 1077336935, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = select i1 %41, float* getelementptr inbounds ([5 x float], [5 x float]* @pS3, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @pS2, i64 0, i64 0), !dbg !198
  %43 = select i1 %41, float* getelementptr inbounds ([6 x float], [6 x float]* @pR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @pR2, i64 0, i64 0), !dbg !198
  br label %44, !dbg !198

; <label>:44:                                     ; preds = %36, %39, %40
  %45 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @pS8, i64 0, i64 0), %36 ], [ getelementptr inbounds ([5 x float], [5 x float]* @pS5, i64 0, i64 0), %39 ], [ %42, %40 ], !dbg !200
  %46 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @pR8, i64 0, i64 0), %36 ], [ getelementptr inbounds ([6 x float], [6 x float]* @pR5, i64 0, i64 0), %39 ], [ %43, %40 ], !dbg !200
  %47 = fmul float %9, %9, !dbg !204
  %48 = fdiv float 1.000000e+00, %47, !dbg !205
  %49 = load float, float* %46, align 4, !dbg !207, !tbaa !208
  %50 = getelementptr inbounds float, float* %46, i64 1, !dbg !212
  %51 = load float, float* %50, align 4, !dbg !212, !tbaa !208
  %52 = getelementptr inbounds float, float* %46, i64 2, !dbg !213
  %53 = load float, float* %52, align 4, !dbg !213, !tbaa !208
  %54 = getelementptr inbounds float, float* %46, i64 3, !dbg !214
  %55 = load float, float* %54, align 4, !dbg !214, !tbaa !208
  %56 = getelementptr inbounds float, float* %46, i64 4, !dbg !215
  %57 = load float, float* %56, align 4, !dbg !215, !tbaa !208
  %58 = getelementptr inbounds float, float* %46, i64 5, !dbg !216
  %59 = load float, float* %58, align 4, !dbg !216, !tbaa !208
  %60 = fmul float %48, %59, !dbg !217
  %61 = fadd float %57, %60, !dbg !218
  %62 = fmul float %48, %61, !dbg !219
  %63 = fadd float %55, %62, !dbg !220
  %64 = fmul float %48, %63, !dbg !221
  %65 = fadd float %53, %64, !dbg !222
  %66 = fmul float %48, %65, !dbg !223
  %67 = fadd float %51, %66, !dbg !224
  %68 = fmul float %48, %67, !dbg !225
  %69 = fadd float %49, %68, !dbg !226
  %70 = load float, float* %45, align 4, !dbg !228, !tbaa !208
  %71 = getelementptr inbounds float, float* %45, i64 1, !dbg !229
  %72 = load float, float* %71, align 4, !dbg !229, !tbaa !208
  %73 = getelementptr inbounds float, float* %45, i64 2, !dbg !230
  %74 = load float, float* %73, align 4, !dbg !230, !tbaa !208
  %75 = getelementptr inbounds float, float* %45, i64 3, !dbg !231
  %76 = load float, float* %75, align 4, !dbg !231, !tbaa !208
  %77 = getelementptr inbounds float, float* %45, i64 4, !dbg !232
  %78 = load float, float* %77, align 4, !dbg !232, !tbaa !208
  %79 = fmul float %48, %78, !dbg !233
  %80 = fadd float %76, %79, !dbg !234
  %81 = fmul float %48, %80, !dbg !235
  %82 = fadd float %74, %81, !dbg !236
  %83 = fmul float %48, %82, !dbg !237
  %84 = fadd float %72, %83, !dbg !238
  %85 = fmul float %48, %84, !dbg !239
  %86 = fadd float %70, %85, !dbg !240
  %87 = fmul float %48, %86, !dbg !241
  %88 = fadd float %87, 1.000000e+00, !dbg !242
  %89 = fdiv float %69, %88, !dbg !244
  %90 = fadd float %89, 1.000000e+00, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %91 = tail call fastcc float @qzerof(float %9) #4, !dbg !248
  %92 = tail call float @__ieee754_sqrtf(float %9) #3, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %93 = fmul float %31, %90, !dbg !251
  %94 = fmul float %32, %91, !dbg !252
  %95 = fsub float %93, %94, !dbg !253
  %96 = fmul float %95, 0x3FE20DD760000000, !dbg !254
  %97 = fdiv float %96, %92, !dbg !255
  br label %140, !dbg !256

; <label>:98:                                     ; preds = %8
  %99 = icmp ult i32 %3, 956301312, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %99, label %100, label %109, !dbg !259

; <label>:100:                                    ; preds = %98
  %101 = fadd float %9, 0x46293E5940000000, !dbg !260
  %102 = fcmp ogt float %101, 1.000000e+00, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br i1 %102, label %103, label %109, !dbg !264

; <label>:103:                                    ; preds = %100
  %104 = icmp ult i32 %3, 838860800, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %104, label %140, label %105, !dbg !268

; <label>:105:                                    ; preds = %103
  %106 = fmul float %9, 2.500000e-01, !dbg !269
  %107 = fmul float %9, %106, !dbg !270
  %108 = fsub float 1.000000e+00, %107, !dbg !271
  br label %140, !dbg !272

; <label>:109:                                    ; preds = %100, %98
  %110 = fmul float %9, %9, !dbg !273
  %111 = fmul float %110, 0x3E33D5E780000000, !dbg !274
  %112 = fsub float 0x3EBEB1D100000000, %111, !dbg !274
  %113 = fmul float %110, %112, !dbg !275
  %114 = fadd float %113, 0xBF28E6A5C0000000, !dbg !276
  %115 = fmul float %110, %114, !dbg !277
  %116 = fadd float %115, 1.562500e-02, !dbg !278
  %117 = fmul float %110, %116, !dbg !279
  %118 = fmul float %110, 0x3E1408BD00000000, !dbg !281
  %119 = fadd float %118, 0x3EA13B54C0000000, !dbg !282
  %120 = fmul float %110, %119, !dbg !283
  %121 = fadd float %120, 0x3F1EA6D2E0000000, !dbg !284
  %122 = fmul float %110, %121, !dbg !285
  %123 = fadd float %122, 0x3F8FFCE880000000, !dbg !286
  %124 = fmul float %110, %123, !dbg !287
  %125 = fadd float %124, 1.000000e+00, !dbg !288
  %126 = icmp ult i32 %3, 1065353216, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %126, label %127, label %132, !dbg !291

; <label>:127:                                    ; preds = %109
  %128 = fdiv float %117, %125, !dbg !292
  %129 = fadd float %128, -2.500000e-01, !dbg !294
  %130 = fmul float %110, %129, !dbg !295
  %131 = fadd float %130, 1.000000e+00, !dbg !296
  br label %140, !dbg !297

; <label>:132:                                    ; preds = %109
  %133 = fmul float %9, 5.000000e-01, !dbg !298
  %134 = fadd float %133, 1.000000e+00, !dbg !300
  %135 = fsub float 1.000000e+00, %133, !dbg !301
  %136 = fmul float %134, %135, !dbg !302
  %137 = fdiv float %117, %125, !dbg !303
  %138 = fmul float %110, %137, !dbg !304
  %139 = fadd float %136, %138, !dbg !305
  br label %140, !dbg !306

; <label>:140:                                    ; preds = %103, %132, %127, %105, %44, %5
  %141 = phi float [ %97, %44 ], [ %108, %105 ], [ %131, %127 ], [ %139, %132 ], [ %7, %5 ], [ 1.000000e+00, %103 ], !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  ret float %141, !dbg !308
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
define internal fastcc float @qzerof(float) unnamed_addr #0 !dbg !309 {
  %2 = bitcast float %0 to i32, !dbg !321
  %3 = and i32 %2, 2147483647, !dbg !323
  %4 = icmp ugt i32 %3, 1090519039, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %4, label %5, label %6, !dbg !326

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br label %13, !dbg !327

; <label>:6:                                      ; preds = %1
  %7 = icmp ugt i32 %3, 1089936471, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %7, label %8, label %9, !dbg !331

; <label>:8:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %13, !dbg !332

; <label>:9:                                      ; preds = %6
  %10 = icmp ugt i32 %3, 1077336935, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %11 = select i1 %10, float* getelementptr inbounds ([6 x float], [6 x float]* @qS3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qS2, i64 0, i64 0), !dbg !337
  %12 = select i1 %10, float* getelementptr inbounds ([6 x float], [6 x float]* @qR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @qR2, i64 0, i64 0), !dbg !337
  br label %13, !dbg !337

; <label>:13:                                     ; preds = %9, %8, %5
  %14 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qS8, i64 0, i64 0), %5 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qS5, i64 0, i64 0), %8 ], [ %11, %9 ], !dbg !339
  %15 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @qR8, i64 0, i64 0), %5 ], [ getelementptr inbounds ([6 x float], [6 x float]* @qR5, i64 0, i64 0), %8 ], [ %12, %9 ], !dbg !339
  %16 = fmul float %0, %0, !dbg !343
  %17 = fdiv float 1.000000e+00, %16, !dbg !344
  %18 = load float, float* %15, align 4, !dbg !346, !tbaa !208
  %19 = getelementptr inbounds float, float* %15, i64 1, !dbg !347
  %20 = load float, float* %19, align 4, !dbg !347, !tbaa !208
  %21 = getelementptr inbounds float, float* %15, i64 2, !dbg !348
  %22 = load float, float* %21, align 4, !dbg !348, !tbaa !208
  %23 = getelementptr inbounds float, float* %15, i64 3, !dbg !349
  %24 = load float, float* %23, align 4, !dbg !349, !tbaa !208
  %25 = getelementptr inbounds float, float* %15, i64 4, !dbg !350
  %26 = load float, float* %25, align 4, !dbg !350, !tbaa !208
  %27 = getelementptr inbounds float, float* %15, i64 5, !dbg !351
  %28 = load float, float* %27, align 4, !dbg !351, !tbaa !208
  %29 = fmul float %17, %28, !dbg !352
  %30 = fadd float %26, %29, !dbg !353
  %31 = fmul float %17, %30, !dbg !354
  %32 = fadd float %24, %31, !dbg !355
  %33 = fmul float %17, %32, !dbg !356
  %34 = fadd float %22, %33, !dbg !357
  %35 = fmul float %17, %34, !dbg !358
  %36 = fadd float %20, %35, !dbg !359
  %37 = fmul float %17, %36, !dbg !360
  %38 = fadd float %18, %37, !dbg !361
  %39 = load float, float* %14, align 4, !dbg !363, !tbaa !208
  %40 = getelementptr inbounds float, float* %14, i64 1, !dbg !364
  %41 = load float, float* %40, align 4, !dbg !364, !tbaa !208
  %42 = getelementptr inbounds float, float* %14, i64 2, !dbg !365
  %43 = load float, float* %42, align 4, !dbg !365, !tbaa !208
  %44 = getelementptr inbounds float, float* %14, i64 3, !dbg !366
  %45 = load float, float* %44, align 4, !dbg !366, !tbaa !208
  %46 = getelementptr inbounds float, float* %14, i64 4, !dbg !367
  %47 = load float, float* %46, align 4, !dbg !367, !tbaa !208
  %48 = getelementptr inbounds float, float* %14, i64 5, !dbg !368
  %49 = load float, float* %48, align 4, !dbg !368, !tbaa !208
  %50 = fmul float %17, %49, !dbg !369
  %51 = fadd float %47, %50, !dbg !370
  %52 = fmul float %17, %51, !dbg !371
  %53 = fadd float %45, %52, !dbg !372
  %54 = fmul float %17, %53, !dbg !373
  %55 = fadd float %43, %54, !dbg !374
  %56 = fmul float %17, %55, !dbg !375
  %57 = fadd float %41, %56, !dbg !376
  %58 = fmul float %17, %57, !dbg !377
  %59 = fadd float %39, %58, !dbg !378
  %60 = fmul float %17, %59, !dbg !379
  %61 = fadd float %60, 1.000000e+00, !dbg !380
  %62 = fdiv float %38, %61, !dbg !382
  %63 = fadd float %62, -1.250000e-01, !dbg !383
  %64 = fdiv float %63, %0, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  ret float %64, !dbg !385
}

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_y0f(float) local_unnamed_addr #0 !dbg !386 {
  %2 = bitcast float %0 to i32, !dbg !401
  %3 = and i32 %2, 2147483647, !dbg !403
  %4 = icmp ult i32 %3, 2139095040, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %4, label %9, label %5, !dbg !407

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !408
  %7 = fadd float %6, %0, !dbg !409
  %8 = fdiv float 1.000000e+00, %7, !dbg !410
  br label %136, !dbg !411

; <label>:9:                                      ; preds = %1
  %10 = icmp eq i32 %3, 0, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %10, label %136, label %11, !dbg !414

; <label>:11:                                     ; preds = %9
  %12 = icmp slt i32 %2, 0, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %12, label %136, label %13, !dbg !417

; <label>:13:                                     ; preds = %11
  %14 = icmp ugt i32 %3, 1073741823, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %14, label %15, label %102, !dbg !420

; <label>:15:                                     ; preds = %13
  %16 = tail call float @sinf(float %0) #3, !dbg !421
  %17 = tail call float @cosf(float %0) #3, !dbg !424
  %18 = fsub float %16, %17, !dbg !426
  %19 = fadd float %16, %17, !dbg !428
  %20 = icmp ult i32 %3, 2130706432, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %20, label %22, label %21, !dbg !432

; <label>:21:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br label %36, !dbg !439

; <label>:22:                                     ; preds = %15
  %23 = fadd float %0, %0, !dbg !440
  %24 = tail call float @cosf(float %23) #3, !dbg !442
  %25 = fsub float -0.000000e+00, %24, !dbg !443
  %26 = fmul float %16, %17, !dbg !445
  %27 = fcmp olt float %26, 0.000000e+00, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %27, label %28, label %30, !dbg !448

; <label>:28:                                     ; preds = %22
  %29 = fdiv float %25, %18, !dbg !449
  br label %32, !dbg !450

; <label>:30:                                     ; preds = %22
  %31 = fdiv float %25, %19, !dbg !451
  br label %32

; <label>:32:                                     ; preds = %28, %30
  %33 = phi float [ %29, %28 ], [ %19, %30 ], !dbg !452
  %34 = phi float [ %18, %28 ], [ %31, %30 ], !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %35 = icmp ugt i32 %3, 1090519039, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %35, label %36, label %39, !dbg !439

; <label>:36:                                     ; preds = %21, %32
  %37 = phi float [ %18, %21 ], [ %34, %32 ]
  %38 = phi float [ %19, %21 ], [ %33, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br label %46, !dbg !454

; <label>:39:                                     ; preds = %32
  %40 = icmp ugt i32 %3, 1089936471, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %40, label %41, label %42, !dbg !456

; <label>:41:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  br label %46, !dbg !457

; <label>:42:                                     ; preds = %39
  %43 = icmp ugt i32 %3, 1077336935, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = select i1 %43, float* getelementptr inbounds ([5 x float], [5 x float]* @pS3, i64 0, i64 0), float* getelementptr inbounds ([5 x float], [5 x float]* @pS2, i64 0, i64 0), !dbg !460
  %45 = select i1 %43, float* getelementptr inbounds ([6 x float], [6 x float]* @pR3, i64 0, i64 0), float* getelementptr inbounds ([6 x float], [6 x float]* @pR2, i64 0, i64 0), !dbg !460
  br label %46, !dbg !460

; <label>:46:                                     ; preds = %36, %41, %42
  %47 = phi float [ %37, %36 ], [ %34, %41 ], [ %34, %42 ]
  %48 = phi float [ %38, %36 ], [ %33, %41 ], [ %33, %42 ]
  %49 = phi float* [ getelementptr inbounds ([5 x float], [5 x float]* @pS8, i64 0, i64 0), %36 ], [ getelementptr inbounds ([5 x float], [5 x float]* @pS5, i64 0, i64 0), %41 ], [ %44, %42 ], !dbg !461
  %50 = phi float* [ getelementptr inbounds ([6 x float], [6 x float]* @pR8, i64 0, i64 0), %36 ], [ getelementptr inbounds ([6 x float], [6 x float]* @pR5, i64 0, i64 0), %41 ], [ %45, %42 ], !dbg !461
  %51 = fmul float %0, %0, !dbg !464
  %52 = fdiv float 1.000000e+00, %51, !dbg !465
  %53 = load float, float* %50, align 4, !dbg !467, !tbaa !208
  %54 = getelementptr inbounds float, float* %50, i64 1, !dbg !468
  %55 = load float, float* %54, align 4, !dbg !468, !tbaa !208
  %56 = getelementptr inbounds float, float* %50, i64 2, !dbg !469
  %57 = load float, float* %56, align 4, !dbg !469, !tbaa !208
  %58 = getelementptr inbounds float, float* %50, i64 3, !dbg !470
  %59 = load float, float* %58, align 4, !dbg !470, !tbaa !208
  %60 = getelementptr inbounds float, float* %50, i64 4, !dbg !471
  %61 = load float, float* %60, align 4, !dbg !471, !tbaa !208
  %62 = getelementptr inbounds float, float* %50, i64 5, !dbg !472
  %63 = load float, float* %62, align 4, !dbg !472, !tbaa !208
  %64 = fmul float %52, %63, !dbg !473
  %65 = fadd float %61, %64, !dbg !474
  %66 = fmul float %52, %65, !dbg !475
  %67 = fadd float %59, %66, !dbg !476
  %68 = fmul float %52, %67, !dbg !477
  %69 = fadd float %57, %68, !dbg !478
  %70 = fmul float %52, %69, !dbg !479
  %71 = fadd float %55, %70, !dbg !480
  %72 = fmul float %52, %71, !dbg !481
  %73 = fadd float %53, %72, !dbg !482
  %74 = load float, float* %49, align 4, !dbg !484, !tbaa !208
  %75 = getelementptr inbounds float, float* %49, i64 1, !dbg !485
  %76 = load float, float* %75, align 4, !dbg !485, !tbaa !208
  %77 = getelementptr inbounds float, float* %49, i64 2, !dbg !486
  %78 = load float, float* %77, align 4, !dbg !486, !tbaa !208
  %79 = getelementptr inbounds float, float* %49, i64 3, !dbg !487
  %80 = load float, float* %79, align 4, !dbg !487, !tbaa !208
  %81 = getelementptr inbounds float, float* %49, i64 4, !dbg !488
  %82 = load float, float* %81, align 4, !dbg !488, !tbaa !208
  %83 = fmul float %52, %82, !dbg !489
  %84 = fadd float %80, %83, !dbg !490
  %85 = fmul float %52, %84, !dbg !491
  %86 = fadd float %78, %85, !dbg !492
  %87 = fmul float %52, %86, !dbg !493
  %88 = fadd float %76, %87, !dbg !494
  %89 = fmul float %52, %88, !dbg !495
  %90 = fadd float %74, %89, !dbg !496
  %91 = fmul float %52, %90, !dbg !497
  %92 = fadd float %91, 1.000000e+00, !dbg !498
  %93 = fdiv float %73, %92, !dbg !500
  %94 = fadd float %93, 1.000000e+00, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !502
  %95 = tail call fastcc float @qzerof(float %0) #4, !dbg !504
  %96 = fmul float %47, %94, !dbg !506
  %97 = fmul float %48, %95, !dbg !507
  %98 = fadd float %97, %96, !dbg !508
  %99 = fmul float %98, 0x3FE20DD760000000, !dbg !509
  %100 = tail call float @__ieee754_sqrtf(float %0) #3, !dbg !510
  %101 = fdiv float %99, %100, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %136, !dbg !512

; <label>:102:                                    ; preds = %13
  %103 = icmp ult i32 %3, 838860801, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %103, label %104, label %108, !dbg !515

; <label>:104:                                    ; preds = %102
  %105 = tail call float @__ieee754_logf(float %0) #3, !dbg !516
  %106 = fmul float %105, 0x3FE45F3060000000, !dbg !518
  %107 = fadd float %106, 0xBFB2E4D6A0000000, !dbg !519
  br label %136, !dbg !520

; <label>:108:                                    ; preds = %102
  %109 = fmul float %0, %0, !dbg !521
  %110 = fmul float %109, 0x3DC5E43D60000000, !dbg !522
  %111 = fsub float 0x3E55005740000000, %110, !dbg !522
  %112 = fmul float %109, %111, !dbg !523
  %113 = fadd float %112, 0xBECFFEA780000000, !dbg !524
  %114 = fmul float %109, %113, !dbg !525
  %115 = fadd float %114, 0x3F36C54D20000000, !dbg !526
  %116 = fmul float %109, %115, !dbg !527
  %117 = fadd float %116, 0xBF8C4CE8C0000000, !dbg !528
  %118 = fmul float %109, %117, !dbg !529
  %119 = fadd float %118, 0x3FC69D01A0000000, !dbg !530
  %120 = fmul float %109, %119, !dbg !531
  %121 = fadd float %120, 0xBFB2E4D6A0000000, !dbg !532
  %122 = fmul float %109, 0x3DFE501840000000, !dbg !533
  %123 = fadd float %122, 0x3E91642D80000000, !dbg !534
  %124 = fmul float %109, %123, !dbg !535
  %125 = fadd float %124, 0x3F13ECBC00000000, !dbg !536
  %126 = fmul float %109, %125, !dbg !537
  %127 = fadd float %126, 0x3F8A1270A0000000, !dbg !538
  %128 = fmul float %109, %127, !dbg !539
  %129 = fadd float %128, 1.000000e+00, !dbg !540
  %130 = fdiv float %121, %129, !dbg !541
  %131 = tail call float @__ieee754_j0f(float %0) #4, !dbg !542
  %132 = tail call float @__ieee754_logf(float %0) #3, !dbg !543
  %133 = fmul float %131, %132, !dbg !544
  %134 = fmul float %133, 0x3FE45F3060000000, !dbg !545
  %135 = fadd float %130, %134, !dbg !546
  br label %136, !dbg !547

; <label>:136:                                    ; preds = %11, %9, %108, %104, %46, %5
  %137 = phi float [ %101, %46 ], [ %107, %104 ], [ %135, %108 ], [ %8, %5 ], [ 0xFFF0000000000000, %9 ], [ 0x7FF8000000000000, %11 ], !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  ret float %137, !dbg !549
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
!164 = !DILocation(line: 77, column: 6, scope: !141)
!165 = !DILocation(line: 0, scope: !141)
!166 = !DILocalVariable(name: "x", arg: 1, scope: !167, file: !3, line: 280, type: !6)
!167 = distinct !DISubprogram(name: "pzerof", scope: !3, file: !3, line: 280, type: !98, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !168)
!168 = !{!166, !169, !171, !172, !173, !174, !175, !176}
!169 = !DILocalVariable(name: "p", scope: !167, file: !3, line: 287, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!171 = !DILocalVariable(name: "q", scope: !167, file: !3, line: 287, type: !170)
!172 = !DILocalVariable(name: "z", scope: !167, file: !3, line: 291, type: !6)
!173 = !DILocalVariable(name: "r", scope: !167, file: !3, line: 291, type: !6)
!174 = !DILocalVariable(name: "s", scope: !167, file: !3, line: 291, type: !6)
!175 = !DILocalVariable(name: "ix", scope: !167, file: !3, line: 292, type: !111)
!176 = !DILocalVariable(name: "gf_u", scope: !177, file: !3, line: 293, type: !117)
!177 = distinct !DILexicalBlock(scope: !167, file: !3, line: 293, column: 2)
!178 = !DILocation(line: 280, column: 28, scope: !167, inlinedAt: !179)
!179 = distinct !DILocation(line: 79, column: 11, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 78, column: 8)
!181 = distinct !DILexicalBlock(scope: !141, file: !3, line: 77, column: 6)
!182 = !DILocation(line: 293, column: 2, scope: !177, inlinedAt: !179)
!183 = !DILocation(line: 292, column: 12, scope: !167, inlinedAt: !179)
!184 = !DILocation(line: 294, column: 5, scope: !167, inlinedAt: !179)
!185 = !DILocation(line: 295, column: 7, scope: !186, inlinedAt: !179)
!186 = distinct !DILexicalBlock(scope: !167, file: !3, line: 295, column: 5)
!187 = !DILocation(line: 295, column: 5, scope: !167, inlinedAt: !179)
!188 = !DILocation(line: 295, column: 42, scope: !189, inlinedAt: !179)
!189 = distinct !DILexicalBlock(scope: !186, file: !3, line: 295, column: 25)
!190 = !DILocation(line: 296, column: 12, scope: !191, inlinedAt: !179)
!191 = distinct !DILexicalBlock(scope: !186, file: !3, line: 296, column: 10)
!192 = !DILocation(line: 296, column: 10, scope: !186, inlinedAt: !179)
!193 = !DILocation(line: 296, column: 42, scope: !194, inlinedAt: !179)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 296, column: 25)
!195 = !DILocation(line: 297, column: 12, scope: !196, inlinedAt: !179)
!196 = distinct !DILexicalBlock(scope: !191, file: !3, line: 297, column: 10)
!197 = !DILocation(line: 297, column: 10, scope: !191, inlinedAt: !179)
!198 = !DILocation(line: 297, column: 42, scope: !199, inlinedAt: !179)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 297, column: 25)
!200 = !DILocation(line: 0, scope: !201, inlinedAt: !179)
!201 = distinct !DILexicalBlock(scope: !196, file: !3, line: 298, column: 12)
!202 = !DILocation(line: 287, column: 15, scope: !167, inlinedAt: !179)
!203 = !DILocation(line: 287, column: 18, scope: !167, inlinedAt: !179)
!204 = !DILocation(line: 299, column: 12, scope: !167, inlinedAt: !179)
!205 = !DILocation(line: 299, column: 9, scope: !167, inlinedAt: !179)
!206 = !DILocation(line: 291, column: 8, scope: !167, inlinedAt: !179)
!207 = !DILocation(line: 300, column: 6, scope: !167, inlinedAt: !179)
!208 = !{!209, !209, i64 0}
!209 = !{!"float", !210, i64 0}
!210 = !{!"omnipotent char", !211, i64 0}
!211 = !{!"Simple C/C++ TBAA"}
!212 = !DILocation(line: 300, column: 14, scope: !167, inlinedAt: !179)
!213 = !DILocation(line: 300, column: 22, scope: !167, inlinedAt: !179)
!214 = !DILocation(line: 300, column: 30, scope: !167, inlinedAt: !179)
!215 = !DILocation(line: 300, column: 38, scope: !167, inlinedAt: !179)
!216 = !DILocation(line: 300, column: 45, scope: !167, inlinedAt: !179)
!217 = !DILocation(line: 300, column: 44, scope: !167, inlinedAt: !179)
!218 = !DILocation(line: 300, column: 42, scope: !167, inlinedAt: !179)
!219 = !DILocation(line: 300, column: 36, scope: !167, inlinedAt: !179)
!220 = !DILocation(line: 300, column: 34, scope: !167, inlinedAt: !179)
!221 = !DILocation(line: 300, column: 28, scope: !167, inlinedAt: !179)
!222 = !DILocation(line: 300, column: 26, scope: !167, inlinedAt: !179)
!223 = !DILocation(line: 300, column: 20, scope: !167, inlinedAt: !179)
!224 = !DILocation(line: 300, column: 18, scope: !167, inlinedAt: !179)
!225 = !DILocation(line: 300, column: 12, scope: !167, inlinedAt: !179)
!226 = !DILocation(line: 300, column: 10, scope: !167, inlinedAt: !179)
!227 = !DILocation(line: 291, column: 10, scope: !167, inlinedAt: !179)
!228 = !DILocation(line: 301, column: 13, scope: !167, inlinedAt: !179)
!229 = !DILocation(line: 301, column: 21, scope: !167, inlinedAt: !179)
!230 = !DILocation(line: 301, column: 29, scope: !167, inlinedAt: !179)
!231 = !DILocation(line: 301, column: 37, scope: !167, inlinedAt: !179)
!232 = !DILocation(line: 301, column: 44, scope: !167, inlinedAt: !179)
!233 = !DILocation(line: 301, column: 43, scope: !167, inlinedAt: !179)
!234 = !DILocation(line: 301, column: 41, scope: !167, inlinedAt: !179)
!235 = !DILocation(line: 301, column: 35, scope: !167, inlinedAt: !179)
!236 = !DILocation(line: 301, column: 33, scope: !167, inlinedAt: !179)
!237 = !DILocation(line: 301, column: 27, scope: !167, inlinedAt: !179)
!238 = !DILocation(line: 301, column: 25, scope: !167, inlinedAt: !179)
!239 = !DILocation(line: 301, column: 19, scope: !167, inlinedAt: !179)
!240 = !DILocation(line: 301, column: 17, scope: !167, inlinedAt: !179)
!241 = !DILocation(line: 301, column: 11, scope: !167, inlinedAt: !179)
!242 = !DILocation(line: 301, column: 9, scope: !167, inlinedAt: !179)
!243 = !DILocation(line: 291, column: 12, scope: !167, inlinedAt: !179)
!244 = !DILocation(line: 302, column: 15, scope: !167, inlinedAt: !179)
!245 = !DILocation(line: 302, column: 12, scope: !167, inlinedAt: !179)
!246 = !DILocation(line: 302, column: 2, scope: !167, inlinedAt: !179)
!247 = !DILocation(line: 56, column: 23, scope: !97)
!248 = !DILocation(line: 79, column: 26, scope: !180)
!249 = !DILocation(line: 56, column: 25, scope: !97)
!250 = !DILocation(line: 80, column: 33, scope: !180)
!251 = !DILocation(line: 80, column: 23, scope: !180)
!252 = !DILocation(line: 80, column: 28, scope: !180)
!253 = !DILocation(line: 80, column: 26, scope: !180)
!254 = !DILocation(line: 80, column: 20, scope: !180)
!255 = !DILocation(line: 80, column: 32, scope: !180)
!256 = !DILocation(line: 82, column: 3, scope: !141)
!257 = !DILocation(line: 84, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !97, file: !3, line: 84, column: 5)
!259 = !DILocation(line: 84, column: 5, scope: !97)
!260 = !DILocation(line: 85, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 85, column: 9)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 84, column: 20)
!263 = !DILocation(line: 85, column: 15, scope: !261)
!264 = !DILocation(line: 85, column: 9, scope: !262)
!265 = !DILocation(line: 86, column: 15, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 86, column: 13)
!267 = distinct !DILexicalBlock(scope: !261, file: !3, line: 85, column: 21)
!268 = !DILocation(line: 86, column: 13, scope: !267)
!269 = !DILocation(line: 87, column: 46, scope: !266)
!270 = !DILocation(line: 87, column: 48, scope: !266)
!271 = !DILocation(line: 87, column: 33, scope: !266)
!272 = !DILocation(line: 87, column: 22, scope: !266)
!273 = !DILocation(line: 90, column: 7, scope: !97)
!274 = !DILocation(line: 91, column: 29, scope: !97)
!275 = !DILocation(line: 91, column: 22, scope: !97)
!276 = !DILocation(line: 91, column: 20, scope: !97)
!277 = !DILocation(line: 91, column: 15, scope: !97)
!278 = !DILocation(line: 91, column: 13, scope: !97)
!279 = !DILocation(line: 91, column: 8, scope: !97)
!280 = !DILocation(line: 56, column: 21, scope: !97)
!281 = !DILocation(line: 92, column: 33, scope: !97)
!282 = !DILocation(line: 92, column: 31, scope: !97)
!283 = !DILocation(line: 92, column: 26, scope: !97)
!284 = !DILocation(line: 92, column: 24, scope: !97)
!285 = !DILocation(line: 92, column: 19, scope: !97)
!286 = !DILocation(line: 92, column: 17, scope: !97)
!287 = !DILocation(line: 92, column: 12, scope: !97)
!288 = !DILocation(line: 92, column: 10, scope: !97)
!289 = !DILocation(line: 93, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !97, file: !3, line: 93, column: 5)
!291 = !DILocation(line: 93, column: 5, scope: !97)
!292 = !DILocation(line: 94, column: 37, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !3, line: 93, column: 22)
!294 = !DILocation(line: 94, column: 34, scope: !293)
!295 = !DILocation(line: 94, column: 20, scope: !293)
!296 = !DILocation(line: 94, column: 17, scope: !293)
!297 = !DILocation(line: 94, column: 6, scope: !293)
!298 = !DILocation(line: 96, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !290, file: !3, line: 95, column: 9)
!300 = !DILocation(line: 97, column: 17, scope: !299)
!301 = !DILocation(line: 97, column: 25, scope: !299)
!302 = !DILocation(line: 97, column: 20, scope: !299)
!303 = !DILocation(line: 97, column: 33, scope: !299)
!304 = !DILocation(line: 97, column: 30, scope: !299)
!305 = !DILocation(line: 97, column: 28, scope: !299)
!306 = !DILocation(line: 97, column: 6, scope: !299)
!307 = !DILocation(line: 0, scope: !131)
!308 = !DILocation(line: 99, column: 1, scope: !97)
!309 = distinct !DISubprogram(name: "qzerof", scope: !3, file: !3, line: 416, type: !98, isLocal: true, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !310)
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318}
!311 = !DILocalVariable(name: "x", arg: 1, scope: !309, file: !3, line: 416, type: !6)
!312 = !DILocalVariable(name: "p", scope: !309, file: !3, line: 423, type: !170)
!313 = !DILocalVariable(name: "q", scope: !309, file: !3, line: 423, type: !170)
!314 = !DILocalVariable(name: "s", scope: !309, file: !3, line: 427, type: !6)
!315 = !DILocalVariable(name: "r", scope: !309, file: !3, line: 427, type: !6)
!316 = !DILocalVariable(name: "z", scope: !309, file: !3, line: 427, type: !6)
!317 = !DILocalVariable(name: "ix", scope: !309, file: !3, line: 428, type: !111)
!318 = !DILocalVariable(name: "gf_u", scope: !319, file: !3, line: 429, type: !117)
!319 = distinct !DILexicalBlock(scope: !309, file: !3, line: 429, column: 2)
!320 = !DILocation(line: 416, column: 28, scope: !309)
!321 = !DILocation(line: 429, column: 2, scope: !319)
!322 = !DILocation(line: 428, column: 12, scope: !309)
!323 = !DILocation(line: 430, column: 5, scope: !309)
!324 = !DILocation(line: 431, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !309, file: !3, line: 431, column: 5)
!326 = !DILocation(line: 431, column: 5, scope: !309)
!327 = !DILocation(line: 431, column: 42, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 431, column: 25)
!329 = !DILocation(line: 432, column: 12, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 432, column: 10)
!331 = !DILocation(line: 432, column: 10, scope: !325)
!332 = !DILocation(line: 432, column: 42, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 432, column: 25)
!334 = !DILocation(line: 433, column: 12, scope: !335)
!335 = distinct !DILexicalBlock(scope: !330, file: !3, line: 433, column: 10)
!336 = !DILocation(line: 433, column: 10, scope: !330)
!337 = !DILocation(line: 433, column: 42, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !3, line: 433, column: 25)
!339 = !DILocation(line: 0, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !3, line: 434, column: 12)
!341 = !DILocation(line: 423, column: 15, scope: !309)
!342 = !DILocation(line: 423, column: 18, scope: !309)
!343 = !DILocation(line: 435, column: 12, scope: !309)
!344 = !DILocation(line: 435, column: 9, scope: !309)
!345 = !DILocation(line: 427, column: 12, scope: !309)
!346 = !DILocation(line: 436, column: 6, scope: !309)
!347 = !DILocation(line: 436, column: 14, scope: !309)
!348 = !DILocation(line: 436, column: 22, scope: !309)
!349 = !DILocation(line: 436, column: 30, scope: !309)
!350 = !DILocation(line: 436, column: 38, scope: !309)
!351 = !DILocation(line: 436, column: 45, scope: !309)
!352 = !DILocation(line: 436, column: 44, scope: !309)
!353 = !DILocation(line: 436, column: 42, scope: !309)
!354 = !DILocation(line: 436, column: 36, scope: !309)
!355 = !DILocation(line: 436, column: 34, scope: !309)
!356 = !DILocation(line: 436, column: 28, scope: !309)
!357 = !DILocation(line: 436, column: 26, scope: !309)
!358 = !DILocation(line: 436, column: 20, scope: !309)
!359 = !DILocation(line: 436, column: 18, scope: !309)
!360 = !DILocation(line: 436, column: 12, scope: !309)
!361 = !DILocation(line: 436, column: 10, scope: !309)
!362 = !DILocation(line: 427, column: 10, scope: !309)
!363 = !DILocation(line: 437, column: 13, scope: !309)
!364 = !DILocation(line: 437, column: 21, scope: !309)
!365 = !DILocation(line: 437, column: 29, scope: !309)
!366 = !DILocation(line: 437, column: 37, scope: !309)
!367 = !DILocation(line: 437, column: 45, scope: !309)
!368 = !DILocation(line: 437, column: 52, scope: !309)
!369 = !DILocation(line: 437, column: 51, scope: !309)
!370 = !DILocation(line: 437, column: 49, scope: !309)
!371 = !DILocation(line: 437, column: 43, scope: !309)
!372 = !DILocation(line: 437, column: 41, scope: !309)
!373 = !DILocation(line: 437, column: 35, scope: !309)
!374 = !DILocation(line: 437, column: 33, scope: !309)
!375 = !DILocation(line: 437, column: 27, scope: !309)
!376 = !DILocation(line: 437, column: 25, scope: !309)
!377 = !DILocation(line: 437, column: 19, scope: !309)
!378 = !DILocation(line: 437, column: 17, scope: !309)
!379 = !DILocation(line: 437, column: 11, scope: !309)
!380 = !DILocation(line: 437, column: 9, scope: !309)
!381 = !DILocation(line: 427, column: 8, scope: !309)
!382 = !DILocation(line: 438, column: 26, scope: !309)
!383 = !DILocation(line: 438, column: 23, scope: !309)
!384 = !DILocation(line: 438, column: 29, scope: !309)
!385 = !DILocation(line: 438, column: 2, scope: !309)
!386 = distinct !DISubprogram(name: "__ieee754_y0f", scope: !3, file: !3, line: 119, type: !98, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!388 = !DILocalVariable(name: "x", arg: 1, scope: !386, file: !3, line: 119, type: !6)
!389 = !DILocalVariable(name: "z", scope: !386, file: !3, line: 125, type: !6)
!390 = !DILocalVariable(name: "s", scope: !386, file: !3, line: 125, type: !6)
!391 = !DILocalVariable(name: "c", scope: !386, file: !3, line: 125, type: !6)
!392 = !DILocalVariable(name: "ss", scope: !386, file: !3, line: 125, type: !6)
!393 = !DILocalVariable(name: "cc", scope: !386, file: !3, line: 125, type: !6)
!394 = !DILocalVariable(name: "u", scope: !386, file: !3, line: 125, type: !6)
!395 = !DILocalVariable(name: "v", scope: !386, file: !3, line: 125, type: !6)
!396 = !DILocalVariable(name: "hx", scope: !386, file: !3, line: 126, type: !111)
!397 = !DILocalVariable(name: "ix", scope: !386, file: !3, line: 126, type: !111)
!398 = !DILocalVariable(name: "gf_u", scope: !399, file: !3, line: 128, type: !117)
!399 = distinct !DILexicalBlock(scope: !386, file: !3, line: 128, column: 2)
!400 = !DILocation(line: 119, column: 28, scope: !386)
!401 = !DILocation(line: 128, column: 2, scope: !399)
!402 = !DILocation(line: 126, column: 12, scope: !386)
!403 = !DILocation(line: 129, column: 24, scope: !386)
!404 = !DILocation(line: 126, column: 15, scope: !386)
!405 = !DILocation(line: 131, column: 6, scope: !406)
!406 = distinct !DILexicalBlock(scope: !386, file: !3, line: 131, column: 5)
!407 = !DILocation(line: 131, column: 5, scope: !386)
!408 = !DILocation(line: 131, column: 47, scope: !406)
!409 = !DILocation(line: 131, column: 45, scope: !406)
!410 = !DILocation(line: 131, column: 42, scope: !406)
!411 = !DILocation(line: 131, column: 31, scope: !406)
!412 = !DILocation(line: 132, column: 12, scope: !413)
!413 = distinct !DILexicalBlock(scope: !386, file: !3, line: 132, column: 12)
!414 = !DILocation(line: 132, column: 12, scope: !386)
!415 = !DILocation(line: 133, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !386, file: !3, line: 133, column: 12)
!417 = !DILocation(line: 133, column: 12, scope: !386)
!418 = !DILocation(line: 134, column: 15, scope: !419)
!419 = distinct !DILexicalBlock(scope: !386, file: !3, line: 134, column: 12)
!420 = !DILocation(line: 134, column: 12, scope: !386)
!421 = !DILocation(line: 146, column: 21, scope: !422)
!422 = distinct !DILexicalBlock(scope: !419, file: !3, line: 134, column: 30)
!423 = !DILocation(line: 125, column: 11, scope: !386)
!424 = !DILocation(line: 147, column: 21, scope: !422)
!425 = !DILocation(line: 125, column: 13, scope: !386)
!426 = !DILocation(line: 148, column: 23, scope: !422)
!427 = !DILocation(line: 125, column: 15, scope: !386)
!428 = !DILocation(line: 149, column: 23, scope: !422)
!429 = !DILocation(line: 125, column: 18, scope: !386)
!430 = !DILocation(line: 154, column: 22, scope: !431)
!431 = distinct !DILexicalBlock(scope: !422, file: !3, line: 154, column: 20)
!432 = !DILocation(line: 154, column: 20, scope: !422)
!433 = !DILocation(line: 159, column: 20, scope: !422)
!434 = !DILocation(line: 280, column: 28, scope: !167, inlinedAt: !435)
!435 = distinct !DILocation(line: 161, column: 25, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 160, column: 22)
!437 = distinct !DILexicalBlock(scope: !422, file: !3, line: 159, column: 20)
!438 = !DILocation(line: 292, column: 12, scope: !167, inlinedAt: !435)
!439 = !DILocation(line: 295, column: 5, scope: !167, inlinedAt: !435)
!440 = !DILocation(line: 155, column: 32, scope: !441)
!441 = distinct !DILexicalBlock(scope: !431, file: !3, line: 154, column: 44)
!442 = !DILocation(line: 155, column: 26, scope: !441)
!443 = !DILocation(line: 155, column: 25, scope: !441)
!444 = !DILocation(line: 125, column: 8, scope: !386)
!445 = !DILocation(line: 156, column: 27, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !3, line: 156, column: 25)
!447 = !DILocation(line: 156, column: 30, scope: !446)
!448 = !DILocation(line: 156, column: 25, scope: !441)
!449 = !DILocation(line: 156, column: 43, scope: !446)
!450 = !DILocation(line: 156, column: 37, scope: !446)
!451 = !DILocation(line: 157, column: 43, scope: !446)
!452 = !DILocation(line: 0, scope: !422)
!453 = !DILocation(line: 295, column: 7, scope: !186, inlinedAt: !435)
!454 = !DILocation(line: 295, column: 42, scope: !189, inlinedAt: !435)
!455 = !DILocation(line: 296, column: 12, scope: !191, inlinedAt: !435)
!456 = !DILocation(line: 296, column: 10, scope: !186, inlinedAt: !435)
!457 = !DILocation(line: 296, column: 42, scope: !194, inlinedAt: !435)
!458 = !DILocation(line: 297, column: 12, scope: !196, inlinedAt: !435)
!459 = !DILocation(line: 297, column: 10, scope: !191, inlinedAt: !435)
!460 = !DILocation(line: 297, column: 42, scope: !199, inlinedAt: !435)
!461 = !DILocation(line: 0, scope: !201, inlinedAt: !435)
!462 = !DILocation(line: 287, column: 15, scope: !167, inlinedAt: !435)
!463 = !DILocation(line: 287, column: 18, scope: !167, inlinedAt: !435)
!464 = !DILocation(line: 299, column: 12, scope: !167, inlinedAt: !435)
!465 = !DILocation(line: 299, column: 9, scope: !167, inlinedAt: !435)
!466 = !DILocation(line: 291, column: 8, scope: !167, inlinedAt: !435)
!467 = !DILocation(line: 300, column: 6, scope: !167, inlinedAt: !435)
!468 = !DILocation(line: 300, column: 14, scope: !167, inlinedAt: !435)
!469 = !DILocation(line: 300, column: 22, scope: !167, inlinedAt: !435)
!470 = !DILocation(line: 300, column: 30, scope: !167, inlinedAt: !435)
!471 = !DILocation(line: 300, column: 38, scope: !167, inlinedAt: !435)
!472 = !DILocation(line: 300, column: 45, scope: !167, inlinedAt: !435)
!473 = !DILocation(line: 300, column: 44, scope: !167, inlinedAt: !435)
!474 = !DILocation(line: 300, column: 42, scope: !167, inlinedAt: !435)
!475 = !DILocation(line: 300, column: 36, scope: !167, inlinedAt: !435)
!476 = !DILocation(line: 300, column: 34, scope: !167, inlinedAt: !435)
!477 = !DILocation(line: 300, column: 28, scope: !167, inlinedAt: !435)
!478 = !DILocation(line: 300, column: 26, scope: !167, inlinedAt: !435)
!479 = !DILocation(line: 300, column: 20, scope: !167, inlinedAt: !435)
!480 = !DILocation(line: 300, column: 18, scope: !167, inlinedAt: !435)
!481 = !DILocation(line: 300, column: 12, scope: !167, inlinedAt: !435)
!482 = !DILocation(line: 300, column: 10, scope: !167, inlinedAt: !435)
!483 = !DILocation(line: 291, column: 10, scope: !167, inlinedAt: !435)
!484 = !DILocation(line: 301, column: 13, scope: !167, inlinedAt: !435)
!485 = !DILocation(line: 301, column: 21, scope: !167, inlinedAt: !435)
!486 = !DILocation(line: 301, column: 29, scope: !167, inlinedAt: !435)
!487 = !DILocation(line: 301, column: 37, scope: !167, inlinedAt: !435)
!488 = !DILocation(line: 301, column: 44, scope: !167, inlinedAt: !435)
!489 = !DILocation(line: 301, column: 43, scope: !167, inlinedAt: !435)
!490 = !DILocation(line: 301, column: 41, scope: !167, inlinedAt: !435)
!491 = !DILocation(line: 301, column: 35, scope: !167, inlinedAt: !435)
!492 = !DILocation(line: 301, column: 33, scope: !167, inlinedAt: !435)
!493 = !DILocation(line: 301, column: 27, scope: !167, inlinedAt: !435)
!494 = !DILocation(line: 301, column: 25, scope: !167, inlinedAt: !435)
!495 = !DILocation(line: 301, column: 19, scope: !167, inlinedAt: !435)
!496 = !DILocation(line: 301, column: 17, scope: !167, inlinedAt: !435)
!497 = !DILocation(line: 301, column: 11, scope: !167, inlinedAt: !435)
!498 = !DILocation(line: 301, column: 9, scope: !167, inlinedAt: !435)
!499 = !DILocation(line: 291, column: 12, scope: !167, inlinedAt: !435)
!500 = !DILocation(line: 302, column: 15, scope: !167, inlinedAt: !435)
!501 = !DILocation(line: 302, column: 12, scope: !167, inlinedAt: !435)
!502 = !DILocation(line: 302, column: 2, scope: !167, inlinedAt: !435)
!503 = !DILocation(line: 125, column: 21, scope: !386)
!504 = !DILocation(line: 161, column: 40, scope: !436)
!505 = !DILocation(line: 125, column: 23, scope: !386)
!506 = !DILocation(line: 162, column: 37, scope: !436)
!507 = !DILocation(line: 162, column: 42, scope: !436)
!508 = !DILocation(line: 162, column: 40, scope: !436)
!509 = !DILocation(line: 162, column: 34, scope: !436)
!510 = !DILocation(line: 162, column: 47, scope: !436)
!511 = !DILocation(line: 162, column: 46, scope: !436)
!512 = !DILocation(line: 164, column: 17, scope: !422)
!513 = !DILocation(line: 166, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !386, file: !3, line: 166, column: 5)
!515 = !DILocation(line: 166, column: 5, scope: !386)
!516 = !DILocation(line: 167, column: 23, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !3, line: 166, column: 21)
!518 = !DILocation(line: 167, column: 22, scope: !517)
!519 = !DILocation(line: 167, column: 17, scope: !517)
!520 = !DILocation(line: 167, column: 6, scope: !517)
!521 = !DILocation(line: 169, column: 7, scope: !386)
!522 = !DILocation(line: 170, column: 46, scope: !386)
!523 = !DILocation(line: 170, column: 39, scope: !386)
!524 = !DILocation(line: 170, column: 37, scope: !386)
!525 = !DILocation(line: 170, column: 32, scope: !386)
!526 = !DILocation(line: 170, column: 30, scope: !386)
!527 = !DILocation(line: 170, column: 25, scope: !386)
!528 = !DILocation(line: 170, column: 23, scope: !386)
!529 = !DILocation(line: 170, column: 18, scope: !386)
!530 = !DILocation(line: 170, column: 16, scope: !386)
!531 = !DILocation(line: 170, column: 11, scope: !386)
!532 = !DILocation(line: 170, column: 9, scope: !386)
!533 = !DILocation(line: 171, column: 32, scope: !386)
!534 = !DILocation(line: 171, column: 30, scope: !386)
!535 = !DILocation(line: 171, column: 25, scope: !386)
!536 = !DILocation(line: 171, column: 23, scope: !386)
!537 = !DILocation(line: 171, column: 18, scope: !386)
!538 = !DILocation(line: 171, column: 16, scope: !386)
!539 = !DILocation(line: 171, column: 11, scope: !386)
!540 = !DILocation(line: 171, column: 9, scope: !386)
!541 = !DILocation(line: 172, column: 10, scope: !386)
!542 = !DILocation(line: 172, column: 20, scope: !386)
!543 = !DILocation(line: 172, column: 37, scope: !386)
!544 = !DILocation(line: 172, column: 36, scope: !386)
!545 = !DILocation(line: 172, column: 18, scope: !386)
!546 = !DILocation(line: 172, column: 13, scope: !386)
!547 = !DILocation(line: 172, column: 2, scope: !386)
!548 = !DILocation(line: 0, scope: !406)
!549 = !DILocation(line: 173, column: 1, scope: !386)
