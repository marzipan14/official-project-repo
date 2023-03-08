; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_cos.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_cos.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__kernel_cos(double, double) local_unnamed_addr #0 !dbg !26 {
  %3 = bitcast double %0 to i64, !dbg !62
  %4 = lshr i64 %3, 32, !dbg !62
  %5 = trunc i64 %4 to i32, !dbg !62
  %6 = and i32 %5, 2147483647, !dbg !64
  %7 = icmp ult i32 %6, 1044381696, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %7, label %8, label %11, !dbg !67

; <label>:8:                                      ; preds = %2
  %9 = fptosi double %0 to i32, !dbg !68
  %10 = icmp eq i32 %9, 0, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %10, label %49, label %11, !dbg !72

; <label>:11:                                     ; preds = %8, %2
  %12 = fmul double %0, %0, !dbg !73
  %13 = fmul double %12, 0x3DA8FAE9BE8838D4, !dbg !75
  %14 = fsub double 0x3E21EE9EBDB4B1C4, %13, !dbg !75
  %15 = fmul double %12, %14, !dbg !76
  %16 = fadd double %15, 0xBE927E4F809C52AD, !dbg !77
  %17 = fmul double %12, %16, !dbg !78
  %18 = fadd double %17, 0x3EFA01A019CB1590, !dbg !79
  %19 = fmul double %12, %18, !dbg !80
  %20 = fadd double %19, 0xBF56C16C16C15177, !dbg !81
  %21 = fmul double %12, %20, !dbg !82
  %22 = fadd double %21, 0x3FA555555555554C, !dbg !83
  %23 = fmul double %12, %22, !dbg !84
  %24 = icmp ult i32 %6, 1070805811, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %24, label %25, label %32, !dbg !87

; <label>:25:                                     ; preds = %11
  %26 = fmul double %12, 5.000000e-01, !dbg !88
  %27 = fmul double %12, %23, !dbg !89
  %28 = fmul double %0, %1, !dbg !90
  %29 = fsub double %27, %28, !dbg !91
  %30 = fsub double %29, %26, !dbg !92
  %31 = fadd double %30, 1.000000e+00, !dbg !92
  br label %49, !dbg !93

; <label>:32:                                     ; preds = %11
  %33 = icmp ugt i32 %6, 1072234496, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %33, label %39, label %34, !dbg !95

; <label>:34:                                     ; preds = %32
  %35 = add nsw i32 %6, -2097152, !dbg !96
  %36 = zext i32 %35 to i64, !dbg !96
  %37 = shl nuw i64 %36, 32, !dbg !96
  %38 = bitcast i64 %37 to double, !dbg !96
  br label %39

; <label>:39:                                     ; preds = %32, %34
  %40 = phi double [ %38, %34 ], [ 2.812500e-01, %32 ], !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = fmul double %12, 5.000000e-01, !dbg !99
  %42 = fsub double %41, %40, !dbg !100
  %43 = fsub double 1.000000e+00, %40, !dbg !102
  %44 = fmul double %12, %23, !dbg !104
  %45 = fmul double %0, %1, !dbg !105
  %46 = fsub double %44, %45, !dbg !106
  %47 = fsub double %42, %46, !dbg !107
  %48 = fsub double %43, %47, !dbg !108
  br label %49, !dbg !109

