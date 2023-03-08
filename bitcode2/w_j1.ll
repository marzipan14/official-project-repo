; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_j1.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_j1.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.exception = type { i32, i8*, double, double, double, i32 }

@__fdlib_version = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"j1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"y1\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @j1(double) local_unnamed_addr #0 !dbg !17 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !36
  %4 = tail call double @__ieee754_j1(double %0) #5, !dbg !37
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !39, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %6, label %38, label %7, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !46
  %9 = icmp eq i32 %8, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %9, label %38, label %10, !dbg !47

; <label>:10:                                     ; preds = %7
  %11 = tail call double @fabs(double %0) #5, !dbg !48
  %12 = fcmp ogt double %11, 0x434921FB54442D18, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %12, label %13, label %38, !dbg !51

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !52
  store i32 5, i32* %14, align 8, !dbg !54, !tbaa !55
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !60
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %15, align 8, !dbg !61, !tbaa !62
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !63
  store i32 0, i32* %16, align 8, !dbg !64, !tbaa !65
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !66
  store double %0, double* %17, align 8, !dbg !67, !tbaa !68
  %18 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !69
  store double %0, double* %18, align 8, !dbg !70, !tbaa !71
  %19 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !72
  store double 0.000000e+00, double* %19, align 8, !dbg !73, !tbaa !74
  %20 = load i32, i32* @__fdlib_version, align 4, !dbg !75, !tbaa !41
  %21 = icmp eq i32 %20, 2, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %21, label %22, label %24, !dbg !78

; <label>:22:                                     ; preds = %13
  %23 = tail call i32* @__errno() #5, !dbg !79
  br label %29, !dbg !79

; <label>:24:                                     ; preds = %13
  %25 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !81
  %26 = icmp eq i32 %25, 0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %26, label %27, label %31, !dbg !83

; <label>:27:                                     ; preds = %24
  %28 = call i32* @__errno() #5, !dbg !84
  br label %29, !dbg !86

; <label>:29:                                     ; preds = %22, %27
  %30 = phi i32* [ %28, %27 ], [ %23, %22 ]
  store i32 34, i32* %30, align 4, !dbg !87, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br label %31, !dbg !89

; <label>:31:                                     ; preds = %29, %24
  %32 = load i32, i32* %16, align 8, !dbg !89, !tbaa !65
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
  br label %38, !dbg !96

; <label>:38:                                     ; preds = %10, %1, %7, %36
  %39 = phi double [ %37, %36 ], [ %4, %7 ], [ %4, %1 ], [ %4, %10 ], !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  ret double %39, !dbg !99
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_j1(double) local_unnamed_addr #2

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
define dso_local double @y1(double) local_unnamed_addr #0 !dbg !100 {
  %2 = alloca %struct.exception, align 8
  %3 = bitcast %struct.exception* %2 to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %3) #4, !dbg !106
  %4 = tail call double @__ieee754_y1(double %0) #5, !dbg !107
  %5 = load i32, i32* @__fdlib_version, align 4, !dbg !109, !tbaa !41
  %6 = icmp eq i32 %5, -1, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %6, label %67, label %7, !dbg !112

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @__fpclassifyd(double %0) #5, !dbg !113
  %9 = icmp eq i32 %8, 0, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %9, label %67, label %10, !dbg !114

; <label>:10:                                     ; preds = %7
  %11 = fcmp ugt double %0, 0.000000e+00, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %11, label %40, label %12, !dbg !117

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !118
  store i32 1, i32* %13, align 8, !dbg !120, !tbaa !55
  %14 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !121
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8, !dbg !122, !tbaa !62
  %15 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !123
  store i32 0, i32* %15, align 8, !dbg !124, !tbaa !65
  %16 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !125
  store double %0, double* %16, align 8, !dbg !126, !tbaa !68
  %17 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !127
  store double %0, double* %17, align 8, !dbg !128, !tbaa !71
  %18 = load i32, i32* @__fdlib_version, align 4, !dbg !129, !tbaa !41
  %19 = icmp eq i32 %18, 0, !dbg !131
  %20 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !133
  br i1 %19, label %21, label %22, !dbg !133

