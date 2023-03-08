; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_acosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_acosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"acoshf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @acoshf(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_acoshf(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %39, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %39, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = fcmp olt float %0, 1.000000e+00, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %11, label %12, label %39, !dbg !50

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !51
  store i32 1, i32* %13, align 8, !dbg !53, !tbaa !54
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !59
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !60, !tbaa !61
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !62
  store i32 0, i32* %15, align 8, !dbg !63, !tbaa !64
  %16 = fpext float %0 to double, !dbg !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !66
  store double %16, double* %17, align 8, !dbg !67, !tbaa !68
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !69
  store double %16, double* %18, align 8, !dbg !70, !tbaa !71
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !72
  store double 0x7FF8000000000000, double* %19, align 8, !dbg !73, !tbaa !74
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !75, !tbaa !41
  %21 = icmp eq i32 %20, 2, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %21, label %22, label %24, !dbg !78

; <label>:22:                                     ; preds = %12
  %23 = tail call i32* @__errno() #5, !dbg !79
  br label %29, !dbg !79

; <label>:24:                                     ; preds = %12
  %25 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !81
  %26 = icmp eq i32 %25, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %26, label %27, label %31, !dbg !83

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno() #5, !dbg !84
  br label %29, !dbg !86

; <label>:29:                                     ; preds = %22, %27
  %30 = phi i32* [ %28, %27 ], [ %23, %22 ]
  store i32 33, i32* %30, align 4, !dbg !87, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br label %31, !dbg !89

; <label>:31:                                     ; preds = %29, %24
  %32 = load i32, i32* %15, align 8, !dbg !89, !tbaa !64
  %33 = icmp eq i32 %32, 0, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %33, label %36, label %34, !dbg !92

; <label>:34:                                     ; preds = %31
  %35 = call i32* @__errno() #5, !dbg !93
  store i32 %32, i32* %35, align 4, !dbg !94, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br label %36, !dbg !93

; <label>:36:                                     ; preds = %31, %34
  %37 = load double, double* %19, align 8, !dbg !95, !tbaa !74
  %38 = fptrunc double %37 to float, !dbg !96
  br label %39, !dbg !97

; <label>:39:                                     ; preds = %10, %1, %7, %36
  %40 = phi float [ %38, %36 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  ret float %40, !dbg !100
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_acoshf(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_acosh.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "acoshf", scope: !1, file: !1, line: 25, type: !19, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 25, type: !12)
!23 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 34, type: !12)
!24 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 35, type: !25)
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
!35 = !DILocation(line: 25, column: 21, scope: !18)
!36 = !DILocation(line: 35, column: 2, scope: !18)
!37 = !DILocation(line: 36, column: 6, scope: !18)
!38 = !DILocation(line: 34, column: 8, scope: !18)
!39 = !DILocation(line: 37, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 37, column: 18, scope: !40)
!45 = !DILocation(line: 37, column: 28, scope: !40)
!46 = !DILocation(line: 37, column: 31, scope: !40)
!47 = !DILocation(line: 37, column: 5, scope: !18)
!48 = !DILocation(line: 38, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 38, column: 5)
!50 = !DILocation(line: 38, column: 5, scope: !18)
!51 = !DILocation(line: 40, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 38, column: 19)
!53 = !DILocation(line: 40, column: 22, scope: !52)
!54 = !{!55, !56, i64 0}
!55 = !{!"exception", !56, i64 0, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !56, i64 40}
!56 = !{!"int", !42, i64 0}
!57 = !{!"any pointer", !42, i64 0}
!58 = !{!"double", !42, i64 0}
!59 = !DILocation(line: 41, column: 17, scope: !52)
!60 = !DILocation(line: 41, column: 22, scope: !52)
!61 = !{!55, !57, i64 8}
!62 = !DILocation(line: 42, column: 10, scope: !52)
!63 = !DILocation(line: 42, column: 14, scope: !52)
!64 = !{!55, !56, i64 40}
!65 = !DILocation(line: 43, column: 28, scope: !52)
!66 = !DILocation(line: 43, column: 21, scope: !52)
!67 = !DILocation(line: 43, column: 26, scope: !52)
!68 = !{!55, !58, i64 24}
!69 = !DILocation(line: 43, column: 10, scope: !52)
!70 = !DILocation(line: 43, column: 15, scope: !52)
!71 = !{!55, !58, i64 16}
!72 = !DILocation(line: 44, column: 17, scope: !52)
!73 = !DILocation(line: 44, column: 24, scope: !52)
!74 = !{!55, !58, i64 32}
!75 = !DILocation(line: 45, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !52, file: !1, line: 45, column: 17)
!77 = !DILocation(line: 45, column: 30, scope: !76)
!78 = !DILocation(line: 45, column: 17, scope: !52)
!79 = !DILocation(line: 46, column: 16, scope: !76)
!80 = !DILocation(line: 35, column: 19, scope: !18)
!81 = !DILocation(line: 47, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 47, column: 22)
!83 = !DILocation(line: 47, column: 22, scope: !76)
!84 = !DILocation(line: 48, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 47, column: 38)
!86 = !DILocation(line: 49, column: 13, scope: !85)
!87 = !DILocation(line: 0, scope: !76)
!88 = !{!56, !56, i64 0}
!89 = !DILocation(line: 50, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !52, file: !1, line: 50, column: 10)
!91 = !DILocation(line: 50, column: 18, scope: !90)
!92 = !DILocation(line: 50, column: 10, scope: !52)
!93 = !DILocation(line: 51, column: 9, scope: !90)
!94 = !DILocation(line: 51, column: 15, scope: !90)
!95 = !DILocation(line: 52, column: 24, scope: !52)
!96 = !DILocation(line: 52, column: 13, scope: !52)
!97 = !DILocation(line: 52, column: 6, scope: !52)
!98 = !DILocation(line: 0, scope: !49)
!99 = !DILocation(line: 0, scope: !40)
!100 = !DILocation(line: 56, column: 1, scope: !18)
