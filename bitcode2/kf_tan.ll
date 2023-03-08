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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %6, label %7, label %21, !dbg !71

; <label>:7:                                      ; preds = %3
  %8 = fptosi float %0 to i32, !dbg !72
  %9 = icmp eq i32 %8, 0, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %9, label %10, label %34, !dbg !76

; <label>:10:                                     ; preds = %7
  %11 = add nsw i32 %2, 1, !dbg !77
  %12 = or i32 %11, %5, !dbg !80
  %13 = icmp eq i32 %12, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %13, label %14, label %17, !dbg !82

; <label>:14:                                     ; preds = %10
  %15 = tail call float @fabsf(float %0) #3, !dbg !83
  %16 = fdiv float 1.000000e+00, %15, !dbg !84
  br label %106, !dbg !85

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i32 %2, 1, !dbg !86
  %19 = fdiv float -1.000000e+00, %0, !dbg !87
  %20 = select i1 %18, float %0, float %19, !dbg !88
  br label %106, !dbg !89

; <label>:21:                                     ; preds = %3
  %22 = icmp ugt i32 %5, 1059889471, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %22, label %23, label %38, !dbg !92

; <label>:23:                                     ; preds = %21
  %24 = icmp slt i32 %4, 0, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %24, label %25, label %28, !dbg !96

; <label>:25:                                     ; preds = %23
  %26 = fsub float -0.000000e+00, %0, !dbg !97
  %27 = fsub float -0.000000e+00, %1, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br label %28, !dbg !100

; <label>:28:                                     ; preds = %25, %23
  %29 = phi float [ %27, %25 ], [ %1, %23 ]
  %30 = phi float [ %26, %25 ], [ %0, %23 ]
  %31 = fsub float 0x3FE921FB40000000, %30, !dbg !101
  %32 = fsub float 0x3E64442D00000000, %29, !dbg !103
  %33 = fadd float %32, %31, !dbg !105
  br label %34, !dbg !106

