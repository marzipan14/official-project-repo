; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_trunc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_trunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @trunc(double) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast double %0 to i64, !dbg !47
  %3 = lshr i64 %2, 32, !dbg !47
  %4 = trunc i64 %3 to i32, !dbg !47
  %5 = trunc i64 %2 to i32, !dbg !47
  %6 = and i32 %4, -2147483648, !dbg !50
  %7 = lshr i64 %2, 52, !dbg !52
  %8 = trunc i64 %7 to i32, !dbg !52
  %9 = and i32 %8, 2047, !dbg !52
  %10 = add nsw i32 %9, -1023, !dbg !53
  %11 = icmp ult i32 %9, 1043, !dbg !55
  br i1 %11, label %12, label %23, !dbg !56

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %9, 1023, !dbg !57
  br i1 %13, label %14, label %17, !dbg !58

; <label>:14:                                     ; preds = %12
  %15 = zext i32 %6 to i64, !dbg !59
  %16 = shl nuw i64 %15, 32, !dbg !59
  br label %37, !dbg !60

; <label>:17:                                     ; preds = %12
  %18 = ashr i32 -1048576, %10, !dbg !61
  %19 = and i32 %18, %4, !dbg !61
  %20 = or i32 %19, %6, !dbg !61
  %21 = zext i32 %20 to i64, !dbg !61
  %22 = shl nuw i64 %21, 32, !dbg !61
  br label %37

; <label>:23:                                     ; preds = %1
  %24 = icmp ugt i32 %9, 1074, !dbg !62
  br i1 %24, label %25, label %29, !dbg !63

; <label>:25:                                     ; preds = %23
  %26 = icmp eq i32 %10, 1024, !dbg !64
  %27 = fadd double %0, %0, !dbg !67
  %28 = select i1 %26, double %27, double %0, !dbg !69
  ret double %28, !dbg !69

; <label>:29:                                     ; preds = %23
  %30 = and i64 %2, -4294967296, !dbg !70
  %31 = add nsw i32 %9, -1043, !dbg !70
  %32 = lshr i32 -1, %31, !dbg !70
  %33 = xor i32 %32, -1, !dbg !70
  %34 = and i32 %33, %5, !dbg !70
  %35 = zext i32 %34 to i64, !dbg !70
  %36 = or i64 %30, %35, !dbg !70
  br label %37

; <label>:37:                                     ; preds = %17, %14, %29
  %38 = phi i64 [ %16, %14 ], [ %22, %17 ], [ %36, %29 ]
  %39 = bitcast i64 %38 to double, !dbg !71
  ret double %39, !dbg !72
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_trunc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "trunc", scope: !1, file: !1, line: 46, type: !8, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !15, !16, !18, !19, !33, !39, !42}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 46, type: !10)
!13 = !DILocalVariable(name: "signbit", scope: !7, file: !1, line: 52, type: !14)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "msw", scope: !7, file: !1, line: 54, type: !14)
!16 = !DILocalVariable(name: "lsw", scope: !7, file: !1, line: 55, type: !17)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "exponent_less_1023", scope: !7, file: !1, line: 56, type: !14)
!19 = !DILocalVariable(name: "ew_u", scope: !20, file: !1, line: 58, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !22, line: 278, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 270, size: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 272, baseType: !10, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !23, file: !22, line: 277, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !23, file: !22, line: 273, size: 64, elements: !28)
!28 = !{!29, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !27, file: !22, line: 275, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 79, baseType: !17)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !27, file: !22, line: 276, baseType: !30, size: 32, offset: 32)
!33 = !DILocalVariable(name: "iw_u", scope: !34, file: !1, line: 72, type: !21)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 72, column: 11)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 70, column: 9)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 69, column: 11)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 67, column: 5)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 66, column: 7)
!39 = !DILocalVariable(name: "iw_u", scope: !40, file: !1, line: 77, type: !21)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 77, column: 11)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 75, column: 9)
!42 = !DILocalVariable(name: "iw_u", scope: !43, file: !1, line: 93, type: !21)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 93, column: 7)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 90, column: 5)
!45 = distinct !DILexicalBlock(scope: !38, file: !1, line: 80, column: 12)
!46 = !DILocation(line: 46, column: 22, scope: !7)
!47 = !DILocation(line: 58, column: 3, scope: !20)
!48 = !DILocation(line: 54, column: 7, scope: !7)
!49 = !DILocation(line: 55, column: 16, scope: !7)
!50 = !DILocation(line: 61, column: 17, scope: !7)
!51 = !DILocation(line: 52, column: 7, scope: !7)
!52 = !DILocation(line: 64, column: 44, scope: !7)
!53 = !DILocation(line: 64, column: 51, scope: !7)
!54 = !DILocation(line: 56, column: 7, scope: !7)
!55 = !DILocation(line: 66, column: 26, scope: !38)
!56 = !DILocation(line: 66, column: 7, scope: !7)
!57 = !DILocation(line: 69, column: 30, scope: !36)
!58 = !DILocation(line: 69, column: 11, scope: !37)
!59 = !DILocation(line: 72, column: 11, scope: !34)
!60 = !DILocation(line: 73, column: 9, scope: !35)
!61 = !DILocation(line: 77, column: 11, scope: !40)
!62 = !DILocation(line: 80, column: 31, scope: !45)
!63 = !DILocation(line: 80, column: 12, scope: !38)
!64 = !DILocation(line: 82, column: 30, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 82, column: 11)
!66 = distinct !DILexicalBlock(scope: !45, file: !1, line: 81, column: 5)
!67 = !DILocation(line: 85, column: 20, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 83, column: 9)
!69 = !DILocation(line: 82, column: 11, scope: !66)
!70 = !DILocation(line: 93, column: 7, scope: !43)
!71 = !DILocation(line: 0, scope: !68)
!72 = !DILocation(line: 96, column: 1, scope: !7)
