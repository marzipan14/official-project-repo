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
  br i1 %6, label %7, label %10, !dbg !135

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !136
  %9 = fdiv double 1.000000e+00, %8, !dbg !137
  br label %201, !dbg !138

; <label>:10:                                     ; preds = %1
  %11 = tail call double @fabs(double %0) #3, !dbg !139
  %12 = icmp ugt i32 %5, 1073741823, !dbg !140
  br i1 %12, label %13, label %159, !dbg !142

; <label>:13:                                     ; preds = %10
  %14 = tail call double @sin(double %11) #3, !dbg !143
  %15 = tail call double @cos(double %11) #3, !dbg !146
  %16 = fsub double %14, %15, !dbg !148
  %17 = fadd double %14, %15, !dbg !150
  %18 = icmp ult i32 %5, 2145386496, !dbg !152
  br i1 %18, label %19, label %33, !dbg !154

; <label>:19:                                     ; preds = %13
  %20 = fadd double %11, %11, !dbg !155
  %21 = tail call double @cos(double %20) #3, !dbg !157
  %22 = fsub double -0.000000e+00, %21, !dbg !158
  %23 = fmul double %14, %15, !dbg !160
  %24 = fcmp olt double %23, 0.000000e+00, !dbg !162
  br i1 %24, label %25, label %27, !dbg !163

; <label>:25:                                     ; preds = %19
  %26 = fdiv double %22, %16, !dbg !164
  br label %29, !dbg !165

; <label>:27:                                     ; preds = %19
  %28 = fdiv double %22, %17, !dbg !166
  br label %29

; <label>:29:                                     ; preds = %25, %27
  %30 = phi double [ %26, %25 ], [ %17, %27 ], !dbg !167
  %31 = phi double [ %16, %25 ], [ %28, %27 ], !dbg !167
  %32 = icmp ugt i32 %5, 1207959552, !dbg !168
  br i1 %32, label %33, label %38, !dbg !170

; <label>:33:                                     ; preds = %13, %29
  %34 = phi double [ %30, %29 ], [ %17, %13 ]
  %35 = fmul double %34, 0x3FE20DD750429B6D, !dbg !171
  %36 = tail call double @__ieee754_sqrt(double %11) #3, !dbg !172
  %37 = fdiv double %35, %36, !dbg !173
  br label %201, !dbg !174

; <label>:38:                                     ; preds = %29
  %39 = bitcast double %11 to i64, !dbg !190
  %40 = lshr i64 %39, 32, !dbg !190
  %41 = trunc i64 %40 to i32, !dbg !190
  %42 = and i32 %41, 2147483647, !dbg !192
  %43 = icmp ugt i32 %42, 1075838975, !dbg !193
  br i1 %43, label %50, label %44, !dbg !195

; <label>:44:                                     ; preds = %38
  %45 = icmp ugt i32 %42, 1074933386, !dbg !196
  br i1 %45, label %50, label %46, !dbg !198

; <label>:46:                                     ; preds = %44
  %47 = icmp ugt i32 %42, 1074191212, !dbg !199
  %48 = select i1 %47, double* getelementptr inbounds ([5 x double], [5 x double]* @pS3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @pS2, i64 0, i64 0), !dbg !201
  %49 = select i1 %47, double* getelementptr inbounds ([6 x double], [6 x double]* @pR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pR2, i64 0, i64 0), !dbg !201
  br label %50, !dbg !201

; <label>:50:                                     ; preds = %38, %44, %46
  %51 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @pS8, i64 0, i64 0), %38 ], [ getelementptr inbounds ([5 x double], [5 x double]* @pS5, i64 0, i64 0), %44 ], [ %48, %46 ], !dbg !203
  %52 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pR8, i64 0, i64 0), %38 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pR5, i64 0, i64 0), %44 ], [ %49, %46 ], !dbg !203
  %53 = fmul double %11, %11, !dbg !207
  %54 = fdiv double 1.000000e+00, %53, !dbg !208
  %55 = load double, double* %52, align 8, !dbg !210, !tbaa !211
  %56 = getelementptr inbounds double, double* %52, i64 1, !dbg !215
  %57 = load double, double* %56, align 8, !dbg !215, !tbaa !211
  %58 = getelementptr inbounds double, double* %52, i64 2, !dbg !216
  %59 = load double, double* %58, align 8, !dbg !216, !tbaa !211
  %60 = getelementptr inbounds double, double* %52, i64 3, !dbg !217
  %61 = load double, double* %60, align 8, !dbg !217, !tbaa !211
  %62 = getelementptr inbounds double, double* %52, i64 4, !dbg !218
  %63 = load double, double* %62, align 8, !dbg !218, !tbaa !211
  %64 = getelementptr inbounds double, double* %52, i64 5, !dbg !219
  %65 = load double, double* %64, align 8, !dbg !219, !tbaa !211
  %66 = fmul double %54, %65, !dbg !220
  %67 = fadd double %63, %66, !dbg !221
  %68 = fmul double %54, %67, !dbg !222
  %69 = fadd double %61, %68, !dbg !223
  %70 = fmul double %54, %69, !dbg !224
  %71 = fadd double %59, %70, !dbg !225
  %72 = fmul double %54, %71, !dbg !226
  %73 = fadd double %57, %72, !dbg !227
  %74 = fmul double %54, %73, !dbg !228
  %75 = fadd double %55, %74, !dbg !229
  %76 = load double, double* %51, align 8, !dbg !231, !tbaa !211
  %77 = getelementptr inbounds double, double* %51, i64 1, !dbg !232
  %78 = load double, double* %77, align 8, !dbg !232, !tbaa !211
  %79 = getelementptr inbounds double, double* %51, i64 2, !dbg !233
  %80 = load double, double* %79, align 8, !dbg !233, !tbaa !211
  %81 = getelementptr inbounds double, double* %51, i64 3, !dbg !234
  %82 = load double, double* %81, align 8, !dbg !234, !tbaa !211
  %83 = getelementptr inbounds double, double* %51, i64 4, !dbg !235
  %84 = load double, double* %83, align 8, !dbg !235, !tbaa !211
  %85 = fmul double %54, %84, !dbg !236
  %86 = fadd double %82, %85, !dbg !237
  %87 = fmul double %54, %86, !dbg !238
  %88 = fadd double %80, %87, !dbg !239
  %89 = fmul double %54, %88, !dbg !240
  %90 = fadd double %78, %89, !dbg !241
  %91 = fmul double %54, %90, !dbg !242
  %92 = fadd double %76, %91, !dbg !243
  %93 = fmul double %54, %92, !dbg !244
  %94 = fadd double %93, 1.000000e+00, !dbg !245
  %95 = fdiv double %75, %94, !dbg !247
  %96 = fadd double %95, 1.000000e+00, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %43, label %103, label %97, !dbg !265

; <label>:97:                                     ; preds = %50
  %98 = icmp ugt i32 %42, 1074933386, !dbg !266
  br i1 %98, label %103, label %99, !dbg !269

; <label>:99:                                     ; preds = %97
  %100 = icmp ugt i32 %42, 1074191212, !dbg !270
  %101 = select i1 %100, double* getelementptr inbounds ([6 x double], [6 x double]* @qS3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qS2, i64 0, i64 0), !dbg !272
  %102 = select i1 %100, double* getelementptr inbounds ([6 x double], [6 x double]* @qR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qR2, i64 0, i64 0), !dbg !272
  br label %103, !dbg !272

