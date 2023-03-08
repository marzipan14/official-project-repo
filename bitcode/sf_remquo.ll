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
  br i1 %14, label %15, label %18, !dbg !71

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %2, align 4, !dbg !72, !tbaa !74
  %16 = fmul float %0, %1, !dbg !78
  %17 = fdiv float %16, %16, !dbg !79
  br label %195, !dbg !80

; <label>:18:                                     ; preds = %3
  %19 = icmp ult i32 %9, %10, !dbg !81
  br i1 %19, label %157, label %20, !dbg !83

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i32 %9, %10, !dbg !84
  br i1 %21, label %22, label %27, !dbg !86

; <label>:22:                                     ; preds = %20
  store i32 1, i32* %2, align 4, !dbg !87, !tbaa !74
  %23 = lshr i32 %4, 31, !dbg !89
  %24 = zext i32 %23 to i64, !dbg !90
  %25 = getelementptr inbounds [2 x float], [2 x float]* @Zero, i64 0, i64 %24, !dbg !90
  %26 = load float, float* %25, align 4, !dbg !90, !tbaa !91
  br label %195, !dbg !93

; <label>:27:                                     ; preds = %20
  %28 = icmp ult i32 %9, 8388608, !dbg !94
  br i1 %28, label %29, label %38, !dbg !96

; <label>:29:                                     ; preds = %27
  %30 = shl i32 %4, 8, !dbg !98
  %31 = icmp sgt i32 %30, 0, !dbg !102
  br i1 %31, label %32, label %41, !dbg !104

; <label>:32:                                     ; preds = %29, %32
  %33 = phi i32 [ %36, %32 ], [ %30, %29 ]
  %34 = phi i32 [ %35, %32 ], [ -126, %29 ]
  %35 = add nsw i32 %34, -1, !dbg !105
  %36 = shl i32 %33, 1, !dbg !106
  %37 = icmp sgt i32 %36, 0, !dbg !102
  br i1 %37, label %32, label %41, !dbg !104, !llvm.loop !107

; <label>:38:                                     ; preds = %27
  %39 = lshr i32 %9, 23, !dbg !109
  %40 = add nsw i32 %39, -127, !dbg !110
  br label %41

; <label>:41:                                     ; preds = %32, %29, %38
  %42 = phi i32 [ %40, %38 ], [ -126, %29 ], [ %35, %32 ], !dbg !111
  %43 = icmp ult i32 %10, 8388608, !dbg !112
  br i1 %43, label %44, label %53, !dbg !114

; <label>:44:                                     ; preds = %41
  %45 = shl i32 %5, 8, !dbg !116
  %46 = icmp sgt i32 %45, 0, !dbg !119
  br i1 %46, label %47, label %56, !dbg !121

; <label>:47:                                     ; preds = %44, %47
  %48 = phi i32 [ %51, %47 ], [ %45, %44 ]
  %49 = phi i32 [ %50, %47 ], [ -126, %44 ]
  %50 = add nsw i32 %49, -1, !dbg !122
  %51 = shl i32 %48, 1, !dbg !123
  %52 = icmp sgt i32 %51, 0, !dbg !119
  br i1 %52, label %47, label %56, !dbg !121, !llvm.loop !124

; <label>:53:                                     ; preds = %41
  %54 = lshr i32 %10, 23, !dbg !126
  %55 = add nsw i32 %54, -127, !dbg !127
  br label %56

; <label>:56:                                     ; preds = %47, %44, %53
  %57 = phi i32 [ %55, %53 ], [ -126, %44 ], [ %50, %47 ], !dbg !128
  %58 = icmp sgt i32 %42, -127, !dbg !129
  %59 = and i32 %4, 8388607, !dbg !131
  %60 = or i32 %59, 8388608, !dbg !132
  %61 = sub nsw i32 -126, %42, !dbg !133
  %62 = shl i32 %9, %61, !dbg !136
  %63 = select i1 %58, i32 %60, i32 %62, !dbg !137
  %64 = icmp sgt i32 %57, -127, !dbg !138
  %65 = and i32 %5, 8388607, !dbg !140
  %66 = or i32 %65, 8388608, !dbg !141
  %67 = sub nsw i32 -126, %57, !dbg !142
  %68 = shl i32 %10, %67, !dbg !144
  %69 = select i1 %64, i32 %66, i32 %68, !dbg !145
  %70 = icmp eq i32 %42, %57, !dbg !147
  %71 = sub nsw i32 %63, %69, !dbg !148
  br i1 %70, label %119, label %72, !dbg !147

