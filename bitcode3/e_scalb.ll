; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_scalb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_scalb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_scalb(double, double) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call i32 @__fpclassifyd(double %0) #3, !dbg !18
  %4 = icmp eq i32 %3, 0, !dbg !18
  br i1 %4, label %8, label %5, !dbg !20

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @__fpclassifyd(double %1) #3, !dbg !21
  %7 = icmp eq i32 %6, 0, !dbg !21
  br i1 %7, label %8, label %10, !dbg !22

; <label>:8:                                      ; preds = %5, %2
  %9 = fmul double %0, %1, !dbg !23
  br label %37, !dbg !24

; <label>:10:                                     ; preds = %5
  %11 = tail call i32 @finite(double %1) #3, !dbg !25
  %12 = icmp eq i32 %11, 0, !dbg !25
  br i1 %12, label %13, label %20, !dbg !27

; <label>:13:                                     ; preds = %10
  %14 = fcmp ogt double %1, 0.000000e+00, !dbg !28
  br i1 %14, label %15, label %17, !dbg !31

; <label>:15:                                     ; preds = %13
  %16 = fmul double %0, %1, !dbg !32
  br label %37, !dbg !33

; <label>:17:                                     ; preds = %13
  %18 = fsub double -0.000000e+00, %1, !dbg !34
  %19 = fdiv double %0, %18, !dbg !35
  br label %37, !dbg !36

; <label>:20:                                     ; preds = %10
  %21 = tail call double @rint(double %1) #3, !dbg !37
  %22 = fcmp une double %21, %1, !dbg !39
  br i1 %22, label %23, label %26, !dbg !40

; <label>:23:                                     ; preds = %20
  %24 = fsub double %1, %1, !dbg !41
  %25 = fdiv double %24, %24, !dbg !42
  br label %37, !dbg !43

; <label>:26:                                     ; preds = %20
  %27 = fcmp ogt double %1, 6.500000e+04, !dbg !44
  br i1 %27, label %28, label %30, !dbg !46

; <label>:28:                                     ; preds = %26
  %29 = tail call double @scalbn(double %0, i32 65000) #3, !dbg !47
  br label %37, !dbg !48

; <label>:30:                                     ; preds = %26
  %31 = fcmp olt double %1, -6.500000e+04, !dbg !49
  br i1 %31, label %32, label %34, !dbg !51

; <label>:32:                                     ; preds = %30
  %33 = tail call double @scalbn(double %0, i32 -65000) #3, !dbg !52
  br label %37, !dbg !53

; <label>:34:                                     ; preds = %30
  %35 = fptosi double %1 to i32, !dbg !54
  %36 = tail call double @scalbn(double %0, i32 %35) #3, !dbg !55
  br label %37, !dbg !56

; <label>:37:                                     ; preds = %34, %32, %28, %23, %17, %15, %8
  %38 = phi double [ %9, %8 ], [ %25, %23 ], [ %29, %28 ], [ %33, %32 ], [ %36, %34 ], [ %16, %15 ], [ %19, %17 ], !dbg !57
  ret double %38, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @rint(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @scalbn(double, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_scalb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "__ieee754_scalb", scope: !1, file: !1, line: 33, type: !10, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !12}
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 33, type: !12)
!15 = !DILocalVariable(name: "fn", arg: 2, scope: !9, file: !1, line: 33, type: !12)
!16 = !DILocation(line: 33, column: 32, scope: !9)
!17 = !DILocation(line: 33, column: 42, scope: !9)
!18 = !DILocation(line: 43, column: 6, scope: !19)
!19 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 6)
!20 = !DILocation(line: 43, column: 14, scope: !19)
!21 = !DILocation(line: 43, column: 16, scope: !19)
!22 = !DILocation(line: 43, column: 6, scope: !9)
!23 = !DILocation(line: 43, column: 35, scope: !19)
!24 = !DILocation(line: 43, column: 27, scope: !19)
!25 = !DILocation(line: 44, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 6)
!27 = !DILocation(line: 44, column: 6, scope: !9)
!28 = !DILocation(line: 45, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 45, column: 9)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 44, column: 19)
!31 = !DILocation(line: 45, column: 9, scope: !30)
!32 = !DILocation(line: 45, column: 25, scope: !29)
!33 = !DILocation(line: 45, column: 17, scope: !29)
!34 = !DILocation(line: 46, column: 27, scope: !29)
!35 = !DILocation(line: 46, column: 25, scope: !29)
!36 = !DILocation(line: 46, column: 17, scope: !29)
!37 = !DILocation(line: 48, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !9, file: !1, line: 48, column: 6)
!39 = !DILocation(line: 48, column: 14, scope: !38)
!40 = !DILocation(line: 48, column: 6, scope: !9)
!41 = !DILocation(line: 48, column: 30, scope: !38)
!42 = !DILocation(line: 48, column: 34, scope: !38)
!43 = !DILocation(line: 48, column: 20, scope: !38)
!44 = !DILocation(line: 49, column: 10, scope: !45)
!45 = distinct !DILexicalBlock(scope: !9, file: !1, line: 49, column: 7)
!46 = !DILocation(line: 49, column: 7, scope: !9)
!47 = !DILocation(line: 49, column: 28, scope: !45)
!48 = !DILocation(line: 49, column: 21, scope: !45)
!49 = !DILocation(line: 50, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 50, column: 6)
!51 = !DILocation(line: 50, column: 6, scope: !9)
!52 = !DILocation(line: 50, column: 28, scope: !50)
!53 = !DILocation(line: 50, column: 21, scope: !50)
!54 = !DILocation(line: 51, column: 18, scope: !9)
!55 = !DILocation(line: 51, column: 9, scope: !9)
!56 = !DILocation(line: 51, column: 2, scope: !9)
!57 = !DILocation(line: 0, scope: !29)
!58 = !DILocation(line: 53, column: 1, scope: !9)
