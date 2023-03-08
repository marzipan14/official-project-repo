; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_cbrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_cbrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @cbrt(double) local_unnamed_addr #0 !dbg !28 {
  %2 = bitcast double %0 to i64, !dbg !79
  %3 = lshr i64 %2, 32, !dbg !79
  %4 = trunc i64 %3 to i32, !dbg !79
  %5 = and i32 %4, 2147483647, !dbg !82
  %6 = icmp ugt i32 %5, 2146435071, !dbg !83
  br i1 %6, label %7, label %9, !dbg !85

; <label>:7:                                      ; preds = %1
  %8 = fadd double %0, %0, !dbg !86
  br label %68, !dbg !87

; <label>:9:                                      ; preds = %1
  %10 = trunc i64 %2 to i32, !dbg !88
  %11 = or i32 %5, %10, !dbg !90
  %12 = icmp eq i32 %11, 0, !dbg !92
  br i1 %12, label %68, label %13, !dbg !93

; <label>:13:                                     ; preds = %9
  %14 = zext i32 %5 to i64, !dbg !94
  %15 = shl nuw nsw i64 %14, 32, !dbg !94
  %16 = and i64 %2, 4294967295, !dbg !94
  %17 = or i64 %15, %16, !dbg !94
  %18 = bitcast i64 %17 to double, !dbg !94
  %19 = icmp ult i32 %5, 1048576, !dbg !95
  br i1 %19, label %20, label %31, !dbg !96

; <label>:20:                                     ; preds = %13
  %21 = fmul double %18, 0x4350000000000000, !dbg !97
  %22 = bitcast double %21 to i64, !dbg !98
  %23 = lshr i64 %22, 32, !dbg !98
  %24 = trunc i64 %23 to i32, !dbg !98
  %25 = udiv i32 %24, 3, !dbg !100
  %26 = add nuw i32 %25, 696219795, !dbg !100
  %27 = zext i32 %26 to i64, !dbg !100
  %28 = shl nuw i64 %27, 32, !dbg !100
  %29 = and i64 %22, 4294967295, !dbg !100
  %30 = or i64 %28, %29, !dbg !100
  br label %36, !dbg !101

; <label>:31:                                     ; preds = %13
  %32 = udiv i32 %5, 3, !dbg !102
  %33 = add nuw nsw i32 %32, 715094163, !dbg !102
  %34 = zext i32 %33 to i64, !dbg !102
  %35 = shl nuw nsw i64 %34, 32, !dbg !102
  br label %36

; <label>:36:                                     ; preds = %31, %20
  %37 = phi i64 [ %30, %20 ], [ %35, %31 ]
  %38 = bitcast i64 %37 to double, !dbg !103
  %39 = fmul double %38, %38, !dbg !104
  %40 = fdiv double %39, %18, !dbg !105
  %41 = fmul double %40, %38, !dbg !107
  %42 = fadd double %41, 0x3FE15F15F15F15F1, !dbg !108
  %43 = fadd double %42, 0x3FF6A0EA0EA0EA0F, !dbg !110
  %44 = fdiv double 0x3FE691DE2532C834, %42, !dbg !111
  %45 = fsub double %43, %44, !dbg !111
  %46 = fdiv double 0x3FF9B6DB6DB6DB6E, %45, !dbg !112
  %47 = fadd double %46, 0x3FD6DB6DB6DB6DB7, !dbg !113
  %48 = fmul double %47, %38, !dbg !114
  %49 = bitcast double %48 to i64, !dbg !115
  %50 = add i64 %49, 4294967296, !dbg !116
  %51 = and i64 %50, -4294967296, !dbg !116
  %52 = bitcast i64 %51 to double, !dbg !116
  %53 = fmul double %52, %52, !dbg !117
  %54 = fdiv double %18, %53, !dbg !118
  %55 = fadd double %52, %52, !dbg !119
  %56 = fsub double %54, %52, !dbg !121
  %57 = fadd double %55, %54, !dbg !122
  %58 = fdiv double %56, %57, !dbg !123
  %59 = fmul double %58, %52, !dbg !124
  %60 = fadd double %59, %52, !dbg !125
  %61 = bitcast double %60 to i64, !dbg !126
  %62 = and i64 %2, -9223372036854775808, !dbg !127
  %63 = and i64 %61, -4294967296, !dbg !127
  %64 = or i64 %63, %62, !dbg !127
  %65 = and i64 %61, 4294967295, !dbg !127
  %66 = or i64 %64, %65, !dbg !127
  %67 = bitcast i64 %66 to double, !dbg !127
  br label %68, !dbg !128

