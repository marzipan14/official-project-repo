; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_cosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_cosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @cosh(double) local_unnamed_addr #0 !dbg !17 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call double @__ieee754_cosh(double %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %41, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %41, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = tail call double @fabs(double %0) #5, !dbg !48
  %12 = fcmp ogt double %11, 0x408633CE8FB9F87D, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %12, label %13, label %41, !dbg !51

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !52
  store i32 3, i32* %14, align 8, !dbg !54, !tbaa !55
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !63
  store i32 0, i32* %16, align 8, !dbg !64, !tbaa !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !66
  store double %0, double* %17, align 8, !dbg !67, !tbaa !68
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !69
  store double %0, double* %18, align 8, !dbg !70, !tbaa !71
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !72, !tbaa !41
  %20 = icmp eq i32 %19, 0, !dbg !74
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %20, label %22, label %23, !dbg !76

; <label>:22:                                     ; preds = %13
  store double 0x47EFFFFFE0000000, double* %21, align 8, !dbg !77, !tbaa !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br label %27, !dbg !80

; <label>:23:                                     ; preds = %13
  store double 0x7FF0000000000000, double* %21, align 8, !dbg !81, !tbaa !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = icmp eq i32 %19, 2, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %24, label %25, label %27, !dbg !80

; <label>:25:                                     ; preds = %23
  %26 = tail call i32* @__errno() #5, !dbg !84
  br label %32, !dbg !84

; <label>:27:                                     ; preds = %22, %23
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !86
  %29 = icmp eq i32 %28, 0, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %29, label %30, label %34, !dbg !88

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !89
  br label %32, !dbg !91

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 34, i32* %33, align 4, !dbg !92, !tbaa !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %34, !dbg !94

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %16, align 8, !dbg !94, !tbaa !65
  %36 = icmp eq i32 %35, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br i1 %36, label %39, label %37, !dbg !97

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !98
  store i32 %35, i32* %38, align 4, !dbg !99, !tbaa !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br label %39, !dbg !98

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %21, align 8, !dbg !100, !tbaa !78
  br label %41, !dbg !101

; <label>:41:                                     ; preds = %10, %1, %7, %39
  %42 = phi double [ %40, %39 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  ret double %42, !dbg !104
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_cosh(double) local_unnamed_addr #2

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

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_cosh.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "cosh", scope: !1, file: !1, line: 74, type: !18, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 74, type: !20)
!23 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 83, type: !20)
!24 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 84, type: !25)
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
!35 = !DILocation(line: 74, column: 21, scope: !17)
!36 = !DILocation(line: 84, column: 2, scope: !17)
!37 = !DILocation(line: 85, column: 6, scope: !17)
!38 = !DILocation(line: 83, column: 9, scope: !17)
!39 = !DILocation(line: 86, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !1, line: 86, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 86, column: 18, scope: !40)
!45 = !DILocation(line: 86, column: 28, scope: !40)
!46 = !DILocation(line: 86, column: 31, scope: !40)
!47 = !DILocation(line: 86, column: 5, scope: !17)
!48 = !DILocation(line: 87, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !17, file: !1, line: 87, column: 5)
!50 = !DILocation(line: 87, column: 12, scope: !49)
!51 = !DILocation(line: 87, column: 5, scope: !17)
!52 = !DILocation(line: 95, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 87, column: 41)
!54 = !DILocation(line: 95, column: 15, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !42, i64 0}
!58 = !{!"any pointer", !42, i64 0}
!59 = !{!"double", !42, i64 0}
!60 = !DILocation(line: 96, column: 10, scope: !53)
!61 = !DILocation(line: 96, column: 15, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 97, column: 10, scope: !53)
!64 = !DILocation(line: 97, column: 14, scope: !53)
!65 = !{!56, !57, i64 40}
!66 = !DILocation(line: 98, column: 21, scope: !53)
!67 = !DILocation(line: 98, column: 26, scope: !53)
!68 = !{!56, !59, i64 24}
!69 = !DILocation(line: 98, column: 10, scope: !53)
!70 = !DILocation(line: 98, column: 15, scope: !53)
!71 = !{!56, !59, i64 16}
!72 = !DILocation(line: 99, column: 10, scope: !73)
!73 = distinct !DILexicalBlock(scope: !53, file: !1, line: 99, column: 10)
!74 = !DILocation(line: 99, column: 23, scope: !73)
!75 = !DILocation(line: 0, scope: !73)
!76 = !DILocation(line: 99, column: 10, scope: !53)
!77 = !DILocation(line: 100, column: 20, scope: !73)
!78 = !{!56, !59, i64 32}
!79 = !DILocation(line: 100, column: 9, scope: !73)
!80 = !DILocation(line: 103, column: 10, scope: !53)
!81 = !DILocation(line: 102, column: 20, scope: !73)
!82 = !DILocation(line: 103, column: 23, scope: !83)
!83 = distinct !DILexicalBlock(scope: !53, file: !1, line: 103, column: 10)
!84 = !DILocation(line: 104, column: 9, scope: !83)
!85 = !DILocation(line: 84, column: 19, scope: !17)
!86 = !DILocation(line: 105, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 105, column: 15)
!88 = !DILocation(line: 105, column: 15, scope: !83)
!89 = !DILocation(line: 106, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 105, column: 31)
!91 = !DILocation(line: 107, column: 6, scope: !90)
!92 = !DILocation(line: 0, scope: !83)
!93 = !{!57, !57, i64 0}
!94 = !DILocation(line: 108, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !53, file: !1, line: 108, column: 10)
!96 = !DILocation(line: 108, column: 18, scope: !95)
!97 = !DILocation(line: 108, column: 10, scope: !53)
!98 = !DILocation(line: 109, column: 9, scope: !95)
!99 = !DILocation(line: 109, column: 15, scope: !95)
!100 = !DILocation(line: 110, column: 17, scope: !53)
!101 = !DILocation(line: 110, column: 6, scope: !53)
!102 = !DILocation(line: 0, scope: !49)
!103 = !DILocation(line: 0, scope: !40)
!104 = !DILocation(line: 114, column: 1, scope: !17)
