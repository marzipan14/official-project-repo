; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_asinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_asinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @asinhf(float) local_unnamed_addr #0 !dbg !17 {
  %2 = bitcast float %0 to i32, !dbg !40
  %3 = and i32 %2, 2147483647, !dbg !42
  %4 = icmp ult i32 %3, 2139095040, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %4, label %7, label %5, !dbg !46

; <label>:5:                                      ; preds = %1
  %6 = fadd float %0, %0, !dbg !47
  br label %45, !dbg !48

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %3, 830472192, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %8, label %9, label %13, !dbg !51

; <label>:9:                                      ; preds = %7
  %10 = fadd float %0, 0x46293E5940000000, !dbg !52
  %11 = fcmp ogt float %10, 1.000000e+00, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %11, label %47, label %12, !dbg !56

; <label>:12:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br label %31, !dbg !58

; <label>:13:                                     ; preds = %7
  %14 = icmp ugt i32 %3, 1300234240, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %14, label %15, label %19, !dbg !61

; <label>:15:                                     ; preds = %13
  %16 = tail call float @fabsf(float %0) #3, !dbg !62
  %17 = tail call float @__ieee754_logf(float %16) #3, !dbg !64
  %18 = fadd float %17, 0x3FE62E4300000000, !dbg !65
  br label %40, !dbg !67

; <label>:19:                                     ; preds = %13
  %20 = icmp ugt i32 %3, 1073741824, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %20, label %21, label %31, !dbg !58

; <label>:21:                                     ; preds = %19
  %22 = tail call float @fabsf(float %0) #3, !dbg !70
  %23 = fmul float %22, 2.000000e+00, !dbg !73
  %24 = fmul float %0, %0, !dbg !74
  %25 = fadd float %24, 1.000000e+00, !dbg !75
  %26 = tail call float @__ieee754_sqrtf(float %25) #3, !dbg !76
  %27 = fadd float %22, %26, !dbg !77
  %28 = fdiv float 1.000000e+00, %27, !dbg !78
  %29 = fadd float %23, %28, !dbg !79
  %30 = tail call float @__ieee754_logf(float %29) #3, !dbg !80
  br label %40, !dbg !81

; <label>:31:                                     ; preds = %12, %19
  %32 = fmul float %0, %0, !dbg !82
  %33 = tail call float @fabsf(float %0) #3, !dbg !84
  %34 = fadd float %32, 1.000000e+00, !dbg !85
  %35 = tail call float @__ieee754_sqrtf(float %34) #3, !dbg !86
  %36 = fadd float %35, 1.000000e+00, !dbg !87
  %37 = fdiv float %32, %36, !dbg !88
  %38 = fadd float %33, %37, !dbg !89
  %39 = tail call float @log1pf(float %38) #3, !dbg !90
  br label %40

; <label>:40:                                     ; preds = %21, %31, %15
  %41 = phi float [ %18, %15 ], [ %30, %21 ], [ %39, %31 ], !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = icmp sgt i32 %2, 0, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  %43 = fsub float -0.000000e+00, %41, !dbg !95
  %44 = select i1 %42, float %41, float %43, !dbg !94
  br label %45, !dbg !94

