; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_exp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_exp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ln2HI = internal unnamed_addr constant [2 x float] [float 0x3FE62E3000000000, float 0xBFE62E3000000000], align 4, !dbg !0
@ln2LO = internal unnamed_addr constant [2 x float] [float 0x3EE2FEFA20000000, float 0xBEE2FEFA20000000], align 4, !dbg !27
@halF = internal unnamed_addr constant [2 x float] [float 5.000000e-01, float -5.000000e-01], align 4, !dbg !32
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_expf(float) local_unnamed_addr #0 !dbg !38 {
  %2 = bitcast float %0 to i32, !dbg !80
  %3 = lshr i32 %2, 31, !dbg !82
  %4 = and i32 %2, 2147483647, !dbg !84
  %5 = icmp ugt i32 %4, 2139095040, !dbg !86
  br i1 %5, label %6, label %8, !dbg !88

; <label>:6:                                      ; preds = %1
  %7 = fadd float %0, %0, !dbg !89
  br label %93, !dbg !90

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %4, 2139095040, !dbg !91
  br i1 %9, label %10, label %13, !dbg !93

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i32 %3, 0, !dbg !94
  %12 = select i1 %11, float %0, float 0.000000e+00, !dbg !95
  br label %93, !dbg !96

; <label>:13:                                     ; preds = %8
  %14 = icmp sgt i32 %2, 1118925335, !dbg !97
  br i1 %14, label %93, label %15, !dbg !99

; <label>:15:                                     ; preds = %13
  %16 = icmp slt i32 %2, 0, !dbg !100
  %17 = icmp ugt i32 %4, 1120924085, !dbg !102
  %18 = and i1 %16, %17, !dbg !103
  br i1 %18, label %93, label %19, !dbg !103

; <label>:19:                                     ; preds = %15
  %20 = icmp ugt i32 %4, 1051816472, !dbg !104
  br i1 %20, label %21, label %47, !dbg !106

; <label>:21:                                     ; preds = %19
  %22 = icmp ult i32 %4, 1065686418, !dbg !107
  br i1 %22, label %23, label %31, !dbg !110

; <label>:23:                                     ; preds = %21
  %24 = zext i32 %3 to i64, !dbg !111
  %25 = getelementptr inbounds [2 x float], [2 x float]* @ln2HI, i64 0, i64 %24, !dbg !111
  %26 = load float, float* %25, align 4, !dbg !111, !tbaa !113
  %27 = getelementptr inbounds [2 x float], [2 x float]* @ln2LO, i64 0, i64 %24, !dbg !117
  %28 = load float, float* %27, align 4, !dbg !117, !tbaa !113
  %29 = xor i32 %3, 1, !dbg !119
  %30 = sub nsw i32 %29, %3, !dbg !120
  br label %41, !dbg !121

; <label>:31:                                     ; preds = %21
  %32 = fmul float %0, 0x3FF7154760000000, !dbg !122
  %33 = zext i32 %3 to i64, !dbg !124
  %34 = getelementptr inbounds [2 x float], [2 x float]* @halF, i64 0, i64 %33, !dbg !124
  %35 = load float, float* %34, align 4, !dbg !124, !tbaa !113
  %36 = fadd float %32, %35, !dbg !125
  %37 = fptosi float %36 to i32, !dbg !126
  %38 = sitofp i32 %37 to float, !dbg !127
  %39 = fmul float %38, 0x3FE62E3000000000, !dbg !129
  %40 = fmul float %38, 0x3EE2FEFA20000000, !dbg !130
  br label %41

; <label>:41:                                     ; preds = %31, %23
  %42 = phi i32 [ %30, %23 ], [ %37, %31 ], !dbg !131
  %43 = phi float [ %28, %23 ], [ %40, %31 ], !dbg !131
  %44 = phi float [ %26, %23 ], [ %39, %31 ]
  %45 = fsub float %0, %44, !dbg !131
  %46 = fsub float %45, %43, !dbg !133
  br label %54, !dbg !134

; <label>:47:                                     ; preds = %19
  %48 = icmp ult i32 %4, 830472192, !dbg !135
  %49 = fadd float %0, 0x46293E5940000000, !dbg !137
  %50 = fcmp ogt float %49, 1.000000e+00, !dbg !140
  %51 = and i1 %50, %48, !dbg !141
  br i1 %51, label %52, label %54, !dbg !141

; <label>:52:                                     ; preds = %47
  %53 = fadd float %0, 1.000000e+00, !dbg !142
  br label %93, !dbg !143

