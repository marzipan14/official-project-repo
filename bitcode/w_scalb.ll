; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_scalb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_scalb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [6 x i8] c"scalb\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @scalb(double, double) local_unnamed_addr #0 !dbg !15 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !36
  %5 = tail call double @__ieee754_scalb(double %0, double %1) #5, !dbg !37
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %7 = icmp eq i32 %6, -1, !dbg !44
  br i1 %7, label %79, label %8, !dbg !45

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @finite(double %5) #5, !dbg !46
  %10 = icmp eq i32 %9, 0, !dbg !46
  br i1 %10, label %11, label %44, !dbg !48

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !49
  %13 = icmp eq i32 %12, 0, !dbg !49
  br i1 %13, label %44, label %14, !dbg !50

; <label>:14:                                     ; preds = %11
  %15 = tail call i32 @finite(double %0) #5, !dbg !51
  %16 = icmp eq i32 %15, 0, !dbg !51
  br i1 %16, label %44, label %17, !dbg !52

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !53
  store i32 3, i32* %18, align 8, !dbg !55, !tbaa !56
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !61
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %19, align 8, !dbg !62, !tbaa !63
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !64
  store i32 0, i32* %20, align 8, !dbg !65, !tbaa !66
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !67
  store double %0, double* %21, align 8, !dbg !68, !tbaa !69
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !70
  store double %1, double* %22, align 8, !dbg !71, !tbaa !72
  %23 = fcmp ogt double %0, 0.000000e+00, !dbg !73
  %24 = select i1 %23, double 0x7FF0000000000000, double 0xFFF0000000000000, !dbg !74
  %25 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  store double %24, double* %25, align 8, !dbg !76, !tbaa !77
  %26 = load i32, i32* @__fdlib_version, align 4, !dbg !78, !tbaa !41
  %27 = icmp eq i32 %26, 2, !dbg !80
  br i1 %27, label %28, label %30, !dbg !81

; <label>:28:                                     ; preds = %17
  %29 = tail call i32* @__errno() #5, !dbg !82
  br label %35, !dbg !82

; <label>:30:                                     ; preds = %17
  %31 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !84
  %32 = icmp eq i32 %31, 0, !dbg !84
  br i1 %32, label %33, label %37, !dbg !86

; <label>:33:                                     ; preds = %30
  %34 = call i32* @__errno() #5, !dbg !87
  br label %35, !dbg !89

; <label>:35:                                     ; preds = %28, %33
  %36 = phi i32* [ %34, %33 ], [ %29, %28 ]
  store i32 34, i32* %36, align 4, !dbg !90, !tbaa !91
  br label %37, !dbg !92

; <label>:37:                                     ; preds = %35, %30
  %38 = load i32, i32* %20, align 8, !dbg !92, !tbaa !66
  %39 = icmp eq i32 %38, 0, !dbg !94
  br i1 %39, label %42, label %40, !dbg !95

; <label>:40:                                     ; preds = %37
  %41 = call i32* @__errno() #5, !dbg !96
  store i32 %38, i32* %41, align 4, !dbg !97, !tbaa !91
  br label %42, !dbg !96

; <label>:42:                                     ; preds = %37, %40
  %43 = load double, double* %25, align 8, !dbg !98, !tbaa !77
  br label %79, !dbg !99

; <label>:44:                                     ; preds = %14, %8, %11
  %45 = fcmp oeq double %5, 0.000000e+00, !dbg !100
  %46 = fcmp une double %5, %0, !dbg !102
  %47 = and i1 %45, %46, !dbg !103
  br i1 %47, label %48, label %74, !dbg !103

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !104
  store i32 4, i32* %49, align 8, !dbg !106, !tbaa !56
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !107
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %50, align 8, !dbg !108, !tbaa !63
  %51 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !109
  store i32 0, i32* %51, align 8, !dbg !110, !tbaa !66
  %52 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !111
  store double %0, double* %52, align 8, !dbg !112, !tbaa !69
  %53 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !113
  store double %1, double* %53, align 8, !dbg !114, !tbaa !72
  %54 = tail call double @copysign(double 0.000000e+00, double %0) #5, !dbg !115
  %55 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !116
  store double %54, double* %55, align 8, !dbg !117, !tbaa !77
  %56 = load i32, i32* @__fdlib_version, align 4, !dbg !118, !tbaa !41
  %57 = icmp eq i32 %56, 2, !dbg !120
  br i1 %57, label %58, label %60, !dbg !121

; <label>:58:                                     ; preds = %48
  %59 = tail call i32* @__errno() #5, !dbg !122
  br label %65, !dbg !122

