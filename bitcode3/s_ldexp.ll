; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ldexp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ldexp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @ldexp(double, i32) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @finite(double %0) #3, !dbg !17
  %4 = icmp eq i32 %3, 0, !dbg !17
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !19
  %6 = or i1 %5, %4, !dbg !20
  br i1 %6, label %15, label %7, !dbg !20

; <label>:7:                                      ; preds = %2
  %8 = tail call double @scalbn(double %0, i32 %1) #3, !dbg !21
  %9 = tail call i32 @finite(double %8) #3, !dbg !22
  %10 = icmp eq i32 %9, 0, !dbg !22
  %11 = fcmp oeq double %8, 0.000000e+00, !dbg !24
  %12 = or i1 %11, %10, !dbg !25
  br i1 %12, label %13, label %15, !dbg !25

; <label>:13:                                     ; preds = %7
  %14 = tail call i32* @__errno() #3, !dbg !26
  store i32 34, i32* %14, align 4, !dbg !27, !tbaa !28
  br label %15, !dbg !26

; <label>:15:                                     ; preds = %13, %7, %2
  %16 = phi double [ %0, %2 ], [ %8, %7 ], [ %8, %13 ], !dbg !32
  ret double %16, !dbg !33
}

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @scalbn(double, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_ldexp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "ldexp", scope: !1, file: !1, line: 69, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "value", arg: 1, scope: !7, file: !1, line: 69, type: !10)
!14 = !DILocalVariable(name: "exp", arg: 2, scope: !7, file: !1, line: 69, type: !11)
!15 = !DILocation(line: 69, column: 22, scope: !7)
!16 = !DILocation(line: 69, column: 33, scope: !7)
!17 = !DILocation(line: 75, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 75, column: 5)
!19 = !DILocation(line: 75, column: 26, scope: !18)
!20 = !DILocation(line: 75, column: 19, scope: !18)
!21 = !DILocation(line: 76, column: 10, scope: !7)
!22 = !DILocation(line: 77, column: 6, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 77, column: 5)
!24 = !DILocation(line: 77, column: 26, scope: !23)
!25 = !DILocation(line: 77, column: 19, scope: !23)
!26 = !DILocation(line: 77, column: 33, scope: !23)
!27 = !DILocation(line: 77, column: 39, scope: !23)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 0, scope: !7)
!33 = !DILocation(line: 79, column: 1, scope: !7)
