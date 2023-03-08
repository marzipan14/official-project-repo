; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @nextafterf(float, float) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast float %0 to i32, !dbg !47
  %4 = bitcast float %1 to i32, !dbg !49
  %5 = and i32 %3, 2147483647, !dbg !51
  %6 = icmp ugt i32 %5, 2139095040, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %6, label %10, label %7, !dbg !55

; <label>:7:                                      ; preds = %2
  %8 = and i32 %4, 2147483647, !dbg !56
  %9 = icmp ugt i32 %8, 2139095040, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %9, label %10, label %12, !dbg !59

; <label>:10:                                     ; preds = %7, %2
  %11 = fadd float %0, %1, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %47, !dbg !61

; <label>:12:                                     ; preds = %7
  %13 = fcmp oeq float %0, %1, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %13, label %14, label %15, !dbg !64

; <label>:14:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %47, !dbg !65

; <label>:15:                                     ; preds = %12
  %16 = icmp eq i32 %5, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %16, label %17, label %24, !dbg !67

; <label>:17:                                     ; preds = %15
  %18 = and i32 %4, -2147483648, !dbg !68
  %19 = or i32 %18, 1, !dbg !68
  %20 = bitcast i32 %19 to float, !dbg !68
  %21 = fmul float %20, %20, !dbg !69
  %22 = fcmp oeq float %21, %20, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %23 = select i1 %22, float %21, float %20, !dbg !74
  br label %47, !dbg !74

; <label>:24:                                     ; preds = %15
  %25 = icmp sgt i32 %3, -1, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %25, label %28, label %26, !dbg !77

; <label>:26:                                     ; preds = %24
  %27 = icmp sgt i32 %4, -1, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %27, label %31, label %28, !dbg !81

; <label>:28:                                     ; preds = %26, %24
  %29 = icmp sgt i32 %3, %4, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %30 = select i1 %29, i32 -1, i32 1, !dbg !86
  br label %31, !dbg !88

; <label>:31:                                     ; preds = %28, %26
  %32 = phi i32 [ -1, %26 ], [ %30, %28 ]
  %33 = add nsw i32 %32, %3, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = and i32 %33, 2139095040, !dbg !90
  %35 = icmp eq i32 %34, 2139095040, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %35, label %36, label %38, !dbg !93

; <label>:36:                                     ; preds = %31
  %37 = fadd float %0, %0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br label %47, !dbg !95

; <label>:38:                                     ; preds = %31
  %39 = icmp eq i32 %34, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br i1 %39, label %40, label %45, !dbg !97

; <label>:40:                                     ; preds = %38
  %41 = fmul float %0, %0, !dbg !98
  %42 = fcmp une float %41, %0, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %42, label %43, label %45, !dbg !100

; <label>:43:                                     ; preds = %40
  %44 = bitcast i32 %33 to float, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br label %47, !dbg !102

; <label>:45:                                     ; preds = %38, %40
  %46 = bitcast i32 %33 to float, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br label %47, !dbg !104

