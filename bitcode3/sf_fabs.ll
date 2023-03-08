; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_fabs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_fabs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @fabsf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !28
  %3 = and i32 %2, 2147483647, !dbg !30
  %4 = bitcast i32 %3 to float, !dbg !30
  ret float %4, !dbg !31
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_fabs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fabsf", scope: !1, file: !1, line: 23, type: !8, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !25}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 23, type: !10)
!13 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "gf_u", scope: !18, file: !1, line: 30, type: !19)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 2)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !20, line: 347, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !20, line: 343, size: 32, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !21, file: !20, line: 345, baseType: !10, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !21, file: !20, line: 346, baseType: !14, size: 32)
!25 = !DILocalVariable(name: "sf_u", scope: !26, file: !1, line: 31, type: !19)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 2)
!27 = !DILocation(line: 23, column: 20, scope: !7)
!28 = !DILocation(line: 30, column: 2, scope: !18)
!29 = !DILocation(line: 29, column: 13, scope: !7)
!30 = !DILocation(line: 31, column: 2, scope: !26)
!31 = !DILocation(line: 32, column: 9, scope: !7)
