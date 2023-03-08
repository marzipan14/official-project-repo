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
  br i1 %7, label %42, label %8, !dbg !47

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !48
  br i1 %10, label %42, label %11, !dbg !49

; <label>:11:                                     ; preds = %8
  %12 = tail call float @fabsf(float %1) #5, !dbg !50
  %13 = fcmp ogt float %12, 0x434921FB60000000, !dbg !52
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
  br i1 %24, label %25, label %27, !dbg !82

; <label>:25:                                     ; preds = %14
  %26 = tail call i32* @__errno() #5, !dbg !83
  br label %32, !dbg !83

; <label>:27:                                     ; preds = %14
  %28 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !85
  %29 = icmp eq i32 %28, 0, !dbg !85
  br i1 %29, label %30, label %34, !dbg !87

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !88
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 34, i32* %33, align 4, !dbg !91, !tbaa !92
  br label %34, !dbg !93

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %17, align 8, !dbg !93, !tbaa !67
  %36 = icmp eq i32 %35, 0, !dbg !95
  br i1 %36, label %39, label %37, !dbg !96

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !97
  store i32 %35, i32* %38, align 4, !dbg !98, !tbaa !92
  br label %39, !dbg !97

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %22, align 8, !dbg !99, !tbaa !78
  %41 = fptrunc double %40 to float, !dbg !100
  br label %42, !dbg !101

; <label>:42:                                     ; preds = %11, %2, %8, %39
  %43 = phi float [ %41, %39 ], [ %5, %8 ], [ %5, %2 ], [ %5, %11 ], !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  ret float %43, !dbg !103
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
define dso_local float @ynf(i32, float) local_unnamed_addr #0 !dbg !104 {
  %3 = alloca %struct.exception, align 8
  %4 = bitcast %struct.exception* %3 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %4) #4, !dbg !112
  %5 = tail call float @__ieee754_ynf(i32 %0, float %1) #5, !dbg !113
  %6 = load i32, i32* @__fdlib_version, align 4, !dbg !115, !tbaa !43
  %7 = icmp eq i32 %6, -1, !dbg !117
  br i1 %7, label %73, label %8, !dbg !118

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__fpclassifyf(float %1) #5, !dbg !119
  %10 = icmp eq i32 %9, 0, !dbg !119
  br i1 %10, label %73, label %11, !dbg !120

; <label>:11:                                     ; preds = %8
  %12 = fcmp ugt float %1, 0.000000e+00, !dbg !121
  br i1 %12, label %43, label %13, !dbg !123

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !124
  store i32 1, i32* %14, align 8, !dbg !126, !tbaa !57
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !127
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8, !dbg !128, !tbaa !64
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !129
  store i32 0, i32* %16, align 8, !dbg !130, !tbaa !67
  %17 = sitofp i32 %0 to double, !dbg !131
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !132
  store double %17, double* %18, align 8, !dbg !133, !tbaa !71
  %19 = fpext float %1 to double, !dbg !134
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !135
  store double %19, double* %20, align 8, !dbg !136, !tbaa !75
  %21 = load i32, i32* @__fdlib_version, align 4, !dbg !137, !tbaa !43
  %22 = icmp eq i32 %21, 0, !dbg !139
  %23 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !140
  %24 = select i1 %22, double 0xC7EFFFFFE0000000, double 0xFFF0000000000000, !dbg !141
  store double %24, double* %23, align 8, !dbg !140, !tbaa !78
  %25 = icmp eq i32 %21, 2, !dbg !142
  br i1 %25, label %26, label %28, !dbg !144

; <label>:26:                                     ; preds = %13
  %27 = tail call i32* @__errno() #5, !dbg !145
  br label %33, !dbg !145

; <label>:28:                                     ; preds = %13
  %29 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !147
  %30 = icmp eq i32 %29, 0, !dbg !147
  br i1 %30, label %31, label %35, !dbg !149

; <label>:31:                                     ; preds = %28
  %32 = call i32* @__errno() #5, !dbg !150
  br label %33, !dbg !152

; <label>:33:                                     ; preds = %26, %31
  %34 = phi i32* [ %32, %31 ], [ %27, %26 ]
  store i32 33, i32* %34, align 4, !dbg !153, !tbaa !92
  br label %35, !dbg !154

; <label>:35:                                     ; preds = %33, %28
  %36 = load i32, i32* %16, align 8, !dbg !154, !tbaa !67
  %37 = icmp eq i32 %36, 0, !dbg !156
  br i1 %37, label %40, label %38, !dbg !157

; <label>:38:                                     ; preds = %35
  %39 = call i32* @__errno() #5, !dbg !158
  store i32 %36, i32* %39, align 4, !dbg !159, !tbaa !92
  br label %40, !dbg !158

; <label>:40:                                     ; preds = %35, %38
  %41 = load double, double* %23, align 8, !dbg !160, !tbaa !78
  %42 = fptrunc double %41 to float, !dbg !161
  br label %73, !dbg !162

