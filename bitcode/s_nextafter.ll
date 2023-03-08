; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_nextafter.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_nextafter.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @nextafter(double, double) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast double %0 to i64, !dbg !53
  %4 = lshr i64 %3, 32, !dbg !53
  %5 = trunc i64 %4 to i32, !dbg !53
  %6 = trunc i64 %3 to i32, !dbg !53
  %7 = bitcast double %1 to i64, !dbg !56
  %8 = lshr i64 %7, 32, !dbg !56
  %9 = trunc i64 %8 to i32, !dbg !56
  %10 = trunc i64 %7 to i32, !dbg !56
  %11 = and i32 %5, 2147483647, !dbg !59
  %12 = and i32 %9, 2147483647, !dbg !61
  %13 = icmp ugt i32 %11, 2146435071, !dbg !63
  br i1 %13, label %14, label %18, !dbg !65

; <label>:14:                                     ; preds = %2
  %15 = add nsw i32 %11, -2146435072, !dbg !66
  %16 = or i32 %15, %6, !dbg !67
  %17 = icmp eq i32 %16, 0, !dbg !68
  br i1 %17, label %18, label %24, !dbg !69

; <label>:18:                                     ; preds = %14, %2
  %19 = icmp ugt i32 %12, 2146435071, !dbg !70
  br i1 %19, label %20, label %26, !dbg !71

; <label>:20:                                     ; preds = %18
  %21 = add nsw i32 %12, -2146435072, !dbg !72
  %22 = or i32 %21, %10, !dbg !73
  %23 = icmp eq i32 %22, 0, !dbg !74
  br i1 %23, label %26, label %24, !dbg !75

; <label>:24:                                     ; preds = %14, %20
  %25 = fadd double %0, %1, !dbg !76
  br label %93, !dbg !77

; <label>:26:                                     ; preds = %20, %18
  %27 = fcmp oeq double %0, %1, !dbg !78
  br i1 %27, label %93, label %28, !dbg !80

; <label>:28:                                     ; preds = %26
  %29 = or i32 %11, %6, !dbg !81
  %30 = icmp eq i32 %29, 0, !dbg !82
  br i1 %30, label %31, label %38, !dbg !83

; <label>:31:                                     ; preds = %28
  %32 = and i64 %7, -9223372036854775808, !dbg !84
  %33 = or i64 %32, 1, !dbg !84
  %34 = bitcast i64 %33 to double, !dbg !84
  %35 = fmul double %34, %34, !dbg !85
  %36 = fcmp oeq double %35, %34, !dbg !86
  %37 = select i1 %36, double %35, double %34, !dbg !88
  br label %93, !dbg !88

; <label>:38:                                     ; preds = %28
  %39 = icmp sgt i32 %5, -1, !dbg !89
  br i1 %39, label %40, label %54, !dbg !91

; <label>:40:                                     ; preds = %38
  %41 = icmp sgt i32 %5, %9, !dbg !92
  br i1 %41, label %46, label %42, !dbg !95

; <label>:42:                                     ; preds = %40
  %43 = icmp eq i32 %5, %9, !dbg !96
  %44 = icmp ugt i32 %6, %10, !dbg !97
  %45 = and i1 %44, %43, !dbg !98
  br i1 %45, label %46, label %50, !dbg !98

; <label>:46:                                     ; preds = %42, %40
  %47 = icmp eq i32 %6, 0, !dbg !99
  %48 = sext i1 %47 to i32, !dbg !102
  %49 = add i32 %6, -1, !dbg !103
  br label %70, !dbg !104

; <label>:50:                                     ; preds = %42
  %51 = add i32 %6, 1, !dbg !105
  %52 = icmp eq i32 %51, 0, !dbg !107
  %53 = zext i1 %52 to i32, !dbg !109
  br label %70, !dbg !109

; <label>:54:                                     ; preds = %38
  %55 = icmp sgt i32 %9, -1, !dbg !110
  %56 = icmp sgt i32 %5, %9, !dbg !113
  %57 = or i1 %55, %56, !dbg !114
  br i1 %57, label %62, label %58, !dbg !114

; <label>:58:                                     ; preds = %54
  %59 = icmp eq i32 %5, %9, !dbg !115
  %60 = icmp ugt i32 %6, %10, !dbg !116
  %61 = and i1 %60, %59, !dbg !117
  br i1 %61, label %62, label %66, !dbg !117

; <label>:62:                                     ; preds = %58, %54
  %63 = icmp eq i32 %6, 0, !dbg !118
  %64 = sext i1 %63 to i32, !dbg !121
  %65 = add i32 %6, -1, !dbg !122
  br label %70, !dbg !123

; <label>:66:                                     ; preds = %58
  %67 = add i32 %6, 1, !dbg !124
  %68 = icmp eq i32 %67, 0, !dbg !126
  %69 = zext i1 %68 to i32, !dbg !128
  br label %70, !dbg !128

