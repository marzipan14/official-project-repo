; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_equal.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_equal.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_equal(i8* readnone, i32, i8* readnone, i32) local_unnamed_addr #0 !dbg !7 {
  %5 = icmp eq i8* %0, %2, !dbg !26
  %6 = icmp eq i32 %1, %3, !dbg !27
  %7 = and i1 %5, %6, !dbg !28
  %8 = zext i1 %7 to i32, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  ret i32 %8, !dbg !30
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_equal.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_equal", scope: !1, file: !1, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !12, line: 413, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_handle_t", file: !12, line: 411, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 395, size: 128, elements: !15)
!15 = !{!16, !18}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !14, file: !12, line: 398, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !14, file: !12, line: 399, baseType: !19, size: 32, offset: 64)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(name: "t1", arg: 1, scope: !7, file: !1, line: 48, type: !11)
!22 = !DILocalVariable(name: "t2", arg: 2, scope: !7, file: !1, line: 48, type: !11)
!23 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 72, type: !10)
!24 = !DILocation(line: 48, column: 26, scope: !7)
!25 = !DILocation(line: 48, column: 40, scope: !7)
!26 = !DILocation(line: 78, column: 19, scope: !7)
!27 = !DILocation(line: 78, column: 35, scope: !7)
!28 = !DILocation(line: 78, column: 27, scope: !7)
!29 = !DILocation(line: 72, column: 7, scope: !7)
!30 = !DILocation(line: 80, column: 3, scope: !7)
