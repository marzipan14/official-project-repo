; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @scalbn(double, i32) local_unnamed_addr #0 !dbg !18 {
  %3 = bitcast double %0 to i64, !dbg !56
  %4 = lshr i64 %3, 32, !dbg !56
  %5 = trunc i64 %4 to i32, !dbg !56
  %6 = lshr i64 %3, 52, !dbg !58
  %7 = trunc i64 %6 to i32, !dbg !58
  %8 = and i32 %7, 2047, !dbg !58
  %9 = icmp eq i32 %8, 0, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %9, label %10, label %28, !dbg !61

; <label>:10:                                     ; preds = %2
  %11 = trunc i64 %3 to i32, !dbg !56
  %12 = and i32 %5, 2147483647, !dbg !63
  %13 = or i32 %12, %11, !dbg !65
  %14 = icmp eq i32 %13, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %14, label %75, label %15, !dbg !67

; <label>:15:                                     ; preds = %10
  %16 = fmul double %0, 0x4350000000000000, !dbg !68
  %17 = bitcast double %16 to i64, !dbg !69
  %18 = icmp slt i32 %1, -50000, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br i1 %18, label %26, label %19, !dbg !72

; <label>:19:                                     ; preds = %15
  %20 = lshr i64 %17, 52, !dbg !73
  %21 = trunc i64 %20 to i32, !dbg !73
  %22 = and i32 %21, 2047, !dbg !73
  %23 = add nsw i32 %22, -54, !dbg !74
  %24 = lshr i64 %17, 32, !dbg !69
  %25 = trunc i64 %24 to i32, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br label %32, !dbg !75

; <label>:26:                                     ; preds = %15
  %27 = fmul double %16, 1.000000e-300, !dbg !76
  br label %75, !dbg !77

; <label>:28:                                     ; preds = %2
  %29 = icmp eq i32 %8, 2047, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %29, label %30, label %32, !dbg !75

; <label>:30:                                     ; preds = %28
  %31 = fadd double %0, %0, !dbg !80
  br label %75, !dbg !81

; <label>:32:                                     ; preds = %19, %28
  %33 = phi double [ %16, %19 ], [ %0, %28 ]
  %34 = phi i32 [ %23, %19 ], [ %8, %28 ]
  %35 = phi i32 [ %25, %19 ], [ %5, %28 ]
  %36 = add nsw i32 %34, %1, !dbg !82
  %37 = icmp sgt i32 %36, 2046, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %37, label %38, label %41, !dbg !85

; <label>:38:                                     ; preds = %32
  %39 = tail call double @copysign(double 1.000000e+300, double %33) #3, !dbg !86
  %40 = fmul double %39, 1.000000e+300, !dbg !87
  br label %75, !dbg !88

; <label>:41:                                     ; preds = %32
  %42 = icmp sgt i32 %36, 0, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br i1 %42, label %43, label %53, !dbg !90

; <label>:43:                                     ; preds = %41
  %44 = and i32 %35, -2146435073, !dbg !91
  %45 = shl i32 %36, 20, !dbg !91
  %46 = or i32 %44, %45, !dbg !91
  %47 = bitcast double %33 to i64, !dbg !91
  %48 = zext i32 %46 to i64, !dbg !91
  %49 = shl nuw i64 %48, 32, !dbg !91
  %50 = and i64 %47, 4294967295, !dbg !91
  %51 = or i64 %49, %50, !dbg !91
  %52 = bitcast i64 %51 to double, !dbg !91
  br label %75, !dbg !92

; <label>:53:                                     ; preds = %41
  %54 = icmp slt i32 %36, -53, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %54, label %55, label %63, !dbg !95

; <label>:55:                                     ; preds = %53
  %56 = icmp sgt i32 %1, 50000, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %56, label %57, label %60, !dbg !99

; <label>:57:                                     ; preds = %55
  %58 = tail call double @copysign(double 1.000000e+300, double %33) #3, !dbg !100
  %59 = fmul double %58, 1.000000e+300, !dbg !101
  br label %75, !dbg !102

; <label>:60:                                     ; preds = %55
  %61 = tail call double @copysign(double 1.000000e-300, double %33) #3, !dbg !103
  %62 = fmul double %61, 1.000000e-300, !dbg !104
  br label %75, !dbg !105

; <label>:63:                                     ; preds = %53
  %64 = and i32 %35, -2146435073, !dbg !106
  %65 = shl i32 %36, 20, !dbg !106
  %66 = add i32 %65, 56623104, !dbg !106
  %67 = or i32 %66, %64, !dbg !106
  %68 = bitcast double %33 to i64, !dbg !106
  %69 = zext i32 %67 to i64, !dbg !106
  %70 = shl nuw i64 %69, 32, !dbg !106
  %71 = and i64 %68, 4294967295, !dbg !106
  %72 = or i64 %70, %71, !dbg !106
  %73 = bitcast i64 %72 to double, !dbg !106
  %74 = fmul double %73, 0x3C90000000000000, !dbg !107
  br label %75, !dbg !108