; <label>:103:                                    ; preds = %50, %97, %99
  %104 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qS8, i64 0, i64 0), %50 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qS5, i64 0, i64 0), %97 ], [ %101, %99 ], !dbg !274
  %105 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qR8, i64 0, i64 0), %50 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qR5, i64 0, i64 0), %97 ], [ %102, %99 ], !dbg !274
  %106 = load double, double* %105, align 8, !dbg !279, !tbaa !211
  %107 = getelementptr inbounds double, double* %105, i64 1, !dbg !280
  %108 = load double, double* %107, align 8, !dbg !280, !tbaa !211
  %109 = getelementptr inbounds double, double* %105, i64 2, !dbg !281
  %110 = load double, double* %109, align 8, !dbg !281, !tbaa !211
  %111 = getelementptr inbounds double, double* %105, i64 3, !dbg !282
  %112 = load double, double* %111, align 8, !dbg !282, !tbaa !211
  %113 = getelementptr inbounds double, double* %105, i64 4, !dbg !283
  %114 = load double, double* %113, align 8, !dbg !283, !tbaa !211
  %115 = getelementptr inbounds double, double* %105, i64 5, !dbg !284
  %116 = load double, double* %115, align 8, !dbg !284, !tbaa !211
  %117 = fmul double %54, %116, !dbg !285
  %118 = fadd double %114, %117, !dbg !286
  %119 = fmul double %54, %118, !dbg !287
  %120 = fadd double %112, %119, !dbg !288
  %121 = fmul double %54, %120, !dbg !289
  %122 = fadd double %110, %121, !dbg !290
  %123 = fmul double %54, %122, !dbg !291
  %124 = fadd double %108, %123, !dbg !292
  %125 = fmul double %54, %124, !dbg !293
  %126 = fadd double %106, %125, !dbg !294
  %127 = load double, double* %104, align 8, !dbg !296, !tbaa !211
  %128 = getelementptr inbounds double, double* %104, i64 1, !dbg !297
  %129 = load double, double* %128, align 8, !dbg !297, !tbaa !211
  %130 = getelementptr inbounds double, double* %104, i64 2, !dbg !298
  %131 = load double, double* %130, align 8, !dbg !298, !tbaa !211
  %132 = getelementptr inbounds double, double* %104, i64 3, !dbg !299
  %133 = load double, double* %132, align 8, !dbg !299, !tbaa !211
  %134 = getelementptr inbounds double, double* %104, i64 4, !dbg !300
  %135 = load double, double* %134, align 8, !dbg !300, !tbaa !211
  %136 = getelementptr inbounds double, double* %104, i64 5, !dbg !301
  %137 = load double, double* %136, align 8, !dbg !301, !tbaa !211
  %138 = fmul double %54, %137, !dbg !302
  %139 = fadd double %135, %138, !dbg !303
  %140 = fmul double %54, %139, !dbg !304
  %141 = fadd double %133, %140, !dbg !305
  %142 = fmul double %54, %141, !dbg !306
  %143 = fadd double %131, %142, !dbg !307
  %144 = fmul double %54, %143, !dbg !308
  %145 = fadd double %129, %144, !dbg !309
  %146 = fmul double %54, %145, !dbg !310
  %147 = fadd double %127, %146, !dbg !311
  %148 = fmul double %54, %147, !dbg !312
  %149 = fadd double %148, 1.000000e+00, !dbg !313
  %150 = fdiv double %126, %149, !dbg !315
  %151 = fadd double %150, -1.250000e-01, !dbg !316
  %152 = fdiv double %151, %11, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %153 = fmul double %30, %96, !dbg !320
  %154 = fmul double %31, %152, !dbg !321
  %155 = fsub double %153, %154, !dbg !322
  %156 = fmul double %155, 0x3FE20DD750429B6D, !dbg !323
  %157 = tail call double @__ieee754_sqrt(double %11) #3, !dbg !324
  %158 = fdiv double %156, %157, !dbg !325
  br label %201

; <label>:159:                                    ; preds = %10
  %160 = icmp ult i32 %5, 1059061760, !dbg !326
  %161 = fadd double %11, 1.000000e+300, !dbg !328
  %162 = fcmp ogt double %161, 1.000000e+00, !dbg !331
  %163 = and i1 %160, %162, !dbg !332
  br i1 %163, label %164, label %170, !dbg !332

; <label>:164:                                    ; preds = %159
  %165 = icmp ult i32 %5, 1044381696, !dbg !333
  br i1 %165, label %201, label %166, !dbg !336

; <label>:166:                                    ; preds = %164
  %167 = fmul double %11, 2.500000e-01, !dbg !337
  %168 = fmul double %11, %167, !dbg !338
  %169 = fsub double 1.000000e+00, %168, !dbg !339
  br label %201, !dbg !340

; <label>:170:                                    ; preds = %159
  %171 = fmul double %11, %11, !dbg !341
  %172 = fmul double %171, 0x3E33D5E773D63FCE, !dbg !342
  %173 = fsub double 0x3EBEB1D10C503919, %172, !dbg !342
  %174 = fmul double %171, %173, !dbg !343
  %175 = fadd double %174, 0xBF28E6A5B61AC6E9, !dbg !344
  %176 = fmul double %171, %175, !dbg !345
  %177 = fadd double %176, 0x3F8FFFFFFFFFFFFD, !dbg !346
  %178 = fmul double %171, %177, !dbg !347
  %179 = fmul double %171, 0x3E1408BCF4745D8F, !dbg !349
  %180 = fadd double %179, 0x3EA13B54CE84D5A9, !dbg !350
  %181 = fmul double %171, %180, !dbg !351
  %182 = fadd double %181, 0x3F1EA6D2DD57DBF4, !dbg !352
  %183 = fmul double %171, %182, !dbg !353
  %184 = fadd double %183, 0x3F8FFCE882C8C2A4, !dbg !354
  %185 = fmul double %171, %184, !dbg !355
  %186 = fadd double %185, 1.000000e+00, !dbg !356
  %187 = icmp ult i32 %5, 1072693248, !dbg !357
  br i1 %187, label %188, label %193, !dbg !359

; <label>:188:                                    ; preds = %170
  %189 = fdiv double %178, %186, !dbg !360
  %190 = fadd double %189, -2.500000e-01, !dbg !362
  %191 = fmul double %171, %190, !dbg !363
  %192 = fadd double %191, 1.000000e+00, !dbg !364
  br label %201, !dbg !365

; <label>:193:                                    ; preds = %170
  %194 = fmul double %11, 5.000000e-01, !dbg !366
  %195 = fadd double %194, 1.000000e+00, !dbg !368
  %196 = fsub double 1.000000e+00, %194, !dbg !369
  %197 = fmul double %195, %196, !dbg !370
  %198 = fdiv double %178, %186, !dbg !371
  %199 = fmul double %171, %198, !dbg !372
  %200 = fadd double %197, %199, !dbg !373
  br label %201, !dbg !374

; <label>:201:                                    ; preds = %164, %33, %103, %193, %188, %166, %7
  %202 = phi double [ %9, %7 ], [ %169, %166 ], [ %192, %188 ], [ %200, %193 ], [ %37, %33 ], [ %158, %103 ], [ 1.000000e+00, %164 ], !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret double %202, !dbg !376
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
define dso_local double @__ieee754_y0(double) local_unnamed_addr #0 !dbg !377 {
  %2 = bitcast double %0 to i64, !dbg !393
  %3 = lshr i64 %2, 32, !dbg !393
  %4 = trunc i64 %3 to i32, !dbg !393
  %5 = and i32 %4, 2147483647, !dbg !395
  %6 = icmp ugt i32 %5, 2146435071, !dbg !397
  br i1 %6, label %7, label %11, !dbg !399

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !400
  %9 = fadd double %8, %0, !dbg !401
  %10 = fdiv double 1.000000e+00, %9, !dbg !402
  br label %195, !dbg !403

; <label>:11:                                     ; preds = %1
  %12 = trunc i64 %2 to i32, !dbg !393
  %13 = or i32 %5, %12, !dbg !405
  %14 = icmp eq i32 %13, 0, !dbg !407
  br i1 %14, label %195, label %15, !dbg !408

; <label>:15:                                     ; preds = %11
  %16 = icmp slt i32 %4, 0, !dbg !409
  br i1 %16, label %195, label %17, !dbg !411

; <label>:17:                                     ; preds = %15
  %18 = icmp ugt i32 %5, 1073741823, !dbg !412
  br i1 %18, label %19, label %161, !dbg !414

; <label>:19:                                     ; preds = %17
  %20 = tail call double @sin(double %0) #3, !dbg !415
  %21 = tail call double @cos(double %0) #3, !dbg !418
  %22 = fsub double %20, %21, !dbg !420
  %23 = fadd double %20, %21, !dbg !422
  %24 = icmp ult i32 %5, 2145386496, !dbg !424
  br i1 %24, label %25, label %39, !dbg !426