; <label>:72:                                     ; preds = %56
  %73 = sub i32 %42, %57, !dbg !150
  %74 = and i32 %73, 1, !dbg !150
  %75 = add i32 %57, 1, !dbg !150
  %76 = icmp eq i32 %42, %75, !dbg !150
  br i1 %76, label %102, label %77, !dbg !150

; <label>:77:                                     ; preds = %72
  %78 = sub i32 %73, %74, !dbg !150
  br label %79, !dbg !150

; <label>:79:                                     ; preds = %79, %77
  %80 = phi i32 [ %71, %77 ], [ %99, %79 ]
  %81 = phi i32 [ %63, %77 ], [ %97, %79 ]
  %82 = phi i32 [ 0, %77 ], [ %98, %79 ]
  %83 = phi i32 [ %78, %77 ], [ %100, %79 ]
  %84 = icmp slt i32 %80, 0, !dbg !151
  %85 = xor i1 %84, true, !dbg !154
  %86 = zext i1 %85 to i32, !dbg !154
  %87 = or i32 %82, %86, !dbg !154
  %88 = select i1 %84, i32 %81, i32 %80, !dbg !154
  %89 = shl i32 %88, 1, !dbg !155
  %90 = shl i32 %87, 1, !dbg !157
  %91 = sub nsw i32 %89, %69, !dbg !148
  %92 = icmp slt i32 %91, 0, !dbg !151
  %93 = xor i1 %92, true, !dbg !154
  %94 = zext i1 %93 to i32, !dbg !154
  %95 = or i32 %90, %94, !dbg !154
  %96 = select i1 %92, i32 %89, i32 %91, !dbg !154
  %97 = shl i32 %96, 1, !dbg !155
  %98 = shl i32 %95, 1, !dbg !157
  %99 = sub nsw i32 %97, %69, !dbg !148
  %100 = add i32 %83, -2, !dbg !147
  %101 = icmp eq i32 %100, 0, !dbg !147
  br i1 %101, label %102, label %79, !dbg !147, !llvm.loop !158

; <label>:102:                                    ; preds = %79, %72
  %103 = phi i32 [ undef, %72 ], [ %97, %79 ]
  %104 = phi i32 [ undef, %72 ], [ %98, %79 ]
  %105 = phi i32 [ undef, %72 ], [ %99, %79 ]
  %106 = phi i32 [ %71, %72 ], [ %99, %79 ]
  %107 = phi i32 [ %63, %72 ], [ %97, %79 ]
  %108 = phi i32 [ 0, %72 ], [ %98, %79 ]
  %109 = icmp eq i32 %74, 0, !dbg !147
  br i1 %109, label %119, label %110, !dbg !147

; <label>:110:                                    ; preds = %102
  %111 = icmp slt i32 %106, 0, !dbg !151
  %112 = select i1 %111, i32 %107, i32 %106, !dbg !154
  %113 = shl i32 %112, 1, !dbg !155
  %114 = sub nsw i32 %113, %69, !dbg !148
  %115 = xor i1 %111, true, !dbg !154
  %116 = zext i1 %115 to i32, !dbg !154
  %117 = or i32 %108, %116, !dbg !154
  %118 = shl i32 %117, 1, !dbg !157
  br label %119, !dbg !160

; <label>:119:                                    ; preds = %110, %102, %56
  %120 = phi i32 [ 0, %56 ], [ %104, %102 ], [ %118, %110 ], !dbg !162
  %121 = phi i32 [ %63, %56 ], [ %103, %102 ], [ %113, %110 ], !dbg !163
  %122 = phi i32 [ %71, %56 ], [ %105, %102 ], [ %114, %110 ], !dbg !148
  %123 = icmp sgt i32 %122, -1, !dbg !160
  %124 = lshr i32 %122, 31, !dbg !164
  %125 = or i32 %124, %120, !dbg !164
  %126 = xor i32 %125, 1, !dbg !164
  %127 = select i1 %123, i32 %122, i32 %121, !dbg !164
  %128 = icmp eq i32 %127, 0, !dbg !165
  br i1 %128, label %131, label %129, !dbg !167

; <label>:129:                                    ; preds = %119
  %130 = icmp slt i32 %127, 8388608, !dbg !168
  br i1 %130, label %139, label %145, !dbg !169