; <label>:21:                                     ; preds = %12
  store double 0xC7EFFFFFE0000000, double* %20, align 8, !dbg !134, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %26, !dbg !136

; <label>:22:                                     ; preds = %12
  store double 0xFFF0000000000000, double* %20, align 8, !dbg !137, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %23 = icmp eq i32 %18, 2, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %23, label %24, label %26, !dbg !136

; <label>:24:                                     ; preds = %22
  %25 = tail call i32* @__errno() #5, !dbg !140
  br label %31, !dbg !140

; <label>:26:                                     ; preds = %21, %22
  %27 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !142
  %28 = icmp eq i32 %27, 0, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %28, label %29, label %33, !dbg !144

; <label>:29:                                     ; preds = %26
  %30 = call i32* @__errno() #5, !dbg !145
  br label %31, !dbg !147

; <label>:31:                                     ; preds = %24, %29
  %32 = phi i32* [ %30, %29 ], [ %25, %24 ]
  store i32 33, i32* %32, align 4, !dbg !148, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br label %33, !dbg !149

; <label>:33:                                     ; preds = %31, %26
  %34 = load i32, i32* %15, align 8, !dbg !149, !tbaa !65
  %35 = icmp eq i32 %34, 0, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  br i1 %35, label %38, label %36, !dbg !152

; <label>:36:                                     ; preds = %33
  %37 = call i32* @__errno() #5, !dbg !153
  store i32 %34, i32* %37, align 4, !dbg !154, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br label %38, !dbg !153

; <label>:38:                                     ; preds = %33, %36
  %39 = load double, double* %20, align 8, !dbg !155, !tbaa !74
  br label %67, !dbg !156

; <label>:40:                                     ; preds = %10
  %41 = fcmp ogt double %0, 0x434921FB54442D18, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br i1 %41, label %42, label %67, !dbg !159

; <label>:42:                                     ; preds = %40
  %43 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 0, !dbg !160
  store i32 5, i32* %43, align 8, !dbg !162, !tbaa !55
  %44 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 1, !dbg !163
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8, !dbg !164, !tbaa !62
  %45 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 5, !dbg !165
  store i32 0, i32* %45, align 8, !dbg !166, !tbaa !65
  %46 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 3, !dbg !167
  store double %0, double* %46, align 8, !dbg !168, !tbaa !68
  %47 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 2, !dbg !169
  store double %0, double* %47, align 8, !dbg !170, !tbaa !71
  %48 = getelementptr inbounds %struct.exception, %struct.exception* %2, i64 0, i32 4, !dbg !171
  store double 0.000000e+00, double* %48, align 8, !dbg !172, !tbaa !74
  %49 = load i32, i32* @__fdlib_version, align 4, !dbg !173, !tbaa !41
  %50 = icmp eq i32 %49, 2, !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %50, label %51, label %53, !dbg !176

; <label>:51:                                     ; preds = %42
  %52 = tail call i32* @__errno() #5, !dbg !177
  br label %58, !dbg !177

; <label>:53:                                     ; preds = %42
  %54 = call i32 @matherr(%struct.exception* nonnull %2) #5, !dbg !178
  %55 = icmp eq i32 %54, 0, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %55, label %56, label %60, !dbg !180

; <label>:56:                                     ; preds = %53
  %57 = call i32* @__errno() #5, !dbg !181
  br label %58, !dbg !183

; <label>:58:                                     ; preds = %51, %56
  %59 = phi i32* [ %57, %56 ], [ %52, %51 ]
  store i32 34, i32* %59, align 4, !dbg !184, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br label %60, !dbg !185