; <label>:75:                                     ; preds = %10, %63, %60, %57, %43, %38, %30, %26
  %76 = phi double [ %27, %26 ], [ %31, %30 ], [ %40, %38 ], [ %52, %43 ], [ %59, %57 ], [ %62, %60 ], [ %74, %63 ], [ %0, %10 ], !dbg !109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  ret double %76, !dbg !111
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_scalbn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 73, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 118622047889322841, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 76, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 75, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 4363988038922010624, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "twom54", scope: !0, file: !1, line: 74, type: !6, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "scalbn", scope: !1, file: !1, line: 79, type: !19, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !7, !21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !28, !29, !30, !44, !48, !52}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 79, type: !7)
!24 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !1, line: 79, type: !21)
!25 = !DILocalVariable(name: "k", scope: !18, file: !1, line: 85, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 77, baseType: !21)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DILocalVariable(name: "hx", scope: !18, file: !1, line: 85, type: !26)
!29 = !DILocalVariable(name: "lx", scope: !18, file: !1, line: 85, type: !26)
!30 = !DILocalVariable(name: "ew_u", scope: !31, file: !1, line: 86, type: !32)
!31 = distinct !DILexicalBlock(scope: !18, file: !1, line: 86, column: 2)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !33, line: 278, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 270, size: 64, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !33, line: 272, baseType: !7, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !34, file: !33, line: 277, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !33, line: 273, size: 64, elements: !39)
!39 = !{!40, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !38, file: !33, line: 275, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 79, baseType: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !38, file: !33, line: 276, baseType: !41, size: 32, offset: 32)
!44 = !DILocalVariable(name: "gh_u", scope: !45, file: !1, line: 91, type: !32)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 91, column: 6)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 88, column: 19)
!47 = distinct !DILexicalBlock(scope: !18, file: !1, line: 88, column: 13)
!48 = !DILocalVariable(name: "sh_u", scope: !49, file: !1, line: 99, type: !32)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 99, column: 7)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 99, column: 6)
!51 = distinct !DILexicalBlock(scope: !18, file: !1, line: 98, column: 13)
!52 = !DILocalVariable(name: "sh_u", scope: !53, file: !1, line: 106, type: !32)
!53 = distinct !DILexicalBlock(scope: !18, file: !1, line: 106, column: 2)
!54 = !DILocation(line: 79, column: 24, scope: !18)
!55 = !DILocation(line: 79, column: 31, scope: !18)
!56 = !DILocation(line: 86, column: 2, scope: !31)
!57 = !DILocation(line: 85, column: 15, scope: !18)
!58 = !DILocation(line: 87, column: 28, scope: !18)
!59 = !DILocation(line: 85, column: 13, scope: !18)
!60 = !DILocation(line: 88, column: 14, scope: !47)
!61 = !DILocation(line: 88, column: 13, scope: !18)
!62 = !DILocation(line: 85, column: 18, scope: !18)
!63 = !DILocation(line: 89, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !46, file: !1, line: 89, column: 17)
!65 = !DILocation(line: 89, column: 20, scope: !64)
!66 = !DILocation(line: 89, column: 37, scope: !64)
!67 = !DILocation(line: 89, column: 17, scope: !46)
!68 = !DILocation(line: 90, column: 8, scope: !46)
!69 = !DILocation(line: 91, column: 6, scope: !45)
!70 = !DILocation(line: 93, column: 18, scope: !71)
!71 = distinct !DILexicalBlock(scope: !46, file: !1, line: 93, column: 17)
!72 = !DILocation(line: 93, column: 17, scope: !46)
!73 = !DILocation(line: 92, column: 26, scope: !46)
!74 = !DILocation(line: 92, column: 32, scope: !46)
!75 = !DILocation(line: 95, column: 13, scope: !18)
!76 = !DILocation(line: 93, column: 39, scope: !71)
!77 = !DILocation(line: 93, column: 28, scope: !71)
!78 = !DILocation(line: 95, column: 14, scope: !79)
!79 = distinct !DILexicalBlock(scope: !18, file: !1, line: 95, column: 13)
!80 = !DILocation(line: 95, column: 31, scope: !79)
!81 = !DILocation(line: 95, column: 23, scope: !79)
!82 = !DILocation(line: 96, column: 14, scope: !18)
!83 = !DILocation(line: 97, column: 15, scope: !84)
!84 = distinct !DILexicalBlock(scope: !18, file: !1, line: 97, column: 13)
!85 = !DILocation(line: 97, column: 13, scope: !18)
!86 = !DILocation(line: 97, column: 37, scope: !84)
!87 = !DILocation(line: 97, column: 36, scope: !84)
!88 = !DILocation(line: 97, column: 25, scope: !84)
!89 = !DILocation(line: 98, column: 15, scope: !51)
!90 = !DILocation(line: 98, column: 13, scope: !18)
!91 = !DILocation(line: 99, column: 7, scope: !49)
!92 = !DILocation(line: 99, column: 49, scope: !50)
!93 = !DILocation(line: 100, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !18, file: !1, line: 100, column: 13)
!95 = !DILocation(line: 100, column: 13, scope: !18)
!96 = !DILocation(line: 101, column: 19, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 101, column: 17)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 100, column: 23)
!99 = !DILocation(line: 101, column: 17, scope: !98)
!100 = !DILocation(line: 102, column: 15, scope: !97)
!101 = !DILocation(line: 102, column: 14, scope: !97)
!102 = !DILocation(line: 102, column: 3, scope: !97)
!103 = !DILocation(line: 103, column: 23, scope: !97)
!104 = !DILocation(line: 103, column: 22, scope: !97)
!105 = !DILocation(line: 103, column: 11, scope: !97)
!106 = !DILocation(line: 106, column: 2, scope: !53)
!107 = !DILocation(line: 107, column: 17, scope: !18)
!108 = !DILocation(line: 107, column: 9, scope: !18)
!109 = !DILocation(line: 0, scope: !18)
!110 = !DILocation(line: 0, scope: !64)
!111 = !DILocation(line: 108, column: 1, scope: !18)