; <label>:131:                                    ; preds = %119
  %132 = icmp eq i32 %7, 0, !dbg !170
  %133 = sub i32 0, %126, !dbg !172
  %134 = select i1 %132, i32 %126, i32 %133, !dbg !170
  store i32 %134, i32* %2, align 4, !dbg !173, !tbaa !74
  %135 = lshr i32 %4, 31, !dbg !174
  %136 = zext i32 %135 to i64, !dbg !175
  %137 = getelementptr inbounds [2 x float], [2 x float]* @Zero, i64 0, i64 %136, !dbg !175
  %138 = load float, float* %137, align 4, !dbg !175, !tbaa !91
  br label %195, !dbg !176

; <label>:139:                                    ; preds = %129, %139
  %140 = phi i32 [ %142, %139 ], [ %127, %129 ]
  %141 = phi i32 [ %143, %139 ], [ %57, %129 ]
  %142 = shl i32 %140, 1, !dbg !177
  %143 = add nsw i32 %141, -1, !dbg !179
  %144 = icmp slt i32 %142, 8388608, !dbg !168
  br i1 %144, label %139, label %145, !dbg !169, !llvm.loop !180

; <label>:145:                                    ; preds = %139, %129
  %146 = phi i32 [ %57, %129 ], [ %143, %139 ], !dbg !182
  %147 = phi i32 [ %127, %129 ], [ %142, %139 ], !dbg !182
  %148 = icmp sgt i32 %146, -127, !dbg !183
  br i1 %148, label %149, label %154, !dbg !185

; <label>:149:                                    ; preds = %145
  %150 = add nsw i32 %147, -8388608, !dbg !186
  %151 = shl i32 %146, 23, !dbg !188
  %152 = add i32 %151, 1065353216, !dbg !188
  %153 = or i32 %150, %152, !dbg !189
  br label %157, !dbg !190

; <label>:154:                                    ; preds = %145
  %155 = sub nsw i32 -126, %146, !dbg !191
  %156 = lshr i32 %147, %155
  br label %157

; <label>:157:                                    ; preds = %18, %154, %149
  %158 = phi i32 [ %126, %149 ], [ %126, %154 ], [ 0, %18 ], !dbg !193
  %159 = phi i32 [ %153, %149 ], [ %156, %154 ], [ %9, %18 ], !dbg !195
  %160 = bitcast i32 %159 to float, !dbg !196
  %161 = tail call float @fabsf(float %1) #3, !dbg !197
  %162 = fcmp olt float %161, 0x3820000000000000, !dbg !198
  br i1 %162, label %163, label %174, !dbg !200

; <label>:163:                                    ; preds = %157
  %164 = fadd float %160, %160, !dbg !201
  %165 = fcmp ogt float %164, %161, !dbg !204
  br i1 %165, label %171, label %166, !dbg !205

; <label>:166:                                    ; preds = %163
  %167 = fcmp une float %164, %161, !dbg !206
  %168 = and i32 %158, 1, !dbg !207
  %169 = icmp eq i32 %168, 0, !dbg !207
  %170 = or i1 %169, %167, !dbg !208
  br i1 %170, label %185, label %171, !dbg !208

; <label>:171:                                    ; preds = %166, %163
  %172 = add i32 %158, 1, !dbg !209
  %173 = fsub float %160, %161, !dbg !211
  br label %185, !dbg !212

; <label>:174:                                    ; preds = %157
  %175 = fmul float %161, 5.000000e-01, !dbg !213
  %176 = fcmp olt float %175, %160, !dbg !215
  br i1 %176, label %182, label %177, !dbg !216

; <label>:177:                                    ; preds = %174
  %178 = fcmp une float %175, %160, !dbg !217
  %179 = and i32 %158, 1, !dbg !218
  %180 = icmp eq i32 %179, 0, !dbg !218
  %181 = or i1 %180, %178, !dbg !219
  br i1 %181, label %185, label %182, !dbg !219

; <label>:182:                                    ; preds = %177, %174
  %183 = add i32 %158, 1, !dbg !220
  %184 = fsub float %160, %161, !dbg !222
  br label %185, !dbg !223

