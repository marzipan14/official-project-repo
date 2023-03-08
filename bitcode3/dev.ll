; ModuleID = '/root/.unikraft/libs/newlib/dev.c'
source_filename = "/root/.unikraft/libs/newlib/dev.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @major(i16 signext) local_unnamed_addr #0 !dbg !7 {
  ret i32 0, !dbg !19
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @minor(i16 signext) local_unnamed_addr #0 !dbg !20 {
  ret i32 0, !dbg !24
}

; Function Attrs: noredzone nounwind readnone
define dso_local signext i16 @makedev(i32, i32) local_unnamed_addr #0 !dbg !25 {
  ret i16 0, !dbg !33
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/dev.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "major", scope: !1, file: !1, line: 37, type: !8, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !14, line: 54, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(name: "dev", arg: 1, scope: !7, file: !1, line: 37, type: !11)
!18 = !DILocation(line: 37, column: 26, scope: !7)
!19 = !DILocation(line: 39, column: 2, scope: !7)
!20 = distinct !DISubprogram(name: "minor", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!21 = !{!22}
!22 = !DILocalVariable(name: "dev", arg: 1, scope: !20, file: !1, line: 42, type: !11)
!23 = !DILocation(line: 42, column: 26, scope: !20)
!24 = !DILocation(line: 44, column: 2, scope: !20)
!25 = distinct !DISubprogram(name: "makedev", scope: !1, file: !1, line: 47, type: !26, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!11, !10, !10}
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "maj", arg: 1, scope: !25, file: !1, line: 47, type: !10)
!30 = !DILocalVariable(name: "min", arg: 2, scope: !25, file: !1, line: 47, type: !10)
!31 = !DILocation(line: 47, column: 28, scope: !25)
!32 = !DILocation(line: 47, column: 55, scope: !25)
!33 = !DILocation(line: 49, column: 2, scope: !25)
