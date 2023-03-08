; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j1.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pr8 = internal unnamed_addr constant [6 x double] [double 0.000000e+00, double 0x3FBDFFFFFFFFFCCE, double 0x402A7A9D357F7FCE, double 0x4079C0D4652EA590, double 0x40AE457DA3A532CC, double 0x40BEEA7AC32782DD], align 16, !dbg !0
@ps8 = internal unnamed_addr constant [5 x double] [double 0x405C8D458E656CAC, double 0x40AC85DC964D274F, double 0x40E20B8697C5BB7F, double 0x40F7D42CB28F17BB, double 0x40DE1511697A0B2D], align 16, !dbg !43
@pr5 = internal unnamed_addr constant [6 x double] [double 0x3DAD0667DAE1CA7D, double 0x3FBDFFFFE2C10043, double 0x401B36046E6315E3, double 0x405B13B9452602ED, double 0x40802D16D052D649, double 0x408085B8BB7E0CB7], align 16, !dbg !45
@ps5 = internal unnamed_addr constant [5 x double] [double 0x404DA3EAA8AF633D, double 0x408EFB361B066701, double 0x40B4E9445706B6FB, double 0x40BEA4B0B8A5BB15, double 0x40978030036F5E51], align 16, !dbg !50
@pr3 = internal unnamed_addr constant [6 x double] [double 0x3E29FC21A7AD9EDD, double 0x3FBDFFF55B21D17B, double 0x400F76BCE85EAD8A, double 0x40418F489DA6D129, double 0x4056C3854D2C1837, double 0x4048478F8EA83EE5], align 16, !dbg !52
@ps3 = internal unnamed_addr constant [5 x double] [double 0x40416549A134069C, double 0x40750C3307F1A75F, double 0x40905B7C5037D523, double 0x408BD67DA32E31E9, double 0x4059F26D7C2EED53], align 16, !dbg !54
@pr2 = internal unnamed_addr constant [6 x double] [double 0x3E7CE9D4F65544F4, double 0x3FBDFF42BE760D83, double 0x4002F2B7F98FAEC0, double 0x40287C377F71A964, double 0x4031B1A8177F8EE2, double 0x40144B49A574C1FE], align 16, !dbg !56
@ps2 = internal unnamed_addr constant [5 x double] [double 0x40356FBD8AD5ECDC, double 0x405F529314F92CD5, double 0x406D08D8D5A2DBD9, double 0x405D6B7ADA1884A9, double 0x4020BAB1F44E5192], align 16, !dbg !58
@qr8 = internal unnamed_addr constant [6 x double] [double 0.000000e+00, double 0xBFBA3FFFFFFFFDF3, double 0xC0304591A26779F7, double 0xC087BCD053E4B576, double 0xC0C724E740F87415, double 0xC0E7A6D065D09C6A], align 16, !dbg !60
@qs8 = internal unnamed_addr constant [6 x double] [double 0x40642CA6DE5BCDE5, double 0x40BE9162D0D88419, double 0x4100579AB0B75E98, double 0x4125F65372869C19, double 0x412457D27719AD5C, double 0xC111F9690EA5AA18], align 16, !dbg !62
@qr5 = internal unnamed_addr constant [6 x double] [double 0xBDB6FA431AA1A098, double 0xBFBA3FFFCB597FEF, double 0xC0201CE6CA03AD4B, double 0xC066F56D6CA7B9B0, double 0xC09574C66931734F, double 0xC0A468E388FDA79D], align 16, !dbg !64
@qs5 = internal unnamed_addr constant [6 x double] [double 0x405451B2FF5A11B2, double 0x409F1F31E77BF839, double 0x40D10F1F0D64CE29, double 0x40E8576DAABAD197, double 0x40DB4B04CF7C364B, double 0xC0B26F2EFCFFA004], align 16, !dbg !66
@qr3 = internal unnamed_addr constant [6 x double] [double 0xBE35CFA9D38FC84F, double 0xBFBA3FEB51AEED54, double 0xC01270C23302D9FF, double 0xC04CEC71C25D16DA, double 0xC06C87D34718D55F, double 0xC06B66B95F5C1BF6], align 16, !dbg !68
@qs3 = internal unnamed_addr constant [6 x double] [double 0x4047D523CCD367E4, double 0x40850EEBC031EE3E, double 0x40AA684E448E7C9A, double 0x40B5ABBAA61D54A6, double 0x409DBC7A0DD4DF4B, double 0xC060E670290A311F], align 16, !dbg !70
@qr2 = internal unnamed_addr constant [6 x double] [double 0xBE87F12644C626D2, double 0xBFBA3E8E9148B010, double 0xC006048469BB4EDA, double 0xC033A9E2C168907F, double 0xC04529A3DE104AAA, double 0xC0355F3639CF6E52], align 16, !dbg !72
@qs2 = internal unnamed_addr constant [6 x double] [double 0x403D888A78AE64FF, double 0x406F9F68DB821CBA, double 0x4087AC05CE49A0F7, double 0x40871B2548D4C029, double 0x40637E5E3C3ED8D4, double 0xC013D686E71BE86B], align 16, !dbg !74
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_j1(double) local_unnamed_addr #0 !dbg !80 {
  %2 = bitcast double %0 to i64, !dbg !114
  %3 = lshr i64 %2, 32, !dbg !114
  %4 = trunc i64 %3 to i32, !dbg !114
  %5 = and i32 %4, 2147483647, !dbg !116
  %6 = icmp ugt i32 %5, 2146435071, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %6, label %7, label %9, !dbg !120

; <label>:7:                                      ; preds = %1
  %8 = fdiv double 1.000000e+00, %0, !dbg !121
  br label %136, !dbg !122

; <label>:9:                                      ; preds = %1
  %10 = tail call double @fabs(double %0) #3, !dbg !123
  %11 = icmp ugt i32 %5, 1073741823, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %11, label %12, label %106, !dbg !127

; <label>:12:                                     ; preds = %9
  %13 = tail call double @sin(double %10) #3, !dbg !128
  %14 = tail call double @cos(double %10) #3, !dbg !131
  %15 = fsub double -0.000000e+00, %13, !dbg !133
  %16 = fsub double %15, %14, !dbg !134
  %17 = fsub double %13, %14, !dbg !136
  %18 = icmp ult i32 %5, 2145386496, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br i1 %18, label %20, label %19, !dbg !140

; <label>:19:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br label %98, !dbg !141

; <label>:20:                                     ; preds = %12
  %21 = fadd double %10, %10, !dbg !142
  %22 = tail call double @cos(double %21) #3, !dbg !144
  %23 = fmul double %13, %14, !dbg !146
  %24 = fcmp ogt double %23, 0.000000e+00, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %24, label %25, label %27, !dbg !149

; <label>:25:                                     ; preds = %20
  %26 = fdiv double %22, %16, !dbg !150
  br label %29, !dbg !151

; <label>:27:                                     ; preds = %20
  %28 = fdiv double %22, %17, !dbg !152
  br label %29

; <label>:29:                                     ; preds = %25, %27
  %30 = phi double [ %26, %25 ], [ %17, %27 ], !dbg !153
  %31 = phi double [ %16, %25 ], [ %28, %27 ], !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = icmp ugt i32 %5, 1207959552, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br i1 %32, label %98, label %33, !dbg !141

; <label>:33:                                     ; preds = %29
  %34 = bitcast double %10 to i64, !dbg !171
  %35 = lshr i64 %34, 32, !dbg !171
  %36 = trunc i64 %35 to i32, !dbg !171
  %37 = and i32 %36, 2147483647, !dbg !173
  %38 = icmp ugt i32 %37, 1075838975, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %38, label %39, label %40, !dbg !176

; <label>:39:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br label %47, !dbg !177

; <label>:40:                                     ; preds = %33
  %41 = icmp ugt i32 %37, 1074933386, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %41, label %42, label %43, !dbg !181

; <label>:42:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br label %47, !dbg !182

