; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_atan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_atan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@atanhi = internal unnamed_addr constant [4 x float] [float 0x3FDDAC6700000000, float 0x3FE921FB40000000, float 0x3FEF730BC0000000, float 0x3FF921FB40000000], align 16, !dbg !0
@atanlo = internal unnamed_addr constant [4 x float] [float 0x3E3586ED20000000, float 0x3E64442D00000000, float 0x3E6281F680000000, float 0x3E74442D00000000], align 16, !dbg !13
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @atanf(float) local_unnamed_addr #0 !dbg !27 {
  %2 = bitcast float %0 to i32, !dbg !53
  %3 = and i32 %2, 2147483647, !dbg !55
  %4 = icmp ugt i32 %3, 1350565887, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %4, label %5, label %12, !dbg !59

; <label>:5:                                      ; preds = %1
  %6 = icmp ugt i32 %3, 2139095040, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br i1 %6, label %7, label %9, !dbg !63

; <label>:7:                                      ; preds = %5
  %8 = fadd float %0, %0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %87, !dbg !65

; <label>:9:                                      ; preds = %5
  %10 = icmp sgt i32 %2, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  %11 = select i1 %10, float 0x3FF921FB60000000, float 0xBFF921FB60000000, !dbg !70
  br label %87, !dbg !70

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %3, 1054867456, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %13, label %14, label %20, !dbg !73

; <label>:14:                                     ; preds = %12
  %15 = icmp ult i32 %3, 822083584, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %15, label %16, label %43, !dbg !77

; <label>:16:                                     ; preds = %14
  %17 = fadd float %0, 0x46293E5940000000, !dbg !78
  %18 = fcmp ogt float %17, 1.000000e+00, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %18, label %19, label %43, !dbg !82

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %87, !dbg !83

; <label>:20:                                     ; preds = %12
  %21 = tail call float @fabsf(float %0) #3, !dbg !84
  %22 = icmp ult i32 %3, 1066926080, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %22, label %23, label %34, !dbg !88

; <label>:23:                                     ; preds = %20
  %24 = icmp ult i32 %3, 1060110336, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %24, label %25, label %30, !dbg !92

; <label>:25:                                     ; preds = %23
  %26 = fmul float %21, 2.000000e+00, !dbg !94
  %27 = fadd float %26, -1.000000e+00, !dbg !96
  %28 = fadd float %21, 2.000000e+00, !dbg !97
  %29 = fdiv float %27, %28, !dbg !98
  br label %43, !dbg !99

; <label>:30:                                     ; preds = %23
  %31 = fadd float %21, -1.000000e+00, !dbg !100
  %32 = fadd float %21, 1.000000e+00, !dbg !102
  %33 = fdiv float %31, %32, !dbg !103
  br label %43

; <label>:34:                                     ; preds = %20
  %35 = icmp ult i32 %3, 1075576832, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %35, label %36, label %41, !dbg !107

; <label>:36:                                     ; preds = %34
  %37 = fadd float %21, -1.500000e+00, !dbg !108
  %38 = fmul float %21, 1.500000e+00, !dbg !110
  %39 = fadd float %38, 1.000000e+00, !dbg !111
  %40 = fdiv float %37, %39, !dbg !112
  br label %43, !dbg !113

; <label>:41:                                     ; preds = %34
  %42 = fdiv float -1.000000e+00, %21, !dbg !114
  br label %43

