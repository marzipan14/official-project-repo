; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_exp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_exp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [5 x i8] c"expf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @expf(float) local_unnamed_addr #0 !dbg !24 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !42
  %4 = tail call float @__ieee754_expf(float %0) #5, !dbg !43
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !45, !tbaa !47
  %6 = icmp eq i32 %5, -1, !dbg !50
  br i1 %6, label %70, label %7, !dbg !51

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @finitef(float %0) #5, !dbg !52
  %9 = icmp eq i32 %8, 0, !dbg !52
  br i1 %9, label %70, label %10, !dbg !54

; <label>:10:                                     ; preds = %7
  %11 = fcmp ogt float %0, 0x40562E3000000000, !dbg !55
  br i1 %11, label %12, label %41, !dbg !58

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !59
  store i32 3, i32* %13, align 8, !dbg !61, !tbaa !62
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !67
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %14, align 8, !dbg !68, !tbaa !69
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !70
  store i32 0, i32* %15, align 8, !dbg !71, !tbaa !72
  %16 = fpext float %0 to double, !dbg !73
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !74
  store double %16, double* %17, align 8, !dbg !75, !tbaa !76
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !77
  store double %16, double* %18, align 8, !dbg !78, !tbaa !79
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !80, !tbaa !47
  %20 = icmp eq i32 %19, 0, !dbg !82
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !83
  %22 = select i1 %20, double 0x47EFFFFFE0000000, double 0x7FF0000000000000, !dbg !84
  store double %22, double* %21, align 8, !dbg !83, !tbaa !85
  %23 = icmp eq i32 %19, 2, !dbg !86
  br i1 %23, label %24, label %26, !dbg !88

; <label>:24:                                     ; preds = %12
  %25 = tail call i32* @__errno() #5, !dbg !89
  br label %31, !dbg !89

; <label>:26:                                     ; preds = %12
  %27 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !91
  %28 = icmp eq i32 %27, 0, !dbg !91
  br i1 %28, label %29, label %33, !dbg !93

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !94
  br label %31, !dbg !96

; <label>:31:                                     ; preds = %24, %29
  %32 = phi i32* [ %30, %29 ], [ %25, %24 ]
  store i32 34, i32* %32, align 4, !dbg !97, !tbaa !98
  br label %33, !dbg !99

; <label>:33:                                     ; preds = %31, %26
  %34 = load i32, i32* %15, align 8, !dbg !99, !tbaa !72
  %35 = icmp eq i32 %34, 0, !dbg !101
  br i1 %35, label %38, label %36, !dbg !102

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !103
  store i32 %34, i32* %37, align 4, !dbg !104, !tbaa !98
  br label %38, !dbg !103

; <label>:38:                                     ; preds = %33, %36
  %39 = load double, double* %21, align 8, !dbg !105, !tbaa !85
  %40 = fptrunc double %39 to float, !dbg !106
  br label %70, !dbg !107

; <label>:41:                                     ; preds = %10
  %42 = fcmp olt float %0, 0xC059FE36A0000000, !dbg !108
  br i1 %42, label %43, label %70, !dbg !110

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !111
  store i32 4, i32* %44, align 8, !dbg !113, !tbaa !62
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !114
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %45, align 8, !dbg !115, !tbaa !69
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !116
  store i32 0, i32* %46, align 8, !dbg !117, !tbaa !72
  %47 = fpext float %0 to double, !dbg !118
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !119
  store double %47, double* %48, align 8, !dbg !120, !tbaa !76
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !121
  store double %47, double* %49, align 8, !dbg !122, !tbaa !79
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !123
  store double 0.000000e+00, double* %50, align 8, !dbg !124, !tbaa !85
  %51 = load i32, i32* @__fdlib_version, align 4, !dbg !125, !tbaa !47
  %52 = icmp eq i32 %51, 2, !dbg !127
  br i1 %52, label %53, label %55, !dbg !128

; <label>:53:                                     ; preds = %43
  %54 = tail call i32* @__errno() #5, !dbg !129
  br label %60, !dbg !129

; <label>:55:                                     ; preds = %43
  %56 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !130
  %57 = icmp eq i32 %56, 0, !dbg !130
  br i1 %57, label %58, label %62, !dbg !132

; <label>:58:                                     ; preds = %55
  %59 = call i32* @__errno() #5, !dbg !133
  br label %60, !dbg !135