; <label>:43:                                     ; preds = %40
  %44 = icmp ugt i32 %37, 1074191212, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = select i1 %44, double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i64 0, i64 0), !dbg !187
  %46 = select i1 %44, double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i64 0, i64 0), !dbg !187
  br label %47, !dbg !187

; <label>:47:                                     ; preds = %39, %42, %43
  %48 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @ps8, i64 0, i64 0), %39 ], [ getelementptr inbounds ([5 x double], [5 x double]* @ps5, i64 0, i64 0), %42 ], [ %45, %43 ], !dbg !189
  %49 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pr8, i64 0, i64 0), %39 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pr5, i64 0, i64 0), %42 ], [ %46, %43 ], !dbg !189
  %50 = fmul double %10, %10, !dbg !193
  %51 = fdiv double 1.000000e+00, %50, !dbg !194
  %52 = load double, double* %49, align 8, !dbg !196, !tbaa !197
  %53 = getelementptr inbounds double, double* %49, i64 1, !dbg !201
  %54 = load double, double* %53, align 8, !dbg !201, !tbaa !197
  %55 = getelementptr inbounds double, double* %49, i64 2, !dbg !202
  %56 = load double, double* %55, align 8, !dbg !202, !tbaa !197
  %57 = getelementptr inbounds double, double* %49, i64 3, !dbg !203
  %58 = load double, double* %57, align 8, !dbg !203, !tbaa !197
  %59 = getelementptr inbounds double, double* %49, i64 4, !dbg !204
  %60 = load double, double* %59, align 8, !dbg !204, !tbaa !197
  %61 = getelementptr inbounds double, double* %49, i64 5, !dbg !205
  %62 = load double, double* %61, align 8, !dbg !205, !tbaa !197
  %63 = fmul double %51, %62, !dbg !206
  %64 = fadd double %60, %63, !dbg !207
  %65 = fmul double %51, %64, !dbg !208
  %66 = fadd double %58, %65, !dbg !209
  %67 = fmul double %51, %66, !dbg !210
  %68 = fadd double %56, %67, !dbg !211
  %69 = fmul double %51, %68, !dbg !212
  %70 = fadd double %54, %69, !dbg !213
  %71 = fmul double %51, %70, !dbg !214
  %72 = fadd double %52, %71, !dbg !215
  %73 = load double, double* %48, align 8, !dbg !217, !tbaa !197
  %74 = getelementptr inbounds double, double* %48, i64 1, !dbg !218
  %75 = load double, double* %74, align 8, !dbg !218, !tbaa !197
  %76 = getelementptr inbounds double, double* %48, i64 2, !dbg !219
  %77 = load double, double* %76, align 8, !dbg !219, !tbaa !197
  %78 = getelementptr inbounds double, double* %48, i64 3, !dbg !220
  %79 = load double, double* %78, align 8, !dbg !220, !tbaa !197
  %80 = getelementptr inbounds double, double* %48, i64 4, !dbg !221
  %81 = load double, double* %80, align 8, !dbg !221, !tbaa !197
  %82 = fmul double %51, %81, !dbg !222
  %83 = fadd double %79, %82, !dbg !223
  %84 = fmul double %51, %83, !dbg !224
  %85 = fadd double %77, %84, !dbg !225
  %86 = fmul double %51, %85, !dbg !226
  %87 = fadd double %75, %86, !dbg !227
  %88 = fmul double %51, %87, !dbg !228
  %89 = fadd double %73, %88, !dbg !229
  %90 = fmul double %51, %89, !dbg !230
  %91 = fadd double %90, 1.000000e+00, !dbg !231
  %92 = fdiv double %72, %91, !dbg !233
  %93 = fadd double %92, 1.000000e+00, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  %94 = tail call fastcc double @qone(double %10) #4, !dbg !237
  %95 = fmul double %30, %93, !dbg !239
  %96 = fmul double %31, %94, !dbg !240
  %97 = fsub double %95, %96, !dbg !241
  br label %98

; <label>:98:                                     ; preds = %29, %19, %47
  %99 = phi double [ %97, %47 ], [ %17, %19 ], [ %30, %29 ]
  %100 = fmul double %99, 0x3FE20DD750429B6D, !dbg !242
  %101 = tail call double @__ieee754_sqrt(double %10) #3, !dbg !242
  %102 = fdiv double %100, %101, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %103 = icmp slt i32 %4, 0, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  %104 = fsub double -0.000000e+00, %102, !dbg !246
  %105 = select i1 %103, double %104, double %102, !dbg !245
  br label %136, !dbg !245

; <label>:106:                                    ; preds = %9
  %107 = icmp ult i32 %5, 1044381696, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %107, label %108, label %113, !dbg !249

; <label>:108:                                    ; preds = %106
  %109 = fadd double %0, 1.000000e+300, !dbg !250
  %110 = fcmp ogt double %109, 1.000000e+00, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %110, label %111, label %113, !dbg !254

; <label>:111:                                    ; preds = %108
  %112 = fmul double %0, 5.000000e-01, !dbg !255
  br label %136, !dbg !256

; <label>:113:                                    ; preds = %108, %106
  %114 = fmul double %0, %0, !dbg !257
  %115 = fmul double %114, 0x3E6AAAFA46CA0BD9, !dbg !258
  %116 = fadd double %115, 0xBEF0C5C6BA169668, !dbg !259
  %117 = fmul double %114, %116, !dbg !260
  %118 = fadd double %117, 0x3F570D9F98472C61, !dbg !261
  %119 = fmul double %114, %118, !dbg !262
  %120 = fadd double %119, -6.250000e-02, !dbg !263
  %121 = fmul double %114, %120, !dbg !264
  %122 = fmul double %114, 0x3DAB2ACFCFB97ED8, !dbg !266
  %123 = fadd double %122, 0x3E35AC88C97DFF2C, !dbg !267
  %124 = fmul double %114, %123, !dbg !268
  %125 = fadd double %124, 0x3EB3BFF8333F8498, !dbg !269
  %126 = fmul double %114, %125, !dbg !270
  %127 = fadd double %126, 0x3F285F56B9CDF664, !dbg !271
  %128 = fmul double %114, %127, !dbg !272
  %129 = fadd double %128, 0x3F939D0B12637E53, !dbg !273
  %130 = fmul double %114, %129, !dbg !274
  %131 = fadd double %130, 1.000000e+00, !dbg !275
  %132 = fmul double %121, %0, !dbg !276
  %133 = fmul double %0, 5.000000e-01, !dbg !277
  %134 = fdiv double %132, %131, !dbg !278
  %135 = fadd double %133, %134, !dbg !279
  br label %136, !dbg !280

; <label>:136:                                    ; preds = %98, %113, %111, %7
  %137 = phi double [ %8, %7 ], [ %112, %111 ], [ %135, %113 ], [ %105, %98 ], !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  ret double %137, !dbg !283
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
define internal fastcc double @qone(double) unnamed_addr #0 !dbg !284 {
  %2 = bitcast double %0 to i64, !dbg !296
  %3 = lshr i64 %2, 32, !dbg !296
  %4 = trunc i64 %3 to i32, !dbg !296
  %5 = and i32 %4, 2147483647, !dbg !298
  %6 = icmp ugt i32 %5, 1075838975, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %6, label %7, label %8, !dbg !301

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br label %15, !dbg !302

; <label>:8:                                      ; preds = %1
  %9 = icmp ugt i32 %5, 1074933386, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br i1 %9, label %10, label %11, !dbg !306

; <label>:10:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br label %15, !dbg !307

; <label>:11:                                     ; preds = %8
  %12 = icmp ugt i32 %5, 1074191212, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %13 = select i1 %12, double* getelementptr inbounds ([6 x double], [6 x double]* @qs3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qs2, i64 0, i64 0), !dbg !312
  %14 = select i1 %12, double* getelementptr inbounds ([6 x double], [6 x double]* @qr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qr2, i64 0, i64 0), !dbg !312
  br label %15, !dbg !312

