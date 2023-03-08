; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_atan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_atan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@atanhi = internal unnamed_addr constant [4 x double] [double 0x3FDDAC670561BB4F, double 0x3FE921FB54442D18, double 0x3FEF730BD281F69B, double 0x3FF921FB54442D18], align 16, !dbg !0
@atanlo = internal unnamed_addr constant [4 x double] [double 0x3C7A2B7F222F65E2, double 0x3C81A62633145C07, double 0x3C7007887AF0CBBD, double 0x3C91A62633145C07], align 16, !dbg !12
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @atan(double) local_unnamed_addr #0 !dbg !26 {
  %2 = bitcast double %0 to i64, !dbg !61
  %3 = lshr i64 %2, 32, !dbg !61
  %4 = trunc i64 %3 to i32, !dbg !61
  %5 = and i32 %4, 2147483647, !dbg !63
  %6 = icmp ugt i32 %5, 1141899263, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %6, label %7, label %19, !dbg !66

; <label>:7:                                      ; preds = %1
  %8 = icmp ugt i32 %5, 2146435072, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %8, label %14, label %9, !dbg !70

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %2 to i32, !dbg !67
  %11 = icmp eq i32 %5, 2146435072, !dbg !72
  %12 = icmp ne i32 %10, 0, !dbg !73
  %13 = and i1 %12, %11, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %13, label %14, label %16, !dbg !74

; <label>:14:                                     ; preds = %9, %7
  %15 = fadd double %0, %0, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br label %93, !dbg !76

; <label>:16:                                     ; preds = %9
  %17 = icmp sgt i32 %4, 0, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  %18 = select i1 %17, double 0x3FF921FB54442D18, double 0xBFF921FB54442D18, !dbg !81
  br label %93, !dbg !81

; <label>:19:                                     ; preds = %1
  %20 = icmp ult i32 %5, 1071382528, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %20, label %21, label %26, !dbg !84

; <label>:21:                                     ; preds = %19
  %22 = icmp ult i32 %5, 1042284544, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %22, label %23, label %49, !dbg !88

; <label>:23:                                     ; preds = %21
  %24 = fadd double %0, 1.000000e+300, !dbg !89
  %25 = fcmp ogt double %24, 1.000000e+00, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %25, label %93, label %49, !dbg !93

; <label>:26:                                     ; preds = %19
  %27 = tail call double @fabs(double %0) #3, !dbg !94
  %28 = icmp ult i32 %5, 1072889856, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %28, label %29, label %40, !dbg !98

; <label>:29:                                     ; preds = %26
  %30 = icmp ult i32 %5, 1072037888, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br i1 %30, label %31, label %36, !dbg !102

; <label>:31:                                     ; preds = %29
  %32 = fmul double %27, 2.000000e+00, !dbg !104
  %33 = fadd double %32, -1.000000e+00, !dbg !106
  %34 = fadd double %27, 2.000000e+00, !dbg !107
  %35 = fdiv double %33, %34, !dbg !108
  br label %49, !dbg !109

; <label>:36:                                     ; preds = %29
  %37 = fadd double %27, -1.000000e+00, !dbg !110
  %38 = fadd double %27, 1.000000e+00, !dbg !112
  %39 = fdiv double %37, %38, !dbg !113
  br label %49

; <label>:40:                                     ; preds = %26
  %41 = icmp ult i32 %5, 1073971200, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %41, label %42, label %47, !dbg !117

; <label>:42:                                     ; preds = %40
  %43 = fadd double %27, -1.500000e+00, !dbg !118
  %44 = fmul double %27, 1.500000e+00, !dbg !120
  %45 = fadd double %44, 1.000000e+00, !dbg !121
  %46 = fdiv double %43, %45, !dbg !122
  br label %49, !dbg !123

; <label>:47:                                     ; preds = %40
  %48 = fdiv double -1.000000e+00, %27, !dbg !124
  br label %49

