; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@locale_decimal_point = internal unnamed_addr global i8 46, align 1, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c\00", align 1
@__func__.set_number_format = private unnamed_addr constant [18 x i8] c"set_number_format\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"1 <= precision && precision <= 14\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Error: wide characters found or printf() bug.\00", align 1

; Function Attrs: noredzone nounwind
define dso_local double @fpconv_strtod(i8*, i8**) local_unnamed_addr #0 !dbg !13 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #5, !dbg !35
  %6 = bitcast i8** %4 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !37
  %7 = load i8, i8* @locale_decimal_point, align 1, !dbg !38, !tbaa !40
  %8 = icmp eq i8 %7, 46, !dbg !43
  br i1 %8, label %9, label %11, !dbg !44

; <label>:9:                                      ; preds = %2
  %10 = tail call double @strtod(i8* %0, i8** %1) #6, !dbg !45
  br label %60, !dbg !46

; <label>:11:                                     ; preds = %2, %21
  %12 = phi i8* [ %22, %21 ], [ %0, %2 ], !dbg !47
  %13 = load i8, i8* %12, align 1, !dbg !56, !tbaa !40
  %14 = add i8 %13, -48, !dbg !65
  %15 = icmp ult i8 %14, 10, !dbg !65
  br i1 %15, label %21, label %16, !dbg !65

; <label>:16:                                     ; preds = %11
  switch i8 %13, label %17 [
    i8 45, label %21
    i8 43, label %21
    i8 46, label %21
  ], !dbg !67

; <label>:17:                                     ; preds = %16
  %18 = or i8 %13, 32, !dbg !69
  %19 = add i8 %18, -97, !dbg !71
  %20 = icmp ugt i8 %19, 24, !dbg !71
  br i1 %20, label %23, label %21, !dbg !73

; <label>:21:                                     ; preds = %17, %16, %16, %16, %11
  %22 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !74
  br label %11, !dbg !73, !llvm.loop !75

; <label>:23:                                     ; preds = %17
  %24 = ptrtoint i8* %12 to i64, !dbg !78
  %25 = ptrtoint i8* %0 to i64, !dbg !78
  %26 = sub i64 %24, %25, !dbg !78
  %27 = trunc i64 %26 to i32, !dbg !79
  %28 = icmp eq i32 %27, 0, !dbg !81
  br i1 %28, label %29, label %30, !dbg !83

; <label>:29:                                     ; preds = %23
  store i8* %0, i8** %1, align 8, !dbg !84, !tbaa !86
  br label %60, !dbg !88

; <label>:30:                                     ; preds = %23
  %31 = icmp sgt i32 %27, 31, !dbg !89
  %32 = shl i64 %26, 32, !dbg !91
  br i1 %31, label %33, label %43, !dbg !92

; <label>:33:                                     ; preds = %30
  %34 = add i64 %32, 4294967296, !dbg !93
  %35 = ashr exact i64 %34, 32, !dbg !93
  %36 = tail call i8* @malloc(i64 %35) #6, !dbg !95
  %37 = icmp eq i8* %36, null, !dbg !97
  br i1 %37, label %38, label %43, !dbg !99

; <label>:38:                                     ; preds = %33
  %39 = tail call %struct._reent* @__getreent() #6, !dbg !100
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %39, i64 0, i32 3, !dbg !100
  %41 = load %struct.__sFILE*, %struct.__sFILE** %40, align 8, !dbg !100, !tbaa !102
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)) #6, !dbg !108
  tail call void @abort() #7, !dbg !109
  unreachable, !dbg !109

; <label>:43:                                     ; preds = %30, %33
  %44 = phi i8* [ %36, %33 ], [ %5, %30 ], !dbg !110
  %45 = ashr exact i64 %32, 32, !dbg !112
  %46 = call i8* @memcpy(i8* %44, i8* %0, i64 %45) #6, !dbg !113
  %47 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !114
  store i8 0, i8* %47, align 1, !dbg !115, !tbaa !40
  %48 = call i8* @strchr(i8* %44, i32 46) #6, !dbg !116
  %49 = icmp eq i8* %48, null, !dbg !118
  br i1 %49, label %52, label %50, !dbg !120

