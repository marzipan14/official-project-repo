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

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_j1(double) local_unnamed_addr #0 !dbg !80 {
  %2 = bitcast double %0 to i64, !dbg !114
  %3 = lshr i64 %2, 32, !dbg !114
  %4 = trunc i64 %3 to i32, !dbg !114
  %5 = and i32 %4, 2147483647, !dbg !116
  %6 = icmp ugt i32 %5, 2146435071, !dbg !118
  br i1 %6, label %7, label %9, !dbg !120

; <label>:7:                                      ; preds = %1
  %8 = fdiv double 1.000000e+00, %0, !dbg !121
  br label %188, !dbg !122

; <label>:9:                                      ; preds = %1
  %10 = tail call double @fabs(double %0) #3, !dbg !123
  %11 = icmp ugt i32 %5, 1073741823, !dbg !125
  br i1 %11, label %12, label %158, !dbg !127

; <label>:12:                                     ; preds = %9
  %13 = tail call double @sin(double %10) #3, !dbg !128
  %14 = tail call double @cos(double %10) #3, !dbg !131
  %15 = fsub double -0.000000e+00, %13, !dbg !133
  %16 = fsub double %15, %14, !dbg !134
  %17 = fsub double %13, %14, !dbg !136
  %18 = icmp ult i32 %5, 2145386496, !dbg !138
  br i1 %18, label %19, label %150, !dbg !140

; <label>:19:                                     ; preds = %12
  %20 = fadd double %10, %10, !dbg !141
  %21 = tail call double @cos(double %20) #3, !dbg !143
  %22 = fmul double %13, %14, !dbg !145
  %23 = fcmp ogt double %22, 0.000000e+00, !dbg !147
  br i1 %23, label %24, label %26, !dbg !148

; <label>:24:                                     ; preds = %19
  %25 = fdiv double %21, %16, !dbg !149
  br label %28, !dbg !150

; <label>:26:                                     ; preds = %19
  %27 = fdiv double %21, %17, !dbg !151
  br label %28

; <label>:28:                                     ; preds = %24, %26
  %29 = phi double [ %25, %24 ], [ %17, %26 ], !dbg !152
  %30 = phi double [ %16, %24 ], [ %27, %26 ], !dbg !152
  %31 = icmp ugt i32 %5, 1207959552, !dbg !153
  br i1 %31, label %150, label %32, !dbg !155

; <label>:32:                                     ; preds = %28
  %33 = bitcast double %10 to i64, !dbg !171
  %34 = lshr i64 %33, 32, !dbg !171
  %35 = trunc i64 %34 to i32, !dbg !171
  %36 = and i32 %35, 2147483647, !dbg !173
  %37 = icmp ugt i32 %36, 1075838975, !dbg !174
  br i1 %37, label %44, label %38, !dbg !176

; <label>:38:                                     ; preds = %32
  %39 = icmp ugt i32 %36, 1074933386, !dbg !177
  br i1 %39, label %44, label %40, !dbg !179

; <label>:40:                                     ; preds = %38
  %41 = icmp ugt i32 %36, 1074191212, !dbg !180
  %42 = select i1 %41, double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i64 0, i64 0), !dbg !182
  %43 = select i1 %41, double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i64 0, i64 0), !dbg !182
  br label %44, !dbg !182

; <label>:44:                                     ; preds = %32, %38, %40
  %45 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @ps8, i64 0, i64 0), %32 ], [ getelementptr inbounds ([5 x double], [5 x double]* @ps5, i64 0, i64 0), %38 ], [ %42, %40 ], !dbg !184
  %46 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pr8, i64 0, i64 0), %32 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pr5, i64 0, i64 0), %38 ], [ %43, %40 ], !dbg !184
  %47 = fmul double %10, %10, !dbg !188
  %48 = fdiv double 1.000000e+00, %47, !dbg !189
  %49 = load double, double* %46, align 8, !dbg !191, !tbaa !192
  %50 = getelementptr inbounds double, double* %46, i64 1, !dbg !196
  %51 = load double, double* %50, align 8, !dbg !196, !tbaa !192
  %52 = getelementptr inbounds double, double* %46, i64 2, !dbg !197
  %53 = load double, double* %52, align 8, !dbg !197, !tbaa !192
  %54 = getelementptr inbounds double, double* %46, i64 3, !dbg !198
  %55 = load double, double* %54, align 8, !dbg !198, !tbaa !192
  %56 = getelementptr inbounds double, double* %46, i64 4, !dbg !199
  %57 = load double, double* %56, align 8, !dbg !199, !tbaa !192
  %58 = getelementptr inbounds double, double* %46, i64 5, !dbg !200
  %59 = load double, double* %58, align 8, !dbg !200, !tbaa !192
  %60 = fmul double %48, %59, !dbg !201
  %61 = fadd double %57, %60, !dbg !202
  %62 = fmul double %48, %61, !dbg !203
  %63 = fadd double %55, %62, !dbg !204
  %64 = fmul double %48, %63, !dbg !205
  %65 = fadd double %53, %64, !dbg !206
  %66 = fmul double %48, %65, !dbg !207
  %67 = fadd double %51, %66, !dbg !208
  %68 = fmul double %48, %67, !dbg !209
  %69 = fadd double %49, %68, !dbg !210
  %70 = load double, double* %45, align 8, !dbg !212, !tbaa !192
  %71 = getelementptr inbounds double, double* %45, i64 1, !dbg !213
  %72 = load double, double* %71, align 8, !dbg !213, !tbaa !192
  %73 = getelementptr inbounds double, double* %45, i64 2, !dbg !214
  %74 = load double, double* %73, align 8, !dbg !214, !tbaa !192
  %75 = getelementptr inbounds double, double* %45, i64 3, !dbg !215
  %76 = load double, double* %75, align 8, !dbg !215, !tbaa !192
  %77 = getelementptr inbounds double, double* %45, i64 4, !dbg !216
  %78 = load double, double* %77, align 8, !dbg !216, !tbaa !192
  %79 = fmul double %48, %78, !dbg !217
  %80 = fadd double %76, %79, !dbg !218
  %81 = fmul double %48, %80, !dbg !219
  %82 = fadd double %74, %81, !dbg !220
  %83 = fmul double %48, %82, !dbg !221
  %84 = fadd double %72, %83, !dbg !222
  %85 = fmul double %48, %84, !dbg !223
  %86 = fadd double %70, %85, !dbg !224
  %87 = fmul double %48, %86, !dbg !225
  %88 = fadd double %87, 1.000000e+00, !dbg !226
  %89 = fdiv double %69, %88, !dbg !228
  %90 = fadd double %89, 1.000000e+00, !dbg !229
  br i1 %37, label %97, label %91, !dbg !245

; <label>:91:                                     ; preds = %44
  %92 = icmp ugt i32 %36, 1074933386, !dbg !246
  br i1 %92, label %97, label %93, !dbg !249

; <label>:93:                                     ; preds = %91
  %94 = icmp ugt i32 %36, 1074191212, !dbg !250
  %95 = select i1 %94, double* getelementptr inbounds ([6 x double], [6 x double]* @qs3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qs2, i64 0, i64 0), !dbg !252
  %96 = select i1 %94, double* getelementptr inbounds ([6 x double], [6 x double]* @qr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qr2, i64 0, i64 0), !dbg !252
  br label %97, !dbg !252

