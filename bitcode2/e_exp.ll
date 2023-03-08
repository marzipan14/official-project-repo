; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_exp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_exp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ln2HI = internal unnamed_addr constant [2 x double] [double 0x3FE62E42FEE00000, double 0xBFE62E42FEE00000], align 16, !dbg !0
@ln2LO = internal unnamed_addr constant [2 x double] [double 0x3DEA39EF35793C76, double 0xBDEA39EF35793C76], align 16, !dbg !30
@halF = internal unnamed_addr constant [2 x double] [double 5.000000e-01, double -5.000000e-01], align 16, !dbg !35
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_exp(double) local_unnamed_addr #0 !dbg !41 {
  %2 = bitcast double %0 to i64, !dbg !93
  %3 = lshr i64 %2, 32, !dbg !93
  %4 = trunc i64 %3 to i32, !dbg !93
  %5 = lshr i64 %2, 63, !dbg !95
  %6 = trunc i64 %5 to i32, !dbg !95
  %7 = and i32 %4, 2147483647, !dbg !97
  %8 = icmp ugt i32 %7, 1082535489, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %8, label %9, label %25, !dbg !99

; <label>:9:                                      ; preds = %1
  %10 = icmp ugt i32 %7, 2146435071, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %10, label %11, label %20, !dbg !101

; <label>:11:                                     ; preds = %9
  %12 = trunc i64 %2 to i32, !dbg !102
  %13 = and i32 %4, 1048575, !dbg !104
  %14 = or i32 %13, %12, !dbg !106
  %15 = icmp eq i32 %14, 0, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  %16 = fadd double %0, %0, !dbg !109
  %17 = icmp eq i32 %6, 0, !dbg !110
  %18 = select i1 %17, double %0, double 0.000000e+00, !dbg !111
  %19 = select i1 %15, double %18, double %16, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br label %107

; <label>:20:                                     ; preds = %9
  %21 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  br i1 %21, label %107, label %22, !dbg !115

; <label>:22:                                     ; preds = %20
  %23 = fcmp olt double %0, 0xC0874910D52D3051, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %23, label %109, label %24, !dbg !118

; <label>:24:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br label %36, !dbg !120

; <label>:25:                                     ; preds = %1
  %26 = icmp ugt i32 %7, 1071001154, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %26, label %27, label %51, !dbg !124

; <label>:27:                                     ; preds = %25
  %28 = icmp ult i32 %7, 1072734898, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %28, label %29, label %36, !dbg !120

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds [2 x double], [2 x double]* @ln2HI, i64 0, i64 %5, !dbg !127
  %31 = load double, double* %30, align 8, !dbg !127, !tbaa !129
  %32 = getelementptr inbounds [2 x double], [2 x double]* @ln2LO, i64 0, i64 %5, !dbg !133
  %33 = load double, double* %32, align 8, !dbg !133, !tbaa !129
  %34 = xor i32 %6, 1, !dbg !135
  %35 = sub nsw i32 %34, %6, !dbg !136
  br label %45, !dbg !137

; <label>:36:                                     ; preds = %24, %27
  %37 = fmul double %0, 0x3FF71547652B82FE, !dbg !138
  %38 = getelementptr inbounds [2 x double], [2 x double]* @halF, i64 0, i64 %5, !dbg !140
  %39 = load double, double* %38, align 8, !dbg !140, !tbaa !129
  %40 = fadd double %37, %39, !dbg !141
  %41 = fptosi double %40 to i32, !dbg !142
  %42 = sitofp i32 %41 to double, !dbg !143
  %43 = fmul double %42, 0x3FE62E42FEE00000, !dbg !145
  %44 = fmul double %42, 0x3DEA39EF35793C76, !dbg !146
  br label %45