; <label>:50:                                     ; preds = %43
  %51 = load i8, i8* @locale_decimal_point, align 1, !dbg !121, !tbaa !40
  store i8 %51, i8* %48, align 1, !dbg !122, !tbaa !40
  br label %52, !dbg !123

; <label>:52:                                     ; preds = %43, %50
  %53 = call double @strtod(i8* %44, i8** nonnull %4) #6, !dbg !125
  %54 = bitcast i8** %4 to i64*, !dbg !127
  %55 = load i64, i64* %54, align 8, !dbg !127, !tbaa !86
  %56 = ptrtoint i8* %44 to i64, !dbg !128
  %57 = sub i64 %55, %56, !dbg !128
  %58 = getelementptr inbounds i8, i8* %0, i64 %57, !dbg !129
  store i8* %58, i8** %1, align 8, !dbg !130, !tbaa !86
  br i1 %31, label %59, label %60, !dbg !131

; <label>:59:                                     ; preds = %52
  call void @free(i8* %44) #6, !dbg !132
  br label %60, !dbg !132

; <label>:60:                                     ; preds = %52, %59, %29, %9
  %61 = phi double [ %10, %9 ], [ 0.000000e+00, %29 ], [ %53, %59 ], [ %53, %52 ], !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !135
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #5, !dbg !135
  ret double %61, !dbg !135
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fprintf(%struct.__sFILE*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @abort() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fpconv_g_fmt(i8*, double, i32) local_unnamed_addr #0 !dbg !136 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [6 x i8], align 1
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0, !dbg !153
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #5, !dbg !153
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %7) #5, !dbg !155
  %8 = add i32 %2, -1, !dbg !169
  %9 = icmp ult i32 %8, 14, !dbg !169
  br i1 %9, label %11, label %10, !dbg !169

; <label>:10:                                     ; preds = %3
  tail call void @__assert_func(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.set_number_format, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !169
  unreachable, !dbg !169

; <label>:11:                                     ; preds = %3
  %12 = trunc i32 %2 to i8
  %13 = urem i8 %12, 10
  %14 = udiv i8 %12, 10
  store i8 37, i8* %7, align 1, !dbg !170, !tbaa !40
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 1, !dbg !171
  store i8 46, i8* %15, align 1, !dbg !172, !tbaa !40
  %16 = add i32 %2, 9, !dbg !174
  %17 = icmp ugt i32 %16, 18, !dbg !174
  br i1 %17, label %18, label %21, !dbg !176

; <label>:18:                                     ; preds = %11
  %19 = add nuw nsw i8 %14, 48, !dbg !178
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 2, !dbg !180
  store i8 %19, i8* %20, align 1, !dbg !181, !tbaa !40
  br label %21, !dbg !182

; <label>:21:                                     ; preds = %11, %18
  %22 = phi i32 [ 3, %18 ], [ 2, %11 ], !dbg !183
  %23 = or i8 %13, 48, !dbg !184
  %24 = add nuw nsw i32 %22, 1, !dbg !185
  %25 = zext i32 %22 to i64, !dbg !186
  %26 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %25, !dbg !186
  store i8 %23, i8* %26, align 1, !dbg !187, !tbaa !40
  %27 = add nuw nsw i32 %22, 2, !dbg !188
  %28 = zext i32 %24 to i64, !dbg !189
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %28, !dbg !189
  store i8 103, i8* %29, align 1, !dbg !190, !tbaa !40
  %30 = zext i32 %27 to i64, !dbg !191
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 %30, !dbg !191
  store i8 0, i8* %31, align 1, !dbg !192, !tbaa !40
  %32 = load i8, i8* @locale_decimal_point, align 1, !dbg !193, !tbaa !40
  %33 = icmp eq i8 %32, 46, !dbg !195
  br i1 %33, label %34, label %36, !dbg !196

; <label>:34:                                     ; preds = %21
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 32, i8* nonnull %7, double %1) #6, !dbg !197
  br label %48, !dbg !198

