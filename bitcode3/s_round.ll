; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_round.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_round.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
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
  br i1 %10, label %11, label %28, !dbg !52

; <label>:11:                                     ; preds = %1
  %12 = icmp ult i32 %8, 1023, !dbg !53
  br i1 %12, label %13, label %18, !dbg !54

; <label>:13:                                     ; preds = %11
  %14 = and i32 %4, -2147483648, !dbg !55
  %15 = icmp eq i32 %9, -1, !dbg !57
  %16 = or i32 %14, 1072693248, !dbg !59
  %17 = select i1 %15, i32 %16, i32 %14, !dbg !60
  br label %49, !dbg !61

; <label>:18:                                     ; preds = %11
  %19 = lshr i32 1048575, %9, !dbg !62
  %20 = and i32 %19, %4, !dbg !64
  %21 = or i32 %20, %5, !dbg !66
  %22 = icmp eq i32 %21, 0, !dbg !66
  br i1 %22, label %56, label %23, !dbg !66

; <label>:23:                                     ; preds = %18
  %24 = lshr i32 524288, %9, !dbg !67
  %25 = add nsw i32 %24, %4, !dbg !68
  %26 = ashr i32 -1048576, %9, !dbg !69
  %27 = and i32 %25, %26, !dbg !70
  br label %49

; <label>:28:                                     ; preds = %1
  %29 = icmp ugt i32 %8, 1074, !dbg !71
  br i1 %29, label %30, label %34, !dbg !72

; <label>:30:                                     ; preds = %28
  %31 = icmp eq i32 %9, 1024, !dbg !73
  %32 = fadd double %0, %0, !dbg !76
  %33 = select i1 %31, double %32, double %0, !dbg !77
  ret double %33, !dbg !77

; <label>:34:                                     ; preds = %28
  %35 = add nsw i32 %8, -1043, !dbg !78
  %36 = lshr i32 -1, %35, !dbg !79
  %37 = and i32 %36, %5, !dbg !81
  %38 = icmp eq i32 %37, 0, !dbg !83
  br i1 %38, label %56, label %39, !dbg !84

; <label>:39:                                     ; preds = %34
  %40 = sub nsw i32 1074, %8, !dbg !85
  %41 = shl i32 1, %40, !dbg !86
  %42 = add i32 %41, %5, !dbg !87
  %43 = icmp ult i32 %42, %5, !dbg !89
  %44 = zext i1 %43 to i32, !dbg !91
  %45 = add nsw i32 %44, %4, !dbg !91
  %46 = xor i32 %36, -1, !dbg !92
  %47 = and i32 %42, %46, !dbg !93
  %48 = zext i32 %47 to i64
  br label %49

; <label>:49:                                     ; preds = %39, %23, %13
  %50 = phi i64 [ 0, %13 ], [ 0, %23 ], [ %48, %39 ]
  %51 = phi i32 [ %17, %13 ], [ %27, %23 ], [ %45, %39 ], !dbg !94
  %52 = zext i32 %51 to i64, !dbg !95
  %53 = shl nuw i64 %52, 32, !dbg !95
  %54 = or i64 %53, %50, !dbg !95
  %55 = bitcast i64 %54 to double, !dbg !95
  br label %56, !dbg !96

; <label>:56:                                     ; preds = %34, %18, %49
  %57 = phi double [ %55, %49 ], [ %0, %18 ], [ %0, %34 ], !dbg !97
  ret double %57, !dbg !98
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!59 = !DILocation(line: 71, column: 17, scope: !58)
!60 = !DILocation(line: 69, column: 15, scope: !56)
!61 = !DILocation(line: 73, column: 9, scope: !56)
!62 = !DILocation(line: 76, column: 49, scope: !34)
!63 = !DILocation(line: 76, column: 22, scope: !34)
!64 = !DILocation(line: 77, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !34, file: !1, line: 77, column: 15)
!66 = !DILocation(line: 77, column: 42, scope: !65)
!67 = !DILocation(line: 81, column: 29, scope: !34)
!68 = !DILocation(line: 81, column: 15, scope: !34)
!69 = !DILocation(line: 82, column: 18, scope: !34)
!70 = !DILocation(line: 82, column: 15, scope: !34)
!71 = !DILocation(line: 86, column: 31, scope: !40)
!72 = !DILocation(line: 86, column: 12, scope: !37)
!73 = !DILocation(line: 88, column: 30, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 88, column: 11)
!75 = distinct !DILexicalBlock(scope: !40, file: !1, line: 87, column: 5)
!76 = !DILocation(line: 90, column: 18, scope: !74)
!77 = !DILocation(line: 88, column: 11, scope: !75)
!78 = !DILocation(line: 96, column: 68, scope: !39)
!79 = !DILocation(line: 96, column: 45, scope: !39)
!80 = !DILocation(line: 96, column: 18, scope: !39)
!81 = !DILocation(line: 99, column: 16, scope: !82)
!82 = distinct !DILexicalBlock(scope: !39, file: !1, line: 99, column: 11)
!83 = !DILocation(line: 99, column: 33, scope: !82)
!84 = !DILocation(line: 99, column: 11, scope: !39)
!85 = !DILocation(line: 103, column: 29, scope: !39)
!86 = !DILocation(line: 103, column: 22, scope: !39)
!87 = !DILocation(line: 103, column: 17, scope: !39)
!88 = !DILocation(line: 97, column: 18, scope: !39)
!89 = !DILocation(line: 104, column: 15, scope: !90)
!90 = distinct !DILexicalBlock(scope: !39, file: !1, line: 104, column: 11)
!91 = !DILocation(line: 104, column: 11, scope: !39)
!92 = !DILocation(line: 108, column: 14, scope: !39)
!93 = !DILocation(line: 108, column: 11, scope: !39)
!94 = !DILocation(line: 0, scope: !22)
!95 = !DILocation(line: 110, column: 3, scope: !43)
!96 = !DILocation(line: 112, column: 3, scope: !7)
!97 = !DILocation(line: 0, scope: !82)
!98 = !DILocation(line: 113, column: 1, scope: !7)
