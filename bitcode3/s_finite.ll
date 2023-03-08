; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_finite.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_finite.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @finite(double) local_unnamed_addr #0 !dbg !12 {
  %2 = bitcast double %0 to i64, !dbg !33
  %3 = lshr i64 %2, 32, !dbg !33
  %4 = trunc i64 %3 to i32, !dbg !33
  %5 = and i32 %4, 2147483647, !dbg !35
  %6 = add nsw i32 %5, -2146435072, !dbg !36
  %7 = lshr i32 %6, 31, !dbg !37
  ret i32 %7, !dbg !38
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_finite.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 79, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "finite", scope: !1, file: !1, line: 24, type: !13, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15}
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!17, !18, !20}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 24, type: !15)
!18 = !DILocalVariable(name: "hx", scope: !12, file: !1, line: 30, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !6, line: 77, baseType: !4)
!20 = !DILocalVariable(name: "gh_u", scope: !21, file: !1, line: 31, type: !22)
!21 = distinct !DILexicalBlock(scope: !12, file: !1, line: 31, column: 2)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !23, line: 278, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 270, size: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !24, file: !23, line: 272, baseType: !15, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !24, file: !23, line: 277, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !23, line: 273, size: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !28, file: !23, line: 275, baseType: !5, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !28, file: !23, line: 276, baseType: !5, size: 32, offset: 32)
!32 = !DILocation(line: 24, column: 20, scope: !12)
!33 = !DILocation(line: 31, column: 2, scope: !21)
!34 = !DILocation(line: 30, column: 12, scope: !12)
!35 = !DILocation(line: 32, column: 32, scope: !12)
!36 = !DILocation(line: 32, column: 44, scope: !12)
!37 = !DILocation(line: 32, column: 56, scope: !12)
!38 = !DILocation(line: 32, column: 2, scope: !12)
