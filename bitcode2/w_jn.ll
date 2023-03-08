; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_jn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"jn\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"yn\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @jn(i32, double) local_unnamed_addr #0 !dbg !17 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call double @__ieee754_jn(i32 %0, double %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %40, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %10, label %40, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call double @fabs(double %1) #5, !dbg !50
  %13 = fcmp ogt double %12, 0x434921FB54442D18, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %13, label %14, label %40, !dbg !53

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !54
  store i32 5, i32* %15, align 8, !dbg !56, !tbaa !57
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !62
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !65
  store i32 0, i32* %17, align 8, !dbg !66, !tbaa !67
  %18 = sitofp i32 %0 to double, !dbg !68
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  store double %18, double* %19, align 8, !dbg !70, !tbaa !71
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !72
  store double %1, double* %20, align 8, !dbg !73, !tbaa !74
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !75
  store double 0.000000e+00, double* %21, align 8, !dbg !76, !tbaa !77
  %22 = load i32, i32* @__fdlib_version, align 4, !dbg !78, !tbaa !43
  %23 = icmp eq i32 %22, 2, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %23, label %24, label %26, !dbg !81

; <label>:24:                                     ; preds = %14
  %25 = tail call i32* @__errno() #5, !dbg !82
  br label %31, !dbg !82

; <label>:26:                                     ; preds = %14
  %27 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !84
  %28 = icmp eq i32 %27, 0, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !86
  br i1 %28, label %29, label %33, !dbg !86

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !87
  br label %31, !dbg !89

; <label>:31:                                     ; preds = %24, %29
  %32 = phi i32* [ %30, %29 ], [ %25, %24 ]
  store i32 34, i32* %32, align 4, !dbg !90, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br label %33, !dbg !92

; <label>:33:                                     ; preds = %31, %26
  %34 = load i32, i32* %17, align 8, !dbg !92, !tbaa !67
  %35 = icmp eq i32 %34, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %35, label %38, label %36, !dbg !95

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !96
  store i32 %34, i32* %37, align 4, !dbg !97, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %38, !dbg !96

; <label>:38:                                     ; preds = %33, %36
  %39 = load double, double* %21, align 8, !dbg !98, !tbaa !77
  br label %40, !dbg !99

