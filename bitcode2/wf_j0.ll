; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_j0.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_j0.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"j0f\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"y0f\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @j0f(float) local_unnamed_addr #0 !dbg !18 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call float @__ieee754_j0f(float %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %40, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %40, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = tail call float @fabsf(float %0) #5, !dbg !48
  %12 = fcmp ogt float %11, 0x434921FB60000000, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %12, label %13, label %40, !dbg !51

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !52
  store i32 5, i32* %14, align 8, !dbg !54, !tbaa !55
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !63
  store i32 0, i32* %16, align 8, !dbg !64, !tbaa !65
  %17 = fpext float %0 to double, !dbg !66
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !67
  store double %17, double* %18, align 8, !dbg !68, !tbaa !69
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !70
  store double %17, double* %19, align 8, !dbg !71, !tbaa !72
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !73
  store double 0.000000e+00, double* %20, align 8, !dbg !74, !tbaa !75
  %21 = load i32, i32* @__fdlib_version, align 4, !dbg !76, !tbaa !41
  %22 = icmp eq i32 %21, 2, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br i1 %22, label %23, label %25, !dbg !79

; <label>:23:                                     ; preds = %13
  %24 = tail call i32* @__errno() #5, !dbg !80
  br label %30, !dbg !80

; <label>:25:                                     ; preds = %13
  %26 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !82
  %27 = icmp eq i32 %26, 0, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %27, label %28, label %32, !dbg !84

; <label>:28:                                     ; preds = %25
  %29 = call i32* @__errno() #5, !dbg !85
  br label %30, !dbg !87

; <label>:30:                                     ; preds = %23, %28
  %31 = phi i32* [ %29, %28 ], [ %24, %23 ]
  store i32 34, i32* %31, align 4, !dbg !88, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %32, !dbg !90

; <label>:32:                                     ; preds = %30, %25
  %33 = load i32, i32* %16, align 8, !dbg !90, !tbaa !65
  %34 = icmp eq i32 %33, 0, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %34, label %37, label %35, !dbg !93

; <label>:35:                                     ; preds = %32
  %36 = call i32* @__errno() #5, !dbg !94
  store i32 %33, i32* %36, align 4, !dbg !95, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br label %37, !dbg !94

; <label>:37:                                     ; preds = %32, %35
  %38 = load double, double* %20, align 8, !dbg !96, !tbaa !75
  %39 = fptrunc double %38 to float, !dbg !97
  br label %40, !dbg !98

