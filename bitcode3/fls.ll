; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/fls.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/fls.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @fls(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp eq i32 %0, 0, !dbg !14
  br i1 %2, label %6, label %3, !dbg !16

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true), !dbg !17, !range !18
  %5 = sub nsw i32 32, %4, !dbg !19
  br label %6, !dbg !20

; <label>:6:                                      ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ], !dbg !21
  ret i32 %7, !dbg !22
}

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctlz.i32(i32, i1) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/fls.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fls", scope: !1, file: !1, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "i", arg: 1, scope: !7, file: !1, line: 31, type: !10)
!13 = !DILocation(line: 31, column: 9, scope: !7)
!14 = !DILocation(line: 34, column: 8, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 34, column: 6)
!16 = !DILocation(line: 34, column: 6, scope: !7)
!17 = !DILocation(line: 37, column: 33, scope: !7)
!18 = !{i32 0, i32 33}
!19 = !DILocation(line: 37, column: 31, scope: !7)
!20 = !DILocation(line: 37, column: 2, scope: !7)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 38, column: 1, scope: !7)
