; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"log10f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @log10f(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_log10f(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %55, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %55, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = fcmp ugt float %0, 0.000000e+00, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %11, label %55, label %12, !dbg !50

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8, !dbg !53, !tbaa !54
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !59
  store i32 0, i32* %14, align 8, !dbg !60, !tbaa !61
  %15 = fpext float %0 to double, !dbg !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !63
  store double %15, double* %16, align 8, !dbg !64, !tbaa !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !66
  store double %15, double* %17, align 8, !dbg !67, !tbaa !68
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !69, !tbaa !41
  %19 = icmp eq i32 %18, 0, !dbg !71
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %21 = select i1 %19, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !73
  store double %21, double* %20, align 8, !dbg !72, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %22 = fcmp oeq float %0, 0.000000e+00, !dbg !75
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %22, label %24, label %33, !dbg !79

; <label>:24:                                     ; preds = %12
  store i32 2, i32* %23, align 8, !dbg !80, !tbaa !82
  %25 = icmp eq i32 %18, 2, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %25, label %26, label %28, !dbg !85

; <label>:26:                                     ; preds = %24
  %27 = tail call i32* @__errno() #5, !dbg !86
  store i32 34, i32* %27, align 4, !dbg !87, !tbaa !88
  br label %46, !dbg !86

; <label>:28:                                     ; preds = %24
  %29 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !90
  %30 = icmp eq i32 %29, 0, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %30, label %31, label %47, !dbg !92

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !93
  store i32 34, i32* %32, align 4, !dbg !95, !tbaa !88
  br label %46, !dbg !96

; <label>:33:                                     ; preds = %12
  store i32 1, i32* %23, align 8, !dbg !97, !tbaa !82
  %34 = icmp eq i32 %18, 2, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br i1 %34, label %35, label %37, !dbg !100

; <label>:35:                                     ; preds = %33
  %36 = tail call i32* @__errno() #5, !dbg !101
  br label %42, !dbg !101

; <label>:37:                                     ; preds = %33
  %38 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !102
  %39 = icmp eq i32 %38, 0, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %39, label %40, label %44, !dbg !104

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !105
  br label %42, !dbg !107

; <label>:42:                                     ; preds = %35, %40
  %43 = phi i32* [ %41, %40 ], [ %36, %35 ]
  store i32 33, i32* %43, align 4, !dbg !108, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %44, !dbg !109

; <label>:44:                                     ; preds = %42, %37
  %45 = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !109
  store double %45, double* %20, align 8, !dbg !110, !tbaa !74
  br label %46

; <label>:46:                                     ; preds = %44, %31, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %47, !dbg !111

; <label>:47:                                     ; preds = %46, %28
  %48 = load i32, i32* %14, align 8, !dbg !111, !tbaa !61
  %49 = icmp eq i32 %48, 0, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %49, label %52, label %50, !dbg !114

; <label>:50:                                     ; preds = %47
  %51 = call i32* @__errno() #5, !dbg !115
  store i32 %48, i32* %51, align 4, !dbg !116, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  br label %52, !dbg !115

; <label>:52:                                     ; preds = %47, %50
  %53 = load double, double* %20, align 8, !dbg !117, !tbaa !74
  %54 = fptrunc double %53 to float, !dbg !118
  br label %55, !dbg !119