; <label>:60:                                     ; preds = %48
  %61 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !123
  %62 = icmp eq i32 %61, 0, !dbg !123
  br i1 %62, label %63, label %67, !dbg !125

; <label>:63:                                     ; preds = %60
  %64 = call i32* @__errno() #5, !dbg !126
  br label %65, !dbg !128

; <label>:65:                                     ; preds = %58, %63
  %66 = phi i32* [ %64, %63 ], [ %59, %58 ]
  store i32 34, i32* %66, align 4, !dbg !129, !tbaa !91
  br label %67, !dbg !130

; <label>:67:                                     ; preds = %65, %60
  %68 = load i32, i32* %51, align 8, !dbg !130, !tbaa !66
  %69 = icmp eq i32 %68, 0, !dbg !132
  br i1 %69, label %72, label %70, !dbg !133

; <label>:70:                                     ; preds = %67
  %71 = call i32* @__errno() #5, !dbg !134
  store i32 %68, i32* %71, align 4, !dbg !135, !tbaa !91
  br label %72, !dbg !134

; <label>:72:                                     ; preds = %67, %70
  %73 = load double, double* %55, align 8, !dbg !136, !tbaa !77
  br label %79, !dbg !137

; <label>:74:                                     ; preds = %44
  %75 = tail call i32 @finite(double %1) #5, !dbg !138
  %76 = icmp eq i32 %75, 0, !dbg !138
  br i1 %76, label %77, label %79, !dbg !140

; <label>:77:                                     ; preds = %74
  %78 = tail call i32* @__errno() #5, !dbg !141
  store i32 34, i32* %78, align 4, !dbg !142, !tbaa !91
  br label %79, !dbg !141

