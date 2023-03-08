; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/init.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @lwip_init() local_unnamed_addr #0 !dbg !7 {
  tail call void @stats_init() #3, !dbg !14
  tail call void @sys_init() #3, !dbg !15
  tail call void @mem_init() #3, !dbg !16
  tail call void @memp_init() #3, !dbg !17
  tail call void @netif_init() #3, !dbg !18
  tail call void @udp_init() #3, !dbg !19
  tail call void @tcp_init() #3, !dbg !20
  tail call void @dns_init() #3, !dbg !21
  tail call void @sys_timeouts_init() #3, !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  ret void, !dbg !23
}

; Function Attrs: noredzone
declare dso_local void @stats_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sys_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @mem_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @memp_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @netif_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @udp_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @tcp_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @dns_init() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @sys_timeouts_init() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "lwip_init", scope: !1, file: !1, line: 332, type: !8, isLocal: false, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11}
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 335, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocation(line: 335, column: 7, scope: !7)
!14 = !DILocation(line: 344, column: 3, scope: !7)
!15 = !DILocation(line: 346, column: 3, scope: !7)
!16 = !DILocation(line: 348, column: 3, scope: !7)
!17 = !DILocation(line: 349, column: 3, scope: !7)
!18 = !DILocation(line: 351, column: 3, scope: !7)
!19 = !DILocation(line: 362, column: 3, scope: !7)
!20 = !DILocation(line: 365, column: 3, scope: !7)
!21 = !DILocation(line: 371, column: 3, scope: !7)
!22 = !DILocation(line: 378, column: 3, scope: !7)
!23 = !DILocation(line: 380, column: 1, scope: !7)
