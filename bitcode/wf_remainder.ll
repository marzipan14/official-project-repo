; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_remainder.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_remainder.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [11 x i8] c"remainderf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @remainderf(float, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_remainderf(float %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  br i1 %7, label %42, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp ne i32 %9, 0, !dbg !48
  %11 = fcmp oeq float %1, 0.000000e+00, !dbg !49
  %12 = and i1 %11, %10, !dbg !51
  br i1 %12, label %13, label %42, !dbg !51

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !52
  store i32 1, i32* %14, align 8, !dbg !54, !tbaa !55
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !63
  store i32 0, i32* %16, align 8, !dbg !64, !tbaa !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !66
  %18 = insertelement <2 x float> undef, float %0, i32 0, !dbg !67
  %19 = insertelement <2 x float> %18, float %1, i32 1, !dbg !67
  %20 = fpext <2 x float> %19 to <2 x double>, !dbg !67
  %21 = bitcast double* %17 to <2 x double>*, !dbg !68
  store <2 x double> %20, <2 x double>* %21, align 8, !dbg !68, !tbaa !69
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !70
  store double 0x7FF8000000000000, double* %22, align 8, !dbg !71, !tbaa !72
  %23 = load i32, i32* @__fdlib_version, align 4, !dbg !73, !tbaa !43
  %24 = icmp eq i32 %23, 2, !dbg !75
  br i1 %24, label %25, label %27, !dbg !76

; <label>:25:                                     ; preds = %13
  %26 = tail call i32* @__errno() #5, !dbg !77
  br label %32, !dbg !77

; <label>:27:                                     ; preds = %13
  %28 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !79
  %29 = icmp eq i32 %28, 0, !dbg !79
  br i1 %29, label %30, label %34, !dbg !81

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !82
  br label %32, !dbg !84

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 33, i32* %33, align 4, !dbg !85, !tbaa !86
  br label %34, !dbg !87

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %16, align 8, !dbg !87, !tbaa !65
  %36 = icmp eq i32 %35, 0, !dbg !89
  br i1 %36, label %39, label %37, !dbg !90

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !91
  store i32 %35, i32* %38, align 4, !dbg !92, !tbaa !86
  br label %39, !dbg !91

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %22, align 8, !dbg !93, !tbaa !72
  %41 = fptrunc double %40 to float, !dbg !94
  br label %42, !dbg !95

; <label>:42:                                     ; preds = %8, %2, %39
  %43 = phi float [ %41, %39 ], [ %5, %8 ], [ %5, %2 ], !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  ret float %43, !dbg !97
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_remainderf(float, float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_remainder.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "remainderf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12, !12}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "y", arg: 2, scope: !18, file: !1, line: 24, type: !12)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 33, type: !12)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 34, type: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !27)
!27 = !{!28, !29, !32, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !26, file: !4, line: 581, baseType: !5, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !26, file: !4, line: 582, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !26, file: !4, line: 583, baseType: !13, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !26, file: !4, line: 584, baseType: !13, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !26, file: !4, line: 585, baseType: !13, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !26, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!36 = !DILocation(line: 24, column: 25, scope: !18)
!37 = !DILocation(line: 24, column: 34, scope: !18)
!38 = !DILocation(line: 34, column: 2, scope: !18)
!39 = !DILocation(line: 35, column: 6, scope: !18)
!40 = !DILocation(line: 33, column: 8, scope: !18)
!41 = !DILocation(line: 36, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 36, column: 18, scope: !42)
!47 = !DILocation(line: 36, column: 28, scope: !42)
!48 = !DILocation(line: 36, column: 31, scope: !42)
!49 = !DILocation(line: 37, column: 6, scope: !50)
!50 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!51 = !DILocation(line: 36, column: 5, scope: !18)
!52 = !DILocation(line: 39, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 37, column: 20)
!54 = !DILocation(line: 39, column: 22, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !44, i64 0}
!58 = !{!"any pointer", !44, i64 0}
!59 = !{!"double", !44, i64 0}
!60 = !DILocation(line: 40, column: 17, scope: !53)
!61 = !DILocation(line: 40, column: 22, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 41, column: 10, scope: !53)
!64 = !DILocation(line: 41, column: 14, scope: !53)
!65 = !{!56, !57, i64 40}
!66 = !DILocation(line: 42, column: 10, scope: !53)
!67 = !DILocation(line: 42, column: 17, scope: !53)
!68 = !DILocation(line: 42, column: 15, scope: !53)
!69 = !{!59, !59, i64 0}
!70 = !DILocation(line: 44, column: 17, scope: !53)
!71 = !DILocation(line: 44, column: 24, scope: !53)
!72 = !{!56, !59, i64 32}
!73 = !DILocation(line: 45, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !53, file: !1, line: 45, column: 17)
!75 = !DILocation(line: 45, column: 30, scope: !74)
!76 = !DILocation(line: 45, column: 17, scope: !53)
!77 = !DILocation(line: 46, column: 16, scope: !74)
!78 = !DILocation(line: 34, column: 19, scope: !18)
!79 = !DILocation(line: 47, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 47, column: 22)
!81 = !DILocation(line: 47, column: 22, scope: !74)
!82 = !DILocation(line: 48, column: 16, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 47, column: 38)
!84 = !DILocation(line: 49, column: 13, scope: !83)
!85 = !DILocation(line: 0, scope: !74)
!86 = !{!57, !57, i64 0}
!87 = !DILocation(line: 50, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !53, file: !1, line: 50, column: 10)
!89 = !DILocation(line: 50, column: 18, scope: !88)
!90 = !DILocation(line: 50, column: 10, scope: !53)
!91 = !DILocation(line: 51, column: 9, scope: !88)
!92 = !DILocation(line: 51, column: 15, scope: !88)
!93 = !DILocation(line: 52, column: 31, scope: !53)
!94 = !DILocation(line: 52, column: 20, scope: !53)
!95 = !DILocation(line: 52, column: 13, scope: !53)
!96 = !DILocation(line: 0, scope: !50)
!97 = !DILocation(line: 56, column: 1, scope: !18)
