; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoll.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoll.c"
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
define dso_local i64 @_wcstoll_l(%struct._reent* nocapture, i32*, i32**, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !13 {
  br label %6, !dbg !317

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !318
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !320
  %9 = load i32, i32* %7, align 4, !dbg !321, !tbaa !322
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !327
  %11 = icmp eq i32 %10, 0, !dbg !328
  br i1 %11, label %12, label %6, !dbg !328, !llvm.loop !329

; <label>:12:                                     ; preds = %6
  switch i32 %9, label %18 [
    i32 45, label %14
    i32 43, label %13
  ], !dbg !331

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !332

; <label>:14:                                     ; preds = %12, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %12 ]
  %16 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !335
  %17 = load i32, i32* %8, align 4, !dbg !335, !tbaa !322
  br label %18, !dbg !337

; <label>:18:                                     ; preds = %14, %12
  %19 = phi i32* [ %8, %12 ], [ %16, %14 ], !dbg !318
  %20 = phi i32 [ %9, %12 ], [ %17, %14 ], !dbg !318
  %21 = phi i32 [ 0, %12 ], [ %15, %14 ], !dbg !339
  %22 = or i32 %3, 16, !dbg !337
  %23 = icmp eq i32 %22, 16, !dbg !337
  %24 = icmp eq i32 %20, 48, !dbg !340
  %25 = and i1 %23, %24, !dbg !337
  br i1 %25, label %26, label %34, !dbg !337

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %19, align 4, !dbg !341, !tbaa !322
  switch i32 %27, label %28 [
    i32 120, label %30
    i32 88, label %30
  ], !dbg !342

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %3, 0, !dbg !343
  br label %37, !dbg !345

; <label>:30:                                     ; preds = %26, %26
  %31 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !346
  %32 = load i32, i32* %31, align 4, !dbg !346, !tbaa !322
  %33 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !348
  br label %44, !dbg !349

; <label>:34:                                     ; preds = %18
  %35 = icmp eq i32 %3, 0, !dbg !343
  %36 = icmp eq i32 %20, 48, !dbg !350
  br i1 %36, label %37, label %39, !dbg !345

; <label>:37:                                     ; preds = %28, %34
  %38 = phi i1 [ %29, %28 ], [ %35, %34 ]
  br label %39, !dbg !345

; <label>:39:                                     ; preds = %34, %37
  %40 = phi i1 [ %38, %37 ], [ %35, %34 ]
  %41 = phi i32 [ 48, %37 ], [ %20, %34 ]
  %42 = phi i32 [ 8, %37 ], [ 10, %34 ]
  %43 = select i1 %40, i32 %42, i32 %3, !dbg !349
  br label %44, !dbg !349

; <label>:44:                                     ; preds = %39, %30
  %45 = phi i32 [ %32, %30 ], [ %41, %39 ]
  %46 = phi i32* [ %33, %30 ], [ %19, %39 ]
  %47 = phi i32 [ 16, %30 ], [ %43, %39 ]
  %48 = icmp ne i32 %21, 0, !dbg !351
  %49 = select i1 %48, i64 -9223372036854775808, i64 9223372036854775807, !dbg !351
  %50 = sext i32 %47 to i64, !dbg !353
  %51 = urem i64 %49, %50, !dbg !354
  %52 = trunc i64 %51 to i32, !dbg !355
  %53 = udiv i64 %49, %50, !dbg !357
  br label %54, !dbg !360

; <label>:54:                                     ; preds = %86, %44
  %55 = phi i32* [ %46, %44 ], [ %89, %86 ], !dbg !362
  %56 = phi i64 [ 0, %44 ], [ %87, %86 ], !dbg !364
  %57 = phi i32 [ %45, %44 ], [ %90, %86 ], !dbg !362
  %58 = phi i32 [ 0, %44 ], [ %88, %86 ], !dbg !365
  %59 = add i32 %57, -48, !dbg !368
  %60 = icmp ult i32 %59, 10, !dbg !368
  br i1 %60, label %71, label %61, !dbg !368

; <label>:61:                                     ; preds = %54
  %62 = add i32 %57, -65, !dbg !370
  %63 = icmp ult i32 %62, 26, !dbg !370
  br i1 %63, label %64, label %66, !dbg !370

; <label>:64:                                     ; preds = %61
  %65 = add nsw i32 %57, -55, !dbg !372
  br label %71, !dbg !373

; <label>:66:                                     ; preds = %61
  %67 = add i32 %57, -97, !dbg !374
  %68 = icmp ult i32 %67, 26, !dbg !374
  br i1 %68, label %69, label %91, !dbg !374

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %57, -87, !dbg !376
  br label %71

; <label>:71:                                     ; preds = %54, %64, %69
  %72 = phi i32 [ %65, %64 ], [ %70, %69 ], [ %59, %54 ], !dbg !377
  %73 = icmp slt i32 %72, %47, !dbg !378
  br i1 %73, label %74, label %91, !dbg !380

; <label>:74:                                     ; preds = %71
  %75 = icmp slt i32 %58, 0, !dbg !381
  %76 = icmp ugt i64 %56, %53, !dbg !382
  %77 = or i1 %76, %75, !dbg !383
  br i1 %77, label %86, label %78, !dbg !383

; <label>:78:                                     ; preds = %74
  %79 = icmp eq i64 %56, %53, !dbg !384
  %80 = icmp sgt i32 %72, %52, !dbg !385
  %81 = and i1 %79, %80, !dbg !386
  br i1 %81, label %86, label %82, !dbg !386

; <label>:82:                                     ; preds = %78
  %83 = mul i64 %56, %50, !dbg !387
  %84 = sext i32 %72 to i64, !dbg !389
  %85 = add i64 %83, %84, !dbg !390
  br label %86

; <label>:86:                                     ; preds = %74, %78, %82
  %87 = phi i64 [ %85, %82 ], [ %53, %78 ], [ %56, %74 ], !dbg !391
  %88 = phi i32 [ 1, %82 ], [ -1, %78 ], [ -1, %74 ], !dbg !391
  %89 = getelementptr inbounds i32, i32* %55, i64 1, !dbg !392
  %90 = load i32, i32* %55, align 4, !dbg !393, !tbaa !322
  br label %54, !dbg !394, !llvm.loop !395

; <label>:91:                                     ; preds = %71, %66
  %92 = icmp slt i32 %58, 0, !dbg !398
  br i1 %92, label %93, label %95, !dbg !400

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !401
  store i32 34, i32* %94, align 8, !dbg !403, !tbaa !404
  br label %98, !dbg !410

; <label>:95:                                     ; preds = %91
  %96 = sub i64 0, %56, !dbg !411
  %97 = select i1 %48, i64 %96, i64 %56, !dbg !413
  br label %98, !dbg !413

; <label>:98:                                     ; preds = %95, %93
  %99 = phi i64 [ %49, %93 ], [ %97, %95 ], !dbg !414
  %100 = icmp eq i32** %2, null, !dbg !415
  br i1 %100, label %105, label %101, !dbg !417

; <label>:101:                                    ; preds = %98
  %102 = icmp eq i32 %58, 0, !dbg !418
  %103 = getelementptr inbounds i32, i32* %55, i64 -1, !dbg !419
  %104 = select i1 %102, i32* %1, i32* %103, !dbg !418
  store i32* %104, i32** %2, align 8, !dbg !420, !tbaa !421
  br label %105, !dbg !422

; <label>:105:                                    ; preds = %98, %101
  ret i64 %99, !dbg !423
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstoll_r(%struct._reent* nocapture, i32*, i32**, i32) local_unnamed_addr #0 !dbg !424 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !433
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !438
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !438, !tbaa !439
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !433
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !433
  %10 = tail call i64 @_wcstoll_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* %9) #4, !dbg !440
  ret i64 %10, !dbg !441
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoll_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !442 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !456
  %6 = tail call i64 @_wcstoll_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !457
  ret i64 %6, !dbg !458
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoll(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !459 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !467
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !468
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !470
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !470, !tbaa !439
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !468
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !468
  %10 = tail call i64 @_wcstoll_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %9) #4, !dbg !471
  ret i64 %10, !dbg !472
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoll.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 83, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "_wcstoll_l", scope: !1, file: !1, line: 148, type: !14, isLocal: false, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !292, !294, !8, !295}
!16 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !103, !104, !105, !106, !110, !111, !174, !175, !179, !191, !192, !193, !195, !196, !197, !258, !277, !278, !283, !290}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !8, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !30, !31, !32, !34, !35, !40, !41, !43, !52, !58, !63, !67, !68, !69, !70, !74, !78, !79, !80, !82, !83, !87, !102}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !19, line: 182, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !19, line: 183, baseType: !8, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !19, line: 184, baseType: !8, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !19, line: 185, baseType: !33, size: 16, offset: 128)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !19, line: 186, baseType: !33, size: 16, offset: 144)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !19, line: 187, baseType: !36, size: 128, offset: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !36, file: !19, line: 118, baseType: !28, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !36, file: !19, line: 119, baseType: !8, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !19, line: 188, baseType: !8, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !19, line: 195, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !19, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !17, !42, !50, !8}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !53, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!47, !17, !42, !56, !8}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !59, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !17, !42, !62, !8}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !49)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !64, size: 64, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!8, !17, !42}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !36, size: 128, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !28, size: 64, offset: 832)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !8, size: 32, offset: 896)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !71, size: 24, offset: 928)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !75, size: 8, offset: 952)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !36, size: 128, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !8, size: 32, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !81, size: 64, offset: 1152)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !49)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !84, size: 32, offset: 1280)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !86, line: 12, baseType: !8)
!86 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !88, size: 64, offset: 1312)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !90)
!90 = !{!91, !92}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !89, file: !48, line: 165, baseType: !8, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !89, file: !48, line: 170, baseType: !93, size: 32, offset: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !89, file: !48, line: 166, size: 32, elements: !94)
!94 = !{!95, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !93, file: !48, line: 168, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !7, line: 124, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !93, file: !48, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !8, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !8, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !8, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !114, line: 178, size: 3392, elements: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !{!116, !121, !128, !136, !137, !138, !166, !170, !173}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !113, file: !114, line: 180, baseType: !117, size: 1792)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1792, elements: !118)
!118 = !{!119, !120}
!119 = !DISubrange(count: 7)
!120 = !DISubrange(count: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !113, file: !114, line: 181, baseType: !122, size: 64, offset: 1792)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!8, !17, !50, !6, !125}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !127, line: 86, baseType: !88)
!127 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !113, file: !114, line: 183, baseType: !129, size: 64, offset: 1856)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!8, !17, !5, !56, !132, !125}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 40, baseType: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !48, line: 129, baseType: !135)
!135 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !113, file: !114, line: 185, baseType: !8, size: 32, offset: 1920)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !113, file: !114, line: 186, baseType: !50, size: 64, offset: 1984)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !113, file: !114, line: 187, baseType: !139, size: 768, offset: 2048)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !140, line: 42, size: 768, elements: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !139, file: !140, line: 44, baseType: !50, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !139, file: !140, line: 45, baseType: !50, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !139, file: !140, line: 46, baseType: !50, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !139, file: !140, line: 47, baseType: !50, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !139, file: !140, line: 48, baseType: !50, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !139, file: !140, line: 49, baseType: !50, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !139, file: !140, line: 50, baseType: !50, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !139, file: !140, line: 51, baseType: !50, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !139, file: !140, line: 52, baseType: !50, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !139, file: !140, line: 53, baseType: !50, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !139, file: !140, line: 54, baseType: !51, size: 8, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !139, file: !140, line: 55, baseType: !51, size: 8, offset: 648)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !139, file: !140, line: 56, baseType: !51, size: 8, offset: 656)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !139, file: !140, line: 57, baseType: !51, size: 8, offset: 664)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !139, file: !140, line: 58, baseType: !51, size: 8, offset: 672)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !139, file: !140, line: 59, baseType: !51, size: 8, offset: 680)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !139, file: !140, line: 60, baseType: !51, size: 8, offset: 688)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !139, file: !140, line: 61, baseType: !51, size: 8, offset: 696)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !139, file: !140, line: 62, baseType: !51, size: 8, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !139, file: !140, line: 63, baseType: !51, size: 8, offset: 712)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !139, file: !140, line: 64, baseType: !51, size: 8, offset: 720)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !139, file: !140, line: 65, baseType: !51, size: 8, offset: 728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !139, file: !140, line: 66, baseType: !51, size: 8, offset: 736)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !139, file: !140, line: 67, baseType: !51, size: 8, offset: 744)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !113, file: !114, line: 189, baseType: !167, size: 16, offset: 2816)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 2)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !113, file: !114, line: 190, baseType: !171, size: 256, offset: 2832)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 256, elements: !172)
!172 = !{!120}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !113, file: !114, line: 191, baseType: !171, size: 256, offset: 3088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !8, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !176, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !17}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !180, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !181, file: !19, line: 49, baseType: !180, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !181, file: !19, line: 50, baseType: !8, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !181, file: !19, line: 50, baseType: !8, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !181, file: !19, line: 50, baseType: !8, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !181, file: !19, line: 50, baseType: !8, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !181, file: !19, line: 51, baseType: !189, size: 32, offset: 192)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 32, elements: !76)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !97)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !8, size: 32, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !180, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !194, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !8, size: 32, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !50, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !198, size: 2880, offset: 1152)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !199)
!199 = !{!200, !249}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !198, file: !19, line: 622, baseType: !201, size: 1728)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !19, line: 601, size: 1728, elements: !202)
!202 = !{!203, !204, !205, !209, !221, !222, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !201, file: !19, line: 603, baseType: !97, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !201, file: !19, line: 604, baseType: !50, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !201, file: !19, line: 605, baseType: !206, size: 208, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 208, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 26)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !201, file: !19, line: 606, baseType: !210, size: 288, offset: 352)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !210, file: !19, line: 57, baseType: !8, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !210, file: !19, line: 58, baseType: !8, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !210, file: !19, line: 59, baseType: !8, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !210, file: !19, line: 60, baseType: !8, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !210, file: !19, line: 61, baseType: !8, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !210, file: !19, line: 62, baseType: !8, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !210, file: !19, line: 63, baseType: !8, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !210, file: !19, line: 64, baseType: !8, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !210, file: !19, line: 65, baseType: !8, size: 32, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !201, file: !19, line: 607, baseType: !8, size: 32, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !201, file: !19, line: 608, baseType: !4, size: 64, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !201, file: !19, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !19, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !72)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !19, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !19, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !201, file: !19, line: 610, baseType: !88, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !201, file: !19, line: 611, baseType: !88, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !201, file: !19, line: 612, baseType: !88, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !201, file: !19, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !201, file: !19, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !201, file: !19, line: 615, baseType: !8, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !201, file: !19, line: 616, baseType: !88, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !201, file: !19, line: 617, baseType: !88, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !201, file: !19, line: 618, baseType: !88, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !201, file: !19, line: 619, baseType: !88, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !201, file: !19, line: 620, baseType: !88, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !201, file: !19, line: 621, baseType: !8, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !198, file: !19, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !19, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !19, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !19, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !19, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !19, line: 95, baseType: !8, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !19, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !172)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !19, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !19, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !172)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !19, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !19, line: 78, baseType: !190, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !19, line: 81, baseType: !190, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !8}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !19, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !19, line: 294, baseType: !8, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !72)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !296, line: 10, baseType: !112)
!296 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!298 = !DILocalVariable(name: "rptr", arg: 1, scope: !13, file: !1, line: 148, type: !17)
!299 = !DILocalVariable(name: "nptr", arg: 2, scope: !13, file: !1, line: 148, type: !292)
!300 = !DILocalVariable(name: "endptr", arg: 3, scope: !13, file: !1, line: 148, type: !294)
!301 = !DILocalVariable(name: "base", arg: 4, scope: !13, file: !1, line: 149, type: !8)
!302 = !DILocalVariable(name: "loc", arg: 5, scope: !13, file: !1, line: 149, type: !295)
!303 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 151, type: !292)
!304 = !DILocalVariable(name: "acc", scope: !13, file: !1, line: 152, type: !4)
!305 = !DILocalVariable(name: "c", scope: !13, file: !1, line: 153, type: !8)
!306 = !DILocalVariable(name: "cutoff", scope: !13, file: !1, line: 154, type: !4)
!307 = !DILocalVariable(name: "neg", scope: !13, file: !1, line: 155, type: !8)
!308 = !DILocalVariable(name: "any", scope: !13, file: !1, line: 155, type: !8)
!309 = !DILocalVariable(name: "cutlim", scope: !13, file: !1, line: 155, type: !8)
!310 = !DILocation(line: 148, column: 28, scope: !13)
!311 = !DILocation(line: 148, column: 49, scope: !13)
!312 = !DILocation(line: 148, column: 65, scope: !13)
!313 = !DILocation(line: 149, column: 10, scope: !13)
!314 = !DILocation(line: 149, column: 25, scope: !13)
!315 = !DILocation(line: 151, column: 26, scope: !13)
!316 = !DILocation(line: 155, column: 15, scope: !13)
!317 = !DILocation(line: 162, column: 2, scope: !13)
!318 = !DILocation(line: 0, scope: !319)
!319 = distinct !DILexicalBlock(scope: !13, file: !1, line: 162, column: 5)
!320 = !DILocation(line: 163, column: 9, scope: !319)
!321 = !DILocation(line: 163, column: 7, scope: !319)
!322 = !{!323, !323, i64 0}
!323 = !{!"int", !324, i64 0}
!324 = !{!"omnipotent char", !325, i64 0}
!325 = !{!"Simple C/C++ TBAA"}
!326 = !DILocation(line: 153, column: 15, scope: !13)
!327 = !DILocation(line: 164, column: 11, scope: !13)
!328 = !DILocation(line: 164, column: 2, scope: !319)
!329 = distinct !{!329, !317, !330}
!330 = !DILocation(line: 164, column: 29, scope: !13)
!331 = !DILocation(line: 165, column: 6, scope: !13)
!332 = !DILocation(line: 169, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 168, column: 13)
!334 = distinct !DILexicalBlock(scope: !13, file: !1, line: 165, column: 6)
!335 = !DILocation(line: 0, scope: !336)
!336 = distinct !DILexicalBlock(scope: !334, file: !1, line: 165, column: 17)
!337 = !DILocation(line: 170, column: 17, scope: !338)
!338 = distinct !DILexicalBlock(scope: !13, file: !1, line: 170, column: 6)
!339 = !DILocation(line: 0, scope: !13)
!340 = !DILocation(line: 171, column: 8, scope: !338)
!341 = !DILocation(line: 171, column: 20, scope: !338)
!342 = !DILocation(line: 171, column: 31, scope: !338)
!343 = !DILocation(line: 176, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !13, file: !1, line: 176, column: 6)
!345 = !DILocation(line: 177, column: 10, scope: !344)
!346 = !DILocation(line: 172, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !338, file: !1, line: 171, column: 47)
!348 = !DILocation(line: 173, column: 5, scope: !347)
!349 = !DILocation(line: 176, column: 6, scope: !13)
!350 = !DILocation(line: 177, column: 12, scope: !344)
!351 = !DILocation(line: 196, column: 11, scope: !13)
!352 = !DILocation(line: 154, column: 30, scope: !13)
!353 = !DILocation(line: 197, column: 20, scope: !13)
!354 = !DILocation(line: 197, column: 18, scope: !13)
!355 = !DILocation(line: 197, column: 11, scope: !13)
!356 = !DILocation(line: 155, column: 29, scope: !13)
!357 = !DILocation(line: 198, column: 9, scope: !13)
!358 = !DILocation(line: 152, column: 30, scope: !13)
!359 = !DILocation(line: 155, column: 24, scope: !13)
!360 = !DILocation(line: 199, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !13, file: !1, line: 199, column: 2)
!362 = !DILocation(line: 0, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !1, line: 199, column: 2)
!364 = !DILocation(line: 199, column: 11, scope: !361)
!365 = !DILocation(line: 0, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !1, line: 210, column: 20)
!367 = distinct !DILexicalBlock(scope: !363, file: !1, line: 199, column: 36)
!368 = !DILocation(line: 200, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 200, column: 7)
!370 = !DILocation(line: 202, column: 22, scope: !371)
!371 = distinct !DILexicalBlock(scope: !369, file: !1, line: 202, column: 12)
!372 = !DILocation(line: 203, column: 6, scope: !371)
!373 = !DILocation(line: 203, column: 4, scope: !371)
!374 = !DILocation(line: 204, column: 22, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !1, line: 204, column: 12)
!376 = !DILocation(line: 205, column: 6, scope: !375)
!377 = !DILocation(line: 0, scope: !375)
!378 = !DILocation(line: 208, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !367, file: !1, line: 208, column: 7)
!380 = !DILocation(line: 208, column: 7, scope: !367)
!381 = !DILocation(line: 210, column: 24, scope: !366)
!382 = !DILocation(line: 210, column: 35, scope: !366)
!383 = !DILocation(line: 210, column: 28, scope: !366)
!384 = !DILocation(line: 210, column: 52, scope: !366)
!385 = !DILocation(line: 210, column: 67, scope: !366)
!386 = !DILocation(line: 210, column: 62, scope: !366)
!387 = !DILocation(line: 214, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !366, file: !1, line: 212, column: 8)
!389 = !DILocation(line: 215, column: 11, scope: !388)
!390 = !DILocation(line: 215, column: 8, scope: !388)
!391 = !DILocation(line: 0, scope: !388)
!392 = !DILocation(line: 199, column: 32, scope: !363)
!393 = !DILocation(line: 199, column: 30, scope: !363)
!394 = !DILocation(line: 199, column: 2, scope: !363)
!395 = distinct !{!395, !396, !397}
!396 = !DILocation(line: 199, column: 2, scope: !361)
!397 = !DILocation(line: 217, column: 2, scope: !361)
!398 = !DILocation(line: 218, column: 10, scope: !399)
!399 = distinct !DILexicalBlock(scope: !13, file: !1, line: 218, column: 6)
!400 = !DILocation(line: 218, column: 6, scope: !13)
!401 = !DILocation(line: 220, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !1, line: 218, column: 15)
!403 = !DILocation(line: 220, column: 16, scope: !402)
!404 = !{!405, !323, i64 0}
!405 = !{!"_reent", !323, i64 0, !406, i64 8, !406, i64 16, !406, i64 24, !323, i64 32, !324, i64 36, !323, i64 64, !406, i64 72, !323, i64 80, !406, i64 88, !406, i64 96, !323, i64 104, !406, i64 112, !406, i64 120, !323, i64 128, !406, i64 136, !324, i64 144, !406, i64 504, !407, i64 512, !406, i64 1304, !409, i64 1312, !324, i64 1336}
!406 = !{!"any pointer", !324, i64 0}
!407 = !{!"_atexit", !406, i64 0, !323, i64 8, !324, i64 16, !408, i64 272}
!408 = !{!"_on_exit_args", !324, i64 0, !324, i64 256, !323, i64 512, !323, i64 516}
!409 = !{!"_glue", !406, i64 0, !323, i64 8, !406, i64 16}
!410 = !DILocation(line: 221, column: 2, scope: !402)
!411 = !DILocation(line: 222, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !399, file: !1, line: 221, column: 13)
!413 = !DILocation(line: 221, column: 13, scope: !399)
!414 = !DILocation(line: 0, scope: !361)
!415 = !DILocation(line: 223, column: 13, scope: !416)
!416 = distinct !DILexicalBlock(scope: !13, file: !1, line: 223, column: 6)
!417 = !DILocation(line: 223, column: 6, scope: !13)
!418 = !DILocation(line: 224, column: 26, scope: !416)
!419 = !DILocation(line: 224, column: 34, scope: !416)
!420 = !DILocation(line: 224, column: 11, scope: !416)
!421 = !{!406, !406, i64 0}
!422 = !DILocation(line: 224, column: 3, scope: !416)
!423 = !DILocation(line: 225, column: 2, scope: !13)
!424 = distinct !DISubprogram(name: "_wcstoll_r", scope: !1, file: !1, line: 229, type: !425, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!16, !17, !292, !294, !8}
!427 = !{!428, !429, !430, !431}
!428 = !DILocalVariable(name: "rptr", arg: 1, scope: !424, file: !1, line: 229, type: !17)
!429 = !DILocalVariable(name: "nptr", arg: 2, scope: !424, file: !1, line: 229, type: !292)
!430 = !DILocalVariable(name: "endptr", arg: 3, scope: !424, file: !1, line: 229, type: !294)
!431 = !DILocalVariable(name: "base", arg: 4, scope: !424, file: !1, line: 229, type: !8)
!432 = !DILocation(line: 229, column: 1, scope: !424)
!433 = !DILocation(line: 230, column: 10, scope: !434, inlinedAt: !437)
!434 = distinct !DISubprogram(name: "__get_current_locale", scope: !114, file: !114, line: 228, type: !435, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!435 = !DISubroutineType(types: !436)
!436 = !{!112}
!437 = distinct !DILocation(line: 235, column: 47, scope: !424)
!438 = !DILocation(line: 230, column: 18, scope: !434, inlinedAt: !437)
!439 = !{!405, !406, i64 72}
!440 = !DILocation(line: 235, column: 9, scope: !424)
!441 = !DILocation(line: 235, column: 2, scope: !424)
!442 = distinct !DISubprogram(name: "wcstoll_l", scope: !1, file: !1, line: 241, type: !443, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !447)
!443 = !DISubroutineType(types: !444)
!444 = !{!16, !445, !446, !8, !295}
!445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !292)
!446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !294)
!447 = !{!448, !449, !450, !451}
!448 = !DILocalVariable(name: "s", arg: 1, scope: !442, file: !1, line: 241, type: !445)
!449 = !DILocalVariable(name: "ptr", arg: 2, scope: !442, file: !1, line: 241, type: !446)
!450 = !DILocalVariable(name: "base", arg: 3, scope: !442, file: !1, line: 241, type: !8)
!451 = !DILocalVariable(name: "loc", arg: 4, scope: !442, file: !1, line: 242, type: !295)
!452 = !DILocation(line: 241, column: 38, scope: !442)
!453 = !DILocation(line: 241, column: 62, scope: !442)
!454 = !DILocation(line: 241, column: 71, scope: !442)
!455 = !DILocation(line: 242, column: 14, scope: !442)
!456 = !DILocation(line: 244, column: 21, scope: !442)
!457 = !DILocation(line: 244, column: 9, scope: !442)
!458 = !DILocation(line: 244, column: 2, scope: !442)
!459 = distinct !DISubprogram(name: "wcstoll", scope: !1, file: !1, line: 248, type: !460, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!16, !445, !446, !8}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "s", arg: 1, scope: !459, file: !1, line: 248, type: !445)
!464 = !DILocalVariable(name: "ptr", arg: 2, scope: !459, file: !1, line: 248, type: !446)
!465 = !DILocalVariable(name: "base", arg: 3, scope: !459, file: !1, line: 248, type: !8)
!466 = !DILocation(line: 248, column: 1, scope: !459)
!467 = !DILocation(line: 253, column: 21, scope: !459)
!468 = !DILocation(line: 230, column: 10, scope: !434, inlinedAt: !469)
!469 = distinct !DILocation(line: 253, column: 43, scope: !459)
!470 = !DILocation(line: 230, column: 18, scope: !434, inlinedAt: !469)
!471 = !DILocation(line: 253, column: 9, scope: !459)
!472 = !DILocation(line: 253, column: 2, scope: !459)