; <label>:34:                                     ; preds = %7, %28
  %35 = phi i1 [ true, %28 ], [ false, %7 ]
  %36 = phi float [ 0.000000e+00, %28 ], [ %1, %7 ]
  %37 = phi float [ %33, %28 ], [ %0, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br label %38, !dbg !108

; <label>:38:                                     ; preds = %34, %21
  %39 = phi i1 [ false, %21 ], [ %35, %34 ]
  %40 = phi float [ %1, %21 ], [ %36, %34 ]
  %41 = phi float [ %0, %21 ], [ %37, %34 ]
  %42 = fmul float %41, %41, !dbg !108
  %43 = fmul float %42, %42, !dbg !109
  %44 = fmul float %43, 0x3EF375CBE0000000, !dbg !110
  %45 = fsub float 0x3F147E88A0000000, %44, !dbg !110
  %46 = fmul float %43, %45, !dbg !111
  %47 = fadd float %46, 0x3F4344D900000000, !dbg !112
  %48 = fmul float %43, %47, !dbg !113
  %49 = fadd float %48, 0x3F6D6D22C0000000, !dbg !114
  %50 = fmul float %43, %49, !dbg !115
  %51 = fadd float %50, 0x3F9664F480000000, !dbg !116
  %52 = fmul float %43, %51, !dbg !117
  %53 = fadd float %52, 0x3FC1111120000000, !dbg !118
  %54 = fmul float %43, 0x3EFB2A7080000000, !dbg !120
  %55 = fadd float %54, 0x3F12B80F40000000, !dbg !121
  %56 = fmul float %43, %55, !dbg !122
  %57 = fadd float %56, 0x3F3026F720000000, !dbg !123
  %58 = fmul float %43, %57, !dbg !124
  %59 = fadd float %58, 0x3F57DBC900000000, !dbg !125
  %60 = fmul float %43, %59, !dbg !126
  %61 = fadd float %60, 0x3F8226E3E0000000, !dbg !127
  %62 = fmul float %43, %61, !dbg !128
  %63 = fadd float %62, 0x3FABA1BA20000000, !dbg !129
  %64 = fmul float %42, %63, !dbg !130
  %65 = fmul float %41, %42, !dbg !132
  %66 = fadd float %53, %64, !dbg !134
  %67 = fmul float %65, %66, !dbg !135
  %68 = fadd float %40, %67, !dbg !136
  %69 = fmul float %42, %68, !dbg !137
  %70 = fadd float %40, %69, !dbg !138
  %71 = fmul float %65, 0x3FD5555560000000, !dbg !139
  %72 = fadd float %71, %70, !dbg !140
  %73 = fadd float %41, %72, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %39, label %74, label %88, !dbg !142

; <label>:74:                                     ; preds = %38
  %75 = sitofp i32 %2 to float, !dbg !143
  %76 = lshr i32 %4, 30, !dbg !146
  %77 = and i32 %76, 2, !dbg !147
  %78 = sub nsw i32 1, %77, !dbg !148
  %79 = sitofp i32 %78 to float, !dbg !149
  %80 = fmul float %73, %73, !dbg !150
  %81 = fadd float %73, %75, !dbg !151
  %82 = fdiv float %80, %81, !dbg !152
  %83 = fsub float %82, %72, !dbg !153
  %84 = fsub float %41, %83, !dbg !154
  %85 = fmul float %84, 2.000000e+00, !dbg !155
  %86 = fsub float %75, %85, !dbg !156
  %87 = fmul float %86, %79, !dbg !157
  br label %106, !dbg !158

; <label>:88:                                     ; preds = %38
  %89 = icmp eq i32 %2, 1, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %89, label %106, label %90, !dbg !160

; <label>:90:                                     ; preds = %88
  %91 = bitcast float %73 to i32, !dbg !161
  %92 = and i32 %91, -4096, !dbg !163
  %93 = bitcast i32 %92 to float, !dbg !163
  %94 = fsub float %93, %41, !dbg !164
  %95 = fsub float %72, %94, !dbg !165
  %96 = fdiv float -1.000000e+00, %73, !dbg !166
  %97 = bitcast float %96 to i32, !dbg !169
  %98 = and i32 %97, -4096, !dbg !170
  %99 = bitcast i32 %98 to float, !dbg !170
  %100 = fmul float %93, %99, !dbg !171
  %101 = fadd float %100, 1.000000e+00, !dbg !172
  %102 = fmul float %95, %99, !dbg !173
  %103 = fadd float %101, %102, !dbg !174
  %104 = fmul float %96, %103, !dbg !175
  %105 = fadd float %104, %99, !dbg !176
  br label %106

; <label>:106:                                    ; preds = %88, %90, %74, %17, %14
  %107 = phi float [ %16, %14 ], [ %20, %17 ], [ %87, %74 ], [ %105, %90 ], [ %73, %88 ], !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !178
  ret float %107, !dbg !178
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
!71 = !DILocation(line: 52, column: 5, scope: !23)
!72 = !DILocation(line: 53, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 53, column: 10)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 53, column: 6)
!75 = !DILocation(line: 53, column: 16, scope: !73)
!76 = !DILocation(line: 53, column: 10, scope: !74)
!77 = !DILocation(line: 54, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 54, column: 6)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 53, column: 21)
!80 = !DILocation(line: 54, column: 9, scope: !78)
!81 = !DILocation(line: 54, column: 17, scope: !78)
!82 = !DILocation(line: 54, column: 6, scope: !79)
!83 = !DILocation(line: 54, column: 33, scope: !78)
!84 = !DILocation(line: 54, column: 32, scope: !78)
!85 = !DILocation(line: 54, column: 22, scope: !78)
!86 = !DILocation(line: 55, column: 18, scope: !78)
!87 = !DILocation(line: 55, column: 31, scope: !78)
!88 = !DILocation(line: 55, column: 15, scope: !78)
!89 = !DILocation(line: 55, column: 8, scope: !78)
!90 = !DILocation(line: 58, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !23, file: !1, line: 58, column: 5)
!92 = !DILocation(line: 58, column: 5, scope: !23)
!93 = !DILocation(line: 59, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 59, column: 9)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 58, column: 21)
!96 = !DILocation(line: 59, column: 9, scope: !95)
!97 = !DILocation(line: 59, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 59, column: 15)
!99 = !DILocation(line: 59, column: 28, scope: !98)
!100 = !DILocation(line: 59, column: 31, scope: !98)
!101 = !DILocation(line: 60, column: 14, scope: !95)
!102 = !DILocation(line: 48, column: 8, scope: !23)
!103 = !DILocation(line: 61, column: 16, scope: !95)
!104 = !DILocation(line: 48, column: 14, scope: !23)
!105 = !DILocation(line: 62, column: 11, scope: !95)
!106 = !DILocation(line: 63, column: 2, scope: !95)
!107 = !DILocation(line: 0, scope: !95)
!108 = !DILocation(line: 64, column: 8, scope: !23)
!109 = !DILocation(line: 65, column: 9, scope: !23)
!110 = !DILocation(line: 70, column: 44, scope: !23)
!111 = !DILocation(line: 70, column: 36, scope: !23)
!112 = !DILocation(line: 70, column: 34, scope: !23)
!113 = !DILocation(line: 70, column: 28, scope: !23)
!114 = !DILocation(line: 70, column: 26, scope: !23)
!115 = !DILocation(line: 70, column: 20, scope: !23)
!116 = !DILocation(line: 70, column: 18, scope: !23)
!117 = !DILocation(line: 70, column: 12, scope: !23)
!118 = !DILocation(line: 70, column: 10, scope: !23)
!119 = !DILocation(line: 48, column: 10, scope: !23)
!120 = !DILocation(line: 71, column: 48, scope: !23)
!121 = !DILocation(line: 71, column: 46, scope: !23)
!122 = !DILocation(line: 71, column: 39, scope: !23)
!123 = !DILocation(line: 71, column: 37, scope: !23)
!124 = !DILocation(line: 71, column: 31, scope: !23)
!125 = !DILocation(line: 71, column: 29, scope: !23)
!126 = !DILocation(line: 71, column: 23, scope: !23)
!127 = !DILocation(line: 71, column: 21, scope: !23)
!128 = !DILocation(line: 71, column: 15, scope: !23)
!129 = !DILocation(line: 71, column: 13, scope: !23)
!130 = !DILocation(line: 71, column: 7, scope: !23)
!131 = !DILocation(line: 48, column: 12, scope: !23)
!132 = !DILocation(line: 72, column: 7, scope: !23)
!133 = !DILocation(line: 48, column: 16, scope: !23)
!134 = !DILocation(line: 73, column: 17, scope: !23)
!135 = !DILocation(line: 73, column: 14, scope: !23)
!136 = !DILocation(line: 73, column: 20, scope: !23)
!137 = !DILocation(line: 73, column: 11, scope: !23)
!138 = !DILocation(line: 73, column: 8, scope: !23)
!139 = !DILocation(line: 74, column: 11, scope: !23)
!140 = !DILocation(line: 74, column: 4, scope: !23)
!141 = !DILocation(line: 75, column: 7, scope: !23)
!142 = !DILocation(line: 76, column: 5, scope: !23)
!143 = !DILocation(line: 77, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 76, column: 21)
!145 = distinct !DILexicalBlock(scope: !23, file: !1, line: 76, column: 5)
!146 = !DILocation(line: 78, column: 27, scope: !144)
!147 = !DILocation(line: 78, column: 32, scope: !144)
!148 = !DILocation(line: 78, column: 22, scope: !144)
!149 = !DILocation(line: 78, column: 13, scope: !144)
!150 = !DILocation(line: 78, column: 56, scope: !144)
!151 = !DILocation(line: 78, column: 61, scope: !144)
!152 = !DILocation(line: 78, column: 58, scope: !144)
!153 = !DILocation(line: 78, column: 64, scope: !144)
!154 = !DILocation(line: 78, column: 53, scope: !144)
!155 = !DILocation(line: 78, column: 50, scope: !144)
!156 = !DILocation(line: 78, column: 39, scope: !144)
!157 = !DILocation(line: 78, column: 36, scope: !144)
!158 = !DILocation(line: 78, column: 6, scope: !144)
!159 = !DILocation(line: 80, column: 7, scope: !51)
!160 = !DILocation(line: 80, column: 5, scope: !23)
!161 = !DILocation(line: 87, column: 6, scope: !55)
!162 = !DILocation(line: 85, column: 16, scope: !50)
!163 = !DILocation(line: 88, column: 6, scope: !57)
!164 = !DILocation(line: 89, column: 16, scope: !50)
!165 = !DILocation(line: 89, column: 12, scope: !50)
!166 = !DILocation(line: 90, column: 26, scope: !50)
!167 = !DILocation(line: 84, column: 12, scope: !50)
!168 = !DILocation(line: 84, column: 14, scope: !50)
!169 = !DILocation(line: 91, column: 6, scope: !59)
!170 = !DILocation(line: 92, column: 6, scope: !61)
!171 = !DILocation(line: 93, column: 23, scope: !50)
!172 = !DILocation(line: 93, column: 21, scope: !50)
!173 = !DILocation(line: 94, column: 21, scope: !50)
!174 = !DILocation(line: 94, column: 19, scope: !50)
!175 = !DILocation(line: 94, column: 16, scope: !50)
!176 = !DILocation(line: 94, column: 14, scope: !50)
!177 = !DILocation(line: 0, scope: !50)
!178 = !DILocation(line: 96, column: 1, scope: !23)
