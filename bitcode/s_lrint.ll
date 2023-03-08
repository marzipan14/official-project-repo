; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_lrint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_lrint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TWO52 = internal unnamed_addr constant [2 x double] [double 0x4330000000000000, double 0xC330000000000000], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @lrint(double) local_unnamed_addr #0 !dbg !18 {
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
  br i1 %11, label %12, label %35, !dbg !68

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %10, 1022, !dbg !69
  br i1 %13, label %79, label %14, !dbg !70

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %7, !dbg !71
  %16 = load double, double* %15, align 8, !dbg !71, !tbaa !72
  %17 = fadd double %16, %0, !dbg !76
  store volatile double %17, double* %2, align 8, !dbg !77, !tbaa !72
  %18 = load volatile double, double* %2, align 8, !dbg !78, !tbaa !72
  %19 = fsub double %18, %16, !dbg !79
  %20 = bitcast double %19 to i64, !dbg !81
  %21 = ashr i64 %20, 32, !dbg !82
  %22 = and i64 %21, -2147483649, !dbg !84
  %23 = icmp eq i64 %22, 0, !dbg !85
  br i1 %23, label %79, label %24, !dbg !86

; <label>:24:                                     ; preds = %14
  %25 = lshr i64 %20, 32, !dbg !81
  %26 = trunc i64 %25 to i32, !dbg !81
  %27 = lshr i64 %20, 52, !dbg !88
  %28 = trunc i64 %27 to i32, !dbg !88
  %29 = and i32 %28, 2047, !dbg !88
  %30 = and i32 %26, 1048575, !dbg !89
  %31 = or i32 %30, 1048576, !dbg !90
  %32 = sub nsw i32 1043, %29, !dbg !91
  %33 = lshr i32 %31, %32, !dbg !92
  %34 = sext i32 %33 to i64, !dbg !93
  br label %74, !dbg !95

; <label>:35:                                     ; preds = %1
  %36 = icmp ult i32 %10, 1086, !dbg !96
  br i1 %36, label %37, label %72, !dbg !97

; <label>:37:                                     ; preds = %35
  %38 = icmp ugt i32 %10, 1074, !dbg !98
  br i1 %38, label %39, label %49, !dbg !99

; <label>:39:                                     ; preds = %37
  %40 = and i64 %5, 983039, !dbg !100
  %41 = or i64 %40, 65536, !dbg !101
  %42 = add nsw i32 %10, -1043, !dbg !102
  %43 = zext i32 %42 to i64, !dbg !103
  %44 = shl i64 %41, %43, !dbg !103
  %45 = add nsw i32 %10, -1075, !dbg !104
  %46 = shl i32 %6, %45, !dbg !105
  %47 = zext i32 %46 to i64, !dbg !106
  %48 = or i64 %44, %47, !dbg !107
  br label %74, !dbg !108

; <label>:49:                                     ; preds = %37
  %50 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %7, !dbg !109
  %51 = load double, double* %50, align 8, !dbg !109, !tbaa !72
  %52 = fadd double %51, %0, !dbg !110
  store volatile double %52, double* %2, align 8, !dbg !111, !tbaa !72
  %53 = load volatile double, double* %2, align 8, !dbg !112, !tbaa !72
  %54 = fsub double %53, %51, !dbg !113
  %55 = bitcast double %54 to i64, !dbg !114
  %56 = lshr i64 %55, 32, !dbg !114
  %57 = lshr i64 %55, 52, !dbg !115
  %58 = trunc i64 %57 to i32, !dbg !115
  %59 = and i32 %58, 2047, !dbg !115
  %60 = and i64 %56, 1048575, !dbg !116
  %61 = or i64 %60, 1048576, !dbg !117
  %62 = add nsw i32 %59, -1043, !dbg !118
  %63 = zext i32 %62 to i64, !dbg !119
  %64 = shl i64 %61, %63, !dbg !119
  %65 = sub nsw i32 1075, %59, !dbg !120
  %66 = icmp ult i32 %65, 32, !dbg !120
  %67 = trunc i64 %55 to i32, !dbg !114
  %68 = lshr i32 %67, %65, !dbg !120
  %69 = select i1 %66, i32 %68, i32 0, !dbg !120
  %70 = zext i32 %69 to i64, !dbg !120
  %71 = or i64 %64, %70, !dbg !121
  br label %74

