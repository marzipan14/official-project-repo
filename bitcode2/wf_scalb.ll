; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_scalb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_scalb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"scalbf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @scalbf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_scalbf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %88, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finitef(float %5) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %10, label %11, label %48, !dbg !50

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyf(float %5) #5, !dbg !51
  %13 = icmp eq i32 %12, 0, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  br i1 %13, label %48, label %14, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @finitef(float %0) #5, !dbg !53
  %16 = icmp eq i32 %15, 0, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %16, label %48, label %17, !dbg !54

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !55
  store i32 3, i32* %18, align 8, !dbg !57, !tbaa !58
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !63
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8, !dbg !64, !tbaa !65
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !66
  store i32 0, i32* %20, align 8, !dbg !67, !tbaa !68
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  %22 = insertelement <2 x float> undef, float %0, i32 0, !dbg !70
  %23 = insertelement <2 x float> %22, float %1, i32 1, !dbg !70
  %24 = fpext <2 x float> %23 to <2 x double>, !dbg !70
  %25 = bitcast double* %21 to <2 x double>*, !dbg !71
  store <2 x double> %24, <2 x double>* %25, align 8, !dbg !71, !tbaa !72
  %26 = fcmp ogt float %0, 0.000000e+00, !dbg !73
  %27 = select i1 %26, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !74
  %28 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  store double %27, double* %28, align 8, !dbg !76, !tbaa !77
  %29 = load i32, i32* @__fdlib_version, align 4, !dbg !78, !tbaa !43
  %30 = icmp eq i32 %29, 2, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %30, label %31, label %33, !dbg !81

; <label>:31:                                     ; preds = %17
  %32 = tail call i32* @__errno() #5, !dbg !82
  br label %38, !dbg !82

; <label>:33:                                     ; preds = %17
  %34 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !84
  %35 = icmp eq i32 %34, 0, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %35, label %36, label %40, !dbg !86

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !87
  br label %38, !dbg !89

; <label>:38:                                     ; preds = %31, %36
  %39 = phi i32* [ %37, %36 ], [ %32, %31 ]
  store i32 34, i32* %39, align 4, !dbg !90, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br label %40, !dbg !92

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* %20, align 8, !dbg !92, !tbaa !68
  %42 = icmp eq i32 %41, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %42, label %45, label %43, !dbg !95

; <label>:43:                                     ; preds = %40
  %44 = call i32* @__errno() #5, !dbg !96
  store i32 %41, i32* %44, align 4, !dbg !97, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %45, !dbg !96

; <label>:45:                                     ; preds = %40, %43
  %46 = load double, double* %28, align 8, !dbg !98, !tbaa !77
  %47 = fptrunc double %46 to float, !dbg !99
  br label %88, !dbg !100

; <label>:48:                                     ; preds = %14, %8, %11
  %49 = fcmp oeq float %5, 0.000000e+00, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %49, label %50, label %83, !dbg !103

; <label>:50:                                     ; preds = %48
  %51 = fcmp une float %5, %0, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %51, label %52, label %83, !dbg !105

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !106
  store i32 4, i32* %53, align 8, !dbg !108, !tbaa !58
  %54 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !109
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %54, align 8, !dbg !110, !tbaa !65
  %55 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !111
  store i32 0, i32* %55, align 8, !dbg !112, !tbaa !68
  %56 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !113
  %57 = insertelement <2 x float> undef, float %0, i32 0, !dbg !114
  %58 = insertelement <2 x float> %57, float %1, i32 1, !dbg !114
  %59 = fpext <2 x float> %58 to <2 x double>, !dbg !114
  %60 = bitcast double* %56 to <2 x double>*, !dbg !115
  store <2 x double> %59, <2 x double>* %60, align 8, !dbg !115, !tbaa !72
  %61 = extractelement <2 x double> %59, i32 0, !dbg !116
  %62 = tail call double @copysign(double 0.000000e+00, double %61) #5, !dbg !116
  %63 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !117
  store double %62, double* %63, align 8, !dbg !118, !tbaa !77
  %64 = load i32, i32* @__fdlib_version, align 4, !dbg !119, !tbaa !43
  %65 = icmp eq i32 %64, 2, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %65, label %66, label %68, !dbg !122

; <label>:66:                                     ; preds = %52
  %67 = tail call i32* @__errno() #5, !dbg !123
  br label %73, !dbg !123

