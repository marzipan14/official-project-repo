; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstol.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstol.c"
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
define dso_local i64 @_wcstol_r(%struct._reent* nocapture, i32*, i32**, i32) local_unnamed_addr #0 !dbg !13 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !300
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !305
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !305, !tbaa !306
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !300
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !300
  %10 = tail call fastcc i64 @_wcstol_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* %9) #4, !dbg !315
  ret i64 %10, !dbg !316
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_wcstol_l(%struct._reent* nocapture, i32*, i32**, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !317 {
  br label %6, !dbg !342

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !343
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !345
  %9 = load i32, i32* %7, align 4, !dbg !346, !tbaa !347
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !349
  %11 = icmp eq i32 %10, 0, !dbg !350
  br i1 %11, label %12, label %6, !dbg !350, !llvm.loop !351

; <label>:12:                                     ; preds = %6
  switch i32 %9, label %18 [
    i32 45, label %14
    i32 43, label %13
  ], !dbg !353

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !354

; <label>:14:                                     ; preds = %12, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %12 ]
  %16 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !357
  %17 = load i32, i32* %8, align 4, !dbg !357, !tbaa !347
  br label %18, !dbg !359

; <label>:18:                                     ; preds = %14, %12
  %19 = phi i32* [ %8, %12 ], [ %16, %14 ], !dbg !343
  %20 = phi i32 [ %9, %12 ], [ %17, %14 ], !dbg !343
  %21 = phi i32 [ 0, %12 ], [ %15, %14 ], !dbg !361
  %22 = or i32 %3, 16, !dbg !359
  %23 = icmp eq i32 %22, 16, !dbg !359
  %24 = icmp eq i32 %20, 48, !dbg !362
  %25 = and i1 %23, %24, !dbg !359
  br i1 %25, label %26, label %34, !dbg !359

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %19, align 4, !dbg !363, !tbaa !347
  switch i32 %27, label %28 [
    i32 120, label %30
    i32 88, label %30
  ], !dbg !364

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %3, 0, !dbg !365
  br label %37, !dbg !367

; <label>:30:                                     ; preds = %26, %26
  %31 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !368
  %32 = load i32, i32* %31, align 4, !dbg !368, !tbaa !347
  %33 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !370
  br label %44, !dbg !371

; <label>:34:                                     ; preds = %18
  %35 = icmp eq i32 %3, 0, !dbg !365
  %36 = icmp eq i32 %20, 48, !dbg !372
  br i1 %36, label %37, label %39, !dbg !367

; <label>:37:                                     ; preds = %28, %34
  %38 = phi i1 [ %29, %28 ], [ %35, %34 ]
  br label %39, !dbg !367

; <label>:39:                                     ; preds = %34, %37
  %40 = phi i1 [ %38, %37 ], [ %35, %34 ]
  %41 = phi i32 [ 48, %37 ], [ %20, %34 ]
  %42 = phi i32 [ 8, %37 ], [ 10, %34 ]
  %43 = select i1 %40, i32 %42, i32 %3, !dbg !371
  br label %44, !dbg !371

; <label>:44:                                     ; preds = %39, %30
  %45 = phi i32 [ %32, %30 ], [ %41, %39 ]
  %46 = phi i32* [ %33, %30 ], [ %19, %39 ]
  %47 = phi i32 [ 16, %30 ], [ %43, %39 ]
  %48 = icmp ne i32 %21, 0, !dbg !373
  %49 = select i1 %48, i64 -9223372036854775808, i64 9223372036854775807, !dbg !373
  %50 = sext i32 %47 to i64, !dbg !375
  %51 = urem i64 %49, %50, !dbg !376
  %52 = trunc i64 %51 to i32, !dbg !377
  %53 = udiv i64 %49, %50, !dbg !379
  br label %54, !dbg !382

; <label>:54:                                     ; preds = %86, %44
  %55 = phi i32* [ %46, %44 ], [ %89, %86 ], !dbg !384
  %56 = phi i64 [ 0, %44 ], [ %87, %86 ], !dbg !386
  %57 = phi i32 [ %45, %44 ], [ %90, %86 ], !dbg !384
  %58 = phi i32 [ 0, %44 ], [ %88, %86 ], !dbg !387
  %59 = add i32 %57, -48, !dbg !390
  %60 = icmp ult i32 %59, 10, !dbg !390
  br i1 %60, label %71, label %61, !dbg !390

; <label>:61:                                     ; preds = %54
  %62 = add i32 %57, -65, !dbg !392
  %63 = icmp ult i32 %62, 26, !dbg !392
  br i1 %63, label %64, label %66, !dbg !392

; <label>:64:                                     ; preds = %61
  %65 = add nsw i32 %57, -55, !dbg !394
  br label %71, !dbg !395

; <label>:66:                                     ; preds = %61
  %67 = add i32 %57, -97, !dbg !396
  %68 = icmp ult i32 %67, 26, !dbg !396
  br i1 %68, label %69, label %91, !dbg !396

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %57, -87, !dbg !398
  br label %71

; <label>:71:                                     ; preds = %54, %64, %69
  %72 = phi i32 [ %65, %64 ], [ %70, %69 ], [ %59, %54 ], !dbg !399
  %73 = icmp slt i32 %72, %47, !dbg !400
  br i1 %73, label %74, label %91, !dbg !402

; <label>:74:                                     ; preds = %71
  %75 = icmp slt i32 %58, 0, !dbg !403
  %76 = icmp ugt i64 %56, %53, !dbg !404
  %77 = or i1 %76, %75, !dbg !405
  br i1 %77, label %86, label %78, !dbg !405

; <label>:78:                                     ; preds = %74
  %79 = icmp eq i64 %56, %53, !dbg !406
  %80 = icmp sgt i32 %72, %52, !dbg !407
  %81 = and i1 %79, %80, !dbg !408
  br i1 %81, label %86, label %82, !dbg !408

; <label>:82:                                     ; preds = %78
  %83 = mul i64 %56, %50, !dbg !409
  %84 = sext i32 %72 to i64, !dbg !411
  %85 = add i64 %83, %84, !dbg !412
  br label %86

; <label>:86:                                     ; preds = %74, %78, %82
  %87 = phi i64 [ %85, %82 ], [ %53, %78 ], [ %56, %74 ], !dbg !413
  %88 = phi i32 [ 1, %82 ], [ -1, %78 ], [ -1, %74 ], !dbg !413
  %89 = getelementptr inbounds i32, i32* %55, i64 1, !dbg !414
  %90 = load i32, i32* %55, align 4, !dbg !415, !tbaa !347
  br label %54, !dbg !416, !llvm.loop !417

; <label>:91:                                     ; preds = %71, %66
  %92 = icmp slt i32 %58, 0, !dbg !420
  br i1 %92, label %93, label %95, !dbg !422

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !423
  store i32 34, i32* %94, align 8, !dbg !425, !tbaa !426
  br label %98, !dbg !427

; <label>:95:                                     ; preds = %91
  %96 = sub i64 0, %56, !dbg !428
  %97 = select i1 %48, i64 %96, i64 %56, !dbg !430
  br label %98, !dbg !430

; <label>:98:                                     ; preds = %95, %93
  %99 = phi i64 [ %49, %93 ], [ %97, %95 ], !dbg !431
  %100 = icmp eq i32** %2, null, !dbg !432
  br i1 %100, label %105, label %101, !dbg !434

; <label>:101:                                    ; preds = %98
  %102 = icmp eq i32 %58, 0, !dbg !435
  %103 = getelementptr inbounds i32, i32* %55, i64 -1, !dbg !436
  %104 = select i1 %102, i32* %1, i32* %103, !dbg !435
  store i32* %104, i32** %2, align 8, !dbg !437, !tbaa !438
  br label %105, !dbg !439

; <label>:105:                                    ; preds = %98, %101
  ret i64 %99, !dbg !440
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstol_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !441 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !455
  %6 = tail call fastcc i64 @_wcstol_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !456
  ret i64 %6, !dbg !457
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstol(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !458 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !466
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !467
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !469
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !469, !tbaa !306
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !467
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !467
  %10 = tail call fastcc i64 @_wcstol_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %9) #4, !dbg !470
  ret i64 %10, !dbg !471
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstol.c", directory: "/root/.unikraft/apps/redis/build")
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
!13 = distinct !DISubprogram(name: "_wcstol_r", scope: !1, file: !1, line: 229, type: !14, isLocal: false, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !291, !293, !8}
!16 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !102, !103, !104, !105, !109, !110, !172, !173, !177, !189, !190, !191, !193, !194, !195, !257, !276, !277, !282, !289}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !8, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !26)
!26 = !{!27, !30, !31, !32, !34, !35, !40, !41, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !101}
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
!46 = !{!47, !17, !42, !49, !8}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !16)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !19, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !17, !42, !55, !8}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !19, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !17, !42, !61, !8}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !16)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !19, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!8, !17, !42}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !19, line: 206, baseType: !36, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !19, line: 207, baseType: !28, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !19, line: 208, baseType: !8, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !19, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !19, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !19, line: 215, baseType: !36, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !19, line: 218, baseType: !8, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !19, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !19, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !8)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !19, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !48, line: 165, baseType: !8, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !48, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !48, line: 166, size: 32, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !48, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !7, line: 124, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !19, line: 229, baseType: !8, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !23, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !8, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !8, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !111, size: 64, offset: 576)
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
!123 = !{!8, !17, !49, !6, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !126, line: 86, baseType: !87)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !112, file: !113, line: 183, baseType: !128, size: 64, offset: 1856)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!8, !17, !5, !55, !131, !124}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 40, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !48, line: 129, baseType: !4)
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
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !8, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !174, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !17}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !179, file: !19, line: 49, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !179, file: !19, line: 50, baseType: !8, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !179, file: !19, line: 50, baseType: !8, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !179, file: !19, line: 50, baseType: !8, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !179, file: !19, line: 50, baseType: !8, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !179, file: !19, line: 51, baseType: !187, size: 32, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32, elements: !75)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !8, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !178, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !8, size: 32, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !49, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !196, size: 2880, offset: 1152)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !197)
!197 = !{!198, !248}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !196, file: !19, line: 622, baseType: !199, size: 1728)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !19, line: 601, size: 1728, elements: !200)
!200 = !{!201, !202, !203, !207, !219, !220, !222, !230, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !199, file: !19, line: 603, baseType: !96, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !199, file: !19, line: 604, baseType: !49, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !199, file: !19, line: 605, baseType: !204, size: 208, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 26)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !199, file: !19, line: 606, baseType: !208, size: 288, offset: 352)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !208, file: !19, line: 57, baseType: !8, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !208, file: !19, line: 58, baseType: !8, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !208, file: !19, line: 59, baseType: !8, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !208, file: !19, line: 60, baseType: !8, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !208, file: !19, line: 61, baseType: !8, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !208, file: !19, line: 62, baseType: !8, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !208, file: !19, line: 63, baseType: !8, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !208, file: !19, line: 64, baseType: !8, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !208, file: !19, line: 65, baseType: !8, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !199, file: !19, line: 607, baseType: !8, size: 32, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !199, file: !19, line: 608, baseType: !221, size: 64, offset: 704)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !199, file: !19, line: 609, baseType: !223, size: 112, offset: 768)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !224)
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !223, file: !19, line: 320, baseType: !226, size: 48)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !71)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !223, file: !19, line: 321, baseType: !226, size: 48, offset: 48)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !223, file: !19, line: 322, baseType: !227, size: 16, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !199, file: !19, line: 610, baseType: !87, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !199, file: !19, line: 611, baseType: !87, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !199, file: !19, line: 612, baseType: !87, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !199, file: !19, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !199, file: !19, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !199, file: !19, line: 615, baseType: !8, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !199, file: !19, line: 616, baseType: !87, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !199, file: !19, line: 617, baseType: !87, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !199, file: !19, line: 618, baseType: !87, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !199, file: !19, line: 619, baseType: !87, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !199, file: !19, line: 620, baseType: !87, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !199, file: !19, line: 621, baseType: !8, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !196, file: !19, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !19, line: 626, size: 2880, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !249, file: !19, line: 629, baseType: !252, size: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 30)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !249, file: !19, line: 630, baseType: !256, size: 960, offset: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !258, size: 64, offset: 4032)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !260)
!260 = !{!261, !262, !263, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !19, line: 94, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !259, file: !19, line: 95, baseType: !8, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !259, file: !19, line: 97, baseType: !264, size: 2048, offset: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !170)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !19, line: 98, baseType: !269, size: 4160, offset: 2176)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !270)
!270 = !{!271, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !269, file: !19, line: 75, baseType: !272, size: 2048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !170)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !269, file: !19, line: 76, baseType: !272, size: 2048, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !269, file: !19, line: 78, baseType: !188, size: 32, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !269, file: !19, line: 81, baseType: !188, size: 32, offset: 4128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !259, size: 6336, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !278, size: 64, offset: 10432)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !8}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !283, size: 192, offset: 10496)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !284)
!284 = !{!285, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !283, file: !19, line: 293, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !283, file: !19, line: 294, baseType: !8, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !283, file: !19, line: 295, baseType: !23, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !290, size: 4224, offset: 10688)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !71)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(name: "rptr", arg: 1, scope: !13, file: !1, line: 229, type: !17)
!296 = !DILocalVariable(name: "nptr", arg: 2, scope: !13, file: !1, line: 229, type: !291)
!297 = !DILocalVariable(name: "endptr", arg: 3, scope: !13, file: !1, line: 229, type: !293)
!298 = !DILocalVariable(name: "base", arg: 4, scope: !13, file: !1, line: 229, type: !8)
!299 = !DILocation(line: 229, column: 1, scope: !13)
!300 = !DILocation(line: 230, column: 10, scope: !301, inlinedAt: !304)
!301 = distinct !DISubprogram(name: "__get_current_locale", scope: !113, file: !113, line: 228, type: !302, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!302 = !DISubroutineType(types: !303)
!303 = !{!111}
!304 = distinct !DILocation(line: 235, column: 46, scope: !13)
!305 = !DILocation(line: 230, column: 18, scope: !301, inlinedAt: !304)
!306 = !{!307, !311, i64 72}
!307 = !{!"_reent", !308, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !308, i64 32, !309, i64 36, !308, i64 64, !311, i64 72, !308, i64 80, !311, i64 88, !311, i64 96, !308, i64 104, !311, i64 112, !311, i64 120, !308, i64 128, !311, i64 136, !309, i64 144, !311, i64 504, !312, i64 512, !311, i64 1304, !314, i64 1312, !309, i64 1336}
!308 = !{!"int", !309, i64 0}
!309 = !{!"omnipotent char", !310, i64 0}
!310 = !{!"Simple C/C++ TBAA"}
!311 = !{!"any pointer", !309, i64 0}
!312 = !{!"_atexit", !311, i64 0, !308, i64 8, !309, i64 16, !313, i64 272}
!313 = !{!"_on_exit_args", !309, i64 0, !309, i64 256, !308, i64 512, !308, i64 516}
!314 = !{!"_glue", !311, i64 0, !308, i64 8, !311, i64 16}
!315 = !DILocation(line: 235, column: 9, scope: !13)
!316 = !DILocation(line: 235, column: 2, scope: !13)
!317 = distinct !DISubprogram(name: "_wcstol_l", scope: !1, file: !1, line: 148, type: !318, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !322)
!318 = !DISubroutineType(types: !319)
!319 = !{!16, !17, !291, !293, !8, !320}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !321, line: 10, baseType: !111)
!321 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!323 = !DILocalVariable(name: "rptr", arg: 1, scope: !317, file: !1, line: 148, type: !17)
!324 = !DILocalVariable(name: "nptr", arg: 2, scope: !317, file: !1, line: 148, type: !291)
!325 = !DILocalVariable(name: "endptr", arg: 3, scope: !317, file: !1, line: 148, type: !293)
!326 = !DILocalVariable(name: "base", arg: 4, scope: !317, file: !1, line: 149, type: !8)
!327 = !DILocalVariable(name: "loc", arg: 5, scope: !317, file: !1, line: 149, type: !320)
!328 = !DILocalVariable(name: "s", scope: !317, file: !1, line: 151, type: !291)
!329 = !DILocalVariable(name: "acc", scope: !317, file: !1, line: 152, type: !4)
!330 = !DILocalVariable(name: "c", scope: !317, file: !1, line: 153, type: !8)
!331 = !DILocalVariable(name: "cutoff", scope: !317, file: !1, line: 154, type: !4)
!332 = !DILocalVariable(name: "neg", scope: !317, file: !1, line: 155, type: !8)
!333 = !DILocalVariable(name: "any", scope: !317, file: !1, line: 155, type: !8)
!334 = !DILocalVariable(name: "cutlim", scope: !317, file: !1, line: 155, type: !8)
!335 = !DILocation(line: 148, column: 27, scope: !317)
!336 = !DILocation(line: 148, column: 48, scope: !317)
!337 = !DILocation(line: 148, column: 64, scope: !317)
!338 = !DILocation(line: 149, column: 9, scope: !317)
!339 = !DILocation(line: 149, column: 24, scope: !317)
!340 = !DILocation(line: 151, column: 26, scope: !317)
!341 = !DILocation(line: 155, column: 15, scope: !317)
!342 = !DILocation(line: 162, column: 2, scope: !317)
!343 = !DILocation(line: 0, scope: !344)
!344 = distinct !DILexicalBlock(scope: !317, file: !1, line: 162, column: 5)
!345 = !DILocation(line: 163, column: 9, scope: !344)
!346 = !DILocation(line: 163, column: 7, scope: !344)
!347 = !{!308, !308, i64 0}
!348 = !DILocation(line: 153, column: 15, scope: !317)
!349 = !DILocation(line: 164, column: 11, scope: !317)
!350 = !DILocation(line: 164, column: 2, scope: !344)
!351 = distinct !{!351, !342, !352}
!352 = !DILocation(line: 164, column: 29, scope: !317)
!353 = !DILocation(line: 165, column: 6, scope: !317)
!354 = !DILocation(line: 169, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !1, line: 168, column: 13)
!356 = distinct !DILexicalBlock(scope: !317, file: !1, line: 165, column: 6)
!357 = !DILocation(line: 0, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !1, line: 165, column: 17)
!359 = !DILocation(line: 170, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !317, file: !1, line: 170, column: 6)
!361 = !DILocation(line: 0, scope: !317)
!362 = !DILocation(line: 171, column: 8, scope: !360)
!363 = !DILocation(line: 171, column: 20, scope: !360)
!364 = !DILocation(line: 171, column: 31, scope: !360)
!365 = !DILocation(line: 176, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !317, file: !1, line: 176, column: 6)
!367 = !DILocation(line: 177, column: 10, scope: !366)
!368 = !DILocation(line: 172, column: 7, scope: !369)
!369 = distinct !DILexicalBlock(scope: !360, file: !1, line: 171, column: 47)
!370 = !DILocation(line: 173, column: 5, scope: !369)
!371 = !DILocation(line: 176, column: 6, scope: !317)
!372 = !DILocation(line: 177, column: 12, scope: !366)
!373 = !DILocation(line: 196, column: 11, scope: !317)
!374 = !DILocation(line: 154, column: 25, scope: !317)
!375 = !DILocation(line: 197, column: 20, scope: !317)
!376 = !DILocation(line: 197, column: 18, scope: !317)
!377 = !DILocation(line: 197, column: 11, scope: !317)
!378 = !DILocation(line: 155, column: 29, scope: !317)
!379 = !DILocation(line: 198, column: 9, scope: !317)
!380 = !DILocation(line: 152, column: 25, scope: !317)
!381 = !DILocation(line: 155, column: 24, scope: !317)
!382 = !DILocation(line: 199, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !317, file: !1, line: 199, column: 2)
!384 = !DILocation(line: 0, scope: !385)
!385 = distinct !DILexicalBlock(scope: !383, file: !1, line: 199, column: 2)
!386 = !DILocation(line: 199, column: 11, scope: !383)
!387 = !DILocation(line: 0, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 210, column: 20)
!389 = distinct !DILexicalBlock(scope: !385, file: !1, line: 199, column: 36)
!390 = !DILocation(line: 200, column: 17, scope: !391)
!391 = distinct !DILexicalBlock(scope: !389, file: !1, line: 200, column: 7)
!392 = !DILocation(line: 202, column: 22, scope: !393)
!393 = distinct !DILexicalBlock(scope: !391, file: !1, line: 202, column: 12)
!394 = !DILocation(line: 203, column: 6, scope: !393)
!395 = !DILocation(line: 203, column: 4, scope: !393)
!396 = !DILocation(line: 204, column: 22, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !1, line: 204, column: 12)
!398 = !DILocation(line: 205, column: 6, scope: !397)
!399 = !DILocation(line: 0, scope: !397)
!400 = !DILocation(line: 208, column: 9, scope: !401)
!401 = distinct !DILexicalBlock(scope: !389, file: !1, line: 208, column: 7)
!402 = !DILocation(line: 208, column: 7, scope: !389)
!403 = !DILocation(line: 210, column: 24, scope: !388)
!404 = !DILocation(line: 210, column: 35, scope: !388)
!405 = !DILocation(line: 210, column: 28, scope: !388)
!406 = !DILocation(line: 210, column: 52, scope: !388)
!407 = !DILocation(line: 210, column: 67, scope: !388)
!408 = !DILocation(line: 210, column: 62, scope: !388)
!409 = !DILocation(line: 214, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !388, file: !1, line: 212, column: 8)
!411 = !DILocation(line: 215, column: 11, scope: !410)
!412 = !DILocation(line: 215, column: 8, scope: !410)
!413 = !DILocation(line: 0, scope: !410)
!414 = !DILocation(line: 199, column: 32, scope: !385)
!415 = !DILocation(line: 199, column: 30, scope: !385)
!416 = !DILocation(line: 199, column: 2, scope: !385)
!417 = distinct !{!417, !418, !419}
!418 = !DILocation(line: 199, column: 2, scope: !383)
!419 = !DILocation(line: 217, column: 2, scope: !383)
!420 = !DILocation(line: 218, column: 10, scope: !421)
!421 = distinct !DILexicalBlock(scope: !317, file: !1, line: 218, column: 6)
!422 = !DILocation(line: 218, column: 6, scope: !317)
!423 = !DILocation(line: 220, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !421, file: !1, line: 218, column: 15)
!425 = !DILocation(line: 220, column: 16, scope: !424)
!426 = !{!307, !308, i64 0}
!427 = !DILocation(line: 221, column: 2, scope: !424)
!428 = !DILocation(line: 222, column: 9, scope: !429)
!429 = distinct !DILexicalBlock(scope: !421, file: !1, line: 221, column: 13)
!430 = !DILocation(line: 221, column: 13, scope: !421)
!431 = !DILocation(line: 0, scope: !383)
!432 = !DILocation(line: 223, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !317, file: !1, line: 223, column: 6)
!434 = !DILocation(line: 223, column: 6, scope: !317)
!435 = !DILocation(line: 224, column: 26, scope: !433)
!436 = !DILocation(line: 224, column: 34, scope: !433)
!437 = !DILocation(line: 224, column: 11, scope: !433)
!438 = !{!311, !311, i64 0}
!439 = !DILocation(line: 224, column: 3, scope: !433)
!440 = !DILocation(line: 225, column: 2, scope: !317)
!441 = distinct !DISubprogram(name: "wcstol_l", scope: !1, file: !1, line: 241, type: !442, isLocal: false, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !446)
!442 = !DISubroutineType(types: !443)
!443 = !{!16, !444, !445, !8, !320}
!444 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !293)
!446 = !{!447, !448, !449, !450}
!447 = !DILocalVariable(name: "s", arg: 1, scope: !441, file: !1, line: 241, type: !444)
!448 = !DILocalVariable(name: "ptr", arg: 2, scope: !441, file: !1, line: 241, type: !445)
!449 = !DILocalVariable(name: "base", arg: 3, scope: !441, file: !1, line: 241, type: !8)
!450 = !DILocalVariable(name: "loc", arg: 4, scope: !441, file: !1, line: 242, type: !320)
!451 = !DILocation(line: 241, column: 37, scope: !441)
!452 = !DILocation(line: 241, column: 61, scope: !441)
!453 = !DILocation(line: 241, column: 70, scope: !441)
!454 = !DILocation(line: 242, column: 13, scope: !441)
!455 = !DILocation(line: 244, column: 20, scope: !441)
!456 = !DILocation(line: 244, column: 9, scope: !441)
!457 = !DILocation(line: 244, column: 2, scope: !441)
!458 = distinct !DISubprogram(name: "wcstol", scope: !1, file: !1, line: 248, type: !459, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!16, !444, !445, !8}
!461 = !{!462, !463, !464}
!462 = !DILocalVariable(name: "s", arg: 1, scope: !458, file: !1, line: 248, type: !444)
!463 = !DILocalVariable(name: "ptr", arg: 2, scope: !458, file: !1, line: 248, type: !445)
!464 = !DILocalVariable(name: "base", arg: 3, scope: !458, file: !1, line: 248, type: !8)
!465 = !DILocation(line: 248, column: 1, scope: !458)
!466 = !DILocation(line: 253, column: 20, scope: !458)
!467 = !DILocation(line: 230, column: 10, scope: !301, inlinedAt: !468)
!468 = distinct !DILocation(line: 253, column: 42, scope: !458)
!469 = !DILocation(line: 230, column: 18, scope: !301, inlinedAt: !468)
!470 = !DILocation(line: 253, column: 9, scope: !458)
!471 = !DILocation(line: 253, column: 2, scope: !458)
