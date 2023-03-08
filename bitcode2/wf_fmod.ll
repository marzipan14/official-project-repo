; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_fmod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_fmod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"fmodf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @fmodf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_fmodf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %49, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %10, label %49, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !50
  %13 = icmp eq i32 %12, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %13, label %49, label %14, !dbg !51

; <label>:14:                                     ; preds = %11
  %15 = fcmp oeq float %1, 0.000000e+00, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %15, label %16, label %49, !dbg !54

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !55
  store i32 1, i32* %17, align 8, !dbg !57, !tbaa !58
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !63
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8, !dbg !64, !tbaa !65
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !66
  store i32 0, i32* %19, align 8, !dbg !67, !tbaa !68
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  %21 = insertelement <2 x float> undef, float %0, i32 0, !dbg !70
  %22 = insertelement <2 x float> %21, float %1, i32 1, !dbg !70
  %23 = fpext <2 x float> %22 to <2 x double>, !dbg !70
  %24 = bitcast double* %20 to <2 x double>*, !dbg !71
  store <2 x double> %23, <2 x double>* %24, align 8, !dbg !71, !tbaa !72
  %25 = load i32, i32* @__fdlib_version, align 4, !dbg !73, !tbaa !43
  %26 = icmp eq i32 %25, 0, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  %27 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !77
  br i1 %26, label %28, label %30, !dbg !76

; <label>:28:                                     ; preds = %16
  %29 = extractelement <2 x double> %23, i32 0, !dbg !78
  store double %29, double* %27, align 8, !dbg !78, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br label %34, !dbg !81

; <label>:30:                                     ; preds = %16
  store double 0x7FF8000000000000, double* %27, align 8, !dbg !82, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = icmp eq i32 %25, 2, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %31, label %32, label %34, !dbg !81

; <label>:32:                                     ; preds = %30
  %33 = tail call i32* @__errno() #5, !dbg !85
  br label %39, !dbg !85

; <label>:34:                                     ; preds = %28, %30
  %35 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !87
  %36 = icmp eq i32 %35, 0, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %36, label %37, label %41, !dbg !89

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !90
  br label %39, !dbg !92

; <label>:39:                                     ; preds = %32, %37
  %40 = phi i32* [ %38, %37 ], [ %33, %32 ]
  store i32 33, i32* %40, align 4, !dbg !93, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br label %41, !dbg !95

; <label>:41:                                     ; preds = %39, %34
  %42 = load i32, i32* %19, align 8, !dbg !95, !tbaa !68
  %43 = icmp eq i32 %42, 0, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %43, label %46, label %44, !dbg !98

; <label>:44:                                     ; preds = %41
  %45 = call i32* @__errno() #5, !dbg !99
  store i32 %42, i32* %45, align 4, !dbg !100, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %46, !dbg !99

; <label>:46:                                     ; preds = %41, %44
  %47 = load double, double* %27, align 8, !dbg !101, !tbaa !79
  %48 = fptrunc double %47 to float, !dbg !102
  br label %49, !dbg !103

; <label>:49:                                     ; preds = %14, %2, %8, %11, %46
  %50 = phi float [ %48, %46 ], [ %5, %11 ], [ %5, %8 ], [ %5, %2 ], [ %5, %14 ], !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  ret float %50, !dbg !106
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_fmodf(float, float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_fmod.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "fmodf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12, !12}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !18, file: !1, line: 24, type: !12)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !12)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !26)
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
!36 = !DILocation(line: 24, column: 20, scope: !18)
!37 = !DILocation(line: 24, column: 29, scope: !18)
!38 = !DILocation(line: 34, column: 2, scope: !18)
!39 = !DILocation(line: 35, column: 6, scope: !18)
!40 = !DILocation(line: 33, column: 8, scope: !18)
!41 = !DILocation(line: 36, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 36, column: 18, scope: !42)
!47 = !DILocation(line: 36, column: 28, scope: !42)
!48 = !DILocation(line: 36, column: 30, scope: !42)
!49 = !DILocation(line: 36, column: 38, scope: !42)
!50 = !DILocation(line: 36, column: 40, scope: !42)
!51 = !DILocation(line: 36, column: 5, scope: !18)
!52 = !DILocation(line: 37, column: 6, scope: !53)
!53 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!54 = !DILocation(line: 37, column: 5, scope: !18)
!55 = !DILocation(line: 39, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 37, column: 20)
!57 = !DILocation(line: 39, column: 22, scope: !56)
!58 = !{!59, !60, i64 0}
!59 = !{!"exception", !60, i64 0, !61, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !60, i64 40}
!60 = !{!"int", !44, i64 0}
!61 = !{!"any pointer", !44, i64 0}
!62 = !{!"double", !44, i64 0}
!63 = !DILocation(line: 40, column: 17, scope: !56)
!64 = !DILocation(line: 40, column: 22, scope: !56)
!65 = !{!59, !61, i64 8}
!66 = !DILocation(line: 41, column: 10, scope: !56)
!67 = !DILocation(line: 41, column: 14, scope: !56)
!68 = !{!59, !60, i64 40}
!69 = !DILocation(line: 42, column: 10, scope: !56)
!70 = !DILocation(line: 42, column: 17, scope: !56)
!71 = !DILocation(line: 42, column: 15, scope: !56)
!72 = !{!62, !62, i64 0}
!73 = !DILocation(line: 44, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !56, file: !1, line: 44, column: 17)
!75 = !DILocation(line: 44, column: 30, scope: !74)
!76 = !DILocation(line: 44, column: 17, scope: !56)
!77 = !DILocation(line: 0, scope: !74)
!78 = !DILocation(line: 45, column: 27, scope: !74)
!79 = !{!59, !62, i64 32}
!80 = !DILocation(line: 45, column: 16, scope: !74)
!81 = !DILocation(line: 48, column: 17, scope: !56)
!82 = !DILocation(line: 47, column: 20, scope: !74)
!83 = !DILocation(line: 48, column: 30, scope: !84)
!84 = distinct !DILexicalBlock(scope: !56, file: !1, line: 48, column: 17)
!85 = !DILocation(line: 49, column: 16, scope: !84)
!86 = !DILocation(line: 34, column: 19, scope: !18)
!87 = !DILocation(line: 50, column: 23, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 50, column: 22)
!89 = !DILocation(line: 50, column: 22, scope: !84)
!90 = !DILocation(line: 51, column: 19, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 50, column: 38)
!92 = !DILocation(line: 52, column: 13, scope: !91)
!93 = !DILocation(line: 0, scope: !84)
!94 = !{!60, !60, i64 0}
!95 = !DILocation(line: 53, column: 14, scope: !96)
!96 = distinct !DILexicalBlock(scope: !56, file: !1, line: 53, column: 10)
!97 = !DILocation(line: 53, column: 18, scope: !96)
!98 = !DILocation(line: 53, column: 10, scope: !56)
!99 = !DILocation(line: 54, column: 9, scope: !96)
!100 = !DILocation(line: 54, column: 15, scope: !96)
!101 = !DILocation(line: 55, column: 31, scope: !56)
!102 = !DILocation(line: 55, column: 20, scope: !56)
!103 = !DILocation(line: 55, column: 13, scope: !56)
!104 = !DILocation(line: 0, scope: !53)
!105 = !DILocation(line: 0, scope: !42)
!106 = !DILocation(line: 59, column: 1, scope: !18)
