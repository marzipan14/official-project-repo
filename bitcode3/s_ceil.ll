; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ceil.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ceil.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @ceil(double) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast double %0 to i64, !dbg !43
  %3 = lshr i64 %2, 32, !dbg !43
  %4 = trunc i64 %3 to i32, !dbg !43
  %5 = trunc i64 %2 to i32, !dbg !43
  %6 = lshr i64 %2, 52, !dbg !46
  %7 = trunc i64 %6 to i32, !dbg !46
  %8 = and i32 %7, 2047, !dbg !47
  %9 = add nsw i32 %8, -1023, !dbg !48
  %10 = icmp ult i32 %8, 1043, !dbg !50
  br i1 %10, label %11, label %39, !dbg !52

; <label>:11:                                     ; preds = %1
  %12 = icmp ult i32 %8, 1023, !dbg !53
  br i1 %12, label %13, label %24, !dbg !56

; <label>:13:                                     ; preds = %11
  %14 = fadd double %0, 1.000000e+300, !dbg !57
  %15 = fcmp ogt double %14, 0.000000e+00, !dbg !60
  br i1 %15, label %16, label %71, !dbg !61

; <label>:16:                                     ; preds = %13
  %17 = icmp slt i32 %4, 0, !dbg !62
  br i1 %17, label %71, label %18, !dbg !65

; <label>:18:                                     ; preds = %16
  %19 = or i64 %3, %2, !dbg !66
  %20 = trunc i64 %19 to i32, !dbg !66
  %21 = icmp eq i32 %20, 0, !dbg !68
  %22 = select i1 %21, i32 %5, i32 0, !dbg !69
  %23 = select i1 %21, i32 %4, i32 1072693248, !dbg !69
  br label %71, !dbg !69

; <label>:24:                                     ; preds = %11
  %25 = lshr i32 1048575, %9, !dbg !70
  %26 = and i32 %25, %4, !dbg !73
  %27 = or i32 %26, %5, !dbg !75
  %28 = icmp eq i32 %27, 0, !dbg !76
  br i1 %28, label %79, label %29, !dbg !77

; <label>:29:                                     ; preds = %24
  %30 = fadd double %0, 1.000000e+300, !dbg !78
  %31 = fcmp ogt double %30, 0.000000e+00, !dbg !80
  br i1 %31, label %32, label %71, !dbg !81

; <label>:32:                                     ; preds = %29
  %33 = icmp sgt i32 %4, 0, !dbg !82
  %34 = lshr i32 1048576, %9, !dbg !85
  %35 = select i1 %33, i32 %34, i32 0, !dbg !86
  %36 = add nsw i32 %35, %4, !dbg !86
  %37 = ashr i32 -1048576, %9, !dbg !87
  %38 = and i32 %36, %37, !dbg !88
  br label %71, !dbg !89

; <label>:39:                                     ; preds = %1
  %40 = icmp ugt i32 %8, 1074, !dbg !90
  br i1 %40, label %41, label %45, !dbg !92

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %9, 1024, !dbg !93
  %43 = fadd double %0, %0, !dbg !96
  %44 = select i1 %42, double %43, double %0, !dbg !97
  ret double %44, !dbg !97

; <label>:45:                                     ; preds = %39
  %46 = add nsw i32 %8, -1043, !dbg !98
  %47 = lshr i32 -1, %46, !dbg !100
  %48 = and i32 %47, %5, !dbg !101
  %49 = icmp eq i32 %48, 0, !dbg !103
  br i1 %49, label %79, label %50, !dbg !104

; <label>:50:                                     ; preds = %45
  %51 = fadd double %0, 1.000000e+300, !dbg !105
  %52 = fcmp ogt double %51, 0.000000e+00, !dbg !107
  br i1 %52, label %53, label %71, !dbg !108

; <label>:53:                                     ; preds = %50
  %54 = icmp sgt i32 %4, 0, !dbg !109
  br i1 %54, label %55, label %66, !dbg !112

; <label>:55:                                     ; preds = %53
  %56 = icmp eq i32 %9, 20, !dbg !113
  br i1 %56, label %57, label %59, !dbg !116

