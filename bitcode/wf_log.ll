; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"logf\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @logf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_logf(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %54, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  %10 = fcmp ogt float %0, 0.000000e+00, !dbg !47
  %11 = or i1 %10, %9, !dbg !48
  br i1 %11, label %54, label %12, !dbg !48

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !49
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %13, align 8, !dbg !50, !tbaa !51
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !56
  store i32 0, i32* %14, align 8, !dbg !57, !tbaa !58
  %15 = fpext float %0 to double, !dbg !59
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !60
  store double %15, double* %16, align 8, !dbg !61, !tbaa !62
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !63
  store double %15, double* %17, align 8, !dbg !64, !tbaa !65
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !66, !tbaa !41
  %19 = icmp eq i32 %18, 0, !dbg !68
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !69
  %21 = select i1 %19, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !70
  store double %21, double* %20, align 8, !dbg !69, !tbaa !71
  %22 = fcmp oeq float %0, 0.000000e+00, !dbg !72
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !74
  br i1 %22, label %24, label %33, !dbg !76

; <label>:24:                                     ; preds = %12
  store i32 2, i32* %23, align 8, !dbg !77, !tbaa !79
  %25 = icmp eq i32 %18, 2, !dbg !80
  br i1 %25, label %26, label %28, !dbg !82

; <label>:26:                                     ; preds = %24
  %27 = tail call i32* @__errno() #5, !dbg !83
  store i32 34, i32* %27, align 4, !dbg !84, !tbaa !85
  br label %46, !dbg !83

; <label>:28:                                     ; preds = %24
  %29 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !87
  %30 = icmp eq i32 %29, 0, !dbg !87
  br i1 %30, label %31, label %46, !dbg !89

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !90
  store i32 34, i32* %32, align 4, !dbg !92, !tbaa !85
  br label %46, !dbg !93

; <label>:33:                                     ; preds = %12
  store i32 1, i32* %23, align 8, !dbg !94, !tbaa !79
  %34 = icmp eq i32 %18, 2, !dbg !95
  br i1 %34, label %35, label %37, !dbg !97

; <label>:35:                                     ; preds = %33
  %36 = tail call i32* @__errno() #5, !dbg !98
  br label %42, !dbg !98

; <label>:37:                                     ; preds = %33
  %38 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !99
  %39 = icmp eq i32 %38, 0, !dbg !99
  br i1 %39, label %40, label %44, !dbg !101

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !102
  br label %42, !dbg !104

; <label>:42:                                     ; preds = %35, %40
  %43 = phi i32* [ %41, %40 ], [ %36, %35 ]
  store i32 33, i32* %43, align 4, !dbg !105, !tbaa !85
  br label %44, !dbg !106

; <label>:44:                                     ; preds = %42, %37
  %45 = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !106
  store double %45, double* %20, align 8, !dbg !107, !tbaa !71
  br label %46

; <label>:46:                                     ; preds = %28, %26, %31, %44
  %47 = load i32, i32* %14, align 8, !dbg !108, !tbaa !58
  %48 = icmp eq i32 %47, 0, !dbg !110
  br i1 %48, label %51, label %49, !dbg !111

; <label>:49:                                     ; preds = %46
  %50 = call i32* @__errno() #5, !dbg !112
  store i32 %47, i32* %50, align 4, !dbg !113, !tbaa !85
  br label %51, !dbg !112

; <label>:51:                                     ; preds = %46, %49
  %52 = load double, double* %20, align 8, !dbg !114, !tbaa !71
  %53 = fptrunc double %52 to float, !dbg !115
  br label %54, !dbg !116

