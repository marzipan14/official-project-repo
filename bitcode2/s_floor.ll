; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_floor.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_floor.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %10, label %11, label %41, !dbg !52

; <label>:11:                                     ; preds = %1
  %12 = icmp ult i32 %8, 1023, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %12, label %13, label %24, !dbg !56

; <label>:13:                                     ; preds = %11
  %14 = fadd double %0, 1.000000e+300, !dbg !57
  %15 = fcmp ogt double %14, 0.000000e+00, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %15, label %16, label %76, !dbg !61

; <label>:16:                                     ; preds = %13
  %17 = icmp sgt i32 %4, -1, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %17, label %18, label %19, !dbg !65

; <label>:18:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %76, !dbg !66

; <label>:19:                                     ; preds = %16
  %20 = and i32 %4, 2147483647, !dbg !68
  %21 = or i32 %20, %5, !dbg !70
  %22 = icmp eq i32 %21, 0, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %22, label %76, label %23, !dbg !72

; <label>:23:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br label %76, !dbg !73

; <label>:24:                                     ; preds = %11
  %25 = lshr i32 1048575, %9, !dbg !75
  %26 = and i32 %25, %4, !dbg !78
  %27 = or i32 %26, %5, !dbg !80
  %28 = icmp eq i32 %27, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %28, label %84, label %29, !dbg !82

; <label>:29:                                     ; preds = %24
  %30 = fadd double %0, 1.000000e+300, !dbg !83
  %31 = fcmp ogt double %30, 0.000000e+00, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %31, label %32, label %76, !dbg !86

; <label>:32:                                     ; preds = %29
  %33 = icmp slt i32 %4, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br i1 %33, label %34, label %37, !dbg !90

; <label>:34:                                     ; preds = %32
  %35 = lshr i32 1048576, %9, !dbg !91
  %36 = add nsw i32 %35, %4, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br label %37, !dbg !93

; <label>:37:                                     ; preds = %34, %32
  %38 = phi i32 [ %36, %34 ], [ %4, %32 ], !dbg !94
  %39 = ashr i32 -1048576, %9, !dbg !95
  %40 = and i32 %38, %39, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %76, !dbg !97

; <label>:41:                                     ; preds = %1
  %42 = icmp ugt i32 %8, 1074, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %42, label %43, label %47, !dbg !100

; <label>:43:                                     ; preds = %41
  %44 = icmp eq i32 %9, 1024, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %45 = fadd double %0, %0, !dbg !105
  %46 = select i1 %44, double %45, double %0, !dbg !104
  br label %84, !dbg !104

; <label>:47:                                     ; preds = %41
  %48 = add nsw i32 %8, -1043, !dbg !106
  %49 = lshr i32 -1, %48, !dbg !108
  %50 = and i32 %49, %5, !dbg !109
  %51 = icmp eq i32 %50, 0, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %51, label %84, label %52, !dbg !112

; <label>:52:                                     ; preds = %47
  %53 = fadd double %0, 1.000000e+300, !dbg !113
  %54 = fcmp ogt double %53, 0.000000e+00, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %54, label %55, label %76, !dbg !116

; <label>:55:                                     ; preds = %52
  %56 = icmp slt i32 %4, 0, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %56, label %57, label %71, !dbg !120

; <label>:57:                                     ; preds = %55
  %58 = icmp eq i32 %9, 20, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %58, label %59, label %61, !dbg !124

; <label>:59:                                     ; preds = %57
  %60 = add nsw i32 %4, 1, !dbg !125
  br label %68, !dbg !126

; <label>:61:                                     ; preds = %57
  %62 = sub nsw i32 1075, %8, !dbg !127
  %63 = shl i32 1, %62, !dbg !129
  %64 = add nsw i32 %63, %5, !dbg !130
  %65 = icmp ult i32 %64, %5, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br i1 %65, label %66, label %68, !dbg !134

; <label>:66:                                     ; preds = %61
  %67 = add nsw i32 %4, 1, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %68, !dbg !136

