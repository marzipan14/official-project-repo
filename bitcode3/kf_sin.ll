; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_sin.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_sin.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @__kernel_sinf(float, float, i32) local_unnamed_addr #0 !dbg !26 {
  %4 = bitcast float %0 to i32, !dbg !52
  %5 = and i32 %4, 2113929216, !dbg !54
  %6 = icmp ult i32 %5, 838860800, !dbg !55
  %7 = fptosi float %0 to i32, !dbg !57
  %8 = icmp eq i32 %7, 0, !dbg !60
  %9 = and i1 %8, %6, !dbg !61
  br i1 %9, label %36, label %10, !dbg !61

; <label>:10:                                     ; preds = %3
  %11 = fmul float %0, %0, !dbg !62
  %12 = fmul float %11, %0, !dbg !64
  %13 = fmul float %11, 0x3DE5D93A60000000, !dbg !66
  %14 = fadd float %13, 0xBE5AE5E680000000, !dbg !67
  %15 = fmul float %11, %14, !dbg !68
  %16 = fadd float %15, 0x3EC71DE360000000, !dbg !69
  %17 = fmul float %11, %16, !dbg !70
  %18 = fadd float %17, 0xBF2A01A020000000, !dbg !71
  %19 = fmul float %11, %18, !dbg !72
  %20 = fadd float %19, 0x3F81111120000000, !dbg !73
  %21 = icmp eq i32 %2, 0, !dbg !75
  br i1 %21, label %22, label %27, !dbg !77

; <label>:22:                                     ; preds = %10
  %23 = fmul float %11, %20, !dbg !78
  %24 = fadd float %23, 0xBFC5555560000000, !dbg !79
  %25 = fmul float %12, %24, !dbg !80
  %26 = fadd float %25, %0, !dbg !81
  br label %36, !dbg !82

; <label>:27:                                     ; preds = %10
  %28 = fmul float %1, 5.000000e-01, !dbg !83
  %29 = fmul float %12, %20, !dbg !84
  %30 = fsub float %28, %29, !dbg !85
  %31 = fmul float %11, %30, !dbg !86
  %32 = fsub float %31, %1, !dbg !87
  %33 = fmul float %12, 0x3FC5555560000000, !dbg !88
  %34 = fadd float %33, %32, !dbg !88
  %35 = fsub float %0, %34, !dbg !89
  br label %36, !dbg !90

; <label>:36:                                     ; preds = %3, %27, %22
  %37 = phi float [ %26, %22 ], [ %35, %27 ], [ %0, %3 ], !dbg !91
  ret float %37, !dbg !92
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/kf_sin.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{!6, !10, !12, !14, !16, !18, !20}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1007192201, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "S2", scope: !0, file: !1, line: 25, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 3109031169, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "S3", scope: !0, file: !1, line: 26, type: !8, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 909700891, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "S4", scope: !0, file: !1, line: 27, type: !8, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 3000446772, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "S5", scope: !0, file: !1, line: 28, type: !8, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 791595475, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "S6", scope: !0, file: !1, line: 29, type: !8, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 3190467243, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "S1", scope: !0, file: !1, line: 24, type: !8, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!21 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 23, type: !8, isLocal: true, isDefinition: true)
!22 = !{i32 2, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!26 = distinct !DISubprogram(name: "__kernel_sinf", scope: !1, file: !1, line: 32, type: !27, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!27 = !DISubroutineType(types: !28)
!28 = !{!9, !9, !9, !4}
!29 = !{!30, !31, !32, !33, !34, !35, !36, !39}
!30 = !DILocalVariable(name: "x", arg: 1, scope: !26, file: !1, line: 32, type: !9)
!31 = !DILocalVariable(name: "y", arg: 2, scope: !26, file: !1, line: 32, type: !9)
!32 = !DILocalVariable(name: "iy", arg: 3, scope: !26, file: !1, line: 32, type: !4)
!33 = !DILocalVariable(name: "z", scope: !26, file: !1, line: 38, type: !9)
!34 = !DILocalVariable(name: "r", scope: !26, file: !1, line: 38, type: !9)
!35 = !DILocalVariable(name: "v", scope: !26, file: !1, line: 38, type: !9)
!36 = !DILocalVariable(name: "ix", scope: !26, file: !1, line: 39, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !38, line: 77, baseType: !4)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DILocalVariable(name: "gf_u", scope: !40, file: !1, line: 40, type: !41)
!40 = distinct !DILexicalBlock(scope: !26, file: !1, line: 40, column: 2)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !42, line: 347, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !42, line: 343, size: 32, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !43, file: !42, line: 345, baseType: !9, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !43, file: !42, line: 346, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !38, line: 79, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DILocation(line: 32, column: 28, scope: !26)
!50 = !DILocation(line: 32, column: 37, scope: !26)
!51 = !DILocation(line: 32, column: 44, scope: !26)
!52 = !DILocation(line: 40, column: 2, scope: !40)
!53 = !DILocation(line: 39, column: 12, scope: !26)
!54 = !DILocation(line: 41, column: 5, scope: !26)
!55 = !DILocation(line: 42, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !26, file: !1, line: 42, column: 5)
!57 = !DILocation(line: 43, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 43, column: 9)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 43, column: 5)
!60 = !DILocation(line: 43, column: 15, scope: !58)
!61 = !DILocation(line: 42, column: 5, scope: !26)
!62 = !DILocation(line: 44, column: 8, scope: !26)
!63 = !DILocation(line: 38, column: 8, scope: !26)
!64 = !DILocation(line: 45, column: 8, scope: !26)
!65 = !DILocation(line: 38, column: 12, scope: !26)
!66 = !DILocation(line: 46, column: 29, scope: !26)
!67 = !DILocation(line: 46, column: 27, scope: !26)
!68 = !DILocation(line: 46, column: 23, scope: !26)
!69 = !DILocation(line: 46, column: 21, scope: !26)
!70 = !DILocation(line: 46, column: 17, scope: !26)
!71 = !DILocation(line: 46, column: 15, scope: !26)
!72 = !DILocation(line: 46, column: 11, scope: !26)
!73 = !DILocation(line: 46, column: 9, scope: !26)
!74 = !DILocation(line: 38, column: 10, scope: !26)
!75 = !DILocation(line: 47, column: 7, scope: !76)
!76 = distinct !DILexicalBlock(scope: !26, file: !1, line: 47, column: 5)
!77 = !DILocation(line: 47, column: 5, scope: !26)
!78 = !DILocation(line: 47, column: 28, scope: !76)
!79 = !DILocation(line: 47, column: 26, scope: !76)
!80 = !DILocation(line: 47, column: 22, scope: !76)
!81 = !DILocation(line: 47, column: 20, scope: !76)
!82 = !DILocation(line: 47, column: 12, scope: !76)
!83 = !DILocation(line: 48, column: 30, scope: !76)
!84 = !DILocation(line: 48, column: 34, scope: !76)
!85 = !DILocation(line: 48, column: 32, scope: !76)
!86 = !DILocation(line: 48, column: 24, scope: !76)
!87 = !DILocation(line: 48, column: 37, scope: !76)
!88 = !DILocation(line: 48, column: 42, scope: !76)
!89 = !DILocation(line: 48, column: 20, scope: !76)
!90 = !DILocation(line: 48, column: 12, scope: !76)
!91 = !DILocation(line: 0, scope: !76)
!92 = !DILocation(line: 49, column: 1, scope: !26)
