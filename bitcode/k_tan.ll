; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_tan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_tan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__kernel_tan(double, double, i32) local_unnamed_addr #0 !dbg !23 {
  %4 = bitcast double %0 to i64, !dbg !71
  %5 = lshr i64 %4, 32, !dbg !71
  %6 = trunc i64 %5 to i32, !dbg !71
  %7 = and i32 %6, 2147483647, !dbg !73
  %8 = icmp ult i32 %7, 1043333120, !dbg !75
  %9 = fptosi double %0 to i32, !dbg !76
  %10 = icmp eq i32 %9, 0, !dbg !77
  %11 = and i1 %10, %8, !dbg !78
  br i1 %11, label %12, label %25, !dbg !78

; <label>:12:                                     ; preds = %3
  %13 = trunc i64 %4 to i32, !dbg !79
  %14 = add nsw i32 %2, 1, !dbg !81
  %15 = or i32 %14, %13, !dbg !83
  %16 = or i32 %15, %7, !dbg !84
  %17 = icmp eq i32 %16, 0, !dbg !85
  br i1 %17, label %18, label %21, !dbg !86

; <label>:18:                                     ; preds = %12
  %19 = tail call double @fabs(double %0) #3, !dbg !87
  %20 = fdiv double 1.000000e+00, %19, !dbg !88
  br label %104, !dbg !89

; <label>:21:                                     ; preds = %12
  %22 = icmp eq i32 %2, 1, !dbg !90
  %23 = fdiv double -1.000000e+00, %0, !dbg !91
  %24 = select i1 %22, double %0, double %23, !dbg !92
  br label %104, !dbg !93

; <label>:25:                                     ; preds = %3
  %26 = icmp ugt i32 %7, 1072010279, !dbg !94
  br i1 %26, label %27, label %36, !dbg !96

; <label>:27:                                     ; preds = %25
  %28 = icmp slt i32 %6, 0, !dbg !97
  %29 = fsub double -0.000000e+00, %0, !dbg !100
  %30 = fsub double -0.000000e+00, %1, !dbg !102
  %31 = select i1 %28, double %30, double %1, !dbg !103
  %32 = select i1 %28, double %29, double %0, !dbg !103
  %33 = fsub double 0x3FE921FB54442D18, %32, !dbg !104
  %34 = fsub double 0x3C81A62633145C07, %31, !dbg !106
  %35 = fadd double %33, %34, !dbg !108
  br label %36, !dbg !109

; <label>:36:                                     ; preds = %27, %25
  %37 = phi double [ 0.000000e+00, %27 ], [ %1, %25 ]
  %38 = phi double [ %35, %27 ], [ %0, %25 ]
  %39 = fmul double %38, %38, !dbg !110
  %40 = fmul double %39, %39, !dbg !111
  %41 = fmul double %40, 0x3EF375CBDB605373, !dbg !112
  %42 = fsub double 0x3F147E88A03792A6, %41, !dbg !112
  %43 = fmul double %40, %42, !dbg !113
  %44 = fadd double %43, 0x3F4344D8F2F26501, !dbg !114
  %45 = fmul double %40, %44, !dbg !115
  %46 = fadd double %45, 0x3F6D6D22C9560328, !dbg !116
  %47 = fmul double %40, %46, !dbg !117
  %48 = fadd double %47, 0x3F9664F48406D637, !dbg !118
  %49 = fmul double %40, %48, !dbg !119
  %50 = fadd double %49, 0x3FC111111110FE7A, !dbg !120
  %51 = fmul double %40, 0x3EFB2A7074BF7AD4, !dbg !122
  %52 = fadd double %51, 0x3F12B80F32F0A7E9, !dbg !123
  %53 = fmul double %40, %52, !dbg !124
  %54 = fadd double %53, 0x3F3026F71A8D1068, !dbg !125
  %55 = fmul double %40, %54, !dbg !126
  %56 = fadd double %55, 0x3F57DBC8FEE08315, !dbg !127
  %57 = fmul double %40, %56, !dbg !128
  %58 = fadd double %57, 0x3F8226E3E96E8493, !dbg !129
  %59 = fmul double %40, %58, !dbg !130
  %60 = fadd double %59, 0x3FABA1BA1BB341FE, !dbg !131
  %61 = fmul double %39, %60, !dbg !132
  %62 = fmul double %38, %39, !dbg !134
  %63 = fadd double %50, %61, !dbg !136
  %64 = fmul double %62, %63, !dbg !137
  %65 = fadd double %37, %64, !dbg !138
  %66 = fmul double %39, %65, !dbg !139
  %67 = fadd double %37, %66, !dbg !140
  %68 = fmul double %62, 0x3FD5555555555563, !dbg !141
  %69 = fadd double %68, %67, !dbg !142
  %70 = fadd double %38, %69, !dbg !143
  br i1 %26, label %71, label %86, !dbg !144