; <label>:54:                                     ; preds = %1, %7, %51
  %55 = phi float [ %53, %51 ], [ %4, %7 ], [ %4, %1 ], !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  ret float %55, !dbg !118
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "logf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
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
!35 = !DILocation(line: 24, column: 19, scope: !18)
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
!47 = !DILocation(line: 36, column: 45, scope: !40)
!48 = !DILocation(line: 36, column: 40, scope: !40)
!49 = !DILocation(line: 43, column: 6, scope: !18)
!50 = !DILocation(line: 43, column: 11, scope: !18)
!51 = !{!52, !54, i64 8}
!52 = !{!"exception", !53, i64 0, !54, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !53, i64 40}
!53 = !{!"int", !42, i64 0}
!54 = !{!"any pointer", !42, i64 0}
!55 = !{!"double", !42, i64 0}
!56 = !DILocation(line: 44, column: 6, scope: !18)
!57 = !DILocation(line: 44, column: 10, scope: !18)
!58 = !{!52, !53, i64 40}
!59 = !DILocation(line: 45, column: 24, scope: !18)
!60 = !DILocation(line: 45, column: 17, scope: !18)
!61 = !DILocation(line: 45, column: 22, scope: !18)
!62 = !{!52, !55, i64 24}
!63 = !DILocation(line: 45, column: 6, scope: !18)
!64 = !DILocation(line: 45, column: 11, scope: !18)
!65 = !{!52, !55, i64 16}
!66 = !DILocation(line: 46, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !18, file: !1, line: 46, column: 6)
!68 = !DILocation(line: 46, column: 19, scope: !67)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocation(line: 47, column: 12, scope: !67)
!71 = !{!52, !55, i64 32}
!72 = !DILocation(line: 50, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !18, file: !1, line: 50, column: 5)
!74 = !DILocation(line: 0, scope: !75)
!75 = distinct !DILexicalBlock(scope: !73, file: !1, line: 58, column: 9)
!76 = !DILocation(line: 50, column: 5, scope: !18)
!77 = !DILocation(line: 52, column: 15, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 50, column: 20)
!79 = !{!52, !53, i64 0}
!80 = !DILocation(line: 53, column: 23, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 53, column: 10)
!82 = !DILocation(line: 53, column: 10, scope: !78)
!83 = !DILocation(line: 54, column: 9, scope: !81)
!84 = !DILocation(line: 54, column: 15, scope: !81)
!85 = !{!53, !53, i64 0}
!86 = !DILocation(line: 34, column: 19, scope: !18)
!87 = !DILocation(line: 55, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 55, column: 15)
!89 = !DILocation(line: 55, column: 15, scope: !81)
!90 = !DILocation(line: 56, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 55, column: 31)
!92 = !DILocation(line: 56, column: 15, scope: !91)
!93 = !DILocation(line: 57, column: 6, scope: !91)
!94 = !DILocation(line: 60, column: 15, scope: !75)
!95 = !DILocation(line: 61, column: 23, scope: !96)
!96 = distinct !DILexicalBlock(scope: !75, file: !1, line: 61, column: 10)
!97 = !DILocation(line: 61, column: 10, scope: !75)
!98 = !DILocation(line: 62, column: 9, scope: !96)
!99 = !DILocation(line: 63, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 63, column: 15)
!101 = !DILocation(line: 63, column: 15, scope: !96)
!102 = !DILocation(line: 64, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 63, column: 31)
!104 = !DILocation(line: 65, column: 6, scope: !103)
!105 = !DILocation(line: 0, scope: !96)
!106 = !DILocation(line: 66, column: 26, scope: !75)
!107 = !DILocation(line: 66, column: 24, scope: !75)
!108 = !DILocation(line: 68, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !18, file: !1, line: 68, column: 6)
!110 = !DILocation(line: 68, column: 14, scope: !109)
!111 = !DILocation(line: 68, column: 6, scope: !18)
!112 = !DILocation(line: 69, column: 12, scope: !109)
!113 = !DILocation(line: 69, column: 18, scope: !109)
!114 = !DILocation(line: 70, column: 27, scope: !18)
!115 = !DILocation(line: 70, column: 16, scope: !18)
!116 = !DILocation(line: 70, column: 9, scope: !18)
!117 = !DILocation(line: 0, scope: !18)
!118 = !DILocation(line: 72, column: 1, scope: !18)
