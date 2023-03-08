; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j0.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pR8 = internal unnamed_addr constant [6 x double] [double 0.000000e+00, double 0xBFB1FFFFFFFFFD32, double 0xC02029D0B44FA779, double 0xC07011027B19E863, double 0xC0A36A6ECD4DCAFC, double 0xC0B4850B36CC643D], align 16, !dbg !0
@pS8 = internal unnamed_addr constant [5 x double] [double 0x405D223307A96751, double 0x40ADF37D50596938, double 0x40E3D2BB6EB6B05F, double 0x40FC810F8F9FA9BD, double 0x40E741774F2C49DC], align 16, !dbg !56
@pR5 = internal unnamed_addr constant [6 x double] [double 0xBDA918B147E495CC, double 0xBFB1FFFFE69AFBC6, double 0xC010A370F90C6BBF, double 0xC050EB2F5A7D1783, double 0xC074B3B36742CC63, double 0xC075A6EF28A38BD7], align 16, !dbg !61
@pS5 = internal unnamed_addr constant [5 x double] [double 0x404E60810C98C5DE, double 0x40906D025C7E2864, double 0x40B75AF88FBE1D60, double 0x40C2CCB8FA76FA38, double 0x40A2CC1DC70BE864], align 16, !dbg !66
@pR3 = internal unnamed_addr constant [6 x double] [double 0xBE25E1036FE1AA86, double 0xBFB1FFF6F7C0E24B, double 0xC00345B2AEA48074, double 0xC035F74A4CB94E14, double 0xC04D0A22420A1A45, double 0xC03F72ACA892D80F], align 16, !dbg !68
@pS3 = internal unnamed_addr constant [5 x double] [double 0x4041ED9284077DD3, double 0x40769839464A7C0E, double 0x4092A66E6D1061D6, double 0x40919FFCB8C39B7E, double 0x4065B296FC379081], align 16, !dbg !70
@pR2 = internal unnamed_addr constant [6 x double] [double 0xBE77D316E927026D, double 0xBFB1FF62495E1E42, double 0xBFF736398A24A843, double 0xC01E8AF3EDAFA7F3, double 0xC02662E6C5246303, double 0xC009DE81AF8FE70F], align 16, !dbg !72
@pS2 = internal unnamed_addr constant [5 x double] [double 0x40363865908B5959, double 0x4061069E0EE8878F, double 0x4070E78642EA079B, double 0x40633C033AB6FAFF, double 0x402D50B344391809], align 16, !dbg !74
@qR8 = internal unnamed_addr constant [6 x double] [double 0.000000e+00, double 0x3FB2BFFFFFFFFE2C, double 0x402789525BB334D6, double 0x40816D6315301825, double 0x40C14D993E18F46D, double 0x40E212D40E901566], align 16, !dbg !76
@qS8 = internal unnamed_addr constant [6 x double] [double 0x406478D5365B39BC, double 0x40BFA2584E6B0563, double 0x4101665254D38C3F, double 0x412883DA83A52B43, double 0x4129A66B28DE0B3D, double 0xC114FD6D2C9530C5], align 16, !dbg !78
@qR5 = internal unnamed_addr constant [6 x double] [double 0x3DB43D8F29CC8CD9, double 0x3FB2BFFFD172B04C, double 0x401757B0B9953DD3, double 0x4060E3920A8788E9, double 0x40900CF99DC8C481, double 0x409F17E953C6E3A6], align 16, !dbg !80
@qS5 = internal unnamed_addr constant [6 x double] [double 0x4054B1B3FB5E1543, double 0x40A03BA0DA21C0CE, double 0x40D267D27B591E6D, double 0x40EBB5E397E02372, double 0x40E191181F7A54A0, double 0xC0B4EA57BEDBC609], align 16, !dbg !82
@qR3 = internal unnamed_addr constant [6 x double] [double 0x3E32CD036ADECB82, double 0x3FB2BFEE0E8D0842, double 0x400AC0FC61149CF5, double 0x40454F98962DAEDD, double 0x406559DBE25EFD1F, double 0x4064D77C81FA21E0], align 16, !dbg !84
@qS3 = internal unnamed_addr constant [6 x double] [double 0x40486122BFE343A6, double 0x40862D8386544EB3, double 0x40ACF04BE44DFC63, double 0x40B93C6CD7C76A28, double 0x40A3A8AAD94FB1C0, double 0xC062A7EB201CF40F], align 16, !dbg !86
@qR2 = internal unnamed_addr constant [6 x double] [double 0x3E84313B54F76BDB, double 0x3FB2BEC53E883E34, double 0x3FFFF897E727779C, double 0x402CFDBFAAF96FE5, double 0x403FAA8E29FBDC4A, double 0x403040B171814BB4], align 16, !dbg !88
@qS2 = internal unnamed_addr constant [6 x double] [double 0x403E5D96F7C07AED, double 0x4070D591E4D14B40, double 0x408A664522B3BF22, double 0x408B977C9C5CC214, double 0x406A95530E001365, double 0xC0153E6AF8B32931], align 16, !dbg !90
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_j0(double) local_unnamed_addr #0 !dbg !96 {
  %2 = bitcast double %0 to i64, !dbg !129
  %3 = lshr i64 %2, 32, !dbg !129
  %4 = trunc i64 %3 to i32, !dbg !129
  %5 = and i32 %4, 2147483647, !dbg !131
  %6 = icmp ugt i32 %5, 2146435071, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %6, label %7, label %10, !dbg !135

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !136
  %9 = fdiv double 1.000000e+00, %8, !dbg !137
  br label %146, !dbg !138

; <label>:10:                                     ; preds = %1
  %11 = tail call double @fabs(double %0) #3, !dbg !139
  %12 = icmp ugt i32 %5, 1073741823, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %12, label %13, label %104, !dbg !142

; <label>:13:                                     ; preds = %10
  %14 = tail call double @sin(double %11) #3, !dbg !143
  %15 = tail call double @cos(double %11) #3, !dbg !146
  %16 = fsub double %14, %15, !dbg !148
  %17 = fadd double %14, %15, !dbg !150
  %18 = icmp ult i32 %5, 2145386496, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %18, label %20, label %19, !dbg !154

; <label>:19:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br label %99, !dbg !155

; <label>:20:                                     ; preds = %13
  %21 = fadd double %11, %11, !dbg !156
  %22 = tail call double @cos(double %21) #3, !dbg !158
  %23 = fsub double -0.000000e+00, %22, !dbg !159
  %24 = fmul double %14, %15, !dbg !161
  %25 = fcmp olt double %24, 0.000000e+00, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %25, label %26, label %28, !dbg !164

; <label>:26:                                     ; preds = %20
  %27 = fdiv double %23, %16, !dbg !165
  br label %30, !dbg !166

; <label>:28:                                     ; preds = %20
  %29 = fdiv double %23, %17, !dbg !167
  br label %30

; <label>:30:                                     ; preds = %26, %28
  %31 = phi double [ %27, %26 ], [ %17, %28 ], !dbg !168
  %32 = phi double [ %16, %26 ], [ %29, %28 ], !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %33 = icmp ugt i32 %5, 1207959552, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br i1 %33, label %99, label %34, !dbg !155

; <label>:34:                                     ; preds = %30
  %35 = bitcast double %11 to i64, !dbg !186
  %36 = lshr i64 %35, 32, !dbg !186
  %37 = trunc i64 %36 to i32, !dbg !186
  %38 = and i32 %37, 2147483647, !dbg !188
  %39 = icmp ugt i32 %38, 1075838975, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br i1 %39, label %40, label %41, !dbg !191

; <label>:40:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %48, !dbg !192

; <label>:41:                                     ; preds = %34
  %42 = icmp ugt i32 %38, 1074933386, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %42, label %43, label %44, !dbg !196

; <label>:43:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br label %48, !dbg !197

; <label>:44:                                     ; preds = %41
  %45 = icmp ugt i32 %38, 1074191212, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = select i1 %45, double* getelementptr inbounds ([5 x double], [5 x double]* @pS3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @pS2, i64 0, i64 0), !dbg !202
  %47 = select i1 %45, double* getelementptr inbounds ([6 x double], [6 x double]* @pR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pR2, i64 0, i64 0), !dbg !202
  br label %48, !dbg !202

