; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_remainder.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_remainder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_remainderf(float, float) local_unnamed_addr #0 !dbg !13 {
  %3 = bitcast float %0 to i32, !dbg !44
  %4 = bitcast float %1 to i32, !dbg !46
  %5 = and i32 %3, -2147483648, !dbg !48
  %6 = and i32 %4, 2147483647, !dbg !50
  %7 = and i32 %3, 2147483647, !dbg !51
  %8 = icmp eq i32 %6, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %8, label %13, label %9, !dbg !54

; <label>:9:                                      ; preds = %2
  %10 = icmp ult i32 %7, 2139095040, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %10, label %11, label %13, !dbg !56

; <label>:11:                                     ; preds = %9
  %12 = icmp ugt i32 %6, 2139095040, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %12, label %13, label %16, !dbg !58

; <label>:13:                                     ; preds = %11, %9, %2
  %14 = fmul float %0, %1, !dbg !59
  %15 = fdiv float %14, %14, !dbg !60
  br label %52, !dbg !61

; <label>:16:                                     ; preds = %11
  %17 = icmp ult i32 %6, 2130706432, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %17, label %18, label %21, !dbg !64

; <label>:18:                                     ; preds = %16
  %19 = fadd float %1, %1, !dbg !65
  %20 = tail call float @__ieee754_fmodf(float %0, float %19) #3, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br label %21, !dbg !67

; <label>:21:                                     ; preds = %18, %16
  %22 = phi float [ %20, %18 ], [ %0, %16 ]
  %23 = icmp eq i32 %7, %6, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %23, label %24, label %26, !dbg !70

; <label>:24:                                     ; preds = %21
  %25 = fmul float %22, 0.000000e+00, !dbg !71
  br label %52, !dbg !72

; <label>:26:                                     ; preds = %21
  %27 = tail call float @fabsf(float %22) #3, !dbg !73
  %28 = tail call float @fabsf(float %1) #3, !dbg !74
  %29 = icmp ult i32 %6, 16777216, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %29, label %30, label %39, !dbg !77

; <label>:30:                                     ; preds = %26
  %31 = fadd float %27, %27, !dbg !78
  %32 = fcmp ogt float %31, %28, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %32, label %33, label %47, !dbg !82

; <label>:33:                                     ; preds = %30
  %34 = fsub float %27, %28, !dbg !83
  %35 = fadd float %34, %34, !dbg !85
  %36 = fcmp ult float %35, %28, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %36, label %47, label %37, !dbg !88

; <label>:37:                                     ; preds = %33
  %38 = fsub float %34, %28, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br label %47, !dbg !90

; <label>:39:                                     ; preds = %26
  %40 = fmul float %28, 5.000000e-01, !dbg !91
  %41 = fcmp ogt float %27, %40, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %41, label %42, label %47, !dbg !96

; <label>:42:                                     ; preds = %39
  %43 = fsub float %27, %28, !dbg !97
  %44 = fcmp ult float %43, %40, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %44, label %47, label %45, !dbg !101

; <label>:45:                                     ; preds = %42
  %46 = fsub float %43, %28, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br label %47, !dbg !103

; <label>:47:                                     ; preds = %33, %42, %37, %30, %45, %39
  %48 = phi float [ %38, %37 ], [ %34, %33 ], [ %27, %30 ], [ %46, %45 ], [ %43, %42 ], [ %27, %39 ], !dbg !104
  %49 = bitcast float %48 to i32, !dbg !105
  %50 = xor i32 %5, %49, !dbg !106
  %51 = bitcast i32 %50 to float, !dbg !106
  br label %52, !dbg !107