; <label>:40:                                     ; preds = %10, %1, %7, %37
  %41 = phi float [ %39, %37 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  ret float %41, !dbg !101
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_j0f(float) local_unnamed_addr #2

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
define dso_local float @y0f(float) local_unnamed_addr #0 !dbg !102 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !108
  %4 = tail call float @__ieee754_y0f(float %0) #5, !dbg !109
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !111, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %6, label %71, label %7, !dbg !114

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyf(float %0) #5, !dbg !115
  %9 = icmp eq i32 %8, 0, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %9, label %71, label %10, !dbg !116

; <label>:10:                                     ; preds = %7
  %11 = fcmp ugt float %0, 0.000000e+00, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %11, label %42, label %12, !dbg !119

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !120
  store i32 1, i32* %13, align 8, !dbg !122, !tbaa !55
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !123
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8, !dbg !124, !tbaa !62
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !125
  store i32 0, i32* %15, align 8, !dbg !126, !tbaa !65
  %16 = fpext float %0 to double, !dbg !127
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !128
  store double %16, double* %17, align 8, !dbg !129, !tbaa !69
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !130
  store double %16, double* %18, align 8, !dbg !131, !tbaa !72
  %19 = load i32, i32* @__fdlib_version, align 4, !dbg !132, !tbaa !41
  %20 = icmp eq i32 %19, 0, !dbg !134
  %21 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %20, label %22, label %23, !dbg !136

; <label>:22:                                     ; preds = %12
  store double 0xC7EFFFFFE0000000, double* %21, align 8, !dbg !137, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %27, !dbg !139

; <label>:23:                                     ; preds = %12
  store double 0xFFF0000000000000, double* %21, align 8, !dbg !140, !tbaa !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %24 = icmp eq i32 %19, 2, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br i1 %24, label %25, label %27, !dbg !139

; <label>:25:                                     ; preds = %23
  %26 = tail call i32* @__errno() #5, !dbg !143
  br label %32, !dbg !143

; <label>:27:                                     ; preds = %22, %23
  %28 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !145
  %29 = icmp eq i32 %28, 0, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %29, label %30, label %34, !dbg !147

; <label>:30:                                     ; preds = %27
  %31 = call i32* @__errno() #5, !dbg !148
  br label %32, !dbg !150

; <label>:32:                                     ; preds = %25, %30
  %33 = phi i32* [ %31, %30 ], [ %26, %25 ]
  store i32 33, i32* %33, align 4, !dbg !151, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br label %34, !dbg !152

; <label>:34:                                     ; preds = %32, %27
  %35 = load i32, i32* %15, align 8, !dbg !152, !tbaa !65
  %36 = icmp eq i32 %35, 0, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br i1 %36, label %39, label %37, !dbg !155

; <label>:37:                                     ; preds = %34
  %38 = call i32* @__errno() #5, !dbg !156
  store i32 %35, i32* %38, align 4, !dbg !157, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br label %39, !dbg !156

; <label>:39:                                     ; preds = %34, %37
  %40 = load double, double* %21, align 8, !dbg !158, !tbaa !75
  %41 = fptrunc double %40 to float, !dbg !159
  br label %71, !dbg !160

; <label>:42:                                     ; preds = %10
  %43 = fcmp ogt float %0, 0x434921FB60000000, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  br i1 %43, label %44, label %71, !dbg !163

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !164
  store i32 5, i32* %45, align 8, !dbg !166, !tbaa !55
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !167
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %46, align 8, !dbg !168, !tbaa !62
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !169
  store i32 0, i32* %47, align 8, !dbg !170, !tbaa !65
  %48 = fpext float %0 to double, !dbg !171
  %49 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !172
  store double %48, double* %49, align 8, !dbg !173, !tbaa !69
  %50 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !174
  store double %48, double* %50, align 8, !dbg !175, !tbaa !72
  %51 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !176
  store double 0.000000e+00, double* %51, align 8, !dbg !177, !tbaa !75
  %52 = load i32, i32* @__fdlib_version, align 4, !dbg !178, !tbaa !41
  %53 = icmp eq i32 %52, 2, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %53, label %54, label %56, !dbg !181

; <label>:54:                                     ; preds = %44
  %55 = tail call i32* @__errno() #5, !dbg !182
  br label %61, !dbg !182

; <label>:56:                                     ; preds = %44
  %57 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !183
  %58 = icmp eq i32 %57, 0, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %58, label %59, label %63, !dbg !185

; <label>:59:                                     ; preds = %56
  %60 = call i32* @__errno() #5, !dbg !186
  br label %61, !dbg !188

; <label>:61:                                     ; preds = %54, %59
  %62 = phi i32* [ %60, %59 ], [ %55, %54 ]
  store i32 34, i32* %62, align 4, !dbg !189, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br label %63, !dbg !190

; <label>:63:                                     ; preds = %61, %56
  %64 = load i32, i32* %47, align 8, !dbg !190, !tbaa !65
  %65 = icmp eq i32 %64, 0, !dbg !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %65, label %68, label %66, !dbg !193

; <label>:66:                                     ; preds = %63
  %67 = call i32* @__errno() #5, !dbg !194
  store i32 %64, i32* %67, align 4, !dbg !195, !tbaa !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br label %68, !dbg !194

; <label>:68:                                     ; preds = %63, %66
  %69 = load double, double* %51, align 8, !dbg !196, !tbaa !75
  %70 = fptrunc double %69 to float, !dbg !197
  br label %71, !dbg !198

; <label>:71:                                     ; preds = %42, %1, %7, %68, %39
  %72 = phi float [ %41, %39 ], [ %70, %68 ], [ %4, %7 ], [ %4, %1 ], [ %4, %42 ], !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  ret float %72, !dbg !201
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_y0f(float) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/wf_j0.c", directory: "/root/.unikraft/apps/redis/build")
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
!18 = distinct !DISubprogram(name: "j0f", scope: !1, file: !1, line: 24, type: !19, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !{!22, !23, !34}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 24, type: !12)
!23 = !DILocalVariable(name: "exc", scope: !18, file: !1, line: 33, type: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !25)
!25 = !{!26, !27, !30, !31, !32, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !24, file: !4, line: 581, baseType: !5, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !24, file: !4, line: 582, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !24, file: !4, line: 583, baseType: !13, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !24, file: !4, line: 584, baseType: !13, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !24, file: !4, line: 585, baseType: !13, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !24, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!34 = !DILocalVariable(name: "z", scope: !18, file: !1, line: 34, type: !12)
!35 = !DILocation(line: 24, column: 18, scope: !18)
!36 = !DILocation(line: 33, column: 2, scope: !18)
!37 = !DILocation(line: 34, column: 12, scope: !18)
!38 = !DILocation(line: 34, column: 8, scope: !18)
!39 = !DILocation(line: 35, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !18, file: !1, line: 35, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 35, column: 18, scope: !40)
!45 = !DILocation(line: 35, column: 28, scope: !40)
!46 = !DILocation(line: 35, column: 31, scope: !40)
!47 = !DILocation(line: 35, column: 5, scope: !18)
!48 = !DILocation(line: 36, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 5)
!50 = !DILocation(line: 36, column: 13, scope: !49)
!51 = !DILocation(line: 36, column: 5, scope: !18)
!52 = !DILocation(line: 38, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 36, column: 30)
!54 = !DILocation(line: 38, column: 22, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !42, i64 0}
!58 = !{!"any pointer", !42, i64 0}
!59 = !{!"double", !42, i64 0}
!60 = !DILocation(line: 39, column: 17, scope: !53)
!61 = !DILocation(line: 39, column: 22, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 40, column: 10, scope: !53)
!64 = !DILocation(line: 40, column: 14, scope: !53)
!65 = !{!56, !57, i64 40}
!66 = !DILocation(line: 41, column: 28, scope: !53)
!67 = !DILocation(line: 41, column: 21, scope: !53)
!68 = !DILocation(line: 41, column: 26, scope: !53)
!69 = !{!56, !59, i64 24}
!70 = !DILocation(line: 41, column: 10, scope: !53)
!71 = !DILocation(line: 41, column: 15, scope: !53)
!72 = !{!56, !59, i64 16}
!73 = !DILocation(line: 42, column: 17, scope: !53)
!74 = !DILocation(line: 42, column: 24, scope: !53)
!75 = !{!56, !59, i64 32}
!76 = !DILocation(line: 43, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 17)
!78 = !DILocation(line: 43, column: 30, scope: !77)
!79 = !DILocation(line: 43, column: 17, scope: !53)
!80 = !DILocation(line: 44, column: 16, scope: !77)
!81 = !DILocation(line: 33, column: 19, scope: !18)
!82 = !DILocation(line: 45, column: 23, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !1, line: 45, column: 22)
!84 = !DILocation(line: 45, column: 22, scope: !77)
!85 = !DILocation(line: 46, column: 16, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 45, column: 38)
!87 = !DILocation(line: 47, column: 13, scope: !86)
!88 = !DILocation(line: 0, scope: !77)
!89 = !{!57, !57, i64 0}
!90 = !DILocation(line: 48, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !53, file: !1, line: 48, column: 10)
!92 = !DILocation(line: 48, column: 18, scope: !91)
!93 = !DILocation(line: 48, column: 10, scope: !53)
!94 = !DILocation(line: 49, column: 9, scope: !91)
!95 = !DILocation(line: 49, column: 15, scope: !91)
!96 = !DILocation(line: 50, column: 31, scope: !53)
!97 = !DILocation(line: 50, column: 20, scope: !53)
!98 = !DILocation(line: 50, column: 13, scope: !53)
!99 = !DILocation(line: 0, scope: !49)
!100 = !DILocation(line: 0, scope: !40)
!101 = !DILocation(line: 54, column: 1, scope: !18)
!102 = distinct !DISubprogram(name: "y0f", scope: !1, file: !1, line: 57, type: !19, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !103)
!103 = !{!104, !105, !106}
!104 = !DILocalVariable(name: "x", arg: 1, scope: !102, file: !1, line: 57, type: !12)
!105 = !DILocalVariable(name: "z", scope: !102, file: !1, line: 66, type: !12)
!106 = !DILocalVariable(name: "exc", scope: !102, file: !1, line: 67, type: !24)
!107 = !DILocation(line: 57, column: 18, scope: !102)
!108 = !DILocation(line: 67, column: 2, scope: !102)
!109 = !DILocation(line: 68, column: 6, scope: !102)
!110 = !DILocation(line: 66, column: 8, scope: !102)
!111 = !DILocation(line: 69, column: 5, scope: !112)
!112 = distinct !DILexicalBlock(scope: !102, file: !1, line: 69, column: 5)
!113 = !DILocation(line: 69, column: 18, scope: !112)
!114 = !DILocation(line: 69, column: 28, scope: !112)
!115 = !DILocation(line: 69, column: 31, scope: !112)
!116 = !DILocation(line: 69, column: 5, scope: !102)
!117 = !DILocation(line: 70, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !102, file: !1, line: 70, column: 12)
!119 = !DILocation(line: 70, column: 12, scope: !102)
!120 = !DILocation(line: 78, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 70, column: 28)
!122 = !DILocation(line: 78, column: 15, scope: !121)
!123 = !DILocation(line: 79, column: 10, scope: !121)
!124 = !DILocation(line: 79, column: 15, scope: !121)
!125 = !DILocation(line: 80, column: 10, scope: !121)
!126 = !DILocation(line: 80, column: 14, scope: !121)
!127 = !DILocation(line: 81, column: 28, scope: !121)
!128 = !DILocation(line: 81, column: 21, scope: !121)
!129 = !DILocation(line: 81, column: 26, scope: !121)
!130 = !DILocation(line: 81, column: 10, scope: !121)
!131 = !DILocation(line: 81, column: 15, scope: !121)
!132 = !DILocation(line: 82, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !1, line: 82, column: 10)
!134 = !DILocation(line: 82, column: 23, scope: !133)
!135 = !DILocation(line: 0, scope: !133)
!136 = !DILocation(line: 82, column: 10, scope: !121)
!137 = !DILocation(line: 83, column: 20, scope: !133)
!138 = !DILocation(line: 83, column: 9, scope: !133)
!139 = !DILocation(line: 86, column: 10, scope: !121)
!140 = !DILocation(line: 85, column: 20, scope: !133)
!141 = !DILocation(line: 86, column: 23, scope: !142)
!142 = distinct !DILexicalBlock(scope: !121, file: !1, line: 86, column: 10)
!143 = !DILocation(line: 87, column: 9, scope: !142)
!144 = !DILocation(line: 67, column: 19, scope: !102)
!145 = !DILocation(line: 88, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 88, column: 15)
!147 = !DILocation(line: 88, column: 15, scope: !142)
!148 = !DILocation(line: 89, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 88, column: 31)
!150 = !DILocation(line: 90, column: 6, scope: !149)
!151 = !DILocation(line: 0, scope: !142)
!152 = !DILocation(line: 91, column: 14, scope: !153)
!153 = distinct !DILexicalBlock(scope: !121, file: !1, line: 91, column: 10)
!154 = !DILocation(line: 91, column: 18, scope: !153)
!155 = !DILocation(line: 91, column: 10, scope: !121)
!156 = !DILocation(line: 92, column: 9, scope: !153)
!157 = !DILocation(line: 92, column: 15, scope: !153)
!158 = !DILocation(line: 93, column: 31, scope: !121)
!159 = !DILocation(line: 93, column: 20, scope: !121)
!160 = !DILocation(line: 93, column: 13, scope: !121)
!161 = !DILocation(line: 95, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !102, file: !1, line: 95, column: 5)
!163 = !DILocation(line: 95, column: 5, scope: !102)
!164 = !DILocation(line: 97, column: 17, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 95, column: 23)
!166 = !DILocation(line: 97, column: 22, scope: !165)
!167 = !DILocation(line: 98, column: 17, scope: !165)
!168 = !DILocation(line: 98, column: 22, scope: !165)
!169 = !DILocation(line: 99, column: 10, scope: !165)
!170 = !DILocation(line: 99, column: 14, scope: !165)
!171 = !DILocation(line: 100, column: 28, scope: !165)
!172 = !DILocation(line: 100, column: 21, scope: !165)
!173 = !DILocation(line: 100, column: 26, scope: !165)
!174 = !DILocation(line: 100, column: 10, scope: !165)
!175 = !DILocation(line: 100, column: 15, scope: !165)
!176 = !DILocation(line: 101, column: 17, scope: !165)
!177 = !DILocation(line: 101, column: 24, scope: !165)
!178 = !DILocation(line: 102, column: 17, scope: !179)
!179 = distinct !DILexicalBlock(scope: !165, file: !1, line: 102, column: 17)
!180 = !DILocation(line: 102, column: 30, scope: !179)
!181 = !DILocation(line: 102, column: 17, scope: !165)
!182 = !DILocation(line: 103, column: 17, scope: !179)
!183 = !DILocation(line: 104, column: 23, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 104, column: 22)
!185 = !DILocation(line: 104, column: 22, scope: !179)
!186 = !DILocation(line: 105, column: 17, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 104, column: 38)
!188 = !DILocation(line: 106, column: 13, scope: !187)
!189 = !DILocation(line: 0, scope: !179)
!190 = !DILocation(line: 107, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !165, file: !1, line: 107, column: 10)
!192 = !DILocation(line: 107, column: 18, scope: !191)
!193 = !DILocation(line: 107, column: 10, scope: !165)
!194 = !DILocation(line: 108, column: 9, scope: !191)
!195 = !DILocation(line: 108, column: 15, scope: !191)
!196 = !DILocation(line: 109, column: 31, scope: !165)
!197 = !DILocation(line: 109, column: 20, scope: !165)
!198 = !DILocation(line: 109, column: 13, scope: !165)
!199 = !DILocation(line: 0, scope: !162)
!200 = !DILocation(line: 0, scope: !112)
!201 = !DILocation(line: 113, column: 1, scope: !102)
