; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_remquo.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_remquo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Zero = internal unnamed_addr constant [2 x float] [float 0.000000e+00, float -0.000000e+00], align 4, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @remquof(float, float, i32* nocapture) local_unnamed_addr #0 !dbg !19 {
  %4 = bitcast float %0 to i32, !dbg !58
  %5 = bitcast float %1 to i32, !dbg !60
  %6 = xor i32 %5, %4, !dbg !62
  %7 = and i32 %6, -2147483648, !dbg !63
  %8 = and i32 %4, -2147483648, !dbg !65
  %9 = and i32 %4, 2147483647, !dbg !67
  %10 = and i32 %5, 2147483647, !dbg !68
  %11 = icmp ugt i32 %9, 2139095039, !dbg !69
  %12 = add nsw i32 %10, -1, !dbg !71
  %13 = icmp ugt i32 %12, 2139095039, !dbg !71
  %14 = or i1 %11, %13, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %14, label %15, label %18, !dbg !71

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %2, align 4, !dbg !72, !tbaa !74
  %16 = fmul float %0, %1, !dbg !78
  %17 = fdiv float %16, %16, !dbg !79
  br label %196, !dbg !80

; <label>:18:                                     ; preds = %3
  %19 = icmp ult i32 %9, %10, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %19, label %158, label %20, !dbg !83

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i32 %9, %10, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %21, label %22, label %27, !dbg !86

; <label>:22:                                     ; preds = %20
  store i32 1, i32* %2, align 4, !dbg !87, !tbaa !74
  %23 = lshr i32 %4, 31, !dbg !89
  %24 = zext i32 %23 to i64, !dbg !90
  %25 = getelementptr inbounds [2 x float], [2 x float]* @Zero, i64 0, i64 %24, !dbg !90
  %26 = load float, float* %25, align 4, !dbg !90, !tbaa !91
  br label %196, !dbg !93

; <label>:27:                                     ; preds = %20
  %28 = icmp ult i32 %9, 8388608, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %28, label %29, label %38, !dbg !96

; <label>:29:                                     ; preds = %27
  %30 = shl i32 %4, 8, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  %31 = icmp sgt i32 %30, 0, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %31, label %32, label %41, !dbg !105

; <label>:32:                                     ; preds = %29, %32
  %33 = phi i32 [ %36, %32 ], [ %30, %29 ]
  %34 = phi i32 [ %35, %32 ], [ -126, %29 ]
  %35 = add nsw i32 %34, -1, !dbg !106
  %36 = shl i32 %33, 1, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  %37 = icmp sgt i32 %36, 0, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %37, label %32, label %41, !dbg !105, !llvm.loop !109

; <label>:38:                                     ; preds = %27
  %39 = lshr i32 %9, 23, !dbg !111
  %40 = add nsw i32 %39, -127, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %41

; <label>:41:                                     ; preds = %32, %29, %38
  %42 = phi i32 [ %40, %38 ], [ -126, %29 ], [ %35, %32 ], !dbg !113
  %43 = icmp ult i32 %10, 8388608, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %43, label %44, label %53, !dbg !116

; <label>:44:                                     ; preds = %41
  %45 = shl i32 %5, 8, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  %46 = icmp sgt i32 %45, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %46, label %47, label %56, !dbg !124

; <label>:47:                                     ; preds = %44, %47
  %48 = phi i32 [ %51, %47 ], [ %45, %44 ]
  %49 = phi i32 [ %50, %47 ], [ -126, %44 ]
  %50 = add nsw i32 %49, -1, !dbg !125
  %51 = shl i32 %48, 1, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  %52 = icmp sgt i32 %51, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %52, label %47, label %56, !dbg !124, !llvm.loop !128

; <label>:53:                                     ; preds = %41
  %54 = lshr i32 %10, 23, !dbg !130
  %55 = add nsw i32 %54, -127, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %56