; <label>:15:                                     ; preds = %11, %10, %7
  %16 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qs8, i64 0, i64 0), %7 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qs5, i64 0, i64 0), %10 ], [ %13, %11 ], !dbg !314
  %17 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qr8, i64 0, i64 0), %7 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qr5, i64 0, i64 0), %10 ], [ %14, %11 ], !dbg !314
  %18 = fmul double %0, %0, !dbg !318
  %19 = fdiv double 1.000000e+00, %18, !dbg !319
  %20 = load double, double* %17, align 8, !dbg !321, !tbaa !197
  %21 = getelementptr inbounds double, double* %17, i64 1, !dbg !322
  %22 = load double, double* %21, align 8, !dbg !322, !tbaa !197
  %23 = getelementptr inbounds double, double* %17, i64 2, !dbg !323
  %24 = load double, double* %23, align 8, !dbg !323, !tbaa !197
  %25 = getelementptr inbounds double, double* %17, i64 3, !dbg !324
  %26 = load double, double* %25, align 8, !dbg !324, !tbaa !197
  %27 = getelementptr inbounds double, double* %17, i64 4, !dbg !325
  %28 = load double, double* %27, align 8, !dbg !325, !tbaa !197
  %29 = getelementptr inbounds double, double* %17, i64 5, !dbg !326
  %30 = load double, double* %29, align 8, !dbg !326, !tbaa !197
  %31 = fmul double %19, %30, !dbg !327
  %32 = fadd double %28, %31, !dbg !328
  %33 = fmul double %19, %32, !dbg !329
  %34 = fadd double %26, %33, !dbg !330
  %35 = fmul double %19, %34, !dbg !331
  %36 = fadd double %24, %35, !dbg !332
  %37 = fmul double %19, %36, !dbg !333
  %38 = fadd double %22, %37, !dbg !334
  %39 = fmul double %19, %38, !dbg !335
  %40 = fadd double %20, %39, !dbg !336
  %41 = load double, double* %16, align 8, !dbg !338, !tbaa !197
  %42 = getelementptr inbounds double, double* %16, i64 1, !dbg !339
  %43 = load double, double* %42, align 8, !dbg !339, !tbaa !197
  %44 = getelementptr inbounds double, double* %16, i64 2, !dbg !340
  %45 = load double, double* %44, align 8, !dbg !340, !tbaa !197
  %46 = getelementptr inbounds double, double* %16, i64 3, !dbg !341
  %47 = load double, double* %46, align 8, !dbg !341, !tbaa !197
  %48 = getelementptr inbounds double, double* %16, i64 4, !dbg !342
  %49 = load double, double* %48, align 8, !dbg !342, !tbaa !197
  %50 = getelementptr inbounds double, double* %16, i64 5, !dbg !343
  %51 = load double, double* %50, align 8, !dbg !343, !tbaa !197
  %52 = fmul double %19, %51, !dbg !344
  %53 = fadd double %49, %52, !dbg !345
  %54 = fmul double %19, %53, !dbg !346
  %55 = fadd double %47, %54, !dbg !347
  %56 = fmul double %19, %55, !dbg !348
  %57 = fadd double %45, %56, !dbg !349
  %58 = fmul double %19, %57, !dbg !350
  %59 = fadd double %43, %58, !dbg !351
  %60 = fmul double %19, %59, !dbg !352
  %61 = fadd double %41, %60, !dbg !353
  %62 = fmul double %19, %61, !dbg !354
  %63 = fadd double %62, 1.000000e+00, !dbg !355
  %64 = fdiv double %40, %63, !dbg !357
  %65 = fadd double %64, 3.750000e-01, !dbg !358
  %66 = fdiv double %65, %0, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret double %66, !dbg !360
}

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_y1(double) local_unnamed_addr #0 !dbg !361 {
  %2 = bitcast double %0 to i64, !dbg !377
  %3 = lshr i64 %2, 32, !dbg !377
  %4 = trunc i64 %3 to i32, !dbg !377
  %5 = and i32 %4, 2147483647, !dbg !379
  %6 = icmp ugt i32 %5, 2146435071, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %6, label %7, label %11, !dbg !383

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !384
  %9 = fadd double %8, %0, !dbg !385
  %10 = fdiv double 1.000000e+00, %9, !dbg !386
  br label %139, !dbg !387

; <label>:11:                                     ; preds = %1
  %12 = trunc i64 %2 to i32, !dbg !377
  %13 = or i32 %5, %12, !dbg !389
  %14 = icmp eq i32 %13, 0, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %14, label %139, label %15, !dbg !392

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i32 %4, 0, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %16, label %139, label %17, !dbg !395

; <label>:17:                                     ; preds = %15
  %18 = icmp ugt i32 %5, 1073741823, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %18, label %19, label %106, !dbg !398

; <label>:19:                                     ; preds = %17
  %20 = tail call double @sin(double %0) #3, !dbg !399
  %21 = tail call double @cos(double %0) #3, !dbg !402
  %22 = fsub double -0.000000e+00, %20, !dbg !404
  %23 = fsub double %22, %21, !dbg !405
  %24 = fsub double %20, %21, !dbg !407
  %25 = icmp ult i32 %5, 2145386496, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %25, label %27, label %26, !dbg !411

; <label>:26:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %101, !dbg !412

; <label>:27:                                     ; preds = %19
  %28 = fadd double %0, %0, !dbg !413
  %29 = tail call double @cos(double %28) #3, !dbg !415
  %30 = fmul double %20, %21, !dbg !417
  %31 = fcmp ogt double %30, 0.000000e+00, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %31, label %32, label %34, !dbg !420

; <label>:32:                                     ; preds = %27
  %33 = fdiv double %29, %23, !dbg !421
  br label %36, !dbg !422

; <label>:34:                                     ; preds = %27
  %35 = fdiv double %29, %24, !dbg !423
  br label %36

; <label>:36:                                     ; preds = %32, %34
  %37 = phi double [ %33, %32 ], [ %24, %34 ], !dbg !424
  %38 = phi double [ %23, %32 ], [ %35, %34 ], !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = icmp ugt i32 %5, 1207959552, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %39, label %101, label %40, !dbg !412

; <label>:40:                                     ; preds = %36
  %41 = icmp ugt i32 %5, 1075838975, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %41, label %42, label %43, !dbg !432

; <label>:42:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br label %50, !dbg !433

; <label>:43:                                     ; preds = %40
  %44 = icmp ugt i32 %5, 1074933386, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %44, label %45, label %46, !dbg !435

; <label>:45:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br label %50, !dbg !436

; <label>:46:                                     ; preds = %43
  %47 = icmp ugt i32 %5, 1074191212, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = select i1 %47, double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i64 0, i64 0), !dbg !439
  %49 = select i1 %47, double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i64 0, i64 0), !dbg !439
  br label %50, !dbg !439

