; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_tan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_tan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__kernel_tanf(float, float, i32) local_unnamed_addr #0 !dbg !23 {
  %4 = bitcast float %0 to i32, !dbg !65
  %5 = and i32 %4, 2147483647, !dbg !67
  %6 = icmp ult i32 %5, 830472192, !dbg !69
  %7 = fptosi float %0 to i32, !dbg !71
  %8 = icmp eq i32 %7, 0, !dbg !74
  %9 = and i1 %8, %6, !dbg !75
  br i1 %9, label %10, label %21, !dbg !75

; <label>:10:                                     ; preds = %3
  %11 = add nsw i32 %2, 1, !dbg !76
  %12 = or i32 %11, %5, !dbg !79
  %13 = icmp eq i32 %12, 0, !dbg !80
  br i1 %13, label %14, label %17, !dbg !81

; <label>:14:                                     ; preds = %10
  %15 = tail call float @fabsf(float %0) #3, !dbg !82
  %16 = fdiv float 1.000000e+00, %15, !dbg !83
  br label %99, !dbg !84

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i32 %2, 1, !dbg !85
  %19 = fdiv float -1.000000e+00, %0, !dbg !86
  %20 = select i1 %18, float %0, float %19, !dbg !87
  br label %99, !dbg !88

; <label>:21:                                     ; preds = %3
  %22 = icmp ugt i32 %5, 1059889471, !dbg !89
  br i1 %22, label %23, label %32, !dbg !91

; <label>:23:                                     ; preds = %21
  %24 = icmp slt i32 %4, 0, !dbg !92
  %25 = fsub float -0.000000e+00, %0, !dbg !95
  %26 = fsub float -0.000000e+00, %1, !dbg !97
  %27 = select i1 %24, float %26, float %1, !dbg !98
  %28 = select i1 %24, float %25, float %0, !dbg !98
  %29 = fsub float 0x3FE921FB40000000, %28, !dbg !99
  %30 = fsub float 0x3E64442D00000000, %27, !dbg !101
  %31 = fadd float %29, %30, !dbg !103
  br label %32, !dbg !104

; <label>:32:                                     ; preds = %23, %21
  %33 = phi float [ 0.000000e+00, %23 ], [ %1, %21 ]
  %34 = phi float [ %31, %23 ], [ %0, %21 ]
  %35 = fmul float %34, %34, !dbg !105
  %36 = fmul float %35, %35, !dbg !106
  %37 = fmul float %36, 0x3EF375CBE0000000, !dbg !107
  %38 = fsub float 0x3F147E88A0000000, %37, !dbg !107
  %39 = fmul float %36, %38, !dbg !108
  %40 = fadd float %39, 0x3F4344D900000000, !dbg !109
  %41 = fmul float %36, %40, !dbg !110
  %42 = fadd float %41, 0x3F6D6D22C0000000, !dbg !111
  %43 = fmul float %36, %42, !dbg !112
  %44 = fadd float %43, 0x3F9664F480000000, !dbg !113
  %45 = fmul float %36, %44, !dbg !114
  %46 = fadd float %45, 0x3FC1111120000000, !dbg !115
  %47 = fmul float %36, 0x3EFB2A7080000000, !dbg !117
  %48 = fadd float %47, 0x3F12B80F40000000, !dbg !118
  %49 = fmul float %36, %48, !dbg !119
  %50 = fadd float %49, 0x3F3026F720000000, !dbg !120
  %51 = fmul float %36, %50, !dbg !121
  %52 = fadd float %51, 0x3F57DBC900000000, !dbg !122
  %53 = fmul float %36, %52, !dbg !123
  %54 = fadd float %53, 0x3F8226E3E0000000, !dbg !124
  %55 = fmul float %36, %54, !dbg !125
  %56 = fadd float %55, 0x3FABA1BA20000000, !dbg !126
  %57 = fmul float %35, %56, !dbg !127
  %58 = fmul float %34, %35, !dbg !129
  %59 = fadd float %46, %57, !dbg !131
  %60 = fmul float %58, %59, !dbg !132
  %61 = fadd float %33, %60, !dbg !133
  %62 = fmul float %35, %61, !dbg !134
  %63 = fadd float %33, %62, !dbg !135
  %64 = fmul float %58, 0x3FD5555560000000, !dbg !136
  %65 = fadd float %64, %63, !dbg !137
  %66 = fadd float %34, %65, !dbg !138
  br i1 %22, label %67, label %81, !dbg !139

