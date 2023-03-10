; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_hypot.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_hypot.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_hypotf(float, float) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast float %0 to i32, !dbg !79
  %4 = and i32 %3, 2147483647, !dbg !81
  %5 = bitcast float %1 to i32, !dbg !82
  %6 = and i32 %5, 2147483647, !dbg !84
  %7 = icmp ugt i32 %6, %4, !dbg !85
  %8 = select i1 %7, i32 %4, i32 %6, !dbg !87
  %9 = select i1 %7, i32 %6, i32 %4, !dbg !87
  %10 = bitcast i32 %9 to float, !dbg !89
  %11 = bitcast i32 %8 to float, !dbg !90
  %12 = sub nsw i32 %9, %8, !dbg !91
  %13 = icmp sgt i32 %12, 251658240, !dbg !93
  br i1 %13, label %14, label %16, !dbg !94

; <label>:14:                                     ; preds = %2
  %15 = fadd float %10, %11, !dbg !95
  br label %96, !dbg !97

; <label>:16:                                     ; preds = %2
  %17 = icmp ugt i32 %9, 1484783616, !dbg !99
  br i1 %17, label %18, label %31, !dbg !100

; <label>:18:                                     ; preds = %16
  %19 = icmp ult i32 %9, 2139095040, !dbg !101
  br i1 %19, label %26, label %20, !dbg !103

; <label>:20:                                     ; preds = %18
  %21 = fadd float %10, %11, !dbg !104
  %22 = icmp eq i32 %9, 2139095040, !dbg !107
  %23 = select i1 %22, float %10, float %21, !dbg !109
  %24 = icmp eq i32 %8, 2139095040, !dbg !110
  %25 = select i1 %24, float %11, float %23, !dbg !112
  br label %96, !dbg !112

; <label>:26:                                     ; preds = %18
  %27 = add nsw i32 %9, -570425344, !dbg !113
  %28 = add nsw i32 %8, -570425344, !dbg !114
  %29 = bitcast i32 %27 to float, !dbg !115
  %30 = bitcast i32 %28 to float, !dbg !116
  br label %31, !dbg !117

; <label>:31:                                     ; preds = %26, %16
  %32 = phi i32 [ %28, %26 ], [ %8, %16 ], !dbg !118
  %33 = phi i32 [ %27, %26 ], [ %9, %16 ], !dbg !118
  %34 = phi i32 [ 68, %26 ], [ 0, %16 ], !dbg !119
  %35 = phi float [ %30, %26 ], [ %11, %16 ], !dbg !120
  %36 = phi float [ %29, %26 ], [ %10, %16 ], !dbg !121
  %37 = icmp slt i32 %32, 645922816, !dbg !122
  br i1 %37, label %38, label %52, !dbg !123

; <label>:38:                                     ; preds = %31
  %39 = icmp eq i32 %32, 0, !dbg !124
  br i1 %39, label %96, label %40, !dbg !125

; <label>:40:                                     ; preds = %38
  %41 = icmp slt i32 %32, 8388608, !dbg !126
  br i1 %41, label %42, label %46, !dbg !127

; <label>:42:                                     ; preds = %40
  %43 = fmul float %35, 0x47D0000000000000, !dbg !129
  %44 = fmul float %36, 0x47D0000000000000, !dbg !130
  %45 = or i32 %34, -126, !dbg !131
  br label %52, !dbg !132

; <label>:46:                                     ; preds = %40
  %47 = add nsw i32 %33, 570425344, !dbg !133
  %48 = add nsw i32 %32, 570425344, !dbg !134
  %49 = add nsw i32 %34, -68, !dbg !135
  %50 = bitcast i32 %47 to float, !dbg !136
  %51 = bitcast i32 %48 to float, !dbg !137
  br label %52

