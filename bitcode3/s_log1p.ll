; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_log1p.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_log1p.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local double @log1p(double) local_unnamed_addr #0 !dbg !36 {
  %2 = bitcast double %0 to i64, !dbg !83
  %3 = lshr i64 %2, 32, !dbg !83
  %4 = trunc i64 %3 to i32, !dbg !83
  %5 = and i32 %4, 2147483647, !dbg !85
  %6 = icmp slt i32 %4, 1071284858, !dbg !88
  br i1 %6, label %7, label %25, !dbg !90

; <label>:7:                                      ; preds = %1
  %8 = icmp ugt i32 %5, 1072693247, !dbg !91
  br i1 %8, label %9, label %14, !dbg !94

; <label>:9:                                      ; preds = %7
  %10 = fcmp oeq double %0, -1.000000e+00, !dbg !95
  br i1 %10, label %146, label %11, !dbg !98

; <label>:11:                                     ; preds = %9
  %12 = fsub double %0, %0, !dbg !99
  %13 = fdiv double %12, %12, !dbg !100
  br label %146, !dbg !101

; <label>:14:                                     ; preds = %7
  %15 = icmp ult i32 %5, 1042284544, !dbg !102
  br i1 %15, label %16, label %29, !dbg !104

; <label>:16:                                     ; preds = %14
  %17 = fadd double %0, 0x4350000000000000, !dbg !105
  %18 = fcmp ogt double %17, 0.000000e+00, !dbg !108
  %19 = icmp ult i32 %5, 1016070144, !dbg !109
  %20 = and i1 %18, %19, !dbg !110
  br i1 %20, label %146, label %21, !dbg !110

; <label>:21:                                     ; preds = %16
  %22 = fmul double %0, %0, !dbg !111
  %23 = fmul double %22, 5.000000e-01, !dbg !112
  %24 = fsub double %0, %23, !dbg !113
  br label %146, !dbg !114

; <label>:25:                                     ; preds = %1
  %26 = icmp sgt i32 %4, 2146435071, !dbg !117
  br i1 %26, label %27, label %35, !dbg !119

; <label>:27:                                     ; preds = %25
  %28 = fadd double %0, %0, !dbg !120
  br label %146, !dbg !121

; <label>:29:                                     ; preds = %14
  %30 = add i32 %4, 1076707644, !dbg !122
  %31 = icmp ugt i32 %30, 1076707644, !dbg !122
  br i1 %31, label %32, label %37, !dbg !124

; <label>:32:                                     ; preds = %29
  %33 = fmul double %0, 5.000000e-01, !dbg !126
  %34 = fmul double %33, %0, !dbg !127
  br label %108, !dbg !129

; <label>:35:                                     ; preds = %25
  %36 = icmp slt i32 %4, 1128267776, !dbg !130
  br i1 %36, label %37, label %49, !dbg !131

; <label>:37:                                     ; preds = %29, %35
  %38 = fadd double %0, 1.000000e+00, !dbg !132
  %39 = bitcast double %38 to i64, !dbg !134
  %40 = lshr i64 %39, 32, !dbg !134
  %41 = trunc i64 %40 to i32, !dbg !134
  %42 = icmp sgt i32 %41, 1073741823, !dbg !135
  %43 = fsub double %0, %38, !dbg !136
  %44 = fadd double %43, 1.000000e+00, !dbg !136
  %45 = fadd double %38, -1.000000e+00, !dbg !137
  %46 = fsub double %0, %45, !dbg !138
  %47 = select i1 %42, double %44, double %46, !dbg !139
  %48 = fdiv double %47, %38, !dbg !140
  br label %49, !dbg !141

; <label>:49:                                     ; preds = %35, %37
  %50 = phi i32 [ %41, %37 ], [ %4, %35 ], !dbg !142
  %51 = phi double [ %38, %37 ], [ %0, %35 ], !dbg !143
  %52 = phi double [ %48, %37 ], [ 0.000000e+00, %35 ], !dbg !143
  %53 = ashr i32 %50, 20, !dbg !143
  %54 = and i32 %50, 1048575, !dbg !144
  %55 = icmp ult i32 %54, 434334, !dbg !145
  br i1 %55, label %56, label %64, !dbg !146

