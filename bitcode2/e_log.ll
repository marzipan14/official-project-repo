; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_log(double) local_unnamed_addr #0 !dbg !33 {
  %2 = bitcast double %0 to i64, !dbg !76
  %3 = lshr i64 %2, 32, !dbg !76
  %4 = trunc i64 %3 to i32, !dbg !76
  %5 = icmp slt i32 %4, 1048576, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %5, label %6, label %21, !dbg !80

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i32, !dbg !76
  %8 = and i32 %4, 2147483647, !dbg !82
  %9 = or i32 %8, %7, !dbg !84
  %10 = icmp eq i32 %9, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %10, label %128, label %11, !dbg !86

; <label>:11:                                     ; preds = %6
  %12 = icmp slt i32 %4, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %12, label %13, label %16, !dbg !89

; <label>:13:                                     ; preds = %11
  %14 = fsub double %0, %0, !dbg !90
  %15 = fdiv double %14, 0.000000e+00, !dbg !91
  br label %128, !dbg !92

; <label>:16:                                     ; preds = %11
  %17 = fmul double %0, 0x4350000000000000, !dbg !93
  %18 = bitcast double %17 to i64, !dbg !94
  %19 = lshr i64 %18, 32, !dbg !94
  %20 = trunc i64 %19 to i32, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br label %21, !dbg !95

; <label>:21:                                     ; preds = %16, %1
  %22 = phi i32 [ %20, %16 ], [ %4, %1 ], !dbg !96
  %23 = phi i32 [ -54, %16 ], [ 0, %1 ], !dbg !97
  %24 = phi double [ %17, %16 ], [ %0, %1 ]
  %25 = icmp sgt i32 %22, 2146435071, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %25, label %26, label %28, !dbg !100

; <label>:26:                                     ; preds = %21
  %27 = fadd double %24, %24, !dbg !101
  br label %128, !dbg !102

; <label>:28:                                     ; preds = %21
  %29 = ashr i32 %22, 20, !dbg !103
  %30 = add nsw i32 %29, -1023, !dbg !104
  %31 = add nsw i32 %30, %23, !dbg !105
  %32 = and i32 %22, 1048575, !dbg !106
  %33 = add nuw nsw i32 %32, 614244, !dbg !107
  %34 = and i32 %33, 1048576, !dbg !108
  %35 = or i32 %34, %32, !dbg !110
  %36 = xor i32 %35, 1072693248, !dbg !110
  %37 = bitcast double %24 to i64, !dbg !110
  %38 = zext i32 %36 to i64, !dbg !110
  %39 = shl nuw nsw i64 %38, 32, !dbg !110
  %40 = and i64 %37, 4294967295, !dbg !110
  %41 = or i64 %39, %40, !dbg !110
  %42 = bitcast i64 %41 to double, !dbg !110
  %43 = lshr i32 %33, 20, !dbg !111
  %44 = add nsw i32 %31, %43, !dbg !112
  %45 = fadd double %42, -1.000000e+00, !dbg !113
  %46 = add i32 %22, 2, !dbg !115
  %47 = and i32 %46, 1048575, !dbg !117
  %48 = icmp ult i32 %47, 3, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %48, label %49, label %73, !dbg !119

; <label>:49:                                     ; preds = %28
  %50 = fcmp oeq double %45, 0.000000e+00, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br i1 %50, label %51, label %58, !dbg !123

; <label>:51:                                     ; preds = %49
  %52 = icmp eq i32 %44, 0, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %52, label %128, label %53, !dbg !127

; <label>:53:                                     ; preds = %51
  %54 = sitofp i32 %44 to double, !dbg !128
  %55 = fmul double %54, 0x3FE62E42FEE00000, !dbg !131
  %56 = fmul double %54, 0x3DEA39EF35793C76, !dbg !132
  %57 = fadd double %55, %56, !dbg !133
  br label %128, !dbg !134

; <label>:58:                                     ; preds = %49
  %59 = fmul double %45, %45, !dbg !135
  %60 = fmul double %45, 0x3FD5555555555555, !dbg !136
  %61 = fsub double 5.000000e-01, %60, !dbg !137
  %62 = fmul double %59, %61, !dbg !138
  %63 = icmp eq i32 %44, 0, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %63, label %64, label %66, !dbg !142

; <label>:64:                                     ; preds = %58
  %65 = fsub double %45, %62, !dbg !143
  br label %128, !dbg !144