; <label>:52:                                     ; preds = %47, %24, %13
  %53 = phi float [ %15, %13 ], [ %25, %24 ], [ %51, %47 ], !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  ret float %53, !dbg !109
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_fmodf(float, float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_remainder.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 19, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "__ieee754_remainderf", scope: !1, file: !1, line: 26, type: !14, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !4}
!16 = !{!17, !18, !19, !23, !24, !27, !28, !36, !38, !40}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !1, line: 26, type: !4)
!18 = !DILocalVariable(name: "p", arg: 2, scope: !13, file: !1, line: 26, type: !4)
!19 = !DILocalVariable(name: "hx", scope: !13, file: !1, line: 32, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !21, line: 77, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(name: "hp", scope: !13, file: !1, line: 32, type: !20)
!24 = !DILocalVariable(name: "sx", scope: !13, file: !1, line: 33, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 79, baseType: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "p_half", scope: !13, file: !1, line: 34, type: !4)
!28 = !DILocalVariable(name: "gf_u", scope: !29, file: !1, line: 36, type: !30)
!29 = distinct !DILexicalBlock(scope: !13, file: !1, line: 36, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !31, line: 347, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 343, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 345, baseType: !4, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !32, file: !31, line: 346, baseType: !25, size: 32)
!36 = !DILocalVariable(name: "gf_u", scope: !37, file: !1, line: 37, type: !30)
!37 = distinct !DILexicalBlock(scope: !13, file: !1, line: 37, column: 2)
!38 = !DILocalVariable(name: "gf_u", scope: !39, file: !1, line: 65, type: !30)
!39 = distinct !DILexicalBlock(scope: !13, file: !1, line: 65, column: 2)
!40 = !DILocalVariable(name: "sf_u", scope: !41, file: !1, line: 66, type: !30)
!41 = distinct !DILexicalBlock(scope: !13, file: !1, line: 66, column: 2)
!42 = !DILocation(line: 26, column: 35, scope: !13)
!43 = !DILocation(line: 26, column: 44, scope: !13)
!44 = !DILocation(line: 36, column: 2, scope: !29)
!45 = !DILocation(line: 32, column: 12, scope: !13)
!46 = !DILocation(line: 37, column: 2, scope: !37)
!47 = !DILocation(line: 32, column: 15, scope: !13)
!48 = !DILocation(line: 38, column: 9, scope: !13)
!49 = !DILocation(line: 33, column: 13, scope: !13)
!50 = !DILocation(line: 39, column: 5, scope: !13)
!51 = !DILocation(line: 40, column: 5, scope: !13)
!52 = !DILocation(line: 43, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !13, file: !1, line: 43, column: 5)
!54 = !DILocation(line: 43, column: 26, scope: !53)
!55 = !DILocation(line: 44, column: 6, scope: !53)
!56 = !DILocation(line: 44, column: 29, scope: !53)
!57 = !DILocation(line: 45, column: 5, scope: !53)
!58 = !DILocation(line: 43, column: 5, scope: !13)
!59 = !DILocation(line: 46, column: 15, scope: !53)
!60 = !DILocation(line: 46, column: 18, scope: !53)
!61 = !DILocation(line: 46, column: 6, scope: !53)
!62 = !DILocation(line: 49, column: 8, scope: !63)
!63 = distinct !DILexicalBlock(scope: !13, file: !1, line: 49, column: 6)
!64 = !DILocation(line: 49, column: 6, scope: !13)
!65 = !DILocation(line: 49, column: 53, scope: !63)
!66 = !DILocation(line: 49, column: 34, scope: !63)
!67 = !DILocation(line: 49, column: 30, scope: !63)
!68 = !DILocation(line: 50, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !13, file: !1, line: 50, column: 6)
!70 = !DILocation(line: 50, column: 6, scope: !13)
!71 = !DILocation(line: 50, column: 29, scope: !69)
!72 = !DILocation(line: 50, column: 18, scope: !69)
!73 = !DILocation(line: 51, column: 7, scope: !13)
!74 = !DILocation(line: 52, column: 7, scope: !13)
!75 = !DILocation(line: 53, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !13, file: !1, line: 53, column: 6)
!77 = !DILocation(line: 53, column: 6, scope: !13)
!78 = !DILocation(line: 54, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 54, column: 9)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 53, column: 21)
!81 = !DILocation(line: 54, column: 12, scope: !79)
!82 = !DILocation(line: 54, column: 9, scope: !80)
!83 = !DILocation(line: 55, column: 4, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 54, column: 16)
!85 = !DILocation(line: 56, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !1, line: 56, column: 6)
!87 = !DILocation(line: 56, column: 9, scope: !86)
!88 = !DILocation(line: 56, column: 6, scope: !84)
!89 = !DILocation(line: 56, column: 16, scope: !86)
!90 = !DILocation(line: 56, column: 14, scope: !86)
!91 = !DILocation(line: 59, column: 25, scope: !92)
!92 = distinct !DILexicalBlock(scope: !76, file: !1, line: 58, column: 9)
!93 = !DILocation(line: 34, column: 8, scope: !13)
!94 = !DILocation(line: 60, column: 10, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 60, column: 9)
!96 = !DILocation(line: 60, column: 9, scope: !92)
!97 = !DILocation(line: 61, column: 4, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 60, column: 19)
!99 = !DILocation(line: 62, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !98, file: !1, line: 62, column: 6)
!101 = !DILocation(line: 62, column: 6, scope: !98)
!102 = !DILocation(line: 62, column: 19, scope: !100)
!103 = !DILocation(line: 62, column: 17, scope: !100)
!104 = !DILocation(line: 0, scope: !13)
!105 = !DILocation(line: 65, column: 2, scope: !39)
!106 = !DILocation(line: 66, column: 2, scope: !41)
!107 = !DILocation(line: 67, column: 2, scope: !13)
!108 = !DILocation(line: 0, scope: !53)
!109 = !DILocation(line: 68, column: 1, scope: !13)