; <label>:43:                                     ; preds = %14, %16, %30, %25, %41, %36
  %44 = phi float [ %29, %25 ], [ %33, %30 ], [ %40, %36 ], [ %42, %41 ], [ %0, %16 ], [ %0, %14 ]
  %45 = phi i32 [ 0, %25 ], [ 1, %30 ], [ 2, %36 ], [ 3, %41 ], [ -1, %16 ], [ -1, %14 ], !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = fmul float %44, %44, !dbg !117
  %47 = fmul float %46, %46, !dbg !119
  %48 = fmul float %47, 0x3F90AD3AE0000000, !dbg !121
  %49 = fadd float %48, 0x3FA97B4B20000000, !dbg !122
  %50 = fmul float %47, %49, !dbg !123
  %51 = fadd float %50, 0x3FB10D66A0000000, !dbg !124
  %52 = fmul float %47, %51, !dbg !125
  %53 = fadd float %52, 0x3FB745CDC0000000, !dbg !126
  %54 = fmul float %47, %53, !dbg !127
  %55 = fadd float %54, 0x3FC24924A0000000, !dbg !128
  %56 = fmul float %47, %55, !dbg !129
  %57 = fadd float %56, 0x3FD5555560000000, !dbg !130
  %58 = fmul float %46, %57, !dbg !131
  %59 = fmul float %47, 0x3FA2B44420000000, !dbg !133
  %60 = fsub float 0xBFADDE2D60000000, %59, !dbg !133
  %61 = fmul float %47, %60, !dbg !134
  %62 = fadd float %61, 0xBFB3B0F2A0000000, !dbg !135
  %63 = fmul float %47, %62, !dbg !136
  %64 = fadd float %63, 0xBFBC71C700000000, !dbg !137
  %65 = fmul float %47, %64, !dbg !138
  %66 = fadd float %65, 0xBFC99999A0000000, !dbg !139
  %67 = fmul float %47, %66, !dbg !140
  %68 = icmp slt i32 %45, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %68, label %69, label %73, !dbg !144

; <label>:69:                                     ; preds = %43
  %70 = fadd float %67, %58, !dbg !145
  %71 = fmul float %44, %70, !dbg !146
  %72 = fsub float %44, %71, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br label %87, !dbg !148

; <label>:73:                                     ; preds = %43
  %74 = sext i32 %45 to i64, !dbg !149
  %75 = getelementptr inbounds [4 x float], [4 x float]* @atanhi, i64 0, i64 %74, !dbg !149
  %76 = load float, float* %75, align 4, !dbg !149, !tbaa !151
  %77 = fadd float %67, %58, !dbg !155
  %78 = fmul float %44, %77, !dbg !156
  %79 = getelementptr inbounds [4 x float], [4 x float]* @atanlo, i64 0, i64 %74, !dbg !157
  %80 = load float, float* %79, align 4, !dbg !157, !tbaa !151
  %81 = fsub float %78, %80, !dbg !158
  %82 = fsub float %81, %44, !dbg !159
  %83 = fsub float %76, %82, !dbg !160
  %84 = icmp slt i32 %2, 0, !dbg !161
  %85 = fsub float -0.000000e+00, %83, !dbg !162
  %86 = select i1 %84, float %85, float %83, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br label %87, !dbg !164

