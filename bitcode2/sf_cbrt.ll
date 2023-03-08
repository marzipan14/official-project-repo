; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_cbrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_cbrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @cbrtf(float) local_unnamed_addr #0 !dbg !28 {
  %2 = bitcast float %0 to i32, !dbg !66
  %3 = and i32 %2, -2147483648, !dbg !68
  %4 = and i32 %2, 2147483647, !dbg !70
  %5 = icmp ult i32 %4, 2139095040, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %5, label %8, label %6, !dbg !73

; <label>:6:                                      ; preds = %1
  %7 = fadd float %0, %0, !dbg !74
  br label %33, !dbg !75

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %4, 0, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %9, label %33, label %10, !dbg !78

; <label>:10:                                     ; preds = %8
  %11 = bitcast i32 %4 to float, !dbg !79
  %12 = icmp ult i32 %4, 8388608, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  %13 = fmul float %11, 0x4170000000000000, !dbg !84
  %14 = bitcast float %13 to i32, !dbg !85
  %15 = select i1 %12, i32 %14, i32 %4, !dbg !81
  %16 = select i1 %12, i32 642849266, i32 709958130, !dbg !81
  %17 = udiv i32 %15, 3, !dbg !87
  %18 = add nuw i32 %17, %16, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %19 = bitcast i32 %18 to float, !dbg !88
  %20 = fmul float %19, %19, !dbg !89
  %21 = fdiv float %20, %11, !dbg !90
  %22 = fmul float %21, %19, !dbg !92
  %23 = fadd float %22, 0x3FE15F1600000000, !dbg !93
  %24 = fadd float %23, 0x3FF6A0EA00000000, !dbg !95
  %25 = fdiv float 0x3FE691DE20000000, %23, !dbg !96
  %26 = fsub float %24, %25, !dbg !96
  %27 = fdiv float 0x3FF9B6DB60000000, %26, !dbg !97
  %28 = fadd float %27, 0x3FD6DB6DC0000000, !dbg !98
  %29 = fmul float %28, %19, !dbg !99
  %30 = bitcast float %29 to i32, !dbg !100
  %31 = or i32 %3, %30, !dbg !101
  %32 = bitcast i32 %31 to float, !dbg !101
  br label %33, !dbg !102

