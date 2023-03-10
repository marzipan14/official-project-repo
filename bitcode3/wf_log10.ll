; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"log10f\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noredzone nounwind
define dso_local float @log10f(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_log10f(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  br i1 %6, label %54, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  %10 = fcmp ugt float %0, 0.000000e+00, !dbg !47
  %11 = or i1 %10, %9, !dbg !49
  br i1 %11, label %54, label %12, !dbg !49

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !50
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %13, align 8, !dbg !52, !tbaa !53
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !58
  store i32 0, i32* %14, align 8, !dbg !59, !tbaa !60
  %15 = fpext float %0 to double, !dbg !61
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !62
  store double %15, double* %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !65
  store double %15, double* %17, align 8, !dbg !66, !tbaa !67
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !68, !tbaa !41
  %19 = icmp eq i32 %18, 0, !dbg !70
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !71
  %21 = select i1 %19, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !72
  store double %21, double* %20, align 8, !dbg !71, !tbaa !73
  %22 = fcmp oeq float %0, 0.000000e+00, !dbg !74
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !76
  br i1 %22, label %24, label %33, !dbg !78

; <label>:24:                                     ; preds = %12
  store i32 2, i32* %23, align 8, !dbg !79, !tbaa !81
  %25 = icmp eq i32 %18, 2, !dbg !82
  br i1 %25, label %26, label %28, !dbg !84

; <label>:26:                                     ; preds = %24
  %27 = tail call i32* @__errno() #5, !dbg !85
  store i32 34, i32* %27, align 4, !dbg !86, !tbaa !87
  br label %46, !dbg !85

; <label>:28:                                     ; preds = %24
  %29 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !89
  %30 = icmp eq i32 %29, 0, !dbg !89
  br i1 %30, label %31, label %46, !dbg !91

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !92
  store i32 34, i32* %32, align 4, !dbg !94, !tbaa !87
  br label %46, !dbg !95

; <label>:33:                                     ; preds = %12
  store i32 1, i32* %23, align 8, !dbg !96, !tbaa !81
  %34 = icmp eq i32 %18, 2, !dbg !97
  br i1 %34, label %35, label %37, !dbg !99

; <label>:35:                                     ; preds = %33
  %36 = tail call i32* @__errno() #5, !dbg !100
  br label %42, !dbg !100

; <label>:37:                                     ; preds = %33
  %38 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !101
  %39 = icmp eq i32 %38, 0, !dbg !101
  br i1 %39, label %40, label %44, !dbg !103

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !104
  br label %42, !dbg !106

; <label>:42:                                     ; preds = %35, %40
  %43 = phi i32* [ %41, %40 ], [ %36, %35 ]
  store i32 33, i32* %43, align 4, !dbg !107, !tbaa !87
  br label %44, !dbg !108

; <label>:44:                                     ; preds = %42, %37
  %45 = call double @nan(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !108
  store double %45, double* %20, align 8, !dbg !109, !tbaa !73
  br label %46

; <label>:46:                                     ; preds = %28, %26, %31, %44
  %47 = load i32, i32* %14, align 8, !dbg !110, !tbaa !60
  %48 = icmp eq i32 %47, 0, !dbg !112
  br i1 %48, label %51, label %49, !dbg !113

; <label>:49:                                     ; preds = %46
  %50 = call i32* @__errno() #5, !dbg !114
  store i32 %47, i32* %50, align 4, !dbg !115, !tbaa !87
  br label %51, !dbg !114

; <label>:51:                                     ; preds = %46, %49
  %52 = load double, double* %20, align 8, !dbg !116, !tbaa !73
  %53 = fptrunc double %52 to float, !dbg !117
  br label %54, !dbg !118

; <label>:54:                                     ; preds = %1, %7, %51
  %55 = phi float [ %53, %51 ], [ %4, %7 ], [ %4, %1 ], !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !120
  ret float %55, !dbg !120
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_log10f(float) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

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

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_log10.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "log10f", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
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
!35 = !DILocation(line: 24, column: 21, scope: !18)
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
!50 = !DILocation(line: 44, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 37, column: 20)
!52 = !DILocation(line: 44, column: 15, scope: !51)
!53 = !{!54, !56, i64 8}
!54 = !{!"exception", !55, i64 0, !56, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !55, i64 40}
!55 = !{!"int", !42, i64 0}
!56 = !{!"any pointer", !42, i64 0}
!57 = !{!"double", !42, i64 0}
!58 = !DILocation(line: 45, column: 10, scope: !51)
!59 = !DILocation(line: 45, column: 14, scope: !51)
!60 = !{!54, !55, i64 40}
!61 = !DILocation(line: 46, column: 28, scope: !51)
!62 = !DILocation(line: 46, column: 21, scope: !51)
!63 = !DILocation(line: 46, column: 26, scope: !51)
!64 = !{!54, !57, i64 24}
!65 = !DILocation(line: 46, column: 10, scope: !51)
!66 = !DILocation(line: 46, column: 15, scope: !51)
!67 = !{!54, !57, i64 16}
!68 = !DILocation(line: 47, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !51, file: !1, line: 47, column: 10)
!70 = !DILocation(line: 47, column: 23, scope: !69)
!71 = !DILocation(line: 0, scope: !69)
!72 = !DILocation(line: 48, column: 16, scope: !69)
!73 = !{!54, !57, i64 32}
!74 = !DILocation(line: 51, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !51, file: !1, line: 51, column: 9)
!76 = !DILocation(line: 0, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !1, line: 59, column: 13)
!78 = !DILocation(line: 51, column: 9, scope: !51)
!79 = !DILocation(line: 53, column: 19, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 51, column: 24)
!81 = !{!54, !55, i64 0}
!82 = !DILocation(line: 54, column: 27, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 54, column: 14)
!84 = !DILocation(line: 54, column: 14, scope: !80)
!85 = !DILocation(line: 55, column: 13, scope: !83)
!86 = !DILocation(line: 55, column: 19, scope: !83)
!87 = !{!55, !55, i64 0}
!88 = !DILocation(line: 34, column: 19, scope: !18)
!89 = !DILocation(line: 56, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !1, line: 56, column: 19)
!91 = !DILocation(line: 56, column: 19, scope: !83)
!92 = !DILocation(line: 57, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 56, column: 35)
!94 = !DILocation(line: 57, column: 19, scope: !93)
!95 = !DILocation(line: 58, column: 10, scope: !93)
!96 = !DILocation(line: 61, column: 19, scope: !77)
!97 = !DILocation(line: 62, column: 27, scope: !98)
!98 = distinct !DILexicalBlock(scope: !77, file: !1, line: 62, column: 14)
!99 = !DILocation(line: 62, column: 14, scope: !77)
!100 = !DILocation(line: 63, column: 13, scope: !98)
!101 = !DILocation(line: 64, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !98, file: !1, line: 64, column: 19)
!103 = !DILocation(line: 64, column: 19, scope: !98)
!104 = !DILocation(line: 65, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 64, column: 35)
!106 = !DILocation(line: 66, column: 10, scope: !105)
!107 = !DILocation(line: 0, scope: !98)
!108 = !DILocation(line: 67, column: 30, scope: !77)
!109 = !DILocation(line: 67, column: 28, scope: !77)
!110 = !DILocation(line: 69, column: 14, scope: !111)
!111 = distinct !DILexicalBlock(scope: !51, file: !1, line: 69, column: 10)
!112 = !DILocation(line: 69, column: 18, scope: !111)
!113 = !DILocation(line: 69, column: 10, scope: !51)
!114 = !DILocation(line: 70, column: 16, scope: !111)
!115 = !DILocation(line: 70, column: 22, scope: !111)
!116 = !DILocation(line: 71, column: 31, scope: !51)
!117 = !DILocation(line: 71, column: 20, scope: !51)
!118 = !DILocation(line: 71, column: 13, scope: !51)
!119 = !DILocation(line: 0, scope: !48)
!120 = !DILocation(line: 75, column: 1, scope: !18)
