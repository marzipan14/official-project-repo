; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_remainder.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_remainder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_remainderf(float, float) local_unnamed_addr #0 !dbg !13 {
  %3 = bitcast float %0 to i32, !dbg !44
  %4 = bitcast float %1 to i32, !dbg !46
  %5 = and i32 %3, -2147483648, !dbg !48
  %6 = and i32 %4, 2147483647, !dbg !50
  %7 = and i32 %3, 2147483647, !dbg !51
  %8 = icmp ugt i32 %7, 2139095039, !dbg !52
  %9 = add nsw i32 %6, -1, !dbg !54
  %10 = icmp ugt i32 %9, 2139095039, !dbg !54
  %11 = or i1 %8, %10, !dbg !54
  br i1 %11, label %12, label %15, !dbg !54

; <label>:12:                                     ; preds = %2
  %13 = fmul float %0, %1, !dbg !55
  %14 = fdiv float %13, %13, !dbg !56
  br label %51, !dbg !57

; <label>:15:                                     ; preds = %2
  %16 = icmp ult i32 %6, 2130706432, !dbg !58
  br i1 %16, label %17, label %20, !dbg !60

; <label>:17:                                     ; preds = %15
  %18 = fadd float %1, %1, !dbg !61
  %19 = tail call float @__ieee754_fmodf(float %0, float %18) #3, !dbg !62
  br label %20, !dbg !63

; <label>:20:                                     ; preds = %17, %15
  %21 = phi float [ %19, %17 ], [ %0, %15 ]
  %22 = icmp eq i32 %7, %6, !dbg !64
  br i1 %22, label %23, label %25, !dbg !66

; <label>:23:                                     ; preds = %20
  %24 = fmul float %21, 0.000000e+00, !dbg !67
  br label %51, !dbg !68

; <label>:25:                                     ; preds = %20
  %26 = tail call float @fabsf(float %21) #3, !dbg !69
  %27 = tail call float @fabsf(float %1) #3, !dbg !70
  %28 = icmp ult i32 %6, 16777216, !dbg !71
  br i1 %28, label %29, label %38, !dbg !73

; <label>:29:                                     ; preds = %25
  %30 = fadd float %26, %26, !dbg !74
  %31 = fcmp ogt float %30, %27, !dbg !77
  br i1 %31, label %32, label %46, !dbg !78

; <label>:32:                                     ; preds = %29
  %33 = fsub float %26, %27, !dbg !79
  %34 = fadd float %33, %33, !dbg !81
  %35 = fcmp ult float %34, %27, !dbg !83
  br i1 %35, label %46, label %36, !dbg !84

; <label>:36:                                     ; preds = %32
  %37 = fsub float %33, %27, !dbg !85
  br label %46, !dbg !86

; <label>:38:                                     ; preds = %25
  %39 = fmul float %27, 5.000000e-01, !dbg !87
  %40 = fcmp ogt float %26, %39, !dbg !90
  br i1 %40, label %41, label %46, !dbg !92

; <label>:41:                                     ; preds = %38
  %42 = fsub float %26, %27, !dbg !93
  %43 = fcmp ult float %42, %39, !dbg !95
  br i1 %43, label %46, label %44, !dbg !97

; <label>:44:                                     ; preds = %41
  %45 = fsub float %42, %27, !dbg !98
  br label %46, !dbg !99

; <label>:46:                                     ; preds = %32, %41, %36, %29, %44, %38
  %47 = phi float [ %37, %36 ], [ %33, %32 ], [ %26, %29 ], [ %45, %44 ], [ %42, %41 ], [ %26, %38 ], !dbg !100
  %48 = bitcast float %47 to i32, !dbg !101
  %49 = xor i32 %5, %48, !dbg !102
  %50 = bitcast i32 %49 to float, !dbg !102
  br label %51, !dbg !103

; <label>:51:                                     ; preds = %46, %23, %12
  %52 = phi float [ %14, %12 ], [ %24, %23 ], [ %50, %46 ], !dbg !100
  ret float %52, !dbg !104
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
!52 = !DILocation(line: 44, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !13, file: !1, line: 43, column: 5)
!54 = !DILocation(line: 43, column: 26, scope: !53)
!55 = !DILocation(line: 46, column: 15, scope: !53)
!56 = !DILocation(line: 46, column: 18, scope: !53)
!57 = !DILocation(line: 46, column: 6, scope: !53)
!58 = !DILocation(line: 49, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !13, file: !1, line: 49, column: 6)
!60 = !DILocation(line: 49, column: 6, scope: !13)
!61 = !DILocation(line: 49, column: 53, scope: !59)
!62 = !DILocation(line: 49, column: 34, scope: !59)
!63 = !DILocation(line: 49, column: 30, scope: !59)
!64 = !DILocation(line: 50, column: 13, scope: !65)
!65 = distinct !DILexicalBlock(scope: !13, file: !1, line: 50, column: 6)
!66 = !DILocation(line: 50, column: 6, scope: !13)
!67 = !DILocation(line: 50, column: 29, scope: !65)
!68 = !DILocation(line: 50, column: 18, scope: !65)
!69 = !DILocation(line: 51, column: 7, scope: !13)
!70 = !DILocation(line: 52, column: 7, scope: !13)
!71 = !DILocation(line: 53, column: 8, scope: !72)
!72 = distinct !DILexicalBlock(scope: !13, file: !1, line: 53, column: 6)
!73 = !DILocation(line: 53, column: 6, scope: !13)
!74 = !DILocation(line: 54, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 54, column: 9)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 53, column: 21)
!77 = !DILocation(line: 54, column: 12, scope: !75)
!78 = !DILocation(line: 54, column: 9, scope: !76)
!79 = !DILocation(line: 55, column: 4, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 54, column: 16)
!81 = !DILocation(line: 56, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !80, file: !1, line: 56, column: 6)
!83 = !DILocation(line: 56, column: 9, scope: !82)
!84 = !DILocation(line: 56, column: 6, scope: !80)
!85 = !DILocation(line: 56, column: 16, scope: !82)
!86 = !DILocation(line: 56, column: 14, scope: !82)
!87 = !DILocation(line: 59, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !72, file: !1, line: 58, column: 9)
!89 = !DILocation(line: 34, column: 8, scope: !13)
!90 = !DILocation(line: 60, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 60, column: 9)
!92 = !DILocation(line: 60, column: 9, scope: !88)
!93 = !DILocation(line: 61, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 60, column: 19)
!95 = !DILocation(line: 62, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !94, file: !1, line: 62, column: 6)
!97 = !DILocation(line: 62, column: 6, scope: !94)
!98 = !DILocation(line: 62, column: 19, scope: !96)
!99 = !DILocation(line: 62, column: 17, scope: !96)
!100 = !DILocation(line: 0, scope: !13)
!101 = !DILocation(line: 65, column: 2, scope: !39)
!102 = !DILocation(line: 66, column: 2, scope: !41)
!103 = !DILocation(line: 67, column: 2, scope: !13)
!104 = !DILocation(line: 68, column: 1, scope: !13)
