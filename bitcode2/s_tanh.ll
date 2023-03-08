; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_tanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_tanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @tanh(double) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast double %0 to i64, !dbg !43
  %3 = lshr i64 %2, 32, !dbg !43
  %4 = trunc i64 %3 to i32, !dbg !43
  %5 = and i32 %4, 2147483647, !dbg !45
  %6 = icmp ugt i32 %5, 2146435071, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %6, label %7, label %14, !dbg !49

; <label>:7:                                      ; preds = %1
  %8 = icmp sgt i32 %4, -1, !dbg !50
  %9 = fdiv double 1.000000e+00, %0, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %8, label %10, label %12, !dbg !54

; <label>:10:                                     ; preds = %7
  %11 = fadd double %9, 1.000000e+00, !dbg !55
  br label %41, !dbg !56

; <label>:12:                                     ; preds = %7
  %13 = fadd double %9, -1.000000e+00, !dbg !57
  br label %41, !dbg !58

; <label>:14:                                     ; preds = %1
  %15 = icmp ult i32 %5, 1077280768, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %15, label %16, label %36, !dbg !61

; <label>:16:                                     ; preds = %14
  %17 = icmp ult i32 %5, 1015021568, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %17, label %18, label %21, !dbg !65

; <label>:18:                                     ; preds = %16
  %19 = fadd double %0, 1.000000e+00, !dbg !66
  %20 = fmul double %19, %0, !dbg !67
  br label %41, !dbg !68

; <label>:21:                                     ; preds = %16
  %22 = icmp ugt i32 %5, 1072693247, !dbg !69
  %23 = tail call double @fabs(double %0) #3, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %22, label %24, label %30, !dbg !73

; <label>:24:                                     ; preds = %21
  %25 = fmul double %23, 2.000000e+00, !dbg !74
  %26 = tail call double @expm1(double %25) #3, !dbg !76
  %27 = fadd double %26, 2.000000e+00, !dbg !78
  %28 = fdiv double 2.000000e+00, %27, !dbg !79
  %29 = fsub double 1.000000e+00, %28, !dbg !80
  br label %36, !dbg !82

; <label>:30:                                     ; preds = %21
  %31 = fmul double %23, -2.000000e+00, !dbg !83
  %32 = tail call double @expm1(double %31) #3, !dbg !84
  %33 = fsub double -0.000000e+00, %32, !dbg !85
  %34 = fadd double %32, 2.000000e+00, !dbg !86
  %35 = fdiv double %33, %34, !dbg !87
  br label %36

; <label>:36:                                     ; preds = %14, %24, %30
  %37 = phi double [ %29, %24 ], [ %35, %30 ], [ 1.000000e+00, %14 ], !dbg !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = icmp sgt i32 %4, -1, !dbg !90
  %39 = fsub double -0.000000e+00, %37, !dbg !91
  %40 = select i1 %38, double %37, double %39, !dbg !92
  br label %41, !dbg !93

; <label>:41:                                     ; preds = %36, %18, %12, %10
  %42 = phi double [ %11, %10 ], [ %13, %12 ], [ %20, %18 ], [ %40, %36 ], !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  ret double %42, !dbg !95
}

; Function Attrs: noredzone
declare dso_local double @expm1(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_tanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 85, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4611686018427387904, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 85, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 85, type: !6, isLocal: true, isDefinition: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "tanh", scope: !1, file: !1, line: 91, type: !17, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7, !7}
!19 = !{!20, !21, !22, !23, !27, !28}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 91, type: !7)
!21 = !DILocalVariable(name: "t", scope: !16, file: !1, line: 97, type: !7)
!22 = !DILocalVariable(name: "z", scope: !16, file: !1, line: 97, type: !7)
!23 = !DILocalVariable(name: "jx", scope: !16, file: !1, line: 98, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "ix", scope: !16, file: !1, line: 98, type: !24)
!28 = !DILocalVariable(name: "gh_u", scope: !29, file: !1, line: 101, type: !30)
!29 = distinct !DILexicalBlock(scope: !16, file: !1, line: 101, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !31, line: 278, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 270, size: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 272, baseType: !7, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !32, file: !31, line: 277, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !32, file: !31, line: 273, size: 64, elements: !37)
!37 = !{!38, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !36, file: !31, line: 275, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !36, file: !31, line: 276, baseType: !39, size: 32, offset: 32)
!42 = !DILocation(line: 91, column: 21, scope: !16)
!43 = !DILocation(line: 101, column: 2, scope: !29)
!44 = !DILocation(line: 98, column: 12, scope: !16)
!45 = !DILocation(line: 102, column: 9, scope: !16)
!46 = !DILocation(line: 98, column: 15, scope: !16)
!47 = !DILocation(line: 105, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !16, file: !1, line: 105, column: 5)
!49 = !DILocation(line: 105, column: 5, scope: !16)
!50 = !DILocation(line: 106, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 106, column: 10)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 105, column: 21)
!53 = !DILocation(line: 0, scope: !51)
!54 = !DILocation(line: 106, column: 10, scope: !52)
!55 = !DILocation(line: 106, column: 29, scope: !51)
!56 = !DILocation(line: 106, column: 17, scope: !51)
!57 = !DILocation(line: 107, column: 29, scope: !51)
!58 = !DILocation(line: 107, column: 17, scope: !51)
!59 = !DILocation(line: 111, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !16, file: !1, line: 111, column: 6)
!61 = !DILocation(line: 111, column: 6, scope: !16)
!62 = !DILocation(line: 112, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 112, column: 10)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 111, column: 23)
!65 = !DILocation(line: 112, column: 10, scope: !64)
!66 = !DILocation(line: 113, column: 16, scope: !63)
!67 = !DILocation(line: 113, column: 11, scope: !63)
!68 = !DILocation(line: 113, column: 3, scope: !63)
!69 = !DILocation(line: 114, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !1, line: 114, column: 10)
!71 = !DILocation(line: 0, scope: !72)
!72 = distinct !DILexicalBlock(scope: !70, file: !1, line: 117, column: 13)
!73 = !DILocation(line: 114, column: 10, scope: !64)
!74 = !DILocation(line: 115, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 114, column: 26)
!76 = !DILocation(line: 115, column: 7, scope: !75)
!77 = !DILocation(line: 97, column: 9, scope: !16)
!78 = !DILocation(line: 116, column: 19, scope: !75)
!79 = !DILocation(line: 116, column: 16, scope: !75)
!80 = !DILocation(line: 116, column: 11, scope: !75)
!81 = !DILocation(line: 97, column: 11, scope: !16)
!82 = !DILocation(line: 117, column: 6, scope: !75)
!83 = !DILocation(line: 118, column: 24, scope: !72)
!84 = !DILocation(line: 118, column: 14, scope: !72)
!85 = !DILocation(line: 119, column: 13, scope: !72)
!86 = !DILocation(line: 119, column: 18, scope: !72)
!87 = !DILocation(line: 119, column: 15, scope: !72)
!88 = !DILocation(line: 0, scope: !89)
!89 = distinct !DILexicalBlock(scope: !60, file: !1, line: 122, column: 9)
!90 = !DILocation(line: 125, column: 12, scope: !16)
!91 = !DILocation(line: 125, column: 21, scope: !16)
!92 = !DILocation(line: 125, column: 9, scope: !16)
!93 = !DILocation(line: 125, column: 2, scope: !16)
!94 = !DILocation(line: 0, scope: !16)
!95 = !DILocation(line: 126, column: 1, scope: !16)
