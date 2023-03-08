; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_rem_pio2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_rem_pio2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@npio2_hw = internal unnamed_addr constant [32 x i32] [i32 1070141184, i32 1078529792, i32 1083624192, i32 1086918400, i32 1090212608, i32 1092012800, i32 1093659904, i32 1095307008, i32 1096954112, i32 1098601216, i32 1099577856, i32 1100401408, i32 1101224960, i32 1102048512, i32 1102872064, i32 1103695616, i32 1104519168, i32 1105342720, i32 1106166272, i32 1106989824, i32 1107554816, i32 1107966464, i32 1108378368, i32 1108790016, i32 1109201920, i32 1109613568, i32 1110025472, i32 1110437120, i32 1110849024, i32 1111260672, i32 1111672576, i32 1112084224], align 16, !dbg !0
@two_over_pi = internal constant [198 x i32] [i32 162, i32 249, i32 131, i32 110, i32 78, i32 68, i32 21, i32 41, i32 252, i32 39, i32 87, i32 209, i32 245, i32 52, i32 221, i32 192, i32 219, i32 98, i32 149, i32 153, i32 60, i32 67, i32 144, i32 65, i32 254, i32 81, i32 99, i32 171, i32 222, i32 187, i32 197, i32 97, i32 183, i32 36, i32 110, i32 58, i32 66, i32 77, i32 210, i32 224, i32 6, i32 73, i32 46, i32 234, i32 9, i32 209, i32 146, i32 28, i32 254, i32 29, i32 235, i32 28, i32 177, i32 41, i32 167, i32 62, i32 232, i32 130, i32 53, i32 245, i32 46, i32 187, i32 68, i32 132, i32 233, i32 156, i32 112, i32 38, i32 180, i32 95, i32 126, i32 65, i32 57, i32 145, i32 214, i32 57, i32 131, i32 83, i32 57, i32 244, i32 156, i32 132, i32 95, i32 139, i32 189, i32 249, i32 40, i32 59, i32 31, i32 248, i32 151, i32 255, i32 222, i32 5, i32 152, i32 15, i32 239, i32 47, i32 17, i32 139, i32 90, i32 10, i32 109, i32 31, i32 109, i32 54, i32 126, i32 207, i32 39, i32 203, i32 9, i32 183, i32 79, i32 70, i32 63, i32 102, i32 158, i32 95, i32 234, i32 45, i32 117, i32 39, i32 186, i32 199, i32 235, i32 229, i32 241, i32 123, i32 61, i32 7, i32 57, i32 247, i32 138, i32 82, i32 146, i32 234, i32 107, i32 251, i32 95, i32 177, i32 31, i32 141, i32 93, i32 8, i32 86, i32 3, i32 48, i32 70, i32 252, i32 123, i32 107, i32 171, i32 240, i32 207, i32 188, i32 32, i32 154, i32 244, i32 54, i32 29, i32 169, i32 227, i32 145, i32 97, i32 94, i32 230, i32 27, i32 8, i32 101, i32 153, i32 133, i32 95, i32 20, i32 160, i32 104, i32 64, i32 141, i32 255, i32 216, i32 128, i32 77, i32 115, i32 39, i32 49, i32 6, i32 6, i32 21, i32 86, i32 202, i32 115, i32 168, i32 201, i32 96, i32 226, i32 123, i32 192, i32 140, i32 107], align 16, !dbg !32
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__ieee754_rem_pio2f(float, float*) local_unnamed_addr #0 !dbg !45 {
  %3 = alloca [3 x float], align 4
  %4 = bitcast [3 x float]* %3 to i8*, !dbg !93
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #4, !dbg !93
  %5 = bitcast float %0 to i32, !dbg !95
  %6 = and i32 %5, 2147483647, !dbg !97
  %7 = icmp ult i32 %6, 1061752793, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %7, label %8, label %10, !dbg !101

; <label>:8:                                      ; preds = %2
  store float %0, float* %1, align 4, !dbg !102, !tbaa !104
  %9 = getelementptr inbounds float, float* %1, i64 1, !dbg !108
  store float 0.000000e+00, float* %9, align 4, !dbg !109, !tbaa !104
  br label %150, !dbg !110

; <label>:10:                                     ; preds = %2
  %11 = icmp ult i32 %6, 1075235812, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %11, label %12, label %46, !dbg !113

