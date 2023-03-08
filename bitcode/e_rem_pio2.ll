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
  br i1 %9, label %10, label %12, !dbg !111

; <label>:10:                                     ; preds = %2
  store double %0, double* %1, align 8, !dbg !112, !tbaa !114
  %11 = getelementptr inbounds double, double* %1, i64 1, !dbg !118
  store double 0.000000e+00, double* %11, align 8, !dbg !119, !tbaa !114
  br label %151, !dbg !120

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i32 %8, 1073928572, !dbg !121
  br i1 %13, label %14, label %44, !dbg !123

; <label>:14:                                     ; preds = %12
  %15 = icmp sgt i32 %7, 0, !dbg !124
  br i1 %15, label %16, label %30, !dbg !127

; <label>:16:                                     ; preds = %14
  %17 = fadd double %0, 0xBFF921FB54400000, !dbg !128
  %18 = icmp eq i32 %8, 1073291771, !dbg !130
  br i1 %18, label %24, label %19, !dbg !132

; <label>:19:                                     ; preds = %16
  %20 = fadd double %17, 0xBDD0B4611A626331, !dbg !133
  store double %20, double* %1, align 8, !dbg !135, !tbaa !114
  %21 = fsub double %17, %20, !dbg !136
  %22 = fadd double %21, 0xBDD0B4611A626331, !dbg !137
  %23 = getelementptr inbounds double, double* %1, i64 1, !dbg !138
  store double %22, double* %23, align 8, !dbg !139, !tbaa !114
  br label %151, !dbg !140

; <label>:24:                                     ; preds = %16
  %25 = fadd double %17, 0xBDD0B4611A600000, !dbg !141
  %26 = fadd double %25, 0xBBA3198A2E037073, !dbg !143
  store double %26, double* %1, align 8, !dbg !144, !tbaa !114
  %27 = fsub double %25, %26, !dbg !145
  %28 = fadd double %27, 0xBBA3198A2E037073, !dbg !146
  %29 = getelementptr inbounds double, double* %1, i64 1, !dbg !147
  store double %28, double* %29, align 8, !dbg !148, !tbaa !114
  br label %151

; <label>:30:                                     ; preds = %14
  %31 = fadd double %0, 0x3FF921FB54400000, !dbg !149
  %32 = icmp eq i32 %8, 1073291771, !dbg !151
  br i1 %32, label %38, label %33, !dbg !153

; <label>:33:                                     ; preds = %30
  %34 = fadd double %31, 0x3DD0B4611A626331, !dbg !154
  store double %34, double* %1, align 8, !dbg !156, !tbaa !114
  %35 = fsub double %31, %34, !dbg !157
  %36 = fadd double %35, 0x3DD0B4611A626331, !dbg !158
  %37 = getelementptr inbounds double, double* %1, i64 1, !dbg !159
  store double %36, double* %37, align 8, !dbg !160, !tbaa !114
  br label %151, !dbg !161

; <label>:38:                                     ; preds = %30
  %39 = fadd double %31, 0x3DD0B4611A600000, !dbg !162
  %40 = fadd double %39, 0x3BA3198A2E037073, !dbg !164
  store double %40, double* %1, align 8, !dbg !165, !tbaa !114
  %41 = fsub double %39, %40, !dbg !166
  %42 = fadd double %41, 0x3BA3198A2E037073, !dbg !167
  %43 = getelementptr inbounds double, double* %1, i64 1, !dbg !168
  store double %42, double* %43, align 8, !dbg !169, !tbaa !114
  br label %151

; <label>:44:                                     ; preds = %12
  %45 = icmp ult i32 %8, 1094263292, !dbg !170
  br i1 %45, label %46, label %109, !dbg !171

; <label>:46:                                     ; preds = %44
  %47 = tail call double @fabs(double %0) #5, !dbg !172
  %48 = fmul double %47, 0x3FE45F306DC9C883, !dbg !174
  %49 = fadd double %48, 5.000000e-01, !dbg !175
  %50 = fptosi double %49 to i32, !dbg !176
  %51 = sitofp i32 %50 to double, !dbg !178
  %52 = fmul double %51, 0x3FF921FB54400000, !dbg !180
  %53 = fsub double %47, %52, !dbg !181
  %54 = fmul double %51, 0x3DD0B4611A626331, !dbg !183
  %55 = icmp slt i32 %50, 32, !dbg !185
  br i1 %55, label %56, label %64, !dbg !186