; <label>:36:                                     ; preds = %21
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 32, i8* nonnull %7, double %1) #6, !dbg !199
  %38 = load i8, i8* @locale_decimal_point, align 1, !tbaa !40
  br label %39, !dbg !202

; <label>:39:                                     ; preds = %39, %36
  %40 = phi i8* [ %0, %36 ], [ %45, %39 ]
  %41 = phi i8* [ %6, %36 ], [ %46, %39 ], !dbg !203
  %42 = load i8, i8* %41, align 1, !dbg !204, !tbaa !40
  %43 = icmp eq i8 %42, %38, !dbg !206
  %44 = select i1 %43, i8 46, i8 %42, !dbg !204
  %45 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !207
  store i8 %44, i8* %40, align 1, !dbg !208, !tbaa !40
  %46 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !209
  %47 = icmp eq i8 %42, 0, !dbg !210
  br i1 %47, label %48, label %39, !dbg !210, !llvm.loop !211

; <label>:48:                                     ; preds = %39, %34
  %49 = phi i32 [ %35, %34 ], [ %37, %39 ], !dbg !203
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %7) #5, !dbg !213
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #5, !dbg !213
  ret i32 %49, !dbg !213
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @fpconv_init() local_unnamed_addr #0 !dbg !214 {
  %1 = alloca [8 x i8], align 1
  %2 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0, !dbg !225
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #5, !dbg !225
  %3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %2, i64 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double 5.000000e-01) #6, !dbg !226
  %4 = load i8, i8* %2, align 1, !dbg !227, !tbaa !40
  %5 = icmp eq i8 %4, 48, !dbg !229
  br i1 %5, label %6, label %14, !dbg !230

; <label>:6:                                      ; preds = %0
  %7 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2, !dbg !231
  %8 = load i8, i8* %7, align 1, !dbg !231, !tbaa !40
  %9 = icmp eq i8 %8, 53, !dbg !232
  br i1 %9, label %10, label %14, !dbg !233

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3, !dbg !234
  %12 = load i8, i8* %11, align 1, !dbg !234, !tbaa !40
  %13 = icmp eq i8 %12, 0, !dbg !235
  br i1 %13, label %19, label %14, !dbg !236

