; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_atan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_atan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@atanhi = internal unnamed_addr constant [4 x float] [float 0x3FDDAC6700000000, float 0x3FE921FB40000000, float 0x3FEF730BC0000000, float 0x3FF921FB40000000], align 16, !dbg !0
@atanlo = internal unnamed_addr constant [4 x float] [float 0x3E3586ED20000000, float 0x3E64442D00000000, float 0x3E6281F680000000, float 0x3E74442D00000000], align 16, !dbg !13

; Function Attrs: noredzone nounwind
define dso_local float @atanf(float) local_unnamed_addr #0 !dbg !27 {
  %2 = bitcast float %0 to i32, !dbg !53
  %3 = and i32 %2, 2147483647, !dbg !55
  %4 = icmp ugt i32 %3, 1350565887, !dbg !57
  br i1 %4, label %5, label %12, !dbg !59

; <label>:5:                                      ; preds = %1
  %6 = icmp ugt i32 %3, 2139095040, !dbg !60
  br i1 %6, label %7, label %9, !dbg !63

; <label>:7:                                      ; preds = %5
  %8 = fadd float %0, %0, !dbg !64
  br label %86, !dbg !65

; <label>:9:                                      ; preds = %5
  %10 = icmp sgt i32 %2, 0, !dbg !66
  %11 = select i1 %10, float 0x3FF921FB60000000, float 0xBFF921FB60000000, !dbg !68
  br label %86, !dbg !68

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %3, 1054867456, !dbg !69
  br i1 %13, label %14, label %19, !dbg !71

; <label>:14:                                     ; preds = %12
  %15 = icmp ult i32 %3, 822083584, !dbg !72
  %16 = fadd float %0, 0x46293E5940000000, !dbg !75
  %17 = fcmp ogt float %16, 1.000000e+00, !dbg !78
  %18 = and i1 %17, %15, !dbg !79
  br i1 %18, label %86, label %42, !dbg !79

; <label>:19:                                     ; preds = %12
  %20 = tail call float @fabsf(float %0) #3, !dbg !80
  %21 = icmp ult i32 %3, 1066926080, !dbg !82
  br i1 %21, label %22, label %33, !dbg !84

; <label>:22:                                     ; preds = %19
  %23 = icmp ult i32 %3, 1060110336, !dbg !85
  br i1 %23, label %24, label %29, !dbg !88

; <label>:24:                                     ; preds = %22
  %25 = fmul float %20, 2.000000e+00, !dbg !90
  %26 = fadd float %25, -1.000000e+00, !dbg !92
  %27 = fadd float %20, 2.000000e+00, !dbg !93
  %28 = fdiv float %26, %27, !dbg !94
  br label %42, !dbg !95

; <label>:29:                                     ; preds = %22
  %30 = fadd float %20, -1.000000e+00, !dbg !96
  %31 = fadd float %20, 1.000000e+00, !dbg !98
  %32 = fdiv float %30, %31, !dbg !99
  br label %42

; <label>:33:                                     ; preds = %19
  %34 = icmp ult i32 %3, 1075576832, !dbg !100
  br i1 %34, label %35, label %40, !dbg !103

; <label>:35:                                     ; preds = %33
  %36 = fadd float %20, -1.500000e+00, !dbg !104
  %37 = fmul float %20, 1.500000e+00, !dbg !106
  %38 = fadd float %37, 1.000000e+00, !dbg !107
  %39 = fdiv float %36, %38, !dbg !108
  br label %42, !dbg !109

; <label>:40:                                     ; preds = %33
  %41 = fdiv float -1.000000e+00, %20, !dbg !110
  br label %42