; <label>:25:                                     ; preds = %19
  %26 = fadd double %0, %0, !dbg !427
  %27 = tail call double @cos(double %26) #3, !dbg !429
  %28 = fsub double -0.000000e+00, %27, !dbg !430
  %29 = fmul double %20, %21, !dbg !432
  %30 = fcmp olt double %29, 0.000000e+00, !dbg !434
  br i1 %30, label %31, label %33, !dbg !435

; <label>:31:                                     ; preds = %25
  %32 = fdiv double %28, %22, !dbg !436
  br label %35, !dbg !437

; <label>:33:                                     ; preds = %25
  %34 = fdiv double %28, %23, !dbg !438
  br label %35

; <label>:35:                                     ; preds = %31, %33
  %36 = phi double [ %32, %31 ], [ %23, %33 ], !dbg !439
  %37 = phi double [ %22, %31 ], [ %34, %33 ], !dbg !439
  %38 = icmp ugt i32 %5, 1207959552, !dbg !440
  br i1 %38, label %39, label %44, !dbg !442

; <label>:39:                                     ; preds = %19, %35
  %40 = phi double [ %37, %35 ], [ %22, %19 ]
  %41 = fmul double %40, 0x3FE20DD750429B6D, !dbg !443
  %42 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !444
  %43 = fdiv double %41, %42, !dbg !445
  br label %195, !dbg !446

; <label>:44:                                     ; preds = %35
  %45 = icmp ugt i32 %5, 1075838975, !dbg !451
  br i1 %45, label %52, label %46, !dbg !452

; <label>:46:                                     ; preds = %44
  %47 = icmp ugt i32 %5, 1074933386, !dbg !453
  br i1 %47, label %52, label %48, !dbg !454

; <label>:48:                                     ; preds = %46
  %49 = icmp ugt i32 %5, 1074191212, !dbg !455
  %50 = select i1 %49, double* getelementptr inbounds ([5 x double], [5 x double]* @pS3, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @pS2, i64 0, i64 0), !dbg !456
  %51 = select i1 %49, double* getelementptr inbounds ([6 x double], [6 x double]* @pR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @pR2, i64 0, i64 0), !dbg !456
  br label %52, !dbg !456

; <label>:52:                                     ; preds = %44, %46, %48
  %53 = phi double* [ getelementptr inbounds ([5 x double], [5 x double]* @pS8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([5 x double], [5 x double]* @pS5, i64 0, i64 0), %46 ], [ %50, %48 ], !dbg !457
  %54 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @pR8, i64 0, i64 0), %44 ], [ getelementptr inbounds ([6 x double], [6 x double]* @pR5, i64 0, i64 0), %46 ], [ %51, %48 ], !dbg !457
  %55 = fmul double %0, %0, !dbg !460
  %56 = fdiv double 1.000000e+00, %55, !dbg !461
  %57 = load double, double* %54, align 8, !dbg !463, !tbaa !211
  %58 = getelementptr inbounds double, double* %54, i64 1, !dbg !464
  %59 = load double, double* %58, align 8, !dbg !464, !tbaa !211
  %60 = getelementptr inbounds double, double* %54, i64 2, !dbg !465
  %61 = load double, double* %60, align 8, !dbg !465, !tbaa !211
  %62 = getelementptr inbounds double, double* %54, i64 3, !dbg !466
  %63 = load double, double* %62, align 8, !dbg !466, !tbaa !211
  %64 = getelementptr inbounds double, double* %54, i64 4, !dbg !467
  %65 = load double, double* %64, align 8, !dbg !467, !tbaa !211
  %66 = getelementptr inbounds double, double* %54, i64 5, !dbg !468
  %67 = load double, double* %66, align 8, !dbg !468, !tbaa !211
  %68 = fmul double %56, %67, !dbg !469
  %69 = fadd double %65, %68, !dbg !470
  %70 = fmul double %56, %69, !dbg !471
  %71 = fadd double %63, %70, !dbg !472
  %72 = fmul double %56, %71, !dbg !473
  %73 = fadd double %61, %72, !dbg !474
  %74 = fmul double %56, %73, !dbg !475
  %75 = fadd double %59, %74, !dbg !476
  %76 = fmul double %56, %75, !dbg !477
  %77 = fadd double %57, %76, !dbg !478
  %78 = load double, double* %53, align 8, !dbg !480, !tbaa !211
  %79 = getelementptr inbounds double, double* %53, i64 1, !dbg !481
  %80 = load double, double* %79, align 8, !dbg !481, !tbaa !211
  %81 = getelementptr inbounds double, double* %53, i64 2, !dbg !482
  %82 = load double, double* %81, align 8, !dbg !482, !tbaa !211
  %83 = getelementptr inbounds double, double* %53, i64 3, !dbg !483
  %84 = load double, double* %83, align 8, !dbg !483, !tbaa !211
  %85 = getelementptr inbounds double, double* %53, i64 4, !dbg !484
  %86 = load double, double* %85, align 8, !dbg !484, !tbaa !211
  %87 = fmul double %56, %86, !dbg !485
  %88 = fadd double %84, %87, !dbg !486
  %89 = fmul double %56, %88, !dbg !487
  %90 = fadd double %82, %89, !dbg !488
  %91 = fmul double %56, %90, !dbg !489
  %92 = fadd double %80, %91, !dbg !490
  %93 = fmul double %56, %92, !dbg !491
  %94 = fadd double %78, %93, !dbg !492
  %95 = fmul double %56, %94, !dbg !493
  %96 = fadd double %95, 1.000000e+00, !dbg !494
  %97 = fdiv double %77, %96, !dbg !496
  %98 = fadd double %97, 1.000000e+00, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  br i1 %45, label %105, label %99, !dbg !503

; <label>:99:                                     ; preds = %52
  %100 = icmp ugt i32 %5, 1074933386, !dbg !504
  br i1 %100, label %105, label %101, !dbg !505

; <label>:101:                                    ; preds = %99
  %102 = icmp ugt i32 %5, 1074191212, !dbg !506
  %103 = select i1 %102, double* getelementptr inbounds ([6 x double], [6 x double]* @qS3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qS2, i64 0, i64 0), !dbg !507
  %104 = select i1 %102, double* getelementptr inbounds ([6 x double], [6 x double]* @qR3, i64 0, i64 0), double* getelementptr inbounds ([6 x double], [6 x double]* @qR2, i64 0, i64 0), !dbg !507
  br label %105, !dbg !507