; <label>:49:                                     ; preds = %21, %23, %36, %31, %47, %42
  %50 = phi i32 [ 0, %31 ], [ 1, %36 ], [ 2, %42 ], [ 3, %47 ], [ -1, %23 ], [ -1, %21 ], !dbg !126
  %51 = phi double [ %35, %31 ], [ %39, %36 ], [ %46, %42 ], [ %48, %47 ], [ %0, %23 ], [ %0, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %52 = fmul double %51, %51, !dbg !127
  %53 = fmul double %52, %52, !dbg !129
  %54 = fmul double %53, 0x3F90AD3AE322DA11, !dbg !131
  %55 = fadd double %54, 0x3FA97B4B24760DEB, !dbg !132
  %56 = fmul double %53, %55, !dbg !133
  %57 = fadd double %56, 0x3FB10D66A0D03D51, !dbg !134
  %58 = fmul double %53, %57, !dbg !135
  %59 = fadd double %58, 0x3FB745CDC54C206E, !dbg !136
  %60 = fmul double %53, %59, !dbg !137
  %61 = fadd double %60, 0x3FC24924920083FF, !dbg !138
  %62 = fmul double %53, %61, !dbg !139
  %63 = fadd double %62, 0x3FD555555555550D, !dbg !140
  %64 = fmul double %52, %63, !dbg !141
  %65 = fmul double %53, 0x3FA2B4442C6A6C2F, !dbg !143
  %66 = fsub double 0xBFADDE2D52DEFD9A, %65, !dbg !143
  %67 = fmul double %53, %66, !dbg !144
  %68 = fadd double %67, 0xBFB3B0F2AF749A6D, !dbg !145
  %69 = fmul double %53, %68, !dbg !146
  %70 = fadd double %69, 0xBFBC71C6FE231671, !dbg !147
  %71 = fmul double %53, %70, !dbg !148
  %72 = fadd double %71, 0xBFC999999998EBC4, !dbg !149
  %73 = fmul double %53, %72, !dbg !150
  %74 = icmp slt i32 %50, 0, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %74, label %75, label %79, !dbg !154

; <label>:75:                                     ; preds = %49
  %76 = fadd double %73, %64, !dbg !155
  %77 = fmul double %51, %76, !dbg !156
  %78 = fsub double %51, %77, !dbg !157
  br label %93, !dbg !158

; <label>:79:                                     ; preds = %49
  %80 = sext i32 %50 to i64, !dbg !159
  %81 = getelementptr inbounds [4 x double], [4 x double]* @atanhi, i64 0, i64 %80, !dbg !159
  %82 = load double, double* %81, align 8, !dbg !159, !tbaa !161
  %83 = fadd double %73, %64, !dbg !165
  %84 = fmul double %51, %83, !dbg !166
  %85 = getelementptr inbounds [4 x double], [4 x double]* @atanlo, i64 0, i64 %80, !dbg !167
  %86 = load double, double* %85, align 8, !dbg !167, !tbaa !161
  %87 = fsub double %84, %86, !dbg !168
  %88 = fsub double %87, %51, !dbg !169
  %89 = fsub double %82, %88, !dbg !170
  %90 = icmp slt i32 %4, 0, !dbg !171
  %91 = fsub double -0.000000e+00, %89, !dbg !172
  %92 = select i1 %90, double %91, double %89, !dbg !173
  br label %93, !dbg !174

; <label>:93:                                     ; preds = %23, %14, %16, %79, %75
  %94 = phi double [ %78, %75 ], [ %92, %79 ], [ %15, %14 ], [ %18, %16 ], [ %0, %23 ], !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  ret double %94, !dbg !176
}

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "atanhi", scope: !2, file: !3, line: 81, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_atan.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !10, !0, !12, !17}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "huge", scope: !2, file: !3, line: 126, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "one", scope: !2, file: !3, line: 125, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "atanlo", scope: !2, file: !3, line: 92, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "aT", scope: !2, file: !3, line: 103, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 704, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 11)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!26 = distinct !DISubprogram(name: "atan", scope: !3, file: !3, line: 129, type: !27, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!9, !9}
!29 = !{!30, !31, !32, !33, !34, !35, !39, !40, !41, !55, !58}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !26, file: !3, line: 129, type: !9)
!31 = !DILocalVariable(name: "w", scope: !26, file: !3, line: 135, type: !9)
!32 = !DILocalVariable(name: "s1", scope: !26, file: !3, line: 135, type: !9)
!33 = !DILocalVariable(name: "s2", scope: !26, file: !3, line: 135, type: !9)
!34 = !DILocalVariable(name: "z", scope: !26, file: !3, line: 135, type: !9)
!35 = !DILocalVariable(name: "ix", scope: !26, file: !3, line: 136, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !37, line: 77, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DILocalVariable(name: "hx", scope: !26, file: !3, line: 136, type: !36)
!40 = !DILocalVariable(name: "id", scope: !26, file: !3, line: 136, type: !36)
!41 = !DILocalVariable(name: "gh_u", scope: !42, file: !3, line: 138, type: !43)
!42 = distinct !DILexicalBlock(scope: !26, file: !3, line: 138, column: 2)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !44, line: 278, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !44, line: 270, size: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !45, file: !44, line: 272, baseType: !9, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !45, file: !44, line: 277, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !45, file: !44, line: 273, size: 64, elements: !50)
!50 = !{!51, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !49, file: !44, line: 275, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 79, baseType: !53)
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !49, file: !44, line: 276, baseType: !52, size: 32, offset: 32)
!55 = !DILocalVariable(name: "low", scope: !56, file: !3, line: 141, type: !52)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 140, column: 21)
!57 = distinct !DILexicalBlock(scope: !26, file: !3, line: 140, column: 5)
!58 = !DILocalVariable(name: "gl_u", scope: !59, file: !3, line: 142, type: !43)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 142, column: 6)
!60 = !DILocation(line: 129, column: 21, scope: !26)
!61 = !DILocation(line: 138, column: 2, scope: !42)
!62 = !DILocation(line: 136, column: 15, scope: !26)
!63 = !DILocation(line: 139, column: 9, scope: !26)
!64 = !DILocation(line: 136, column: 12, scope: !26)
!65 = !DILocation(line: 140, column: 7, scope: !57)
!66 = !DILocation(line: 140, column: 5, scope: !26)
!67 = !DILocation(line: 142, column: 6, scope: !59)
!68 = !DILocation(line: 143, column: 11, scope: !69)
!69 = distinct !DILexicalBlock(scope: !56, file: !3, line: 143, column: 9)
!70 = !DILocation(line: 143, column: 22, scope: !69)
!71 = !DILocation(line: 141, column: 17, scope: !56)
!72 = !DILocation(line: 144, column: 6, scope: !69)
!73 = !DILocation(line: 144, column: 24, scope: !69)
!74 = !DILocation(line: 144, column: 18, scope: !69)
!75 = !DILocation(line: 145, column: 11, scope: !69)
!76 = !DILocation(line: 145, column: 3, scope: !69)
!77 = !DILocation(line: 146, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !56, file: !3, line: 146, column: 9)
!79 = !DILocation(line: 146, column: 9, scope: !56)
!80 = !DILocation(line: 0, scope: !78)
!81 = !DILocation(line: 146, column: 15, scope: !78)
!82 = !DILocation(line: 148, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !26, file: !3, line: 148, column: 8)
!84 = !DILocation(line: 148, column: 8, scope: !26)
!85 = !DILocation(line: 149, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 149, column: 10)
!87 = distinct !DILexicalBlock(scope: !83, file: !3, line: 148, column: 25)
!88 = !DILocation(line: 149, column: 10, scope: !87)
!89 = !DILocation(line: 150, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 150, column: 6)
!91 = distinct !DILexicalBlock(scope: !86, file: !3, line: 149, column: 27)
!92 = !DILocation(line: 150, column: 12, scope: !90)
!93 = !DILocation(line: 150, column: 6, scope: !91)
!94 = !DILocation(line: 154, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !83, file: !3, line: 153, column: 9)
!96 = !DILocation(line: 155, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !3, line: 155, column: 6)
!98 = !DILocation(line: 155, column: 6, scope: !95)
!99 = !DILocation(line: 156, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 156, column: 10)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 155, column: 23)
!102 = !DILocation(line: 156, column: 10, scope: !101)
!103 = !DILocation(line: 136, column: 18, scope: !26)
!104 = !DILocation(line: 157, column: 19, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 156, column: 27)
!106 = !DILocation(line: 157, column: 21, scope: !105)
!107 = !DILocation(line: 157, column: 31, scope: !105)
!108 = !DILocation(line: 157, column: 26, scope: !105)
!109 = !DILocation(line: 158, column: 6, scope: !105)
!110 = !DILocation(line: 159, column: 18, scope: !111)
!111 = distinct !DILexicalBlock(scope: !100, file: !3, line: 158, column: 13)
!112 = !DILocation(line: 159, column: 26, scope: !111)
!113 = !DILocation(line: 159, column: 23, scope: !111)
!114 = !DILocation(line: 162, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 162, column: 10)
!116 = distinct !DILexicalBlock(scope: !97, file: !3, line: 161, column: 9)
!117 = !DILocation(line: 162, column: 10, scope: !116)
!118 = !DILocation(line: 163, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !3, line: 162, column: 27)
!120 = !DILocation(line: 163, column: 32, scope: !119)
!121 = !DILocation(line: 163, column: 28, scope: !119)
!122 = !DILocation(line: 163, column: 23, scope: !119)
!123 = !DILocation(line: 164, column: 6, scope: !119)
!124 = !DILocation(line: 165, column: 20, scope: !125)
!125 = distinct !DILexicalBlock(scope: !115, file: !3, line: 164, column: 13)
!126 = !DILocation(line: 0, scope: !125)
!127 = !DILocation(line: 169, column: 7, scope: !26)
!128 = !DILocation(line: 135, column: 17, scope: !26)
!129 = !DILocation(line: 170, column: 7, scope: !26)
!130 = !DILocation(line: 135, column: 9, scope: !26)
!131 = !DILocation(line: 172, column: 53, scope: !26)
!132 = !DILocation(line: 172, column: 51, scope: !26)
!133 = !DILocation(line: 172, column: 44, scope: !26)
!134 = !DILocation(line: 172, column: 42, scope: !26)
!135 = !DILocation(line: 172, column: 35, scope: !26)
!136 = !DILocation(line: 172, column: 33, scope: !26)
!137 = !DILocation(line: 172, column: 26, scope: !26)
!138 = !DILocation(line: 172, column: 24, scope: !26)
!139 = !DILocation(line: 172, column: 17, scope: !26)
!140 = !DILocation(line: 172, column: 15, scope: !26)
!141 = !DILocation(line: 172, column: 8, scope: !26)
!142 = !DILocation(line: 135, column: 11, scope: !26)
!143 = !DILocation(line: 173, column: 44, scope: !26)
!144 = !DILocation(line: 173, column: 35, scope: !26)
!145 = !DILocation(line: 173, column: 33, scope: !26)
!146 = !DILocation(line: 173, column: 26, scope: !26)
!147 = !DILocation(line: 173, column: 24, scope: !26)
!148 = !DILocation(line: 173, column: 17, scope: !26)
!149 = !DILocation(line: 173, column: 15, scope: !26)
!150 = !DILocation(line: 173, column: 8, scope: !26)
!151 = !DILocation(line: 135, column: 14, scope: !26)
!152 = !DILocation(line: 174, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !26, file: !3, line: 174, column: 6)
!154 = !DILocation(line: 174, column: 6, scope: !26)
!155 = !DILocation(line: 174, column: 28, scope: !153)
!156 = !DILocation(line: 174, column: 24, scope: !153)
!157 = !DILocation(line: 174, column: 21, scope: !153)
!158 = !DILocation(line: 174, column: 12, scope: !153)
!159 = !DILocation(line: 176, column: 10, scope: !160)
!160 = distinct !DILexicalBlock(scope: !153, file: !3, line: 175, column: 7)
!161 = !{!162, !162, i64 0}
!162 = !{!"double", !163, i64 0}
!163 = !{!"omnipotent char", !164, i64 0}
!164 = !{!"Simple C/C++ TBAA"}
!165 = !DILocation(line: 176, column: 30, scope: !160)
!166 = !DILocation(line: 176, column: 26, scope: !160)
!167 = !DILocation(line: 176, column: 37, scope: !160)
!168 = !DILocation(line: 176, column: 35, scope: !160)
!169 = !DILocation(line: 176, column: 49, scope: !160)
!170 = !DILocation(line: 176, column: 21, scope: !160)
!171 = !DILocation(line: 177, column: 16, scope: !160)
!172 = !DILocation(line: 177, column: 21, scope: !160)
!173 = !DILocation(line: 177, column: 13, scope: !160)
!174 = !DILocation(line: 177, column: 6, scope: !160)
!175 = !DILocation(line: 0, scope: !160)
!176 = !DILocation(line: 179, column: 1, scope: !26)
