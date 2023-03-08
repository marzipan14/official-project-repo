; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbln.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbln.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @scalbln(double, i64) local_unnamed_addr #0 !dbg !18 {
  %3 = bitcast double %0 to i64, !dbg !57
  %4 = lshr i64 %3, 32, !dbg !57
  %5 = trunc i64 %4 to i32, !dbg !57
  %6 = lshr i64 %3, 52, !dbg !59
  %7 = trunc i64 %6 to i32, !dbg !59
  %8 = and i32 %7, 2047, !dbg !59
  %9 = icmp eq i32 %8, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %9, label %10, label %24, !dbg !62

; <label>:10:                                     ; preds = %2
  %11 = trunc i64 %3 to i32, !dbg !57
  %12 = and i32 %5, 2147483647, !dbg !64
  %13 = or i32 %12, %11, !dbg !66
  %14 = icmp eq i32 %13, 0, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %14, label %74, label %15, !dbg !68

; <label>:15:                                     ; preds = %10
  %16 = fmul double %0, 0x4350000000000000, !dbg !69
  %17 = bitcast double %16 to i64, !dbg !70
  %18 = lshr i64 %17, 32, !dbg !70
  %19 = trunc i64 %18 to i32, !dbg !70
  %20 = lshr i64 %17, 52, !dbg !71
  %21 = trunc i64 %20 to i32, !dbg !71
  %22 = and i32 %21, 2047, !dbg !71
  %23 = add nsw i32 %22, -54, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br label %28, !dbg !74

; <label>:24:                                     ; preds = %2
  %25 = icmp eq i32 %8, 2047, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %25, label %26, label %28, !dbg !74

; <label>:26:                                     ; preds = %24
  %27 = fadd double %0, %0, !dbg !77
  br label %74, !dbg !78

; <label>:28:                                     ; preds = %15, %24
  %29 = phi double [ %16, %15 ], [ %0, %24 ]
  %30 = phi i32 [ %23, %15 ], [ %8, %24 ]
  %31 = phi i32 [ %19, %15 ], [ %5, %24 ]
  %32 = trunc i64 %1 to i32, !dbg !79
  %33 = add i32 %30, %32, !dbg !79
  %34 = icmp sgt i64 %1, 50000, !dbg !80
  %35 = icmp sgt i32 %33, 2046, !dbg !82
  %36 = or i1 %34, %35, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %36, label %37, label %40, !dbg !83

; <label>:37:                                     ; preds = %28
  %38 = tail call double @copysign(double 1.000000e+300, double %29) #3, !dbg !84
  %39 = fmul double %38, 1.000000e+300, !dbg !85
  br label %74, !dbg !86

; <label>:40:                                     ; preds = %28
  %41 = icmp slt i64 %1, -50000, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %41, label %42, label %45, !dbg !89

; <label>:42:                                     ; preds = %40
  %43 = tail call double @copysign(double 1.000000e-300, double %29) #3, !dbg !90
  %44 = fmul double %43, 1.000000e-300, !dbg !91
  br label %74, !dbg !92

; <label>:45:                                     ; preds = %40
  %46 = icmp sgt i32 %33, 0, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %46, label %47, label %57, !dbg !94

; <label>:47:                                     ; preds = %45
  %48 = and i32 %31, -2146435073, !dbg !95
  %49 = shl i32 %33, 20, !dbg !95
  %50 = or i32 %48, %49, !dbg !95
  %51 = bitcast double %29 to i64, !dbg !95
  %52 = zext i32 %50 to i64, !dbg !95
  %53 = shl nuw i64 %52, 32, !dbg !95
  %54 = and i64 %51, 4294967295, !dbg !95
  %55 = or i64 %53, %54, !dbg !95
  %56 = bitcast i64 %55 to double, !dbg !95
  br label %74, !dbg !96

; <label>:57:                                     ; preds = %45
  %58 = icmp slt i32 %33, -53, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %58, label %59, label %62, !dbg !99

; <label>:59:                                     ; preds = %57
  %60 = tail call double @copysign(double 1.000000e-300, double %29) #3, !dbg !100
  %61 = fmul double %60, 1.000000e-300, !dbg !101
  br label %74, !dbg !102

; <label>:62:                                     ; preds = %57
  %63 = and i32 %31, -2146435073, !dbg !103
  %64 = shl i32 %33, 20, !dbg !103
  %65 = add i32 %64, 56623104, !dbg !103
  %66 = or i32 %65, %63, !dbg !103
  %67 = bitcast double %29 to i64, !dbg !103
  %68 = zext i32 %66 to i64, !dbg !103
  %69 = shl nuw i64 %68, 32, !dbg !103
  %70 = and i64 %67, 4294967295, !dbg !103
  %71 = or i64 %69, %70, !dbg !103
  %72 = bitcast i64 %71 to double, !dbg !103
  %73 = fmul double %72, 0x3C90000000000000, !dbg !104
  br label %74, !dbg !105

; <label>:74:                                     ; preds = %10, %62, %59, %47, %42, %37, %26
  %75 = phi double [ %27, %26 ], [ %39, %37 ], [ %44, %42 ], [ %56, %47 ], [ %61, %59 ], [ %73, %62 ], [ %0, %10 ], !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  ret double %75, !dbg !108
}