; <label>:105:                                    ; preds = %52, %99, %101
  %106 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qS8, i64 0, i64 0), %52 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qS5, i64 0, i64 0), %99 ], [ %103, %101 ], !dbg !508
  %107 = phi double* [ getelementptr inbounds ([6 x double], [6 x double]* @qR8, i64 0, i64 0), %52 ], [ getelementptr inbounds ([6 x double], [6 x double]* @qR5, i64 0, i64 0), %99 ], [ %104, %101 ], !dbg !508
  %108 = load double, double* %107, align 8, !dbg !512, !tbaa !211
  %109 = getelementptr inbounds double, double* %107, i64 1, !dbg !513
  %110 = load double, double* %109, align 8, !dbg !513, !tbaa !211
  %111 = getelementptr inbounds double, double* %107, i64 2, !dbg !514
  %112 = load double, double* %111, align 8, !dbg !514, !tbaa !211
  %113 = getelementptr inbounds double, double* %107, i64 3, !dbg !515
  %114 = load double, double* %113, align 8, !dbg !515, !tbaa !211
  %115 = getelementptr inbounds double, double* %107, i64 4, !dbg !516
  %116 = load double, double* %115, align 8, !dbg !516, !tbaa !211
  %117 = getelementptr inbounds double, double* %107, i64 5, !dbg !517
  %118 = load double, double* %117, align 8, !dbg !517, !tbaa !211
  %119 = fmul double %56, %118, !dbg !518
  %120 = fadd double %116, %119, !dbg !519
  %121 = fmul double %56, %120, !dbg !520
  %122 = fadd double %114, %121, !dbg !521
  %123 = fmul double %56, %122, !dbg !522
  %124 = fadd double %112, %123, !dbg !523
  %125 = fmul double %56, %124, !dbg !524
  %126 = fadd double %110, %125, !dbg !525
  %127 = fmul double %56, %126, !dbg !526
  %128 = fadd double %108, %127, !dbg !527
  %129 = load double, double* %106, align 8, !dbg !529, !tbaa !211
  %130 = getelementptr inbounds double, double* %106, i64 1, !dbg !530
  %131 = load double, double* %130, align 8, !dbg !530, !tbaa !211
  %132 = getelementptr inbounds double, double* %106, i64 2, !dbg !531
  %133 = load double, double* %132, align 8, !dbg !531, !tbaa !211
  %134 = getelementptr inbounds double, double* %106, i64 3, !dbg !532
  %135 = load double, double* %134, align 8, !dbg !532, !tbaa !211
  %136 = getelementptr inbounds double, double* %106, i64 4, !dbg !533
  %137 = load double, double* %136, align 8, !dbg !533, !tbaa !211
  %138 = getelementptr inbounds double, double* %106, i64 5, !dbg !534
  %139 = load double, double* %138, align 8, !dbg !534, !tbaa !211
  %140 = fmul double %56, %139, !dbg !535
  %141 = fadd double %137, %140, !dbg !536
  %142 = fmul double %56, %141, !dbg !537
  %143 = fadd double %135, %142, !dbg !538
  %144 = fmul double %56, %143, !dbg !539
  %145 = fadd double %133, %144, !dbg !540
  %146 = fmul double %56, %145, !dbg !541
  %147 = fadd double %131, %146, !dbg !542
  %148 = fmul double %56, %147, !dbg !543
  %149 = fadd double %129, %148, !dbg !544
  %150 = fmul double %56, %149, !dbg !545
  %151 = fadd double %150, 1.000000e+00, !dbg !546
  %152 = fdiv double %128, %151, !dbg !548
  %153 = fadd double %152, -1.250000e-01, !dbg !549
  %154 = fdiv double %153, %0, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  %155 = fmul double %37, %98, !dbg !553
  %156 = fmul double %36, %154, !dbg !554
  %157 = fadd double %155, %156, !dbg !555
  %158 = fmul double %157, 0x3FE20DD750429B6D, !dbg !556
  %159 = tail call double @__ieee754_sqrt(double %0) #3, !dbg !557
  %160 = fdiv double %158, %159, !dbg !558
  br label %195

; <label>:161:                                    ; preds = %17
  %162 = icmp ult i32 %5, 1044381697, !dbg !559
  br i1 %162, label %163, label %167, !dbg !561

; <label>:163:                                    ; preds = %161
  %164 = tail call double @__ieee754_log(double %0) #3, !dbg !562
  %165 = fmul double %164, 0x3FE45F306DC9C883, !dbg !564
  %166 = fadd double %165, 0xBFB2E4D699CBD01F, !dbg !565
  br label %195, !dbg !566

; <label>:167:                                    ; preds = %161
  %168 = fmul double %0, %0, !dbg !567
  %169 = fmul double %168, 0x3DC5E43D693FB3C8, !dbg !568
  %170 = fsub double 0x3E5500573B4EABD4, %169, !dbg !568
  %171 = fmul double %168, %170, !dbg !569
  %172 = fadd double %171, 0xBECFFEA773D25CAD, !dbg !570
  %173 = fmul double %168, %172, !dbg !571
  %174 = fadd double %173, 0x3F36C54D20B29B6B, !dbg !572
  %175 = fmul double %168, %174, !dbg !573
  %176 = fadd double %175, 0xBF8C4CE8B16CFA97, !dbg !574
  %177 = fmul double %168, %176, !dbg !575
  %178 = fadd double %177, 0x3FC69D019DE9E3FC, !dbg !576
  %179 = fmul double %168, %178, !dbg !577
  %180 = fadd double %179, 0xBFB2E4D699CBD01F, !dbg !578
  %181 = fmul double %168, 0x3DFE50183BD6D9EF, !dbg !579
  %182 = fadd double %181, 0x3E91642D7FF202FD, !dbg !580
  %183 = fmul double %168, %182, !dbg !581
  %184 = fadd double %183, 0x3F13ECBBF578C6C1, !dbg !582
  %185 = fmul double %168, %184, !dbg !583
  %186 = fadd double %185, 0x3F8A127091C9C71A, !dbg !584
  %187 = fmul double %168, %186, !dbg !585
  %188 = fadd double %187, 1.000000e+00, !dbg !586
  %189 = fdiv double %180, %188, !dbg !587
  %190 = tail call double @__ieee754_j0(double %0) #4, !dbg !588
  %191 = tail call double @__ieee754_log(double %0) #3, !dbg !589
  %192 = fmul double %190, %191, !dbg !590
  %193 = fmul double %192, 0x3FE45F306DC9C883, !dbg !591
  %194 = fadd double %189, %193, !dbg !592
  br label %195, !dbg !593

