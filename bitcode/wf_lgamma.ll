; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_lgamma.c"
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
@.str = private unnamed_addr constant [8 x i8] c"lgammaf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @lgammaf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !37
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 16, i32 0, i32 0, i64 10, !dbg !37
  %6 = bitcast i8** %5 to i32*, !dbg !37
  %7 = tail call float @__ieee754_lgammaf_r(float %0, i32* nonnull %6) #5, !dbg !38
  %8 = load i32, i32* @__fdlib_version, align 4, !dbg !40, !tbaa !42
  %9 = icmp eq i32 %8, -1, !dbg !45
  br i1 %9, label %59, label %10, !dbg !46

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @finitef(float %7) #5, !dbg !47
  %12 = icmp eq i32 %11, 0, !dbg !47
  br i1 %12, label %13, label %59, !dbg !49

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @finitef(float %0) #5, !dbg !50
  %15 = icmp eq i32 %14, 0, !dbg !50
  br i1 %15, label %59, label %16, !dbg !51

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !52
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %17, align 8, !dbg !54, !tbaa !55
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !60
  store i32 0, i32* %18, align 8, !dbg !61, !tbaa !62
  %19 = fpext float %0 to double, !dbg !63
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !64
  store double %19, double* %20, align 8, !dbg !65, !tbaa !66
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !67
  store double %19, double* %21, align 8, !dbg !68, !tbaa !69
  %22 = load i32, i32* @__fdlib_version, align 4, !dbg !70, !tbaa !42
  %23 = icmp eq i32 %22, 0, !dbg !72
  %24 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !73
  %25 = select i1 %23, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !74
  store double %25, double* %24, align 8, !dbg !73, !tbaa !75
  %26 = tail call float @floorf(float %0) #5, !dbg !76
  %27 = fcmp oeq float %26, %0, !dbg !78
  %28 = fcmp ole float %0, 0.000000e+00, !dbg !79
  %29 = and i1 %28, %27, !dbg !80
  %30 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !81
  br i1 %29, label %31, label %41, !dbg !80

; <label>:31:                                     ; preds = %16
  store i32 2, i32* %30, align 8, !dbg !83, !tbaa !85
  %32 = load i32, i32* @__fdlib_version, align 4, !dbg !86, !tbaa !42
  %33 = icmp eq i32 %32, 2, !dbg !88
  br i1 %33, label %34, label %36, !dbg !89

; <label>:34:                                     ; preds = %31
  %35 = tail call i32* @__errno() #5, !dbg !90
  store i32 33, i32* %35, align 4, !dbg !91, !tbaa !92
  br label %51, !dbg !90

; <label>:36:                                     ; preds = %31
  %37 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !94
  %38 = icmp eq i32 %37, 0, !dbg !94
  br i1 %38, label %39, label %51, !dbg !96

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno() #5, !dbg !97
  store i32 33, i32* %40, align 4, !dbg !99, !tbaa !92
  br label %51, !dbg !100

; <label>:41:                                     ; preds = %16
  store i32 3, i32* %30, align 8, !dbg !101, !tbaa !85
  %42 = load i32, i32* @__fdlib_version, align 4, !dbg !102, !tbaa !42
  %43 = icmp eq i32 %42, 2, !dbg !104
  br i1 %43, label %44, label %46, !dbg !105

; <label>:44:                                     ; preds = %41
  %45 = tail call i32* @__errno() #5, !dbg !106
  store i32 34, i32* %45, align 4, !dbg !107, !tbaa !92
  br label %51, !dbg !106

; <label>:46:                                     ; preds = %41
  %47 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !108
  %48 = icmp eq i32 %47, 0, !dbg !108
  br i1 %48, label %49, label %51, !dbg !110

; <label>:49:                                     ; preds = %46
  %50 = call i32* @__errno() #5, !dbg !111
  store i32 34, i32* %50, align 4, !dbg !113, !tbaa !92
  br label %51, !dbg !114

; <label>:51:                                     ; preds = %36, %46, %44, %49, %34, %39
  %52 = load i32, i32* %18, align 8, !dbg !115, !tbaa !62
  %53 = icmp eq i32 %52, 0, !dbg !117
  br i1 %53, label %56, label %54, !dbg !118

; <label>:54:                                     ; preds = %51
  %55 = call i32* @__errno() #5, !dbg !119
  store i32 %52, i32* %55, align 4, !dbg !120, !tbaa !92
  br label %56, !dbg !119

; <label>:56:                                     ; preds = %51, %54
  %57 = load double, double* %24, align 8, !dbg !121, !tbaa !75
  %58 = fptrunc double %57 to float, !dbg !122
  br label %59, !dbg !123

