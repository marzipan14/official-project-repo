; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llrint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llrint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TWO52 = internal unnamed_addr constant [2 x double] [double 0x4330000000000000, double 0xC330000000000000], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @llrint(double) local_unnamed_addr #0 !dbg !20 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3), !dbg !60
  %4 = bitcast double %0 to i64, !dbg !62
  %5 = lshr i64 %4, 32, !dbg !62
  %6 = trunc i64 %4 to i32, !dbg !62
  %7 = lshr i64 %4, 63, !dbg !64
  %8 = lshr i64 %4, 52, !dbg !65
  %9 = trunc i64 %8 to i32, !dbg !65
  %10 = and i32 %9, 2047, !dbg !65
  %11 = icmp ult i32 %10, 1043, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %11, label %12, label %34, !dbg !68

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %10, 1022, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %13, label %80, label %14, !dbg !70

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %7, !dbg !71
  %16 = load double, double* %15, align 8, !dbg !71, !tbaa !72
  %17 = fadd double %16, %0, !dbg !76
  store volatile double %17, double* %2, align 8, !dbg !77, !tbaa !72
  %18 = load volatile double, double* %2, align 8, !dbg !78, !tbaa !72
  %19 = fsub double %18, %16, !dbg !79
  %20 = bitcast double %19 to i64, !dbg !81
  %21 = lshr i64 %20, 32, !dbg !81
  %22 = trunc i64 %21 to i32, !dbg !81
  %23 = and i32 %22, 2147483647, !dbg !83
  %24 = icmp eq i32 %23, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %24, label %80, label %25, !dbg !86

; <label>:25:                                     ; preds = %14
  %26 = lshr i64 %20, 52, !dbg !87
  %27 = trunc i64 %26 to i32, !dbg !87
  %28 = and i32 %27, 2047, !dbg !87
  %29 = and i32 %22, 1048575, !dbg !88
  %30 = or i32 %29, 1048576, !dbg !89
  %31 = sub nsw i32 1043, %28, !dbg !90
  %32 = lshr i32 %30, %31, !dbg !91
  %33 = sext i32 %32 to i64, !dbg !92
  br label %75, !dbg !94

; <label>:34:                                     ; preds = %1
  %35 = icmp ult i32 %10, 1086, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %35, label %36, label %73, !dbg !96

; <label>:36:                                     ; preds = %34
  %37 = icmp ugt i32 %10, 1074, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %37, label %38, label %48, !dbg !98

; <label>:38:                                     ; preds = %36
  %39 = and i64 %5, 983039, !dbg !99
  %40 = or i64 %39, 65536, !dbg !100
  %41 = add nsw i32 %10, -1043, !dbg !101
  %42 = zext i32 %41 to i64, !dbg !102
  %43 = shl i64 %40, %42, !dbg !102
  %44 = add nsw i32 %10, -1075, !dbg !103
  %45 = shl i32 %6, %44, !dbg !104
  %46 = zext i32 %45 to i64, !dbg !105
  %47 = or i64 %43, %46, !dbg !106
  br label %75, !dbg !107

; <label>:48:                                     ; preds = %36
  %49 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %7, !dbg !108
  %50 = load double, double* %49, align 8, !dbg !108, !tbaa !72
  %51 = fadd double %50, %0, !dbg !109
  store volatile double %51, double* %2, align 8, !dbg !110, !tbaa !72
  %52 = load volatile double, double* %2, align 8, !dbg !111, !tbaa !72
  %53 = fsub double %52, %50, !dbg !112
  %54 = bitcast double %53 to i64, !dbg !113
  %55 = lshr i64 %54, 32, !dbg !113
  %56 = lshr i64 %54, 52, !dbg !114
  %57 = trunc i64 %56 to i32, !dbg !114
  %58 = and i32 %57, 2047, !dbg !114
  %59 = and i64 %55, 1048575, !dbg !115
  %60 = or i64 %59, 1048576, !dbg !116
  %61 = add nsw i32 %58, -1043, !dbg !117
  %62 = zext i32 %61 to i64, !dbg !118
  %63 = shl i64 %60, %62, !dbg !118
  %64 = sub nsw i32 1075, %58, !dbg !119
  %65 = icmp ult i32 %64, 32, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %65, label %66, label %70, !dbg !119