; <label>:56:                                     ; preds = %49
  %57 = add nsw i32 %53, -1023, !dbg !143
  %58 = or i32 %54, 1072693248, !dbg !147
  %59 = bitcast double %51 to i64, !dbg !147
  %60 = zext i32 %58 to i64, !dbg !147
  %61 = shl nuw nsw i64 %60, 32, !dbg !147
  %62 = and i64 %59, 4294967295, !dbg !147
  %63 = or i64 %61, %62, !dbg !147
  br label %74, !dbg !148

; <label>:64:                                     ; preds = %49
  %65 = add nsw i32 %53, -1022, !dbg !149
  %66 = or i32 %54, 1071644672, !dbg !150
  %67 = bitcast double %51 to i64, !dbg !150
  %68 = zext i32 %66 to i64, !dbg !150
  %69 = shl nuw nsw i64 %68, 32, !dbg !150
  %70 = and i64 %67, 4294967295, !dbg !150
  %71 = or i64 %69, %70, !dbg !150
  %72 = sub nsw i32 1048576, %54, !dbg !151
  %73 = lshr i32 %72, 2, !dbg !152
  br label %74

; <label>:74:                                     ; preds = %56, %64
  %75 = phi i32 [ %54, %56 ], [ %73, %64 ], !dbg !153
  %76 = phi i32 [ %57, %56 ], [ %65, %64 ], !dbg !153
  %77 = phi i64 [ %63, %56 ], [ %71, %64 ]
  %78 = bitcast i64 %77 to double, !dbg !154
  %79 = fadd double %78, -1.000000e+00, !dbg !155
  %80 = fmul double %79, 5.000000e-01, !dbg !126
  %81 = fmul double %79, %80, !dbg !127
  %82 = icmp eq i32 %75, 0, !dbg !156
  br i1 %82, label %83, label %108, !dbg !129

; <label>:83:                                     ; preds = %74
  %84 = fcmp oeq double %79, 0.000000e+00, !dbg !158
  br i1 %84, label %85, label %93, !dbg !161

; <label>:85:                                     ; preds = %83
  %86 = icmp eq i32 %76, 0, !dbg !162
  br i1 %86, label %146, label %87, !dbg !165

; <label>:87:                                     ; preds = %85
  %88 = sitofp i32 %76 to double, !dbg !166
  %89 = fmul double %88, 0x3DEA39EF35793C76, !dbg !168
  %90 = fadd double %52, %89, !dbg !169
  %91 = fmul double %88, 0x3FE62E42FEE00000, !dbg !170
  %92 = fadd double %91, %90, !dbg !171
  br label %146, !dbg !172

; <label>:93:                                     ; preds = %83
  %94 = fmul double %79, 0x3FE5555555555555, !dbg !173
  %95 = fsub double 1.000000e+00, %94, !dbg !174
  %96 = fmul double %81, %95, !dbg !175
  %97 = icmp eq i32 %76, 0, !dbg !177
  br i1 %97, label %98, label %100, !dbg !179

; <label>:98:                                     ; preds = %93
  %99 = fsub double %79, %96, !dbg !180
  br label %146, !dbg !181

; <label>:100:                                    ; preds = %93
  %101 = sitofp i32 %76 to double, !dbg !182
  %102 = fmul double %101, 0x3FE62E42FEE00000, !dbg !183
  %103 = fmul double %101, 0x3DEA39EF35793C76, !dbg !184
  %104 = fadd double %52, %103, !dbg !185
  %105 = fsub double %96, %104, !dbg !186
  %106 = fsub double %105, %79, !dbg !187
  %107 = fsub double %102, %106, !dbg !188
  br label %146, !dbg !189

