; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_sinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_sinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_sinh(double) local_unnamed_addr #0 !dbg !18 {
  %2 = bitcast double %0 to i64, !dbg !46
  %3 = lshr i64 %2, 32, !dbg !46
  %4 = trunc i64 %3 to i32, !dbg !46
  %5 = and i32 %4, 2147483647, !dbg !48
  %6 = icmp ugt i32 %5, 2146435071, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %6, label %7, label %9, !dbg !52

; <label>:7:                                      ; preds = %1
  %8 = fadd double %0, %0, !dbg !53
  br label %57, !dbg !54

; <label>:9:                                      ; preds = %1
  %10 = icmp slt i32 %4, 0, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %10, label %11, label %12, !dbg !58

; <label>:11:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br label %12, !dbg !59

; <label>:12:                                     ; preds = %11, %9
  %13 = phi double [ -5.000000e-01, %11 ], [ 5.000000e-01, %9 ], !dbg !60
  %14 = icmp ult i32 %5, 1077280768, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %14, label %15, label %36, !dbg !63

; <label>:15:                                     ; preds = %12
  %16 = icmp ult i32 %5, 1043333120, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %16, label %17, label %20, !dbg !67

; <label>:17:                                     ; preds = %15
  %18 = fadd double %0, 0x7FAC7B1F3CAC7433, !dbg !68
  %19 = fcmp ogt double %18, 1.000000e+00, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %19, label %57, label %20, !dbg !71

; <label>:20:                                     ; preds = %17, %15
  %21 = tail call double @fabs(double %0) #3, !dbg !72
  %22 = tail call double @expm1(double %21) #3, !dbg !73
  %23 = icmp ult i32 %5, 1072693248, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %23, label %24, label %31, !dbg !77

; <label>:24:                                     ; preds = %20
  %25 = fmul double %22, 2.000000e+00, !dbg !78
  %26 = fmul double %22, %22, !dbg !79
  %27 = fadd double %22, 1.000000e+00, !dbg !80
  %28 = fdiv double %26, %27, !dbg !81
  %29 = fsub double %25, %28, !dbg !82
  %30 = fmul double %13, %29, !dbg !83
  br label %57, !dbg !84

; <label>:31:                                     ; preds = %20
  %32 = fadd double %22, 1.000000e+00, !dbg !85
  %33 = fdiv double %22, %32, !dbg !86
  %34 = fadd double %22, %33, !dbg !87
  %35 = fmul double %13, %34, !dbg !88
  br label %57, !dbg !89

; <label>:36:                                     ; preds = %12
  %37 = icmp ult i32 %5, 1082535490, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %37, label %38, label %42, !dbg !92

; <label>:38:                                     ; preds = %36
  %39 = tail call double @fabs(double %0) #3, !dbg !93
  %40 = tail call double @__ieee754_exp(double %39) #3, !dbg !94
  %41 = fmul double %13, %40, !dbg !95
  br label %57, !dbg !96

; <label>:42:                                     ; preds = %36
  %43 = icmp ult i32 %5, 1082536910, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %43, label %49, label %44, !dbg !100

; <label>:44:                                     ; preds = %42
  %45 = trunc i64 %2 to i32, !dbg !97
  %46 = icmp eq i32 %5, 1082536910, !dbg !102
  %47 = icmp ult i32 %45, -1883637634, !dbg !103
  %48 = and i1 %47, %46, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %48, label %49, label %55, !dbg !104

; <label>:49:                                     ; preds = %44, %42
  %50 = tail call double @fabs(double %0) #3, !dbg !105
  %51 = fmul double %50, 5.000000e-01, !dbg !107
  %52 = tail call double @__ieee754_exp(double %51) #3, !dbg !108
  %53 = fmul double %13, %52, !dbg !110
  %54 = fmul double %52, %53, !dbg !111
  br label %57, !dbg !112

; <label>:55:                                     ; preds = %44
  %56 = fmul double %0, 0x7FAC7B1F3CAC7433, !dbg !113
  br label %57, !dbg !114

