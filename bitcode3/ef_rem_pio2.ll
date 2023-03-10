; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@npio2_hw = internal unnamed_addr constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 16, !dbg !0
@two_over_pi = internal constant [198 x i32] [i32 162, i32 249, i32 131, i32 110, i32 78, i32 68, i32 21, i32 41, i32 252, i32 39, i32 87, i32 209, i32 245, i32 52, i32 221, i32 192, i32 219, i32 98, i32 149, i32 153, i32 60, i32 67, i32 144, i32 65, i32 254, i32 81, i32 99, i32 171, i32 222, i32 187, i32 197, i32 97, i32 183, i32 36, i32 110, i32 58, i32 66, i32 77, i32 210, i32 224, i32 6, i32 73, i32 46, i32 234, i32 9, i32 209, i32 146, i32 28, i32 254, i32 29, i32 235, i32 28, i32 177, i32 41, i32 167, i32 62, i32 232, i32 130, i32 53, i32 245, i32 46, i32 187, i32 68, i32 132, i32 233, i32 156, i32 112, i32 38, i32 180, i32 95, i32 126, i32 65, i32 57, i32 145, i32 214, i32 57, i32 131, i32 83, i32 57, i32 244, i32 156, i32 132, i32 95, i32 139, i32 189, i32 249, i32 40, i32 59, i32 31, i32 248, i32 151, i32 255, i32 222, i32 5, i32 152, i32 15, i32 239, i32 47, i32 17, i32 139, i32 90, i32 10, i32 109, i32 31, i32 109, i32 54, i32 126, i32 207, i32 39, i32 203, i32 9, i32 183, i32 79, i32 70, i32 63, i32 102, i32 158, i32 95, i32 234, i32 45, i32 117, i32 39, i32 186, i32 199, i32 235, i32 229, i32 241, i32 123, i32 61, i32 7, i32 57, i32 247, i32 138, i32 82, i32 146, i32 234, i32 107, i32 251, i32 95, i32 177, i32 31, i32 141, i32 93, i32 8, i32 86, i32 3, i32 48, i32 70, i32 252, i32 123, i32 107, i32 171, i32 240, i32 207, i32 188, i32 32, i32 154, i32 244, i32 54, i32 29, i32 169, i32 227, i32 145, i32 97, i32 94, i32 230, i32 27, i32 8, i32 101, i32 153, i32 133, i32 95, i32 20, i32 160, i32 104, i32 64, i32 141, i32 255, i32 216, i32 128, i32 77, i32 115, i32 39, i32 49, i32 6, i32 6, i32 21, i32 86, i32 202, i32 115, i32 168, i32 201, i32 96, i32 226, i32 123, i32 192, i32 140, i32 107], align 16, !dbg !32

; Function Attrs: noredzone nounwind
define dso_local i32 @__ieee754_rem_pio2f(float, float*) local_unnamed_addr #0 !dbg !45 {
  %3 = alloca [3 x float], align 4
  %4 = bitcast [3 x float]* %3 to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #4, !dbg !93
  %5 = bitcast float %0 to i32, !dbg !95
  %6 = and i32 %5, 2147483647, !dbg !97
  %7 = icmp ult i32 %6, 1061752793, !dbg !99
  br i1 %7, label %8, label %10, !dbg !101

; <label>:8:                                      ; preds = %2
  store float %0, float* %1, align 4, !dbg !102, !tbaa !104
  %9 = getelementptr inbounds float, float* %1, i64 1, !dbg !108
  store float 0.000000e+00, float* %9, align 4, !dbg !109, !tbaa !104
  br label %145, !dbg !110

; <label>:10:                                     ; preds = %2
  %11 = icmp ult i32 %6, 1075235812, !dbg !111
  br i1 %11, label %12, label %44, !dbg !113

; <label>:12:                                     ; preds = %10
  %13 = icmp sgt i32 %5, 0, !dbg !114
  br i1 %13, label %14, label %29, !dbg !117

