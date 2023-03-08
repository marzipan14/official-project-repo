; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atan2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atan2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0
@switch.table.__ieee754_atan2f = private unnamed_addr constant [4 x float] [float 0x4002D97C80000000, float 0xC002D97C80000000, float 0x3FE921FB60000000, float 0xBFE921FB60000000]
@switch.table.__ieee754_atan2f.1 = private unnamed_addr constant [4 x float] [float 0x400921FB60000000, float 0xC00921FB60000000, float 0.000000e+00, float -0.000000e+00]

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_atan2f(float, float) local_unnamed_addr #0 !dbg !23 {
  %3 = bitcast float %1 to i32, !dbg !60
  %4 = and i32 %3, 2147483647, !dbg !62
  %5 = bitcast float %0 to i32, !dbg !64
  %6 = and i32 %5, 2147483647, !dbg !66
  %7 = icmp ugt i32 %4, 2139095040, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %7, label %10, label %8, !dbg !70

; <label>:8:                                      ; preds = %2
  %9 = icmp ugt i32 %6, 2139095040, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %9, label %10, label %12, !dbg !72

; <label>:10:                                     ; preds = %8, %2
  %11 = fadd float %0, %1, !dbg !73
  br label %73, !dbg !74

; <label>:12:                                     ; preds = %8
  %13 = icmp eq i32 %3, 1065353216, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %13, label %14, label %16, !dbg !77

; <label>:14:                                     ; preds = %12
  %15 = tail call float @atanf(float %0) #3, !dbg !78
  br label %73, !dbg !79

; <label>:16:                                     ; preds = %12
  %17 = lshr i32 %5, 31, !dbg !80
  %18 = lshr i32 %3, 30, !dbg !81
  %19 = and i32 %18, 2, !dbg !82
  %20 = or i32 %19, %17, !dbg !83
  %21 = icmp eq i32 %6, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %21, label %22, label %27, !dbg !87

; <label>:22:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  %23 = trunc i32 %20 to i2, !dbg !88
  switch i2 %23, label %26 [
    i2 0, label %73
    i2 1, label %73
    i2 -2, label %24
    i2 -1, label %25
  ], !dbg !88

; <label>:24:                                     ; preds = %22
  br label %73, !dbg !90

; <label>:25:                                     ; preds = %22
  br label %73, !dbg !92

; <label>:26:                                     ; preds = %22
  unreachable

; <label>:27:                                     ; preds = %16
  %28 = icmp eq i32 %4, 0, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %28, label %29, label %32, !dbg !95

; <label>:29:                                     ; preds = %27
  %30 = icmp slt i32 %5, 0, !dbg !96
  %31 = select i1 %30, float 0xBFF921FB60000000, float 0x3FF921FB60000000, !dbg !97
  br label %73, !dbg !98

; <label>:32:                                     ; preds = %27
  %33 = icmp eq i32 %4, 2139095040, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  %34 = icmp eq i32 %6, 2139095040, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %33, label %35, label %45, !dbg !101

; <label>:35:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  %36 = trunc i32 %20 to i2, !dbg !105
  %37 = xor i2 %36, -2, !dbg !105
  %38 = zext i2 %37 to i64, !dbg !105
  br i1 %34, label %39, label %42, !dbg !109

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds [4 x float], [4 x float]* @switch.table.__ieee754_atan2f, i64 0, i64 %38, !dbg !110
  %41 = load float, float* %40, align 4, !dbg !110
  br label %73, !dbg !110

; <label>:42:                                     ; preds = %35
  %43 = getelementptr inbounds [4 x float], [4 x float]* @switch.table.__ieee754_atan2f.1, i64 0, i64 %38, !dbg !112
  %44 = load float, float* %43, align 4, !dbg !112
  br label %73, !dbg !112

; <label>:45:                                     ; preds = %32
  br i1 %34, label %46, label %49, !dbg !113

; <label>:46:                                     ; preds = %45
  %47 = icmp slt i32 %5, 0, !dbg !114
  %48 = select i1 %47, float 0xBFF921FB60000000, float 0x3FF921FB60000000, !dbg !115
  br label %73, !dbg !116

; <label>:49:                                     ; preds = %45
  %50 = sub nsw i32 %6, %4, !dbg !117
  %51 = icmp sgt i32 %50, 511705087, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %51, label %60, label %52, !dbg !120

; <label>:52:                                     ; preds = %49
  %53 = icmp slt i32 %3, 0, !dbg !122
  %54 = icmp slt i32 %50, -503316480, !dbg !124
  %55 = and i1 %53, %54, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %55, label %60, label %56, !dbg !125

; <label>:56:                                     ; preds = %52
  %57 = fdiv float %0, %1, !dbg !126
  %58 = tail call float @fabsf(float %57) #3, !dbg !127
  %59 = tail call float @atanf(float %58) #3, !dbg !128
  br label %60

