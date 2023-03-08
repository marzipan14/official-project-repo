; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_log10(double) local_unnamed_addr #0 !dbg !24 {
  %2 = bitcast double %0 to i64, !dbg !56
  %3 = lshr i64 %2, 32, !dbg !56
  %4 = trunc i64 %3 to i32, !dbg !56
  %5 = icmp slt i32 %4, 1048576, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %5, label %6, label %21, !dbg !60

; <label>:6:                                      ; preds = %1
  %7 = trunc i64 %2 to i32, !dbg !56
  %8 = and i32 %4, 2147483647, !dbg !62
  %9 = or i32 %8, %7, !dbg !64
  %10 = icmp eq i32 %9, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %10, label %51, label %11, !dbg !66

; <label>:11:                                     ; preds = %6
  %12 = icmp slt i32 %4, 0, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %12, label %13, label %16, !dbg !69

; <label>:13:                                     ; preds = %11
  %14 = fsub double %0, %0, !dbg !70
  %15 = fdiv double %14, 0.000000e+00, !dbg !71
  br label %51, !dbg !72

; <label>:16:                                     ; preds = %11
  %17 = fmul double %0, 0x4350000000000000, !dbg !73
  %18 = bitcast double %17 to i64, !dbg !74
  %19 = lshr i64 %18, 32, !dbg !74
  %20 = trunc i64 %19 to i32, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br label %21, !dbg !75

; <label>:21:                                     ; preds = %16, %1
  %22 = phi i32 [ %20, %16 ], [ %4, %1 ], !dbg !76
  %23 = phi i32 [ -54, %16 ], [ 0, %1 ], !dbg !77
  %24 = phi double [ %17, %16 ], [ %0, %1 ]
  %25 = icmp sgt i32 %22, 2146435071, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %25, label %26, label %28, !dbg !80

; <label>:26:                                     ; preds = %21
  %27 = fadd double %24, %24, !dbg !81
  br label %51, !dbg !82

; <label>:28:                                     ; preds = %21
  %29 = ashr i32 %22, 20, !dbg !83
  %30 = add nsw i32 %29, -1023, !dbg !84
  %31 = add nsw i32 %30, %23, !dbg !85
  %32 = lshr i32 %31, 31, !dbg !86
  %33 = and i32 %22, 1048575, !dbg !88
  %34 = shl nuw nsw i32 %32, 20, !dbg !89
  %35 = or i32 %34, %33, !dbg !90
  %36 = xor i32 %35, 1072693248, !dbg !90
  %37 = add nsw i32 %32, %31, !dbg !91
  %38 = sitofp i32 %37 to double, !dbg !92
  %39 = bitcast double %24 to i64, !dbg !94
  %40 = zext i32 %36 to i64, !dbg !94
  %41 = shl nuw nsw i64 %40, 32, !dbg !94
  %42 = and i64 %39, 4294967295, !dbg !94
  %43 = or i64 %41, %42, !dbg !94
  %44 = bitcast i64 %43 to double, !dbg !94
  %45 = fmul double %38, 0x3D59FEF311F12B36, !dbg !95
  %46 = tail call double @__ieee754_log(double %44) #3, !dbg !96
  %47 = fmul double %46, 0x3FDBCB7B1526E50E, !dbg !97
  %48 = fadd double %45, %47, !dbg !98
  %49 = fmul double %38, 0x3FD34413509F6000, !dbg !100
  %50 = fadd double %49, %48, !dbg !101
  br label %51, !dbg !102

