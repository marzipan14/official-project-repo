; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atan2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atan2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0
@switch.table.__ieee754_atan2 = private unnamed_addr constant [4 x double] [double 0x4002D97C7F3321D2, double 0xC002D97C7F3321D2, double 0x3FE921FB54442D18, double 0xBFE921FB54442D18]
@switch.table.__ieee754_atan2.1 = private unnamed_addr constant [4 x double] [double 0x400921FB54442D18, double 0xC00921FB54442D18, double 0.000000e+00, double -0.000000e+00]

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_atan2(double, double) local_unnamed_addr #0 !dbg !22 {
  %3 = bitcast double %1 to i64, !dbg !65
  %4 = lshr i64 %3, 32, !dbg !65
  %5 = trunc i64 %4 to i32, !dbg !65
  %6 = trunc i64 %3 to i32, !dbg !65
  %7 = and i32 %5, 2147483647, !dbg !68
  %8 = bitcast double %0 to i64, !dbg !70
  %9 = lshr i64 %8, 32, !dbg !70
  %10 = trunc i64 %9 to i32, !dbg !70
  %11 = trunc i64 %8 to i32, !dbg !70
  %12 = and i32 %10, 2147483647, !dbg !73
  %13 = sub i32 0, %6, !dbg !75
  %14 = or i32 %6, %13, !dbg !77
  %15 = lshr i32 %14, 31, !dbg !78
  %16 = or i32 %7, %15, !dbg !79
  %17 = icmp ugt i32 %16, 2146435072, !dbg !80
  br i1 %17, label %24, label %18, !dbg !81

; <label>:18:                                     ; preds = %2
  %19 = sub i32 0, %11, !dbg !82
  %20 = or i32 %11, %19, !dbg !83
  %21 = lshr i32 %20, 31, !dbg !84
  %22 = or i32 %12, %21, !dbg !85
  %23 = icmp ugt i32 %22, 2146435072, !dbg !86
  br i1 %23, label %24, label %26, !dbg !87

; <label>:24:                                     ; preds = %18, %2
  %25 = fadd double %0, %1, !dbg !88
  br label %93, !dbg !89

; <label>:26:                                     ; preds = %18
  %27 = add nsw i32 %5, -1072693248, !dbg !90
  %28 = or i32 %27, %6, !dbg !92
  %29 = icmp eq i32 %28, 0, !dbg !93
  br i1 %29, label %30, label %32, !dbg !94

; <label>:30:                                     ; preds = %26
  %31 = tail call double @atan(double %0) #3, !dbg !95
  br label %93, !dbg !96

; <label>:32:                                     ; preds = %26
  %33 = lshr i64 %8, 63, !dbg !97
  %34 = trunc i64 %33 to i32, !dbg !97
  %35 = lshr i64 %3, 62, !dbg !98
  %36 = trunc i64 %35 to i32, !dbg !98
  %37 = and i32 %36, 2, !dbg !99
  %38 = or i32 %37, %34, !dbg !100
  %39 = or i32 %12, %11, !dbg !102
  %40 = icmp eq i32 %39, 0, !dbg !104
  br i1 %40, label %41, label %46, !dbg !105

; <label>:41:                                     ; preds = %32
  %42 = trunc i32 %38 to i2, !dbg !106
  switch i2 %42, label %45 [
    i2 0, label %93
    i2 1, label %93
    i2 -2, label %43
    i2 -1, label %44
  ], !dbg !106

; <label>:43:                                     ; preds = %41
  br label %93, !dbg !108

; <label>:44:                                     ; preds = %41
  br label %93, !dbg !110

; <label>:45:                                     ; preds = %41
  unreachable

; <label>:46:                                     ; preds = %32
  %47 = or i32 %7, %6, !dbg !111
  %48 = icmp eq i32 %47, 0, !dbg !113
  br i1 %48, label %49, label %52, !dbg !114

; <label>:49:                                     ; preds = %46
  %50 = icmp slt i32 %10, 0, !dbg !115
  %51 = select i1 %50, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18, !dbg !116
  br label %93, !dbg !117

; <label>:52:                                     ; preds = %46
  %53 = icmp eq i32 %7, 2146435072, !dbg !118
  %54 = icmp eq i32 %12, 2146435072, !dbg !120
  br i1 %53, label %55, label %65, !dbg !122

