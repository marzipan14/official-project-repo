; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_copysign.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_copysign.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @copysign(double, double) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast double %0 to i64, !dbg !37
  %4 = bitcast double %1 to i64, !dbg !38
  %5 = and i64 %4, -9223372036854775808, !dbg !39
  %6 = and i64 %3, 9223372036854775807, !dbg !39
  %7 = or i64 %6, %5, !dbg !39
  %8 = bitcast i64 %7 to double, !dbg !39
  ret double %8, !dbg !40
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_copysign.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "copysign", scope: !1, file: !1, line: 69, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !18, !19, !31, !33}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 69, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 69, type: !10)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 75, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "hy", scope: !7, file: !1, line: 75, type: !15)
!19 = !DILocalVariable(name: "gh_u", scope: !20, file: !1, line: 76, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 76, column: 2)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !22, line: 278, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 270, size: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 272, baseType: !10, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !23, file: !22, line: 277, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !23, file: !22, line: 273, size: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !27, file: !22, line: 275, baseType: !15, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !27, file: !22, line: 276, baseType: !15, size: 32, offset: 32)
!31 = !DILocalVariable(name: "gh_u", scope: !32, file: !1, line: 77, type: !21)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 77, column: 2)
!33 = !DILocalVariable(name: "sh_u", scope: !34, file: !1, line: 78, type: !21)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 78, column: 2)
!35 = !DILocation(line: 69, column: 25, scope: !7)
!36 = !DILocation(line: 69, column: 35, scope: !7)
!37 = !DILocation(line: 76, column: 2, scope: !20)
!38 = !DILocation(line: 77, column: 2, scope: !32)
!39 = !DILocation(line: 78, column: 2, scope: !34)
!40 = !DILocation(line: 79, column: 9, scope: !7)
