; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #0 !dbg !14 {
  %2 = bitcast float %0 to i32, !dbg !44
  %3 = and i32 %2, 2147483647, !dbg !46
  %4 = icmp ult i32 %3, 2139095040, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %4, label %8, label %5, !dbg !50

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !51
  %7 = fadd float %6, %0, !dbg !52
  br label %76, !dbg !53

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %3, 0, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %9, label %76, label %10, !dbg !56

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i32 %2, 0, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %11, label %12, label %15, !dbg !59

; <label>:12:                                     ; preds = %10
  %13 = fsub float %0, %0, !dbg !60
  %14 = fdiv float %13, %13, !dbg !61
  br label %76, !dbg !62

; <label>:15:                                     ; preds = %10
  %16 = lshr i32 %2, 23
  %17 = icmp ult i32 %3, 8388608, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %17, label %18, label %33, !dbg !66

; <label>:18:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  %19 = and i32 %2, 8388608, !dbg !71
  %20 = icmp eq i32 %19, 0, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %20, label %21, label %28, !dbg !74

; <label>:21:                                     ; preds = %18, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %24, %21 ], [ %2, %18 ]
  %24 = shl i32 %23, 1, !dbg !75
  %25 = add nuw nsw i32 %22, 1, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  %26 = and i32 %23, 4194304, !dbg !71
  %27 = icmp eq i32 %26, 0, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %27, label %21, label %28, !dbg !74, !llvm.loop !78

; <label>:28:                                     ; preds = %21, %18
  %29 = phi i32 [ %2, %18 ], [ %24, %21 ], !dbg !80
  %30 = phi i32 [ 0, %18 ], [ %25, %21 ], !dbg !80
  %31 = add nuw nsw i32 %16, 1, !dbg !81
  %32 = sub i32 %31, %30, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %33, !dbg !83

; <label>:33:                                     ; preds = %28, %15
  %34 = phi i32 [ %29, %28 ], [ %2, %15 ], !dbg !44
  %35 = phi i32 [ %32, %28 ], [ %16, %15 ], !dbg !84
  %36 = add nsw i32 %35, -127, !dbg !85
  %37 = and i32 %34, 8388607, !dbg !86
  %38 = or i32 %37, 8388608, !dbg !87
  %39 = and i32 %36, 1, !dbg !88
  %40 = icmp eq i32 %39, 0, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br i1 %40, label %43, label %41, !dbg !90

; <label>:41:                                     ; preds = %33
  %42 = shl nuw nsw i32 %38, 1, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %43, !dbg !92

; <label>:43:                                     ; preds = %33, %41
  %44 = phi i32 [ %42, %41 ], [ %38, %33 ], !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %45, !dbg !96

; <label>:45:                                     ; preds = %86, %43
  %46 = phi i32 [ %44, %43 ], [ %87, %86 ]
  %47 = phi i32 [ 16777216, %43 ], [ %90, %86 ]
  %48 = phi i32 [ 0, %43 ], [ %89, %86 ]
  %49 = phi i32 [ 0, %43 ], [ %88, %86 ]
  %50 = shl nsw i32 %46, 1, !dbg !97
  %51 = add i32 %47, %49, !dbg !99
  %52 = icmp slt i32 %50, %51, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %52, label %57, label %53, !dbg !103

; <label>:53:                                     ; preds = %45
  %54 = add i32 %51, %47, !dbg !104
  %55 = sub nsw i32 %50, %51, !dbg !106
  %56 = add i32 %47, %48, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %57, !dbg !108

; <label>:57:                                     ; preds = %45, %53
  %58 = phi i32 [ %55, %53 ], [ %50, %45 ], !dbg !84
  %59 = phi i32 [ %54, %53 ], [ %49, %45 ], !dbg !84
  %60 = phi i32 [ %56, %53 ], [ %48, %45 ], !dbg !84
  %61 = lshr i32 %47, 1, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  %62 = icmp eq i32 %61, 0, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %62, label %63, label %78, !dbg !96, !llvm.loop !111

; <label>:63:                                     ; preds = %57
  %64 = lshr i32 %36, 1, !dbg !113
  %65 = icmp eq i32 %58, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %65, label %69, label %66, !dbg !116