; <label>:54:                                     ; preds = %47, %41
  %55 = phi i32 [ %42, %41 ], [ 0, %47 ], !dbg !144
  %56 = phi float [ %43, %41 ], [ undef, %47 ]
  %57 = phi float [ %45, %41 ], [ undef, %47 ]
  %58 = phi float [ %46, %41 ], [ %0, %47 ]
  %59 = fmul float %58, %58, !dbg !145
  %60 = fmul float %59, 0x3E66376980000000, !dbg !146
  %61 = fadd float %60, 0xBEBBBD41C0000000, !dbg !147
  %62 = fmul float %59, %61, !dbg !148
  %63 = fadd float %62, 0x3F11566AA0000000, !dbg !149
  %64 = fmul float %59, %63, !dbg !150
  %65 = fadd float %64, 0xBF66C16C20000000, !dbg !151
  %66 = fmul float %59, %65, !dbg !152
  %67 = fadd float %66, 0x3FC5555560000000, !dbg !153
  %68 = fmul float %59, %67, !dbg !154
  %69 = fsub float %58, %68, !dbg !155
  %70 = icmp eq i32 %55, 0, !dbg !157
  %71 = fmul float %58, %69, !dbg !159
  br i1 %70, label %72, label %77, !dbg !160

; <label>:72:                                     ; preds = %54
  %73 = fadd float %69, -2.000000e+00, !dbg !161
  %74 = fdiv float %71, %73, !dbg !162
  %75 = fsub float %58, %74, !dbg !163
  %76 = fadd float %75, 1.000000e+00, !dbg !163
  br label %93, !dbg !164

; <label>:77:                                     ; preds = %54
  %78 = fsub float 2.000000e+00, %69, !dbg !165
  %79 = fdiv float %71, %78, !dbg !166
  %80 = fsub float %56, %79, !dbg !167
  %81 = fsub float %57, %80, !dbg !168
  %82 = fadd float %81, 1.000000e+00, !dbg !168
  %83 = icmp sgt i32 %55, -126, !dbg !170
  %84 = bitcast float %82 to i32, !dbg !171
  %85 = shl i32 %55, 23, !dbg !172
  %86 = add i32 %85, %84, !dbg !172
  br i1 %83, label %87, label %89, !dbg !173

; <label>:87:                                     ; preds = %77
  %88 = bitcast i32 %86 to float, !dbg !175
  br label %93

; <label>:89:                                     ; preds = %77
  %90 = add i32 %86, 838860800, !dbg !178
  %91 = bitcast i32 %90 to float, !dbg !178
  %92 = fmul float %91, 0x39B0000000000000, !dbg !179
  br label %93