; <label>:51:                                     ; preds = %6, %28, %26, %13
  %52 = phi double [ %15, %13 ], [ %27, %26 ], [ %50, %28 ], [ 0xFFF0000000000000, %6 ], !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  ret double %52, !dbg !104
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !8)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_log10.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !12, !14, !16, !18}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 56, type: !11, isLocal: true, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 62, type: !11, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4420844829172378422, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "log10_2lo", scope: !0, file: !1, line: 59, type: !11, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression(DW_OP_constu, 4601495173785380110, DW_OP_stack_value))
!17 = distinct !DIGlobalVariable(name: "ivln10", scope: !0, file: !1, line: 57, type: !11, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 4599094494223097856, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "log10_2hi", scope: !0, file: !1, line: 58, type: !11, isLocal: true, isDefinition: true)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "__ieee754_log10", scope: !1, file: !1, line: 68, type: !25, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!7, !7}
!27 = !{!28, !29, !30, !31, !34, !35, !36, !37, !49, !53}
!28 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !1, line: 68, type: !7)
!29 = !DILocalVariable(name: "y", scope: !24, file: !1, line: 74, type: !7)
!30 = !DILocalVariable(name: "z", scope: !24, file: !1, line: 74, type: !7)
!31 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 75, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !33)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DILocalVariable(name: "k", scope: !24, file: !1, line: 75, type: !32)
!35 = !DILocalVariable(name: "hx", scope: !24, file: !1, line: 75, type: !32)
!36 = !DILocalVariable(name: "lx", scope: !24, file: !1, line: 76, type: !4)
!37 = !DILocalVariable(name: "ew_u", scope: !38, file: !1, line: 78, type: !39)
!38 = distinct !DILexicalBlock(scope: !24, file: !1, line: 78, column: 2)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !40, line: 278, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !40, line: 270, size: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !41, file: !40, line: 272, baseType: !7, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !41, file: !40, line: 277, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !41, file: !40, line: 273, size: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !45, file: !40, line: 275, baseType: !4, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !45, file: !40, line: 276, baseType: !4, size: 32, offset: 32)
!49 = !DILocalVariable(name: "gh_u", scope: !50, file: !1, line: 86, type: !39)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 86, column: 6)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 81, column: 30)
!52 = distinct !DILexicalBlock(scope: !24, file: !1, line: 81, column: 13)
!53 = !DILocalVariable(name: "sh_u", scope: !54, file: !1, line: 93, type: !39)
!54 = distinct !DILexicalBlock(scope: !24, file: !1, line: 93, column: 2)
!55 = !DILocation(line: 68, column: 32, scope: !24)
!56 = !DILocation(line: 78, column: 2, scope: !38)
!57 = !DILocation(line: 75, column: 16, scope: !24)
!58 = !DILocation(line: 75, column: 14, scope: !24)
!59 = !DILocation(line: 81, column: 16, scope: !52)
!60 = !DILocation(line: 81, column: 13, scope: !24)
!61 = !DILocation(line: 76, column: 13, scope: !24)
!62 = !DILocation(line: 82, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !51, file: !1, line: 82, column: 17)
!64 = !DILocation(line: 82, column: 33, scope: !63)
!65 = !DILocation(line: 82, column: 37, scope: !63)
!66 = !DILocation(line: 82, column: 17, scope: !51)
!67 = !DILocation(line: 84, column: 19, scope: !68)
!68 = distinct !DILexicalBlock(scope: !51, file: !1, line: 84, column: 17)
!69 = !DILocation(line: 84, column: 17, scope: !51)
!70 = !DILocation(line: 84, column: 32, scope: !68)
!71 = !DILocation(line: 84, column: 35, scope: !68)
!72 = !DILocation(line: 84, column: 23, scope: !68)
!73 = !DILocation(line: 85, column: 24, scope: !51)
!74 = !DILocation(line: 86, column: 6, scope: !50)
!75 = !DILocation(line: 87, column: 9, scope: !51)
!76 = !DILocation(line: 0, scope: !38)
!77 = !DILocation(line: 0, scope: !24)
!78 = !DILocation(line: 88, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !24, file: !1, line: 88, column: 6)
!80 = !DILocation(line: 88, column: 6, scope: !24)
!81 = !DILocation(line: 88, column: 32, scope: !79)
!82 = !DILocation(line: 88, column: 24, scope: !79)
!83 = !DILocation(line: 89, column: 10, scope: !24)
!84 = !DILocation(line: 89, column: 15, scope: !24)
!85 = !DILocation(line: 89, column: 4, scope: !24)
!86 = !DILocation(line: 90, column: 33, scope: !24)
!87 = !DILocation(line: 75, column: 12, scope: !24)
!88 = !DILocation(line: 91, column: 17, scope: !24)
!89 = !DILocation(line: 91, column: 40, scope: !24)
!90 = !DILocation(line: 91, column: 29, scope: !24)
!91 = !DILocation(line: 92, column: 24, scope: !24)
!92 = !DILocation(line: 92, column: 14, scope: !24)
!93 = !DILocation(line: 74, column: 9, scope: !24)
!94 = !DILocation(line: 93, column: 2, scope: !54)
!95 = !DILocation(line: 94, column: 8, scope: !24)
!96 = !DILocation(line: 94, column: 28, scope: !24)
!97 = !DILocation(line: 94, column: 27, scope: !24)
!98 = !DILocation(line: 94, column: 19, scope: !24)
!99 = !DILocation(line: 74, column: 11, scope: !24)
!100 = !DILocation(line: 95, column: 13, scope: !24)
!101 = !DILocation(line: 95, column: 11, scope: !24)
!102 = !DILocation(line: 95, column: 2, scope: !24)
!103 = !DILocation(line: 0, scope: !63)
!104 = !DILocation(line: 96, column: 1, scope: !24)
