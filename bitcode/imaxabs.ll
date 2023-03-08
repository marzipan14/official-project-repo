; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxabs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxabs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @imaxabs(i64) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp slt i64 %0, 0, !dbg !18
  %3 = sub nsw i64 0, %0, !dbg !19
  %4 = select i1 %2, i64 %3, i64 %0, !dbg !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !21
  ret i64 %4, !dbg !21
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/imaxabs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "imaxabs", scope: !1, file: !1, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !11, line: 67, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !13, line: 214, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DILocalVariable(name: "j", arg: 1, scope: !7, file: !1, line: 33, type: !10)
!17 = !DILocation(line: 33, column: 18, scope: !7)
!18 = !DILocation(line: 35, column: 12, scope: !7)
!19 = !DILocation(line: 35, column: 18, scope: !7)
!20 = !DILocation(line: 35, column: 10, scope: !7)
!21 = !DILocation(line: 35, column: 2, scope: !7)
