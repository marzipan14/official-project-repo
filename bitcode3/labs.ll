; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/labs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/labs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @labs(i64) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp slt i64 %0, 0, !dbg !14
  %3 = sub nsw i64 0, %0, !dbg !16
  %4 = select i1 %2, i64 %3, i64 %0, !dbg !18
  ret i64 %4, !dbg !19
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/labs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "labs", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 41, type: !10)
!13 = !DILocation(line: 41, column: 1, scope: !7)
!14 = !DILocation(line: 44, column: 9, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 44, column: 7)
!16 = !DILocation(line: 46, column: 11, scope: !17)
!17 = distinct !DILexicalBlock(scope: !15, file: !1, line: 45, column: 5)
!18 = !DILocation(line: 44, column: 7, scope: !7)
!19 = !DILocation(line: 48, column: 3, scope: !7)
