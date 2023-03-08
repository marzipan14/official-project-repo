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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %53, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %53, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = fcmp ugt double %0, 0.000000e+00, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %11, label %53, label %12, !dbg !50

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !51
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 8, !dbg !53, !tbaa !54
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !59
  store i32 0, i32* %14, align 8, !dbg !60, !tbaa !61
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !62
  store double %0, double* %15, align 8, !dbg !63, !tbaa !64
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !65
  store double %0, double* %16, align 8, !dbg !66, !tbaa !67
  %17 = load i32, i32* @__fdlib_version, align 4, !dbg !68, !tbaa !41
  %18 = icmp eq i32 %17, 0, !dbg !70
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  %20 = select i1 %18, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !72
  store double %20, double* %19, align 8, !dbg !71, !tbaa !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !74
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %21, label %23, label %32, !dbg !78

; <label>:23:                                     ; preds = %12
  store i32 2, i32* %22, align 8, !dbg !79, !tbaa !81
  %24 = icmp eq i32 %17, 2, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %24, label %25, label %27, !dbg !84

; <label>:25:                                     ; preds = %23
  %26 = tail call i32* @__errno() #5, !dbg !85
  store i32 34, i32* %26, align 4, !dbg !86, !tbaa !87
  br label %45, !dbg !85

; <label>:27:                                     ; preds = %23
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !89
  %29 = icmp eq i32 %28, 0, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %29, label %30, label %46, !dbg !91

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !92
  store i32 34, i32* %31, align 4, !dbg !94, !tbaa !87
  br label %45, !dbg !95

; <label>:32:                                     ; preds = %12
  store i32 1, i32* %22, align 8, !dbg !96, !tbaa !81
  %33 = icmp eq i32 %17, 2, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %33, label %34, label %36, !dbg !99

; <label>:34:                                     ; preds = %32
  %35 = tail call i32* @__errno() #5, !dbg !100
  br label %41, !dbg !100

; <label>:36:                                     ; preds = %32
  %37 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !101
  %38 = icmp eq i32 %37, 0, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %38, label %39, label %43, !dbg !103

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno() #5, !dbg !104
  br label %41, !dbg !106

; <label>:41:                                     ; preds = %34, %39
  %42 = phi i32* [ %40, %39 ], [ %35, %34 ]
  store i32 33, i32* %42, align 4, !dbg !107, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br label %43, !dbg !108

; <label>:43:                                     ; preds = %41, %36
  %44 = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !108
  store double %44, double* %19, align 8, !dbg !109, !tbaa !73
  br label %45

; <label>:45:                                     ; preds = %43, %30, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %46, !dbg !110

; <label>:46:                                     ; preds = %45, %27
  %47 = load i32, i32* %14, align 8, !dbg !110, !tbaa !61
  %48 = icmp eq i32 %47, 0, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %48, label %51, label %49, !dbg !113

; <label>:49:                                     ; preds = %46
  %50 = call i32* @__errno() #5, !dbg !114
  store i32 %47, i32* %50, align 4, !dbg !115, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br label %51, !dbg !114

; <label>:51:                                     ; preds = %46, %49
  %52 = load double, double* %19, align 8, !dbg !116, !tbaa !73
  br label %53, !dbg !117

; <label>:53:                                     ; preds = %10, %1, %7, %51
  %54 = phi double [ %52, %51 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret double %54, !dbg !120
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
!47 = !DILocation(line: 74, column: 5, scope: !17)
!48 = !DILocation(line: 75, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !17, file: !1, line: 75, column: 5)
!50 = !DILocation(line: 75, column: 5, scope: !17)
!51 = !DILocation(line: 82, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 75, column: 13)
!53 = !DILocation(line: 82, column: 15, scope: !52)
!54 = !{!55, !57, i64 8}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 83, column: 10, scope: !52)
!60 = !DILocation(line: 83, column: 14, scope: !52)
!61 = !{!55, !56, i64 40}
!62 = !DILocation(line: 84, column: 10, scope: !52)
!63 = !DILocation(line: 84, column: 15, scope: !52)
!64 = !{!55, !58, i64 16}
!65 = !DILocation(line: 85, column: 10, scope: !52)
!66 = !DILocation(line: 85, column: 15, scope: !52)
!67 = !{!55, !58, i64 24}
!68 = !DILocation(line: 86, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !1, line: 86, column: 10)
!70 = !DILocation(line: 86, column: 23, scope: !69)
!71 = !DILocation(line: 0, scope: !69)
!72 = !DILocation(line: 86, column: 10, scope: !52)
!73 = !{!55, !58, i64 32}
!74 = !DILocation(line: 90, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !52, file: !1, line: 90, column: 9)
!76 = !DILocation(line: 0, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !1, line: 98, column: 13)
!78 = !DILocation(line: 90, column: 9, scope: !52)
!79 = !DILocation(line: 92, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 90, column: 17)
!81 = !{!55, !56, i64 0}
!82 = !DILocation(line: 93, column: 27, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 93, column: 14)
!84 = !DILocation(line: 93, column: 14, scope: !80)
!85 = !DILocation(line: 94, column: 13, scope: !83)
!86 = !DILocation(line: 94, column: 19, scope: !83)
!87 = !{!56, !56, i64 0}
!88 = !DILocation(line: 72, column: 19, scope: !17)
!89 = !DILocation(line: 95, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !1, line: 95, column: 19)
!91 = !DILocation(line: 95, column: 19, scope: !83)
!92 = !DILocation(line: 96, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 95, column: 35)
!94 = !DILocation(line: 96, column: 19, scope: !93)
!95 = !DILocation(line: 97, column: 10, scope: !93)
!96 = !DILocation(line: 100, column: 19, scope: !77)
!97 = !DILocation(line: 101, column: 27, scope: !98)
!98 = distinct !DILexicalBlock(scope: !77, file: !1, line: 101, column: 14)
!99 = !DILocation(line: 101, column: 14, scope: !77)
!100 = !DILocation(line: 102, column: 13, scope: !98)
!101 = !DILocation(line: 103, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 103, column: 19)
!103 = !DILocation(line: 103, column: 19, scope: !98)
!104 = !DILocation(line: 104, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 103, column: 35)
!106 = !DILocation(line: 105, column: 10, scope: !105)
!107 = !DILocation(line: 0, scope: !98)
!108 = !DILocation(line: 106, column: 30, scope: !77)
!109 = !DILocation(line: 106, column: 28, scope: !77)
!110 = !DILocation(line: 108, column: 14, scope: !111)
!111 = distinct !DILexicalBlock(scope: !52, file: !1, line: 108, column: 10)
!112 = !DILocation(line: 108, column: 18, scope: !111)
!113 = !DILocation(line: 108, column: 10, scope: !52)
!114 = !DILocation(line: 109, column: 16, scope: !111)
!115 = !DILocation(line: 109, column: 22, scope: !111)
!116 = !DILocation(line: 110, column: 24, scope: !52)
!117 = !DILocation(line: 110, column: 13, scope: !52)
!118 = !DILocation(line: 0, scope: !49)
!119 = !DILocation(line: 0, scope: !40)
!120 = !DILocation(line: 114, column: 1, scope: !17)