; <label>:45:                                     ; preds = %40, %5
  %46 = phi float [ %6, %5 ], [ %44, %40 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %47, !dbg !97

; <label>:47:                                     ; preds = %45, %9
  %48 = phi float [ %0, %9 ], [ %46, %45 ], !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  ret float %48, !dbg !97
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @log1pf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_asinh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9, !11}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 25, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 23, type: !8, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !1, line: 24, type: !8, isLocal: true, isDefinition: true)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "asinhf", scope: !1, file: !1, line: 28, type: !18, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!4, !4}
!20 = !{!21, !22, !23, !24, !28, !29}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 28, type: !4)
!22 = !DILocalVariable(name: "t", scope: !17, file: !1, line: 34, type: !4)
!23 = !DILocalVariable(name: "w", scope: !17, file: !1, line: 34, type: !4)
!24 = !DILocalVariable(name: "hx", scope: !17, file: !1, line: 35, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !26, line: 77, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "ix", scope: !17, file: !1, line: 35, type: !25)
!29 = !DILocalVariable(name: "gf_u", scope: !30, file: !1, line: 36, type: !31)
!30 = distinct !DILexicalBlock(scope: !17, file: !1, line: 36, column: 2)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !32, line: 347, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !32, line: 343, size: 32, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !32, line: 345, baseType: !4, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !33, file: !32, line: 346, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !26, line: 79, baseType: !38)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 28, column: 21, scope: !17)
!40 = !DILocation(line: 36, column: 2, scope: !30)
!41 = !DILocation(line: 35, column: 12, scope: !17)
!42 = !DILocation(line: 37, column: 9, scope: !17)
!43 = !DILocation(line: 35, column: 15, scope: !17)
!44 = !DILocation(line: 38, column: 6, scope: !45)
!45 = distinct !DILexicalBlock(scope: !17, file: !1, line: 38, column: 5)
!46 = !DILocation(line: 38, column: 5, scope: !17)
!47 = !DILocation(line: 38, column: 39, scope: !45)
!48 = !DILocation(line: 38, column: 31, scope: !45)
!49 = !DILocation(line: 39, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !17, file: !1, line: 39, column: 5)
!51 = !DILocation(line: 39, column: 5, scope: !17)
!52 = !DILocation(line: 40, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 40, column: 9)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 39, column: 21)
!55 = !DILocation(line: 40, column: 15, scope: !53)
!56 = !DILocation(line: 40, column: 9, scope: !54)
!57 = !DILocation(line: 0, scope: !17)
!58 = !DILocation(line: 44, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 5)
!60 = !DILocation(line: 42, column: 7, scope: !59)
!61 = !DILocation(line: 42, column: 5, scope: !17)
!62 = !DILocation(line: 43, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 42, column: 20)
!64 = !DILocation(line: 43, column: 10, scope: !63)
!65 = !DILocation(line: 43, column: 34, scope: !63)
!66 = !DILocation(line: 34, column: 10, scope: !17)
!67 = !DILocation(line: 44, column: 2, scope: !63)
!68 = !DILocation(line: 44, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !59, file: !1, line: 44, column: 13)
!70 = !DILocation(line: 45, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !69, file: !1, line: 44, column: 28)
!72 = !DILocation(line: 34, column: 8, scope: !17)
!73 = !DILocation(line: 46, column: 35, scope: !71)
!74 = !DILocation(line: 46, column: 60, scope: !71)
!75 = !DILocation(line: 46, column: 62, scope: !71)
!76 = !DILocation(line: 46, column: 43, scope: !71)
!77 = !DILocation(line: 46, column: 67, scope: !71)
!78 = !DILocation(line: 46, column: 41, scope: !71)
!79 = !DILocation(line: 46, column: 37, scope: !71)
!80 = !DILocation(line: 46, column: 10, scope: !71)
!81 = !DILocation(line: 47, column: 2, scope: !71)
!82 = !DILocation(line: 48, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !69, file: !1, line: 47, column: 9)
!84 = !DILocation(line: 49, column: 16, scope: !83)
!85 = !DILocation(line: 49, column: 51, scope: !83)
!86 = !DILocation(line: 49, column: 32, scope: !83)
!87 = !DILocation(line: 49, column: 31, scope: !83)
!88 = !DILocation(line: 49, column: 26, scope: !83)
!89 = !DILocation(line: 49, column: 24, scope: !83)
!90 = !DILocation(line: 49, column: 9, scope: !83)
!91 = !DILocation(line: 0, scope: !83)
!92 = !DILocation(line: 51, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !17, file: !1, line: 51, column: 5)
!94 = !DILocation(line: 51, column: 5, scope: !17)
!95 = !DILocation(line: 51, column: 33, scope: !93)
!96 = !DILocation(line: 0, scope: !45)
!97 = !DILocation(line: 52, column: 1, scope: !17)
