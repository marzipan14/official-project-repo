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
  %9 = trunc i64 %6 to i11, !dbg !60
  switch i11 %9, label %29 [
    i11 0, label %10
    i11 -1, label %27
  ], !dbg !60

; <label>:10:                                     ; preds = %2
  %11 = trunc i64 %3 to i32, !dbg !56
  %12 = and i32 %5, 2147483647, !dbg !62
  %13 = or i32 %12, %11, !dbg !64
  %14 = icmp eq i32 %13, 0, !dbg !65
  br i1 %14, label %72, label %15, !dbg !66

; <label>:15:                                     ; preds = %10
  %16 = fmul double %0, 0x4350000000000000, !dbg !67
  %17 = bitcast double %16 to i64, !dbg !68
  %18 = lshr i64 %17, 32, !dbg !68
  %19 = trunc i64 %18 to i32, !dbg !68
  %20 = lshr i64 %17, 52, !dbg !69
  %21 = trunc i64 %20 to i32, !dbg !69
  %22 = and i32 %21, 2047, !dbg !69
  %23 = add nsw i32 %22, -54, !dbg !70
  %24 = icmp slt i32 %1, -50000, !dbg !71
  br i1 %24, label %25, label %29, !dbg !73

; <label>:25:                                     ; preds = %15
  %26 = fmul double %16, 1.000000e-300, !dbg !74
  br label %72, !dbg !75

; <label>:27:                                     ; preds = %2
  %28 = fadd double %0, %0, !dbg !76
  br label %72, !dbg !78

; <label>:29:                                     ; preds = %2, %15
  %30 = phi double [ %16, %15 ], [ %0, %2 ]
  %31 = phi i32 [ %23, %15 ], [ %8, %2 ]
  %32 = phi i32 [ %19, %15 ], [ %5, %2 ]
  %33 = add nsw i32 %31, %1, !dbg !79
  %34 = icmp sgt i32 %33, 2046, !dbg !80
  br i1 %34, label %35, label %38, !dbg !82

; <label>:35:                                     ; preds = %29
  %36 = tail call double @copysign(double 1.000000e+300, double %30) #3, !dbg !83
  %37 = fmul double %36, 1.000000e+300, !dbg !84
  br label %72, !dbg !85

; <label>:38:                                     ; preds = %29
  %39 = icmp sgt i32 %33, 0, !dbg !86
  br i1 %39, label %40, label %50, !dbg !87

; <label>:40:                                     ; preds = %38
  %41 = and i32 %32, -2146435073, !dbg !88
  %42 = shl i32 %33, 20, !dbg !88
  %43 = or i32 %41, %42, !dbg !88
  %44 = bitcast double %30 to i64, !dbg !88
  %45 = zext i32 %43 to i64, !dbg !88
  %46 = shl nuw i64 %45, 32, !dbg !88
  %47 = and i64 %44, 4294967295, !dbg !88
  %48 = or i64 %46, %47, !dbg !88
  %49 = bitcast i64 %48 to double, !dbg !88
  br label %72, !dbg !89

; <label>:50:                                     ; preds = %38
  %51 = icmp slt i32 %33, -53, !dbg !90
  br i1 %51, label %52, label %60, !dbg !92

; <label>:52:                                     ; preds = %50
  %53 = icmp sgt i32 %1, 50000, !dbg !93
  br i1 %53, label %54, label %57, !dbg !96

; <label>:54:                                     ; preds = %52
  %55 = tail call double @copysign(double 1.000000e+300, double %30) #3, !dbg !97
  %56 = fmul double %55, 1.000000e+300, !dbg !98
  br label %72, !dbg !99

; <label>:57:                                     ; preds = %52
  %58 = tail call double @copysign(double 1.000000e-300, double %30) #3, !dbg !100
  %59 = fmul double %58, 1.000000e-300, !dbg !101
  br label %72, !dbg !102

