; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@npio2_hw = internal unnamed_addr constant [32 x i32] [i32 1073291771, i32 1074340347, i32 1074977148, i32 1075388923, i32 1075800698, i32 1076025724, i32 1076231611, i32 1076437499, i32 1076643386, i32 1076849274, i32 1076971356, i32 1077074300, i32 1077177244, i32 1077280187, i32 1077383131, i32 1077486075, i32 1077589019, i32 1077691962, i32 1077794906, i32 1077897850, i32 1077968460, i32 1078019932, i32 1078071404, i32 1078122876, i32 1078174348, i32 1078225820, i32 1078277292, i32 1078328763, i32 1078380235, i32 1078431707, i32 1078483179, i32 1078534651], align 16, !dbg !0
@two_over_pi = internal constant [66 x i32] [i32 10680707, i32 7228996, i32 1387004, i32 2578385, i32 16069853, i32 12639074, i32 9804092, i32 4427841, i32 16666979, i32 11263675, i32 12935607, i32 2387514, i32 4345298, i32 14681673, i32 3074569, i32 13734428, i32 16653803, i32 1880361, i32 10960616, i32 8533493, i32 3062596, i32 8710556, i32 7349940, i32 6258241, i32 3772886, i32 3769171, i32 3798172, i32 8675211, i32 12450088, i32 3874808, i32 9961438, i32 366607, i32 15675153, i32 9132554, i32 7151469, i32 3571407, i32 2607881, i32 12013382, i32 4155038, i32 6285869, i32 7677882, i32 13102053, i32 15825725, i32 473591, i32 9065106, i32 15363067, i32 6271263, i32 9264392, i32 5636912, i32 4652155, i32 7056368, i32 13614112, i32 10155062, i32 1944035, i32 9527646, i32 15080200, i32 6658437, i32 6231200, i32 6832269, i32 16767104, i32 5075751, i32 3212806, i32 1398474, i32 7579849, i32 6349435, i32 12618859], align 16, !dbg !32
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__ieee754_rem_pio2(double, double*) local_unnamed_addr #0 !dbg !45 {
  %3 = alloca [3 x double], align 16
  %4 = bitcast [3 x double]* %3 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !103
  %5 = bitcast double %0 to i64, !dbg !105
  %6 = lshr i64 %5, 32, !dbg !105
  %7 = trunc i64 %6 to i32, !dbg !105
  %8 = and i32 %7, 2147483647, !dbg !107
  %9 = icmp ult i32 %8, 1072243196, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br i1 %9, label %10, label %12, !dbg !111

; <label>:10:                                     ; preds = %2
  store double %0, double* %1, align 8, !dbg !112, !tbaa !114
  %11 = getelementptr inbounds double, double* %1, i64 1, !dbg !118
  store double 0.000000e+00, double* %11, align 8, !dbg !119, !tbaa !114
  br label %156, !dbg !120

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i32 %8, 1073928572, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %13, label %14, label %46, !dbg !123

; <label>:14:                                     ; preds = %12
  %15 = icmp sgt i32 %7, 0, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %15, label %16, label %31, !dbg !127

; <label>:16:                                     ; preds = %14
  %17 = fadd double %0, 0xBFF921FB54400000, !dbg !128
  %18 = icmp eq i32 %8, 1073291771, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %18, label %22, label %19, !dbg !132

; <label>:19:                                     ; preds = %16
  %20 = fadd double %17, 0xBDD0B4611A626331, !dbg !133
  store double %20, double* %1, align 8, !dbg !135, !tbaa !114
  %21 = fsub double %17, %20, !dbg !136
  br label %26, !dbg !137

; <label>:22:                                     ; preds = %16
  %23 = fadd double %17, 0xBDD0B4611A600000, !dbg !138
  %24 = fadd double %23, 0xBBA3198A2E037073, !dbg !140
  store double %24, double* %1, align 8, !dbg !141, !tbaa !114
  %25 = fsub double %23, %24, !dbg !142
  br label %26