; <label>:43:                                     ; preds = %11
  %44 = fcmp ogt float %1, 0x434921FB60000000, !dbg !163
  br i1 %44, label %45, label %73, !dbg !165

; <label>:45:                                     ; preds = %43
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 0, !dbg !166
  store i32 5, i32* %46, align 8, !dbg !168, !tbaa !57
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 1, !dbg !169
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %47, align 8, !dbg !170, !tbaa !64
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 5, !dbg !171
  store i32 0, i32* %48, align 8, !dbg !172, !tbaa !67
  %49 = sitofp i32 %0 to double, !dbg !173
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 2, !dbg !174
  store double %49, double* %50, align 8, !dbg !175, !tbaa !71
  %51 = fpext float %1 to double, !dbg !176
  %52 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 3, !dbg !177
  store double %51, double* %52, align 8, !dbg !178, !tbaa !75
  %53 = getelementptr inbounds %struct.exception, %struct.exception* %3, i64 0, i32 4, !dbg !179
  store double 0.000000e+00, double* %53, align 8, !dbg !180, !tbaa !78
  %54 = load i32, i32* @__fdlib_version, align 4, !dbg !181, !tbaa !43
  %55 = icmp eq i32 %54, 2, !dbg !183
  br i1 %55, label %56, label %58, !dbg !184

; <label>:56:                                     ; preds = %45
  %57 = tail call i32* @__errno() #5, !dbg !185
  br label %63, !dbg !185

; <label>:58:                                     ; preds = %45
  %59 = call i32 @matherr(%struct.exception* nonnull %3) #5, !dbg !186
  %60 = icmp eq i32 %59, 0, !dbg !186
  br i1 %60, label %61, label %65, !dbg !188

; <label>:61:                                     ; preds = %58
  %62 = call i32* @__errno() #5, !dbg !189
  br label %63, !dbg !191

; <label>:63:                                     ; preds = %56, %61
  %64 = phi i32* [ %62, %61 ], [ %57, %56 ]
  store i32 34, i32* %64, align 4, !dbg !192, !tbaa !92
  br label %65, !dbg !193

; <label>:65:                                     ; preds = %63, %58
  %66 = load i32, i32* %48, align 8, !dbg !193, !tbaa !67
  %67 = icmp eq i32 %66, 0, !dbg !195
  br i1 %67, label %70, label %68, !dbg !196

; <label>:68:                                     ; preds = %65
  %69 = call i32* @__errno() #5, !dbg !197
  store i32 %66, i32* %69, align 4, !dbg !198, !tbaa !92
  br label %70, !dbg !197

; <label>:70:                                     ; preds = %65, %68
  %71 = load double, double* %53, align 8, !dbg !199, !tbaa !78
  %72 = fptrunc double %71 to float, !dbg !200
  br label %73, !dbg !201

