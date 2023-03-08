; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_floor.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_floor.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @floor(double) local_unnamed_addr #0 !dbg !16 {
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
  %17 = icmp sgt i32 %4, -1, !dbg !62
  br i1 %17, label %71, label %18, !dbg !65

; <label>:18:                                     ; preds = %16
  %19 = and i32 %4, 2147483647, !dbg !66
  %20 = or i32 %19, %5, !dbg !68
  %21 = icmp eq i32 %20, 0, !dbg !69
  %22 = select i1 %21, i32 %5, i32 0, !dbg !70
  %23 = select i1 %21, i32 %4, i32 -1074790400, !dbg !70
  br label %71, !dbg !70

; <label>:24:                                     ; preds = %11
  %25 = lshr i32 1048575, %9, !dbg !71
  %26 = and i32 %25, %4, !dbg !74
  %27 = or i32 %26, %5, !dbg !76
  %28 = icmp eq i32 %27, 0, !dbg !77
  br i1 %28, label %79, label %29, !dbg !78

; <label>:29:                                     ; preds = %24
  %30 = fadd double %0, 1.000000e+300, !dbg !79
  %31 = fcmp ogt double %30, 0.000000e+00, !dbg !81
  br i1 %31, label %32, label %71, !dbg !82

; <label>:32:                                     ; preds = %29
  %33 = icmp slt i32 %4, 0, !dbg !83
  %34 = lshr i32 1048576, %9, !dbg !86
  %35 = select i1 %33, i32 %34, i32 0, !dbg !87
  %36 = add nsw i32 %35, %4, !dbg !87
  %37 = ashr i32 -1048576, %9, !dbg !88
  %38 = and i32 %36, %37, !dbg !89
  br label %71, !dbg !90

; <label>:39:                                     ; preds = %1
  %40 = icmp ugt i32 %8, 1074, !dbg !91
  br i1 %40, label %41, label %45, !dbg !93

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %9, 1024, !dbg !94
  %43 = fadd double %0, %0, !dbg !97
  %44 = select i1 %42, double %43, double %0, !dbg !98
  ret double %44, !dbg !98

; <label>:45:                                     ; preds = %39
  %46 = add nsw i32 %8, -1043, !dbg !99
  %47 = lshr i32 -1, %46, !dbg !101
  %48 = and i32 %47, %5, !dbg !102
  %49 = icmp eq i32 %48, 0, !dbg !104
  br i1 %49, label %79, label %50, !dbg !105

; <label>:50:                                     ; preds = %45
  %51 = fadd double %0, 1.000000e+300, !dbg !106
  %52 = fcmp ogt double %51, 0.000000e+00, !dbg !108
  br i1 %52, label %53, label %71, !dbg !109

; <label>:53:                                     ; preds = %50
  %54 = icmp slt i32 %4, 0, !dbg !110
  br i1 %54, label %55, label %66, !dbg !113

; <label>:55:                                     ; preds = %53
  %56 = icmp eq i32 %9, 20, !dbg !114
  br i1 %56, label %57, label %59, !dbg !117

; <label>:57:                                     ; preds = %55
  %58 = add nsw i32 %4, 1, !dbg !118
  br label %66, !dbg !119

; <label>:59:                                     ; preds = %55
  %60 = sub nsw i32 1075, %8, !dbg !120
  %61 = shl i32 1, %60, !dbg !122
  %62 = add nsw i32 %61, %5, !dbg !123
  %63 = icmp ult i32 %62, %5, !dbg !125
  %64 = zext i1 %63 to i32, !dbg !127
  %65 = add nsw i32 %64, %4, !dbg !127
  br label %66

; <label>:66:                                     ; preds = %57, %59, %53
  %67 = phi i32 [ %5, %57 ], [ %62, %59 ], [ %5, %53 ], !dbg !128
  %68 = phi i32 [ %58, %57 ], [ %65, %59 ], [ %4, %53 ], !dbg !128
  %69 = xor i32 %47, -1, !dbg !129
  %70 = and i32 %67, %69, !dbg !130
  br label %71, !dbg !131

; <label>:71:                                     ; preds = %18, %16, %29, %32, %13, %50, %66
  %72 = phi i32 [ %5, %13 ], [ 0, %32 ], [ %5, %29 ], [ %70, %66 ], [ %5, %50 ], [ 0, %16 ], [ %22, %18 ], !dbg !128
  %73 = phi i32 [ %4, %13 ], [ %38, %32 ], [ %4, %29 ], [ %68, %66 ], [ %4, %50 ], [ 0, %16 ], [ %23, %18 ], !dbg !128
  %74 = zext i32 %73 to i64, !dbg !132
  %75 = shl nuw i64 %74, 32, !dbg !132
  %76 = zext i32 %72 to i64, !dbg !132
  %77 = or i64 %75, %76, !dbg !132
  %78 = bitcast i64 %77 to double, !dbg !132
  br label %79, !dbg !133

