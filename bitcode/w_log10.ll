; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_log10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_log10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @log10(double) local_unnamed_addr #0 !dbg !17 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call double @__ieee754_log10(double %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %52, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  %10 = fcmp ugt double %0, 0.000000e+00, !dbg !47
  %11 = or i1 %10, %9, !dbg !49
  br i1 %11, label %52, label %12, !dbg !49

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !50
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8, !dbg !52, !tbaa !53
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !58
  store i32 0, i32* %14, align 8, !dbg !59, !tbaa !60
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !61
  store double %0, double* %15, align 8, !dbg !62, !tbaa !63
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !64
  store double %0, double* %16, align 8, !dbg !65, !tbaa !66
  %17 = load i32, i32* @__fdlib_version, align 4, !dbg !67, !tbaa !41
  %18 = icmp eq i32 %17, 0, !dbg !69
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !70
  %20 = select i1 %18, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !71
  store double %20, double* %19, align 8, !dbg !70, !tbaa !72
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !73
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !75
  br i1 %21, label %23, label %32, !dbg !77

; <label>:23:                                     ; preds = %12
  store i32 2, i32* %22, align 8, !dbg !78, !tbaa !80
  %24 = icmp eq i32 %17, 2, !dbg !81
  br i1 %24, label %25, label %27, !dbg !83

; <label>:25:                                     ; preds = %23
  %26 = tail call i32* @__errno() #5, !dbg !84
  store i32 34, i32* %26, align 4, !dbg !85, !tbaa !86
  br label %45, !dbg !84

; <label>:27:                                     ; preds = %23
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !88
  %29 = icmp eq i32 %28, 0, !dbg !88
  br i1 %29, label %30, label %45, !dbg !90

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !91
  store i32 34, i32* %31, align 4, !dbg !93, !tbaa !86
  br label %45, !dbg !94

; <label>:32:                                     ; preds = %12
  store i32 1, i32* %22, align 8, !dbg !95, !tbaa !80
  %33 = icmp eq i32 %17, 2, !dbg !96
  br i1 %33, label %34, label %36, !dbg !98

; <label>:34:                                     ; preds = %32
  %35 = tail call i32* @__errno() #5, !dbg !99
  br label %41, !dbg !99

; <label>:36:                                     ; preds = %32
  %37 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !100
  %38 = icmp eq i32 %37, 0, !dbg !100
  br i1 %38, label %39, label %43, !dbg !102

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno() #5, !dbg !103
  br label %41, !dbg !105

; <label>:41:                                     ; preds = %34, %39
  %42 = phi i32* [ %40, %39 ], [ %35, %34 ]
  store i32 33, i32* %42, align 4, !dbg !106, !tbaa !86
  br label %43, !dbg !107

; <label>:43:                                     ; preds = %41, %36
  %44 = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !107
  store double %44, double* %19, align 8, !dbg !108, !tbaa !72
  br label %45

; <label>:45:                                     ; preds = %27, %25, %30, %43
  %46 = load i32, i32* %14, align 8, !dbg !109, !tbaa !60
  %47 = icmp eq i32 %46, 0, !dbg !111
  br i1 %47, label %50, label %48, !dbg !112

; <label>:48:                                     ; preds = %45
  %49 = call i32* @__errno() #5, !dbg !113
  store i32 %46, i32* %49, align 4, !dbg !114, !tbaa !86
  br label %50, !dbg !113

; <label>:50:                                     ; preds = %45, %48
  %51 = load double, double* %19, align 8, !dbg !115, !tbaa !72
  br label %52, !dbg !116

