; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_exp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_exp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"exp\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @exp(double) local_unnamed_addr #0 !dbg !24 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !42
  %4 = tail call double @__ieee754_exp(double %0) #5, !dbg !43
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !45, !tbaa !47
  %6 = icmp eq i32 %5, -1, !dbg !50
  br i1 %6, label %66, label %7, !dbg !51

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @finite(double %0) #5, !dbg !52
  %9 = icmp eq i32 %8, 0, !dbg !52
  br i1 %9, label %66, label %10, !dbg !54

; <label>:10:                                     ; preds = %7
  %11 = fcmp ogt double %0, 0x40862E42FEFA39EF, !dbg !55
  br i1 %11, label %12, label %39, !dbg !58

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !59
  store i32 3, i32* %13, align 8, !dbg !61, !tbaa !62
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !67
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !68, !tbaa !69
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !70
  store i32 0, i32* %15, align 8, !dbg !71, !tbaa !72
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !73
  store double %0, double* %16, align 8, !dbg !74, !tbaa !75
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !76
  store double %0, double* %17, align 8, !dbg !77, !tbaa !78
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !79, !tbaa !47
  %19 = icmp eq i32 %18, 0, !dbg !81
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !82
  %21 = select i1 %19, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !83
  store double %21, double* %20, align 8, !dbg !82, !tbaa !84
  %22 = icmp eq i32 %18, 2, !dbg !85
  br i1 %22, label %23, label %25, !dbg !87

; <label>:23:                                     ; preds = %12
  %24 = tail call i32* @__errno() #5, !dbg !88
  br label %30, !dbg !88

; <label>:25:                                     ; preds = %12
  %26 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !90
  %27 = icmp eq i32 %26, 0, !dbg !90
  br i1 %27, label %28, label %32, !dbg !92

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !93
  br label %30, !dbg !95

; <label>:30:                                     ; preds = %23, %28
  %31 = phi i32* [ %29, %28 ], [ %24, %23 ]
  store i32 34, i32* %31, align 4, !dbg !96, !tbaa !97
  br label %32, !dbg !98

; <label>:32:                                     ; preds = %30, %25
  %33 = load i32, i32* %15, align 8, !dbg !98, !tbaa !72
  %34 = icmp eq i32 %33, 0, !dbg !100
  br i1 %34, label %37, label %35, !dbg !101

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno() #5, !dbg !102
  store i32 %33, i32* %36, align 4, !dbg !103, !tbaa !97
  br label %37, !dbg !102

; <label>:37:                                     ; preds = %32, %35
  %38 = load double, double* %20, align 8, !dbg !104, !tbaa !84
  br label %66, !dbg !105

; <label>:39:                                     ; preds = %10
  %40 = fcmp olt double %0, 0xC0874910D52D3051, !dbg !106
  br i1 %40, label %41, label %66, !dbg !108

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !109
  store i32 4, i32* %42, align 8, !dbg !111, !tbaa !62
  %43 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !112
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %43, align 8, !dbg !113, !tbaa !69
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !114
  store i32 0, i32* %44, align 8, !dbg !115, !tbaa !72
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !116
  store double %0, double* %45, align 8, !dbg !117, !tbaa !75
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !118
  store double %0, double* %46, align 8, !dbg !119, !tbaa !78
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !120
  store double 0.000000e+00, double* %47, align 8, !dbg !121, !tbaa !84
  %48 = load i32, i32* @__fdlib_version, align 4, !dbg !122, !tbaa !47
  %49 = icmp eq i32 %48, 2, !dbg !124
  br i1 %49, label %50, label %52, !dbg !125

; <label>:50:                                     ; preds = %41
  %51 = tail call i32* @__errno() #5, !dbg !126
  br label %57, !dbg !126

; <label>:52:                                     ; preds = %41
  %53 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !127
  %54 = icmp eq i32 %53, 0, !dbg !127
  br i1 %54, label %55, label %59, !dbg !129

; <label>:55:                                     ; preds = %52
  %56 = call i32* @__errno() #5, !dbg !130
  br label %57, !dbg !132