; <label>:40:                                     ; preds = %11, %2, %8, %38
  %41 = phi double [ %39, %38 ], [ %5, %8 ], [ %5, %2 ], [ %5, %11 ], !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  ret double %41, !dbg !102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_jn(i32, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @fabs(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @matherr(%struct.exception*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local double @yn(i32, double) local_unnamed_addr #0 !dbg !103 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !111
  %5 = tail call double @__ieee754_yn(i32 %0, double %1) #5, !dbg !112
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !114, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %7, label %70, label %8, !dbg !117

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyd(double %1) #5, !dbg !118
  %10 = icmp eq i32 %9, 0, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %10, label %70, label %11, !dbg !119

; <label>:11:                                     ; preds = %8
  %12 = fcmp ugt double %1, 0.000000e+00, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %12, label %42, label %13, !dbg !122

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !123
  store i32 1, i32* %14, align 8, !dbg !125, !tbaa !57
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !126
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8, !dbg !127, !tbaa !64
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !128
  store i32 0, i32* %16, align 8, !dbg !129, !tbaa !67
  %17 = sitofp i32 %0 to double, !dbg !130
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !131
  store double %17, double* %18, align 8, !dbg !132, !tbaa !71
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !133
  store double %1, double* %19, align 8, !dbg !134, !tbaa !74
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !135, !tbaa !43
  %21 = icmp eq i32 %20, 0, !dbg !137
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br i1 %21, label %23, label %24, !dbg !139

; <label>:23:                                     ; preds = %13
  store double 0xC7EFFFFFE0000000, double* %22, align 8, !dbg !140, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br label %28, !dbg !142

; <label>:24:                                     ; preds = %13
  store double 0xFFF0000000000000, double* %22, align 8, !dbg !143, !tbaa !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = icmp eq i32 %20, 2, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %25, label %26, label %28, !dbg !142

; <label>:26:                                     ; preds = %24
  %27 = tail call i32* @__errno() #5, !dbg !146
  br label %33, !dbg !146

; <label>:28:                                     ; preds = %23, %24
  %29 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !148
  %30 = icmp eq i32 %29, 0, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !150
  br i1 %30, label %31, label %35, !dbg !150

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !151
  br label %33, !dbg !153

; <label>:33:                                     ; preds = %26, %31
  %34 = phi i32* [ %32, %31 ], [ %27, %26 ]
  store i32 33, i32* %34, align 4, !dbg !154, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br label %35, !dbg !155

; <label>:35:                                     ; preds = %33, %28
  %36 = load i32, i32* %16, align 8, !dbg !155, !tbaa !67
  %37 = icmp eq i32 %36, 0, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %37, label %40, label %38, !dbg !158

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno() #5, !dbg !159
  store i32 %36, i32* %39, align 4, !dbg !160, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br label %40, !dbg !159

; <label>:40:                                     ; preds = %35, %38
  %41 = load double, double* %22, align 8, !dbg !161, !tbaa !77
  br label %70, !dbg !162

; <label>:42:                                     ; preds = %11
  %43 = fcmp ogt double %1, 0x434921FB54442D18, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %43, label %44, label %70, !dbg !165

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !166
  store i32 5, i32* %45, align 8, !dbg !168, !tbaa !57
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !169
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8, !dbg !170, !tbaa !64
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !171
  store i32 0, i32* %47, align 8, !dbg !172, !tbaa !67
  %48 = sitofp i32 %0 to double, !dbg !173
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !174
  store double %48, double* %49, align 8, !dbg !175, !tbaa !71
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !176
  store double %1, double* %50, align 8, !dbg !177, !tbaa !74
  %51 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !178
  store double 0.000000e+00, double* %51, align 8, !dbg !179, !tbaa !77
  %52 = load i32, i32* @__fdlib_version, align 4, !dbg !180, !tbaa !43
  %53 = icmp eq i32 %52, 2, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br i1 %53, label %54, label %56, !dbg !183

; <label>:54:                                     ; preds = %44
  %55 = tail call i32* @__errno() #5, !dbg !184
  br label %61, !dbg !184

; <label>:56:                                     ; preds = %44
  %57 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !185
  %58 = icmp eq i32 %57, 0, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br i1 %58, label %59, label %63, !dbg !187

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno() #5, !dbg !188
  br label %61, !dbg !190

; <label>:61:                                     ; preds = %54, %59
  %62 = phi i32* [ %60, %59 ], [ %55, %54 ]
  store i32 34, i32* %62, align 4, !dbg !191, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !191
  br label %63, !dbg !192

; <label>:63:                                     ; preds = %61, %56
  %64 = load i32, i32* %47, align 8, !dbg !192, !tbaa !67
  %65 = icmp eq i32 %64, 0, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  br i1 %65, label %68, label %66, !dbg !195

; <label>:66:                                     ; preds = %63
  %67 = call i32* @__errno() #5, !dbg !196
  store i32 %64, i32* %67, align 4, !dbg !197, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br label %68, !dbg !196

; <label>:68:                                     ; preds = %63, %66
  %69 = load double, double* %51, align 8, !dbg !198, !tbaa !77
  br label %70, !dbg !199

; <label>:70:                                     ; preds = %42, %2, %8, %68, %40
  %71 = phi double [ %41, %40 ], [ %69, %68 ], [ %5, %8 ], [ %5, %2 ], [ %5, %42 ], !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  ret double %71, !dbg !202
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_yn(i32, double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_jn.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "jn", scope: !1, file: !1, line: 46, type: !18, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !5, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "n", arg: 1, scope: !17, file: !1, line: 46, type: !5)
!23 = !DILocalVariable(name: "x", arg: 2, scope: !17, file: !1, line: 46, type: !20)
!24 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 55, type: !20)
!25 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 56, type: !26)
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
!36 = !DILocation(line: 46, column: 16, scope: !17)
!37 = !DILocation(line: 46, column: 26, scope: !17)
!38 = !DILocation(line: 56, column: 2, scope: !17)
!39 = !DILocation(line: 57, column: 6, scope: !17)
!40 = !DILocation(line: 55, column: 9, scope: !17)
!41 = !DILocation(line: 58, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !17, file: !1, line: 58, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 58, column: 18, scope: !42)
!47 = !DILocation(line: 58, column: 28, scope: !42)
!48 = !DILocation(line: 58, column: 31, scope: !42)
!49 = !DILocation(line: 58, column: 5, scope: !17)
!50 = !DILocation(line: 59, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !17, file: !1, line: 59, column: 5)
!52 = !DILocation(line: 59, column: 12, scope: !51)
!53 = !DILocation(line: 59, column: 5, scope: !17)
!54 = !DILocation(line: 61, column: 17, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 59, column: 22)
!56 = !DILocation(line: 61, column: 22, scope: !55)
!57 = !{!58, !59, i64 0}
!58 = !{!"exception", !59, i64 0, !60, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !59, i64 40}
!59 = !{!"int", !44, i64 0}
!60 = !{!"any pointer", !44, i64 0}
!61 = !{!"double", !44, i64 0}
!62 = !DILocation(line: 62, column: 17, scope: !55)
!63 = !DILocation(line: 62, column: 22, scope: !55)
!64 = !{!58, !60, i64 8}
!65 = !DILocation(line: 63, column: 10, scope: !55)
!66 = !DILocation(line: 63, column: 14, scope: !55)
!67 = !{!58, !59, i64 40}
!68 = !DILocation(line: 64, column: 17, scope: !55)
!69 = !DILocation(line: 64, column: 10, scope: !55)
!70 = !DILocation(line: 64, column: 15, scope: !55)
!71 = !{!58, !61, i64 16}
!72 = !DILocation(line: 65, column: 10, scope: !55)
!73 = !DILocation(line: 65, column: 15, scope: !55)
!74 = !{!58, !61, i64 24}
!75 = !DILocation(line: 66, column: 17, scope: !55)
!76 = !DILocation(line: 66, column: 24, scope: !55)
!77 = !{!58, !61, i64 32}
!78 = !DILocation(line: 67, column: 17, scope: !79)
!79 = distinct !DILexicalBlock(scope: !55, file: !1, line: 67, column: 17)
!80 = !DILocation(line: 67, column: 30, scope: !79)
!81 = !DILocation(line: 67, column: 17, scope: !55)
!82 = !DILocation(line: 68, column: 17, scope: !79)
!83 = !DILocation(line: 56, column: 19, scope: !17)
!84 = !DILocation(line: 69, column: 23, scope: !85)
!85 = distinct !DILexicalBlock(scope: !79, file: !1, line: 69, column: 22)
!86 = !DILocation(line: 69, column: 22, scope: !79)
!87 = !DILocation(line: 70, column: 16, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 69, column: 38)
!89 = !DILocation(line: 71, column: 13, scope: !88)
!90 = !DILocation(line: 0, scope: !79)
!91 = !{!59, !59, i64 0}
!92 = !DILocation(line: 72, column: 14, scope: !93)
!93 = distinct !DILexicalBlock(scope: !55, file: !1, line: 72, column: 10)
!94 = !DILocation(line: 72, column: 18, scope: !93)
!95 = !DILocation(line: 72, column: 10, scope: !55)
!96 = !DILocation(line: 73, column: 9, scope: !93)
!97 = !DILocation(line: 73, column: 15, scope: !93)
!98 = !DILocation(line: 74, column: 24, scope: !55)
!99 = !DILocation(line: 74, column: 13, scope: !55)
!100 = !DILocation(line: 0, scope: !51)
!101 = !DILocation(line: 0, scope: !42)
!102 = !DILocation(line: 78, column: 1, scope: !17)
!103 = distinct !DISubprogram(name: "yn", scope: !1, file: !1, line: 81, type: !18, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !104)
!104 = !{!105, !106, !107, !108}
!105 = !DILocalVariable(name: "n", arg: 1, scope: !103, file: !1, line: 81, type: !5)
!106 = !DILocalVariable(name: "x", arg: 2, scope: !103, file: !1, line: 81, type: !20)
!107 = !DILocalVariable(name: "z", scope: !103, file: !1, line: 90, type: !20)
!108 = !DILocalVariable(name: "exc", scope: !103, file: !1, line: 91, type: !26)
!109 = !DILocation(line: 81, column: 16, scope: !103)
!110 = !DILocation(line: 81, column: 26, scope: !103)
!111 = !DILocation(line: 91, column: 2, scope: !103)
!112 = !DILocation(line: 92, column: 6, scope: !103)
!113 = !DILocation(line: 90, column: 9, scope: !103)
!114 = !DILocation(line: 93, column: 5, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 93, column: 5)
!116 = !DILocation(line: 93, column: 18, scope: !115)
!117 = !DILocation(line: 93, column: 28, scope: !115)
!118 = !DILocation(line: 93, column: 31, scope: !115)
!119 = !DILocation(line: 93, column: 5, scope: !103)
!120 = !DILocation(line: 94, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !103, file: !1, line: 94, column: 12)
!122 = !DILocation(line: 94, column: 12, scope: !103)
!123 = !DILocation(line: 102, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 94, column: 21)
!125 = !DILocation(line: 102, column: 15, scope: !124)
!126 = !DILocation(line: 103, column: 10, scope: !124)
!127 = !DILocation(line: 103, column: 15, scope: !124)
!128 = !DILocation(line: 104, column: 10, scope: !124)
!129 = !DILocation(line: 104, column: 14, scope: !124)
!130 = !DILocation(line: 105, column: 17, scope: !124)
!131 = !DILocation(line: 105, column: 10, scope: !124)
!132 = !DILocation(line: 105, column: 15, scope: !124)
!133 = !DILocation(line: 106, column: 10, scope: !124)
!134 = !DILocation(line: 106, column: 15, scope: !124)
!135 = !DILocation(line: 107, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !124, file: !1, line: 107, column: 10)
!137 = !DILocation(line: 107, column: 23, scope: !136)
!138 = !DILocation(line: 0, scope: !136)
!139 = !DILocation(line: 107, column: 10, scope: !124)
!140 = !DILocation(line: 108, column: 21, scope: !136)
!141 = !DILocation(line: 108, column: 10, scope: !136)
!142 = !DILocation(line: 111, column: 10, scope: !124)
!143 = !DILocation(line: 110, column: 21, scope: !136)
!144 = !DILocation(line: 111, column: 23, scope: !145)
!145 = distinct !DILexicalBlock(scope: !124, file: !1, line: 111, column: 10)
!146 = !DILocation(line: 112, column: 10, scope: !145)
!147 = !DILocation(line: 91, column: 19, scope: !103)
!148 = !DILocation(line: 113, column: 16, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 113, column: 15)
!150 = !DILocation(line: 113, column: 15, scope: !145)
!151 = !DILocation(line: 114, column: 10, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 113, column: 31)
!153 = !DILocation(line: 115, column: 6, scope: !152)
!154 = !DILocation(line: 0, scope: !145)
!155 = !DILocation(line: 116, column: 14, scope: !156)
!156 = distinct !DILexicalBlock(scope: !124, file: !1, line: 116, column: 10)
!157 = !DILocation(line: 116, column: 18, scope: !156)
!158 = !DILocation(line: 116, column: 10, scope: !124)
!159 = !DILocation(line: 117, column: 9, scope: !156)
!160 = !DILocation(line: 117, column: 15, scope: !156)
!161 = !DILocation(line: 118, column: 24, scope: !124)
!162 = !DILocation(line: 118, column: 13, scope: !124)
!163 = !DILocation(line: 120, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !103, file: !1, line: 120, column: 5)
!165 = !DILocation(line: 120, column: 5, scope: !103)
!166 = !DILocation(line: 122, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 120, column: 16)
!168 = !DILocation(line: 122, column: 22, scope: !167)
!169 = !DILocation(line: 123, column: 17, scope: !167)
!170 = !DILocation(line: 123, column: 22, scope: !167)
!171 = !DILocation(line: 124, column: 10, scope: !167)
!172 = !DILocation(line: 124, column: 14, scope: !167)
!173 = !DILocation(line: 125, column: 17, scope: !167)
!174 = !DILocation(line: 125, column: 10, scope: !167)
!175 = !DILocation(line: 125, column: 15, scope: !167)
!176 = !DILocation(line: 126, column: 10, scope: !167)
!177 = !DILocation(line: 126, column: 15, scope: !167)
!178 = !DILocation(line: 127, column: 17, scope: !167)
!179 = !DILocation(line: 127, column: 24, scope: !167)
!180 = !DILocation(line: 128, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !167, file: !1, line: 128, column: 17)
!182 = !DILocation(line: 128, column: 30, scope: !181)
!183 = !DILocation(line: 128, column: 17, scope: !167)
!184 = !DILocation(line: 129, column: 17, scope: !181)
!185 = !DILocation(line: 130, column: 23, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 130, column: 22)
!187 = !DILocation(line: 130, column: 22, scope: !181)
!188 = !DILocation(line: 131, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 130, column: 38)
!190 = !DILocation(line: 132, column: 13, scope: !189)
!191 = !DILocation(line: 0, scope: !181)
!192 = !DILocation(line: 133, column: 14, scope: !193)
!193 = distinct !DILexicalBlock(scope: !167, file: !1, line: 133, column: 10)
!194 = !DILocation(line: 133, column: 18, scope: !193)
!195 = !DILocation(line: 133, column: 10, scope: !167)
!196 = !DILocation(line: 134, column: 9, scope: !193)
!197 = !DILocation(line: 134, column: 15, scope: !193)
!198 = !DILocation(line: 135, column: 24, scope: !167)
!199 = !DILocation(line: 135, column: 13, scope: !167)
!200 = !DILocation(line: 0, scope: !164)
!201 = !DILocation(line: 0, scope: !115)
!202 = !DILocation(line: 139, column: 1, scope: !103)