; <label>:56:                                     ; preds = %47, %44, %53
  %57 = phi i32 [ %55, %53 ], [ -126, %44 ], [ %50, %47 ], !dbg !132
  %58 = icmp sgt i32 %42, -127, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  %59 = and i32 %4, 8388607, !dbg !136
  %60 = or i32 %59, 8388608, !dbg !137
  %61 = sub nsw i32 -126, %42, !dbg !138
  %62 = shl i32 %9, %61, !dbg !141
  %63 = select i1 %58, i32 %60, i32 %62, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = icmp sgt i32 %57, -127, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  %65 = and i32 %5, 8388607, !dbg !145
  %66 = or i32 %65, 8388608, !dbg !146
  %67 = sub nsw i32 -126, %57, !dbg !147
  %68 = shl i32 %10, %67, !dbg !149
  %69 = select i1 %64, i32 %66, i32 %68, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %70 = icmp eq i32 %42, %57, !dbg !151
  %71 = sub nsw i32 %63, %69, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br i1 %70, label %119, label %72, !dbg !151

; <label>:72:                                     ; preds = %56
  %73 = sub i32 %42, %57, !dbg !154
  %74 = and i32 %73, 1, !dbg !154
  %75 = add i32 %57, 1, !dbg !154
  %76 = icmp eq i32 %42, %75, !dbg !154
  br i1 %76, label %102, label %77, !dbg !154

; <label>:77:                                     ; preds = %72
  %78 = sub i32 %73, %74, !dbg !154
  br label %79, !dbg !154

; <label>:79:                                     ; preds = %79, %77
  %80 = phi i32 [ %71, %77 ], [ %99, %79 ]
  %81 = phi i32 [ %63, %77 ], [ %97, %79 ]
  %82 = phi i32 [ 0, %77 ], [ %98, %79 ]
  %83 = phi i32 [ %78, %77 ], [ %100, %79 ]
  %84 = icmp slt i32 %80, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %85 = xor i1 %84, true, !dbg !158
  %86 = zext i1 %85 to i32, !dbg !158
  %87 = or i32 %82, %86, !dbg !158
  %88 = select i1 %84, i32 %81, i32 %80, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %89 = shl i32 %88, 1, !dbg !159
  %90 = shl i32 %87, 1, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %91 = sub nsw i32 %89, %69, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %92 = icmp slt i32 %91, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %93 = xor i1 %92, true, !dbg !158
  %94 = zext i1 %93 to i32, !dbg !158
  %95 = or i32 %90, %94, !dbg !158
  %96 = select i1 %92, i32 %89, i32 %91, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %97 = shl i32 %96, 1, !dbg !159
  %98 = shl i32 %95, 1, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %99 = sub nsw i32 %97, %69, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %100 = add i32 %83, -2, !dbg !151
  %101 = icmp eq i32 %100, 0, !dbg !151
  br i1 %101, label %102, label %79, !dbg !151, !llvm.loop !162

; <label>:102:                                    ; preds = %79, %72
  %103 = phi i32 [ undef, %72 ], [ %97, %79 ]
  %104 = phi i32 [ undef, %72 ], [ %98, %79 ]
  %105 = phi i32 [ undef, %72 ], [ %99, %79 ]
  %106 = phi i32 [ %71, %72 ], [ %99, %79 ]
  %107 = phi i32 [ %63, %72 ], [ %97, %79 ]
  %108 = phi i32 [ 0, %72 ], [ %98, %79 ]
  %109 = icmp eq i32 %74, 0, !dbg !151
  br i1 %109, label %119, label %110, !dbg !151

; <label>:110:                                    ; preds = %102
  %111 = icmp slt i32 %106, 0, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %112 = select i1 %111, i32 %107, i32 %106, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = shl i32 %112, 1, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  %114 = sub nsw i32 %113, %69, !dbg !152
  %115 = xor i1 %111, true, !dbg !158
  %116 = zext i1 %115 to i32, !dbg !158
  %117 = or i32 %108, %116, !dbg !158
  %118 = shl i32 %117, 1, !dbg !161
  br label %119, !dbg !164