; <label>:42:                                     ; preds = %14, %29, %24, %40, %35
  %43 = phi float [ %28, %24 ], [ %32, %29 ], [ %39, %35 ], [ %41, %40 ], [ %0, %14 ]
  %44 = phi i32 [ 0, %24 ], [ 1, %29 ], [ 2, %35 ], [ 3, %40 ], [ -1, %14 ], !dbg !112
  %45 = fmul float %43, %43, !dbg !113
  %46 = fmul float %45, %45, !dbg !115
  %47 = fmul float %46, 0x3F90AD3AE0000000, !dbg !117
  %48 = fadd float %47, 0x3FA97B4B20000000, !dbg !118
  %49 = fmul float %46, %48, !dbg !119
  %50 = fadd float %49, 0x3FB10D66A0000000, !dbg !120
  %51 = fmul float %46, %50, !dbg !121
  %52 = fadd float %51, 0x3FB745CDC0000000, !dbg !122
  %53 = fmul float %46, %52, !dbg !123
  %54 = fadd float %53, 0x3FC24924A0000000, !dbg !124
  %55 = fmul float %46, %54, !dbg !125
  %56 = fadd float %55, 0x3FD5555560000000, !dbg !126
  %57 = fmul float %45, %56, !dbg !127
  %58 = fmul float %46, 0x3FA2B44420000000, !dbg !129
  %59 = fsub float 0xBFADDE2D60000000, %58, !dbg !129
  %60 = fmul float %46, %59, !dbg !130
  %61 = fadd float %60, 0xBFB3B0F2A0000000, !dbg !131
  %62 = fmul float %46, %61, !dbg !132
  %63 = fadd float %62, 0xBFBC71C700000000, !dbg !133
  %64 = fmul float %46, %63, !dbg !134
  %65 = fadd float %64, 0xBFC99999A0000000, !dbg !135
  %66 = fmul float %46, %65, !dbg !136
  %67 = icmp slt i32 %44, 0, !dbg !138
  br i1 %67, label %68, label %72, !dbg !140

; <label>:68:                                     ; preds = %42
  %69 = fadd float %66, %57, !dbg !141
  %70 = fmul float %43, %69, !dbg !142
  %71 = fsub float %43, %70, !dbg !143
  br label %86, !dbg !144

; <label>:72:                                     ; preds = %42
  %73 = sext i32 %44 to i64, !dbg !145
  %74 = getelementptr inbounds [4 x float], [4 x float]* @atanhi, i64 0, i64 %73, !dbg !145
  %75 = load float, float* %74, align 4, !dbg !145, !tbaa !147
  %76 = fadd float %66, %57, !dbg !151
  %77 = fmul float %43, %76, !dbg !152
  %78 = getelementptr inbounds [4 x float], [4 x float]* @atanlo, i64 0, i64 %73, !dbg !153
  %79 = load float, float* %78, align 4, !dbg !153, !tbaa !147
  %80 = fsub float %77, %79, !dbg !154
  %81 = fsub float %80, %43, !dbg !155
  %82 = fsub float %75, %81, !dbg !156
  %83 = icmp slt i32 %2, 0, !dbg !157
  %84 = fsub float -0.000000e+00, %82, !dbg !158
  %85 = select i1 %83, float %84, float %82, !dbg !159
  br label %86, !dbg !160