; <label>:52:                                     ; preds = %46, %42, %31
  %53 = phi i32 [ %32, %42 ], [ %48, %46 ], [ %32, %31 ], !dbg !138
  %54 = phi i32 [ %33, %42 ], [ %47, %46 ], [ %33, %31 ], !dbg !138
  %55 = phi i32 [ %45, %42 ], [ %49, %46 ], [ %34, %31 ], !dbg !138
  %56 = phi float [ %43, %42 ], [ %51, %46 ], [ %35, %31 ], !dbg !139
  %57 = phi float [ %44, %42 ], [ %50, %46 ], [ %36, %31 ], !dbg !140
  %58 = fsub float %57, %56, !dbg !141
  %59 = fcmp ogt float %58, %56, !dbg !142
  br i1 %59, label %60, label %70, !dbg !143

; <label>:60:                                     ; preds = %52
  %61 = and i32 %54, -4096, !dbg !144
  %62 = bitcast i32 %61 to float, !dbg !144
  %63 = fsub float %57, %62, !dbg !145
  %64 = fmul float %62, %62, !dbg !147
  %65 = fmul float %56, %56, !dbg !148
  %66 = fsub float -0.000000e+00, %65, !dbg !148
  %67 = fadd float %57, %62, !dbg !149
  %68 = fmul float %63, %67, !dbg !150
  %69 = fsub float %66, %68, !dbg !151
  br label %85, !dbg !152

; <label>:70:                                     ; preds = %52
  %71 = fadd float %57, %57, !dbg !153
  %72 = and i32 %53, -4096, !dbg !154
  %73 = bitcast i32 %72 to float, !dbg !154
  %74 = fsub float %56, %73, !dbg !156
  %75 = add i32 %54, 8388608, !dbg !158
  %76 = bitcast i32 %75 to float, !dbg !158
  %77 = fsub float %71, %76, !dbg !159
  %78 = fmul float %73, %76, !dbg !160
  %79 = fmul float %58, %58, !dbg !161
  %80 = fsub float -0.000000e+00, %79, !dbg !161
  %81 = fmul float %74, %76, !dbg !162
  %82 = fmul float %56, %77, !dbg !163
  %83 = fadd float %81, %82, !dbg !164
  %84 = fsub float %80, %83, !dbg !165
  br label %85

; <label>:85:                                     ; preds = %70, %60
  %86 = phi float [ %84, %70 ], [ %69, %60 ]
  %87 = phi float [ %78, %70 ], [ %64, %60 ]
  %88 = fsub float %87, %86, !dbg !166
  %89 = tail call float @__ieee754_sqrtf(float %88) #3, !dbg !166
  %90 = icmp eq i32 %55, 0, !dbg !167
  br i1 %90, label %96, label %91, !dbg !168

; <label>:91:                                     ; preds = %85
  %92 = shl nsw i32 %55, 23, !dbg !169
  %93 = add i32 %92, 1065353216, !dbg !169
  %94 = bitcast i32 %93 to float, !dbg !169
  %95 = fmul float %89, %94, !dbg !170
  br label %96, !dbg !171