; <label>:67:                                     ; preds = %32
  %68 = sitofp i32 %2 to float, !dbg !140
  %69 = lshr i32 %4, 30, !dbg !143
  %70 = and i32 %69, 2, !dbg !144
  %71 = sub nsw i32 1, %70, !dbg !145
  %72 = sitofp i32 %71 to float, !dbg !146
  %73 = fmul float %66, %66, !dbg !147
  %74 = fadd float %66, %68, !dbg !148
  %75 = fdiv float %73, %74, !dbg !149
  %76 = fsub float %75, %65, !dbg !150
  %77 = fsub float %34, %76, !dbg !151
  %78 = fmul float %77, 2.000000e+00, !dbg !152
  %79 = fsub float %68, %78, !dbg !153
  %80 = fmul float %79, %72, !dbg !154
  br label %99, !dbg !155

; <label>:81:                                     ; preds = %32
  %82 = icmp eq i32 %2, 1, !dbg !156
  br i1 %82, label %99, label %83, !dbg !157

; <label>:83:                                     ; preds = %81
  %84 = bitcast float %66 to i32, !dbg !158
  %85 = and i32 %84, -4096, !dbg !160
  %86 = bitcast i32 %85 to float, !dbg !160
  %87 = fsub float %86, %34, !dbg !161
  %88 = fsub float %65, %87, !dbg !162
  %89 = fdiv float -1.000000e+00, %66, !dbg !163
  %90 = bitcast float %89 to i32, !dbg !166
  %91 = and i32 %90, -4096, !dbg !167
  %92 = bitcast i32 %91 to float, !dbg !167
  %93 = fmul float %86, %92, !dbg !168
  %94 = fadd float %93, 1.000000e+00, !dbg !169
  %95 = fmul float %88, %92, !dbg !170
  %96 = fadd float %94, %95, !dbg !171
  %97 = fmul float %89, %96, !dbg !172
  %98 = fadd float %97, %92, !dbg !173
  br label %99

