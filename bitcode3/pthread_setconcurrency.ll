; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setconcurrency.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setconcurrency.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@pte_concurrency = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_setconcurrency(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp slt i32 %0, 0, !dbg !14
  br i1 %2, label %4, label %3, !dbg !16

; <label>:3:                                      ; preds = %1
  store i32 %0, i32* @pte_concurrency, align 4, !dbg !17, !tbaa !19
  br label %4, !dbg !23

; <label>:4:                                      ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ 22, %1 ], !dbg !24
  ret i32 %5, !dbg !25
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_setconcurrency.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_setconcurrency", scope: !1, file: !1, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "level", arg: 1, scope: !7, file: !1, line: 48, type: !10)
!13 = !DILocation(line: 48, column: 29, scope: !7)
!14 = !DILocation(line: 50, column: 13, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 7)
!16 = !DILocation(line: 50, column: 7, scope: !7)
!17 = !DILocation(line: 56, column: 23, scope: !18)
!18 = distinct !DILexicalBlock(scope: !15, file: !1, line: 55, column: 5)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 57, column: 7, scope: !18)
!24 = !DILocation(line: 0, scope: !18)
!25 = !DILocation(line: 59, column: 1, scope: !7)