; <label>:73:                                     ; preds = %43, %2, %8, %70, %40
  %74 = phi float [ %42, %40 ], [ %72, %70 ], [ %5, %8 ], [ %5, %2 ], [ %5, %43 ], !dbg !202
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %4) #4, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  ret float %74, !dbg !203
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
!103 = !DILocation(line: 53, column: 1, scope: !18)
!104 = distinct !DISubprogram(name: "ynf", scope: !1, file: !1, line: 56, type: !19, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(name: "n", arg: 1, scope: !104, file: !1, line: 56, type: !5)
!107 = !DILocalVariable(name: "x", arg: 2, scope: !104, file: !1, line: 56, type: !12)
!108 = !DILocalVariable(name: "z", scope: !104, file: !1, line: 65, type: !12)
!109 = !DILocalVariable(name: "exc", scope: !104, file: !1, line: 66, type: !26)
!110 = !DILocation(line: 56, column: 16, scope: !104)
!111 = !DILocation(line: 56, column: 25, scope: !104)
!112 = !DILocation(line: 66, column: 2, scope: !104)
!113 = !DILocation(line: 67, column: 6, scope: !104)
!114 = !DILocation(line: 65, column: 8, scope: !104)
!115 = !DILocation(line: 68, column: 5, scope: !116)
!116 = distinct !DILexicalBlock(scope: !104, file: !1, line: 68, column: 5)
!117 = !DILocation(line: 68, column: 18, scope: !116)
!118 = !DILocation(line: 68, column: 28, scope: !116)
!119 = !DILocation(line: 68, column: 31, scope: !116)
!120 = !DILocation(line: 68, column: 5, scope: !104)
!121 = !DILocation(line: 69, column: 14, scope: !122)
!122 = distinct !DILexicalBlock(scope: !104, file: !1, line: 69, column: 12)
!123 = !DILocation(line: 69, column: 12, scope: !104)
!124 = !DILocation(line: 77, column: 10, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 69, column: 28)
!126 = !DILocation(line: 77, column: 15, scope: !125)
!127 = !DILocation(line: 78, column: 10, scope: !125)
!128 = !DILocation(line: 78, column: 15, scope: !125)
!129 = !DILocation(line: 79, column: 10, scope: !125)
!130 = !DILocation(line: 79, column: 14, scope: !125)
!131 = !DILocation(line: 80, column: 17, scope: !125)
!132 = !DILocation(line: 80, column: 10, scope: !125)
!133 = !DILocation(line: 80, column: 15, scope: !125)
!134 = !DILocation(line: 81, column: 17, scope: !125)
!135 = !DILocation(line: 81, column: 10, scope: !125)
!136 = !DILocation(line: 81, column: 15, scope: !125)
!137 = !DILocation(line: 82, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !125, file: !1, line: 82, column: 10)
!139 = !DILocation(line: 82, column: 23, scope: !138)
!140 = !DILocation(line: 0, scope: !138)
!141 = !DILocation(line: 83, column: 10, scope: !138)
!142 = !DILocation(line: 86, column: 23, scope: !143)
!143 = distinct !DILexicalBlock(scope: !125, file: !1, line: 86, column: 10)
!144 = !DILocation(line: 86, column: 10, scope: !125)
!145 = !DILocation(line: 87, column: 10, scope: !143)
!146 = !DILocation(line: 66, column: 19, scope: !104)
!147 = !DILocation(line: 88, column: 16, scope: !148)
!148 = distinct !DILexicalBlock(scope: !143, file: !1, line: 88, column: 15)
!149 = !DILocation(line: 88, column: 15, scope: !143)
!150 = !DILocation(line: 89, column: 10, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 88, column: 31)
!152 = !DILocation(line: 90, column: 6, scope: !151)
!153 = !DILocation(line: 0, scope: !143)
!154 = !DILocation(line: 91, column: 14, scope: !155)
!155 = distinct !DILexicalBlock(scope: !125, file: !1, line: 91, column: 10)
!156 = !DILocation(line: 91, column: 18, scope: !155)
!157 = !DILocation(line: 91, column: 10, scope: !125)
!158 = !DILocation(line: 92, column: 9, scope: !155)
!159 = !DILocation(line: 92, column: 15, scope: !155)
!160 = !DILocation(line: 93, column: 31, scope: !125)
!161 = !DILocation(line: 93, column: 20, scope: !125)
!162 = !DILocation(line: 93, column: 13, scope: !125)
!163 = !DILocation(line: 95, column: 6, scope: !164)
!164 = distinct !DILexicalBlock(scope: !104, file: !1, line: 95, column: 5)
!165 = !DILocation(line: 95, column: 5, scope: !104)
!166 = !DILocation(line: 97, column: 17, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !1, line: 95, column: 23)
!168 = !DILocation(line: 97, column: 22, scope: !167)
!169 = !DILocation(line: 98, column: 17, scope: !167)
!170 = !DILocation(line: 98, column: 22, scope: !167)
!171 = !DILocation(line: 99, column: 10, scope: !167)
!172 = !DILocation(line: 99, column: 14, scope: !167)
!173 = !DILocation(line: 100, column: 17, scope: !167)
!174 = !DILocation(line: 100, column: 10, scope: !167)
!175 = !DILocation(line: 100, column: 15, scope: !167)
!176 = !DILocation(line: 101, column: 17, scope: !167)
!177 = !DILocation(line: 101, column: 10, scope: !167)
!178 = !DILocation(line: 101, column: 15, scope: !167)
!179 = !DILocation(line: 102, column: 17, scope: !167)
!180 = !DILocation(line: 102, column: 24, scope: !167)
!181 = !DILocation(line: 103, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !167, file: !1, line: 103, column: 17)
!183 = !DILocation(line: 103, column: 30, scope: !182)
!184 = !DILocation(line: 103, column: 17, scope: !167)
!185 = !DILocation(line: 104, column: 17, scope: !182)
!186 = !DILocation(line: 105, column: 23, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !1, line: 105, column: 22)
!188 = !DILocation(line: 105, column: 22, scope: !182)
!189 = !DILocation(line: 106, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 105, column: 38)
!191 = !DILocation(line: 107, column: 13, scope: !190)
!192 = !DILocation(line: 0, scope: !182)
!193 = !DILocation(line: 108, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !167, file: !1, line: 108, column: 10)
!195 = !DILocation(line: 108, column: 18, scope: !194)
!196 = !DILocation(line: 108, column: 10, scope: !167)
!197 = !DILocation(line: 109, column: 9, scope: !194)
!198 = !DILocation(line: 109, column: 15, scope: !194)
!199 = !DILocation(line: 110, column: 31, scope: !167)
!200 = !DILocation(line: 110, column: 20, scope: !167)
!201 = !DILocation(line: 110, column: 13, scope: !167)
!202 = !DILocation(line: 0, scope: !164)
!203 = !DILocation(line: 114, column: 1, scope: !104)