; <label>:119:                                    ; preds = %110, %102, %56
  %120 = phi i32 [ 0, %56 ], [ %104, %102 ], [ %118, %110 ], !dbg !166
  %121 = phi i32 [ %63, %56 ], [ %103, %102 ], [ %113, %110 ], !dbg !167
  %122 = phi i32 [ %71, %56 ], [ %105, %102 ], [ %114, %110 ], !dbg !152
  %123 = icmp sgt i32 %122, -1, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br i1 %123, label %124, label %126, !dbg !168

; <label>:124:                                    ; preds = %119
  %125 = or i32 %120, 1, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br label %126, !dbg !171

; <label>:126:                                    ; preds = %124, %119
  %127 = phi i32 [ %125, %124 ], [ %120, %119 ], !dbg !152
  %128 = phi i32 [ %122, %124 ], [ %121, %119 ], !dbg !172
  %129 = icmp eq i32 %128, 0, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %129, label %132, label %130, !dbg !175

; <label>:130:                                    ; preds = %126
  %131 = icmp slt i32 %128, 8388608, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %131, label %140, label %146, !dbg !177

; <label>:132:                                    ; preds = %126
  %133 = icmp eq i32 %7, 0, !dbg !178
  %134 = sub i32 0, %127, !dbg !180
  %135 = select i1 %133, i32 %127, i32 %134, !dbg !178
  store i32 %135, i32* %2, align 4, !dbg !181, !tbaa !74
  %136 = lshr i32 %4, 31, !dbg !182
  %137 = zext i32 %136 to i64, !dbg !183
  %138 = getelementptr inbounds [2 x float], [2 x float]* @Zero, i64 0, i64 %137, !dbg !183
  %139 = load float, float* %138, align 4, !dbg !183, !tbaa !91
  br label %196, !dbg !184

; <label>:140:                                    ; preds = %130, %140
  %141 = phi i32 [ %143, %140 ], [ %128, %130 ]
  %142 = phi i32 [ %144, %140 ], [ %57, %130 ]
  %143 = shl i32 %141, 1, !dbg !185
  %144 = add nsw i32 %142, -1, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  %145 = icmp slt i32 %143, 8388608, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  br i1 %145, label %140, label %146, !dbg !177, !llvm.loop !188

; <label>:146:                                    ; preds = %140, %130
  %147 = phi i32 [ %57, %130 ], [ %144, %140 ], !dbg !190
  %148 = phi i32 [ %128, %130 ], [ %143, %140 ], !dbg !190
  %149 = icmp sgt i32 %147, -127, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %149, label %150, label %155, !dbg !193

; <label>:150:                                    ; preds = %146
  %151 = add nsw i32 %148, -8388608, !dbg !194
  %152 = shl i32 %147, 23, !dbg !196
  %153 = add i32 %152, 1065353216, !dbg !196
  %154 = or i32 %151, %153, !dbg !197
  br label %158, !dbg !198

; <label>:155:                                    ; preds = %146
  %156 = sub nsw i32 -126, %147, !dbg !199
  %157 = lshr i32 %148, %156
  br label %158

; <label>:158:                                    ; preds = %18, %155, %150
  %159 = phi i32 [ %127, %150 ], [ %127, %155 ], [ 0, %18 ], !dbg !201
  %160 = phi i32 [ %154, %150 ], [ %157, %155 ], [ %9, %18 ], !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %161 = bitcast i32 %160 to float, !dbg !203
  %162 = tail call float @fabsf(float %1) #3, !dbg !204
  %163 = fcmp olt float %162, 0x3820000000000000, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %163, label %164, label %175, !dbg !207

; <label>:164:                                    ; preds = %158
  %165 = fadd float %161, %161, !dbg !208
  %166 = fcmp ogt float %165, %162, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  br i1 %166, label %172, label %167, !dbg !212

; <label>:167:                                    ; preds = %164
  %168 = fcmp oeq float %165, %162, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br i1 %168, label %169, label %186, !dbg !214

; <label>:169:                                    ; preds = %167
  %170 = and i32 %159, 1, !dbg !215
  %171 = icmp eq i32 %170, 0, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %171, label %186, label %172, !dbg !216

