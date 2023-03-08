; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fmin.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fmin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @fminf(float, float) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @__fpclassifyf(float %0) #3, !dbg !16
  %4 = icmp eq i32 %3, 0, !dbg !18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !19
  br i1 %4, label %11, label %5, !dbg !19

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @__fpclassifyf(float %1) #3, !dbg !20
  %7 = icmp eq i32 %6, 0, !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  br i1 %7, label %11, label %8, !dbg !23

; <label>:8:                                      ; preds = %5
  %9 = fcmp olt float %0, %1, !dbg !24
  %10 = select i1 %9, float %0, float %1, !dbg !25
  br label %11, !dbg !26

; <label>:11:                                     ; preds = %5, %2, %8
  %12 = phi float [ %10, %8 ], [ %1, %2 ], [ %0, %5 ], !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  ret float %12, !dbg !29
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fmin.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fminf", scope: !1, file: !1, line: 10, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 10, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 10, type: !10)
!14 = !DILocation(line: 10, column: 20, scope: !7)
!15 = !DILocation(line: 10, column: 29, scope: !7)
!16 = !DILocation(line: 17, column: 7, scope: !17)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 17, column: 7)
!18 = !DILocation(line: 17, column: 24, scope: !17)
!19 = !DILocation(line: 17, column: 7, scope: !7)
!20 = !DILocation(line: 19, column: 7, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 7)
!22 = !DILocation(line: 19, column: 24, scope: !21)
!23 = !DILocation(line: 19, column: 7, scope: !7)
!24 = !DILocation(line: 22, column: 12, scope: !7)
!25 = !DILocation(line: 22, column: 10, scope: !7)
!26 = !DILocation(line: 22, column: 3, scope: !7)
!27 = !DILocation(line: 0, scope: !7)
!28 = !DILocation(line: 0, scope: !17)
!29 = !DILocation(line: 23, column: 1, scope: !7)
