; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wrf_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wrf_lgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"lgammaf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @lgammaf_r(float, i32*) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !39
  %5 = tail call float @__ieee754_lgammaf_r(float %0, i32* %1) #5, !dbg !40
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !42, !tbaa !44
  %7 = icmp eq i32 %6, -1, !dbg !47
  br i1 %7, label %57, label %8, !dbg !48

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finitef(float %5) #5, !dbg !49
  %10 = icmp eq i32 %9, 0, !dbg !49
  br i1 %10, label %11, label %57, !dbg !51

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @finitef(float %0) #5, !dbg !52
  %13 = icmp eq i32 %12, 0, !dbg !52
  br i1 %13, label %57, label %14, !dbg !53

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !56, !tbaa !57
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !62
  store i32 0, i32* %16, align 8, !dbg !63, !tbaa !64
  %17 = fpext float %0 to double, !dbg !65
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !66
  store double %17, double* %18, align 8, !dbg !67, !tbaa !68
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  store double %17, double* %19, align 8, !dbg !70, !tbaa !71
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !72, !tbaa !44
  %21 = icmp eq i32 %20, 0, !dbg !74
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  %23 = select i1 %21, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !76
  store double %23, double* %22, align 8, !dbg !75, !tbaa !77
  %24 = tail call float @floorf(float %0) #5, !dbg !78
  %25 = fcmp oeq float %24, %0, !dbg !80
  %26 = fcmp ole float %0, 0.000000e+00, !dbg !81
  %27 = and i1 %26, %25, !dbg !82
  %28 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !83
  br i1 %27, label %29, label %39, !dbg !82

; <label>:29:                                     ; preds = %14
  store i32 2, i32* %28, align 8, !dbg !85, !tbaa !87
  %30 = load i32, i32* @__fdlib_version, align 4, !dbg !88, !tbaa !44
  %31 = icmp eq i32 %30, 2, !dbg !90
  br i1 %31, label %32, label %34, !dbg !91

; <label>:32:                                     ; preds = %29
  %33 = tail call i32* @__errno() #5, !dbg !92
  store i32 33, i32* %33, align 4, !dbg !93, !tbaa !94
  br label %49, !dbg !92

; <label>:34:                                     ; preds = %29
  %35 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !96
  %36 = icmp eq i32 %35, 0, !dbg !96
  br i1 %36, label %37, label %49, !dbg !98

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !99
  store i32 33, i32* %38, align 4, !dbg !101, !tbaa !94
  br label %49, !dbg !102

; <label>:39:                                     ; preds = %14
  store i32 3, i32* %28, align 8, !dbg !103, !tbaa !87
  %40 = load i32, i32* @__fdlib_version, align 4, !dbg !104, !tbaa !44
  %41 = icmp eq i32 %40, 2, !dbg !106
  br i1 %41, label %42, label %44, !dbg !107

; <label>:42:                                     ; preds = %39
  %43 = tail call i32* @__errno() #5, !dbg !108
  store i32 34, i32* %43, align 4, !dbg !109, !tbaa !94
  br label %49, !dbg !108

; <label>:44:                                     ; preds = %39
  %45 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !110
  %46 = icmp eq i32 %45, 0, !dbg !110
  br i1 %46, label %47, label %49, !dbg !112

; <label>:47:                                     ; preds = %44
  %48 = call i32* @__errno() #5, !dbg !113
  store i32 34, i32* %48, align 4, !dbg !115, !tbaa !94
  br label %49, !dbg !116

; <label>:49:                                     ; preds = %34, %44, %42, %47, %32, %37
  %50 = load i32, i32* %16, align 8, !dbg !117, !tbaa !64
  %51 = icmp eq i32 %50, 0, !dbg !119
  br i1 %51, label %54, label %52, !dbg !120

; <label>:52:                                     ; preds = %49
  %53 = call i32* @__errno() #5, !dbg !121
  store i32 %50, i32* %53, align 4, !dbg !122, !tbaa !94
  br label %54, !dbg !121

; <label>:54:                                     ; preds = %49, %52
  %55 = load double, double* %22, align 8, !dbg !123, !tbaa !77
  %56 = fptrunc double %55 to float, !dbg !124
  br label %57, !dbg !125

