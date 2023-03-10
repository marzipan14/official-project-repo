; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxdiv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxdiv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local { i64, i64 } @imaxdiv(i64, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = sdiv i64 %0, %1, !dbg !27
  %4 = srem i64 %0, %1, !dbg !29
  %5 = insertvalue { i64, i64 } undef, i64 %3, 0, !dbg !30
  %6 = insertvalue { i64, i64 } %5, i64 %4, 1, !dbg !30
  ret { i64, i64 } %6, !dbg !30
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxdiv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "imaxdiv", scope: !1, file: !1, line: 35, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "imaxdiv_t", file: !11, line: 315, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/inttypes.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 312, size: 128, elements: !13)
!13 = !{!14, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !12, file: !11, line: 313, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !16, line: 67, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !18, line: 214, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !12, file: !11, line: 314, baseType: !15, size: 64, offset: 64)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "numer", arg: 1, scope: !7, file: !1, line: 35, type: !15)
!23 = !DILocalVariable(name: "denom", arg: 2, scope: !7, file: !1, line: 35, type: !15)
!24 = !DILocalVariable(name: "retval", scope: !7, file: !1, line: 37, type: !10)
!25 = !DILocation(line: 35, column: 18, scope: !7)
!26 = !DILocation(line: 35, column: 34, scope: !7)
!27 = !DILocation(line: 39, column: 22, scope: !7)
!28 = !DILocation(line: 37, column: 12, scope: !7)
!29 = !DILocation(line: 40, column: 21, scope: !7)
!30 = !DILocation(line: 47, column: 2, scope: !7)
