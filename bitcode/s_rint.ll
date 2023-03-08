; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_rint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_rint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TWO52 = internal unnamed_addr constant [2 x double] [double 0x4330000000000000, double 0xC330000000000000], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @rint(double) local_unnamed_addr #0 !dbg !19 {
  %2 = alloca double, align 8
  %3 = bitcast double* %2 to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3), !dbg !59
  %4 = bitcast double %0 to i64, !dbg !61
  %5 = lshr i64 %4, 32, !dbg !61
  %6 = trunc i64 %5 to i32, !dbg !61
  %7 = trunc i64 %4 to i32, !dbg !61
  %8 = lshr i64 %4, 63, !dbg !64
  %9 = lshr i64 %4, 52, !dbg !65
  %10 = trunc i64 %9 to i32, !dbg !65
  %11 = and i32 %10, 2047, !dbg !66
  %12 = add nsw i32 %11, -1023, !dbg !67
  %13 = icmp ult i32 %11, 1043, !dbg !69
  br i1 %13, label %14, label %62, !dbg !70

; <label>:14:                                     ; preds = %1
  %15 = icmp ult i32 %11, 1023, !dbg !71
  br i1 %15, label %16, label %45, !dbg !72

; <label>:16:                                     ; preds = %14
  %17 = and i32 %6, 2147483647, !dbg !73
  %18 = or i32 %17, %7, !dbg !75
  %19 = icmp eq i32 %18, 0, !dbg !76
  br i1 %19, label %95, label %20, !dbg !77

; <label>:20:                                     ; preds = %16
  %21 = and i64 %5, 1048575, !dbg !78
  %22 = or i64 %21, %4, !dbg !79
  %23 = and i64 %5, 4294836224, !dbg !80
  %24 = sub i64 0, %22, !dbg !81
  %25 = or i64 %24, %4, !dbg !82
  %26 = lshr i64 %25, 12, !dbg !83
  %27 = and i64 %26, 524288, !dbg !84
  %28 = or i64 %27, %23, !dbg !85
  %29 = shl nuw i64 %28, 32, !dbg !86
  %30 = and i64 %4, 4294967295, !dbg !86
  %31 = or i64 %29, %30, !dbg !86
  %32 = bitcast i64 %31 to double, !dbg !86
  %33 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %8, !dbg !87
  %34 = load double, double* %33, align 8, !dbg !87, !tbaa !88
  %35 = fadd double %34, %32, !dbg !92
  store volatile double %35, double* %2, align 8, !dbg !93, !tbaa !88
  %36 = load volatile double, double* %2, align 8, !dbg !94, !tbaa !88
  %37 = fsub double %36, %34, !dbg !95
  %38 = bitcast double %37 to i64, !dbg !97
  %39 = and i64 %38, 9223372032559808512, !dbg !98
  %40 = and i64 %4, -9223372036854775808, !dbg !98
  %41 = or i64 %39, %40, !dbg !98
  %42 = and i64 %38, 4294967295, !dbg !98
  %43 = or i64 %41, %42, !dbg !98
  %44 = bitcast i64 %43 to double, !dbg !98
  br label %95, !dbg !99

; <label>:45:                                     ; preds = %14
  %46 = lshr i32 1048575, %12, !dbg !100
  %47 = and i32 %46, %6, !dbg !103
  %48 = or i32 %47, %7, !dbg !105
  %49 = icmp eq i32 %48, 0, !dbg !106
  br i1 %49, label %95, label %50, !dbg !107

; <label>:50:                                     ; preds = %45
  %51 = lshr i32 %46, 1, !dbg !108
  %52 = and i32 %51, %6, !dbg !109
  %53 = or i32 %52, %7, !dbg !111
  %54 = icmp eq i32 %53, 0, !dbg !112
  br i1 %54, label %82, label %55, !dbg !113

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %12, 19, !dbg !114
  %57 = select i1 %56, i32 -2147483648, i32 0, !dbg !117
  %58 = xor i32 %51, -1, !dbg !118
  %59 = and i32 %58, %6, !dbg !119
  %60 = lshr i32 262144, %12, !dbg !120
  %61 = or i32 %59, %60, !dbg !121
  br label %82, !dbg !122