; <label>:57:                                     ; preds = %50, %55
  %58 = phi i32* [ %56, %55 ], [ %51, %50 ]
  store i32 34, i32* %58, align 4, !dbg !133, !tbaa !97
  br label %59, !dbg !134

; <label>:59:                                     ; preds = %57, %52
  %60 = load i32, i32* %44, align 8, !dbg !134, !tbaa !72
  %61 = icmp eq i32 %60, 0, !dbg !136
  br i1 %61, label %64, label %62, !dbg !137

; <label>:62:                                     ; preds = %59
  %63 = call i32* @__errno() #5, !dbg !138
  store i32 %60, i32* %63, align 4, !dbg !139, !tbaa !97
  br label %64, !dbg !138

; <label>:64:                                     ; preds = %59, %62
  %65 = load double, double* %47, align 8, !dbg !140, !tbaa !84
  br label %66, !dbg !141

; <label>:66:                                     ; preds = %39, %7, %1, %64, %37
  %67 = phi double [ %38, %37 ], [ %65, %64 ], [ %4, %1 ], [ %4, %7 ], [ %4, %39 ], !dbg !142
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !143
  ret double %67, !dbg !143
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_exp(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, globals: !13)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_exp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{!12}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !18}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression(DW_OP_constu, 4649454530587146735, DW_OP_stack_value))
!15 = distinct !DIGlobalVariable(name: "o_threshold", scope: !0, file: !1, line: 73, type: !16, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 13873137513782915153, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "u_threshold", scope: !0, file: !1, line: 74, type: !16, isLocal: true, isDefinition: true)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "exp", scope: !1, file: !1, line: 77, type: !25, isLocal: false, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!17, !17}
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !1, line: 77, type: !17)
!29 = !DILocalVariable(name: "z", scope: !24, file: !1, line: 86, type: !17)
!30 = !DILocalVariable(name: "exc", scope: !24, file: !1, line: 87, type: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !32)
!32 = !{!33, !34, !37, !38, !39, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !4, line: 581, baseType: !5, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !4, line: 582, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !31, file: !4, line: 583, baseType: !17, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !31, file: !4, line: 584, baseType: !17, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !31, file: !4, line: 585, baseType: !17, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !31, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!41 = !DILocation(line: 77, column: 20, scope: !24)
!42 = !DILocation(line: 87, column: 2, scope: !24)
!43 = !DILocation(line: 88, column: 6, scope: !24)
!44 = !DILocation(line: 86, column: 9, scope: !24)
!45 = !DILocation(line: 89, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !24, file: !1, line: 89, column: 5)
!47 = !{!48, !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 89, column: 18, scope: !46)
!51 = !DILocation(line: 89, column: 5, scope: !24)
!52 = !DILocation(line: 90, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !24, file: !1, line: 90, column: 5)
!54 = !DILocation(line: 90, column: 5, scope: !24)
!55 = !DILocation(line: 91, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 91, column: 9)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 90, column: 16)
!58 = !DILocation(line: 91, column: 9, scope: !57)
!59 = !DILocation(line: 99, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 91, column: 24)
!61 = !DILocation(line: 99, column: 12, scope: !60)
!62 = !{!63, !64, i64 0}
!63 = !{!"exception", !64, i64 0, !65, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !64, i64 40}
!64 = !{!"int", !48, i64 0}
!65 = !{!"any pointer", !48, i64 0}
!66 = !{!"double", !48, i64 0}
!67 = !DILocation(line: 100, column: 7, scope: !60)
!68 = !DILocation(line: 100, column: 12, scope: !60)
!69 = !{!63, !65, i64 8}
!70 = !DILocation(line: 101, column: 7, scope: !60)
!71 = !DILocation(line: 101, column: 11, scope: !60)
!72 = !{!63, !64, i64 40}
!73 = !DILocation(line: 102, column: 18, scope: !60)
!74 = !DILocation(line: 102, column: 23, scope: !60)
!75 = !{!63, !66, i64 24}
!76 = !DILocation(line: 102, column: 7, scope: !60)
!77 = !DILocation(line: 102, column: 12, scope: !60)
!78 = !{!63, !66, i64 16}
!79 = !DILocation(line: 103, column: 7, scope: !80)
!80 = distinct !DILexicalBlock(scope: !60, file: !1, line: 103, column: 7)
!81 = !DILocation(line: 103, column: 20, scope: !80)
!82 = !DILocation(line: 0, scope: !80)
!83 = !DILocation(line: 104, column: 5, scope: !80)
!84 = !{!63, !66, i64 32}
!85 = !DILocation(line: 107, column: 20, scope: !86)
!86 = distinct !DILexicalBlock(scope: !60, file: !1, line: 107, column: 7)
!87 = !DILocation(line: 107, column: 7, scope: !60)
!88 = !DILocation(line: 108, column: 5, scope: !86)
!89 = !DILocation(line: 87, column: 19, scope: !24)
!90 = !DILocation(line: 109, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 109, column: 12)
!92 = !DILocation(line: 109, column: 12, scope: !86)
!93 = !DILocation(line: 110, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 109, column: 28)
!95 = !DILocation(line: 111, column: 3, scope: !94)
!96 = !DILocation(line: 0, scope: !86)
!97 = !{!64, !64, i64 0}
!98 = !DILocation(line: 112, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !60, file: !1, line: 112, column: 14)
!100 = !DILocation(line: 112, column: 22, scope: !99)
!101 = !DILocation(line: 112, column: 14, scope: !60)
!102 = !DILocation(line: 113, column: 13, scope: !99)
!103 = !DILocation(line: 113, column: 19, scope: !99)
!104 = !DILocation(line: 114, column: 21, scope: !60)
!105 = !DILocation(line: 114, column: 10, scope: !60)
!106 = !DILocation(line: 115, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !56, file: !1, line: 115, column: 16)
!108 = !DILocation(line: 115, column: 16, scope: !56)
!109 = !DILocation(line: 117, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 115, column: 31)
!111 = !DILocation(line: 117, column: 12, scope: !110)
!112 = !DILocation(line: 118, column: 7, scope: !110)
!113 = !DILocation(line: 118, column: 12, scope: !110)
!114 = !DILocation(line: 119, column: 7, scope: !110)
!115 = !DILocation(line: 119, column: 11, scope: !110)
!116 = !DILocation(line: 120, column: 18, scope: !110)
!117 = !DILocation(line: 120, column: 23, scope: !110)
!118 = !DILocation(line: 120, column: 7, scope: !110)
!119 = !DILocation(line: 120, column: 12, scope: !110)
!120 = !DILocation(line: 121, column: 7, scope: !110)
!121 = !DILocation(line: 121, column: 14, scope: !110)
!122 = !DILocation(line: 122, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !110, file: !1, line: 122, column: 7)
!124 = !DILocation(line: 122, column: 20, scope: !123)
!125 = !DILocation(line: 122, column: 7, scope: !110)
!126 = !DILocation(line: 123, column: 5, scope: !123)
!127 = !DILocation(line: 124, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 124, column: 12)
!129 = !DILocation(line: 124, column: 12, scope: !123)
!130 = !DILocation(line: 125, column: 4, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 124, column: 28)
!132 = !DILocation(line: 126, column: 3, scope: !131)
!133 = !DILocation(line: 0, scope: !123)
!134 = !DILocation(line: 127, column: 18, scope: !135)
!135 = distinct !DILexicalBlock(scope: !110, file: !1, line: 127, column: 14)
!136 = !DILocation(line: 127, column: 22, scope: !135)
!137 = !DILocation(line: 127, column: 14, scope: !110)
!138 = !DILocation(line: 128, column: 13, scope: !135)
!139 = !DILocation(line: 128, column: 19, scope: !135)
!140 = !DILocation(line: 129, column: 21, scope: !110)
!141 = !DILocation(line: 129, column: 10, scope: !110)
!142 = !DILocation(line: 0, scope: !24)
!143 = !DILocation(line: 134, column: 1, scope: !24)
