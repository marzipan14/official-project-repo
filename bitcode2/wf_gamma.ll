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
@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %9, label %70, label %10, !dbg !46

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @finitef(float %7) #5, !dbg !47
  %12 = icmp eq i32 %11, 0, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %12, label %13, label %70, !dbg !49

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @finitef(float %0) #5, !dbg !50
  %15 = icmp eq i32 %14, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %15, label %70, label %16, !dbg !51

; <label>:16:                                     ; preds = %13
  %17 = tail call float @floorf(float %0) #5, !dbg !52
  %18 = fcmp oeq float %17, %0, !dbg !55
  %19 = fcmp ole float %0, 0.000000e+00, !dbg !56
  %20 = and i1 %19, %18, !dbg !57
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %20, label %22, label %41, !dbg !57

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %29, label %31, label %32, !dbg !84

; <label>:31:                                     ; preds = %22
  store double 0x47EFFFFFE0000000, double* %30, align 8, !dbg !85, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %36, !dbg !88

; <label>:32:                                     ; preds = %22
  store double 0x7FF0000000000000, double* %30, align 8, !dbg !89, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %33 = icmp eq i32 %28, 2, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %33, label %34, label %36, !dbg !88

; <label>:34:                                     ; preds = %32
  %35 = tail call i32* @__errno() #5, !dbg !92
  store i32 33, i32* %35, align 4, !dbg !93, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %60, !dbg !92

; <label>:36:                                     ; preds = %31, %32
  %37 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !96
  %38 = icmp eq i32 %37, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %38, label %39, label %60, !dbg !98

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno() #5, !dbg !99
  store i32 33, i32* %40, align 4, !dbg !101, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br label %60, !dbg !102

; <label>:41:                                     ; preds = %16
  store i32 3, i32* %21, align 8, !dbg !103, !tbaa !62
  %42 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !104
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %42, align 8, !dbg !105, !tbaa !69
  %43 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !106
  store i32 0, i32* %43, align 8, !dbg !107, !tbaa !72
  %44 = fpext float %0 to double, !dbg !108
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !109
  store double %44, double* %45, align 8, !dbg !110, !tbaa !76
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !111
  store double %44, double* %46, align 8, !dbg !112, !tbaa !79
  %47 = load i32, i32* @__fdlib_version, align 4, !dbg !113, !tbaa !42
  %48 = icmp eq i32 %47, 0, !dbg !115
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %48, label %50, label %51, !dbg !117

; <label>:50:                                     ; preds = %41
  store double 0x47EFFFFFE0000000, double* %49, align 8, !dbg !118, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br label %55, !dbg !120

; <label>:51:                                     ; preds = %41
  store double 0x7FF0000000000000, double* %49, align 8, !dbg !121, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %52 = icmp eq i32 %47, 2, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %52, label %53, label %55, !dbg !120

; <label>:53:                                     ; preds = %51
  %54 = tail call i32* @__errno() #5, !dbg !124
  store i32 34, i32* %54, align 4, !dbg !125, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br label %60, !dbg !124

; <label>:55:                                     ; preds = %50, %51
  %56 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !126
  %57 = icmp eq i32 %56, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %57, label %58, label %60, !dbg !128

; <label>:58:                                     ; preds = %55
  %59 = call i32* @__errno() #5, !dbg !129
  store i32 34, i32* %59, align 4, !dbg !131, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br label %60, !dbg !132

; <label>:60:                                     ; preds = %36, %55, %53, %58, %34, %39
  %61 = phi i32* [ %24, %36 ], [ %43, %55 ], [ %43, %53 ], [ %43, %58 ], [ %24, %34 ], [ %24, %39 ], !dbg !133
  %62 = load i32, i32* %61, align 8, !dbg !133, !tbaa !72
  %63 = icmp eq i32 %62, 0, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %63, label %66, label %64, !dbg !136

; <label>:64:                                     ; preds = %60
  %65 = call i32* @__errno() #5, !dbg !137
  store i32 %62, i32* %65, align 4, !dbg !138, !tbaa !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !137
  br label %66, !dbg !137

