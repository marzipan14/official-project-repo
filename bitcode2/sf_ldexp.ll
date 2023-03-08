; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_ldexp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_ldexp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @ldexpf(float, i32) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call i32 @finitef(float %0) #3, !dbg !18
  %4 = icmp eq i32 %3, 0, !dbg !18
  %5 = fcmp oeq float %0, 0.000000e+00, !dbg !20
  %6 = or i1 %5, %4, !dbg !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !21
  br i1 %6, label %15, label %7, !dbg !21

; <label>:7:                                      ; preds = %2
  %8 = tail call float @scalbnf(float %0, i32 %1) #3, !dbg !22
  %9 = tail call i32 @finitef(float %8) #3, !dbg !23
  %10 = icmp eq i32 %9, 0, !dbg !23
  %11 = fcmp oeq float %8, 0.000000e+00, !dbg !25
  %12 = or i1 %11, %10, !dbg !26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  br i1 %12, label %13, label %15, !dbg !26

; <label>:13:                                     ; preds = %7
  %14 = tail call i32* @__errno() #3, !dbg !27
  store i32 34, i32* %14, align 4, !dbg !28, !tbaa !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br label %15, !dbg !27

; <label>:15:                                     ; preds = %13, %7, %2
  %16 = phi float [ %0, %2 ], [ %8, %7 ], [ %8, %13 ], !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret float %16, !dbg !35
}

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @scalbnf(float, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_ldexp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "ldexpf", scope: !1, file: !1, line: 20, type: !10, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "value", arg: 1, scope: !9, file: !1, line: 20, type: !4)
!15 = !DILocalVariable(name: "exp", arg: 2, scope: !9, file: !1, line: 20, type: !12)
!16 = !DILocation(line: 20, column: 21, scope: !9)
!17 = !DILocation(line: 20, column: 32, scope: !9)
!18 = !DILocation(line: 26, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 26, column: 5)
!20 = !DILocation(line: 26, column: 27, scope: !19)
!21 = !DILocation(line: 26, column: 20, scope: !19)
!22 = !DILocation(line: 27, column: 10, scope: !9)
!23 = !DILocation(line: 28, column: 6, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 28, column: 5)
!25 = !DILocation(line: 28, column: 27, scope: !24)
!26 = !DILocation(line: 28, column: 20, scope: !24)
!27 = !DILocation(line: 28, column: 41, scope: !24)
!28 = !DILocation(line: 28, column: 47, scope: !24)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 0, scope: !9)
!34 = !DILocation(line: 0, scope: !19)
!35 = !DILocation(line: 30, column: 1, scope: !9)
