; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wr_lgamma.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wr_lgamma.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"lgamma\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @lgamma_r(double, i32*) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !39
  %5 = tail call double @__ieee754_lgamma_r(double %0, i32* %1) #5, !dbg !40
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !42, !tbaa !44
  %7 = icmp eq i32 %6, -1, !dbg !47
  br i1 %7, label %55, label %8, !dbg !48

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finite(double %5) #5, !dbg !49
  %10 = icmp eq i32 %9, 0, !dbg !49
  br i1 %10, label %11, label %55, !dbg !51

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @finite(double %0) #5, !dbg !52
  %13 = icmp eq i32 %12, 0, !dbg !52
  br i1 %13, label %55, label %14, !dbg !53

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !54
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !56, !tbaa !57
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !62
  store i32 0, i32* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !65
  store double %0, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !68
  store double %0, double* %18, align 8, !dbg !69, !tbaa !70
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !71, !tbaa !44
  %20 = icmp eq i32 %19, 0, !dbg !73
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !74
  %22 = select i1 %20, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !75
  store double %22, double* %21, align 8, !dbg !74, !tbaa !76
  %23 = tail call double @floor(double %0) #5, !dbg !77
  %24 = fcmp oeq double %23, %0, !dbg !79
  %25 = fcmp ole double %0, 0.000000e+00, !dbg !80
  %26 = and i1 %25, %24, !dbg !81
  %27 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !82
  br i1 %26, label %28, label %38, !dbg !81

; <label>:28:                                     ; preds = %14
  store i32 2, i32* %27, align 8, !dbg !84, !tbaa !86
  %29 = load i32, i32* @__fdlib_version, align 4, !dbg !87, !tbaa !44
  %30 = icmp eq i32 %29, 2, !dbg !89
  br i1 %30, label %31, label %33, !dbg !90

; <label>:31:                                     ; preds = %28
  %32 = tail call i32* @__errno() #5, !dbg !91
  store i32 33, i32* %32, align 4, !dbg !92, !tbaa !93
  br label %48, !dbg !91

; <label>:33:                                     ; preds = %28
  %34 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !95
  %35 = icmp eq i32 %34, 0, !dbg !95
  br i1 %35, label %36, label %48, !dbg !97

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !98
  store i32 33, i32* %37, align 4, !dbg !100, !tbaa !93
  br label %48, !dbg !101

; <label>:38:                                     ; preds = %14
  store i32 3, i32* %27, align 8, !dbg !102, !tbaa !86
  %39 = load i32, i32* @__fdlib_version, align 4, !dbg !103, !tbaa !44
  %40 = icmp eq i32 %39, 2, !dbg !105
  br i1 %40, label %41, label %43, !dbg !106

; <label>:41:                                     ; preds = %38
  %42 = tail call i32* @__errno() #5, !dbg !107
  store i32 34, i32* %42, align 4, !dbg !108, !tbaa !93
  br label %48, !dbg !107

; <label>:43:                                     ; preds = %38
  %44 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !109
  %45 = icmp eq i32 %44, 0, !dbg !109
  br i1 %45, label %46, label %48, !dbg !111

; <label>:46:                                     ; preds = %43
  %47 = call i32* @__errno() #5, !dbg !112
  store i32 34, i32* %47, align 4, !dbg !114, !tbaa !93
  br label %48, !dbg !115

; <label>:48:                                     ; preds = %33, %43, %41, %46, %31, %36
  %49 = load i32, i32* %16, align 8, !dbg !116, !tbaa !64
  %50 = icmp eq i32 %49, 0, !dbg !118
  br i1 %50, label %53, label %51, !dbg !119

; <label>:51:                                     ; preds = %48
  %52 = call i32* @__errno() #5, !dbg !120
  store i32 %49, i32* %52, align 4, !dbg !121, !tbaa !93
  br label %53, !dbg !120

; <label>:53:                                     ; preds = %48, %51
  %54 = load double, double* %21, align 8, !dbg !122, !tbaa !76
  br label %55, !dbg !123