; <label>:68:                                     ; preds = %52
  %69 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !124
  %70 = icmp eq i32 %69, 0, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %70, label %71, label %75, !dbg !126

; <label>:71:                                     ; preds = %68
  %72 = call i32* @__errno() #5, !dbg !127
  br label %73, !dbg !129

; <label>:73:                                     ; preds = %66, %71
  %74 = phi i32* [ %72, %71 ], [ %67, %66 ]
  store i32 34, i32* %74, align 4, !dbg !130, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br label %75, !dbg !131

; <label>:75:                                     ; preds = %73, %68
  %76 = load i32, i32* %55, align 8, !dbg !131, !tbaa !68
  %77 = icmp eq i32 %76, 0, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br i1 %77, label %80, label %78, !dbg !134

; <label>:78:                                     ; preds = %75
  %79 = call i32* @__errno() #5, !dbg !135
  store i32 %76, i32* %79, align 4, !dbg !136, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br label %80, !dbg !135

; <label>:80:                                     ; preds = %75, %78
  %81 = load double, double* %63, align 8, !dbg !137, !tbaa !77
  %82 = fptrunc double %81 to float, !dbg !138
  br label %88, !dbg !139

; <label>:83:                                     ; preds = %50, %48
  %84 = tail call i32 @finitef(float %1) #5, !dbg !140
  %85 = icmp eq i32 %84, 0, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %85, label %86, label %88, !dbg !142

; <label>:86:                                     ; preds = %83
  %87 = tail call i32* @__errno() #5, !dbg !143
  store i32 34, i32* %87, align 4, !dbg !144, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br label %88, !dbg !143