; <label>:52:                                     ; preds = %1, %7, %50
  %53 = phi double [ %51, %50 ], [ %4, %7 ], [ %4, %1 ], !dbg !117
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  ret double %53, !dbg !118
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_log10(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

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

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_log10.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "log10", scope: !1, file: !1, line: 62, type: !18, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 62, type: !20)
!23 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 71, type: !20)
!24 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 72, type: !25)
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
!35 = !DILocation(line: 62, column: 22, scope: !17)
!36 = !DILocation(line: 72, column: 2, scope: !17)
!37 = !DILocation(line: 73, column: 6, scope: !17)
!38 = !DILocation(line: 71, column: 9, scope: !17)
!39 = !DILocation(line: 74, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !1, line: 74, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 74, column: 18, scope: !40)
!45 = !DILocation(line: 74, column: 28, scope: !40)
!46 = !DILocation(line: 74, column: 31, scope: !40)
!47 = !DILocation(line: 75, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !17, file: !1, line: 75, column: 5)
!49 = !DILocation(line: 74, column: 5, scope: !17)
!50 = !DILocation(line: 82, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 75, column: 13)
!52 = !DILocation(line: 82, column: 15, scope: !51)
!53 = !{!54, !56, i64 8}
!54 = !{!"exception", !55, i64 0, !56, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !55, i64 40}
!55 = !{!"int", !42, i64 0}
!56 = !{!"any pointer", !42, i64 0}
!57 = !{!"double", !42, i64 0}
!58 = !DILocation(line: 83, column: 10, scope: !51)
!59 = !DILocation(line: 83, column: 14, scope: !51)
!60 = !{!54, !55, i64 40}
!61 = !DILocation(line: 84, column: 10, scope: !51)
!62 = !DILocation(line: 84, column: 15, scope: !51)
!63 = !{!54, !57, i64 16}
!64 = !DILocation(line: 85, column: 10, scope: !51)
!65 = !DILocation(line: 85, column: 15, scope: !51)
!66 = !{!54, !57, i64 24}
!67 = !DILocation(line: 86, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !51, file: !1, line: 86, column: 10)
!69 = !DILocation(line: 86, column: 23, scope: !68)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocation(line: 87, column: 16, scope: !68)
!72 = !{!54, !57, i64 32}
!73 = !DILocation(line: 90, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !51, file: !1, line: 90, column: 9)
!75 = !DILocation(line: 0, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !1, line: 98, column: 13)
!77 = !DILocation(line: 90, column: 9, scope: !51)
!78 = !DILocation(line: 92, column: 19, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 90, column: 17)
!80 = !{!54, !55, i64 0}
!81 = !DILocation(line: 93, column: 27, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 93, column: 14)
!83 = !DILocation(line: 93, column: 14, scope: !79)
!84 = !DILocation(line: 94, column: 13, scope: !82)
!85 = !DILocation(line: 94, column: 19, scope: !82)
!86 = !{!55, !55, i64 0}
!87 = !DILocation(line: 72, column: 19, scope: !17)
!88 = !DILocation(line: 95, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 95, column: 19)
!90 = !DILocation(line: 95, column: 19, scope: !82)
!91 = !DILocation(line: 96, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 95, column: 35)
!93 = !DILocation(line: 96, column: 19, scope: !92)
!94 = !DILocation(line: 97, column: 10, scope: !92)
!95 = !DILocation(line: 100, column: 19, scope: !76)
!96 = !DILocation(line: 101, column: 27, scope: !97)
!97 = distinct !DILexicalBlock(scope: !76, file: !1, line: 101, column: 14)
!98 = !DILocation(line: 101, column: 14, scope: !76)
!99 = !DILocation(line: 102, column: 13, scope: !97)
!100 = !DILocation(line: 103, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 103, column: 19)
!102 = !DILocation(line: 103, column: 19, scope: !97)
!103 = !DILocation(line: 104, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 103, column: 35)
!105 = !DILocation(line: 105, column: 10, scope: !104)
!106 = !DILocation(line: 0, scope: !97)
!107 = !DILocation(line: 106, column: 30, scope: !76)
!108 = !DILocation(line: 106, column: 28, scope: !76)
!109 = !DILocation(line: 108, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !51, file: !1, line: 108, column: 10)
!111 = !DILocation(line: 108, column: 18, scope: !110)
!112 = !DILocation(line: 108, column: 10, scope: !51)
!113 = !DILocation(line: 109, column: 16, scope: !110)
!114 = !DILocation(line: 109, column: 22, scope: !110)
!115 = !DILocation(line: 110, column: 24, scope: !51)
!116 = !DILocation(line: 110, column: 13, scope: !51)
!117 = !DILocation(line: 0, scope: !48)
!118 = !DILocation(line: 114, column: 1, scope: !17)