; <label>:66:                                     ; preds = %60, %64
  %67 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !139
  %68 = load double, double* %67, align 8, !dbg !139, !tbaa !86
  %69 = fptrunc double %68 to float, !dbg !140
  br label %70, !dbg !141

; <label>:70:                                     ; preds = %10, %13, %1, %66
  %71 = phi float [ %69, %66 ], [ %7, %1 ], [ %7, %13 ], [ %7, %10 ], !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret float %71, !dbg !144
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
!84 = !DILocation(line: 48, column: 21, scope: !61)
!85 = !DILocation(line: 49, column: 30, scope: !81)
!86 = !{!63, !66, i64 32}
!87 = !DILocation(line: 49, column: 19, scope: !81)
!88 = !DILocation(line: 52, column: 7, scope: !61)
!89 = !DILocation(line: 51, column: 30, scope: !81)
!90 = !DILocation(line: 52, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !61, file: !1, line: 52, column: 7)
!92 = !DILocation(line: 53, column: 5, scope: !91)
!93 = !DILocation(line: 53, column: 11, scope: !91)
!94 = !{!64, !64, i64 0}
!95 = !DILocation(line: 32, column: 19, scope: !18)
!96 = !DILocation(line: 54, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 54, column: 12)
!98 = !DILocation(line: 54, column: 12, scope: !91)
!99 = !DILocation(line: 55, column: 5, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 54, column: 28)
!101 = !DILocation(line: 55, column: 11, scope: !100)
!102 = !DILocation(line: 56, column: 3, scope: !100)
!103 = !DILocation(line: 59, column: 12, scope: !59)
!104 = !DILocation(line: 60, column: 7, scope: !59)
!105 = !DILocation(line: 60, column: 12, scope: !59)
!106 = !DILocation(line: 61, column: 7, scope: !59)
!107 = !DILocation(line: 61, column: 11, scope: !59)
!108 = !DILocation(line: 62, column: 25, scope: !59)
!109 = !DILocation(line: 62, column: 18, scope: !59)
!110 = !DILocation(line: 62, column: 23, scope: !59)
!111 = !DILocation(line: 62, column: 7, scope: !59)
!112 = !DILocation(line: 62, column: 12, scope: !59)
!113 = !DILocation(line: 63, column: 21, scope: !114)
!114 = distinct !DILexicalBlock(scope: !59, file: !1, line: 63, column: 21)
!115 = !DILocation(line: 63, column: 34, scope: !114)
!116 = !DILocation(line: 0, scope: !114)
!117 = !DILocation(line: 63, column: 21, scope: !59)
!118 = !DILocation(line: 64, column: 30, scope: !114)
!119 = !DILocation(line: 64, column: 19, scope: !114)
!120 = !DILocation(line: 67, column: 21, scope: !59)
!121 = !DILocation(line: 66, column: 30, scope: !114)
!122 = !DILocation(line: 67, column: 34, scope: !123)
!123 = distinct !DILexicalBlock(scope: !59, file: !1, line: 67, column: 21)
!124 = !DILocation(line: 68, column: 5, scope: !123)
!125 = !DILocation(line: 68, column: 11, scope: !123)
!126 = !DILocation(line: 69, column: 27, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 69, column: 26)
!128 = !DILocation(line: 69, column: 26, scope: !123)
!129 = !DILocation(line: 70, column: 19, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 69, column: 42)
!131 = !DILocation(line: 70, column: 25, scope: !130)
!132 = !DILocation(line: 71, column: 17, scope: !130)
!133 = !DILocation(line: 73, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !54, file: !1, line: 73, column: 10)
!135 = !DILocation(line: 73, column: 18, scope: !134)
!136 = !DILocation(line: 73, column: 10, scope: !54)
!137 = !DILocation(line: 74, column: 9, scope: !134)
!138 = !DILocation(line: 74, column: 15, scope: !134)
!139 = !DILocation(line: 75, column: 24, scope: !54)
!140 = !DILocation(line: 75, column: 13, scope: !54)
!141 = !DILocation(line: 75, column: 6, scope: !54)
!142 = !DILocation(line: 0, scope: !54)
!143 = !DILocation(line: 0, scope: !41)
!144 = !DILocation(line: 79, column: 1, scope: !18)
