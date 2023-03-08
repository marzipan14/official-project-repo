; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_gamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_gamma.c"
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
@.str = private unnamed_addr constant [7 x i8] c"gammaf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @gammaf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !37
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 16, i32 0, i32 0, i64 10, !dbg !37
  %6 = bitcast i8** %5 to i32*, !dbg !37
  %7 = tail call float @__ieee754_gammaf_r(float %0, i32* nonnull %6) #5, !dbg !38
  %8 = load i32, i32* @__fdlib_version, align 4, !dbg !40, !tbaa !42
  %9 = icmp eq i32 %8, -1, !dbg !45
  br i1 %9, label %68, label %10, !dbg !46

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @finitef(float %7) #5, !dbg !47
  %12 = icmp eq i32 %11, 0, !dbg !47
  br i1 %12, label %13, label %68, !dbg !49

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @finitef(float %0) #5, !dbg !50
  %15 = icmp eq i32 %14, 0, !dbg !50
  br i1 %15, label %68, label %16, !dbg !51

; <label>:16:                                     ; preds = %13
  %17 = tail call float @floorf(float %0) #5, !dbg !52
  %18 = fcmp oeq float %17, %0, !dbg !55
  %19 = fcmp ole float %0, 0.000000e+00, !dbg !56
  %20 = and i1 %19, %18, !dbg !57
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !58
  br i1 %20, label %22, label %40, !dbg !57

; <label>:22:                                     ; preds = %16
  store i32 2, i32* %21, align 8, !dbg !60, !tbaa !62
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !67
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %23, align 8, !dbg !68, !tbaa !69
  %24 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !70
  store i32 0, i32* %24, align 8, !dbg !71, !tbaa !72
  %25 = fpext float %0 to double, !dbg !73
  %26 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !74
  store double %25, double* %26, align 8, !dbg !75, !tbaa !76
  %27 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !77
  store double %25, double* %27, align 8, !dbg !78, !tbaa !79
  %28 = load i32, i32* @__fdlib_version, align 4, !dbg !80, !tbaa !42
  %29 = icmp eq i32 %28, 0, !dbg !82
  %30 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !83
  %31 = select i1 %29, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !84
  store double %31, double* %30, align 8, !dbg !83, !tbaa !85
  %32 = icmp eq i32 %28, 2, !dbg !86
  br i1 %32, label %33, label %35, !dbg !88

; <label>:33:                                     ; preds = %22
  %34 = tail call i32* @__errno() #5, !dbg !89
  store i32 33, i32* %34, align 4, !dbg !90, !tbaa !91
  br label %58, !dbg !89

; <label>:35:                                     ; preds = %22
  %36 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !93
  %37 = icmp eq i32 %36, 0, !dbg !93
  br i1 %37, label %38, label %58, !dbg !95

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno() #5, !dbg !96
  store i32 33, i32* %39, align 4, !dbg !98, !tbaa !91
  br label %58, !dbg !99

; <label>:40:                                     ; preds = %16
  store i32 3, i32* %21, align 8, !dbg !100, !tbaa !62
  %41 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !101
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %41, align 8, !dbg !102, !tbaa !69
  %42 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !103
  store i32 0, i32* %42, align 8, !dbg !104, !tbaa !72
  %43 = fpext float %0 to double, !dbg !105
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !106
  store double %43, double* %44, align 8, !dbg !107, !tbaa !76
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !108
  store double %43, double* %45, align 8, !dbg !109, !tbaa !79
  %46 = load i32, i32* @__fdlib_version, align 4, !dbg !110, !tbaa !42
  %47 = icmp eq i32 %46, 0, !dbg !112
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !113
  %49 = select i1 %47, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !114
  store double %49, double* %48, align 8, !dbg !113, !tbaa !85
  %50 = icmp eq i32 %46, 2, !dbg !115
  br i1 %50, label %51, label %53, !dbg !117

