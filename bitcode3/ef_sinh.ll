; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_sinhf(float) local_unnamed_addr #0 !dbg !15 {
  %2 = bitcast float %0 to i32, !dbg !39
  %3 = and i32 %2, 2147483647, !dbg !41
  %4 = icmp ult i32 %3, 2139095040, !dbg !43
  br i1 %4, label %7, label %5, !dbg !45

; <label>:5:                                      ; preds = %1
  %6 = fadd float %0, %0, !dbg !46
  br label %48, !dbg !47

; <label>:7:                                      ; preds = %1
  %8 = icmp slt i32 %2, 0, !dbg !49
  %9 = select i1 %8, float -5.000000e-01, float 5.000000e-01, !dbg !51
  %10 = icmp ult i32 %3, 1102053376, !dbg !52
  br i1 %10, label %11, label %32, !dbg !54

; <label>:11:                                     ; preds = %7
  %12 = icmp ult i32 %3, 830472192, !dbg !55
  %13 = fadd float %0, 0x479E17B840000000, !dbg !58
  %14 = fcmp ogt float %13, 1.000000e+00, !dbg !60
  %15 = and i1 %14, %12, !dbg !61
  br i1 %15, label %48, label %16, !dbg !61

; <label>:16:                                     ; preds = %11
  %17 = tail call float @fabsf(float %0) #3, !dbg !62
  %18 = tail call float @expm1f(float %17) #3, !dbg !63
  %19 = icmp ult i32 %3, 1065353216, !dbg !65
  br i1 %19, label %20, label %27, !dbg !67

; <label>:20:                                     ; preds = %16
  %21 = fmul float %18, 2.000000e+00, !dbg !68
  %22 = fmul float %18, %18, !dbg !69
  %23 = fadd float %18, 1.000000e+00, !dbg !70
  %24 = fdiv float %22, %23, !dbg !71
  %25 = fsub float %21, %24, !dbg !72
  %26 = fmul float %9, %25, !dbg !73
  br label %48, !dbg !74

; <label>:27:                                     ; preds = %16
  %28 = fadd float %18, 1.000000e+00, !dbg !75
  %29 = fdiv float %18, %28, !dbg !76
  %30 = fadd float %18, %29, !dbg !77
  %31 = fmul float %9, %30, !dbg !78
  br label %48, !dbg !79

; <label>:32:                                     ; preds = %7
  %33 = icmp ult i32 %3, 1118925336, !dbg !80
  br i1 %33, label %34, label %38, !dbg !82

; <label>:34:                                     ; preds = %32
  %35 = tail call float @fabsf(float %0) #3, !dbg !83
  %36 = tail call float @__ieee754_expf(float %35) #3, !dbg !84
  %37 = fmul float %9, %36, !dbg !85
  br label %48, !dbg !86

; <label>:38:                                     ; preds = %32
  %39 = icmp ult i32 %3, 1119016189, !dbg !87
  br i1 %39, label %40, label %46, !dbg !89

; <label>:40:                                     ; preds = %38
  %41 = tail call float @fabsf(float %0) #3, !dbg !90
  %42 = fmul float %41, 5.000000e-01, !dbg !92
  %43 = tail call float @__ieee754_expf(float %42) #3, !dbg !93
  %44 = fmul float %9, %43, !dbg !95
  %45 = fmul float %43, %44, !dbg !96
  br label %48, !dbg !97

; <label>:46:                                     ; preds = %38
  %47 = fmul float %0, 0x479E17B840000000, !dbg !98
  br label %48, !dbg !99

; <label>:48:                                     ; preds = %11, %46, %40, %34, %27, %20, %5
  %49 = phi float [ %26, %20 ], [ %31, %27 ], [ %37, %34 ], [ %45, %40 ], [ %47, %46 ], [ %6, %5 ], [ %0, %11 ], !dbg !100
  ret float %49, !dbg !101
}