; <label>:172:                                    ; preds = %169, %164
  %173 = add i32 %159, 1, !dbg !217
  %174 = fsub float %161, %162, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %186, !dbg !220

; <label>:175:                                    ; preds = %158
  %176 = fmul float %162, 5.000000e-01, !dbg !221
  %177 = fcmp olt float %176, %161, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  br i1 %177, label %183, label %178, !dbg !224

; <label>:178:                                    ; preds = %175
  %179 = fcmp oeq float %176, %161, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %179, label %180, label %186, !dbg !226

; <label>:180:                                    ; preds = %178
  %181 = and i32 %159, 1, !dbg !227
  %182 = icmp eq i32 %181, 0, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br i1 %182, label %186, label %183, !dbg !228

; <label>:183:                                    ; preds = %180, %175
  %184 = add i32 %159, 1, !dbg !229
  %185 = fsub float %161, %162, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %186, !dbg !232

; <label>:186:                                    ; preds = %169, %180, %172, %167, %183, %178
  %187 = phi i32 [ %173, %172 ], [ %159, %169 ], [ %159, %167 ], [ %184, %183 ], [ %159, %180 ], [ %159, %178 ], !dbg !233
  %188 = phi float [ %174, %172 ], [ %161, %169 ], [ %161, %167 ], [ %185, %183 ], [ %161, %180 ], [ %161, %178 ], !dbg !235
  %189 = bitcast float %188 to i32, !dbg !236
  %190 = xor i32 %8, %189, !dbg !237
  %191 = bitcast i32 %190 to float, !dbg !237
  %192 = and i32 %187, 2147483647, !dbg !238
  %193 = icmp eq i32 %7, 0, !dbg !239
  %194 = sub nsw i32 0, %192, !dbg !240
  %195 = select i1 %193, i32 %192, i32 %194, !dbg !239
  store i32 %195, i32* %2, align 4, !dbg !241, !tbaa !74
  br label %196, !dbg !242

