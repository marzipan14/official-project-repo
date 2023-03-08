; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_hypot.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_hypot.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"hypotf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @hypotf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_hypotf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  br i1 %7, label %48, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finitef(float %5) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  br i1 %10, label %11, label %48, !dbg !50

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @finitef(float %0) #5, !dbg !51
  %13 = icmp eq i32 %12, 0, !dbg !51
  br i1 %13, label %48, label %14, !dbg !52

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @finitef(float %1) #5, !dbg !53
  %16 = icmp eq i32 %15, 0, !dbg !53
  br i1 %16, label %48, label %17, !dbg !54

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !55
  store i32 3, i32* %18, align 8, !dbg !57, !tbaa !58
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !63
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %19, align 8, !dbg !64, !tbaa !65
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !66
  store i32 0, i32* %20, align 8, !dbg !67, !tbaa !68
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  %22 = insertelement <2 x float> undef, float %0, i32 0, !dbg !70
  %23 = insertelement <2 x float> %22, float %1, i32 1, !dbg !70
  %24 = fpext <2 x float> %23 to <2 x double>, !dbg !70
  %25 = bitcast double* %21 to <2 x double>*, !dbg !71
  store <2 x double> %24, <2 x double>* %25, align 8, !dbg !71, !tbaa !72
  %26 = load i32, i32* @__fdlib_version, align 4, !dbg !73, !tbaa !43
  %27 = icmp eq i32 %26, 0, !dbg !75
  %28 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !76
  %29 = select i1 %27, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !77
  store double %29, double* %28, align 8, !dbg !76, !tbaa !78
  %30 = icmp eq i32 %26, 2, !dbg !79
  br i1 %30, label %31, label %33, !dbg !81

; <label>:31:                                     ; preds = %17
  %32 = tail call i32* @__errno() #5, !dbg !82
  br label %38, !dbg !82

; <label>:33:                                     ; preds = %17
  %34 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !84
  %35 = icmp eq i32 %34, 0, !dbg !84
  br i1 %35, label %36, label %40, !dbg !86

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !87
  br label %38, !dbg !89

; <label>:38:                                     ; preds = %31, %36
  %39 = phi i32* [ %37, %36 ], [ %32, %31 ]
  store i32 34, i32* %39, align 4, !dbg !90, !tbaa !91
  br label %40, !dbg !92

; <label>:40:                                     ; preds = %38, %33
  %41 = load i32, i32* %20, align 8, !dbg !92, !tbaa !68
  %42 = icmp eq i32 %41, 0, !dbg !94
  br i1 %42, label %45, label %43, !dbg !95

; <label>:43:                                     ; preds = %40
  %44 = call i32* @__errno() #5, !dbg !96
  store i32 %41, i32* %44, align 4, !dbg !97, !tbaa !91
  br label %45, !dbg !96

; <label>:45:                                     ; preds = %40, %43
  %46 = load double, double* %28, align 8, !dbg !98, !tbaa !78
  %47 = fptrunc double %46 to float, !dbg !99
  br label %48, !dbg !100

; <label>:48:                                     ; preds = %8, %11, %14, %2, %45
  %49 = phi float [ %47, %45 ], [ %5, %2 ], [ %5, %14 ], [ %5, %11 ], [ %5, %8 ], !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !102
  ret float %49, !dbg !102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_hypotf(float, float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finitef(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_hypot.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "hypotf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!13, !13, !13}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !13)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !18, file: !1, line: 24, type: !13)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !13)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !12, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !12, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !12, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 24, column: 21, scope: !18)
!37 = !DILocation(line: 24, column: 30, scope: !18)
!38 = !DILocation(line: 34, column: 2, scope: !18)
!39 = !DILocation(line: 35, column: 6, scope: !18)
!40 = !DILocation(line: 33, column: 8, scope: !18)
!41 = !DILocation(line: 36, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 36, column: 18, scope: !42)
!47 = !DILocation(line: 36, column: 5, scope: !18)
!48 = !DILocation(line: 37, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!50 = !DILocation(line: 37, column: 18, scope: !49)
!51 = !DILocation(line: 37, column: 20, scope: !49)
!52 = !DILocation(line: 37, column: 30, scope: !49)
!53 = !DILocation(line: 37, column: 32, scope: !49)
!54 = !DILocation(line: 37, column: 5, scope: !18)
!55 = !DILocation(line: 45, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 44)
!57 = !DILocation(line: 45, column: 15, scope: !56)
!58 = !{!59, !60, i64 0}
!59 = !{!"exception", !60, i64 0, !61, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !60, i64 40}
!60 = !{!"int", !44, i64 0}
!61 = !{!"any pointer", !44, i64 0}
!62 = !{!"double", !44, i64 0}
!63 = !DILocation(line: 46, column: 10, scope: !56)
!64 = !DILocation(line: 46, column: 15, scope: !56)
!65 = !{!59, !61, i64 8}
!66 = !DILocation(line: 47, column: 10, scope: !56)
!67 = !DILocation(line: 47, column: 14, scope: !56)
!68 = !{!59, !60, i64 40}
!69 = !DILocation(line: 48, column: 10, scope: !56)
!70 = !DILocation(line: 48, column: 17, scope: !56)
!71 = !DILocation(line: 48, column: 15, scope: !56)
!72 = !{!62, !62, i64 0}
!73 = !DILocation(line: 50, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !56, file: !1, line: 50, column: 10)
!75 = !DILocation(line: 50, column: 23, scope: !74)
!76 = !DILocation(line: 0, scope: !74)
!77 = !DILocation(line: 51, column: 9, scope: !74)
!78 = !{!59, !62, i64 32}
!79 = !DILocation(line: 54, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !56, file: !1, line: 54, column: 10)
!81 = !DILocation(line: 54, column: 10, scope: !56)
!82 = !DILocation(line: 55, column: 9, scope: !80)
!83 = !DILocation(line: 34, column: 19, scope: !18)
!84 = !DILocation(line: 56, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 56, column: 15)
!86 = !DILocation(line: 56, column: 15, scope: !80)
!87 = !DILocation(line: 57, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 56, column: 31)
!89 = !DILocation(line: 58, column: 6, scope: !88)
!90 = !DILocation(line: 0, scope: !80)
!91 = !{!60, !60, i64 0}
!92 = !DILocation(line: 59, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !56, file: !1, line: 59, column: 10)
!94 = !DILocation(line: 59, column: 18, scope: !93)
!95 = !DILocation(line: 59, column: 10, scope: !56)
!96 = !DILocation(line: 60, column: 9, scope: !93)
!97 = !DILocation(line: 60, column: 15, scope: !93)
!98 = !DILocation(line: 61, column: 31, scope: !56)
!99 = !DILocation(line: 61, column: 20, scope: !56)
!100 = !DILocation(line: 61, column: 13, scope: !56)
!101 = !DILocation(line: 0, scope: !56)
!102 = !DILocation(line: 65, column: 1, scope: !18)
