; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_atanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_atanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"atanhf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @atanhf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !37
  %4 = tail call float @__ieee754_atanhf(float %0) #5, !dbg !38
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !40, !tbaa !42
  %6 = icmp eq i32 %5, -1, !dbg !45
  br i1 %6, label %59, label %7, !dbg !46

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !47
  %9 = icmp eq i32 %8, 0, !dbg !47
  br i1 %9, label %59, label %10, !dbg !48

; <label>:10:                                     ; preds = %7
  %11 = tail call float @fabsf(float %0) #5, !dbg !49
  %12 = fcmp ult float %11, 1.000000e+00, !dbg !51
  br i1 %12, label %59, label %13, !dbg !53

; <label>:13:                                     ; preds = %10
  %14 = fcmp ogt float %11, 1.000000e+00, !dbg !54
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !57
  br i1 %14, label %16, label %32, !dbg !59

; <label>:16:                                     ; preds = %13
  store i32 1, i32* %15, align 8, !dbg !60, !tbaa !62
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !67
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8, !dbg !68, !tbaa !69
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !70
  store i32 0, i32* %18, align 8, !dbg !71, !tbaa !72
  %19 = fpext float %0 to double, !dbg !73
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !74
  store double %19, double* %20, align 8, !dbg !75, !tbaa !76
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !77
  store double %19, double* %21, align 8, !dbg !78, !tbaa !79
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !80
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !81, !tbaa !82
  %23 = load i32, i32* @__fdlib_version, align 4, !dbg !83, !tbaa !42
  %24 = icmp eq i32 %23, 2, !dbg !85
  br i1 %24, label %25, label %27, !dbg !86

; <label>:25:                                     ; preds = %16
  %26 = tail call i32* @__errno() #5, !dbg !87
  store i32 33, i32* %26, align 4, !dbg !88, !tbaa !89
  br label %49, !dbg !87

; <label>:27:                                     ; preds = %16
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !91
  %29 = icmp eq i32 %28, 0, !dbg !91
  br i1 %29, label %30, label %49, !dbg !93

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !94
  store i32 33, i32* %31, align 4, !dbg !96, !tbaa !89
  br label %49, !dbg !97

; <label>:32:                                     ; preds = %13
  store i32 2, i32* %15, align 8, !dbg !98, !tbaa !62
  %33 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !99
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %33, align 8, !dbg !100, !tbaa !69
  %34 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !101
  store i32 0, i32* %34, align 8, !dbg !102, !tbaa !72
  %35 = fpext float %0 to double, !dbg !103
  %36 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !104
  store double %35, double* %36, align 8, !dbg !105, !tbaa !76
  %37 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !106
  store double %35, double* %37, align 8, !dbg !107, !tbaa !79
  %38 = fdiv double %35, 0.000000e+00, !dbg !108
  %39 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !109
  store double %38, double* %39, align 8, !dbg !110, !tbaa !82
  %40 = load i32, i32* @__fdlib_version, align 4, !dbg !111, !tbaa !42
  %41 = icmp eq i32 %40, 2, !dbg !113
  br i1 %41, label %42, label %44, !dbg !114

; <label>:42:                                     ; preds = %32
  %43 = tail call i32* @__errno() #5, !dbg !115
  store i32 33, i32* %43, align 4, !dbg !116, !tbaa !89
  br label %49, !dbg !115

; <label>:44:                                     ; preds = %32
  %45 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !117
  %46 = icmp eq i32 %45, 0, !dbg !117
  br i1 %46, label %47, label %49, !dbg !119

; <label>:47:                                     ; preds = %44
  %48 = call i32* @__errno() #5, !dbg !120
  store i32 33, i32* %48, align 4, !dbg !122, !tbaa !89
  br label %49, !dbg !123

; <label>:49:                                     ; preds = %27, %44, %42, %47, %25, %30
  %50 = phi i32* [ %18, %27 ], [ %34, %44 ], [ %34, %42 ], [ %34, %47 ], [ %18, %25 ], [ %18, %30 ], !dbg !124
  %51 = load i32, i32* %50, align 8, !dbg !124, !tbaa !72
  %52 = icmp eq i32 %51, 0, !dbg !126
  br i1 %52, label %55, label %53, !dbg !127

; <label>:53:                                     ; preds = %49
  %54 = call i32* @__errno() #5, !dbg !128
  store i32 %51, i32* %54, align 4, !dbg !129, !tbaa !89
  br label %55, !dbg !128

; <label>:55:                                     ; preds = %49, %53
  %56 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !130
  %57 = load double, double* %56, align 8, !dbg !130, !tbaa !82
  %58 = fptrunc double %57 to float, !dbg !131
  br label %59, !dbg !132