; <label>:70:                                     ; preds = %66, %50, %62, %46
  %71 = phi i32 [ %48, %46 ], [ %64, %62 ], [ %53, %50 ], [ %69, %66 ]
  %72 = phi i32 [ %49, %46 ], [ %65, %62 ], [ %51, %50 ], [ %67, %66 ], !dbg !129
  %73 = add nsw i32 %71, %5, !dbg !130
  %74 = and i32 %73, 2146435072, !dbg !131
  %75 = trunc i32 %74 to i31, !dbg !132
  switch i31 %75, label %87 [
    i31 -1048576, label %76
    i31 0, label %78
  ], !dbg !132

; <label>:76:                                     ; preds = %70
  %77 = fadd double %0, %0, !dbg !133
  br label %93, !dbg !135

; <label>:78:                                     ; preds = %70
  %79 = fmul double %0, %0, !dbg !136
  %80 = fcmp une double %79, %0, !dbg !137
  br i1 %80, label %81, label %87, !dbg !138

; <label>:81:                                     ; preds = %78
  %82 = zext i32 %73 to i64, !dbg !139
  %83 = shl nuw i64 %82, 32, !dbg !139
  %84 = zext i32 %72 to i64, !dbg !139
  %85 = or i64 %83, %84, !dbg !139
  %86 = bitcast i64 %85 to double, !dbg !139
  br label %93, !dbg !140

; <label>:87:                                     ; preds = %70, %78
  %88 = zext i32 %73 to i64, !dbg !141
  %89 = shl nuw i64 %88, 32, !dbg !141
  %90 = zext i32 %72 to i64, !dbg !141
  %91 = or i64 %89, %90, !dbg !141
  %92 = bitcast i64 %91 to double, !dbg !141
  br label %93, !dbg !142

