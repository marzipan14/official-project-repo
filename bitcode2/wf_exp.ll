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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %6, label %71, label %7, !dbg !51

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @finitef(float %0) #5, !dbg !52
  %9 = icmp eq i32 %8, 0, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %9, label %71, label %10, !dbg !54

; <label>:10:                                     ; preds = %7
  %11 = fcmp ogt float %0, 0x40562E3000000000, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %11, label %12, label %42, !dbg !58

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %20, label %22, label %23, !dbg !84

; <label>:22:                                     ; preds = %12
  store double 0x47EFFFFFE0000000, double* %21, align 8, !dbg !85, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %27, !dbg !88

; <label>:23:                                     ; preds = %12
  store double 0x7FF0000000000000, double* %21, align 8, !dbg !89, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = icmp eq i32 %19, 2, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %24, label %25, label %27, !dbg !88

; <label>:25:                                     ; preds = %23
  %26 = tail call i32* @__errno() #5, !dbg !92
  br label %32, !dbg !92

; <label>:27:                                     ; preds = %22, %23
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !94
  %29 = icmp eq i32 %28, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %29, label %30, label %34, !dbg !96

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !97
  br label %32, !dbg !99

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 34, i32* %33, align 4, !dbg !100, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  br label %34, !dbg !102

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %15, align 8, !dbg !102, !tbaa !72
  %36 = icmp eq i32 %35, 0, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %36, label %39, label %37, !dbg !105

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !106
  store i32 %35, i32* %38, align 4, !dbg !107, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br label %39, !dbg !106

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %21, align 8, !dbg !108, !tbaa !86
  %41 = fptrunc double %40 to float, !dbg !109
  br label %71, !dbg !110

; <label>:42:                                     ; preds = %10
  %43 = fcmp olt float %0, 0xC059FE36A0000000, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %43, label %44, label %71, !dbg !113

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !114
  store i32 4, i32* %45, align 8, !dbg !116, !tbaa !62
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !117
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %46, align 8, !dbg !118, !tbaa !69
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !119
  store i32 0, i32* %47, align 8, !dbg !120, !tbaa !72
  %48 = fpext float %0 to double, !dbg !121
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !122
  store double %48, double* %49, align 8, !dbg !123, !tbaa !76
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !124
  store double %48, double* %50, align 8, !dbg !125, !tbaa !79
  %51 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !126
  store double 0.000000e+00, double* %51, align 8, !dbg !127, !tbaa !86
  %52 = load i32, i32* @__fdlib_version, align 4, !dbg !128, !tbaa !47
  %53 = icmp eq i32 %52, 2, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br i1 %53, label %54, label %56, !dbg !131

; <label>:54:                                     ; preds = %44
  %55 = tail call i32* @__errno() #5, !dbg !132
  br label %61, !dbg !132

; <label>:56:                                     ; preds = %44
  %57 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !133
  %58 = icmp eq i32 %57, 0, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br i1 %58, label %59, label %63, !dbg !135

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno() #5, !dbg !136
  br label %61, !dbg !138

; <label>:61:                                     ; preds = %54, %59
  %62 = phi i32* [ %60, %59 ], [ %55, %54 ]
  store i32 34, i32* %62, align 4, !dbg !139, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %63, !dbg !140

; <label>:63:                                     ; preds = %61, %56
  %64 = load i32, i32* %47, align 8, !dbg !140, !tbaa !72
  %65 = icmp eq i32 %64, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %65, label %68, label %66, !dbg !143

; <label>:66:                                     ; preds = %63
  %67 = call i32* @__errno() #5, !dbg !144
  store i32 %64, i32* %67, align 4, !dbg !145, !tbaa !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br label %68, !dbg !144

; <label>:68:                                     ; preds = %63, %66
  %69 = load double, double* %51, align 8, !dbg !146, !tbaa !86
  %70 = fptrunc double %69 to float, !dbg !147
  br label %71, !dbg !148