; <label>:56:                                     ; preds = %46
  %57 = add nsw i32 %50, -1, !dbg !187
  %58 = sext i32 %57 to i64, !dbg !188
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* @npio2_hw, i64 0, i64 %58, !dbg !188
  %60 = load i32, i32* %59, align 4, !dbg !188, !tbaa !189
  %61 = icmp eq i32 %8, %60, !dbg !191
  br i1 %61, label %64, label %62, !dbg !192

; <label>:62:                                     ; preds = %56
  %63 = fsub double %53, %54, !dbg !193
  store double %63, double* %1, align 8, !dbg !195, !tbaa !114
  br label %95, !dbg !196

; <label>:64:                                     ; preds = %56, %46
  %65 = lshr i32 %8, 20, !dbg !197
  %66 = fsub double %53, %54, !dbg !199
  store double %66, double* %1, align 8, !dbg !200, !tbaa !114
  %67 = bitcast double %66 to i64, !dbg !201
  %68 = lshr i64 %67, 52, !dbg !201
  %69 = trunc i64 %68 to i32, !dbg !202
  %70 = and i32 %69, 2047, !dbg !203
  %71 = sub nsw i32 %65, %70, !dbg !204
  %72 = icmp sgt i32 %71, 16, !dbg !206
  br i1 %72, label %73, label %95, !dbg !207

; <label>:73:                                     ; preds = %64
  %74 = fmul double %51, 0x3DD0B4611A600000, !dbg !208
  %75 = fsub double %53, %74, !dbg !209
  %76 = fmul double %51, 0x3BA3198A2E037073, !dbg !210
  %77 = fsub double %53, %75, !dbg !211
  %78 = fsub double %77, %74, !dbg !212
  %79 = fsub double %76, %78, !dbg !213
  %80 = fsub double %75, %79, !dbg !214
  store double %80, double* %1, align 8, !dbg !215, !tbaa !114
  %81 = bitcast double %80 to i64, !dbg !216
  %82 = lshr i64 %81, 52, !dbg !216
  %83 = trunc i64 %82 to i32, !dbg !217
  %84 = and i32 %83, 2047, !dbg !218
  %85 = sub nsw i32 %65, %84, !dbg !219
  %86 = icmp sgt i32 %85, 49, !dbg !220
  br i1 %86, label %87, label %95, !dbg !222

; <label>:87:                                     ; preds = %73
  %88 = fmul double %51, 0x3BA3198A2E000000, !dbg !223
  %89 = fsub double %75, %88, !dbg !225
  %90 = fmul double %51, 0x397B839A252049C1, !dbg !226
  %91 = fsub double %75, %89, !dbg !227
  %92 = fsub double %91, %88, !dbg !228
  %93 = fsub double %90, %92, !dbg !229
  %94 = fsub double %89, %93, !dbg !230
  store double %94, double* %1, align 8, !dbg !231, !tbaa !114
  br label %95, !dbg !232

; <label>:95:                                     ; preds = %64, %87, %73, %62
  %96 = phi double [ %63, %62 ], [ %94, %87 ], [ %80, %73 ], [ %66, %64 ], !dbg !233
  %97 = phi double [ %53, %62 ], [ %89, %87 ], [ %75, %73 ], [ %53, %64 ], !dbg !234
  %98 = phi double [ %54, %62 ], [ %93, %87 ], [ %79, %73 ], [ %54, %64 ], !dbg !234
  %99 = fsub double %97, %96, !dbg !235
  %100 = fsub double %99, %98, !dbg !236
  %101 = getelementptr inbounds double, double* %1, i64 1, !dbg !237
  store double %100, double* %101, align 8, !dbg !238, !tbaa !114
  %102 = icmp slt i32 %7, 0, !dbg !239
  br i1 %102, label %103, label %151, !dbg !241

; <label>:103:                                    ; preds = %95
  %104 = insertelement <2 x double> undef, double %96, i32 0, !dbg !242
  %105 = insertelement <2 x double> %104, double %100, i32 1, !dbg !242
  %106 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %105, !dbg !242
  %107 = bitcast double* %1 to <2 x double>*, !dbg !244
  store <2 x double> %106, <2 x double>* %107, align 8, !dbg !244, !tbaa !114
  %108 = sub nsw i32 0, %50, !dbg !245
  br label %151, !dbg !246

; <label>:109:                                    ; preds = %44
  %110 = icmp ugt i32 %8, 2146435071, !dbg !247
  br i1 %110, label %111, label %114, !dbg !249