; <label>:66:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  %67 = and i32 %60, 1, !dbg !123
  %68 = add nsw i32 %67, %60, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %69

; <label>:69:                                     ; preds = %63, %66
  %70 = phi i32 [ %68, %66 ], [ %60, %63 ], !dbg !84
  %71 = ashr i32 %70, 1, !dbg !126
  %72 = shl i32 %64, 23, !dbg !127
  %73 = add i32 %72, 1056964608, !dbg !128
  %74 = add i32 %73, %71, !dbg !129
  %75 = bitcast i32 %74 to float, !dbg !130
  br label %76, !dbg !131

; <label>:76:                                     ; preds = %8, %69, %12, %5
  %77 = phi float [ %14, %12 ], [ %75, %69 ], [ %7, %5 ], [ %0, %8 ], !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  ret float %77, !dbg !133

; <label>:78:                                     ; preds = %57
  %79 = shl nsw i32 %58, 1, !dbg !97
  %80 = add i32 %61, %59, !dbg !99
  %81 = icmp slt i32 %79, %80, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %81, label %86, label %82, !dbg !103

; <label>:82:                                     ; preds = %78
  %83 = add i32 %80, %61, !dbg !104
  %84 = sub nsw i32 %79, %80, !dbg !106
  %85 = add i32 %61, %60, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %86, !dbg !108

