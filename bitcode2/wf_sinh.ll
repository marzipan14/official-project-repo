; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"sinhf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @sinhf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_sinhf(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %49, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @finitef(float %4) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %9, label %10, label %49, !dbg !48

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @finitef(float %0) #5, !dbg !49
  %12 = icmp eq i32 %11, 0, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %12, label %49, label %13, !dbg !50

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !51
  store i32 3, i32* %14, align 8, !dbg !53, !tbaa !54
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !59
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !60, !tbaa !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !62
  store i32 0, i32* %16, align 8, !dbg !63, !tbaa !64
  %17 = fpext float %0 to double, !dbg !65
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !66
  store double %17, double* %18, align 8, !dbg !67, !tbaa !68
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !69
  store double %17, double* %19, align 8, !dbg !70, !tbaa !71
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !72, !tbaa !41
  %21 = icmp eq i32 %20, 0, !dbg !74
  %22 = fcmp ogt float %0, 0.000000e+00, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %21, label %23, label %27, !dbg !76

; <label>:23:                                     ; preds = %13
  %24 = select i1 %22, float 0x47EFFFFFE0000000, float 0xC7EFFFFFE0000000, !dbg !77
  %25 = fpext float %24 to double, !dbg !78
  %26 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !79
  store double %25, double* %26, align 8, !dbg !80, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %33, !dbg !83

; <label>:27:                                     ; preds = %13
  %28 = select i1 %22, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !84
  %29 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !85
  store double %28, double* %29, align 8, !dbg !86, !tbaa !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = icmp eq i32 %20, 2, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %30, label %31, label %33, !dbg !83

; <label>:31:                                     ; preds = %27
  %32 = tail call i32* @__errno() #5, !dbg !89
  br label %38, !dbg !89

; <label>:33:                                     ; preds = %23, %27
  %34 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !91
  %35 = icmp eq i32 %34, 0, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %35, label %36, label %40, !dbg !93

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !94
  br label %38, !dbg !96

; <label>:38:                                     ; preds = %31, %36
  %39 = phi i32* [ %37, %36 ], [ %32, %31 ]
  store i32 34, i32* %39, align 4, !dbg !97, !tbaa !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %40, !dbg !99

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* %16, align 8, !dbg !99, !tbaa !64
  %42 = icmp eq i32 %41, 0, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br i1 %42, label %45, label %43, !dbg !102

; <label>:43:                                     ; preds = %40
  %44 = call i32* @__errno() #5, !dbg !103
  store i32 %41, i32* %44, align 4, !dbg !104, !tbaa !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br label %45, !dbg !103

; <label>:45:                                     ; preds = %40, %43
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !105
  %47 = load double, double* %46, align 8, !dbg !105, !tbaa !81
  %48 = fptrunc double %47 to float, !dbg !106
  br label %49, !dbg !107

; <label>:49:                                     ; preds = %7, %10, %1, %45
  %50 = phi float [ %48, %45 ], [ %4, %1 ], [ %4, %10 ], [ %4, %7 ], !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  ret float %50, !dbg !110
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sinhf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sinh.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "sinhf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !13)
!23 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !13)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !26)
!26 = !{!27, !28, !31, !32, !33, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !4, line: 581, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 582, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !25, file: !4, line: 583, baseType: !12, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !25, file: !4, line: 584, baseType: !12, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !25, file: !4, line: 585, baseType: !12, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !25, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!35 = !DILocation(line: 24, column: 20, scope: !18)
!36 = !DILocation(line: 34, column: 2, scope: !18)
!37 = !DILocation(line: 35, column: 6, scope: !18)
!38 = !DILocation(line: 33, column: 8, scope: !18)
!39 = !DILocation(line: 36, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 36, column: 18, scope: !40)
!45 = !DILocation(line: 36, column: 5, scope: !18)
!46 = !DILocation(line: 37, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!48 = !DILocation(line: 37, column: 16, scope: !47)
!49 = !DILocation(line: 37, column: 18, scope: !47)
!50 = !DILocation(line: 37, column: 5, scope: !18)
!51 = !DILocation(line: 45, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 37, column: 30)
!53 = !DILocation(line: 45, column: 15, scope: !52)
!54 = !{!55, !56, i64 0}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 46, column: 10, scope: !52)
!60 = !DILocation(line: 46, column: 15, scope: !52)
!61 = !{!55, !57, i64 8}
!62 = !DILocation(line: 47, column: 10, scope: !52)
!63 = !DILocation(line: 47, column: 14, scope: !52)
!64 = !{!55, !56, i64 40}
!65 = !DILocation(line: 48, column: 28, scope: !52)
!66 = !DILocation(line: 48, column: 21, scope: !52)
!67 = !DILocation(line: 48, column: 26, scope: !52)
!68 = !{!55, !58, i64 24}
!69 = !DILocation(line: 48, column: 10, scope: !52)
!70 = !DILocation(line: 48, column: 15, scope: !52)
!71 = !{!55, !58, i64 16}
!72 = !DILocation(line: 49, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !52, file: !1, line: 49, column: 10)
!74 = !DILocation(line: 49, column: 23, scope: !73)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 49, column: 10, scope: !52)
!77 = !DILocation(line: 50, column: 24, scope: !73)
!78 = !DILocation(line: 50, column: 22, scope: !73)
!79 = !DILocation(line: 50, column: 13, scope: !73)
!80 = !DILocation(line: 50, column: 20, scope: !73)
!81 = !{!55, !58, i64 32}
!82 = !DILocation(line: 50, column: 9, scope: !73)
!83 = !DILocation(line: 53, column: 10, scope: !52)
!84 = !DILocation(line: 52, column: 24, scope: !73)
!85 = !DILocation(line: 52, column: 13, scope: !73)
!86 = !DILocation(line: 52, column: 20, scope: !73)
!87 = !DILocation(line: 53, column: 23, scope: !88)
!88 = distinct !DILexicalBlock(scope: !52, file: !1, line: 53, column: 10)
!89 = !DILocation(line: 54, column: 9, scope: !88)
!90 = !DILocation(line: 34, column: 19, scope: !18)
!91 = !DILocation(line: 55, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 55, column: 15)
!93 = !DILocation(line: 55, column: 15, scope: !88)
!94 = !DILocation(line: 56, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 55, column: 31)
!96 = !DILocation(line: 57, column: 6, scope: !95)
!97 = !DILocation(line: 0, scope: !88)
!98 = !{!56, !56, i64 0}
!99 = !DILocation(line: 58, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !52, file: !1, line: 58, column: 10)
!101 = !DILocation(line: 58, column: 18, scope: !100)
!102 = !DILocation(line: 58, column: 10, scope: !52)
!103 = !DILocation(line: 59, column: 9, scope: !100)
!104 = !DILocation(line: 59, column: 15, scope: !100)
!105 = !DILocation(line: 60, column: 31, scope: !52)
!106 = !DILocation(line: 60, column: 20, scope: !52)
!107 = !DILocation(line: 60, column: 13, scope: !52)
!108 = !DILocation(line: 0, scope: !52)
!109 = !DILocation(line: 0, scope: !40)
!110 = !DILocation(line: 64, column: 1, scope: !18)
