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
  %9 = trunc i64 %6 to i11, !dbg !61
  switch i11 %9, label %26 [
    i11 0, label %10
    i11 -1, label %24
  ], !dbg !61

; <label>:10:                                     ; preds = %2
  %11 = trunc i64 %3 to i32, !dbg !57
  %12 = and i32 %5, 2147483647, !dbg !63
  %13 = or i32 %12, %11, !dbg !65
  %14 = icmp eq i32 %13, 0, !dbg !66
  br i1 %14, label %72, label %15, !dbg !67

; <label>:15:                                     ; preds = %10
  %16 = fmul double %0, 0x4350000000000000, !dbg !68
  %17 = bitcast double %16 to i64, !dbg !69
  %18 = lshr i64 %17, 32, !dbg !69
  %19 = trunc i64 %18 to i32, !dbg !69
  %20 = lshr i64 %17, 52, !dbg !70
  %21 = trunc i64 %20 to i32, !dbg !70
  %22 = and i32 %21, 2047, !dbg !70
  %23 = add nsw i32 %22, -54, !dbg !71
  br label %26, !dbg !72

; <label>:24:                                     ; preds = %2
  %25 = fadd double %0, %0, !dbg !73
  br label %72, !dbg !75

; <label>:26:                                     ; preds = %2, %15
  %27 = phi double [ %16, %15 ], [ %0, %2 ]
  %28 = phi i32 [ %23, %15 ], [ %8, %2 ]
  %29 = phi i32 [ %19, %15 ], [ %5, %2 ]
  %30 = trunc i64 %1 to i32, !dbg !76
  %31 = add i32 %28, %30, !dbg !76
  %32 = icmp sgt i64 %1, 50000, !dbg !77
  %33 = icmp sgt i32 %31, 2046, !dbg !79
  %34 = or i1 %32, %33, !dbg !80
  br i1 %34, label %35, label %38, !dbg !80

; <label>:35:                                     ; preds = %26
  %36 = tail call double @copysign(double 1.000000e+300, double %27) #3, !dbg !81
  %37 = fmul double %36, 1.000000e+300, !dbg !82
  br label %72, !dbg !83

; <label>:38:                                     ; preds = %26
  %39 = icmp slt i64 %1, -50000, !dbg !84
  br i1 %39, label %40, label %43, !dbg !86

; <label>:40:                                     ; preds = %38
  %41 = tail call double @copysign(double 1.000000e-300, double %27) #3, !dbg !87
  %42 = fmul double %41, 1.000000e-300, !dbg !88
  br label %72, !dbg !89

; <label>:43:                                     ; preds = %38
  %44 = icmp sgt i32 %31, 0, !dbg !90
  br i1 %44, label %45, label %55, !dbg !91

; <label>:45:                                     ; preds = %43
  %46 = and i32 %29, -2146435073, !dbg !92
  %47 = shl i32 %31, 20, !dbg !92
  %48 = or i32 %46, %47, !dbg !92
  %49 = bitcast double %27 to i64, !dbg !92
  %50 = zext i32 %48 to i64, !dbg !92
  %51 = shl nuw i64 %50, 32, !dbg !92
  %52 = and i64 %49, 4294967295, !dbg !92
  %53 = or i64 %51, %52, !dbg !92
  %54 = bitcast i64 %53 to double, !dbg !92
  br label %72, !dbg !93

; <label>:55:                                     ; preds = %43
  %56 = icmp slt i32 %31, -53, !dbg !94
  br i1 %56, label %57, label %60, !dbg !96

; <label>:57:                                     ; preds = %55
  %58 = tail call double @copysign(double 1.000000e-300, double %27) #3, !dbg !97
  %59 = fmul double %58, 1.000000e-300, !dbg !98
  br label %72, !dbg !99

