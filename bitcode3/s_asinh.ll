; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_asinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_asinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @asinh(double) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast double %0 to i64, !dbg !43
  %3 = lshr i64 %2, 32, !dbg !43
  %4 = trunc i64 %3 to i32, !dbg !43
  %5 = and i32 %4, 2147483647, !dbg !45
  %6 = icmp ugt i32 %5, 2146435071, !dbg !47
  br i1 %6, label %7, label %9, !dbg !49

; <label>:7:                                      ; preds = %1
  %8 = fadd double %0, %0, !dbg !50
  br label %46, !dbg !51

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %5, 1043333120, !dbg !52
  %11 = fadd double %0, 1.000000e+300, !dbg !54
  %12 = fcmp ogt double %11, 1.000000e+00, !dbg !57
  %13 = and i1 %12, %10, !dbg !58
  br i1 %13, label %46, label %14, !dbg !58

; <label>:14:                                     ; preds = %9
  %15 = icmp ugt i32 %5, 1102053376, !dbg !59
  br i1 %15, label %16, label %20, !dbg !61

; <label>:16:                                     ; preds = %14
  %17 = tail call double @fabs(double %0) #3, !dbg !62
  %18 = tail call double @__ieee754_log(double %17) #3, !dbg !64
  %19 = fadd double %18, 0x3FE62E42FEFA39EF, !dbg !65
  br label %41, !dbg !67

; <label>:20:                                     ; preds = %14
  %21 = icmp ugt i32 %5, 1073741824, !dbg !68
  br i1 %21, label %22, label %32, !dbg !70

; <label>:22:                                     ; preds = %20
  %23 = tail call double @fabs(double %0) #3, !dbg !71
  %24 = fmul double %23, 2.000000e+00, !dbg !74
  %25 = fmul double %0, %0, !dbg !75
  %26 = fadd double %25, 1.000000e+00, !dbg !76
  %27 = tail call double @__ieee754_sqrt(double %26) #3, !dbg !77
  %28 = fadd double %23, %27, !dbg !78
  %29 = fdiv double 1.000000e+00, %28, !dbg !79
  %30 = fadd double %24, %29, !dbg !80
  %31 = tail call double @__ieee754_log(double %30) #3, !dbg !81
  br label %41, !dbg !82

; <label>:32:                                     ; preds = %20
  %33 = fmul double %0, %0, !dbg !83
  %34 = tail call double @fabs(double %0) #3, !dbg !85
  %35 = fadd double %33, 1.000000e+00, !dbg !86
  %36 = tail call double @__ieee754_sqrt(double %35) #3, !dbg !87
  %37 = fadd double %36, 1.000000e+00, !dbg !88
  %38 = fdiv double %33, %37, !dbg !89
  %39 = fadd double %34, %38, !dbg !90
  %40 = tail call double @log1p(double %39) #3, !dbg !91
  br label %41

; <label>:41:                                     ; preds = %22, %32, %16
  %42 = phi double [ %19, %16 ], [ %31, %22 ], [ %40, %32 ], !dbg !92
  %43 = icmp sgt i32 %4, 0, !dbg !93
  %44 = fsub double -0.000000e+00, %42, !dbg !95
  %45 = select i1 %43, double %42, double %44, !dbg !96
  ret double %45, !dbg !96