; <label>:66:                                     ; preds = %58
  %67 = sitofp i32 %44 to double, !dbg !145
  %68 = fmul double %67, 0x3FE62E42FEE00000, !dbg !147
  %69 = fmul double %67, 0x3DEA39EF35793C76, !dbg !148
  %70 = fsub double %62, %69, !dbg !149
  %71 = fsub double %70, %45, !dbg !150
  %72 = fsub double %68, %71, !dbg !151
  br label %128, !dbg !152

; <label>:73:                                     ; preds = %28
  %74 = fadd double %45, 2.000000e+00, !dbg !153
  %75 = fdiv double %45, %74, !dbg !154
  %76 = sitofp i32 %44 to double, !dbg !156
  %77 = fmul double %75, %75, !dbg !157
  %78 = add nsw i32 %32, -398458, !dbg !159
  %79 = fmul double %77, %77, !dbg !160
  %80 = sub nsw i32 440401, %32, !dbg !162
  %81 = fmul double %79, 0x3FC39A09D078C69F, !dbg !164
  %82 = fadd double %81, 0x3FCC71C51D8E78AF, !dbg !165
  %83 = fmul double %79, %82, !dbg !166
  %84 = fadd double %83, 0x3FD999999997FA04, !dbg !167
  %85 = fmul double %79, %84, !dbg !168
  %86 = fmul double %79, 0x3FC2F112DF3E5244, !dbg !170
  %87 = fadd double %86, 0x3FC7466496CB03DE, !dbg !171
  %88 = fmul double %79, %87, !dbg !172
  %89 = fadd double %88, 0x3FD2492494229359, !dbg !173
  %90 = fmul double %79, %89, !dbg !174
  %91 = fadd double %90, 0x3FE5555555555593, !dbg !175
  %92 = fmul double %77, %91, !dbg !176
  %93 = or i32 %78, %80, !dbg !178
  %94 = fadd double %85, %92, !dbg !179
  %95 = icmp sgt i32 %93, 0, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %95, label %96, label %114, !dbg !182

; <label>:96:                                     ; preds = %73
  %97 = fmul double %45, 5.000000e-01, !dbg !183
  %98 = fmul double %45, %97, !dbg !185
  %99 = icmp eq i32 %44, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %99, label %100, label %105, !dbg !189

; <label>:100:                                    ; preds = %96
  %101 = fadd double %98, %94, !dbg !190
  %102 = fmul double %75, %101, !dbg !191
  %103 = fsub double %98, %102, !dbg !192
  %104 = fsub double %45, %103, !dbg !193
  br label %128, !dbg !194

; <label>:105:                                    ; preds = %96
  %106 = fmul double %76, 0x3FE62E42FEE00000, !dbg !195
  %107 = fadd double %98, %94, !dbg !196
  %108 = fmul double %75, %107, !dbg !197
  %109 = fmul double %76, 0x3DEA39EF35793C76, !dbg !198
  %110 = fadd double %109, %108, !dbg !199
  %111 = fsub double %98, %110, !dbg !200
  %112 = fsub double %111, %45, !dbg !201
  %113 = fsub double %106, %112, !dbg !202
  br label %128, !dbg !203

; <label>:114:                                    ; preds = %73
  %115 = icmp eq i32 %44, 0, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %115, label %116, label %120, !dbg !207

; <label>:116:                                    ; preds = %114
  %117 = fsub double %45, %94, !dbg !208
  %118 = fmul double %75, %117, !dbg !209
  %119 = fsub double %45, %118, !dbg !210
  br label %128, !dbg !211

; <label>:120:                                    ; preds = %114
  %121 = fmul double %76, 0x3FE62E42FEE00000, !dbg !212
  %122 = fsub double %45, %94, !dbg !213
  %123 = fmul double %75, %122, !dbg !214
  %124 = fmul double %76, 0x3DEA39EF35793C76, !dbg !215
  %125 = fsub double %123, %124, !dbg !216
  %126 = fsub double %125, %45, !dbg !217
  %127 = fsub double %121, %126, !dbg !218
  br label %128, !dbg !219