; <label>:97:                                     ; preds = %44, %91, %93
  %98 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qs8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qs5, i64 0, i64 0), %91 ], [ %95, %93 ], !dbg !254
  %99 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qr8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qr5, i64 0, i64 0), %91 ], [ %96, %93 ], !dbg !254
  %100 = load double, double* %99, align 8, !dbg !259, !tbaa !192
  %101 = getelementptr inbounds double, double* %99, i64 1, !dbg !260
  %102 = load double, double* %101, align 8, !dbg !260, !tbaa !192
  %103 = getelementptr inbounds double, double* %99, i64 2, !dbg !261
  %104 = load double, double* %103, align 8, !dbg !261, !tbaa !192
  %105 = getelementptr inbounds double, double* %99, i64 3, !dbg !262
  %106 = load double, double* %105, align 8, !dbg !262, !tbaa !192
  %107 = getelementptr inbounds double, double* %99, i64 4, !dbg !263
  %108 = load double, double* %107, align 8, !dbg !263, !tbaa !192
  %109 = getelementptr inbounds double, double* %99, i64 5, !dbg !264
  %110 = load double, double* %109, align 8, !dbg !264, !tbaa !192
  %111 = fmul double %48, %110, !dbg !265
  %112 = fadd double %108, %111, !dbg !266
  %113 = fmul double %48, %112, !dbg !267
  %114 = fadd double %106, %113, !dbg !268
  %115 = fmul double %48, %114, !dbg !269
  %116 = fadd double %104, %115, !dbg !270
  %117 = fmul double %48, %116, !dbg !271
  %118 = fadd double %102, %117, !dbg !272
  %119 = fmul double %48, %118, !dbg !273
  %120 = fadd double %100, %119, !dbg !274
  %121 = load double, double* %98, align 8, !dbg !276, !tbaa !192
  %122 = getelementptr inbounds double, double* %98, i64 1, !dbg !277
  %123 = load double, double* %122, align 8, !dbg !277, !tbaa !192
  %124 = getelementptr inbounds double, double* %98, i64 2, !dbg !278
  %125 = load double, double* %124, align 8, !dbg !278, !tbaa !192
  %126 = getelementptr inbounds double, double* %98, i64 3, !dbg !279
  %127 = load double, double* %126, align 8, !dbg !279, !tbaa !192
  %128 = getelementptr inbounds double, double* %98, i64 4, !dbg !280
  %129 = load double, double* %128, align 8, !dbg !280, !tbaa !192
  %130 = getelementptr inbounds double, double* %98, i64 5, !dbg !281
  %131 = load double, double* %130, align 8, !dbg !281, !tbaa !192
  %132 = fmul double %48, %131, !dbg !282
  %133 = fadd double %129, %132, !dbg !283
  %134 = fmul double %48, %133, !dbg !284
  %135 = fadd double %127, %134, !dbg !285
  %136 = fmul double %48, %135, !dbg !286
  %137 = fadd double %125, %136, !dbg !287
  %138 = fmul double %48, %137, !dbg !288
  %139 = fadd double %123, %138, !dbg !289
  %140 = fmul double %48, %139, !dbg !290
  %141 = fadd double %121, %140, !dbg !291
  %142 = fmul double %48, %141, !dbg !292
  %143 = fadd double %142, 1.000000e+00, !dbg !293
  %144 = fdiv double %120, %143, !dbg !295
  %145 = fadd double %144, 3.750000e-01, !dbg !296
  %146 = fdiv double %145, %10, !dbg !297
  %147 = fmul double %29, %90, !dbg !299
  %148 = fmul double %30, %146, !dbg !300
  %149 = fsub double %147, %148, !dbg !301
  br label %150

; <label>:150:                                    ; preds = %28, %12, %97
  %151 = phi double [ %149, %97 ], [ %29, %28 ], [ %17, %12 ]
  %152 = fmul double %151, 0x3FE20DD750429B6D, !dbg !302
  %153 = tail call double @__ieee754_sqrt(double %10) #3, !dbg !302
  %154 = fdiv double %152, %153, !dbg !302
  %155 = icmp slt i32 %4, 0, !dbg !303
  %156 = fsub double -0.000000e+00, %154, !dbg !305
  %157 = select i1 %155, double %156, double %154, !dbg !306
  ret double %157, !dbg !306

; <label>:158:                                    ; preds = %9
  %159 = icmp ult i32 %5, 1044381696, !dbg !307
  %160 = fadd double %0, 1.000000e+300, !dbg !309
  %161 = fcmp ogt double %160, 1.000000e+00, !dbg !312
  %162 = and i1 %161, %159, !dbg !313
  br i1 %162, label %163, label %165, !dbg !313

; <label>:163:                                    ; preds = %158
  %164 = fmul double %0, 5.000000e-01, !dbg !314
  br label %188, !dbg !315

; <label>:165:                                    ; preds = %158
  %166 = fmul double %0, %0, !dbg !316
  %167 = fmul double %166, 0x3E6AAAFA46CA0BD9, !dbg !317
  %168 = fadd double %167, 0xBEF0C5C6BA169668, !dbg !318
  %169 = fmul double %166, %168, !dbg !319
  %170 = fadd double %169, 0x3F570D9F98472C61, !dbg !320
  %171 = fmul double %166, %170, !dbg !321
  %172 = fadd double %171, -6.250000e-02, !dbg !322
  %173 = fmul double %166, %172, !dbg !323
  %174 = fmul double %166, 0x3DAB2ACFCFB97ED8, !dbg !325
  %175 = fadd double %174, 0x3E35AC88C97DFF2C, !dbg !326
  %176 = fmul double %166, %175, !dbg !327
  %177 = fadd double %176, 0x3EB3BFF8333F8498, !dbg !328
  %178 = fmul double %166, %177, !dbg !329
  %179 = fadd double %178, 0x3F285F56B9CDF664, !dbg !330
  %180 = fmul double %166, %179, !dbg !331
  %181 = fadd double %180, 0x3F939D0B12637E53, !dbg !332
  %182 = fmul double %166, %181, !dbg !333
  %183 = fadd double %182, 1.000000e+00, !dbg !334
  %184 = fmul double %173, %0, !dbg !335
  %185 = fmul double %0, 5.000000e-01, !dbg !336
  %186 = fdiv double %184, %183, !dbg !337
  %187 = fadd double %185, %186, !dbg !338
  br label %188, !dbg !339

; <label>:188:                                    ; preds = %165, %163, %7
  %189 = phi double [ %8, %7 ], [ %164, %163 ], [ %187, %165 ], !dbg !340
  ret double %189, !dbg !341
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
define dso_local double @__ieee754_y1(double) local_unnamed_addr #0 !dbg !342 {
  %2 = bitcast double %0 to i64, !dbg !358
  %3 = lshr i64 %2, 32, !dbg !358
  %4 = trunc i64 %3 to i32, !dbg !358
  %5 = and i32 %4, 2147483647, !dbg !360
  %6 = icmp ugt i32 %5, 2146435071, !dbg !362
  br i1 %6, label %7, label %11, !dbg !364

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !365
  %9 = fadd double %8, %0, !dbg !366
  %10 = fdiv double 1.000000e+00, %9, !dbg !367
  br label %194, !dbg !368

; <label>:11:                                     ; preds = %1
  %12 = trunc i64 %2 to i32, !dbg !358
  %13 = or i32 %5, %12, !dbg !370
  %14 = icmp eq i32 %13, 0, !dbg !372
  br i1 %14, label %194, label %15, !dbg !373

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i32 %4, 0, !dbg !374
  br i1 %16, label %194, label %17, !dbg !376

; <label>:17:                                     ; preds = %15
  %18 = icmp ugt i32 %5, 1073741823, !dbg !377
  br i1 %18, label %19, label %161, !dbg !379

