; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_expm1.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_expm1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @expm1(double) local_unnamed_addr #0 !dbg !34 {
  %2 = bitcast double %0 to i64, !dbg !104
  %3 = lshr i64 %2, 32, !dbg !104
  %4 = trunc i64 %3 to i32, !dbg !104
  %5 = icmp sgt i32 %4, -1, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %6 = and i32 %4, 2147483647, !dbg !110
  %7 = icmp ugt i32 %6, 1078159481, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %7, label %8, label %27, !dbg !112

; <label>:8:                                      ; preds = %1
  %9 = icmp ugt i32 %6, 1082535489, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %9, label %10, label %22, !dbg !114

; <label>:10:                                     ; preds = %8
  %11 = icmp ugt i32 %6, 2146435071, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %11, label %12, label %20, !dbg !116

; <label>:12:                                     ; preds = %10
  %13 = trunc i64 %2 to i32, !dbg !117
  %14 = and i32 %4, 1048575, !dbg !119
  %15 = or i32 %14, %13, !dbg !121
  %16 = icmp eq i32 %15, 0, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %17 = fadd double %0, %0, !dbg !124
  %18 = select i1 %5, double %0, double -1.000000e+00, !dbg !125
  %19 = select i1 %16, double %18, double %17, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br label %161

; <label>:20:                                     ; preds = %10
  %21 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %21, label %161, label %22, !dbg !129

; <label>:22:                                     ; preds = %20, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %5, label %26, label %23, !dbg !130

; <label>:23:                                     ; preds = %22
  %24 = fadd double %0, 1.000000e-300, !dbg !131
  %25 = fcmp olt double %24, 0.000000e+00, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %25, label %161, label %26, !dbg !136

; <label>:26:                                     ; preds = %23, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br label %36, !dbg !138

; <label>:27:                                     ; preds = %1
  %28 = icmp ugt i32 %6, 1071001154, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br i1 %28, label %29, label %52, !dbg !137

; <label>:29:                                     ; preds = %27
  %30 = icmp ult i32 %6, 1072734898, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %30, label %31, label %36, !dbg !138

; <label>:31:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %5, label %32, label %34, !dbg !144

; <label>:32:                                     ; preds = %31
  %33 = fadd double %0, 0xBFE62E42FEE00000, !dbg !146
  br label %45, !dbg !152

; <label>:34:                                     ; preds = %31
  %35 = fadd double %0, 0x3FE62E42FEE00000, !dbg !153
  br label %45

; <label>:36:                                     ; preds = %26, %29
  %37 = fmul double %0, 0x3FF71547652B82FE, !dbg !155
  %38 = select i1 %5, double 5.000000e-01, double -5.000000e-01, !dbg !157
  %39 = fadd double %37, %38, !dbg !158
  %40 = fptosi double %39 to i32, !dbg !159
  %41 = sitofp i32 %40 to double, !dbg !160
  %42 = fmul double %41, 0x3FE62E42FEE00000, !dbg !162
  %43 = fsub double %0, %42, !dbg !163
  %44 = fmul double %41, 0x3DEA39EF35793C76, !dbg !164
  br label %45

; <label>:45:                                     ; preds = %32, %34, %36
  %46 = phi i32 [ 1, %32 ], [ -1, %34 ], [ %40, %36 ], !dbg !165
  %47 = phi double [ 0x3DEA39EF35793C76, %32 ], [ 0xBDEA39EF35793C76, %34 ], [ %44, %36 ], !dbg !165
  %48 = phi double [ %33, %32 ], [ %35, %34 ], [ %43, %36 ], !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %49 = fsub double %48, %47, !dbg !166
  %50 = fsub double %48, %49, !dbg !167
  %51 = fsub double %50, %47, !dbg !168
  br label %58, !dbg !170

; <label>:52:                                     ; preds = %27
  %53 = icmp ult i32 %6, 1016070144, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %53, label %54, label %58, !dbg !173

