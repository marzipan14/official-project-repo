; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_cosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_cosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_cosh(double) local_unnamed_addr #0 !dbg !20 {
  %2 = bitcast double %0 to i64, !dbg !46
  %3 = lshr i64 %2, 32, !dbg !46
  %4 = trunc i64 %3 to i32, !dbg !46
  %5 = and i32 %4, 2147483647, !dbg !48
  %6 = icmp ugt i32 %5, 2146435071, !dbg !49
  br i1 %6, label %7, label %9, !dbg !51

; <label>:7:                                      ; preds = %1
  %8 = fmul double %0, %0, !dbg !52
  br label %48, !dbg !53

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %5, 1071001155, !dbg !54
  br i1 %10, label %11, label %21, !dbg !56

; <label>:11:                                     ; preds = %9
  %12 = tail call double @fabs(double %0) #3, !dbg !57
  %13 = tail call double @expm1(double %12) #3, !dbg !59
  %14 = fadd double %13, 1.000000e+00, !dbg !61
  %15 = icmp ult i32 %5, 1015021568, !dbg !63
  br i1 %15, label %48, label %16, !dbg !65

; <label>:16:                                     ; preds = %11
  %17 = fmul double %13, %13, !dbg !66
  %18 = fadd double %14, %14, !dbg !67
  %19 = fdiv double %17, %18, !dbg !68
  %20 = fadd double %19, 1.000000e+00, !dbg !69
  br label %48, !dbg !70

; <label>:21:                                     ; preds = %9
  %22 = icmp ult i32 %5, 1077280768, !dbg !71
  br i1 %22, label %23, label %29, !dbg !73

; <label>:23:                                     ; preds = %21
  %24 = tail call double @fabs(double %0) #3, !dbg !74
  %25 = tail call double @__ieee754_exp(double %24) #3, !dbg !76
  %26 = fmul double %25, 5.000000e-01, !dbg !77
  %27 = fdiv double 5.000000e-01, %25, !dbg !78
  %28 = fadd double %26, %27, !dbg !79
  br label %48, !dbg !80

; <label>:29:                                     ; preds = %21
  %30 = icmp ult i32 %5, 1082535490, !dbg !81
  br i1 %30, label %31, label %35, !dbg !83

; <label>:31:                                     ; preds = %29
  %32 = tail call double @fabs(double %0) #3, !dbg !84
  %33 = tail call double @__ieee754_exp(double %32) #3, !dbg !85
  %34 = fmul double %33, 5.000000e-01, !dbg !86
  br label %48, !dbg !87

; <label>:35:                                     ; preds = %29
  %36 = icmp ult i32 %5, 1082536910, !dbg !89
  br i1 %36, label %42, label %37, !dbg !91

; <label>:37:                                     ; preds = %35
  %38 = trunc i64 %2 to i32, !dbg !88
  %39 = icmp eq i32 %5, 1082536910, !dbg !93
  %40 = icmp ult i32 %38, -1883637634, !dbg !94
  %41 = and i1 %40, %39, !dbg !95
  br i1 %41, label %42, label %48, !dbg !95

; <label>:42:                                     ; preds = %37, %35
  %43 = tail call double @fabs(double %0) #3, !dbg !96
  %44 = fmul double %43, 5.000000e-01, !dbg !98
  %45 = tail call double @__ieee754_exp(double %44) #3, !dbg !99
  %46 = fmul double %45, 5.000000e-01, !dbg !100
  %47 = fmul double %45, %46, !dbg !101
  br label %48, !dbg !102

; <label>:48:                                     ; preds = %37, %11, %42, %31, %23, %16, %7
  %49 = phi double [ %8, %7 ], [ %20, %16 ], [ %28, %23 ], [ %34, %31 ], [ %47, %42 ], [ %14, %11 ], [ 0x7FF0000000000000, %37 ], !dbg !103
  ret double %49, !dbg !104
}