; <label>:60:                                     ; preds = %53, %58
  %61 = phi i32* [ %59, %58 ], [ %54, %53 ]
  store i32 34, i32* %61, align 4, !dbg !136, !tbaa !98
  br label %62, !dbg !137

; <label>:62:                                     ; preds = %60, %55
  %63 = load i32, i32* %46, align 8, !dbg !137, !tbaa !72
  %64 = icmp eq i32 %63, 0, !dbg !139
  br i1 %64, label %67, label %65, !dbg !140

; <label>:65:                                     ; preds = %62
  %66 = call i32* @__errno() #5, !dbg !141
  store i32 %63, i32* %66, align 4, !dbg !142, !tbaa !98
  br label %67, !dbg !141

; <label>:67:                                     ; preds = %62, %65
  %68 = load double, double* %50, align 8, !dbg !143, !tbaa !85
  %69 = fptrunc double %68 to float, !dbg !144
  br label %70, !dbg !145

; <label>:70:                                     ; preds = %41, %7, %1, %67, %38
  %71 = phi float [ %40, %38 ], [ %69, %67 ], [ %4, %1 ], [ %4, %7 ], [ %4, %41 ], !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  ret float %71, !dbg !147
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_expf(float) local_unnamed_addr #2

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

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, globals: !14)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_exp.c", directory: "/root/.unikraft/apps/redis/build")
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
!14 = !{!15, !18}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression(DW_OP_constu, 1118925184, DW_OP_stack_value))
!16 = distinct !DIGlobalVariable(name: "o_threshold", scope: !0, file: !1, line: 28, type: !17, isLocal: true, isDefinition: true)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression(DW_OP_constu, 3268407733, DW_OP_stack_value))
!19 = distinct !DIGlobalVariable(name: "u_threshold", scope: !0, file: !1, line: 29, type: !17, isLocal: true, isDefinition: true)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = distinct !DISubprogram(name: "expf", scope: !1, file: !1, line: 32, type: !25, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !13}
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "x", arg: 1, scope: !24, file: !1, line: 32, type: !13)
!29 = !DILocalVariable(name: "z", scope: !24, file: !1, line: 41, type: !13)
!30 = !DILocalVariable(name: "exc", scope: !24, file: !1, line: 42, type: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !32)
!32 = !{!33, !34, !37, !38, !39, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !4, line: 581, baseType: !5, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !4, line: 582, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !31, file: !4, line: 583, baseType: !12, size: 64, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !31, file: !4, line: 584, baseType: !12, size: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !31, file: !4, line: 585, baseType: !12, size: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !31, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!41 = !DILocation(line: 32, column: 19, scope: !24)
!42 = !DILocation(line: 42, column: 2, scope: !24)
!43 = !DILocation(line: 43, column: 6, scope: !24)
!44 = !DILocation(line: 41, column: 8, scope: !24)
!45 = !DILocation(line: 44, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !24, file: !1, line: 44, column: 5)
!47 = !{!48, !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 44, column: 18, scope: !46)
!51 = !DILocation(line: 44, column: 5, scope: !24)
!52 = !DILocation(line: 45, column: 5, scope: !53)
!53 = distinct !DILexicalBlock(scope: !24, file: !1, line: 45, column: 5)
!54 = !DILocation(line: 45, column: 5, scope: !24)
!55 = !DILocation(line: 46, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 46, column: 9)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 45, column: 17)
!58 = !DILocation(line: 46, column: 9, scope: !57)
!59 = !DILocation(line: 54, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 46, column: 24)
!61 = !DILocation(line: 54, column: 12, scope: !60)
!62 = !{!63, !64, i64 0}
!63 = !{!"exception", !64, i64 0, !65, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !64, i64 40}
!64 = !{!"int", !48, i64 0}
!65 = !{!"any pointer", !48, i64 0}
!66 = !{!"double", !48, i64 0}
!67 = !DILocation(line: 55, column: 7, scope: !60)
!68 = !DILocation(line: 55, column: 12, scope: !60)
!69 = !{!63, !65, i64 8}
!70 = !DILocation(line: 56, column: 7, scope: !60)
!71 = !DILocation(line: 56, column: 11, scope: !60)
!72 = !{!63, !64, i64 40}
!73 = !DILocation(line: 57, column: 25, scope: !60)
!74 = !DILocation(line: 57, column: 18, scope: !60)
!75 = !DILocation(line: 57, column: 23, scope: !60)
!76 = !{!63, !66, i64 24}
!77 = !DILocation(line: 57, column: 7, scope: !60)
!78 = !DILocation(line: 57, column: 12, scope: !60)
!79 = !{!63, !66, i64 16}
!80 = !DILocation(line: 58, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !60, file: !1, line: 58, column: 7)
!82 = !DILocation(line: 58, column: 20, scope: !81)
!83 = !DILocation(line: 0, scope: !81)
!84 = !DILocation(line: 59, column: 5, scope: !81)
!85 = !{!63, !66, i64 32}
!86 = !DILocation(line: 62, column: 20, scope: !87)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 62, column: 7)
!88 = !DILocation(line: 62, column: 7, scope: !60)
!89 = !DILocation(line: 63, column: 5, scope: !87)
!90 = !DILocation(line: 42, column: 19, scope: !24)
!91 = !DILocation(line: 64, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 64, column: 12)
!93 = !DILocation(line: 64, column: 12, scope: !87)
!94 = !DILocation(line: 65, column: 4, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 64, column: 28)
!96 = !DILocation(line: 66, column: 3, scope: !95)
!97 = !DILocation(line: 0, scope: !87)
!98 = !{!64, !64, i64 0}
!99 = !DILocation(line: 67, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !60, file: !1, line: 67, column: 14)
!101 = !DILocation(line: 67, column: 22, scope: !100)
!102 = !DILocation(line: 67, column: 14, scope: !60)
!103 = !DILocation(line: 68, column: 13, scope: !100)
!104 = !DILocation(line: 68, column: 19, scope: !100)
!105 = !DILocation(line: 69, column: 21, scope: !60)
!106 = !DILocation(line: 69, column: 17, scope: !60)
!107 = !DILocation(line: 69, column: 10, scope: !60)
!108 = !DILocation(line: 70, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !56, file: !1, line: 70, column: 16)
!110 = !DILocation(line: 70, column: 16, scope: !56)
!111 = !DILocation(line: 72, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 70, column: 31)
!113 = !DILocation(line: 72, column: 12, scope: !112)
!114 = !DILocation(line: 73, column: 7, scope: !112)
!115 = !DILocation(line: 73, column: 12, scope: !112)
!116 = !DILocation(line: 74, column: 7, scope: !112)
!117 = !DILocation(line: 74, column: 11, scope: !112)
!118 = !DILocation(line: 75, column: 25, scope: !112)
!119 = !DILocation(line: 75, column: 18, scope: !112)
!120 = !DILocation(line: 75, column: 23, scope: !112)
!121 = !DILocation(line: 75, column: 7, scope: !112)
!122 = !DILocation(line: 75, column: 12, scope: !112)
!123 = !DILocation(line: 76, column: 7, scope: !112)
!124 = !DILocation(line: 76, column: 14, scope: !112)
!125 = !DILocation(line: 77, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !112, file: !1, line: 77, column: 7)
!127 = !DILocation(line: 77, column: 20, scope: !126)
!128 = !DILocation(line: 77, column: 7, scope: !112)
!129 = !DILocation(line: 78, column: 5, scope: !126)
!130 = !DILocation(line: 79, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 79, column: 12)
!132 = !DILocation(line: 79, column: 12, scope: !126)
!133 = !DILocation(line: 80, column: 4, scope: !134)
!134 = distinct !DILexicalBlock(scope: !131, file: !1, line: 79, column: 28)
!135 = !DILocation(line: 81, column: 3, scope: !134)
!136 = !DILocation(line: 0, scope: !126)
!137 = !DILocation(line: 82, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !1, line: 82, column: 14)
!139 = !DILocation(line: 82, column: 22, scope: !138)
!140 = !DILocation(line: 82, column: 14, scope: !112)
!141 = !DILocation(line: 83, column: 13, scope: !138)
!142 = !DILocation(line: 83, column: 19, scope: !138)
!143 = !DILocation(line: 84, column: 21, scope: !112)
!144 = !DILocation(line: 84, column: 17, scope: !112)
!145 = !DILocation(line: 84, column: 10, scope: !112)
!146 = !DILocation(line: 0, scope: !24)
!147 = !DILocation(line: 89, column: 1, scope: !24)