; <label>:26:                                     ; preds = %22, %19
  %27 = phi double [ 0xBBA3198A2E037073, %22 ], [ 0xBDD0B4611A626331, %19 ]
  %28 = phi double [ %25, %22 ], [ %21, %19 ]
  %29 = fadd double %28, %27, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = getelementptr inbounds double, double* %1, i64 1, !dbg !144
  store double %29, double* %30, align 8, !dbg !145
  br label %156, !dbg !146

; <label>:31:                                     ; preds = %14
  %32 = fadd double %0, 0x3FF921FB54400000, !dbg !147
  %33 = icmp eq i32 %8, 1073291771, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br i1 %33, label %37, label %34, !dbg !151

; <label>:34:                                     ; preds = %31
  %35 = fadd double %32, 0x3DD0B4611A626331, !dbg !152
  store double %35, double* %1, align 8, !dbg !154, !tbaa !114
  %36 = fsub double %32, %35, !dbg !155
  br label %41, !dbg !156

; <label>:37:                                     ; preds = %31
  %38 = fadd double %32, 0x3DD0B4611A600000, !dbg !157
  %39 = fadd double %38, 0x3BA3198A2E037073, !dbg !159
  store double %39, double* %1, align 8, !dbg !160, !tbaa !114
  %40 = fsub double %38, %39, !dbg !161
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = phi double [ 0x3BA3198A2E037073, %37 ], [ 0x3DD0B4611A626331, %34 ]
  %43 = phi double [ %40, %37 ], [ %36, %34 ]
  %44 = fadd double %43, %42, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = getelementptr inbounds double, double* %1, i64 1, !dbg !163
  store double %44, double* %45, align 8, !dbg !164
  br label %156, !dbg !165

; <label>:46:                                     ; preds = %12
  %47 = icmp ult i32 %8, 1094263292, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br i1 %47, label %48, label %111, !dbg !167

; <label>:48:                                     ; preds = %46
  %49 = tail call double @fabs(double %0) #5, !dbg !168
  %50 = fmul double %49, 0x3FE45F306DC9C883, !dbg !170
  %51 = fadd double %50, 5.000000e-01, !dbg !171
  %52 = fptosi double %51 to i32, !dbg !172
  %53 = sitofp i32 %52 to double, !dbg !174
  %54 = fmul double %53, 0x3FF921FB54400000, !dbg !176
  %55 = fsub double %49, %54, !dbg !177
  %56 = fmul double %53, 0x3DD0B4611A626331, !dbg !179
  %57 = icmp slt i32 %52, 32, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %57, label %58, label %66, !dbg !182

; <label>:58:                                     ; preds = %48
  %59 = add nsw i32 %52, -1, !dbg !183
  %60 = sext i32 %59 to i64, !dbg !184
  %61 = getelementptr inbounds [32 x i32], [32 x i32]* @npio2_hw, i64 0, i64 %60, !dbg !184
  %62 = load i32, i32* %61, align 4, !dbg !184, !tbaa !185
  %63 = icmp eq i32 %8, %62, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %63, label %66, label %64, !dbg !188

; <label>:64:                                     ; preds = %58
  %65 = fsub double %55, %56, !dbg !189
  store double %65, double* %1, align 8, !dbg !191, !tbaa !114
  br label %97, !dbg !192

; <label>:66:                                     ; preds = %58, %48
  %67 = lshr i32 %8, 20, !dbg !193
  %68 = fsub double %55, %56, !dbg !195
  store double %68, double* %1, align 8, !dbg !196, !tbaa !114
  %69 = bitcast double %68 to i64, !dbg !197
  %70 = lshr i64 %69, 52, !dbg !197
  %71 = trunc i64 %70 to i32, !dbg !198
  %72 = and i32 %71, 2047, !dbg !199
  %73 = sub nsw i32 %67, %72, !dbg !200
  %74 = icmp sgt i32 %73, 16, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %74, label %75, label %97, !dbg !203

