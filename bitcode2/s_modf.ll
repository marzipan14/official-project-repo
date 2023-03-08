; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_modf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_modf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @modf(double, double* nocapture) local_unnamed_addr #0 !dbg !16 {
  %3 = bitcast double %0 to i64, !dbg !78
  %4 = lshr i64 %3, 32, !dbg !78
  %5 = trunc i64 %4 to i32, !dbg !78
  %6 = trunc i64 %3 to i32, !dbg !78
  %7 = lshr i64 %3, 52, !dbg !81
  %8 = trunc i64 %7 to i32, !dbg !81
  %9 = and i32 %8, 2047, !dbg !82
  %10 = add nsw i32 %9, -1023, !dbg !83
  %11 = icmp ult i32 %9, 1043, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %11, label %12, label %33, !dbg !86

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i32 %9, 1023, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %13, label %14, label %17, !dbg !88

; <label>:14:                                     ; preds = %12
  %15 = and i64 %3, -9223372036854775808, !dbg !89
  %16 = bitcast double* %1 to i64*, !dbg !89
  store i64 %15, i64* %16, align 8, !dbg !89, !tbaa !90
  br label %55, !dbg !94

; <label>:17:                                     ; preds = %12
  %18 = lshr i32 1048575, %10, !dbg !95
  %19 = and i32 %18, %5, !dbg !97
  %20 = or i32 %19, %6, !dbg !98
  %21 = icmp eq i32 %20, 0, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %21, label %22, label %25, !dbg !100

; <label>:22:                                     ; preds = %17
  store double %0, double* %1, align 8, !dbg !101, !tbaa !90
  %23 = and i64 %3, -9223372036854775808, !dbg !103
  %24 = bitcast i64 %23 to double, !dbg !103
  br label %55

; <label>:25:                                     ; preds = %17
  %26 = ashr i32 -1048576, %10, !dbg !104
  %27 = and i32 %26, %5, !dbg !104
  %28 = zext i32 %27 to i64, !dbg !104
  %29 = shl nuw i64 %28, 32, !dbg !104
  %30 = bitcast i64 %29 to double, !dbg !104
  %31 = bitcast double* %1 to i64*, !dbg !104
  store i64 %29, i64* %31, align 8, !dbg !104, !tbaa !90
  %32 = fsub double %0, %30, !dbg !105
  br label %55, !dbg !106

; <label>:33:                                     ; preds = %2
  %34 = icmp ugt i32 %9, 1074, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br i1 %34, label %35, label %38, !dbg !108

; <label>:35:                                     ; preds = %33
  store double %0, double* %1, align 8, !dbg !109, !tbaa !90
  %36 = and i64 %3, -9223372036854775808, !dbg !111
  %37 = bitcast i64 %36 to double, !dbg !111
  br label %55

; <label>:38:                                     ; preds = %33
  %39 = add nsw i32 %9, -1043, !dbg !112
  %40 = lshr i32 -1, %39, !dbg !113
  %41 = and i32 %40, %6, !dbg !114
  %42 = icmp eq i32 %41, 0, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %42, label %43, label %46, !dbg !116

; <label>:43:                                     ; preds = %38
  store double %0, double* %1, align 8, !dbg !117, !tbaa !90
  %44 = and i64 %3, -9223372036854775808, !dbg !119
  %45 = bitcast i64 %44 to double, !dbg !119
  br label %55

; <label>:46:                                     ; preds = %38
  %47 = and i64 %3, -4294967296, !dbg !120
  %48 = xor i32 %40, -1, !dbg !120
  %49 = and i32 %48, %6, !dbg !120
  %50 = zext i32 %49 to i64, !dbg !120
  %51 = or i64 %47, %50, !dbg !120
  %52 = bitcast i64 %51 to double, !dbg !120
  %53 = bitcast double* %1 to i64*, !dbg !120
  store i64 %51, i64* %53, align 8, !dbg !120, !tbaa !90
  %54 = fsub double %0, %52, !dbg !121
  br label %55, !dbg !122