; <label>:57:                                     ; preds = %17, %55, %49, %38, %31, %24, %7
  %58 = phi double [ %8, %7 ], [ %30, %24 ], [ %35, %31 ], [ %41, %38 ], [ %54, %49 ], [ %56, %55 ], [ %0, %17 ], !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  ret double %58, !dbg !116
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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_sinh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9199863512903218227, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "shuge", scope: !0, file: !1, line: 37, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 37, type: !10, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "__ieee754_sinh", scope: !1, file: !1, line: 43, type: !19, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!11, !11}
!21 = !{!22, !23, !24, !25, !26, !29, !30, !31, !43}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 43, type: !11)
!23 = !DILocalVariable(name: "t", scope: !18, file: !1, line: 49, type: !11)
!24 = !DILocalVariable(name: "w", scope: !18, file: !1, line: 49, type: !11)
!25 = !DILocalVariable(name: "h", scope: !18, file: !1, line: 49, type: !11)
!26 = !DILocalVariable(name: "ix", scope: !18, file: !1, line: 50, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !28)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(name: "jx", scope: !18, file: !1, line: 50, type: !27)
!30 = !DILocalVariable(name: "lx", scope: !18, file: !1, line: 51, type: !4)
!31 = !DILocalVariable(name: "gh_u", scope: !32, file: !1, line: 54, type: !33)
!32 = distinct !DILexicalBlock(scope: !18, file: !1, line: 54, column: 2)
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
!43 = !DILocalVariable(name: "gl_u", scope: !44, file: !1, line: 75, type: !33)
!44 = distinct !DILexicalBlock(scope: !18, file: !1, line: 75, column: 2)
!45 = !DILocation(line: 43, column: 31, scope: !18)
!46 = !DILocation(line: 54, column: 2, scope: !32)
!47 = !DILocation(line: 50, column: 15, scope: !18)
!48 = !DILocation(line: 55, column: 9, scope: !18)
!49 = !DILocation(line: 50, column: 12, scope: !18)
!50 = !DILocation(line: 58, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !18, file: !1, line: 58, column: 5)
!52 = !DILocation(line: 58, column: 5, scope: !18)
!53 = !DILocation(line: 58, column: 29, scope: !51)
!54 = !DILocation(line: 58, column: 21, scope: !51)
!55 = !DILocation(line: 49, column: 13, scope: !18)
!56 = !DILocation(line: 61, column: 8, scope: !57)
!57 = distinct !DILexicalBlock(scope: !18, file: !1, line: 61, column: 6)
!58 = !DILocation(line: 61, column: 6, scope: !18)
!59 = !DILocation(line: 61, column: 12, scope: !57)
!60 = !DILocation(line: 0, scope: !18)
!61 = !DILocation(line: 63, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !18, file: !1, line: 63, column: 6)
!63 = !DILocation(line: 63, column: 6, scope: !18)
!64 = !DILocation(line: 64, column: 12, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 64, column: 10)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 63, column: 23)
!67 = !DILocation(line: 64, column: 10, scope: !66)
!68 = !DILocation(line: 65, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 65, column: 6)
!70 = !DILocation(line: 65, column: 13, scope: !69)
!71 = !DILocation(line: 65, column: 6, scope: !65)
!72 = !DILocation(line: 66, column: 16, scope: !66)
!73 = !DILocation(line: 66, column: 10, scope: !66)
!74 = !DILocation(line: 49, column: 9, scope: !18)
!75 = !DILocation(line: 67, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 67, column: 9)
!77 = !DILocation(line: 67, column: 9, scope: !66)
!78 = !DILocation(line: 67, column: 37, scope: !76)
!79 = !DILocation(line: 67, column: 41, scope: !76)
!80 = !DILocation(line: 67, column: 46, scope: !76)
!81 = !DILocation(line: 67, column: 43, scope: !76)
!82 = !DILocation(line: 67, column: 39, scope: !76)
!83 = !DILocation(line: 67, column: 32, scope: !76)
!84 = !DILocation(line: 67, column: 24, scope: !76)
!85 = !DILocation(line: 68, column: 22, scope: !66)
!86 = !DILocation(line: 68, column: 19, scope: !66)
!87 = !DILocation(line: 68, column: 17, scope: !66)
!88 = !DILocation(line: 68, column: 14, scope: !66)
!89 = !DILocation(line: 68, column: 6, scope: !66)
!90 = !DILocation(line: 72, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !18, file: !1, line: 72, column: 6)
!92 = !DILocation(line: 72, column: 6, scope: !18)
!93 = !DILocation(line: 72, column: 47, scope: !91)
!94 = !DILocation(line: 72, column: 33, scope: !91)
!95 = !DILocation(line: 72, column: 32, scope: !91)
!96 = !DILocation(line: 72, column: 24, scope: !91)
!97 = !DILocation(line: 75, column: 2, scope: !44)
!98 = !DILocation(line: 76, column: 14, scope: !99)
!99 = distinct !DILexicalBlock(scope: !18, file: !1, line: 76, column: 12)
!100 = !DILocation(line: 76, column: 26, scope: !99)
!101 = !DILocation(line: 51, column: 13, scope: !18)
!102 = !DILocation(line: 76, column: 32, scope: !99)
!103 = !DILocation(line: 76, column: 50, scope: !99)
!104 = !DILocation(line: 76, column: 45, scope: !99)
!105 = !DILocation(line: 77, column: 28, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 76, column: 77)
!107 = !DILocation(line: 77, column: 27, scope: !106)
!108 = !DILocation(line: 77, column: 10, scope: !106)
!109 = !DILocation(line: 49, column: 11, scope: !18)
!110 = !DILocation(line: 78, column: 11, scope: !106)
!111 = !DILocation(line: 79, column: 14, scope: !106)
!112 = !DILocation(line: 79, column: 6, scope: !106)
!113 = !DILocation(line: 83, column: 10, scope: !18)
!114 = !DILocation(line: 83, column: 2, scope: !18)
!115 = !DILocation(line: 0, scope: !51)
!116 = !DILocation(line: 84, column: 1, scope: !18)
