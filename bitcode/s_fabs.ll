; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_fabs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_fabs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @fabs(double) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast double %0 to i64, !dbg !32
  %3 = and i64 %2, 9223372036854775807, !dbg !33
  %4 = bitcast i64 %3 to double, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  ret double %4, !dbg !34
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_fabs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fabs", scope: !1, file: !1, line: 61, type: !8, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !29}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 61, type: !10)
!13 = !DILocalVariable(name: "high", scope: !7, file: !1, line: 67, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "gh_u", scope: !18, file: !1, line: 68, type: !19)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 68, column: 2)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !20, line: 278, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !20, line: 270, size: 64, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !21, file: !20, line: 272, baseType: !10, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !21, file: !20, line: 277, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !21, file: !20, line: 273, size: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !25, file: !20, line: 275, baseType: !14, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !25, file: !20, line: 276, baseType: !14, size: 32, offset: 32)
!29 = !DILocalVariable(name: "sh_u", scope: !30, file: !1, line: 69, type: !19)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 69, column: 2)
!31 = !DILocation(line: 61, column: 21, scope: !7)
!32 = !DILocation(line: 68, column: 2, scope: !18)
!33 = !DILocation(line: 69, column: 2, scope: !30)
!34 = !DILocation(line: 70, column: 9, scope: !7)
