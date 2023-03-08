; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fdim.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fdim.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @fdim(double, double) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @__fpclassifyd(double %0) #3, !dbg !18
  %4 = icmp eq i32 %3, 0, !dbg !20
  br i1 %4, label %14, label %5, !dbg !22

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @__fpclassifyd(double %1) #3, !dbg !23
  %7 = icmp eq i32 %6, 0, !dbg !25
  br i1 %7, label %14, label %8, !dbg !26

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i32 %3, 1, !dbg !27
  br i1 %9, label %14, label %10, !dbg !29

; <label>:10:                                     ; preds = %8
  %11 = fcmp ogt double %0, %1, !dbg !30
  %12 = fsub double %0, %1, !dbg !31
  %13 = select i1 %11, double %12, double 0.000000e+00, !dbg !32
  br label %14, !dbg !32

; <label>:14:                                     ; preds = %10, %8, %5, %2
  %15 = phi double [ %0, %2 ], [ %1, %5 ], [ 0x7FF0000000000000, %8 ], [ %13, %10 ], !dbg !33
  ret double %15, !dbg !34
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fdim.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fdim", scope: !1, file: !1, line: 45, type: !8, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !{!12, !13, !14}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 45, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 45, type: !10)
!14 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 52, type: !15)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocation(line: 45, column: 21, scope: !7)
!17 = !DILocation(line: 45, column: 31, scope: !7)
!18 = !DILocation(line: 52, column: 11, scope: !7)
!19 = !DILocation(line: 52, column: 7, scope: !7)
!20 = !DILocation(line: 53, column: 9, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 7)
!22 = !DILocation(line: 53, column: 7, scope: !7)
!23 = !DILocation(line: 54, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 7)
!25 = !DILocation(line: 54, column: 24, scope: !24)
!26 = !DILocation(line: 54, column: 7, scope: !7)
!27 = !DILocation(line: 55, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 55, column: 7)
!29 = !DILocation(line: 55, column: 7, scope: !7)
!30 = !DILocation(line: 58, column: 12, scope: !7)
!31 = !DILocation(line: 58, column: 20, scope: !7)
!32 = !DILocation(line: 58, column: 10, scope: !7)
!33 = !DILocation(line: 0, scope: !7)
!34 = !DILocation(line: 59, column: 1, scope: !7)
