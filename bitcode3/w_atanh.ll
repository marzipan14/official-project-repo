; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_atanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_atanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"atanh\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @atanh(double) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !35
  %4 = tail call double @__ieee754_atanh(double %0) #5, !dbg !36
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !38, !tbaa !40
  %6 = icmp eq i32 %5, -1, !dbg !43
  br i1 %6, label %56, label %7, !dbg !44

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !45
  %9 = icmp eq i32 %8, 0, !dbg !45
  br i1 %9, label %56, label %10, !dbg !46

; <label>:10:                                     ; preds = %7
  %11 = tail call double @fabs(double %0) #5, !dbg !47
  %12 = fcmp ult double %11, 1.000000e+00, !dbg !49
  br i1 %12, label %56, label %13, !dbg !51

; <label>:13:                                     ; preds = %10
  %14 = fcmp ogt double %11, 1.000000e+00, !dbg !52
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !55
  br i1 %14, label %16, label %31, !dbg !57

; <label>:16:                                     ; preds = %13
  store i32 1, i32* %15, align 8, !dbg !58, !tbaa !60
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !65
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !68
  store i32 0, i32* %18, align 8, !dbg !69, !tbaa !70
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !71
  store double %0, double* %19, align 8, !dbg !72, !tbaa !73
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !74
  store double %0, double* %20, align 8, !dbg !75, !tbaa !76
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !77
  store double 0x7FF8000000000000, double* %21, align 8, !dbg !78, !tbaa !79
  %22 = load i32, i32* @__fdlib_version, align 4, !dbg !80, !tbaa !40
  %23 = icmp eq i32 %22, 2, !dbg !82
  br i1 %23, label %24, label %26, !dbg !83

; <label>:24:                                     ; preds = %16
  %25 = tail call i32* @__errno() #5, !dbg !84
  store i32 33, i32* %25, align 4, !dbg !85, !tbaa !86
  br label %47, !dbg !84

; <label>:26:                                     ; preds = %16
  %27 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !88
  %28 = icmp eq i32 %27, 0, !dbg !88
  br i1 %28, label %29, label %47, !dbg !90

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !91
  store i32 33, i32* %30, align 4, !dbg !93, !tbaa !86
  br label %47, !dbg !94

; <label>:31:                                     ; preds = %13
  store i32 2, i32* %15, align 8, !dbg !95, !tbaa !60
  %32 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !96
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %32, align 8, !dbg !97, !tbaa !67
  %33 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !98
  store i32 0, i32* %33, align 8, !dbg !99, !tbaa !70
  %34 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !100
  store double %0, double* %34, align 8, !dbg !101, !tbaa !73
  %35 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !102
  store double %0, double* %35, align 8, !dbg !103, !tbaa !76
  %36 = fdiv double %0, 0.000000e+00, !dbg !104
  %37 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !105
  store double %36, double* %37, align 8, !dbg !106, !tbaa !79
  %38 = load i32, i32* @__fdlib_version, align 4, !dbg !107, !tbaa !40
  %39 = icmp eq i32 %38, 2, !dbg !109
  br i1 %39, label %40, label %42, !dbg !110

; <label>:40:                                     ; preds = %31
  %41 = tail call i32* @__errno() #5, !dbg !111
  store i32 33, i32* %41, align 4, !dbg !112, !tbaa !86
  br label %47, !dbg !111

; <label>:42:                                     ; preds = %31
  %43 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !113
  %44 = icmp eq i32 %43, 0, !dbg !113
  br i1 %44, label %45, label %47, !dbg !115

; <label>:45:                                     ; preds = %42
  %46 = call i32* @__errno() #5, !dbg !116
  store i32 33, i32* %46, align 4, !dbg !118, !tbaa !86
  br label %47, !dbg !119

; <label>:47:                                     ; preds = %26, %42, %40, %45, %24, %29
  %48 = phi i32* [ %18, %26 ], [ %33, %42 ], [ %33, %40 ], [ %33, %45 ], [ %18, %24 ], [ %18, %29 ], !dbg !120
  %49 = load i32, i32* %48, align 8, !dbg !120, !tbaa !70
  %50 = icmp eq i32 %49, 0, !dbg !122
  br i1 %50, label %53, label %51, !dbg !123

; <label>:51:                                     ; preds = %47
  %52 = call i32* @__errno() #5, !dbg !124
  store i32 %49, i32* %52, align 4, !dbg !125, !tbaa !86
  br label %53, !dbg !124

; <label>:53:                                     ; preds = %47, %51
  %54 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !126
  %55 = load double, double* %54, align 8, !dbg !126, !tbaa !79
  br label %56, !dbg !127