; <label>:12:                                     ; preds = %10
  %13 = icmp sgt i32 %5, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %13, label %14, label %30, !dbg !117

; <label>:14:                                     ; preds = %12
  %15 = fadd float %0, 0xBFF921F000000000, !dbg !118
  %16 = and i32 %5, 2147483632, !dbg !121
  %17 = icmp eq i32 %16, 1070141392, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %17, label %21, label %18, !dbg !124

; <label>:18:                                     ; preds = %14
  %19 = fadd float %15, 0xBEE6A88860000000, !dbg !125
  store float %19, float* %1, align 4, !dbg !127, !tbaa !104
  %20 = fsub float %15, %19, !dbg !128
  br label %25, !dbg !129

; <label>:21:                                     ; preds = %14
  %22 = fadd float %15, 0xBEE6A88000000000, !dbg !130
  %23 = fadd float %22, 0xBDD0B46100000000, !dbg !132
  store float %23, float* %1, align 4, !dbg !133, !tbaa !104
  %24 = fsub float %22, %23, !dbg !134
  br label %25

; <label>:25:                                     ; preds = %21, %18
  %26 = phi float [ 0xBDD0B46100000000, %21 ], [ 0xBEE6A88860000000, %18 ]
  %27 = phi float [ %24, %21 ], [ %20, %18 ]
  %28 = fadd float %27, %26, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %29 = getelementptr inbounds float, float* %1, i64 1, !dbg !136
  store float %28, float* %29, align 4, !dbg !137
  br label %150, !dbg !138

; <label>:30:                                     ; preds = %12
  %31 = fadd float %0, 0x3FF921F000000000, !dbg !139
  %32 = and i32 %5, 2147483632, !dbg !141
  %33 = icmp eq i32 %32, 1070141392, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %33, label %37, label %34, !dbg !144

; <label>:34:                                     ; preds = %30
  %35 = fadd float %31, 0x3EE6A88860000000, !dbg !145
  store float %35, float* %1, align 4, !dbg !147, !tbaa !104
  %36 = fsub float %31, %35, !dbg !148
  br label %41, !dbg !149

; <label>:37:                                     ; preds = %30
  %38 = fadd float %31, 0x3EE6A88000000000, !dbg !150
  %39 = fadd float %38, 0x3DD0B46100000000, !dbg !152
  store float %39, float* %1, align 4, !dbg !153, !tbaa !104
  %40 = fsub float %38, %39, !dbg !154
  br label %41

; <label>:41:                                     ; preds = %37, %34
  %42 = phi float [ 0x3DD0B46100000000, %37 ], [ 0x3EE6A88860000000, %34 ]
  %43 = phi float [ %40, %37 ], [ %36, %34 ]
  %44 = fadd float %43, %42, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %45 = getelementptr inbounds float, float* %1, i64 1, !dbg !156
  store float %44, float* %45, align 4, !dbg !157
  br label %150, !dbg !158

; <label>:46:                                     ; preds = %10
  %47 = icmp ult i32 %6, 1128861569, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %47, label %48, label %108, !dbg !160

; <label>:48:                                     ; preds = %46
  %49 = tail call float @fabsf(float %0) #5, !dbg !161
  %50 = fmul float %49, 0x3FE45F3080000000, !dbg !163
  %51 = fadd float %50, 5.000000e-01, !dbg !164
  %52 = fptosi float %51 to i32, !dbg !165
  %53 = sitofp i32 %52 to float, !dbg !167
  %54 = fmul float %53, 0x3FF921F000000000, !dbg !169
  %55 = fsub float %49, %54, !dbg !170
  %56 = fmul float %53, 0x3EE6A88860000000, !dbg !172
  %57 = icmp slt i32 %52, 32, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %57, label %58, label %67, !dbg !175

; <label>:58:                                     ; preds = %48
  %59 = and i32 %5, 2147483392, !dbg !176
  %60 = add nsw i32 %52, -1, !dbg !177
  %61 = sext i32 %60 to i64, !dbg !178
  %62 = getelementptr inbounds [32 x i32], [32 x i32]* @npio2_hw, i64 0, i64 %61, !dbg !178
  %63 = load i32, i32* %62, align 4, !dbg !178, !tbaa !179
  %64 = icmp eq i32 %59, %63, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %64, label %67, label %65, !dbg !182