; <label>:57:                                     ; preds = %8, %11, %2, %54
  %58 = phi float [ %56, %54 ], [ %5, %2 ], [ %5, %11 ], [ %5, %8 ], !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !127
  ret float %58, !dbg !127
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_lgammaf_r(float, i32*) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wrf_lgamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "lgammaf_r", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!22 = !{!23, !24, !25, !26}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !13)
!24 = !DILocalVariable(name: "signgamp", arg: 2, scope: !18, file: !1, line: 24, type: !21)
!25 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 33, type: !13)
!26 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !28)
!28 = !{!29, !30, !33, !34, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !27, file: !4, line: 581, baseType: !5, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !27, file: !4, line: 582, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !27, file: !4, line: 583, baseType: !12, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !27, file: !4, line: 584, baseType: !12, size: 64, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !27, file: !4, line: 585, baseType: !12, size: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !27, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!37 = !DILocation(line: 24, column: 24, scope: !18)
!38 = !DILocation(line: 24, column: 32, scope: !18)
!39 = !DILocation(line: 34, column: 2, scope: !18)
!40 = !DILocation(line: 35, column: 13, scope: !18)
!41 = !DILocation(line: 33, column: 15, scope: !18)
!42 = !DILocation(line: 36, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 12)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 36, column: 25, scope: !43)
!48 = !DILocation(line: 36, column: 12, scope: !18)
!49 = !DILocation(line: 37, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 12)
!51 = !DILocation(line: 37, column: 23, scope: !50)
!52 = !DILocation(line: 37, column: 25, scope: !50)
!53 = !DILocation(line: 37, column: 12, scope: !18)
!54 = !DILocation(line: 44, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 37, column: 37)
!56 = !DILocation(line: 44, column: 15, scope: !55)
!57 = !{!58, !60, i64 8}
!58 = !{!"exception", !59, i64 0, !60, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !59, i64 40}
!59 = !{!"int", !45, i64 0}
!60 = !{!"any pointer", !45, i64 0}
!61 = !{!"double", !45, i64 0}
!62 = !DILocation(line: 45, column: 10, scope: !55)
!63 = !DILocation(line: 45, column: 14, scope: !55)
!64 = !{!58, !59, i64 40}
!65 = !DILocation(line: 46, column: 28, scope: !55)
!66 = !DILocation(line: 46, column: 21, scope: !55)
!67 = !DILocation(line: 46, column: 26, scope: !55)
!68 = !{!58, !61, i64 24}
!69 = !DILocation(line: 46, column: 10, scope: !55)
!70 = !DILocation(line: 46, column: 15, scope: !55)
!71 = !{!58, !61, i64 16}
!72 = !DILocation(line: 47, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !55, file: !1, line: 47, column: 17)
!74 = !DILocation(line: 47, column: 30, scope: !73)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 48, column: 16, scope: !73)
!77 = !{!58, !61, i64 32}
!78 = !DILocation(line: 51, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !55, file: !1, line: 51, column: 9)
!80 = !DILocation(line: 51, column: 18, scope: !79)
!81 = !DILocation(line: 51, column: 24, scope: !79)
!82 = !DILocation(line: 51, column: 21, scope: !79)
!83 = !DILocation(line: 0, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 60, column: 20)
!85 = !DILocation(line: 53, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 51, column: 38)
!87 = !{!58, !59, i64 0}
!88 = !DILocation(line: 54, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 54, column: 7)
!90 = !DILocation(line: 54, column: 20, scope: !89)
!91 = !DILocation(line: 54, column: 7, scope: !86)
!92 = !DILocation(line: 55, column: 6, scope: !89)
!93 = !DILocation(line: 55, column: 12, scope: !89)
!94 = !{!59, !59, i64 0}
!95 = !DILocation(line: 34, column: 19, scope: !18)
!96 = !DILocation(line: 56, column: 13, scope: !97)
!97 = distinct !DILexicalBlock(scope: !89, file: !1, line: 56, column: 12)
!98 = !DILocation(line: 56, column: 12, scope: !89)
!99 = !DILocation(line: 57, column: 6, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 56, column: 28)
!101 = !DILocation(line: 57, column: 12, scope: !100)
!102 = !DILocation(line: 58, column: 3, scope: !100)
!103 = !DILocation(line: 62, column: 12, scope: !84)
!104 = !DILocation(line: 63, column: 21, scope: !105)
!105 = distinct !DILexicalBlock(scope: !84, file: !1, line: 63, column: 21)
!106 = !DILocation(line: 63, column: 34, scope: !105)
!107 = !DILocation(line: 63, column: 21, scope: !84)
!108 = !DILocation(line: 64, column: 6, scope: !105)
!109 = !DILocation(line: 64, column: 12, scope: !105)
!110 = !DILocation(line: 65, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 65, column: 26)
!112 = !DILocation(line: 65, column: 26, scope: !105)
!113 = !DILocation(line: 66, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 65, column: 42)
!115 = !DILocation(line: 66, column: 26, scope: !114)
!116 = !DILocation(line: 67, column: 3, scope: !114)
!117 = !DILocation(line: 69, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !55, file: !1, line: 69, column: 10)
!119 = !DILocation(line: 69, column: 18, scope: !118)
!120 = !DILocation(line: 69, column: 10, scope: !55)
!121 = !DILocation(line: 70, column: 9, scope: !118)
!122 = !DILocation(line: 70, column: 15, scope: !118)
!123 = !DILocation(line: 71, column: 31, scope: !55)
!124 = !DILocation(line: 71, column: 20, scope: !55)
!125 = !DILocation(line: 71, column: 13, scope: !55)
!126 = !DILocation(line: 0, scope: !55)
!127 = !DILocation(line: 75, column: 1, scope: !18)