; <label>:93:                                     ; preds = %31, %26, %87, %81, %76, %24
  %94 = phi double [ %25, %24 ], [ %77, %76 ], [ %86, %81 ], [ %92, %87 ], [ %0, %26 ], [ %37, %31 ], !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret double %94, !dbg !144
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_nextafter.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "nextafter", scope: !1, file: !1, line: 68, type: !8, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !18, !19, !20, !21, !24, !25, !37, !39, !43, !49}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 68, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 68, type: !10)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 74, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "hy", scope: !7, file: !1, line: 74, type: !15)
!19 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 74, type: !15)
!20 = !DILocalVariable(name: "iy", scope: !7, file: !1, line: 74, type: !15)
!21 = !DILocalVariable(name: "lx", scope: !7, file: !1, line: 75, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !23)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "ly", scope: !7, file: !1, line: 75, type: !22)
!25 = !DILocalVariable(name: "ew_u", scope: !26, file: !1, line: 77, type: !27)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 77, column: 2)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !28, line: 278, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 270, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !28, line: 272, baseType: !10, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !29, file: !28, line: 277, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !28, line: 273, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !33, file: !28, line: 275, baseType: !22, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !33, file: !28, line: 276, baseType: !22, size: 32, offset: 32)
!37 = !DILocalVariable(name: "ew_u", scope: !38, file: !1, line: 78, type: !27)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 78, column: 2)
!39 = !DILocalVariable(name: "iw_u", scope: !40, file: !1, line: 87, type: !27)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 87, column: 6)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 86, column: 17)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 86, column: 5)
!43 = !DILocalVariable(name: "iw_u", scope: !44, file: !1, line: 113, type: !27)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 113, column: 10)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 112, column: 15)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 112, column: 9)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 110, column: 20)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 110, column: 5)
!49 = !DILocalVariable(name: "iw_u", scope: !50, file: !1, line: 117, type: !27)
!50 = distinct !DILexicalBlock(scope: !7, file: !1, line: 117, column: 2)
!51 = !DILocation(line: 68, column: 26, scope: !7)
!52 = !DILocation(line: 68, column: 36, scope: !7)
!53 = !DILocation(line: 77, column: 2, scope: !26)
!54 = !DILocation(line: 74, column: 12, scope: !7)
!55 = !DILocation(line: 75, column: 13, scope: !7)
!56 = !DILocation(line: 78, column: 2, scope: !38)
!57 = !DILocation(line: 74, column: 15, scope: !7)
!58 = !DILocation(line: 75, column: 16, scope: !7)
!59 = !DILocation(line: 79, column: 9, scope: !7)
!60 = !DILocation(line: 74, column: 18, scope: !7)
!61 = !DILocation(line: 80, column: 9, scope: !7)
!62 = !DILocation(line: 74, column: 21, scope: !7)
!63 = !DILocation(line: 82, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !7, file: !1, line: 82, column: 5)
!65 = !DILocation(line: 82, column: 22, scope: !64)
!66 = !DILocation(line: 82, column: 28, scope: !64)
!67 = !DILocation(line: 82, column: 40, scope: !64)
!68 = !DILocation(line: 82, column: 44, scope: !64)
!69 = !DILocation(line: 82, column: 49, scope: !64)
!70 = !DILocation(line: 83, column: 9, scope: !64)
!71 = !DILocation(line: 83, column: 22, scope: !64)
!72 = !DILocation(line: 83, column: 28, scope: !64)
!73 = !DILocation(line: 83, column: 40, scope: !64)
!74 = !DILocation(line: 83, column: 44, scope: !64)
!75 = !DILocation(line: 82, column: 5, scope: !7)
!76 = !DILocation(line: 84, column: 13, scope: !64)
!77 = !DILocation(line: 84, column: 5, scope: !64)
!78 = !DILocation(line: 85, column: 6, scope: !79)
!79 = distinct !DILexicalBlock(scope: !7, file: !1, line: 85, column: 5)
!80 = !DILocation(line: 85, column: 5, scope: !7)
!81 = !DILocation(line: 86, column: 8, scope: !42)
!82 = !DILocation(line: 86, column: 12, scope: !42)
!83 = !DILocation(line: 86, column: 5, scope: !7)
!84 = !DILocation(line: 87, column: 6, scope: !40)
!85 = !DILocation(line: 88, column: 11, scope: !41)
!86 = !DILocation(line: 89, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !41, file: !1, line: 89, column: 9)
!88 = !DILocation(line: 89, column: 15, scope: !87)
!89 = !DILocation(line: 91, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !7, file: !1, line: 91, column: 5)
!91 = !DILocation(line: 91, column: 5, scope: !7)
!92 = !DILocation(line: 92, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 92, column: 9)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 91, column: 12)
!95 = !DILocation(line: 92, column: 14, scope: !93)
!96 = !DILocation(line: 92, column: 20, scope: !93)
!97 = !DILocation(line: 92, column: 30, scope: !93)
!98 = !DILocation(line: 92, column: 25, scope: !93)
!99 = !DILocation(line: 93, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 93, column: 6)
!101 = distinct !DILexicalBlock(scope: !93, file: !1, line: 92, column: 37)
!102 = !DILocation(line: 93, column: 6, scope: !101)
!103 = !DILocation(line: 94, column: 6, scope: !101)
!104 = !DILocation(line: 95, column: 6, scope: !101)
!105 = !DILocation(line: 96, column: 6, scope: !106)
!106 = distinct !DILexicalBlock(scope: !93, file: !1, line: 95, column: 13)
!107 = !DILocation(line: 97, column: 8, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !1, line: 97, column: 6)
!109 = !DILocation(line: 97, column: 6, scope: !106)
!110 = !DILocation(line: 100, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 100, column: 9)
!112 = distinct !DILexicalBlock(scope: !90, file: !1, line: 99, column: 9)
!113 = !DILocation(line: 100, column: 18, scope: !111)
!114 = !DILocation(line: 100, column: 14, scope: !111)
!115 = !DILocation(line: 100, column: 27, scope: !111)
!116 = !DILocation(line: 100, column: 37, scope: !111)
!117 = !DILocation(line: 100, column: 32, scope: !111)
!118 = !DILocation(line: 101, column: 8, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 101, column: 6)
!120 = distinct !DILexicalBlock(scope: !111, file: !1, line: 100, column: 43)
!121 = !DILocation(line: 101, column: 6, scope: !120)
!122 = !DILocation(line: 102, column: 6, scope: !120)
!123 = !DILocation(line: 103, column: 6, scope: !120)
!124 = !DILocation(line: 104, column: 6, scope: !125)
!125 = distinct !DILexicalBlock(scope: !111, file: !1, line: 103, column: 13)
!126 = !DILocation(line: 105, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !125, file: !1, line: 105, column: 6)
!128 = !DILocation(line: 105, column: 6, scope: !125)
!129 = !DILocation(line: 0, scope: !125)
!130 = !DILocation(line: 0, scope: !26)
!131 = !DILocation(line: 108, column: 9, scope: !7)
!132 = !DILocation(line: 109, column: 5, scope: !7)
!133 = !DILocation(line: 109, column: 29, scope: !134)
!134 = distinct !DILexicalBlock(scope: !7, file: !1, line: 109, column: 5)
!135 = !DILocation(line: 109, column: 21, scope: !134)
!136 = !DILocation(line: 111, column: 11, scope: !47)
!137 = !DILocation(line: 112, column: 10, scope: !46)
!138 = !DILocation(line: 112, column: 9, scope: !47)
!139 = !DILocation(line: 113, column: 10, scope: !44)
!140 = !DILocation(line: 114, column: 3, scope: !45)
!141 = !DILocation(line: 117, column: 2, scope: !50)
!142 = !DILocation(line: 118, column: 2, scope: !7)
!143 = !DILocation(line: 0, scope: !7)
!144 = !DILocation(line: 119, column: 1, scope: !7)