; <label>:75:                                     ; preds = %66
  %76 = fmul double %53, 0x3DD0B4611A600000, !dbg !204
  %77 = fsub double %55, %76, !dbg !205
  %78 = fmul double %53, 0x3BA3198A2E037073, !dbg !206
  %79 = fsub double %55, %77, !dbg !207
  %80 = fsub double %79, %76, !dbg !208
  %81 = fsub double %78, %80, !dbg !209
  %82 = fsub double %77, %81, !dbg !210
  store double %82, double* %1, align 8, !dbg !211, !tbaa !114
  %83 = bitcast double %82 to i64, !dbg !212
  %84 = lshr i64 %83, 52, !dbg !212
  %85 = trunc i64 %84 to i32, !dbg !213
  %86 = and i32 %85, 2047, !dbg !214
  %87 = sub nsw i32 %67, %86, !dbg !215
  %88 = icmp sgt i32 %87, 49, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %88, label %89, label %97, !dbg !218

; <label>:89:                                     ; preds = %75
  %90 = fmul double %53, 0x3BA3198A2E000000, !dbg !219
  %91 = fsub double %77, %90, !dbg !221
  %92 = fmul double %53, 0x397B839A252049C1, !dbg !222
  %93 = fsub double %77, %91, !dbg !223
  %94 = fsub double %93, %90, !dbg !224
  %95 = fsub double %92, %94, !dbg !225
  %96 = fsub double %91, %95, !dbg !226
  store double %96, double* %1, align 8, !dbg !227, !tbaa !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br label %97, !dbg !228

; <label>:97:                                     ; preds = %66, %89, %75, %64
  %98 = phi double [ %65, %64 ], [ %96, %89 ], [ %82, %75 ], [ %68, %66 ], !dbg !229
  %99 = phi double [ %55, %64 ], [ %91, %89 ], [ %77, %75 ], [ %55, %66 ], !dbg !230
  %100 = phi double [ %56, %64 ], [ %95, %89 ], [ %81, %75 ], [ %56, %66 ], !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %101 = fsub double %99, %98, !dbg !231
  %102 = fsub double %101, %100, !dbg !232
  %103 = getelementptr inbounds double, double* %1, i64 1, !dbg !233
  store double %102, double* %103, align 8, !dbg !234, !tbaa !114
  %104 = icmp slt i32 %7, 0, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %104, label %105, label %156, !dbg !237

; <label>:105:                                    ; preds = %97
  %106 = insertelement <2 x double> undef, double %98, i32 0, !dbg !238
  %107 = insertelement <2 x double> %106, double %102, i32 1, !dbg !238
  %108 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %107, !dbg !238
  %109 = bitcast double* %1 to <2 x double>*, !dbg !240
  store <2 x double> %108, <2 x double>* %109, align 8, !dbg !240, !tbaa !114
  %110 = sub nsw i32 0, %52, !dbg !241
  br label %156, !dbg !242

; <label>:111:                                    ; preds = %46
  %112 = icmp ugt i32 %8, 2146435071, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %112, label %113, label %116, !dbg !245

; <label>:113:                                    ; preds = %111
  %114 = fsub double %0, %0, !dbg !246
  %115 = getelementptr inbounds double, double* %1, i64 1, !dbg !248
  store double %114, double* %115, align 8, !dbg !249, !tbaa !114
  store double %114, double* %1, align 8, !dbg !250, !tbaa !114
  br label %156, !dbg !251