; <label>:66:                                     ; preds = %48
  %67 = trunc i64 %54 to i32, !dbg !113
  %68 = lshr i32 %67, %64, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %69 = zext i32 %68 to i64, !dbg !119
  br label %70, !dbg !119

; <label>:70:                                     ; preds = %48, %66
  %71 = phi i64 [ %69, %66 ], [ 0, %48 ]
  %72 = or i64 %71, %63, !dbg !120
  br label %75

; <label>:73:                                     ; preds = %34
  %74 = fptosi double %0 to i64, !dbg !121
  br label %80, !dbg !123

; <label>:75:                                     ; preds = %70, %38, %25
  %76 = phi i64 [ %33, %25 ], [ %47, %38 ], [ %72, %70 ], !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %77 = icmp eq i64 %7, 0, !dbg !125
  %78 = sub nsw i64 0, %76, !dbg !126
  %79 = select i1 %77, i64 %76, i64 %78, !dbg !125
  br label %80, !dbg !127

; <label>:80:                                     ; preds = %14, %12, %75, %73
  %81 = phi i64 [ %79, %75 ], [ %74, %73 ], [ 0, %12 ], [ 0, %14 ], !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3), !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  ret i64 %81, !dbg !130
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO52", scope: !2, file: !3, line: 38, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_llrint.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !14)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DISubrange(count: 2)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "llrint", scope: !3, file: !3, line: 45, type: !21, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{!9, !13}
!23 = !{!24, !25, !26, !27, !28, !31, !32, !34, !35, !47, !53}
!24 = !DILocalVariable(name: "x", arg: 1, scope: !20, file: !3, line: 45, type: !13)
!25 = !DILocalVariable(name: "i0", scope: !20, file: !3, line: 51, type: !6)
!26 = !DILocalVariable(name: "j0", scope: !20, file: !3, line: 51, type: !6)
!27 = !DILocalVariable(name: "sx", scope: !20, file: !3, line: 51, type: !6)
!28 = !DILocalVariable(name: "i1", scope: !20, file: !3, line: 52, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "t", scope: !20, file: !3, line: 53, type: !13)
!32 = !DILocalVariable(name: "w", scope: !20, file: !3, line: 54, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!34 = !DILocalVariable(name: "result", scope: !20, file: !3, line: 55, type: !9)
!35 = !DILocalVariable(name: "ew_u", scope: !36, file: !3, line: 57, type: !37)
!36 = distinct !DILexicalBlock(scope: !20, file: !3, line: 57, column: 3)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !38, line: 278, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 270, size: 64, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !38, line: 272, baseType: !13, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !39, file: !38, line: 277, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !38, line: 273, size: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !43, file: !38, line: 275, baseType: !29, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !43, file: !38, line: 276, baseType: !29, size: 32, offset: 32)
!47 = !DILocalVariable(name: "gh_u", scope: !48, file: !3, line: 77, type: !37)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 77, column: 11)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 72, column: 9)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 69, column: 10)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 67, column: 5)
!52 = distinct !DILexicalBlock(scope: !20, file: !3, line: 66, column: 6)
!53 = !DILocalVariable(name: "ew_u", scope: !54, file: !3, line: 104, type: !37)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 104, column: 11)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 100, column: 9)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 93, column: 11)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 91, column: 5)
!58 = distinct !DILexicalBlock(scope: !52, file: !3, line: 90, column: 12)
!59 = !DILocation(line: 45, column: 16, scope: !20)
!60 = !DILocation(line: 54, column: 3, scope: !20)
!61 = !DILocation(line: 54, column: 19, scope: !20)
!62 = !DILocation(line: 57, column: 3, scope: !36)
!63 = !DILocation(line: 52, column: 14, scope: !20)
!64 = !DILocation(line: 60, column: 11, scope: !20)
!65 = !DILocation(line: 63, column: 27, scope: !20)
!66 = !DILocation(line: 51, column: 16, scope: !20)
!67 = !DILocation(line: 66, column: 9, scope: !52)
!68 = !DILocation(line: 66, column: 6, scope: !20)
!69 = !DILocation(line: 69, column: 13, scope: !50)
!70 = !DILocation(line: 69, column: 10, scope: !51)
!71 = !DILocation(line: 75, column: 15, scope: !49)
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 75, column: 25, scope: !49)
!77 = !DILocation(line: 75, column: 13, scope: !49)
!78 = !DILocation(line: 76, column: 15, scope: !49)
!79 = !DILocation(line: 76, column: 17, scope: !49)
!80 = !DILocation(line: 53, column: 10, scope: !20)
!81 = !DILocation(line: 77, column: 11, scope: !48)
!82 = !DILocation(line: 51, column: 13, scope: !20)
!83 = !DILocation(line: 80, column: 19, scope: !84)
!84 = distinct !DILexicalBlock(scope: !49, file: !3, line: 80, column: 15)
!85 = !DILocation(line: 80, column: 44, scope: !84)
!86 = !DILocation(line: 80, column: 15, scope: !49)
!87 = !DILocation(line: 83, column: 35, scope: !49)
!88 = !DILocation(line: 84, column: 14, scope: !49)
!89 = !DILocation(line: 85, column: 14, scope: !49)
!90 = !DILocation(line: 87, column: 30, scope: !49)
!91 = !DILocation(line: 87, column: 23, scope: !49)
!92 = !DILocation(line: 87, column: 20, scope: !49)
!93 = !DILocation(line: 55, column: 17, scope: !20)
!94 = !DILocation(line: 89, column: 5, scope: !51)
!95 = !DILocation(line: 90, column: 15, scope: !58)
!96 = !DILocation(line: 90, column: 12, scope: !52)
!97 = !DILocation(line: 93, column: 14, scope: !56)
!98 = !DILocation(line: 93, column: 11, scope: !57)
!99 = !DILocation(line: 96, column: 40, scope: !56)
!100 = !DILocation(line: 96, column: 54, scope: !56)
!101 = !DILocation(line: 96, column: 74, scope: !56)
!102 = !DILocation(line: 96, column: 67, scope: !56)
!103 = !DILocation(line: 98, column: 31, scope: !56)
!104 = !DILocation(line: 98, column: 24, scope: !56)
!105 = !DILocation(line: 98, column: 20, scope: !56)
!106 = !DILocation(line: 96, column: 81, scope: !56)
!107 = !DILocation(line: 96, column: 9, scope: !56)
!108 = !DILocation(line: 102, column: 15, scope: !55)
!109 = !DILocation(line: 102, column: 25, scope: !55)
!110 = !DILocation(line: 102, column: 13, scope: !55)
!111 = !DILocation(line: 103, column: 15, scope: !55)
!112 = !DILocation(line: 103, column: 17, scope: !55)
!113 = !DILocation(line: 104, column: 11, scope: !54)
!114 = !DILocation(line: 105, column: 35, scope: !55)
!115 = !DILocation(line: 106, column: 14, scope: !55)
!116 = !DILocation(line: 107, column: 14, scope: !55)
!117 = !DILocation(line: 112, column: 47, scope: !55)
!118 = !DILocation(line: 112, column: 40, scope: !55)
!119 = !DILocation(line: 113, column: 6, scope: !55)
!120 = !DILocation(line: 113, column: 4, scope: !55)
!121 = !DILocation(line: 118, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !58, file: !3, line: 117, column: 5)
!123 = !DILocation(line: 118, column: 7, scope: !122)
!124 = !DILocation(line: 0, scope: !55)
!125 = !DILocation(line: 121, column: 10, scope: !20)
!126 = !DILocation(line: 121, column: 15, scope: !20)
!127 = !DILocation(line: 121, column: 3, scope: !20)
!128 = !DILocation(line: 0, scope: !122)
!129 = !DILocation(line: 0, scope: !50)
!130 = !DILocation(line: 122, column: 1, scope: !20)
