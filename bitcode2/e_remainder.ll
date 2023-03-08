; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_remainder.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_remainder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_remainder(double, double) local_unnamed_addr #0 !dbg !12 {
  %3 = bitcast double %0 to i64, !dbg !49
  %4 = lshr i64 %3, 32, !dbg !49
  %5 = trunc i64 %4 to i32, !dbg !49
  %6 = trunc i64 %3 to i32, !dbg !49
  %7 = bitcast double %1 to i64, !dbg !52
  %8 = lshr i64 %7, 32, !dbg !52
  %9 = trunc i64 %8 to i32, !dbg !52
  %10 = trunc i64 %7 to i32, !dbg !52
  %11 = and i32 %9, 2147483647, !dbg !56
  %12 = and i32 %5, 2147483647, !dbg !57
  %13 = or i32 %11, %10, !dbg !58
  %14 = icmp eq i32 %13, 0, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %14, label %15, label %18, !dbg !61

; <label>:15:                                     ; preds = %2
  %16 = fmul double %0, %1, !dbg !62
  %17 = fdiv double %16, %16, !dbg !63
  br label %74, !dbg !64

; <label>:18:                                     ; preds = %2
  %19 = icmp ugt i32 %12, 2146435071, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %19, label %26, label %20, !dbg !67

; <label>:20:                                     ; preds = %18
  %21 = icmp ugt i32 %11, 2146435071, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %21, label %22, label %29, !dbg !69

; <label>:22:                                     ; preds = %20
  %23 = add nsw i32 %11, -2146435072, !dbg !70
  %24 = or i32 %23, %10, !dbg !71
  %25 = icmp eq i32 %24, 0, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %25, label %34, label %26, !dbg !73

; <label>:26:                                     ; preds = %22, %18
  %27 = fmul double %0, %1, !dbg !74
  %28 = fdiv double %27, %27, !dbg !75
  br label %74, !dbg !76

; <label>:29:                                     ; preds = %20
  %30 = icmp ult i32 %11, 2145386496, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %30, label %31, label %36, !dbg !79

; <label>:31:                                     ; preds = %29
  %32 = fadd double %1, %1, !dbg !80
  %33 = tail call double @__ieee754_fmod(double %0, double %32) #3, !dbg !81
  br label %34, !dbg !82

