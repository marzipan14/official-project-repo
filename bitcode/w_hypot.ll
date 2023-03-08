; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_hypot.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_hypot.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"hypot\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @hypot(double, double) local_unnamed_addr #0 !dbg !17 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call double @__ieee754_hypot(double %0, double %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  br i1 %7, label %44, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finite(double %5) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  br i1 %10, label %11, label %44, !dbg !50

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @finite(double %0) #5, !dbg !51
  %13 = icmp eq i32 %12, 0, !dbg !51
  br i1 %13, label %44, label %14, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @finite(double %1) #5, !dbg !53
  %16 = icmp eq i32 %15, 0, !dbg !53
  br i1 %16, label %44, label %17, !dbg !54

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !55
  store i32 3, i32* %18, align 8, !dbg !57, !tbaa !58
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !63
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %19, align 8, !dbg !64, !tbaa !65
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !66
  store i32 0, i32* %20, align 8, !dbg !67, !tbaa !68
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  store double %0, double* %21, align 8, !dbg !70, !tbaa !71
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !72
  store double %1, double* %22, align 8, !dbg !73, !tbaa !74
  %23 = load i32, i32* @__fdlib_version, align 4, !dbg !75, !tbaa !43
  %24 = icmp eq i32 %23, 0, !dbg !77
  %25 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !78
  %26 = select i1 %24, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !79
  store double %26, double* %25, align 8, !dbg !78, !tbaa !80
  %27 = icmp eq i32 %23, 2, !dbg !81
  br i1 %27, label %28, label %30, !dbg !83

; <label>:28:                                     ; preds = %17
  %29 = tail call i32* @__errno() #5, !dbg !84
  br label %35, !dbg !84

; <label>:30:                                     ; preds = %17
  %31 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !86
  %32 = icmp eq i32 %31, 0, !dbg !86
  br i1 %32, label %33, label %37, !dbg !88

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !89
  br label %35, !dbg !91

; <label>:35:                                     ; preds = %28, %33
  %36 = phi i32* [ %34, %33 ], [ %29, %28 ]
  store i32 34, i32* %36, align 4, !dbg !92, !tbaa !93
  br label %37, !dbg !94

; <label>:37:                                     ; preds = %35, %30
  %38 = load i32, i32* %20, align 8, !dbg !94, !tbaa !68
  %39 = icmp eq i32 %38, 0, !dbg !96
  br i1 %39, label %42, label %40, !dbg !97

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !98
  store i32 %38, i32* %41, align 4, !dbg !99, !tbaa !93
  br label %42, !dbg !98

; <label>:42:                                     ; preds = %37, %40
  %43 = load double, double* %25, align 8, !dbg !100, !tbaa !80
  br label %44, !dbg !101

; <label>:44:                                     ; preds = %8, %11, %14, %2, %42
  %45 = phi double [ %43, %42 ], [ %5, %2 ], [ %5, %14 ], [ %5, %11 ], [ %5, %8 ], !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  ret double %45, !dbg !103
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_hypot(double, double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_hypot.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "hypot", scope: !1, file: !1, line: 66, type: !18, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 66, type: !20)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !17, file: !1, line: 66, type: !20)
!24 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 75, type: !20)
!25 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 76, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !20, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !20, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !20, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 66, column: 22, scope: !17)
!37 = !DILocation(line: 66, column: 32, scope: !17)
!38 = !DILocation(line: 76, column: 2, scope: !17)
!39 = !DILocation(line: 77, column: 6, scope: !17)
!40 = !DILocation(line: 75, column: 9, scope: !17)
!41 = !DILocation(line: 78, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !17, file: !1, line: 78, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 78, column: 18, scope: !42)
!47 = !DILocation(line: 78, column: 5, scope: !17)
!48 = !DILocation(line: 79, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !17, file: !1, line: 79, column: 5)
!50 = !DILocation(line: 79, column: 17, scope: !49)
!51 = !DILocation(line: 79, column: 19, scope: !49)
!52 = !DILocation(line: 79, column: 28, scope: !49)
!53 = !DILocation(line: 79, column: 30, scope: !49)
!54 = !DILocation(line: 79, column: 5, scope: !17)
!55 = !DILocation(line: 87, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 79, column: 41)
!57 = !DILocation(line: 87, column: 15, scope: !56)
!58 = !{!59, !60, i64 0}
!59 = !{!"exception", !60, i64 0, !61, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !60, i64 40}
!60 = !{!"int", !44, i64 0}
!61 = !{!"any pointer", !44, i64 0}
!62 = !{!"double", !44, i64 0}
!63 = !DILocation(line: 88, column: 10, scope: !56)
!64 = !DILocation(line: 88, column: 15, scope: !56)
!65 = !{!59, !61, i64 8}
!66 = !DILocation(line: 89, column: 10, scope: !56)
!67 = !DILocation(line: 89, column: 14, scope: !56)
!68 = !{!59, !60, i64 40}
!69 = !DILocation(line: 90, column: 10, scope: !56)
!70 = !DILocation(line: 90, column: 15, scope: !56)
!71 = !{!59, !62, i64 16}
!72 = !DILocation(line: 91, column: 10, scope: !56)
!73 = !DILocation(line: 91, column: 15, scope: !56)
!74 = !{!59, !62, i64 24}
!75 = !DILocation(line: 92, column: 10, scope: !76)
!76 = distinct !DILexicalBlock(scope: !56, file: !1, line: 92, column: 10)
!77 = !DILocation(line: 92, column: 23, scope: !76)
!78 = !DILocation(line: 0, scope: !76)
!79 = !DILocation(line: 93, column: 9, scope: !76)
!80 = !{!59, !62, i64 32}
!81 = !DILocation(line: 96, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !56, file: !1, line: 96, column: 10)
!83 = !DILocation(line: 96, column: 10, scope: !56)
!84 = !DILocation(line: 97, column: 9, scope: !82)
!85 = !DILocation(line: 76, column: 19, scope: !17)
!86 = !DILocation(line: 98, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 98, column: 15)
!88 = !DILocation(line: 98, column: 15, scope: !82)
!89 = !DILocation(line: 99, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 98, column: 31)
!91 = !DILocation(line: 100, column: 6, scope: !90)
!92 = !DILocation(line: 0, scope: !82)
!93 = !{!60, !60, i64 0}
!94 = !DILocation(line: 101, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !56, file: !1, line: 101, column: 10)
!96 = !DILocation(line: 101, column: 18, scope: !95)
!97 = !DILocation(line: 101, column: 10, scope: !56)
!98 = !DILocation(line: 102, column: 9, scope: !95)
!99 = !DILocation(line: 102, column: 15, scope: !95)
!100 = !DILocation(line: 103, column: 24, scope: !56)
!101 = !DILocation(line: 103, column: 13, scope: !56)
!102 = !DILocation(line: 0, scope: !56)
!103 = !DILocation(line: 107, column: 1, scope: !17)