; <label>:116:                                    ; preds = %111
  %117 = and i64 %5, 4294967295, !dbg !252
  %118 = lshr i32 %8, 20, !dbg !254
  %119 = add nsw i32 %118, -1046, !dbg !255
  %120 = shl i32 %119, 20, !dbg !257
  %121 = sub nsw i32 %8, %120, !dbg !257
  %122 = zext i32 %121 to i64, !dbg !257
  %123 = shl nuw i64 %122, 32, !dbg !257
  %124 = or i64 %123, %117, !dbg !257
  %125 = bitcast i64 %124 to double, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %126 = fptosi double %125 to i32, !dbg !261
  %127 = sitofp i32 %126 to double, !dbg !264
  %128 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0, !dbg !265
  store double %127, double* %128, align 16, !dbg !266, !tbaa !114
  %129 = fsub double %125, %127, !dbg !267
  %130 = fmul double %129, 0x4170000000000000, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %131 = fptosi double %130 to i32, !dbg !261
  %132 = sitofp i32 %131 to double, !dbg !264
  %133 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 1, !dbg !265
  store double %132, double* %133, align 8, !dbg !266, !tbaa !114
  %134 = fsub double %130, %132, !dbg !267
  %135 = fmul double %134, 0x4170000000000000, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  %136 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 2, !dbg !270
  store double %135, double* %136, align 16, !dbg !271, !tbaa !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %137 = fcmp oeq double %135, 0.000000e+00, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %137, label %138, label %146, !dbg !273