; <label>:79:                                     ; preds = %77, %74, %2, %72, %42
  %80 = phi double [ %73, %72 ], [ %43, %42 ], [ %5, %2 ], [ %5, %74 ], [ %5, %77 ], !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  ret double %80, !dbg !144
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_scalb(double, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @finite(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @copysign(double, double) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_scalb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__fdlibm_version", file: !4, line: 642, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/math.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "__fdlibm_ieee", value: -1)
!8 = !DIEnumerator(name: "__fdlibm_svid", value: 0)
!9 = !DIEnumerator(name: "__fdlibm_xopen", value: 1)
!10 = !DIEnumerator(name: "__fdlibm_posix", value: 2)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "scalb", scope: !1, file: !1, line: 29, type: !16, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !18, !18}
!18 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 29, type: !18)
!21 = !DILocalVariable(name: "fn", arg: 2, scope: !15, file: !1, line: 29, type: !18)
!22 = !DILocalVariable(name: "z", scope: !15, file: !1, line: 43, type: !18)
!23 = !DILocalVariable(name: "exc", scope: !15, file: !1, line: 50, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !25)
!25 = !{!26, !27, !30, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !4, line: 581, baseType: !5, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !4, line: 582, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !24, file: !4, line: 583, baseType: !18, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !24, file: !4, line: 584, baseType: !18, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !24, file: !4, line: 585, baseType: !18, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !24, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!34 = !DILocation(line: 29, column: 22, scope: !15)
!35 = !DILocation(line: 29, column: 32, scope: !15)
!36 = !DILocation(line: 50, column: 2, scope: !15)
!37 = !DILocation(line: 51, column: 6, scope: !15)
!38 = !DILocation(line: 43, column: 9, scope: !15)
!39 = !DILocation(line: 52, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !15, file: !1, line: 52, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 52, column: 18, scope: !40)
!45 = !DILocation(line: 52, column: 5, scope: !15)
!46 = !DILocation(line: 53, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !15, file: !1, line: 53, column: 5)
!48 = !DILocation(line: 53, column: 16, scope: !47)
!49 = !DILocation(line: 53, column: 18, scope: !47)
!50 = !DILocation(line: 53, column: 27, scope: !47)
!51 = !DILocation(line: 53, column: 29, scope: !47)
!52 = !DILocation(line: 53, column: 5, scope: !15)
!53 = !DILocation(line: 55, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 53, column: 40)
!55 = !DILocation(line: 55, column: 15, scope: !54)
!56 = !{!57, !58, i64 0}
!57 = !{!"exception", !58, i64 0, !59, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !58, i64 40}
!58 = !{!"int", !42, i64 0}
!59 = !{!"any pointer", !42, i64 0}
!60 = !{!"double", !42, i64 0}
!61 = !DILocation(line: 56, column: 10, scope: !54)
!62 = !DILocation(line: 56, column: 15, scope: !54)
!63 = !{!57, !59, i64 8}
!64 = !DILocation(line: 57, column: 10, scope: !54)
!65 = !DILocation(line: 57, column: 14, scope: !54)
!66 = !{!57, !58, i64 40}
!67 = !DILocation(line: 58, column: 10, scope: !54)
!68 = !DILocation(line: 58, column: 15, scope: !54)
!69 = !{!57, !60, i64 16}
!70 = !DILocation(line: 59, column: 10, scope: !54)
!71 = !DILocation(line: 59, column: 15, scope: !54)
!72 = !{!57, !60, i64 24}
!73 = !DILocation(line: 60, column: 21, scope: !54)
!74 = !DILocation(line: 60, column: 19, scope: !54)
!75 = !DILocation(line: 60, column: 10, scope: !54)
!76 = !DILocation(line: 60, column: 17, scope: !54)
!77 = !{!57, !60, i64 32}
!78 = !DILocation(line: 61, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !54, file: !1, line: 61, column: 10)
!80 = !DILocation(line: 61, column: 23, scope: !79)
!81 = !DILocation(line: 61, column: 10, scope: !54)
!82 = !DILocation(line: 62, column: 9, scope: !79)
!83 = !DILocation(line: 50, column: 19, scope: !15)
!84 = !DILocation(line: 63, column: 16, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 63, column: 15)
!86 = !DILocation(line: 63, column: 15, scope: !79)
!87 = !DILocation(line: 64, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 63, column: 31)
!89 = !DILocation(line: 65, column: 6, scope: !88)
!90 = !DILocation(line: 0, scope: !79)
!91 = !{!58, !58, i64 0}
!92 = !DILocation(line: 66, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !54, file: !1, line: 66, column: 10)
!94 = !DILocation(line: 66, column: 18, scope: !93)
!95 = !DILocation(line: 66, column: 10, scope: !54)
!96 = !DILocation(line: 67, column: 9, scope: !93)
!97 = !DILocation(line: 67, column: 15, scope: !93)
!98 = !DILocation(line: 68, column: 24, scope: !54)
!99 = !DILocation(line: 68, column: 13, scope: !54)
!100 = !DILocation(line: 70, column: 6, scope: !101)
!101 = distinct !DILexicalBlock(scope: !15, file: !1, line: 70, column: 5)
!102 = !DILocation(line: 70, column: 14, scope: !101)
!103 = !DILocation(line: 70, column: 11, scope: !101)
!104 = !DILocation(line: 72, column: 10, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 19)
!106 = !DILocation(line: 72, column: 15, scope: !105)
!107 = !DILocation(line: 73, column: 10, scope: !105)
!108 = !DILocation(line: 73, column: 15, scope: !105)
!109 = !DILocation(line: 74, column: 10, scope: !105)
!110 = !DILocation(line: 74, column: 14, scope: !105)
!111 = !DILocation(line: 75, column: 10, scope: !105)
!112 = !DILocation(line: 75, column: 15, scope: !105)
!113 = !DILocation(line: 76, column: 10, scope: !105)
!114 = !DILocation(line: 76, column: 15, scope: !105)
!115 = !DILocation(line: 77, column: 19, scope: !105)
!116 = !DILocation(line: 77, column: 10, scope: !105)
!117 = !DILocation(line: 77, column: 17, scope: !105)
!118 = !DILocation(line: 78, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !105, file: !1, line: 78, column: 10)
!120 = !DILocation(line: 78, column: 23, scope: !119)
!121 = !DILocation(line: 78, column: 10, scope: !105)
!122 = !DILocation(line: 79, column: 9, scope: !119)
!123 = !DILocation(line: 80, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 80, column: 15)
!125 = !DILocation(line: 80, column: 15, scope: !119)
!126 = !DILocation(line: 81, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 31)
!128 = !DILocation(line: 82, column: 6, scope: !127)
!129 = !DILocation(line: 0, scope: !119)
!130 = !DILocation(line: 83, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !105, file: !1, line: 83, column: 10)
!132 = !DILocation(line: 83, column: 18, scope: !131)
!133 = !DILocation(line: 83, column: 10, scope: !105)
!134 = !DILocation(line: 84, column: 9, scope: !131)
!135 = !DILocation(line: 84, column: 15, scope: !131)
!136 = !DILocation(line: 85, column: 24, scope: !105)
!137 = !DILocation(line: 85, column: 13, scope: !105)
!138 = !DILocation(line: 88, column: 6, scope: !139)
!139 = distinct !DILexicalBlock(scope: !15, file: !1, line: 88, column: 5)
!140 = !DILocation(line: 88, column: 5, scope: !15)
!141 = !DILocation(line: 88, column: 18, scope: !139)
!142 = !DILocation(line: 88, column: 24, scope: !139)
!143 = !DILocation(line: 0, scope: !54)
!144 = !DILocation(line: 92, column: 1, scope: !15)