; <label>:196:                                    ; preds = %186, %132, %22, %15
  %197 = phi float [ %17, %15 ], [ %191, %186 ], [ %26, %22 ], [ %139, %132 ], !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  ret float %197, !dbg !245
}

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Zero", scope: !2, file: !3, line: 26, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_remquo.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0}
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !DISubrange(count: 2)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "remquof", scope: !3, file: !3, line: 37, type: !20, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !12, !12, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !47, !49, !51, !53}
!25 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !3, line: 37, type: !12)
!26 = !DILocalVariable(name: "y", arg: 2, scope: !19, file: !3, line: 37, type: !12)
!27 = !DILocalVariable(name: "quo", arg: 3, scope: !19, file: !3, line: 37, type: !22)
!28 = !DILocalVariable(name: "n", scope: !19, file: !3, line: 39, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !23)
!30 = !DILocalVariable(name: "hx", scope: !19, file: !3, line: 39, type: !29)
!31 = !DILocalVariable(name: "hy", scope: !19, file: !3, line: 39, type: !29)
!32 = !DILocalVariable(name: "hz", scope: !19, file: !3, line: 39, type: !29)
!33 = !DILocalVariable(name: "ix", scope: !19, file: !3, line: 39, type: !29)
!34 = !DILocalVariable(name: "iy", scope: !19, file: !3, line: 39, type: !29)
!35 = !DILocalVariable(name: "sx", scope: !19, file: !3, line: 39, type: !29)
!36 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 39, type: !29)
!37 = !DILocalVariable(name: "q", scope: !19, file: !3, line: 40, type: !6)
!38 = !DILocalVariable(name: "sxy", scope: !19, file: !3, line: 40, type: !6)
!39 = !DILocalVariable(name: "gf_u", scope: !40, file: !3, line: 42, type: !41)
!40 = distinct !DILexicalBlock(scope: !19, file: !3, line: 42, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !42, line: 347, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 343, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 345, baseType: !12, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !43, file: !42, line: 346, baseType: !6, size: 32)
!47 = !DILocalVariable(name: "gf_u", scope: !48, file: !3, line: 43, type: !41)
!48 = distinct !DILexicalBlock(scope: !19, file: !3, line: 43, column: 2)
!49 = !DILocalVariable(name: "sf_u", scope: !50, file: !3, line: 114, type: !41)
!50 = distinct !DILexicalBlock(scope: !19, file: !3, line: 114, column: 2)
!51 = !DILocalVariable(name: "gf_u", scope: !52, file: !3, line: 125, type: !41)
!52 = distinct !DILexicalBlock(scope: !19, file: !3, line: 125, column: 2)
!53 = !DILocalVariable(name: "sf_u", scope: !54, file: !3, line: 126, type: !41)
!54 = distinct !DILexicalBlock(scope: !19, file: !3, line: 126, column: 2)
!55 = !DILocation(line: 37, column: 15, scope: !19)
!56 = !DILocation(line: 37, column: 24, scope: !19)
!57 = !DILocation(line: 37, column: 32, scope: !19)
!58 = !DILocation(line: 42, column: 2, scope: !40)
!59 = !DILocation(line: 39, column: 14, scope: !19)
!60 = !DILocation(line: 43, column: 2, scope: !48)
!61 = !DILocation(line: 39, column: 17, scope: !19)
!62 = !DILocation(line: 44, column: 12, scope: !19)
!63 = !DILocation(line: 44, column: 18, scope: !19)
!64 = !DILocation(line: 40, column: 15, scope: !19)
!65 = !DILocation(line: 45, column: 9, scope: !19)
!66 = !DILocation(line: 39, column: 29, scope: !19)
!67 = !DILocation(line: 46, column: 5, scope: !19)
!68 = !DILocation(line: 47, column: 5, scope: !19)
!69 = !DILocation(line: 50, column: 14, scope: !70)
!70 = distinct !DILexicalBlock(scope: !19, file: !3, line: 50, column: 5)
!71 = !DILocation(line: 50, column: 10, scope: !70)
!72 = !DILocation(line: 51, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !3, line: 50, column: 43)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 52, column: 15, scope: !73)
!79 = !DILocation(line: 52, column: 18, scope: !73)
!80 = !DILocation(line: 52, column: 6, scope: !73)
!81 = !DILocation(line: 54, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !19, file: !3, line: 54, column: 5)
!83 = !DILocation(line: 54, column: 5, scope: !19)
!84 = !DILocation(line: 57, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 57, column: 12)
!86 = !DILocation(line: 57, column: 12, scope: !82)
!87 = !DILocation(line: 58, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 57, column: 20)
!89 = !DILocation(line: 59, column: 32, scope: !88)
!90 = !DILocation(line: 59, column: 13, scope: !88)
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !76, i64 0}
!93 = !DILocation(line: 59, column: 6, scope: !88)
!94 = !DILocation(line: 63, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !19, file: !3, line: 63, column: 5)
!96 = !DILocation(line: 63, column: 5, scope: !19)
!97 = !DILocation(line: 39, column: 23, scope: !19)
!98 = !DILocation(line: 64, column: 26, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 64, column: 6)
!100 = distinct !DILexicalBlock(scope: !95, file: !3, line: 63, column: 20)
!101 = !DILocation(line: 39, column: 32, scope: !19)
!102 = !DILocation(line: 64, column: 11, scope: !99)
!103 = !DILocation(line: 64, column: 33, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 64, column: 6)
!105 = !DILocation(line: 64, column: 6, scope: !99)
!106 = !DILocation(line: 64, column: 47, scope: !104)
!107 = !DILocation(line: 64, column: 38, scope: !104)
!108 = !DILocation(line: 64, column: 6, scope: !104)
!109 = distinct !{!109, !105, !110}
!110 = !DILocation(line: 64, column: 49, scope: !99)
!111 = !DILocation(line: 65, column: 17, scope: !95)
!112 = !DILocation(line: 65, column: 22, scope: !95)
!113 = !DILocation(line: 0, scope: !95)
!114 = !DILocation(line: 68, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !19, file: !3, line: 68, column: 5)
!116 = !DILocation(line: 68, column: 5, scope: !19)
!117 = !DILocation(line: 39, column: 26, scope: !19)
!118 = !DILocation(line: 69, column: 26, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 69, column: 6)
!120 = distinct !DILexicalBlock(scope: !115, file: !3, line: 68, column: 20)
!121 = !DILocation(line: 69, column: 11, scope: !119)
!122 = !DILocation(line: 69, column: 33, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !3, line: 69, column: 6)
!124 = !DILocation(line: 69, column: 6, scope: !119)
!125 = !DILocation(line: 69, column: 47, scope: !123)
!126 = !DILocation(line: 69, column: 38, scope: !123)
!127 = !DILocation(line: 69, column: 6, scope: !123)
!128 = distinct !{!128, !124, !129}
!129 = !DILocation(line: 69, column: 49, scope: !119)
!130 = !DILocation(line: 70, column: 17, scope: !115)
!131 = !DILocation(line: 70, column: 22, scope: !115)
!132 = !DILocation(line: 0, scope: !115)
!133 = !DILocation(line: 73, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !19, file: !3, line: 73, column: 5)
!135 = !DILocation(line: 73, column: 5, scope: !19)
!136 = !DILocation(line: 74, column: 33, scope: !134)
!137 = !DILocation(line: 74, column: 21, scope: !134)
!138 = !DILocation(line: 76, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 75, column: 7)
!140 = !DILocation(line: 39, column: 12, scope: !19)
!141 = !DILocation(line: 77, column: 9, scope: !139)
!142 = !DILocation(line: 79, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !19, file: !3, line: 79, column: 5)
!144 = !DILocation(line: 79, column: 5, scope: !19)
!145 = !DILocation(line: 80, column: 33, scope: !143)
!146 = !DILocation(line: 80, column: 21, scope: !143)
!147 = !DILocation(line: 82, column: 14, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !3, line: 81, column: 7)
!149 = !DILocation(line: 83, column: 9, scope: !148)
!150 = !DILocation(line: 40, column: 13, scope: !19)
!151 = !DILocation(line: 89, column: 2, scope: !19)
!152 = !DILocation(line: 0, scope: !19)
!153 = !DILocation(line: 39, column: 20, scope: !19)
!154 = !DILocation(line: 89, column: 9, scope: !19)
!155 = !DILocation(line: 91, column: 11, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 91, column: 9)
!157 = distinct !DILexicalBlock(scope: !19, file: !3, line: 89, column: 13)
!158 = !DILocation(line: 91, column: 9, scope: !157)
!159 = !DILocation(line: 0, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 92, column: 11)
!161 = !DILocation(line: 93, column: 8, scope: !157)
!162 = distinct !{!162, !151, !163}
!163 = !DILocation(line: 94, column: 2, scope: !19)
!164 = !DILocation(line: 96, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !19, file: !3, line: 96, column: 5)
!166 = !DILocation(line: 0, scope: !157)
!167 = !DILocation(line: 0, scope: !156)
!168 = !DILocation(line: 96, column: 5, scope: !19)
!169 = !DILocation(line: 96, column: 20, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !3, line: 96, column: 12)
!171 = !DILocation(line: 96, column: 23, scope: !170)
!172 = !DILocation(line: 0, scope: !134)
!173 = !DILocation(line: 99, column: 7, scope: !174)
!174 = distinct !DILexicalBlock(scope: !19, file: !3, line: 99, column: 5)
!175 = !DILocation(line: 99, column: 5, scope: !19)
!176 = !DILocation(line: 103, column: 10, scope: !19)
!177 = !DILocation(line: 103, column: 2, scope: !19)
!178 = !DILocation(line: 100, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !3, line: 99, column: 12)
!180 = !DILocation(line: 100, column: 20, scope: !179)
!181 = !DILocation(line: 100, column: 11, scope: !179)
!182 = !DILocation(line: 101, column: 32, scope: !179)
!183 = !DILocation(line: 101, column: 13, scope: !179)
!184 = !DILocation(line: 101, column: 6, scope: !179)
!185 = !DILocation(line: 104, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !19, file: !3, line: 103, column: 23)
!187 = !DILocation(line: 105, column: 9, scope: !186)
!188 = distinct !{!188, !177, !189}
!189 = !DILocation(line: 106, column: 2, scope: !19)
!190 = !DILocation(line: 0, scope: !186)
!191 = !DILocation(line: 107, column: 7, scope: !192)
!192 = distinct !DILexicalBlock(scope: !19, file: !3, line: 107, column: 5)
!193 = !DILocation(line: 107, column: 5, scope: !19)
!194 = !DILocation(line: 108, column: 15, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !3, line: 107, column: 16)
!196 = !DILocation(line: 108, column: 37, scope: !195)
!197 = !DILocation(line: 108, column: 27, scope: !195)
!198 = !DILocation(line: 109, column: 2, scope: !195)
!199 = !DILocation(line: 110, column: 15, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !3, line: 109, column: 9)
!201 = !DILocation(line: 0, scope: !170)
!202 = !DILocation(line: 0, scope: !200)
!203 = !DILocation(line: 114, column: 2, scope: !50)
!204 = !DILocation(line: 115, column: 6, scope: !19)
!205 = !DILocation(line: 116, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !19, file: !3, line: 116, column: 6)
!207 = !DILocation(line: 116, column: 6, scope: !19)
!208 = !DILocation(line: 117, column: 11, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 117, column: 10)
!210 = distinct !DILexicalBlock(scope: !206, file: !3, line: 116, column: 21)
!211 = !DILocation(line: 117, column: 13, scope: !209)
!212 = !DILocation(line: 117, column: 16, scope: !209)
!213 = !DILocation(line: 117, column: 23, scope: !209)
!214 = !DILocation(line: 117, column: 27, scope: !209)
!215 = !DILocation(line: 117, column: 33, scope: !209)
!216 = !DILocation(line: 117, column: 10, scope: !210)
!217 = !DILocation(line: 118, column: 4, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !3, line: 117, column: 40)
!219 = !DILocation(line: 119, column: 4, scope: !218)
!220 = !DILocation(line: 120, column: 6, scope: !218)
!221 = !DILocation(line: 121, column: 19, scope: !222)
!222 = distinct !DILexicalBlock(scope: !206, file: !3, line: 121, column: 13)
!223 = !DILocation(line: 121, column: 14, scope: !222)
!224 = !DILocation(line: 121, column: 22, scope: !222)
!225 = !DILocation(line: 121, column: 27, scope: !222)
!226 = !DILocation(line: 121, column: 36, scope: !222)
!227 = !DILocation(line: 121, column: 42, scope: !222)
!228 = !DILocation(line: 121, column: 13, scope: !206)
!229 = !DILocation(line: 122, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !222, file: !3, line: 121, column: 49)
!231 = !DILocation(line: 123, column: 7, scope: !230)
!232 = !DILocation(line: 124, column: 2, scope: !230)
!233 = !DILocation(line: 0, scope: !234)
!234 = distinct !DILexicalBlock(scope: !82, file: !3, line: 54, column: 12)
!235 = !DILocation(line: 0, scope: !50)
!236 = !DILocation(line: 125, column: 2, scope: !52)
!237 = !DILocation(line: 126, column: 2, scope: !54)
!238 = !DILocation(line: 127, column: 4, scope: !19)
!239 = !DILocation(line: 128, column: 10, scope: !19)
!240 = !DILocation(line: 128, column: 16, scope: !19)
!241 = !DILocation(line: 128, column: 7, scope: !19)
!242 = !DILocation(line: 129, column: 2, scope: !19)
!243 = !DILocation(line: 0, scope: !179)
!244 = !DILocation(line: 0, scope: !73)
!245 = !DILocation(line: 130, column: 1, scope: !19)
