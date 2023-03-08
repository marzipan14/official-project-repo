; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @floorf(float) local_unnamed_addr #0 !dbg !13 {
  %2 = bitcast float %0 to i32, !dbg !38
  %3 = and i32 %2, 2147483647, !dbg !40
  %4 = lshr i32 %3, 23, !dbg !42
  %5 = add nsw i32 %4, -127, !dbg !43
  %6 = icmp ult i32 %3, 1258291200, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %6, label %7, label %34, !dbg !47

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %3, 1065353216, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %8, label %9, label %18, !dbg !51

; <label>:9:                                      ; preds = %7
  %10 = fadd float %0, 0x46293E5940000000, !dbg !52
  %11 = fcmp ogt float %10, 0.000000e+00, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %11, label %12, label %38, !dbg !56

; <label>:12:                                     ; preds = %9
  %13 = icmp sgt i32 %2, -1, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %13, label %14, label %15, !dbg !60

; <label>:14:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %38, !dbg !61

; <label>:15:                                     ; preds = %12
  %16 = icmp eq i32 %3, 0, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %16, label %38, label %17, !dbg !65

; <label>:17:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %38, !dbg !66

; <label>:18:                                     ; preds = %7
  %19 = lshr i32 8388607, %5, !dbg !68
  %20 = and i32 %19, %2, !dbg !71
  %21 = icmp eq i32 %20, 0, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %21, label %41, label %22, !dbg !74

; <label>:22:                                     ; preds = %18
  %23 = fadd float %0, 0x46293E5940000000, !dbg !75
  %24 = fcmp ogt float %23, 0.000000e+00, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %24, label %25, label %38, !dbg !78

; <label>:25:                                     ; preds = %22
  %26 = icmp slt i32 %2, 0, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %26, label %27, label %30, !dbg !82

; <label>:27:                                     ; preds = %25
  %28 = lshr i32 8388608, %5, !dbg !83
  %29 = add nsw i32 %28, %2, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br label %30, !dbg !85

; <label>:30:                                     ; preds = %27, %25
  %31 = phi i32 [ %29, %27 ], [ %2, %25 ], !dbg !86
  %32 = ashr i32 -8388608, %5, !dbg !87
  %33 = and i32 %31, %32, !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %38, !dbg !89

; <label>:34:                                     ; preds = %1
  %35 = icmp ult i32 %3, 2139095040, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  %36 = fadd float %0, %0, !dbg !94
  %37 = select i1 %35, float %0, float %36, !dbg !93
  br label %41, !dbg !93

; <label>:38:                                     ; preds = %22, %30, %9, %15, %17, %14
  %39 = phi i32 [ 0, %14 ], [ %2, %15 ], [ -1082130432, %17 ], [ %2, %9 ], [ %33, %30 ], [ %2, %22 ], !dbg !86
  %40 = bitcast i32 %39 to float, !dbg !95
  br label %41, !dbg !96

; <label>:41:                                     ; preds = %34, %18, %38
  %42 = phi float [ %40, %38 ], [ %0, %18 ], [ %37, %34 ], !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  ret float %42, !dbg !99
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 28, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "floorf", scope: !1, file: !1, line: 34, type: !14, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4}
!16 = !{!17, !18, !22, !23, !26, !27, !35}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !1, line: 34, type: !4)
!18 = !DILocalVariable(name: "i0", scope: !13, file: !1, line: 40, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 77, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "j0", scope: !13, file: !1, line: 40, type: !19)
!23 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 41, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "ix", scope: !13, file: !1, line: 41, type: !24)
!27 = !DILocalVariable(name: "gf_u", scope: !28, file: !1, line: 42, type: !29)
!28 = distinct !DILexicalBlock(scope: !13, file: !1, line: 42, column: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !30, line: 347, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !30, line: 343, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !31, file: !30, line: 345, baseType: !4, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !31, file: !30, line: 346, baseType: !24, size: 32)
!35 = !DILocalVariable(name: "sf_u", scope: !36, file: !1, line: 64, type: !29)
!36 = distinct !DILexicalBlock(scope: !13, file: !1, line: 64, column: 2)
!37 = !DILocation(line: 34, column: 21, scope: !13)
!38 = !DILocation(line: 42, column: 2, scope: !28)
!39 = !DILocation(line: 40, column: 12, scope: !13)
!40 = !DILocation(line: 43, column: 10, scope: !13)
!41 = !DILocation(line: 41, column: 15, scope: !13)
!42 = !DILocation(line: 44, column: 10, scope: !13)
!43 = !DILocation(line: 44, column: 15, scope: !13)
!44 = !DILocation(line: 40, column: 15, scope: !13)
!45 = !DILocation(line: 45, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !13, file: !1, line: 45, column: 5)
!47 = !DILocation(line: 45, column: 5, scope: !13)
!48 = !DILocation(line: 46, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 46, column: 9)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 45, column: 12)
!51 = !DILocation(line: 46, column: 9, scope: !50)
!52 = !DILocation(line: 47, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 6)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 46, column: 15)
!55 = !DILocation(line: 47, column: 12, scope: !53)
!56 = !DILocation(line: 47, column: 6, scope: !54)
!57 = !DILocation(line: 48, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 48, column: 10)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 47, column: 25)
!60 = !DILocation(line: 48, column: 10, scope: !59)
!61 = !DILocation(line: 48, column: 23, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 48, column: 17)
!63 = !DILocation(line: 49, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 15)
!65 = !DILocation(line: 49, column: 15, scope: !58)
!66 = !DILocation(line: 50, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 50, column: 4)
!68 = !DILocation(line: 53, column: 19, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !1, line: 52, column: 13)
!70 = !DILocation(line: 41, column: 13, scope: !13)
!71 = !DILocation(line: 54, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 54, column: 6)
!73 = !DILocation(line: 54, column: 12, scope: !72)
!74 = !DILocation(line: 54, column: 6, scope: !69)
!75 = !DILocation(line: 55, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !69, file: !1, line: 55, column: 6)
!77 = !DILocation(line: 55, column: 12, scope: !76)
!78 = !DILocation(line: 55, column: 6, scope: !69)
!79 = !DILocation(line: 56, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 56, column: 10)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 55, column: 25)
!82 = !DILocation(line: 56, column: 10, scope: !81)
!83 = !DILocation(line: 56, column: 34, scope: !80)
!84 = !DILocation(line: 56, column: 19, scope: !80)
!85 = !DILocation(line: 56, column: 16, scope: !80)
!86 = !DILocation(line: 0, scope: !28)
!87 = !DILocation(line: 57, column: 14, scope: !81)
!88 = !DILocation(line: 57, column: 10, scope: !81)
!89 = !DILocation(line: 58, column: 3, scope: !81)
!90 = !DILocation(line: 61, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 61, column: 9)
!92 = distinct !DILexicalBlock(scope: !46, file: !1, line: 60, column: 9)
!93 = !DILocation(line: 61, column: 9, scope: !92)
!94 = !DILocation(line: 61, column: 43, scope: !91)
!95 = !DILocation(line: 64, column: 2, scope: !36)
!96 = !DILocation(line: 65, column: 2, scope: !13)
!97 = !DILocation(line: 0, scope: !91)
!98 = !DILocation(line: 0, scope: !72)
!99 = !DILocation(line: 66, column: 1, scope: !13)