; <label>:86:                                     ; preds = %82, %78
  %87 = phi i32 [ %84, %82 ], [ %79, %78 ], !dbg !84
  %88 = phi i32 [ %83, %82 ], [ %59, %78 ], !dbg !84
  %89 = phi i32 [ %85, %82 ], [ %60, %78 ], !dbg !84
  %90 = lshr i32 %47, 2, !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %45
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "__ieee754_sqrtf", scope: !1, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7, !7}
!17 = !{!18, !19, !20, !24, !25, !28, !29, !30, !31, !32, !33, !41}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !1, line: 25, type: !7)
!19 = !DILocalVariable(name: "z", scope: !14, file: !1, line: 31, type: !7)
!20 = !DILocalVariable(name: "r", scope: !14, file: !1, line: 32, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "hx", scope: !14, file: !1, line: 32, type: !21)
!25 = !DILocalVariable(name: "ix", scope: !14, file: !1, line: 33, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "s", scope: !14, file: !1, line: 33, type: !26)
!29 = !DILocalVariable(name: "q", scope: !14, file: !1, line: 33, type: !26)
!30 = !DILocalVariable(name: "m", scope: !14, file: !1, line: 33, type: !26)
!31 = !DILocalVariable(name: "t", scope: !14, file: !1, line: 33, type: !26)
!32 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 33, type: !26)
!33 = !DILocalVariable(name: "gf_u", scope: !34, file: !1, line: 35, type: !35)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 35, column: 2)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !36, line: 347, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !36, line: 343, size: 32, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !36, line: 345, baseType: !7, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !37, file: !36, line: 346, baseType: !21, size: 32)
!41 = !DILocalVariable(name: "sf_u", scope: !42, file: !1, line: 87, type: !35)
!42 = distinct !DILexicalBlock(scope: !14, file: !1, line: 87, column: 2)
!43 = !DILocation(line: 25, column: 30, scope: !14)
!44 = !DILocation(line: 35, column: 2, scope: !34)
!45 = !DILocation(line: 33, column: 12, scope: !14)
!46 = !DILocation(line: 36, column: 9, scope: !14)
!47 = !DILocation(line: 32, column: 15, scope: !14)
!48 = !DILocation(line: 39, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !14, file: !1, line: 39, column: 5)
!50 = !DILocation(line: 39, column: 5, scope: !14)
!51 = !DILocation(line: 40, column: 14, scope: !49)
!52 = !DILocation(line: 40, column: 16, scope: !49)
!53 = !DILocation(line: 40, column: 6, scope: !49)
!54 = !DILocation(line: 43, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !14, file: !1, line: 43, column: 5)
!56 = !DILocation(line: 43, column: 5, scope: !14)
!57 = !DILocation(line: 44, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !14, file: !1, line: 44, column: 5)
!59 = !DILocation(line: 44, column: 5, scope: !14)
!60 = !DILocation(line: 44, column: 20, scope: !58)
!61 = !DILocation(line: 44, column: 23, scope: !58)
!62 = !DILocation(line: 44, column: 11, scope: !58)
!63 = !DILocation(line: 33, column: 19, scope: !14)
!64 = !DILocation(line: 48, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !14, file: !1, line: 48, column: 5)
!66 = !DILocation(line: 48, column: 5, scope: !14)
!67 = !DILocation(line: 33, column: 23, scope: !14)
!68 = !DILocation(line: 49, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 49, column: 6)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 48, column: 33)
!71 = !DILocation(line: 49, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 49, column: 6)
!73 = !DILocation(line: 49, column: 30, scope: !72)
!74 = !DILocation(line: 49, column: 6, scope: !69)
!75 = !DILocation(line: 49, column: 41, scope: !72)
!76 = !DILocation(line: 49, column: 35, scope: !72)
!77 = !DILocation(line: 49, column: 6, scope: !72)
!78 = distinct !{!78, !74, !79}
!79 = !DILocation(line: 49, column: 44, scope: !69)
!80 = !DILocation(line: 0, scope: !72)
!81 = !DILocation(line: 50, column: 12, scope: !70)
!82 = !DILocation(line: 50, column: 8, scope: !70)
!83 = !DILocation(line: 51, column: 2, scope: !70)
!84 = !DILocation(line: 0, scope: !14)
!85 = !DILocation(line: 52, column: 4, scope: !14)
!86 = !DILocation(line: 53, column: 10, scope: !14)
!87 = !DILocation(line: 53, column: 23, scope: !14)
!88 = !DILocation(line: 54, column: 6, scope: !89)
!89 = distinct !DILexicalBlock(scope: !14, file: !1, line: 54, column: 5)
!90 = !DILocation(line: 54, column: 5, scope: !14)
!91 = !DILocation(line: 55, column: 9, scope: !89)
!92 = !DILocation(line: 55, column: 6, scope: !89)
!93 = !DILocation(line: 33, column: 15, scope: !14)
!94 = !DILocation(line: 33, column: 17, scope: !14)
!95 = !DILocation(line: 32, column: 13, scope: !14)
!96 = !DILocation(line: 63, column: 2, scope: !14)
!97 = !DILocation(line: 0, scope: !98)
!98 = distinct !DILexicalBlock(scope: !14, file: !1, line: 63, column: 14)
!99 = !DILocation(line: 64, column: 11, scope: !98)
!100 = !DILocation(line: 33, column: 21, scope: !14)
!101 = !DILocation(line: 65, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 65, column: 9)
!103 = !DILocation(line: 65, column: 9, scope: !98)
!104 = !DILocation(line: 66, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 65, column: 16)
!106 = !DILocation(line: 67, column: 7, scope: !105)
!107 = !DILocation(line: 68, column: 7, scope: !105)
!108 = !DILocation(line: 69, column: 6, scope: !105)
!109 = !DILocation(line: 71, column: 7, scope: !98)
!110 = !DILocation(line: 63, column: 9, scope: !14)
!111 = distinct !{!111, !96, !112}
!112 = !DILocation(line: 72, column: 2, scope: !14)
!113 = !DILocation(line: 56, column: 4, scope: !14)
!114 = !DILocation(line: 75, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !14, file: !1, line: 75, column: 5)
!116 = !DILocation(line: 75, column: 5, scope: !14)
!117 = !DILocation(line: 31, column: 8, scope: !14)
!118 = !DILocation(line: 77, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 75, column: 12)
!120 = !DILocation(line: 79, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !1, line: 77, column: 18)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 77, column: 10)
!123 = !DILocation(line: 82, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 79, column: 7)
!125 = !DILocation(line: 82, column: 9, scope: !124)
!126 = !DILocation(line: 85, column: 9, scope: !14)
!127 = !DILocation(line: 86, column: 11, scope: !14)
!128 = !DILocation(line: 85, column: 13, scope: !14)
!129 = !DILocation(line: 86, column: 5, scope: !14)
!130 = !DILocation(line: 87, column: 2, scope: !42)
!131 = !DILocation(line: 88, column: 2, scope: !14)
!132 = !DILocation(line: 0, scope: !49)
!133 = !DILocation(line: 89, column: 1, scope: !14)