; <label>:72:                                     ; preds = %35
  %73 = fptosi double %0 to i64, !dbg !122
  br label %79, !dbg !124

; <label>:74:                                     ; preds = %49, %39, %24
  %75 = phi i64 [ %34, %24 ], [ %48, %39 ], [ %71, %49 ], !dbg !125
  %76 = icmp eq i64 %7, 0, !dbg !126
  %77 = sub nsw i64 0, %75, !dbg !127
  %78 = select i1 %76, i64 %75, i64 %77, !dbg !126
  br label %79, !dbg !128

; <label>:79:                                     ; preds = %14, %12, %74, %72
  %80 = phi i64 [ %78, %74 ], [ %73, %72 ], [ 0, %12 ], [ 0, %14 ], !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3), !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  ret i64 %80, !dbg !130
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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO52", scope: !2, file: !3, line: 76, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_lrint.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !12)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13}
!13 = !DISubrange(count: 2)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "lrint", scope: !3, file: !3, line: 82, type: !19, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !11}
!21 = !{!22, !23, !26, !27, !28, !31, !32, !34, !35, !47, !53}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !3, line: 82, type: !11)
!23 = !DILocalVariable(name: "i0", scope: !18, file: !3, line: 88, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !6)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DILocalVariable(name: "j0", scope: !18, file: !3, line: 88, type: !24)
!27 = !DILocalVariable(name: "sx", scope: !18, file: !3, line: 88, type: !24)
!28 = !DILocalVariable(name: "i1", scope: !18, file: !3, line: 89, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "t", scope: !18, file: !3, line: 90, type: !11)
!32 = !DILocalVariable(name: "w", scope: !18, file: !3, line: 91, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!34 = !DILocalVariable(name: "result", scope: !18, file: !3, line: 92, type: !7)
!35 = !DILocalVariable(name: "ew_u", scope: !36, file: !3, line: 94, type: !37)
!36 = distinct !DILexicalBlock(scope: !18, file: !3, line: 94, column: 3)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !38, line: 278, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !38, line: 270, size: 64, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !39, file: !38, line: 272, baseType: !11, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !39, file: !38, line: 277, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !39, file: !38, line: 273, size: 64, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !43, file: !38, line: 275, baseType: !29, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !43, file: !38, line: 276, baseType: !29, size: 32, offset: 32)
!47 = !DILocalVariable(name: "gh_u", scope: !48, file: !3, line: 114, type: !37)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 114, column: 11)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 109, column: 9)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 106, column: 10)
!51 = distinct !DILexicalBlock(scope: !52, file: !3, line: 104, column: 5)
!52 = distinct !DILexicalBlock(scope: !18, file: !3, line: 103, column: 6)
!53 = !DILocalVariable(name: "ew_u", scope: !54, file: !3, line: 143, type: !37)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 143, column: 11)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 138, column: 9)
!56 = distinct !DILexicalBlock(scope: !57, file: !3, line: 131, column: 11)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 128, column: 5)
!58 = distinct !DILexicalBlock(scope: !52, file: !3, line: 127, column: 12)
!59 = !DILocation(line: 82, column: 24, scope: !18)
!60 = !DILocation(line: 91, column: 3, scope: !18)
!61 = !DILocation(line: 91, column: 19, scope: !18)
!62 = !DILocation(line: 94, column: 3, scope: !36)
!63 = !DILocation(line: 89, column: 14, scope: !18)
!64 = !DILocation(line: 97, column: 11, scope: !18)
!65 = !DILocation(line: 100, column: 27, scope: !18)
!66 = !DILocation(line: 88, column: 16, scope: !18)
!67 = !DILocation(line: 103, column: 9, scope: !52)
!68 = !DILocation(line: 103, column: 6, scope: !18)
!69 = !DILocation(line: 106, column: 13, scope: !50)
!70 = !DILocation(line: 106, column: 10, scope: !51)
!71 = !DILocation(line: 112, column: 15, scope: !49)
!72 = !{!73, !73, i64 0}
!73 = !{!"double", !74, i64 0}
!74 = !{!"omnipotent char", !75, i64 0}
!75 = !{!"Simple C/C++ TBAA"}
!76 = !DILocation(line: 112, column: 25, scope: !49)
!77 = !DILocation(line: 112, column: 13, scope: !49)
!78 = !DILocation(line: 113, column: 15, scope: !49)
!79 = !DILocation(line: 113, column: 17, scope: !49)
!80 = !DILocation(line: 90, column: 10, scope: !18)
!81 = !DILocation(line: 114, column: 11, scope: !48)
!82 = !DILocation(line: 117, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !49, file: !3, line: 117, column: 15)
!84 = !DILocation(line: 117, column: 19, scope: !83)
!85 = !DILocation(line: 117, column: 34, scope: !83)
!86 = !DILocation(line: 117, column: 15, scope: !49)
!87 = !DILocation(line: 88, column: 13, scope: !18)
!88 = !DILocation(line: 120, column: 35, scope: !49)
!89 = !DILocation(line: 121, column: 14, scope: !49)
!90 = !DILocation(line: 122, column: 14, scope: !49)
!91 = !DILocation(line: 124, column: 30, scope: !49)
!92 = !DILocation(line: 124, column: 23, scope: !49)
!93 = !DILocation(line: 124, column: 20, scope: !49)
!94 = !DILocation(line: 92, column: 12, scope: !18)
!95 = !DILocation(line: 126, column: 5, scope: !51)
!96 = !DILocation(line: 127, column: 15, scope: !58)
!97 = !DILocation(line: 127, column: 12, scope: !52)
!98 = !DILocation(line: 131, column: 14, scope: !56)
!99 = !DILocation(line: 131, column: 11, scope: !57)
!100 = !DILocation(line: 134, column: 35, scope: !56)
!101 = !DILocation(line: 134, column: 49, scope: !56)
!102 = !DILocation(line: 134, column: 69, scope: !56)
!103 = !DILocation(line: 134, column: 62, scope: !56)
!104 = !DILocation(line: 136, column: 31, scope: !56)
!105 = !DILocation(line: 136, column: 24, scope: !56)
!106 = !DILocation(line: 136, column: 20, scope: !56)
!107 = !DILocation(line: 134, column: 76, scope: !56)
!108 = !DILocation(line: 134, column: 9, scope: !56)
!109 = !DILocation(line: 141, column: 15, scope: !55)
!110 = !DILocation(line: 141, column: 25, scope: !55)
!111 = !DILocation(line: 141, column: 13, scope: !55)
!112 = !DILocation(line: 142, column: 15, scope: !55)
!113 = !DILocation(line: 142, column: 17, scope: !55)
!114 = !DILocation(line: 143, column: 11, scope: !54)
!115 = !DILocation(line: 144, column: 35, scope: !55)
!116 = !DILocation(line: 145, column: 14, scope: !55)
!117 = !DILocation(line: 146, column: 14, scope: !55)
!118 = !DILocation(line: 154, column: 42, scope: !55)
!119 = !DILocation(line: 154, column: 35, scope: !55)
!120 = !DILocation(line: 155, column: 6, scope: !55)
!121 = !DILocation(line: 155, column: 4, scope: !55)
!122 = !DILocation(line: 160, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !58, file: !3, line: 159, column: 5)
!124 = !DILocation(line: 160, column: 7, scope: !123)
!125 = !DILocation(line: 0, scope: !55)
!126 = !DILocation(line: 163, column: 10, scope: !18)
!127 = !DILocation(line: 163, column: 15, scope: !18)
!128 = !DILocation(line: 163, column: 3, scope: !18)
!129 = !DILocation(line: 0, scope: !123)
!130 = !DILocation(line: 164, column: 1, scope: !18)