; <label>:46:                                     ; preds = %9, %7
  %47 = phi double [ %8, %7 ], [ %0, %9 ], !dbg !97
  ret double %47, !dbg !98
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @log1p(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_asinh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 78, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 76, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !1, line: 77, type: !6, isLocal: true, isDefinition: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "asinh", scope: !1, file: !1, line: 81, type: !17, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7, !7}
!19 = !{!20, !21, !22, !23, !27, !28}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 81, type: !7)
!21 = !DILocalVariable(name: "t", scope: !16, file: !1, line: 87, type: !7)
!22 = !DILocalVariable(name: "w", scope: !16, file: !1, line: 87, type: !7)
!23 = !DILocalVariable(name: "hx", scope: !16, file: !1, line: 88, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "ix", scope: !16, file: !1, line: 88, type: !24)
!28 = !DILocalVariable(name: "gh_u", scope: !29, file: !1, line: 89, type: !30)
!29 = distinct !DILexicalBlock(scope: !16, file: !1, line: 89, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !31, line: 278, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 270, size: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 272, baseType: !7, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !32, file: !31, line: 277, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !31, line: 273, size: 64, elements: !37)
!37 = !{!38, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !36, file: !31, line: 275, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !36, file: !31, line: 276, baseType: !39, size: 32, offset: 32)
!42 = !DILocation(line: 81, column: 22, scope: !16)
!43 = !DILocation(line: 89, column: 2, scope: !29)
!44 = !DILocation(line: 88, column: 12, scope: !16)
!45 = !DILocation(line: 90, column: 9, scope: !16)
!46 = !DILocation(line: 88, column: 15, scope: !16)
!47 = !DILocation(line: 91, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !16, file: !1, line: 91, column: 5)
!49 = !DILocation(line: 91, column: 5, scope: !16)
!50 = !DILocation(line: 91, column: 29, scope: !48)
!51 = !DILocation(line: 91, column: 21, scope: !48)
!52 = !DILocation(line: 92, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !16, file: !1, line: 92, column: 5)
!54 = !DILocation(line: 93, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 93, column: 9)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 92, column: 21)
!57 = !DILocation(line: 93, column: 15, scope: !55)
!58 = !DILocation(line: 92, column: 5, scope: !16)
!59 = !DILocation(line: 95, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !16, file: !1, line: 95, column: 5)
!61 = !DILocation(line: 95, column: 5, scope: !16)
!62 = !DILocation(line: 96, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 95, column: 20)
!64 = !DILocation(line: 96, column: 10, scope: !63)
!65 = !DILocation(line: 96, column: 32, scope: !63)
!66 = !DILocation(line: 87, column: 11, scope: !16)
!67 = !DILocation(line: 97, column: 2, scope: !63)
!68 = !DILocation(line: 97, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 97, column: 13)
!70 = !DILocation(line: 97, column: 13, scope: !60)
!71 = !DILocation(line: 98, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 97, column: 28)
!73 = !DILocation(line: 87, column: 9, scope: !16)
!74 = !DILocation(line: 99, column: 27, scope: !72)
!75 = !DILocation(line: 99, column: 51, scope: !72)
!76 = !DILocation(line: 99, column: 53, scope: !72)
!77 = !DILocation(line: 99, column: 35, scope: !72)
!78 = !DILocation(line: 99, column: 58, scope: !72)
!79 = !DILocation(line: 99, column: 33, scope: !72)
!80 = !DILocation(line: 99, column: 29, scope: !72)
!81 = !DILocation(line: 99, column: 10, scope: !72)
!82 = !DILocation(line: 100, column: 2, scope: !72)
!83 = !DILocation(line: 101, column: 11, scope: !84)
!84 = distinct !DILexicalBlock(scope: !69, file: !1, line: 100, column: 9)
!85 = !DILocation(line: 102, column: 15, scope: !84)
!86 = !DILocation(line: 102, column: 48, scope: !84)
!87 = !DILocation(line: 102, column: 30, scope: !84)
!88 = !DILocation(line: 102, column: 29, scope: !84)
!89 = !DILocation(line: 102, column: 24, scope: !84)
!90 = !DILocation(line: 102, column: 22, scope: !84)
!91 = !DILocation(line: 102, column: 9, scope: !84)
!92 = !DILocation(line: 0, scope: !84)
!93 = !DILocation(line: 104, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !16, file: !1, line: 104, column: 5)
!95 = !DILocation(line: 104, column: 33, scope: !94)
!96 = !DILocation(line: 104, column: 5, scope: !16)
!97 = !DILocation(line: 0, scope: !94)
!98 = !DILocation(line: 105, column: 1, scope: !16)
