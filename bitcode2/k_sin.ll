; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_sin.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_sin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__kernel_sin(double, double, i32) local_unnamed_addr #0 !dbg !26 {
  %4 = bitcast double %0 to i64, !dbg !56
  %5 = and i64 %4, 9205357638345293824, !dbg !57
  %6 = icmp ult i64 %5, 4485585228861014016, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %6, label %7, label %10, !dbg !59

; <label>:7:                                      ; preds = %3
  %8 = fptosi double %0 to i32, !dbg !60
  %9 = icmp eq i32 %8, 0, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %9, label %36, label %10, !dbg !64

; <label>:10:                                     ; preds = %7, %3
  %11 = fmul double %0, %0, !dbg !65
  %12 = fmul double %11, %0, !dbg !67
  %13 = fmul double %11, 0x3DE5D93A5ACFD57C, !dbg !69
  %14 = fadd double %13, 0xBE5AE5E68A2B9CEB, !dbg !70
  %15 = fmul double %11, %14, !dbg !71
  %16 = fadd double %15, 0x3EC71DE357B1FE7D, !dbg !72
  %17 = fmul double %11, %16, !dbg !73
  %18 = fadd double %17, 0xBF2A01A019C161D5, !dbg !74
  %19 = fmul double %11, %18, !dbg !75
  %20 = fadd double %19, 0x3F8111111110F8A6, !dbg !76
  %21 = icmp eq i32 %2, 0, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %21, label %22, label %27, !dbg !80

; <label>:22:                                     ; preds = %10
  %23 = fmul double %11, %20, !dbg !81
  %24 = fadd double %23, 0xBFC5555555555549, !dbg !82
  %25 = fmul double %12, %24, !dbg !83
  %26 = fadd double %25, %0, !dbg !84
  br label %36, !dbg !85

; <label>:27:                                     ; preds = %10
  %28 = fmul double %1, 5.000000e-01, !dbg !86
  %29 = fmul double %12, %20, !dbg !87
  %30 = fsub double %28, %29, !dbg !88
  %31 = fmul double %11, %30, !dbg !89
  %32 = fsub double %31, %1, !dbg !90
  %33 = fmul double %12, 0x3FC5555555555549, !dbg !91
  %34 = fadd double %33, %32, !dbg !91
  %35 = fsub double %0, %34, !dbg !92
  br label %36, !dbg !93

; <label>:36:                                     ; preds = %7, %27, %22
  %37 = phi double [ %26, %22 ], [ %35, %27 ], [ %0, %7 ], !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  ret double %37, !dbg !96
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/k_sin.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !10, !12, !14, !16, !18, !20}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 4575957461383575718, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "S2", scope: !0, file: !1, line: 53, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 13774824197404582357, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "S3", scope: !0, file: !1, line: 54, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4523617212983017085, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "S4", scope: !0, file: !1, line: 55, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 13716528393433619691, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "S5", scope: !0, file: !1, line: 56, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4460209850635244924, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "S6", scope: !0, file: !1, line: 57, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13818544856648471881, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "S1", scope: !0, file: !1, line: 52, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 4602678819172646912, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 51, type: !8, isLocal: true, isDefinition: true)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!26 = distinct !DISubprogram(name: "__kernel_sin", scope: !1, file: !1, line: 60, type: !27, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!9, !9, !9, !4}
!29 = !{!30, !31, !32, !33, !34, !35, !36, !39}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !26, file: !1, line: 60, type: !9)
!31 = !DILocalVariable(name: "y", arg: 2, scope: !26, file: !1, line: 60, type: !9)
!32 = !DILocalVariable(name: "iy", arg: 3, scope: !26, file: !1, line: 60, type: !4)
!33 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 66, type: !9)
!34 = !DILocalVariable(name: "r", scope: !26, file: !1, line: 66, type: !9)
!35 = !DILocalVariable(name: "v", scope: !26, file: !1, line: 66, type: !9)
!36 = !DILocalVariable(name: "ix", scope: !26, file: !1, line: 67, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !38, line: 77, baseType: !4)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DILocalVariable(name: "gh_u", scope: !40, file: !1, line: 68, type: !41)
!40 = distinct !DILexicalBlock(scope: !26, file: !1, line: 68, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !42, line: 278, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 270, size: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 272, baseType: !9, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !43, file: !42, line: 277, baseType: !47, size: 64)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !43, file: !42, line: 273, size: 64, elements: !48)
!48 = !{!49, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !47, file: !42, line: 275, baseType: !50, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !38, line: 79, baseType: !51)
!51 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !47, file: !42, line: 276, baseType: !50, size: 32, offset: 32)
!53 = !DILocation(line: 60, column: 29, scope: !26)
!54 = !DILocation(line: 60, column: 39, scope: !26)
!55 = !DILocation(line: 60, column: 46, scope: !26)
!56 = !DILocation(line: 68, column: 2, scope: !40)
!57 = !DILocation(line: 70, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !26, file: !1, line: 70, column: 5)
!59 = !DILocation(line: 70, column: 5, scope: !26)
!60 = !DILocation(line: 71, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 71, column: 9)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 71, column: 5)
!63 = !DILocation(line: 71, column: 15, scope: !61)
!64 = !DILocation(line: 71, column: 9, scope: !62)
!65 = !DILocation(line: 72, column: 8, scope: !26)
!66 = !DILocation(line: 66, column: 9, scope: !26)
!67 = !DILocation(line: 73, column: 8, scope: !26)
!68 = !DILocation(line: 66, column: 13, scope: !26)
!69 = !DILocation(line: 74, column: 29, scope: !26)
!70 = !DILocation(line: 74, column: 27, scope: !26)
!71 = !DILocation(line: 74, column: 23, scope: !26)
!72 = !DILocation(line: 74, column: 21, scope: !26)
!73 = !DILocation(line: 74, column: 17, scope: !26)
!74 = !DILocation(line: 74, column: 15, scope: !26)
!75 = !DILocation(line: 74, column: 11, scope: !26)
!76 = !DILocation(line: 74, column: 9, scope: !26)
!77 = !DILocation(line: 66, column: 11, scope: !26)
!78 = !DILocation(line: 75, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !26, file: !1, line: 75, column: 5)
!80 = !DILocation(line: 75, column: 5, scope: !26)
!81 = !DILocation(line: 75, column: 28, scope: !79)
!82 = !DILocation(line: 75, column: 26, scope: !79)
!83 = !DILocation(line: 75, column: 22, scope: !79)
!84 = !DILocation(line: 75, column: 20, scope: !79)
!85 = !DILocation(line: 75, column: 12, scope: !79)
!86 = !DILocation(line: 76, column: 30, scope: !79)
!87 = !DILocation(line: 76, column: 34, scope: !79)
!88 = !DILocation(line: 76, column: 32, scope: !79)
!89 = !DILocation(line: 76, column: 24, scope: !79)
!90 = !DILocation(line: 76, column: 37, scope: !79)
!91 = !DILocation(line: 76, column: 42, scope: !79)
!92 = !DILocation(line: 76, column: 20, scope: !79)
!93 = !DILocation(line: 76, column: 12, scope: !79)
!94 = !DILocation(line: 0, scope: !79)
!95 = !DILocation(line: 0, scope: !61)
!96 = !DILocation(line: 77, column: 1, scope: !26)