; <label>:87:                                     ; preds = %9, %73, %69, %19, %7
  %88 = phi float [ %8, %7 ], [ %0, %19 ], [ %72, %69 ], [ %86, %73 ], [ %11, %9 ], !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  ret float %88, !dbg !166
}

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "atanhi", scope: !2, file: !3, line: 20, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_atan.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!8, !11, !0, !13, !18}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 65, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 64, type: !10, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "atanlo", scope: !2, file: !3, line: 31, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 4)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "aT", scope: !2, file: !3, line: 42, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 352, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 11)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "atanf", scope: !3, file: !3, line: 68, type: !28, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !30)
!28 = !DISubroutineType(types: !29)
!29 = !{!6, !6}
!30 = !{!31, !32, !33, !34, !35, !36, !40, !41, !42}
!31 = !DILocalVariable(name: "x", arg: 1, scope: !27, file: !3, line: 68, type: !6)
!32 = !DILocalVariable(name: "w", scope: !27, file: !3, line: 74, type: !6)
!33 = !DILocalVariable(name: "s1", scope: !27, file: !3, line: 74, type: !6)
!34 = !DILocalVariable(name: "s2", scope: !27, file: !3, line: 74, type: !6)
!35 = !DILocalVariable(name: "z", scope: !27, file: !3, line: 74, type: !6)
!36 = !DILocalVariable(name: "ix", scope: !27, file: !3, line: 75, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !38, line: 77, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DILocalVariable(name: "hx", scope: !27, file: !3, line: 75, type: !37)
!41 = !DILocalVariable(name: "id", scope: !27, file: !3, line: 75, type: !37)
!42 = !DILocalVariable(name: "gf_u", scope: !43, file: !3, line: 77, type: !44)
!43 = distinct !DILexicalBlock(scope: !27, file: !3, line: 77, column: 2)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !45, line: 347, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!46 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !45, line: 343, size: 32, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !46, file: !45, line: 345, baseType: !6, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !46, file: !45, line: 346, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !38, line: 79, baseType: !51)
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DILocation(line: 68, column: 20, scope: !27)
!53 = !DILocation(line: 77, column: 2, scope: !43)
!54 = !DILocation(line: 75, column: 15, scope: !27)
!55 = !DILocation(line: 78, column: 9, scope: !27)
!56 = !DILocation(line: 75, column: 12, scope: !27)
!57 = !DILocation(line: 79, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !27, file: !3, line: 79, column: 5)
!59 = !DILocation(line: 79, column: 5, scope: !27)
!60 = !DILocation(line: 80, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 80, column: 9)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 79, column: 21)
!63 = !DILocation(line: 80, column: 9, scope: !62)
!64 = !DILocation(line: 81, column: 11, scope: !61)
!65 = !DILocation(line: 81, column: 3, scope: !61)
!66 = !DILocation(line: 82, column: 11, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !3, line: 82, column: 9)
!68 = !DILocation(line: 82, column: 9, scope: !62)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocation(line: 82, column: 15, scope: !67)
!71 = !DILocation(line: 84, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !27, file: !3, line: 84, column: 8)
!73 = !DILocation(line: 84, column: 8, scope: !27)
!74 = !DILocation(line: 85, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 85, column: 10)
!76 = distinct !DILexicalBlock(scope: !72, file: !3, line: 84, column: 25)
!77 = !DILocation(line: 85, column: 10, scope: !76)
!78 = !DILocation(line: 86, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 86, column: 6)
!80 = distinct !DILexicalBlock(scope: !75, file: !3, line: 85, column: 27)
!81 = !DILocation(line: 86, column: 12, scope: !79)
!82 = !DILocation(line: 86, column: 6, scope: !80)
!83 = !DILocation(line: 86, column: 18, scope: !79)
!84 = !DILocation(line: 90, column: 6, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 89, column: 9)
!86 = !DILocation(line: 91, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !85, file: !3, line: 91, column: 6)
!88 = !DILocation(line: 91, column: 6, scope: !85)
!89 = !DILocation(line: 92, column: 13, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 92, column: 10)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 91, column: 23)
!92 = !DILocation(line: 92, column: 10, scope: !91)
!93 = !DILocation(line: 75, column: 18, scope: !27)
!94 = !DILocation(line: 93, column: 26, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !3, line: 92, column: 27)
!96 = !DILocation(line: 93, column: 28, scope: !95)
!97 = !DILocation(line: 93, column: 45, scope: !95)
!98 = !DILocation(line: 93, column: 33, scope: !95)
!99 = !DILocation(line: 94, column: 6, scope: !95)
!100 = !DILocation(line: 95, column: 18, scope: !101)
!101 = distinct !DILexicalBlock(scope: !90, file: !3, line: 94, column: 13)
!102 = !DILocation(line: 95, column: 26, scope: !101)
!103 = !DILocation(line: 95, column: 23, scope: !101)
!104 = !DILocation(line: 98, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 98, column: 10)
!106 = distinct !DILexicalBlock(scope: !87, file: !3, line: 97, column: 9)
!107 = !DILocation(line: 98, column: 10, scope: !106)
!108 = !DILocation(line: 99, column: 18, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !3, line: 98, column: 27)
!110 = !DILocation(line: 99, column: 46, scope: !109)
!111 = !DILocation(line: 99, column: 35, scope: !109)
!112 = !DILocation(line: 99, column: 30, scope: !109)
!113 = !DILocation(line: 100, column: 6, scope: !109)
!114 = !DILocation(line: 101, column: 27, scope: !115)
!115 = distinct !DILexicalBlock(scope: !105, file: !3, line: 100, column: 13)
!116 = !DILocation(line: 0, scope: !115)
!117 = !DILocation(line: 105, column: 7, scope: !27)
!118 = !DILocation(line: 74, column: 16, scope: !27)
!119 = !DILocation(line: 106, column: 7, scope: !27)
!120 = !DILocation(line: 74, column: 8, scope: !27)
!121 = !DILocation(line: 108, column: 53, scope: !27)
!122 = !DILocation(line: 108, column: 51, scope: !27)
!123 = !DILocation(line: 108, column: 44, scope: !27)
!124 = !DILocation(line: 108, column: 42, scope: !27)
!125 = !DILocation(line: 108, column: 35, scope: !27)
!126 = !DILocation(line: 108, column: 33, scope: !27)
!127 = !DILocation(line: 108, column: 26, scope: !27)
!128 = !DILocation(line: 108, column: 24, scope: !27)
!129 = !DILocation(line: 108, column: 17, scope: !27)
!130 = !DILocation(line: 108, column: 15, scope: !27)
!131 = !DILocation(line: 108, column: 8, scope: !27)
!132 = !DILocation(line: 74, column: 10, scope: !27)
!133 = !DILocation(line: 109, column: 44, scope: !27)
!134 = !DILocation(line: 109, column: 35, scope: !27)
!135 = !DILocation(line: 109, column: 33, scope: !27)
!136 = !DILocation(line: 109, column: 26, scope: !27)
!137 = !DILocation(line: 109, column: 24, scope: !27)
!138 = !DILocation(line: 109, column: 17, scope: !27)
!139 = !DILocation(line: 109, column: 15, scope: !27)
!140 = !DILocation(line: 109, column: 8, scope: !27)
!141 = !DILocation(line: 74, column: 13, scope: !27)
!142 = !DILocation(line: 110, column: 8, scope: !143)
!143 = distinct !DILexicalBlock(scope: !27, file: !3, line: 110, column: 6)
!144 = !DILocation(line: 110, column: 6, scope: !27)
!145 = !DILocation(line: 110, column: 28, scope: !143)
!146 = !DILocation(line: 110, column: 24, scope: !143)
!147 = !DILocation(line: 110, column: 21, scope: !143)
!148 = !DILocation(line: 110, column: 12, scope: !143)
!149 = !DILocation(line: 112, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !3, line: 111, column: 7)
!151 = !{!152, !152, i64 0}
!152 = !{!"float", !153, i64 0}
!153 = !{!"omnipotent char", !154, i64 0}
!154 = !{!"Simple C/C++ TBAA"}
!155 = !DILocation(line: 112, column: 30, scope: !150)
!156 = !DILocation(line: 112, column: 26, scope: !150)
!157 = !DILocation(line: 112, column: 37, scope: !150)
!158 = !DILocation(line: 112, column: 35, scope: !150)
!159 = !DILocation(line: 112, column: 49, scope: !150)
!160 = !DILocation(line: 112, column: 21, scope: !150)
!161 = !DILocation(line: 113, column: 16, scope: !150)
!162 = !DILocation(line: 113, column: 21, scope: !150)
!163 = !DILocation(line: 113, column: 13, scope: !150)
!164 = !DILocation(line: 113, column: 6, scope: !150)
!165 = !DILocation(line: 0, scope: !150)
!166 = !DILocation(line: 115, column: 1, scope: !27)