; <label>:50:                                     ; preds = %42, %45, %46
  %51 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @ps8, i64 0, i64 0), %42 ], [ getelementptr inbounds ([5 x double], [5 x double]* @ps5, i64 0, i64 0), %45 ], [ %48, %46 ], !dbg !440
  %52 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pr8, i64 0, i64 0), %42 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pr5, i64 0, i64 0), %45 ], [ %49, %46 ], !dbg !440
  %53 = fmul double %0, %0, !dbg !443
  %54 = fdiv double 1.000000e+00, %53, !dbg !444
  %55 = load double, double* %52, align 8, !dbg !446, !tbaa !197
  %56 = getelementptr inbounds double, double* %52, i64 1, !dbg !447
  %57 = load double, double* %56, align 8, !dbg !447, !tbaa !197
  %58 = getelementptr inbounds double, double* %52, i64 2, !dbg !448
  %59 = load double, double* %58, align 8, !dbg !448, !tbaa !197
  %60 = getelementptr inbounds double, double* %52, i64 3, !dbg !449
  %61 = load double, double* %60, align 8, !dbg !449, !tbaa !197
  %62 = getelementptr inbounds double, double* %52, i64 4, !dbg !450
  %63 = load double, double* %62, align 8, !dbg !450, !tbaa !197
  %64 = getelementptr inbounds double, double* %52, i64 5, !dbg !451
  %65 = load double, double* %64, align 8, !dbg !451, !tbaa !197
  %66 = fmul double %54, %65, !dbg !452
  %67 = fadd double %63, %66, !dbg !453
  %68 = fmul double %54, %67, !dbg !454
  %69 = fadd double %61, %68, !dbg !455
  %70 = fmul double %54, %69, !dbg !456
  %71 = fadd double %59, %70, !dbg !457
  %72 = fmul double %54, %71, !dbg !458
  %73 = fadd double %57, %72, !dbg !459
  %74 = fmul double %54, %73, !dbg !460
  %75 = fadd double %55, %74, !dbg !461
  %76 = load double, double* %51, align 8, !dbg !463, !tbaa !197
  %77 = getelementptr inbounds double, double* %51, i64 1, !dbg !464
  %78 = load double, double* %77, align 8, !dbg !464, !tbaa !197
  %79 = getelementptr inbounds double, double* %51, i64 2, !dbg !465
  %80 = load double, double* %79, align 8, !dbg !465, !tbaa !197
  %81 = getelementptr inbounds double, double* %51, i64 3, !dbg !466
  %82 = load double, double* %81, align 8, !dbg !466, !tbaa !197
  %83 = getelementptr inbounds double, double* %51, i64 4, !dbg !467
  %84 = load double, double* %83, align 8, !dbg !467, !tbaa !197
  %85 = fmul double %54, %84, !dbg !468
  %86 = fadd double %82, %85, !dbg !469
  %87 = fmul double %54, %86, !dbg !470
  %88 = fadd double %80, %87, !dbg !471
  %89 = fmul double %54, %88, !dbg !472
  %90 = fadd double %78, %89, !dbg !473
  %91 = fmul double %54, %90, !dbg !474
  %92 = fadd double %76, %91, !dbg !475
  %93 = fmul double %54, %92, !dbg !476
  %94 = fadd double %93, 1.000000e+00, !dbg !477
  %95 = fdiv double %75, %94, !dbg !479
  %96 = fadd double %95, 1.000000e+00, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %97 = tail call fastcc double @qone(double %0) #4, !dbg !483
  %98 = fmul double %38, %96, !dbg !485
  %99 = fmul double %37, %97, !dbg !486
  %100 = fadd double %99, %98, !dbg !487
  br label %101

; <label>:101:                                    ; preds = %36, %26, %50
  %102 = phi double [ %100, %50 ], [ %23, %26 ], [ %38, %36 ]
  %103 = fmul double %102, 0x3FE20DD750429B6D, !dbg !488
  %104 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !488
  %105 = fdiv double %103, %104, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %139, !dbg !489

; <label>:106:                                    ; preds = %17
  %107 = icmp ult i32 %5, 1016070145, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %107, label %108, label %110, !dbg !492

; <label>:108:                                    ; preds = %106
  %109 = fdiv double 0xBFE45F306DC9C883, %0, !dbg !493
  br label %139, !dbg !495

; <label>:110:                                    ; preds = %106
  %111 = fmul double %0, %0, !dbg !496
  %112 = fmul double %111, 0x3E78AC00569105B8, !dbg !497
  %113 = fsub double 0x3EF8AB038FA6B88E, %112, !dbg !497
  %114 = fmul double %111, %113, !dbg !498
  %115 = fadd double %114, 0xBF5F55E54844F50F, !dbg !499
  %116 = fmul double %111, %115, !dbg !500
  %117 = fadd double %116, 0x3FA9D3C776292CD1, !dbg !501
  %118 = fmul double %111, %117, !dbg !502
  %119 = fadd double %118, 0xBFC91866143CBC8A, !dbg !503
  %120 = fmul double %111, 0x3DB25039DACA772A, !dbg !504
  %121 = fadd double %120, 0x3E3ABF1D5BA69A86, !dbg !505
  %122 = fmul double %111, %121, !dbg !506
  %123 = fadd double %122, 0x3EB6C05A894E8CA6, !dbg !507
  %124 = fmul double %111, %123, !dbg !508
  %125 = fadd double %124, 0x3F2A8C896C257764, !dbg !509
  %126 = fmul double %111, %125, !dbg !510
  %127 = fadd double %126, 0x3F94650D3F4DA9F0, !dbg !511
  %128 = fmul double %111, %127, !dbg !512
  %129 = fadd double %128, 1.000000e+00, !dbg !513
  %130 = fdiv double %119, %129, !dbg !514
  %131 = fmul double %130, %0, !dbg !515
  %132 = tail call double @__ieee754_j1(double %0) #4, !dbg !516
  %133 = tail call double @__ieee754_log(double %0) #3, !dbg !517
  %134 = fmul double %132, %133, !dbg !518
  %135 = fdiv double 1.000000e+00, %0, !dbg !519
  %136 = fsub double %134, %135, !dbg !520
  %137 = fmul double %136, 0x3FE45F306DC9C883, !dbg !521
  %138 = fadd double %131, %137, !dbg !522
  br label %139, !dbg !523