; Function Attrs: noredzone
declare dso_local float @expm1f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_expf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sinh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 2096152002, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "shuge", scope: !0, file: !1, line: 19, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 19, type: !8, isLocal: true, isDefinition: true)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "__ieee754_sinhf", scope: !1, file: !1, line: 25, type: !16, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4}
!18 = !{!19, !20, !21, !22, !23, !27, !28}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 25, type: !4)
!20 = !DILocalVariable(name: "t", scope: !15, file: !1, line: 31, type: !4)
!21 = !DILocalVariable(name: "w", scope: !15, file: !1, line: 31, type: !4)
!22 = !DILocalVariable(name: "h", scope: !15, file: !1, line: 31, type: !4)
!23 = !DILocalVariable(name: "ix", scope: !15, file: !1, line: 32, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "jx", scope: !15, file: !1, line: 32, type: !24)
!28 = !DILocalVariable(name: "gf_u", scope: !29, file: !1, line: 34, type: !30)
!29 = distinct !DILexicalBlock(scope: !15, file: !1, line: 34, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !31, line: 347, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 343, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 345, baseType: !4, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !32, file: !31, line: 346, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 25, column: 30, scope: !15)
!39 = !DILocation(line: 34, column: 2, scope: !29)
!40 = !DILocation(line: 32, column: 15, scope: !15)
!41 = !DILocation(line: 35, column: 9, scope: !15)
!42 = !DILocation(line: 32, column: 12, scope: !15)
!43 = !DILocation(line: 38, column: 6, scope: !44)
!44 = distinct !DILexicalBlock(scope: !15, file: !1, line: 38, column: 5)
!45 = !DILocation(line: 38, column: 5, scope: !15)
!46 = !DILocation(line: 38, column: 39, scope: !44)
!47 = !DILocation(line: 38, column: 31, scope: !44)
!48 = !DILocation(line: 31, column: 12, scope: !15)
!49 = !DILocation(line: 41, column: 8, scope: !50)
!50 = distinct !DILexicalBlock(scope: !15, file: !1, line: 41, column: 6)
!51 = !DILocation(line: 41, column: 6, scope: !15)
!52 = !DILocation(line: 43, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !15, file: !1, line: 43, column: 6)
!54 = !DILocation(line: 43, column: 6, scope: !15)
!55 = !DILocation(line: 44, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 44, column: 10)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 23)
!58 = !DILocation(line: 45, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 45, column: 6)
!60 = !DILocation(line: 45, column: 13, scope: !59)
!61 = !DILocation(line: 44, column: 10, scope: !57)
!62 = !DILocation(line: 46, column: 17, scope: !57)
!63 = !DILocation(line: 46, column: 10, scope: !57)
!64 = !DILocation(line: 31, column: 8, scope: !15)
!65 = !DILocation(line: 47, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 47, column: 9)
!67 = !DILocation(line: 47, column: 9, scope: !57)
!68 = !DILocation(line: 47, column: 44, scope: !66)
!69 = !DILocation(line: 47, column: 48, scope: !66)
!70 = !DILocation(line: 47, column: 53, scope: !66)
!71 = !DILocation(line: 47, column: 50, scope: !66)
!72 = !DILocation(line: 47, column: 46, scope: !66)
!73 = !DILocation(line: 47, column: 32, scope: !66)
!74 = !DILocation(line: 47, column: 24, scope: !66)
!75 = !DILocation(line: 48, column: 22, scope: !57)
!76 = !DILocation(line: 48, column: 19, scope: !57)
!77 = !DILocation(line: 48, column: 17, scope: !57)
!78 = !DILocation(line: 48, column: 14, scope: !57)
!79 = !DILocation(line: 48, column: 6, scope: !57)
!80 = !DILocation(line: 52, column: 8, scope: !81)
!81 = distinct !DILexicalBlock(scope: !15, file: !1, line: 52, column: 6)
!82 = !DILocation(line: 52, column: 6, scope: !15)
!83 = !DILocation(line: 52, column: 54, scope: !81)
!84 = !DILocation(line: 52, column: 39, scope: !81)
!85 = !DILocation(line: 52, column: 38, scope: !81)
!86 = !DILocation(line: 52, column: 30, scope: !81)
!87 = !DILocation(line: 55, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !15, file: !1, line: 55, column: 6)
!89 = !DILocation(line: 55, column: 6, scope: !15)
!90 = !DILocation(line: 56, column: 36, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 55, column: 30)
!92 = !DILocation(line: 56, column: 35, scope: !91)
!93 = !DILocation(line: 56, column: 10, scope: !91)
!94 = !DILocation(line: 31, column: 10, scope: !15)
!95 = !DILocation(line: 57, column: 11, scope: !91)
!96 = !DILocation(line: 58, column: 14, scope: !91)
!97 = !DILocation(line: 58, column: 6, scope: !91)
!98 = !DILocation(line: 62, column: 10, scope: !15)
!99 = !DILocation(line: 62, column: 2, scope: !15)
!100 = !DILocation(line: 0, scope: !44)
!101 = !DILocation(line: 63, column: 1, scope: !15)