; <label>:56:                                     ; preds = %10, %1, %7, %53
  %57 = phi double [ %55, %53 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !129
  ret double %57, !dbg !129
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_atanh(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #2

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

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_atanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "atanh", scope: !1, file: !1, line: 88, type: !16, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 88, type: !18)
!21 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 97, type: !18)
!22 = !DILocalVariable(name: "y", scope: !15, file: !1, line: 97, type: !18)
!23 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 98, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !25)
!25 = !{!26, !27, !30, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !4, line: 581, baseType: !5, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !4, line: 582, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !24, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !24, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !24, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !24, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!34 = !DILocation(line: 88, column: 22, scope: !15)
!35 = !DILocation(line: 98, column: 2, scope: !15)
!36 = !DILocation(line: 99, column: 6, scope: !15)
!37 = !DILocation(line: 97, column: 9, scope: !15)
!38 = !DILocation(line: 100, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !15, file: !1, line: 100, column: 5)
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 100, column: 18, scope: !39)
!44 = !DILocation(line: 100, column: 28, scope: !39)
!45 = !DILocation(line: 100, column: 31, scope: !39)
!46 = !DILocation(line: 100, column: 5, scope: !15)
!47 = !DILocation(line: 101, column: 6, scope: !15)
!48 = !DILocation(line: 97, column: 11, scope: !15)
!49 = !DILocation(line: 102, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !15, file: !1, line: 102, column: 5)
!51 = !DILocation(line: 102, column: 5, scope: !15)
!52 = !DILocation(line: 103, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 103, column: 9)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 102, column: 13)
!55 = !DILocation(line: 0, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 115, column: 13)
!57 = !DILocation(line: 103, column: 9, scope: !54)
!58 = !DILocation(line: 105, column: 26, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 103, column: 16)
!60 = !{!61, !62, i64 0}
!61 = !{!"exception", !62, i64 0, !63, i64 8, !64, i64 16, !64, i64 24, !64, i64 32, !62, i64 40}
!62 = !{!"int", !41, i64 0}
!63 = !{!"any pointer", !41, i64 0}
!64 = !{!"double", !41, i64 0}
!65 = !DILocation(line: 106, column: 21, scope: !59)
!66 = !DILocation(line: 106, column: 26, scope: !59)
!67 = !{!61, !63, i64 8}
!68 = !DILocation(line: 107, column: 7, scope: !59)
!69 = !DILocation(line: 107, column: 11, scope: !59)
!70 = !{!61, !62, i64 40}
!71 = !DILocation(line: 108, column: 18, scope: !59)
!72 = !DILocation(line: 108, column: 23, scope: !59)
!73 = !{!61, !64, i64 24}
!74 = !DILocation(line: 108, column: 7, scope: !59)
!75 = !DILocation(line: 108, column: 12, scope: !59)
!76 = !{!61, !64, i64 16}
!77 = !DILocation(line: 109, column: 21, scope: !59)
!78 = !DILocation(line: 109, column: 28, scope: !59)
!79 = !{!61, !64, i64 32}
!80 = !DILocation(line: 110, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !59, file: !1, line: 110, column: 21)
!82 = !DILocation(line: 110, column: 34, scope: !81)
!83 = !DILocation(line: 110, column: 21, scope: !59)
!84 = !DILocation(line: 111, column: 19, scope: !81)
!85 = !DILocation(line: 111, column: 25, scope: !81)
!86 = !{!62, !62, i64 0}
!87 = !DILocation(line: 98, column: 19, scope: !15)
!88 = !DILocation(line: 112, column: 27, scope: !89)
!89 = distinct !DILexicalBlock(scope: !81, file: !1, line: 112, column: 26)
!90 = !DILocation(line: 112, column: 26, scope: !81)
!91 = !DILocation(line: 113, column: 19, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 112, column: 42)
!93 = !DILocation(line: 113, column: 25, scope: !92)
!94 = !DILocation(line: 114, column: 17, scope: !92)
!95 = !DILocation(line: 117, column: 26, scope: !56)
!96 = !DILocation(line: 118, column: 21, scope: !56)
!97 = !DILocation(line: 118, column: 26, scope: !56)
!98 = !DILocation(line: 119, column: 7, scope: !56)
!99 = !DILocation(line: 119, column: 11, scope: !56)
!100 = !DILocation(line: 120, column: 18, scope: !56)
!101 = !DILocation(line: 120, column: 23, scope: !56)
!102 = !DILocation(line: 120, column: 7, scope: !56)
!103 = !DILocation(line: 120, column: 12, scope: !56)
!104 = !DILocation(line: 121, column: 17, scope: !56)
!105 = !DILocation(line: 121, column: 7, scope: !56)
!106 = !DILocation(line: 121, column: 14, scope: !56)
!107 = !DILocation(line: 122, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !56, file: !1, line: 122, column: 21)
!109 = !DILocation(line: 122, column: 34, scope: !108)
!110 = !DILocation(line: 122, column: 21, scope: !56)
!111 = !DILocation(line: 123, column: 19, scope: !108)
!112 = !DILocation(line: 123, column: 25, scope: !108)
!113 = !DILocation(line: 124, column: 27, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 124, column: 26)
!115 = !DILocation(line: 124, column: 26, scope: !108)
!116 = !DILocation(line: 125, column: 19, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 124, column: 42)
!118 = !DILocation(line: 125, column: 25, scope: !117)
!119 = !DILocation(line: 126, column: 17, scope: !117)
!120 = !DILocation(line: 128, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !54, file: !1, line: 128, column: 10)
!122 = !DILocation(line: 128, column: 18, scope: !121)
!123 = !DILocation(line: 128, column: 10, scope: !54)
!124 = !DILocation(line: 129, column: 15, scope: !121)
!125 = !DILocation(line: 129, column: 21, scope: !121)
!126 = !DILocation(line: 130, column: 24, scope: !54)
!127 = !DILocation(line: 130, column: 13, scope: !54)
!128 = !DILocation(line: 0, scope: !50)
!129 = !DILocation(line: 134, column: 1, scope: !15)
