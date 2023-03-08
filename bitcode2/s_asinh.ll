; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_asinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_asinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @asinh(double) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast double %0 to i64, !dbg !43
  %3 = lshr i64 %2, 32, !dbg !43
  %4 = trunc i64 %3 to i32, !dbg !43
  %5 = and i32 %4, 2147483647, !dbg !45
  %6 = icmp ugt i32 %5, 2146435071, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %6, label %7, label %9, !dbg !49

; <label>:7:                                      ; preds = %1
  %8 = fadd double %0, %0, !dbg !50
  br label %47, !dbg !51

; <label>:9:                                      ; preds = %1
  %10 = icmp ult i32 %5, 1043333120, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %10, label %11, label %15, !dbg !54

; <label>:11:                                     ; preds = %9
  %12 = fadd double %0, 1.000000e+300, !dbg !55
  %13 = fcmp ogt double %12, 1.000000e+00, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %13, label %49, label %14, !dbg !59

; <label>:14:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %33, !dbg !61

; <label>:15:                                     ; preds = %9
  %16 = icmp ugt i32 %5, 1102053376, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %16, label %17, label %21, !dbg !64

; <label>:17:                                     ; preds = %15
  %18 = tail call double @fabs(double %0) #3, !dbg !65
  %19 = tail call double @__ieee754_log(double %18) #3, !dbg !67
  %20 = fadd double %19, 0x3FE62E42FEFA39EF, !dbg !68
  br label %42, !dbg !70

; <label>:21:                                     ; preds = %15
  %22 = icmp ugt i32 %5, 1073741824, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %22, label %23, label %33, !dbg !61

; <label>:23:                                     ; preds = %21
  %24 = tail call double @fabs(double %0) #3, !dbg !73
  %25 = fmul double %24, 2.000000e+00, !dbg !76
  %26 = fmul double %0, %0, !dbg !77
  %27 = fadd double %26, 1.000000e+00, !dbg !78
  %28 = tail call double @__ieee754_sqrt(double %27) #3, !dbg !79
  %29 = fadd double %24, %28, !dbg !80
  %30 = fdiv double 1.000000e+00, %29, !dbg !81
  %31 = fadd double %25, %30, !dbg !82
  %32 = tail call double @__ieee754_log(double %31) #3, !dbg !83
  br label %42, !dbg !84

; <label>:33:                                     ; preds = %14, %21
  %34 = fmul double %0, %0, !dbg !85
  %35 = tail call double @fabs(double %0) #3, !dbg !87
  %36 = fadd double %34, 1.000000e+00, !dbg !88
  %37 = tail call double @__ieee754_sqrt(double %36) #3, !dbg !89
  %38 = fadd double %37, 1.000000e+00, !dbg !90
  %39 = fdiv double %34, %38, !dbg !91
  %40 = fadd double %35, %39, !dbg !92
  %41 = tail call double @log1p(double %40) #3, !dbg !93
  br label %42

; <label>:42:                                     ; preds = %23, %33, %17
  %43 = phi double [ %20, %17 ], [ %32, %23 ], [ %41, %33 ], !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %44 = icmp sgt i32 %4, 0, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  %45 = fsub double -0.000000e+00, %43, !dbg !98
  %46 = select i1 %44, double %43, double %45, !dbg !97
  br label %47, !dbg !97

; <label>:47:                                     ; preds = %42, %7
  %48 = phi double [ %8, %7 ], [ %46, %42 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %49, !dbg !100

; <label>:49:                                     ; preds = %47, %11
  %50 = phi double [ %0, %11 ], [ %48, %47 ], !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret double %50, !dbg !100
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
!54 = !DILocation(line: 92, column: 5, scope: !16)
!55 = !DILocation(line: 93, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 93, column: 9)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 92, column: 21)
!58 = !DILocation(line: 93, column: 15, scope: !56)
!59 = !DILocation(line: 93, column: 9, scope: !57)
!60 = !DILocation(line: 0, scope: !16)
!61 = !DILocation(line: 97, column: 13, scope: !62)
!62 = distinct !DILexicalBlock(scope: !16, file: !1, line: 95, column: 5)
!63 = !DILocation(line: 95, column: 7, scope: !62)
!64 = !DILocation(line: 95, column: 5, scope: !16)
!65 = !DILocation(line: 96, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 95, column: 20)
!67 = !DILocation(line: 96, column: 10, scope: !66)
!68 = !DILocation(line: 96, column: 32, scope: !66)
!69 = !DILocation(line: 87, column: 11, scope: !16)
!70 = !DILocation(line: 97, column: 2, scope: !66)
!71 = !DILocation(line: 97, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !62, file: !1, line: 97, column: 13)
!73 = !DILocation(line: 98, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 97, column: 28)
!75 = !DILocation(line: 87, column: 9, scope: !16)
!76 = !DILocation(line: 99, column: 27, scope: !74)
!77 = !DILocation(line: 99, column: 51, scope: !74)
!78 = !DILocation(line: 99, column: 53, scope: !74)
!79 = !DILocation(line: 99, column: 35, scope: !74)
!80 = !DILocation(line: 99, column: 58, scope: !74)
!81 = !DILocation(line: 99, column: 33, scope: !74)
!82 = !DILocation(line: 99, column: 29, scope: !74)
!83 = !DILocation(line: 99, column: 10, scope: !74)
!84 = !DILocation(line: 100, column: 2, scope: !74)
!85 = !DILocation(line: 101, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !72, file: !1, line: 100, column: 9)
!87 = !DILocation(line: 102, column: 15, scope: !86)
!88 = !DILocation(line: 102, column: 48, scope: !86)
!89 = !DILocation(line: 102, column: 30, scope: !86)
!90 = !DILocation(line: 102, column: 29, scope: !86)
!91 = !DILocation(line: 102, column: 24, scope: !86)
!92 = !DILocation(line: 102, column: 22, scope: !86)
!93 = !DILocation(line: 102, column: 9, scope: !86)
!94 = !DILocation(line: 0, scope: !86)
!95 = !DILocation(line: 104, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !16, file: !1, line: 104, column: 5)
!97 = !DILocation(line: 104, column: 5, scope: !16)
!98 = !DILocation(line: 104, column: 33, scope: !96)
!99 = !DILocation(line: 0, scope: !48)
!100 = !DILocation(line: 105, column: 1, scope: !16)
!101 = !DILocation(line: 0, scope: !96)