; <label>:55:                                     ; preds = %8, %11, %2, %53
  %56 = phi double [ %54, %53 ], [ %5, %2 ], [ %5, %11 ], [ %5, %8 ], !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  ret double %56, !dbg !125
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_lgamma_r(double, i32*) local_unnamed_addr #2

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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wr_lgamma.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "lgamma_r", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!22 = !{!23, !24, !25, !26}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!24 = !DILocalVariable(name: "signgamp", arg: 2, scope: !18, file: !1, line: 24, type: !21)
!25 = !DILocalVariable(name: "y", scope: !18, file: !1, line: 33, type: !12)
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
!37 = !DILocation(line: 24, column: 25, scope: !18)
!38 = !DILocation(line: 24, column: 33, scope: !18)
!39 = !DILocation(line: 34, column: 2, scope: !18)
!40 = !DILocation(line: 35, column: 13, scope: !18)
!41 = !DILocation(line: 33, column: 16, scope: !18)
!42 = !DILocation(line: 36, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 12)
!44 = !{!45, !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 36, column: 25, scope: !43)
!48 = !DILocation(line: 36, column: 12, scope: !18)
!49 = !DILocation(line: 37, column: 13, scope: !50)
!50 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 12)
!51 = !DILocation(line: 37, column: 22, scope: !50)
!52 = !DILocation(line: 37, column: 24, scope: !50)
!53 = !DILocation(line: 37, column: 12, scope: !18)
!54 = !DILocation(line: 44, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 37, column: 35)
!56 = !DILocation(line: 44, column: 15, scope: !55)
!57 = !{!58, !60, i64 8}
!58 = !{!"exception", !59, i64 0, !60, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !59, i64 40}
!59 = !{!"int", !45, i64 0}
!60 = !{!"any pointer", !45, i64 0}
!61 = !{!"double", !45, i64 0}
!62 = !DILocation(line: 45, column: 10, scope: !55)
!63 = !DILocation(line: 45, column: 14, scope: !55)
!64 = !{!58, !59, i64 40}
!65 = !DILocation(line: 46, column: 21, scope: !55)
!66 = !DILocation(line: 46, column: 26, scope: !55)
!67 = !{!58, !61, i64 24}
!68 = !DILocation(line: 46, column: 10, scope: !55)
!69 = !DILocation(line: 46, column: 15, scope: !55)
!70 = !{!58, !61, i64 16}
!71 = !DILocation(line: 47, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !55, file: !1, line: 47, column: 17)
!73 = !DILocation(line: 47, column: 30, scope: !72)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 48, column: 16, scope: !72)
!76 = !{!58, !61, i64 32}
!77 = !DILocation(line: 51, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !55, file: !1, line: 51, column: 9)
!79 = !DILocation(line: 51, column: 17, scope: !78)
!80 = !DILocation(line: 51, column: 23, scope: !78)
!81 = !DILocation(line: 51, column: 20, scope: !78)
!82 = !DILocation(line: 0, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 60, column: 20)
!84 = !DILocation(line: 53, column: 12, scope: !85)
!85 = distinct !DILexicalBlock(scope: !78, file: !1, line: 51, column: 30)
!86 = !{!58, !59, i64 0}
!87 = !DILocation(line: 54, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 54, column: 7)
!89 = !DILocation(line: 54, column: 20, scope: !88)
!90 = !DILocation(line: 54, column: 7, scope: !85)
!91 = !DILocation(line: 55, column: 6, scope: !88)
!92 = !DILocation(line: 55, column: 12, scope: !88)
!93 = !{!59, !59, i64 0}
!94 = !DILocation(line: 34, column: 19, scope: !18)
!95 = !DILocation(line: 56, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !88, file: !1, line: 56, column: 12)
!97 = !DILocation(line: 56, column: 12, scope: !88)
!98 = !DILocation(line: 57, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 56, column: 28)
!100 = !DILocation(line: 57, column: 12, scope: !99)
!101 = !DILocation(line: 58, column: 3, scope: !99)
!102 = !DILocation(line: 62, column: 12, scope: !83)
!103 = !DILocation(line: 63, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !83, file: !1, line: 63, column: 21)
!105 = !DILocation(line: 63, column: 34, scope: !104)
!106 = !DILocation(line: 63, column: 21, scope: !83)
!107 = !DILocation(line: 64, column: 6, scope: !104)
!108 = !DILocation(line: 64, column: 12, scope: !104)
!109 = !DILocation(line: 65, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 65, column: 26)
!111 = !DILocation(line: 65, column: 26, scope: !104)
!112 = !DILocation(line: 66, column: 20, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 65, column: 42)
!114 = !DILocation(line: 66, column: 26, scope: !113)
!115 = !DILocation(line: 67, column: 3, scope: !113)
!116 = !DILocation(line: 69, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !55, file: !1, line: 69, column: 10)
!118 = !DILocation(line: 69, column: 18, scope: !117)
!119 = !DILocation(line: 69, column: 10, scope: !55)
!120 = !DILocation(line: 70, column: 9, scope: !117)
!121 = !DILocation(line: 70, column: 15, scope: !117)
!122 = !DILocation(line: 71, column: 24, scope: !55)
!123 = !DILocation(line: 71, column: 13, scope: !55)
!124 = !DILocation(line: 0, scope: !55)
!125 = !DILocation(line: 75, column: 1, scope: !18)