; <label>:49:                                     ; preds = %8, %39, %25
  %50 = phi double [ %31, %25 ], [ %48, %39 ], [ 1.000000e+00, %8 ], !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  ret double %50, !dbg !112
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_cos.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !10, !12, !14, !16, !18, !20}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 58, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4586165620538955084, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "C1", scope: !0, file: !1, line: 59, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 13787419979223748983, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "C2", scope: !0, file: !1, line: 60, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4537941361668330896, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "C3", scope: !0, file: !1, line: 61, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 13732177093731308205, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "C4", scope: !0, file: !1, line: 62, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4477121870137962948, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "C5", scope: !0, file: !1, line: 63, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13666448951086692564, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "C6", scope: !0, file: !1, line: 64, type: !8, isLocal: true, isDefinition: true)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!26 = distinct !DISubprogram(name: "__kernel_cos", scope: !1, file: !1, line: 67, type: !27, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!9, !9, !9}
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !40, !54}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !26, file: !1, line: 67, type: !9)
!31 = !DILocalVariable(name: "y", arg: 2, scope: !26, file: !1, line: 67, type: !9)
!32 = !DILocalVariable(name: "a", scope: !26, file: !1, line: 73, type: !9)
!33 = !DILocalVariable(name: "hz", scope: !26, file: !1, line: 73, type: !9)
!34 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 73, type: !9)
!35 = !DILocalVariable(name: "r", scope: !26, file: !1, line: 73, type: !9)
!36 = !DILocalVariable(name: "qx", scope: !26, file: !1, line: 73, type: !9)
!37 = !DILocalVariable(name: "ix", scope: !26, file: !1, line: 74, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !39, line: 77, baseType: !4)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DILocalVariable(name: "gh_u", scope: !41, file: !1, line: 75, type: !42)
!41 = distinct !DILexicalBlock(scope: !26, file: !1, line: 75, column: 2)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !43, line: 278, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !43, line: 270, size: 64, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !43, line: 272, baseType: !9, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !44, file: !43, line: 277, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !43, line: 273, size: 64, elements: !49)
!49 = !{!50, !53}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !48, file: !43, line: 275, baseType: !51, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !39, line: 79, baseType: !52)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !48, file: !43, line: 276, baseType: !51, size: 32, offset: 32)
!54 = !DILocalVariable(name: "iw_u", scope: !55, file: !1, line: 88, type: !42)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 88, column: 10)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 87, column: 13)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 85, column: 9)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 84, column: 7)
!59 = distinct !DILexicalBlock(scope: !26, file: !1, line: 82, column: 5)
!60 = !DILocation(line: 67, column: 29, scope: !26)
!61 = !DILocation(line: 67, column: 39, scope: !26)
!62 = !DILocation(line: 75, column: 2, scope: !41)
!63 = !DILocation(line: 74, column: 12, scope: !26)
!64 = !DILocation(line: 76, column: 5, scope: !26)
!65 = !DILocation(line: 77, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !26, file: !1, line: 77, column: 5)
!67 = !DILocation(line: 77, column: 5, scope: !26)
!68 = !DILocation(line: 78, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 78, column: 9)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 77, column: 20)
!71 = !DILocation(line: 78, column: 17, scope: !69)
!72 = !DILocation(line: 78, column: 9, scope: !70)
!73 = !DILocation(line: 80, column: 8, scope: !26)
!74 = !DILocation(line: 73, column: 14, scope: !26)
!75 = !DILocation(line: 81, column: 38, scope: !26)
!76 = !DILocation(line: 81, column: 32, scope: !26)
!77 = !DILocation(line: 81, column: 30, scope: !26)
!78 = !DILocation(line: 81, column: 26, scope: !26)
!79 = !DILocation(line: 81, column: 24, scope: !26)
!80 = !DILocation(line: 81, column: 20, scope: !26)
!81 = !DILocation(line: 81, column: 18, scope: !26)
!82 = !DILocation(line: 81, column: 14, scope: !26)
!83 = !DILocation(line: 81, column: 12, scope: !26)
!84 = !DILocation(line: 81, column: 8, scope: !26)
!85 = !DILocation(line: 73, column: 16, scope: !26)
!86 = !DILocation(line: 82, column: 8, scope: !59)
!87 = !DILocation(line: 82, column: 5, scope: !26)
!88 = !DILocation(line: 83, column: 23, scope: !59)
!89 = !DILocation(line: 83, column: 30, scope: !59)
!90 = !DILocation(line: 83, column: 36, scope: !59)
!91 = !DILocation(line: 83, column: 33, scope: !59)
!92 = !DILocation(line: 83, column: 17, scope: !59)
!93 = !DILocation(line: 83, column: 6, scope: !59)
!94 = !DILocation(line: 85, column: 12, scope: !57)
!95 = !DILocation(line: 85, column: 9, scope: !58)
!96 = !DILocation(line: 88, column: 10, scope: !55)
!97 = !DILocation(line: 73, column: 18, scope: !26)
!98 = !DILocation(line: 0, scope: !55)
!99 = !DILocation(line: 90, column: 14, scope: !58)
!100 = !DILocation(line: 90, column: 16, scope: !58)
!101 = !DILocation(line: 73, column: 11, scope: !26)
!102 = !DILocation(line: 91, column: 14, scope: !58)
!103 = !DILocation(line: 73, column: 9, scope: !26)
!104 = !DILocation(line: 92, column: 25, scope: !58)
!105 = !DILocation(line: 92, column: 29, scope: !58)
!106 = !DILocation(line: 92, column: 27, scope: !58)
!107 = !DILocation(line: 92, column: 21, scope: !58)
!108 = !DILocation(line: 92, column: 15, scope: !58)
!109 = !DILocation(line: 92, column: 6, scope: !58)
!110 = !DILocation(line: 0, scope: !58)
!111 = !DILocation(line: 0, scope: !69)
!112 = !DILocation(line: 94, column: 1, scope: !26)
