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
  br i1 %4, label %7, label %5, !dbg !46

; <label>:5:                                      ; preds = %1
  %6 = fadd float %0, %0, !dbg !47
  br label %44, !dbg !48

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %3, 830472192, !dbg !49
  %9 = fadd float %0, 0x46293E5940000000, !dbg !51
  %10 = fcmp ogt float %9, 1.000000e+00, !dbg !54
  %11 = and i1 %10, %8, !dbg !55
  br i1 %11, label %44, label %12, !dbg !55

; <label>:12:                                     ; preds = %7
  %13 = icmp ugt i32 %3, 1300234240, !dbg !56
  br i1 %13, label %14, label %18, !dbg !58

; <label>:14:                                     ; preds = %12
  %15 = tail call float @fabsf(float %0) #3, !dbg !59
  %16 = tail call float @__ieee754_logf(float %15) #3, !dbg !61
  %17 = fadd float %16, 0x3FE62E4300000000, !dbg !62
  br label %39, !dbg !64

; <label>:18:                                     ; preds = %12
  %19 = icmp ugt i32 %3, 1073741824, !dbg !65
  br i1 %19, label %20, label %30, !dbg !67

; <label>:20:                                     ; preds = %18
  %21 = tail call float @fabsf(float %0) #3, !dbg !68
  %22 = fmul float %21, 2.000000e+00, !dbg !71
  %23 = fmul float %0, %0, !dbg !72
  %24 = fadd float %23, 1.000000e+00, !dbg !73
  %25 = tail call float @__ieee754_sqrtf(float %24) #3, !dbg !74
  %26 = fadd float %21, %25, !dbg !75
  %27 = fdiv float 1.000000e+00, %26, !dbg !76
  %28 = fadd float %22, %27, !dbg !77
  %29 = tail call float @__ieee754_logf(float %28) #3, !dbg !78
  br label %39, !dbg !79

; <label>:30:                                     ; preds = %18
  %31 = fmul float %0, %0, !dbg !80
  %32 = tail call float @fabsf(float %0) #3, !dbg !82
  %33 = fadd float %31, 1.000000e+00, !dbg !83
  %34 = tail call float @__ieee754_sqrtf(float %33) #3, !dbg !84
  %35 = fadd float %34, 1.000000e+00, !dbg !85
  %36 = fdiv float %31, %35, !dbg !86
  %37 = fadd float %32, %36, !dbg !87
  %38 = tail call float @log1pf(float %37) #3, !dbg !88
  br label %39

; <label>:39:                                     ; preds = %20, %30, %14
  %40 = phi float [ %17, %14 ], [ %29, %20 ], [ %38, %30 ], !dbg !89
  %41 = icmp sgt i32 %2, 0, !dbg !90
  %42 = fsub float -0.000000e+00, %40, !dbg !92
  %43 = select i1 %41, float %40, float %42, !dbg !93
  br label %44, !dbg !93

; <label>:44:                                     ; preds = %39, %7, %5
  %45 = phi float [ %6, %5 ], [ %0, %7 ], [ %43, %39 ], !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  ret float %45, !dbg !95
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
!51 = !DILocation(line: 40, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 40, column: 9)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 39, column: 21)
!54 = !DILocation(line: 40, column: 15, scope: !52)
!55 = !DILocation(line: 39, column: 5, scope: !17)
!56 = !DILocation(line: 42, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 5)
!58 = !DILocation(line: 42, column: 5, scope: !17)
!59 = !DILocation(line: 43, column: 25, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 42, column: 20)
!61 = !DILocation(line: 43, column: 10, scope: !60)
!62 = !DILocation(line: 43, column: 34, scope: !60)
!63 = !DILocation(line: 34, column: 10, scope: !17)
!64 = !DILocation(line: 44, column: 2, scope: !60)
!65 = !DILocation(line: 44, column: 15, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 44, column: 13)
!67 = !DILocation(line: 44, column: 13, scope: !57)
!68 = !DILocation(line: 45, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 44, column: 28)
!70 = !DILocation(line: 34, column: 8, scope: !17)
!71 = !DILocation(line: 46, column: 35, scope: !69)
!72 = !DILocation(line: 46, column: 60, scope: !69)
!73 = !DILocation(line: 46, column: 62, scope: !69)
!74 = !DILocation(line: 46, column: 43, scope: !69)
!75 = !DILocation(line: 46, column: 67, scope: !69)
!76 = !DILocation(line: 46, column: 41, scope: !69)
!77 = !DILocation(line: 46, column: 37, scope: !69)
!78 = !DILocation(line: 46, column: 10, scope: !69)
!79 = !DILocation(line: 47, column: 2, scope: !69)
!80 = !DILocation(line: 48, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !66, file: !1, line: 47, column: 9)
!82 = !DILocation(line: 49, column: 16, scope: !81)
!83 = !DILocation(line: 49, column: 51, scope: !81)
!84 = !DILocation(line: 49, column: 32, scope: !81)
!85 = !DILocation(line: 49, column: 31, scope: !81)
!86 = !DILocation(line: 49, column: 26, scope: !81)
!87 = !DILocation(line: 49, column: 24, scope: !81)
!88 = !DILocation(line: 49, column: 9, scope: !81)
!89 = !DILocation(line: 0, scope: !81)
!90 = !DILocation(line: 51, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !17, file: !1, line: 51, column: 5)
!92 = !DILocation(line: 51, column: 33, scope: !91)
!93 = !DILocation(line: 51, column: 5, scope: !17)
!94 = !DILocation(line: 0, scope: !45)
!95 = !DILocation(line: 52, column: 1, scope: !17)