; <label>:54:                                     ; preds = %52
  %55 = fadd double %0, 1.000000e+300, !dbg !174
  %56 = fsub double %55, %55, !dbg !176
  %57 = fsub double %0, %56, !dbg !177
  br label %161, !dbg !178

; <label>:58:                                     ; preds = %52, %45
  %59 = phi i32 [ %46, %45 ], [ 0, %52 ], !dbg !179
  %60 = phi double [ %51, %45 ], [ undef, %52 ]
  %61 = phi double [ %49, %45 ], [ %0, %52 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %62 = fmul double %61, 5.000000e-01, !dbg !180
  %63 = fmul double %61, %62, !dbg !182
  %64 = fmul double %63, 0x3E8AFDB76E09C32D, !dbg !184
  %65 = fsub double 0x3ED0CFCA86E65239, %64, !dbg !184
  %66 = fmul double %63, %65, !dbg !185
  %67 = fadd double %66, 0xBF14CE199EAADBB7, !dbg !186
  %68 = fmul double %63, %67, !dbg !187
  %69 = fadd double %68, 0x3F5A01A019FE5585, !dbg !188
  %70 = fmul double %63, %69, !dbg !189
  %71 = fadd double %70, 0xBFA11111111110F4, !dbg !190
  %72 = fmul double %63, %71, !dbg !191
  %73 = fadd double %72, 1.000000e+00, !dbg !192
  %74 = fmul double %62, %73, !dbg !194
  %75 = fsub double 3.000000e+00, %74, !dbg !195
  %76 = fsub double %73, %75, !dbg !196
  %77 = fmul double %61, %75, !dbg !197
  %78 = fsub double 6.000000e+00, %77, !dbg !198
  %79 = fdiv double %76, %78, !dbg !199
  %80 = fmul double %63, %79, !dbg !200
  %81 = icmp eq i32 %59, 0, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %81, label %82, label %86, !dbg !203

; <label>:82:                                     ; preds = %58
  %83 = fmul double %61, %80, !dbg !204
  %84 = fsub double %83, %63, !dbg !205
  %85 = fsub double %61, %84, !dbg !206
  br label %161, !dbg !207

; <label>:86:                                     ; preds = %58
  %87 = fsub double %80, %60, !dbg !208
  %88 = fmul double %61, %87, !dbg !209
  %89 = fsub double %88, %60, !dbg !210
  %90 = fsub double %89, %63, !dbg !211
  %91 = icmp eq i32 %59, -1, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br i1 %91, label %92, label %96, !dbg !214

; <label>:92:                                     ; preds = %86
  %93 = fsub double %61, %90, !dbg !215
  %94 = fmul double %93, 5.000000e-01, !dbg !216
  %95 = fadd double %94, -5.000000e-01, !dbg !217
  br label %161, !dbg !218

; <label>:96:                                     ; preds = %86
  %97 = icmp eq i32 %59, 1, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %97, label %98, label %108, !dbg !221

; <label>:98:                                     ; preds = %96
  %99 = fcmp olt double %61, -2.500000e-01, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %99, label %100, label %104, !dbg !225

; <label>:100:                                    ; preds = %98
  %101 = fadd double %61, 5.000000e-01, !dbg !226
  %102 = fsub double %90, %101, !dbg !227
  %103 = fmul double %102, -2.000000e+00, !dbg !228
  br label %161, !dbg !229

; <label>:104:                                    ; preds = %98
  %105 = fsub double %61, %90, !dbg !230
  %106 = fmul double %105, 2.000000e+00, !dbg !231
  %107 = fadd double %106, 1.000000e+00, !dbg !232
  br label %161, !dbg !233

; <label>:108:                                    ; preds = %96
  %109 = add i32 %59, 1, !dbg !234
  %110 = icmp ugt i32 %109, 57, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br i1 %110, label %111, label %125, !dbg !234

; <label>:111:                                    ; preds = %108
  %112 = fsub double %61, %90, !dbg !235
  %113 = fadd double %112, 1.000000e+00, !dbg !235
  %114 = bitcast double %113 to i64, !dbg !237
  %115 = lshr i64 %114, 32, !dbg !237
  %116 = trunc i64 %115 to i32, !dbg !237
  %117 = shl i32 %59, 20, !dbg !239
  %118 = add i32 %117, %116, !dbg !239
  %119 = zext i32 %118 to i64, !dbg !239
  %120 = shl nuw i64 %119, 32, !dbg !239
  %121 = and i64 %114, 4294967295, !dbg !239
  %122 = or i64 %120, %121, !dbg !239
  %123 = bitcast i64 %122 to double, !dbg !239
  %124 = fadd double %123, -1.000000e+00, !dbg !240
  br label %161

; <label>:125:                                    ; preds = %108
  %126 = icmp slt i32 %59, 20, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br i1 %126, label %127, label %140, !dbg !242

; <label>:127:                                    ; preds = %125
  %128 = lshr i32 2097152, %59, !dbg !243
  %129 = sub nsw i32 1072693248, %128, !dbg !243
  %130 = zext i32 %129 to i64, !dbg !243
  %131 = shl nuw i64 %130, 32, !dbg !243
  %132 = bitcast i64 %131 to double, !dbg !243
  %133 = fsub double %90, %61, !dbg !244
  %134 = fsub double %132, %133, !dbg !245
  %135 = bitcast double %134 to i64, !dbg !246
  %136 = lshr i64 %135, 32, !dbg !246
  %137 = trunc i64 %136 to i32, !dbg !246
  %138 = shl i32 %59, 20, !dbg !248
  %139 = add i32 %138, %137, !dbg !248
  br label %153, !dbg !249

; <label>:140:                                    ; preds = %125
  %141 = shl i32 %59, 20, !dbg !250
  %142 = sub i32 1072693248, %141, !dbg !250
  %143 = zext i32 %142 to i64, !dbg !250
  %144 = shl nuw i64 %143, 32, !dbg !250
  %145 = bitcast i64 %144 to double, !dbg !250
  %146 = fadd double %90, %145, !dbg !251
  %147 = fsub double %61, %146, !dbg !252
  %148 = fadd double %147, 1.000000e+00, !dbg !253
  %149 = bitcast double %148 to i64, !dbg !254
  %150 = lshr i64 %149, 32, !dbg !254
  %151 = trunc i64 %150 to i32, !dbg !254
  %152 = add i32 %141, %151, !dbg !256
  br label %153

; <label>:153:                                    ; preds = %127, %140
  %154 = phi i32 [ %139, %127 ], [ %152, %140 ]
  %155 = phi i64 [ %135, %127 ], [ %149, %140 ]
  %156 = zext i32 %154 to i64, !dbg !257
  %157 = shl nuw i64 %156, 32, !dbg !257
  %158 = and i64 %155, 4294967295, !dbg !257
  %159 = or i64 %157, %158, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %160 = bitcast i64 %159 to double, !dbg !257
  br label %161, !dbg !258

; <label>:161:                                    ; preds = %23, %20, %153, %111, %104, %100, %92, %82, %54, %12
  %162 = phi double [ %19, %12 ], [ %85, %82 ], [ %95, %92 ], [ %103, %100 ], [ %107, %104 ], [ %124, %111 ], [ %160, %153 ], [ %57, %54 ], [ 0x7FF0000000000000, %20 ], [ -1.000000e+00, %23 ], !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  ret double %162, !dbg !260
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_expm1.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "o_threshold", scope: !0, file: !1, line: 164, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 162, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 163, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 161, type: !6, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4604418534311723008, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "ln2_hi", scope: !0, file: !1, line: 165, type: !6, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4461442080421002358, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ln2_lo", scope: !0, file: !1, line: 166, type: !6, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4609176140021203710, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "invln2", scope: !0, file: !1, line: 167, type: !6, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 13808336697493098740, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "Q1", scope: !0, file: !1, line: 169, type: !6, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 4564962959435912581, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "Q2", scope: !0, file: !1, line: 170, type: !6, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression(DW_OP_constu, 13768856570209950647, DW_OP_stack_value))
!25 = distinct !DIGlobalVariable(name: "Q3", scope: !0, file: !1, line: 171, type: !6, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression(DW_OP_constu, 4526346094260933177, DW_OP_stack_value))
!27 = distinct !DIGlobalVariable(name: "Q4", scope: !0, file: !1, line: 172, type: !6, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression(DW_OP_constu, 13730065378259354413, DW_OP_stack_value))
!29 = distinct !DIGlobalVariable(name: "Q5", scope: !0, file: !1, line: 173, type: !6, isLocal: true, isDefinition: true)
!30 = !{i32 2, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!34 = distinct !DISubprogram(name: "expm1", scope: !1, file: !1, line: 176, type: !35, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{!7, !7}
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !52, !53, !56, !68, !75, !77, !82, !84, !86, !89, !91, !93, !95, !97, !99, !101}
!38 = !DILocalVariable(name: "x", arg: 1, scope: !34, file: !1, line: 176, type: !7)
!39 = !DILocalVariable(name: "y", scope: !34, file: !1, line: 182, type: !7)
!40 = !DILocalVariable(name: "hi", scope: !34, file: !1, line: 182, type: !7)
!41 = !DILocalVariable(name: "lo", scope: !34, file: !1, line: 182, type: !7)
!42 = !DILocalVariable(name: "c", scope: !34, file: !1, line: 182, type: !7)
!43 = !DILocalVariable(name: "t", scope: !34, file: !1, line: 182, type: !7)
!44 = !DILocalVariable(name: "e", scope: !34, file: !1, line: 182, type: !7)
!45 = !DILocalVariable(name: "hxs", scope: !34, file: !1, line: 182, type: !7)
!46 = !DILocalVariable(name: "hfx", scope: !34, file: !1, line: 182, type: !7)
!47 = !DILocalVariable(name: "r1", scope: !34, file: !1, line: 182, type: !7)
!48 = !DILocalVariable(name: "k", scope: !34, file: !1, line: 183, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !50, line: 77, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "xsb", scope: !34, file: !1, line: 183, type: !49)
!53 = !DILocalVariable(name: "hx", scope: !34, file: !1, line: 184, type: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 79, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DILocalVariable(name: "gh_u", scope: !57, file: !1, line: 186, type: !58)
!57 = distinct !DILexicalBlock(scope: !34, file: !1, line: 186, column: 2)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !59, line: 278, baseType: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 270, size: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !60, file: !59, line: 272, baseType: !7, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !60, file: !59, line: 277, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !59, line: 273, size: 64, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !64, file: !59, line: 275, baseType: !54, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !64, file: !59, line: 276, baseType: !54, size: 32, offset: 32)
!68 = !DILocalVariable(name: "low", scope: !69, file: !1, line: 195, type: !54)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 194, column: 36)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 194, column: 20)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 193, column: 27)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 193, column: 9)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 192, column: 23)
!74 = distinct !DILexicalBlock(scope: !34, file: !1, line: 192, column: 5)
!75 = !DILocalVariable(name: "gl_u", scope: !76, file: !1, line: 196, type: !58)
!76 = distinct !DILexicalBlock(scope: !69, file: !1, line: 196, column: 7)
!77 = !DILocalVariable(name: "high", scope: !78, file: !1, line: 247, type: !54)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 246, column: 27)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 246, column: 10)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 238, column: 7)
!81 = distinct !DILexicalBlock(scope: !34, file: !1, line: 237, column: 5)
!82 = !DILocalVariable(name: "gh_u", scope: !83, file: !1, line: 249, type: !58)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 249, column: 3)
!84 = !DILocalVariable(name: "sh_u", scope: !85, file: !1, line: 250, type: !58)
!85 = distinct !DILexicalBlock(scope: !78, file: !1, line: 250, column: 3)
!86 = !DILocalVariable(name: "high", scope: !87, file: !1, line: 255, type: !54)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 254, column: 15)
!88 = distinct !DILexicalBlock(scope: !80, file: !1, line: 254, column: 9)
!89 = !DILocalVariable(name: "sh_u", scope: !90, file: !1, line: 256, type: !58)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 256, column: 10)
!91 = !DILocalVariable(name: "gh_u", scope: !92, file: !1, line: 258, type: !58)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 258, column: 3)
!93 = !DILocalVariable(name: "sh_u", scope: !94, file: !1, line: 259, type: !58)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 259, column: 3)
!95 = !DILocalVariable(name: "high", scope: !96, file: !1, line: 261, type: !54)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 260, column: 12)
!97 = !DILocalVariable(name: "sh_u", scope: !98, file: !1, line: 262, type: !58)
!98 = distinct !DILexicalBlock(scope: !96, file: !1, line: 262, column: 3)
!99 = !DILocalVariable(name: "gh_u", scope: !100, file: !1, line: 265, type: !58)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 265, column: 3)
!101 = !DILocalVariable(name: "sh_u", scope: !102, file: !1, line: 266, type: !58)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 266, column: 3)
!103 = !DILocation(line: 176, column: 22, scope: !34)
!104 = !DILocation(line: 186, column: 2, scope: !57)
!105 = !DILocation(line: 184, column: 13, scope: !34)
!106 = !DILocation(line: 183, column: 14, scope: !34)
!107 = !DILocation(line: 188, column: 8, scope: !108)
!108 = distinct !DILexicalBlock(scope: !34, file: !1, line: 188, column: 5)
!109 = !DILocation(line: 188, column: 5, scope: !34)
!110 = !DILocation(line: 189, column: 5, scope: !34)
!111 = !DILocation(line: 192, column: 8, scope: !74)
!112 = !DILocation(line: 192, column: 5, scope: !34)
!113 = !DILocation(line: 193, column: 12, scope: !72)
!114 = !DILocation(line: 193, column: 9, scope: !73)
!115 = !DILocation(line: 194, column: 22, scope: !70)
!116 = !DILocation(line: 194, column: 20, scope: !71)
!117 = !DILocation(line: 196, column: 7, scope: !76)
!118 = !DILocation(line: 195, column: 18, scope: !69)
!119 = !DILocation(line: 197, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !69, file: !1, line: 197, column: 10)
!121 = !DILocation(line: 197, column: 23, scope: !120)
!122 = !DILocation(line: 197, column: 28, scope: !120)
!123 = !DILocation(line: 197, column: 10, scope: !69)
!124 = !DILocation(line: 198, column: 20, scope: !120)
!125 = !DILocation(line: 199, column: 19, scope: !120)
!126 = !DILocation(line: 0, scope: !120)
!127 = !DILocation(line: 201, column: 15, scope: !128)
!128 = distinct !DILexicalBlock(scope: !71, file: !1, line: 201, column: 13)
!129 = !DILocation(line: 201, column: 13, scope: !71)
!130 = !DILocation(line: 203, column: 9, scope: !73)
!131 = !DILocation(line: 204, column: 7, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 204, column: 6)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 203, column: 17)
!134 = distinct !DILexicalBlock(scope: !73, file: !1, line: 203, column: 9)
!135 = !DILocation(line: 204, column: 12, scope: !132)
!136 = !DILocation(line: 204, column: 6, scope: !133)
!137 = !DILocation(line: 210, column: 5, scope: !34)
!138 = !DILocation(line: 211, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 210, column: 22)
!140 = distinct !DILexicalBlock(scope: !34, file: !1, line: 210, column: 5)
!141 = !DILocation(line: 210, column: 8, scope: !140)
!142 = !DILocation(line: 211, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 211, column: 9)
!144 = !DILocation(line: 212, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !143, file: !1, line: 211, column: 26)
!146 = !DILocation(line: 213, column: 15, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 213, column: 7)
!148 = distinct !DILexicalBlock(scope: !145, file: !1, line: 212, column: 6)
!149 = !DILocation(line: 182, column: 11, scope: !34)
!150 = !DILocation(line: 182, column: 14, scope: !34)
!151 = !DILocation(line: 183, column: 12, scope: !34)
!152 = !DILocation(line: 213, column: 47, scope: !147)
!153 = !DILocation(line: 215, column: 15, scope: !154)
!154 = distinct !DILexicalBlock(scope: !148, file: !1, line: 215, column: 7)
!155 = !DILocation(line: 217, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !143, file: !1, line: 216, column: 13)
!157 = !DILocation(line: 217, column: 18, scope: !156)
!158 = !DILocation(line: 217, column: 16, scope: !156)
!159 = !DILocation(line: 217, column: 8, scope: !156)
!160 = !DILocation(line: 218, column: 8, scope: !156)
!161 = !DILocation(line: 182, column: 19, scope: !34)
!162 = !DILocation(line: 219, column: 13, scope: !156)
!163 = !DILocation(line: 219, column: 10, scope: !156)
!164 = !DILocation(line: 220, column: 9, scope: !156)
!165 = !DILocation(line: 0, scope: !156)
!166 = !DILocation(line: 222, column: 14, scope: !139)
!167 = !DILocation(line: 223, column: 14, scope: !139)
!168 = !DILocation(line: 223, column: 17, scope: !139)
!169 = !DILocation(line: 182, column: 17, scope: !34)
!170 = !DILocation(line: 224, column: 2, scope: !139)
!171 = !DILocation(line: 225, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !140, file: !1, line: 225, column: 10)
!173 = !DILocation(line: 225, column: 10, scope: !140)
!174 = !DILocation(line: 226, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 225, column: 27)
!176 = !DILocation(line: 227, column: 19, scope: !175)
!177 = !DILocation(line: 227, column: 15, scope: !175)
!178 = !DILocation(line: 227, column: 6, scope: !175)
!179 = !DILocation(line: 0, scope: !172)
!180 = !DILocation(line: 232, column: 11, scope: !34)
!181 = !DILocation(line: 182, column: 27, scope: !34)
!182 = !DILocation(line: 233, column: 9, scope: !34)
!183 = !DILocation(line: 182, column: 23, scope: !34)
!184 = !DILocation(line: 234, column: 46, scope: !34)
!185 = !DILocation(line: 234, column: 38, scope: !34)
!186 = !DILocation(line: 234, column: 34, scope: !34)
!187 = !DILocation(line: 234, column: 30, scope: !34)
!188 = !DILocation(line: 234, column: 26, scope: !34)
!189 = !DILocation(line: 234, column: 22, scope: !34)
!190 = !DILocation(line: 234, column: 18, scope: !34)
!191 = !DILocation(line: 234, column: 14, scope: !34)
!192 = !DILocation(line: 234, column: 10, scope: !34)
!193 = !DILocation(line: 182, column: 31, scope: !34)
!194 = !DILocation(line: 235, column: 13, scope: !34)
!195 = !DILocation(line: 235, column: 10, scope: !34)
!196 = !DILocation(line: 236, column: 15, scope: !34)
!197 = !DILocation(line: 236, column: 27, scope: !34)
!198 = !DILocation(line: 236, column: 24, scope: !34)
!199 = !DILocation(line: 236, column: 18, scope: !34)
!200 = !DILocation(line: 236, column: 10, scope: !34)
!201 = !DILocation(line: 182, column: 21, scope: !34)
!202 = !DILocation(line: 237, column: 6, scope: !81)
!203 = !DILocation(line: 237, column: 5, scope: !34)
!204 = !DILocation(line: 237, column: 24, scope: !81)
!205 = !DILocation(line: 237, column: 26, scope: !81)
!206 = !DILocation(line: 237, column: 20, scope: !81)
!207 = !DILocation(line: 237, column: 11, scope: !81)
!208 = !DILocation(line: 239, column: 16, scope: !80)
!209 = !DILocation(line: 239, column: 13, scope: !80)
!210 = !DILocation(line: 239, column: 19, scope: !80)
!211 = !DILocation(line: 240, column: 8, scope: !80)
!212 = !DILocation(line: 241, column: 10, scope: !213)
!213 = distinct !DILexicalBlock(scope: !80, file: !1, line: 241, column: 9)
!214 = !DILocation(line: 241, column: 9, scope: !80)
!215 = !DILocation(line: 241, column: 30, scope: !213)
!216 = !DILocation(line: 241, column: 27, scope: !213)
!217 = !DILocation(line: 241, column: 33, scope: !213)
!218 = !DILocation(line: 241, column: 17, scope: !213)
!219 = !DILocation(line: 242, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !80, file: !1, line: 242, column: 14)
!221 = !DILocation(line: 242, column: 14, scope: !80)
!222 = !DILocation(line: 243, column: 15, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 243, column: 13)
!224 = distinct !DILexicalBlock(scope: !220, file: !1, line: 242, column: 20)
!225 = !DILocation(line: 243, column: 13, scope: !224)
!226 = !DILocation(line: 243, column: 41, scope: !223)
!227 = !DILocation(line: 243, column: 38, scope: !223)
!228 = !DILocation(line: 243, column: 35, scope: !223)
!229 = !DILocation(line: 243, column: 24, scope: !223)
!230 = !DILocation(line: 244, column: 40, scope: !223)
!231 = !DILocation(line: 244, column: 37, scope: !223)
!232 = !DILocation(line: 244, column: 33, scope: !223)
!233 = !DILocation(line: 244, column: 22, scope: !223)
!234 = !DILocation(line: 246, column: 18, scope: !79)
!235 = !DILocation(line: 248, column: 17, scope: !78)
!236 = !DILocation(line: 182, column: 9, scope: !34)
!237 = !DILocation(line: 249, column: 3, scope: !83)
!238 = !DILocation(line: 247, column: 21, scope: !78)
!239 = !DILocation(line: 250, column: 3, scope: !85)
!240 = !DILocation(line: 251, column: 18, scope: !78)
!241 = !DILocation(line: 254, column: 10, scope: !88)
!242 = !DILocation(line: 254, column: 9, scope: !80)
!243 = !DILocation(line: 256, column: 10, scope: !90)
!244 = !DILocation(line: 257, column: 18, scope: !87)
!245 = !DILocation(line: 257, column: 15, scope: !87)
!246 = !DILocation(line: 258, column: 3, scope: !92)
!247 = !DILocation(line: 255, column: 21, scope: !87)
!248 = !DILocation(line: 259, column: 3, scope: !94)
!249 = !DILocation(line: 260, column: 5, scope: !87)
!250 = !DILocation(line: 262, column: 3, scope: !98)
!251 = !DILocation(line: 263, column: 18, scope: !96)
!252 = !DILocation(line: 263, column: 15, scope: !96)
!253 = !DILocation(line: 264, column: 12, scope: !96)
!254 = !DILocation(line: 265, column: 3, scope: !100)
!255 = !DILocation(line: 261, column: 21, scope: !96)
!256 = !DILocation(line: 266, column: 3, scope: !102)
!257 = !DILocation(line: 0, scope: !102)
!258 = !DILocation(line: 269, column: 2, scope: !34)
!259 = !DILocation(line: 0, scope: !175)
!260 = !DILocation(line: 270, column: 1, scope: !34)