; <label>:55:                                     ; preds = %10, %1, %7, %52
  %56 = phi float [ %54, %52 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  ret float %56, !dbg !122
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_log10f(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @nan(i8*) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "log10f", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !12)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !26)
!26 = !{!27, !28, !31, !32, !33, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !4, line: 581, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 582, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !25, file: !4, line: 583, baseType: !13, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !25, file: !4, line: 584, baseType: !13, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !25, file: !4, line: 585, baseType: !13, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !25, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!35 = !DILocation(line: 24, column: 21, scope: !18)
!36 = !DILocation(line: 34, column: 2, scope: !18)
!37 = !DILocation(line: 35, column: 6, scope: !18)
!38 = !DILocation(line: 33, column: 8, scope: !18)
!39 = !DILocation(line: 36, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 36, column: 18, scope: !40)
!45 = !DILocation(line: 36, column: 28, scope: !40)
!46 = !DILocation(line: 36, column: 31, scope: !40)
!47 = !DILocation(line: 36, column: 5, scope: !18)
!48 = !DILocation(line: 37, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!50 = !DILocation(line: 37, column: 5, scope: !18)
!51 = !DILocation(line: 44, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 20)
!53 = !DILocation(line: 44, column: 15, scope: !52)
!54 = !{!55, !57, i64 8}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 45, column: 10, scope: !52)
!60 = !DILocation(line: 45, column: 14, scope: !52)
!61 = !{!55, !56, i64 40}
!62 = !DILocation(line: 46, column: 28, scope: !52)
!63 = !DILocation(line: 46, column: 21, scope: !52)
!64 = !DILocation(line: 46, column: 26, scope: !52)
!65 = !{!55, !58, i64 24}
!66 = !DILocation(line: 46, column: 10, scope: !52)
!67 = !DILocation(line: 46, column: 15, scope: !52)
!68 = !{!55, !58, i64 16}
!69 = !DILocation(line: 47, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !52, file: !1, line: 47, column: 10)
!71 = !DILocation(line: 47, column: 23, scope: !70)
!72 = !DILocation(line: 0, scope: !70)
!73 = !DILocation(line: 47, column: 10, scope: !52)
!74 = !{!55, !58, i64 32}
!75 = !DILocation(line: 51, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !52, file: !1, line: 51, column: 9)
!77 = !DILocation(line: 0, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !1, line: 59, column: 13)
!79 = !DILocation(line: 51, column: 9, scope: !52)
!80 = !DILocation(line: 53, column: 19, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 51, column: 24)
!82 = !{!55, !56, i64 0}
!83 = !DILocation(line: 54, column: 27, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 54, column: 14)
!85 = !DILocation(line: 54, column: 14, scope: !81)
!86 = !DILocation(line: 55, column: 13, scope: !84)
!87 = !DILocation(line: 55, column: 19, scope: !84)
!88 = !{!56, !56, i64 0}
!89 = !DILocation(line: 34, column: 19, scope: !18)
!90 = !DILocation(line: 56, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !84, file: !1, line: 56, column: 19)
!92 = !DILocation(line: 56, column: 19, scope: !84)
!93 = !DILocation(line: 57, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !1, line: 56, column: 35)
!95 = !DILocation(line: 57, column: 19, scope: !94)
!96 = !DILocation(line: 58, column: 10, scope: !94)
!97 = !DILocation(line: 61, column: 19, scope: !78)
!98 = !DILocation(line: 62, column: 27, scope: !99)
!99 = distinct !DILexicalBlock(scope: !78, file: !1, line: 62, column: 14)
!100 = !DILocation(line: 62, column: 14, scope: !78)
!101 = !DILocation(line: 63, column: 13, scope: !99)
!102 = !DILocation(line: 64, column: 20, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !1, line: 64, column: 19)
!104 = !DILocation(line: 64, column: 19, scope: !99)
!105 = !DILocation(line: 65, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 64, column: 35)
!107 = !DILocation(line: 66, column: 10, scope: !106)
!108 = !DILocation(line: 0, scope: !99)
!109 = !DILocation(line: 67, column: 30, scope: !78)
!110 = !DILocation(line: 67, column: 28, scope: !78)
!111 = !DILocation(line: 69, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !52, file: !1, line: 69, column: 10)
!113 = !DILocation(line: 69, column: 18, scope: !112)
!114 = !DILocation(line: 69, column: 10, scope: !52)
!115 = !DILocation(line: 70, column: 16, scope: !112)
!116 = !DILocation(line: 70, column: 22, scope: !112)
!117 = !DILocation(line: 71, column: 31, scope: !52)
!118 = !DILocation(line: 71, column: 20, scope: !52)
!119 = !DILocation(line: 71, column: 13, scope: !52)
!120 = !DILocation(line: 0, scope: !49)
!121 = !DILocation(line: 0, scope: !40)
!122 = !DILocation(line: 75, column: 1, scope: !18)