; <label>:14:                                     ; preds = %12
  %15 = fadd float %0, 0xBFF921F000000000, !dbg !118
  %16 = and i32 %5, 2147483632, !dbg !121
  %17 = icmp eq i32 %16, 1070141392, !dbg !123
  br i1 %17, label %23, label %18, !dbg !124

; <label>:18:                                     ; preds = %14
  %19 = fadd float %15, 0xBEE6A88860000000, !dbg !125
  store float %19, float* %1, align 4, !dbg !127, !tbaa !104
  %20 = fsub float %15, %19, !dbg !128
  %21 = fadd float %20, 0xBEE6A88860000000, !dbg !129
  %22 = getelementptr inbounds float, float* %1, i64 1, !dbg !130
  store float %21, float* %22, align 4, !dbg !131, !tbaa !104
  br label %145, !dbg !132

; <label>:23:                                     ; preds = %14
  %24 = fadd float %15, 0xBEE6A88000000000, !dbg !133
  %25 = fadd float %24, 0xBDD0B46100000000, !dbg !135
  store float %25, float* %1, align 4, !dbg !136, !tbaa !104
  %26 = fsub float %24, %25, !dbg !137
  %27 = fadd float %26, 0xBDD0B46100000000, !dbg !138
  %28 = getelementptr inbounds float, float* %1, i64 1, !dbg !139
  store float %27, float* %28, align 4, !dbg !140, !tbaa !104
  br label %145

; <label>:29:                                     ; preds = %12
  %30 = fadd float %0, 0x3FF921F000000000, !dbg !141
  %31 = and i32 %5, 2147483632, !dbg !143
  %32 = icmp eq i32 %31, 1070141392, !dbg !145
  br i1 %32, label %38, label %33, !dbg !146

; <label>:33:                                     ; preds = %29
  %34 = fadd float %30, 0x3EE6A88860000000, !dbg !147
  store float %34, float* %1, align 4, !dbg !149, !tbaa !104
  %35 = fsub float %30, %34, !dbg !150
  %36 = fadd float %35, 0x3EE6A88860000000, !dbg !151
  %37 = getelementptr inbounds float, float* %1, i64 1, !dbg !152
  store float %36, float* %37, align 4, !dbg !153, !tbaa !104
  br label %145, !dbg !154

; <label>:38:                                     ; preds = %29
  %39 = fadd float %30, 0x3EE6A88000000000, !dbg !155
  %40 = fadd float %39, 0x3DD0B46100000000, !dbg !157
  store float %40, float* %1, align 4, !dbg !158, !tbaa !104
  %41 = fsub float %39, %40, !dbg !159
  %42 = fadd float %41, 0x3DD0B46100000000, !dbg !160
  %43 = getelementptr inbounds float, float* %1, i64 1, !dbg !161
  store float %42, float* %43, align 4, !dbg !162, !tbaa !104
  br label %145

; <label>:44:                                     ; preds = %10
  %45 = icmp ult i32 %6, 1128861569, !dbg !163
  br i1 %45, label %46, label %106, !dbg !164

; <label>:46:                                     ; preds = %44
  %47 = tail call float @fabsf(float %0) #5, !dbg !165
  %48 = fmul float %47, 0x3FE45F3080000000, !dbg !167
  %49 = fadd float %48, 5.000000e-01, !dbg !168
  %50 = fptosi float %49 to i32, !dbg !169
  %51 = sitofp i32 %50 to float, !dbg !171
  %52 = fmul float %51, 0x3FF921F000000000, !dbg !173
  %53 = fsub float %47, %52, !dbg !174
  %54 = fmul float %51, 0x3EE6A88860000000, !dbg !176
  %55 = icmp slt i32 %50, 32, !dbg !178
  br i1 %55, label %56, label %65, !dbg !179

; <label>:56:                                     ; preds = %46
  %57 = and i32 %5, 2147483392, !dbg !180
  %58 = add nsw i32 %50, -1, !dbg !181
  %59 = sext i32 %58 to i64, !dbg !182
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* @npio2_hw, i64 0, i64 %59, !dbg !182
  %61 = load i32, i32* %60, align 4, !dbg !182, !tbaa !183
  %62 = icmp eq i32 %57, %61, !dbg !185
  br i1 %62, label %65, label %63, !dbg !186

