; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_infinity.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_infinity.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @infinity() local_unnamed_addr #0 !dbg !7 {
  ret double 0x7FF0000000000000, !dbg !29
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_infinity.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "infinity", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 43, type: !10)
!13 = !DILocalVariable(name: "iw_u", scope: !14, file: !1, line: 45, type: !15)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 45, column: 2)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !16, line: 278, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!17 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !16, line: 270, size: 64, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !17, file: !16, line: 272, baseType: !10, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !17, file: !16, line: 277, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !16, line: 273, size: 64, elements: !22)
!22 = !{!23, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !21, file: !16, line: 275, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !21, file: !16, line: 276, baseType: !24, size: 32, offset: 32)
!28 = !DILocation(line: 43, column: 9, scope: !7)
!29 = !DILocation(line: 46, column: 2, scope: !7)