; <label>:86:                                     ; preds = %14, %9, %72, %68, %7
  %87 = phi float [ %8, %7 ], [ %71, %68 ], [ %85, %72 ], [ %11, %9 ], [ %0, %14 ], !dbg !161
  ret float %87, !dbg !162
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
!68 = !DILocation(line: 82, column: 15, scope: !67)
!69 = !DILocation(line: 84, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !27, file: !3, line: 84, column: 8)
!71 = !DILocation(line: 84, column: 8, scope: !27)
!72 = !DILocation(line: 85, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 85, column: 10)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 84, column: 25)
!75 = !DILocation(line: 86, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 86, column: 6)
!77 = distinct !DILexicalBlock(scope: !73, file: !3, line: 85, column: 27)
!78 = !DILocation(line: 86, column: 12, scope: !76)
!79 = !DILocation(line: 85, column: 10, scope: !74)
!80 = !DILocation(line: 90, column: 6, scope: !81)
!81 = distinct !DILexicalBlock(scope: !70, file: !3, line: 89, column: 9)
!82 = !DILocation(line: 91, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !81, file: !3, line: 91, column: 6)
!84 = !DILocation(line: 91, column: 6, scope: !81)
!85 = !DILocation(line: 92, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 92, column: 10)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 91, column: 23)
!88 = !DILocation(line: 92, column: 10, scope: !87)
!89 = !DILocation(line: 75, column: 18, scope: !27)
!90 = !DILocation(line: 93, column: 26, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !3, line: 92, column: 27)
!92 = !DILocation(line: 93, column: 28, scope: !91)
!93 = !DILocation(line: 93, column: 45, scope: !91)
!94 = !DILocation(line: 93, column: 33, scope: !91)
!95 = !DILocation(line: 94, column: 6, scope: !91)
!96 = !DILocation(line: 95, column: 18, scope: !97)
!97 = distinct !DILexicalBlock(scope: !86, file: !3, line: 94, column: 13)
!98 = !DILocation(line: 95, column: 26, scope: !97)
!99 = !DILocation(line: 95, column: 23, scope: !97)
!100 = !DILocation(line: 98, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 98, column: 10)
!102 = distinct !DILexicalBlock(scope: !83, file: !3, line: 97, column: 9)
!103 = !DILocation(line: 98, column: 10, scope: !102)
!104 = !DILocation(line: 99, column: 18, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 98, column: 27)
!106 = !DILocation(line: 99, column: 46, scope: !105)
!107 = !DILocation(line: 99, column: 35, scope: !105)
!108 = !DILocation(line: 99, column: 30, scope: !105)
!109 = !DILocation(line: 100, column: 6, scope: !105)
!110 = !DILocation(line: 101, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !101, file: !3, line: 100, column: 13)
!112 = !DILocation(line: 0, scope: !111)
!113 = !DILocation(line: 105, column: 7, scope: !27)
!114 = !DILocation(line: 74, column: 16, scope: !27)
!115 = !DILocation(line: 106, column: 7, scope: !27)
!116 = !DILocation(line: 74, column: 8, scope: !27)
!117 = !DILocation(line: 108, column: 53, scope: !27)
!118 = !DILocation(line: 108, column: 51, scope: !27)
!119 = !DILocation(line: 108, column: 44, scope: !27)
!120 = !DILocation(line: 108, column: 42, scope: !27)
!121 = !DILocation(line: 108, column: 35, scope: !27)
!122 = !DILocation(line: 108, column: 33, scope: !27)
!123 = !DILocation(line: 108, column: 26, scope: !27)
!124 = !DILocation(line: 108, column: 24, scope: !27)
!125 = !DILocation(line: 108, column: 17, scope: !27)
!126 = !DILocation(line: 108, column: 15, scope: !27)
!127 = !DILocation(line: 108, column: 8, scope: !27)
!128 = !DILocation(line: 74, column: 10, scope: !27)
!129 = !DILocation(line: 109, column: 44, scope: !27)
!130 = !DILocation(line: 109, column: 35, scope: !27)
!131 = !DILocation(line: 109, column: 33, scope: !27)
!132 = !DILocation(line: 109, column: 26, scope: !27)
!133 = !DILocation(line: 109, column: 24, scope: !27)
!134 = !DILocation(line: 109, column: 17, scope: !27)
!135 = !DILocation(line: 109, column: 15, scope: !27)
!136 = !DILocation(line: 109, column: 8, scope: !27)
!137 = !DILocation(line: 74, column: 13, scope: !27)
!138 = !DILocation(line: 110, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !27, file: !3, line: 110, column: 6)
!140 = !DILocation(line: 110, column: 6, scope: !27)
!141 = !DILocation(line: 110, column: 28, scope: !139)
!142 = !DILocation(line: 110, column: 24, scope: !139)
!143 = !DILocation(line: 110, column: 21, scope: !139)
!144 = !DILocation(line: 110, column: 12, scope: !139)
!145 = !DILocation(line: 112, column: 10, scope: !146)
!146 = distinct !DILexicalBlock(scope: !139, file: !3, line: 111, column: 7)
!147 = !{!148, !148, i64 0}
!148 = !{!"float", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !DILocation(line: 112, column: 30, scope: !146)
!152 = !DILocation(line: 112, column: 26, scope: !146)
!153 = !DILocation(line: 112, column: 37, scope: !146)
!154 = !DILocation(line: 112, column: 35, scope: !146)
!155 = !DILocation(line: 112, column: 49, scope: !146)
!156 = !DILocation(line: 112, column: 21, scope: !146)
!157 = !DILocation(line: 113, column: 16, scope: !146)
!158 = !DILocation(line: 113, column: 21, scope: !146)
!159 = !DILocation(line: 113, column: 13, scope: !146)
!160 = !DILocation(line: 113, column: 6, scope: !146)
!161 = !DILocation(line: 0, scope: !146)
!162 = !DILocation(line: 115, column: 1, scope: !27)