; <label>:138:                                    ; preds = %116, %138
  %139 = phi i64 [ %140, %138 ], [ 2, %116 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %140 = add i64 %139, -1, !dbg !275
  %141 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %140, !dbg !276
  %142 = load double, double* %141, align 8, !dbg !276, !tbaa !114
  %143 = fcmp oeq double %142, 0.000000e+00, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %143, label %138, label %144, !dbg !273, !llvm.loop !277

; <label>:144:                                    ; preds = %138
  %145 = trunc i64 %139 to i32, !dbg !272
  br label %146, !dbg !279

; <label>:146:                                    ; preds = %144, %116
  %147 = phi i32 [ 3, %116 ], [ %145, %144 ], !dbg !280
  %148 = call i32 @__kernel_rem_pio2(double* nonnull %128, double* %1, i32 %119, i32 %147, i32 2, i32* getelementptr inbounds ([66 x i32], [66 x i32]* @two_over_pi, i64 0, i64 0)) #5, !dbg !281
  %149 = icmp slt i32 %7, 0, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %149, label %150, label %156, !dbg !284

; <label>:150:                                    ; preds = %146
  %151 = bitcast double* %1 to <2 x double>*, !dbg !285
  %152 = load <2 x double>, <2 x double>* %151, align 8, !dbg !285, !tbaa !114
  %153 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %152, !dbg !287
  %154 = bitcast double* %1 to <2 x double>*, !dbg !288
  store <2 x double> %153, <2 x double>* %154, align 8, !dbg !288, !tbaa !114
  %155 = sub nsw i32 0, %148, !dbg !289
  br label %156, !dbg !290

; <label>:156:                                    ; preds = %146, %97, %150, %113, %105, %41, %26, %10
  %157 = phi i32 [ 0, %10 ], [ 1, %26 ], [ -1, %41 ], [ %110, %105 ], [ 0, %113 ], [ %155, %150 ], [ %52, %97 ], [ %148, %146 ], !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  ret i32 %157, !dbg !292
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__kernel_rem_pio2(double*, double*, i32, i32, i32, i32*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "npio2_hw", scope: !2, file: !3, line: 47, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_rem_pio2.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !14, !16, !18, !20, !22, !24, !26, !28, !30, !0, !32}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4609753056924401664, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "pio2_1", scope: !2, file: !3, line: 78, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4454258360616903473, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pio2_1t", scope: !2, file: !3, line: 79, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4454258360616747008, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pio2_2", scope: !2, file: !3, line: 80, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4297306550709743731, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pio2_2t", scope: !2, file: !3, line: 81, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4603909380684499075, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "invpio2", scope: !2, file: !3, line: 77, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !3, line: 75, type: !13, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4297306550709518336, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pio2_3", scope: !2, file: !3, line: 82, type: !13, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4142048980368378305, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "pio2_3t", scope: !2, file: !3, line: 83, type: !13, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4715268809856909312, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "two24", scope: !2, file: !3, line: 76, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 74, type: !13, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "two_over_pi", scope: !2, file: !3, line: 29, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2112, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!36 = !{!37}
!37 = !DISubrange(count: 66)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!45 = distinct !DISubprogram(name: "__ieee754_rem_pio2", scope: !3, file: !3, line: 86, type: !46, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!6, !9, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !61, !62, !63, !64, !65, !66, !67, !68, !71, !83, !88, !90, !94, !96, !98}
!50 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !3, line: 86, type: !9)
!51 = !DILocalVariable(name: "y", arg: 2, scope: !45, file: !3, line: 86, type: !48)
!52 = !DILocalVariable(name: "z", scope: !45, file: !3, line: 92, type: !9)
!53 = !DILocalVariable(name: "w", scope: !45, file: !3, line: 92, type: !9)
!54 = !DILocalVariable(name: "t", scope: !45, file: !3, line: 92, type: !9)
!55 = !DILocalVariable(name: "r", scope: !45, file: !3, line: 92, type: !9)
!56 = !DILocalVariable(name: "fn", scope: !45, file: !3, line: 92, type: !9)
!57 = !DILocalVariable(name: "tx", scope: !45, file: !3, line: 93, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DILocalVariable(name: "i", scope: !45, file: !3, line: 94, type: !6)
!62 = !DILocalVariable(name: "j", scope: !45, file: !3, line: 94, type: !6)
!63 = !DILocalVariable(name: "n", scope: !45, file: !3, line: 94, type: !6)
!64 = !DILocalVariable(name: "ix", scope: !45, file: !3, line: 94, type: !6)
!65 = !DILocalVariable(name: "hx", scope: !45, file: !3, line: 94, type: !6)
!66 = !DILocalVariable(name: "e0", scope: !45, file: !3, line: 95, type: !8)
!67 = !DILocalVariable(name: "nx", scope: !45, file: !3, line: 95, type: !8)
!68 = !DILocalVariable(name: "low", scope: !45, file: !3, line: 96, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DILocalVariable(name: "gh_u", scope: !72, file: !3, line: 98, type: !73)
!72 = distinct !DILexicalBlock(scope: !45, file: !3, line: 98, column: 2)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !74, line: 278, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !74, line: 270, size: 64, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !75, file: !74, line: 272, baseType: !9, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !75, file: !74, line: 277, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !74, line: 273, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !79, file: !74, line: 275, baseType: !69, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !79, file: !74, line: 276, baseType: !69, size: 32, offset: 32)
!83 = !DILocalVariable(name: "high", scope: !84, file: !3, line: 136, type: !69)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 135, column: 13)
!85 = distinct !DILexicalBlock(scope: !86, file: !3, line: 133, column: 9)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 127, column: 21)
!87 = distinct !DILexicalBlock(scope: !45, file: !3, line: 127, column: 5)
!88 = !DILocalVariable(name: "gh_u", scope: !89, file: !3, line: 139, type: !73)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 139, column: 3)
!90 = !DILocalVariable(name: "gh_u", scope: !91, file: !3, line: 147, type: !73)
!91 = distinct !DILexicalBlock(scope: !92, file: !3, line: 147, column: 7)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 141, column: 19)
!93 = distinct !DILexicalBlock(scope: !84, file: !3, line: 141, column: 13)
!94 = !DILocalVariable(name: "gl_u", scope: !95, file: !3, line: 169, type: !73)
!95 = distinct !DILexicalBlock(scope: !45, file: !3, line: 169, column: 2)
!96 = !DILocalVariable(name: "sl_u", scope: !97, file: !3, line: 170, type: !73)
!97 = distinct !DILexicalBlock(scope: !45, file: !3, line: 170, column: 2)
!98 = !DILocalVariable(name: "sh_u", scope: !99, file: !3, line: 172, type: !73)
!99 = distinct !DILexicalBlock(scope: !45, file: !3, line: 172, column: 2)
!100 = !DILocation(line: 86, column: 38, scope: !45)
!101 = !DILocation(line: 86, column: 49, scope: !45)
!102 = !DILocation(line: 92, column: 9, scope: !45)
!103 = !DILocation(line: 93, column: 2, scope: !45)
!104 = !DILocation(line: 93, column: 9, scope: !45)
!105 = !DILocation(line: 98, column: 2, scope: !72)
!106 = !DILocation(line: 94, column: 21, scope: !45)
!107 = !DILocation(line: 99, column: 9, scope: !45)
!108 = !DILocation(line: 94, column: 18, scope: !45)
!109 = !DILocation(line: 100, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !45, file: !3, line: 100, column: 5)
!111 = !DILocation(line: 100, column: 5, scope: !45)
!112 = !DILocation(line: 101, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !3, line: 101, column: 6)
!114 = !{!115, !115, i64 0}
!115 = !{!"double", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !DILocation(line: 101, column: 17, scope: !113)
!119 = !DILocation(line: 101, column: 22, scope: !113)
!120 = !DILocation(line: 101, column: 27, scope: !113)
!121 = !DILocation(line: 102, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !45, file: !3, line: 102, column: 5)
!123 = !DILocation(line: 102, column: 5, scope: !45)
!124 = !DILocation(line: 103, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 103, column: 9)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 102, column: 20)
!127 = !DILocation(line: 103, column: 9, scope: !126)
!128 = !DILocation(line: 104, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 103, column: 15)
!130 = !DILocation(line: 105, column: 8, scope: !131)
!131 = distinct !DILexicalBlock(scope: !129, file: !3, line: 105, column: 6)
!132 = !DILocation(line: 105, column: 6, scope: !129)
!133 = !DILocation(line: 106, column: 16, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 105, column: 22)
!135 = !DILocation(line: 106, column: 12, scope: !134)
!136 = !DILocation(line: 107, column: 16, scope: !134)
!137 = !DILocation(line: 108, column: 3, scope: !134)
!138 = !DILocation(line: 109, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !131, file: !3, line: 108, column: 10)
!140 = !DILocation(line: 110, column: 16, scope: !139)
!141 = !DILocation(line: 110, column: 12, scope: !139)
!142 = !DILocation(line: 111, column: 16, scope: !139)
!143 = !DILocation(line: 0, scope: !134)
!144 = !DILocation(line: 111, column: 7, scope: !139)
!145 = !DILocation(line: 111, column: 12, scope: !139)
!146 = !DILocation(line: 113, column: 3, scope: !129)
!147 = !DILocation(line: 115, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !125, file: !3, line: 114, column: 13)
!149 = !DILocation(line: 116, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !148, file: !3, line: 116, column: 6)
!151 = !DILocation(line: 116, column: 6, scope: !148)
!152 = !DILocation(line: 117, column: 16, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !3, line: 116, column: 22)
!154 = !DILocation(line: 117, column: 12, scope: !153)
!155 = !DILocation(line: 118, column: 16, scope: !153)
!156 = !DILocation(line: 119, column: 3, scope: !153)
!157 = !DILocation(line: 120, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !150, file: !3, line: 119, column: 10)
!159 = !DILocation(line: 121, column: 16, scope: !158)
!160 = !DILocation(line: 121, column: 12, scope: !158)
!161 = !DILocation(line: 122, column: 16, scope: !158)
!162 = !DILocation(line: 0, scope: !153)
!163 = !DILocation(line: 122, column: 7, scope: !158)
!164 = !DILocation(line: 122, column: 12, scope: !158)
!165 = !DILocation(line: 124, column: 3, scope: !148)
!166 = !DILocation(line: 127, column: 7, scope: !87)
!167 = !DILocation(line: 127, column: 5, scope: !45)
!168 = !DILocation(line: 128, column: 11, scope: !86)
!169 = !DILocation(line: 92, column: 19, scope: !45)
!170 = !DILocation(line: 129, column: 25, scope: !86)
!171 = !DILocation(line: 129, column: 33, scope: !86)
!172 = !DILocation(line: 129, column: 11, scope: !86)
!173 = !DILocation(line: 94, column: 16, scope: !45)
!174 = !DILocation(line: 130, column: 11, scope: !86)
!175 = !DILocation(line: 92, column: 23, scope: !45)
!176 = !DILocation(line: 131, column: 15, scope: !86)
!177 = !DILocation(line: 131, column: 12, scope: !86)
!178 = !DILocation(line: 92, column: 21, scope: !45)
!179 = !DILocation(line: 132, column: 13, scope: !86)
!180 = !DILocation(line: 92, column: 17, scope: !45)
!181 = !DILocation(line: 133, column: 10, scope: !85)
!182 = !DILocation(line: 133, column: 13, scope: !85)
!183 = !DILocation(line: 133, column: 29, scope: !85)
!184 = !DILocation(line: 133, column: 19, scope: !85)
!185 = !{!186, !186, i64 0}
!186 = !{!"int", !116, i64 0}
!187 = !DILocation(line: 133, column: 17, scope: !85)
!188 = !DILocation(line: 133, column: 9, scope: !86)
!189 = !DILocation(line: 134, column: 11, scope: !190)
!190 = distinct !DILexicalBlock(scope: !85, file: !3, line: 133, column: 34)
!191 = !DILocation(line: 134, column: 8, scope: !190)
!192 = !DILocation(line: 135, column: 6, scope: !190)
!193 = !DILocation(line: 137, column: 17, scope: !84)
!194 = !DILocation(line: 94, column: 14, scope: !45)
!195 = !DILocation(line: 138, column: 18, scope: !84)
!196 = !DILocation(line: 138, column: 15, scope: !84)
!197 = !DILocation(line: 139, column: 3, scope: !89)
!198 = !DILocation(line: 140, column: 22, scope: !84)
!199 = !DILocation(line: 140, column: 27, scope: !84)
!200 = !DILocation(line: 140, column: 15, scope: !84)
!201 = !DILocation(line: 94, column: 12, scope: !45)
!202 = !DILocation(line: 141, column: 14, scope: !93)
!203 = !DILocation(line: 141, column: 13, scope: !84)
!204 = !DILocation(line: 143, column: 14, scope: !92)
!205 = !DILocation(line: 144, column: 13, scope: !92)
!206 = !DILocation(line: 145, column: 14, scope: !92)
!207 = !DILocation(line: 145, column: 26, scope: !92)
!208 = !DILocation(line: 145, column: 29, scope: !92)
!209 = !DILocation(line: 145, column: 22, scope: !92)
!210 = !DILocation(line: 146, column: 15, scope: !92)
!211 = !DILocation(line: 146, column: 12, scope: !92)
!212 = !DILocation(line: 147, column: 7, scope: !91)
!213 = !DILocation(line: 148, column: 19, scope: !92)
!214 = !DILocation(line: 148, column: 24, scope: !92)
!215 = !DILocation(line: 148, column: 12, scope: !92)
!216 = !DILocation(line: 149, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !92, file: !3, line: 149, column: 10)
!218 = !DILocation(line: 149, column: 10, scope: !92)
!219 = !DILocation(line: 151, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !3, line: 149, column: 17)
!221 = !DILocation(line: 152, column: 14, scope: !220)
!222 = !DILocation(line: 153, column: 15, scope: !220)
!223 = !DILocation(line: 153, column: 27, scope: !220)
!224 = !DILocation(line: 153, column: 30, scope: !220)
!225 = !DILocation(line: 153, column: 23, scope: !220)
!226 = !DILocation(line: 154, column: 16, scope: !220)
!227 = !DILocation(line: 154, column: 13, scope: !220)
!228 = !DILocation(line: 155, column: 7, scope: !220)
!229 = !DILocation(line: 158, column: 16, scope: !86)
!230 = !DILocation(line: 0, scope: !220)
!231 = !DILocation(line: 158, column: 15, scope: !86)
!232 = !DILocation(line: 158, column: 21, scope: !86)
!233 = !DILocation(line: 158, column: 6, scope: !86)
!234 = !DILocation(line: 158, column: 11, scope: !86)
!235 = !DILocation(line: 159, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !86, file: !3, line: 159, column: 9)
!237 = !DILocation(line: 159, column: 9, scope: !86)
!238 = !DILocation(line: 159, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 159, column: 16)
!240 = !DILocation(line: 159, column: 22, scope: !239)
!241 = !DILocation(line: 159, column: 52, scope: !239)
!242 = !DILocation(line: 159, column: 45, scope: !239)
!243 = !DILocation(line: 165, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !45, file: !3, line: 165, column: 5)
!245 = !DILocation(line: 165, column: 5, scope: !45)
!246 = !DILocation(line: 166, column: 17, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !3, line: 165, column: 21)
!248 = !DILocation(line: 166, column: 11, scope: !247)
!249 = !DILocation(line: 166, column: 15, scope: !247)
!250 = !DILocation(line: 166, column: 10, scope: !247)
!251 = !DILocation(line: 166, column: 21, scope: !247)
!252 = !DILocation(line: 170, column: 2, scope: !97)
!253 = !DILocation(line: 96, column: 13, scope: !45)
!254 = !DILocation(line: 171, column: 17, scope: !45)
!255 = !DILocation(line: 171, column: 22, scope: !45)
!256 = !DILocation(line: 95, column: 6, scope: !45)
!257 = !DILocation(line: 172, column: 2, scope: !99)
!258 = !DILocation(line: 173, column: 6, scope: !259)
!259 = distinct !DILexicalBlock(scope: !45, file: !3, line: 173, column: 2)
!260 = !DILocation(line: 173, column: 2, scope: !259)
!261 = !DILocation(line: 174, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 173, column: 19)
!263 = distinct !DILexicalBlock(scope: !259, file: !3, line: 173, column: 2)
!264 = !DILocation(line: 174, column: 11, scope: !262)
!265 = !DILocation(line: 174, column: 3, scope: !262)
!266 = !DILocation(line: 174, column: 9, scope: !262)
!267 = !DILocation(line: 175, column: 13, scope: !262)
!268 = !DILocation(line: 175, column: 20, scope: !262)
!269 = !DILocation(line: 173, column: 2, scope: !263)
!270 = !DILocation(line: 177, column: 2, scope: !45)
!271 = !DILocation(line: 177, column: 8, scope: !45)
!272 = !DILocation(line: 95, column: 9, scope: !45)
!273 = !DILocation(line: 179, column: 2, scope: !45)
!274 = !DILocation(line: 179, column: 16, scope: !45)
!275 = !DILocation(line: 179, column: 13, scope: !45)
!276 = !DILocation(line: 179, column: 8, scope: !45)
!277 = distinct !{!277, !273, !278}
!278 = !DILocation(line: 179, column: 26, scope: !45)
!279 = !DILocation(line: 180, column: 26, scope: !45)
!280 = !DILocation(line: 0, scope: !45)
!281 = !DILocation(line: 180, column: 8, scope: !45)
!282 = !DILocation(line: 181, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !45, file: !3, line: 181, column: 5)
!284 = !DILocation(line: 181, column: 5, scope: !45)
!285 = !DILocation(line: 181, column: 20, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 181, column: 11)
!287 = !DILocation(line: 181, column: 19, scope: !286)
!288 = !DILocation(line: 181, column: 17, scope: !286)
!289 = !DILocation(line: 181, column: 47, scope: !286)
!290 = !DILocation(line: 181, column: 40, scope: !286)
!291 = !DILocation(line: 0, scope: !113)
!292 = !DILocation(line: 183, column: 1, scope: !45)