; <label>:57:                                     ; preds = %55
  %58 = add nsw i32 %4, 1, !dbg !117
  br label %66, !dbg !118

; <label>:59:                                     ; preds = %55
  %60 = sub nsw i32 1075, %8, !dbg !119
  %61 = shl i32 1, %60, !dbg !121
  %62 = add nsw i32 %61, %5, !dbg !122
  %63 = icmp ult i32 %62, %5, !dbg !124
  %64 = zext i1 %63 to i32, !dbg !126
  %65 = add nsw i32 %64, %4, !dbg !126
  br label %66

; <label>:66:                                     ; preds = %57, %59, %53
  %67 = phi i32 [ %5, %57 ], [ %62, %59 ], [ %5, %53 ], !dbg !127
  %68 = phi i32 [ %58, %57 ], [ %65, %59 ], [ %4, %53 ], !dbg !127
  %69 = xor i32 %47, -1, !dbg !128
  %70 = and i32 %67, %69, !dbg !129
  br label %71, !dbg !130

; <label>:71:                                     ; preds = %18, %16, %29, %32, %13, %50, %66
  %72 = phi i32 [ %5, %13 ], [ 0, %32 ], [ %5, %29 ], [ %70, %66 ], [ %5, %50 ], [ 0, %16 ], [ %22, %18 ], !dbg !127
  %73 = phi i32 [ %4, %13 ], [ %38, %32 ], [ %4, %29 ], [ %68, %66 ], [ %4, %50 ], [ -2147483648, %16 ], [ %23, %18 ], !dbg !127
  %74 = zext i32 %73 to i64, !dbg !131
  %75 = shl nuw i64 %74, 32, !dbg !131
  %76 = zext i32 %72 to i64, !dbg !131
  %77 = or i64 %75, %76, !dbg !131
  %78 = bitcast i64 %77 to double, !dbg !131
  br label %79, !dbg !132