; <label>:139:                                    ; preds = %15, %11, %110, %108, %101, %7
  %140 = phi double [ %10, %7 ], [ %105, %101 ], [ %109, %108 ], [ %138, %110 ], [ 0xFFF0000000000000, %11 ], [ 0x7FF8000000000000, %15 ], !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  ret double %140, !dbg !526
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pr8", scope: !2, file: !3, line: 228, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_j1.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !41, !0, !43, !45, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 75, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 90, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4603256987541740397, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "invsqrtpi", scope: !2, file: !3, line: 76, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 74, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 13812540057145311232, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "r00", scope: !2, file: !3, line: 79, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4564131726469049441, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "r01", scope: !2, file: !3, line: 80, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13758714318933104232, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "r02", scope: !2, file: !3, line: 81, type: !8, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4497595169789053913, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "r03", scope: !2, file: !3, line: 82, type: !8, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4581177916844637779, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "s01", scope: !2, file: !3, line: 83, type: !8, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4550992249546995300, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "s02", scope: !2, file: !3, line: 84, type: !8, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4518165923915334808, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "s03", scope: !2, file: !3, line: 85, type: !8, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4482678707613204268, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "s04", scope: !2, file: !3, line: 86, type: !8, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression(DW_OP_constu, 4443692529362763480, DW_OP_stack_value))
!33 = distinct !DIGlobalVariable(name: "s05", scope: !2, file: !3, line: 87, type: !8, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!35 = distinct !DIGlobalVariable(name: "tpi", scope: !2, file: !3, line: 77, type: !8, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "U0", scope: !2, file: !3, line: 142, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 320, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 5)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "V0", scope: !2, file: !3, line: 153, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "ps8", scope: !2, file: !3, line: 240, type: !38, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "pr5", scope: !2, file: !3, line: 252, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 384, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "ps5", scope: !2, file: !3, line: 264, type: !38, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "pr3", scope: !2, file: !3, line: 276, type: !47, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "ps3", scope: !2, file: !3, line: 288, type: !38, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "pr2", scope: !2, file: !3, line: 300, type: !47, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ps2", scope: !2, file: !3, line: 312, type: !38, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "qr8", scope: !2, file: !3, line: 361, type: !47, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "qs8", scope: !2, file: !3, line: 373, type: !47, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "qr5", scope: !2, file: !3, line: 386, type: !47, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "qs5", scope: !2, file: !3, line: 398, type: !47, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "qr3", scope: !2, file: !3, line: 411, type: !47, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "qs3", scope: !2, file: !3, line: 423, type: !47, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "qr2", scope: !2, file: !3, line: 436, type: !47, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "qs2", scope: !2, file: !3, line: 448, type: !47, isLocal: true, isDefinition: true)
!76 = !{i32 2, !"Dwarf Version", i32 4}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!80 = distinct !DISubprogram(name: "__ieee754_j1", scope: !3, file: !3, line: 96, type: !81, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!9, !9}
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !98, !99}
!84 = !DILocalVariable(name: "x", arg: 1, scope: !80, file: !3, line: 96, type: !9)
!85 = !DILocalVariable(name: "z", scope: !80, file: !3, line: 102, type: !9)
!86 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 102, type: !9)
!87 = !DILocalVariable(name: "c", scope: !80, file: !3, line: 102, type: !9)
!88 = !DILocalVariable(name: "ss", scope: !80, file: !3, line: 102, type: !9)
!89 = !DILocalVariable(name: "cc", scope: !80, file: !3, line: 102, type: !9)
!90 = !DILocalVariable(name: "r", scope: !80, file: !3, line: 102, type: !9)
!91 = !DILocalVariable(name: "u", scope: !80, file: !3, line: 102, type: !9)
!92 = !DILocalVariable(name: "v", scope: !80, file: !3, line: 102, type: !9)
!93 = !DILocalVariable(name: "y", scope: !80, file: !3, line: 102, type: !9)
!94 = !DILocalVariable(name: "hx", scope: !80, file: !3, line: 103, type: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !96, line: 77, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !DILocalVariable(name: "ix", scope: !80, file: !3, line: 103, type: !95)
!99 = !DILocalVariable(name: "gh_u", scope: !100, file: !3, line: 105, type: !101)
!100 = distinct !DILexicalBlock(scope: !80, file: !3, line: 105, column: 2)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !102, line: 278, baseType: !103)
!102 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !102, line: 270, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !103, file: !102, line: 272, baseType: !9, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !103, file: !102, line: 277, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !103, file: !102, line: 273, size: 64, elements: !108)
!108 = !{!109, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !107, file: !102, line: 275, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !96, line: 79, baseType: !111)
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !107, file: !102, line: 276, baseType: !110, size: 32, offset: 32)
!113 = !DILocation(line: 96, column: 29, scope: !80)
!114 = !DILocation(line: 105, column: 2, scope: !100)
!115 = !DILocation(line: 103, column: 12, scope: !80)
!116 = !DILocation(line: 106, column: 9, scope: !80)
!117 = !DILocation(line: 103, column: 15, scope: !80)
!118 = !DILocation(line: 107, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !80, file: !3, line: 107, column: 5)
!120 = !DILocation(line: 107, column: 5, scope: !80)
!121 = !DILocation(line: 107, column: 31, scope: !119)
!122 = !DILocation(line: 107, column: 21, scope: !119)
!123 = !DILocation(line: 108, column: 6, scope: !80)
!124 = !DILocation(line: 102, column: 28, scope: !80)
!125 = !DILocation(line: 109, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !80, file: !3, line: 109, column: 5)
!127 = !DILocation(line: 109, column: 5, scope: !80)
!128 = !DILocation(line: 110, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !3, line: 109, column: 23)
!130 = !DILocation(line: 102, column: 12, scope: !80)
!131 = !DILocation(line: 111, column: 7, scope: !129)
!132 = !DILocation(line: 102, column: 14, scope: !80)
!133 = !DILocation(line: 112, column: 8, scope: !129)
!134 = !DILocation(line: 112, column: 10, scope: !129)
!135 = !DILocation(line: 102, column: 16, scope: !80)
!136 = !DILocation(line: 113, column: 9, scope: !129)
!137 = !DILocation(line: 102, column: 19, scope: !80)
!138 = !DILocation(line: 114, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !3, line: 114, column: 6)
!140 = !DILocation(line: 114, column: 6, scope: !129)
!141 = !DILocation(line: 123, column: 6, scope: !129)
!142 = !DILocation(line: 115, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 114, column: 21)
!144 = !DILocation(line: 115, column: 11, scope: !143)
!145 = !DILocation(line: 102, column: 9, scope: !80)
!146 = !DILocation(line: 116, column: 13, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !3, line: 116, column: 11)
!148 = !DILocation(line: 116, column: 16, scope: !147)
!149 = !DILocation(line: 116, column: 11, scope: !143)
!150 = !DILocation(line: 116, column: 29, scope: !147)
!151 = !DILocation(line: 116, column: 23, scope: !147)
!152 = !DILocation(line: 117, column: 23, scope: !147)
!153 = !DILocation(line: 0, scope: !129)
!154 = !DILocation(line: 123, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !129, file: !3, line: 123, column: 6)
!156 = !DILocalVariable(name: "x", arg: 1, scope: !157, file: !3, line: 324, type: !9)
!157 = distinct !DISubprogram(name: "pone", scope: !3, file: !3, line: 324, type: !81, isLocal: true, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !158)
!158 = !{!156, !159, !161, !162, !163, !164, !165, !166}
!159 = !DILocalVariable(name: "p", scope: !157, file: !3, line: 331, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!161 = !DILocalVariable(name: "q", scope: !157, file: !3, line: 331, type: !160)
!162 = !DILocalVariable(name: "z", scope: !157, file: !3, line: 335, type: !9)
!163 = !DILocalVariable(name: "r", scope: !157, file: !3, line: 335, type: !9)
!164 = !DILocalVariable(name: "s", scope: !157, file: !3, line: 335, type: !9)
!165 = !DILocalVariable(name: "ix", scope: !157, file: !3, line: 336, type: !95)
!166 = !DILocalVariable(name: "gh_u", scope: !167, file: !3, line: 337, type: !101)
!167 = distinct !DILexicalBlock(scope: !157, file: !3, line: 337, column: 2)
!168 = !DILocation(line: 324, column: 28, scope: !157, inlinedAt: !169)
!169 = distinct !DILocation(line: 125, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !155, file: !3, line: 124, column: 8)
!171 = !DILocation(line: 337, column: 2, scope: !167, inlinedAt: !169)
!172 = !DILocation(line: 336, column: 19, scope: !157, inlinedAt: !169)
!173 = !DILocation(line: 338, column: 5, scope: !157, inlinedAt: !169)
!174 = !DILocation(line: 339, column: 14, scope: !175, inlinedAt: !169)
!175 = distinct !DILexicalBlock(scope: !157, file: !3, line: 339, column: 12)
!176 = !DILocation(line: 339, column: 12, scope: !157, inlinedAt: !169)
!177 = !DILocation(line: 339, column: 49, scope: !178, inlinedAt: !169)
!178 = distinct !DILexicalBlock(scope: !175, file: !3, line: 339, column: 32)
!179 = !DILocation(line: 340, column: 19, scope: !180, inlinedAt: !169)
!180 = distinct !DILexicalBlock(scope: !175, file: !3, line: 340, column: 17)
!181 = !DILocation(line: 340, column: 17, scope: !175, inlinedAt: !169)
!182 = !DILocation(line: 340, column: 49, scope: !183, inlinedAt: !169)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 340, column: 32)
!184 = !DILocation(line: 341, column: 19, scope: !185, inlinedAt: !169)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 341, column: 17)
!186 = !DILocation(line: 341, column: 17, scope: !180, inlinedAt: !169)
!187 = !DILocation(line: 341, column: 49, scope: !188, inlinedAt: !169)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 341, column: 32)
!189 = !DILocation(line: 0, scope: !190, inlinedAt: !169)
!190 = distinct !DILexicalBlock(scope: !185, file: !3, line: 342, column: 14)
!191 = !DILocation(line: 331, column: 16, scope: !157, inlinedAt: !169)
!192 = !DILocation(line: 331, column: 19, scope: !157, inlinedAt: !169)
!193 = !DILocation(line: 343, column: 19, scope: !157, inlinedAt: !169)
!194 = !DILocation(line: 343, column: 16, scope: !157, inlinedAt: !169)
!195 = !DILocation(line: 335, column: 9, scope: !157, inlinedAt: !169)
!196 = !DILocation(line: 344, column: 13, scope: !157, inlinedAt: !169)
!197 = !{!198, !198, i64 0}
!198 = !{!"double", !199, i64 0}
!199 = !{!"omnipotent char", !200, i64 0}
!200 = !{!"Simple C/C++ TBAA"}
!201 = !DILocation(line: 344, column: 21, scope: !157, inlinedAt: !169)
!202 = !DILocation(line: 344, column: 29, scope: !157, inlinedAt: !169)
!203 = !DILocation(line: 344, column: 37, scope: !157, inlinedAt: !169)
!204 = !DILocation(line: 344, column: 45, scope: !157, inlinedAt: !169)
!205 = !DILocation(line: 344, column: 52, scope: !157, inlinedAt: !169)
!206 = !DILocation(line: 344, column: 51, scope: !157, inlinedAt: !169)
!207 = !DILocation(line: 344, column: 49, scope: !157, inlinedAt: !169)
!208 = !DILocation(line: 344, column: 43, scope: !157, inlinedAt: !169)
!209 = !DILocation(line: 344, column: 41, scope: !157, inlinedAt: !169)
!210 = !DILocation(line: 344, column: 35, scope: !157, inlinedAt: !169)
!211 = !DILocation(line: 344, column: 33, scope: !157, inlinedAt: !169)
!212 = !DILocation(line: 344, column: 27, scope: !157, inlinedAt: !169)
!213 = !DILocation(line: 344, column: 25, scope: !157, inlinedAt: !169)
!214 = !DILocation(line: 344, column: 19, scope: !157, inlinedAt: !169)
!215 = !DILocation(line: 344, column: 17, scope: !157, inlinedAt: !169)
!216 = !DILocation(line: 335, column: 11, scope: !157, inlinedAt: !169)
!217 = !DILocation(line: 345, column: 20, scope: !157, inlinedAt: !169)
!218 = !DILocation(line: 345, column: 28, scope: !157, inlinedAt: !169)
!219 = !DILocation(line: 345, column: 36, scope: !157, inlinedAt: !169)
!220 = !DILocation(line: 345, column: 44, scope: !157, inlinedAt: !169)
!221 = !DILocation(line: 345, column: 51, scope: !157, inlinedAt: !169)
!222 = !DILocation(line: 345, column: 50, scope: !157, inlinedAt: !169)
!223 = !DILocation(line: 345, column: 48, scope: !157, inlinedAt: !169)
!224 = !DILocation(line: 345, column: 42, scope: !157, inlinedAt: !169)
!225 = !DILocation(line: 345, column: 40, scope: !157, inlinedAt: !169)
!226 = !DILocation(line: 345, column: 34, scope: !157, inlinedAt: !169)
!227 = !DILocation(line: 345, column: 32, scope: !157, inlinedAt: !169)
!228 = !DILocation(line: 345, column: 26, scope: !157, inlinedAt: !169)
!229 = !DILocation(line: 345, column: 24, scope: !157, inlinedAt: !169)
!230 = !DILocation(line: 345, column: 18, scope: !157, inlinedAt: !169)
!231 = !DILocation(line: 345, column: 16, scope: !157, inlinedAt: !169)
!232 = !DILocation(line: 335, column: 13, scope: !157, inlinedAt: !169)
!233 = !DILocation(line: 346, column: 22, scope: !157, inlinedAt: !169)
!234 = !DILocation(line: 346, column: 19, scope: !157, inlinedAt: !169)
!235 = !DILocation(line: 346, column: 9, scope: !157, inlinedAt: !169)
!236 = !DILocation(line: 102, column: 24, scope: !80)
!237 = !DILocation(line: 125, column: 24, scope: !170)
!238 = !DILocation(line: 102, column: 26, scope: !80)
!239 = !DILocation(line: 126, column: 23, scope: !170)
!240 = !DILocation(line: 126, column: 28, scope: !170)
!241 = !DILocation(line: 126, column: 26, scope: !170)
!242 = !DILocation(line: 0, scope: !155)
!243 = !DILocation(line: 128, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !129, file: !3, line: 128, column: 6)
!245 = !DILocation(line: 128, column: 6, scope: !129)
!246 = !DILocation(line: 128, column: 19, scope: !244)
!247 = !DILocation(line: 131, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !80, file: !3, line: 131, column: 5)
!249 = !DILocation(line: 131, column: 5, scope: !80)
!250 = !DILocation(line: 132, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 132, column: 9)
!252 = distinct !DILexicalBlock(scope: !248, file: !3, line: 131, column: 20)
!253 = !DILocation(line: 132, column: 15, scope: !251)
!254 = !DILocation(line: 132, column: 9, scope: !252)
!255 = !DILocation(line: 132, column: 31, scope: !251)
!256 = !DILocation(line: 132, column: 21, scope: !251)
!257 = !DILocation(line: 134, column: 7, scope: !80)
!258 = !DILocation(line: 135, column: 29, scope: !80)
!259 = !DILocation(line: 135, column: 27, scope: !80)
!260 = !DILocation(line: 135, column: 22, scope: !80)
!261 = !DILocation(line: 135, column: 20, scope: !80)
!262 = !DILocation(line: 135, column: 15, scope: !80)
!263 = !DILocation(line: 135, column: 13, scope: !80)
!264 = !DILocation(line: 135, column: 8, scope: !80)
!265 = !DILocation(line: 102, column: 22, scope: !80)
!266 = !DILocation(line: 136, column: 40, scope: !80)
!267 = !DILocation(line: 136, column: 38, scope: !80)
!268 = !DILocation(line: 136, column: 33, scope: !80)
!269 = !DILocation(line: 136, column: 31, scope: !80)
!270 = !DILocation(line: 136, column: 26, scope: !80)
!271 = !DILocation(line: 136, column: 24, scope: !80)
!272 = !DILocation(line: 136, column: 19, scope: !80)
!273 = !DILocation(line: 136, column: 17, scope: !80)
!274 = !DILocation(line: 136, column: 12, scope: !80)
!275 = !DILocation(line: 136, column: 10, scope: !80)
!276 = !DILocation(line: 137, column: 4, scope: !80)
!277 = !DILocation(line: 138, column: 10, scope: !80)
!278 = !DILocation(line: 138, column: 16, scope: !80)
!279 = !DILocation(line: 138, column: 14, scope: !80)
!280 = !DILocation(line: 138, column: 2, scope: !80)
!281 = !DILocation(line: 0, scope: !80)
!282 = !DILocation(line: 0, scope: !119)
!283 = !DILocation(line: 139, column: 1, scope: !80)
!284 = distinct !DISubprogram(name: "qone", scope: !3, file: !3, line: 461, type: !81, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293}
!286 = !DILocalVariable(name: "x", arg: 1, scope: !284, file: !3, line: 461, type: !9)
!287 = !DILocalVariable(name: "p", scope: !284, file: !3, line: 468, type: !160)
!288 = !DILocalVariable(name: "q", scope: !284, file: !3, line: 468, type: !160)
!289 = !DILocalVariable(name: "s", scope: !284, file: !3, line: 472, type: !9)
!290 = !DILocalVariable(name: "r", scope: !284, file: !3, line: 472, type: !9)
!291 = !DILocalVariable(name: "z", scope: !284, file: !3, line: 472, type: !9)
!292 = !DILocalVariable(name: "ix", scope: !284, file: !3, line: 473, type: !95)
!293 = !DILocalVariable(name: "gh_u", scope: !294, file: !3, line: 474, type: !101)
!294 = distinct !DILexicalBlock(scope: !284, file: !3, line: 474, column: 2)
!295 = !DILocation(line: 461, column: 28, scope: !284)
!296 = !DILocation(line: 474, column: 2, scope: !294)
!297 = !DILocation(line: 473, column: 12, scope: !284)
!298 = !DILocation(line: 475, column: 5, scope: !284)
!299 = !DILocation(line: 476, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !284, file: !3, line: 476, column: 5)
!301 = !DILocation(line: 476, column: 5, scope: !284)
!302 = !DILocation(line: 476, column: 42, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !3, line: 476, column: 25)
!304 = !DILocation(line: 477, column: 12, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !3, line: 477, column: 10)
!306 = !DILocation(line: 477, column: 10, scope: !300)
!307 = !DILocation(line: 477, column: 42, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 477, column: 25)
!309 = !DILocation(line: 478, column: 12, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !3, line: 478, column: 10)
!311 = !DILocation(line: 478, column: 10, scope: !305)
!312 = !DILocation(line: 478, column: 42, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !3, line: 478, column: 25)
!314 = !DILocation(line: 0, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 479, column: 12)
!316 = !DILocation(line: 468, column: 16, scope: !284)
!317 = !DILocation(line: 468, column: 19, scope: !284)
!318 = !DILocation(line: 480, column: 12, scope: !284)
!319 = !DILocation(line: 480, column: 9, scope: !284)
!320 = !DILocation(line: 472, column: 14, scope: !284)
!321 = !DILocation(line: 481, column: 6, scope: !284)
!322 = !DILocation(line: 481, column: 14, scope: !284)
!323 = !DILocation(line: 481, column: 22, scope: !284)
!324 = !DILocation(line: 481, column: 30, scope: !284)
!325 = !DILocation(line: 481, column: 38, scope: !284)
!326 = !DILocation(line: 481, column: 45, scope: !284)
!327 = !DILocation(line: 481, column: 44, scope: !284)
!328 = !DILocation(line: 481, column: 42, scope: !284)
!329 = !DILocation(line: 481, column: 36, scope: !284)
!330 = !DILocation(line: 481, column: 34, scope: !284)
!331 = !DILocation(line: 481, column: 28, scope: !284)
!332 = !DILocation(line: 481, column: 26, scope: !284)
!333 = !DILocation(line: 481, column: 20, scope: !284)
!334 = !DILocation(line: 481, column: 18, scope: !284)
!335 = !DILocation(line: 481, column: 12, scope: !284)
!336 = !DILocation(line: 481, column: 10, scope: !284)
!337 = !DILocation(line: 472, column: 12, scope: !284)
!338 = !DILocation(line: 482, column: 13, scope: !284)
!339 = !DILocation(line: 482, column: 21, scope: !284)
!340 = !DILocation(line: 482, column: 29, scope: !284)
!341 = !DILocation(line: 482, column: 37, scope: !284)
!342 = !DILocation(line: 482, column: 45, scope: !284)
!343 = !DILocation(line: 482, column: 52, scope: !284)
!344 = !DILocation(line: 482, column: 51, scope: !284)
!345 = !DILocation(line: 482, column: 49, scope: !284)
!346 = !DILocation(line: 482, column: 43, scope: !284)
!347 = !DILocation(line: 482, column: 41, scope: !284)
!348 = !DILocation(line: 482, column: 35, scope: !284)
!349 = !DILocation(line: 482, column: 33, scope: !284)
!350 = !DILocation(line: 482, column: 27, scope: !284)
!351 = !DILocation(line: 482, column: 25, scope: !284)
!352 = !DILocation(line: 482, column: 19, scope: !284)
!353 = !DILocation(line: 482, column: 17, scope: !284)
!354 = !DILocation(line: 482, column: 11, scope: !284)
!355 = !DILocation(line: 482, column: 9, scope: !284)
!356 = !DILocation(line: 472, column: 10, scope: !284)
!357 = !DILocation(line: 483, column: 18, scope: !284)
!358 = !DILocation(line: 483, column: 15, scope: !284)
!359 = !DILocation(line: 483, column: 21, scope: !284)
!360 = !DILocation(line: 483, column: 2, scope: !284)
!361 = distinct !DISubprogram(name: "__ieee754_y1", scope: !3, file: !3, line: 165, type: !81, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!363 = !DILocalVariable(name: "x", arg: 1, scope: !361, file: !3, line: 165, type: !9)
!364 = !DILocalVariable(name: "z", scope: !361, file: !3, line: 171, type: !9)
!365 = !DILocalVariable(name: "s", scope: !361, file: !3, line: 171, type: !9)
!366 = !DILocalVariable(name: "c", scope: !361, file: !3, line: 171, type: !9)
!367 = !DILocalVariable(name: "ss", scope: !361, file: !3, line: 171, type: !9)
!368 = !DILocalVariable(name: "cc", scope: !361, file: !3, line: 171, type: !9)
!369 = !DILocalVariable(name: "u", scope: !361, file: !3, line: 171, type: !9)
!370 = !DILocalVariable(name: "v", scope: !361, file: !3, line: 171, type: !9)
!371 = !DILocalVariable(name: "hx", scope: !361, file: !3, line: 172, type: !95)
!372 = !DILocalVariable(name: "ix", scope: !361, file: !3, line: 172, type: !95)
!373 = !DILocalVariable(name: "lx", scope: !361, file: !3, line: 172, type: !95)
!374 = !DILocalVariable(name: "ew_u", scope: !375, file: !3, line: 174, type: !101)
!375 = distinct !DILexicalBlock(scope: !361, file: !3, line: 174, column: 2)
!376 = !DILocation(line: 165, column: 29, scope: !361)
!377 = !DILocation(line: 174, column: 2, scope: !375)
!378 = !DILocation(line: 172, column: 12, scope: !361)
!379 = !DILocation(line: 175, column: 24, scope: !361)
!380 = !DILocation(line: 172, column: 15, scope: !361)
!381 = !DILocation(line: 177, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !361, file: !3, line: 177, column: 5)
!383 = !DILocation(line: 177, column: 5, scope: !361)
!384 = !DILocation(line: 177, column: 37, scope: !382)
!385 = !DILocation(line: 177, column: 35, scope: !382)
!386 = !DILocation(line: 177, column: 32, scope: !382)
!387 = !DILocation(line: 177, column: 21, scope: !382)
!388 = !DILocation(line: 172, column: 18, scope: !361)
!389 = !DILocation(line: 178, column: 15, scope: !390)
!390 = distinct !DILexicalBlock(scope: !361, file: !3, line: 178, column: 12)
!391 = !DILocation(line: 178, column: 19, scope: !390)
!392 = !DILocation(line: 178, column: 12, scope: !361)
!393 = !DILocation(line: 179, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !361, file: !3, line: 179, column: 12)
!395 = !DILocation(line: 179, column: 12, scope: !361)
!396 = !DILocation(line: 180, column: 15, scope: !397)
!397 = distinct !DILexicalBlock(scope: !361, file: !3, line: 180, column: 12)
!398 = !DILocation(line: 180, column: 12, scope: !361)
!399 = !DILocation(line: 181, column: 21, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 180, column: 30)
!401 = !DILocation(line: 171, column: 12, scope: !361)
!402 = !DILocation(line: 182, column: 21, scope: !400)
!403 = !DILocation(line: 171, column: 14, scope: !361)
!404 = !DILocation(line: 183, column: 22, scope: !400)
!405 = !DILocation(line: 183, column: 24, scope: !400)
!406 = !DILocation(line: 171, column: 16, scope: !361)
!407 = !DILocation(line: 184, column: 23, scope: !400)
!408 = !DILocation(line: 171, column: 19, scope: !361)
!409 = !DILocation(line: 185, column: 22, scope: !410)
!410 = distinct !DILexicalBlock(scope: !400, file: !3, line: 185, column: 20)
!411 = !DILocation(line: 185, column: 20, scope: !400)
!412 = !DILocation(line: 201, column: 20, scope: !400)
!413 = !DILocation(line: 186, column: 30, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !3, line: 185, column: 35)
!415 = !DILocation(line: 186, column: 25, scope: !414)
!416 = !DILocation(line: 171, column: 9, scope: !361)
!417 = !DILocation(line: 187, column: 27, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !3, line: 187, column: 25)
!419 = !DILocation(line: 187, column: 30, scope: !418)
!420 = !DILocation(line: 187, column: 25, scope: !414)
!421 = !DILocation(line: 187, column: 43, scope: !418)
!422 = !DILocation(line: 187, column: 37, scope: !418)
!423 = !DILocation(line: 188, column: 43, scope: !418)
!424 = !DILocation(line: 0, scope: !400)
!425 = !DILocation(line: 201, column: 22, scope: !426)
!426 = distinct !DILexicalBlock(scope: !400, file: !3, line: 201, column: 20)
!427 = !DILocation(line: 324, column: 28, scope: !157, inlinedAt: !428)
!428 = distinct !DILocation(line: 203, column: 25, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !3, line: 202, column: 22)
!430 = !DILocation(line: 336, column: 19, scope: !157, inlinedAt: !428)
!431 = !DILocation(line: 339, column: 14, scope: !175, inlinedAt: !428)
!432 = !DILocation(line: 339, column: 12, scope: !157, inlinedAt: !428)
!433 = !DILocation(line: 339, column: 49, scope: !178, inlinedAt: !428)
!434 = !DILocation(line: 340, column: 19, scope: !180, inlinedAt: !428)
!435 = !DILocation(line: 340, column: 17, scope: !175, inlinedAt: !428)
!436 = !DILocation(line: 340, column: 49, scope: !183, inlinedAt: !428)
!437 = !DILocation(line: 341, column: 19, scope: !185, inlinedAt: !428)
!438 = !DILocation(line: 341, column: 17, scope: !180, inlinedAt: !428)
!439 = !DILocation(line: 341, column: 49, scope: !188, inlinedAt: !428)
!440 = !DILocation(line: 0, scope: !190, inlinedAt: !428)
!441 = !DILocation(line: 331, column: 16, scope: !157, inlinedAt: !428)
!442 = !DILocation(line: 331, column: 19, scope: !157, inlinedAt: !428)
!443 = !DILocation(line: 343, column: 19, scope: !157, inlinedAt: !428)
!444 = !DILocation(line: 343, column: 16, scope: !157, inlinedAt: !428)
!445 = !DILocation(line: 335, column: 9, scope: !157, inlinedAt: !428)
!446 = !DILocation(line: 344, column: 13, scope: !157, inlinedAt: !428)
!447 = !DILocation(line: 344, column: 21, scope: !157, inlinedAt: !428)
!448 = !DILocation(line: 344, column: 29, scope: !157, inlinedAt: !428)
!449 = !DILocation(line: 344, column: 37, scope: !157, inlinedAt: !428)
!450 = !DILocation(line: 344, column: 45, scope: !157, inlinedAt: !428)
!451 = !DILocation(line: 344, column: 52, scope: !157, inlinedAt: !428)
!452 = !DILocation(line: 344, column: 51, scope: !157, inlinedAt: !428)
!453 = !DILocation(line: 344, column: 49, scope: !157, inlinedAt: !428)
!454 = !DILocation(line: 344, column: 43, scope: !157, inlinedAt: !428)
!455 = !DILocation(line: 344, column: 41, scope: !157, inlinedAt: !428)
!456 = !DILocation(line: 344, column: 35, scope: !157, inlinedAt: !428)
!457 = !DILocation(line: 344, column: 33, scope: !157, inlinedAt: !428)
!458 = !DILocation(line: 344, column: 27, scope: !157, inlinedAt: !428)
!459 = !DILocation(line: 344, column: 25, scope: !157, inlinedAt: !428)
!460 = !DILocation(line: 344, column: 19, scope: !157, inlinedAt: !428)
!461 = !DILocation(line: 344, column: 17, scope: !157, inlinedAt: !428)
!462 = !DILocation(line: 335, column: 11, scope: !157, inlinedAt: !428)
!463 = !DILocation(line: 345, column: 20, scope: !157, inlinedAt: !428)
!464 = !DILocation(line: 345, column: 28, scope: !157, inlinedAt: !428)
!465 = !DILocation(line: 345, column: 36, scope: !157, inlinedAt: !428)
!466 = !DILocation(line: 345, column: 44, scope: !157, inlinedAt: !428)
!467 = !DILocation(line: 345, column: 51, scope: !157, inlinedAt: !428)
!468 = !DILocation(line: 345, column: 50, scope: !157, inlinedAt: !428)
!469 = !DILocation(line: 345, column: 48, scope: !157, inlinedAt: !428)
!470 = !DILocation(line: 345, column: 42, scope: !157, inlinedAt: !428)
!471 = !DILocation(line: 345, column: 40, scope: !157, inlinedAt: !428)
!472 = !DILocation(line: 345, column: 34, scope: !157, inlinedAt: !428)
!473 = !DILocation(line: 345, column: 32, scope: !157, inlinedAt: !428)
!474 = !DILocation(line: 345, column: 26, scope: !157, inlinedAt: !428)
!475 = !DILocation(line: 345, column: 24, scope: !157, inlinedAt: !428)
!476 = !DILocation(line: 345, column: 18, scope: !157, inlinedAt: !428)
!477 = !DILocation(line: 345, column: 16, scope: !157, inlinedAt: !428)
!478 = !DILocation(line: 335, column: 13, scope: !157, inlinedAt: !428)
!479 = !DILocation(line: 346, column: 22, scope: !157, inlinedAt: !428)
!480 = !DILocation(line: 346, column: 19, scope: !157, inlinedAt: !428)
!481 = !DILocation(line: 346, column: 9, scope: !157, inlinedAt: !428)
!482 = !DILocation(line: 171, column: 22, scope: !361)
!483 = !DILocation(line: 203, column: 38, scope: !429)
!484 = !DILocation(line: 171, column: 24, scope: !361)
!485 = !DILocation(line: 204, column: 37, scope: !429)
!486 = !DILocation(line: 204, column: 42, scope: !429)
!487 = !DILocation(line: 204, column: 40, scope: !429)
!488 = !DILocation(line: 0, scope: !426)
!489 = !DILocation(line: 206, column: 17, scope: !400)
!490 = !DILocation(line: 208, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !361, file: !3, line: 208, column: 12)
!492 = !DILocation(line: 208, column: 12, scope: !361)
!493 = !DILocation(line: 209, column: 24, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !3, line: 208, column: 28)
!495 = !DILocation(line: 209, column: 13, scope: !494)
!496 = !DILocation(line: 211, column: 14, scope: !361)
!497 = !DILocation(line: 212, column: 47, scope: !361)
!498 = !DILocation(line: 212, column: 38, scope: !361)
!499 = !DILocation(line: 212, column: 36, scope: !361)
!500 = !DILocation(line: 212, column: 29, scope: !361)
!501 = !DILocation(line: 212, column: 27, scope: !361)
!502 = !DILocation(line: 212, column: 20, scope: !361)
!503 = !DILocation(line: 212, column: 18, scope: !361)
!504 = !DILocation(line: 213, column: 54, scope: !361)
!505 = !DILocation(line: 213, column: 52, scope: !361)
!506 = !DILocation(line: 213, column: 45, scope: !361)
!507 = !DILocation(line: 213, column: 43, scope: !361)
!508 = !DILocation(line: 213, column: 36, scope: !361)
!509 = !DILocation(line: 213, column: 34, scope: !361)
!510 = !DILocation(line: 213, column: 27, scope: !361)
!511 = !DILocation(line: 213, column: 25, scope: !361)
!512 = !DILocation(line: 213, column: 18, scope: !361)
!513 = !DILocation(line: 213, column: 16, scope: !361)
!514 = !DILocation(line: 214, column: 20, scope: !361)
!515 = !DILocation(line: 214, column: 17, scope: !361)
!516 = !DILocation(line: 214, column: 31, scope: !361)
!517 = !DILocation(line: 214, column: 47, scope: !361)
!518 = !DILocation(line: 214, column: 46, scope: !361)
!519 = !DILocation(line: 214, column: 67, scope: !361)
!520 = !DILocation(line: 214, column: 63, scope: !361)
!521 = !DILocation(line: 214, column: 29, scope: !361)
!522 = !DILocation(line: 214, column: 24, scope: !361)
!523 = !DILocation(line: 214, column: 9, scope: !361)
!524 = !DILocation(line: 0, scope: !361)
!525 = !DILocation(line: 0, scope: !382)
!526 = !DILocation(line: 215, column: 1, scope: !361)