; <label>:48:                                     ; preds = %40, %43, %44
  %49 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @pS8, i64 0, i64 0), %40 ], [ getelementptr inbounds ([5 x double], [5 x double]* @pS5, i64 0, i64 0), %43 ], [ %46, %44 ], !dbg !204
  %50 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pR8, i64 0, i64 0), %40 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pR5, i64 0, i64 0), %43 ], [ %47, %44 ], !dbg !204
  %51 = fmul double %11, %11, !dbg !208
  %52 = fdiv double 1.000000e+00, %51, !dbg !209
  %53 = load double, double* %50, align 8, !dbg !211, !tbaa !212
  %54 = getelementptr inbounds double, double* %50, i64 1, !dbg !216
  %55 = load double, double* %54, align 8, !dbg !216, !tbaa !212
  %56 = getelementptr inbounds double, double* %50, i64 2, !dbg !217
  %57 = load double, double* %56, align 8, !dbg !217, !tbaa !212
  %58 = getelementptr inbounds double, double* %50, i64 3, !dbg !218
  %59 = load double, double* %58, align 8, !dbg !218, !tbaa !212
  %60 = getelementptr inbounds double, double* %50, i64 4, !dbg !219
  %61 = load double, double* %60, align 8, !dbg !219, !tbaa !212
  %62 = getelementptr inbounds double, double* %50, i64 5, !dbg !220
  %63 = load double, double* %62, align 8, !dbg !220, !tbaa !212
  %64 = fmul double %52, %63, !dbg !221
  %65 = fadd double %61, %64, !dbg !222
  %66 = fmul double %52, %65, !dbg !223
  %67 = fadd double %59, %66, !dbg !224
  %68 = fmul double %52, %67, !dbg !225
  %69 = fadd double %57, %68, !dbg !226
  %70 = fmul double %52, %69, !dbg !227
  %71 = fadd double %55, %70, !dbg !228
  %72 = fmul double %52, %71, !dbg !229
  %73 = fadd double %53, %72, !dbg !230
  %74 = load double, double* %49, align 8, !dbg !232, !tbaa !212
  %75 = getelementptr inbounds double, double* %49, i64 1, !dbg !233
  %76 = load double, double* %75, align 8, !dbg !233, !tbaa !212
  %77 = getelementptr inbounds double, double* %49, i64 2, !dbg !234
  %78 = load double, double* %77, align 8, !dbg !234, !tbaa !212
  %79 = getelementptr inbounds double, double* %49, i64 3, !dbg !235
  %80 = load double, double* %79, align 8, !dbg !235, !tbaa !212
  %81 = getelementptr inbounds double, double* %49, i64 4, !dbg !236
  %82 = load double, double* %81, align 8, !dbg !236, !tbaa !212
  %83 = fmul double %52, %82, !dbg !237
  %84 = fadd double %80, %83, !dbg !238
  %85 = fmul double %52, %84, !dbg !239
  %86 = fadd double %78, %85, !dbg !240
  %87 = fmul double %52, %86, !dbg !241
  %88 = fadd double %76, %87, !dbg !242
  %89 = fmul double %52, %88, !dbg !243
  %90 = fadd double %74, %89, !dbg !244
  %91 = fmul double %52, %90, !dbg !245
  %92 = fadd double %91, 1.000000e+00, !dbg !246
  %93 = fdiv double %73, %92, !dbg !248
  %94 = fadd double %93, 1.000000e+00, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  %95 = tail call fastcc double @qzero(double %11) #4, !dbg !252
  %96 = fmul double %31, %94, !dbg !254
  %97 = fmul double %32, %95, !dbg !255
  %98 = fsub double %96, %97, !dbg !256
  br label %99

; <label>:99:                                     ; preds = %30, %19, %48
  %100 = phi double [ %98, %48 ], [ %17, %19 ], [ %31, %30 ]
  %101 = fmul double %100, 0x3FE20DD750429B6D, !dbg !257
  %102 = tail call double @__ieee754_sqrt(double %11) #3, !dbg !257
  %103 = fdiv double %101, %102, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %146, !dbg !258

; <label>:104:                                    ; preds = %10
  %105 = icmp ult i32 %5, 1059061760, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %105, label %106, label %115, !dbg !261

; <label>:106:                                    ; preds = %104
  %107 = fadd double %11, 1.000000e+300, !dbg !262
  %108 = fcmp ogt double %107, 1.000000e+00, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %108, label %109, label %115, !dbg !266

; <label>:109:                                    ; preds = %106
  %110 = icmp ult i32 %5, 1044381696, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %110, label %146, label %111, !dbg !270

; <label>:111:                                    ; preds = %109
  %112 = fmul double %11, 2.500000e-01, !dbg !271
  %113 = fmul double %11, %112, !dbg !272
  %114 = fsub double 1.000000e+00, %113, !dbg !273
  br label %146, !dbg !274

; <label>:115:                                    ; preds = %106, %104
  %116 = fmul double %11, %11, !dbg !275
  %117 = fmul double %116, 0x3E33D5E773D63FCE, !dbg !276
  %118 = fsub double 0x3EBEB1D10C503919, %117, !dbg !276
  %119 = fmul double %116, %118, !dbg !277
  %120 = fadd double %119, 0xBF28E6A5B61AC6E9, !dbg !278
  %121 = fmul double %116, %120, !dbg !279
  %122 = fadd double %121, 0x3F8FFFFFFFFFFFFD, !dbg !280
  %123 = fmul double %116, %122, !dbg !281
  %124 = fmul double %116, 0x3E1408BCF4745D8F, !dbg !283
  %125 = fadd double %124, 0x3EA13B54CE84D5A9, !dbg !284
  %126 = fmul double %116, %125, !dbg !285
  %127 = fadd double %126, 0x3F1EA6D2DD57DBF4, !dbg !286
  %128 = fmul double %116, %127, !dbg !287
  %129 = fadd double %128, 0x3F8FFCE882C8C2A4, !dbg !288
  %130 = fmul double %116, %129, !dbg !289
  %131 = fadd double %130, 1.000000e+00, !dbg !290
  %132 = icmp ult i32 %5, 1072693248, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %132, label %133, label %138, !dbg !293

; <label>:133:                                    ; preds = %115
  %134 = fdiv double %123, %131, !dbg !294
  %135 = fadd double %134, -2.500000e-01, !dbg !296
  %136 = fmul double %116, %135, !dbg !297
  %137 = fadd double %136, 1.000000e+00, !dbg !298
  br label %146, !dbg !299

; <label>:138:                                    ; preds = %115
  %139 = fmul double %11, 5.000000e-01, !dbg !300
  %140 = fadd double %139, 1.000000e+00, !dbg !302
  %141 = fsub double 1.000000e+00, %139, !dbg !303
  %142 = fmul double %140, %141, !dbg !304
  %143 = fdiv double %123, %131, !dbg !305
  %144 = fmul double %116, %143, !dbg !306
  %145 = fadd double %142, %144, !dbg !307
  br label %146, !dbg !308

