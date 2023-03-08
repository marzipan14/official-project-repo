; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__exp10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__exp10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__exp10.powtab = internal unnamed_addr constant [5 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__exp10(i32) local_unnamed_addr #0 !dbg !2 {
  %2 = icmp ult i32 %0, 5, !dbg !26
  br i1 %2, label %3, label %7, !dbg !27

; <label>:3:                                      ; preds = %1
  %4 = zext i32 %0 to i64, !dbg !28
  %5 = getelementptr inbounds [5 x double], [5 x double]* @__exp10.powtab, i64 0, i64 %4, !dbg !29
  %6 = load double, double* %5, align 8, !dbg !29, !tbaa !30
  br label %18, !dbg !34

; <label>:7:                                      ; preds = %1
  %8 = and i32 %0, 1, !dbg !35
  %9 = icmp eq i32 %8, 0, !dbg !35
  br i1 %9, label %14, label %10, !dbg !36

; <label>:10:                                     ; preds = %7
  %11 = add i32 %0, -1, !dbg !37
  %12 = tail call double @__exp10(i32 %11) #2, !dbg !39
  %13 = fmul double %12, 1.000000e+01, !dbg !40
  br label %18, !dbg !41

; <label>:14:                                     ; preds = %7
  %15 = lshr i32 %0, 1, !dbg !42
  %16 = tail call double @__exp10(i32 %15) #2, !dbg !43
  %17 = fmul double %16, %16, !dbg !45
  br label %18

; <label>:18:                                     ; preds = %14, %10, %3
  %19 = phi double [ %6, %3 ], [ %13, %10 ], [ %17, %14 ], !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret double %19, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "powtab", scope: !2, file: !3, line: 12, type: !17, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__exp10", scope: !3, file: !3, line: 9, type: !4, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !11)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__exp10.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, globals: !10)
!9 = !{}
!10 = !{!0}
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !2, file: !3, line: 9, type: !7)
!13 = !DILocalVariable(name: "n", scope: !14, file: !3, line: 27, type: !6)
!14 = distinct !DILexicalBlock(scope: !15, file: !3, line: 26, column: 5)
!15 = distinct !DILexicalBlock(scope: !16, file: !3, line: 21, column: 12)
!16 = distinct !DILexicalBlock(scope: !2, file: !3, line: 19, column: 7)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 320, elements: !19)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!19 = !{!20}
!20 = !DISubrange(count: 5)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = !DILocation(line: 9, column: 1, scope: !2)
!26 = !DILocation(line: 19, column: 9, scope: !16)
!27 = !DILocation(line: 19, column: 7, scope: !2)
!28 = !DILocation(line: 19, column: 7, scope: !16)
!29 = !DILocation(line: 20, column: 14, scope: !16)
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 20, column: 7, scope: !16)
!35 = !DILocation(line: 21, column: 14, scope: !15)
!36 = !DILocation(line: 21, column: 12, scope: !16)
!37 = !DILocation(line: 23, column: 32, scope: !38)
!38 = distinct !DILexicalBlock(scope: !15, file: !3, line: 22, column: 5)
!39 = !DILocation(line: 23, column: 21, scope: !38)
!40 = !DILocation(line: 23, column: 19, scope: !38)
!41 = !DILocation(line: 23, column: 7, scope: !38)
!42 = !DILocation(line: 27, column: 29, scope: !14)
!43 = !DILocation(line: 27, column: 18, scope: !14)
!44 = !DILocation(line: 27, column: 14, scope: !14)
!45 = !DILocation(line: 28, column: 16, scope: !14)
!46 = !DILocation(line: 0, scope: !14)
!47 = !DILocation(line: 30, column: 1, scope: !2)
