; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_scalb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_scalb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_scalbf(float, float) local_unnamed_addr #0 !dbg !10 {
  %3 = tail call i32 @__fpclassifyf(float %0) #3, !dbg !18
  %4 = icmp eq i32 %3, 0, !dbg !18
  br i1 %4, label %8, label %5, !dbg !20

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @__fpclassifyf(float %1) #3, !dbg !21
  %7 = icmp eq i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %10, !dbg !22

; <label>:8:                                      ; preds = %5, %2
  %9 = fmul float %0, %1, !dbg !23
  br label %37, !dbg !24

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 @finitef(float %1) #3, !dbg !25
  %12 = icmp eq i32 %11, 0, !dbg !25
  br i1 %12, label %13, label %20, !dbg !27

; <label>:13:                                     ; preds = %10
  %14 = fcmp ogt float %1, 0.000000e+00, !dbg !28
  br i1 %14, label %15, label %17, !dbg !31

; <label>:15:                                     ; preds = %13
  %16 = fmul float %0, %1, !dbg !32
  br label %37, !dbg !33

; <label>:17:                                     ; preds = %13
  %18 = fsub float -0.000000e+00, %1, !dbg !34
  %19 = fdiv float %0, %18, !dbg !35
  br label %37, !dbg !36

; <label>:20:                                     ; preds = %10
  %21 = tail call float @rintf(float %1) #3, !dbg !37
  %22 = fcmp une float %21, %1, !dbg !39
  br i1 %22, label %23, label %26, !dbg !40

; <label>:23:                                     ; preds = %20
  %24 = fsub float %1, %1, !dbg !41
  %25 = fdiv float %24, %24, !dbg !42
  br label %37, !dbg !43

; <label>:26:                                     ; preds = %20
  %27 = fcmp ogt float %1, 6.500000e+04, !dbg !44
  br i1 %27, label %28, label %30, !dbg !46

; <label>:28:                                     ; preds = %26
  %29 = tail call float @scalbnf(float %0, i32 65000) #3, !dbg !47
  br label %37, !dbg !48

; <label>:30:                                     ; preds = %26
  %31 = fcmp olt float %1, -6.500000e+04, !dbg !49
  br i1 %31, label %32, label %34, !dbg !51

; <label>:32:                                     ; preds = %30
  %33 = tail call float @scalbnf(float %0, i32 -65000) #3, !dbg !52
  br label %37, !dbg !53

; <label>:34:                                     ; preds = %30
  %35 = fptosi float %1 to i32, !dbg !54
  %36 = tail call float @scalbnf(float %0, i32 %35) #3, !dbg !55
  br label %37, !dbg !56

; <label>:37:                                     ; preds = %34, %32, %28, %23, %17, %15, %8
  %38 = phi float [ %9, %8 ], [ %25, %23 ], [ %29, %28 ], [ %33, %32 ], [ %36, %34 ], [ %16, %15 ], [ %19, %17 ], !dbg !57
  ret float %38, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @rintf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @scalbnf(float, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_scalb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "__ieee754_scalbf", scope: !1, file: !1, line: 28, type: !11, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4, !4}
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 28, type: !4)
!15 = !DILocalVariable(name: "fn", arg: 2, scope: !10, file: !1, line: 28, type: !4)
!16 = !DILocation(line: 28, column: 31, scope: !10)
!17 = !DILocation(line: 28, column: 40, scope: !10)
!18 = !DILocation(line: 38, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !10, file: !1, line: 38, column: 6)
!20 = !DILocation(line: 38, column: 14, scope: !19)
!21 = !DILocation(line: 38, column: 16, scope: !19)
!22 = !DILocation(line: 38, column: 6, scope: !10)
!23 = !DILocation(line: 38, column: 35, scope: !19)
!24 = !DILocation(line: 38, column: 27, scope: !19)
!25 = !DILocation(line: 39, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 39, column: 6)
!27 = !DILocation(line: 39, column: 6, scope: !10)
!28 = !DILocation(line: 40, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 40, column: 9)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 39, column: 20)
!31 = !DILocation(line: 40, column: 9, scope: !30)
!32 = !DILocation(line: 40, column: 32, scope: !29)
!33 = !DILocation(line: 40, column: 24, scope: !29)
!34 = !DILocation(line: 41, column: 27, scope: !29)
!35 = !DILocation(line: 41, column: 25, scope: !29)
!36 = !DILocation(line: 41, column: 17, scope: !29)
!37 = !DILocation(line: 43, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !10, file: !1, line: 43, column: 6)
!39 = !DILocation(line: 43, column: 15, scope: !38)
!40 = !DILocation(line: 43, column: 6, scope: !10)
!41 = !DILocation(line: 43, column: 31, scope: !38)
!42 = !DILocation(line: 43, column: 35, scope: !38)
!43 = !DILocation(line: 43, column: 21, scope: !38)
!44 = !DILocation(line: 45, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 7)
!46 = !DILocation(line: 45, column: 7, scope: !10)
!47 = !DILocation(line: 45, column: 35, scope: !45)
!48 = !DILocation(line: 45, column: 28, scope: !45)
!49 = !DILocation(line: 46, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 46, column: 6)
!51 = !DILocation(line: 46, column: 6, scope: !10)
!52 = !DILocation(line: 46, column: 35, scope: !50)
!53 = !DILocation(line: 46, column: 28, scope: !50)
!54 = !DILocation(line: 51, column: 19, scope: !10)
!55 = !DILocation(line: 51, column: 9, scope: !10)
!56 = !DILocation(line: 51, column: 2, scope: !10)
!57 = !DILocation(line: 0, scope: !29)
!58 = !DILocation(line: 53, column: 1, scope: !10)