; <label>:19:                                     ; preds = %17
  %20 = tail call double @sin(double %0) #3, !dbg !380
  %21 = tail call double @cos(double %0) #3, !dbg !383
  %22 = fsub double -0.000000e+00, %20, !dbg !385
  %23 = fsub double %22, %21, !dbg !386
  %24 = fsub double %20, %21, !dbg !388
  %25 = icmp ult i32 %5, 2145386496, !dbg !390
  br i1 %25, label %26, label %39, !dbg !392

; <label>:26:                                     ; preds = %19
  %27 = fadd double %0, %0, !dbg !393
  %28 = tail call double @cos(double %27) #3, !dbg !395
  %29 = fmul double %20, %21, !dbg !397
  %30 = fcmp ogt double %29, 0.000000e+00, !dbg !399
  br i1 %30, label %31, label %33, !dbg !400

; <label>:31:                                     ; preds = %26
  %32 = fdiv double %28, %23, !dbg !401
  br label %35, !dbg !402

; <label>:33:                                     ; preds = %26
  %34 = fdiv double %28, %24, !dbg !403
  br label %35

; <label>:35:                                     ; preds = %31, %33
  %36 = phi double [ %32, %31 ], [ %24, %33 ], !dbg !404
  %37 = phi double [ %23, %31 ], [ %34, %33 ], !dbg !404
  %38 = icmp ugt i32 %5, 1207959552, !dbg !405
  br i1 %38, label %39, label %44, !dbg !407

; <label>:39:                                     ; preds = %19, %35
  %40 = phi double [ %37, %35 ], [ %23, %19 ]
  %41 = fmul double %40, 0x3FE20DD750429B6D, !dbg !408
  %42 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !409
  %43 = fdiv double %41, %42, !dbg !410
  br label %194, !dbg !411

; <label>:44:                                     ; preds = %35
  %45 = icmp ugt i32 %5, 1075838975, !dbg !416
  br i1 %45, label %52, label %46, !dbg !417

; <label>:46:                                     ; preds = %44
  %47 = icmp ugt i32 %5, 1074933386, !dbg !418
  br i1 %47, label %52, label %48, !dbg !419

; <label>:48:                                     ; preds = %46
  %49 = icmp ugt i32 %5, 1074191212, !dbg !420
  %50 = select i1 %49, double* getelementptr inbounds ([5 x double], [5 x double]* @ps3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @ps2, i64 0, i64 0), !dbg !421
  %51 = select i1 %49, double* getelementptr inbounds ([6 x double], [6 x double]* @pr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pr2, i64 0, i64 0), !dbg !421
  br label %52, !dbg !421

; <label>:52:                                     ; preds = %44, %46, %48
  %53 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @ps8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([5 x double], [5 x double]* @ps5, i64 0, i64 0), %46 ], [ %50, %48 ], !dbg !422
  %54 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pr8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pr5, i64 0, i64 0), %46 ], [ %51, %48 ], !dbg !422
  %55 = fmul double %0, %0, !dbg !425
  %56 = fdiv double 1.000000e+00, %55, !dbg !426
  %57 = load double, double* %54, align 8, !dbg !428, !tbaa !192
  %58 = getelementptr inbounds double, double* %54, i64 1, !dbg !429
  %59 = load double, double* %58, align 8, !dbg !429, !tbaa !192
  %60 = getelementptr inbounds double, double* %54, i64 2, !dbg !430
  %61 = load double, double* %60, align 8, !dbg !430, !tbaa !192
  %62 = getelementptr inbounds double, double* %54, i64 3, !dbg !431
  %63 = load double, double* %62, align 8, !dbg !431, !tbaa !192
  %64 = getelementptr inbounds double, double* %54, i64 4, !dbg !432
  %65 = load double, double* %64, align 8, !dbg !432, !tbaa !192
  %66 = getelementptr inbounds double, double* %54, i64 5, !dbg !433
  %67 = load double, double* %66, align 8, !dbg !433, !tbaa !192
  %68 = fmul double %56, %67, !dbg !434
  %69 = fadd double %65, %68, !dbg !435
  %70 = fmul double %56, %69, !dbg !436
  %71 = fadd double %63, %70, !dbg !437
  %72 = fmul double %56, %71, !dbg !438
  %73 = fadd double %61, %72, !dbg !439
  %74 = fmul double %56, %73, !dbg !440
  %75 = fadd double %59, %74, !dbg !441
  %76 = fmul double %56, %75, !dbg !442
  %77 = fadd double %57, %76, !dbg !443
  %78 = load double, double* %53, align 8, !dbg !445, !tbaa !192
  %79 = getelementptr inbounds double, double* %53, i64 1, !dbg !446
  %80 = load double, double* %79, align 8, !dbg !446, !tbaa !192
  %81 = getelementptr inbounds double, double* %53, i64 2, !dbg !447
  %82 = load double, double* %81, align 8, !dbg !447, !tbaa !192
  %83 = getelementptr inbounds double, double* %53, i64 3, !dbg !448
  %84 = load double, double* %83, align 8, !dbg !448, !tbaa !192
  %85 = getelementptr inbounds double, double* %53, i64 4, !dbg !449
  %86 = load double, double* %85, align 8, !dbg !449, !tbaa !192
  %87 = fmul double %56, %86, !dbg !450
  %88 = fadd double %84, %87, !dbg !451
  %89 = fmul double %56, %88, !dbg !452
  %90 = fadd double %82, %89, !dbg !453
  %91 = fmul double %56, %90, !dbg !454
  %92 = fadd double %80, %91, !dbg !455
  %93 = fmul double %56, %92, !dbg !456
  %94 = fadd double %78, %93, !dbg !457
  %95 = fmul double %56, %94, !dbg !458
  %96 = fadd double %95, 1.000000e+00, !dbg !459
  %97 = fdiv double %77, %96, !dbg !461
  %98 = fadd double %97, 1.000000e+00, !dbg !462
  br i1 %45, label %105, label %99, !dbg !467

; <label>:99:                                     ; preds = %52
  %100 = icmp ugt i32 %5, 1074933386, !dbg !468
  br i1 %100, label %105, label %101, !dbg !469

; <label>:101:                                    ; preds = %99
  %102 = icmp ugt i32 %5, 1074191212, !dbg !470
  %103 = select i1 %102, double* getelementptr inbounds ([6 x double], [6 x double]* @qs3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qs2, i64 0, i64 0), !dbg !471
  %104 = select i1 %102, double* getelementptr inbounds ([6 x double], [6 x double]* @qr3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qr2, i64 0, i64 0), !dbg !471
  br label %105, !dbg !471

