; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_lgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"lgamma\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @lgamma(double) local_unnamed_addr #0 !dbg !17 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !37
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 16, i32 0, i32 0, i64 10, !dbg !37
  %6 = bitcast i8** %5 to i32*, !dbg !37
  %7 = tail call double @__ieee754_lgamma_r(double %0, i32* nonnull %6) #5, !dbg !38
  %8 = load i32, i32* @__fdlib_version, align 4, !dbg !40, !tbaa !42
  %9 = icmp eq i32 %8, -1, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %9, label %57, label %10, !dbg !46

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @finite(double %7) #5, !dbg !47
  %12 = icmp eq i32 %11, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %12, label %13, label %57, !dbg !49

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @finite(double %0) #5, !dbg !50
  %15 = icmp eq i32 %14, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %15, label %57, label %16, !dbg !51

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !52
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %17, align 8, !dbg !54, !tbaa !55
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !60
  store i32 0, i32* %18, align 8, !dbg !61, !tbaa !62
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !63
  store double %0, double* %19, align 8, !dbg !64, !tbaa !65
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !66
  store double %0, double* %20, align 8, !dbg !67, !tbaa !68
  %21 = load i32, i32* @__fdlib_version, align 4, !dbg !69, !tbaa !42
  %22 = icmp eq i32 %21, 0, !dbg !71
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  %24 = select i1 %22, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !73
  store double %24, double* %23, align 8, !dbg !72, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = tail call double @floor(double %0) #5, !dbg !75
  %26 = fcmp oeq double %25, %0, !dbg !77
  %27 = fcmp ole double %0, 0.000000e+00, !dbg !78
  %28 = and i1 %27, %26, !dbg !79
  %29 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %28, label %30, label %40, !dbg !79

; <label>:30:                                     ; preds = %16
  store i32 2, i32* %29, align 8, !dbg !82, !tbaa !84
  %31 = load i32, i32* @__fdlib_version, align 4, !dbg !85, !tbaa !42
  %32 = icmp eq i32 %31, 2, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %32, label %33, label %35, !dbg !88

; <label>:33:                                     ; preds = %30
  %34 = tail call i32* @__errno() #5, !dbg !89
  store i32 33, i32* %34, align 4, !dbg !90, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %50, !dbg !89

; <label>:35:                                     ; preds = %30
  %36 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !93
  %37 = icmp eq i32 %36, 0, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %37, label %38, label %50, !dbg !95

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno() #5, !dbg !96
  store i32 33, i32* %39, align 4, !dbg !98, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %50, !dbg !99

; <label>:40:                                     ; preds = %16
  store i32 3, i32* %29, align 8, !dbg !100, !tbaa !84
  %41 = load i32, i32* @__fdlib_version, align 4, !dbg !101, !tbaa !42
  %42 = icmp eq i32 %41, 2, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %42, label %43, label %45, !dbg !104

; <label>:43:                                     ; preds = %40
  %44 = tail call i32* @__errno() #5, !dbg !105
  store i32 34, i32* %44, align 4, !dbg !106, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br label %50, !dbg !105

; <label>:45:                                     ; preds = %40
  %46 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !107
  %47 = icmp eq i32 %46, 0, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br i1 %47, label %48, label %50, !dbg !109

; <label>:48:                                     ; preds = %45
  %49 = call i32* @__errno() #5, !dbg !110
  store i32 34, i32* %49, align 4, !dbg !112, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br label %50, !dbg !113

; <label>:50:                                     ; preds = %35, %45, %43, %48, %33, %38
  %51 = load i32, i32* %18, align 8, !dbg !114, !tbaa !62
  %52 = icmp eq i32 %51, 0, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %52, label %55, label %53, !dbg !117

; <label>:53:                                     ; preds = %50
  %54 = call i32* @__errno() #5, !dbg !118
  store i32 %51, i32* %54, align 4, !dbg !119, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br label %55, !dbg !118

; <label>:55:                                     ; preds = %50, %53
  %56 = load double, double* %23, align 8, !dbg !120, !tbaa !74
  br label %57, !dbg !121

