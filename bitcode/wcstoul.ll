; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoul.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoul.c"
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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstoul_l(%struct._reent* nocapture, i32*, i32**, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !13 {
  br label %6, !dbg !316

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !317
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !319
  %9 = load i32, i32* %7, align 4, !dbg !320, !tbaa !321
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !326
  %11 = icmp eq i32 %10, 0, !dbg !327
  br i1 %11, label %12, label %6, !dbg !327, !llvm.loop !328

; <label>:12:                                     ; preds = %6
  switch i32 %9, label %18 [
    i32 45, label %14
    i32 43, label %13
  ], !dbg !330

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !331

; <label>:14:                                     ; preds = %12, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %12 ]
  %16 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !334
  %17 = load i32, i32* %8, align 4, !dbg !334, !tbaa !321
  br label %18, !dbg !336

; <label>:18:                                     ; preds = %14, %12
  %19 = phi i32 [ %9, %12 ], [ %17, %14 ], !dbg !317
  %20 = phi i32* [ %8, %12 ], [ %16, %14 ], !dbg !317
  %21 = phi i32 [ 0, %12 ], [ %15, %14 ], !dbg !338
  %22 = or i32 %3, 16, !dbg !336
  %23 = icmp eq i32 %22, 16, !dbg !336
  %24 = icmp eq i32 %19, 48, !dbg !339
  %25 = and i1 %23, %24, !dbg !336
  br i1 %25, label %26, label %34, !dbg !336

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %20, align 4, !dbg !340, !tbaa !321
  switch i32 %27, label %28 [
    i32 120, label %30
    i32 88, label %30
  ], !dbg !341

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %3, 0, !dbg !342
  br label %37, !dbg !344

; <label>:30:                                     ; preds = %26, %26
  %31 = getelementptr inbounds i32, i32* %20, i64 1, !dbg !345
  %32 = load i32, i32* %31, align 4, !dbg !345, !tbaa !321
  %33 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !347
  br label %44, !dbg !348

; <label>:34:                                     ; preds = %18
  %35 = icmp eq i32 %3, 0, !dbg !342
  %36 = icmp eq i32 %19, 48, !dbg !349
  br i1 %36, label %37, label %39, !dbg !344

; <label>:37:                                     ; preds = %28, %34
  %38 = phi i1 [ %29, %28 ], [ %35, %34 ]
  br label %39, !dbg !344

; <label>:39:                                     ; preds = %34, %37
  %40 = phi i1 [ %38, %37 ], [ %35, %34 ]
  %41 = phi i32 [ 48, %37 ], [ %19, %34 ]
  %42 = phi i32 [ 8, %37 ], [ 10, %34 ]
  %43 = select i1 %40, i32 %42, i32 %3, !dbg !348
  br label %44, !dbg !348

; <label>:44:                                     ; preds = %39, %30
  %45 = phi i32* [ %33, %30 ], [ %20, %39 ]
  %46 = phi i32 [ %32, %30 ], [ %41, %39 ]
  %47 = phi i32 [ 16, %30 ], [ %43, %39 ]
  %48 = sext i32 %47 to i64, !dbg !350
  %49 = udiv i64 -1, %48, !dbg !351
  %50 = urem i64 -1, %48, !dbg !353
  %51 = trunc i64 %50 to i32, !dbg !354
  br label %52, !dbg !358

; <label>:52:                                     ; preds = %84, %44
  %53 = phi i64 [ 0, %44 ], [ %85, %84 ], !dbg !360
  %54 = phi i32 [ %46, %44 ], [ %88, %84 ], !dbg !361
  %55 = phi i32* [ %45, %44 ], [ %87, %84 ], !dbg !361
  %56 = phi i32 [ 0, %44 ], [ %86, %84 ], !dbg !363
  %57 = add i32 %54, -48, !dbg !366
  %58 = icmp ult i32 %57, 10, !dbg !366
  br i1 %58, label %69, label %59, !dbg !366

; <label>:59:                                     ; preds = %52
  %60 = add i32 %54, -65, !dbg !368
  %61 = icmp ult i32 %60, 26, !dbg !368
  br i1 %61, label %62, label %64, !dbg !368

; <label>:62:                                     ; preds = %59
  %63 = add nsw i32 %54, -55, !dbg !370
  br label %69, !dbg !371

; <label>:64:                                     ; preds = %59
  %65 = add i32 %54, -97, !dbg !372
  %66 = icmp ult i32 %65, 26, !dbg !372
  br i1 %66, label %67, label %89, !dbg !372

; <label>:67:                                     ; preds = %64
  %68 = add nsw i32 %54, -87, !dbg !374
  br label %69

; <label>:69:                                     ; preds = %52, %62, %67
  %70 = phi i32 [ %63, %62 ], [ %68, %67 ], [ %57, %52 ], !dbg !375
  %71 = icmp slt i32 %70, %47, !dbg !376
  br i1 %71, label %72, label %89, !dbg !378

; <label>:72:                                     ; preds = %69
  %73 = icmp slt i32 %56, 0, !dbg !379
  %74 = icmp ugt i64 %53, %49, !dbg !380
  %75 = or i1 %74, %73, !dbg !381
  br i1 %75, label %84, label %76, !dbg !381

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i64 %53, %49, !dbg !382
  %78 = icmp sgt i32 %70, %51, !dbg !383
  %79 = and i1 %77, %78, !dbg !384
  br i1 %79, label %84, label %80, !dbg !384

; <label>:80:                                     ; preds = %76
  %81 = mul i64 %53, %48, !dbg !385
  %82 = sext i32 %70 to i64, !dbg !387
  %83 = add i64 %81, %82, !dbg !388
  br label %84

; <label>:84:                                     ; preds = %72, %76, %80
  %85 = phi i64 [ %83, %80 ], [ %49, %76 ], [ %53, %72 ], !dbg !389
  %86 = phi i32 [ 1, %80 ], [ -1, %76 ], [ -1, %72 ], !dbg !389
  %87 = getelementptr inbounds i32, i32* %55, i64 1, !dbg !390
  %88 = load i32, i32* %55, align 4, !dbg !391, !tbaa !321
  br label %52, !dbg !392, !llvm.loop !393

; <label>:89:                                     ; preds = %69, %64
  %90 = icmp slt i32 %56, 0, !dbg !396
  br i1 %90, label %91, label %93, !dbg !398

; <label>:91:                                     ; preds = %89
  %92 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !399
  store i32 34, i32* %92, align 8, !dbg !401, !tbaa !402
  br label %97, !dbg !408

; <label>:93:                                     ; preds = %89
  %94 = icmp eq i32 %21, 0, !dbg !409
  %95 = sub i64 0, %53, !dbg !411
  %96 = select i1 %94, i64 %53, i64 %95, !dbg !412
  br label %97, !dbg !412

; <label>:97:                                     ; preds = %93, %91
  %98 = phi i64 [ -1, %91 ], [ %96, %93 ], !dbg !413
  %99 = icmp eq i32** %2, null, !dbg !414
  br i1 %99, label %104, label %100, !dbg !416

; <label>:100:                                    ; preds = %97
  %101 = icmp eq i32 %56, 0, !dbg !417
  %102 = getelementptr inbounds i32, i32* %55, i64 -1, !dbg !418
  %103 = select i1 %101, i32* %1, i32* %102, !dbg !417
  store i32* %103, i32** %2, align 8, !dbg !419, !tbaa !420
  br label %104, !dbg !421

; <label>:104:                                    ; preds = %97, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  ret i64 %98, !dbg !422
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstoul_r(%struct._reent* nocapture, i32*, i32**, i32) local_unnamed_addr #0 !dbg !423 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !432
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !437
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !437, !tbaa !438
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !432
  br i1 %8, label %9, label %10, !dbg !432

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br label %10, !dbg !432

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %12 = tail call i64 @_wcstoul_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  ret i64 %12, !dbg !444
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoul_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !445 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !459
  %6 = tail call i64 @_wcstoul_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  ret i64 %6, !dbg !461
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoul(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !462 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !470
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !471
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !473
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !473, !tbaa !438
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !471
  br i1 %8, label %9, label %10, !dbg !471

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br label %10, !dbg !471

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  %12 = tail call i64 @_wcstoul_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  ret i64 %12, !dbg !478
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoul.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 83, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "_wcstoul_l", scope: !1, file: !1, line: 148, type: !14, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !16, !291, !293, !8, !294}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !102, !103, !104, !105, !109, !110, !172, !173, !177, !189, !190, !191, !193, !194, !195, !257, !276, !277, !282, !289}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !17, file: !18, line: 571, baseType: !8, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !25)
!25 = !{!26, !29, !30, !31, !33, !34, !39, !40, !42, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !101}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !24, file: !18, line: 182, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !24, file: !18, line: 183, baseType: !8, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !24, file: !18, line: 184, baseType: !8, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !18, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !24, file: !18, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !24, file: !18, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !18, line: 118, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !18, line: 119, baseType: !8, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !24, file: !18, line: 188, baseType: !8, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !24, file: !18, line: 195, baseType: !41, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !24, file: !18, line: 197, baseType: !43, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !16, !41, !49, !8}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !47, line: 145, baseType: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !24, file: !18, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!46, !16, !41, !55, !8}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !24, file: !18, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !16, !41, !61, !8}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !47, line: 114, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !24, file: !18, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !16, !41}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !24, file: !18, line: 206, baseType: !35, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !24, file: !18, line: 207, baseType: !27, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !24, file: !18, line: 208, baseType: !8, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !24, file: !18, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !24, file: !18, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !24, file: !18, line: 215, baseType: !35, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !24, file: !18, line: 218, baseType: !8, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !18, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !47, line: 44, baseType: !48)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !24, file: !18, line: 222, baseType: !16, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !18, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !47, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !8)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !24, file: !18, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !47, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !47, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !47, line: 165, baseType: !8, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !47, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !47, line: 166, size: 32, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !47, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !7, line: 124, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !47, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !18, line: 229, baseType: !8, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !17, file: !18, line: 576, baseType: !22, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !17, file: !18, line: 578, baseType: !8, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !17, file: !18, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !17, file: !18, line: 582, baseType: !8, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !17, file: !18, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !113, line: 178, size: 3392, elements: !114)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !{!115, !120, !127, !134, !135, !136, !164, !168, !171}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !112, file: !113, line: 180, baseType: !116, size: 1792)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1792, elements: !117)
!117 = !{!118, !119}
!118 = !DISubrange(count: 7)
!119 = !DISubrange(count: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !112, file: !113, line: 181, baseType: !121, size: 64, offset: 1792)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!8, !16, !49, !6, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !126, line: 86, baseType: !87)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !112, file: !113, line: 183, baseType: !128, size: 64, offset: 1856)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!8, !16, !5, !55, !131, !124}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 40, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !47, line: 129, baseType: !4)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !112, file: !113, line: 185, baseType: !8, size: 32, offset: 1920)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !112, file: !113, line: 186, baseType: !49, size: 64, offset: 1984)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !112, file: !113, line: 187, baseType: !137, size: 768, offset: 2048)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !138, line: 42, size: 768, elements: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !137, file: !138, line: 44, baseType: !49, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !137, file: !138, line: 45, baseType: !49, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !137, file: !138, line: 46, baseType: !49, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !137, file: !138, line: 47, baseType: !49, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !137, file: !138, line: 48, baseType: !49, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !137, file: !138, line: 49, baseType: !49, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !137, file: !138, line: 50, baseType: !49, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !137, file: !138, line: 51, baseType: !49, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !137, file: !138, line: 52, baseType: !49, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !137, file: !138, line: 53, baseType: !49, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !137, file: !138, line: 54, baseType: !50, size: 8, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !137, file: !138, line: 55, baseType: !50, size: 8, offset: 648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !137, file: !138, line: 56, baseType: !50, size: 8, offset: 656)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !137, file: !138, line: 57, baseType: !50, size: 8, offset: 664)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !137, file: !138, line: 58, baseType: !50, size: 8, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !137, file: !138, line: 59, baseType: !50, size: 8, offset: 680)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !137, file: !138, line: 60, baseType: !50, size: 8, offset: 688)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !137, file: !138, line: 61, baseType: !50, size: 8, offset: 696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !137, file: !138, line: 62, baseType: !50, size: 8, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !137, file: !138, line: 63, baseType: !50, size: 8, offset: 712)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !137, file: !138, line: 64, baseType: !50, size: 8, offset: 720)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !137, file: !138, line: 65, baseType: !50, size: 8, offset: 728)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !137, file: !138, line: 66, baseType: !50, size: 8, offset: 736)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !137, file: !138, line: 67, baseType: !50, size: 8, offset: 744)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !112, file: !113, line: 189, baseType: !165, size: 16, offset: 2816)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 16, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !112, file: !113, line: 190, baseType: !169, size: 256, offset: 2832)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !170)
!170 = !{!119}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !112, file: !113, line: 191, baseType: !169, size: 256, offset: 3088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !8, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !174, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !16}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !179, file: !18, line: 49, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !179, file: !18, line: 50, baseType: !8, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !179, file: !18, line: 50, baseType: !8, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !179, file: !18, line: 50, baseType: !8, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !179, file: !18, line: 50, baseType: !8, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !179, file: !18, line: 51, baseType: !187, size: 32, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32, elements: !75)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !8, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !178, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !8, size: 32, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !49, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !196, size: 2880, offset: 1152)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !197)
!197 = !{!198, !248}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !196, file: !18, line: 622, baseType: !199, size: 1728)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !18, line: 601, size: 1728, elements: !200)
!200 = !{!201, !202, !203, !207, !219, !220, !222, !230, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !199, file: !18, line: 603, baseType: !96, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !199, file: !18, line: 604, baseType: !49, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !199, file: !18, line: 605, baseType: !204, size: 208, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 26)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !199, file: !18, line: 606, baseType: !208, size: 288, offset: 352)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !208, file: !18, line: 57, baseType: !8, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !208, file: !18, line: 58, baseType: !8, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !208, file: !18, line: 59, baseType: !8, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !208, file: !18, line: 60, baseType: !8, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !208, file: !18, line: 61, baseType: !8, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !208, file: !18, line: 62, baseType: !8, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !208, file: !18, line: 63, baseType: !8, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !208, file: !18, line: 64, baseType: !8, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !208, file: !18, line: 65, baseType: !8, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !199, file: !18, line: 607, baseType: !8, size: 32, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !199, file: !18, line: 608, baseType: !221, size: 64, offset: 704)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !199, file: !18, line: 609, baseType: !223, size: 112, offset: 768)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !224)
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !223, file: !18, line: 320, baseType: !226, size: 48)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !71)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !223, file: !18, line: 321, baseType: !226, size: 48, offset: 48)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !223, file: !18, line: 322, baseType: !227, size: 16, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !199, file: !18, line: 610, baseType: !87, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !199, file: !18, line: 611, baseType: !87, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !199, file: !18, line: 612, baseType: !87, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !199, file: !18, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !199, file: !18, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !199, file: !18, line: 615, baseType: !8, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !199, file: !18, line: 616, baseType: !87, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !199, file: !18, line: 617, baseType: !87, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !199, file: !18, line: 618, baseType: !87, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !199, file: !18, line: 619, baseType: !87, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !199, file: !18, line: 620, baseType: !87, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !199, file: !18, line: 621, baseType: !8, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !196, file: !18, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !18, line: 626, size: 2880, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !249, file: !18, line: 629, baseType: !252, size: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1920, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 30)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !249, file: !18, line: 630, baseType: !256, size: 960, offset: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !17, file: !18, line: 636, baseType: !258, size: 64, offset: 4032)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !260)
!260 = !{!261, !262, !263, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !18, line: 94, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !259, file: !18, line: 95, baseType: !8, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !259, file: !18, line: 97, baseType: !264, size: 2048, offset: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !170)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !18, line: 98, baseType: !269, size: 4160, offset: 2176)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !270)
!270 = !{!271, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !269, file: !18, line: 75, baseType: !272, size: 2048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !170)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !269, file: !18, line: 76, baseType: !272, size: 2048, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !269, file: !18, line: 78, baseType: !188, size: 32, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !269, file: !18, line: 81, baseType: !188, size: 32, offset: 4128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !17, file: !18, line: 637, baseType: !259, size: 6336, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !17, file: !18, line: 641, baseType: !278, size: 64, offset: 10432)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !8}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !17, file: !18, line: 646, baseType: !283, size: 192, offset: 10496)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !284)
!284 = !{!285, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !283, file: !18, line: 293, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !283, file: !18, line: 294, baseType: !8, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !283, file: !18, line: 295, baseType: !22, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !17, file: !18, line: 648, baseType: !290, size: 4224, offset: 10688)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4224, elements: !71)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !295, line: 10, baseType: !111)
!295 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!297 = !DILocalVariable(name: "rptr", arg: 1, scope: !13, file: !1, line: 148, type: !16)
!298 = !DILocalVariable(name: "nptr", arg: 2, scope: !13, file: !1, line: 148, type: !291)
!299 = !DILocalVariable(name: "endptr", arg: 3, scope: !13, file: !1, line: 148, type: !293)
!300 = !DILocalVariable(name: "base", arg: 4, scope: !13, file: !1, line: 149, type: !8)
!301 = !DILocalVariable(name: "loc", arg: 5, scope: !13, file: !1, line: 149, type: !294)
!302 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 151, type: !291)
!303 = !DILocalVariable(name: "acc", scope: !13, file: !1, line: 152, type: !4)
!304 = !DILocalVariable(name: "c", scope: !13, file: !1, line: 153, type: !8)
!305 = !DILocalVariable(name: "cutoff", scope: !13, file: !1, line: 154, type: !4)
!306 = !DILocalVariable(name: "neg", scope: !13, file: !1, line: 155, type: !8)
!307 = !DILocalVariable(name: "any", scope: !13, file: !1, line: 155, type: !8)
!308 = !DILocalVariable(name: "cutlim", scope: !13, file: !1, line: 155, type: !8)
!309 = !DILocation(line: 148, column: 28, scope: !13)
!310 = !DILocation(line: 148, column: 49, scope: !13)
!311 = !DILocation(line: 148, column: 65, scope: !13)
!312 = !DILocation(line: 149, column: 10, scope: !13)
!313 = !DILocation(line: 149, column: 25, scope: !13)
!314 = !DILocation(line: 151, column: 26, scope: !13)
!315 = !DILocation(line: 155, column: 15, scope: !13)
!316 = !DILocation(line: 160, column: 2, scope: !13)
!317 = !DILocation(line: 0, scope: !318)
!318 = distinct !DILexicalBlock(scope: !13, file: !1, line: 160, column: 5)
!319 = !DILocation(line: 161, column: 9, scope: !318)
!320 = !DILocation(line: 161, column: 7, scope: !318)
!321 = !{!322, !322, i64 0}
!322 = !{!"int", !323, i64 0}
!323 = !{!"omnipotent char", !324, i64 0}
!324 = !{!"Simple C/C++ TBAA"}
!325 = !DILocation(line: 153, column: 15, scope: !13)
!326 = !DILocation(line: 162, column: 11, scope: !13)
!327 = !DILocation(line: 162, column: 2, scope: !318)
!328 = distinct !{!328, !316, !329}
!329 = !DILocation(line: 162, column: 29, scope: !13)
!330 = !DILocation(line: 163, column: 6, scope: !13)
!331 = !DILocation(line: 167, column: 3, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !1, line: 166, column: 13)
!333 = distinct !DILexicalBlock(scope: !13, file: !1, line: 163, column: 6)
!334 = !DILocation(line: 0, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !1, line: 163, column: 17)
!336 = !DILocation(line: 168, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !13, file: !1, line: 168, column: 6)
!338 = !DILocation(line: 0, scope: !13)
!339 = !DILocation(line: 169, column: 8, scope: !337)
!340 = !DILocation(line: 169, column: 20, scope: !337)
!341 = !DILocation(line: 169, column: 31, scope: !337)
!342 = !DILocation(line: 174, column: 11, scope: !343)
!343 = distinct !DILexicalBlock(scope: !13, file: !1, line: 174, column: 6)
!344 = !DILocation(line: 175, column: 10, scope: !343)
!345 = !DILocation(line: 170, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !1, line: 169, column: 47)
!347 = !DILocation(line: 171, column: 5, scope: !346)
!348 = !DILocation(line: 174, column: 6, scope: !13)
!349 = !DILocation(line: 175, column: 12, scope: !343)
!350 = !DILocation(line: 176, column: 38, scope: !13)
!351 = !DILocation(line: 176, column: 36, scope: !13)
!352 = !DILocation(line: 154, column: 25, scope: !13)
!353 = !DILocation(line: 177, column: 36, scope: !13)
!354 = !DILocation(line: 177, column: 11, scope: !13)
!355 = !DILocation(line: 155, column: 29, scope: !13)
!356 = !DILocation(line: 152, column: 25, scope: !13)
!357 = !DILocation(line: 155, column: 24, scope: !13)
!358 = !DILocation(line: 178, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !13, file: !1, line: 178, column: 2)
!360 = !DILocation(line: 178, column: 11, scope: !359)
!361 = !DILocation(line: 0, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 178, column: 2)
!363 = !DILocation(line: 0, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 189, column: 20)
!365 = distinct !DILexicalBlock(scope: !362, file: !1, line: 178, column: 36)
!366 = !DILocation(line: 179, column: 17, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !1, line: 179, column: 7)
!368 = !DILocation(line: 181, column: 22, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 181, column: 12)
!370 = !DILocation(line: 182, column: 6, scope: !369)
!371 = !DILocation(line: 182, column: 4, scope: !369)
!372 = !DILocation(line: 183, column: 22, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 183, column: 12)
!374 = !DILocation(line: 184, column: 6, scope: !373)
!375 = !DILocation(line: 0, scope: !373)
!376 = !DILocation(line: 187, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !365, file: !1, line: 187, column: 7)
!378 = !DILocation(line: 187, column: 7, scope: !365)
!379 = !DILocation(line: 189, column: 24, scope: !364)
!380 = !DILocation(line: 189, column: 35, scope: !364)
!381 = !DILocation(line: 189, column: 28, scope: !364)
!382 = !DILocation(line: 189, column: 52, scope: !364)
!383 = !DILocation(line: 189, column: 67, scope: !364)
!384 = !DILocation(line: 189, column: 62, scope: !364)
!385 = !DILocation(line: 193, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !364, file: !1, line: 191, column: 8)
!387 = !DILocation(line: 194, column: 11, scope: !386)
!388 = !DILocation(line: 194, column: 8, scope: !386)
!389 = !DILocation(line: 0, scope: !386)
!390 = !DILocation(line: 178, column: 32, scope: !362)
!391 = !DILocation(line: 178, column: 30, scope: !362)
!392 = !DILocation(line: 178, column: 2, scope: !362)
!393 = distinct !{!393, !394, !395}
!394 = !DILocation(line: 178, column: 2, scope: !359)
!395 = !DILocation(line: 196, column: 2, scope: !359)
!396 = !DILocation(line: 197, column: 10, scope: !397)
!397 = distinct !DILexicalBlock(scope: !13, file: !1, line: 197, column: 6)
!398 = !DILocation(line: 197, column: 6, scope: !13)
!399 = !DILocation(line: 199, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 197, column: 15)
!401 = !DILocation(line: 199, column: 16, scope: !400)
!402 = !{!403, !322, i64 0}
!403 = !{!"_reent", !322, i64 0, !404, i64 8, !404, i64 16, !404, i64 24, !322, i64 32, !323, i64 36, !322, i64 64, !404, i64 72, !322, i64 80, !404, i64 88, !404, i64 96, !322, i64 104, !404, i64 112, !404, i64 120, !322, i64 128, !404, i64 136, !323, i64 144, !404, i64 504, !405, i64 512, !404, i64 1304, !407, i64 1312, !323, i64 1336}
!404 = !{!"any pointer", !323, i64 0}
!405 = !{!"_atexit", !404, i64 0, !322, i64 8, !323, i64 16, !406, i64 272}
!406 = !{!"_on_exit_args", !323, i64 0, !323, i64 256, !322, i64 512, !322, i64 516}
!407 = !{!"_glue", !404, i64 0, !322, i64 8, !404, i64 16}
!408 = !DILocation(line: 200, column: 2, scope: !400)
!409 = !DILocation(line: 200, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !397, file: !1, line: 200, column: 13)
!411 = !DILocation(line: 201, column: 9, scope: !410)
!412 = !DILocation(line: 200, column: 13, scope: !397)
!413 = !DILocation(line: 0, scope: !359)
!414 = !DILocation(line: 202, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !13, file: !1, line: 202, column: 6)
!416 = !DILocation(line: 202, column: 6, scope: !13)
!417 = !DILocation(line: 203, column: 26, scope: !415)
!418 = !DILocation(line: 203, column: 34, scope: !415)
!419 = !DILocation(line: 203, column: 11, scope: !415)
!420 = !{!404, !404, i64 0}
!421 = !DILocation(line: 203, column: 3, scope: !415)
!422 = !DILocation(line: 204, column: 2, scope: !13)
!423 = distinct !DISubprogram(name: "_wcstoul_r", scope: !1, file: !1, line: 208, type: !424, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!4, !16, !291, !293, !8}
!426 = !{!427, !428, !429, !430}
!427 = !DILocalVariable(name: "rptr", arg: 1, scope: !423, file: !1, line: 208, type: !16)
!428 = !DILocalVariable(name: "nptr", arg: 2, scope: !423, file: !1, line: 208, type: !291)
!429 = !DILocalVariable(name: "endptr", arg: 3, scope: !423, file: !1, line: 208, type: !293)
!430 = !DILocalVariable(name: "base", arg: 4, scope: !423, file: !1, line: 208, type: !8)
!431 = !DILocation(line: 208, column: 1, scope: !423)
!432 = !DILocation(line: 230, column: 10, scope: !433, inlinedAt: !436)
!433 = distinct !DISubprogram(name: "__get_current_locale", scope: !113, file: !113, line: 228, type: !434, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!434 = !DISubroutineType(types: !435)
!435 = !{!111}
!436 = distinct !DILocation(line: 214, column: 47, scope: !423)
!437 = !DILocation(line: 230, column: 18, scope: !433, inlinedAt: !436)
!438 = !{!403, !404, i64 72}
!439 = !DILocation(line: 213, column: 3, scope: !440, inlinedAt: !441)
!440 = distinct !DISubprogram(name: "__get_global_locale", scope: !113, file: !113, line: 210, type: !434, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!441 = distinct !DILocation(line: 230, column: 29, scope: !433, inlinedAt: !436)
!442 = !DILocation(line: 230, column: 3, scope: !433, inlinedAt: !436)
!443 = !DILocation(line: 214, column: 9, scope: !423)
!444 = !DILocation(line: 214, column: 2, scope: !423)
!445 = distinct !DISubprogram(name: "wcstoul_l", scope: !1, file: !1, line: 220, type: !446, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !450)
!446 = !DISubroutineType(types: !447)
!447 = !{!4, !448, !449, !8, !294}
!448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !293)
!450 = !{!451, !452, !453, !454}
!451 = !DILocalVariable(name: "s", arg: 1, scope: !445, file: !1, line: 220, type: !448)
!452 = !DILocalVariable(name: "ptr", arg: 2, scope: !445, file: !1, line: 220, type: !449)
!453 = !DILocalVariable(name: "base", arg: 3, scope: !445, file: !1, line: 220, type: !8)
!454 = !DILocalVariable(name: "loc", arg: 4, scope: !445, file: !1, line: 221, type: !294)
!455 = !DILocation(line: 220, column: 38, scope: !445)
!456 = !DILocation(line: 220, column: 62, scope: !445)
!457 = !DILocation(line: 220, column: 71, scope: !445)
!458 = !DILocation(line: 221, column: 14, scope: !445)
!459 = !DILocation(line: 223, column: 21, scope: !445)
!460 = !DILocation(line: 223, column: 9, scope: !445)
!461 = !DILocation(line: 223, column: 2, scope: !445)
!462 = distinct !DISubprogram(name: "wcstoul", scope: !1, file: !1, line: 227, type: !463, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!4, !448, !449, !8}
!465 = !{!466, !467, !468}
!466 = !DILocalVariable(name: "s", arg: 1, scope: !462, file: !1, line: 227, type: !448)
!467 = !DILocalVariable(name: "ptr", arg: 2, scope: !462, file: !1, line: 227, type: !449)
!468 = !DILocalVariable(name: "base", arg: 3, scope: !462, file: !1, line: 227, type: !8)
!469 = !DILocation(line: 227, column: 1, scope: !462)
!470 = !DILocation(line: 232, column: 21, scope: !462)
!471 = !DILocation(line: 230, column: 10, scope: !433, inlinedAt: !472)
!472 = distinct !DILocation(line: 232, column: 43, scope: !462)
!473 = !DILocation(line: 230, column: 18, scope: !433, inlinedAt: !472)
!474 = !DILocation(line: 213, column: 3, scope: !440, inlinedAt: !475)
!475 = distinct !DILocation(line: 230, column: 29, scope: !433, inlinedAt: !472)
!476 = !DILocation(line: 230, column: 3, scope: !433, inlinedAt: !472)
!477 = !DILocation(line: 232, column: 9, scope: !462)
!478 = !DILocation(line: 232, column: 2, scope: !462)