; <label>:68:                                     ; preds = %9, %36, %7
  %69 = phi double [ %8, %7 ], [ %67, %36 ], [ %0, %9 ], !dbg !129
  ret double %69, !dbg !130
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_cbrt.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !10, !12, !16, !18, !20, !22}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 696219795, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "B2", scope: !0, file: !1, line: 57, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 715094163, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "B1", scope: !0, file: !1, line: 56, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4603064841997850097, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "C", scope: !0, file: !1, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4600105333671292343, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "G", scope: !0, file: !1, line: 68, type: !14, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4609916747145206638, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "F", scope: !0, file: !1, line: 67, type: !14, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4609048195788499471, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "E", scope: !0, file: !1, line: 66, type: !14, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13827900089180538932, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "D", scope: !0, file: !1, line: 65, type: !14, isLocal: true, isDefinition: true)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!28 = distinct !DISubprogram(name: "cbrt", scope: !1, file: !1, line: 71, type: !29, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!15, !15}
!31 = !{!32, !33, !36, !37, !38, !39, !40, !41, !42, !43, !55, !57, !59, !63, !65, !67, !69, !71, !73, !75}
!32 = !DILocalVariable(name: "x", arg: 1, scope: !28, file: !1, line: 71, type: !15)
!33 = !DILocalVariable(name: "hx", scope: !28, file: !1, line: 77, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(name: "r", scope: !28, file: !1, line: 78, type: !15)
!37 = !DILocalVariable(name: "s", scope: !28, file: !1, line: 78, type: !15)
!38 = !DILocalVariable(name: "t", scope: !28, file: !1, line: 78, type: !15)
!39 = !DILocalVariable(name: "w", scope: !28, file: !1, line: 78, type: !15)
!40 = !DILocalVariable(name: "sign", scope: !28, file: !1, line: 79, type: !7)
!41 = !DILocalVariable(name: "high", scope: !28, file: !1, line: 80, type: !7)
!42 = !DILocalVariable(name: "low", scope: !28, file: !1, line: 80, type: !7)
!43 = !DILocalVariable(name: "gh_u", scope: !44, file: !1, line: 82, type: !45)
!44 = distinct !DILexicalBlock(scope: !28, file: !1, line: 82, column: 2)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !46, line: 278, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!47 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !46, line: 270, size: 64, elements: !48)
!48 = !{!49, !50}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !47, file: !46, line: 272, baseType: !15, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !47, file: !46, line: 277, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !47, file: !46, line: 273, size: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !51, file: !46, line: 275, baseType: !7, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !51, file: !46, line: 276, baseType: !7, size: 32, offset: 32)
!55 = !DILocalVariable(name: "gl_u", scope: !56, file: !1, line: 86, type: !45)
!56 = distinct !DILexicalBlock(scope: !28, file: !1, line: 86, column: 2)
!57 = !DILocalVariable(name: "sh_u", scope: !58, file: !1, line: 90, type: !45)
!58 = distinct !DILexicalBlock(scope: !28, file: !1, line: 90, column: 2)
!59 = !DILocalVariable(name: "sh_u", scope: !60, file: !1, line: 93, type: !45)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 93, column: 5)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 93, column: 4)
!62 = distinct !DILexicalBlock(scope: !28, file: !1, line: 92, column: 5)
!63 = !DILocalVariable(name: "gh_u", scope: !64, file: !1, line: 94, type: !45)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 94, column: 11)
!65 = !DILocalVariable(name: "sh_u", scope: !66, file: !1, line: 94, type: !45)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 94, column: 34)
!67 = !DILocalVariable(name: "sh_u", scope: !68, file: !1, line: 97, type: !45)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 97, column: 4)
!69 = !DILocalVariable(name: "gh_u", scope: !70, file: !1, line: 106, type: !45)
!70 = distinct !DILexicalBlock(scope: !28, file: !1, line: 106, column: 2)
!71 = !DILocalVariable(name: "iw_u", scope: !72, file: !1, line: 107, type: !45)
!72 = distinct !DILexicalBlock(scope: !28, file: !1, line: 107, column: 2)
!73 = !DILocalVariable(name: "gh_u", scope: !74, file: !1, line: 118, type: !45)
!74 = distinct !DILexicalBlock(scope: !28, file: !1, line: 118, column: 2)
!75 = !DILocalVariable(name: "sh_u", scope: !76, file: !1, line: 119, type: !45)
!76 = distinct !DILexicalBlock(scope: !28, file: !1, line: 119, column: 2)
!77 = !DILocation(line: 71, column: 21, scope: !28)
!78 = !DILocation(line: 78, column: 13, scope: !28)
!79 = !DILocation(line: 82, column: 2, scope: !44)
!80 = !DILocation(line: 77, column: 12, scope: !28)
!81 = !DILocation(line: 79, column: 13, scope: !28)
!82 = !DILocation(line: 84, column: 6, scope: !28)
!83 = !DILocation(line: 85, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !28, file: !1, line: 85, column: 5)
!85 = !DILocation(line: 85, column: 5, scope: !28)
!86 = !DILocation(line: 85, column: 29, scope: !84)
!87 = !DILocation(line: 85, column: 21, scope: !84)
!88 = !DILocation(line: 86, column: 2, scope: !56)
!89 = !DILocation(line: 80, column: 18, scope: !28)
!90 = !DILocation(line: 87, column: 8, scope: !91)
!91 = distinct !DILexicalBlock(scope: !28, file: !1, line: 87, column: 5)
!92 = !DILocation(line: 87, column: 13, scope: !91)
!93 = !DILocation(line: 87, column: 5, scope: !28)
!94 = !DILocation(line: 90, column: 2, scope: !58)
!95 = !DILocation(line: 92, column: 7, scope: !62)
!96 = !DILocation(line: 92, column: 5, scope: !28)
!97 = !DILocation(line: 94, column: 6, scope: !61)
!98 = !DILocation(line: 94, column: 11, scope: !64)
!99 = !DILocation(line: 80, column: 13, scope: !28)
!100 = !DILocation(line: 94, column: 34, scope: !66)
!101 = !DILocation(line: 95, column: 4, scope: !61)
!102 = !DILocation(line: 97, column: 4, scope: !68)
!103 = !DILocation(line: 0, scope: !68)
!104 = !DILocation(line: 101, column: 5, scope: !28)
!105 = !DILocation(line: 101, column: 7, scope: !28)
!106 = !DILocation(line: 78, column: 9, scope: !28)
!107 = !DILocation(line: 102, column: 7, scope: !28)
!108 = !DILocation(line: 102, column: 5, scope: !28)
!109 = !DILocation(line: 78, column: 11, scope: !28)
!110 = !DILocation(line: 103, column: 11, scope: !28)
!111 = !DILocation(line: 103, column: 15, scope: !28)
!112 = !DILocation(line: 103, column: 8, scope: !28)
!113 = !DILocation(line: 103, column: 6, scope: !28)
!114 = !DILocation(line: 103, column: 3, scope: !28)
!115 = !DILocation(line: 106, column: 2, scope: !70)
!116 = !DILocation(line: 107, column: 2, scope: !72)
!117 = !DILocation(line: 111, column: 5, scope: !28)
!118 = !DILocation(line: 112, column: 5, scope: !28)
!119 = !DILocation(line: 113, column: 5, scope: !28)
!120 = !DILocation(line: 78, column: 19, scope: !28)
!121 = !DILocation(line: 114, column: 6, scope: !28)
!122 = !DILocation(line: 114, column: 12, scope: !28)
!123 = !DILocation(line: 114, column: 9, scope: !28)
!124 = !DILocation(line: 115, column: 7, scope: !28)
!125 = !DILocation(line: 115, column: 5, scope: !28)
!126 = !DILocation(line: 118, column: 2, scope: !74)
!127 = !DILocation(line: 119, column: 2, scope: !76)
!128 = !DILocation(line: 120, column: 2, scope: !28)
!129 = !DILocation(line: 0, scope: !28)
!130 = !DILocation(line: 121, column: 1, scope: !28)