; <label>:146:                                    ; preds = %109, %138, %133, %111, %99, %7
  %147 = phi double [ %9, %7 ], [ %103, %99 ], [ %114, %111 ], [ %137, %133 ], [ %145, %138 ], [ 1.000000e+00, %109 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  ret double %147, !dbg !311
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @sin(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @cos(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc double @qzero(double) unnamed_addr #0 !dbg !312 {
  %2 = bitcast double %0 to i64, !dbg !324
  %3 = lshr i64 %2, 32, !dbg !324
  %4 = trunc i64 %3 to i32, !dbg !324
  %5 = and i32 %4, 2147483647, !dbg !326
  %6 = icmp ugt i32 %5, 1075838975, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %6, label %7, label %8, !dbg !329

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %15, !dbg !330

; <label>:8:                                      ; preds = %1
  %9 = icmp ugt i32 %5, 1074933386, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %9, label %10, label %11, !dbg !334

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br label %15, !dbg !335

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i32 %5, 1074191212, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %13 = select i1 %12, double* getelementptr inbounds ([6 x double], [6 x double]* @qS3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qS2, i64 0, i64 0), !dbg !340
  %14 = select i1 %12, double* getelementptr inbounds ([6 x double], [6 x double]* @qR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qR2, i64 0, i64 0), !dbg !340
  br label %15, !dbg !340

; <label>:15:                                     ; preds = %11, %10, %7
  %16 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qS8, i64 0, i64 0), %7 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qS5, i64 0, i64 0), %10 ], [ %13, %11 ], !dbg !342
  %17 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qR8, i64 0, i64 0), %7 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qR5, i64 0, i64 0), %10 ], [ %14, %11 ], !dbg !342
  %18 = fmul double %0, %0, !dbg !346
  %19 = fdiv double 1.000000e+00, %18, !dbg !347
  %20 = load double, double* %17, align 8, !dbg !349, !tbaa !212
  %21 = getelementptr inbounds double, double* %17, i64 1, !dbg !350
  %22 = load double, double* %21, align 8, !dbg !350, !tbaa !212
  %23 = getelementptr inbounds double, double* %17, i64 2, !dbg !351
  %24 = load double, double* %23, align 8, !dbg !351, !tbaa !212
  %25 = getelementptr inbounds double, double* %17, i64 3, !dbg !352
  %26 = load double, double* %25, align 8, !dbg !352, !tbaa !212
  %27 = getelementptr inbounds double, double* %17, i64 4, !dbg !353
  %28 = load double, double* %27, align 8, !dbg !353, !tbaa !212
  %29 = getelementptr inbounds double, double* %17, i64 5, !dbg !354
  %30 = load double, double* %29, align 8, !dbg !354, !tbaa !212
  %31 = fmul double %19, %30, !dbg !355
  %32 = fadd double %28, %31, !dbg !356
  %33 = fmul double %19, %32, !dbg !357
  %34 = fadd double %26, %33, !dbg !358
  %35 = fmul double %19, %34, !dbg !359
  %36 = fadd double %24, %35, !dbg !360
  %37 = fmul double %19, %36, !dbg !361
  %38 = fadd double %22, %37, !dbg !362
  %39 = fmul double %19, %38, !dbg !363
  %40 = fadd double %20, %39, !dbg !364
  %41 = load double, double* %16, align 8, !dbg !366, !tbaa !212
  %42 = getelementptr inbounds double, double* %16, i64 1, !dbg !367
  %43 = load double, double* %42, align 8, !dbg !367, !tbaa !212
  %44 = getelementptr inbounds double, double* %16, i64 2, !dbg !368
  %45 = load double, double* %44, align 8, !dbg !368, !tbaa !212
  %46 = getelementptr inbounds double, double* %16, i64 3, !dbg !369
  %47 = load double, double* %46, align 8, !dbg !369, !tbaa !212
  %48 = getelementptr inbounds double, double* %16, i64 4, !dbg !370
  %49 = load double, double* %48, align 8, !dbg !370, !tbaa !212
  %50 = getelementptr inbounds double, double* %16, i64 5, !dbg !371
  %51 = load double, double* %50, align 8, !dbg !371, !tbaa !212
  %52 = fmul double %19, %51, !dbg !372
  %53 = fadd double %49, %52, !dbg !373
  %54 = fmul double %19, %53, !dbg !374
  %55 = fadd double %47, %54, !dbg !375
  %56 = fmul double %19, %55, !dbg !376
  %57 = fadd double %45, %56, !dbg !377
  %58 = fmul double %19, %57, !dbg !378
  %59 = fadd double %43, %58, !dbg !379
  %60 = fmul double %19, %59, !dbg !380
  %61 = fadd double %41, %60, !dbg !381
  %62 = fmul double %19, %61, !dbg !382
  %63 = fadd double %62, 1.000000e+00, !dbg !383
  %64 = fdiv double %40, %63, !dbg !385
  %65 = fadd double %64, -1.250000e-01, !dbg !386
  %66 = fdiv double %65, %0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  ret double %66, !dbg !388
}

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_y0(double) local_unnamed_addr #0 !dbg !389 {
  %2 = bitcast double %0 to i64, !dbg !405
  %3 = lshr i64 %2, 32, !dbg !405
  %4 = trunc i64 %3 to i32, !dbg !405
  %5 = and i32 %4, 2147483647, !dbg !407
  %6 = icmp ugt i32 %5, 2146435071, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %6, label %7, label %11, !dbg !411

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !412
  %9 = fadd double %8, %0, !dbg !413
  %10 = fdiv double 1.000000e+00, %9, !dbg !414
  br label %140, !dbg !415

; <label>:11:                                     ; preds = %1
  %12 = trunc i64 %2 to i32, !dbg !405
  %13 = or i32 %5, %12, !dbg !417
  %14 = icmp eq i32 %13, 0, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %14, label %140, label %15, !dbg !420

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i32 %4, 0, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %16, label %140, label %17, !dbg !423

; <label>:17:                                     ; preds = %15
  %18 = icmp ugt i32 %5, 1073741823, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %18, label %19, label %106, !dbg !426

; <label>:19:                                     ; preds = %17
  %20 = tail call double @sin(double %0) #3, !dbg !427
  %21 = tail call double @cos(double %0) #3, !dbg !430
  %22 = fsub double %20, %21, !dbg !432
  %23 = fadd double %20, %21, !dbg !434
  %24 = icmp ult i32 %5, 2145386496, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %24, label %26, label %25, !dbg !438

; <label>:25:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br label %101, !dbg !439

; <label>:26:                                     ; preds = %19
  %27 = fadd double %0, %0, !dbg !440
  %28 = tail call double @cos(double %27) #3, !dbg !442
  %29 = fsub double -0.000000e+00, %28, !dbg !443
  %30 = fmul double %20, %21, !dbg !445
  %31 = fcmp olt double %30, 0.000000e+00, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %31, label %32, label %34, !dbg !448

; <label>:32:                                     ; preds = %26
  %33 = fdiv double %29, %22, !dbg !449
  br label %36, !dbg !450

; <label>:34:                                     ; preds = %26
  %35 = fdiv double %29, %23, !dbg !451
  br label %36

; <label>:36:                                     ; preds = %32, %34
  %37 = phi double [ %33, %32 ], [ %23, %34 ], !dbg !452
  %38 = phi double [ %22, %32 ], [ %35, %34 ], !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = icmp ugt i32 %5, 1207959552, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %39, label %101, label %40, !dbg !439

; <label>:40:                                     ; preds = %36
  %41 = icmp ugt i32 %5, 1075838975, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  br i1 %41, label %42, label %43, !dbg !460

; <label>:42:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  br label %50, !dbg !461

; <label>:43:                                     ; preds = %40
  %44 = icmp ugt i32 %5, 1074933386, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %44, label %45, label %46, !dbg !463

; <label>:45:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br label %50, !dbg !464

; <label>:46:                                     ; preds = %43
  %47 = icmp ugt i32 %5, 1074191212, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = select i1 %47, double* getelementptr inbounds ([5 x double], [5 x double]* @pS3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @pS2, i64 0, i64 0), !dbg !467
  %49 = select i1 %47, double* getelementptr inbounds ([6 x double], [6 x double]* @pR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pR2, i64 0, i64 0), !dbg !467
  br label %50, !dbg !467