; <label>:47:                                     ; preds = %17, %45, %43, %36, %14, %10
  %48 = phi float [ %11, %10 ], [ %0, %14 ], [ %37, %36 ], [ %44, %43 ], [ %46, %45 ], [ %23, %17 ], !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  ret float %48, !dbg !106
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "nextafterf", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !18, !19, !20, !21, !31, !33, !37, !43}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 19, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 19, type: !10)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 25, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "hy", scope: !7, file: !1, line: 25, type: !15)
!19 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 25, type: !15)
!20 = !DILocalVariable(name: "iy", scope: !7, file: !1, line: 25, type: !15)
!21 = !DILocalVariable(name: "gf_u", scope: !22, file: !1, line: 27, type: !23)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 2)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !24, line: 347, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 343, size: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !25, file: !24, line: 345, baseType: !10, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !25, file: !24, line: 346, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "gf_u", scope: !32, file: !1, line: 28, type: !23)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 2)
!33 = !DILocalVariable(name: "sf_u", scope: !34, file: !1, line: 37, type: !23)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 37, column: 6)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 36, column: 28)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 36, column: 5)
!37 = !DILocalVariable(name: "sf_u", scope: !38, file: !1, line: 59, type: !23)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 59, column: 10)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 58, column: 15)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 58, column: 9)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 56, column: 20)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 5)
!43 = !DILocalVariable(name: "sf_u", scope: !44, file: !1, line: 63, type: !23)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 2)
!45 = !DILocation(line: 19, column: 25, scope: !7)
!46 = !DILocation(line: 19, column: 34, scope: !7)
!47 = !DILocation(line: 27, column: 2, scope: !22)
!48 = !DILocation(line: 25, column: 12, scope: !7)
!49 = !DILocation(line: 28, column: 2, scope: !32)
!50 = !DILocation(line: 25, column: 15, scope: !7)
!51 = !DILocation(line: 29, column: 9, scope: !7)
!52 = !DILocation(line: 25, column: 18, scope: !7)
!53 = !DILocation(line: 32, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 5)
!55 = !DILocation(line: 32, column: 26, scope: !54)
!56 = !DILocation(line: 30, column: 9, scope: !7)
!57 = !DILocation(line: 25, column: 21, scope: !7)
!58 = !DILocation(line: 33, column: 5, scope: !54)
!59 = !DILocation(line: 32, column: 5, scope: !7)
!60 = !DILocation(line: 34, column: 13, scope: !54)
!61 = !DILocation(line: 34, column: 5, scope: !54)
!62 = !DILocation(line: 35, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 5)
!64 = !DILocation(line: 35, column: 5, scope: !7)
!65 = !DILocation(line: 35, column: 11, scope: !63)
!66 = !DILocation(line: 36, column: 5, scope: !36)
!67 = !DILocation(line: 36, column: 5, scope: !7)
!68 = !DILocation(line: 37, column: 6, scope: !34)
!69 = !DILocation(line: 38, column: 11, scope: !35)
!70 = !DILocation(line: 39, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !35, file: !1, line: 39, column: 9)
!72 = !DILocation(line: 39, column: 9, scope: !35)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 39, column: 15, scope: !71)
!75 = !DILocation(line: 41, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !7, file: !1, line: 41, column: 5)
!77 = !DILocation(line: 41, column: 5, scope: !7)
!78 = !DILocation(line: 48, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 9)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 47, column: 9)
!81 = !DILocation(line: 48, column: 14, scope: !79)
!82 = !DILocation(line: 0, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 42, column: 9)
!84 = distinct !DILexicalBlock(scope: !76, file: !1, line: 41, column: 12)
!85 = !DILocation(line: 0, scope: !84)
!86 = !DILocation(line: 0, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 42, column: 16)
!88 = !DILocation(line: 0, scope: !89)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 44, column: 13)
!90 = !DILocation(line: 54, column: 9, scope: !7)
!91 = !DILocation(line: 55, column: 7, scope: !92)
!92 = distinct !DILexicalBlock(scope: !7, file: !1, line: 55, column: 5)
!93 = !DILocation(line: 55, column: 5, scope: !7)
!94 = !DILocation(line: 55, column: 31, scope: !92)
!95 = !DILocation(line: 55, column: 23, scope: !92)
!96 = !DILocation(line: 56, column: 7, scope: !42)
!97 = !DILocation(line: 56, column: 5, scope: !7)
!98 = !DILocation(line: 57, column: 11, scope: !41)
!99 = !DILocation(line: 58, column: 10, scope: !40)
!100 = !DILocation(line: 58, column: 9, scope: !41)
!101 = !DILocation(line: 59, column: 10, scope: !38)
!102 = !DILocation(line: 60, column: 3, scope: !39)
!103 = !DILocation(line: 63, column: 2, scope: !44)
!104 = !DILocation(line: 64, column: 2, scope: !7)
!105 = !DILocation(line: 0, scope: !7)
!106 = !DILocation(line: 65, column: 1, scope: !7)