; <label>:60:                                     ; preds = %55
  %61 = and i32 %29, -2146435073, !dbg !100
  %62 = shl i32 %31, 20, !dbg !100
  %63 = add i32 %62, 56623104, !dbg !100
  %64 = or i32 %63, %61, !dbg !100
  %65 = bitcast double %27 to i64, !dbg !100
  %66 = zext i32 %64 to i64, !dbg !100
  %67 = shl nuw i64 %66, 32, !dbg !100
  %68 = and i64 %65, 4294967295, !dbg !100
  %69 = or i64 %67, %68, !dbg !100
  %70 = bitcast i64 %69 to double, !dbg !100
  %71 = fmul double %70, 0x3C90000000000000, !dbg !101
  br label %72, !dbg !102

; <label>:72:                                     ; preds = %10, %60, %57, %45, %40, %35, %24
  %73 = phi double [ %25, %24 ], [ %37, %35 ], [ %42, %40 ], [ %54, %45 ], [ %59, %57 ], [ %71, %60 ], [ %0, %10 ], !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  ret double %73, !dbg !104
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
!61 = !DILocation(line: 44, column: 13, scope: !18)
!62 = !DILocation(line: 41, column: 17, scope: !18)
!63 = !DILocation(line: 45, column: 24, scope: !64)
!64 = distinct !DILexicalBlock(scope: !47, file: !1, line: 45, column: 17)
!65 = !DILocation(line: 45, column: 20, scope: !64)
!66 = !DILocation(line: 45, column: 37, scope: !64)
!67 = !DILocation(line: 45, column: 17, scope: !47)
!68 = !DILocation(line: 46, column: 8, scope: !47)
!69 = !DILocation(line: 47, column: 6, scope: !46)
!70 = !DILocation(line: 48, column: 26, scope: !47)
!71 = !DILocation(line: 48, column: 32, scope: !47)
!72 = !DILocation(line: 50, column: 13, scope: !18)
!73 = !DILocation(line: 50, column: 31, scope: !74)
!74 = distinct !DILexicalBlock(scope: !18, file: !1, line: 50, column: 13)
!75 = !DILocation(line: 50, column: 23, scope: !74)
!76 = !DILocation(line: 51, column: 13, scope: !18)
!77 = !DILocation(line: 52, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 13)
!79 = !DILocation(line: 52, column: 27, scope: !78)
!80 = !DILocation(line: 52, column: 22, scope: !78)
!81 = !DILocation(line: 53, column: 16, scope: !78)
!82 = !DILocation(line: 53, column: 15, scope: !78)
!83 = !DILocation(line: 53, column: 4, scope: !78)
!84 = !DILocation(line: 54, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !18, file: !1, line: 54, column: 6)
!86 = !DILocation(line: 54, column: 6, scope: !18)
!87 = !DILocation(line: 54, column: 29, scope: !85)
!88 = !DILocation(line: 54, column: 28, scope: !85)
!89 = !DILocation(line: 54, column: 17, scope: !85)
!90 = !DILocation(line: 55, column: 15, scope: !52)
!91 = !DILocation(line: 55, column: 13, scope: !18)
!92 = !DILocation(line: 56, column: 7, scope: !50)
!93 = !DILocation(line: 56, column: 49, scope: !51)
!94 = !DILocation(line: 57, column: 15, scope: !95)
!95 = distinct !DILexicalBlock(scope: !18, file: !1, line: 57, column: 13)
!96 = !DILocation(line: 57, column: 13, scope: !18)
!97 = !DILocation(line: 58, column: 16, scope: !95)
!98 = !DILocation(line: 58, column: 15, scope: !95)
!99 = !DILocation(line: 58, column: 4, scope: !95)
!100 = !DILocation(line: 60, column: 2, scope: !54)
!101 = !DILocation(line: 61, column: 17, scope: !18)
!102 = !DILocation(line: 61, column: 9, scope: !18)
!103 = !DILocation(line: 0, scope: !18)
!104 = !DILocation(line: 62, column: 1, scope: !18)