; <label>:105:                                    ; preds = %52, %99, %101
  %106 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qs8, i64 0, i64 0), %52 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qs5, i64 0, i64 0), %99 ], [ %103, %101 ], !dbg !472
  %107 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qr8, i64 0, i64 0), %52 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qr5, i64 0, i64 0), %99 ], [ %104, %101 ], !dbg !472
  %108 = load double, double* %107, align 8, !dbg !476, !tbaa !192
  %109 = getelementptr inbounds double, double* %107, i64 1, !dbg !477
  %110 = load double, double* %109, align 8, !dbg !477, !tbaa !192
  %111 = getelementptr inbounds double, double* %107, i64 2, !dbg !478
  %112 = load double, double* %111, align 8, !dbg !478, !tbaa !192
  %113 = getelementptr inbounds double, double* %107, i64 3, !dbg !479
  %114 = load double, double* %113, align 8, !dbg !479, !tbaa !192
  %115 = getelementptr inbounds double, double* %107, i64 4, !dbg !480
  %116 = load double, double* %115, align 8, !dbg !480, !tbaa !192
  %117 = getelementptr inbounds double, double* %107, i64 5, !dbg !481
  %118 = load double, double* %117, align 8, !dbg !481, !tbaa !192
  %119 = fmul double %56, %118, !dbg !482
  %120 = fadd double %116, %119, !dbg !483
  %121 = fmul double %56, %120, !dbg !484
  %122 = fadd double %114, %121, !dbg !485
  %123 = fmul double %56, %122, !dbg !486
  %124 = fadd double %112, %123, !dbg !487
  %125 = fmul double %56, %124, !dbg !488
  %126 = fadd double %110, %125, !dbg !489
  %127 = fmul double %56, %126, !dbg !490
  %128 = fadd double %108, %127, !dbg !491
  %129 = load double, double* %106, align 8, !dbg !493, !tbaa !192
  %130 = getelementptr inbounds double, double* %106, i64 1, !dbg !494
  %131 = load double, double* %130, align 8, !dbg !494, !tbaa !192
  %132 = getelementptr inbounds double, double* %106, i64 2, !dbg !495
  %133 = load double, double* %132, align 8, !dbg !495, !tbaa !192
  %134 = getelementptr inbounds double, double* %106, i64 3, !dbg !496
  %135 = load double, double* %134, align 8, !dbg !496, !tbaa !192
  %136 = getelementptr inbounds double, double* %106, i64 4, !dbg !497
  %137 = load double, double* %136, align 8, !dbg !497, !tbaa !192
  %138 = getelementptr inbounds double, double* %106, i64 5, !dbg !498
  %139 = load double, double* %138, align 8, !dbg !498, !tbaa !192
  %140 = fmul double %56, %139, !dbg !499
  %141 = fadd double %137, %140, !dbg !500
  %142 = fmul double %56, %141, !dbg !501
  %143 = fadd double %135, %142, !dbg !502
  %144 = fmul double %56, %143, !dbg !503
  %145 = fadd double %133, %144, !dbg !504
  %146 = fmul double %56, %145, !dbg !505
  %147 = fadd double %131, %146, !dbg !506
  %148 = fmul double %56, %147, !dbg !507
  %149 = fadd double %129, %148, !dbg !508
  %150 = fmul double %56, %149, !dbg !509
  %151 = fadd double %150, 1.000000e+00, !dbg !510
  %152 = fdiv double %128, %151, !dbg !512
  %153 = fadd double %152, 3.750000e-01, !dbg !513
  %154 = fdiv double %153, %0, !dbg !514
  %155 = fmul double %37, %98, !dbg !516
  %156 = fmul double %36, %154, !dbg !517
  %157 = fadd double %155, %156, !dbg !518
  %158 = fmul double %157, 0x3FE20DD750429B6D, !dbg !519
  %159 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !520
  %160 = fdiv double %158, %159, !dbg !521
  br label %194

; <label>:161:                                    ; preds = %17
  %162 = icmp ult i32 %5, 1016070145, !dbg !522
  br i1 %162, label %163, label %165, !dbg !524

; <label>:163:                                    ; preds = %161
  %164 = fdiv double 0xBFE45F306DC9C883, %0, !dbg !525
  br label %194, !dbg !527

; <label>:165:                                    ; preds = %161
  %166 = fmul double %0, %0, !dbg !528
  %167 = fmul double %166, 0x3E78AC00569105B8, !dbg !529
  %168 = fsub double 0x3EF8AB038FA6B88E, %167, !dbg !529
  %169 = fmul double %166, %168, !dbg !530
  %170 = fadd double %169, 0xBF5F55E54844F50F, !dbg !531
  %171 = fmul double %166, %170, !dbg !532
  %172 = fadd double %171, 0x3FA9D3C776292CD1, !dbg !533
  %173 = fmul double %166, %172, !dbg !534
  %174 = fadd double %173, 0xBFC91866143CBC8A, !dbg !535
  %175 = fmul double %166, 0x3DB25039DACA772A, !dbg !536
  %176 = fadd double %175, 0x3E3ABF1D5BA69A86, !dbg !537
  %177 = fmul double %166, %176, !dbg !538
  %178 = fadd double %177, 0x3EB6C05A894E8CA6, !dbg !539
  %179 = fmul double %166, %178, !dbg !540
  %180 = fadd double %179, 0x3F2A8C896C257764, !dbg !541
  %181 = fmul double %166, %180, !dbg !542
  %182 = fadd double %181, 0x3F94650D3F4DA9F0, !dbg !543
  %183 = fmul double %166, %182, !dbg !544
  %184 = fadd double %183, 1.000000e+00, !dbg !545
  %185 = fdiv double %174, %184, !dbg !546
  %186 = fmul double %185, %0, !dbg !547
  %187 = tail call double @__ieee754_j1(double %0) #4, !dbg !548
  %188 = tail call double @__ieee754_log(double %0) #3, !dbg !549
  %189 = fmul double %187, %188, !dbg !550
  %190 = fdiv double 1.000000e+00, %0, !dbg !551
  %191 = fsub double %189, %190, !dbg !552
  %192 = fmul double %191, 0x3FE45F306DC9C883, !dbg !553
  %193 = fadd double %186, %192, !dbg !554
  br label %194, !dbg !555