; <label>:68:                                     ; preds = %61, %66, %59
  %69 = phi i32 [ %5, %59 ], [ %64, %66 ], [ %64, %61 ]
  %70 = phi i32 [ %60, %59 ], [ %67, %66 ], [ %4, %61 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %71, !dbg !137

; <label>:71:                                     ; preds = %68, %55
  %72 = phi i32 [ %5, %55 ], [ %69, %68 ], !dbg !94
  %73 = phi i32 [ %4, %55 ], [ %70, %68 ], !dbg !94
  %74 = xor i32 %49, -1, !dbg !137
  %75 = and i32 %72, %74, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %76, !dbg !139

; <label>:76:                                     ; preds = %19, %29, %37, %13, %23, %18, %52, %71
  %77 = phi i32 [ 0, %18 ], [ 0, %23 ], [ %5, %19 ], [ %5, %13 ], [ 0, %37 ], [ %5, %29 ], [ %75, %71 ], [ %5, %52 ], !dbg !94
  %78 = phi i32 [ 0, %18 ], [ -1074790400, %23 ], [ %4, %19 ], [ %4, %13 ], [ %40, %37 ], [ %4, %29 ], [ %73, %71 ], [ %4, %52 ], !dbg !94
  %79 = zext i32 %78 to i64, !dbg !140
  %80 = shl nuw i64 %79, 32, !dbg !140
  %81 = zext i32 %77 to i64, !dbg !140
  %82 = or i64 %80, %81, !dbg !140
  %83 = bitcast i64 %82 to double, !dbg !140
  br label %84, !dbg !141

; <label>:84:                                     ; preds = %43, %47, %24, %76
  %85 = phi double [ %83, %76 ], [ %0, %24 ], [ %0, %47 ], [ %46, %43 ], !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret double %85, !dbg !144
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!66 = !DILocation(line: 100, column: 26, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 100, column: 17)
!68 = !DILocation(line: 101, column: 19, scope: !69)
!69 = distinct !DILexicalBlock(scope: !63, file: !1, line: 101, column: 15)
!70 = !DILocation(line: 101, column: 31, scope: !69)
!71 = !DILocation(line: 101, column: 35, scope: !69)
!72 = !DILocation(line: 101, column: 15, scope: !63)
!73 = !DILocation(line: 102, column: 25, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 102, column: 4)
!75 = !DILocation(line: 105, column: 19, scope: !76)
!76 = distinct !DILexicalBlock(scope: !54, file: !1, line: 104, column: 13)
!77 = !DILocation(line: 94, column: 13, scope: !16)
!78 = !DILocation(line: 106, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 106, column: 6)
!80 = !DILocation(line: 106, column: 13, scope: !79)
!81 = !DILocation(line: 106, column: 17, scope: !79)
!82 = !DILocation(line: 106, column: 6, scope: !76)
!83 = !DILocation(line: 107, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !76, file: !1, line: 107, column: 6)
!85 = !DILocation(line: 107, column: 12, scope: !84)
!86 = !DILocation(line: 107, column: 6, scope: !76)
!87 = !DILocation(line: 108, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 108, column: 10)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 107, column: 18)
!90 = !DILocation(line: 108, column: 10, scope: !89)
!91 = !DILocation(line: 108, column: 34, scope: !88)
!92 = !DILocation(line: 108, column: 19, scope: !88)
!93 = !DILocation(line: 108, column: 16, scope: !88)
!94 = !DILocation(line: 0, scope: !29)
!95 = !DILocation(line: 109, column: 14, scope: !89)
!96 = !DILocation(line: 109, column: 10, scope: !89)
!97 = !DILocation(line: 110, column: 3, scope: !89)
!98 = !DILocation(line: 112, column: 15, scope: !99)
!99 = distinct !DILexicalBlock(scope: !51, file: !1, line: 112, column: 13)
!100 = !DILocation(line: 112, column: 13, scope: !51)
!101 = !DILocation(line: 113, column: 11, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 113, column: 9)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 112, column: 20)
!104 = !DILocation(line: 113, column: 9, scope: !103)
!105 = !DILocation(line: 113, column: 28, scope: !102)
!106 = !DILocation(line: 116, column: 41, scope: !107)
!107 = distinct !DILexicalBlock(scope: !99, file: !1, line: 115, column: 9)
!108 = !DILocation(line: 116, column: 36, scope: !107)
!109 = !DILocation(line: 117, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 117, column: 9)
!111 = !DILocation(line: 117, column: 15, scope: !110)
!112 = !DILocation(line: 117, column: 9, scope: !107)
!113 = !DILocation(line: 118, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 118, column: 9)
!115 = !DILocation(line: 118, column: 15, scope: !114)
!116 = !DILocation(line: 118, column: 9, scope: !107)
!117 = !DILocation(line: 119, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 119, column: 6)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 118, column: 21)
!120 = !DILocation(line: 119, column: 6, scope: !119)
!121 = !DILocation(line: 120, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 120, column: 10)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 119, column: 12)
!124 = !DILocation(line: 120, column: 10, scope: !123)
!125 = !DILocation(line: 120, column: 20, scope: !122)
!126 = !DILocation(line: 120, column: 18, scope: !122)
!127 = !DILocation(line: 122, column: 18, scope: !128)
!128 = distinct !DILexicalBlock(scope: !122, file: !1, line: 121, column: 12)
!129 = !DILocation(line: 122, column: 13, scope: !128)
!130 = !DILocation(line: 122, column: 10, scope: !128)
!131 = !DILocation(line: 94, column: 15, scope: !16)
!132 = !DILocation(line: 123, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 123, column: 7)
!134 = !DILocation(line: 123, column: 7, scope: !128)
!135 = !DILocation(line: 123, column: 16, scope: !133)
!136 = !DILocation(line: 123, column: 13, scope: !133)
!137 = !DILocation(line: 127, column: 10, scope: !119)
!138 = !DILocation(line: 127, column: 6, scope: !119)
!139 = !DILocation(line: 128, column: 6, scope: !119)
!140 = !DILocation(line: 130, column: 2, scope: !41)
!141 = !DILocation(line: 131, column: 2, scope: !16)
!142 = !DILocation(line: 0, scope: !110)
!143 = !DILocation(line: 0, scope: !79)
!144 = !DILocation(line: 132, column: 1, scope: !16)