; <label>:111:                                    ; preds = %109
  %112 = fsub double %0, %0, !dbg !250
  %113 = getelementptr inbounds double, double* %1, i64 1, !dbg !252
  store double %112, double* %113, align 8, !dbg !253, !tbaa !114
  store double %112, double* %1, align 8, !dbg !254, !tbaa !114
  br label %151, !dbg !255

; <label>:114:                                    ; preds = %109
  %115 = and i64 %5, 4294967295, !dbg !256
  %116 = lshr i32 %8, 20, !dbg !258
  %117 = add nsw i32 %116, -1046, !dbg !259
  %118 = shl i32 %117, 20, !dbg !261
  %119 = sub nsw i32 %8, %118, !dbg !261
  %120 = zext i32 %119 to i64, !dbg !261
  %121 = shl nuw i64 %120, 32, !dbg !261
  %122 = or i64 %121, %115, !dbg !261
  %123 = bitcast i64 %122 to double, !dbg !261
  %124 = fptosi double %123 to i32, !dbg !262
  %125 = sitofp i32 %124 to double, !dbg !266
  %126 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 0, !dbg !267
  store double %125, double* %126, align 16, !dbg !268, !tbaa !114
  %127 = fsub double %123, %125, !dbg !269
  %128 = fmul double %127, 0x4170000000000000, !dbg !270
  %129 = fptosi double %128 to i32, !dbg !262
  %130 = sitofp i32 %129 to double, !dbg !266
  %131 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 1, !dbg !267
  store double %130, double* %131, align 8, !dbg !268, !tbaa !114
  %132 = fsub double %128, %130, !dbg !269
  %133 = fmul double %132, 0x4170000000000000, !dbg !270
  %134 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 2, !dbg !271
  store double %133, double* %134, align 16, !dbg !272, !tbaa !114
  br label %135, !dbg !274

; <label>:135:                                    ; preds = %135, %114
  %136 = phi i64 [ 3, %114 ], [ %137, %135 ], !dbg !275
  %137 = add nsw i64 %136, -1, !dbg !276
  %138 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 0, i64 %137, !dbg !277
  %139 = load double, double* %138, align 8, !dbg !277, !tbaa !114
  %140 = fcmp oeq double %139, 0.000000e+00, !dbg !278
  br i1 %140, label %135, label %141, !dbg !274, !llvm.loop !279

; <label>:141:                                    ; preds = %135
  %142 = trunc i64 %136 to i32, !dbg !273
  %143 = call i32 @__kernel_rem_pio2(double* nonnull %126, double* %1, i32 %117, i32 %142, i32 2, i32* getelementptr inbounds ([66 x i32], [66 x i32]* @two_over_pi, i64 0, i64 0)) #5, !dbg !281
  %144 = icmp slt i32 %7, 0, !dbg !282
  br i1 %144, label %145, label %151, !dbg !284

; <label>:145:                                    ; preds = %141
  %146 = bitcast double* %1 to <2 x double>*, !dbg !285
  %147 = load <2 x double>, <2 x double>* %146, align 8, !dbg !285, !tbaa !114
  %148 = fsub <2 x double> <double -0.000000e+00, double -0.000000e+00>, %147, !dbg !287
  %149 = bitcast double* %1 to <2 x double>*, !dbg !288
  store <2 x double> %148, <2 x double>* %149, align 8, !dbg !288, !tbaa !114
  %150 = sub nsw i32 0, %143, !dbg !289
  br label %151, !dbg !290