; <label>:71:                                     ; preds = %36
  %72 = sitofp i32 %2 to double, !dbg !145
  %73 = lshr i64 %4, 62, !dbg !148
  %74 = trunc i64 %73 to i32, !dbg !148
  %75 = and i32 %74, 2, !dbg !149
  %76 = sub nsw i32 1, %75, !dbg !150
  %77 = sitofp i32 %76 to double, !dbg !151
  %78 = fmul double %70, %70, !dbg !152
  %79 = fadd double %70, %72, !dbg !153
  %80 = fdiv double %78, %79, !dbg !154
  %81 = fsub double %80, %69, !dbg !155
  %82 = fsub double %38, %81, !dbg !156
  %83 = fmul double %82, 2.000000e+00, !dbg !157
  %84 = fsub double %72, %83, !dbg !158
  %85 = fmul double %84, %77, !dbg !159
  br label %104, !dbg !160

; <label>:86:                                     ; preds = %36
  %87 = icmp eq i32 %2, 1, !dbg !161
  br i1 %87, label %104, label %88, !dbg !162

; <label>:88:                                     ; preds = %86
  %89 = bitcast double %70 to i64, !dbg !163
  %90 = and i64 %89, -4294967296, !dbg !163
  %91 = bitcast i64 %90 to double, !dbg !163
  %92 = fsub double %91, %38, !dbg !164
  %93 = fsub double %69, %92, !dbg !165
  %94 = fdiv double -1.000000e+00, %70, !dbg !166
  %95 = bitcast double %94 to i64, !dbg !169
  %96 = and i64 %95, -4294967296, !dbg !169
  %97 = bitcast i64 %96 to double, !dbg !169
  %98 = fmul double %91, %97, !dbg !170
  %99 = fadd double %98, 1.000000e+00, !dbg !171
  %100 = fmul double %93, %97, !dbg !172
  %101 = fadd double %99, %100, !dbg !173
  %102 = fmul double %94, %101, !dbg !174
  %103 = fadd double %102, %97, !dbg !175
  br label %104