; <label>:88:                                     ; preds = %86, %83, %2, %80, %45
  %89 = phi float [ %82, %80 ], [ %47, %45 ], [ %5, %2 ], [ %5, %83 ], [ %5, %86 ], !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret float %89, !dbg !147
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_scalbf(float, float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @copysign(double, double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_scalb.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "scalbf", scope: !1, file: !1, line: 29, type: !19, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13, !13}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 29, type: !13)
!23 = !DILocalVariable(name: "fn", arg: 2, scope: !18, file: !1, line: 29, type: !13)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 43, type: !13)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 50, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !12, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !12, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !12, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 29, column: 21, scope: !18)
!37 = !DILocation(line: 29, column: 30, scope: !18)
!38 = !DILocation(line: 50, column: 2, scope: !18)
!39 = !DILocation(line: 51, column: 6, scope: !18)
!40 = !DILocation(line: 43, column: 8, scope: !18)
!41 = !DILocation(line: 52, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 52, column: 18, scope: !42)
!47 = !DILocation(line: 52, column: 5, scope: !18)
!48 = !DILocation(line: 53, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 53, column: 5)
!50 = !DILocation(line: 53, column: 17, scope: !49)
!51 = !DILocation(line: 53, column: 19, scope: !49)
!52 = !DILocation(line: 53, column: 28, scope: !49)
!53 = !DILocation(line: 53, column: 30, scope: !49)
!54 = !DILocation(line: 53, column: 5, scope: !18)
!55 = !DILocation(line: 55, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 53, column: 42)
!57 = !DILocation(line: 55, column: 15, scope: !56)
!58 = !{!59, !60, i64 0}
!59 = !{!"exception", !60, i64 0, !61, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !60, i64 40}
!60 = !{!"int", !44, i64 0}
!61 = !{!"any pointer", !44, i64 0}
!62 = !{!"double", !44, i64 0}
!63 = !DILocation(line: 56, column: 10, scope: !56)
!64 = !DILocation(line: 56, column: 15, scope: !56)
!65 = !{!59, !61, i64 8}
!66 = !DILocation(line: 57, column: 10, scope: !56)
!67 = !DILocation(line: 57, column: 14, scope: !56)
!68 = !{!59, !60, i64 40}
!69 = !DILocation(line: 58, column: 10, scope: !56)
!70 = !DILocation(line: 58, column: 17, scope: !56)
!71 = !DILocation(line: 58, column: 15, scope: !56)
!72 = !{!62, !62, i64 0}
!73 = !DILocation(line: 60, column: 21, scope: !56)
!74 = !DILocation(line: 60, column: 19, scope: !56)
!75 = !DILocation(line: 60, column: 10, scope: !56)
!76 = !DILocation(line: 60, column: 17, scope: !56)
!77 = !{!59, !62, i64 32}
!78 = !DILocation(line: 61, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !56, file: !1, line: 61, column: 10)
!80 = !DILocation(line: 61, column: 23, scope: !79)
!81 = !DILocation(line: 61, column: 10, scope: !56)
!82 = !DILocation(line: 62, column: 9, scope: !79)
!83 = !DILocation(line: 50, column: 19, scope: !18)
!84 = !DILocation(line: 63, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 63, column: 15)
!86 = !DILocation(line: 63, column: 15, scope: !79)
!87 = !DILocation(line: 64, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 63, column: 31)
!89 = !DILocation(line: 65, column: 6, scope: !88)
!90 = !DILocation(line: 0, scope: !79)
!91 = !{!60, !60, i64 0}
!92 = !DILocation(line: 66, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !56, file: !1, line: 66, column: 10)
!94 = !DILocation(line: 66, column: 18, scope: !93)
!95 = !DILocation(line: 66, column: 10, scope: !56)
!96 = !DILocation(line: 67, column: 9, scope: !93)
!97 = !DILocation(line: 67, column: 15, scope: !93)
!98 = !DILocation(line: 68, column: 24, scope: !56)
!99 = !DILocation(line: 68, column: 20, scope: !56)
!100 = !DILocation(line: 68, column: 13, scope: !56)
!101 = !DILocation(line: 70, column: 6, scope: !102)
!102 = distinct !DILexicalBlock(scope: !18, file: !1, line: 70, column: 5)
!103 = !DILocation(line: 70, column: 18, scope: !102)
!104 = !DILocation(line: 70, column: 21, scope: !102)
!105 = !DILocation(line: 70, column: 5, scope: !18)
!106 = !DILocation(line: 72, column: 10, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 70, column: 26)
!108 = !DILocation(line: 72, column: 15, scope: !107)
!109 = !DILocation(line: 73, column: 10, scope: !107)
!110 = !DILocation(line: 73, column: 15, scope: !107)
!111 = !DILocation(line: 74, column: 10, scope: !107)
!112 = !DILocation(line: 74, column: 14, scope: !107)
!113 = !DILocation(line: 75, column: 10, scope: !107)
!114 = !DILocation(line: 75, column: 17, scope: !107)
!115 = !DILocation(line: 75, column: 15, scope: !107)
!116 = !DILocation(line: 77, column: 19, scope: !107)
!117 = !DILocation(line: 77, column: 10, scope: !107)
!118 = !DILocation(line: 77, column: 17, scope: !107)
!119 = !DILocation(line: 78, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !107, file: !1, line: 78, column: 10)
!121 = !DILocation(line: 78, column: 23, scope: !120)
!122 = !DILocation(line: 78, column: 10, scope: !107)
!123 = !DILocation(line: 79, column: 9, scope: !120)
!124 = !DILocation(line: 80, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 80, column: 15)
!126 = !DILocation(line: 80, column: 15, scope: !120)
!127 = !DILocation(line: 81, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 80, column: 31)
!129 = !DILocation(line: 82, column: 6, scope: !128)
!130 = !DILocation(line: 0, scope: !120)
!131 = !DILocation(line: 83, column: 14, scope: !132)
!132 = distinct !DILexicalBlock(scope: !107, file: !1, line: 83, column: 10)
!133 = !DILocation(line: 83, column: 18, scope: !132)
!134 = !DILocation(line: 83, column: 10, scope: !107)
!135 = !DILocation(line: 84, column: 9, scope: !132)
!136 = !DILocation(line: 84, column: 15, scope: !132)
!137 = !DILocation(line: 85, column: 24, scope: !107)
!138 = !DILocation(line: 85, column: 20, scope: !107)
!139 = !DILocation(line: 85, column: 13, scope: !107)
!140 = !DILocation(line: 88, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !18, file: !1, line: 88, column: 5)
!142 = !DILocation(line: 88, column: 5, scope: !18)
!143 = !DILocation(line: 88, column: 19, scope: !141)
!144 = !DILocation(line: 88, column: 25, scope: !141)
!145 = !DILocation(line: 0, scope: !56)
!146 = !DILocation(line: 0, scope: !42)
!147 = !DILocation(line: 92, column: 1, scope: !18)