; <label>:51:                                     ; preds = %40
  %52 = tail call i32* @__errno() #5, !dbg !118
  store i32 34, i32* %52, align 4, !dbg !119, !tbaa !91
  br label %58, !dbg !118

; <label>:53:                                     ; preds = %40
  %54 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !120
  %55 = icmp eq i32 %54, 0, !dbg !120
  br i1 %55, label %56, label %58, !dbg !122

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno() #5, !dbg !123
  store i32 34, i32* %57, align 4, !dbg !125, !tbaa !91
  br label %58, !dbg !126

; <label>:58:                                     ; preds = %35, %53, %51, %56, %33, %38
  %59 = phi i32* [ %24, %35 ], [ %42, %53 ], [ %42, %51 ], [ %42, %56 ], [ %24, %33 ], [ %24, %38 ], !dbg !127
  %60 = load i32, i32* %59, align 8, !dbg !127, !tbaa !72
  %61 = icmp eq i32 %60, 0, !dbg !129
  br i1 %61, label %64, label %62, !dbg !130

; <label>:62:                                     ; preds = %58
  %63 = call i32* @__errno() #5, !dbg !131
  store i32 %60, i32* %63, align 4, !dbg !132, !tbaa !91
  br label %64, !dbg !131

; <label>:64:                                     ; preds = %58, %62
  %65 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !133
  %66 = load double, double* %65, align 8, !dbg !133, !tbaa !85
  %67 = fptrunc double %66 to float, !dbg !134
  br label %68, !dbg !135