; <label>:185:                                    ; preds = %177, %166, %171, %182
  %186 = phi i32 [ %172, %171 ], [ %158, %166 ], [ %183, %182 ], [ %158, %177 ], !dbg !224
  %187 = phi float [ %173, %171 ], [ %160, %166 ], [ %184, %182 ], [ %160, %177 ], !dbg !226
  %188 = bitcast float %187 to i32, !dbg !227
  %189 = xor i32 %8, %188, !dbg !228
  %190 = bitcast i32 %189 to float, !dbg !228
  %191 = and i32 %186, 2147483647, !dbg !229
  %192 = icmp eq i32 %7, 0, !dbg !230
  %193 = sub nsw i32 0, %191, !dbg !231
  %194 = select i1 %192, i32 %191, i32 %193, !dbg !230
  store i32 %194, i32* %2, align 4, !dbg !232, !tbaa !74
  br label %195, !dbg !233

; <label>:195:                                    ; preds = %185, %131, %22, %15
  %196 = phi float [ %17, %15 ], [ %190, %185 ], [ %26, %22 ], [ %138, %131 ], !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  ret float %196, !dbg !235
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
!102 = !DILocation(line: 64, column: 33, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !3, line: 64, column: 6)
!104 = !DILocation(line: 64, column: 6, scope: !99)
!105 = !DILocation(line: 64, column: 47, scope: !103)
!106 = !DILocation(line: 64, column: 38, scope: !103)
!107 = distinct !{!107, !104, !108}
!108 = !DILocation(line: 64, column: 49, scope: !99)
!109 = !DILocation(line: 65, column: 17, scope: !95)
!110 = !DILocation(line: 65, column: 22, scope: !95)
!111 = !DILocation(line: 0, scope: !95)
!112 = !DILocation(line: 68, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !19, file: !3, line: 68, column: 5)
!114 = !DILocation(line: 68, column: 5, scope: !19)
!115 = !DILocation(line: 39, column: 26, scope: !19)
!116 = !DILocation(line: 69, column: 26, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 69, column: 6)
!118 = distinct !DILexicalBlock(scope: !113, file: !3, line: 68, column: 20)
!119 = !DILocation(line: 69, column: 33, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !3, line: 69, column: 6)
!121 = !DILocation(line: 69, column: 6, scope: !117)
!122 = !DILocation(line: 69, column: 47, scope: !120)
!123 = !DILocation(line: 69, column: 38, scope: !120)
!124 = distinct !{!124, !121, !125}
!125 = !DILocation(line: 69, column: 49, scope: !117)
!126 = !DILocation(line: 70, column: 17, scope: !113)
!127 = !DILocation(line: 70, column: 22, scope: !113)
!128 = !DILocation(line: 0, scope: !113)
!129 = !DILocation(line: 73, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !19, file: !3, line: 73, column: 5)
!131 = !DILocation(line: 74, column: 33, scope: !130)
!132 = !DILocation(line: 74, column: 21, scope: !130)
!133 = !DILocation(line: 76, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 75, column: 7)
!135 = !DILocation(line: 39, column: 12, scope: !19)
!136 = !DILocation(line: 77, column: 9, scope: !134)
!137 = !DILocation(line: 73, column: 5, scope: !19)
!138 = !DILocation(line: 79, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !19, file: !3, line: 79, column: 5)
!140 = !DILocation(line: 80, column: 33, scope: !139)
!141 = !DILocation(line: 80, column: 21, scope: !139)
!142 = !DILocation(line: 82, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !3, line: 81, column: 7)
!144 = !DILocation(line: 83, column: 9, scope: !143)
!145 = !DILocation(line: 79, column: 5, scope: !19)
!146 = !DILocation(line: 40, column: 13, scope: !19)
!147 = !DILocation(line: 89, column: 2, scope: !19)
!148 = !DILocation(line: 0, scope: !19)
!149 = !DILocation(line: 39, column: 20, scope: !19)
!150 = !DILocation(line: 89, column: 9, scope: !19)
!151 = !DILocation(line: 91, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 91, column: 9)
!153 = distinct !DILexicalBlock(scope: !19, file: !3, line: 89, column: 13)
!154 = !DILocation(line: 91, column: 9, scope: !153)
!155 = !DILocation(line: 0, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 92, column: 11)
!157 = !DILocation(line: 93, column: 8, scope: !153)
!158 = distinct !{!158, !147, !159}
!159 = !DILocation(line: 94, column: 2, scope: !19)
!160 = !DILocation(line: 96, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !19, file: !3, line: 96, column: 5)
!162 = !DILocation(line: 0, scope: !153)
!163 = !DILocation(line: 0, scope: !152)
!164 = !DILocation(line: 96, column: 5, scope: !19)
!165 = !DILocation(line: 99, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !19, file: !3, line: 99, column: 5)
!167 = !DILocation(line: 99, column: 5, scope: !19)
!168 = !DILocation(line: 103, column: 10, scope: !19)
!169 = !DILocation(line: 103, column: 2, scope: !19)
!170 = !DILocation(line: 100, column: 14, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !3, line: 99, column: 12)
!172 = !DILocation(line: 100, column: 20, scope: !171)
!173 = !DILocation(line: 100, column: 11, scope: !171)
!174 = !DILocation(line: 101, column: 32, scope: !171)
!175 = !DILocation(line: 101, column: 13, scope: !171)
!176 = !DILocation(line: 101, column: 6, scope: !171)
!177 = !DILocation(line: 104, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !19, file: !3, line: 103, column: 23)
!179 = !DILocation(line: 105, column: 9, scope: !178)
!180 = distinct !{!180, !169, !181}
!181 = !DILocation(line: 106, column: 2, scope: !19)
!182 = !DILocation(line: 0, scope: !178)
!183 = !DILocation(line: 107, column: 7, scope: !184)
!184 = distinct !DILexicalBlock(scope: !19, file: !3, line: 107, column: 5)
!185 = !DILocation(line: 107, column: 5, scope: !19)
!186 = !DILocation(line: 108, column: 15, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 107, column: 16)
!188 = !DILocation(line: 108, column: 37, scope: !187)
!189 = !DILocation(line: 108, column: 27, scope: !187)
!190 = !DILocation(line: 109, column: 2, scope: !187)
!191 = !DILocation(line: 110, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !3, line: 109, column: 9)
!193 = !DILocation(line: 0, scope: !194)
!194 = distinct !DILexicalBlock(scope: !161, file: !3, line: 96, column: 12)
!195 = !DILocation(line: 0, scope: !192)
!196 = !DILocation(line: 114, column: 2, scope: !50)
!197 = !DILocation(line: 115, column: 6, scope: !19)
!198 = !DILocation(line: 116, column: 8, scope: !199)
!199 = distinct !DILexicalBlock(scope: !19, file: !3, line: 116, column: 6)
!200 = !DILocation(line: 116, column: 6, scope: !19)
!201 = !DILocation(line: 117, column: 11, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 117, column: 10)
!203 = distinct !DILexicalBlock(scope: !199, file: !3, line: 116, column: 21)
!204 = !DILocation(line: 117, column: 13, scope: !202)
!205 = !DILocation(line: 117, column: 16, scope: !202)
!206 = !DILocation(line: 117, column: 23, scope: !202)
!207 = !DILocation(line: 117, column: 33, scope: !202)
!208 = !DILocation(line: 117, column: 27, scope: !202)
!209 = !DILocation(line: 118, column: 4, scope: !210)
!210 = distinct !DILexicalBlock(scope: !202, file: !3, line: 117, column: 40)
!211 = !DILocation(line: 119, column: 4, scope: !210)
!212 = !DILocation(line: 120, column: 6, scope: !210)
!213 = !DILocation(line: 121, column: 19, scope: !214)
!214 = distinct !DILexicalBlock(scope: !199, file: !3, line: 121, column: 13)
!215 = !DILocation(line: 121, column: 14, scope: !214)
!216 = !DILocation(line: 121, column: 22, scope: !214)
!217 = !DILocation(line: 121, column: 27, scope: !214)
!218 = !DILocation(line: 121, column: 42, scope: !214)
!219 = !DILocation(line: 121, column: 36, scope: !214)
!220 = !DILocation(line: 122, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !214, file: !3, line: 121, column: 49)
!222 = !DILocation(line: 123, column: 7, scope: !221)
!223 = !DILocation(line: 124, column: 2, scope: !221)
!224 = !DILocation(line: 0, scope: !225)
!225 = distinct !DILexicalBlock(scope: !82, file: !3, line: 54, column: 12)
!226 = !DILocation(line: 0, scope: !50)
!227 = !DILocation(line: 125, column: 2, scope: !52)
!228 = !DILocation(line: 126, column: 2, scope: !54)
!229 = !DILocation(line: 127, column: 4, scope: !19)
!230 = !DILocation(line: 128, column: 10, scope: !19)
!231 = !DILocation(line: 128, column: 16, scope: !19)
!232 = !DILocation(line: 128, column: 7, scope: !19)
!233 = !DILocation(line: 129, column: 2, scope: !19)
!234 = !DILocation(line: 0, scope: !171)
!235 = !DILocation(line: 130, column: 1, scope: !19)
