; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_log10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_log10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_log10f(float) local_unnamed_addr #0 !dbg !24 {
  %2 = bitcast float %0 to i32, !dbg !51
  %3 = and i32 %2, 2147483647, !dbg !54
  %4 = icmp eq i32 %3, 0, !dbg !54
  br i1 %4, label %36, label %5, !dbg !56

; <label>:5:                                      ; preds = %1
  %6 = icmp slt i32 %2, 0, !dbg !57
  br i1 %6, label %7, label %10, !dbg !59

; <label>:7:                                      ; preds = %5
  %8 = fsub float %0, %0, !dbg !60
  %9 = fdiv float %8, 0.000000e+00, !dbg !61
  br label %36, !dbg !62

; <label>:10:                                     ; preds = %5
  %11 = icmp slt i32 %2, 2139095040, !dbg !63
  br i1 %11, label %14, label %12, !dbg !65

; <label>:12:                                     ; preds = %10
  %13 = fadd float %0, %0, !dbg !66
  br label %36, !dbg !67

; <label>:14:                                     ; preds = %10
  %15 = icmp slt i32 %2, 8388608, !dbg !68
  %16 = fmul float %0, 0x4180000000000000, !dbg !69
  %17 = bitcast float %16 to i32, !dbg !70
  %18 = select i1 %15, i32 %17, i32 %2, !dbg !71
  %19 = ashr i32 %18, 23, !dbg !72
  %20 = select i1 %15, i32 -152, i32 -127, !dbg !73
  %21 = add nsw i32 %20, %19, !dbg !74
  %22 = lshr i32 %21, 31, !dbg !75
  %23 = and i32 %18, 8388607, !dbg !77
  %24 = shl nuw nsw i32 %22, 23, !dbg !78
  %25 = or i32 %24, %23, !dbg !79
  %26 = xor i32 %25, 1065353216, !dbg !79
  %27 = add nsw i32 %22, %21, !dbg !80
  %28 = sitofp i32 %27 to float, !dbg !81
  %29 = bitcast i32 %26 to float, !dbg !83
  %30 = fmul float %28, 0x3EAA84FB60000000, !dbg !84
  %31 = tail call float @__ieee754_logf(float %29) #3, !dbg !85
  %32 = fmul float %31, 0x3FDBCB7B20000000, !dbg !86
  %33 = fadd float %30, %32, !dbg !87
  %34 = fmul float %28, 0x3FD3441000000000, !dbg !89
  %35 = fadd float %34, %33, !dbg !90
  br label %36, !dbg !91

; <label>:36:                                     ; preds = %1, %14, %12, %7
  %37 = phi float [ %9, %7 ], [ %35, %14 ], [ %13, %12 ], [ 0xFFF0000000000000, %1 ], !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  ret float %37, !dbg !93
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_log10.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !{!9, !12, !14, !16, !18}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "two25", scope: !0, file: !1, line: 23, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 29, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 894707675, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "log10_2lo", scope: !0, file: !1, line: 26, type: !11, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 1054759897, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ivln10", scope: !0, file: !1, line: 24, type: !11, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 1050288256, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "log10_2hi", scope: !0, file: !1, line: 25, type: !11, isLocal: true, isDefinition: true)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "__ieee754_log10f", scope: !1, file: !1, line: 35, type: !25, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!7, !7}
!27 = !{!28, !29, !30, !31, !34, !35, !36, !44, !48}
!28 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !1, line: 35, type: !7)
!29 = !DILocalVariable(name: "y", scope: !24, file: !1, line: 41, type: !7)
!30 = !DILocalVariable(name: "z", scope: !24, file: !1, line: 41, type: !7)
!31 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 42, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !33)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "k", scope: !24, file: !1, line: 42, type: !32)
!35 = !DILocalVariable(name: "hx", scope: !24, file: !1, line: 42, type: !32)
!36 = !DILocalVariable(name: "gf_u", scope: !37, file: !1, line: 44, type: !38)
!37 = distinct !DILexicalBlock(scope: !24, file: !1, line: 44, column: 2)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !39, line: 347, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!40 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !39, line: 343, size: 32, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !40, file: !39, line: 345, baseType: !7, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !40, file: !39, line: 346, baseType: !4, size: 32)
!44 = !DILocalVariable(name: "gf_u", scope: !45, file: !1, line: 53, type: !38)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 53, column: 6)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 51, column: 41)
!47 = distinct !DILexicalBlock(scope: !24, file: !1, line: 51, column: 13)
!48 = !DILocalVariable(name: "sf_u", scope: !49, file: !1, line: 59, type: !38)
!49 = distinct !DILexicalBlock(scope: !24, file: !1, line: 59, column: 2)
!50 = !DILocation(line: 35, column: 31, scope: !24)
!51 = !DILocation(line: 44, column: 2, scope: !37)
!52 = !DILocation(line: 42, column: 16, scope: !24)
!53 = !DILocation(line: 42, column: 14, scope: !24)
!54 = !DILocation(line: 47, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !24, file: !1, line: 47, column: 13)
!56 = !DILocation(line: 47, column: 13, scope: !24)
!57 = !DILocation(line: 49, column: 15, scope: !58)
!58 = distinct !DILexicalBlock(scope: !24, file: !1, line: 49, column: 13)
!59 = !DILocation(line: 49, column: 13, scope: !24)
!60 = !DILocation(line: 49, column: 28, scope: !58)
!61 = !DILocation(line: 49, column: 31, scope: !58)
!62 = !DILocation(line: 49, column: 19, scope: !58)
!63 = !DILocation(line: 50, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !24, file: !1, line: 50, column: 6)
!65 = !DILocation(line: 50, column: 6, scope: !24)
!66 = !DILocation(line: 50, column: 40, scope: !64)
!67 = !DILocation(line: 50, column: 32, scope: !64)
!68 = !DILocation(line: 51, column: 13, scope: !47)
!69 = !DILocation(line: 52, column: 24, scope: !46)
!70 = !DILocation(line: 53, column: 6, scope: !45)
!71 = !DILocation(line: 51, column: 13, scope: !24)
!72 = !DILocation(line: 55, column: 10, scope: !24)
!73 = !DILocation(line: 55, column: 15, scope: !24)
!74 = !DILocation(line: 55, column: 4, scope: !24)
!75 = !DILocation(line: 56, column: 33, scope: !24)
!76 = !DILocation(line: 42, column: 12, scope: !24)
!77 = !DILocation(line: 57, column: 17, scope: !24)
!78 = !DILocation(line: 57, column: 39, scope: !24)
!79 = !DILocation(line: 57, column: 29, scope: !24)
!80 = !DILocation(line: 58, column: 23, scope: !24)
!81 = !DILocation(line: 58, column: 14, scope: !24)
!82 = !DILocation(line: 41, column: 8, scope: !24)
!83 = !DILocation(line: 59, column: 2, scope: !49)
!84 = !DILocation(line: 60, column: 8, scope: !24)
!85 = !DILocation(line: 60, column: 28, scope: !24)
!86 = !DILocation(line: 60, column: 27, scope: !24)
!87 = !DILocation(line: 60, column: 19, scope: !24)
!88 = !DILocation(line: 41, column: 10, scope: !24)
!89 = !DILocation(line: 61, column: 13, scope: !24)
!90 = !DILocation(line: 61, column: 11, scope: !24)
!91 = !DILocation(line: 61, column: 2, scope: !24)
!92 = !DILocation(line: 0, scope: !64)
!93 = !DILocation(line: 62, column: 1, scope: !24)