; <label>:96:                                     ; preds = %85, %38, %20, %91, %14
  %97 = phi float [ %15, %14 ], [ %95, %91 ], [ %25, %20 ], [ %36, %38 ], [ %89, %85 ], !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  ret float %97, !dbg !173
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_hypot.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__ieee754_hypotf", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !25, !26, !27, !28, !38, !40, !42, !44, !48, !50, !57, !60, !62, !66, !69, !71}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 19, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 19, type: !10)
!14 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 25, type: !10)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 25, type: !10)
!16 = !DILocalVariable(name: "t1", scope: !7, file: !1, line: 25, type: !10)
!17 = !DILocalVariable(name: "t2", scope: !7, file: !1, line: 25, type: !10)
!18 = !DILocalVariable(name: "y1", scope: !7, file: !1, line: 25, type: !10)
!19 = !DILocalVariable(name: "y2", scope: !7, file: !1, line: 25, type: !10)
!20 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 25, type: !10)
!21 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 26, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !23, line: 77, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 26, type: !22)
!26 = !DILocalVariable(name: "ha", scope: !7, file: !1, line: 26, type: !22)
!27 = !DILocalVariable(name: "hb", scope: !7, file: !1, line: 26, type: !22)
!28 = !DILocalVariable(name: "gf_u", scope: !29, file: !1, line: 28, type: !30)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !31, line: 347, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 343, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 345, baseType: !10, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !32, file: !31, line: 346, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 79, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "gf_u", scope: !39, file: !1, line: 30, type: !30)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 2)
!40 = !DILocalVariable(name: "sf_u", scope: !41, file: !1, line: 33, type: !30)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 2)
!42 = !DILocalVariable(name: "sf_u", scope: !43, file: !1, line: 34, type: !30)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 34, column: 2)
!44 = !DILocalVariable(name: "sf_u", scope: !45, file: !1, line: 46, type: !30)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 46, column: 5)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 37, column: 23)
!47 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 5)
!48 = !DILocalVariable(name: "sf_u", scope: !49, file: !1, line: 47, type: !30)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 47, column: 5)
!50 = !DILocalVariable(name: "sf_u", scope: !51, file: !1, line: 53, type: !30)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 3)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 52, column: 44)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 52, column: 16)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 50, column: 9)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 49, column: 23)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 5)
!57 = !DILocalVariable(name: "sf_u", scope: !58, file: !1, line: 61, type: !30)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 61, column: 3)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 13)
!60 = !DILocalVariable(name: "sf_u", scope: !61, file: !1, line: 62, type: !30)
!61 = distinct !DILexicalBlock(scope: !59, file: !1, line: 62, column: 3)
!62 = !DILocalVariable(name: "sf_u", scope: !63, file: !1, line: 68, type: !30)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 68, column: 6)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 67, column: 11)
!65 = distinct !DILexicalBlock(scope: !7, file: !1, line: 67, column: 6)
!66 = !DILocalVariable(name: "sf_u", scope: !67, file: !1, line: 73, type: !30)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 73, column: 6)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 71, column: 9)
!69 = !DILocalVariable(name: "sf_u", scope: !70, file: !1, line: 75, type: !30)
!70 = distinct !DILexicalBlock(scope: !68, file: !1, line: 75, column: 6)
!71 = !DILocalVariable(name: "sf_u", scope: !72, file: !1, line: 80, type: !30)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 80, column: 6)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 79, column: 11)
!74 = distinct !DILexicalBlock(scope: !7, file: !1, line: 79, column: 5)
!75 = !DILocation(line: 19, column: 31, scope: !7)
!76 = !DILocation(line: 19, column: 40, scope: !7)
!77 = !DILocation(line: 25, column: 8, scope: !7)
!78 = !DILocation(line: 25, column: 12, scope: !7)
!79 = !DILocation(line: 28, column: 2, scope: !29)
!80 = !DILocation(line: 26, column: 16, scope: !7)
!81 = !DILocation(line: 29, column: 5, scope: !7)
!82 = !DILocation(line: 30, column: 2, scope: !39)
!83 = !DILocation(line: 26, column: 19, scope: !7)
!84 = !DILocation(line: 31, column: 5, scope: !7)
!85 = !DILocation(line: 32, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 5)
!87 = !DILocation(line: 32, column: 40, scope: !88)
!88 = distinct !DILexicalBlock(scope: !86, file: !1, line: 32, column: 14)
!89 = !DILocation(line: 33, column: 2, scope: !41)
!90 = !DILocation(line: 34, column: 2, scope: !43)
!91 = !DILocation(line: 35, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 5)
!93 = !DILocation(line: 35, column: 12, scope: !92)
!94 = !DILocation(line: 35, column: 5, scope: !7)
!95 = !DILocation(line: 35, column: 34, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 35, column: 25)
!97 = !DILocation(line: 35, column: 26, scope: !96)
!98 = !DILocation(line: 26, column: 14, scope: !7)
!99 = !DILocation(line: 37, column: 8, scope: !47)
!100 = !DILocation(line: 37, column: 5, scope: !7)
!101 = !DILocation(line: 38, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !46, file: !1, line: 38, column: 8)
!103 = !DILocation(line: 38, column: 8, scope: !46)
!104 = !DILocation(line: 39, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 38, column: 34)
!106 = !DILocation(line: 25, column: 28, scope: !7)
!107 = !DILocation(line: 40, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 40, column: 12)
!109 = !DILocation(line: 40, column: 12, scope: !105)
!110 = !DILocation(line: 41, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 41, column: 12)
!112 = !DILocation(line: 41, column: 12, scope: !105)
!113 = !DILocation(line: 45, column: 8, scope: !46)
!114 = !DILocation(line: 45, column: 27, scope: !46)
!115 = !DILocation(line: 46, column: 5, scope: !45)
!116 = !DILocation(line: 47, column: 5, scope: !49)
!117 = !DILocation(line: 48, column: 2, scope: !46)
!118 = !DILocation(line: 0, scope: !88)
!119 = !DILocation(line: 0, scope: !7)
!120 = !DILocation(line: 0, scope: !43)
!121 = !DILocation(line: 0, scope: !41)
!122 = !DILocation(line: 49, column: 8, scope: !56)
!123 = !DILocation(line: 49, column: 5, scope: !7)
!124 = !DILocation(line: 50, column: 9, scope: !54)
!125 = !DILocation(line: 50, column: 9, scope: !55)
!126 = !DILocation(line: 52, column: 16, scope: !53)
!127 = !DILocation(line: 52, column: 16, scope: !54)
!128 = !DILocation(line: 25, column: 16, scope: !7)
!129 = !DILocation(line: 54, column: 5, scope: !52)
!130 = !DILocation(line: 55, column: 5, scope: !52)
!131 = !DILocation(line: 56, column: 5, scope: !52)
!132 = !DILocation(line: 57, column: 6, scope: !52)
!133 = !DILocation(line: 58, column: 13, scope: !59)
!134 = !DILocation(line: 59, column: 6, scope: !59)
!135 = !DILocation(line: 60, column: 5, scope: !59)
!136 = !DILocation(line: 61, column: 3, scope: !58)
!137 = !DILocation(line: 62, column: 3, scope: !61)
!138 = !DILocation(line: 0, scope: !46)
!139 = !DILocation(line: 0, scope: !49)
!140 = !DILocation(line: 0, scope: !45)
!141 = !DILocation(line: 66, column: 7, scope: !7)
!142 = !DILocation(line: 67, column: 7, scope: !65)
!143 = !DILocation(line: 67, column: 6, scope: !7)
!144 = !DILocation(line: 68, column: 6, scope: !63)
!145 = !DILocation(line: 69, column: 12, scope: !64)
!146 = !DILocation(line: 25, column: 19, scope: !7)
!147 = !DILocation(line: 70, column: 29, scope: !64)
!148 = !DILocation(line: 70, column: 35, scope: !64)
!149 = !DILocation(line: 70, column: 46, scope: !64)
!150 = !DILocation(line: 70, column: 43, scope: !64)
!151 = !DILocation(line: 70, column: 40, scope: !64)
!152 = !DILocation(line: 71, column: 2, scope: !64)
!153 = !DILocation(line: 72, column: 12, scope: !68)
!154 = !DILocation(line: 73, column: 6, scope: !67)
!155 = !DILocation(line: 25, column: 22, scope: !7)
!156 = !DILocation(line: 74, column: 13, scope: !68)
!157 = !DILocation(line: 25, column: 25, scope: !7)
!158 = !DILocation(line: 75, column: 6, scope: !70)
!159 = !DILocation(line: 76, column: 13, scope: !68)
!160 = !DILocation(line: 77, column: 29, scope: !68)
!161 = !DILocation(line: 77, column: 35, scope: !68)
!162 = !DILocation(line: 77, column: 44, scope: !68)
!163 = !DILocation(line: 77, column: 50, scope: !68)
!164 = !DILocation(line: 77, column: 47, scope: !68)
!165 = !DILocation(line: 77, column: 40, scope: !68)
!166 = !DILocation(line: 0, scope: !64)
!167 = !DILocation(line: 79, column: 6, scope: !74)
!168 = !DILocation(line: 79, column: 5, scope: !7)
!169 = !DILocation(line: 80, column: 6, scope: !72)
!170 = !DILocation(line: 81, column: 15, scope: !73)
!171 = !DILocation(line: 81, column: 6, scope: !73)
!172 = !DILocation(line: 0, scope: !105)
!173 = !DILocation(line: 83, column: 1, scope: !7)