; <label>:60:                                     ; preds = %52, %49, %56
  %61 = phi float [ %59, %56 ], [ 0x3FF921FB60000000, %49 ], [ 0.000000e+00, %52 ], !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  %62 = trunc i32 %20 to i2, !dbg !131
  switch i2 %62, label %70 [
    i2 0, label %73
    i2 1, label %63
    i2 -2, label %67
  ], !dbg !131

; <label>:63:                                     ; preds = %60
  %64 = bitcast float %61 to i32, !dbg !132
  %65 = xor i32 %64, -2147483648, !dbg !134
  %66 = bitcast i32 %65 to float, !dbg !134
  br label %73, !dbg !135

; <label>:67:                                     ; preds = %60
  %68 = fadd float %61, 0x3E7777A5C0000000, !dbg !136
  %69 = fsub float 0x400921FB60000000, %68, !dbg !137
  br label %73, !dbg !138

; <label>:70:                                     ; preds = %60
  %71 = fadd float %61, 0x3E7777A5C0000000, !dbg !139
  %72 = fadd float %71, 0xC00921FB60000000, !dbg !140
  br label %73, !dbg !141

; <label>:73:                                     ; preds = %60, %42, %39, %22, %22, %70, %67, %63, %46, %29, %25, %24, %14, %10
  %74 = phi float [ %11, %10 ], [ %15, %14 ], [ %31, %29 ], [ %48, %46 ], [ %72, %70 ], [ %69, %67 ], [ %66, %63 ], [ 0xC00921FB60000000, %25 ], [ 0x400921FB60000000, %24 ], [ %0, %22 ], [ %0, %22 ], [ %41, %39 ], [ %44, %42 ], [ %61, %60 ], !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret float %74, !dbg !144
}