; <label>:60:                                     ; preds = %58, %53
  %61 = load i32, i32* %45, align 8, !dbg !185, !tbaa !65
  %62 = icmp eq i32 %61, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %62, label %65, label %63, !dbg !188

; <label>:63:                                     ; preds = %60
  %64 = call i32* @__errno() #5, !dbg !189
  store i32 %61, i32* %64, align 4, !dbg !190, !tbaa !88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br label %65, !dbg !189

; <label>:65:                                     ; preds = %60, %63
  %66 = load double, double* %48, align 8, !dbg !191, !tbaa !74
  br label %67, !dbg !192

; <label>:67:                                     ; preds = %40, %1, %7, %65, %38
  %68 = phi double [ %39, %38 ], [ %66, %65 ], [ %4, %7 ], [ %4, %1 ], [ %4, %40 ], !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %3) #4, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  ret double %68, !dbg !195
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_y1(double) local_unnamed_addr #2

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/w_j1.c", directory: "/root/.unikraft/apps/redis/build")
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
!17 = distinct !DISubprogram(name: "j1", scope: !1, file: !1, line: 24, type: !18, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 24, type: !20)
!23 = !DILocalVariable(name: "z", scope: !17, file: !1, line: 33, type: !20)
!24 = !DILocalVariable(name: "exc", scope: !17, file: !1, line: 34, type: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception", file: !4, line: 578, size: 384, elements: !26)
!26 = !{!27, !28, !31, !32, !33, !34}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !4, line: 581, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !4, line: 582, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !25, file: !4, line: 583, baseType: !20, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !25, file: !4, line: 584, baseType: !20, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !25, file: !4, line: 585, baseType: !20, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !25, file: !4, line: 586, baseType: !5, size: 32, offset: 320)
!35 = !DILocation(line: 24, column: 19, scope: !17)
!36 = !DILocation(line: 34, column: 2, scope: !17)
!37 = !DILocation(line: 35, column: 6, scope: !17)
!38 = !DILocation(line: 33, column: 9, scope: !17)
!39 = !DILocation(line: 36, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !17, file: !1, line: 36, column: 5)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 36, column: 18, scope: !40)
!45 = !DILocation(line: 36, column: 28, scope: !40)
!46 = !DILocation(line: 36, column: 31, scope: !40)
!47 = !DILocation(line: 36, column: 5, scope: !17)
!48 = !DILocation(line: 37, column: 5, scope: !49)
!49 = distinct !DILexicalBlock(scope: !17, file: !1, line: 37, column: 5)
!50 = !DILocation(line: 37, column: 12, scope: !49)
!51 = !DILocation(line: 37, column: 5, scope: !17)
!52 = !DILocation(line: 39, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 37, column: 22)
!54 = !DILocation(line: 39, column: 22, scope: !53)
!55 = !{!56, !57, i64 0}
!56 = !{!"exception", !57, i64 0, !58, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !57, i64 40}
!57 = !{!"int", !42, i64 0}
!58 = !{!"any pointer", !42, i64 0}
!59 = !{!"double", !42, i64 0}
!60 = !DILocation(line: 40, column: 17, scope: !53)
!61 = !DILocation(line: 40, column: 22, scope: !53)
!62 = !{!56, !58, i64 8}
!63 = !DILocation(line: 41, column: 10, scope: !53)
!64 = !DILocation(line: 41, column: 14, scope: !53)
!65 = !{!56, !57, i64 40}
!66 = !DILocation(line: 42, column: 21, scope: !53)
!67 = !DILocation(line: 42, column: 26, scope: !53)
!68 = !{!56, !59, i64 24}
!69 = !DILocation(line: 42, column: 10, scope: !53)
!70 = !DILocation(line: 42, column: 15, scope: !53)
!71 = !{!56, !59, i64 16}
!72 = !DILocation(line: 43, column: 17, scope: !53)
!73 = !DILocation(line: 43, column: 24, scope: !53)
!74 = !{!56, !59, i64 32}
!75 = !DILocation(line: 44, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !53, file: !1, line: 44, column: 17)
!77 = !DILocation(line: 44, column: 30, scope: !76)
!78 = !DILocation(line: 44, column: 17, scope: !53)
!79 = !DILocation(line: 45, column: 17, scope: !76)
!80 = !DILocation(line: 34, column: 19, scope: !17)
!81 = !DILocation(line: 46, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 46, column: 22)
!83 = !DILocation(line: 46, column: 22, scope: !76)
!84 = !DILocation(line: 47, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 46, column: 38)
!86 = !DILocation(line: 48, column: 13, scope: !85)
!87 = !DILocation(line: 0, scope: !76)
!88 = !{!57, !57, i64 0}
!89 = !DILocation(line: 49, column: 14, scope: !90)
!90 = distinct !DILexicalBlock(scope: !53, file: !1, line: 49, column: 10)
!91 = !DILocation(line: 49, column: 18, scope: !90)
!92 = !DILocation(line: 49, column: 10, scope: !53)
!93 = !DILocation(line: 50, column: 9, scope: !90)
!94 = !DILocation(line: 50, column: 15, scope: !90)
!95 = !DILocation(line: 51, column: 24, scope: !53)
!96 = !DILocation(line: 51, column: 13, scope: !53)
!97 = !DILocation(line: 0, scope: !49)
!98 = !DILocation(line: 0, scope: !40)
!99 = !DILocation(line: 55, column: 1, scope: !17)
!100 = distinct !DISubprogram(name: "y1", scope: !1, file: !1, line: 58, type: !18, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !101)
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(name: "x", arg: 1, scope: !100, file: !1, line: 58, type: !20)
!103 = !DILocalVariable(name: "z", scope: !100, file: !1, line: 67, type: !20)
!104 = !DILocalVariable(name: "exc", scope: !100, file: !1, line: 68, type: !25)
!105 = !DILocation(line: 58, column: 19, scope: !100)
!106 = !DILocation(line: 68, column: 2, scope: !100)
!107 = !DILocation(line: 69, column: 6, scope: !100)
!108 = !DILocation(line: 67, column: 9, scope: !100)
!109 = !DILocation(line: 70, column: 5, scope: !110)
!110 = distinct !DILexicalBlock(scope: !100, file: !1, line: 70, column: 5)
!111 = !DILocation(line: 70, column: 18, scope: !110)
!112 = !DILocation(line: 70, column: 28, scope: !110)
!113 = !DILocation(line: 70, column: 31, scope: !110)
!114 = !DILocation(line: 70, column: 5, scope: !100)
!115 = !DILocation(line: 71, column: 14, scope: !116)
!116 = distinct !DILexicalBlock(scope: !100, file: !1, line: 71, column: 12)
!117 = !DILocation(line: 71, column: 12, scope: !100)
!118 = !DILocation(line: 79, column: 10, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 71, column: 21)
!120 = !DILocation(line: 79, column: 15, scope: !119)
!121 = !DILocation(line: 80, column: 10, scope: !119)
!122 = !DILocation(line: 80, column: 15, scope: !119)
!123 = !DILocation(line: 81, column: 10, scope: !119)
!124 = !DILocation(line: 81, column: 14, scope: !119)
!125 = !DILocation(line: 82, column: 21, scope: !119)
!126 = !DILocation(line: 82, column: 26, scope: !119)
!127 = !DILocation(line: 82, column: 10, scope: !119)
!128 = !DILocation(line: 82, column: 15, scope: !119)
!129 = !DILocation(line: 83, column: 10, scope: !130)
!130 = distinct !DILexicalBlock(scope: !119, file: !1, line: 83, column: 10)
!131 = !DILocation(line: 83, column: 23, scope: !130)
!132 = !DILocation(line: 0, scope: !130)
!133 = !DILocation(line: 83, column: 10, scope: !119)
!134 = !DILocation(line: 84, column: 20, scope: !130)
!135 = !DILocation(line: 84, column: 9, scope: !130)
!136 = !DILocation(line: 87, column: 10, scope: !119)
!137 = !DILocation(line: 86, column: 20, scope: !130)
!138 = !DILocation(line: 87, column: 23, scope: !139)
!139 = distinct !DILexicalBlock(scope: !119, file: !1, line: 87, column: 10)
!140 = !DILocation(line: 88, column: 9, scope: !139)
!141 = !DILocation(line: 68, column: 19, scope: !100)
!142 = !DILocation(line: 89, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 89, column: 15)
!144 = !DILocation(line: 89, column: 15, scope: !139)
!145 = !DILocation(line: 90, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 89, column: 31)
!147 = !DILocation(line: 91, column: 6, scope: !146)
!148 = !DILocation(line: 0, scope: !139)
!149 = !DILocation(line: 92, column: 14, scope: !150)
!150 = distinct !DILexicalBlock(scope: !119, file: !1, line: 92, column: 10)
!151 = !DILocation(line: 92, column: 18, scope: !150)
!152 = !DILocation(line: 92, column: 10, scope: !119)
!153 = !DILocation(line: 93, column: 9, scope: !150)
!154 = !DILocation(line: 93, column: 15, scope: !150)
!155 = !DILocation(line: 94, column: 24, scope: !119)
!156 = !DILocation(line: 94, column: 13, scope: !119)
!157 = !DILocation(line: 96, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !100, file: !1, line: 96, column: 5)
!159 = !DILocation(line: 96, column: 5, scope: !100)
!160 = !DILocation(line: 98, column: 17, scope: !161)
!161 = distinct !DILexicalBlock(scope: !158, file: !1, line: 96, column: 16)
!162 = !DILocation(line: 98, column: 22, scope: !161)
!163 = !DILocation(line: 99, column: 17, scope: !161)
!164 = !DILocation(line: 99, column: 22, scope: !161)
!165 = !DILocation(line: 100, column: 10, scope: !161)
!166 = !DILocation(line: 100, column: 14, scope: !161)
!167 = !DILocation(line: 101, column: 21, scope: !161)
!168 = !DILocation(line: 101, column: 26, scope: !161)
!169 = !DILocation(line: 101, column: 10, scope: !161)
!170 = !DILocation(line: 101, column: 15, scope: !161)
!171 = !DILocation(line: 102, column: 17, scope: !161)
!172 = !DILocation(line: 102, column: 24, scope: !161)
!173 = !DILocation(line: 103, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !161, file: !1, line: 103, column: 17)
!175 = !DILocation(line: 103, column: 30, scope: !174)
!176 = !DILocation(line: 103, column: 17, scope: !161)
!177 = !DILocation(line: 104, column: 17, scope: !174)
!178 = !DILocation(line: 105, column: 23, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 105, column: 22)
!180 = !DILocation(line: 105, column: 22, scope: !174)
!181 = !DILocation(line: 106, column: 17, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 105, column: 38)
!183 = !DILocation(line: 107, column: 13, scope: !182)
!184 = !DILocation(line: 0, scope: !174)
!185 = !DILocation(line: 108, column: 14, scope: !186)
!186 = distinct !DILexicalBlock(scope: !161, file: !1, line: 108, column: 10)
!187 = !DILocation(line: 108, column: 18, scope: !186)
!188 = !DILocation(line: 108, column: 10, scope: !161)
!189 = !DILocation(line: 109, column: 9, scope: !186)
!190 = !DILocation(line: 109, column: 15, scope: !186)
!191 = !DILocation(line: 110, column: 24, scope: !161)
!192 = !DILocation(line: 110, column: 13, scope: !161)
!193 = !DILocation(line: 0, scope: !158)
!194 = !DILocation(line: 0, scope: !110)
!195 = !DILocation(line: 114, column: 1, scope: !100)