; <label>:68:                                     ; preds = %10, %13, %1, %64
  %69 = phi float [ %67, %64 ], [ %7, %1 ], [ %7, %13 ], [ %7, %10 ], !dbg !136
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !137
  ret float %69, !dbg !137
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_gammaf_r(float, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local float @floorf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_gamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "gammaf", scope: !1, file: !1, line: 22, type: !19, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 22, type: !12)
!23 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 31, type: !12)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 32, type: !25)
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
!35 = !DILocation(line: 22, column: 21, scope: !18)
!36 = !DILocation(line: 32, column: 2, scope: !18)
!37 = !DILocation(line: 33, column: 36, scope: !18)
!38 = !DILocation(line: 33, column: 13, scope: !18)
!39 = !DILocation(line: 31, column: 15, scope: !18)
!40 = !DILocation(line: 34, column: 12, scope: !41)
!41 = distinct !DILexicalBlock(scope: !18, file: !1, line: 34, column: 12)
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 34, column: 25, scope: !41)
!46 = !DILocation(line: 34, column: 12, scope: !18)
!47 = !DILocation(line: 35, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 12)
!49 = !DILocation(line: 35, column: 23, scope: !48)
!50 = !DILocation(line: 35, column: 25, scope: !48)
!51 = !DILocation(line: 35, column: 12, scope: !18)
!52 = !DILocation(line: 42, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 42, column: 9)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 35, column: 37)
!55 = !DILocation(line: 42, column: 18, scope: !53)
!56 = !DILocation(line: 42, column: 24, scope: !53)
!57 = !DILocation(line: 42, column: 21, scope: !53)
!58 = !DILocation(line: 0, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 20)
!60 = !DILocation(line: 44, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 42, column: 38)
!62 = !{!63, !64, i64 0}
!63 = !{!"exception", !64, i64 0, !65, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !64, i64 40}
!64 = !{!"int", !43, i64 0}
!65 = !{!"any pointer", !43, i64 0}
!66 = !{!"double", !43, i64 0}
!67 = !DILocation(line: 45, column: 7, scope: !61)
!68 = !DILocation(line: 45, column: 12, scope: !61)
!69 = !{!63, !65, i64 8}
!70 = !DILocation(line: 46, column: 7, scope: !61)
!71 = !DILocation(line: 46, column: 11, scope: !61)
!72 = !{!63, !64, i64 40}
!73 = !DILocation(line: 47, column: 25, scope: !61)
!74 = !DILocation(line: 47, column: 18, scope: !61)
!75 = !DILocation(line: 47, column: 23, scope: !61)
!76 = !{!63, !66, i64 24}
!77 = !DILocation(line: 47, column: 7, scope: !61)
!78 = !DILocation(line: 47, column: 12, scope: !61)
!79 = !{!63, !66, i64 16}
!80 = !DILocation(line: 48, column: 21, scope: !81)
!81 = distinct !DILexicalBlock(scope: !61, file: !1, line: 48, column: 21)
!82 = !DILocation(line: 48, column: 34, scope: !81)
!83 = !DILocation(line: 0, scope: !81)
!84 = !DILocation(line: 49, column: 19, scope: !81)
!85 = !{!63, !66, i64 32}
!86 = !DILocation(line: 52, column: 20, scope: !87)
!87 = distinct !DILexicalBlock(scope: !61, file: !1, line: 52, column: 7)
!88 = !DILocation(line: 52, column: 7, scope: !61)
!89 = !DILocation(line: 53, column: 5, scope: !87)
!90 = !DILocation(line: 53, column: 11, scope: !87)
!91 = !{!64, !64, i64 0}
!92 = !DILocation(line: 32, column: 19, scope: !18)
!93 = !DILocation(line: 54, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 54, column: 12)
!95 = !DILocation(line: 54, column: 12, scope: !87)
!96 = !DILocation(line: 55, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 54, column: 28)
!98 = !DILocation(line: 55, column: 11, scope: !97)
!99 = !DILocation(line: 56, column: 3, scope: !97)
!100 = !DILocation(line: 59, column: 12, scope: !59)
!101 = !DILocation(line: 60, column: 7, scope: !59)
!102 = !DILocation(line: 60, column: 12, scope: !59)
!103 = !DILocation(line: 61, column: 7, scope: !59)
!104 = !DILocation(line: 61, column: 11, scope: !59)
!105 = !DILocation(line: 62, column: 25, scope: !59)
!106 = !DILocation(line: 62, column: 18, scope: !59)
!107 = !DILocation(line: 62, column: 23, scope: !59)
!108 = !DILocation(line: 62, column: 7, scope: !59)
!109 = !DILocation(line: 62, column: 12, scope: !59)
!110 = !DILocation(line: 63, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !59, file: !1, line: 63, column: 21)
!112 = !DILocation(line: 63, column: 34, scope: !111)
!113 = !DILocation(line: 0, scope: !111)
!114 = !DILocation(line: 64, column: 19, scope: !111)
!115 = !DILocation(line: 67, column: 34, scope: !116)
!116 = distinct !DILexicalBlock(scope: !59, file: !1, line: 67, column: 21)
!117 = !DILocation(line: 67, column: 21, scope: !59)
!118 = !DILocation(line: 68, column: 5, scope: !116)
!119 = !DILocation(line: 68, column: 11, scope: !116)
!120 = !DILocation(line: 69, column: 27, scope: !121)
!121 = distinct !DILexicalBlock(scope: !116, file: !1, line: 69, column: 26)
!122 = !DILocation(line: 69, column: 26, scope: !116)
!123 = !DILocation(line: 70, column: 19, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 69, column: 42)
!125 = !DILocation(line: 70, column: 25, scope: !124)
!126 = !DILocation(line: 71, column: 17, scope: !124)
!127 = !DILocation(line: 73, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !54, file: !1, line: 73, column: 10)
!129 = !DILocation(line: 73, column: 18, scope: !128)
!130 = !DILocation(line: 73, column: 10, scope: !54)
!131 = !DILocation(line: 74, column: 9, scope: !128)
!132 = !DILocation(line: 74, column: 15, scope: !128)
!133 = !DILocation(line: 75, column: 24, scope: !54)
!134 = !DILocation(line: 75, column: 13, scope: !54)
!135 = !DILocation(line: 75, column: 6, scope: !54)
!136 = !DILocation(line: 0, scope: !54)
!137 = !DILocation(line: 79, column: 1, scope: !18)