; <label>:62:                                     ; preds = %1
  %63 = icmp ugt i32 %11, 1074, !dbg !123
  br i1 %63, label %64, label %68, !dbg !125

; <label>:64:                                     ; preds = %62
  %65 = icmp eq i32 %12, 1024, !dbg !126
  %66 = fadd double %0, %0, !dbg !129
  %67 = select i1 %65, double %66, double %0, !dbg !130
  br label %95, !dbg !130

; <label>:68:                                     ; preds = %62
  %69 = add nsw i32 %11, -1043, !dbg !131
  %70 = lshr i32 -1, %69, !dbg !133
  %71 = and i32 %70, %7, !dbg !134
  %72 = icmp eq i32 %71, 0, !dbg !136
  br i1 %72, label %95, label %73, !dbg !137

; <label>:73:                                     ; preds = %68
  %74 = lshr i32 %70, 1, !dbg !138
  %75 = and i32 %74, %7, !dbg !139
  %76 = icmp eq i32 %75, 0, !dbg !141
  br i1 %76, label %82, label %77, !dbg !142

; <label>:77:                                     ; preds = %73
  %78 = xor i32 %74, -1, !dbg !143
  %79 = and i32 %78, %7, !dbg !144
  %80 = lshr i32 1073741824, %69, !dbg !145
  %81 = or i32 %79, %80, !dbg !146
  br label %82, !dbg !147

; <label>:82:                                     ; preds = %50, %73, %55, %77
  %83 = phi i32 [ %57, %55 ], [ %7, %50 ], [ %81, %77 ], [ %7, %73 ], !dbg !148
  %84 = phi i32 [ %61, %55 ], [ %6, %50 ], [ %6, %77 ], [ %6, %73 ], !dbg !148
  %85 = zext i32 %84 to i64, !dbg !149
  %86 = shl nuw i64 %85, 32, !dbg !149
  %87 = zext i32 %83 to i64, !dbg !149
  %88 = or i64 %86, %87, !dbg !149
  %89 = bitcast i64 %88 to double, !dbg !149
  %90 = getelementptr inbounds [2 x double], [2 x double]* @TWO52, i64 0, i64 %8, !dbg !150
  %91 = load double, double* %90, align 8, !dbg !150, !tbaa !88
  %92 = fadd double %91, %89, !dbg !151
  store volatile double %92, double* %2, align 8, !dbg !152, !tbaa !88
  %93 = load volatile double, double* %2, align 8, !dbg !153, !tbaa !88
  %94 = fsub double %93, %91, !dbg !154
  br label %95, !dbg !155