; <label>:63:                                     ; preds = %56
  %64 = fsub float %53, %54, !dbg !187
  store float %64, float* %1, align 4, !dbg !189, !tbaa !104
  br label %94, !dbg !190

; <label>:65:                                     ; preds = %56, %46
  %66 = lshr i32 %6, 23, !dbg !191
  %67 = fsub float %53, %54, !dbg !193
  store float %67, float* %1, align 4, !dbg !194, !tbaa !104
  %68 = bitcast float %67 to i32, !dbg !195
  %69 = lshr i32 %68, 23, !dbg !197
  %70 = and i32 %69, 255, !dbg !198
  %71 = sub nsw i32 %66, %70, !dbg !199
  %72 = icmp sgt i32 %71, 8, !dbg !201
  br i1 %72, label %73, label %94, !dbg !202

; <label>:73:                                     ; preds = %65
  %74 = fmul float %51, 0x3EE6A88000000000, !dbg !203
  %75 = fsub float %53, %74, !dbg !204
  %76 = fmul float %51, 0x3DD0B46100000000, !dbg !205
  %77 = fsub float %53, %75, !dbg !206
  %78 = fsub float %77, %74, !dbg !207
  %79 = fsub float %76, %78, !dbg !208
  %80 = fsub float %75, %79, !dbg !209
  store float %80, float* %1, align 4, !dbg !210, !tbaa !104
  %81 = bitcast float %80 to i32, !dbg !211
  %82 = lshr i32 %81, 23, !dbg !212
  %83 = and i32 %82, 255, !dbg !213
  %84 = sub nsw i32 %66, %83, !dbg !214
  %85 = icmp sgt i32 %84, 25, !dbg !215
  br i1 %85, label %86, label %94, !dbg !217

; <label>:86:                                     ; preds = %73
  %87 = fmul float %51, 0x3DD0B46000000000, !dbg !218
  %88 = fsub float %75, %87, !dbg !220
  %89 = fmul float %51, 0x3C91A62640000000, !dbg !221
  %90 = fsub float %75, %88, !dbg !222
  %91 = fsub float %90, %87, !dbg !223
  %92 = fsub float %89, %91, !dbg !224
  %93 = fsub float %88, %92, !dbg !225
  store float %93, float* %1, align 4, !dbg !226, !tbaa !104
  br label %94, !dbg !227

; <label>:94:                                     ; preds = %65, %86, %73, %63
  %95 = phi float [ %64, %63 ], [ %93, %86 ], [ %80, %73 ], [ %67, %65 ], !dbg !228
  %96 = phi float [ %53, %63 ], [ %88, %86 ], [ %75, %73 ], [ %53, %65 ], !dbg !229
  %97 = phi float [ %54, %63 ], [ %92, %86 ], [ %79, %73 ], [ %54, %65 ], !dbg !229
  %98 = fsub float %96, %95, !dbg !230
  %99 = fsub float %98, %97, !dbg !231
  %100 = getelementptr inbounds float, float* %1, i64 1, !dbg !232
  store float %99, float* %100, align 4, !dbg !233, !tbaa !104
  %101 = icmp slt i32 %5, 0, !dbg !234
  br i1 %101, label %102, label %145, !dbg !236

; <label>:102:                                    ; preds = %94
  %103 = fsub float -0.000000e+00, %95, !dbg !237
  store float %103, float* %1, align 4, !dbg !239, !tbaa !104
  %104 = fsub float -0.000000e+00, %99, !dbg !240
  store float %104, float* %100, align 4, !dbg !241, !tbaa !104
  %105 = sub nsw i32 0, %50, !dbg !242
  br label %145, !dbg !243

; <label>:106:                                    ; preds = %44
  %107 = icmp ult i32 %6, 2139095040, !dbg !244
  br i1 %107, label %111, label %108, !dbg !246

; <label>:108:                                    ; preds = %106
  %109 = fsub float %0, %0, !dbg !247
  %110 = getelementptr inbounds float, float* %1, i64 1, !dbg !249
  store float %109, float* %110, align 4, !dbg !250, !tbaa !104
  store float %109, float* %1, align 4, !dbg !251, !tbaa !104
  br label %145, !dbg !252