; <label>:79:                                     ; preds = %45, %24, %71
  %80 = phi double [ %78, %71 ], [ %0, %24 ], [ %0, %45 ], !dbg !133
  ret double %80, !dbg !134
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ceil.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 28, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "ceil", scope: !1, file: !1, line: 34, type: !17, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!11, !11}
!19 = !{!20, !21, !24, !25, !26, !27, !28, !40}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 34, type: !11)
!21 = !DILocalVariable(name: "i0", scope: !16, file: !1, line: 40, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "i1", scope: !16, file: !1, line: 40, type: !22)
!25 = !DILocalVariable(name: "j0", scope: !16, file: !1, line: 40, type: !22)
!26 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 41, type: !4)
!27 = !DILocalVariable(name: "j", scope: !16, file: !1, line: 41, type: !4)
!28 = !DILocalVariable(name: "ew_u", scope: !29, file: !1, line: 42, type: !30)
!29 = distinct !DILexicalBlock(scope: !16, file: !1, line: 42, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !31, line: 278, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 270, size: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 272, baseType: !11, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !32, file: !31, line: 277, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !31, line: 273, size: 64, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !36, file: !31, line: 275, baseType: !4, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !36, file: !31, line: 276, baseType: !4, size: 32, offset: 32)
!40 = !DILocalVariable(name: "iw_u", scope: !41, file: !1, line: 76, type: !30)
!41 = distinct !DILexicalBlock(scope: !16, file: !1, line: 76, column: 2)
!42 = !DILocation(line: 34, column: 21, scope: !16)
!43 = !DILocation(line: 42, column: 2, scope: !29)
!44 = !DILocation(line: 40, column: 12, scope: !16)
!45 = !DILocation(line: 40, column: 15, scope: !16)
!46 = !DILocation(line: 43, column: 11, scope: !16)
!47 = !DILocation(line: 43, column: 16, scope: !16)
!48 = !DILocation(line: 43, column: 23, scope: !16)
!49 = !DILocation(line: 40, column: 18, scope: !16)
!50 = !DILocation(line: 44, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !16, file: !1, line: 44, column: 5)
!52 = !DILocation(line: 44, column: 5, scope: !16)
!53 = !DILocation(line: 45, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 45, column: 9)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 44, column: 12)
!56 = !DILocation(line: 45, column: 9, scope: !55)
!57 = !DILocation(line: 46, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 46, column: 6)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 45, column: 15)
!60 = !DILocation(line: 46, column: 12, scope: !58)
!61 = !DILocation(line: 46, column: 6, scope: !59)
!62 = !DILocation(line: 47, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 47, column: 10)
!64 = distinct !DILexicalBlock(scope: !58, file: !1, line: 46, column: 18)
!65 = !DILocation(line: 47, column: 10, scope: !64)
!66 = !DILocation(line: 48, column: 18, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 15)
!68 = !DILocation(line: 48, column: 22, scope: !67)
!69 = !DILocation(line: 48, column: 15, scope: !63)
!70 = !DILocation(line: 51, column: 19, scope: !71)
!71 = distinct !DILexicalBlock(scope: !54, file: !1, line: 50, column: 13)
!72 = !DILocation(line: 41, column: 13, scope: !16)
!73 = !DILocation(line: 52, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 52, column: 6)
!75 = !DILocation(line: 52, column: 13, scope: !74)
!76 = !DILocation(line: 52, column: 17, scope: !74)
!77 = !DILocation(line: 52, column: 6, scope: !71)
!78 = !DILocation(line: 53, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !71, file: !1, line: 53, column: 6)
!80 = !DILocation(line: 53, column: 12, scope: !79)
!81 = !DILocation(line: 53, column: 6, scope: !71)
!82 = !DILocation(line: 54, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 54, column: 10)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 53, column: 18)
!85 = !DILocation(line: 54, column: 34, scope: !83)
!86 = !DILocation(line: 54, column: 10, scope: !84)
!87 = !DILocation(line: 55, column: 14, scope: !84)
!88 = !DILocation(line: 55, column: 10, scope: !84)
!89 = !DILocation(line: 56, column: 3, scope: !84)
!90 = !DILocation(line: 58, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !51, file: !1, line: 58, column: 13)
!92 = !DILocation(line: 58, column: 13, scope: !51)
!93 = !DILocation(line: 59, column: 11, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 59, column: 9)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 58, column: 20)
!96 = !DILocation(line: 59, column: 28, scope: !94)
!97 = !DILocation(line: 59, column: 9, scope: !95)
!98 = !DILocation(line: 62, column: 41, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 61, column: 9)
!100 = !DILocation(line: 62, column: 36, scope: !99)
!101 = !DILocation(line: 63, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 63, column: 9)
!103 = !DILocation(line: 63, column: 15, scope: !102)
!104 = !DILocation(line: 63, column: 9, scope: !99)
!105 = !DILocation(line: 64, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 9)
!107 = !DILocation(line: 64, column: 15, scope: !106)
!108 = !DILocation(line: 64, column: 9, scope: !99)
!109 = !DILocation(line: 65, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 65, column: 6)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 64, column: 21)
!112 = !DILocation(line: 65, column: 6, scope: !111)
!113 = !DILocation(line: 66, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 66, column: 10)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 65, column: 12)
!116 = !DILocation(line: 66, column: 10, scope: !115)
!117 = !DILocation(line: 66, column: 20, scope: !114)
!118 = !DILocation(line: 66, column: 18, scope: !114)
!119 = !DILocation(line: 68, column: 20, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !1, line: 67, column: 12)
!121 = !DILocation(line: 68, column: 15, scope: !120)
!122 = !DILocation(line: 68, column: 11, scope: !120)
!123 = !DILocation(line: 41, column: 15, scope: !16)
!124 = !DILocation(line: 69, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 69, column: 7)
!126 = !DILocation(line: 69, column: 7, scope: !120)
!127 = !DILocation(line: 0, scope: !29)
!128 = !DILocation(line: 73, column: 10, scope: !111)
!129 = !DILocation(line: 73, column: 6, scope: !111)
!130 = !DILocation(line: 74, column: 6, scope: !111)
!131 = !DILocation(line: 76, column: 2, scope: !41)
!132 = !DILocation(line: 77, column: 2, scope: !16)
!133 = !DILocation(line: 0, scope: !102)
!134 = !DILocation(line: 78, column: 1, scope: !16)