; <label>:34:                                     ; preds = %22, %31
  %35 = phi double [ %33, %31 ], [ %0, %22 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %36, !dbg !84

; <label>:36:                                     ; preds = %34, %29
  %37 = phi double [ %0, %29 ], [ %35, %34 ]
  %38 = sub nsw i32 %12, %11, !dbg !84
  %39 = sub i32 %6, %10, !dbg !86
  %40 = or i32 %38, %39, !dbg !87
  %41 = icmp eq i32 %40, 0, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %41, label %42, label %44, !dbg !89

; <label>:42:                                     ; preds = %36
  %43 = fmul double %37, 0.000000e+00, !dbg !90
  br label %74, !dbg !91

; <label>:44:                                     ; preds = %36
  %45 = tail call double @fabs(double %37) #3, !dbg !92
  %46 = tail call double @fabs(double %1) #3, !dbg !93
  %47 = icmp ult i32 %11, 2097152, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %47, label %48, label %57, !dbg !96

; <label>:48:                                     ; preds = %44
  %49 = fadd double %45, %45, !dbg !97
  %50 = fcmp ogt double %49, %46, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %50, label %51, label %65, !dbg !101

; <label>:51:                                     ; preds = %48
  %52 = fsub double %45, %46, !dbg !102
  %53 = fadd double %52, %52, !dbg !104
  %54 = fcmp ult double %53, %46, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %54, label %65, label %55, !dbg !107

; <label>:55:                                     ; preds = %51
  %56 = fsub double %52, %46, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br label %65, !dbg !109

; <label>:57:                                     ; preds = %44
  %58 = fmul double %46, 5.000000e-01, !dbg !110
  %59 = fcmp ogt double %45, %58, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  br i1 %59, label %60, label %65, !dbg !115

; <label>:60:                                     ; preds = %57
  %61 = fsub double %45, %46, !dbg !116
  %62 = fcmp ult double %61, %58, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %62, label %65, label %63, !dbg !120

; <label>:63:                                     ; preds = %60
  %64 = fsub double %61, %46, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br label %65, !dbg !122

; <label>:65:                                     ; preds = %51, %60, %55, %48, %63, %57
  %66 = phi double [ %56, %55 ], [ %52, %51 ], [ %45, %48 ], [ %64, %63 ], [ %61, %60 ], [ %45, %57 ], !dbg !123
  %67 = bitcast double %66 to i64, !dbg !124
  %68 = and i64 %3, -9223372036854775808, !dbg !125
  %69 = and i64 %67, -4294967296, !dbg !125
  %70 = xor i64 %69, %68, !dbg !125
  %71 = and i64 %67, 4294967295, !dbg !125
  %72 = or i64 %70, %71, !dbg !125
  %73 = bitcast i64 %72 to double, !dbg !125
  br label %74, !dbg !126

; <label>:74:                                     ; preds = %65, %42, %26, %15
  %75 = phi double [ %17, %15 ], [ %28, %26 ], [ %43, %42 ], [ %73, %65 ], !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  ret double %75, !dbg !128
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_fmod(double, double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_remainder.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 28, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "__ieee754_remainder", scope: !1, file: !1, line: 35, type: !13, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !7}
!15 = !{!16, !17, !18, !22, !23, !26, !27, !28, !29, !41, !43, !45}
!16 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 35, type: !7)
!17 = !DILocalVariable(name: "p", arg: 2, scope: !12, file: !1, line: 35, type: !7)
!18 = !DILocalVariable(name: "hx", scope: !12, file: !1, line: 41, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 77, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "hp", scope: !12, file: !1, line: 41, type: !19)
!23 = !DILocalVariable(name: "sx", scope: !12, file: !1, line: 42, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "lx", scope: !12, file: !1, line: 42, type: !24)
!27 = !DILocalVariable(name: "lp", scope: !12, file: !1, line: 42, type: !24)
!28 = !DILocalVariable(name: "p_half", scope: !12, file: !1, line: 43, type: !7)
!29 = !DILocalVariable(name: "ew_u", scope: !30, file: !1, line: 45, type: !31)
!30 = distinct !DILexicalBlock(scope: !12, file: !1, line: 45, column: 2)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !32, line: 278, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !32, line: 270, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !32, line: 272, baseType: !7, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !33, file: !32, line: 277, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !33, file: !32, line: 273, size: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !37, file: !32, line: 275, baseType: !24, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !37, file: !32, line: 276, baseType: !24, size: 32, offset: 32)
!41 = !DILocalVariable(name: "ew_u", scope: !42, file: !1, line: 46, type: !31)
!42 = distinct !DILexicalBlock(scope: !12, file: !1, line: 46, column: 2)
!43 = !DILocalVariable(name: "gh_u", scope: !44, file: !1, line: 75, type: !31)
!44 = distinct !DILexicalBlock(scope: !12, file: !1, line: 75, column: 2)
!45 = !DILocalVariable(name: "sh_u", scope: !46, file: !1, line: 76, type: !31)
!46 = distinct !DILexicalBlock(scope: !12, file: !1, line: 76, column: 2)
!47 = !DILocation(line: 35, column: 36, scope: !12)
!48 = !DILocation(line: 35, column: 46, scope: !12)
!49 = !DILocation(line: 45, column: 2, scope: !30)
!50 = !DILocation(line: 41, column: 12, scope: !12)
!51 = !DILocation(line: 42, column: 16, scope: !12)
!52 = !DILocation(line: 46, column: 2, scope: !42)
!53 = !DILocation(line: 41, column: 15, scope: !12)
!54 = !DILocation(line: 42, column: 19, scope: !12)
!55 = !DILocation(line: 42, column: 13, scope: !12)
!56 = !DILocation(line: 48, column: 5, scope: !12)
!57 = !DILocation(line: 49, column: 5, scope: !12)
!58 = !DILocation(line: 52, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !12, file: !1, line: 52, column: 5)
!60 = !DILocation(line: 52, column: 12, scope: !59)
!61 = !DILocation(line: 52, column: 5, scope: !12)
!62 = !DILocation(line: 52, column: 26, scope: !59)
!63 = !DILocation(line: 52, column: 29, scope: !59)
!64 = !DILocation(line: 52, column: 17, scope: !59)
!65 = !DILocation(line: 53, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !12, file: !1, line: 53, column: 5)
!67 = !DILocation(line: 53, column: 21, scope: !66)
!68 = !DILocation(line: 54, column: 8, scope: !66)
!69 = !DILocation(line: 54, column: 21, scope: !66)
!70 = !DILocation(line: 55, column: 9, scope: !66)
!71 = !DILocation(line: 55, column: 21, scope: !66)
!72 = !DILocation(line: 55, column: 25, scope: !66)
!73 = !DILocation(line: 53, column: 5, scope: !12)
!74 = !DILocation(line: 56, column: 15, scope: !66)
!75 = !DILocation(line: 56, column: 18, scope: !66)
!76 = !DILocation(line: 56, column: 6, scope: !66)
!77 = !DILocation(line: 59, column: 8, scope: !78)
!78 = distinct !DILexicalBlock(scope: !12, file: !1, line: 59, column: 6)
!79 = !DILocation(line: 59, column: 6, scope: !12)
!80 = !DILocation(line: 59, column: 44, scope: !78)
!81 = !DILocation(line: 59, column: 26, scope: !78)
!82 = !DILocation(line: 59, column: 22, scope: !78)
!83 = !DILocation(line: 0, scope: !78)
!84 = !DILocation(line: 60, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !12, file: !1, line: 60, column: 6)
!86 = !DILocation(line: 60, column: 18, scope: !85)
!87 = !DILocation(line: 60, column: 14, scope: !85)
!88 = !DILocation(line: 60, column: 23, scope: !85)
!89 = !DILocation(line: 60, column: 6, scope: !12)
!90 = !DILocation(line: 60, column: 39, scope: !85)
!91 = !DILocation(line: 60, column: 28, scope: !85)
!92 = !DILocation(line: 61, column: 7, scope: !12)
!93 = !DILocation(line: 62, column: 7, scope: !12)
!94 = !DILocation(line: 63, column: 8, scope: !95)
!95 = distinct !DILexicalBlock(scope: !12, file: !1, line: 63, column: 6)
!96 = !DILocation(line: 63, column: 6, scope: !12)
!97 = !DILocation(line: 64, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 9)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 63, column: 21)
!100 = !DILocation(line: 64, column: 12, scope: !98)
!101 = !DILocation(line: 64, column: 9, scope: !99)
!102 = !DILocation(line: 65, column: 4, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 64, column: 16)
!104 = !DILocation(line: 66, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !103, file: !1, line: 66, column: 6)
!106 = !DILocation(line: 66, column: 9, scope: !105)
!107 = !DILocation(line: 66, column: 6, scope: !103)
!108 = !DILocation(line: 66, column: 16, scope: !105)
!109 = !DILocation(line: 66, column: 14, scope: !105)
!110 = !DILocation(line: 69, column: 18, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !1, line: 68, column: 9)
!112 = !DILocation(line: 43, column: 9, scope: !12)
!113 = !DILocation(line: 70, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 70, column: 9)
!115 = !DILocation(line: 70, column: 9, scope: !111)
!116 = !DILocation(line: 71, column: 4, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 70, column: 19)
!118 = !DILocation(line: 72, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !117, file: !1, line: 72, column: 6)
!120 = !DILocation(line: 72, column: 6, scope: !117)
!121 = !DILocation(line: 72, column: 19, scope: !119)
!122 = !DILocation(line: 72, column: 17, scope: !119)
!123 = !DILocation(line: 0, scope: !12)
!124 = !DILocation(line: 75, column: 2, scope: !44)
!125 = !DILocation(line: 76, column: 2, scope: !46)
!126 = !DILocation(line: 77, column: 2, scope: !12)
!127 = !DILocation(line: 0, scope: !59)
!128 = !DILocation(line: 78, column: 1, scope: !12)