; <label>:45:                                     ; preds = %36, %29
  %46 = phi i32 [ %35, %29 ], [ %41, %36 ], !dbg !147
  %47 = phi double [ %33, %29 ], [ %44, %36 ], !dbg !147
  %48 = phi double [ %31, %29 ], [ %43, %36 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %49 = fsub double %0, %48, !dbg !147
  %50 = fsub double %49, %47, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  br label %58, !dbg !150

; <label>:51:                                     ; preds = %25
  %52 = icmp ult i32 %7, 1043333120, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %52, label %53, label %58, !dbg !153

; <label>:53:                                     ; preds = %51
  %54 = fadd double %0, 1.000000e+300, !dbg !154
  %55 = fcmp ogt double %54, 1.000000e+00, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %55, label %56, label %58, !dbg !158

; <label>:56:                                     ; preds = %53
  %57 = fadd double %0, 1.000000e+00, !dbg !159
  br label %107, !dbg !160

; <label>:58:                                     ; preds = %51, %53, %45
  %59 = phi i32 [ %46, %45 ], [ 0, %53 ], [ 0, %51 ], !dbg !119
  %60 = phi double [ %47, %45 ], [ undef, %53 ], [ undef, %51 ]
  %61 = phi double [ %49, %45 ], [ undef, %53 ], [ undef, %51 ]
  %62 = phi double [ %50, %45 ], [ %0, %53 ], [ %0, %51 ]
  %63 = fmul double %62, %62, !dbg !161
  %64 = fmul double %63, 0x3E66376972BEA4D0, !dbg !162
  %65 = fadd double %64, 0xBEBBBD41C5D26BF1, !dbg !163
  %66 = fmul double %63, %65, !dbg !164
  %67 = fadd double %66, 0x3F11566AAF25DE2C, !dbg !165
  %68 = fmul double %63, %67, !dbg !166
  %69 = fadd double %68, 0xBF66C16C16BEBD93, !dbg !167
  %70 = fmul double %63, %69, !dbg !168
  %71 = fadd double %70, 0x3FC555555555553E, !dbg !169
  %72 = fmul double %63, %71, !dbg !170
  %73 = fsub double %62, %72, !dbg !171
  %74 = icmp eq i32 %59, 0, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  %75 = fmul double %62, %73, !dbg !176
  br i1 %74, label %76, label %81, !dbg !175

; <label>:76:                                     ; preds = %58
  %77 = fadd double %73, -2.000000e+00, !dbg !177
  %78 = fdiv double %75, %77, !dbg !178
  %79 = fsub double %62, %78, !dbg !179
  %80 = fadd double %79, 1.000000e+00, !dbg !179
  br label %107, !dbg !180

; <label>:81:                                     ; preds = %58
  %82 = fsub double 2.000000e+00, %73, !dbg !181
  %83 = fdiv double %75, %82, !dbg !182
  %84 = fsub double %60, %83, !dbg !183
  %85 = fsub double %61, %84, !dbg !184
  %86 = fadd double %85, 1.000000e+00, !dbg !184
  %87 = icmp sgt i32 %59, -1022, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  %88 = bitcast double %86 to i64, !dbg !188
  %89 = lshr i64 %88, 32, !dbg !188
  %90 = trunc i64 %89 to i32, !dbg !188
  %91 = shl i32 %59, 20, !dbg !189
  %92 = add i32 %91, %90, !dbg !189
  br i1 %87, label %93, label %99, !dbg !187

; <label>:93:                                     ; preds = %81
  %94 = zext i32 %92 to i64, !dbg !191
  %95 = shl nuw i64 %94, 32, !dbg !191
  %96 = and i64 %88, 4294967295, !dbg !191
  %97 = or i64 %95, %96, !dbg !191
  %98 = bitcast i64 %97 to double, !dbg !191
  br label %107

; <label>:99:                                     ; preds = %81
  %100 = add i32 %92, 1048576000, !dbg !194
  %101 = zext i32 %100 to i64, !dbg !194
  %102 = shl nuw i64 %101, 32, !dbg !194
  %103 = and i64 %88, 4294967295, !dbg !194
  %104 = or i64 %103, %102, !dbg !194
  %105 = bitcast i64 %104 to double, !dbg !194
  %106 = fmul double %105, 0x170000000000000, !dbg !195
  br label %107

; <label>:107:                                    ; preds = %20, %11, %56, %76, %93, %99
  %108 = phi double [ %57, %56 ], [ %106, %99 ], [ %98, %93 ], [ %80, %76 ], [ %19, %11 ], [ 0x7FF0000000000000, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %109, !dbg !196

; <label>:109:                                    ; preds = %107, %22
  %110 = phi double [ 0.000000e+00, %22 ], [ %108, %107 ], !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  ret double %110, !dbg !196
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ln2HI", scope: !2, file: !3, line: 92, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_exp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !0, !30, !35}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "o_threshold", scope: !2, file: !3, line: 90, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 88, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 13873137513782915153, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "u_threshold", scope: !2, file: !3, line: 91, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 103582791429521408, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "twom1000", scope: !2, file: !3, line: 89, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "invln2", scope: !2, file: !3, line: 96, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 86, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4595172819793696062, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !3, line: 97, type: !8, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 13791923578850950547, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !3, line: 98, type: !8, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4544508515198557740, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !3, line: 99, type: !8, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 13743786778040626161, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !3, line: 100, type: !8, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4496342204012209360, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !3, line: 101, type: !8, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "ln2LO", scope: !2, file: !3, line: 94, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 2)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "halF", scope: !2, file: !3, line: 87, type: !32, isLocal: true, isDefinition: true)
!37 = !{i32 2, !"Dwarf Version", i32 4}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!41 = distinct !DISubprogram(name: "__ieee754_exp", scope: !3, file: !3, line: 105, type: !42, isLocal: false, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!9, !9}
!44 = !{!45, !46, !47, !48, !49, !50, !51, !55, !56, !59, !71, !76, !78, !81, !83, !85, !87, !89}
!45 = !DILocalVariable(name: "x", arg: 1, scope: !41, file: !3, line: 105, type: !9)
!46 = !DILocalVariable(name: "y", scope: !41, file: !3, line: 111, type: !9)
!47 = !DILocalVariable(name: "hi", scope: !41, file: !3, line: 111, type: !9)
!48 = !DILocalVariable(name: "lo", scope: !41, file: !3, line: 111, type: !9)
!49 = !DILocalVariable(name: "c", scope: !41, file: !3, line: 111, type: !9)
!50 = !DILocalVariable(name: "t", scope: !41, file: !3, line: 111, type: !9)
!51 = !DILocalVariable(name: "k", scope: !41, file: !3, line: 112, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !53, line: 77, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DILocalVariable(name: "xsb", scope: !41, file: !3, line: 112, type: !52)
!56 = !DILocalVariable(name: "hx", scope: !41, file: !3, line: 113, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 79, baseType: !58)
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DILocalVariable(name: "gh_u", scope: !60, file: !3, line: 115, type: !61)
!60 = distinct !DILexicalBlock(scope: !41, file: !3, line: 115, column: 2)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !62, line: 278, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !62, line: 270, size: 64, elements: !64)
!64 = !{!65, !66}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !63, file: !62, line: 272, baseType: !9, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !63, file: !62, line: 277, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !63, file: !62, line: 273, size: 64, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !67, file: !62, line: 275, baseType: !57, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !67, file: !62, line: 276, baseType: !57, size: 32, offset: 32)
!71 = !DILocalVariable(name: "lx", scope: !72, file: !3, line: 122, type: !57)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 121, column: 32)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 121, column: 16)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 120, column: 23)
!75 = distinct !DILexicalBlock(scope: !41, file: !3, line: 120, column: 5)
!76 = !DILocalVariable(name: "gl_u", scope: !77, file: !3, line: 123, type: !61)
!77 = distinct !DILexicalBlock(scope: !72, file: !3, line: 123, column: 3)
!78 = !DILocalVariable(name: "hy", scope: !79, file: !3, line: 154, type: !57)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 153, column: 17)
!80 = distinct !DILexicalBlock(scope: !41, file: !3, line: 153, column: 5)
!81 = !DILocalVariable(name: "gh_u", scope: !82, file: !3, line: 155, type: !61)
!82 = distinct !DILexicalBlock(scope: !79, file: !3, line: 155, column: 6)
!83 = !DILocalVariable(name: "sh_u", scope: !84, file: !3, line: 156, type: !61)
!84 = distinct !DILexicalBlock(scope: !79, file: !3, line: 156, column: 6)
!85 = !DILocalVariable(name: "hy", scope: !86, file: !3, line: 159, type: !57)
!86 = distinct !DILexicalBlock(scope: !80, file: !3, line: 158, column: 9)
!87 = !DILocalVariable(name: "gh_u", scope: !88, file: !3, line: 160, type: !61)
!88 = distinct !DILexicalBlock(scope: !86, file: !3, line: 160, column: 6)
!89 = !DILocalVariable(name: "sh_u", scope: !90, file: !3, line: 161, type: !61)
!90 = distinct !DILexicalBlock(scope: !86, file: !3, line: 161, column: 6)
!91 = !DILocation(line: 105, column: 30, scope: !41)
!92 = !DILocation(line: 112, column: 12, scope: !41)
!93 = !DILocation(line: 115, column: 2, scope: !60)
!94 = !DILocation(line: 113, column: 13, scope: !41)
!95 = !DILocation(line: 116, column: 11, scope: !41)
!96 = !DILocation(line: 112, column: 18, scope: !41)
!97 = !DILocation(line: 117, column: 5, scope: !41)
!98 = !DILocation(line: 120, column: 8, scope: !75)
!99 = !DILocation(line: 120, column: 5, scope: !41)
!100 = !DILocation(line: 121, column: 18, scope: !73)
!101 = !DILocation(line: 121, column: 16, scope: !74)
!102 = !DILocation(line: 123, column: 3, scope: !77)
!103 = !DILocation(line: 122, column: 21, scope: !72)
!104 = !DILocation(line: 124, column: 10, scope: !105)
!105 = distinct !DILexicalBlock(scope: !72, file: !3, line: 124, column: 6)
!106 = !DILocation(line: 124, column: 19, scope: !105)
!107 = !DILocation(line: 124, column: 23, scope: !105)
!108 = !DILocation(line: 124, column: 6, scope: !72)
!109 = !DILocation(line: 125, column: 16, scope: !105)
!110 = !DILocation(line: 126, column: 19, scope: !105)
!111 = !DILocation(line: 126, column: 15, scope: !105)
!112 = !DILocation(line: 0, scope: !105)
!113 = !DILocation(line: 128, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !74, file: !3, line: 128, column: 9)
!115 = !DILocation(line: 128, column: 9, scope: !74)
!116 = !DILocation(line: 129, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !74, file: !3, line: 129, column: 9)
!118 = !DILocation(line: 129, column: 9, scope: !74)
!119 = !DILocation(line: 0, scope: !41)
!120 = !DILocation(line: 134, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 133, column: 22)
!122 = distinct !DILexicalBlock(scope: !41, file: !3, line: 133, column: 5)
!123 = !DILocation(line: 133, column: 8, scope: !122)
!124 = !DILocation(line: 133, column: 5, scope: !41)
!125 = !DILocation(line: 134, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 134, column: 9)
!127 = !DILocation(line: 135, column: 10, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !3, line: 134, column: 26)
!129 = !{!130, !130, i64 0}
!130 = !{!"double", !131, i64 0}
!131 = !{!"omnipotent char", !132, i64 0}
!132 = !{!"Simple C/C++ TBAA"}
!133 = !DILocation(line: 135, column: 25, scope: !128)
!134 = !DILocation(line: 111, column: 14, scope: !41)
!135 = !DILocation(line: 135, column: 42, scope: !128)
!136 = !DILocation(line: 135, column: 46, scope: !128)
!137 = !DILocation(line: 136, column: 6, scope: !128)
!138 = !DILocation(line: 137, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 136, column: 13)
!140 = !DILocation(line: 137, column: 17, scope: !139)
!141 = !DILocation(line: 137, column: 16, scope: !139)
!142 = !DILocation(line: 137, column: 8, scope: !139)
!143 = !DILocation(line: 138, column: 8, scope: !139)
!144 = !DILocation(line: 111, column: 19, scope: !41)
!145 = !DILocation(line: 139, column: 13, scope: !139)
!146 = !DILocation(line: 140, column: 9, scope: !139)
!147 = !DILocation(line: 0, scope: !139)
!148 = !DILocation(line: 111, column: 11, scope: !41)
!149 = !DILocation(line: 142, column: 14, scope: !121)
!150 = !DILocation(line: 143, column: 2, scope: !121)
!151 = !DILocation(line: 144, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !122, file: !3, line: 144, column: 10)
!153 = !DILocation(line: 144, column: 10, scope: !122)
!154 = !DILocation(line: 145, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 145, column: 9)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 144, column: 28)
!157 = !DILocation(line: 145, column: 15, scope: !155)
!158 = !DILocation(line: 145, column: 9, scope: !156)
!159 = !DILocation(line: 145, column: 31, scope: !155)
!160 = !DILocation(line: 145, column: 21, scope: !155)
!161 = !DILocation(line: 149, column: 8, scope: !41)
!162 = !DILocation(line: 150, column: 36, scope: !41)
!163 = !DILocation(line: 150, column: 34, scope: !41)
!164 = !DILocation(line: 150, column: 30, scope: !41)
!165 = !DILocation(line: 150, column: 28, scope: !41)
!166 = !DILocation(line: 150, column: 24, scope: !41)
!167 = !DILocation(line: 150, column: 22, scope: !41)
!168 = !DILocation(line: 150, column: 18, scope: !41)
!169 = !DILocation(line: 150, column: 16, scope: !41)
!170 = !DILocation(line: 150, column: 12, scope: !41)
!171 = !DILocation(line: 150, column: 9, scope: !41)
!172 = !DILocation(line: 111, column: 17, scope: !41)
!173 = !DILocation(line: 151, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !41, file: !3, line: 151, column: 5)
!175 = !DILocation(line: 151, column: 5, scope: !41)
!176 = !DILocation(line: 0, scope: !174)
!177 = !DILocation(line: 151, column: 32, scope: !174)
!178 = !DILocation(line: 151, column: 29, scope: !174)
!179 = !DILocation(line: 151, column: 22, scope: !174)
!180 = !DILocation(line: 151, column: 12, scope: !174)
!181 = !DILocation(line: 152, column: 32, scope: !174)
!182 = !DILocation(line: 152, column: 27, scope: !174)
!183 = !DILocation(line: 152, column: 21, scope: !174)
!184 = !DILocation(line: 152, column: 16, scope: !174)
!185 = !DILocation(line: 111, column: 9, scope: !41)
!186 = !DILocation(line: 153, column: 7, scope: !80)
!187 = !DILocation(line: 153, column: 5, scope: !41)
!188 = !DILocation(line: 0, scope: !88)
!189 = !DILocation(line: 0, scope: !90)
!190 = !DILocation(line: 154, column: 17, scope: !79)
!191 = !DILocation(line: 156, column: 6, scope: !84)
!192 = !DILocation(line: 160, column: 6, scope: !88)
!193 = !DILocation(line: 159, column: 17, scope: !86)
!194 = !DILocation(line: 161, column: 6, scope: !90)
!195 = !DILocation(line: 162, column: 14, scope: !86)
!196 = !DILocation(line: 164, column: 1, scope: !41)
!197 = !DILocation(line: 0, scope: !155)