; <label>:108:                                    ; preds = %32, %74
  %109 = phi double [ %34, %32 ], [ %81, %74 ]
  %110 = phi double [ %0, %32 ], [ %79, %74 ]
  %111 = phi double [ undef, %32 ], [ %52, %74 ]
  %112 = phi i32 [ 0, %32 ], [ %76, %74 ]
  %113 = fadd double %110, 2.000000e+00, !dbg !190
  %114 = fdiv double %110, %113, !dbg !191
  %115 = fmul double %114, %114, !dbg !193
  %116 = fmul double %115, 0x3FC2F112DF3E5244, !dbg !195
  %117 = fadd double %116, 0x3FC39A09D078C69F, !dbg !196
  %118 = fmul double %115, %117, !dbg !197
  %119 = fadd double %118, 0x3FC7466496CB03DE, !dbg !198
  %120 = fmul double %115, %119, !dbg !199
  %121 = fadd double %120, 0x3FCC71C51D8E78AF, !dbg !200
  %122 = fmul double %115, %121, !dbg !201
  %123 = fadd double %122, 0x3FD2492494229359, !dbg !202
  %124 = fmul double %115, %123, !dbg !203
  %125 = fadd double %124, 0x3FD999999997FA04, !dbg !204
  %126 = fmul double %115, %125, !dbg !205
  %127 = fadd double %126, 0x3FE5555555555593, !dbg !206
  %128 = fmul double %115, %127, !dbg !207
  %129 = icmp eq i32 %112, 0, !dbg !208
  br i1 %129, label %130, label %135, !dbg !210

; <label>:130:                                    ; preds = %108
  %131 = fadd double %109, %128, !dbg !211
  %132 = fmul double %114, %131, !dbg !212
  %133 = fsub double %109, %132, !dbg !213
  %134 = fsub double %110, %133, !dbg !214
  br label %146, !dbg !215

; <label>:135:                                    ; preds = %108
  %136 = sitofp i32 %112 to double, !dbg !216
  %137 = fmul double %136, 0x3FE62E42FEE00000, !dbg !217
  %138 = fadd double %109, %128, !dbg !218
  %139 = fmul double %114, %138, !dbg !219
  %140 = fmul double %136, 0x3DEA39EF35793C76, !dbg !220
  %141 = fadd double %111, %140, !dbg !221
  %142 = fadd double %141, %139, !dbg !222
  %143 = fsub double %109, %142, !dbg !223
  %144 = fsub double %143, %110, !dbg !224
  %145 = fsub double %137, %144, !dbg !225
  br label %146, !dbg !226