; <label>:194:                                    ; preds = %39, %105, %15, %11, %165, %163, %7
  %195 = phi double [ %10, %7 ], [ %164, %163 ], [ %193, %165 ], [ 0xFFF0000000000000, %11 ], [ 0x7FF8000000000000, %15 ], [ %43, %39 ], [ %160, %105 ], !dbg !556
  ret double %195, !dbg !557
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
!141 = !DILocation(line: 115, column: 16, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 114, column: 21)
!143 = !DILocation(line: 115, column: 11, scope: !142)
!144 = !DILocation(line: 102, column: 9, scope: !80)
!145 = !DILocation(line: 116, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 116, column: 11)
!147 = !DILocation(line: 116, column: 16, scope: !146)
!148 = !DILocation(line: 116, column: 11, scope: !142)
!149 = !DILocation(line: 116, column: 29, scope: !146)
!150 = !DILocation(line: 116, column: 23, scope: !146)
!151 = !DILocation(line: 117, column: 23, scope: !146)
!152 = !DILocation(line: 0, scope: !129)
!153 = !DILocation(line: 123, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !129, file: !3, line: 123, column: 6)
!155 = !DILocation(line: 123, column: 6, scope: !129)
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
!170 = distinct !DILexicalBlock(scope: !154, file: !3, line: 124, column: 8)
!171 = !DILocation(line: 337, column: 2, scope: !167, inlinedAt: !169)
!172 = !DILocation(line: 336, column: 19, scope: !157, inlinedAt: !169)
!173 = !DILocation(line: 338, column: 5, scope: !157, inlinedAt: !169)
!174 = !DILocation(line: 339, column: 14, scope: !175, inlinedAt: !169)
!175 = distinct !DILexicalBlock(scope: !157, file: !3, line: 339, column: 12)
!176 = !DILocation(line: 339, column: 12, scope: !157, inlinedAt: !169)
!177 = !DILocation(line: 340, column: 19, scope: !178, inlinedAt: !169)
!178 = distinct !DILexicalBlock(scope: !175, file: !3, line: 340, column: 17)
!179 = !DILocation(line: 340, column: 17, scope: !175, inlinedAt: !169)
!180 = !DILocation(line: 341, column: 19, scope: !181, inlinedAt: !169)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 341, column: 17)
!182 = !DILocation(line: 341, column: 49, scope: !183, inlinedAt: !169)
!183 = distinct !DILexicalBlock(scope: !181, file: !3, line: 341, column: 32)
!184 = !DILocation(line: 0, scope: !185, inlinedAt: !169)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 342, column: 14)
!186 = !DILocation(line: 331, column: 16, scope: !157, inlinedAt: !169)
!187 = !DILocation(line: 331, column: 19, scope: !157, inlinedAt: !169)
!188 = !DILocation(line: 343, column: 19, scope: !157, inlinedAt: !169)
!189 = !DILocation(line: 343, column: 16, scope: !157, inlinedAt: !169)
!190 = !DILocation(line: 335, column: 9, scope: !157, inlinedAt: !169)
!191 = !DILocation(line: 344, column: 13, scope: !157, inlinedAt: !169)
!192 = !{!193, !193, i64 0}
!193 = !{!"double", !194, i64 0}
!194 = !{!"omnipotent char", !195, i64 0}
!195 = !{!"Simple C/C++ TBAA"}
!196 = !DILocation(line: 344, column: 21, scope: !157, inlinedAt: !169)
!197 = !DILocation(line: 344, column: 29, scope: !157, inlinedAt: !169)
!198 = !DILocation(line: 344, column: 37, scope: !157, inlinedAt: !169)
!199 = !DILocation(line: 344, column: 45, scope: !157, inlinedAt: !169)
!200 = !DILocation(line: 344, column: 52, scope: !157, inlinedAt: !169)
!201 = !DILocation(line: 344, column: 51, scope: !157, inlinedAt: !169)
!202 = !DILocation(line: 344, column: 49, scope: !157, inlinedAt: !169)
!203 = !DILocation(line: 344, column: 43, scope: !157, inlinedAt: !169)
!204 = !DILocation(line: 344, column: 41, scope: !157, inlinedAt: !169)
!205 = !DILocation(line: 344, column: 35, scope: !157, inlinedAt: !169)
!206 = !DILocation(line: 344, column: 33, scope: !157, inlinedAt: !169)
!207 = !DILocation(line: 344, column: 27, scope: !157, inlinedAt: !169)
!208 = !DILocation(line: 344, column: 25, scope: !157, inlinedAt: !169)
!209 = !DILocation(line: 344, column: 19, scope: !157, inlinedAt: !169)
!210 = !DILocation(line: 344, column: 17, scope: !157, inlinedAt: !169)
!211 = !DILocation(line: 335, column: 11, scope: !157, inlinedAt: !169)
!212 = !DILocation(line: 345, column: 20, scope: !157, inlinedAt: !169)
!213 = !DILocation(line: 345, column: 28, scope: !157, inlinedAt: !169)
!214 = !DILocation(line: 345, column: 36, scope: !157, inlinedAt: !169)
!215 = !DILocation(line: 345, column: 44, scope: !157, inlinedAt: !169)
!216 = !DILocation(line: 345, column: 51, scope: !157, inlinedAt: !169)
!217 = !DILocation(line: 345, column: 50, scope: !157, inlinedAt: !169)
!218 = !DILocation(line: 345, column: 48, scope: !157, inlinedAt: !169)
!219 = !DILocation(line: 345, column: 42, scope: !157, inlinedAt: !169)
!220 = !DILocation(line: 345, column: 40, scope: !157, inlinedAt: !169)
!221 = !DILocation(line: 345, column: 34, scope: !157, inlinedAt: !169)
!222 = !DILocation(line: 345, column: 32, scope: !157, inlinedAt: !169)
!223 = !DILocation(line: 345, column: 26, scope: !157, inlinedAt: !169)
!224 = !DILocation(line: 345, column: 24, scope: !157, inlinedAt: !169)
!225 = !DILocation(line: 345, column: 18, scope: !157, inlinedAt: !169)
!226 = !DILocation(line: 345, column: 16, scope: !157, inlinedAt: !169)
!227 = !DILocation(line: 335, column: 13, scope: !157, inlinedAt: !169)
!228 = !DILocation(line: 346, column: 22, scope: !157, inlinedAt: !169)
!229 = !DILocation(line: 346, column: 19, scope: !157, inlinedAt: !169)
!230 = !DILocation(line: 102, column: 24, scope: !80)
!231 = !DILocalVariable(name: "x", arg: 1, scope: !232, file: !3, line: 461, type: !9)
!232 = distinct !DISubprogram(name: "qone", scope: !3, file: !3, line: 461, type: !81, isLocal: true, isDefinition: true, scopeLine: 466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!233 = !{!231, !234, !235, !236, !237, !238, !239, !240}
!234 = !DILocalVariable(name: "p", scope: !232, file: !3, line: 468, type: !160)
!235 = !DILocalVariable(name: "q", scope: !232, file: !3, line: 468, type: !160)
!236 = !DILocalVariable(name: "s", scope: !232, file: !3, line: 472, type: !9)
!237 = !DILocalVariable(name: "r", scope: !232, file: !3, line: 472, type: !9)
!238 = !DILocalVariable(name: "z", scope: !232, file: !3, line: 472, type: !9)
!239 = !DILocalVariable(name: "ix", scope: !232, file: !3, line: 473, type: !95)
!240 = !DILocalVariable(name: "gh_u", scope: !241, file: !3, line: 474, type: !101)
!241 = distinct !DILexicalBlock(scope: !232, file: !3, line: 474, column: 2)
!242 = !DILocation(line: 461, column: 28, scope: !232, inlinedAt: !243)
!243 = distinct !DILocation(line: 125, column: 24, scope: !170)
!244 = !DILocation(line: 473, column: 12, scope: !232, inlinedAt: !243)
!245 = !DILocation(line: 476, column: 5, scope: !232, inlinedAt: !243)
!246 = !DILocation(line: 477, column: 12, scope: !247, inlinedAt: !243)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 477, column: 10)
!248 = distinct !DILexicalBlock(scope: !232, file: !3, line: 476, column: 5)
!249 = !DILocation(line: 477, column: 10, scope: !248, inlinedAt: !243)
!250 = !DILocation(line: 478, column: 12, scope: !251, inlinedAt: !243)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 478, column: 10)
!252 = !DILocation(line: 478, column: 42, scope: !253, inlinedAt: !243)
!253 = distinct !DILexicalBlock(scope: !251, file: !3, line: 478, column: 25)
!254 = !DILocation(line: 0, scope: !255, inlinedAt: !243)
!255 = distinct !DILexicalBlock(scope: !251, file: !3, line: 479, column: 12)
!256 = !DILocation(line: 468, column: 16, scope: !232, inlinedAt: !243)
!257 = !DILocation(line: 468, column: 19, scope: !232, inlinedAt: !243)
!258 = !DILocation(line: 472, column: 14, scope: !232, inlinedAt: !243)
!259 = !DILocation(line: 481, column: 6, scope: !232, inlinedAt: !243)
!260 = !DILocation(line: 481, column: 14, scope: !232, inlinedAt: !243)
!261 = !DILocation(line: 481, column: 22, scope: !232, inlinedAt: !243)
!262 = !DILocation(line: 481, column: 30, scope: !232, inlinedAt: !243)
!263 = !DILocation(line: 481, column: 38, scope: !232, inlinedAt: !243)
!264 = !DILocation(line: 481, column: 45, scope: !232, inlinedAt: !243)
!265 = !DILocation(line: 481, column: 44, scope: !232, inlinedAt: !243)
!266 = !DILocation(line: 481, column: 42, scope: !232, inlinedAt: !243)
!267 = !DILocation(line: 481, column: 36, scope: !232, inlinedAt: !243)
!268 = !DILocation(line: 481, column: 34, scope: !232, inlinedAt: !243)
!269 = !DILocation(line: 481, column: 28, scope: !232, inlinedAt: !243)
!270 = !DILocation(line: 481, column: 26, scope: !232, inlinedAt: !243)
!271 = !DILocation(line: 481, column: 20, scope: !232, inlinedAt: !243)
!272 = !DILocation(line: 481, column: 18, scope: !232, inlinedAt: !243)
!273 = !DILocation(line: 481, column: 12, scope: !232, inlinedAt: !243)
!274 = !DILocation(line: 481, column: 10, scope: !232, inlinedAt: !243)
!275 = !DILocation(line: 472, column: 12, scope: !232, inlinedAt: !243)
!276 = !DILocation(line: 482, column: 13, scope: !232, inlinedAt: !243)
!277 = !DILocation(line: 482, column: 21, scope: !232, inlinedAt: !243)
!278 = !DILocation(line: 482, column: 29, scope: !232, inlinedAt: !243)
!279 = !DILocation(line: 482, column: 37, scope: !232, inlinedAt: !243)
!280 = !DILocation(line: 482, column: 45, scope: !232, inlinedAt: !243)
!281 = !DILocation(line: 482, column: 52, scope: !232, inlinedAt: !243)
!282 = !DILocation(line: 482, column: 51, scope: !232, inlinedAt: !243)
!283 = !DILocation(line: 482, column: 49, scope: !232, inlinedAt: !243)
!284 = !DILocation(line: 482, column: 43, scope: !232, inlinedAt: !243)
!285 = !DILocation(line: 482, column: 41, scope: !232, inlinedAt: !243)
!286 = !DILocation(line: 482, column: 35, scope: !232, inlinedAt: !243)
!287 = !DILocation(line: 482, column: 33, scope: !232, inlinedAt: !243)
!288 = !DILocation(line: 482, column: 27, scope: !232, inlinedAt: !243)
!289 = !DILocation(line: 482, column: 25, scope: !232, inlinedAt: !243)
!290 = !DILocation(line: 482, column: 19, scope: !232, inlinedAt: !243)
!291 = !DILocation(line: 482, column: 17, scope: !232, inlinedAt: !243)
!292 = !DILocation(line: 482, column: 11, scope: !232, inlinedAt: !243)
!293 = !DILocation(line: 482, column: 9, scope: !232, inlinedAt: !243)
!294 = !DILocation(line: 472, column: 10, scope: !232, inlinedAt: !243)
!295 = !DILocation(line: 483, column: 18, scope: !232, inlinedAt: !243)
!296 = !DILocation(line: 483, column: 15, scope: !232, inlinedAt: !243)
!297 = !DILocation(line: 483, column: 21, scope: !232, inlinedAt: !243)
!298 = !DILocation(line: 102, column: 26, scope: !80)
!299 = !DILocation(line: 126, column: 23, scope: !170)
!300 = !DILocation(line: 126, column: 28, scope: !170)
!301 = !DILocation(line: 126, column: 26, scope: !170)
!302 = !DILocation(line: 0, scope: !154)
!303 = !DILocation(line: 128, column: 8, scope: !304)
!304 = distinct !DILexicalBlock(scope: !129, file: !3, line: 128, column: 6)
!305 = !DILocation(line: 128, column: 19, scope: !304)
!306 = !DILocation(line: 128, column: 6, scope: !129)
!307 = !DILocation(line: 131, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !80, file: !3, line: 131, column: 5)
!309 = !DILocation(line: 132, column: 13, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 132, column: 9)
!311 = distinct !DILexicalBlock(scope: !308, file: !3, line: 131, column: 20)
!312 = !DILocation(line: 132, column: 15, scope: !310)
!313 = !DILocation(line: 131, column: 5, scope: !80)
!314 = !DILocation(line: 132, column: 31, scope: !310)
!315 = !DILocation(line: 132, column: 21, scope: !310)
!316 = !DILocation(line: 134, column: 7, scope: !80)
!317 = !DILocation(line: 135, column: 29, scope: !80)
!318 = !DILocation(line: 135, column: 27, scope: !80)
!319 = !DILocation(line: 135, column: 22, scope: !80)
!320 = !DILocation(line: 135, column: 20, scope: !80)
!321 = !DILocation(line: 135, column: 15, scope: !80)
!322 = !DILocation(line: 135, column: 13, scope: !80)
!323 = !DILocation(line: 135, column: 8, scope: !80)
!324 = !DILocation(line: 102, column: 22, scope: !80)
!325 = !DILocation(line: 136, column: 40, scope: !80)
!326 = !DILocation(line: 136, column: 38, scope: !80)
!327 = !DILocation(line: 136, column: 33, scope: !80)
!328 = !DILocation(line: 136, column: 31, scope: !80)
!329 = !DILocation(line: 136, column: 26, scope: !80)
!330 = !DILocation(line: 136, column: 24, scope: !80)
!331 = !DILocation(line: 136, column: 19, scope: !80)
!332 = !DILocation(line: 136, column: 17, scope: !80)
!333 = !DILocation(line: 136, column: 12, scope: !80)
!334 = !DILocation(line: 136, column: 10, scope: !80)
!335 = !DILocation(line: 137, column: 4, scope: !80)
!336 = !DILocation(line: 138, column: 10, scope: !80)
!337 = !DILocation(line: 138, column: 16, scope: !80)
!338 = !DILocation(line: 138, column: 14, scope: !80)
!339 = !DILocation(line: 138, column: 2, scope: !80)
!340 = !DILocation(line: 0, scope: !80)
!341 = !DILocation(line: 139, column: 1, scope: !80)
!342 = distinct !DISubprogram(name: "__ieee754_y1", scope: !3, file: !3, line: 165, type: !81, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!344 = !DILocalVariable(name: "x", arg: 1, scope: !342, file: !3, line: 165, type: !9)
!345 = !DILocalVariable(name: "z", scope: !342, file: !3, line: 171, type: !9)
!346 = !DILocalVariable(name: "s", scope: !342, file: !3, line: 171, type: !9)
!347 = !DILocalVariable(name: "c", scope: !342, file: !3, line: 171, type: !9)
!348 = !DILocalVariable(name: "ss", scope: !342, file: !3, line: 171, type: !9)
!349 = !DILocalVariable(name: "cc", scope: !342, file: !3, line: 171, type: !9)
!350 = !DILocalVariable(name: "u", scope: !342, file: !3, line: 171, type: !9)
!351 = !DILocalVariable(name: "v", scope: !342, file: !3, line: 171, type: !9)
!352 = !DILocalVariable(name: "hx", scope: !342, file: !3, line: 172, type: !95)
!353 = !DILocalVariable(name: "ix", scope: !342, file: !3, line: 172, type: !95)
!354 = !DILocalVariable(name: "lx", scope: !342, file: !3, line: 172, type: !95)
!355 = !DILocalVariable(name: "ew_u", scope: !356, file: !3, line: 174, type: !101)
!356 = distinct !DILexicalBlock(scope: !342, file: !3, line: 174, column: 2)
!357 = !DILocation(line: 165, column: 29, scope: !342)
!358 = !DILocation(line: 174, column: 2, scope: !356)
!359 = !DILocation(line: 172, column: 12, scope: !342)
!360 = !DILocation(line: 175, column: 24, scope: !342)
!361 = !DILocation(line: 172, column: 15, scope: !342)
!362 = !DILocation(line: 177, column: 7, scope: !363)
!363 = distinct !DILexicalBlock(scope: !342, file: !3, line: 177, column: 5)
!364 = !DILocation(line: 177, column: 5, scope: !342)
!365 = !DILocation(line: 177, column: 37, scope: !363)
!366 = !DILocation(line: 177, column: 35, scope: !363)
!367 = !DILocation(line: 177, column: 32, scope: !363)
!368 = !DILocation(line: 177, column: 21, scope: !363)
!369 = !DILocation(line: 172, column: 18, scope: !342)
!370 = !DILocation(line: 178, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !342, file: !3, line: 178, column: 12)
!372 = !DILocation(line: 178, column: 19, scope: !371)
!373 = !DILocation(line: 178, column: 12, scope: !342)
!374 = !DILocation(line: 179, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !342, file: !3, line: 179, column: 12)
!376 = !DILocation(line: 179, column: 12, scope: !342)
!377 = !DILocation(line: 180, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !342, file: !3, line: 180, column: 12)
!379 = !DILocation(line: 180, column: 12, scope: !342)
!380 = !DILocation(line: 181, column: 21, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !3, line: 180, column: 30)
!382 = !DILocation(line: 171, column: 12, scope: !342)
!383 = !DILocation(line: 182, column: 21, scope: !381)
!384 = !DILocation(line: 171, column: 14, scope: !342)
!385 = !DILocation(line: 183, column: 22, scope: !381)
!386 = !DILocation(line: 183, column: 24, scope: !381)
!387 = !DILocation(line: 171, column: 16, scope: !342)
!388 = !DILocation(line: 184, column: 23, scope: !381)
!389 = !DILocation(line: 171, column: 19, scope: !342)
!390 = !DILocation(line: 185, column: 22, scope: !391)
!391 = distinct !DILexicalBlock(scope: !381, file: !3, line: 185, column: 20)
!392 = !DILocation(line: 185, column: 20, scope: !381)
!393 = !DILocation(line: 186, column: 30, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 185, column: 35)
!395 = !DILocation(line: 186, column: 25, scope: !394)
!396 = !DILocation(line: 171, column: 9, scope: !342)
!397 = !DILocation(line: 187, column: 27, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 187, column: 25)
!399 = !DILocation(line: 187, column: 30, scope: !398)
!400 = !DILocation(line: 187, column: 25, scope: !394)
!401 = !DILocation(line: 187, column: 43, scope: !398)
!402 = !DILocation(line: 187, column: 37, scope: !398)
!403 = !DILocation(line: 188, column: 43, scope: !398)
!404 = !DILocation(line: 0, scope: !381)
!405 = !DILocation(line: 201, column: 22, scope: !406)
!406 = distinct !DILexicalBlock(scope: !381, file: !3, line: 201, column: 20)
!407 = !DILocation(line: 201, column: 20, scope: !381)
!408 = !DILocation(line: 201, column: 49, scope: !406)
!409 = !DILocation(line: 201, column: 54, scope: !406)
!410 = !DILocation(line: 201, column: 53, scope: !406)
!411 = !DILocation(line: 201, column: 35, scope: !406)
!412 = !DILocation(line: 324, column: 28, scope: !157, inlinedAt: !413)
!413 = distinct !DILocation(line: 203, column: 25, scope: !414)
!414 = distinct !DILexicalBlock(scope: !406, file: !3, line: 202, column: 22)
!415 = !DILocation(line: 336, column: 19, scope: !157, inlinedAt: !413)
!416 = !DILocation(line: 339, column: 14, scope: !175, inlinedAt: !413)
!417 = !DILocation(line: 339, column: 12, scope: !157, inlinedAt: !413)
!418 = !DILocation(line: 340, column: 19, scope: !178, inlinedAt: !413)
!419 = !DILocation(line: 340, column: 17, scope: !175, inlinedAt: !413)
!420 = !DILocation(line: 341, column: 19, scope: !181, inlinedAt: !413)
!421 = !DILocation(line: 341, column: 49, scope: !183, inlinedAt: !413)
!422 = !DILocation(line: 0, scope: !185, inlinedAt: !413)
!423 = !DILocation(line: 331, column: 16, scope: !157, inlinedAt: !413)
!424 = !DILocation(line: 331, column: 19, scope: !157, inlinedAt: !413)
!425 = !DILocation(line: 343, column: 19, scope: !157, inlinedAt: !413)
!426 = !DILocation(line: 343, column: 16, scope: !157, inlinedAt: !413)
!427 = !DILocation(line: 335, column: 9, scope: !157, inlinedAt: !413)
!428 = !DILocation(line: 344, column: 13, scope: !157, inlinedAt: !413)
!429 = !DILocation(line: 344, column: 21, scope: !157, inlinedAt: !413)
!430 = !DILocation(line: 344, column: 29, scope: !157, inlinedAt: !413)
!431 = !DILocation(line: 344, column: 37, scope: !157, inlinedAt: !413)
!432 = !DILocation(line: 344, column: 45, scope: !157, inlinedAt: !413)
!433 = !DILocation(line: 344, column: 52, scope: !157, inlinedAt: !413)
!434 = !DILocation(line: 344, column: 51, scope: !157, inlinedAt: !413)
!435 = !DILocation(line: 344, column: 49, scope: !157, inlinedAt: !413)
!436 = !DILocation(line: 344, column: 43, scope: !157, inlinedAt: !413)
!437 = !DILocation(line: 344, column: 41, scope: !157, inlinedAt: !413)
!438 = !DILocation(line: 344, column: 35, scope: !157, inlinedAt: !413)
!439 = !DILocation(line: 344, column: 33, scope: !157, inlinedAt: !413)
!440 = !DILocation(line: 344, column: 27, scope: !157, inlinedAt: !413)
!441 = !DILocation(line: 344, column: 25, scope: !157, inlinedAt: !413)
!442 = !DILocation(line: 344, column: 19, scope: !157, inlinedAt: !413)
!443 = !DILocation(line: 344, column: 17, scope: !157, inlinedAt: !413)
!444 = !DILocation(line: 335, column: 11, scope: !157, inlinedAt: !413)
!445 = !DILocation(line: 345, column: 20, scope: !157, inlinedAt: !413)
!446 = !DILocation(line: 345, column: 28, scope: !157, inlinedAt: !413)
!447 = !DILocation(line: 345, column: 36, scope: !157, inlinedAt: !413)
!448 = !DILocation(line: 345, column: 44, scope: !157, inlinedAt: !413)
!449 = !DILocation(line: 345, column: 51, scope: !157, inlinedAt: !413)
!450 = !DILocation(line: 345, column: 50, scope: !157, inlinedAt: !413)
!451 = !DILocation(line: 345, column: 48, scope: !157, inlinedAt: !413)
!452 = !DILocation(line: 345, column: 42, scope: !157, inlinedAt: !413)
!453 = !DILocation(line: 345, column: 40, scope: !157, inlinedAt: !413)
!454 = !DILocation(line: 345, column: 34, scope: !157, inlinedAt: !413)
!455 = !DILocation(line: 345, column: 32, scope: !157, inlinedAt: !413)
!456 = !DILocation(line: 345, column: 26, scope: !157, inlinedAt: !413)
!457 = !DILocation(line: 345, column: 24, scope: !157, inlinedAt: !413)
!458 = !DILocation(line: 345, column: 18, scope: !157, inlinedAt: !413)
!459 = !DILocation(line: 345, column: 16, scope: !157, inlinedAt: !413)
!460 = !DILocation(line: 335, column: 13, scope: !157, inlinedAt: !413)
!461 = !DILocation(line: 346, column: 22, scope: !157, inlinedAt: !413)
!462 = !DILocation(line: 346, column: 19, scope: !157, inlinedAt: !413)
!463 = !DILocation(line: 171, column: 22, scope: !342)
!464 = !DILocation(line: 461, column: 28, scope: !232, inlinedAt: !465)
!465 = distinct !DILocation(line: 203, column: 38, scope: !414)
!466 = !DILocation(line: 473, column: 12, scope: !232, inlinedAt: !465)
!467 = !DILocation(line: 476, column: 5, scope: !232, inlinedAt: !465)
!468 = !DILocation(line: 477, column: 12, scope: !247, inlinedAt: !465)
!469 = !DILocation(line: 477, column: 10, scope: !248, inlinedAt: !465)
!470 = !DILocation(line: 478, column: 12, scope: !251, inlinedAt: !465)
!471 = !DILocation(line: 478, column: 42, scope: !253, inlinedAt: !465)
!472 = !DILocation(line: 0, scope: !255, inlinedAt: !465)
!473 = !DILocation(line: 468, column: 16, scope: !232, inlinedAt: !465)
!474 = !DILocation(line: 468, column: 19, scope: !232, inlinedAt: !465)
!475 = !DILocation(line: 472, column: 14, scope: !232, inlinedAt: !465)
!476 = !DILocation(line: 481, column: 6, scope: !232, inlinedAt: !465)
!477 = !DILocation(line: 481, column: 14, scope: !232, inlinedAt: !465)
!478 = !DILocation(line: 481, column: 22, scope: !232, inlinedAt: !465)
!479 = !DILocation(line: 481, column: 30, scope: !232, inlinedAt: !465)
!480 = !DILocation(line: 481, column: 38, scope: !232, inlinedAt: !465)
!481 = !DILocation(line: 481, column: 45, scope: !232, inlinedAt: !465)
!482 = !DILocation(line: 481, column: 44, scope: !232, inlinedAt: !465)
!483 = !DILocation(line: 481, column: 42, scope: !232, inlinedAt: !465)
!484 = !DILocation(line: 481, column: 36, scope: !232, inlinedAt: !465)
!485 = !DILocation(line: 481, column: 34, scope: !232, inlinedAt: !465)
!486 = !DILocation(line: 481, column: 28, scope: !232, inlinedAt: !465)
!487 = !DILocation(line: 481, column: 26, scope: !232, inlinedAt: !465)
!488 = !DILocation(line: 481, column: 20, scope: !232, inlinedAt: !465)
!489 = !DILocation(line: 481, column: 18, scope: !232, inlinedAt: !465)
!490 = !DILocation(line: 481, column: 12, scope: !232, inlinedAt: !465)
!491 = !DILocation(line: 481, column: 10, scope: !232, inlinedAt: !465)
!492 = !DILocation(line: 472, column: 12, scope: !232, inlinedAt: !465)
!493 = !DILocation(line: 482, column: 13, scope: !232, inlinedAt: !465)
!494 = !DILocation(line: 482, column: 21, scope: !232, inlinedAt: !465)
!495 = !DILocation(line: 482, column: 29, scope: !232, inlinedAt: !465)
!496 = !DILocation(line: 482, column: 37, scope: !232, inlinedAt: !465)
!497 = !DILocation(line: 482, column: 45, scope: !232, inlinedAt: !465)
!498 = !DILocation(line: 482, column: 52, scope: !232, inlinedAt: !465)
!499 = !DILocation(line: 482, column: 51, scope: !232, inlinedAt: !465)
!500 = !DILocation(line: 482, column: 49, scope: !232, inlinedAt: !465)
!501 = !DILocation(line: 482, column: 43, scope: !232, inlinedAt: !465)
!502 = !DILocation(line: 482, column: 41, scope: !232, inlinedAt: !465)
!503 = !DILocation(line: 482, column: 35, scope: !232, inlinedAt: !465)
!504 = !DILocation(line: 482, column: 33, scope: !232, inlinedAt: !465)
!505 = !DILocation(line: 482, column: 27, scope: !232, inlinedAt: !465)
!506 = !DILocation(line: 482, column: 25, scope: !232, inlinedAt: !465)
!507 = !DILocation(line: 482, column: 19, scope: !232, inlinedAt: !465)
!508 = !DILocation(line: 482, column: 17, scope: !232, inlinedAt: !465)
!509 = !DILocation(line: 482, column: 11, scope: !232, inlinedAt: !465)
!510 = !DILocation(line: 482, column: 9, scope: !232, inlinedAt: !465)
!511 = !DILocation(line: 472, column: 10, scope: !232, inlinedAt: !465)
!512 = !DILocation(line: 483, column: 18, scope: !232, inlinedAt: !465)
!513 = !DILocation(line: 483, column: 15, scope: !232, inlinedAt: !465)
!514 = !DILocation(line: 483, column: 21, scope: !232, inlinedAt: !465)
!515 = !DILocation(line: 171, column: 24, scope: !342)
!516 = !DILocation(line: 204, column: 37, scope: !414)
!517 = !DILocation(line: 204, column: 42, scope: !414)
!518 = !DILocation(line: 204, column: 40, scope: !414)
!519 = !DILocation(line: 204, column: 34, scope: !414)
!520 = !DILocation(line: 204, column: 47, scope: !414)
!521 = !DILocation(line: 204, column: 46, scope: !414)
!522 = !DILocation(line: 208, column: 14, scope: !523)
!523 = distinct !DILexicalBlock(scope: !342, file: !3, line: 208, column: 12)
!524 = !DILocation(line: 208, column: 12, scope: !342)
!525 = !DILocation(line: 209, column: 24, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !3, line: 208, column: 28)
!527 = !DILocation(line: 209, column: 13, scope: !526)
!528 = !DILocation(line: 211, column: 14, scope: !342)
!529 = !DILocation(line: 212, column: 47, scope: !342)
!530 = !DILocation(line: 212, column: 38, scope: !342)
!531 = !DILocation(line: 212, column: 36, scope: !342)
!532 = !DILocation(line: 212, column: 29, scope: !342)
!533 = !DILocation(line: 212, column: 27, scope: !342)
!534 = !DILocation(line: 212, column: 20, scope: !342)
!535 = !DILocation(line: 212, column: 18, scope: !342)
!536 = !DILocation(line: 213, column: 54, scope: !342)
!537 = !DILocation(line: 213, column: 52, scope: !342)
!538 = !DILocation(line: 213, column: 45, scope: !342)
!539 = !DILocation(line: 213, column: 43, scope: !342)
!540 = !DILocation(line: 213, column: 36, scope: !342)
!541 = !DILocation(line: 213, column: 34, scope: !342)
!542 = !DILocation(line: 213, column: 27, scope: !342)
!543 = !DILocation(line: 213, column: 25, scope: !342)
!544 = !DILocation(line: 213, column: 18, scope: !342)
!545 = !DILocation(line: 213, column: 16, scope: !342)
!546 = !DILocation(line: 214, column: 20, scope: !342)
!547 = !DILocation(line: 214, column: 17, scope: !342)
!548 = !DILocation(line: 214, column: 31, scope: !342)
!549 = !DILocation(line: 214, column: 47, scope: !342)
!550 = !DILocation(line: 214, column: 46, scope: !342)
!551 = !DILocation(line: 214, column: 67, scope: !342)
!552 = !DILocation(line: 214, column: 63, scope: !342)
!553 = !DILocation(line: 214, column: 29, scope: !342)
!554 = !DILocation(line: 214, column: 24, scope: !342)
!555 = !DILocation(line: 214, column: 9, scope: !342)
!556 = !DILocation(line: 0, scope: !342)
!557 = !DILocation(line: 215, column: 1, scope: !342)