; <label>:55:                                     ; preds = %52
  %56 = trunc i32 %38 to i2, !dbg !123
  %57 = xor i2 %56, -2, !dbg !123
  %58 = zext i2 %57 to i64, !dbg !123
  br i1 %54, label %59, label %62, !dbg !127

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [4 x double], [4 x double]* @switch.table.__ieee754_atan2, i64 0, i64 %58, !dbg !128
  %61 = load double, double* %60, align 8, !dbg !128
  br label %93, !dbg !128

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds [4 x double], [4 x double]* @switch.table.__ieee754_atan2.1, i64 0, i64 %58, !dbg !130
  %64 = load double, double* %63, align 8, !dbg !130
  br label %93, !dbg !130

; <label>:65:                                     ; preds = %52
  br i1 %54, label %66, label %69, !dbg !131

; <label>:66:                                     ; preds = %65
  %67 = icmp slt i32 %10, 0, !dbg !132
  %68 = select i1 %67, double 0xBFF921FB54442D18, double 0x3FF921FB54442D18, !dbg !133
  br label %93, !dbg !134

; <label>:69:                                     ; preds = %65
  %70 = sub nsw i32 %12, %7, !dbg !135
  %71 = icmp sgt i32 %70, 63963135, !dbg !136
  br i1 %71, label %80, label %72, !dbg !138

; <label>:72:                                     ; preds = %69
  %73 = icmp slt i32 %5, 0, !dbg !140
  %74 = icmp slt i32 %70, -62914560, !dbg !142
  %75 = and i1 %73, %74, !dbg !143
  br i1 %75, label %80, label %76, !dbg !143

; <label>:76:                                     ; preds = %72
  %77 = fdiv double %0, %1, !dbg !144
  %78 = tail call double @fabs(double %77) #3, !dbg !145
  %79 = tail call double @atan(double %78) #3, !dbg !146
  br label %80

; <label>:80:                                     ; preds = %72, %69, %76
  %81 = phi double [ %79, %76 ], [ 0x3FF921FB54442D18, %69 ], [ 0.000000e+00, %72 ], !dbg !148
  %82 = trunc i32 %38 to i2, !dbg !149
  switch i2 %82, label %90 [
    i2 0, label %93
    i2 1, label %83
    i2 -2, label %87
  ], !dbg !149

; <label>:83:                                     ; preds = %80
  %84 = bitcast double %81 to i64, !dbg !150
  %85 = xor i64 %84, -9223372036854775808, !dbg !151
  %86 = bitcast i64 %85 to double, !dbg !151
  br label %93, !dbg !152

; <label>:87:                                     ; preds = %80
  %88 = fadd double %81, 0xBCA1A62633145C07, !dbg !153
  %89 = fsub double 0x400921FB54442D18, %88, !dbg !154
  br label %93, !dbg !155

; <label>:90:                                     ; preds = %80
  %91 = fadd double %81, 0xBCA1A62633145C07, !dbg !156
  %92 = fadd double %91, 0xC00921FB54442D18, !dbg !157
  br label %93, !dbg !158

; <label>:93:                                     ; preds = %62, %59, %80, %41, %41, %90, %87, %83, %66, %49, %44, %43, %30, %24
  %94 = phi double [ %25, %24 ], [ %31, %30 ], [ %51, %49 ], [ %68, %66 ], [ %92, %90 ], [ %89, %87 ], [ %86, %83 ], [ 0xC00921FB54442D18, %44 ], [ 0x400921FB54442D18, %43 ], [ %0, %41 ], [ %0, %41 ], [ %81, %80 ], [ %61, %59 ], [ %64, %62 ], !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  ret double %94, !dbg !160
}