; <label>:151:                                    ; preds = %141, %95, %33, %38, %19, %24, %145, %111, %103, %10
  %152 = phi i32 [ 0, %10 ], [ %108, %103 ], [ 0, %111 ], [ %150, %145 ], [ 1, %24 ], [ 1, %19 ], [ -1, %38 ], [ -1, %33 ], [ %50, %95 ], [ %143, %141 ], !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  ret i32 %152, !dbg !291
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
!137 = !DILocation(line: 107, column: 22, scope: !134)
!138 = !DILocation(line: 107, column: 7, scope: !134)
!139 = !DILocation(line: 107, column: 12, scope: !134)
!140 = !DILocation(line: 108, column: 3, scope: !134)
!141 = !DILocation(line: 109, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !131, file: !3, line: 108, column: 10)
!143 = !DILocation(line: 110, column: 16, scope: !142)
!144 = !DILocation(line: 110, column: 12, scope: !142)
!145 = !DILocation(line: 111, column: 16, scope: !142)
!146 = !DILocation(line: 111, column: 22, scope: !142)
!147 = !DILocation(line: 111, column: 7, scope: !142)
!148 = !DILocation(line: 111, column: 12, scope: !142)
!149 = !DILocation(line: 115, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !125, file: !3, line: 114, column: 13)
!151 = !DILocation(line: 116, column: 8, scope: !152)
!152 = distinct !DILexicalBlock(scope: !150, file: !3, line: 116, column: 6)
!153 = !DILocation(line: 116, column: 6, scope: !150)
!154 = !DILocation(line: 117, column: 16, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 116, column: 22)
!156 = !DILocation(line: 117, column: 12, scope: !155)
!157 = !DILocation(line: 118, column: 16, scope: !155)
!158 = !DILocation(line: 118, column: 22, scope: !155)
!159 = !DILocation(line: 118, column: 7, scope: !155)
!160 = !DILocation(line: 118, column: 12, scope: !155)
!161 = !DILocation(line: 119, column: 3, scope: !155)
!162 = !DILocation(line: 120, column: 9, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !3, line: 119, column: 10)
!164 = !DILocation(line: 121, column: 16, scope: !163)
!165 = !DILocation(line: 121, column: 12, scope: !163)
!166 = !DILocation(line: 122, column: 16, scope: !163)
!167 = !DILocation(line: 122, column: 22, scope: !163)
!168 = !DILocation(line: 122, column: 7, scope: !163)
!169 = !DILocation(line: 122, column: 12, scope: !163)
!170 = !DILocation(line: 127, column: 7, scope: !87)
!171 = !DILocation(line: 127, column: 5, scope: !45)
!172 = !DILocation(line: 128, column: 11, scope: !86)
!173 = !DILocation(line: 92, column: 19, scope: !45)
!174 = !DILocation(line: 129, column: 25, scope: !86)
!175 = !DILocation(line: 129, column: 33, scope: !86)
!176 = !DILocation(line: 129, column: 11, scope: !86)
!177 = !DILocation(line: 94, column: 16, scope: !45)
!178 = !DILocation(line: 130, column: 11, scope: !86)
!179 = !DILocation(line: 92, column: 23, scope: !45)
!180 = !DILocation(line: 131, column: 15, scope: !86)
!181 = !DILocation(line: 131, column: 12, scope: !86)
!182 = !DILocation(line: 92, column: 21, scope: !45)
!183 = !DILocation(line: 132, column: 13, scope: !86)
!184 = !DILocation(line: 92, column: 17, scope: !45)
!185 = !DILocation(line: 133, column: 10, scope: !85)
!186 = !DILocation(line: 133, column: 13, scope: !85)
!187 = !DILocation(line: 133, column: 29, scope: !85)
!188 = !DILocation(line: 133, column: 19, scope: !85)
!189 = !{!190, !190, i64 0}
!190 = !{!"int", !116, i64 0}
!191 = !DILocation(line: 133, column: 17, scope: !85)
!192 = !DILocation(line: 133, column: 9, scope: !86)
!193 = !DILocation(line: 134, column: 11, scope: !194)
!194 = distinct !DILexicalBlock(scope: !85, file: !3, line: 133, column: 34)
!195 = !DILocation(line: 134, column: 8, scope: !194)
!196 = !DILocation(line: 135, column: 6, scope: !194)
!197 = !DILocation(line: 137, column: 17, scope: !84)
!198 = !DILocation(line: 94, column: 14, scope: !45)
!199 = !DILocation(line: 138, column: 18, scope: !84)
!200 = !DILocation(line: 138, column: 15, scope: !84)
!201 = !DILocation(line: 139, column: 3, scope: !89)
!202 = !DILocation(line: 140, column: 22, scope: !84)
!203 = !DILocation(line: 140, column: 27, scope: !84)
!204 = !DILocation(line: 140, column: 15, scope: !84)
!205 = !DILocation(line: 94, column: 12, scope: !45)
!206 = !DILocation(line: 141, column: 14, scope: !93)
!207 = !DILocation(line: 141, column: 13, scope: !84)
!208 = !DILocation(line: 143, column: 14, scope: !92)
!209 = !DILocation(line: 144, column: 13, scope: !92)
!210 = !DILocation(line: 145, column: 14, scope: !92)
!211 = !DILocation(line: 145, column: 26, scope: !92)
!212 = !DILocation(line: 145, column: 29, scope: !92)
!213 = !DILocation(line: 145, column: 22, scope: !92)
!214 = !DILocation(line: 146, column: 15, scope: !92)
!215 = !DILocation(line: 146, column: 12, scope: !92)
!216 = !DILocation(line: 147, column: 7, scope: !91)
!217 = !DILocation(line: 148, column: 19, scope: !92)
!218 = !DILocation(line: 148, column: 24, scope: !92)
!219 = !DILocation(line: 148, column: 12, scope: !92)
!220 = !DILocation(line: 149, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !92, file: !3, line: 149, column: 10)
!222 = !DILocation(line: 149, column: 10, scope: !92)
!223 = !DILocation(line: 151, column: 15, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !3, line: 149, column: 17)
!225 = !DILocation(line: 152, column: 14, scope: !224)
!226 = !DILocation(line: 153, column: 15, scope: !224)
!227 = !DILocation(line: 153, column: 27, scope: !224)
!228 = !DILocation(line: 153, column: 30, scope: !224)
!229 = !DILocation(line: 153, column: 23, scope: !224)
!230 = !DILocation(line: 154, column: 16, scope: !224)
!231 = !DILocation(line: 154, column: 13, scope: !224)
!232 = !DILocation(line: 155, column: 7, scope: !224)
!233 = !DILocation(line: 158, column: 16, scope: !86)
!234 = !DILocation(line: 0, scope: !224)
!235 = !DILocation(line: 158, column: 15, scope: !86)
!236 = !DILocation(line: 158, column: 21, scope: !86)
!237 = !DILocation(line: 158, column: 6, scope: !86)
!238 = !DILocation(line: 158, column: 11, scope: !86)
!239 = !DILocation(line: 159, column: 11, scope: !240)
!240 = distinct !DILexicalBlock(scope: !86, file: !3, line: 159, column: 9)
!241 = !DILocation(line: 159, column: 9, scope: !86)
!242 = !DILocation(line: 159, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 159, column: 16)
!244 = !DILocation(line: 159, column: 22, scope: !243)
!245 = !DILocation(line: 159, column: 52, scope: !243)
!246 = !DILocation(line: 159, column: 45, scope: !243)
!247 = !DILocation(line: 165, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !45, file: !3, line: 165, column: 5)
!249 = !DILocation(line: 165, column: 5, scope: !45)
!250 = !DILocation(line: 166, column: 17, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !3, line: 165, column: 21)
!252 = !DILocation(line: 166, column: 11, scope: !251)
!253 = !DILocation(line: 166, column: 15, scope: !251)
!254 = !DILocation(line: 166, column: 10, scope: !251)
!255 = !DILocation(line: 166, column: 21, scope: !251)
!256 = !DILocation(line: 170, column: 2, scope: !97)
!257 = !DILocation(line: 96, column: 13, scope: !45)
!258 = !DILocation(line: 171, column: 17, scope: !45)
!259 = !DILocation(line: 171, column: 22, scope: !45)
!260 = !DILocation(line: 95, column: 6, scope: !45)
!261 = !DILocation(line: 172, column: 2, scope: !99)
!262 = !DILocation(line: 174, column: 20, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 173, column: 19)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 173, column: 2)
!265 = distinct !DILexicalBlock(scope: !45, file: !3, line: 173, column: 2)
!266 = !DILocation(line: 174, column: 11, scope: !263)
!267 = !DILocation(line: 174, column: 3, scope: !263)
!268 = !DILocation(line: 174, column: 9, scope: !263)
!269 = !DILocation(line: 175, column: 13, scope: !263)
!270 = !DILocation(line: 175, column: 20, scope: !263)
!271 = !DILocation(line: 177, column: 2, scope: !45)
!272 = !DILocation(line: 177, column: 8, scope: !45)
!273 = !DILocation(line: 95, column: 9, scope: !45)
!274 = !DILocation(line: 179, column: 2, scope: !45)
!275 = !DILocation(line: 0, scope: !45)
!276 = !DILocation(line: 179, column: 13, scope: !45)
!277 = !DILocation(line: 179, column: 8, scope: !45)
!278 = !DILocation(line: 179, column: 16, scope: !45)
!279 = distinct !{!279, !274, !280}
!280 = !DILocation(line: 179, column: 26, scope: !45)
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
!291 = !DILocation(line: 183, column: 1, scope: !45)