; <label>:57:                                     ; preds = %10, %13, %1, %55
  %58 = phi double [ %56, %55 ], [ %7, %1 ], [ %7, %13 ], [ %7, %10 ], !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  ret double %58, !dbg !124
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_lgamma_r(double, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

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

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_lgamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "lgamma", scope: !1, file: !1, line: 28, type: !18, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 28, type: !20)
!23 = !DILocalVariable(name: "y", scope: !17, file: !1, line: 37, type: !20)
!24 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 38, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !26)
!26 = !{!27, !28, !31, !32, !33, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !4, line: 581, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 582, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !25, file: !4, line: 583, baseType: !20, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !25, file: !4, line: 584, baseType: !20, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !25, file: !4, line: 585, baseType: !20, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !25, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!35 = !DILocation(line: 28, column: 23, scope: !17)
!36 = !DILocation(line: 38, column: 2, scope: !17)
!37 = !DILocation(line: 39, column: 36, scope: !17)
!38 = !DILocation(line: 39, column: 13, scope: !17)
!39 = !DILocation(line: 37, column: 16, scope: !17)
!40 = !DILocation(line: 40, column: 12, scope: !41)
!41 = distinct !DILexicalBlock(scope: !17, file: !1, line: 40, column: 12)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 40, column: 25, scope: !41)
!46 = !DILocation(line: 40, column: 12, scope: !17)
!47 = !DILocation(line: 41, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !17, file: !1, line: 41, column: 12)
!49 = !DILocation(line: 41, column: 22, scope: !48)
!50 = !DILocation(line: 41, column: 24, scope: !48)
!51 = !DILocation(line: 41, column: 12, scope: !17)
!52 = !DILocation(line: 48, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 41, column: 35)
!54 = !DILocation(line: 48, column: 15, scope: !53)
!55 = !{!56, !58, i64 8}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !43, i64 0}
!58 = !{!"any pointer", !43, i64 0}
!59 = !{!"double", !43, i64 0}
!60 = !DILocation(line: 49, column: 10, scope: !53)
!61 = !DILocation(line: 49, column: 14, scope: !53)
!62 = !{!56, !57, i64 40}
!63 = !DILocation(line: 50, column: 10, scope: !53)
!64 = !DILocation(line: 50, column: 15, scope: !53)
!65 = !{!56, !59, i64 16}
!66 = !DILocation(line: 51, column: 10, scope: !53)
!67 = !DILocation(line: 51, column: 15, scope: !53)
!68 = !{!56, !59, i64 24}
!69 = !DILocation(line: 52, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !53, file: !1, line: 52, column: 17)
!71 = !DILocation(line: 52, column: 30, scope: !70)
!72 = !DILocation(line: 0, scope: !70)
!73 = !DILocation(line: 52, column: 17, scope: !53)
!74 = !{!56, !59, i64 32}
!75 = !DILocation(line: 56, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !53, file: !1, line: 56, column: 9)
!77 = !DILocation(line: 56, column: 17, scope: !76)
!78 = !DILocation(line: 56, column: 23, scope: !76)
!79 = !DILocation(line: 56, column: 20, scope: !76)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 65, column: 20)
!82 = !DILocation(line: 58, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 56, column: 30)
!84 = !{!56, !57, i64 0}
!85 = !DILocation(line: 59, column: 7, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 59, column: 7)
!87 = !DILocation(line: 59, column: 20, scope: !86)
!88 = !DILocation(line: 59, column: 7, scope: !83)
!89 = !DILocation(line: 60, column: 6, scope: !86)
!90 = !DILocation(line: 60, column: 12, scope: !86)
!91 = !{!57, !57, i64 0}
!92 = !DILocation(line: 38, column: 19, scope: !17)
!93 = !DILocation(line: 61, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 61, column: 12)
!95 = !DILocation(line: 61, column: 12, scope: !86)
!96 = !DILocation(line: 62, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 61, column: 28)
!98 = !DILocation(line: 62, column: 12, scope: !97)
!99 = !DILocation(line: 63, column: 3, scope: !97)
!100 = !DILocation(line: 67, column: 12, scope: !81)
!101 = !DILocation(line: 68, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !81, file: !1, line: 68, column: 21)
!103 = !DILocation(line: 68, column: 34, scope: !102)
!104 = !DILocation(line: 68, column: 21, scope: !81)
!105 = !DILocation(line: 69, column: 6, scope: !102)
!106 = !DILocation(line: 69, column: 12, scope: !102)
!107 = !DILocation(line: 70, column: 27, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !1, line: 70, column: 26)
!109 = !DILocation(line: 70, column: 26, scope: !102)
!110 = !DILocation(line: 71, column: 20, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 70, column: 42)
!112 = !DILocation(line: 71, column: 26, scope: !111)
!113 = !DILocation(line: 72, column: 3, scope: !111)
!114 = !DILocation(line: 74, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !53, file: !1, line: 74, column: 10)
!116 = !DILocation(line: 74, column: 18, scope: !115)
!117 = !DILocation(line: 74, column: 10, scope: !53)
!118 = !DILocation(line: 75, column: 9, scope: !115)
!119 = !DILocation(line: 75, column: 15, scope: !115)
!120 = !DILocation(line: 76, column: 24, scope: !53)
!121 = !DILocation(line: 76, column: 13, scope: !53)
!122 = !DILocation(line: 0, scope: !53)
!123 = !DILocation(line: 0, scope: !41)
!124 = !DILocation(line: 80, column: 1, scope: !17)