; <label>:93:                                     ; preds = %15, %13, %89, %87, %72, %52, %10, %6
  %94 = phi float [ %7, %6 ], [ %12, %10 ], [ %76, %72 ], [ %88, %87 ], [ %92, %89 ], [ %53, %52 ], [ 0x7FF0000000000000, %13 ], [ 0.000000e+00, %15 ], !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  ret float %94, !dbg !181
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ln2HI", scope: !2, file: !3, line: 31, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_exp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!8, !11, !13, !15, !17, !19, !21, !23, !25, !0, !27, !32}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 29, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 226492416, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "twom100", scope: !2, file: !3, line: 30, type: !10, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression(DW_OP_constu, 1069066811, DW_OP_stack_value))
!14 = distinct !DIGlobalVariable(name: "invln2", scope: !2, file: !3, line: 35, type: !10, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 27, type: !10, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression(DW_OP_constu, 1042983595, DW_OP_stack_value))
!18 = distinct !DIGlobalVariable(name: "P1", scope: !2, file: !3, line: 36, type: !10, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression(DW_OP_constu, 3140881249, DW_OP_stack_value))
!20 = distinct !DIGlobalVariable(name: "P2", scope: !2, file: !3, line: 37, type: !10, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression(DW_OP_constu, 948613973, DW_OP_stack_value))
!22 = distinct !DIGlobalVariable(name: "P3", scope: !2, file: !3, line: 38, type: !10, isLocal: true, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression(DW_OP_constu, 3051219470, DW_OP_stack_value))
!24 = distinct !DIGlobalVariable(name: "P4", scope: !2, file: !3, line: 39, type: !10, isLocal: true, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression(DW_OP_constu, 858897228, DW_OP_stack_value))
!26 = distinct !DIGlobalVariable(name: "P5", scope: !2, file: !3, line: 40, type: !10, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "ln2LO", scope: !2, file: !3, line: 33, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "halF", scope: !2, file: !3, line: 28, type: !29, isLocal: true, isDefinition: true)
!34 = !{i32 2, !"Dwarf Version", i32 4}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!38 = distinct !DISubprogram(name: "__ieee754_expf", scope: !3, file: !3, line: 43, type: !39, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !6}
!41 = !{!42, !43, !44, !45, !46, !47, !48, !52, !53, !54, !57, !65, !68, !70, !72, !74, !76}
!42 = !DILocalVariable(name: "x", arg: 1, scope: !38, file: !3, line: 43, type: !6)
!43 = !DILocalVariable(name: "y", scope: !38, file: !3, line: 49, type: !6)
!44 = !DILocalVariable(name: "hi", scope: !38, file: !3, line: 49, type: !6)
!45 = !DILocalVariable(name: "lo", scope: !38, file: !3, line: 49, type: !6)
!46 = !DILocalVariable(name: "c", scope: !38, file: !3, line: 49, type: !6)
!47 = !DILocalVariable(name: "t", scope: !38, file: !3, line: 49, type: !6)
!48 = !DILocalVariable(name: "k", scope: !38, file: !3, line: 50, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !50, line: 77, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DILocalVariable(name: "xsb", scope: !38, file: !3, line: 50, type: !49)
!53 = !DILocalVariable(name: "sx", scope: !38, file: !3, line: 50, type: !49)
!54 = !DILocalVariable(name: "hx", scope: !38, file: !3, line: 51, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 79, baseType: !56)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DILocalVariable(name: "gf_u", scope: !58, file: !3, line: 53, type: !59)
!58 = distinct !DILexicalBlock(scope: !38, file: !3, line: 53, column: 2)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !60, line: 347, baseType: !61)
!60 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!61 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 343, size: 32, elements: !62)
!62 = !{!63, !64}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !61, file: !60, line: 345, baseType: !6, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !61, file: !60, line: 346, baseType: !55, size: 32)
!65 = !DILocalVariable(name: "hy", scope: !66, file: !3, line: 89, type: !55)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 88, column: 16)
!67 = distinct !DILexicalBlock(scope: !38, file: !3, line: 88, column: 5)
!68 = !DILocalVariable(name: "gf_u", scope: !69, file: !3, line: 90, type: !59)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 90, column: 6)
!70 = !DILocalVariable(name: "sf_u", scope: !71, file: !3, line: 91, type: !59)
!71 = distinct !DILexicalBlock(scope: !66, file: !3, line: 91, column: 6)
!72 = !DILocalVariable(name: "hy", scope: !73, file: !3, line: 94, type: !55)
!73 = distinct !DILexicalBlock(scope: !67, file: !3, line: 93, column: 9)
!74 = !DILocalVariable(name: "gf_u", scope: !75, file: !3, line: 95, type: !59)
!75 = distinct !DILexicalBlock(scope: !73, file: !3, line: 95, column: 6)
!76 = !DILocalVariable(name: "sf_u", scope: !77, file: !3, line: 96, type: !59)
!77 = distinct !DILexicalBlock(scope: !73, file: !3, line: 96, column: 6)
!78 = !DILocation(line: 43, column: 29, scope: !38)
!79 = !DILocation(line: 50, column: 12, scope: !38)
!80 = !DILocation(line: 53, column: 2, scope: !58)
!81 = !DILocation(line: 50, column: 22, scope: !38)
!82 = !DILocation(line: 54, column: 11, scope: !38)
!83 = !DILocation(line: 50, column: 18, scope: !38)
!84 = !DILocation(line: 55, column: 10, scope: !38)
!85 = !DILocation(line: 51, column: 13, scope: !38)
!86 = !DILocation(line: 58, column: 12, scope: !87)
!87 = distinct !DILexicalBlock(scope: !38, file: !3, line: 58, column: 12)
!88 = !DILocation(line: 58, column: 12, scope: !38)
!89 = !DILocation(line: 59, column: 21, scope: !87)
!90 = !DILocation(line: 59, column: 13, scope: !87)
!91 = !DILocation(line: 60, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !38, file: !3, line: 60, column: 12)
!93 = !DILocation(line: 60, column: 12, scope: !38)
!94 = !DILocation(line: 61, column: 17, scope: !92)
!95 = !DILocation(line: 61, column: 13, scope: !92)
!96 = !DILocation(line: 61, column: 6, scope: !92)
!97 = !DILocation(line: 62, column: 8, scope: !98)
!98 = distinct !DILexicalBlock(scope: !38, file: !3, line: 62, column: 5)
!99 = !DILocation(line: 62, column: 5, scope: !38)
!100 = !DILocation(line: 64, column: 8, scope: !101)
!101 = distinct !DILexicalBlock(scope: !38, file: !3, line: 64, column: 5)
!102 = !DILocation(line: 64, column: 18, scope: !101)
!103 = !DILocation(line: 64, column: 12, scope: !101)
!104 = !DILocation(line: 68, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !38, file: !3, line: 68, column: 5)
!106 = !DILocation(line: 68, column: 5, scope: !38)
!107 = !DILocation(line: 69, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 69, column: 9)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 68, column: 22)
!110 = !DILocation(line: 69, column: 9, scope: !109)
!111 = !DILocation(line: 70, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !3, line: 69, column: 26)
!113 = !{!114, !114, i64 0}
!114 = !{!"float", !115, i64 0}
!115 = !{!"omnipotent char", !116, i64 0}
!116 = !{!"Simple C/C++ TBAA"}
!117 = !DILocation(line: 70, column: 25, scope: !112)
!118 = !DILocation(line: 49, column: 13, scope: !38)
!119 = !DILocation(line: 70, column: 42, scope: !112)
!120 = !DILocation(line: 70, column: 46, scope: !112)
!121 = !DILocation(line: 71, column: 6, scope: !112)
!122 = !DILocation(line: 72, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !108, file: !3, line: 71, column: 13)
!124 = !DILocation(line: 72, column: 17, scope: !123)
!125 = !DILocation(line: 72, column: 16, scope: !123)
!126 = !DILocation(line: 72, column: 8, scope: !123)
!127 = !DILocation(line: 73, column: 8, scope: !123)
!128 = !DILocation(line: 49, column: 18, scope: !38)
!129 = !DILocation(line: 74, column: 13, scope: !123)
!130 = !DILocation(line: 75, column: 9, scope: !123)
!131 = !DILocation(line: 0, scope: !123)
!132 = !DILocation(line: 49, column: 10, scope: !38)
!133 = !DILocation(line: 77, column: 14, scope: !109)
!134 = !DILocation(line: 78, column: 2, scope: !109)
!135 = !DILocation(line: 79, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !105, file: !3, line: 79, column: 10)
!137 = !DILocation(line: 80, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 80, column: 9)
!139 = distinct !DILexicalBlock(scope: !136, file: !3, line: 79, column: 28)
!140 = !DILocation(line: 80, column: 15, scope: !138)
!141 = !DILocation(line: 79, column: 10, scope: !105)
!142 = !DILocation(line: 80, column: 31, scope: !138)
!143 = !DILocation(line: 80, column: 21, scope: !138)
!144 = !DILocation(line: 0, scope: !38)
!145 = !DILocation(line: 84, column: 8, scope: !38)
!146 = !DILocation(line: 85, column: 36, scope: !38)
!147 = !DILocation(line: 85, column: 34, scope: !38)
!148 = !DILocation(line: 85, column: 30, scope: !38)
!149 = !DILocation(line: 85, column: 28, scope: !38)
!150 = !DILocation(line: 85, column: 24, scope: !38)
!151 = !DILocation(line: 85, column: 22, scope: !38)
!152 = !DILocation(line: 85, column: 18, scope: !38)
!153 = !DILocation(line: 85, column: 16, scope: !38)
!154 = !DILocation(line: 85, column: 12, scope: !38)
!155 = !DILocation(line: 85, column: 9, scope: !38)
!156 = !DILocation(line: 49, column: 16, scope: !38)
!157 = !DILocation(line: 86, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !38, file: !3, line: 86, column: 5)
!159 = !DILocation(line: 0, scope: !158)
!160 = !DILocation(line: 86, column: 5, scope: !38)
!161 = !DILocation(line: 86, column: 32, scope: !158)
!162 = !DILocation(line: 86, column: 29, scope: !158)
!163 = !DILocation(line: 86, column: 22, scope: !158)
!164 = !DILocation(line: 86, column: 12, scope: !158)
!165 = !DILocation(line: 87, column: 39, scope: !158)
!166 = !DILocation(line: 87, column: 27, scope: !158)
!167 = !DILocation(line: 87, column: 21, scope: !158)
!168 = !DILocation(line: 87, column: 16, scope: !158)
!169 = !DILocation(line: 49, column: 8, scope: !38)
!170 = !DILocation(line: 88, column: 7, scope: !67)
!171 = !DILocation(line: 0, scope: !75)
!172 = !DILocation(line: 0, scope: !77)
!173 = !DILocation(line: 88, column: 5, scope: !38)
!174 = !DILocation(line: 89, column: 17, scope: !66)
!175 = !DILocation(line: 91, column: 6, scope: !71)
!176 = !DILocation(line: 95, column: 6, scope: !75)
!177 = !DILocation(line: 94, column: 17, scope: !73)
!178 = !DILocation(line: 96, column: 6, scope: !77)
!179 = !DILocation(line: 97, column: 14, scope: !73)
!180 = !DILocation(line: 0, scope: !138)
!181 = !DILocation(line: 99, column: 1, scope: !38)