; <label>:111:                                    ; preds = %106
  %112 = lshr i32 %6, 23, !dbg !253
  %113 = add nsw i32 %112, -134, !dbg !254
  %114 = shl i32 %113, 23, !dbg !256
  %115 = sub nsw i32 %6, %114, !dbg !256
  %116 = bitcast i32 %115 to float, !dbg !256
  %117 = fptosi float %116 to i32, !dbg !257
  %118 = sitofp i32 %117 to float, !dbg !261
  %119 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0, !dbg !262
  store float %118, float* %119, align 4, !dbg !263, !tbaa !104
  %120 = fsub float %116, %118, !dbg !264
  %121 = fmul float %120, 2.560000e+02, !dbg !265
  %122 = fptosi float %121 to i32, !dbg !257
  %123 = sitofp i32 %122 to float, !dbg !261
  %124 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1, !dbg !262
  store float %123, float* %124, align 4, !dbg !263, !tbaa !104
  %125 = fsub float %121, %123, !dbg !264
  %126 = fmul float %125, 2.560000e+02, !dbg !265
  %127 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2, !dbg !266
  store float %126, float* %127, align 4, !dbg !267, !tbaa !104
  br label %128, !dbg !269

; <label>:128:                                    ; preds = %128, %111
  %129 = phi i64 [ 3, %111 ], [ %130, %128 ], !dbg !270
  %130 = add nsw i64 %129, -1, !dbg !271
  %131 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 %130, !dbg !272
  %132 = load float, float* %131, align 4, !dbg !272, !tbaa !104
  %133 = fcmp oeq float %132, 0.000000e+00, !dbg !273
  br i1 %133, label %128, label %134, !dbg !269, !llvm.loop !274

; <label>:134:                                    ; preds = %128
  %135 = trunc i64 %129 to i32, !dbg !268
  %136 = call i32 @__kernel_rem_pio2f(float* nonnull %119, float* %1, i32 %113, i32 %135, i32 2, i32* getelementptr inbounds ([198 x i32], [198 x i32]* @two_over_pi, i64 0, i64 0)) #5, !dbg !276
  %137 = icmp slt i32 %5, 0, !dbg !277
  br i1 %137, label %138, label %145, !dbg !279

; <label>:138:                                    ; preds = %134
  %139 = load float, float* %1, align 4, !dbg !280, !tbaa !104
  %140 = fsub float -0.000000e+00, %139, !dbg !282
  store float %140, float* %1, align 4, !dbg !283, !tbaa !104
  %141 = getelementptr inbounds float, float* %1, i64 1, !dbg !284
  %142 = load float, float* %141, align 4, !dbg !284, !tbaa !104
  %143 = fsub float -0.000000e+00, %142, !dbg !285
  store float %143, float* %141, align 4, !dbg !286, !tbaa !104
  %144 = sub nsw i32 0, %136, !dbg !287
  br label %145, !dbg !288

