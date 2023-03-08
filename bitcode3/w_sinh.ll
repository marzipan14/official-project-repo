; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sinh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sinh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"sinh\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @sinh(double) local_unnamed_addr #0 !dbg !17 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call double @__ieee754_sinh(double %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %46, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @finite(double %4) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  br i1 %9, label %10, label %46, !dbg !48

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @finite(double %0) #5, !dbg !49
  %12 = icmp eq i32 %11, 0, !dbg !49
  br i1 %12, label %46, label %13, !dbg !50

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !51
  store i32 3, i32* %14, align 8, !dbg !53, !tbaa !54
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !59
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !60, !tbaa !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !62
  store i32 0, i32* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !65
  store double %0, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !68
  store double %0, double* %18, align 8, !dbg !69, !tbaa !70
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !71, !tbaa !41
  %20 = icmp eq i32 %19, 0, !dbg !73
  %21 = fcmp ogt double %0, 0.000000e+00, !dbg !74
  br i1 %20, label %22, label %25, !dbg !75

; <label>:22:                                     ; preds = %13
  %23 = select i1 %21, double 0x47EFFFFFE0000000, double 0xC7EFFFFFE0000000, !dbg !76
  %24 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !77
  store double %23, double* %24, align 8, !dbg !78, !tbaa !79
  br label %31, !dbg !80

; <label>:25:                                     ; preds = %13
  %26 = select i1 %21, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !81
  %27 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !82
  store double %26, double* %27, align 8, !dbg !83, !tbaa !79
  %28 = icmp eq i32 %19, 2, !dbg !84
  br i1 %28, label %29, label %31, !dbg !80

; <label>:29:                                     ; preds = %25
  %30 = tail call i32* @__errno() #5, !dbg !86
  br label %36, !dbg !86

; <label>:31:                                     ; preds = %22, %25
  %32 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !88
  %33 = icmp eq i32 %32, 0, !dbg !88
  br i1 %33, label %34, label %38, !dbg !90

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !91
  br label %36, !dbg !93

; <label>:36:                                     ; preds = %29, %34
  %37 = phi i32* [ %35, %34 ], [ %30, %29 ]
  store i32 34, i32* %37, align 4, !dbg !94, !tbaa !95
  br label %38, !dbg !96

; <label>:38:                                     ; preds = %36, %31
  %39 = load i32, i32* %16, align 8, !dbg !96, !tbaa !64
  %40 = icmp eq i32 %39, 0, !dbg !98
  br i1 %40, label %43, label %41, !dbg !99

; <label>:41:                                     ; preds = %38
  %42 = call i32* @__errno() #5, !dbg !100
  store i32 %39, i32* %42, align 4, !dbg !101, !tbaa !95
  br label %43, !dbg !100

; <label>:43:                                     ; preds = %38, %41
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !102
  %45 = load double, double* %44, align 8, !dbg !102, !tbaa !79
  br label %46, !dbg !103

; <label>:46:                                     ; preds = %7, %10, %1, %43
  %47 = phi double [ %45, %43 ], [ %4, %1 ], [ %4, %10 ], [ %4, %7 ], !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !105
  ret double %47, !dbg !105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sinh(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_sinh.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "sinh", scope: !1, file: !1, line: 78, type: !18, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 78, type: !20)
!23 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 87, type: !20)
!24 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 88, type: !25)
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
!35 = !DILocation(line: 78, column: 21, scope: !17)
!36 = !DILocation(line: 88, column: 2, scope: !17)
!37 = !DILocation(line: 89, column: 6, scope: !17)
!38 = !DILocation(line: 87, column: 9, scope: !17)
!39 = !DILocation(line: 90, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !1, line: 90, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 90, column: 18, scope: !40)
!45 = !DILocation(line: 90, column: 5, scope: !17)
!46 = !DILocation(line: 91, column: 6, scope: !47)
!47 = distinct !DILexicalBlock(scope: !17, file: !1, line: 91, column: 5)
!48 = !DILocation(line: 91, column: 15, scope: !47)
!49 = !DILocation(line: 91, column: 17, scope: !47)
!50 = !DILocation(line: 91, column: 5, scope: !17)
!51 = !DILocation(line: 99, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 91, column: 28)
!53 = !DILocation(line: 99, column: 15, scope: !52)
!54 = !{!55, !56, i64 0}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 100, column: 10, scope: !52)
!60 = !DILocation(line: 100, column: 15, scope: !52)
!61 = !{!55, !57, i64 8}
!62 = !DILocation(line: 101, column: 10, scope: !52)
!63 = !DILocation(line: 101, column: 14, scope: !52)
!64 = !{!55, !56, i64 40}
!65 = !DILocation(line: 102, column: 21, scope: !52)
!66 = !DILocation(line: 102, column: 26, scope: !52)
!67 = !{!55, !58, i64 24}
!68 = !DILocation(line: 102, column: 10, scope: !52)
!69 = !DILocation(line: 102, column: 15, scope: !52)
!70 = !{!55, !58, i64 16}
!71 = !DILocation(line: 103, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !52, file: !1, line: 103, column: 10)
!73 = !DILocation(line: 103, column: 23, scope: !72)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 103, column: 10, scope: !52)
!76 = !DILocation(line: 104, column: 22, scope: !72)
!77 = !DILocation(line: 104, column: 13, scope: !72)
!78 = !DILocation(line: 104, column: 20, scope: !72)
!79 = !{!55, !58, i64 32}
!80 = !DILocation(line: 107, column: 10, scope: !52)
!81 = !DILocation(line: 106, column: 24, scope: !72)
!82 = !DILocation(line: 106, column: 13, scope: !72)
!83 = !DILocation(line: 106, column: 20, scope: !72)
!84 = !DILocation(line: 107, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !52, file: !1, line: 107, column: 10)
!86 = !DILocation(line: 108, column: 9, scope: !85)
!87 = !DILocation(line: 88, column: 19, scope: !17)
!88 = !DILocation(line: 109, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 109, column: 15)
!90 = !DILocation(line: 109, column: 15, scope: !85)
!91 = !DILocation(line: 110, column: 9, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 109, column: 31)
!93 = !DILocation(line: 111, column: 6, scope: !92)
!94 = !DILocation(line: 0, scope: !85)
!95 = !{!56, !56, i64 0}
!96 = !DILocation(line: 112, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !52, file: !1, line: 112, column: 10)
!98 = !DILocation(line: 112, column: 18, scope: !97)
!99 = !DILocation(line: 112, column: 10, scope: !52)
!100 = !DILocation(line: 113, column: 9, scope: !97)
!101 = !DILocation(line: 113, column: 15, scope: !97)
!102 = !DILocation(line: 114, column: 24, scope: !52)
!103 = !DILocation(line: 114, column: 13, scope: !52)
!104 = !DILocation(line: 0, scope: !52)
!105 = !DILocation(line: 118, column: 1, scope: !17)