; <label>:14:                                     ; preds = %10, %6, %0
  %15 = call %struct._reent* @__getreent() #6, !dbg !237
  %16 = getelementptr inbounds %struct._reent, %struct._reent* %15, i64 0, i32 3, !dbg !237
  %17 = load %struct.__sFILE*, %struct.__sFILE** %16, align 8, !dbg !237, !tbaa !102
  %18 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !239
  call void @abort() #7, !dbg !240
  unreachable, !dbg !240

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1, !dbg !241
  %21 = load i8, i8* %20, align 1, !dbg !241, !tbaa !40
  store i8 %21, i8* @locale_decimal_point, align 1, !dbg !242, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #5, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "locale_decimal_point", scope: !2, file: !3, line: 43, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/fpconv.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!0}
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "fpconv_strtod", scope: !3, file: !3, line: 106, type: !14, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !19}
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!20 = !{!21, !22, !23, !27, !28, !29, !30, !32}
!21 = !DILocalVariable(name: "nptr", arg: 1, scope: !13, file: !3, line: 106, type: !17)
!22 = !DILocalVariable(name: "endptr", arg: 2, scope: !13, file: !3, line: 106, type: !19)
!23 = !DILocalVariable(name: "localbuf", scope: !13, file: !3, line: 108, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 32)
!27 = !DILocalVariable(name: "buf", scope: !13, file: !3, line: 109, type: !6)
!28 = !DILocalVariable(name: "endbuf", scope: !13, file: !3, line: 109, type: !6)
!29 = !DILocalVariable(name: "dp", scope: !13, file: !3, line: 109, type: !6)
!30 = !DILocalVariable(name: "buflen", scope: !13, file: !3, line: 110, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "value", scope: !13, file: !3, line: 111, type: !16)
!33 = !DILocation(line: 106, column: 34, scope: !13)
!34 = !DILocation(line: 106, column: 47, scope: !13)
!35 = !DILocation(line: 108, column: 5, scope: !13)
!36 = !DILocation(line: 108, column: 10, scope: !13)
!37 = !DILocation(line: 109, column: 5, scope: !13)
!38 = !DILocation(line: 114, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !13, file: !3, line: 114, column: 9)
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 114, column: 30, scope: !39)
!44 = !DILocation(line: 114, column: 9, scope: !13)
!45 = !DILocation(line: 115, column: 16, scope: !39)
!46 = !DILocation(line: 115, column: 9, scope: !39)
!47 = !DILocation(line: 0, scope: !48, inlinedAt: !54)
!48 = distinct !DISubprogram(name: "strtod_buffer_size", scope: !3, file: !3, line: 94, type: !49, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !51)
!49 = !DISubroutineType(types: !50)
!50 = !{!31, !17}
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "s", arg: 1, scope: !48, file: !3, line: 94, type: !17)
!53 = !DILocalVariable(name: "p", scope: !48, file: !3, line: 96, type: !17)
!54 = distinct !DILocation(line: 117, column: 14, scope: !13)
!55 = !DILocation(line: 96, column: 17, scope: !48, inlinedAt: !54)
!56 = !DILocation(line: 98, column: 35, scope: !48, inlinedAt: !54)
!57 = !DILocalVariable(name: "ch", arg: 1, scope: !58, file: !3, line: 75, type: !7)
!58 = distinct !DISubprogram(name: "valid_number_character", scope: !3, file: !3, line: 75, type: !59, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{!31, !7}
!61 = !{!57, !62}
!62 = !DILocalVariable(name: "lower_ch", scope: !58, file: !3, line: 77, type: !7)
!63 = !DILocation(line: 75, column: 47, scope: !58, inlinedAt: !64)
!64 = distinct !DILocation(line: 98, column: 12, scope: !48, inlinedAt: !54)
!65 = !DILocation(line: 79, column: 19, scope: !66, inlinedAt: !64)
!66 = distinct !DILexicalBlock(scope: !58, file: !3, line: 79, column: 9)
!67 = !DILocation(line: 81, column: 19, scope: !68, inlinedAt: !64)
!68 = distinct !DILexicalBlock(scope: !58, file: !3, line: 81, column: 9)
!69 = !DILocation(line: 85, column: 19, scope: !58, inlinedAt: !64)
!70 = !DILocation(line: 77, column: 10, scope: !58, inlinedAt: !64)
!71 = !DILocation(line: 86, column: 25, scope: !72, inlinedAt: !64)
!72 = distinct !DILexicalBlock(scope: !58, file: !3, line: 86, column: 9)
!73 = !DILocation(line: 98, column: 5, scope: !48, inlinedAt: !54)
!74 = !DILocation(line: 99, column: 10, scope: !48, inlinedAt: !54)
!75 = distinct !{!75, !76, !77}
!76 = !DILocation(line: 98, column: 5, scope: !48)
!77 = !DILocation(line: 99, column: 10, scope: !48)
!78 = !DILocation(line: 101, column: 14, scope: !48, inlinedAt: !54)
!79 = !DILocation(line: 101, column: 12, scope: !48, inlinedAt: !54)
!80 = !DILocation(line: 110, column: 9, scope: !13)
!81 = !DILocation(line: 118, column: 10, scope: !82)
!82 = distinct !DILexicalBlock(scope: !13, file: !3, line: 118, column: 9)
!83 = !DILocation(line: 118, column: 9, scope: !13)
!84 = !DILocation(line: 120, column: 17, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 118, column: 18)
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !41, i64 0}
!88 = !DILocation(line: 121, column: 9, scope: !85)
!89 = !DILocation(line: 125, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !13, file: !3, line: 125, column: 9)
!91 = !DILocation(line: 0, scope: !13)
!92 = !DILocation(line: 125, column: 9, scope: !13)
!93 = !DILocation(line: 127, column: 22, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !3, line: 125, column: 41)
!95 = !DILocation(line: 127, column: 15, scope: !94)
!96 = !DILocation(line: 109, column: 11, scope: !13)
!97 = !DILocation(line: 128, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !3, line: 128, column: 13)
!99 = !DILocation(line: 128, column: 13, scope: !94)
!100 = !DILocation(line: 129, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !3, line: 128, column: 19)
!102 = !{!103, !87, i64 24}
!103 = !{!"_reent", !104, i64 0, !87, i64 8, !87, i64 16, !87, i64 24, !104, i64 32, !41, i64 36, !104, i64 64, !87, i64 72, !104, i64 80, !87, i64 88, !87, i64 96, !104, i64 104, !87, i64 112, !87, i64 120, !104, i64 128, !87, i64 136, !41, i64 144, !87, i64 504, !105, i64 512, !87, i64 1304, !107, i64 1312, !41, i64 1336}
!104 = !{!"int", !41, i64 0}
!105 = !{!"_atexit", !87, i64 0, !104, i64 8, !41, i64 16, !106, i64 272}
!106 = !{!"_on_exit_args", !41, i64 0, !41, i64 256, !104, i64 512, !104, i64 516}
!107 = !{!"_glue", !87, i64 0, !104, i64 8, !87, i64 16}
!108 = !DILocation(line: 129, column: 13, scope: !101)
!109 = !DILocation(line: 130, column: 13, scope: !101)
!110 = !DILocation(line: 0, scope: !111)
!111 = distinct !DILexicalBlock(scope: !90, file: !3, line: 132, column: 12)
!112 = !DILocation(line: 136, column: 23, scope: !13)
!113 = !DILocation(line: 136, column: 5, scope: !13)
!114 = !DILocation(line: 137, column: 5, scope: !13)
!115 = !DILocation(line: 137, column: 17, scope: !13)
!116 = !DILocation(line: 140, column: 10, scope: !13)
!117 = !DILocation(line: 109, column: 26, scope: !13)
!118 = !DILocation(line: 141, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !13, file: !3, line: 141, column: 9)
!120 = !DILocation(line: 141, column: 9, scope: !13)
!121 = !DILocation(line: 142, column: 15, scope: !119)
!122 = !DILocation(line: 142, column: 13, scope: !119)
!123 = !DILocation(line: 142, column: 9, scope: !119)
!124 = !DILocation(line: 109, column: 17, scope: !13)
!125 = !DILocation(line: 144, column: 13, scope: !13)
!126 = !DILocation(line: 111, column: 12, scope: !13)
!127 = !DILocation(line: 145, column: 29, scope: !13)
!128 = !DILocation(line: 145, column: 36, scope: !13)
!129 = !DILocation(line: 145, column: 24, scope: !13)
!130 = !DILocation(line: 145, column: 13, scope: !13)
!131 = !DILocation(line: 146, column: 9, scope: !13)
!132 = !DILocation(line: 147, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !13, file: !3, line: 146, column: 9)
!134 = !DILocation(line: 0, scope: !85)
!135 = !DILocation(line: 150, column: 1, scope: !13)
!136 = distinct !DISubprogram(name: "fpconv_g_fmt", scope: !3, file: !3, line: 174, type: !137, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !139)
!137 = !DISubroutineType(types: !138)
!138 = !{!31, !6, !16, !31}
!139 = !{!140, !141, !142, !143, !144, !148, !149}
!140 = !DILocalVariable(name: "str", arg: 1, scope: !136, file: !3, line: 174, type: !6)
!141 = !DILocalVariable(name: "num", arg: 2, scope: !136, file: !3, line: 174, type: !16)
!142 = !DILocalVariable(name: "precision", arg: 3, scope: !136, file: !3, line: 174, type: !31)
!143 = !DILocalVariable(name: "buf", scope: !136, file: !3, line: 176, type: !24)
!144 = !DILocalVariable(name: "fmt", scope: !136, file: !3, line: 177, type: !145)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 48, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 6)
!148 = !DILocalVariable(name: "len", scope: !136, file: !3, line: 178, type: !31)
!149 = !DILocalVariable(name: "b", scope: !136, file: !3, line: 179, type: !6)
!150 = !DILocation(line: 174, column: 24, scope: !136)
!151 = !DILocation(line: 174, column: 36, scope: !136)
!152 = !DILocation(line: 174, column: 45, scope: !136)
!153 = !DILocation(line: 176, column: 5, scope: !136)
!154 = !DILocation(line: 176, column: 10, scope: !136)
!155 = !DILocation(line: 177, column: 5, scope: !136)
!156 = !DILocation(line: 177, column: 10, scope: !136)
!157 = !DILocalVariable(name: "fmt", arg: 1, scope: !158, file: !3, line: 153, type: !6)
!158 = distinct !DISubprogram(name: "set_number_format", scope: !3, file: !3, line: 153, type: !159, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !6, !31}
!161 = !{!157, !162, !163, !164, !165}
!162 = !DILocalVariable(name: "precision", arg: 2, scope: !158, file: !3, line: 153, type: !31)
!163 = !DILocalVariable(name: "d1", scope: !158, file: !3, line: 155, type: !31)
!164 = !DILocalVariable(name: "d2", scope: !158, file: !3, line: 155, type: !31)
!165 = !DILocalVariable(name: "i", scope: !158, file: !3, line: 155, type: !31)
!166 = !DILocation(line: 153, column: 37, scope: !158, inlinedAt: !167)
!167 = distinct !DILocation(line: 181, column: 5, scope: !136)
!168 = !DILocation(line: 153, column: 46, scope: !158, inlinedAt: !167)
!169 = !DILocation(line: 157, column: 5, scope: !158, inlinedAt: !167)
!170 = !DILocation(line: 162, column: 12, scope: !158, inlinedAt: !167)
!171 = !DILocation(line: 163, column: 5, scope: !158, inlinedAt: !167)
!172 = !DILocation(line: 163, column: 12, scope: !158, inlinedAt: !167)
!173 = !DILocation(line: 155, column: 17, scope: !158, inlinedAt: !167)
!174 = !DILocation(line: 165, column: 9, scope: !175, inlinedAt: !167)
!175 = distinct !DILexicalBlock(scope: !158, file: !3, line: 165, column: 9)
!176 = !DILocation(line: 165, column: 9, scope: !158, inlinedAt: !167)
!177 = !DILocation(line: 155, column: 9, scope: !158, inlinedAt: !167)
!178 = !DILocation(line: 166, column: 20, scope: !179, inlinedAt: !167)
!179 = distinct !DILexicalBlock(scope: !175, file: !3, line: 165, column: 13)
!180 = !DILocation(line: 166, column: 9, scope: !179, inlinedAt: !167)
!181 = !DILocation(line: 166, column: 18, scope: !179, inlinedAt: !167)
!182 = !DILocation(line: 167, column: 5, scope: !179, inlinedAt: !167)
!183 = !DILocation(line: 0, scope: !158, inlinedAt: !167)
!184 = !DILocation(line: 168, column: 16, scope: !158, inlinedAt: !167)
!185 = !DILocation(line: 168, column: 10, scope: !158, inlinedAt: !167)
!186 = !DILocation(line: 168, column: 5, scope: !158, inlinedAt: !167)
!187 = !DILocation(line: 168, column: 14, scope: !158, inlinedAt: !167)
!188 = !DILocation(line: 169, column: 10, scope: !158, inlinedAt: !167)
!189 = !DILocation(line: 169, column: 5, scope: !158, inlinedAt: !167)
!190 = !DILocation(line: 169, column: 14, scope: !158, inlinedAt: !167)
!191 = !DILocation(line: 170, column: 5, scope: !158, inlinedAt: !167)
!192 = !DILocation(line: 170, column: 12, scope: !158, inlinedAt: !167)
!193 = !DILocation(line: 184, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !136, file: !3, line: 184, column: 9)
!195 = !DILocation(line: 184, column: 30, scope: !194)
!196 = !DILocation(line: 184, column: 9, scope: !136)
!197 = !DILocation(line: 185, column: 16, scope: !194)
!198 = !DILocation(line: 185, column: 9, scope: !194)
!199 = !DILocation(line: 188, column: 11, scope: !136)
!200 = !DILocation(line: 178, column: 9, scope: !136)
!201 = !DILocation(line: 179, column: 11, scope: !136)
!202 = !DILocation(line: 192, column: 5, scope: !136)
!203 = !DILocation(line: 0, scope: !136)
!204 = !DILocation(line: 193, column: 19, scope: !205)
!205 = distinct !DILexicalBlock(scope: !136, file: !3, line: 192, column: 8)
!206 = !DILocation(line: 193, column: 22, scope: !205)
!207 = !DILocation(line: 193, column: 13, scope: !205)
!208 = !DILocation(line: 193, column: 16, scope: !205)
!209 = !DILocation(line: 194, column: 15, scope: !136)
!210 = !DILocation(line: 194, column: 5, scope: !205)
!211 = distinct !{!211, !202, !212}
!212 = !DILocation(line: 194, column: 17, scope: !136)
!213 = !DILocation(line: 197, column: 1, scope: !136)
!214 = distinct !DISubprogram(name: "fpconv_init", scope: !3, file: !3, line: 199, type: !215, isLocal: false, isDefinition: true, scopeLine: 200, isOptimized: true, unit: !2, retainedNodes: !4)
!215 = !DISubroutineType(types: !216)
!216 = !{null}
!217 = !DILocalVariable(name: "buf", scope: !218, file: !3, line: 54, type: !220)
!218 = distinct !DISubprogram(name: "fpconv_update_locale", scope: !3, file: !3, line: 52, type: !215, isLocal: true, isDefinition: true, scopeLine: 53, isOptimized: true, unit: !2, retainedNodes: !219)
!219 = !{!217}
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 8)
!223 = !DILocation(line: 54, column: 10, scope: !218, inlinedAt: !224)
!224 = distinct !DILocation(line: 201, column: 5, scope: !214)
!225 = !DILocation(line: 54, column: 5, scope: !218, inlinedAt: !224)
!226 = !DILocation(line: 56, column: 5, scope: !218, inlinedAt: !224)
!227 = !DILocation(line: 60, column: 9, scope: !228, inlinedAt: !224)
!228 = distinct !DILexicalBlock(scope: !218, file: !3, line: 60, column: 9)
!229 = !DILocation(line: 60, column: 16, scope: !228, inlinedAt: !224)
!230 = !DILocation(line: 60, column: 23, scope: !228, inlinedAt: !224)
!231 = !DILocation(line: 60, column: 26, scope: !228, inlinedAt: !224)
!232 = !DILocation(line: 60, column: 33, scope: !228, inlinedAt: !224)
!233 = !DILocation(line: 60, column: 40, scope: !228, inlinedAt: !224)
!234 = !DILocation(line: 60, column: 43, scope: !228, inlinedAt: !224)
!235 = !DILocation(line: 60, column: 50, scope: !228, inlinedAt: !224)
!236 = !DILocation(line: 60, column: 9, scope: !218, inlinedAt: !224)
!237 = !DILocation(line: 61, column: 17, scope: !238, inlinedAt: !224)
!238 = distinct !DILexicalBlock(scope: !228, file: !3, line: 60, column: 56)
!239 = !DILocation(line: 61, column: 9, scope: !238, inlinedAt: !224)
!240 = !DILocation(line: 62, column: 9, scope: !238, inlinedAt: !224)
!241 = !DILocation(line: 65, column: 28, scope: !218, inlinedAt: !224)
!242 = !DILocation(line: 65, column: 26, scope: !218, inlinedAt: !224)
!243 = !DILocation(line: 66, column: 1, scope: !218, inlinedAt: !224)
!244 = !DILocation(line: 202, column: 1, scope: !214)