; <label>:55:                                     ; preds = %46, %43, %35, %25, %22, %14
  %56 = phi double [ %0, %14 ], [ %24, %22 ], [ %32, %25 ], [ %37, %35 ], [ %45, %43 ], [ %54, %46 ], !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  ret double %56, !dbg !124
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !7)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_modf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 77, type: !10, isLocal: true, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "modf", scope: !1, file: !1, line: 83, type: !17, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!11, !11, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!20 = !{!21, !22, !23, !26, !27, !28, !29, !41, !47, !51, !53, !55, !58, !61, !63, !65, !69, !71, !73}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 83, type: !11)
!22 = !DILocalVariable(name: "iptr", arg: 2, scope: !16, file: !1, line: 83, type: !19)
!23 = !DILocalVariable(name: "i0", scope: !16, file: !1, line: 89, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "i1", scope: !16, file: !1, line: 89, type: !24)
!27 = !DILocalVariable(name: "j0", scope: !16, file: !1, line: 89, type: !24)
!28 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 90, type: !4)
!29 = !DILocalVariable(name: "ew_u", scope: !30, file: !1, line: 91, type: !31)
!30 = distinct !DILexicalBlock(scope: !16, file: !1, line: 91, column: 2)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !32, line: 278, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!33 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !32, line: 270, size: 64, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !32, line: 272, baseType: !11, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !33, file: !32, line: 277, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !33, file: !32, line: 273, size: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !37, file: !32, line: 275, baseType: !4, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !37, file: !32, line: 276, baseType: !4, size: 32, offset: 32)
!41 = !DILocalVariable(name: "iw_u", scope: !42, file: !1, line: 95, type: !31)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 95, column: 10)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 94, column: 15)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 94, column: 9)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 93, column: 12)
!46 = distinct !DILexicalBlock(scope: !16, file: !1, line: 93, column: 5)
!47 = !DILocalVariable(name: "high", scope: !48, file: !1, line: 100, type: !4)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 99, column: 22)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 99, column: 6)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 97, column: 13)
!51 = !DILocalVariable(name: "gh_u", scope: !52, file: !1, line: 102, type: !31)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 102, column: 7)
!53 = !DILocalVariable(name: "iw_u", scope: !54, file: !1, line: 103, type: !31)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 103, column: 7)
!55 = !DILocalVariable(name: "iw_u", scope: !56, file: !1, line: 106, type: !31)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 106, column: 7)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 105, column: 10)
!58 = !DILocalVariable(name: "high", scope: !59, file: !1, line: 111, type: !4)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 110, column: 20)
!60 = distinct !DILexicalBlock(scope: !46, file: !1, line: 110, column: 13)
!61 = !DILocalVariable(name: "gh_u", scope: !62, file: !1, line: 113, type: !31)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 113, column: 6)
!63 = !DILocalVariable(name: "iw_u", scope: !64, file: !1, line: 114, type: !31)
!64 = distinct !DILexicalBlock(scope: !59, file: !1, line: 114, column: 6)
!65 = !DILocalVariable(name: "high", scope: !66, file: !1, line: 119, type: !4)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 118, column: 20)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 118, column: 9)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 116, column: 9)
!69 = !DILocalVariable(name: "gh_u", scope: !70, file: !1, line: 121, type: !31)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 121, column: 3)
!71 = !DILocalVariable(name: "iw_u", scope: !72, file: !1, line: 122, type: !31)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 122, column: 3)
!73 = !DILocalVariable(name: "iw_u", scope: !74, file: !1, line: 125, type: !31)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 125, column: 10)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 124, column: 13)
!76 = !DILocation(line: 83, column: 21, scope: !16)
!77 = !DILocation(line: 83, column: 32, scope: !16)
!78 = !DILocation(line: 91, column: 2, scope: !30)
!79 = !DILocation(line: 89, column: 12, scope: !16)
!80 = !DILocation(line: 89, column: 15, scope: !16)
!81 = !DILocation(line: 92, column: 11, scope: !16)
!82 = !DILocation(line: 92, column: 16, scope: !16)
!83 = !DILocation(line: 92, column: 23, scope: !16)
!84 = !DILocation(line: 89, column: 18, scope: !16)
!85 = !DILocation(line: 93, column: 7, scope: !46)
!86 = !DILocation(line: 93, column: 5, scope: !16)
!87 = !DILocation(line: 94, column: 11, scope: !44)
!88 = !DILocation(line: 94, column: 9, scope: !45)
!89 = !DILocation(line: 95, column: 10, scope: !42)
!90 = !{!91, !91, i64 0}
!91 = !{!"double", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !DILocation(line: 96, column: 3, scope: !43)
!95 = !DILocation(line: 98, column: 19, scope: !50)
!96 = !DILocation(line: 90, column: 13, scope: !16)
!97 = !DILocation(line: 99, column: 10, scope: !49)
!98 = !DILocation(line: 99, column: 13, scope: !49)
!99 = !DILocation(line: 99, column: 17, scope: !49)
!100 = !DILocation(line: 99, column: 6, scope: !50)
!101 = !DILocation(line: 101, column: 13, scope: !48)
!102 = !DILocation(line: 100, column: 18, scope: !48)
!103 = !DILocation(line: 103, column: 7, scope: !54)
!104 = !DILocation(line: 106, column: 7, scope: !56)
!105 = !DILocation(line: 107, column: 16, scope: !57)
!106 = !DILocation(line: 107, column: 7, scope: !57)
!107 = !DILocation(line: 110, column: 15, scope: !60)
!108 = !DILocation(line: 110, column: 13, scope: !46)
!109 = !DILocation(line: 112, column: 12, scope: !59)
!110 = !DILocation(line: 111, column: 17, scope: !59)
!111 = !DILocation(line: 114, column: 6, scope: !64)
!112 = !DILocation(line: 117, column: 41, scope: !68)
!113 = !DILocation(line: 117, column: 36, scope: !68)
!114 = !DILocation(line: 118, column: 12, scope: !67)
!115 = !DILocation(line: 118, column: 15, scope: !67)
!116 = !DILocation(line: 118, column: 9, scope: !68)
!117 = !DILocation(line: 120, column: 9, scope: !66)
!118 = !DILocation(line: 119, column: 21, scope: !66)
!119 = !DILocation(line: 122, column: 3, scope: !72)
!120 = !DILocation(line: 125, column: 10, scope: !74)
!121 = !DILocation(line: 126, column: 12, scope: !75)
!122 = !DILocation(line: 126, column: 3, scope: !75)
!123 = !DILocation(line: 0, scope: !75)
!124 = !DILocation(line: 129, column: 1, scope: !16)
