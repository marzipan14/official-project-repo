; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_jn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_jn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"jnf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ynf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @jnf(i32, float) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !38
  %5 = tail call float @__ieee754_jnf(i32 %0, float %1) #5, !dbg !39
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !41, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %42, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %10, label %42, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call float @fabsf(float %1) #5, !dbg !50
  %13 = fcmp ogt float %12, 0x434921FB60000000, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %13, label %14, label %42, !dbg !53

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !54
  store i32 5, i32* %15, align 8, !dbg !56, !tbaa !57
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !62
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8, !dbg !63, !tbaa !64
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !65
  store i32 0, i32* %17, align 8, !dbg !66, !tbaa !67
  %18 = sitofp i32 %0 to double, !dbg !68
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !69
  store double %18, double* %19, align 8, !dbg !70, !tbaa !71
  %20 = fpext float %1 to double, !dbg !72
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !73
  store double %20, double* %21, align 8, !dbg !74, !tbaa !75
  %22 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !76
  store double 0.000000e+00, double* %22, align 8, !dbg !77, !tbaa !78
  %23 = load i32, i32* @__fdlib_version, align 4, !dbg !79, !tbaa !43
  %24 = icmp eq i32 %23, 2, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %24, label %25, label %27, !dbg !82

; <label>:25:                                     ; preds = %14
  %26 = tail call i32* @__errno() #5, !dbg !83
  br label %32, !dbg !83

; <label>:27:                                     ; preds = %14
  %28 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !85
  %29 = icmp eq i32 %28, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %29, label %30, label %34, !dbg !87

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !88
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 34, i32* %33, align 4, !dbg !91, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br label %34, !dbg !93

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %17, align 8, !dbg !93, !tbaa !67
  %36 = icmp eq i32 %35, 0, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %36, label %39, label %37, !dbg !96

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !97
  store i32 %35, i32* %38, align 4, !dbg !98, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br label %39, !dbg !97

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %22, align 8, !dbg !99, !tbaa !78
  %41 = fptrunc double %40 to float, !dbg !100
  br label %42, !dbg !101

; <label>:42:                                     ; preds = %11, %2, %8, %39
  %43 = phi float [ %41, %39 ], [ %5, %8 ], [ %5, %2 ], [ %5, %11 ], !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  ret float %43, !dbg !104
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_jnf(i32, float) local_unnamed_addr #2

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

; Function Attrs: noredzone nounwind
define dso_local float @ynf(i32, float) local_unnamed_addr #0 !dbg !105 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !113
  %5 = tail call float @__ieee754_ynf(i32 %0, float %1) #5, !dbg !114
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !116, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %7, label %74, label %8, !dbg !119

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !120
  %10 = icmp eq i32 %9, 0, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br i1 %10, label %74, label %11, !dbg !121

; <label>:11:                                     ; preds = %8
  %12 = fcmp ugt float %1, 0.000000e+00, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %12, label %44, label %13, !dbg !124

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !125
  store i32 1, i32* %14, align 8, !dbg !127, !tbaa !57
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !128
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8, !dbg !129, !tbaa !64
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !130
  store i32 0, i32* %16, align 8, !dbg !131, !tbaa !67
  %17 = sitofp i32 %0 to double, !dbg !132
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !133
  store double %17, double* %18, align 8, !dbg !134, !tbaa !71
  %19 = fpext float %1 to double, !dbg !135
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !136
  store double %19, double* %20, align 8, !dbg !137, !tbaa !75
  %21 = load i32, i32* @__fdlib_version, align 4, !dbg !138, !tbaa !43
  %22 = icmp eq i32 %21, 0, !dbg !140
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %22, label %24, label %25, !dbg !142

; <label>:24:                                     ; preds = %13
  store double 0xC7EFFFFFE0000000, double* %23, align 8, !dbg !143, !tbaa !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br label %29, !dbg !145

; <label>:25:                                     ; preds = %13
  store double 0xFFF0000000000000, double* %23, align 8, !dbg !146, !tbaa !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %26 = icmp eq i32 %21, 2, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %26, label %27, label %29, !dbg !145

; <label>:27:                                     ; preds = %25
  %28 = tail call i32* @__errno() #5, !dbg !149
  br label %34, !dbg !149

; <label>:29:                                     ; preds = %24, %25
  %30 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !151
  %31 = icmp eq i32 %30, 0, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %31, label %32, label %36, !dbg !153

; <label>:32:                                     ; preds = %29
  %33 = call i32* @__errno() #5, !dbg !154
  br label %34, !dbg !156

; <label>:34:                                     ; preds = %27, %32
  %35 = phi i32* [ %33, %32 ], [ %28, %27 ]
  store i32 33, i32* %35, align 4, !dbg !157, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br label %36, !dbg !158

