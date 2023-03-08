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
  %8 = icmp ugt i32 %6, 2139095040, !dbg !70
  %9 = or i1 %8, %7, !dbg !71
  br i1 %9, label %10, label %12, !dbg !71

; <label>:10:                                     ; preds = %2
  %11 = fadd float %0, %1, !dbg !72
  br label %72, !dbg !73

; <label>:12:                                     ; preds = %2
  %13 = icmp eq i32 %3, 1065353216, !dbg !74
  br i1 %13, label %14, label %16, !dbg !76

; <label>:14:                                     ; preds = %12
  %15 = tail call float @atanf(float %0) #3, !dbg !77
  br label %72, !dbg !78

; <label>:16:                                     ; preds = %12
  %17 = lshr i32 %5, 31, !dbg !79
  %18 = lshr i32 %3, 30, !dbg !80
  %19 = and i32 %18, 2, !dbg !81
  %20 = or i32 %19, %17, !dbg !82
  %21 = icmp eq i32 %6, 0, !dbg !84
  br i1 %21, label %22, label %27, !dbg !86

; <label>:22:                                     ; preds = %16
  %23 = trunc i32 %20 to i2, !dbg !87
  switch i2 %23, label %26 [
    i2 0, label %72
    i2 1, label %72
    i2 -2, label %24
    i2 -1, label %25
  ], !dbg !87

; <label>:24:                                     ; preds = %22
  br label %72, !dbg !89

; <label>:25:                                     ; preds = %22
  br label %72, !dbg !91

; <label>:26:                                     ; preds = %22
  unreachable

; <label>:27:                                     ; preds = %16
  %28 = trunc i32 %3 to i31, !dbg !92
  switch i31 %28, label %43 [
    i31 0, label %29
    i31 -8388608, label %32
  ], !dbg !92

; <label>:29:                                     ; preds = %27
  %30 = icmp slt i32 %5, 0, !dbg !93
  %31 = select i1 %30, float 0xBFF921FB60000000, float 0x3FF921FB60000000, !dbg !95
  br label %72, !dbg !96

; <label>:32:                                     ; preds = %27
  %33 = icmp eq i32 %6, 2139095040, !dbg !97
  %34 = trunc i32 %20 to i2, !dbg !101
  %35 = xor i2 %34, -2, !dbg !101
  %36 = zext i2 %35 to i64, !dbg !101
  br i1 %33, label %37, label %40, !dbg !103

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds [4 x float], [4 x float]* @switch.table.__ieee754_atan2f, i64 0, i64 %36, !dbg !104
  %39 = load float, float* %38, align 4, !dbg !104
  br label %72, !dbg !104

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds [4 x float], [4 x float]* @switch.table.__ieee754_atan2f.1, i64 0, i64 %36, !dbg !106
  %42 = load float, float* %41, align 4, !dbg !106
  br label %72, !dbg !106

; <label>:43:                                     ; preds = %27
  %44 = icmp eq i32 %6, 2139095040, !dbg !107
  br i1 %44, label %45, label %48, !dbg !109

; <label>:45:                                     ; preds = %43
  %46 = icmp slt i32 %5, 0, !dbg !110
  %47 = select i1 %46, float 0xBFF921FB60000000, float 0x3FF921FB60000000, !dbg !111
  br label %72, !dbg !112

; <label>:48:                                     ; preds = %43
  %49 = sub nsw i32 %6, %4, !dbg !113
  %50 = icmp sgt i32 %49, 511705087, !dbg !114
  br i1 %50, label %59, label %51, !dbg !116

; <label>:51:                                     ; preds = %48
  %52 = icmp slt i32 %3, 0, !dbg !118
  %53 = icmp slt i32 %49, -503316480, !dbg !120
  %54 = and i1 %52, %53, !dbg !121
  br i1 %54, label %59, label %55, !dbg !121

; <label>:55:                                     ; preds = %51
  %56 = fdiv float %0, %1, !dbg !122
  %57 = tail call float @fabsf(float %56) #3, !dbg !123
  %58 = tail call float @atanf(float %57) #3, !dbg !124
  br label %59

; <label>:59:                                     ; preds = %51, %48, %55
  %60 = phi float [ %58, %55 ], [ 0x3FF921FB60000000, %48 ], [ 0.000000e+00, %51 ], !dbg !126
  %61 = trunc i32 %20 to i2, !dbg !127
  switch i2 %61, label %69 [
    i2 0, label %72
    i2 1, label %62
    i2 -2, label %66
  ], !dbg !127

; <label>:62:                                     ; preds = %59
  %63 = bitcast float %60 to i32, !dbg !128
  %64 = xor i32 %63, -2147483648, !dbg !130
  %65 = bitcast i32 %64 to float, !dbg !130
  br label %72, !dbg !131

; <label>:66:                                     ; preds = %59
  %67 = fadd float %60, 0x3E7777A5C0000000, !dbg !132
  %68 = fsub float 0x400921FB60000000, %67, !dbg !133
  br label %72, !dbg !134

