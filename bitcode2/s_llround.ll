; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llround.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llround.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @llround(double) local_unnamed_addr #0 !dbg !9 {
  %2 = bitcast double %0 to i64, !dbg !44
  %3 = lshr i64 %2, 32, !dbg !44
  %4 = trunc i64 %3 to i32, !dbg !44
  %5 = trunc i64 %2 to i32, !dbg !44
  %6 = icmp slt i32 %4, 0, !dbg !47
  %7 = select i1 %6, i32 -1, i32 1, !dbg !47
  %8 = lshr i64 %2, 52, !dbg !49
  %9 = trunc i64 %8 to i32, !dbg !49
  %10 = and i32 %9, 2047, !dbg !49
  %11 = add nsw i32 %10, -1023, !dbg !50
  %12 = and i32 %4, 1048575, !dbg !52
  %13 = or i32 %12, 1048576, !dbg !53
  %14 = icmp ult i32 %10, 1043, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %14, label %15, label %27, !dbg !55

; <label>:15:                                     ; preds = %1
  %16 = icmp ult i32 %10, 1023, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %16, label %17, label %21, !dbg !59

; <label>:17:                                     ; preds = %15
  %18 = icmp eq i32 %10, 1022, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  %19 = select i1 %18, i32 %7, i32 0, !dbg !63
  %20 = sext i32 %19 to i64, !dbg !63
  br label %66, !dbg !63

; <label>:21:                                     ; preds = %15
  %22 = lshr i32 524288, %11, !dbg !64
  %23 = add i32 %22, %13, !dbg !66
  %24 = sub nsw i32 1043, %10, !dbg !67
  %25 = lshr i32 %23, %24, !dbg !68
  %26 = zext i32 %25 to i64, !dbg !69
  br label %62, !dbg !71

; <label>:27:                                     ; preds = %1
  %28 = icmp ult i32 %11, 63, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %28, label %29, label %60, !dbg !73

; <label>:29:                                     ; preds = %27
  %30 = icmp ugt i32 %10, 1074, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %30, label %31, label %40, !dbg !75

; <label>:31:                                     ; preds = %29
  %32 = zext i32 %13 to i64, !dbg !76
  %33 = add nsw i32 %10, -1043, !dbg !77
  %34 = zext i32 %33 to i64, !dbg !78
  %35 = shl i64 %32, %34, !dbg !78
  %36 = add nsw i32 %10, -1075, !dbg !79
  %37 = shl i32 %5, %36, !dbg !80
  %38 = zext i32 %37 to i64, !dbg !81
  %39 = or i64 %35, %38, !dbg !82
  br label %62, !dbg !83

; <label>:40:                                     ; preds = %29
  %41 = add nsw i32 %10, -1043, !dbg !84
  %42 = lshr i32 -2147483648, %41, !dbg !85
  %43 = add i32 %42, %5, !dbg !86
  %44 = icmp ult i32 %43, %5, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br i1 %44, label %45, label %47, !dbg !90

; <label>:45:                                     ; preds = %40
  %46 = add nuw nsw i32 %13, 1, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br label %47, !dbg !91

; <label>:47:                                     ; preds = %45, %40
  %48 = phi i32 [ %46, %45 ], [ %13, %40 ], !dbg !92
  %49 = zext i32 %48 to i64, !dbg !93
  %50 = zext i32 %41 to i64, !dbg !94
  %51 = shl i64 %49, %50, !dbg !94
  %52 = sub nsw i32 1075, %10, !dbg !95
  %53 = icmp ult i32 %52, 32, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %53, label %54, label %57, !dbg !95

; <label>:54:                                     ; preds = %47
  %55 = lshr i32 %43, %52, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %56 = zext i32 %55 to i64, !dbg !95
  br label %57, !dbg !95

; <label>:57:                                     ; preds = %47, %54
  %58 = phi i64 [ %56, %54 ], [ 0, %47 ]
  %59 = or i64 %58, %51, !dbg !96
  br label %62

; <label>:60:                                     ; preds = %27
  %61 = fptosi double %0 to i64, !dbg !97
  br label %66, !dbg !98

; <label>:62:                                     ; preds = %57, %31, %21
  %63 = phi i64 [ %26, %21 ], [ %39, %31 ], [ %59, %57 ], !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = sext i32 %7 to i64, !dbg !100
  %65 = mul nsw i64 %63, %64, !dbg !101
  br label %66, !dbg !102

