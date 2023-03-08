; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_signif.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_signif.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @significandf(float) local_unnamed_addr #0 !dbg !9 {
  %2 = tail call i32 @ilogbf(float %0) #3, !dbg !15
  %3 = sub nsw i32 0, %2, !dbg !16
  %4 = sitofp i32 %3 to float, !dbg !17
  %5 = tail call float @__ieee754_scalbf(float %0, float %4) #3, !dbg !18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !19
  ret float %5, !dbg !19
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_scalbf(float, float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @ilogbf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_signif.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "significandf", scope: !1, file: !1, line: 19, type: !10, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !{!13}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 19, type: !4)
!14 = !DILocation(line: 19, column: 27, scope: !9)
!15 = !DILocation(line: 25, column: 37, scope: !9)
!16 = !DILocation(line: 25, column: 36, scope: !9)
!17 = !DILocation(line: 25, column: 28, scope: !9)
!18 = !DILocation(line: 25, column: 9, scope: !9)
!19 = !DILocation(line: 25, column: 2, scope: !9)