; <label>:128:                                    ; preds = %51, %6, %120, %116, %105, %100, %66, %64, %53, %26, %13
  %129 = phi double [ %15, %13 ], [ %27, %26 ], [ %57, %53 ], [ %65, %64 ], [ %72, %66 ], [ %104, %100 ], [ %113, %105 ], [ %119, %116 ], [ %127, %120 ], [ 0xFFF0000000000000, %6 ], [ 0.000000e+00, %51 ], !dbg !220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  ret double %129, !dbg !222
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{!6, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 76, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 86, type: !8, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !0, file: !1, line: 74, type: !8, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !0, file: !1, line: 75, type: !8, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 4600877379321592324, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "Lg2", scope: !0, file: !1, line: 78, type: !8, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 4597174411056806063, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "Lg4", scope: !0, file: !1, line: 80, type: !8, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 4594685411790997151, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "Lg6", scope: !0, file: !1, line: 82, type: !8, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 4604180019048437139, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "Lg1", scope: !0, file: !1, line: 77, type: !8, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 4598818590951641945, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "Lg3", scope: !0, file: !1, line: 79, type: !8, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 4595719342595441630, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "Lg5", scope: !0, file: !1, line: 81, type: !8, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression(DW_OP_constu, 4594499633228436036, DW_OP_stack_value))
!28 = distinct !DIGlobalVariable(name: "Lg7", scope: !0, file: !1, line: 83, type: !8, isLocal: true, isDefinition: true)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__ieee754_log", scope: !1, file: !1, line: 92, type: !34, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!4, !4}
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !51, !52, !53, !54, !57, !69, !73}
!37 = !DILocalVariable(name: "x", arg: 1, scope: !33, file: !1, line: 92, type: !4)
!38 = !DILocalVariable(name: "hfsq", scope: !33, file: !1, line: 98, type: !4)
!39 = !DILocalVariable(name: "f", scope: !33, file: !1, line: 98, type: !4)
!40 = !DILocalVariable(name: "s", scope: !33, file: !1, line: 98, type: !4)
!41 = !DILocalVariable(name: "z", scope: !33, file: !1, line: 98, type: !4)
!42 = !DILocalVariable(name: "R", scope: !33, file: !1, line: 98, type: !4)
!43 = !DILocalVariable(name: "w", scope: !33, file: !1, line: 98, type: !4)
!44 = !DILocalVariable(name: "t1", scope: !33, file: !1, line: 98, type: !4)
!45 = !DILocalVariable(name: "t2", scope: !33, file: !1, line: 98, type: !4)
!46 = !DILocalVariable(name: "dk", scope: !33, file: !1, line: 98, type: !4)
!47 = !DILocalVariable(name: "k", scope: !33, file: !1, line: 99, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !49, line: 77, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DILocalVariable(name: "hx", scope: !33, file: !1, line: 99, type: !48)
!52 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 99, type: !48)
!53 = !DILocalVariable(name: "j", scope: !33, file: !1, line: 99, type: !48)
!54 = !DILocalVariable(name: "lx", scope: !33, file: !1, line: 100, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 79, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "ew_u", scope: !58, file: !1, line: 102, type: !59)
!58 = distinct !DILexicalBlock(scope: !33, file: !1, line: 102, column: 2)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !60, line: 278, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 270, size: 64, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !60, line: 272, baseType: !4, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !61, file: !60, line: 277, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !61, file: !60, line: 273, size: 64, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !65, file: !60, line: 275, baseType: !55, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !65, file: !60, line: 276, baseType: !55, size: 32, offset: 32)
!69 = !DILocalVariable(name: "gh_u", scope: !70, file: !1, line: 110, type: !59)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 110, column: 6)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 105, column: 23)
!72 = distinct !DILexicalBlock(scope: !33, file: !1, line: 105, column: 6)
!73 = !DILocalVariable(name: "sh_u", scope: !74, file: !1, line: 116, type: !59)
!74 = distinct !DILexicalBlock(scope: !33, file: !1, line: 116, column: 2)
!75 = !DILocation(line: 92, column: 30, scope: !33)
!76 = !DILocation(line: 102, column: 2, scope: !58)
!77 = !DILocation(line: 99, column: 14, scope: !33)
!78 = !DILocation(line: 99, column: 12, scope: !33)
!79 = !DILocation(line: 105, column: 9, scope: !72)
!80 = !DILocation(line: 105, column: 6, scope: !33)
!81 = !DILocation(line: 100, column: 13, scope: !33)
!82 = !DILocation(line: 106, column: 14, scope: !83)
!83 = distinct !DILexicalBlock(scope: !71, file: !1, line: 106, column: 10)
!84 = !DILocation(line: 106, column: 26, scope: !83)
!85 = !DILocation(line: 106, column: 30, scope: !83)
!86 = !DILocation(line: 106, column: 10, scope: !71)
!87 = !DILocation(line: 108, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !71, file: !1, line: 108, column: 10)
!89 = !DILocation(line: 108, column: 10, scope: !71)
!90 = !DILocation(line: 108, column: 25, scope: !88)
!91 = !DILocation(line: 108, column: 28, scope: !88)
!92 = !DILocation(line: 108, column: 16, scope: !88)
!93 = !DILocation(line: 109, column: 17, scope: !71)
!94 = !DILocation(line: 110, column: 6, scope: !70)
!95 = !DILocation(line: 111, column: 2, scope: !71)
!96 = !DILocation(line: 0, scope: !58)
!97 = !DILocation(line: 0, scope: !33)
!98 = !DILocation(line: 112, column: 9, scope: !99)
!99 = distinct !DILexicalBlock(scope: !33, file: !1, line: 112, column: 6)
!100 = !DILocation(line: 112, column: 6, scope: !33)
!101 = !DILocation(line: 112, column: 32, scope: !99)
!102 = !DILocation(line: 112, column: 24, scope: !99)
!103 = !DILocation(line: 113, column: 10, scope: !33)
!104 = !DILocation(line: 113, column: 15, scope: !33)
!105 = !DILocation(line: 113, column: 4, scope: !33)
!106 = !DILocation(line: 114, column: 5, scope: !33)
!107 = !DILocation(line: 115, column: 9, scope: !33)
!108 = !DILocation(line: 115, column: 18, scope: !33)
!109 = !DILocation(line: 99, column: 17, scope: !33)
!110 = !DILocation(line: 116, column: 2, scope: !74)
!111 = !DILocation(line: 117, column: 9, scope: !33)
!112 = !DILocation(line: 117, column: 4, scope: !33)
!113 = !DILocation(line: 118, column: 7, scope: !33)
!114 = !DILocation(line: 98, column: 14, scope: !33)
!115 = !DILocation(line: 119, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !33, file: !1, line: 119, column: 5)
!117 = !DILocation(line: 119, column: 16, scope: !116)
!118 = !DILocation(line: 119, column: 24, scope: !116)
!119 = !DILocation(line: 119, column: 5, scope: !33)
!120 = !DILocation(line: 120, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 120, column: 14)
!122 = distinct !DILexicalBlock(scope: !116, file: !1, line: 119, column: 28)
!123 = !DILocation(line: 120, column: 14, scope: !122)
!124 = !DILocation(line: 120, column: 29, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 120, column: 28)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 120, column: 23)
!127 = !DILocation(line: 120, column: 28, scope: !126)
!128 = !DILocation(line: 120, column: 57, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 120, column: 53)
!130 = !DILocation(line: 98, column: 30, scope: !33)
!131 = !DILocation(line: 121, column: 41, scope: !129)
!132 = !DILocation(line: 121, column: 51, scope: !129)
!133 = !DILocation(line: 121, column: 48, scope: !129)
!134 = !DILocation(line: 121, column: 32, scope: !129)
!135 = !DILocation(line: 122, column: 11, scope: !122)
!136 = !DILocation(line: 122, column: 38, scope: !122)
!137 = !DILocation(line: 122, column: 18, scope: !122)
!138 = !DILocation(line: 122, column: 13, scope: !122)
!139 = !DILocation(line: 98, column: 20, scope: !33)
!140 = !DILocation(line: 123, column: 10, scope: !141)
!141 = distinct !DILexicalBlock(scope: !122, file: !1, line: 123, column: 9)
!142 = !DILocation(line: 123, column: 9, scope: !122)
!143 = !DILocation(line: 123, column: 23, scope: !141)
!144 = !DILocation(line: 123, column: 15, scope: !141)
!145 = !DILocation(line: 123, column: 36, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 123, column: 32)
!147 = !DILocation(line: 124, column: 21, scope: !146)
!148 = !DILocation(line: 124, column: 35, scope: !146)
!149 = !DILocation(line: 124, column: 32, scope: !146)
!150 = !DILocation(line: 124, column: 43, scope: !146)
!151 = !DILocation(line: 124, column: 28, scope: !146)
!152 = !DILocation(line: 124, column: 12, scope: !146)
!153 = !DILocation(line: 126, column: 13, scope: !33)
!154 = !DILocation(line: 126, column: 8, scope: !33)
!155 = !DILocation(line: 98, column: 16, scope: !33)
!156 = !DILocation(line: 127, column: 7, scope: !33)
!157 = !DILocation(line: 128, column: 7, scope: !33)
!158 = !DILocation(line: 98, column: 18, scope: !33)
!159 = !DILocation(line: 129, column: 8, scope: !33)
!160 = !DILocation(line: 130, column: 7, scope: !33)
!161 = !DILocation(line: 98, column: 22, scope: !33)
!162 = !DILocation(line: 131, column: 13, scope: !33)
!163 = !DILocation(line: 99, column: 19, scope: !33)
!164 = !DILocation(line: 132, column: 21, scope: !33)
!165 = !DILocation(line: 132, column: 19, scope: !33)
!166 = !DILocation(line: 132, column: 14, scope: !33)
!167 = !DILocation(line: 132, column: 12, scope: !33)
!168 = !DILocation(line: 132, column: 7, scope: !33)
!169 = !DILocation(line: 98, column: 24, scope: !33)
!170 = !DILocation(line: 133, column: 28, scope: !33)
!171 = !DILocation(line: 133, column: 26, scope: !33)
!172 = !DILocation(line: 133, column: 21, scope: !33)
!173 = !DILocation(line: 133, column: 19, scope: !33)
!174 = !DILocation(line: 133, column: 14, scope: !33)
!175 = !DILocation(line: 133, column: 12, scope: !33)
!176 = !DILocation(line: 133, column: 7, scope: !33)
!177 = !DILocation(line: 98, column: 27, scope: !33)
!178 = !DILocation(line: 134, column: 4, scope: !33)
!179 = !DILocation(line: 135, column: 8, scope: !33)
!180 = !DILocation(line: 136, column: 6, scope: !181)
!181 = distinct !DILexicalBlock(scope: !33, file: !1, line: 136, column: 5)
!182 = !DILocation(line: 136, column: 5, scope: !33)
!183 = !DILocation(line: 137, column: 14, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !1, line: 136, column: 10)
!185 = !DILocation(line: 137, column: 16, scope: !184)
!186 = !DILocation(line: 98, column: 9, scope: !33)
!187 = !DILocation(line: 138, column: 10, scope: !188)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 138, column: 9)
!189 = !DILocation(line: 138, column: 9, scope: !184)
!190 = !DILocation(line: 138, column: 37, scope: !188)
!191 = !DILocation(line: 138, column: 31, scope: !188)
!192 = !DILocation(line: 138, column: 29, scope: !188)
!193 = !DILocation(line: 138, column: 23, scope: !188)
!194 = !DILocation(line: 138, column: 15, scope: !188)
!195 = !DILocation(line: 139, column: 17, scope: !188)
!196 = !DILocation(line: 139, column: 40, scope: !188)
!197 = !DILocation(line: 139, column: 34, scope: !188)
!198 = !DILocation(line: 139, column: 46, scope: !188)
!199 = !DILocation(line: 139, column: 43, scope: !188)
!200 = !DILocation(line: 139, column: 31, scope: !188)
!201 = !DILocation(line: 139, column: 55, scope: !188)
!202 = !DILocation(line: 139, column: 24, scope: !188)
!203 = !DILocation(line: 139, column: 8, scope: !188)
!204 = !DILocation(line: 141, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 141, column: 9)
!206 = distinct !DILexicalBlock(scope: !181, file: !1, line: 140, column: 9)
!207 = !DILocation(line: 141, column: 9, scope: !206)
!208 = !DILocation(line: 141, column: 28, scope: !205)
!209 = !DILocation(line: 141, column: 25, scope: !205)
!210 = !DILocation(line: 141, column: 23, scope: !205)
!211 = !DILocation(line: 141, column: 15, scope: !205)
!212 = !DILocation(line: 142, column: 17, scope: !205)
!213 = !DILocation(line: 142, column: 31, scope: !205)
!214 = !DILocation(line: 142, column: 28, scope: !205)
!215 = !DILocation(line: 142, column: 37, scope: !205)
!216 = !DILocation(line: 142, column: 34, scope: !205)
!217 = !DILocation(line: 142, column: 45, scope: !205)
!218 = !DILocation(line: 142, column: 24, scope: !205)
!219 = !DILocation(line: 142, column: 8, scope: !205)
!220 = !DILocation(line: 0, scope: !205)
!221 = !DILocation(line: 0, scope: !83)
!222 = !DILocation(line: 144, column: 1, scope: !33)
