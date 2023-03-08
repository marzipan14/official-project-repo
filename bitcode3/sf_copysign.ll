; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_copysign.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_copysign.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @copysignf(float, float) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast float %0 to i32, !dbg !33
  %4 = bitcast float %1 to i32, !dbg !35
  %5 = and i32 %3, 2147483647, !dbg !37
  %6 = and i32 %4, -2147483648, !dbg !37
  %7 = or i32 %6, %5, !dbg !37
  %8 = bitcast i32 %7 to float, !dbg !37
  ret float %8, !dbg !38
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_copysign.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "copysignf", scope: !1, file: !1, line: 25, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !18, !19, !27, !29}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 25, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 25, type: !10)
!14 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 31, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "iy", scope: !7, file: !1, line: 31, type: !15)
!19 = !DILocalVariable(name: "gf_u", scope: !20, file: !1, line: 32, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 2)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !22, line: 347, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 343, size: 32, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 345, baseType: !10, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !23, file: !22, line: 346, baseType: !15, size: 32)
!27 = !DILocalVariable(name: "gf_u", scope: !28, file: !1, line: 33, type: !21)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 2)
!29 = !DILocalVariable(name: "sf_u", scope: !30, file: !1, line: 34, type: !21)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 34, column: 2)
!31 = !DILocation(line: 25, column: 24, scope: !7)
!32 = !DILocation(line: 25, column: 33, scope: !7)
!33 = !DILocation(line: 32, column: 2, scope: !20)
!34 = !DILocation(line: 31, column: 13, scope: !7)
!35 = !DILocation(line: 33, column: 2, scope: !28)
!36 = !DILocation(line: 31, column: 16, scope: !7)
!37 = !DILocation(line: 34, column: 2, scope: !30)
!38 = !DILocation(line: 35, column: 9, scope: !7)