; Function Attrs: noredzone
declare dso_local double @copysign(double, double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbln.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 29, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 31, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 32, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4363988038922010624, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "twom54", scope: !0, file: !1, line: 30, type: !6, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "scalbln", scope: !1, file: !1, line: 35, type: !19, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !7, !21}
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !29, !30, !31, !45, !49, !53}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 35, type: !7)
!24 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !1, line: 35, type: !21)
!25 = !DILocalVariable(name: "k", scope: !18, file: !1, line: 41, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 77, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(name: "hx", scope: !18, file: !1, line: 41, type: !26)
!30 = !DILocalVariable(name: "lx", scope: !18, file: !1, line: 41, type: !26)
!31 = !DILocalVariable(name: "ew_u", scope: !32, file: !1, line: 42, type: !33)
!32 = distinct !DILexicalBlock(scope: !18, file: !1, line: 42, column: 2)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !34, line: 278, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !34, line: 270, size: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !35, file: !34, line: 272, baseType: !7, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !35, file: !34, line: 277, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !34, line: 273, size: 64, elements: !40)
!40 = !{!41, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !39, file: !34, line: 275, baseType: !42, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 79, baseType: !43)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !39, file: !34, line: 276, baseType: !42, size: 32, offset: 32)
!45 = !DILocalVariable(name: "gh_u", scope: !46, file: !1, line: 47, type: !33)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 47, column: 6)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 44, column: 19)
!48 = distinct !DILexicalBlock(scope: !18, file: !1, line: 44, column: 13)
!49 = !DILocalVariable(name: "sh_u", scope: !50, file: !1, line: 56, type: !33)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 56, column: 7)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 56, column: 6)
!52 = distinct !DILexicalBlock(scope: !18, file: !1, line: 55, column: 13)
!53 = !DILocalVariable(name: "sh_u", scope: !54, file: !1, line: 60, type: !33)
!54 = distinct !DILexicalBlock(scope: !18, file: !1, line: 60, column: 2)
!55 = !DILocation(line: 35, column: 25, scope: !18)
!56 = !DILocation(line: 35, column: 37, scope: !18)
!57 = !DILocation(line: 42, column: 2, scope: !32)
!58 = !DILocation(line: 41, column: 14, scope: !18)
!59 = !DILocation(line: 43, column: 28, scope: !18)
!60 = !DILocation(line: 41, column: 12, scope: !18)
!61 = !DILocation(line: 44, column: 14, scope: !48)
!62 = !DILocation(line: 44, column: 13, scope: !18)
!63 = !DILocation(line: 41, column: 17, scope: !18)
!64 = !DILocation(line: 45, column: 24, scope: !65)
!65 = distinct !DILexicalBlock(scope: !47, file: !1, line: 45, column: 17)
!66 = !DILocation(line: 45, column: 20, scope: !65)
!67 = !DILocation(line: 45, column: 37, scope: !65)
!68 = !DILocation(line: 45, column: 17, scope: !47)
!69 = !DILocation(line: 46, column: 8, scope: !47)
!70 = !DILocation(line: 47, column: 6, scope: !46)
!71 = !DILocation(line: 48, column: 26, scope: !47)
!72 = !DILocation(line: 48, column: 32, scope: !47)
!73 = !DILocation(line: 49, column: 6, scope: !47)
!74 = !DILocation(line: 50, column: 13, scope: !18)
!75 = !DILocation(line: 50, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !18, file: !1, line: 50, column: 13)
!77 = !DILocation(line: 50, column: 31, scope: !76)
!78 = !DILocation(line: 50, column: 23, scope: !76)
!79 = !DILocation(line: 51, column: 13, scope: !18)
!80 = !DILocation(line: 52, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 13)
!82 = !DILocation(line: 52, column: 27, scope: !81)
!83 = !DILocation(line: 52, column: 22, scope: !81)
!84 = !DILocation(line: 53, column: 16, scope: !81)
!85 = !DILocation(line: 53, column: 15, scope: !81)
!86 = !DILocation(line: 53, column: 4, scope: !81)
!87 = !DILocation(line: 54, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !18, file: !1, line: 54, column: 6)
!89 = !DILocation(line: 54, column: 6, scope: !18)
!90 = !DILocation(line: 54, column: 29, scope: !88)
!91 = !DILocation(line: 54, column: 28, scope: !88)
!92 = !DILocation(line: 54, column: 17, scope: !88)
!93 = !DILocation(line: 55, column: 15, scope: !52)
!94 = !DILocation(line: 55, column: 13, scope: !18)
!95 = !DILocation(line: 56, column: 7, scope: !50)
!96 = !DILocation(line: 56, column: 49, scope: !51)
!97 = !DILocation(line: 57, column: 15, scope: !98)
!98 = distinct !DILexicalBlock(scope: !18, file: !1, line: 57, column: 13)
!99 = !DILocation(line: 57, column: 13, scope: !18)
!100 = !DILocation(line: 58, column: 16, scope: !98)
!101 = !DILocation(line: 58, column: 15, scope: !98)
!102 = !DILocation(line: 58, column: 4, scope: !98)
!103 = !DILocation(line: 60, column: 2, scope: !54)
!104 = !DILocation(line: 61, column: 17, scope: !18)
!105 = !DILocation(line: 61, column: 9, scope: !18)
!106 = !DILocation(line: 0, scope: !18)
!107 = !DILocation(line: 0, scope: !65)
!108 = !DILocation(line: 62, column: 1, scope: !18)