; <label>:99:                                     ; preds = %81, %83, %67, %17, %14
  %100 = phi float [ %16, %14 ], [ %20, %17 ], [ %80, %67 ], [ %98, %83 ], [ %66, %81 ], !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  ret float %100, !dbg !175
}

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_tan.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!7, !10, !12, !14}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 22, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 1061752794, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "pio4", scope: !0, file: !1, line: 23, type: !9, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 857874792, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "pio4lo", scope: !0, file: !1, line: 24, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "T", scope: !0, file: !1, line: 25, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 416, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 13)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "__kernel_tanf", scope: !1, file: !1, line: 42, type: !24, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!5, !5, !5, !4}
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !38, !39, !49, !52, !53, !54, !56, !58, !60}
!27 = !DILocalVariable(name: "x", arg: 1, scope: !23, file: !1, line: 42, type: !5)
!28 = !DILocalVariable(name: "y", arg: 2, scope: !23, file: !1, line: 42, type: !5)
!29 = !DILocalVariable(name: "iy", arg: 3, scope: !23, file: !1, line: 42, type: !4)
!30 = !DILocalVariable(name: "z", scope: !23, file: !1, line: 48, type: !5)
!31 = !DILocalVariable(name: "r", scope: !23, file: !1, line: 48, type: !5)
!32 = !DILocalVariable(name: "v", scope: !23, file: !1, line: 48, type: !5)
!33 = !DILocalVariable(name: "w", scope: !23, file: !1, line: 48, type: !5)
!34 = !DILocalVariable(name: "s", scope: !23, file: !1, line: 48, type: !5)
!35 = !DILocalVariable(name: "ix", scope: !23, file: !1, line: 49, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !37, line: 77, baseType: !4)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DILocalVariable(name: "hx", scope: !23, file: !1, line: 49, type: !36)
!39 = !DILocalVariable(name: "gf_u", scope: !40, file: !1, line: 50, type: !41)
!40 = distinct !DILexicalBlock(scope: !23, file: !1, line: 50, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !42, line: 347, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 343, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 345, baseType: !5, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !43, file: !42, line: 346, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 79, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "a", scope: !50, file: !1, line: 84, type: !5)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 81, column: 7)
!51 = distinct !DILexicalBlock(scope: !23, file: !1, line: 80, column: 5)
!52 = !DILocalVariable(name: "t", scope: !50, file: !1, line: 84, type: !5)
!53 = !DILocalVariable(name: "i", scope: !50, file: !1, line: 85, type: !36)
!54 = !DILocalVariable(name: "gf_u", scope: !55, file: !1, line: 87, type: !41)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 87, column: 6)
!56 = !DILocalVariable(name: "sf_u", scope: !57, file: !1, line: 88, type: !41)
!57 = distinct !DILexicalBlock(scope: !50, file: !1, line: 88, column: 6)
!58 = !DILocalVariable(name: "gf_u", scope: !59, file: !1, line: 91, type: !41)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 91, column: 6)
!60 = !DILocalVariable(name: "sf_u", scope: !61, file: !1, line: 92, type: !41)
!61 = distinct !DILexicalBlock(scope: !50, file: !1, line: 92, column: 6)
!62 = !DILocation(line: 42, column: 28, scope: !23)
!63 = !DILocation(line: 42, column: 37, scope: !23)
!64 = !DILocation(line: 42, column: 44, scope: !23)
!65 = !DILocation(line: 50, column: 2, scope: !40)
!66 = !DILocation(line: 49, column: 15, scope: !23)
!67 = !DILocation(line: 51, column: 9, scope: !23)
!68 = !DILocation(line: 49, column: 12, scope: !23)
!69 = !DILocation(line: 52, column: 7, scope: !70)
!70 = distinct !DILexicalBlock(scope: !23, file: !1, line: 52, column: 5)
!71 = !DILocation(line: 53, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 53, column: 10)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 53, column: 6)
!74 = !DILocation(line: 53, column: 16, scope: !72)
!75 = !DILocation(line: 52, column: 5, scope: !23)
!76 = !DILocation(line: 54, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 54, column: 6)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 53, column: 21)
!79 = !DILocation(line: 54, column: 9, scope: !77)
!80 = !DILocation(line: 54, column: 17, scope: !77)
!81 = !DILocation(line: 54, column: 6, scope: !78)
!82 = !DILocation(line: 54, column: 33, scope: !77)
!83 = !DILocation(line: 54, column: 32, scope: !77)
!84 = !DILocation(line: 54, column: 22, scope: !77)
!85 = !DILocation(line: 55, column: 18, scope: !77)
!86 = !DILocation(line: 55, column: 31, scope: !77)
!87 = !DILocation(line: 55, column: 15, scope: !77)
!88 = !DILocation(line: 55, column: 8, scope: !77)
!89 = !DILocation(line: 58, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !23, file: !1, line: 58, column: 5)
!91 = !DILocation(line: 58, column: 5, scope: !23)
!92 = !DILocation(line: 59, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 59, column: 9)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 58, column: 21)
!95 = !DILocation(line: 59, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 59, column: 15)
!97 = !DILocation(line: 59, column: 28, scope: !96)
!98 = !DILocation(line: 59, column: 9, scope: !94)
!99 = !DILocation(line: 60, column: 14, scope: !94)
!100 = !DILocation(line: 48, column: 8, scope: !23)
!101 = !DILocation(line: 61, column: 16, scope: !94)
!102 = !DILocation(line: 48, column: 14, scope: !23)
!103 = !DILocation(line: 62, column: 11, scope: !94)
!104 = !DILocation(line: 63, column: 2, scope: !94)
!105 = !DILocation(line: 64, column: 8, scope: !23)
!106 = !DILocation(line: 65, column: 9, scope: !23)
!107 = !DILocation(line: 70, column: 44, scope: !23)
!108 = !DILocation(line: 70, column: 36, scope: !23)
!109 = !DILocation(line: 70, column: 34, scope: !23)
!110 = !DILocation(line: 70, column: 28, scope: !23)
!111 = !DILocation(line: 70, column: 26, scope: !23)
!112 = !DILocation(line: 70, column: 20, scope: !23)
!113 = !DILocation(line: 70, column: 18, scope: !23)
!114 = !DILocation(line: 70, column: 12, scope: !23)
!115 = !DILocation(line: 70, column: 10, scope: !23)
!116 = !DILocation(line: 48, column: 10, scope: !23)
!117 = !DILocation(line: 71, column: 48, scope: !23)
!118 = !DILocation(line: 71, column: 46, scope: !23)
!119 = !DILocation(line: 71, column: 39, scope: !23)
!120 = !DILocation(line: 71, column: 37, scope: !23)
!121 = !DILocation(line: 71, column: 31, scope: !23)
!122 = !DILocation(line: 71, column: 29, scope: !23)
!123 = !DILocation(line: 71, column: 23, scope: !23)
!124 = !DILocation(line: 71, column: 21, scope: !23)
!125 = !DILocation(line: 71, column: 15, scope: !23)
!126 = !DILocation(line: 71, column: 13, scope: !23)
!127 = !DILocation(line: 71, column: 7, scope: !23)
!128 = !DILocation(line: 48, column: 12, scope: !23)
!129 = !DILocation(line: 72, column: 7, scope: !23)
!130 = !DILocation(line: 48, column: 16, scope: !23)
!131 = !DILocation(line: 73, column: 17, scope: !23)
!132 = !DILocation(line: 73, column: 14, scope: !23)
!133 = !DILocation(line: 73, column: 20, scope: !23)
!134 = !DILocation(line: 73, column: 11, scope: !23)
!135 = !DILocation(line: 73, column: 8, scope: !23)
!136 = !DILocation(line: 74, column: 11, scope: !23)
!137 = !DILocation(line: 74, column: 4, scope: !23)
!138 = !DILocation(line: 75, column: 7, scope: !23)
!139 = !DILocation(line: 76, column: 5, scope: !23)
!140 = !DILocation(line: 77, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 76, column: 21)
!142 = distinct !DILexicalBlock(scope: !23, file: !1, line: 76, column: 5)
!143 = !DILocation(line: 78, column: 27, scope: !141)
!144 = !DILocation(line: 78, column: 32, scope: !141)
!145 = !DILocation(line: 78, column: 22, scope: !141)
!146 = !DILocation(line: 78, column: 13, scope: !141)
!147 = !DILocation(line: 78, column: 56, scope: !141)
!148 = !DILocation(line: 78, column: 61, scope: !141)
!149 = !DILocation(line: 78, column: 58, scope: !141)
!150 = !DILocation(line: 78, column: 64, scope: !141)
!151 = !DILocation(line: 78, column: 53, scope: !141)
!152 = !DILocation(line: 78, column: 50, scope: !141)
!153 = !DILocation(line: 78, column: 39, scope: !141)
!154 = !DILocation(line: 78, column: 36, scope: !141)
!155 = !DILocation(line: 78, column: 6, scope: !141)
!156 = !DILocation(line: 80, column: 7, scope: !51)
!157 = !DILocation(line: 80, column: 5, scope: !23)
!158 = !DILocation(line: 87, column: 6, scope: !55)
!159 = !DILocation(line: 85, column: 16, scope: !50)
!160 = !DILocation(line: 88, column: 6, scope: !57)
!161 = !DILocation(line: 89, column: 16, scope: !50)
!162 = !DILocation(line: 89, column: 12, scope: !50)
!163 = !DILocation(line: 90, column: 26, scope: !50)
!164 = !DILocation(line: 84, column: 12, scope: !50)
!165 = !DILocation(line: 84, column: 14, scope: !50)
!166 = !DILocation(line: 91, column: 6, scope: !59)
!167 = !DILocation(line: 92, column: 6, scope: !61)
!168 = !DILocation(line: 93, column: 23, scope: !50)
!169 = !DILocation(line: 93, column: 21, scope: !50)
!170 = !DILocation(line: 94, column: 21, scope: !50)
!171 = !DILocation(line: 94, column: 19, scope: !50)
!172 = !DILocation(line: 94, column: 16, scope: !50)
!173 = !DILocation(line: 94, column: 14, scope: !50)
!174 = !DILocation(line: 0, scope: !50)
!175 = !DILocation(line: 96, column: 1, scope: !23)
