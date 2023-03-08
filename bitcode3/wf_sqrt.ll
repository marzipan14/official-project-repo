; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sqrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"sqrtf\00", align 1

; Function Attrs: noredzone nounwind
define dso_local float @sqrtf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_sqrtf(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %41, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp ne i32 %8, 0, !dbg !46
  %10 = fcmp olt float %0, 0.000000e+00, !dbg !47
  %11 = and i1 %10, %9, !dbg !49
  br i1 %11, label %12, label %41, !dbg !49

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !50
  store i32 1, i32* %13, align 8, !dbg !52, !tbaa !53
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !58
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !59, !tbaa !60
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !61
  store i32 0, i32* %15, align 8, !dbg !62, !tbaa !63
  %16 = fpext float %0 to double, !dbg !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !65
  store double %16, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !68
  store double %16, double* %18, align 8, !dbg !69, !tbaa !70
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !71, !tbaa !41
  %20 = icmp eq i32 %19, 0, !dbg !73
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !74
  %22 = select i1 %20, double 0.000000e+00, double 0x7FF8000000000000, !dbg !75
  store double %22, double* %21, align 8, !dbg !74, !tbaa !76
  %23 = icmp eq i32 %19, 2, !dbg !77
  br i1 %23, label %24, label %26, !dbg !79

; <label>:24:                                     ; preds = %12
  %25 = tail call i32* @__errno() #5, !dbg !80
  br label %31, !dbg !80

; <label>:26:                                     ; preds = %12
  %27 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !82
  %28 = icmp eq i32 %27, 0, !dbg !82
  br i1 %28, label %29, label %33, !dbg !84

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !85
  br label %31, !dbg !87

; <label>:31:                                     ; preds = %24, %29
  %32 = phi i32* [ %30, %29 ], [ %25, %24 ]
  store i32 33, i32* %32, align 4, !dbg !88, !tbaa !89
  br label %33, !dbg !90

; <label>:33:                                     ; preds = %31, %26
  %34 = load i32, i32* %15, align 8, !dbg !90, !tbaa !63
  %35 = icmp eq i32 %34, 0, !dbg !92
  br i1 %35, label %38, label %36, !dbg !93

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !94
  store i32 %34, i32* %37, align 4, !dbg !95, !tbaa !89
  br label %38, !dbg !94

; <label>:38:                                     ; preds = %33, %36
  %39 = load double, double* %21, align 8, !dbg !96, !tbaa !76
  %40 = fptrunc double %39 to float, !dbg !97
  br label %41, !dbg !98

; <label>:41:                                     ; preds = %7, %1, %38
  %42 = phi float [ %40, %38 ], [ %4, %7 ], [ %4, %1 ], !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !100
  ret float %42, !dbg !100
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_sqrt.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "sqrtf", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
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
!47 = !DILocation(line: 37, column: 6, scope: !48)
!48 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!49 = !DILocation(line: 36, column: 5, scope: !18)
!50 = !DILocation(line: 39, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 37, column: 19)
!52 = !DILocation(line: 39, column: 22, scope: !51)
!53 = !{!54, !55, i64 0}
!54 = !{!"exception", !55, i64 0, !56, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !55, i64 40}
!55 = !{!"int", !42, i64 0}
!56 = !{!"any pointer", !42, i64 0}
!57 = !{!"double", !42, i64 0}
!58 = !DILocation(line: 40, column: 17, scope: !51)
!59 = !DILocation(line: 40, column: 22, scope: !51)
!60 = !{!54, !56, i64 8}
!61 = !DILocation(line: 41, column: 10, scope: !51)
!62 = !DILocation(line: 41, column: 14, scope: !51)
!63 = !{!54, !55, i64 40}
!64 = !DILocation(line: 42, column: 28, scope: !51)
!65 = !DILocation(line: 42, column: 21, scope: !51)
!66 = !DILocation(line: 42, column: 26, scope: !51)
!67 = !{!54, !57, i64 24}
!68 = !DILocation(line: 42, column: 10, scope: !51)
!69 = !DILocation(line: 42, column: 15, scope: !51)
!70 = !{!54, !57, i64 16}
!71 = !DILocation(line: 43, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !51, file: !1, line: 43, column: 17)
!73 = !DILocation(line: 43, column: 30, scope: !72)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocation(line: 44, column: 15, scope: !72)
!76 = !{!54, !57, i64 32}
!77 = !DILocation(line: 47, column: 30, scope: !78)
!78 = distinct !DILexicalBlock(scope: !51, file: !1, line: 47, column: 17)
!79 = !DILocation(line: 47, column: 17, scope: !51)
!80 = !DILocation(line: 48, column: 15, scope: !78)
!81 = !DILocation(line: 34, column: 19, scope: !18)
!82 = !DILocation(line: 49, column: 23, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 22)
!84 = !DILocation(line: 49, column: 22, scope: !78)
!85 = !DILocation(line: 50, column: 15, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 49, column: 38)
!87 = !DILocation(line: 51, column: 13, scope: !86)
!88 = !DILocation(line: 0, scope: !78)
!89 = !{!55, !55, i64 0}
!90 = !DILocation(line: 52, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !51, file: !1, line: 52, column: 17)
!92 = !DILocation(line: 52, column: 25, scope: !91)
!93 = !DILocation(line: 52, column: 17, scope: !51)
!94 = !DILocation(line: 53, column: 8, scope: !91)
!95 = !DILocation(line: 53, column: 14, scope: !91)
!96 = !DILocation(line: 54, column: 24, scope: !51)
!97 = !DILocation(line: 54, column: 13, scope: !51)
!98 = !DILocation(line: 54, column: 6, scope: !51)
!99 = !DILocation(line: 0, scope: !48)
!100 = !DILocation(line: 58, column: 1, scope: !18)