; <label>:66:                                     ; preds = %17, %62, %60
  %67 = phi i64 [ %65, %62 ], [ %61, %60 ], [ %20, %17 ], !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  ret i64 %67, !dbg !105
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llround.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "llround", scope: !1, file: !1, line: 18, type: !10, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12}
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !15, !19, !20, !23, !24, !25, !37}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 18, type: !12)
!15 = !DILocalVariable(name: "sign", scope: !9, file: !1, line: 20, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !17, line: 77, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(name: "exponent_less_1023", scope: !9, file: !1, line: 20, type: !16)
!20 = !DILocalVariable(name: "msw", scope: !9, file: !1, line: 22, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !22)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "lsw", scope: !9, file: !1, line: 22, type: !21)
!24 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 23, type: !4)
!25 = !DILocalVariable(name: "ew_u", scope: !26, file: !1, line: 25, type: !27)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 25, column: 3)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !28, line: 278, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 270, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !28, line: 272, baseType: !12, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !29, file: !28, line: 277, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !28, line: 273, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !33, file: !28, line: 275, baseType: !21, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !33, file: !28, line: 276, baseType: !21, size: 32, offset: 32)
!37 = !DILocalVariable(name: "tmp", scope: !38, file: !1, line: 66, type: !22)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 64, column: 9)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 57, column: 11)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 55, column: 5)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 54, column: 12)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 7)
!43 = !DILocation(line: 18, column: 16, scope: !9)
!44 = !DILocation(line: 25, column: 3, scope: !26)
!45 = !DILocation(line: 22, column: 14, scope: !9)
!46 = !DILocation(line: 22, column: 19, scope: !9)
!47 = !DILocation(line: 28, column: 11, scope: !9)
!48 = !DILocation(line: 20, column: 13, scope: !9)
!49 = !DILocation(line: 30, column: 44, scope: !9)
!50 = !DILocation(line: 30, column: 51, scope: !9)
!51 = !DILocation(line: 20, column: 19, scope: !9)
!52 = !DILocation(line: 31, column: 7, scope: !9)
!53 = !DILocation(line: 32, column: 7, scope: !9)
!54 = !DILocation(line: 35, column: 26, scope: !42)
!55 = !DILocation(line: 35, column: 7, scope: !9)
!56 = !DILocation(line: 38, column: 30, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 38, column: 11)
!58 = distinct !DILexicalBlock(scope: !42, file: !1, line: 36, column: 5)
!59 = !DILocation(line: 38, column: 11, scope: !58)
!60 = !DILocation(line: 40, column: 34, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 40, column: 15)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 39, column: 9)
!63 = !DILocation(line: 40, column: 15, scope: !62)
!64 = !DILocation(line: 49, column: 26, scope: !65)
!65 = distinct !DILexicalBlock(scope: !57, file: !1, line: 46, column: 9)
!66 = !DILocation(line: 49, column: 15, scope: !65)
!67 = !DILocation(line: 51, column: 31, scope: !65)
!68 = !DILocation(line: 51, column: 24, scope: !65)
!69 = !DILocation(line: 51, column: 20, scope: !65)
!70 = !DILocation(line: 23, column: 17, scope: !9)
!71 = !DILocation(line: 53, column: 5, scope: !58)
!72 = !DILocation(line: 54, column: 31, scope: !41)
!73 = !DILocation(line: 54, column: 12, scope: !42)
!74 = !DILocation(line: 57, column: 30, scope: !39)
!75 = !DILocation(line: 57, column: 11, scope: !40)
!76 = !DILocation(line: 60, column: 19, scope: !39)
!77 = !DILocation(line: 60, column: 62, scope: !39)
!78 = !DILocation(line: 60, column: 39, scope: !39)
!79 = !DILocation(line: 62, column: 51, scope: !39)
!80 = !DILocation(line: 62, column: 28, scope: !39)
!81 = !DILocation(line: 62, column: 23, scope: !39)
!82 = !DILocation(line: 62, column: 21, scope: !39)
!83 = !DILocation(line: 60, column: 9, scope: !39)
!84 = !DILocation(line: 68, column: 58, scope: !38)
!85 = !DILocation(line: 68, column: 35, scope: !38)
!86 = !DILocation(line: 68, column: 21, scope: !38)
!87 = !DILocation(line: 66, column: 24, scope: !38)
!88 = !DILocation(line: 69, column: 19, scope: !89)
!89 = distinct !DILexicalBlock(scope: !38, file: !1, line: 69, column: 15)
!90 = !DILocation(line: 69, column: 15, scope: !38)
!91 = !DILocation(line: 70, column: 13, scope: !89)
!92 = !DILocation(line: 0, scope: !9)
!93 = !DILocation(line: 72, column: 21, scope: !38)
!94 = !DILocation(line: 72, column: 41, scope: !38)
!95 = !DILocation(line: 74, column: 23, scope: !38)
!96 = !DILocation(line: 74, column: 21, scope: !38)
!97 = !DILocation(line: 79, column: 12, scope: !41)
!98 = !DILocation(line: 79, column: 5, scope: !41)
!99 = !DILocation(line: 0, scope: !38)
!100 = !DILocation(line: 81, column: 10, scope: !9)
!101 = !DILocation(line: 81, column: 15, scope: !9)
!102 = !DILocation(line: 81, column: 3, scope: !9)
!103 = !DILocation(line: 0, scope: !41)
!104 = !DILocation(line: 0, scope: !61)
!105 = !DILocation(line: 82, column: 1, scope: !9)