; <label>:195:                                    ; preds = %39, %105, %15, %11, %167, %163, %7
  %196 = phi double [ %10, %7 ], [ %166, %163 ], [ %194, %167 ], [ 0xFFF0000000000000, %11 ], [ 0x7FF8000000000000, %15 ], [ %43, %39 ], [ %160, %105 ], !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  ret double %196, !dbg !595
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
!155 = !DILocation(line: 114, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 113, column: 21)
!157 = !DILocation(line: 114, column: 12, scope: !156)
!158 = !DILocation(line: 114, column: 11, scope: !156)
!159 = !DILocation(line: 101, column: 9, scope: !96)
!160 = !DILocation(line: 115, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 115, column: 11)
!162 = !DILocation(line: 115, column: 16, scope: !161)
!163 = !DILocation(line: 115, column: 11, scope: !156)
!164 = !DILocation(line: 115, column: 29, scope: !161)
!165 = !DILocation(line: 115, column: 23, scope: !161)
!166 = !DILocation(line: 116, column: 23, scope: !161)
!167 = !DILocation(line: 0, scope: !144)
!168 = !DILocation(line: 122, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !144, file: !3, line: 122, column: 6)
!170 = !DILocation(line: 122, column: 6, scope: !144)
!171 = !DILocation(line: 122, column: 35, scope: !169)
!172 = !DILocation(line: 122, column: 40, scope: !169)
!173 = !DILocation(line: 122, column: 39, scope: !169)
!174 = !DILocation(line: 122, column: 21, scope: !169)
!175 = !DILocalVariable(name: "x", arg: 1, scope: !176, file: !3, line: 326, type: !9)
!176 = distinct !DISubprogram(name: "pzero", scope: !3, file: !3, line: 326, type: !97, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !177)
!177 = !{!175, !178, !180, !181, !182, !183, !184, !185}
!178 = !DILocalVariable(name: "p", scope: !176, file: !3, line: 333, type: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!180 = !DILocalVariable(name: "q", scope: !176, file: !3, line: 333, type: !179)
!181 = !DILocalVariable(name: "z", scope: !176, file: !3, line: 337, type: !9)
!182 = !DILocalVariable(name: "r", scope: !176, file: !3, line: 337, type: !9)
!183 = !DILocalVariable(name: "s", scope: !176, file: !3, line: 337, type: !9)
!184 = !DILocalVariable(name: "ix", scope: !176, file: !3, line: 338, type: !110)
!185 = !DILocalVariable(name: "gh_u", scope: !186, file: !3, line: 339, type: !116)
!186 = distinct !DILexicalBlock(scope: !176, file: !3, line: 339, column: 2)
!187 = !DILocation(line: 326, column: 29, scope: !176, inlinedAt: !188)
!188 = distinct !DILocation(line: 124, column: 11, scope: !189)
!189 = distinct !DILexicalBlock(scope: !169, file: !3, line: 123, column: 8)
!190 = !DILocation(line: 339, column: 2, scope: !186, inlinedAt: !188)
!191 = !DILocation(line: 338, column: 12, scope: !176, inlinedAt: !188)
!192 = !DILocation(line: 340, column: 5, scope: !176, inlinedAt: !188)
!193 = !DILocation(line: 341, column: 7, scope: !194, inlinedAt: !188)
!194 = distinct !DILexicalBlock(scope: !176, file: !3, line: 341, column: 5)
!195 = !DILocation(line: 341, column: 5, scope: !176, inlinedAt: !188)
!196 = !DILocation(line: 342, column: 12, scope: !197, inlinedAt: !188)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 342, column: 10)
!198 = !DILocation(line: 342, column: 10, scope: !194, inlinedAt: !188)
!199 = !DILocation(line: 343, column: 12, scope: !200, inlinedAt: !188)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 343, column: 10)
!201 = !DILocation(line: 343, column: 42, scope: !202, inlinedAt: !188)
!202 = distinct !DILexicalBlock(scope: !200, file: !3, line: 343, column: 25)
!203 = !DILocation(line: 0, scope: !204, inlinedAt: !188)
!204 = distinct !DILexicalBlock(scope: !200, file: !3, line: 344, column: 12)
!205 = !DILocation(line: 333, column: 16, scope: !176, inlinedAt: !188)
!206 = !DILocation(line: 333, column: 19, scope: !176, inlinedAt: !188)
!207 = !DILocation(line: 345, column: 12, scope: !176, inlinedAt: !188)
!208 = !DILocation(line: 345, column: 9, scope: !176, inlinedAt: !188)
!209 = !DILocation(line: 337, column: 9, scope: !176, inlinedAt: !188)
!210 = !DILocation(line: 346, column: 6, scope: !176, inlinedAt: !188)
!211 = !{!212, !212, i64 0}
!212 = !{!"double", !213, i64 0}
!213 = !{!"omnipotent char", !214, i64 0}
!214 = !{!"Simple C/C++ TBAA"}
!215 = !DILocation(line: 346, column: 14, scope: !176, inlinedAt: !188)
!216 = !DILocation(line: 346, column: 22, scope: !176, inlinedAt: !188)
!217 = !DILocation(line: 346, column: 30, scope: !176, inlinedAt: !188)
!218 = !DILocation(line: 346, column: 38, scope: !176, inlinedAt: !188)
!219 = !DILocation(line: 346, column: 45, scope: !176, inlinedAt: !188)
!220 = !DILocation(line: 346, column: 44, scope: !176, inlinedAt: !188)
!221 = !DILocation(line: 346, column: 42, scope: !176, inlinedAt: !188)
!222 = !DILocation(line: 346, column: 36, scope: !176, inlinedAt: !188)
!223 = !DILocation(line: 346, column: 34, scope: !176, inlinedAt: !188)
!224 = !DILocation(line: 346, column: 28, scope: !176, inlinedAt: !188)
!225 = !DILocation(line: 346, column: 26, scope: !176, inlinedAt: !188)
!226 = !DILocation(line: 346, column: 20, scope: !176, inlinedAt: !188)
!227 = !DILocation(line: 346, column: 18, scope: !176, inlinedAt: !188)
!228 = !DILocation(line: 346, column: 12, scope: !176, inlinedAt: !188)
!229 = !DILocation(line: 346, column: 10, scope: !176, inlinedAt: !188)
!230 = !DILocation(line: 337, column: 11, scope: !176, inlinedAt: !188)
!231 = !DILocation(line: 347, column: 13, scope: !176, inlinedAt: !188)
!232 = !DILocation(line: 347, column: 21, scope: !176, inlinedAt: !188)
!233 = !DILocation(line: 347, column: 29, scope: !176, inlinedAt: !188)
!234 = !DILocation(line: 347, column: 37, scope: !176, inlinedAt: !188)
!235 = !DILocation(line: 347, column: 44, scope: !176, inlinedAt: !188)
!236 = !DILocation(line: 347, column: 43, scope: !176, inlinedAt: !188)
!237 = !DILocation(line: 347, column: 41, scope: !176, inlinedAt: !188)
!238 = !DILocation(line: 347, column: 35, scope: !176, inlinedAt: !188)
!239 = !DILocation(line: 347, column: 33, scope: !176, inlinedAt: !188)
!240 = !DILocation(line: 347, column: 27, scope: !176, inlinedAt: !188)
!241 = !DILocation(line: 347, column: 25, scope: !176, inlinedAt: !188)
!242 = !DILocation(line: 347, column: 19, scope: !176, inlinedAt: !188)
!243 = !DILocation(line: 347, column: 17, scope: !176, inlinedAt: !188)
!244 = !DILocation(line: 347, column: 11, scope: !176, inlinedAt: !188)
!245 = !DILocation(line: 347, column: 9, scope: !176, inlinedAt: !188)
!246 = !DILocation(line: 337, column: 13, scope: !176, inlinedAt: !188)
!247 = !DILocation(line: 348, column: 15, scope: !176, inlinedAt: !188)
!248 = !DILocation(line: 348, column: 12, scope: !176, inlinedAt: !188)
!249 = !DILocation(line: 348, column: 2, scope: !176, inlinedAt: !188)
!250 = !DILocation(line: 101, column: 24, scope: !96)
!251 = !DILocalVariable(name: "x", arg: 1, scope: !252, file: !3, line: 462, type: !9)
!252 = distinct !DISubprogram(name: "qzero", scope: !3, file: !3, line: 462, type: !97, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !253)
!253 = !{!251, !254, !255, !256, !257, !258, !259, !260}
!254 = !DILocalVariable(name: "p", scope: !252, file: !3, line: 469, type: !179)
!255 = !DILocalVariable(name: "q", scope: !252, file: !3, line: 469, type: !179)
!256 = !DILocalVariable(name: "s", scope: !252, file: !3, line: 473, type: !9)
!257 = !DILocalVariable(name: "r", scope: !252, file: !3, line: 473, type: !9)
!258 = !DILocalVariable(name: "z", scope: !252, file: !3, line: 473, type: !9)
!259 = !DILocalVariable(name: "ix", scope: !252, file: !3, line: 474, type: !110)
!260 = !DILocalVariable(name: "gh_u", scope: !261, file: !3, line: 475, type: !116)
!261 = distinct !DILexicalBlock(scope: !252, file: !3, line: 475, column: 2)
!262 = !DILocation(line: 462, column: 29, scope: !252, inlinedAt: !263)
!263 = distinct !DILocation(line: 124, column: 25, scope: !189)
!264 = !DILocation(line: 474, column: 12, scope: !252, inlinedAt: !263)
!265 = !DILocation(line: 477, column: 5, scope: !252, inlinedAt: !263)
!266 = !DILocation(line: 478, column: 12, scope: !267, inlinedAt: !263)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 478, column: 10)
!268 = distinct !DILexicalBlock(scope: !252, file: !3, line: 477, column: 5)
!269 = !DILocation(line: 478, column: 10, scope: !268, inlinedAt: !263)
!270 = !DILocation(line: 479, column: 12, scope: !271, inlinedAt: !263)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 479, column: 10)
!272 = !DILocation(line: 479, column: 42, scope: !273, inlinedAt: !263)
!273 = distinct !DILexicalBlock(scope: !271, file: !3, line: 479, column: 25)
!274 = !DILocation(line: 0, scope: !275, inlinedAt: !263)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 480, column: 12)
!276 = !DILocation(line: 469, column: 16, scope: !252, inlinedAt: !263)
!277 = !DILocation(line: 469, column: 19, scope: !252, inlinedAt: !263)
!278 = !DILocation(line: 473, column: 13, scope: !252, inlinedAt: !263)
!279 = !DILocation(line: 482, column: 6, scope: !252, inlinedAt: !263)
!280 = !DILocation(line: 482, column: 14, scope: !252, inlinedAt: !263)
!281 = !DILocation(line: 482, column: 22, scope: !252, inlinedAt: !263)
!282 = !DILocation(line: 482, column: 30, scope: !252, inlinedAt: !263)
!283 = !DILocation(line: 482, column: 38, scope: !252, inlinedAt: !263)
!284 = !DILocation(line: 482, column: 45, scope: !252, inlinedAt: !263)
!285 = !DILocation(line: 482, column: 44, scope: !252, inlinedAt: !263)
!286 = !DILocation(line: 482, column: 42, scope: !252, inlinedAt: !263)
!287 = !DILocation(line: 482, column: 36, scope: !252, inlinedAt: !263)
!288 = !DILocation(line: 482, column: 34, scope: !252, inlinedAt: !263)
!289 = !DILocation(line: 482, column: 28, scope: !252, inlinedAt: !263)
!290 = !DILocation(line: 482, column: 26, scope: !252, inlinedAt: !263)
!291 = !DILocation(line: 482, column: 20, scope: !252, inlinedAt: !263)
!292 = !DILocation(line: 482, column: 18, scope: !252, inlinedAt: !263)
!293 = !DILocation(line: 482, column: 12, scope: !252, inlinedAt: !263)
!294 = !DILocation(line: 482, column: 10, scope: !252, inlinedAt: !263)
!295 = !DILocation(line: 473, column: 11, scope: !252, inlinedAt: !263)
!296 = !DILocation(line: 483, column: 13, scope: !252, inlinedAt: !263)
!297 = !DILocation(line: 483, column: 21, scope: !252, inlinedAt: !263)
!298 = !DILocation(line: 483, column: 29, scope: !252, inlinedAt: !263)
!299 = !DILocation(line: 483, column: 37, scope: !252, inlinedAt: !263)
!300 = !DILocation(line: 483, column: 45, scope: !252, inlinedAt: !263)
!301 = !DILocation(line: 483, column: 52, scope: !252, inlinedAt: !263)
!302 = !DILocation(line: 483, column: 51, scope: !252, inlinedAt: !263)
!303 = !DILocation(line: 483, column: 49, scope: !252, inlinedAt: !263)
!304 = !DILocation(line: 483, column: 43, scope: !252, inlinedAt: !263)
!305 = !DILocation(line: 483, column: 41, scope: !252, inlinedAt: !263)
!306 = !DILocation(line: 483, column: 35, scope: !252, inlinedAt: !263)
!307 = !DILocation(line: 483, column: 33, scope: !252, inlinedAt: !263)
!308 = !DILocation(line: 483, column: 27, scope: !252, inlinedAt: !263)
!309 = !DILocation(line: 483, column: 25, scope: !252, inlinedAt: !263)
!310 = !DILocation(line: 483, column: 19, scope: !252, inlinedAt: !263)
!311 = !DILocation(line: 483, column: 17, scope: !252, inlinedAt: !263)
!312 = !DILocation(line: 483, column: 11, scope: !252, inlinedAt: !263)
!313 = !DILocation(line: 483, column: 9, scope: !252, inlinedAt: !263)
!314 = !DILocation(line: 473, column: 9, scope: !252, inlinedAt: !263)
!315 = !DILocation(line: 484, column: 19, scope: !252, inlinedAt: !263)
!316 = !DILocation(line: 484, column: 16, scope: !252, inlinedAt: !263)
!317 = !DILocation(line: 484, column: 22, scope: !252, inlinedAt: !263)
!318 = !DILocation(line: 484, column: 2, scope: !252, inlinedAt: !263)
!319 = !DILocation(line: 101, column: 26, scope: !96)
!320 = !DILocation(line: 125, column: 23, scope: !189)
!321 = !DILocation(line: 125, column: 28, scope: !189)
!322 = !DILocation(line: 125, column: 26, scope: !189)
!323 = !DILocation(line: 125, column: 20, scope: !189)
!324 = !DILocation(line: 125, column: 33, scope: !189)
!325 = !DILocation(line: 125, column: 32, scope: !189)
!326 = !DILocation(line: 129, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !96, file: !3, line: 129, column: 5)
!328 = !DILocation(line: 130, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 130, column: 9)
!330 = distinct !DILexicalBlock(scope: !327, file: !3, line: 129, column: 20)
!331 = !DILocation(line: 130, column: 15, scope: !329)
!332 = !DILocation(line: 129, column: 5, scope: !96)
!333 = !DILocation(line: 131, column: 15, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 131, column: 13)
!335 = distinct !DILexicalBlock(scope: !329, file: !3, line: 130, column: 21)
!336 = !DILocation(line: 131, column: 13, scope: !335)
!337 = !DILocation(line: 132, column: 39, scope: !334)
!338 = !DILocation(line: 132, column: 41, scope: !334)
!339 = !DILocation(line: 132, column: 33, scope: !334)
!340 = !DILocation(line: 132, column: 22, scope: !334)
!341 = !DILocation(line: 135, column: 7, scope: !96)
!342 = !DILocation(line: 136, column: 29, scope: !96)
!343 = !DILocation(line: 136, column: 22, scope: !96)
!344 = !DILocation(line: 136, column: 20, scope: !96)
!345 = !DILocation(line: 136, column: 15, scope: !96)
!346 = !DILocation(line: 136, column: 13, scope: !96)
!347 = !DILocation(line: 136, column: 8, scope: !96)
!348 = !DILocation(line: 101, column: 22, scope: !96)
!349 = !DILocation(line: 137, column: 33, scope: !96)
!350 = !DILocation(line: 137, column: 31, scope: !96)
!351 = !DILocation(line: 137, column: 26, scope: !96)
!352 = !DILocation(line: 137, column: 24, scope: !96)
!353 = !DILocation(line: 137, column: 19, scope: !96)
!354 = !DILocation(line: 137, column: 17, scope: !96)
!355 = !DILocation(line: 137, column: 12, scope: !96)
!356 = !DILocation(line: 137, column: 10, scope: !96)
!357 = !DILocation(line: 138, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !96, file: !3, line: 138, column: 5)
!359 = !DILocation(line: 138, column: 5, scope: !96)
!360 = !DILocation(line: 139, column: 30, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 138, column: 22)
!362 = !DILocation(line: 139, column: 27, scope: !361)
!363 = !DILocation(line: 139, column: 20, scope: !361)
!364 = !DILocation(line: 139, column: 17, scope: !361)
!365 = !DILocation(line: 139, column: 6, scope: !361)
!366 = !DILocation(line: 141, column: 13, scope: !367)
!367 = distinct !DILexicalBlock(scope: !358, file: !3, line: 140, column: 9)
!368 = !DILocation(line: 142, column: 17, scope: !367)
!369 = !DILocation(line: 142, column: 25, scope: !367)
!370 = !DILocation(line: 142, column: 20, scope: !367)
!371 = !DILocation(line: 142, column: 33, scope: !367)
!372 = !DILocation(line: 142, column: 30, scope: !367)
!373 = !DILocation(line: 142, column: 28, scope: !367)
!374 = !DILocation(line: 142, column: 6, scope: !367)
!375 = !DILocation(line: 0, scope: !367)
!376 = !DILocation(line: 144, column: 1, scope: !96)
!377 = distinct !DISubprogram(name: "__ieee754_y0", scope: !3, file: !3, line: 164, type: !97, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390}
!379 = !DILocalVariable(name: "x", arg: 1, scope: !377, file: !3, line: 164, type: !9)
!380 = !DILocalVariable(name: "z", scope: !377, file: !3, line: 170, type: !9)
!381 = !DILocalVariable(name: "s", scope: !377, file: !3, line: 170, type: !9)
!382 = !DILocalVariable(name: "c", scope: !377, file: !3, line: 170, type: !9)
!383 = !DILocalVariable(name: "ss", scope: !377, file: !3, line: 170, type: !9)
!384 = !DILocalVariable(name: "cc", scope: !377, file: !3, line: 170, type: !9)
!385 = !DILocalVariable(name: "u", scope: !377, file: !3, line: 170, type: !9)
!386 = !DILocalVariable(name: "v", scope: !377, file: !3, line: 170, type: !9)
!387 = !DILocalVariable(name: "hx", scope: !377, file: !3, line: 171, type: !110)
!388 = !DILocalVariable(name: "ix", scope: !377, file: !3, line: 171, type: !110)
!389 = !DILocalVariable(name: "lx", scope: !377, file: !3, line: 171, type: !110)
!390 = !DILocalVariable(name: "ew_u", scope: !391, file: !3, line: 173, type: !116)
!391 = distinct !DILexicalBlock(scope: !377, file: !3, line: 173, column: 2)
!392 = !DILocation(line: 164, column: 29, scope: !377)
!393 = !DILocation(line: 173, column: 2, scope: !391)
!394 = !DILocation(line: 171, column: 12, scope: !377)
!395 = !DILocation(line: 174, column: 24, scope: !377)
!396 = !DILocation(line: 171, column: 15, scope: !377)
!397 = !DILocation(line: 176, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !377, file: !3, line: 176, column: 5)
!399 = !DILocation(line: 176, column: 5, scope: !377)
!400 = !DILocation(line: 176, column: 37, scope: !398)
!401 = !DILocation(line: 176, column: 35, scope: !398)
!402 = !DILocation(line: 176, column: 32, scope: !398)
!403 = !DILocation(line: 176, column: 21, scope: !398)
!404 = !DILocation(line: 171, column: 18, scope: !377)
!405 = !DILocation(line: 177, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !377, file: !3, line: 177, column: 12)
!407 = !DILocation(line: 177, column: 19, scope: !406)
!408 = !DILocation(line: 177, column: 12, scope: !377)
!409 = !DILocation(line: 178, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !377, file: !3, line: 178, column: 12)
!411 = !DILocation(line: 178, column: 12, scope: !377)
!412 = !DILocation(line: 179, column: 15, scope: !413)
!413 = distinct !DILexicalBlock(scope: !377, file: !3, line: 179, column: 12)
!414 = !DILocation(line: 179, column: 12, scope: !377)
!415 = !DILocation(line: 191, column: 21, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !3, line: 179, column: 30)
!417 = !DILocation(line: 170, column: 12, scope: !377)
!418 = !DILocation(line: 192, column: 21, scope: !416)
!419 = !DILocation(line: 170, column: 14, scope: !377)
!420 = !DILocation(line: 193, column: 23, scope: !416)
!421 = !DILocation(line: 170, column: 16, scope: !377)
!422 = !DILocation(line: 194, column: 23, scope: !416)
!423 = !DILocation(line: 170, column: 19, scope: !377)
!424 = !DILocation(line: 199, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !416, file: !3, line: 199, column: 20)
!426 = !DILocation(line: 199, column: 20, scope: !416)
!427 = !DILocation(line: 200, column: 31, scope: !428)
!428 = distinct !DILexicalBlock(scope: !425, file: !3, line: 199, column: 35)
!429 = !DILocation(line: 200, column: 26, scope: !428)
!430 = !DILocation(line: 200, column: 25, scope: !428)
!431 = !DILocation(line: 170, column: 9, scope: !377)
!432 = !DILocation(line: 201, column: 27, scope: !433)
!433 = distinct !DILexicalBlock(scope: !428, file: !3, line: 201, column: 25)
!434 = !DILocation(line: 201, column: 30, scope: !433)
!435 = !DILocation(line: 201, column: 25, scope: !428)
!436 = !DILocation(line: 201, column: 43, scope: !433)
!437 = !DILocation(line: 201, column: 37, scope: !433)
!438 = !DILocation(line: 202, column: 43, scope: !433)
!439 = !DILocation(line: 0, scope: !416)
!440 = !DILocation(line: 204, column: 22, scope: !441)
!441 = distinct !DILexicalBlock(scope: !416, file: !3, line: 204, column: 20)
!442 = !DILocation(line: 204, column: 20, scope: !416)
!443 = !DILocation(line: 204, column: 49, scope: !441)
!444 = !DILocation(line: 204, column: 54, scope: !441)
!445 = !DILocation(line: 204, column: 53, scope: !441)
!446 = !DILocation(line: 204, column: 35, scope: !441)
!447 = !DILocation(line: 326, column: 29, scope: !176, inlinedAt: !448)
!448 = distinct !DILocation(line: 206, column: 25, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !3, line: 205, column: 22)
!450 = !DILocation(line: 338, column: 12, scope: !176, inlinedAt: !448)
!451 = !DILocation(line: 341, column: 7, scope: !194, inlinedAt: !448)
!452 = !DILocation(line: 341, column: 5, scope: !176, inlinedAt: !448)
!453 = !DILocation(line: 342, column: 12, scope: !197, inlinedAt: !448)
!454 = !DILocation(line: 342, column: 10, scope: !194, inlinedAt: !448)
!455 = !DILocation(line: 343, column: 12, scope: !200, inlinedAt: !448)
!456 = !DILocation(line: 343, column: 42, scope: !202, inlinedAt: !448)
!457 = !DILocation(line: 0, scope: !204, inlinedAt: !448)
!458 = !DILocation(line: 333, column: 16, scope: !176, inlinedAt: !448)
!459 = !DILocation(line: 333, column: 19, scope: !176, inlinedAt: !448)
!460 = !DILocation(line: 345, column: 12, scope: !176, inlinedAt: !448)
!461 = !DILocation(line: 345, column: 9, scope: !176, inlinedAt: !448)
!462 = !DILocation(line: 337, column: 9, scope: !176, inlinedAt: !448)
!463 = !DILocation(line: 346, column: 6, scope: !176, inlinedAt: !448)
!464 = !DILocation(line: 346, column: 14, scope: !176, inlinedAt: !448)
!465 = !DILocation(line: 346, column: 22, scope: !176, inlinedAt: !448)
!466 = !DILocation(line: 346, column: 30, scope: !176, inlinedAt: !448)
!467 = !DILocation(line: 346, column: 38, scope: !176, inlinedAt: !448)
!468 = !DILocation(line: 346, column: 45, scope: !176, inlinedAt: !448)
!469 = !DILocation(line: 346, column: 44, scope: !176, inlinedAt: !448)
!470 = !DILocation(line: 346, column: 42, scope: !176, inlinedAt: !448)
!471 = !DILocation(line: 346, column: 36, scope: !176, inlinedAt: !448)
!472 = !DILocation(line: 346, column: 34, scope: !176, inlinedAt: !448)
!473 = !DILocation(line: 346, column: 28, scope: !176, inlinedAt: !448)
!474 = !DILocation(line: 346, column: 26, scope: !176, inlinedAt: !448)
!475 = !DILocation(line: 346, column: 20, scope: !176, inlinedAt: !448)
!476 = !DILocation(line: 346, column: 18, scope: !176, inlinedAt: !448)
!477 = !DILocation(line: 346, column: 12, scope: !176, inlinedAt: !448)
!478 = !DILocation(line: 346, column: 10, scope: !176, inlinedAt: !448)
!479 = !DILocation(line: 337, column: 11, scope: !176, inlinedAt: !448)
!480 = !DILocation(line: 347, column: 13, scope: !176, inlinedAt: !448)
!481 = !DILocation(line: 347, column: 21, scope: !176, inlinedAt: !448)
!482 = !DILocation(line: 347, column: 29, scope: !176, inlinedAt: !448)
!483 = !DILocation(line: 347, column: 37, scope: !176, inlinedAt: !448)
!484 = !DILocation(line: 347, column: 44, scope: !176, inlinedAt: !448)
!485 = !DILocation(line: 347, column: 43, scope: !176, inlinedAt: !448)
!486 = !DILocation(line: 347, column: 41, scope: !176, inlinedAt: !448)
!487 = !DILocation(line: 347, column: 35, scope: !176, inlinedAt: !448)
!488 = !DILocation(line: 347, column: 33, scope: !176, inlinedAt: !448)
!489 = !DILocation(line: 347, column: 27, scope: !176, inlinedAt: !448)
!490 = !DILocation(line: 347, column: 25, scope: !176, inlinedAt: !448)
!491 = !DILocation(line: 347, column: 19, scope: !176, inlinedAt: !448)
!492 = !DILocation(line: 347, column: 17, scope: !176, inlinedAt: !448)
!493 = !DILocation(line: 347, column: 11, scope: !176, inlinedAt: !448)
!494 = !DILocation(line: 347, column: 9, scope: !176, inlinedAt: !448)
!495 = !DILocation(line: 337, column: 13, scope: !176, inlinedAt: !448)
!496 = !DILocation(line: 348, column: 15, scope: !176, inlinedAt: !448)
!497 = !DILocation(line: 348, column: 12, scope: !176, inlinedAt: !448)
!498 = !DILocation(line: 348, column: 2, scope: !176, inlinedAt: !448)
!499 = !DILocation(line: 170, column: 22, scope: !377)
!500 = !DILocation(line: 462, column: 29, scope: !252, inlinedAt: !501)
!501 = distinct !DILocation(line: 206, column: 39, scope: !449)
!502 = !DILocation(line: 474, column: 12, scope: !252, inlinedAt: !501)
!503 = !DILocation(line: 477, column: 5, scope: !252, inlinedAt: !501)
!504 = !DILocation(line: 478, column: 12, scope: !267, inlinedAt: !501)
!505 = !DILocation(line: 478, column: 10, scope: !268, inlinedAt: !501)
!506 = !DILocation(line: 479, column: 12, scope: !271, inlinedAt: !501)
!507 = !DILocation(line: 479, column: 42, scope: !273, inlinedAt: !501)
!508 = !DILocation(line: 0, scope: !275, inlinedAt: !501)
!509 = !DILocation(line: 469, column: 16, scope: !252, inlinedAt: !501)
!510 = !DILocation(line: 469, column: 19, scope: !252, inlinedAt: !501)
!511 = !DILocation(line: 473, column: 13, scope: !252, inlinedAt: !501)
!512 = !DILocation(line: 482, column: 6, scope: !252, inlinedAt: !501)
!513 = !DILocation(line: 482, column: 14, scope: !252, inlinedAt: !501)
!514 = !DILocation(line: 482, column: 22, scope: !252, inlinedAt: !501)
!515 = !DILocation(line: 482, column: 30, scope: !252, inlinedAt: !501)
!516 = !DILocation(line: 482, column: 38, scope: !252, inlinedAt: !501)
!517 = !DILocation(line: 482, column: 45, scope: !252, inlinedAt: !501)
!518 = !DILocation(line: 482, column: 44, scope: !252, inlinedAt: !501)
!519 = !DILocation(line: 482, column: 42, scope: !252, inlinedAt: !501)
!520 = !DILocation(line: 482, column: 36, scope: !252, inlinedAt: !501)
!521 = !DILocation(line: 482, column: 34, scope: !252, inlinedAt: !501)
!522 = !DILocation(line: 482, column: 28, scope: !252, inlinedAt: !501)
!523 = !DILocation(line: 482, column: 26, scope: !252, inlinedAt: !501)
!524 = !DILocation(line: 482, column: 20, scope: !252, inlinedAt: !501)
!525 = !DILocation(line: 482, column: 18, scope: !252, inlinedAt: !501)
!526 = !DILocation(line: 482, column: 12, scope: !252, inlinedAt: !501)
!527 = !DILocation(line: 482, column: 10, scope: !252, inlinedAt: !501)
!528 = !DILocation(line: 473, column: 11, scope: !252, inlinedAt: !501)
!529 = !DILocation(line: 483, column: 13, scope: !252, inlinedAt: !501)
!530 = !DILocation(line: 483, column: 21, scope: !252, inlinedAt: !501)
!531 = !DILocation(line: 483, column: 29, scope: !252, inlinedAt: !501)
!532 = !DILocation(line: 483, column: 37, scope: !252, inlinedAt: !501)
!533 = !DILocation(line: 483, column: 45, scope: !252, inlinedAt: !501)
!534 = !DILocation(line: 483, column: 52, scope: !252, inlinedAt: !501)
!535 = !DILocation(line: 483, column: 51, scope: !252, inlinedAt: !501)
!536 = !DILocation(line: 483, column: 49, scope: !252, inlinedAt: !501)
!537 = !DILocation(line: 483, column: 43, scope: !252, inlinedAt: !501)
!538 = !DILocation(line: 483, column: 41, scope: !252, inlinedAt: !501)
!539 = !DILocation(line: 483, column: 35, scope: !252, inlinedAt: !501)
!540 = !DILocation(line: 483, column: 33, scope: !252, inlinedAt: !501)
!541 = !DILocation(line: 483, column: 27, scope: !252, inlinedAt: !501)
!542 = !DILocation(line: 483, column: 25, scope: !252, inlinedAt: !501)
!543 = !DILocation(line: 483, column: 19, scope: !252, inlinedAt: !501)
!544 = !DILocation(line: 483, column: 17, scope: !252, inlinedAt: !501)
!545 = !DILocation(line: 483, column: 11, scope: !252, inlinedAt: !501)
!546 = !DILocation(line: 483, column: 9, scope: !252, inlinedAt: !501)
!547 = !DILocation(line: 473, column: 9, scope: !252, inlinedAt: !501)
!548 = !DILocation(line: 484, column: 19, scope: !252, inlinedAt: !501)
!549 = !DILocation(line: 484, column: 16, scope: !252, inlinedAt: !501)
!550 = !DILocation(line: 484, column: 22, scope: !252, inlinedAt: !501)
!551 = !DILocation(line: 484, column: 2, scope: !252, inlinedAt: !501)
!552 = !DILocation(line: 170, column: 24, scope: !377)
!553 = !DILocation(line: 207, column: 37, scope: !449)
!554 = !DILocation(line: 207, column: 42, scope: !449)
!555 = !DILocation(line: 207, column: 40, scope: !449)
!556 = !DILocation(line: 207, column: 34, scope: !449)
!557 = !DILocation(line: 207, column: 47, scope: !449)
!558 = !DILocation(line: 207, column: 46, scope: !449)
!559 = !DILocation(line: 211, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !377, file: !3, line: 211, column: 5)
!561 = !DILocation(line: 211, column: 5, scope: !377)
!562 = !DILocation(line: 212, column: 23, scope: !563)
!563 = distinct !DILexicalBlock(scope: !560, file: !3, line: 211, column: 21)
!564 = !DILocation(line: 212, column: 22, scope: !563)
!565 = !DILocation(line: 212, column: 17, scope: !563)
!566 = !DILocation(line: 212, column: 6, scope: !563)
!567 = !DILocation(line: 214, column: 7, scope: !377)
!568 = !DILocation(line: 215, column: 46, scope: !377)
!569 = !DILocation(line: 215, column: 39, scope: !377)
!570 = !DILocation(line: 215, column: 37, scope: !377)
!571 = !DILocation(line: 215, column: 32, scope: !377)
!572 = !DILocation(line: 215, column: 30, scope: !377)
!573 = !DILocation(line: 215, column: 25, scope: !377)
!574 = !DILocation(line: 215, column: 23, scope: !377)
!575 = !DILocation(line: 215, column: 18, scope: !377)
!576 = !DILocation(line: 215, column: 16, scope: !377)
!577 = !DILocation(line: 215, column: 11, scope: !377)
!578 = !DILocation(line: 215, column: 9, scope: !377)
!579 = !DILocation(line: 216, column: 32, scope: !377)
!580 = !DILocation(line: 216, column: 30, scope: !377)
!581 = !DILocation(line: 216, column: 25, scope: !377)
!582 = !DILocation(line: 216, column: 23, scope: !377)
!583 = !DILocation(line: 216, column: 18, scope: !377)
!584 = !DILocation(line: 216, column: 16, scope: !377)
!585 = !DILocation(line: 216, column: 11, scope: !377)
!586 = !DILocation(line: 216, column: 9, scope: !377)
!587 = !DILocation(line: 217, column: 10, scope: !377)
!588 = !DILocation(line: 217, column: 20, scope: !377)
!589 = !DILocation(line: 217, column: 36, scope: !377)
!590 = !DILocation(line: 217, column: 35, scope: !377)
!591 = !DILocation(line: 217, column: 18, scope: !377)
!592 = !DILocation(line: 217, column: 13, scope: !377)
!593 = !DILocation(line: 217, column: 2, scope: !377)
!594 = !DILocation(line: 0, scope: !377)
!595 = !DILocation(line: 218, column: 1, scope: !377)