; <label>:146:                                    ; preds = %85, %16, %9, %135, %130, %100, %98, %87, %27, %21, %11
  %147 = phi double [ %13, %11 ], [ %24, %21 ], [ %28, %27 ], [ %92, %87 ], [ %99, %98 ], [ %107, %100 ], [ %134, %130 ], [ %145, %135 ], [ 0xFFF0000000000000, %9 ], [ %0, %16 ], [ 0.000000e+00, %85 ], !dbg !227
  ret double %147, !dbg !228
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_log1p.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 134, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 144, type: !10, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !0, file: !1, line: 133, type: !10, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !0, file: !1, line: 132, type: !10, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4604180019048437139, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "Lp1", scope: !0, file: !1, line: 135, type: !10, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4600877379321592324, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "Lp2", scope: !0, file: !1, line: 136, type: !10, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4598818590951641945, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "Lp3", scope: !0, file: !1, line: 137, type: !10, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 4597174411056806063, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "Lp4", scope: !0, file: !1, line: 138, type: !10, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4595719342595441630, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "Lp5", scope: !0, file: !1, line: 139, type: !10, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 4594685411790997151, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "Lp6", scope: !0, file: !1, line: 140, type: !10, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression(DW_OP_constu, 4594499633228436036, DW_OP_stack_value))
!31 = distinct !DIGlobalVariable(name: "Lp7", scope: !0, file: !1, line: 141, type: !10, isLocal: true, isDefinition: true)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!36 = distinct !DISubprogram(name: "log1p", scope: !1, file: !1, line: 150, type: !37, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!11, !11}
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !66, !72, !75, !79}
!40 = !DILocalVariable(name: "x", arg: 1, scope: !36, file: !1, line: 150, type: !11)
!41 = !DILocalVariable(name: "hfsq", scope: !36, file: !1, line: 156, type: !11)
!42 = !DILocalVariable(name: "f", scope: !36, file: !1, line: 156, type: !11)
!43 = !DILocalVariable(name: "c", scope: !36, file: !1, line: 156, type: !11)
!44 = !DILocalVariable(name: "s", scope: !36, file: !1, line: 156, type: !11)
!45 = !DILocalVariable(name: "z", scope: !36, file: !1, line: 156, type: !11)
!46 = !DILocalVariable(name: "R", scope: !36, file: !1, line: 156, type: !11)
!47 = !DILocalVariable(name: "u", scope: !36, file: !1, line: 156, type: !11)
!48 = !DILocalVariable(name: "k", scope: !36, file: !1, line: 157, type: !4)
!49 = !DILocalVariable(name: "hx", scope: !36, file: !1, line: 157, type: !4)
!50 = !DILocalVariable(name: "hu", scope: !36, file: !1, line: 157, type: !4)
!51 = !DILocalVariable(name: "ax", scope: !36, file: !1, line: 157, type: !4)
!52 = !DILocalVariable(name: "gh_u", scope: !53, file: !1, line: 159, type: !54)
!53 = distinct !DILexicalBlock(scope: !36, file: !1, line: 159, column: 2)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !55, line: 278, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!56 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !55, line: 270, size: 64, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !56, file: !55, line: 272, baseType: !11, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !56, file: !55, line: 277, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !55, line: 273, size: 64, elements: !61)
!61 = !{!62, !65}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !60, file: !55, line: 275, baseType: !63, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !64)
!64 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !60, file: !55, line: 276, baseType: !63, size: 32, offset: 32)
!66 = !DILocalVariable(name: "gh_u", scope: !67, file: !1, line: 182, type: !54)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 182, column: 3)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 180, column: 24)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 180, column: 9)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 179, column: 11)
!71 = distinct !DILexicalBlock(scope: !36, file: !1, line: 179, column: 5)
!72 = !DILocalVariable(name: "gh_u", scope: !73, file: !1, line: 188, type: !54)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 188, column: 3)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 186, column: 13)
!75 = !DILocalVariable(name: "sh_u", scope: !76, file: !1, line: 194, type: !54)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 194, column: 10)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 193, column: 21)
!78 = distinct !DILexicalBlock(scope: !70, file: !1, line: 193, column: 9)
!79 = !DILocalVariable(name: "sh_u", scope: !80, file: !1, line: 197, type: !54)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 197, column: 3)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 195, column: 13)
!82 = !DILocation(line: 150, column: 22, scope: !36)
!83 = !DILocation(line: 159, column: 2, scope: !53)
!84 = !DILocation(line: 157, column: 14, scope: !36)
!85 = !DILocation(line: 160, column: 9, scope: !36)
!86 = !DILocation(line: 157, column: 20, scope: !36)
!87 = !DILocation(line: 157, column: 12, scope: !36)
!88 = !DILocation(line: 163, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !36, file: !1, line: 163, column: 6)
!90 = !DILocation(line: 163, column: 6, scope: !36)
!91 = !DILocation(line: 164, column: 11, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 164, column: 9)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 163, column: 23)
!94 = !DILocation(line: 164, column: 9, scope: !93)
!95 = !DILocation(line: 165, column: 7, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 165, column: 6)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 164, column: 25)
!98 = !DILocation(line: 165, column: 6, scope: !97)
!99 = !DILocation(line: 166, column: 17, scope: !96)
!100 = !DILocation(line: 166, column: 20, scope: !96)
!101 = !DILocation(line: 166, column: 8, scope: !96)
!102 = !DILocation(line: 168, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !93, file: !1, line: 168, column: 9)
!104 = !DILocation(line: 168, column: 9, scope: !93)
!105 = !DILocation(line: 169, column: 11, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 169, column: 6)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 168, column: 24)
!108 = !DILocation(line: 169, column: 13, scope: !106)
!109 = !DILocation(line: 170, column: 18, scope: !106)
!110 = !DILocation(line: 170, column: 14, scope: !106)
!111 = !DILocation(line: 173, column: 19, scope: !106)
!112 = !DILocation(line: 173, column: 21, scope: !106)
!113 = !DILocation(line: 173, column: 16, scope: !106)
!114 = !DILocation(line: 173, column: 7, scope: !106)
!115 = !DILocation(line: 156, column: 14, scope: !36)
!116 = !DILocation(line: 157, column: 17, scope: !36)
!117 = !DILocation(line: 178, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !36, file: !1, line: 178, column: 6)
!119 = !DILocation(line: 178, column: 6, scope: !36)
!120 = !DILocation(line: 178, column: 32, scope: !118)
!121 = !DILocation(line: 178, column: 24, scope: !118)
!122 = !DILocation(line: 175, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !93, file: !1, line: 175, column: 9)
!124 = !DILocation(line: 179, column: 5, scope: !36)
!125 = !DILocation(line: 156, column: 16, scope: !36)
!126 = !DILocation(line: 202, column: 10, scope: !36)
!127 = !DILocation(line: 202, column: 12, scope: !36)
!128 = !DILocation(line: 156, column: 9, scope: !36)
!129 = !DILocation(line: 203, column: 5, scope: !36)
!130 = !DILocation(line: 180, column: 11, scope: !69)
!131 = !DILocation(line: 180, column: 9, scope: !70)
!132 = !DILocation(line: 181, column: 11, scope: !68)
!133 = !DILocation(line: 156, column: 24, scope: !36)
!134 = !DILocation(line: 182, column: 3, scope: !67)
!135 = !DILocation(line: 184, column: 17, scope: !68)
!136 = !DILocation(line: 184, column: 25, scope: !68)
!137 = !DILocation(line: 184, column: 36, scope: !68)
!138 = !DILocation(line: 184, column: 33, scope: !68)
!139 = !DILocation(line: 184, column: 15, scope: !68)
!140 = !DILocation(line: 185, column: 5, scope: !68)
!141 = !DILocation(line: 186, column: 6, scope: !68)
!142 = !DILocation(line: 0, scope: !73)
!143 = !DILocation(line: 0, scope: !74)
!144 = !DILocation(line: 192, column: 9, scope: !70)
!145 = !DILocation(line: 193, column: 11, scope: !78)
!146 = !DILocation(line: 193, column: 9, scope: !70)
!147 = !DILocation(line: 194, column: 10, scope: !76)
!148 = !DILocation(line: 195, column: 6, scope: !77)
!149 = !DILocation(line: 196, column: 12, scope: !81)
!150 = !DILocation(line: 197, column: 3, scope: !80)
!151 = !DILocation(line: 198, column: 26, scope: !81)
!152 = !DILocation(line: 198, column: 30, scope: !81)
!153 = !DILocation(line: 0, scope: !81)
!154 = !DILocation(line: 0, scope: !80)
!155 = !DILocation(line: 200, column: 11, scope: !70)
!156 = !DILocation(line: 203, column: 7, scope: !157)
!157 = distinct !DILexicalBlock(scope: !36, file: !1, line: 203, column: 5)
!158 = !DILocation(line: 204, column: 15, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 204, column: 14)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 203, column: 12)
!161 = !DILocation(line: 204, column: 14, scope: !160)
!162 = !DILocation(line: 204, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 204, column: 28)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 204, column: 23)
!165 = !DILocation(line: 204, column: 28, scope: !164)
!166 = !DILocation(line: 205, column: 34, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 205, column: 28)
!168 = !DILocation(line: 205, column: 35, scope: !167)
!169 = !DILocation(line: 205, column: 31, scope: !167)
!170 = !DILocation(line: 205, column: 52, scope: !167)
!171 = !DILocation(line: 205, column: 59, scope: !167)
!172 = !DILocation(line: 205, column: 44, scope: !167)
!173 = !DILocation(line: 206, column: 39, scope: !160)
!174 = !DILocation(line: 206, column: 19, scope: !160)
!175 = !DILocation(line: 206, column: 14, scope: !160)
!176 = !DILocation(line: 156, column: 22, scope: !36)
!177 = !DILocation(line: 207, column: 10, scope: !178)
!178 = distinct !DILexicalBlock(scope: !160, file: !1, line: 207, column: 9)
!179 = !DILocation(line: 207, column: 9, scope: !160)
!180 = !DILocation(line: 207, column: 23, scope: !178)
!181 = !DILocation(line: 207, column: 15, scope: !178)
!182 = !DILocation(line: 208, column: 19, scope: !178)
!183 = !DILocation(line: 208, column: 20, scope: !178)
!184 = !DILocation(line: 208, column: 34, scope: !178)
!185 = !DILocation(line: 208, column: 41, scope: !178)
!186 = !DILocation(line: 208, column: 31, scope: !178)
!187 = !DILocation(line: 208, column: 45, scope: !178)
!188 = !DILocation(line: 208, column: 27, scope: !178)
!189 = !DILocation(line: 208, column: 12, scope: !178)
!190 = !DILocation(line: 210, column: 13, scope: !36)
!191 = !DILocation(line: 210, column: 8, scope: !36)
!192 = !DILocation(line: 156, column: 18, scope: !36)
!193 = !DILocation(line: 211, column: 7, scope: !36)
!194 = !DILocation(line: 156, column: 20, scope: !36)
!195 = !DILocation(line: 212, column: 49, scope: !36)
!196 = !DILocation(line: 212, column: 47, scope: !36)
!197 = !DILocation(line: 212, column: 42, scope: !36)
!198 = !DILocation(line: 212, column: 40, scope: !36)
!199 = !DILocation(line: 212, column: 35, scope: !36)
!200 = !DILocation(line: 212, column: 33, scope: !36)
!201 = !DILocation(line: 212, column: 28, scope: !36)
!202 = !DILocation(line: 212, column: 26, scope: !36)
!203 = !DILocation(line: 212, column: 21, scope: !36)
!204 = !DILocation(line: 212, column: 19, scope: !36)
!205 = !DILocation(line: 212, column: 14, scope: !36)
!206 = !DILocation(line: 212, column: 12, scope: !36)
!207 = !DILocation(line: 212, column: 7, scope: !36)
!208 = !DILocation(line: 213, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !36, file: !1, line: 213, column: 5)
!210 = !DILocation(line: 213, column: 5, scope: !36)
!211 = !DILocation(line: 213, column: 33, scope: !209)
!212 = !DILocation(line: 213, column: 27, scope: !209)
!213 = !DILocation(line: 213, column: 25, scope: !209)
!214 = !DILocation(line: 213, column: 19, scope: !209)
!215 = !DILocation(line: 213, column: 11, scope: !209)
!216 = !DILocation(line: 214, column: 11, scope: !209)
!217 = !DILocation(line: 214, column: 12, scope: !209)
!218 = !DILocation(line: 214, column: 35, scope: !209)
!219 = !DILocation(line: 214, column: 29, scope: !209)
!220 = !DILocation(line: 214, column: 41, scope: !209)
!221 = !DILocation(line: 214, column: 48, scope: !209)
!222 = !DILocation(line: 214, column: 38, scope: !209)
!223 = !DILocation(line: 214, column: 26, scope: !209)
!224 = !DILocation(line: 214, column: 53, scope: !209)
!225 = !DILocation(line: 214, column: 19, scope: !209)
!226 = !DILocation(line: 214, column: 4, scope: !209)
!227 = !DILocation(line: 0, scope: !209)
!228 = !DILocation(line: 215, column: 1, scope: !36)