; <label>:65:                                     ; preds = %58
  %66 = fsub float %55, %56, !dbg !183
  store float %66, float* %1, align 4, !dbg !185, !tbaa !104
  br label %96, !dbg !186

; <label>:67:                                     ; preds = %58, %48
  %68 = lshr i32 %6, 23, !dbg !187
  %69 = fsub float %55, %56, !dbg !189
  store float %69, float* %1, align 4, !dbg !190, !tbaa !104
  %70 = bitcast float %69 to i32, !dbg !191
  %71 = lshr i32 %70, 23, !dbg !193
  %72 = and i32 %71, 255, !dbg !194
  %73 = sub nsw i32 %68, %72, !dbg !195
  %74 = icmp sgt i32 %73, 8, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %74, label %75, label %96, !dbg !198

; <label>:75:                                     ; preds = %67
  %76 = fmul float %53, 0x3EE6A88000000000, !dbg !199
  %77 = fsub float %55, %76, !dbg !200
  %78 = fmul float %53, 0x3DD0B46100000000, !dbg !201
  %79 = fsub float %55, %77, !dbg !202
  %80 = fsub float %79, %76, !dbg !203
  %81 = fsub float %78, %80, !dbg !204
  %82 = fsub float %77, %81, !dbg !205
  store float %82, float* %1, align 4, !dbg !206, !tbaa !104
  %83 = bitcast float %82 to i32, !dbg !207
  %84 = lshr i32 %83, 23, !dbg !208
  %85 = and i32 %84, 255, !dbg !209
  %86 = sub nsw i32 %68, %85, !dbg !210
  %87 = icmp sgt i32 %86, 25, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  br i1 %87, label %88, label %96, !dbg !213

; <label>:88:                                     ; preds = %75
  %89 = fmul float %53, 0x3DD0B46000000000, !dbg !214
  %90 = fsub float %77, %89, !dbg !216
  %91 = fmul float %53, 0x3C91A62640000000, !dbg !217
  %92 = fsub float %77, %90, !dbg !218
  %93 = fsub float %92, %89, !dbg !219
  %94 = fsub float %91, %93, !dbg !220
  %95 = fsub float %90, %94, !dbg !221
  store float %95, float* %1, align 4, !dbg !222, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br label %96, !dbg !223

; <label>:96:                                     ; preds = %67, %88, %75, %65
  %97 = phi float [ %66, %65 ], [ %95, %88 ], [ %82, %75 ], [ %69, %67 ], !dbg !224
  %98 = phi float [ %55, %65 ], [ %90, %88 ], [ %77, %75 ], [ %55, %67 ], !dbg !225
  %99 = phi float [ %56, %65 ], [ %94, %88 ], [ %81, %75 ], [ %56, %67 ], !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %100 = fsub float %98, %97, !dbg !226
  %101 = fsub float %100, %99, !dbg !227
  %102 = getelementptr inbounds float, float* %1, i64 1, !dbg !228
  store float %101, float* %102, align 4, !dbg !229, !tbaa !104
  %103 = icmp slt i32 %5, 0, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %103, label %104, label %150, !dbg !232

; <label>:104:                                    ; preds = %96
  %105 = fsub float -0.000000e+00, %97, !dbg !233
  store float %105, float* %1, align 4, !dbg !235, !tbaa !104
  %106 = fsub float -0.000000e+00, %101, !dbg !236
  store float %106, float* %102, align 4, !dbg !237, !tbaa !104
  %107 = sub nsw i32 0, %52, !dbg !238
  br label %150, !dbg !239

; <label>:108:                                    ; preds = %46
  %109 = icmp ult i32 %6, 2139095040, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br i1 %109, label %113, label %110, !dbg !242

; <label>:110:                                    ; preds = %108
  %111 = fsub float %0, %0, !dbg !243
  %112 = getelementptr inbounds float, float* %1, i64 1, !dbg !245
  store float %111, float* %112, align 4, !dbg !246, !tbaa !104
  store float %111, float* %1, align 4, !dbg !247, !tbaa !104
  br label %150, !dbg !248