; <label>:79:                                     ; preds = %45, %24, %71
  %80 = phi double [ %78, %71 ], [ %0, %24 ], [ %0, %45 ], !dbg !134
  ret double %80, !dbg !135
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_floor.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 81, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "floor", scope: !1, file: !1, line: 87, type: !17, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!11, !11}
!19 = !{!20, !21, !24, !25, !26, !27, !28, !40}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 87, type: !11)
!21 = !DILocalVariable(name: "i0", scope: !16, file: !1, line: 93, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "i1", scope: !16, file: !1, line: 93, type: !22)
!25 = !DILocalVariable(name: "j0", scope: !16, file: !1, line: 93, type: !22)
!26 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 94, type: !4)
!27 = !DILocalVariable(name: "j", scope: !16, file: !1, line: 94, type: !4)
!28 = !DILocalVariable(name: "ew_u", scope: !29, file: !1, line: 95, type: !30)
!29 = distinct !DILexicalBlock(scope: !16, file: !1, line: 95, column: 2)
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
!40 = !DILocalVariable(name: "iw_u", scope: !41, file: !1, line: 130, type: !30)
!41 = distinct !DILexicalBlock(scope: !16, file: !1, line: 130, column: 2)
!42 = !DILocation(line: 87, column: 22, scope: !16)
!43 = !DILocation(line: 95, column: 2, scope: !29)
!44 = !DILocation(line: 93, column: 12, scope: !16)
!45 = !DILocation(line: 93, column: 15, scope: !16)
!46 = !DILocation(line: 96, column: 11, scope: !16)
!47 = !DILocation(line: 96, column: 16, scope: !16)
!48 = !DILocation(line: 96, column: 23, scope: !16)
!49 = !DILocation(line: 93, column: 18, scope: !16)
!50 = !DILocation(line: 97, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !16, file: !1, line: 97, column: 5)
!52 = !DILocation(line: 97, column: 5, scope: !16)
!53 = !DILocation(line: 98, column: 11, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 98, column: 9)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 97, column: 12)
!56 = !DILocation(line: 98, column: 9, scope: !55)
!57 = !DILocation(line: 99, column: 10, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 99, column: 6)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 98, column: 15)
!60 = !DILocation(line: 99, column: 12, scope: !58)
!61 = !DILocation(line: 99, column: 6, scope: !59)
!62 = !DILocation(line: 100, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 100, column: 10)
!64 = distinct !DILexicalBlock(scope: !58, file: !1, line: 99, column: 18)
!65 = !DILocation(line: 100, column: 10, scope: !64)
!66 = !DILocation(line: 101, column: 19, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 101, column: 15)
!68 = !DILocation(line: 101, column: 31, scope: !67)
!69 = !DILocation(line: 101, column: 35, scope: !67)
!70 = !DILocation(line: 101, column: 15, scope: !63)
!71 = !DILocation(line: 105, column: 19, scope: !72)
!72 = distinct !DILexicalBlock(scope: !54, file: !1, line: 104, column: 13)
!73 = !DILocation(line: 94, column: 13, scope: !16)
!74 = !DILocation(line: 106, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 106, column: 6)
!76 = !DILocation(line: 106, column: 13, scope: !75)
!77 = !DILocation(line: 106, column: 17, scope: !75)
!78 = !DILocation(line: 106, column: 6, scope: !72)
!79 = !DILocation(line: 107, column: 10, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !1, line: 107, column: 6)
!81 = !DILocation(line: 107, column: 12, scope: !80)
!82 = !DILocation(line: 107, column: 6, scope: !72)
!83 = !DILocation(line: 108, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 108, column: 10)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 107, column: 18)
!86 = !DILocation(line: 108, column: 34, scope: !84)
!87 = !DILocation(line: 108, column: 10, scope: !85)
!88 = !DILocation(line: 109, column: 14, scope: !85)
!89 = !DILocation(line: 109, column: 10, scope: !85)
!90 = !DILocation(line: 110, column: 3, scope: !85)
!91 = !DILocation(line: 112, column: 15, scope: !92)
!92 = distinct !DILexicalBlock(scope: !51, file: !1, line: 112, column: 13)
!93 = !DILocation(line: 112, column: 13, scope: !51)
!94 = !DILocation(line: 113, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 113, column: 9)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 112, column: 20)
!97 = !DILocation(line: 113, column: 28, scope: !95)
!98 = !DILocation(line: 113, column: 9, scope: !96)
!99 = !DILocation(line: 116, column: 41, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !1, line: 115, column: 9)
!101 = !DILocation(line: 116, column: 36, scope: !100)
!102 = !DILocation(line: 117, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 117, column: 9)
!104 = !DILocation(line: 117, column: 15, scope: !103)
!105 = !DILocation(line: 117, column: 9, scope: !100)
!106 = !DILocation(line: 118, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !100, file: !1, line: 118, column: 9)
!108 = !DILocation(line: 118, column: 15, scope: !107)
!109 = !DILocation(line: 118, column: 9, scope: !100)
!110 = !DILocation(line: 119, column: 8, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 119, column: 6)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 118, column: 21)
!113 = !DILocation(line: 119, column: 6, scope: !112)
!114 = !DILocation(line: 120, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 120, column: 10)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 119, column: 12)
!117 = !DILocation(line: 120, column: 10, scope: !116)
!118 = !DILocation(line: 120, column: 20, scope: !115)
!119 = !DILocation(line: 120, column: 18, scope: !115)
!120 = !DILocation(line: 122, column: 18, scope: !121)
!121 = distinct !DILexicalBlock(scope: !115, file: !1, line: 121, column: 12)
!122 = !DILocation(line: 122, column: 13, scope: !121)
!123 = !DILocation(line: 122, column: 10, scope: !121)
!124 = !DILocation(line: 94, column: 15, scope: !16)
!125 = !DILocation(line: 123, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 123, column: 7)
!127 = !DILocation(line: 123, column: 7, scope: !121)
!128 = !DILocation(line: 0, scope: !29)
!129 = !DILocation(line: 127, column: 10, scope: !112)
!130 = !DILocation(line: 127, column: 6, scope: !112)
!131 = !DILocation(line: 128, column: 6, scope: !112)
!132 = !DILocation(line: 130, column: 2, scope: !41)
!133 = !DILocation(line: 131, column: 2, scope: !16)
!134 = !DILocation(line: 0, scope: !103)
!135 = !DILocation(line: 132, column: 1, scope: !16)