; <label>:36:                                     ; preds = %34, %29
  %37 = load i32, i32* %16, align 8, !dbg !158, !tbaa !67
  %38 = icmp eq i32 %37, 0, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br i1 %38, label %41, label %39, !dbg !161

; <label>:39:                                     ; preds = %36
  %40 = call i32* @__errno() #5, !dbg !162
  store i32 %37, i32* %40, align 4, !dbg !163, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !162
  br label %41, !dbg !162

; <label>:41:                                     ; preds = %36, %39
  %42 = load double, double* %23, align 8, !dbg !164, !tbaa !78
  %43 = fptrunc double %42 to float, !dbg !165
  br label %74, !dbg !166

; <label>:44:                                     ; preds = %11
  %45 = fcmp ogt float %1, 0x434921FB60000000, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %45, label %46, label %74, !dbg !169

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !170
  store i32 5, i32* %47, align 8, !dbg !172, !tbaa !57
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !173
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8, !dbg !174, !tbaa !64
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !175
  store i32 0, i32* %49, align 8, !dbg !176, !tbaa !67
  %50 = sitofp i32 %0 to double, !dbg !177
  %51 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !178
  store double %50, double* %51, align 8, !dbg !179, !tbaa !71
  %52 = fpext float %1 to double, !dbg !180
  %53 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !181
  store double %52, double* %53, align 8, !dbg !182, !tbaa !75
  %54 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !183
  store double 0.000000e+00, double* %54, align 8, !dbg !184, !tbaa !78
  %55 = load i32, i32* @__fdlib_version, align 4, !dbg !185, !tbaa !43
  %56 = icmp eq i32 %55, 2, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %56, label %57, label %59, !dbg !188

; <label>:57:                                     ; preds = %46
  %58 = tail call i32* @__errno() #5, !dbg !189
  br label %64, !dbg !189

; <label>:59:                                     ; preds = %46
  %60 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !190
  %61 = icmp eq i32 %60, 0, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %61, label %62, label %66, !dbg !192

; <label>:62:                                     ; preds = %59
  %63 = call i32* @__errno() #5, !dbg !193
  br label %64, !dbg !195

; <label>:64:                                     ; preds = %57, %62
  %65 = phi i32* [ %63, %62 ], [ %58, %57 ]
  store i32 34, i32* %65, align 4, !dbg !196, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br label %66, !dbg !197

; <label>:66:                                     ; preds = %64, %59
  %67 = load i32, i32* %49, align 8, !dbg !197, !tbaa !67
  %68 = icmp eq i32 %67, 0, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %68, label %71, label %69, !dbg !200

; <label>:69:                                     ; preds = %66
  %70 = call i32* @__errno() #5, !dbg !201
  store i32 %67, i32* %70, align 4, !dbg !202, !tbaa !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  br label %71, !dbg !201

; <label>:71:                                     ; preds = %66, %69
  %72 = load double, double* %54, align 8, !dbg !203, !tbaa !78
  %73 = fptrunc double %72 to float, !dbg !204
  br label %74, !dbg !205