; Function Attrs: noredzone
declare dso_local double @expm1(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_exp(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_cosh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !12, !14}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 40, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 40, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 40, type: !10, isLocal: true, isDefinition: true)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "__ieee754_cosh", scope: !1, file: !1, line: 46, type: !21, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!11, !11}
!23 = !{!24, !25, !26, !27, !30, !31, !43}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !1, line: 46, type: !11)
!25 = !DILocalVariable(name: "t", scope: !20, file: !1, line: 52, type: !11)
!26 = !DILocalVariable(name: "w", scope: !20, file: !1, line: 52, type: !11)
!27 = !DILocalVariable(name: "ix", scope: !20, file: !1, line: 53, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !29)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DILocalVariable(name: "lx", scope: !20, file: !1, line: 54, type: !4)
!31 = !DILocalVariable(name: "gh_u", scope: !32, file: !1, line: 57, type: !33)
!32 = distinct !DILexicalBlock(scope: !20, file: !1, line: 57, column: 2)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !34, line: 278, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 270, size: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !35, file: !34, line: 272, baseType: !11, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !35, file: !34, line: 277, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 273, size: 64, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !39, file: !34, line: 275, baseType: !4, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !39, file: !34, line: 276, baseType: !4, size: 32, offset: 32)
!43 = !DILocalVariable(name: "gl_u", scope: !44, file: !1, line: 81, type: !33)
!44 = distinct !DILexicalBlock(scope: !20, file: !1, line: 81, column: 2)
!45 = !DILocation(line: 46, column: 31, scope: !20)
!46 = !DILocation(line: 57, column: 2, scope: !32)
!47 = !DILocation(line: 53, column: 12, scope: !20)
!48 = !DILocation(line: 58, column: 5, scope: !20)
!49 = !DILocation(line: 61, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !20, file: !1, line: 61, column: 5)
!51 = !DILocation(line: 61, column: 5, scope: !20)
!52 = !DILocation(line: 61, column: 29, scope: !50)
!53 = !DILocation(line: 61, column: 21, scope: !50)
!54 = !DILocation(line: 64, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !20, file: !1, line: 64, column: 5)
!56 = !DILocation(line: 64, column: 5, scope: !20)
!57 = !DILocation(line: 65, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 64, column: 20)
!59 = !DILocation(line: 65, column: 10, scope: !58)
!60 = !DILocation(line: 52, column: 9, scope: !20)
!61 = !DILocation(line: 66, column: 13, scope: !58)
!62 = !DILocation(line: 52, column: 11, scope: !20)
!63 = !DILocation(line: 67, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !1, line: 67, column: 10)
!65 = !DILocation(line: 67, column: 10, scope: !58)
!66 = !DILocation(line: 68, column: 19, scope: !58)
!67 = !DILocation(line: 68, column: 25, scope: !58)
!68 = !DILocation(line: 68, column: 22, scope: !58)
!69 = !DILocation(line: 68, column: 16, scope: !58)
!70 = !DILocation(line: 68, column: 6, scope: !58)
!71 = !DILocation(line: 72, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !20, file: !1, line: 72, column: 6)
!73 = !DILocation(line: 72, column: 6, scope: !20)
!74 = !DILocation(line: 73, column: 21, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 72, column: 23)
!76 = !DILocation(line: 73, column: 7, scope: !75)
!77 = !DILocation(line: 74, column: 14, scope: !75)
!78 = !DILocation(line: 74, column: 21, scope: !75)
!79 = !DILocation(line: 74, column: 16, scope: !75)
!80 = !DILocation(line: 74, column: 3, scope: !75)
!81 = !DILocation(line: 78, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !20, file: !1, line: 78, column: 6)
!83 = !DILocation(line: 78, column: 6, scope: !20)
!84 = !DILocation(line: 78, column: 50, scope: !82)
!85 = !DILocation(line: 78, column: 36, scope: !82)
!86 = !DILocation(line: 78, column: 35, scope: !82)
!87 = !DILocation(line: 78, column: 24, scope: !82)
!88 = !DILocation(line: 81, column: 2, scope: !44)
!89 = !DILocation(line: 82, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !20, file: !1, line: 82, column: 6)
!91 = !DILocation(line: 82, column: 20, scope: !90)
!92 = !DILocation(line: 54, column: 13, scope: !20)
!93 = !DILocation(line: 83, column: 17, scope: !90)
!94 = !DILocation(line: 83, column: 35, scope: !90)
!95 = !DILocation(line: 83, column: 30, scope: !90)
!96 = !DILocation(line: 84, column: 29, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !1, line: 83, column: 62)
!98 = !DILocation(line: 84, column: 28, scope: !97)
!99 = !DILocation(line: 84, column: 10, scope: !97)
!100 = !DILocation(line: 85, column: 14, scope: !97)
!101 = !DILocation(line: 86, column: 14, scope: !97)
!102 = !DILocation(line: 86, column: 6, scope: !97)
!103 = !DILocation(line: 0, scope: !20)
!104 = !DILocation(line: 91, column: 1, scope: !20)
