; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_round.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_round.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @round(double) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast double %0 to i64, !dbg !45
  %3 = lshr i64 %2, 32, !dbg !45
  %4 = trunc i64 %3 to i32, !dbg !45
  %5 = trunc i64 %2 to i32, !dbg !45
  %6 = lshr i64 %2, 52, !dbg !48
  %7 = trunc i64 %6 to i32, !dbg !48
  %8 = and i32 %7, 2047, !dbg !48
  %9 = add nsw i32 %8, -1023, !dbg !49
  %10 = icmp ult i32 %8, 1043, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %10, label %11, label %31, !dbg !52

; <label>:11:                                     ; preds = %1
  %12 = icmp ult i32 %8, 1023, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %12, label %13, label %20, !dbg !54

; <label>:13:                                     ; preds = %11
  %14 = and i32 %4, -2147483648, !dbg !55
  %15 = icmp eq i32 %9, -1, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %15, label %16, label %18, !dbg !59

; <label>:16:                                     ; preds = %13
  %17 = or i32 %14, 1072693248, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %18, !dbg !61

; <label>:18:                                     ; preds = %16, %13
  %19 = phi i32 [ %17, %16 ], [ %14, %13 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br label %55, !dbg !63

; <label>:20:                                     ; preds = %11
  %21 = lshr i32 1048575, %9, !dbg !64
  %22 = and i32 %21, %4, !dbg !66
  %23 = or i32 %22, %5, !dbg !68
  %24 = icmp eq i32 %23, 0, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %24, label %30, label %25, !dbg !68

; <label>:25:                                     ; preds = %20
  %26 = lshr i32 524288, %9, !dbg !69
  %27 = add nsw i32 %26, %4, !dbg !70
  %28 = ashr i32 -1048576, %9, !dbg !71
  %29 = and i32 %27, %28, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %55

; <label>:30:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br label %62

; <label>:31:                                     ; preds = %1
  %32 = icmp ugt i32 %8, 1074, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %32, label %33, label %37, !dbg !76

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i32 %9, 1024, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  %35 = fadd double %0, %0, !dbg !81
  %36 = select i1 %34, double %35, double %0, !dbg !80
  br label %62, !dbg !80

; <label>:37:                                     ; preds = %31
  %38 = add nsw i32 %8, -1043, !dbg !82
  %39 = lshr i32 -1, %38, !dbg !83
  %40 = and i32 %39, %5, !dbg !85
  %41 = icmp eq i32 %40, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %41, label %54, label %42, !dbg !88

; <label>:42:                                     ; preds = %37
  %43 = sub nsw i32 1074, %8, !dbg !89
  %44 = shl i32 1, %43, !dbg !90
  %45 = add i32 %44, %5, !dbg !91
  %46 = icmp ult i32 %45, %5, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %46, label %47, label %49, !dbg !95

; <label>:47:                                     ; preds = %42
  %48 = add nsw i32 %4, 1, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %49, !dbg !97

; <label>:49:                                     ; preds = %42, %47
  %50 = phi i32 [ %48, %47 ], [ %4, %42 ], !dbg !98
  %51 = xor i32 %39, -1, !dbg !99
  %52 = and i32 %45, %51, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = zext i32 %52 to i64
  br label %55

; <label>:54:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br label %62

; <label>:55:                                     ; preds = %49, %25, %18
  %56 = phi i64 [ 0, %18 ], [ 0, %25 ], [ %53, %49 ]
  %57 = phi i32 [ %19, %18 ], [ %29, %25 ], [ %50, %49 ], !dbg !98
  %58 = zext i32 %57 to i64, !dbg !103
  %59 = shl nuw i64 %58, 32, !dbg !103
  %60 = or i64 %59, %56, !dbg !103
  %61 = bitcast i64 %60 to double, !dbg !103
  br label %62, !dbg !104

; <label>:62:                                     ; preds = %33, %54, %30, %55
  %63 = phi double [ %61, %55 ], [ %0, %30 ], [ %0, %54 ], [ %36, %33 ], !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  ret double %63, !dbg !106
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_round.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "round", scope: !1, file: !1, line: 49, type: !8, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !18, !21, !33, !38, !41, !42}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 49, type: !10)
!13 = !DILocalVariable(name: "msw", scope: !7, file: !1, line: 56, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "exponent_less_1023", scope: !7, file: !1, line: 56, type: !14)
!18 = !DILocalVariable(name: "lsw", scope: !7, file: !1, line: 57, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DILocalVariable(name: "ew_u", scope: !22, file: !1, line: 59, type: !23)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !24, line: 278, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 270, size: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !25, file: !24, line: 272, baseType: !10, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !25, file: !24, line: 277, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !24, line: 273, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !29, file: !24, line: 275, baseType: !19, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !29, file: !24, line: 276, baseType: !19, size: 32, offset: 32)
!33 = !DILocalVariable(name: "exponent_mask", scope: !34, file: !1, line: 76, type: !19)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 75, column: 9)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 66, column: 11)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 65, column: 5)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 7)
!38 = !DILocalVariable(name: "exponent_mask", scope: !39, file: !1, line: 96, type: !19)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 95, column: 5)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 86, column: 12)
!41 = !DILocalVariable(name: "tmp", scope: !39, file: !1, line: 97, type: !19)
!42 = !DILocalVariable(name: "iw_u", scope: !43, file: !1, line: 110, type: !23)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 110, column: 3)
!44 = !DILocation(line: 49, column: 22, scope: !7)
!45 = !DILocation(line: 59, column: 3, scope: !22)
!46 = !DILocation(line: 56, column: 13, scope: !7)
!47 = !DILocation(line: 57, column: 14, scope: !7)
!48 = !DILocation(line: 62, column: 44, scope: !7)
!49 = !DILocation(line: 62, column: 51, scope: !7)
!50 = !DILocation(line: 56, column: 18, scope: !7)
!51 = !DILocation(line: 64, column: 26, scope: !37)
!52 = !DILocation(line: 64, column: 7, scope: !7)
!53 = !DILocation(line: 66, column: 30, scope: !35)
!54 = !DILocation(line: 66, column: 11, scope: !36)
!55 = !DILocation(line: 68, column: 15, scope: !56)
!56 = distinct !DILexicalBlock(scope: !35, file: !1, line: 67, column: 9)
!57 = !DILocation(line: 69, column: 34, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !1, line: 69, column: 15)
!59 = !DILocation(line: 69, column: 15, scope: !56)
!60 = !DILocation(line: 71, column: 17, scope: !58)
!61 = !DILocation(line: 71, column: 13, scope: !58)
!62 = !DILocation(line: 0, scope: !56)
!63 = !DILocation(line: 73, column: 9, scope: !56)
!64 = !DILocation(line: 76, column: 49, scope: !34)
!65 = !DILocation(line: 76, column: 22, scope: !34)
!66 = !DILocation(line: 77, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !34, file: !1, line: 77, column: 15)
!68 = !DILocation(line: 77, column: 42, scope: !67)
!69 = !DILocation(line: 81, column: 29, scope: !34)
!70 = !DILocation(line: 81, column: 15, scope: !34)
!71 = !DILocation(line: 82, column: 18, scope: !34)
!72 = !DILocation(line: 82, column: 15, scope: !34)
!73 = !DILocation(line: 84, column: 9, scope: !35)
!74 = !DILocation(line: 79, column: 13, scope: !67)
!75 = !DILocation(line: 86, column: 31, scope: !40)
!76 = !DILocation(line: 86, column: 12, scope: !37)
!77 = !DILocation(line: 88, column: 30, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 88, column: 11)
!79 = distinct !DILexicalBlock(scope: !40, file: !1, line: 87, column: 5)
!80 = !DILocation(line: 88, column: 11, scope: !79)
!81 = !DILocation(line: 90, column: 18, scope: !78)
!82 = !DILocation(line: 96, column: 68, scope: !39)
!83 = !DILocation(line: 96, column: 45, scope: !39)
!84 = !DILocation(line: 96, column: 18, scope: !39)
!85 = !DILocation(line: 99, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !39, file: !1, line: 99, column: 11)
!87 = !DILocation(line: 99, column: 33, scope: !86)
!88 = !DILocation(line: 99, column: 11, scope: !39)
!89 = !DILocation(line: 103, column: 29, scope: !39)
!90 = !DILocation(line: 103, column: 22, scope: !39)
!91 = !DILocation(line: 103, column: 17, scope: !39)
!92 = !DILocation(line: 97, column: 18, scope: !39)
!93 = !DILocation(line: 104, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !39, file: !1, line: 104, column: 11)
!95 = !DILocation(line: 104, column: 11, scope: !39)
!96 = !DILocation(line: 105, column: 13, scope: !94)
!97 = !DILocation(line: 105, column: 9, scope: !94)
!98 = !DILocation(line: 0, scope: !22)
!99 = !DILocation(line: 108, column: 14, scope: !39)
!100 = !DILocation(line: 108, column: 11, scope: !39)
!101 = !DILocation(line: 109, column: 5, scope: !40)
!102 = !DILocation(line: 101, column: 9, scope: !86)
!103 = !DILocation(line: 110, column: 3, scope: !43)
!104 = !DILocation(line: 112, column: 3, scope: !7)
!105 = !DILocation(line: 0, scope: !86)
!106 = !DILocation(line: 113, column: 1, scope: !7)
