; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstod.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstod.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local global %struct.__locale_t, align 8

; Function Attrs: noredzone nounwind
define dso_local double @_wcstod_l(%struct._reent*, i32*, i32**, %struct.__locale_t*) local_unnamed_addr #0 !dbg !18 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = bitcast i64* %5 to i8*, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4, !dbg !322
  %9 = bitcast i8** %6 to i8*, !dbg !323
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #4, !dbg !323
  %10 = bitcast i32** %7 to i8*, !dbg !324
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #4, !dbg !324
  br label %11, !dbg !325

; <label>:11:                                     ; preds = %11, %4
  %12 = phi i32* [ %1, %4 ], [ %16, %11 ]
  %13 = load i32, i32* %12, align 4, !dbg !326, !tbaa !327
  %14 = tail call i32 @iswspace_l(i32 %13, %struct.__locale_t* %3) #5, !dbg !331
  %15 = icmp eq i32 %14, 0, !dbg !325
  %16 = getelementptr inbounds i32, i32* %12, i64 1, !dbg !332
  br i1 %15, label %17, label %11, !dbg !325, !llvm.loop !333

; <label>:17:                                     ; preds = %11
  %18 = bitcast i64* %5 to %struct._mbstate_t*
  store i32* %12, i32** %7, align 8, !dbg !335, !tbaa !336
  store i64 0, i64* %5, align 8, !dbg !338
  %19 = call i64 @_wcsnrtombs_l(%struct._reent* %0, i8* null, i32** nonnull %7, i64 -1, i64 0, %struct._mbstate_t* nonnull %18, %struct.__locale_t* %3) #5, !dbg !340
  %20 = icmp eq i64 %19, -1, !dbg !343
  br i1 %20, label %21, label %24, !dbg !344

; <label>:21:                                     ; preds = %17
  %22 = icmp eq i32** %2, null, !dbg !345
  br i1 %22, label %57, label %23, !dbg !348

; <label>:23:                                     ; preds = %21
  store i32* %12, i32** %2, align 8, !dbg !349, !tbaa !336
  br label %57, !dbg !350

; <label>:24:                                     ; preds = %17
  %25 = add i64 %19, 1, !dbg !351
  %26 = call i8* @malloc(i64 %25) #5, !dbg !351
  %27 = icmp eq i8* %26, null, !dbg !354
  br i1 %27, label %57, label %28, !dbg !355

; <label>:28:                                     ; preds = %24
  store i64 0, i64* %5, align 8, !dbg !356
  %29 = call i64 @_wcsnrtombs_l(%struct._reent* %0, i8* nonnull %26, i32** nonnull %7, i64 -1, i64 %25, %struct._mbstate_t* nonnull %18, %struct.__locale_t* %3) #5, !dbg !357
  %30 = call double @_strtod_l(%struct._reent* %0, i8* nonnull %26, i8** nonnull %6, %struct.__locale_t* %3) #5, !dbg !359
  %31 = icmp eq i32** %2, null, !dbg !361
  br i1 %31, label %56, label %32, !dbg !362

; <label>:32:                                     ; preds = %28
  %33 = call %struct.lconv* @__localeconv_l(%struct.__locale_t* %3) #5, !dbg !363
  %34 = getelementptr inbounds %struct.lconv, %struct.lconv* %33, i64 0, i32 0, !dbg !364
  %35 = load i8*, i8** %34, align 8, !dbg !364, !tbaa !365
  %36 = call i64 @strlen(i8* %35) #5, !dbg !367
  %37 = icmp ugt i64 %36, 1, !dbg !368
  br i1 %37, label %38, label %50, !dbg !369

; <label>:38:                                     ; preds = %32
  %39 = call %struct.lconv* @__localeconv_l(%struct.__locale_t* %3) #5, !dbg !370
  %40 = getelementptr inbounds %struct.lconv, %struct.lconv* %39, i64 0, i32 0, !dbg !371
  %41 = load i8*, i8** %40, align 8, !dbg !371, !tbaa !365
  %42 = call i8* @strstr(i8* nonnull %26, i8* %41) #5, !dbg !372
  %43 = icmp eq i8* %42, null, !dbg !374
  br i1 %43, label %50, label %44, !dbg !376

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %6, align 8, !dbg !377, !tbaa !336
  %46 = icmp ult i8* %42, %45, !dbg !378
  br i1 %46, label %47, label %50, !dbg !379

