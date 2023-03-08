; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_cosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_cosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"coshf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @coshf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_coshf(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %42, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  br i1 %9, label %42, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = tail call float @fabsf(float %0) #5, !dbg !48
  %12 = fcmp ogt float %11, 0x40565A9F80000000, !dbg !50
  br i1 %12, label %13, label %42, !dbg !51

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !52
  store i32 3, i32* %14, align 8, !dbg !54, !tbaa !55
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !63
  store i32 0, i32* %16, align 8, !dbg !64, !tbaa !65
  %17 = fpext float %0 to double, !dbg !66
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !67
  store double %17, double* %18, align 8, !dbg !68, !tbaa !69
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !70
  store double %17, double* %19, align 8, !dbg !71, !tbaa !72
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !73, !tbaa !41
  %21 = icmp eq i32 %20, 0, !dbg !75
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !76
  %23 = select i1 %21, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !77
  store double %23, double* %22, align 8, !dbg !76, !tbaa !78
  %24 = icmp eq i32 %20, 2, !dbg !79
  br i1 %24, label %25, label %27, !dbg !81

; <label>:25:                                     ; preds = %13
  %26 = tail call i32* @__errno() #5, !dbg !82
  br label %32, !dbg !82

; <label>:27:                                     ; preds = %13
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !84
  %29 = icmp eq i32 %28, 0, !dbg !84
  br i1 %29, label %30, label %34, !dbg !86

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !87
  br label %32, !dbg !89

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 34, i32* %33, align 4, !dbg !90, !tbaa !91
  br label %34, !dbg !92

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %16, align 8, !dbg !92, !tbaa !65
  %36 = icmp eq i32 %35, 0, !dbg !94
  br i1 %36, label %39, label %37, !dbg !95

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !96
  store i32 %35, i32* %38, align 4, !dbg !97, !tbaa !91
  br label %39, !dbg !96

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %22, align 8, !dbg !98, !tbaa !78
  %41 = fptrunc double %40 to float, !dbg !99
  br label %42, !dbg !100

; <label>:42:                                     ; preds = %10, %1, %7, %39
  %43 = phi float [ %41, %39 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !102
  ret float %43, !dbg !102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_coshf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_cosh.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "coshf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !12)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !25)
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
!35 = !DILocation(line: 24, column: 20, scope: !18)
!36 = !DILocation(line: 34, column: 2, scope: !18)
!37 = !DILocation(line: 35, column: 6, scope: !18)
!38 = !DILocation(line: 33, column: 8, scope: !18)
!39 = !DILocation(line: 36, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 36, column: 18, scope: !40)
!45 = !DILocation(line: 36, column: 28, scope: !40)
!46 = !DILocation(line: 36, column: 31, scope: !40)
!47 = !DILocation(line: 36, column: 5, scope: !18)
!48 = !DILocation(line: 37, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!50 = !DILocation(line: 37, column: 13, scope: !49)
!51 = !DILocation(line: 37, column: 5, scope: !18)
!52 = !DILocation(line: 45, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 39)
!54 = !DILocation(line: 45, column: 15, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !42, i64 0}
!58 = !{!"any pointer", !42, i64 0}
!59 = !{!"double", !42, i64 0}
!60 = !DILocation(line: 46, column: 10, scope: !53)
!61 = !DILocation(line: 46, column: 15, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 47, column: 10, scope: !53)
!64 = !DILocation(line: 47, column: 14, scope: !53)
!65 = !{!56, !57, i64 40}
!66 = !DILocation(line: 48, column: 28, scope: !53)
!67 = !DILocation(line: 48, column: 21, scope: !53)
!68 = !DILocation(line: 48, column: 26, scope: !53)
!69 = !{!56, !59, i64 24}
!70 = !DILocation(line: 48, column: 10, scope: !53)
!71 = !DILocation(line: 48, column: 15, scope: !53)
!72 = !{!56, !59, i64 16}
!73 = !DILocation(line: 49, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !53, file: !1, line: 49, column: 10)
!75 = !DILocation(line: 49, column: 23, scope: !74)
!76 = !DILocation(line: 0, scope: !74)
!77 = !DILocation(line: 50, column: 9, scope: !74)
!78 = !{!56, !59, i64 32}
!79 = !DILocation(line: 53, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !53, file: !1, line: 53, column: 10)
!81 = !DILocation(line: 53, column: 10, scope: !53)
!82 = !DILocation(line: 54, column: 9, scope: !80)
!83 = !DILocation(line: 34, column: 19, scope: !18)
!84 = !DILocation(line: 55, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 55, column: 15)
!86 = !DILocation(line: 55, column: 15, scope: !80)
!87 = !DILocation(line: 56, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 55, column: 31)
!89 = !DILocation(line: 57, column: 6, scope: !88)
!90 = !DILocation(line: 0, scope: !80)
!91 = !{!57, !57, i64 0}
!92 = !DILocation(line: 58, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !53, file: !1, line: 58, column: 10)
!94 = !DILocation(line: 58, column: 18, scope: !93)
!95 = !DILocation(line: 58, column: 10, scope: !53)
!96 = !DILocation(line: 59, column: 9, scope: !93)
!97 = !DILocation(line: 59, column: 15, scope: !93)
!98 = !DILocation(line: 60, column: 24, scope: !53)
!99 = !DILocation(line: 60, column: 13, scope: !53)
!100 = !DILocation(line: 60, column: 6, scope: !53)
!101 = !DILocation(line: 0, scope: !49)
!102 = !DILocation(line: 64, column: 1, scope: !18)
