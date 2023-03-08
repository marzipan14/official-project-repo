; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_cos.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_cos.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @__kernel_cosf(float, float) local_unnamed_addr #0 !dbg !26 {
  %3 = bitcast float %0 to i32, !dbg !58
  %4 = and i32 %3, 2147483647, !dbg !60
  %5 = icmp ult i32 %4, 838860800, !dbg !61
  %6 = fptosi float %0 to i32, !dbg !63
  %7 = icmp eq i32 %6, 0, !dbg !66
  %8 = and i1 %7, %5, !dbg !67
  br i1 %8, label %43, label %9, !dbg !67

; <label>:9:                                      ; preds = %2
  %10 = fmul float %0, %0, !dbg !68
  %11 = fmul float %10, 0x3DA8FAE9C0000000, !dbg !70
  %12 = fsub float 0x3E21EE9EC0000000, %11, !dbg !70
  %13 = fmul float %10, %12, !dbg !71
  %14 = fadd float %13, 0xBE927E4F80000000, !dbg !72
  %15 = fmul float %10, %14, !dbg !73
  %16 = fadd float %15, 0x3EFA01A020000000, !dbg !74
  %17 = fmul float %10, %16, !dbg !75
  %18 = fadd float %17, 0xBF56C16C20000000, !dbg !76
  %19 = fmul float %10, %18, !dbg !77
  %20 = fadd float %19, 0x3FA5555560000000, !dbg !78
  %21 = fmul float %10, %20, !dbg !79
  %22 = icmp ult i32 %4, 1050253722, !dbg !81
  br i1 %22, label %23, label %30, !dbg !82

; <label>:23:                                     ; preds = %9
  %24 = fmul float %10, 5.000000e-01, !dbg !83
  %25 = fmul float %10, %21, !dbg !84
  %26 = fmul float %0, %1, !dbg !85
  %27 = fsub float %25, %26, !dbg !86
  %28 = fsub float %27, %24, !dbg !87
  %29 = fadd float %28, 1.000000e+00, !dbg !87
  br label %43, !dbg !88

; <label>:30:                                     ; preds = %9
  %31 = icmp ugt i32 %4, 1061683200, !dbg !89
  %32 = add nsw i32 %4, -16777216, !dbg !90
  %33 = bitcast i32 %32 to float, !dbg !90
  %34 = select i1 %31, float 2.812500e-01, float %33, !dbg !92
  %35 = fmul float %10, 5.000000e-01, !dbg !93
  %36 = fsub float %35, %34, !dbg !94
  %37 = fsub float 1.000000e+00, %34, !dbg !96
  %38 = fmul float %10, %21, !dbg !98
  %39 = fmul float %0, %1, !dbg !99
  %40 = fsub float %38, %39, !dbg !100
  %41 = fsub float %36, %40, !dbg !101
  %42 = fsub float %37, %41, !dbg !102
  br label %43, !dbg !103