; <label>:104:                                    ; preds = %86, %18, %21, %88, %71
  %105 = phi double [ %85, %71 ], [ %103, %88 ], [ %20, %18 ], [ %24, %21 ], [ %70, %86 ], !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !177
  ret double %105, !dbg !177
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_tan.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{!7, !10, !12, !14}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 57, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4605249457297304856, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "pio4", scope: !0, file: !1, line: 58, type: !9, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4359948597267291143, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "pio4lo", scope: !0, file: !1, line: 59, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "T", scope: !0, file: !1, line: 60, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 832, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 13)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "__kernel_tan", scope: !1, file: !1, line: 77, type: !24, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!5, !5, !5, !4}
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !53, !58, !60, !63, !64, !66}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !23, file: !1, line: 77, type: !5)
!28 = !DILocalVariable(name: "y", arg: 2, scope: !23, file: !1, line: 77, type: !5)
!29 = !DILocalVariable(name: "iy", arg: 3, scope: !23, file: !1, line: 77, type: !4)
!30 = !DILocalVariable(name: "z", scope: !23, file: !1, line: 83, type: !5)
!31 = !DILocalVariable(name: "r", scope: !23, file: !1, line: 83, type: !5)
!32 = !DILocalVariable(name: "v", scope: !23, file: !1, line: 83, type: !5)
!33 = !DILocalVariable(name: "w", scope: !23, file: !1, line: 83, type: !5)
!34 = !DILocalVariable(name: "s", scope: !23, file: !1, line: 83, type: !5)
!35 = !DILocalVariable(name: "ix", scope: !23, file: !1, line: 84, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !37, line: 77, baseType: !4)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DILocalVariable(name: "hx", scope: !23, file: !1, line: 84, type: !36)
!39 = !DILocalVariable(name: "gh_u", scope: !40, file: !1, line: 85, type: !41)
!40 = distinct !DILexicalBlock(scope: !23, file: !1, line: 85, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !42, line: 278, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 270, size: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 272, baseType: !5, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !43, file: !42, line: 277, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !42, line: 273, size: 64, elements: !48)
!48 = !{!49, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !47, file: !42, line: 275, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 79, baseType: !51)
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !47, file: !42, line: 276, baseType: !50, size: 32, offset: 32)
!53 = !DILocalVariable(name: "low", scope: !54, file: !1, line: 89, type: !50)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 88, column: 21)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 88, column: 10)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 88, column: 6)
!57 = distinct !DILexicalBlock(scope: !23, file: !1, line: 87, column: 5)
!58 = !DILocalVariable(name: "gl_u", scope: !59, file: !1, line: 90, type: !41)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 90, column: 3)
!60 = !DILocalVariable(name: "a", scope: !61, file: !1, line: 121, type: !5)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 118, column: 7)
!62 = distinct !DILexicalBlock(scope: !23, file: !1, line: 117, column: 5)
!63 = !DILocalVariable(name: "t", scope: !61, file: !1, line: 121, type: !5)
!64 = !DILocalVariable(name: "sl_u", scope: !65, file: !1, line: 123, type: !41)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 123, column: 6)
!66 = !DILocalVariable(name: "sl_u", scope: !67, file: !1, line: 126, type: !41)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 126, column: 6)
!68 = !DILocation(line: 77, column: 29, scope: !23)
!69 = !DILocation(line: 77, column: 39, scope: !23)
!70 = !DILocation(line: 77, column: 46, scope: !23)
!71 = !DILocation(line: 85, column: 2, scope: !40)
!72 = !DILocation(line: 84, column: 15, scope: !23)
!73 = !DILocation(line: 86, column: 9, scope: !23)
!74 = !DILocation(line: 84, column: 12, scope: !23)
!75 = !DILocation(line: 87, column: 7, scope: !57)
!76 = !DILocation(line: 88, column: 10, scope: !55)
!77 = !DILocation(line: 88, column: 16, scope: !55)
!78 = !DILocation(line: 87, column: 5, scope: !23)
!79 = !DILocation(line: 90, column: 3, scope: !59)
!80 = !DILocation(line: 89, column: 21, scope: !54)
!81 = !DILocation(line: 91, column: 19, scope: !82)
!82 = distinct !DILexicalBlock(scope: !54, file: !1, line: 91, column: 6)
!83 = !DILocation(line: 91, column: 10, scope: !82)
!84 = !DILocation(line: 91, column: 15, scope: !82)
!85 = !DILocation(line: 91, column: 23, scope: !82)
!86 = !DILocation(line: 91, column: 6, scope: !54)
!87 = !DILocation(line: 91, column: 39, scope: !82)
!88 = !DILocation(line: 91, column: 38, scope: !82)
!89 = !DILocation(line: 91, column: 28, scope: !82)
!90 = !DILocation(line: 92, column: 18, scope: !82)
!91 = !DILocation(line: 92, column: 31, scope: !82)
!92 = !DILocation(line: 92, column: 15, scope: !82)
!93 = !DILocation(line: 92, column: 8, scope: !82)
!94 = !DILocation(line: 95, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !23, file: !1, line: 95, column: 5)
!96 = !DILocation(line: 95, column: 5, scope: !23)
!97 = !DILocation(line: 96, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 96, column: 9)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 95, column: 21)
!100 = !DILocation(line: 96, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 96, column: 15)
!102 = !DILocation(line: 96, column: 28, scope: !101)
!103 = !DILocation(line: 96, column: 9, scope: !99)
!104 = !DILocation(line: 97, column: 14, scope: !99)
!105 = !DILocation(line: 83, column: 9, scope: !23)
!106 = !DILocation(line: 98, column: 16, scope: !99)
!107 = !DILocation(line: 83, column: 15, scope: !23)
!108 = !DILocation(line: 99, column: 11, scope: !99)
!109 = !DILocation(line: 100, column: 2, scope: !99)
!110 = !DILocation(line: 101, column: 8, scope: !23)
!111 = !DILocation(line: 102, column: 9, scope: !23)
!112 = !DILocation(line: 107, column: 44, scope: !23)
!113 = !DILocation(line: 107, column: 36, scope: !23)
!114 = !DILocation(line: 107, column: 34, scope: !23)
!115 = !DILocation(line: 107, column: 28, scope: !23)
!116 = !DILocation(line: 107, column: 26, scope: !23)
!117 = !DILocation(line: 107, column: 20, scope: !23)
!118 = !DILocation(line: 107, column: 18, scope: !23)
!119 = !DILocation(line: 107, column: 12, scope: !23)
!120 = !DILocation(line: 107, column: 10, scope: !23)
!121 = !DILocation(line: 83, column: 11, scope: !23)
!122 = !DILocation(line: 108, column: 48, scope: !23)
!123 = !DILocation(line: 108, column: 46, scope: !23)
!124 = !DILocation(line: 108, column: 39, scope: !23)
!125 = !DILocation(line: 108, column: 37, scope: !23)
!126 = !DILocation(line: 108, column: 31, scope: !23)
!127 = !DILocation(line: 108, column: 29, scope: !23)
!128 = !DILocation(line: 108, column: 23, scope: !23)
!129 = !DILocation(line: 108, column: 21, scope: !23)
!130 = !DILocation(line: 108, column: 15, scope: !23)
!131 = !DILocation(line: 108, column: 13, scope: !23)
!132 = !DILocation(line: 108, column: 7, scope: !23)
!133 = !DILocation(line: 83, column: 13, scope: !23)
!134 = !DILocation(line: 109, column: 7, scope: !23)
!135 = !DILocation(line: 83, column: 17, scope: !23)
!136 = !DILocation(line: 110, column: 17, scope: !23)
!137 = !DILocation(line: 110, column: 14, scope: !23)
!138 = !DILocation(line: 110, column: 20, scope: !23)
!139 = !DILocation(line: 110, column: 11, scope: !23)
!140 = !DILocation(line: 110, column: 8, scope: !23)
!141 = !DILocation(line: 111, column: 11, scope: !23)
!142 = !DILocation(line: 111, column: 4, scope: !23)
!143 = !DILocation(line: 112, column: 7, scope: !23)
!144 = !DILocation(line: 113, column: 5, scope: !23)
!145 = !DILocation(line: 114, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 113, column: 21)
!147 = distinct !DILexicalBlock(scope: !23, file: !1, line: 113, column: 5)
!148 = !DILocation(line: 115, column: 28, scope: !146)
!149 = !DILocation(line: 115, column: 33, scope: !146)
!150 = !DILocation(line: 115, column: 23, scope: !146)
!151 = !DILocation(line: 115, column: 13, scope: !146)
!152 = !DILocation(line: 115, column: 50, scope: !146)
!153 = !DILocation(line: 115, column: 55, scope: !146)
!154 = !DILocation(line: 115, column: 52, scope: !146)
!155 = !DILocation(line: 115, column: 58, scope: !146)
!156 = !DILocation(line: 115, column: 47, scope: !146)
!157 = !DILocation(line: 115, column: 44, scope: !146)
!158 = !DILocation(line: 115, column: 40, scope: !146)
!159 = !DILocation(line: 115, column: 37, scope: !146)
!160 = !DILocation(line: 115, column: 6, scope: !146)
!161 = !DILocation(line: 117, column: 7, scope: !62)
!162 = !DILocation(line: 117, column: 5, scope: !23)
!163 = !DILocation(line: 123, column: 6, scope: !65)
!164 = !DILocation(line: 124, column: 16, scope: !61)
!165 = !DILocation(line: 124, column: 12, scope: !61)
!166 = !DILocation(line: 125, column: 19, scope: !61)
!167 = !DILocation(line: 121, column: 13, scope: !61)
!168 = !DILocation(line: 121, column: 15, scope: !61)
!169 = !DILocation(line: 126, column: 6, scope: !67)
!170 = !DILocation(line: 127, column: 16, scope: !61)
!171 = !DILocation(line: 127, column: 14, scope: !61)
!172 = !DILocation(line: 128, column: 21, scope: !61)
!173 = !DILocation(line: 128, column: 19, scope: !61)
!174 = !DILocation(line: 128, column: 16, scope: !61)
!175 = !DILocation(line: 128, column: 14, scope: !61)
!176 = !DILocation(line: 0, scope: !61)
!177 = !DILocation(line: 130, column: 1, scope: !23)