; <label>:59:                                     ; preds = %10, %13, %1, %56
  %60 = phi float [ %58, %56 ], [ %7, %1 ], [ %7, %13 ], [ %7, %10 ], !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  ret float %60, !dbg !125
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_lgammaf_r(float, i32*) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_lgamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "lgammaf", scope: !1, file: !1, line: 22, type: !19, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 22, type: !13)
!23 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 31, type: !13)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 32, type: !25)
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
!35 = !DILocation(line: 22, column: 22, scope: !18)
!36 = !DILocation(line: 32, column: 2, scope: !18)
!37 = !DILocation(line: 33, column: 37, scope: !18)
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
!52 = !DILocation(line: 42, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 35, column: 37)
!54 = !DILocation(line: 42, column: 15, scope: !53)
!55 = !{!56, !58, i64 8}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !43, i64 0}
!58 = !{!"any pointer", !43, i64 0}
!59 = !{!"double", !43, i64 0}
!60 = !DILocation(line: 43, column: 10, scope: !53)
!61 = !DILocation(line: 43, column: 14, scope: !53)
!62 = !{!56, !57, i64 40}
!63 = !DILocation(line: 44, column: 28, scope: !53)
!64 = !DILocation(line: 44, column: 21, scope: !53)
!65 = !DILocation(line: 44, column: 26, scope: !53)
!66 = !{!56, !59, i64 24}
!67 = !DILocation(line: 44, column: 10, scope: !53)
!68 = !DILocation(line: 44, column: 15, scope: !53)
!69 = !{!56, !59, i64 16}
!70 = !DILocation(line: 45, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !53, file: !1, line: 45, column: 17)
!72 = !DILocation(line: 45, column: 30, scope: !71)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 46, column: 16, scope: !71)
!75 = !{!56, !59, i64 32}
!76 = !DILocation(line: 49, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !53, file: !1, line: 49, column: 9)
!78 = !DILocation(line: 49, column: 18, scope: !77)
!79 = !DILocation(line: 49, column: 24, scope: !77)
!80 = !DILocation(line: 49, column: 21, scope: !77)
!81 = !DILocation(line: 0, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 58, column: 20)
!83 = !DILocation(line: 51, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !77, file: !1, line: 49, column: 38)
!85 = !{!56, !57, i64 0}
!86 = !DILocation(line: 52, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 52, column: 7)
!88 = !DILocation(line: 52, column: 20, scope: !87)
!89 = !DILocation(line: 52, column: 7, scope: !84)
!90 = !DILocation(line: 53, column: 6, scope: !87)
!91 = !DILocation(line: 53, column: 12, scope: !87)
!92 = !{!57, !57, i64 0}
!93 = !DILocation(line: 32, column: 19, scope: !18)
!94 = !DILocation(line: 54, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !87, file: !1, line: 54, column: 12)
!96 = !DILocation(line: 54, column: 12, scope: !87)
!97 = !DILocation(line: 55, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 54, column: 28)
!99 = !DILocation(line: 55, column: 12, scope: !98)
!100 = !DILocation(line: 56, column: 3, scope: !98)
!101 = !DILocation(line: 60, column: 12, scope: !82)
!102 = !DILocation(line: 61, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !82, file: !1, line: 61, column: 21)
!104 = !DILocation(line: 61, column: 34, scope: !103)
!105 = !DILocation(line: 61, column: 21, scope: !82)
!106 = !DILocation(line: 62, column: 6, scope: !103)
!107 = !DILocation(line: 62, column: 12, scope: !103)
!108 = !DILocation(line: 63, column: 27, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 63, column: 26)
!110 = !DILocation(line: 63, column: 26, scope: !103)
!111 = !DILocation(line: 64, column: 20, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 63, column: 42)
!113 = !DILocation(line: 64, column: 26, scope: !112)
!114 = !DILocation(line: 65, column: 3, scope: !112)
!115 = !DILocation(line: 67, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !53, file: !1, line: 67, column: 10)
!117 = !DILocation(line: 67, column: 18, scope: !116)
!118 = !DILocation(line: 67, column: 10, scope: !53)
!119 = !DILocation(line: 68, column: 9, scope: !116)
!120 = !DILocation(line: 68, column: 15, scope: !116)
!121 = !DILocation(line: 69, column: 31, scope: !53)
!122 = !DILocation(line: 69, column: 20, scope: !53)
!123 = !DILocation(line: 69, column: 13, scope: !53)
!124 = !DILocation(line: 0, scope: !53)
!125 = !DILocation(line: 73, column: 1, scope: !18)