; <label>:43:                                     ; preds = %2, %30, %23
  %44 = phi float [ %29, %23 ], [ %42, %30 ], [ 1.000000e+00, %2 ], !dbg !104
  ret float %44, !dbg !105
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !6)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_cos.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!7, !10, !12, !14, !16, !18, !20}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!8 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 23, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 1026206379, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "C1", scope: !0, file: !1, line: 24, type: !9, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 3132492641, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "C2", scope: !0, file: !1, line: 25, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 936381697, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "C3", scope: !0, file: !1, line: 26, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 3029594748, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "C4", scope: !0, file: !1, line: 27, type: !9, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 823096566, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "C5", scope: !0, file: !1, line: 28, type: !9, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 2907166542, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "C6", scope: !0, file: !1, line: 29, type: !9, isLocal: true, isDefinition: true)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!26 = distinct !DISubprogram(name: "__kernel_cosf", scope: !1, file: !1, line: 32, type: !27, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!5, !5, !5}
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !40, !50}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !26, file: !1, line: 32, type: !5)
!31 = !DILocalVariable(name: "y", arg: 2, scope: !26, file: !1, line: 32, type: !5)
!32 = !DILocalVariable(name: "a", scope: !26, file: !1, line: 38, type: !5)
!33 = !DILocalVariable(name: "hz", scope: !26, file: !1, line: 38, type: !5)
!34 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 38, type: !5)
!35 = !DILocalVariable(name: "r", scope: !26, file: !1, line: 38, type: !5)
!36 = !DILocalVariable(name: "qx", scope: !26, file: !1, line: 38, type: !5)
!37 = !DILocalVariable(name: "ix", scope: !26, file: !1, line: 39, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !39, line: 77, baseType: !4)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DILocalVariable(name: "gf_u", scope: !41, file: !1, line: 40, type: !42)
!41 = distinct !DILexicalBlock(scope: !26, file: !1, line: 40, column: 2)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !43, line: 347, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !43, line: 343, size: 32, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !44, file: !43, line: 345, baseType: !5, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !44, file: !43, line: 346, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !39, line: 79, baseType: !49)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DILocalVariable(name: "sf_u", scope: !51, file: !1, line: 53, type: !42)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 10)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 52, column: 13)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 50, column: 9)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 49, column: 7)
!55 = distinct !DILexicalBlock(scope: !26, file: !1, line: 47, column: 5)
!56 = !DILocation(line: 32, column: 28, scope: !26)
!57 = !DILocation(line: 32, column: 37, scope: !26)
!58 = !DILocation(line: 40, column: 2, scope: !41)
!59 = !DILocation(line: 39, column: 12, scope: !26)
!60 = !DILocation(line: 41, column: 5, scope: !26)
!61 = !DILocation(line: 42, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !26, file: !1, line: 42, column: 5)
!63 = !DILocation(line: 43, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 43, column: 9)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 42, column: 20)
!66 = !DILocation(line: 43, column: 17, scope: !64)
!67 = !DILocation(line: 42, column: 5, scope: !26)
!68 = !DILocation(line: 45, column: 8, scope: !26)
!69 = !DILocation(line: 38, column: 13, scope: !26)
!70 = !DILocation(line: 46, column: 38, scope: !26)
!71 = !DILocation(line: 46, column: 32, scope: !26)
!72 = !DILocation(line: 46, column: 30, scope: !26)
!73 = !DILocation(line: 46, column: 26, scope: !26)
!74 = !DILocation(line: 46, column: 24, scope: !26)
!75 = !DILocation(line: 46, column: 20, scope: !26)
!76 = !DILocation(line: 46, column: 18, scope: !26)
!77 = !DILocation(line: 46, column: 14, scope: !26)
!78 = !DILocation(line: 46, column: 12, scope: !26)
!79 = !DILocation(line: 46, column: 8, scope: !26)
!80 = !DILocation(line: 38, column: 15, scope: !26)
!81 = !DILocation(line: 47, column: 8, scope: !55)
!82 = !DILocation(line: 47, column: 5, scope: !26)
!83 = !DILocation(line: 48, column: 30, scope: !55)
!84 = !DILocation(line: 48, column: 37, scope: !55)
!85 = !DILocation(line: 48, column: 43, scope: !55)
!86 = !DILocation(line: 48, column: 40, scope: !55)
!87 = !DILocation(line: 48, column: 17, scope: !55)
!88 = !DILocation(line: 48, column: 6, scope: !55)
!89 = !DILocation(line: 50, column: 12, scope: !53)
!90 = !DILocation(line: 53, column: 10, scope: !51)
!91 = !DILocation(line: 38, column: 17, scope: !26)
!92 = !DILocation(line: 50, column: 9, scope: !54)
!93 = !DILocation(line: 55, column: 21, scope: !54)
!94 = !DILocation(line: 55, column: 23, scope: !54)
!95 = !DILocation(line: 38, column: 10, scope: !26)
!96 = !DILocation(line: 56, column: 14, scope: !54)
!97 = !DILocation(line: 38, column: 8, scope: !26)
!98 = !DILocation(line: 57, column: 25, scope: !54)
!99 = !DILocation(line: 57, column: 29, scope: !54)
!100 = !DILocation(line: 57, column: 27, scope: !54)
!101 = !DILocation(line: 57, column: 21, scope: !54)
!102 = !DILocation(line: 57, column: 15, scope: !54)
!103 = !DILocation(line: 57, column: 6, scope: !54)
!104 = !DILocation(line: 0, scope: !54)
!105 = !DILocation(line: 59, column: 1, scope: !26)