; <label>:74:                                     ; preds = %44, %2, %8, %71, %41
  %75 = phi float [ %43, %41 ], [ %73, %71 ], [ %5, %8 ], [ %5, %2 ], [ %5, %44 ], !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  ret float %75, !dbg !208
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_ynf(i32, float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_jn.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "jnf", scope: !1, file: !1, line: 21, type: !19, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !5, !12}
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "n", arg: 1, scope: !18, file: !1, line: 21, type: !5)
!23 = !DILocalVariable(name: "x", arg: 2, scope: !18, file: !1, line: 21, type: !12)
!24 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 30, type: !12)
!25 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 31, type: !26)
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
!36 = !DILocation(line: 21, column: 16, scope: !18)
!37 = !DILocation(line: 21, column: 25, scope: !18)
!38 = !DILocation(line: 31, column: 2, scope: !18)
!39 = !DILocation(line: 32, column: 6, scope: !18)
!40 = !DILocation(line: 30, column: 8, scope: !18)
!41 = !DILocation(line: 33, column: 5, scope: !42)
!42 = distinct !DILexicalBlock(scope: !18, file: !1, line: 33, column: 5)
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 33, column: 18, scope: !42)
!47 = !DILocation(line: 33, column: 28, scope: !42)
!48 = !DILocation(line: 33, column: 31, scope: !42)
!49 = !DILocation(line: 33, column: 5, scope: !18)
!50 = !DILocation(line: 34, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !18, file: !1, line: 34, column: 5)
!52 = !DILocation(line: 34, column: 13, scope: !51)
!53 = !DILocation(line: 34, column: 5, scope: !18)
!54 = !DILocation(line: 36, column: 17, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 34, column: 30)
!56 = !DILocation(line: 36, column: 22, scope: !55)
!57 = !{!58, !59, i64 0}
!58 = !{!"exception", !59, i64 0, !60, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !59, i64 40}
!59 = !{!"int", !44, i64 0}
!60 = !{!"any pointer", !44, i64 0}
!61 = !{!"double", !44, i64 0}
!62 = !DILocation(line: 37, column: 17, scope: !55)
!63 = !DILocation(line: 37, column: 22, scope: !55)
!64 = !{!58, !60, i64 8}
!65 = !DILocation(line: 38, column: 10, scope: !55)
!66 = !DILocation(line: 38, column: 14, scope: !55)
!67 = !{!58, !59, i64 40}
!68 = !DILocation(line: 39, column: 17, scope: !55)
!69 = !DILocation(line: 39, column: 10, scope: !55)
!70 = !DILocation(line: 39, column: 15, scope: !55)
!71 = !{!58, !61, i64 16}
!72 = !DILocation(line: 40, column: 17, scope: !55)
!73 = !DILocation(line: 40, column: 10, scope: !55)
!74 = !DILocation(line: 40, column: 15, scope: !55)
!75 = !{!58, !61, i64 24}
!76 = !DILocation(line: 41, column: 17, scope: !55)
!77 = !DILocation(line: 41, column: 24, scope: !55)
!78 = !{!58, !61, i64 32}
!79 = !DILocation(line: 42, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !55, file: !1, line: 42, column: 17)
!81 = !DILocation(line: 42, column: 30, scope: !80)
!82 = !DILocation(line: 42, column: 17, scope: !55)
!83 = !DILocation(line: 43, column: 17, scope: !80)
!84 = !DILocation(line: 31, column: 19, scope: !18)
!85 = !DILocation(line: 44, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 44, column: 22)
!87 = !DILocation(line: 44, column: 22, scope: !80)
!88 = !DILocation(line: 45, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 44, column: 38)
!90 = !DILocation(line: 46, column: 13, scope: !89)
!91 = !DILocation(line: 0, scope: !80)
!92 = !{!59, !59, i64 0}
!93 = !DILocation(line: 47, column: 14, scope: !94)
!94 = distinct !DILexicalBlock(scope: !55, file: !1, line: 47, column: 10)
!95 = !DILocation(line: 47, column: 18, scope: !94)
!96 = !DILocation(line: 47, column: 10, scope: !55)
!97 = !DILocation(line: 48, column: 9, scope: !94)
!98 = !DILocation(line: 48, column: 15, scope: !94)
!99 = !DILocation(line: 49, column: 24, scope: !55)
!100 = !DILocation(line: 49, column: 20, scope: !55)
!101 = !DILocation(line: 49, column: 13, scope: !55)
!102 = !DILocation(line: 0, scope: !51)
!103 = !DILocation(line: 0, scope: !42)
!104 = !DILocation(line: 53, column: 1, scope: !18)
!105 = distinct !DISubprogram(name: "ynf", scope: !1, file: !1, line: 56, type: !19, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: "n", arg: 1, scope: !105, file: !1, line: 56, type: !5)
!108 = !DILocalVariable(name: "x", arg: 2, scope: !105, file: !1, line: 56, type: !12)
!109 = !DILocalVariable(name: "z", scope: !105, file: !1, line: 65, type: !12)
!110 = !DILocalVariable(name: "exc", scope: !105, file: !1, line: 66, type: !26)
!111 = !DILocation(line: 56, column: 16, scope: !105)
!112 = !DILocation(line: 56, column: 25, scope: !105)
!113 = !DILocation(line: 66, column: 2, scope: !105)
!114 = !DILocation(line: 67, column: 6, scope: !105)
!115 = !DILocation(line: 65, column: 8, scope: !105)
!116 = !DILocation(line: 68, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 68, column: 5)
!118 = !DILocation(line: 68, column: 18, scope: !117)
!119 = !DILocation(line: 68, column: 28, scope: !117)
!120 = !DILocation(line: 68, column: 31, scope: !117)
!121 = !DILocation(line: 68, column: 5, scope: !105)
!122 = !DILocation(line: 69, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !105, file: !1, line: 69, column: 12)
!124 = !DILocation(line: 69, column: 12, scope: !105)
!125 = !DILocation(line: 77, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 69, column: 28)
!127 = !DILocation(line: 77, column: 15, scope: !126)
!128 = !DILocation(line: 78, column: 10, scope: !126)
!129 = !DILocation(line: 78, column: 15, scope: !126)
!130 = !DILocation(line: 79, column: 10, scope: !126)
!131 = !DILocation(line: 79, column: 14, scope: !126)
!132 = !DILocation(line: 80, column: 17, scope: !126)
!133 = !DILocation(line: 80, column: 10, scope: !126)
!134 = !DILocation(line: 80, column: 15, scope: !126)
!135 = !DILocation(line: 81, column: 17, scope: !126)
!136 = !DILocation(line: 81, column: 10, scope: !126)
!137 = !DILocation(line: 81, column: 15, scope: !126)
!138 = !DILocation(line: 82, column: 10, scope: !139)
!139 = distinct !DILexicalBlock(scope: !126, file: !1, line: 82, column: 10)
!140 = !DILocation(line: 82, column: 23, scope: !139)
!141 = !DILocation(line: 0, scope: !139)
!142 = !DILocation(line: 82, column: 10, scope: !126)
!143 = !DILocation(line: 83, column: 21, scope: !139)
!144 = !DILocation(line: 83, column: 10, scope: !139)
!145 = !DILocation(line: 86, column: 10, scope: !126)
!146 = !DILocation(line: 85, column: 21, scope: !139)
!147 = !DILocation(line: 86, column: 23, scope: !148)
!148 = distinct !DILexicalBlock(scope: !126, file: !1, line: 86, column: 10)
!149 = !DILocation(line: 87, column: 10, scope: !148)
!150 = !DILocation(line: 66, column: 19, scope: !105)
!151 = !DILocation(line: 88, column: 16, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 88, column: 15)
!153 = !DILocation(line: 88, column: 15, scope: !148)
!154 = !DILocation(line: 89, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 88, column: 31)
!156 = !DILocation(line: 90, column: 6, scope: !155)
!157 = !DILocation(line: 0, scope: !148)
!158 = !DILocation(line: 91, column: 14, scope: !159)
!159 = distinct !DILexicalBlock(scope: !126, file: !1, line: 91, column: 10)
!160 = !DILocation(line: 91, column: 18, scope: !159)
!161 = !DILocation(line: 91, column: 10, scope: !126)
!162 = !DILocation(line: 92, column: 9, scope: !159)
!163 = !DILocation(line: 92, column: 15, scope: !159)
!164 = !DILocation(line: 93, column: 31, scope: !126)
!165 = !DILocation(line: 93, column: 20, scope: !126)
!166 = !DILocation(line: 93, column: 13, scope: !126)
!167 = !DILocation(line: 95, column: 6, scope: !168)
!168 = distinct !DILexicalBlock(scope: !105, file: !1, line: 95, column: 5)
!169 = !DILocation(line: 95, column: 5, scope: !105)
!170 = !DILocation(line: 97, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !1, line: 95, column: 23)
!172 = !DILocation(line: 97, column: 22, scope: !171)
!173 = !DILocation(line: 98, column: 17, scope: !171)
!174 = !DILocation(line: 98, column: 22, scope: !171)
!175 = !DILocation(line: 99, column: 10, scope: !171)
!176 = !DILocation(line: 99, column: 14, scope: !171)
!177 = !DILocation(line: 100, column: 17, scope: !171)
!178 = !DILocation(line: 100, column: 10, scope: !171)
!179 = !DILocation(line: 100, column: 15, scope: !171)
!180 = !DILocation(line: 101, column: 17, scope: !171)
!181 = !DILocation(line: 101, column: 10, scope: !171)
!182 = !DILocation(line: 101, column: 15, scope: !171)
!183 = !DILocation(line: 102, column: 17, scope: !171)
!184 = !DILocation(line: 102, column: 24, scope: !171)
!185 = !DILocation(line: 103, column: 17, scope: !186)
!186 = distinct !DILexicalBlock(scope: !171, file: !1, line: 103, column: 17)
!187 = !DILocation(line: 103, column: 30, scope: !186)
!188 = !DILocation(line: 103, column: 17, scope: !171)
!189 = !DILocation(line: 104, column: 17, scope: !186)
!190 = !DILocation(line: 105, column: 23, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !1, line: 105, column: 22)
!192 = !DILocation(line: 105, column: 22, scope: !186)
!193 = !DILocation(line: 106, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 105, column: 38)
!195 = !DILocation(line: 107, column: 13, scope: !194)
!196 = !DILocation(line: 0, scope: !186)
!197 = !DILocation(line: 108, column: 14, scope: !198)
!198 = distinct !DILexicalBlock(scope: !171, file: !1, line: 108, column: 10)
!199 = !DILocation(line: 108, column: 18, scope: !198)
!200 = !DILocation(line: 108, column: 10, scope: !171)
!201 = !DILocation(line: 109, column: 9, scope: !198)
!202 = !DILocation(line: 109, column: 15, scope: !198)
!203 = !DILocation(line: 110, column: 31, scope: !171)
!204 = !DILocation(line: 110, column: 20, scope: !171)
!205 = !DILocation(line: 110, column: 13, scope: !171)
!206 = !DILocation(line: 0, scope: !168)
!207 = !DILocation(line: 0, scope: !117)
!208 = !DILocation(line: 114, column: 1, scope: !105)