; <label>:69:                                     ; preds = %59
  %70 = fadd float %60, 0x3E7777A5C0000000, !dbg !135
  %71 = fadd float %70, 0xC00921FB60000000, !dbg !136
  br label %72, !dbg !137

; <label>:72:                                     ; preds = %40, %37, %59, %22, %22, %69, %66, %62, %45, %29, %25, %24, %14, %10
  %73 = phi float [ %11, %10 ], [ %15, %14 ], [ %31, %29 ], [ %47, %45 ], [ %71, %69 ], [ %68, %66 ], [ %65, %62 ], [ 0xC00921FB60000000, %25 ], [ 0x400921FB60000000, %24 ], [ %0, %22 ], [ %0, %22 ], [ %60, %59 ], [ %39, %37 ], [ %42, %40 ], !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  ret float %73, !dbg !139
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
!70 = !DILocation(line: 46, column: 5, scope: !69)
!71 = !DILocation(line: 45, column: 25, scope: !69)
!72 = !DILocation(line: 47, column: 13, scope: !69)
!73 = !DILocation(line: 47, column: 5, scope: !69)
!74 = !DILocation(line: 48, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !23, file: !1, line: 48, column: 5)
!76 = !DILocation(line: 48, column: 5, scope: !23)
!77 = !DILocation(line: 48, column: 28, scope: !75)
!78 = !DILocation(line: 48, column: 21, scope: !75)
!79 = !DILocation(line: 49, column: 10, scope: !23)
!80 = !DILocation(line: 49, column: 23, scope: !23)
!81 = !DILocation(line: 49, column: 28, scope: !23)
!82 = !DILocation(line: 49, column: 18, scope: !23)
!83 = !DILocation(line: 39, column: 14, scope: !23)
!84 = !DILocation(line: 52, column: 5, scope: !85)
!85 = distinct !DILexicalBlock(scope: !23, file: !1, line: 52, column: 5)
!86 = !DILocation(line: 52, column: 5, scope: !23)
!87 = !DILocation(line: 53, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 52, column: 28)
!89 = !DILocation(line: 56, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !1, line: 53, column: 16)
!91 = !DILocation(line: 57, column: 11, scope: !90)
!92 = !DILocation(line: 61, column: 5, scope: !23)
!93 = !DILocation(line: 61, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !23, file: !1, line: 61, column: 5)
!95 = !DILocation(line: 61, column: 35, scope: !94)
!96 = !DILocation(line: 61, column: 28, scope: !94)
!97 = !DILocation(line: 65, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 65, column: 9)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 64, column: 32)
!100 = distinct !DILexicalBlock(scope: !23, file: !1, line: 64, column: 5)
!101 = !DILocation(line: 0, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 72, column: 13)
!103 = !DILocation(line: 65, column: 9, scope: !99)
!104 = !DILocation(line: 66, column: 3, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 65, column: 36)
!106 = !DILocation(line: 73, column: 3, scope: !102)
!107 = !DILocation(line: 82, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !23, file: !1, line: 82, column: 5)
!109 = !DILocation(line: 82, column: 5, scope: !23)
!110 = !DILocation(line: 82, column: 42, scope: !108)
!111 = !DILocation(line: 82, column: 39, scope: !108)
!112 = !DILocation(line: 82, column: 32, scope: !108)
!113 = !DILocation(line: 85, column: 9, scope: !23)
!114 = !DILocation(line: 86, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !23, file: !1, line: 86, column: 5)
!116 = !DILocation(line: 86, column: 5, scope: !23)
!117 = !DILocation(line: 39, column: 12, scope: !23)
!118 = !DILocation(line: 87, column: 12, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 87, column: 10)
!120 = !DILocation(line: 87, column: 17, scope: !119)
!121 = !DILocation(line: 87, column: 14, scope: !119)
!122 = !DILocation(line: 88, column: 22, scope: !119)
!123 = !DILocation(line: 88, column: 15, scope: !119)
!124 = !DILocation(line: 88, column: 9, scope: !119)
!125 = !DILocation(line: 38, column: 8, scope: !23)
!126 = !DILocation(line: 0, scope: !119)
!127 = !DILocation(line: 89, column: 2, scope: !23)
!128 = !DILocation(line: 93, column: 9, scope: !55)
!129 = !DILocation(line: 92, column: 24, scope: !52)
!130 = !DILocation(line: 94, column: 9, scope: !57)
!131 = !DILocation(line: 96, column: 7, scope: !53)
!132 = !DILocation(line: 97, column: 27, scope: !53)
!133 = !DILocation(line: 97, column: 24, scope: !53)
!134 = !DILocation(line: 97, column: 14, scope: !53)
!135 = !DILocation(line: 99, column: 21, scope: !53)
!136 = !DILocation(line: 99, column: 28, scope: !53)
!137 = !DILocation(line: 99, column: 11, scope: !53)
!138 = !DILocation(line: 0, scope: !90)
!139 = !DILocation(line: 101, column: 1, scope: !23)