; <label>:71:                                     ; preds = %42, %7, %1, %68, %39
  %72 = phi float [ %41, %39 ], [ %70, %68 ], [ %4, %1 ], [ %4, %7 ], [ %4, %42 ], !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  ret float %72, !dbg !151
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
!84 = !DILocation(line: 58, column: 7, scope: !60)
!85 = !DILocation(line: 59, column: 16, scope: !81)
!86 = !{!63, !66, i64 32}
!87 = !DILocation(line: 59, column: 5, scope: !81)
!88 = !DILocation(line: 62, column: 7, scope: !60)
!89 = !DILocation(line: 61, column: 16, scope: !81)
!90 = !DILocation(line: 62, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !60, file: !1, line: 62, column: 7)
!92 = !DILocation(line: 63, column: 5, scope: !91)
!93 = !DILocation(line: 42, column: 19, scope: !24)
!94 = !DILocation(line: 64, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 64, column: 12)
!96 = !DILocation(line: 64, column: 12, scope: !91)
!97 = !DILocation(line: 65, column: 4, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 64, column: 28)
!99 = !DILocation(line: 66, column: 3, scope: !98)
!100 = !DILocation(line: 0, scope: !91)
!101 = !{!64, !64, i64 0}
!102 = !DILocation(line: 67, column: 18, scope: !103)
!103 = distinct !DILexicalBlock(scope: !60, file: !1, line: 67, column: 14)
!104 = !DILocation(line: 67, column: 22, scope: !103)
!105 = !DILocation(line: 67, column: 14, scope: !60)
!106 = !DILocation(line: 68, column: 13, scope: !103)
!107 = !DILocation(line: 68, column: 19, scope: !103)
!108 = !DILocation(line: 69, column: 21, scope: !60)
!109 = !DILocation(line: 69, column: 17, scope: !60)
!110 = !DILocation(line: 69, column: 10, scope: !60)
!111 = !DILocation(line: 70, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !56, file: !1, line: 70, column: 16)
!113 = !DILocation(line: 70, column: 16, scope: !56)
!114 = !DILocation(line: 72, column: 7, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 70, column: 31)
!116 = !DILocation(line: 72, column: 12, scope: !115)
!117 = !DILocation(line: 73, column: 7, scope: !115)
!118 = !DILocation(line: 73, column: 12, scope: !115)
!119 = !DILocation(line: 74, column: 7, scope: !115)
!120 = !DILocation(line: 74, column: 11, scope: !115)
!121 = !DILocation(line: 75, column: 25, scope: !115)
!122 = !DILocation(line: 75, column: 18, scope: !115)
!123 = !DILocation(line: 75, column: 23, scope: !115)
!124 = !DILocation(line: 75, column: 7, scope: !115)
!125 = !DILocation(line: 75, column: 12, scope: !115)
!126 = !DILocation(line: 76, column: 7, scope: !115)
!127 = !DILocation(line: 76, column: 14, scope: !115)
!128 = !DILocation(line: 77, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !115, file: !1, line: 77, column: 7)
!130 = !DILocation(line: 77, column: 20, scope: !129)
!131 = !DILocation(line: 77, column: 7, scope: !115)
!132 = !DILocation(line: 78, column: 5, scope: !129)
!133 = !DILocation(line: 79, column: 13, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 79, column: 12)
!135 = !DILocation(line: 79, column: 12, scope: !129)
!136 = !DILocation(line: 80, column: 4, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 79, column: 28)
!138 = !DILocation(line: 81, column: 3, scope: !137)
!139 = !DILocation(line: 0, scope: !129)
!140 = !DILocation(line: 82, column: 18, scope: !141)
!141 = distinct !DILexicalBlock(scope: !115, file: !1, line: 82, column: 14)
!142 = !DILocation(line: 82, column: 22, scope: !141)
!143 = !DILocation(line: 82, column: 14, scope: !115)
!144 = !DILocation(line: 83, column: 13, scope: !141)
!145 = !DILocation(line: 83, column: 19, scope: !141)
!146 = !DILocation(line: 84, column: 21, scope: !115)
!147 = !DILocation(line: 84, column: 17, scope: !115)
!148 = !DILocation(line: 84, column: 10, scope: !115)
!149 = !DILocation(line: 0, scope: !24)
!150 = !DILocation(line: 0, scope: !46)
!151 = !DILocation(line: 89, column: 1, scope: !24)