; <label>:113:                                    ; preds = %108
  %114 = lshr i32 %6, 23, !dbg !249
  %115 = add nsw i32 %114, -134, !dbg !250
  %116 = shl i32 %115, 23, !dbg !252
  %117 = sub nsw i32 %6, %116, !dbg !252
  %118 = bitcast i32 %117 to float, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %119 = fptosi float %118 to i32, !dbg !256
  %120 = sitofp i32 %119 to float, !dbg !259
  %121 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 0, !dbg !260
  store float %120, float* %121, align 4, !dbg !261, !tbaa !104
  %122 = fsub float %118, %120, !dbg !262
  %123 = fmul float %122, 2.560000e+02, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %124 = fptosi float %123 to i32, !dbg !256
  %125 = sitofp i32 %124 to float, !dbg !259
  %126 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 1, !dbg !260
  store float %125, float* %126, align 4, !dbg !261, !tbaa !104
  %127 = fsub float %123, %125, !dbg !262
  %128 = fmul float %127, 2.560000e+02, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %129 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 2, !dbg !265
  store float %128, float* %129, align 4, !dbg !266, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %130 = fcmp oeq float %128, 0.000000e+00, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %130, label %131, label %139, !dbg !268

; <label>:131:                                    ; preds = %113, %131
  %132 = phi i64 [ %133, %131 ], [ 2, %113 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  %133 = add i64 %132, -1, !dbg !270
  %134 = getelementptr inbounds [3 x float], [3 x float]* %3, i64 0, i64 %133, !dbg !271
  %135 = load float, float* %134, align 4, !dbg !271, !tbaa !104
  %136 = fcmp oeq float %135, 0.000000e+00, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %136, label %131, label %137, !dbg !268, !llvm.loop !272

; <label>:137:                                    ; preds = %131
  %138 = trunc i64 %132 to i32, !dbg !267
  br label %139, !dbg !274

; <label>:139:                                    ; preds = %137, %113
  %140 = phi i32 [ 3, %113 ], [ %138, %137 ], !dbg !275
  %141 = call i32 @__kernel_rem_pio2f(float* nonnull %121, float* %1, i32 %115, i32 %140, i32 2, i32* getelementptr inbounds ([198 x i32], [198 x i32]* @two_over_pi, i64 0, i64 0)) #5, !dbg !276
  %142 = icmp slt i32 %5, 0, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  br i1 %142, label %143, label %150, !dbg !279

; <label>:143:                                    ; preds = %139
  %144 = load float, float* %1, align 4, !dbg !280, !tbaa !104
  %145 = fsub float -0.000000e+00, %144, !dbg !282
  store float %145, float* %1, align 4, !dbg !283, !tbaa !104
  %146 = getelementptr inbounds float, float* %1, i64 1, !dbg !284
  %147 = load float, float* %146, align 4, !dbg !284, !tbaa !104
  %148 = fsub float -0.000000e+00, %147, !dbg !285
  store float %148, float* %146, align 4, !dbg !286, !tbaa !104
  %149 = sub nsw i32 0, %141, !dbg !287
  br label %150, !dbg !288

; <label>:150:                                    ; preds = %139, %96, %143, %110, %104, %41, %25, %8
  %151 = phi i32 [ 0, %8 ], [ 1, %25 ], [ -1, %41 ], [ %107, %104 ], [ %149, %143 ], [ 0, %110 ], [ %52, %96 ], [ %141, %139 ], !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #4, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  ret i32 %151, !dbg !291
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
!129 = !DILocation(line: 120, column: 3, scope: !126)
!130 = !DILocation(line: 121, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !122, file: !3, line: 120, column: 10)
!132 = !DILocation(line: 122, column: 16, scope: !131)
!133 = !DILocation(line: 122, column: 12, scope: !131)
!134 = !DILocation(line: 123, column: 16, scope: !131)
!135 = !DILocation(line: 0, scope: !126)
!136 = !DILocation(line: 123, column: 7, scope: !131)
!137 = !DILocation(line: 123, column: 12, scope: !131)
!138 = !DILocation(line: 125, column: 3, scope: !119)
!139 = !DILocation(line: 127, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !115, file: !3, line: 126, column: 13)
!141 = !DILocation(line: 128, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !140, file: !3, line: 128, column: 6)
!143 = !DILocation(line: 128, column: 21, scope: !142)
!144 = !DILocation(line: 128, column: 6, scope: !140)
!145 = !DILocation(line: 129, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !3, line: 128, column: 35)
!147 = !DILocation(line: 129, column: 12, scope: !146)
!148 = !DILocation(line: 130, column: 16, scope: !146)
!149 = !DILocation(line: 131, column: 3, scope: !146)
!150 = !DILocation(line: 132, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !142, file: !3, line: 131, column: 10)
!152 = !DILocation(line: 133, column: 16, scope: !151)
!153 = !DILocation(line: 133, column: 12, scope: !151)
!154 = !DILocation(line: 134, column: 16, scope: !151)
!155 = !DILocation(line: 0, scope: !146)
!156 = !DILocation(line: 134, column: 7, scope: !151)
!157 = !DILocation(line: 134, column: 12, scope: !151)
!158 = !DILocation(line: 136, column: 3, scope: !140)
!159 = !DILocation(line: 139, column: 7, scope: !82)
!160 = !DILocation(line: 139, column: 5, scope: !45)
!161 = !DILocation(line: 140, column: 11, scope: !81)
!162 = !DILocation(line: 105, column: 12, scope: !45)
!163 = !DILocation(line: 141, column: 25, scope: !81)
!164 = !DILocation(line: 141, column: 33, scope: !81)
!165 = !DILocation(line: 141, column: 11, scope: !81)
!166 = !DILocation(line: 107, column: 16, scope: !45)
!167 = !DILocation(line: 142, column: 11, scope: !81)
!168 = !DILocation(line: 105, column: 16, scope: !45)
!169 = !DILocation(line: 143, column: 15, scope: !81)
!170 = !DILocation(line: 143, column: 12, scope: !81)
!171 = !DILocation(line: 105, column: 14, scope: !45)
!172 = !DILocation(line: 144, column: 13, scope: !81)
!173 = !DILocation(line: 105, column: 10, scope: !45)
!174 = !DILocation(line: 145, column: 10, scope: !80)
!175 = !DILocation(line: 145, column: 13, scope: !80)
!176 = !DILocation(line: 145, column: 18, scope: !80)
!177 = !DILocation(line: 145, column: 42, scope: !80)
!178 = !DILocation(line: 145, column: 32, scope: !80)
!179 = !{!180, !180, i64 0}
!180 = !{!"int", !106, i64 0}
!181 = !DILocation(line: 145, column: 30, scope: !80)
!182 = !DILocation(line: 145, column: 9, scope: !81)
!183 = !DILocation(line: 146, column: 11, scope: !184)
!184 = distinct !DILexicalBlock(scope: !80, file: !3, line: 145, column: 47)
!185 = !DILocation(line: 146, column: 8, scope: !184)
!186 = !DILocation(line: 147, column: 6, scope: !184)
!187 = !DILocation(line: 149, column: 17, scope: !79)
!188 = !DILocation(line: 107, column: 14, scope: !45)
!189 = !DILocation(line: 150, column: 18, scope: !79)
!190 = !DILocation(line: 150, column: 15, scope: !79)
!191 = !DILocation(line: 151, column: 3, scope: !84)
!192 = !DILocation(line: 148, column: 21, scope: !79)
!193 = !DILocation(line: 152, column: 22, scope: !79)
!194 = !DILocation(line: 152, column: 27, scope: !79)
!195 = !DILocation(line: 152, column: 15, scope: !79)
!196 = !DILocation(line: 107, column: 12, scope: !45)
!197 = !DILocation(line: 153, column: 14, scope: !88)
!198 = !DILocation(line: 153, column: 13, scope: !79)
!199 = !DILocation(line: 155, column: 14, scope: !87)
!200 = !DILocation(line: 156, column: 13, scope: !87)
!201 = !DILocation(line: 157, column: 14, scope: !87)
!202 = !DILocation(line: 157, column: 26, scope: !87)
!203 = !DILocation(line: 157, column: 29, scope: !87)
!204 = !DILocation(line: 157, column: 22, scope: !87)
!205 = !DILocation(line: 158, column: 15, scope: !87)
!206 = !DILocation(line: 158, column: 12, scope: !87)
!207 = !DILocation(line: 159, column: 7, scope: !86)
!208 = !DILocation(line: 160, column: 19, scope: !87)
!209 = !DILocation(line: 160, column: 24, scope: !87)
!210 = !DILocation(line: 160, column: 12, scope: !87)
!211 = !DILocation(line: 161, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !87, file: !3, line: 161, column: 10)
!213 = !DILocation(line: 161, column: 10, scope: !87)
!214 = !DILocation(line: 163, column: 15, scope: !215)
!215 = distinct !DILexicalBlock(scope: !212, file: !3, line: 161, column: 17)
!216 = !DILocation(line: 164, column: 14, scope: !215)
!217 = !DILocation(line: 165, column: 15, scope: !215)
!218 = !DILocation(line: 165, column: 27, scope: !215)
!219 = !DILocation(line: 165, column: 30, scope: !215)
!220 = !DILocation(line: 165, column: 23, scope: !215)
!221 = !DILocation(line: 166, column: 16, scope: !215)
!222 = !DILocation(line: 166, column: 13, scope: !215)
!223 = !DILocation(line: 167, column: 7, scope: !215)
!224 = !DILocation(line: 170, column: 16, scope: !81)
!225 = !DILocation(line: 0, scope: !215)
!226 = !DILocation(line: 170, column: 15, scope: !81)
!227 = !DILocation(line: 170, column: 21, scope: !81)
!228 = !DILocation(line: 170, column: 6, scope: !81)
!229 = !DILocation(line: 170, column: 11, scope: !81)
!230 = !DILocation(line: 171, column: 11, scope: !231)
!231 = distinct !DILexicalBlock(scope: !81, file: !3, line: 171, column: 9)
!232 = !DILocation(line: 171, column: 9, scope: !81)
!233 = !DILocation(line: 171, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !231, file: !3, line: 171, column: 16)
!235 = !DILocation(line: 171, column: 22, scope: !234)
!236 = !DILocation(line: 171, column: 38, scope: !234)
!237 = !DILocation(line: 171, column: 36, scope: !234)
!238 = !DILocation(line: 171, column: 52, scope: !234)
!239 = !DILocation(line: 171, column: 45, scope: !234)
!240 = !DILocation(line: 177, column: 6, scope: !241)
!241 = distinct !DILexicalBlock(scope: !45, file: !3, line: 177, column: 5)
!242 = !DILocation(line: 177, column: 5, scope: !45)
!243 = !DILocation(line: 178, column: 17, scope: !244)
!244 = distinct !DILexicalBlock(scope: !241, file: !3, line: 177, column: 31)
!245 = !DILocation(line: 178, column: 11, scope: !244)
!246 = !DILocation(line: 178, column: 15, scope: !244)
!247 = !DILocation(line: 178, column: 10, scope: !244)
!248 = !DILocation(line: 178, column: 21, scope: !244)
!249 = !DILocation(line: 181, column: 17, scope: !45)
!250 = !DILocation(line: 181, column: 22, scope: !45)
!251 = !DILocation(line: 108, column: 6, scope: !45)
!252 = !DILocation(line: 182, column: 2, scope: !90)
!253 = !DILocation(line: 183, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !45, file: !3, line: 183, column: 2)
!255 = !DILocation(line: 183, column: 2, scope: !254)
!256 = !DILocation(line: 184, column: 19, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 183, column: 19)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 183, column: 2)
!259 = !DILocation(line: 184, column: 11, scope: !257)
!260 = !DILocation(line: 184, column: 3, scope: !257)
!261 = !DILocation(line: 184, column: 9, scope: !257)
!262 = !DILocation(line: 185, column: 13, scope: !257)
!263 = !DILocation(line: 185, column: 20, scope: !257)
!264 = !DILocation(line: 183, column: 2, scope: !258)
!265 = !DILocation(line: 187, column: 2, scope: !45)
!266 = !DILocation(line: 187, column: 8, scope: !45)
!267 = !DILocation(line: 108, column: 9, scope: !45)
!268 = !DILocation(line: 189, column: 2, scope: !45)
!269 = !DILocation(line: 189, column: 16, scope: !45)
!270 = !DILocation(line: 189, column: 13, scope: !45)
!271 = !DILocation(line: 189, column: 8, scope: !45)
!272 = distinct !{!272, !268, !273}
!273 = !DILocation(line: 189, column: 26, scope: !45)
!274 = !DILocation(line: 190, column: 27, scope: !45)
!275 = !DILocation(line: 0, scope: !45)
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
!289 = !DILocation(line: 0, scope: !244)
!290 = !DILocation(line: 0, scope: !103)
!291 = !DILocation(line: 193, column: 1, scope: !45)