; <label>:60:                                     ; preds = %50
  %61 = and i32 %32, -2146435073, !dbg !103
  %62 = shl i32 %33, 20, !dbg !103
  %63 = add i32 %62, 56623104, !dbg !103
  %64 = or i32 %63, %61, !dbg !103
  %65 = bitcast double %30 to i64, !dbg !103
  %66 = zext i32 %64 to i64, !dbg !103
  %67 = shl nuw i64 %66, 32, !dbg !103
  %68 = and i64 %65, 4294967295, !dbg !103
  %69 = or i64 %67, %68, !dbg !103
  %70 = bitcast i64 %69 to double, !dbg !103
  %71 = fmul double %70, 0x3C90000000000000, !dbg !104
  br label %72, !dbg !105

; <label>:72:                                     ; preds = %10, %60, %57, %54, %40, %35, %27, %25
  %73 = phi double [ %26, %25 ], [ %28, %27 ], [ %37, %35 ], [ %49, %40 ], [ %56, %54 ], [ %59, %57 ], [ %71, %60 ], [ %0, %10 ], !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  ret double %73, !dbg !107
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
!60 = !DILocation(line: 88, column: 13, scope: !18)
!61 = !DILocation(line: 85, column: 18, scope: !18)
!62 = !DILocation(line: 89, column: 24, scope: !63)
!63 = distinct !DILexicalBlock(scope: !46, file: !1, line: 89, column: 17)
!64 = !DILocation(line: 89, column: 20, scope: !63)
!65 = !DILocation(line: 89, column: 37, scope: !63)
!66 = !DILocation(line: 89, column: 17, scope: !46)
!67 = !DILocation(line: 90, column: 8, scope: !46)
!68 = !DILocation(line: 91, column: 6, scope: !45)
!69 = !DILocation(line: 92, column: 26, scope: !46)
!70 = !DILocation(line: 92, column: 32, scope: !46)
!71 = !DILocation(line: 93, column: 18, scope: !72)
!72 = distinct !DILexicalBlock(scope: !46, file: !1, line: 93, column: 17)
!73 = !DILocation(line: 93, column: 17, scope: !46)
!74 = !DILocation(line: 93, column: 39, scope: !72)
!75 = !DILocation(line: 93, column: 28, scope: !72)
!76 = !DILocation(line: 95, column: 31, scope: !77)
!77 = distinct !DILexicalBlock(scope: !18, file: !1, line: 95, column: 13)
!78 = !DILocation(line: 95, column: 23, scope: !77)
!79 = !DILocation(line: 96, column: 14, scope: !18)
!80 = !DILocation(line: 97, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !1, line: 97, column: 13)
!82 = !DILocation(line: 97, column: 13, scope: !18)
!83 = !DILocation(line: 97, column: 37, scope: !81)
!84 = !DILocation(line: 97, column: 36, scope: !81)
!85 = !DILocation(line: 97, column: 25, scope: !81)
!86 = !DILocation(line: 98, column: 15, scope: !51)
!87 = !DILocation(line: 98, column: 13, scope: !18)
!88 = !DILocation(line: 99, column: 7, scope: !49)
!89 = !DILocation(line: 99, column: 49, scope: !50)
!90 = !DILocation(line: 100, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !18, file: !1, line: 100, column: 13)
!92 = !DILocation(line: 100, column: 13, scope: !18)
!93 = !DILocation(line: 101, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 101, column: 17)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 100, column: 23)
!96 = !DILocation(line: 101, column: 17, scope: !95)
!97 = !DILocation(line: 102, column: 15, scope: !94)
!98 = !DILocation(line: 102, column: 14, scope: !94)
!99 = !DILocation(line: 102, column: 3, scope: !94)
!100 = !DILocation(line: 103, column: 23, scope: !94)
!101 = !DILocation(line: 103, column: 22, scope: !94)
!102 = !DILocation(line: 103, column: 11, scope: !94)
!103 = !DILocation(line: 106, column: 2, scope: !53)
!104 = !DILocation(line: 107, column: 17, scope: !18)
!105 = !DILocation(line: 107, column: 9, scope: !18)
!106 = !DILocation(line: 0, scope: !18)
!107 = !DILocation(line: 108, column: 1, scope: !18)