; <label>:95:                                     ; preds = %64, %68, %45, %16, %82, %20
  %96 = phi double [ %44, %20 ], [ %94, %82 ], [ %0, %16 ], [ %0, %45 ], [ %0, %68 ], [ %67, %64 ], !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3), !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  ret double %96, !dbg !157
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

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO52", scope: !2, file: !3, line: 77, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !9)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_rint.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !7, line: 79, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{!0}
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !13)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !DISubrange(count: 2)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "rint", scope: !3, file: !3, line: 83, type: !20, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!12, !12}
!22 = !{!23, !24, !27, !28, !29, !30, !31, !32, !34, !46, !52, !54, !56}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !19, file: !3, line: 83, type: !12)
!24 = !DILocalVariable(name: "i0", scope: !19, file: !3, line: 89, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !7, line: 77, baseType: !26)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "j0", scope: !19, file: !3, line: 89, type: !25)
!28 = !DILocalVariable(name: "sx", scope: !19, file: !3, line: 89, type: !25)
!29 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 90, type: !6)
!30 = !DILocalVariable(name: "i1", scope: !19, file: !3, line: 90, type: !6)
!31 = !DILocalVariable(name: "t", scope: !19, file: !3, line: 91, type: !12)
!32 = !DILocalVariable(name: "w", scope: !19, file: !3, line: 92, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!34 = !DILocalVariable(name: "ew_u", scope: !35, file: !3, line: 93, type: !36)
!35 = distinct !DILexicalBlock(scope: !19, file: !3, line: 93, column: 2)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !37, line: 278, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 270, size: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !37, line: 272, baseType: !12, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !38, file: !37, line: 277, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !37, line: 273, size: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !42, file: !37, line: 275, baseType: !6, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !42, file: !37, line: 276, baseType: !6, size: 32, offset: 32)
!46 = !DILocalVariable(name: "sh_u", scope: !47, file: !3, line: 102, type: !36)
!47 = distinct !DILexicalBlock(scope: !48, file: !3, line: 102, column: 3)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 97, column: 15)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 97, column: 9)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 96, column: 12)
!51 = distinct !DILexicalBlock(scope: !19, file: !3, line: 96, column: 5)
!52 = !DILocalVariable(name: "gh_u", scope: !53, file: !3, line: 105, type: !36)
!53 = distinct !DILexicalBlock(scope: !48, file: !3, line: 105, column: 3)
!54 = !DILocalVariable(name: "sh_u", scope: !55, file: !3, line: 106, type: !36)
!55 = distinct !DILexicalBlock(scope: !48, file: !3, line: 106, column: 3)
!56 = !DILocalVariable(name: "iw_u", scope: !57, file: !3, line: 127, type: !36)
!57 = distinct !DILexicalBlock(scope: !19, file: !3, line: 127, column: 2)
!58 = !DILocation(line: 83, column: 21, scope: !19)
!59 = !DILocation(line: 92, column: 2, scope: !19)
!60 = !DILocation(line: 92, column: 18, scope: !19)
!61 = !DILocation(line: 93, column: 2, scope: !35)
!62 = !DILocation(line: 89, column: 12, scope: !19)
!63 = !DILocation(line: 90, column: 15, scope: !19)
!64 = !DILocation(line: 94, column: 10, scope: !19)
!65 = !DILocation(line: 95, column: 11, scope: !19)
!66 = !DILocation(line: 95, column: 16, scope: !19)
!67 = !DILocation(line: 95, column: 23, scope: !19)
!68 = !DILocation(line: 89, column: 15, scope: !19)
!69 = !DILocation(line: 96, column: 7, scope: !51)
!70 = !DILocation(line: 96, column: 5, scope: !19)
!71 = !DILocation(line: 97, column: 11, scope: !49)
!72 = !DILocation(line: 97, column: 9, scope: !50)
!73 = !DILocation(line: 98, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !48, file: !3, line: 98, column: 6)
!75 = !DILocation(line: 98, column: 22, scope: !74)
!76 = !DILocation(line: 98, column: 26, scope: !74)
!77 = !DILocation(line: 98, column: 6, scope: !48)
!78 = !DILocation(line: 99, column: 12, scope: !48)
!79 = !DILocation(line: 99, column: 6, scope: !48)
!80 = !DILocation(line: 100, column: 6, scope: !48)
!81 = !DILocation(line: 101, column: 14, scope: !48)
!82 = !DILocation(line: 101, column: 13, scope: !48)
!83 = !DILocation(line: 101, column: 18, scope: !48)
!84 = !DILocation(line: 101, column: 23, scope: !48)
!85 = !DILocation(line: 101, column: 6, scope: !48)
!86 = !DILocation(line: 102, column: 3, scope: !47)
!87 = !DILocation(line: 103, column: 14, scope: !48)
!88 = !{!89, !89, i64 0}
!89 = !{!"double", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !DILocation(line: 103, column: 23, scope: !48)
!93 = !DILocation(line: 103, column: 12, scope: !48)
!94 = !DILocation(line: 104, column: 15, scope: !48)
!95 = !DILocation(line: 104, column: 16, scope: !48)
!96 = !DILocation(line: 91, column: 9, scope: !19)
!97 = !DILocation(line: 105, column: 3, scope: !53)
!98 = !DILocation(line: 106, column: 3, scope: !55)
!99 = !DILocation(line: 107, column: 10, scope: !48)
!100 = !DILocation(line: 109, column: 19, scope: !101)
!101 = distinct !DILexicalBlock(scope: !49, file: !3, line: 108, column: 13)
!102 = !DILocation(line: 90, column: 13, scope: !19)
!103 = !DILocation(line: 110, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !3, line: 110, column: 6)
!105 = !DILocation(line: 110, column: 13, scope: !104)
!106 = !DILocation(line: 110, column: 17, scope: !104)
!107 = !DILocation(line: 110, column: 6, scope: !101)
!108 = !DILocation(line: 111, column: 4, scope: !101)
!109 = !DILocation(line: 112, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !3, line: 112, column: 6)
!111 = !DILocation(line: 112, column: 13, scope: !110)
!112 = !DILocation(line: 112, column: 17, scope: !110)
!113 = !DILocation(line: 112, column: 6, scope: !101)
!114 = !DILocation(line: 114, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !3, line: 114, column: 10)
!116 = distinct !DILexicalBlock(scope: !110, file: !3, line: 112, column: 22)
!117 = !DILocation(line: 114, column: 18, scope: !115)
!118 = !DILocation(line: 115, column: 17, scope: !116)
!119 = !DILocation(line: 115, column: 15, scope: !116)
!120 = !DILocation(line: 115, column: 32, scope: !116)
!121 = !DILocation(line: 115, column: 21, scope: !116)
!122 = !DILocation(line: 116, column: 3, scope: !116)
!123 = !DILocation(line: 118, column: 15, scope: !124)
!124 = distinct !DILexicalBlock(scope: !51, file: !3, line: 118, column: 13)
!125 = !DILocation(line: 118, column: 13, scope: !51)
!126 = !DILocation(line: 119, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 119, column: 9)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 118, column: 20)
!129 = !DILocation(line: 119, column: 28, scope: !127)
!130 = !DILocation(line: 119, column: 9, scope: !128)
!131 = !DILocation(line: 122, column: 41, scope: !132)
!132 = distinct !DILexicalBlock(scope: !124, file: !3, line: 121, column: 9)
!133 = !DILocation(line: 122, column: 36, scope: !132)
!134 = !DILocation(line: 123, column: 12, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !3, line: 123, column: 9)
!136 = !DILocation(line: 123, column: 15, scope: !135)
!137 = !DILocation(line: 123, column: 9, scope: !132)
!138 = !DILocation(line: 124, column: 7, scope: !132)
!139 = !DILocation(line: 125, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !132, file: !3, line: 125, column: 9)
!141 = !DILocation(line: 125, column: 15, scope: !140)
!142 = !DILocation(line: 125, column: 9, scope: !132)
!143 = !DILocation(line: 125, column: 30, scope: !140)
!144 = !DILocation(line: 125, column: 28, scope: !140)
!145 = !DILocation(line: 125, column: 48, scope: !140)
!146 = !DILocation(line: 125, column: 34, scope: !140)
!147 = !DILocation(line: 125, column: 20, scope: !140)
!148 = !DILocation(line: 0, scope: !35)
!149 = !DILocation(line: 127, column: 2, scope: !57)
!150 = !DILocation(line: 128, column: 6, scope: !19)
!151 = !DILocation(line: 128, column: 15, scope: !19)
!152 = !DILocation(line: 128, column: 4, scope: !19)
!153 = !DILocation(line: 129, column: 9, scope: !19)
!154 = !DILocation(line: 129, column: 10, scope: !19)
!155 = !DILocation(line: 129, column: 2, scope: !19)
!156 = !DILocation(line: 0, scope: !135)
!157 = !DILocation(line: 130, column: 1, scope: !19)