; Function Attrs: noredzone
declare dso_local float @atanf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atan2.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9, !11, !13, !15, !17}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1078530011, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !1, line: 28, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 24, type: !8, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1070141403, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "pi_o_2", scope: !0, file: !1, line: 27, type: !8, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 1061752795, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "pi_o_4", scope: !0, file: !1, line: 26, type: !8, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 25, type: !8, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 3015425326, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "pi_lo", scope: !0, file: !1, line: 29, type: !8, isLocal: true, isDefinition: true)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "__ieee754_atan2f", scope: !1, file: !1, line: 32, type: !24, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!4, !4, !4}
!26 = !{!27, !28, !29, !30, !34, !35, !36, !37, !38, !39, !49, !51, !54, !56}
!27 = !DILocalVariable(name: "y", arg: 1, scope: !23, file: !1, line: 32, type: !4)
!28 = !DILocalVariable(name: "x", arg: 2, scope: !23, file: !1, line: 32, type: !4)
!29 = !DILocalVariable(name: "z", scope: !23, file: !1, line: 38, type: !4)
!30 = !DILocalVariable(name: "k", scope: !23, file: !1, line: 39, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !32, line: 77, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "m", scope: !23, file: !1, line: 39, type: !31)
!35 = !DILocalVariable(name: "hx", scope: !23, file: !1, line: 39, type: !31)
!36 = !DILocalVariable(name: "hy", scope: !23, file: !1, line: 39, type: !31)
!37 = !DILocalVariable(name: "ix", scope: !23, file: !1, line: 39, type: !31)
!38 = !DILocalVariable(name: "iy", scope: !23, file: !1, line: 39, type: !31)
!39 = !DILocalVariable(name: "gf_u", scope: !40, file: !1, line: 41, type: !41)
!40 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !42, line: 347, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 343, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 345, baseType: !4, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !43, file: !42, line: 346, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 79, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DILocalVariable(name: "gf_u", scope: !50, file: !1, line: 43, type: !41)
!50 = distinct !DILexicalBlock(scope: !23, file: !1, line: 43, column: 2)
!51 = !DILocalVariable(name: "zh", scope: !52, file: !1, line: 92, type: !47)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 91, column: 14)
!53 = distinct !DILexicalBlock(scope: !23, file: !1, line: 89, column: 13)
!54 = !DILocalVariable(name: "gf_u", scope: !55, file: !1, line: 93, type: !41)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 93, column: 9)
!56 = !DILocalVariable(name: "sf_u", scope: !57, file: !1, line: 94, type: !41)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 94, column: 9)
!58 = !DILocation(line: 32, column: 31, scope: !23)
!59 = !DILocation(line: 32, column: 40, scope: !23)
!60 = !DILocation(line: 41, column: 2, scope: !40)
!61 = !DILocation(line: 39, column: 16, scope: !23)
!62 = !DILocation(line: 42, column: 9, scope: !23)
!63 = !DILocation(line: 39, column: 22, scope: !23)
!64 = !DILocation(line: 43, column: 2, scope: !50)
!65 = !DILocation(line: 39, column: 19, scope: !23)
!66 = !DILocation(line: 44, column: 9, scope: !23)
!67 = !DILocation(line: 39, column: 25, scope: !23)
!68 = !DILocation(line: 45, column: 5, scope: !69)
!69 = distinct !DILexicalBlock(scope: !23, file: !1, line: 45, column: 5)
!70 = !DILocation(line: 45, column: 25, scope: !69)
!71 = !DILocation(line: 46, column: 5, scope: !69)
!72 = !DILocation(line: 45, column: 5, scope: !23)
!73 = !DILocation(line: 47, column: 13, scope: !69)
!74 = !DILocation(line: 47, column: 5, scope: !69)
!75 = !DILocation(line: 48, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !23, file: !1, line: 48, column: 5)
!77 = !DILocation(line: 48, column: 5, scope: !23)
!78 = !DILocation(line: 48, column: 28, scope: !76)
!79 = !DILocation(line: 48, column: 21, scope: !76)
!80 = !DILocation(line: 49, column: 10, scope: !23)
!81 = !DILocation(line: 49, column: 23, scope: !23)
!82 = !DILocation(line: 49, column: 28, scope: !23)
!83 = !DILocation(line: 49, column: 18, scope: !23)
!84 = !DILocation(line: 39, column: 14, scope: !23)
!85 = !DILocation(line: 52, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !23, file: !1, line: 52, column: 5)
!87 = !DILocation(line: 52, column: 5, scope: !23)
!88 = !DILocation(line: 53, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 52, column: 28)
!90 = !DILocation(line: 56, column: 11, scope: !91)
!91 = distinct !DILexicalBlock(scope: !89, file: !1, line: 53, column: 16)
!92 = !DILocation(line: 57, column: 11, scope: !91)
!93 = !DILocation(line: 61, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !23, file: !1, line: 61, column: 5)
!95 = !DILocation(line: 61, column: 5, scope: !23)
!96 = !DILocation(line: 61, column: 38, scope: !94)
!97 = !DILocation(line: 61, column: 35, scope: !94)
!98 = !DILocation(line: 61, column: 28, scope: !94)
!99 = !DILocation(line: 64, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !23, file: !1, line: 64, column: 5)
!101 = !DILocation(line: 64, column: 5, scope: !23)
!102 = !DILocation(line: 0, scope: !103)
!103 = distinct !DILexicalBlock(scope: !23, file: !1, line: 82, column: 5)
!104 = !DILocation(line: 0, scope: !23)
!105 = !DILocation(line: 0, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 72, column: 13)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 65, column: 9)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 64, column: 32)
!109 = !DILocation(line: 65, column: 9, scope: !108)
!110 = !DILocation(line: 66, column: 3, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 65, column: 36)
!112 = !DILocation(line: 73, column: 3, scope: !106)
!113 = !DILocation(line: 82, column: 5, scope: !23)
!114 = !DILocation(line: 82, column: 42, scope: !103)
!115 = !DILocation(line: 82, column: 39, scope: !103)
!116 = !DILocation(line: 82, column: 32, scope: !103)
!117 = !DILocation(line: 85, column: 9, scope: !23)
!118 = !DILocation(line: 86, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !23, file: !1, line: 86, column: 5)
!120 = !DILocation(line: 86, column: 5, scope: !23)
!121 = !DILocation(line: 39, column: 12, scope: !23)
!122 = !DILocation(line: 87, column: 12, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 87, column: 10)
!124 = !DILocation(line: 87, column: 17, scope: !123)
!125 = !DILocation(line: 87, column: 14, scope: !123)
!126 = !DILocation(line: 88, column: 22, scope: !123)
!127 = !DILocation(line: 88, column: 15, scope: !123)
!128 = !DILocation(line: 88, column: 9, scope: !123)
!129 = !DILocation(line: 38, column: 8, scope: !23)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 89, column: 2, scope: !23)
!132 = !DILocation(line: 93, column: 9, scope: !55)
!133 = !DILocation(line: 92, column: 24, scope: !52)
!134 = !DILocation(line: 94, column: 9, scope: !57)
!135 = !DILocation(line: 96, column: 7, scope: !53)
!136 = !DILocation(line: 97, column: 27, scope: !53)
!137 = !DILocation(line: 97, column: 24, scope: !53)
!138 = !DILocation(line: 97, column: 14, scope: !53)
!139 = !DILocation(line: 99, column: 21, scope: !53)
!140 = !DILocation(line: 99, column: 28, scope: !53)
!141 = !DILocation(line: 99, column: 11, scope: !53)
!142 = !DILocation(line: 0, scope: !91)
!143 = !DILocation(line: 0, scope: !69)
!144 = !DILocation(line: 101, column: 1, scope: !23)