; <label>:145:                                    ; preds = %134, %94, %33, %38, %18, %23, %138, %108, %102, %8
  %146 = phi i32 [ 0, %8 ], [ %105, %102 ], [ %144, %138 ], [ 0, %108 ], [ 1, %23 ], [ 1, %18 ], [ -1, %38 ], [ -1, %33 ], [ %50, %94 ], [ %136, %134 ], !dbg !289
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #4, !dbg !290
  ret i32 %146, !dbg !290
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__kernel_rem_pio2f(float*, float*, i32, i32, i32, i32*) local_unnamed_addr #3

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
!1 = distinct !DIGlobalVariable(name: "npio2_hw", scope: !2, file: !3, line: 60, type: !38, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_rem_pio2.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9, !8}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !{!11, !14, !16, !18, !20, !22, !24, !26, !28, !30, !0, !32}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1070141312, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "pio2_1", scope: !2, file: !3, line: 91, type: !13, isLocal: true, isDefinition: true)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 926237763, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "pio2_1t", scope: !2, file: !3, line: 92, type: !13, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 926237696, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pio2_2", scope: !2, file: !3, line: 93, type: !13, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 780509960, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "pio2_2t", scope: !2, file: !3, line: 94, type: !13, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 1059256708, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "invpio2", scope: !2, file: !3, line: 90, type: !13, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "half", scope: !2, file: !3, line: 88, type: !13, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 780509952, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "pio2_3", scope: !2, file: !3, line: 95, type: !13, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 613232946, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "pio2_3t", scope: !2, file: !3, line: 96, type: !13, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 1132462080, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "two8", scope: !2, file: !3, line: 89, type: !13, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "zero", scope: !2, file: !3, line: 87, type: !13, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "two_over_pi", scope: !2, file: !3, line: 29, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6336, elements: !36)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!36 = !{!37}
!37 = !DISubrange(count: 198)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 32)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!45 = distinct !DISubprogram(name: "__ieee754_rem_pio2f", scope: !3, file: !3, line: 99, type: !46, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!6, !9, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !61, !62, !63, !64, !65, !66, !67, !68, !78, !83, !85, !89}
!50 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !3, line: 99, type: !9)
!51 = !DILocalVariable(name: "y", arg: 2, scope: !45, file: !3, line: 99, type: !48)
!52 = !DILocalVariable(name: "z", scope: !45, file: !3, line: 105, type: !9)
!53 = !DILocalVariable(name: "w", scope: !45, file: !3, line: 105, type: !9)
!54 = !DILocalVariable(name: "t", scope: !45, file: !3, line: 105, type: !9)
!55 = !DILocalVariable(name: "r", scope: !45, file: !3, line: 105, type: !9)
!56 = !DILocalVariable(name: "fn", scope: !45, file: !3, line: 105, type: !9)
!57 = !DILocalVariable(name: "tx", scope: !45, file: !3, line: 106, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DILocalVariable(name: "i", scope: !45, file: !3, line: 107, type: !6)
!62 = !DILocalVariable(name: "j", scope: !45, file: !3, line: 107, type: !6)
!63 = !DILocalVariable(name: "n", scope: !45, file: !3, line: 107, type: !6)
!64 = !DILocalVariable(name: "ix", scope: !45, file: !3, line: 107, type: !6)
!65 = !DILocalVariable(name: "hx", scope: !45, file: !3, line: 107, type: !6)
!66 = !DILocalVariable(name: "e0", scope: !45, file: !3, line: 108, type: !8)
!67 = !DILocalVariable(name: "nx", scope: !45, file: !3, line: 108, type: !8)
!68 = !DILocalVariable(name: "gf_u", scope: !69, file: !3, line: 110, type: !70)
!69 = distinct !DILexicalBlock(scope: !45, file: !3, line: 110, column: 2)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !71, line: 347, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !71, line: 343, size: 32, elements: !73)
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !72, file: !71, line: 345, baseType: !9, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !72, file: !71, line: 346, baseType: !76, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !77)
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "high", scope: !79, file: !3, line: 148, type: !76)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 147, column: 13)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 145, column: 9)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 139, column: 21)
!82 = distinct !DILexicalBlock(scope: !45, file: !3, line: 139, column: 5)
!83 = !DILocalVariable(name: "gf_u", scope: !84, file: !3, line: 151, type: !70)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 151, column: 3)
!85 = !DILocalVariable(name: "gf_u", scope: !86, file: !3, line: 159, type: !70)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 159, column: 7)
!87 = distinct !DILexicalBlock(scope: !88, file: !3, line: 153, column: 18)
!88 = distinct !DILexicalBlock(scope: !79, file: !3, line: 153, column: 13)
!89 = !DILocalVariable(name: "sf_u", scope: !90, file: !3, line: 182, type: !70)
!90 = distinct !DILexicalBlock(scope: !45, file: !3, line: 182, column: 2)
!91 = !DILocation(line: 99, column: 38, scope: !45)
!92 = !DILocation(line: 99, column: 48, scope: !45)
!93 = !DILocation(line: 106, column: 2, scope: !45)
!94 = !DILocation(line: 106, column: 8, scope: !45)
!95 = !DILocation(line: 110, column: 2, scope: !69)
!96 = !DILocation(line: 107, column: 21, scope: !45)
!97 = !DILocation(line: 111, column: 9, scope: !45)
!98 = !DILocation(line: 107, column: 18, scope: !45)
!99 = !DILocation(line: 112, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !45, file: !3, line: 112, column: 5)
!101 = !DILocation(line: 112, column: 5, scope: !45)
!102 = !DILocation(line: 113, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 113, column: 6)
!104 = !{!105, !105, i64 0}
!105 = !{!"float", !106, i64 0}
!106 = !{!"omnipotent char", !107, i64 0}
!107 = !{!"Simple C/C++ TBAA"}
!108 = !DILocation(line: 113, column: 17, scope: !103)
!109 = !DILocation(line: 113, column: 22, scope: !103)
!110 = !DILocation(line: 113, column: 27, scope: !103)
!111 = !DILocation(line: 114, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !45, file: !3, line: 114, column: 5)
!113 = !DILocation(line: 114, column: 5, scope: !45)
!114 = !DILocation(line: 115, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 115, column: 9)
!116 = distinct !DILexicalBlock(scope: !112, file: !3, line: 114, column: 20)
!117 = !DILocation(line: 115, column: 9, scope: !116)
!118 = !DILocation(line: 116, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 115, column: 15)
!120 = !DILocation(line: 105, column: 8, scope: !45)
!121 = !DILocation(line: 117, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 117, column: 6)
!123 = !DILocation(line: 117, column: 21, scope: !122)
!124 = !DILocation(line: 117, column: 6, scope: !119)
!125 = !DILocation(line: 118, column: 16, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !3, line: 117, column: 35)
!127 = !DILocation(line: 118, column: 12, scope: !126)
!128 = !DILocation(line: 119, column: 16, scope: !126)
!129 = !DILocation(line: 119, column: 22, scope: !126)
!130 = !DILocation(line: 119, column: 7, scope: !126)
!131 = !DILocation(line: 119, column: 12, scope: !126)
!132 = !DILocation(line: 120, column: 3, scope: !126)
!133 = !DILocation(line: 121, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !122, file: !3, line: 120, column: 10)
!135 = !DILocation(line: 122, column: 16, scope: !134)
!136 = !DILocation(line: 122, column: 12, scope: !134)
!137 = !DILocation(line: 123, column: 16, scope: !134)
!138 = !DILocation(line: 123, column: 22, scope: !134)
!139 = !DILocation(line: 123, column: 7, scope: !134)
!140 = !DILocation(line: 123, column: 12, scope: !134)
!141 = !DILocation(line: 127, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !115, file: !3, line: 126, column: 13)
!143 = !DILocation(line: 128, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !142, file: !3, line: 128, column: 6)
!145 = !DILocation(line: 128, column: 21, scope: !144)
!146 = !DILocation(line: 128, column: 6, scope: !142)
!147 = !DILocation(line: 129, column: 16, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 128, column: 35)
!149 = !DILocation(line: 129, column: 12, scope: !148)
!150 = !DILocation(line: 130, column: 16, scope: !148)
!151 = !DILocation(line: 130, column: 22, scope: !148)
!152 = !DILocation(line: 130, column: 7, scope: !148)
!153 = !DILocation(line: 130, column: 12, scope: !148)
!154 = !DILocation(line: 131, column: 3, scope: !148)
!155 = !DILocation(line: 132, column: 9, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !3, line: 131, column: 10)
!157 = !DILocation(line: 133, column: 16, scope: !156)
!158 = !DILocation(line: 133, column: 12, scope: !156)
!159 = !DILocation(line: 134, column: 16, scope: !156)
!160 = !DILocation(line: 134, column: 22, scope: !156)
!161 = !DILocation(line: 134, column: 7, scope: !156)
!162 = !DILocation(line: 134, column: 12, scope: !156)
!163 = !DILocation(line: 139, column: 7, scope: !82)
!164 = !DILocation(line: 139, column: 5, scope: !45)
!165 = !DILocation(line: 140, column: 11, scope: !81)
!166 = !DILocation(line: 105, column: 12, scope: !45)
!167 = !DILocation(line: 141, column: 25, scope: !81)
!168 = !DILocation(line: 141, column: 33, scope: !81)
!169 = !DILocation(line: 141, column: 11, scope: !81)
!170 = !DILocation(line: 107, column: 16, scope: !45)
!171 = !DILocation(line: 142, column: 11, scope: !81)
!172 = !DILocation(line: 105, column: 16, scope: !45)
!173 = !DILocation(line: 143, column: 15, scope: !81)
!174 = !DILocation(line: 143, column: 12, scope: !81)
!175 = !DILocation(line: 105, column: 14, scope: !45)
!176 = !DILocation(line: 144, column: 13, scope: !81)
!177 = !DILocation(line: 105, column: 10, scope: !45)
!178 = !DILocation(line: 145, column: 10, scope: !80)
!179 = !DILocation(line: 145, column: 13, scope: !80)
!180 = !DILocation(line: 145, column: 18, scope: !80)
!181 = !DILocation(line: 145, column: 42, scope: !80)
!182 = !DILocation(line: 145, column: 32, scope: !80)
!183 = !{!184, !184, i64 0}
!184 = !{!"int", !106, i64 0}
!185 = !DILocation(line: 145, column: 30, scope: !80)
!186 = !DILocation(line: 145, column: 9, scope: !81)
!187 = !DILocation(line: 146, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !80, file: !3, line: 145, column: 47)
!189 = !DILocation(line: 146, column: 8, scope: !188)
!190 = !DILocation(line: 147, column: 6, scope: !188)
!191 = !DILocation(line: 149, column: 17, scope: !79)
!192 = !DILocation(line: 107, column: 14, scope: !45)
!193 = !DILocation(line: 150, column: 18, scope: !79)
!194 = !DILocation(line: 150, column: 15, scope: !79)
!195 = !DILocation(line: 151, column: 3, scope: !84)
!196 = !DILocation(line: 148, column: 21, scope: !79)
!197 = !DILocation(line: 152, column: 22, scope: !79)
!198 = !DILocation(line: 152, column: 27, scope: !79)
!199 = !DILocation(line: 152, column: 15, scope: !79)
!200 = !DILocation(line: 107, column: 12, scope: !45)
!201 = !DILocation(line: 153, column: 14, scope: !88)
!202 = !DILocation(line: 153, column: 13, scope: !79)
!203 = !DILocation(line: 155, column: 14, scope: !87)
!204 = !DILocation(line: 156, column: 13, scope: !87)
!205 = !DILocation(line: 157, column: 14, scope: !87)
!206 = !DILocation(line: 157, column: 26, scope: !87)
!207 = !DILocation(line: 157, column: 29, scope: !87)
!208 = !DILocation(line: 157, column: 22, scope: !87)
!209 = !DILocation(line: 158, column: 15, scope: !87)
!210 = !DILocation(line: 158, column: 12, scope: !87)
!211 = !DILocation(line: 159, column: 7, scope: !86)
!212 = !DILocation(line: 160, column: 19, scope: !87)
!213 = !DILocation(line: 160, column: 24, scope: !87)
!214 = !DILocation(line: 160, column: 12, scope: !87)
!215 = !DILocation(line: 161, column: 11, scope: !216)
!216 = distinct !DILexicalBlock(scope: !87, file: !3, line: 161, column: 10)
!217 = !DILocation(line: 161, column: 10, scope: !87)
!218 = !DILocation(line: 163, column: 15, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !3, line: 161, column: 17)
!220 = !DILocation(line: 164, column: 14, scope: !219)
!221 = !DILocation(line: 165, column: 15, scope: !219)
!222 = !DILocation(line: 165, column: 27, scope: !219)
!223 = !DILocation(line: 165, column: 30, scope: !219)
!224 = !DILocation(line: 165, column: 23, scope: !219)
!225 = !DILocation(line: 166, column: 16, scope: !219)
!226 = !DILocation(line: 166, column: 13, scope: !219)
!227 = !DILocation(line: 167, column: 7, scope: !219)
!228 = !DILocation(line: 170, column: 16, scope: !81)
!229 = !DILocation(line: 0, scope: !219)
!230 = !DILocation(line: 170, column: 15, scope: !81)
!231 = !DILocation(line: 170, column: 21, scope: !81)
!232 = !DILocation(line: 170, column: 6, scope: !81)
!233 = !DILocation(line: 170, column: 11, scope: !81)
!234 = !DILocation(line: 171, column: 11, scope: !235)
!235 = distinct !DILexicalBlock(scope: !81, file: !3, line: 171, column: 9)
!236 = !DILocation(line: 171, column: 9, scope: !81)
!237 = !DILocation(line: 171, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 171, column: 16)
!239 = !DILocation(line: 171, column: 22, scope: !238)
!240 = !DILocation(line: 171, column: 38, scope: !238)
!241 = !DILocation(line: 171, column: 36, scope: !238)
!242 = !DILocation(line: 171, column: 52, scope: !238)
!243 = !DILocation(line: 171, column: 45, scope: !238)
!244 = !DILocation(line: 177, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !45, file: !3, line: 177, column: 5)
!246 = !DILocation(line: 177, column: 5, scope: !45)
!247 = !DILocation(line: 178, column: 17, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !3, line: 177, column: 31)
!249 = !DILocation(line: 178, column: 11, scope: !248)
!250 = !DILocation(line: 178, column: 15, scope: !248)
!251 = !DILocation(line: 178, column: 10, scope: !248)
!252 = !DILocation(line: 178, column: 21, scope: !248)
!253 = !DILocation(line: 181, column: 17, scope: !45)
!254 = !DILocation(line: 181, column: 22, scope: !45)
!255 = !DILocation(line: 108, column: 6, scope: !45)
!256 = !DILocation(line: 182, column: 2, scope: !90)
!257 = !DILocation(line: 184, column: 19, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 183, column: 19)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 183, column: 2)
!260 = distinct !DILexicalBlock(scope: !45, file: !3, line: 183, column: 2)
!261 = !DILocation(line: 184, column: 11, scope: !258)
!262 = !DILocation(line: 184, column: 3, scope: !258)
!263 = !DILocation(line: 184, column: 9, scope: !258)
!264 = !DILocation(line: 185, column: 13, scope: !258)
!265 = !DILocation(line: 185, column: 20, scope: !258)
!266 = !DILocation(line: 187, column: 2, scope: !45)
!267 = !DILocation(line: 187, column: 8, scope: !45)
!268 = !DILocation(line: 108, column: 9, scope: !45)
!269 = !DILocation(line: 189, column: 2, scope: !45)
!270 = !DILocation(line: 0, scope: !45)
!271 = !DILocation(line: 189, column: 13, scope: !45)
!272 = !DILocation(line: 189, column: 8, scope: !45)
!273 = !DILocation(line: 189, column: 16, scope: !45)
!274 = distinct !{!274, !269, !275}
!275 = !DILocation(line: 189, column: 26, scope: !45)
!276 = !DILocation(line: 190, column: 8, scope: !45)
!277 = !DILocation(line: 191, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !45, file: !3, line: 191, column: 5)
!279 = !DILocation(line: 191, column: 5, scope: !45)
!280 = !DILocation(line: 191, column: 20, scope: !281)
!281 = distinct !DILexicalBlock(scope: !278, file: !3, line: 191, column: 11)
!282 = !DILocation(line: 191, column: 19, scope: !281)
!283 = !DILocation(line: 191, column: 17, scope: !281)
!284 = !DILocation(line: 191, column: 34, scope: !281)
!285 = !DILocation(line: 191, column: 33, scope: !281)
!286 = !DILocation(line: 191, column: 31, scope: !281)
!287 = !DILocation(line: 191, column: 47, scope: !281)
!288 = !DILocation(line: 191, column: 40, scope: !281)
!289 = !DILocation(line: 0, scope: !248)
!290 = !DILocation(line: 193, column: 1, scope: !45)