; <label>:50:                                     ; preds = %42, %45, %46
  %51 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @pS8, i64 0, i64 0), %42 ], [ getelementptr inbounds ([5 x double], [5 x double]* @pS5, i64 0, i64 0), %45 ], [ %48, %46 ], !dbg !468
  %52 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pR8, i64 0, i64 0), %42 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pR5, i64 0, i64 0), %45 ], [ %49, %46 ], !dbg !468
  %53 = fmul double %0, %0, !dbg !471
  %54 = fdiv double 1.000000e+00, %53, !dbg !472
  %55 = load double, double* %52, align 8, !dbg !474, !tbaa !212
  %56 = getelementptr inbounds double, double* %52, i64 1, !dbg !475
  %57 = load double, double* %56, align 8, !dbg !475, !tbaa !212
  %58 = getelementptr inbounds double, double* %52, i64 2, !dbg !476
  %59 = load double, double* %58, align 8, !dbg !476, !tbaa !212
  %60 = getelementptr inbounds double, double* %52, i64 3, !dbg !477
  %61 = load double, double* %60, align 8, !dbg !477, !tbaa !212
  %62 = getelementptr inbounds double, double* %52, i64 4, !dbg !478
  %63 = load double, double* %62, align 8, !dbg !478, !tbaa !212
  %64 = getelementptr inbounds double, double* %52, i64 5, !dbg !479
  %65 = load double, double* %64, align 8, !dbg !479, !tbaa !212
  %66 = fmul double %54, %65, !dbg !480
  %67 = fadd double %63, %66, !dbg !481
  %68 = fmul double %54, %67, !dbg !482
  %69 = fadd double %61, %68, !dbg !483
  %70 = fmul double %54, %69, !dbg !484
  %71 = fadd double %59, %70, !dbg !485
  %72 = fmul double %54, %71, !dbg !486
  %73 = fadd double %57, %72, !dbg !487
  %74 = fmul double %54, %73, !dbg !488
  %75 = fadd double %55, %74, !dbg !489
  %76 = load double, double* %51, align 8, !dbg !491, !tbaa !212
  %77 = getelementptr inbounds double, double* %51, i64 1, !dbg !492
  %78 = load double, double* %77, align 8, !dbg !492, !tbaa !212
  %79 = getelementptr inbounds double, double* %51, i64 2, !dbg !493
  %80 = load double, double* %79, align 8, !dbg !493, !tbaa !212
  %81 = getelementptr inbounds double, double* %51, i64 3, !dbg !494
  %82 = load double, double* %81, align 8, !dbg !494, !tbaa !212
  %83 = getelementptr inbounds double, double* %51, i64 4, !dbg !495
  %84 = load double, double* %83, align 8, !dbg !495, !tbaa !212
  %85 = fmul double %54, %84, !dbg !496
  %86 = fadd double %82, %85, !dbg !497
  %87 = fmul double %54, %86, !dbg !498
  %88 = fadd double %80, %87, !dbg !499
  %89 = fmul double %54, %88, !dbg !500
  %90 = fadd double %78, %89, !dbg !501
  %91 = fmul double %54, %90, !dbg !502
  %92 = fadd double %76, %91, !dbg !503
  %93 = fmul double %54, %92, !dbg !504
  %94 = fadd double %93, 1.000000e+00, !dbg !505
  %95 = fdiv double %75, %94, !dbg !507
  %96 = fadd double %95, 1.000000e+00, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  %97 = tail call fastcc double @qzero(double %0) #4, !dbg !511
  %98 = fmul double %38, %96, !dbg !513
  %99 = fmul double %37, %97, !dbg !514
  %100 = fadd double %99, %98, !dbg !515
  br label %101

; <label>:101:                                    ; preds = %36, %25, %50
  %102 = phi double [ %100, %50 ], [ %22, %25 ], [ %38, %36 ]
  %103 = fmul double %102, 0x3FE20DD750429B6D, !dbg !516
  %104 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !516
  %105 = fdiv double %103, %104, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %140, !dbg !517

; <label>:106:                                    ; preds = %17
  %107 = icmp ult i32 %5, 1044381697, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %107, label %108, label %112, !dbg !520

; <label>:108:                                    ; preds = %106
  %109 = tail call double @__ieee754_log(double %0) #3, !dbg !521
  %110 = fmul double %109, 0x3FE45F306DC9C883, !dbg !523
  %111 = fadd double %110, 0xBFB2E4D699CBD01F, !dbg !524
  br label %140, !dbg !525

; <label>:112:                                    ; preds = %106
  %113 = fmul double %0, %0, !dbg !526
  %114 = fmul double %113, 0x3DC5E43D693FB3C8, !dbg !527
  %115 = fsub double 0x3E5500573B4EABD4, %114, !dbg !527
  %116 = fmul double %113, %115, !dbg !528
  %117 = fadd double %116, 0xBECFFEA773D25CAD, !dbg !529
  %118 = fmul double %113, %117, !dbg !530
  %119 = fadd double %118, 0x3F36C54D20B29B6B, !dbg !531
  %120 = fmul double %113, %119, !dbg !532
  %121 = fadd double %120, 0xBF8C4CE8B16CFA97, !dbg !533
  %122 = fmul double %113, %121, !dbg !534
  %123 = fadd double %122, 0x3FC69D019DE9E3FC, !dbg !535
  %124 = fmul double %113, %123, !dbg !536
  %125 = fadd double %124, 0xBFB2E4D699CBD01F, !dbg !537
  %126 = fmul double %113, 0x3DFE50183BD6D9EF, !dbg !538
  %127 = fadd double %126, 0x3E91642D7FF202FD, !dbg !539
  %128 = fmul double %113, %127, !dbg !540
  %129 = fadd double %128, 0x3F13ECBBF578C6C1, !dbg !541
  %130 = fmul double %113, %129, !dbg !542
  %131 = fadd double %130, 0x3F8A127091C9C71A, !dbg !543
  %132 = fmul double %113, %131, !dbg !544
  %133 = fadd double %132, 1.000000e+00, !dbg !545
  %134 = fdiv double %125, %133, !dbg !546
  %135 = tail call double @__ieee754_j0(double %0) #4, !dbg !547
  %136 = tail call double @__ieee754_log(double %0) #3, !dbg !548
  %137 = fmul double %135, %136, !dbg !549
  %138 = fmul double %137, 0x3FE45F306DC9C883, !dbg !550
  %139 = fadd double %134, %138, !dbg !551
  br label %140, !dbg !552