; <label>:59:                                     ; preds = %10, %1, %7, %55
  %60 = phi float [ %58, %55 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !133
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  ret float %60, !dbg !134
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_atanhf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #2

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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_atanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "atanhf", scope: !1, file: !1, line: 23, type: !19, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 23, type: !12)
!23 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 32, type: !12)
!24 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 32, type: !12)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 33, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !13, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !13, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !13, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 23, column: 21, scope: !18)
!37 = !DILocation(line: 33, column: 2, scope: !18)
!38 = !DILocation(line: 34, column: 6, scope: !18)
!39 = !DILocation(line: 32, column: 8, scope: !18)
!40 = !DILocation(line: 35, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 5)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 35, column: 18, scope: !41)
!46 = !DILocation(line: 35, column: 28, scope: !41)
!47 = !DILocation(line: 35, column: 31, scope: !41)
!48 = !DILocation(line: 35, column: 5, scope: !18)
!49 = !DILocation(line: 36, column: 6, scope: !18)
!50 = !DILocation(line: 32, column: 10, scope: !18)
!51 = !DILocation(line: 37, column: 6, scope: !52)
!52 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!53 = !DILocation(line: 37, column: 5, scope: !18)
!54 = !DILocation(line: 38, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 38, column: 9)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 37, column: 20)
!57 = !DILocation(line: 0, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 50, column: 13)
!59 = !DILocation(line: 38, column: 9, scope: !56)
!60 = !DILocation(line: 40, column: 26, scope: !61)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 38, column: 23)
!62 = !{!63, !64, i64 0}
!63 = !{!"exception", !64, i64 0, !65, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !64, i64 40}
!64 = !{!"int", !43, i64 0}
!65 = !{!"any pointer", !43, i64 0}
!66 = !{!"double", !43, i64 0}
!67 = !DILocation(line: 41, column: 21, scope: !61)
!68 = !DILocation(line: 41, column: 26, scope: !61)
!69 = !{!63, !65, i64 8}
!70 = !DILocation(line: 42, column: 7, scope: !61)
!71 = !DILocation(line: 42, column: 11, scope: !61)
!72 = !{!63, !64, i64 40}
!73 = !DILocation(line: 43, column: 25, scope: !61)
!74 = !DILocation(line: 43, column: 18, scope: !61)
!75 = !DILocation(line: 43, column: 23, scope: !61)
!76 = !{!63, !66, i64 24}
!77 = !DILocation(line: 43, column: 7, scope: !61)
!78 = !DILocation(line: 43, column: 12, scope: !61)
!79 = !{!63, !66, i64 16}
!80 = !DILocation(line: 44, column: 21, scope: !61)
!81 = !DILocation(line: 44, column: 28, scope: !61)
!82 = !{!63, !66, i64 32}
!83 = !DILocation(line: 45, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !61, file: !1, line: 45, column: 21)
!85 = !DILocation(line: 45, column: 34, scope: !84)
!86 = !DILocation(line: 45, column: 21, scope: !61)
!87 = !DILocation(line: 46, column: 19, scope: !84)
!88 = !DILocation(line: 46, column: 25, scope: !84)
!89 = !{!64, !64, i64 0}
!90 = !DILocation(line: 33, column: 19, scope: !18)
!91 = !DILocation(line: 47, column: 27, scope: !92)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 47, column: 26)
!93 = !DILocation(line: 47, column: 26, scope: !84)
!94 = !DILocation(line: 48, column: 19, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 47, column: 42)
!96 = !DILocation(line: 48, column: 25, scope: !95)
!97 = !DILocation(line: 49, column: 17, scope: !95)
!98 = !DILocation(line: 52, column: 26, scope: !58)
!99 = !DILocation(line: 53, column: 21, scope: !58)
!100 = !DILocation(line: 53, column: 26, scope: !58)
!101 = !DILocation(line: 54, column: 7, scope: !58)
!102 = !DILocation(line: 54, column: 11, scope: !58)
!103 = !DILocation(line: 55, column: 25, scope: !58)
!104 = !DILocation(line: 55, column: 18, scope: !58)
!105 = !DILocation(line: 55, column: 23, scope: !58)
!106 = !DILocation(line: 55, column: 7, scope: !58)
!107 = !DILocation(line: 55, column: 12, scope: !58)
!108 = !DILocation(line: 56, column: 17, scope: !58)
!109 = !DILocation(line: 56, column: 7, scope: !58)
!110 = !DILocation(line: 56, column: 14, scope: !58)
!111 = !DILocation(line: 57, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !58, file: !1, line: 57, column: 21)
!113 = !DILocation(line: 57, column: 34, scope: !112)
!114 = !DILocation(line: 57, column: 21, scope: !58)
!115 = !DILocation(line: 58, column: 19, scope: !112)
!116 = !DILocation(line: 58, column: 25, scope: !112)
!117 = !DILocation(line: 59, column: 27, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 59, column: 26)
!119 = !DILocation(line: 59, column: 26, scope: !112)
!120 = !DILocation(line: 60, column: 19, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 59, column: 42)
!122 = !DILocation(line: 60, column: 25, scope: !121)
!123 = !DILocation(line: 61, column: 17, scope: !121)
!124 = !DILocation(line: 63, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !56, file: !1, line: 63, column: 10)
!126 = !DILocation(line: 63, column: 18, scope: !125)
!127 = !DILocation(line: 63, column: 10, scope: !56)
!128 = !DILocation(line: 64, column: 15, scope: !125)
!129 = !DILocation(line: 64, column: 21, scope: !125)
!130 = !DILocation(line: 65, column: 31, scope: !56)
!131 = !DILocation(line: 65, column: 20, scope: !56)
!132 = !DILocation(line: 65, column: 13, scope: !56)
!133 = !DILocation(line: 0, scope: !52)
!134 = !DILocation(line: 69, column: 1, scope: !18)