; <label>:33:                                     ; preds = %8, %10, %6
  %34 = phi float [ %32, %10 ], [ %7, %6 ], [ %0, %8 ], !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  ret float %34, !dbg !104
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_cbrt.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !10, !12, !16, !18, !20, !22}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 642849266, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "B2", scope: !0, file: !1, line: 28, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 709958130, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "B1", scope: !0, file: !1, line: 27, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 1057683632, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "C", scope: !0, file: !1, line: 35, type: !14, isLocal: true, isDefinition: true)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 1052171118, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "G", scope: !0, file: !1, line: 39, type: !14, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 1070446299, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "F", scope: !0, file: !1, line: 38, type: !14, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 1068828496, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "E", scope: !0, file: !1, line: 37, type: !14, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression(DW_OP_constu, 3207892721, DW_OP_stack_value))
!23 = distinct !DIGlobalVariable(name: "D", scope: !0, file: !1, line: 36, type: !14, isLocal: true, isDefinition: true)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!28 = distinct !DISubprogram(name: "cbrtf", scope: !1, file: !1, line: 42, type: !29, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!15, !15}
!31 = !{!32, !33, !36, !37, !38, !39, !40, !41, !49, !51, !55, !57, !59, !61, !63}
!32 = !DILocalVariable(name: "x", arg: 1, scope: !28, file: !1, line: 42, type: !15)
!33 = !DILocalVariable(name: "hx", scope: !28, file: !1, line: 48, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !35)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DILocalVariable(name: "r", scope: !28, file: !1, line: 49, type: !15)
!37 = !DILocalVariable(name: "s", scope: !28, file: !1, line: 49, type: !15)
!38 = !DILocalVariable(name: "t", scope: !28, file: !1, line: 49, type: !15)
!39 = !DILocalVariable(name: "sign", scope: !28, file: !1, line: 50, type: !7)
!40 = !DILocalVariable(name: "high", scope: !28, file: !1, line: 51, type: !7)
!41 = !DILocalVariable(name: "gf_u", scope: !42, file: !1, line: 53, type: !43)
!42 = distinct !DILexicalBlock(scope: !28, file: !1, line: 53, column: 2)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !44, line: 347, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !44, line: 343, size: 32, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !45, file: !44, line: 345, baseType: !15, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !45, file: !44, line: 346, baseType: !7, size: 32)
!49 = !DILocalVariable(name: "sf_u", scope: !50, file: !1, line: 61, type: !43)
!50 = distinct !DILexicalBlock(scope: !28, file: !1, line: 61, column: 2)
!51 = !DILocalVariable(name: "sf_u", scope: !52, file: !1, line: 64, type: !43)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 64, column: 5)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 64, column: 4)
!54 = distinct !DILexicalBlock(scope: !28, file: !1, line: 63, column: 5)
!55 = !DILocalVariable(name: "gf_u", scope: !56, file: !1, line: 65, type: !43)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 65, column: 11)
!57 = !DILocalVariable(name: "sf_u", scope: !58, file: !1, line: 65, type: !43)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 65, column: 35)
!59 = !DILocalVariable(name: "sf_u", scope: !60, file: !1, line: 68, type: !43)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 68, column: 4)
!61 = !DILocalVariable(name: "gf_u", scope: !62, file: !1, line: 77, type: !43)
!62 = distinct !DILexicalBlock(scope: !28, file: !1, line: 77, column: 2)
!63 = !DILocalVariable(name: "sf_u", scope: !64, file: !1, line: 78, type: !43)
!64 = distinct !DILexicalBlock(scope: !28, file: !1, line: 78, column: 2)
!65 = !DILocation(line: 42, column: 20, scope: !28)
!66 = !DILocation(line: 53, column: 2, scope: !42)
!67 = !DILocation(line: 48, column: 12, scope: !28)
!68 = !DILocation(line: 54, column: 9, scope: !28)
!69 = !DILocation(line: 50, column: 13, scope: !28)
!70 = !DILocation(line: 55, column: 6, scope: !28)
!71 = !DILocation(line: 56, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !28, file: !1, line: 56, column: 5)
!73 = !DILocation(line: 56, column: 5, scope: !28)
!74 = !DILocation(line: 57, column: 14, scope: !72)
!75 = !DILocation(line: 57, column: 6, scope: !72)
!76 = !DILocation(line: 58, column: 5, scope: !77)
!77 = distinct !DILexicalBlock(scope: !28, file: !1, line: 58, column: 5)
!78 = !DILocation(line: 58, column: 5, scope: !28)
!79 = !DILocation(line: 61, column: 2, scope: !50)
!80 = !DILocation(line: 63, column: 5, scope: !54)
!81 = !DILocation(line: 63, column: 5, scope: !28)
!82 = !DILocation(line: 68, column: 4, scope: !60)
!83 = !DILocation(line: 49, column: 12, scope: !28)
!84 = !DILocation(line: 65, column: 6, scope: !53)
!85 = !DILocation(line: 65, column: 11, scope: !56)
!86 = !DILocation(line: 51, column: 13, scope: !28)
!87 = !DILocation(line: 0, scope: !58)
!88 = !DILocation(line: 0, scope: !60)
!89 = !DILocation(line: 72, column: 5, scope: !28)
!90 = !DILocation(line: 72, column: 7, scope: !28)
!91 = !DILocation(line: 49, column: 8, scope: !28)
!92 = !DILocation(line: 73, column: 7, scope: !28)
!93 = !DILocation(line: 73, column: 5, scope: !28)
!94 = !DILocation(line: 49, column: 10, scope: !28)
!95 = !DILocation(line: 74, column: 11, scope: !28)
!96 = !DILocation(line: 74, column: 15, scope: !28)
!97 = !DILocation(line: 74, column: 8, scope: !28)
!98 = !DILocation(line: 74, column: 6, scope: !28)
!99 = !DILocation(line: 74, column: 3, scope: !28)
!100 = !DILocation(line: 77, column: 2, scope: !62)
!101 = !DILocation(line: 78, column: 2, scope: !64)
!102 = !DILocation(line: 79, column: 2, scope: !28)
!103 = !DILocation(line: 0, scope: !72)
!104 = !DILocation(line: 80, column: 1, scope: !28)