; <label>:47:                                     ; preds = %44
  %48 = sub i64 1, %36, !dbg !380
  %49 = getelementptr inbounds i8, i8* %45, i64 %48, !dbg !380
  store i8* %49, i8** %6, align 8, !dbg !380, !tbaa !336
  br label %50, !dbg !381

; <label>:50:                                     ; preds = %44, %47, %38, %32
  %51 = bitcast i8** %6 to i64*, !dbg !382
  %52 = load i64, i64* %51, align 8, !dbg !382, !tbaa !336
  %53 = ptrtoint i8* %26 to i64, !dbg !383
  %54 = sub i64 %52, %53, !dbg !383
  %55 = getelementptr inbounds i32, i32* %12, i64 %54, !dbg !384
  store i32* %55, i32** %2, align 8, !dbg !385, !tbaa !336
  br label %56, !dbg !386

; <label>:56:                                     ; preds = %28, %50
  call void @free(i8* nonnull %26) #5, !dbg !387
  br label %57, !dbg !388

; <label>:57:                                     ; preds = %24, %23, %21, %56
  %58 = phi double [ %30, %56 ], [ 0.000000e+00, %21 ], [ 0.000000e+00, %23 ], [ 0.000000e+00, %24 ], !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #4, !dbg !390
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #4, !dbg !390
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4, !dbg !390
  ret double %58, !dbg !390
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @_wcsnrtombs_l(%struct._reent*, i8*, i32**, i64, i64, %struct._mbstate_t*, %struct.__locale_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @_strtod_l(%struct._reent*, i8*, i8**, %struct.__locale_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.lconv* @__localeconv_l(%struct.__locale_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local double @_wcstod_r(%struct._reent*, i32*, i32**) local_unnamed_addr #0 !dbg !391 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !399
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !404
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !404, !tbaa !405
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !399
  %8 = select i1 %7, %struct.__locale_t* @__global_locale, %struct.__locale_t* %6, !dbg !399
  %9 = tail call double @_wcstod_l(%struct._reent* %0, i32* %1, i32** %2, %struct.__locale_t* %8) #6, !dbg !410
  ret double %9, !dbg !411
}

; Function Attrs: noredzone nounwind
define dso_local float @_wcstof_r(%struct._reent*, i32*, i32**) local_unnamed_addr #0 !dbg !412 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !421
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !423
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !423, !tbaa !405
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !421
  %8 = select i1 %7, %struct.__locale_t* @__global_locale, %struct.__locale_t* %6, !dbg !421
  %9 = tail call double @_wcstod_l(%struct._reent* %0, i32* %1, i32** %2, %struct.__locale_t* %8) #6, !dbg !424
  %10 = tail call i32 @__fpclassifyd(double %9) #5, !dbg !426
  %11 = icmp eq i32 %10, 0, !dbg !426
  br i1 %11, label %12, label %14, !dbg !428

; <label>:12:                                     ; preds = %3
  %13 = tail call float @nanf(i8* null) #5, !dbg !429
  br label %16, !dbg !430

; <label>:14:                                     ; preds = %3
  %15 = fptrunc double %9 to float, !dbg !431
  br label %16, !dbg !432

; <label>:16:                                     ; preds = %14, %12
  %17 = phi float [ %13, %12 ], [ %15, %14 ], !dbg !433
  ret float %17, !dbg !434
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local float @nanf(i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local double @wcstod_l(i32* noalias, i32** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !435 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !447
  %5 = tail call double @_wcstod_l(%struct._reent* %4, i32* %0, i32** %1, %struct.__locale_t* %2) #6, !dbg !448
  ret double %5, !dbg !449
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local double @wcstod(i32* noalias, i32** noalias) local_unnamed_addr #0 !dbg !450 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !457
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !458
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !460
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !460, !tbaa !405
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !458
  %8 = select i1 %7, %struct.__locale_t* @__global_locale, %struct.__locale_t* %6, !dbg !458
  %9 = tail call double @_wcstod_l(%struct._reent* %3, i32* %0, i32** %1, %struct.__locale_t* %8) #6, !dbg !461
  ret double %9, !dbg !462
}

; Function Attrs: noredzone nounwind
define dso_local float @wcstof_l(i32* noalias, i32** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !463 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !475
  %5 = tail call double @_wcstod_l(%struct._reent* %4, i32* %0, i32** %1, %struct.__locale_t* %2) #6, !dbg !476
  %6 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !478
  %7 = icmp eq i32 %6, 0, !dbg !478
  br i1 %7, label %8, label %10, !dbg !480

; <label>:8:                                      ; preds = %3
  %9 = tail call float @nanf(i8* null) #5, !dbg !481
  br label %20, !dbg !482

; <label>:10:                                     ; preds = %3
  %11 = fptrunc double %5 to float, !dbg !483
  %12 = tail call i32 @__fpclassifyf(float %11) #5, !dbg !485
  %13 = icmp eq i32 %12, 1, !dbg !485
  br i1 %13, label %14, label %20, !dbg !487

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @__fpclassifyd(double %5) #5, !dbg !488
  %16 = icmp eq i32 %15, 1, !dbg !488
  br i1 %16, label %20, label %17, !dbg !489

; <label>:17:                                     ; preds = %14
  %18 = tail call %struct._reent* @__getreent() #5, !dbg !490
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %18, i64 0, i32 0, !dbg !491
  store i32 34, i32* %19, align 8, !dbg !492, !tbaa !493
  br label %20, !dbg !490

; <label>:20:                                     ; preds = %10, %14, %17, %8
  %21 = phi float [ %9, %8 ], [ %11, %17 ], [ %11, %14 ], [ %11, %10 ], !dbg !494
  ret float %21, !dbg !495
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyf(float) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local float @wcstof(i32* noalias, i32** noalias) local_unnamed_addr #0 !dbg !496 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !505
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !506
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 7, !dbg !508
  %6 = load %struct.__locale_t*, %struct.__locale_t** %5, align 8, !dbg !508, !tbaa !405
  %7 = icmp eq %struct.__locale_t* %6, null, !dbg !506
  %8 = select i1 %7, %struct.__locale_t* @__global_locale, %struct.__locale_t* %6, !dbg !506
  %9 = tail call double @_wcstod_l(%struct._reent* %3, i32* %0, i32** %1, %struct.__locale_t* %8) #6, !dbg !509
  %10 = tail call i32 @__fpclassifyd(double %9) #5, !dbg !511
  %11 = icmp eq i32 %10, 0, !dbg !511
  br i1 %11, label %12, label %14, !dbg !513

; <label>:12:                                     ; preds = %2
  %13 = tail call float @nanf(i8* null) #5, !dbg !514
  br label %24, !dbg !515

; <label>:14:                                     ; preds = %2
  %15 = fptrunc double %9 to float, !dbg !516
  %16 = tail call i32 @__fpclassifyf(float %15) #5, !dbg !518
  %17 = icmp eq i32 %16, 1, !dbg !518
  br i1 %17, label %18, label %24, !dbg !520

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 @__fpclassifyd(double %9) #5, !dbg !521
  %20 = icmp eq i32 %19, 1, !dbg !521
  br i1 %20, label %24, label %21, !dbg !522

; <label>:21:                                     ; preds = %18
  %22 = tail call %struct._reent* @__getreent() #5, !dbg !523
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %22, i64 0, i32 0, !dbg !524
  store i32 34, i32* %23, align 8, !dbg !525, !tbaa !493
  br label %24, !dbg !523

; <label>:24:                                     ; preds = %14, %18, %21, %12
  %25 = phi float [ %13, %12 ], [ %15, %21 ], [ %15, %18 ], [ %15, %14 ], !dbg !526
  ret float %25, !dbg !527
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!314, !315, !316}
!llvm.ident = !{!317}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !15)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstod.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9, !10, !14}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 40, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !7, line: 129, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !{!16}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "initial", scope: !18, file: !1, line: 168, type: !313, isLocal: true, isDefinition: true)
!18 = distinct !DISubprogram(name: "_wcstod_l", scope: !1, file: !1, line: 165, type: !19, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !292, !294, !295}
!21 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !24, line: 569, size: 14912, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !106, !107, !108, !109, !113, !114, !173, !174, !178, !190, !191, !192, !194, !195, !196, !258, !277, !278, !283, !290}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !23, file: !24, line: 571, baseType: !13, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !24, line: 287, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !24, line: 181, size: 1408, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !55, !61, !66, !70, !71, !72, !73, !77, !81, !82, !83, !85, !86, !90, !105}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !24, line: 182, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !24, line: 183, baseType: !13, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !24, line: 184, baseType: !13, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !24, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !24, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !24, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !24, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !24, line: 118, baseType: !33, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !24, line: 119, baseType: !13, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !24, line: 188, baseType: !13, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !24, line: 195, baseType: !9, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !24, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !22, !9, !53, !13}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !7, line: 145, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !24, line: 199, baseType: !56, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!51, !22, !9, !59, !13}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !24, line: 202, baseType: !62, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !22, !9, !65, !13}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !7, line: 114, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !24, line: 203, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!13, !22, !9}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !24, line: 206, baseType: !41, size: 128, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !30, file: !24, line: 207, baseType: !33, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !24, line: 208, baseType: !13, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !24, line: 211, baseType: !74, size: 24, offset: 928)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !24, line: 212, baseType: !78, size: 8, offset: 952)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !24, line: 215, baseType: !41, size: 128, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !24, line: 218, baseType: !13, size: 32, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !24, line: 219, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !7, line: 44, baseType: !52)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !30, file: !24, line: 222, baseType: !22, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !24, line: 226, baseType: !87, size: 32, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !7, line: 175, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !89, line: 12, baseType: !13)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !30, file: !24, line: 228, baseType: !91, size: 64, offset: 1312)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !7, line: 171, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 163, size: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !92, file: !7, line: 165, baseType: !13, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !92, file: !7, line: 170, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !7, line: 166, size: 32, elements: !97)
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !96, file: !7, line: 168, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !12, line: 124, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !96, file: !7, line: 169, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !24, line: 229, baseType: !13, size: 32, offset: 1376)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !23, file: !24, line: 578, baseType: !13, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !23, file: !24, line: 579, baseType: !110, size: 200, offset: 288)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 200, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 25)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !23, file: !24, line: 582, baseType: !13, size: 32, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !23, file: !24, line: 583, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !117, line: 178, size: 3392, elements: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !{!119, !124, !131, !135, !136, !137, !165, !169, !172}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !116, file: !117, line: 180, baseType: !120, size: 1792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1792, elements: !121)
!121 = !{!122, !123}
!122 = !DISubrange(count: 7)
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !116, file: !117, line: 181, baseType: !125, size: 64, offset: 1792)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!13, !22, !53, !11, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !130, line: 86, baseType: !91)
!130 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !116, file: !117, line: 183, baseType: !132, size: 64, offset: 1856)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!13, !22, !10, !59, !4, !128}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !116, file: !117, line: 185, baseType: !13, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !116, file: !117, line: 186, baseType: !53, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !116, file: !117, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !53, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !53, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !53, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !53, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !53, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !53, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !53, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !53, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !53, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !53, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !54, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !54, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !54, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !54, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !54, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !54, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !54, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !54, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !54, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !54, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !54, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !54, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !54, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !54, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !116, file: !117, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !116, file: !117, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !171)
!171 = !{!123}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !116, file: !117, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !23, file: !24, line: 585, baseType: !13, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !23, file: !24, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !22}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !23, file: !24, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !24, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !24, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !24, line: 50, baseType: !13, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !24, line: 50, baseType: !13, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !24, line: 50, baseType: !13, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !24, line: 50, baseType: !13, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !24, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !79)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !24, line: 25, baseType: !100)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !23, file: !24, line: 591, baseType: !13, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !23, file: !24, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !23, file: !24, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !23, file: !24, line: 596, baseType: !13, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !23, file: !24, line: 597, baseType: !53, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !23, file: !24, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !24, line: 599, size: 2880, elements: !198)
!198 = !{!199, !249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !24, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !24, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !24, line: 603, baseType: !100, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !24, line: 604, baseType: !53, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !24, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !24, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !24, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !24, line: 57, baseType: !13, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !24, line: 58, baseType: !13, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !24, line: 59, baseType: !13, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !24, line: 60, baseType: !13, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !24, line: 61, baseType: !13, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !24, line: 62, baseType: !13, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !24, line: 63, baseType: !13, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !24, line: 64, baseType: !13, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !24, line: 65, baseType: !13, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !24, line: 607, baseType: !13, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !24, line: 608, baseType: !222, size: 64, offset: 704)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !24, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !24, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !24, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !75)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !24, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !24, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !24, line: 610, baseType: !91, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !24, line: 611, baseType: !91, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !24, line: 612, baseType: !91, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !24, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !24, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !24, line: 615, baseType: !13, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !24, line: 616, baseType: !91, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !24, line: 617, baseType: !91, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !24, line: 618, baseType: !91, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !24, line: 619, baseType: !91, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !24, line: 620, baseType: !91, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !24, line: 621, baseType: !13, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !24, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !24, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !24, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !24, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !23, file: !24, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !24, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !24, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !24, line: 95, baseType: !13, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !24, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !171)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !24, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !24, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !24, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !171)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !24, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !24, line: 78, baseType: !189, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !24, line: 81, baseType: !189, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !23, file: !24, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !23, file: !24, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !13}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !23, file: !24, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !24, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !24, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !24, line: 294, baseType: !13, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !24, line: 295, baseType: !28, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !23, file: !24, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4224, elements: !75)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !296, line: 10, baseType: !115)
!296 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!298 = !DILocalVariable(name: "ptr", arg: 1, scope: !18, file: !1, line: 165, type: !22)
!299 = !DILocalVariable(name: "nptr", arg: 2, scope: !18, file: !1, line: 165, type: !292)
!300 = !DILocalVariable(name: "endptr", arg: 3, scope: !18, file: !1, line: 165, type: !294)
!301 = !DILocalVariable(name: "loc", arg: 4, scope: !18, file: !1, line: 166, type: !295)
!302 = !DILocalVariable(name: "mbs", scope: !18, file: !1, line: 169, type: !129)
!303 = !DILocalVariable(name: "val", scope: !18, file: !1, line: 170, type: !21)
!304 = !DILocalVariable(name: "buf", scope: !18, file: !1, line: 171, type: !53)
!305 = !DILocalVariable(name: "end", scope: !18, file: !1, line: 171, type: !53)
!306 = !DILocalVariable(name: "wcp", scope: !18, file: !1, line: 172, type: !292)
!307 = !DILocalVariable(name: "len", scope: !18, file: !1, line: 173, type: !4)
!308 = !DILocalVariable(name: "d", scope: !309, file: !1, line: 223, type: !53)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 222, column: 16)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 222, column: 7)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 210, column: 29)
!312 = distinct !DILexicalBlock(scope: !18, file: !1, line: 210, column: 13)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!314 = !{i32 2, !"Dwarf Version", i32 4}
!315 = !{i32 2, !"Debug Info Version", i32 3}
!316 = !{i32 1, !"wchar_size", i32 4}
!317 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!318 = !DILocation(line: 165, column: 27, scope: !18)
!319 = !DILocation(line: 165, column: 47, scope: !18)
!320 = !DILocation(line: 165, column: 63, scope: !18)
!321 = !DILocation(line: 166, column: 14, scope: !18)
!322 = !DILocation(line: 169, column: 9, scope: !18)
!323 = !DILocation(line: 171, column: 9, scope: !18)
!324 = !DILocation(line: 172, column: 9, scope: !18)
!325 = !DILocation(line: 175, column: 9, scope: !18)
!326 = !DILocation(line: 175, column: 27, scope: !18)
!327 = !{!328, !328, i64 0}
!328 = !{!"int", !329, i64 0}
!329 = !{!"omnipotent char", !330, i64 0}
!330 = !{!"Simple C/C++ TBAA"}
!331 = !DILocation(line: 175, column: 16, scope: !18)
!332 = !DILocation(line: 176, column: 21, scope: !18)
!333 = distinct !{!333, !325, !332}
!334 = !DILocation(line: 172, column: 24, scope: !18)
!335 = !DILocation(line: 188, column: 13, scope: !18)
!336 = !{!337, !337, i64 0}
!337 = !{!"any pointer", !329, i64 0}
!338 = !DILocation(line: 189, column: 15, scope: !18)
!339 = !DILocation(line: 169, column: 19, scope: !18)
!340 = !DILocation(line: 190, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !18, file: !1, line: 190, column: 13)
!342 = !DILocation(line: 173, column: 16, scope: !18)
!343 = !DILocation(line: 191, column: 6, scope: !341)
!344 = !DILocation(line: 190, column: 13, scope: !18)
!345 = !DILocation(line: 192, column: 28, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !1, line: 192, column: 21)
!347 = distinct !DILexicalBlock(scope: !341, file: !1, line: 191, column: 22)
!348 = !DILocation(line: 192, column: 21, scope: !347)
!349 = !DILocation(line: 193, column: 33, scope: !346)
!350 = !DILocation(line: 193, column: 25, scope: !346)
!351 = !DILocation(line: 196, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !18, file: !1, line: 196, column: 13)
!353 = !DILocation(line: 171, column: 15, scope: !18)
!354 = !DILocation(line: 196, column: 45, scope: !352)
!355 = !DILocation(line: 196, column: 13, scope: !18)
!356 = !DILocation(line: 198, column: 15, scope: !18)
!357 = !DILocation(line: 199, column: 9, scope: !18)
!358 = !DILocation(line: 171, column: 21, scope: !18)
!359 = !DILocation(line: 202, column: 15, scope: !18)
!360 = !DILocation(line: 170, column: 16, scope: !18)
!361 = !DILocation(line: 210, column: 20, scope: !312)
!362 = !DILocation(line: 210, column: 13, scope: !18)
!363 = !DILocation(line: 221, column: 17, scope: !311)
!364 = !DILocation(line: 221, column: 39, scope: !311)
!365 = !{!366, !337, i64 0}
!366 = !{!"lconv", !337, i64 0, !337, i64 8, !337, i64 16, !337, i64 24, !337, i64 32, !337, i64 40, !337, i64 48, !337, i64 56, !337, i64 64, !337, i64 72, !329, i64 80, !329, i64 81, !329, i64 82, !329, i64 83, !329, i64 84, !329, i64 85, !329, i64 86, !329, i64 87, !329, i64 88, !329, i64 89, !329, i64 90, !329, i64 91, !329, i64 92, !329, i64 93}
!367 = !DILocation(line: 221, column: 9, scope: !311)
!368 = !DILocation(line: 222, column: 11, scope: !310)
!369 = !DILocation(line: 222, column: 7, scope: !311)
!370 = !DILocation(line: 224, column: 8, scope: !309)
!371 = !DILocation(line: 224, column: 30, scope: !309)
!372 = !DILocation(line: 223, column: 14, scope: !309)
!373 = !DILocation(line: 223, column: 10, scope: !309)
!374 = !DILocation(line: 225, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !309, file: !1, line: 225, column: 8)
!376 = !DILocation(line: 225, column: 10, scope: !375)
!377 = !DILocation(line: 225, column: 17, scope: !375)
!378 = !DILocation(line: 225, column: 15, scope: !375)
!379 = !DILocation(line: 225, column: 8, scope: !309)
!380 = !DILocation(line: 226, column: 9, scope: !375)
!381 = !DILocation(line: 226, column: 5, scope: !375)
!382 = !DILocation(line: 228, column: 46, scope: !311)
!383 = !DILocation(line: 228, column: 50, scope: !311)
!384 = !DILocation(line: 228, column: 43, scope: !311)
!385 = !DILocation(line: 228, column: 25, scope: !311)
!386 = !DILocation(line: 229, column: 2, scope: !311)
!387 = !DILocation(line: 231, column: 9, scope: !18)
!388 = !DILocation(line: 233, column: 9, scope: !18)
!389 = !DILocation(line: 0, scope: !18)
!390 = !DILocation(line: 234, column: 1, scope: !18)
!391 = distinct !DISubprogram(name: "_wcstod_r", scope: !1, file: !1, line: 237, type: !392, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!21, !22, !292, !294}
!394 = !{!395, !396, !397}
!395 = !DILocalVariable(name: "ptr", arg: 1, scope: !391, file: !1, line: 237, type: !22)
!396 = !DILocalVariable(name: "nptr", arg: 2, scope: !391, file: !1, line: 237, type: !292)
!397 = !DILocalVariable(name: "endptr", arg: 3, scope: !391, file: !1, line: 237, type: !294)
!398 = !DILocation(line: 237, column: 1, scope: !391)
!399 = !DILocation(line: 230, column: 10, scope: !400, inlinedAt: !403)
!400 = distinct !DISubprogram(name: "__get_current_locale", scope: !117, file: !117, line: 228, type: !401, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!401 = !DISubroutineType(types: !402)
!402 = !{!115}
!403 = distinct !DILocation(line: 242, column: 40, scope: !391)
!404 = !DILocation(line: 230, column: 18, scope: !400, inlinedAt: !403)
!405 = !{!406, !337, i64 72}
!406 = !{!"_reent", !328, i64 0, !337, i64 8, !337, i64 16, !337, i64 24, !328, i64 32, !329, i64 36, !328, i64 64, !337, i64 72, !328, i64 80, !337, i64 88, !337, i64 96, !328, i64 104, !337, i64 112, !337, i64 120, !328, i64 128, !337, i64 136, !329, i64 144, !337, i64 504, !407, i64 512, !337, i64 1304, !409, i64 1312, !329, i64 1336}
!407 = !{!"_atexit", !337, i64 0, !328, i64 8, !329, i64 16, !408, i64 272}
!408 = !{!"_on_exit_args", !329, i64 0, !329, i64 256, !328, i64 512, !328, i64 516}
!409 = !{!"_glue", !337, i64 0, !328, i64 8, !337, i64 16}
!410 = !DILocation(line: 242, column: 10, scope: !391)
!411 = !DILocation(line: 242, column: 3, scope: !391)
!412 = distinct !DISubprogram(name: "_wcstof_r", scope: !1, file: !1, line: 246, type: !413, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!14, !22, !292, !294}
!415 = !{!416, !417, !418, !419}
!416 = !DILocalVariable(name: "ptr", arg: 1, scope: !412, file: !1, line: 246, type: !22)
!417 = !DILocalVariable(name: "nptr", arg: 2, scope: !412, file: !1, line: 246, type: !292)
!418 = !DILocalVariable(name: "endptr", arg: 3, scope: !412, file: !1, line: 246, type: !294)
!419 = !DILocalVariable(name: "retval", scope: !412, file: !1, line: 251, type: !21)
!420 = !DILocation(line: 246, column: 1, scope: !412)
!421 = !DILocation(line: 230, column: 10, scope: !400, inlinedAt: !422)
!422 = distinct !DILocation(line: 251, column: 49, scope: !412)
!423 = !DILocation(line: 230, column: 18, scope: !400, inlinedAt: !422)
!424 = !DILocation(line: 251, column: 19, scope: !412)
!425 = !DILocation(line: 251, column: 10, scope: !412)
!426 = !DILocation(line: 252, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !412, file: !1, line: 252, column: 7)
!428 = !DILocation(line: 252, column: 7, scope: !412)
!429 = !DILocation(line: 253, column: 12, scope: !427)
!430 = !DILocation(line: 253, column: 5, scope: !427)
!431 = !DILocation(line: 254, column: 10, scope: !412)
!432 = !DILocation(line: 254, column: 3, scope: !412)
!433 = !DILocation(line: 0, scope: !412)
!434 = !DILocation(line: 255, column: 1, scope: !412)
!435 = distinct !DISubprogram(name: "wcstod_l", scope: !1, file: !1, line: 260, type: !436, isLocal: false, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !440)
!436 = !DISubroutineType(types: !437)
!437 = !{!21, !438, !439, !295}
!438 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!439 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !294)
!440 = !{!441, !442, !443}
!441 = !DILocalVariable(name: "nptr", arg: 1, scope: !435, file: !1, line: 260, type: !438)
!442 = !DILocalVariable(name: "endptr", arg: 2, scope: !435, file: !1, line: 260, type: !439)
!443 = !DILocalVariable(name: "loc", arg: 3, scope: !435, file: !1, line: 261, type: !295)
!444 = !DILocation(line: 260, column: 37, scope: !435)
!445 = !DILocation(line: 260, column: 64, scope: !435)
!446 = !DILocation(line: 261, column: 13, scope: !435)
!447 = !DILocation(line: 263, column: 21, scope: !435)
!448 = !DILocation(line: 263, column: 10, scope: !435)
!449 = !DILocation(line: 263, column: 3, scope: !435)
!450 = distinct !DISubprogram(name: "wcstod", scope: !1, file: !1, line: 267, type: !451, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!21, !438, !439}
!453 = !{!454, !455}
!454 = !DILocalVariable(name: "nptr", arg: 1, scope: !450, file: !1, line: 267, type: !438)
!455 = !DILocalVariable(name: "endptr", arg: 2, scope: !450, file: !1, line: 267, type: !439)
!456 = !DILocation(line: 267, column: 1, scope: !450)
!457 = !DILocation(line: 270, column: 21, scope: !450)
!458 = !DILocation(line: 230, column: 10, scope: !400, inlinedAt: !459)
!459 = distinct !DILocation(line: 270, column: 43, scope: !450)
!460 = !DILocation(line: 230, column: 18, scope: !400, inlinedAt: !459)
!461 = !DILocation(line: 270, column: 10, scope: !450)
!462 = !DILocation(line: 270, column: 3, scope: !450)
!463 = distinct !DISubprogram(name: "wcstof_l", scope: !1, file: !1, line: 274, type: !464, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!14, !438, !439, !295}
!466 = !{!467, !468, !469, !470, !471}
!467 = !DILocalVariable(name: "nptr", arg: 1, scope: !463, file: !1, line: 274, type: !438)
!468 = !DILocalVariable(name: "endptr", arg: 2, scope: !463, file: !1, line: 274, type: !439)
!469 = !DILocalVariable(name: "loc", arg: 3, scope: !463, file: !1, line: 275, type: !295)
!470 = !DILocalVariable(name: "val", scope: !463, file: !1, line: 277, type: !21)
!471 = !DILocalVariable(name: "retval", scope: !463, file: !1, line: 280, type: !14)
!472 = !DILocation(line: 274, column: 37, scope: !463)
!473 = !DILocation(line: 274, column: 64, scope: !463)
!474 = !DILocation(line: 275, column: 13, scope: !463)
!475 = !DILocation(line: 277, column: 27, scope: !463)
!476 = !DILocation(line: 277, column: 16, scope: !463)
!477 = !DILocation(line: 277, column: 10, scope: !463)
!478 = !DILocation(line: 278, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !463, file: !1, line: 278, column: 7)
!480 = !DILocation(line: 278, column: 7, scope: !463)
!481 = !DILocation(line: 279, column: 12, scope: !479)
!482 = !DILocation(line: 279, column: 5, scope: !479)
!483 = !DILocation(line: 280, column: 18, scope: !463)
!484 = !DILocation(line: 280, column: 9, scope: !463)
!485 = !DILocation(line: 282, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !463, file: !1, line: 282, column: 7)
!487 = !DILocation(line: 282, column: 22, scope: !486)
!488 = !DILocation(line: 282, column: 26, scope: !486)
!489 = !DILocation(line: 282, column: 7, scope: !463)
!490 = !DILocation(line: 283, column: 5, scope: !486)
!491 = !DILocation(line: 283, column: 13, scope: !486)
!492 = !DILocation(line: 283, column: 20, scope: !486)
!493 = !{!406, !328, i64 0}
!494 = !DILocation(line: 0, scope: !463)
!495 = !DILocation(line: 286, column: 1, scope: !463)
!496 = distinct !DISubprogram(name: "wcstof", scope: !1, file: !1, line: 289, type: !497, isLocal: false, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!14, !438, !439}
!499 = !{!500, !501, !502, !503}
!500 = !DILocalVariable(name: "nptr", arg: 1, scope: !496, file: !1, line: 289, type: !438)
!501 = !DILocalVariable(name: "endptr", arg: 2, scope: !496, file: !1, line: 289, type: !439)
!502 = !DILocalVariable(name: "val", scope: !496, file: !1, line: 293, type: !21)
!503 = !DILocalVariable(name: "retval", scope: !496, file: !1, line: 296, type: !14)
!504 = !DILocation(line: 289, column: 1, scope: !496)
!505 = !DILocation(line: 293, column: 27, scope: !496)
!506 = !DILocation(line: 230, column: 10, scope: !400, inlinedAt: !507)
!507 = distinct !DILocation(line: 293, column: 49, scope: !496)
!508 = !DILocation(line: 230, column: 18, scope: !400, inlinedAt: !507)
!509 = !DILocation(line: 293, column: 16, scope: !496)
!510 = !DILocation(line: 293, column: 10, scope: !496)
!511 = !DILocation(line: 294, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !1, line: 294, column: 7)
!513 = !DILocation(line: 294, column: 7, scope: !496)
!514 = !DILocation(line: 295, column: 12, scope: !512)
!515 = !DILocation(line: 295, column: 5, scope: !512)
!516 = !DILocation(line: 296, column: 18, scope: !496)
!517 = !DILocation(line: 296, column: 9, scope: !496)
!518 = !DILocation(line: 298, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !496, file: !1, line: 298, column: 7)
!520 = !DILocation(line: 298, column: 22, scope: !519)
!521 = !DILocation(line: 298, column: 26, scope: !519)
!522 = !DILocation(line: 298, column: 7, scope: !496)
!523 = !DILocation(line: 299, column: 5, scope: !519)
!524 = !DILocation(line: 299, column: 13, scope: !519)
!525 = !DILocation(line: 299, column: 20, scope: !519)
!526 = !DILocation(line: 0, scope: !496)
!527 = !DILocation(line: 303, column: 1, scope: !496)
