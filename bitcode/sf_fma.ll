; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @fmaf(float, float, float) local_unnamed_addr #0 !dbg !10 {
  %4 = fpext float %0 to double, !dbg !20
  %5 = fpext float %1 to double, !dbg !21
  %6 = fmul double %4, %5, !dbg !22
  %7 = fpext float %2 to double, !dbg !23
  %8 = fadd double %6, %7, !dbg !24
  %9 = fptrunc double %8 to float, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  ret float %9, !dbg !26
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fma.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "fmaf", scope: !1, file: !1, line: 10, type: !11, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4, !4, !4}
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 10, type: !4)
!15 = !DILocalVariable(name: "y", arg: 2, scope: !10, file: !1, line: 10, type: !4)
!16 = !DILocalVariable(name: "z", arg: 3, scope: !10, file: !1, line: 10, type: !4)
!17 = !DILocation(line: 10, column: 19, scope: !10)
!18 = !DILocation(line: 10, column: 28, scope: !10)
!19 = !DILocation(line: 10, column: 37, scope: !10)
!20 = !DILocation(line: 25, column: 20, scope: !10)
!21 = !DILocation(line: 25, column: 33, scope: !10)
!22 = !DILocation(line: 25, column: 31, scope: !10)
!23 = !DILocation(line: 25, column: 47, scope: !10)
!24 = !DILocation(line: 25, column: 45, scope: !10)
!25 = !DILocation(line: 25, column: 10, scope: !10)
!26 = !DILocation(line: 25, column: 3, scope: !10)