; <label>:140:                                    ; preds = %15, %11, %112, %108, %101, %7
  %141 = phi double [ %10, %7 ], [ %105, %101 ], [ %111, %108 ], [ %139, %112 ], [ 0xFFF0000000000000, %11 ], [ 0x7FF8000000000000, %15 ], !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  ret double %141, !dbg !555
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!92, !93, !94}
!llvm.ident = !{!95}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pR8", scope: !2, file: !3, line: 230, type: !63, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j0.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !0, !56, !61, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 75, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 89, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 74, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4580160821035794429, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "R02", scope: !2, file: !3, line: 79, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13774513059711862505, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "R03", scope: !2, file: !3, line: 80, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4521246587339421977, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "R04", scope: !2, file: !3, line: 81, type: !8, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13705533281076133838, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "R05", scope: !2, file: !3, line: 82, type: !8, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4580157421615891108, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "S01", scope: !2, file: !3, line: 83, type: !8, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4548256098277645300, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "S02", scope: !2, file: !3, line: 84, type: !8, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4512953537030051241, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "S03", scope: !2, file: !3, line: 85, type: !8, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4473209937533885839, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "S04", scope: !2, file: !3, line: 86, type: !8, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 13813354617453137951, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "u00", scope: !2, file: !3, line: 151, type: !8, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "tpi", scope: !2, file: !3, line: 77, type: !8, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression(DW_OP_constu, 4595533100048049148, DW_OP_stack_value))
!37 = distinct !DIGlobalVariable(name: "u01", scope: !2, file: !3, line: 152, type: !8, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression(DW_OP_constu, 13802491520276560535, DW_OP_stack_value))
!39 = distinct !DIGlobalVariable(name: "u02", scope: !2, file: !3, line: 153, type: !8, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression(DW_OP_constu, 4555045008183565163, DW_OP_stack_value))
!41 = distinct !DIGlobalVariable(name: "u03", scope: !2, file: !3, line: 154, type: !8, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression(DW_OP_constu, 13749488182541573293, DW_OP_stack_value))
!43 = distinct !DIGlobalVariable(name: "u04", scope: !2, file: !3, line: 155, type: !8, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression(DW_OP_constu, 4491496578029104084, DW_OP_stack_value))
!45 = distinct !DIGlobalVariable(name: "u05", scope: !2, file: !3, line: 156, type: !8, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression(DW_OP_constu, 13674586795990299592, DW_OP_stack_value))
!47 = distinct !DIGlobalVariable(name: "u06", scope: !2, file: !3, line: 157, type: !8, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression(DW_OP_constu, 4578492245867087642, DW_OP_stack_value))
!49 = distinct !DIGlobalVariable(name: "v01", scope: !2, file: !3, line: 158, type: !8, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression(DW_OP_constu, 4545236740968335041, DW_OP_stack_value))
!51 = distinct !DIGlobalVariable(name: "v02", scope: !2, file: !3, line: 159, type: !8, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression(DW_OP_constu, 4508494848557449981, DW_OP_stack_value))
!53 = distinct !DIGlobalVariable(name: "v03", scope: !2, file: !3, line: 160, type: !8, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_constu, 4467095945411484143, DW_OP_stack_value))
!55 = distinct !DIGlobalVariable(name: "v04", scope: !2, file: !3, line: 161, type: !8, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pS8", scope: !2, file: !3, line: 242, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 5)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "pR5", scope: !2, file: !3, line: 254, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 6)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "pS5", scope: !2, file: !3, line: 266, type: !58, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "pR3", scope: !2, file: !3, line: 278, type: !63, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "pS3", scope: !2, file: !3, line: 290, type: !58, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "pR2", scope: !2, file: !3, line: 302, type: !63, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "pS2", scope: !2, file: !3, line: 314, type: !58, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "qR8", scope: !2, file: !3, line: 362, type: !63, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "qS8", scope: !2, file: !3, line: 374, type: !63, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "qR5", scope: !2, file: !3, line: 387, type: !63, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "qS5", scope: !2, file: !3, line: 399, type: !63, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "qR3", scope: !2, file: !3, line: 412, type: !63, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(name: "qS3", scope: !2, file: !3, line: 424, type: !63, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "qR2", scope: !2, file: !3, line: 437, type: !63, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "qS2", scope: !2, file: !3, line: 449, type: !63, isLocal: true, isDefinition: true)
!92 = !{i32 2, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!96 = distinct !DISubprogram(name: "__ieee754_j0", scope: !3, file: !3, line: 95, type: !97, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{!9, !9}
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !113, !114}
!100 = !DILocalVariable(name: "x", arg: 1, scope: !96, file: !3, line: 95, type: !9)
!101 = !DILocalVariable(name: "z", scope: !96, file: !3, line: 101, type: !9)
!102 = !DILocalVariable(name: "s", scope: !96, file: !3, line: 101, type: !9)
!103 = !DILocalVariable(name: "c", scope: !96, file: !3, line: 101, type: !9)
!104 = !DILocalVariable(name: "ss", scope: !96, file: !3, line: 101, type: !9)
!105 = !DILocalVariable(name: "cc", scope: !96, file: !3, line: 101, type: !9)
!106 = !DILocalVariable(name: "r", scope: !96, file: !3, line: 101, type: !9)
!107 = !DILocalVariable(name: "u", scope: !96, file: !3, line: 101, type: !9)
!108 = !DILocalVariable(name: "v", scope: !96, file: !3, line: 101, type: !9)
!109 = !DILocalVariable(name: "hx", scope: !96, file: !3, line: 102, type: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 77, baseType: !112)
!111 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !DILocalVariable(name: "ix", scope: !96, file: !3, line: 102, type: !110)
!114 = !DILocalVariable(name: "gh_u", scope: !115, file: !3, line: 104, type: !116)
!115 = distinct !DILexicalBlock(scope: !96, file: !3, line: 104, column: 2)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !117, line: 278, baseType: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !117, line: 270, size: 64, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !118, file: !117, line: 272, baseType: !9, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !118, file: !117, line: 277, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !118, file: !117, line: 273, size: 64, elements: !123)
!123 = !{!124, !127}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !122, file: !117, line: 275, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 79, baseType: !126)
!126 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !122, file: !117, line: 276, baseType: !125, size: 32, offset: 32)
!128 = !DILocation(line: 95, column: 29, scope: !96)
!129 = !DILocation(line: 104, column: 2, scope: !115)
!130 = !DILocation(line: 102, column: 12, scope: !96)
!131 = !DILocation(line: 105, column: 9, scope: !96)
!132 = !DILocation(line: 102, column: 15, scope: !96)
!133 = !DILocation(line: 106, column: 7, scope: !134)
!134 = distinct !DILexicalBlock(scope: !96, file: !3, line: 106, column: 5)
!135 = !DILocation(line: 106, column: 5, scope: !96)
!136 = !DILocation(line: 106, column: 34, scope: !134)
!137 = !DILocation(line: 106, column: 31, scope: !134)
!138 = !DILocation(line: 106, column: 21, scope: !134)
!139 = !DILocation(line: 107, column: 6, scope: !96)
!140 = !DILocation(line: 108, column: 8, scope: !141)
!141 = distinct !DILexicalBlock(scope: !96, file: !3, line: 108, column: 5)
!142 = !DILocation(line: 108, column: 5, scope: !96)
!143 = !DILocation(line: 109, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !3, line: 108, column: 23)
!145 = !DILocation(line: 101, column: 12, scope: !96)
!146 = !DILocation(line: 110, column: 7, scope: !144)
!147 = !DILocation(line: 101, column: 14, scope: !96)
!148 = !DILocation(line: 111, column: 9, scope: !144)
!149 = !DILocation(line: 101, column: 16, scope: !96)
!150 = !DILocation(line: 112, column: 9, scope: !144)
!151 = !DILocation(line: 101, column: 19, scope: !96)
!152 = !DILocation(line: 113, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !3, line: 113, column: 6)
!154 = !DILocation(line: 113, column: 6, scope: !144)
!155 = !DILocation(line: 122, column: 6, scope: !144)
!156 = !DILocation(line: 114, column: 17, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !3, line: 113, column: 21)
!158 = !DILocation(line: 114, column: 12, scope: !157)
!159 = !DILocation(line: 114, column: 11, scope: !157)
!160 = !DILocation(line: 101, column: 9, scope: !96)
!161 = !DILocation(line: 115, column: 13, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !3, line: 115, column: 11)
!163 = !DILocation(line: 115, column: 16, scope: !162)
!164 = !DILocation(line: 115, column: 11, scope: !157)
!165 = !DILocation(line: 115, column: 29, scope: !162)
!166 = !DILocation(line: 115, column: 23, scope: !162)
!167 = !DILocation(line: 116, column: 23, scope: !162)
!168 = !DILocation(line: 0, scope: !144)
!169 = !DILocation(line: 122, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !144, file: !3, line: 122, column: 6)
!171 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !3, line: 326, type: !9)
!172 = distinct !DISubprogram(name: "pzero", scope: !3, file: !3, line: 326, type: !97, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !173)
!173 = !{!171, !174, !176, !177, !178, !179, !180, !181}
!174 = !DILocalVariable(name: "p", scope: !172, file: !3, line: 333, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!176 = !DILocalVariable(name: "q", scope: !172, file: !3, line: 333, type: !175)
!177 = !DILocalVariable(name: "z", scope: !172, file: !3, line: 337, type: !9)
!178 = !DILocalVariable(name: "r", scope: !172, file: !3, line: 337, type: !9)
!179 = !DILocalVariable(name: "s", scope: !172, file: !3, line: 337, type: !9)
!180 = !DILocalVariable(name: "ix", scope: !172, file: !3, line: 338, type: !110)
!181 = !DILocalVariable(name: "gh_u", scope: !182, file: !3, line: 339, type: !116)
!182 = distinct !DILexicalBlock(scope: !172, file: !3, line: 339, column: 2)
!183 = !DILocation(line: 326, column: 29, scope: !172, inlinedAt: !184)
!184 = distinct !DILocation(line: 124, column: 11, scope: !185)
!185 = distinct !DILexicalBlock(scope: !170, file: !3, line: 123, column: 8)
!186 = !DILocation(line: 339, column: 2, scope: !182, inlinedAt: !184)
!187 = !DILocation(line: 338, column: 12, scope: !172, inlinedAt: !184)
!188 = !DILocation(line: 340, column: 5, scope: !172, inlinedAt: !184)
!189 = !DILocation(line: 341, column: 7, scope: !190, inlinedAt: !184)
!190 = distinct !DILexicalBlock(scope: !172, file: !3, line: 341, column: 5)
!191 = !DILocation(line: 341, column: 5, scope: !172, inlinedAt: !184)
!192 = !DILocation(line: 341, column: 42, scope: !193, inlinedAt: !184)
!193 = distinct !DILexicalBlock(scope: !190, file: !3, line: 341, column: 25)
!194 = !DILocation(line: 342, column: 12, scope: !195, inlinedAt: !184)
!195 = distinct !DILexicalBlock(scope: !190, file: !3, line: 342, column: 10)
!196 = !DILocation(line: 342, column: 10, scope: !190, inlinedAt: !184)
!197 = !DILocation(line: 342, column: 42, scope: !198, inlinedAt: !184)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 342, column: 25)
!199 = !DILocation(line: 343, column: 12, scope: !200, inlinedAt: !184)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 343, column: 10)
!201 = !DILocation(line: 343, column: 10, scope: !195, inlinedAt: !184)
!202 = !DILocation(line: 343, column: 42, scope: !203, inlinedAt: !184)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 343, column: 25)
!204 = !DILocation(line: 0, scope: !205, inlinedAt: !184)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 344, column: 12)
!206 = !DILocation(line: 333, column: 16, scope: !172, inlinedAt: !184)
!207 = !DILocation(line: 333, column: 19, scope: !172, inlinedAt: !184)
!208 = !DILocation(line: 345, column: 12, scope: !172, inlinedAt: !184)
!209 = !DILocation(line: 345, column: 9, scope: !172, inlinedAt: !184)
!210 = !DILocation(line: 337, column: 9, scope: !172, inlinedAt: !184)
!211 = !DILocation(line: 346, column: 6, scope: !172, inlinedAt: !184)
!212 = !{!213, !213, i64 0}
!213 = !{!"double", !214, i64 0}
!214 = !{!"omnipotent char", !215, i64 0}
!215 = !{!"Simple C/C++ TBAA"}
!216 = !DILocation(line: 346, column: 14, scope: !172, inlinedAt: !184)
!217 = !DILocation(line: 346, column: 22, scope: !172, inlinedAt: !184)
!218 = !DILocation(line: 346, column: 30, scope: !172, inlinedAt: !184)
!219 = !DILocation(line: 346, column: 38, scope: !172, inlinedAt: !184)
!220 = !DILocation(line: 346, column: 45, scope: !172, inlinedAt: !184)
!221 = !DILocation(line: 346, column: 44, scope: !172, inlinedAt: !184)
!222 = !DILocation(line: 346, column: 42, scope: !172, inlinedAt: !184)
!223 = !DILocation(line: 346, column: 36, scope: !172, inlinedAt: !184)
!224 = !DILocation(line: 346, column: 34, scope: !172, inlinedAt: !184)
!225 = !DILocation(line: 346, column: 28, scope: !172, inlinedAt: !184)
!226 = !DILocation(line: 346, column: 26, scope: !172, inlinedAt: !184)
!227 = !DILocation(line: 346, column: 20, scope: !172, inlinedAt: !184)
!228 = !DILocation(line: 346, column: 18, scope: !172, inlinedAt: !184)
!229 = !DILocation(line: 346, column: 12, scope: !172, inlinedAt: !184)
!230 = !DILocation(line: 346, column: 10, scope: !172, inlinedAt: !184)
!231 = !DILocation(line: 337, column: 11, scope: !172, inlinedAt: !184)
!232 = !DILocation(line: 347, column: 13, scope: !172, inlinedAt: !184)
!233 = !DILocation(line: 347, column: 21, scope: !172, inlinedAt: !184)
!234 = !DILocation(line: 347, column: 29, scope: !172, inlinedAt: !184)
!235 = !DILocation(line: 347, column: 37, scope: !172, inlinedAt: !184)
!236 = !DILocation(line: 347, column: 44, scope: !172, inlinedAt: !184)
!237 = !DILocation(line: 347, column: 43, scope: !172, inlinedAt: !184)
!238 = !DILocation(line: 347, column: 41, scope: !172, inlinedAt: !184)
!239 = !DILocation(line: 347, column: 35, scope: !172, inlinedAt: !184)
!240 = !DILocation(line: 347, column: 33, scope: !172, inlinedAt: !184)
!241 = !DILocation(line: 347, column: 27, scope: !172, inlinedAt: !184)
!242 = !DILocation(line: 347, column: 25, scope: !172, inlinedAt: !184)
!243 = !DILocation(line: 347, column: 19, scope: !172, inlinedAt: !184)
!244 = !DILocation(line: 347, column: 17, scope: !172, inlinedAt: !184)
!245 = !DILocation(line: 347, column: 11, scope: !172, inlinedAt: !184)
!246 = !DILocation(line: 347, column: 9, scope: !172, inlinedAt: !184)
!247 = !DILocation(line: 337, column: 13, scope: !172, inlinedAt: !184)
!248 = !DILocation(line: 348, column: 15, scope: !172, inlinedAt: !184)
!249 = !DILocation(line: 348, column: 12, scope: !172, inlinedAt: !184)
!250 = !DILocation(line: 348, column: 2, scope: !172, inlinedAt: !184)
!251 = !DILocation(line: 101, column: 24, scope: !96)
!252 = !DILocation(line: 124, column: 25, scope: !185)
!253 = !DILocation(line: 101, column: 26, scope: !96)
!254 = !DILocation(line: 125, column: 23, scope: !185)
!255 = !DILocation(line: 125, column: 28, scope: !185)
!256 = !DILocation(line: 125, column: 26, scope: !185)
!257 = !DILocation(line: 0, scope: !170)
!258 = !DILocation(line: 127, column: 3, scope: !144)
!259 = !DILocation(line: 129, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !96, file: !3, line: 129, column: 5)
!261 = !DILocation(line: 129, column: 5, scope: !96)
!262 = !DILocation(line: 130, column: 13, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 130, column: 9)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 129, column: 20)
!265 = !DILocation(line: 130, column: 15, scope: !263)
!266 = !DILocation(line: 130, column: 9, scope: !264)
!267 = !DILocation(line: 131, column: 15, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 131, column: 13)
!269 = distinct !DILexicalBlock(scope: !263, file: !3, line: 130, column: 21)
!270 = !DILocation(line: 131, column: 13, scope: !269)
!271 = !DILocation(line: 132, column: 39, scope: !268)
!272 = !DILocation(line: 132, column: 41, scope: !268)
!273 = !DILocation(line: 132, column: 33, scope: !268)
!274 = !DILocation(line: 132, column: 22, scope: !268)
!275 = !DILocation(line: 135, column: 7, scope: !96)
!276 = !DILocation(line: 136, column: 29, scope: !96)
!277 = !DILocation(line: 136, column: 22, scope: !96)
!278 = !DILocation(line: 136, column: 20, scope: !96)
!279 = !DILocation(line: 136, column: 15, scope: !96)
!280 = !DILocation(line: 136, column: 13, scope: !96)
!281 = !DILocation(line: 136, column: 8, scope: !96)
!282 = !DILocation(line: 101, column: 22, scope: !96)
!283 = !DILocation(line: 137, column: 33, scope: !96)
!284 = !DILocation(line: 137, column: 31, scope: !96)
!285 = !DILocation(line: 137, column: 26, scope: !96)
!286 = !DILocation(line: 137, column: 24, scope: !96)
!287 = !DILocation(line: 137, column: 19, scope: !96)
!288 = !DILocation(line: 137, column: 17, scope: !96)
!289 = !DILocation(line: 137, column: 12, scope: !96)
!290 = !DILocation(line: 137, column: 10, scope: !96)
!291 = !DILocation(line: 138, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !96, file: !3, line: 138, column: 5)
!293 = !DILocation(line: 138, column: 5, scope: !96)
!294 = !DILocation(line: 139, column: 30, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 138, column: 22)
!296 = !DILocation(line: 139, column: 27, scope: !295)
!297 = !DILocation(line: 139, column: 20, scope: !295)
!298 = !DILocation(line: 139, column: 17, scope: !295)
!299 = !DILocation(line: 139, column: 6, scope: !295)
!300 = !DILocation(line: 141, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !292, file: !3, line: 140, column: 9)
!302 = !DILocation(line: 142, column: 17, scope: !301)
!303 = !DILocation(line: 142, column: 25, scope: !301)
!304 = !DILocation(line: 142, column: 20, scope: !301)
!305 = !DILocation(line: 142, column: 33, scope: !301)
!306 = !DILocation(line: 142, column: 30, scope: !301)
!307 = !DILocation(line: 142, column: 28, scope: !301)
!308 = !DILocation(line: 142, column: 6, scope: !301)
!309 = !DILocation(line: 0, scope: !301)
!310 = !DILocation(line: 0, scope: !134)
!311 = !DILocation(line: 144, column: 1, scope: !96)
!312 = distinct !DISubprogram(name: "qzero", scope: !3, file: !3, line: 462, type: !97, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321}
!314 = !DILocalVariable(name: "x", arg: 1, scope: !312, file: !3, line: 462, type: !9)
!315 = !DILocalVariable(name: "p", scope: !312, file: !3, line: 469, type: !175)
!316 = !DILocalVariable(name: "q", scope: !312, file: !3, line: 469, type: !175)
!317 = !DILocalVariable(name: "s", scope: !312, file: !3, line: 473, type: !9)
!318 = !DILocalVariable(name: "r", scope: !312, file: !3, line: 473, type: !9)
!319 = !DILocalVariable(name: "z", scope: !312, file: !3, line: 473, type: !9)
!320 = !DILocalVariable(name: "ix", scope: !312, file: !3, line: 474, type: !110)
!321 = !DILocalVariable(name: "gh_u", scope: !322, file: !3, line: 475, type: !116)
!322 = distinct !DILexicalBlock(scope: !312, file: !3, line: 475, column: 2)
!323 = !DILocation(line: 462, column: 29, scope: !312)
!324 = !DILocation(line: 475, column: 2, scope: !322)
!325 = !DILocation(line: 474, column: 12, scope: !312)
!326 = !DILocation(line: 476, column: 5, scope: !312)
!327 = !DILocation(line: 477, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !312, file: !3, line: 477, column: 5)
!329 = !DILocation(line: 477, column: 5, scope: !312)
!330 = !DILocation(line: 477, column: 42, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !3, line: 477, column: 25)
!332 = !DILocation(line: 478, column: 12, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 478, column: 10)
!334 = !DILocation(line: 478, column: 10, scope: !328)
!335 = !DILocation(line: 478, column: 42, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !3, line: 478, column: 25)
!337 = !DILocation(line: 479, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 479, column: 10)
!339 = !DILocation(line: 479, column: 10, scope: !333)
!340 = !DILocation(line: 479, column: 42, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 479, column: 25)
!342 = !DILocation(line: 0, scope: !343)
!343 = distinct !DILexicalBlock(scope: !338, file: !3, line: 480, column: 12)
!344 = !DILocation(line: 469, column: 16, scope: !312)
!345 = !DILocation(line: 469, column: 19, scope: !312)
!346 = !DILocation(line: 481, column: 12, scope: !312)
!347 = !DILocation(line: 481, column: 9, scope: !312)
!348 = !DILocation(line: 473, column: 13, scope: !312)
!349 = !DILocation(line: 482, column: 6, scope: !312)
!350 = !DILocation(line: 482, column: 14, scope: !312)
!351 = !DILocation(line: 482, column: 22, scope: !312)
!352 = !DILocation(line: 482, column: 30, scope: !312)
!353 = !DILocation(line: 482, column: 38, scope: !312)
!354 = !DILocation(line: 482, column: 45, scope: !312)
!355 = !DILocation(line: 482, column: 44, scope: !312)
!356 = !DILocation(line: 482, column: 42, scope: !312)
!357 = !DILocation(line: 482, column: 36, scope: !312)
!358 = !DILocation(line: 482, column: 34, scope: !312)
!359 = !DILocation(line: 482, column: 28, scope: !312)
!360 = !DILocation(line: 482, column: 26, scope: !312)
!361 = !DILocation(line: 482, column: 20, scope: !312)
!362 = !DILocation(line: 482, column: 18, scope: !312)
!363 = !DILocation(line: 482, column: 12, scope: !312)
!364 = !DILocation(line: 482, column: 10, scope: !312)
!365 = !DILocation(line: 473, column: 11, scope: !312)
!366 = !DILocation(line: 483, column: 13, scope: !312)
!367 = !DILocation(line: 483, column: 21, scope: !312)
!368 = !DILocation(line: 483, column: 29, scope: !312)
!369 = !DILocation(line: 483, column: 37, scope: !312)
!370 = !DILocation(line: 483, column: 45, scope: !312)
!371 = !DILocation(line: 483, column: 52, scope: !312)
!372 = !DILocation(line: 483, column: 51, scope: !312)
!373 = !DILocation(line: 483, column: 49, scope: !312)
!374 = !DILocation(line: 483, column: 43, scope: !312)
!375 = !DILocation(line: 483, column: 41, scope: !312)
!376 = !DILocation(line: 483, column: 35, scope: !312)
!377 = !DILocation(line: 483, column: 33, scope: !312)
!378 = !DILocation(line: 483, column: 27, scope: !312)
!379 = !DILocation(line: 483, column: 25, scope: !312)
!380 = !DILocation(line: 483, column: 19, scope: !312)
!381 = !DILocation(line: 483, column: 17, scope: !312)
!382 = !DILocation(line: 483, column: 11, scope: !312)
!383 = !DILocation(line: 483, column: 9, scope: !312)
!384 = !DILocation(line: 473, column: 9, scope: !312)
!385 = !DILocation(line: 484, column: 19, scope: !312)
!386 = !DILocation(line: 484, column: 16, scope: !312)
!387 = !DILocation(line: 484, column: 22, scope: !312)
!388 = !DILocation(line: 484, column: 2, scope: !312)
!389 = distinct !DISubprogram(name: "__ieee754_y0", scope: !3, file: !3, line: 164, type: !97, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !390)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!391 = !DILocalVariable(name: "x", arg: 1, scope: !389, file: !3, line: 164, type: !9)
!392 = !DILocalVariable(name: "z", scope: !389, file: !3, line: 170, type: !9)
!393 = !DILocalVariable(name: "s", scope: !389, file: !3, line: 170, type: !9)
!394 = !DILocalVariable(name: "c", scope: !389, file: !3, line: 170, type: !9)
!395 = !DILocalVariable(name: "ss", scope: !389, file: !3, line: 170, type: !9)
!396 = !DILocalVariable(name: "cc", scope: !389, file: !3, line: 170, type: !9)
!397 = !DILocalVariable(name: "u", scope: !389, file: !3, line: 170, type: !9)
!398 = !DILocalVariable(name: "v", scope: !389, file: !3, line: 170, type: !9)
!399 = !DILocalVariable(name: "hx", scope: !389, file: !3, line: 171, type: !110)
!400 = !DILocalVariable(name: "ix", scope: !389, file: !3, line: 171, type: !110)
!401 = !DILocalVariable(name: "lx", scope: !389, file: !3, line: 171, type: !110)
!402 = !DILocalVariable(name: "ew_u", scope: !403, file: !3, line: 173, type: !116)
!403 = distinct !DILexicalBlock(scope: !389, file: !3, line: 173, column: 2)
!404 = !DILocation(line: 164, column: 29, scope: !389)
!405 = !DILocation(line: 173, column: 2, scope: !403)
!406 = !DILocation(line: 171, column: 12, scope: !389)
!407 = !DILocation(line: 174, column: 24, scope: !389)
!408 = !DILocation(line: 171, column: 15, scope: !389)
!409 = !DILocation(line: 176, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !389, file: !3, line: 176, column: 5)
!411 = !DILocation(line: 176, column: 5, scope: !389)
!412 = !DILocation(line: 176, column: 37, scope: !410)
!413 = !DILocation(line: 176, column: 35, scope: !410)
!414 = !DILocation(line: 176, column: 32, scope: !410)
!415 = !DILocation(line: 176, column: 21, scope: !410)
!416 = !DILocation(line: 171, column: 18, scope: !389)
!417 = !DILocation(line: 177, column: 15, scope: !418)
!418 = distinct !DILexicalBlock(scope: !389, file: !3, line: 177, column: 12)
!419 = !DILocation(line: 177, column: 19, scope: !418)
!420 = !DILocation(line: 177, column: 12, scope: !389)
!421 = !DILocation(line: 178, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !389, file: !3, line: 178, column: 12)
!423 = !DILocation(line: 178, column: 12, scope: !389)
!424 = !DILocation(line: 179, column: 15, scope: !425)
!425 = distinct !DILexicalBlock(scope: !389, file: !3, line: 179, column: 12)
!426 = !DILocation(line: 179, column: 12, scope: !389)
!427 = !DILocation(line: 191, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 179, column: 30)
!429 = !DILocation(line: 170, column: 12, scope: !389)
!430 = !DILocation(line: 192, column: 21, scope: !428)
!431 = !DILocation(line: 170, column: 14, scope: !389)
!432 = !DILocation(line: 193, column: 23, scope: !428)
!433 = !DILocation(line: 170, column: 16, scope: !389)
!434 = !DILocation(line: 194, column: 23, scope: !428)
!435 = !DILocation(line: 170, column: 19, scope: !389)
!436 = !DILocation(line: 199, column: 22, scope: !437)
!437 = distinct !DILexicalBlock(scope: !428, file: !3, line: 199, column: 20)
!438 = !DILocation(line: 199, column: 20, scope: !428)
!439 = !DILocation(line: 204, column: 20, scope: !428)
!440 = !DILocation(line: 200, column: 31, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 199, column: 35)
!442 = !DILocation(line: 200, column: 26, scope: !441)
!443 = !DILocation(line: 200, column: 25, scope: !441)
!444 = !DILocation(line: 170, column: 9, scope: !389)
!445 = !DILocation(line: 201, column: 27, scope: !446)
!446 = distinct !DILexicalBlock(scope: !441, file: !3, line: 201, column: 25)
!447 = !DILocation(line: 201, column: 30, scope: !446)
!448 = !DILocation(line: 201, column: 25, scope: !441)
!449 = !DILocation(line: 201, column: 43, scope: !446)
!450 = !DILocation(line: 201, column: 37, scope: !446)
!451 = !DILocation(line: 202, column: 43, scope: !446)
!452 = !DILocation(line: 0, scope: !428)
!453 = !DILocation(line: 204, column: 22, scope: !454)
!454 = distinct !DILexicalBlock(scope: !428, file: !3, line: 204, column: 20)
!455 = !DILocation(line: 326, column: 29, scope: !172, inlinedAt: !456)
!456 = distinct !DILocation(line: 206, column: 25, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !3, line: 205, column: 22)
!458 = !DILocation(line: 338, column: 12, scope: !172, inlinedAt: !456)
!459 = !DILocation(line: 341, column: 7, scope: !190, inlinedAt: !456)
!460 = !DILocation(line: 341, column: 5, scope: !172, inlinedAt: !456)
!461 = !DILocation(line: 341, column: 42, scope: !193, inlinedAt: !456)
!462 = !DILocation(line: 342, column: 12, scope: !195, inlinedAt: !456)
!463 = !DILocation(line: 342, column: 10, scope: !190, inlinedAt: !456)
!464 = !DILocation(line: 342, column: 42, scope: !198, inlinedAt: !456)
!465 = !DILocation(line: 343, column: 12, scope: !200, inlinedAt: !456)
!466 = !DILocation(line: 343, column: 10, scope: !195, inlinedAt: !456)
!467 = !DILocation(line: 343, column: 42, scope: !203, inlinedAt: !456)
!468 = !DILocation(line: 0, scope: !205, inlinedAt: !456)
!469 = !DILocation(line: 333, column: 16, scope: !172, inlinedAt: !456)
!470 = !DILocation(line: 333, column: 19, scope: !172, inlinedAt: !456)
!471 = !DILocation(line: 345, column: 12, scope: !172, inlinedAt: !456)
!472 = !DILocation(line: 345, column: 9, scope: !172, inlinedAt: !456)
!473 = !DILocation(line: 337, column: 9, scope: !172, inlinedAt: !456)
!474 = !DILocation(line: 346, column: 6, scope: !172, inlinedAt: !456)
!475 = !DILocation(line: 346, column: 14, scope: !172, inlinedAt: !456)
!476 = !DILocation(line: 346, column: 22, scope: !172, inlinedAt: !456)
!477 = !DILocation(line: 346, column: 30, scope: !172, inlinedAt: !456)
!478 = !DILocation(line: 346, column: 38, scope: !172, inlinedAt: !456)
!479 = !DILocation(line: 346, column: 45, scope: !172, inlinedAt: !456)
!480 = !DILocation(line: 346, column: 44, scope: !172, inlinedAt: !456)
!481 = !DILocation(line: 346, column: 42, scope: !172, inlinedAt: !456)
!482 = !DILocation(line: 346, column: 36, scope: !172, inlinedAt: !456)
!483 = !DILocation(line: 346, column: 34, scope: !172, inlinedAt: !456)
!484 = !DILocation(line: 346, column: 28, scope: !172, inlinedAt: !456)
!485 = !DILocation(line: 346, column: 26, scope: !172, inlinedAt: !456)
!486 = !DILocation(line: 346, column: 20, scope: !172, inlinedAt: !456)
!487 = !DILocation(line: 346, column: 18, scope: !172, inlinedAt: !456)
!488 = !DILocation(line: 346, column: 12, scope: !172, inlinedAt: !456)
!489 = !DILocation(line: 346, column: 10, scope: !172, inlinedAt: !456)
!490 = !DILocation(line: 337, column: 11, scope: !172, inlinedAt: !456)
!491 = !DILocation(line: 347, column: 13, scope: !172, inlinedAt: !456)
!492 = !DILocation(line: 347, column: 21, scope: !172, inlinedAt: !456)
!493 = !DILocation(line: 347, column: 29, scope: !172, inlinedAt: !456)
!494 = !DILocation(line: 347, column: 37, scope: !172, inlinedAt: !456)
!495 = !DILocation(line: 347, column: 44, scope: !172, inlinedAt: !456)
!496 = !DILocation(line: 347, column: 43, scope: !172, inlinedAt: !456)
!497 = !DILocation(line: 347, column: 41, scope: !172, inlinedAt: !456)
!498 = !DILocation(line: 347, column: 35, scope: !172, inlinedAt: !456)
!499 = !DILocation(line: 347, column: 33, scope: !172, inlinedAt: !456)
!500 = !DILocation(line: 347, column: 27, scope: !172, inlinedAt: !456)
!501 = !DILocation(line: 347, column: 25, scope: !172, inlinedAt: !456)
!502 = !DILocation(line: 347, column: 19, scope: !172, inlinedAt: !456)
!503 = !DILocation(line: 347, column: 17, scope: !172, inlinedAt: !456)
!504 = !DILocation(line: 347, column: 11, scope: !172, inlinedAt: !456)
!505 = !DILocation(line: 347, column: 9, scope: !172, inlinedAt: !456)
!506 = !DILocation(line: 337, column: 13, scope: !172, inlinedAt: !456)
!507 = !DILocation(line: 348, column: 15, scope: !172, inlinedAt: !456)
!508 = !DILocation(line: 348, column: 12, scope: !172, inlinedAt: !456)
!509 = !DILocation(line: 348, column: 2, scope: !172, inlinedAt: !456)
!510 = !DILocation(line: 170, column: 22, scope: !389)
!511 = !DILocation(line: 206, column: 39, scope: !457)
!512 = !DILocation(line: 170, column: 24, scope: !389)
!513 = !DILocation(line: 207, column: 37, scope: !457)
!514 = !DILocation(line: 207, column: 42, scope: !457)
!515 = !DILocation(line: 207, column: 40, scope: !457)
!516 = !DILocation(line: 0, scope: !454)
!517 = !DILocation(line: 209, column: 17, scope: !428)
!518 = !DILocation(line: 211, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !389, file: !3, line: 211, column: 5)
!520 = !DILocation(line: 211, column: 5, scope: !389)
!521 = !DILocation(line: 212, column: 23, scope: !522)
!522 = distinct !DILexicalBlock(scope: !519, file: !3, line: 211, column: 21)
!523 = !DILocation(line: 212, column: 22, scope: !522)
!524 = !DILocation(line: 212, column: 17, scope: !522)
!525 = !DILocation(line: 212, column: 6, scope: !522)
!526 = !DILocation(line: 214, column: 7, scope: !389)
!527 = !DILocation(line: 215, column: 46, scope: !389)
!528 = !DILocation(line: 215, column: 39, scope: !389)
!529 = !DILocation(line: 215, column: 37, scope: !389)
!530 = !DILocation(line: 215, column: 32, scope: !389)
!531 = !DILocation(line: 215, column: 30, scope: !389)
!532 = !DILocation(line: 215, column: 25, scope: !389)
!533 = !DILocation(line: 215, column: 23, scope: !389)
!534 = !DILocation(line: 215, column: 18, scope: !389)
!535 = !DILocation(line: 215, column: 16, scope: !389)
!536 = !DILocation(line: 215, column: 11, scope: !389)
!537 = !DILocation(line: 215, column: 9, scope: !389)
!538 = !DILocation(line: 216, column: 32, scope: !389)
!539 = !DILocation(line: 216, column: 30, scope: !389)
!540 = !DILocation(line: 216, column: 25, scope: !389)
!541 = !DILocation(line: 216, column: 23, scope: !389)
!542 = !DILocation(line: 216, column: 18, scope: !389)
!543 = !DILocation(line: 216, column: 16, scope: !389)
!544 = !DILocation(line: 216, column: 11, scope: !389)
!545 = !DILocation(line: 216, column: 9, scope: !389)
!546 = !DILocation(line: 217, column: 10, scope: !389)
!547 = !DILocation(line: 217, column: 20, scope: !389)
!548 = !DILocation(line: 217, column: 36, scope: !389)
!549 = !DILocation(line: 217, column: 35, scope: !389)
!550 = !DILocation(line: 217, column: 18, scope: !389)
!551 = !DILocation(line: 217, column: 13, scope: !389)
!552 = !DILocation(line: 217, column: 2, scope: !389)
!553 = !DILocation(line: 0, scope: !389)
!554 = !DILocation(line: 0, scope: !410)
!555 = !DILocation(line: 218, column: 1, scope: !389)