; Function Attrs: noredzone
declare dso_local double @atan(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atan2.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12, !14, !16}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4614256656552045848, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "pi", scope: !0, file: !1, line: 55, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 51, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4609753056924675352, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "pi_o_2", scope: !0, file: !1, line: 54, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4605249457297304856, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "pi_o_4", scope: !0, file: !1, line: 53, type: !6, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 52, type: !6, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4368955796522032135, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "pi_lo", scope: !0, file: !1, line: 56, type: !6, isLocal: true, isDefinition: true)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!22 = distinct !DISubprogram(name: "__ieee754_atan2", scope: !1, file: !1, line: 59, type: !23, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!7, !7, !7}
!25 = !{!26, !27, !28, !29, !33, !34, !35, !36, !37, !38, !41, !42, !54, !56, !59, !61}
!26 = !DILocalVariable(name: "y", arg: 1, scope: !22, file: !1, line: 59, type: !7)
!27 = !DILocalVariable(name: "x", arg: 2, scope: !22, file: !1, line: 59, type: !7)
!28 = !DILocalVariable(name: "z", scope: !22, file: !1, line: 65, type: !7)
!29 = !DILocalVariable(name: "k", scope: !22, file: !1, line: 66, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !31, line: 77, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "m", scope: !22, file: !1, line: 66, type: !30)
!34 = !DILocalVariable(name: "hx", scope: !22, file: !1, line: 66, type: !30)
!35 = !DILocalVariable(name: "hy", scope: !22, file: !1, line: 66, type: !30)
!36 = !DILocalVariable(name: "ix", scope: !22, file: !1, line: 66, type: !30)
!37 = !DILocalVariable(name: "iy", scope: !22, file: !1, line: 66, type: !30)
!38 = !DILocalVariable(name: "lx", scope: !22, file: !1, line: 67, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !31, line: 79, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DILocalVariable(name: "ly", scope: !22, file: !1, line: 67, type: !39)
!42 = !DILocalVariable(name: "ew_u", scope: !43, file: !1, line: 69, type: !44)
!43 = distinct !DILexicalBlock(scope: !22, file: !1, line: 69, column: 2)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !45, line: 278, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !45, line: 270, size: 64, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !46, file: !45, line: 272, baseType: !7, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !46, file: !45, line: 277, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !46, file: !45, line: 273, size: 64, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !50, file: !45, line: 275, baseType: !39, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !50, file: !45, line: 276, baseType: !39, size: 32, offset: 32)
!54 = !DILocalVariable(name: "ew_u", scope: !55, file: !1, line: 71, type: !44)
!55 = distinct !DILexicalBlock(scope: !22, file: !1, line: 71, column: 2)
!56 = !DILocalVariable(name: "zh", scope: !57, file: !1, line: 120, type: !39)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 119, column: 14)
!58 = distinct !DILexicalBlock(scope: !22, file: !1, line: 117, column: 13)
!59 = !DILocalVariable(name: "gh_u", scope: !60, file: !1, line: 121, type: !44)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 121, column: 9)
!61 = !DILocalVariable(name: "sh_u", scope: !62, file: !1, line: 122, type: !44)
!62 = distinct !DILexicalBlock(scope: !57, file: !1, line: 122, column: 9)
!63 = !DILocation(line: 59, column: 32, scope: !22)
!64 = !DILocation(line: 59, column: 42, scope: !22)
!65 = !DILocation(line: 69, column: 2, scope: !43)
!66 = !DILocation(line: 66, column: 16, scope: !22)
!67 = !DILocation(line: 67, column: 13, scope: !22)
!68 = !DILocation(line: 70, column: 9, scope: !22)
!69 = !DILocation(line: 66, column: 22, scope: !22)
!70 = !DILocation(line: 71, column: 2, scope: !55)
!71 = !DILocation(line: 66, column: 19, scope: !22)
!72 = !DILocation(line: 67, column: 16, scope: !22)
!73 = !DILocation(line: 72, column: 9, scope: !22)
!74 = !DILocation(line: 66, column: 25, scope: !22)
!75 = !DILocation(line: 73, column: 15, scope: !76)
!76 = distinct !DILexicalBlock(scope: !22, file: !1, line: 73, column: 5)
!77 = !DILocation(line: 73, column: 14, scope: !76)
!78 = !DILocation(line: 73, column: 19, scope: !76)
!79 = !DILocation(line: 73, column: 9, scope: !76)
!80 = !DILocation(line: 73, column: 25, scope: !76)
!81 = !DILocation(line: 73, column: 37, scope: !76)
!82 = !DILocation(line: 74, column: 15, scope: !76)
!83 = !DILocation(line: 74, column: 14, scope: !76)
!84 = !DILocation(line: 74, column: 19, scope: !76)
!85 = !DILocation(line: 74, column: 9, scope: !76)
!86 = !DILocation(line: 74, column: 25, scope: !76)
!87 = !DILocation(line: 73, column: 5, scope: !22)
!88 = !DILocation(line: 75, column: 13, scope: !76)
!89 = !DILocation(line: 75, column: 5, scope: !76)
!90 = !DILocation(line: 76, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !22, file: !1, line: 76, column: 5)
!92 = !DILocation(line: 76, column: 21, scope: !91)
!93 = !DILocation(line: 76, column: 25, scope: !91)
!94 = !DILocation(line: 76, column: 5, scope: !22)
!95 = !DILocation(line: 76, column: 37, scope: !91)
!96 = !DILocation(line: 76, column: 30, scope: !91)
!97 = !DILocation(line: 77, column: 10, scope: !22)
!98 = !DILocation(line: 77, column: 23, scope: !22)
!99 = !DILocation(line: 77, column: 28, scope: !22)
!100 = !DILocation(line: 77, column: 18, scope: !22)
!101 = !DILocation(line: 66, column: 14, scope: !22)
!102 = !DILocation(line: 80, column: 8, scope: !103)
!103 = distinct !DILexicalBlock(scope: !22, file: !1, line: 80, column: 5)
!104 = !DILocation(line: 80, column: 12, scope: !103)
!105 = !DILocation(line: 80, column: 5, scope: !22)
!106 = !DILocation(line: 81, column: 6, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 80, column: 17)
!108 = !DILocation(line: 84, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 81, column: 16)
!110 = !DILocation(line: 85, column: 11, scope: !109)
!111 = !DILocation(line: 89, column: 8, scope: !112)
!112 = distinct !DILexicalBlock(scope: !22, file: !1, line: 89, column: 5)
!113 = !DILocation(line: 89, column: 12, scope: !112)
!114 = !DILocation(line: 89, column: 5, scope: !22)
!115 = !DILocation(line: 89, column: 27, scope: !112)
!116 = !DILocation(line: 89, column: 24, scope: !112)
!117 = !DILocation(line: 89, column: 17, scope: !112)
!118 = !DILocation(line: 92, column: 7, scope: !119)
!119 = distinct !DILexicalBlock(scope: !22, file: !1, line: 92, column: 5)
!120 = !DILocation(line: 0, scope: !121)
!121 = distinct !DILexicalBlock(scope: !22, file: !1, line: 110, column: 5)
!122 = !DILocation(line: 92, column: 5, scope: !22)
!123 = !DILocation(line: 0, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 100, column: 13)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 93, column: 9)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 92, column: 21)
!127 = !DILocation(line: 93, column: 9, scope: !126)
!128 = !DILocation(line: 94, column: 3, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 93, column: 25)
!130 = !DILocation(line: 101, column: 3, scope: !124)
!131 = !DILocation(line: 110, column: 5, scope: !22)
!132 = !DILocation(line: 110, column: 31, scope: !121)
!133 = !DILocation(line: 110, column: 28, scope: !121)
!134 = !DILocation(line: 110, column: 21, scope: !121)
!135 = !DILocation(line: 113, column: 9, scope: !22)
!136 = !DILocation(line: 114, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !22, file: !1, line: 114, column: 5)
!138 = !DILocation(line: 114, column: 5, scope: !22)
!139 = !DILocation(line: 66, column: 12, scope: !22)
!140 = !DILocation(line: 115, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !137, file: !1, line: 115, column: 10)
!142 = !DILocation(line: 115, column: 17, scope: !141)
!143 = !DILocation(line: 115, column: 14, scope: !141)
!144 = !DILocation(line: 116, column: 20, scope: !141)
!145 = !DILocation(line: 116, column: 14, scope: !141)
!146 = !DILocation(line: 116, column: 9, scope: !141)
!147 = !DILocation(line: 65, column: 9, scope: !22)
!148 = !DILocation(line: 0, scope: !141)
!149 = !DILocation(line: 117, column: 2, scope: !22)
!150 = !DILocation(line: 121, column: 9, scope: !60)
!151 = !DILocation(line: 122, column: 9, scope: !62)
!152 = !DILocation(line: 124, column: 7, scope: !58)
!153 = !DILocation(line: 125, column: 27, scope: !58)
!154 = !DILocation(line: 125, column: 24, scope: !58)
!155 = !DILocation(line: 125, column: 14, scope: !58)
!156 = !DILocation(line: 127, column: 21, scope: !58)
!157 = !DILocation(line: 127, column: 28, scope: !58)
!158 = !DILocation(line: 127, column: 11, scope: !58)
!159 = !DILocation(line: 0, scope: !109)
!160 = !DILocation(line: 129, column: 1, scope: !22)
