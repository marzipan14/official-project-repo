; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c"
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
define dso_local i64 @_strtoumax_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !309
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !314
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !314, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !309
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !309
  %10 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* %9) #4, !dbg !324
  ret i64 %10, !dbg !325
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoumax_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !326 {
  br label %6, !dbg !351

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !352
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !354
  %9 = load i8, i8* %7, align 1, !dbg !355, !tbaa !356
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !358
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !358
  %12 = sext i8 %9 to i64, !dbg !358
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !358
  %14 = load i8, i8* %13, align 1, !dbg !358, !tbaa !356
  %15 = and i8 %14, 8, !dbg !358
  %16 = icmp eq i8 %15, 0, !dbg !359
  br i1 %16, label %17, label %6, !dbg !359, !llvm.loop !360

; <label>:17:                                     ; preds = %6
  switch i8 %9, label %23 [
    i8 45, label %19
    i8 43, label %18
  ], !dbg !362

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !363

; <label>:19:                                     ; preds = %17, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %17 ]
  %21 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !367
  %22 = load i8, i8* %8, align 1, !dbg !367, !tbaa !356
  br label %23, !dbg !369

; <label>:23:                                     ; preds = %19, %17
  %24 = phi i8 [ %9, %17 ], [ %22, %19 ], !dbg !352
  %25 = phi i8* [ %8, %17 ], [ %21, %19 ], !dbg !352
  %26 = phi i32 [ 0, %17 ], [ %20, %19 ], !dbg !371
  %27 = or i32 %3, 16, !dbg !369
  %28 = icmp eq i32 %27, 16, !dbg !369
  %29 = icmp eq i8 %24, 48, !dbg !372
  %30 = and i1 %28, %29, !dbg !369
  br i1 %30, label %31, label %39, !dbg !369

; <label>:31:                                     ; preds = %23
  %32 = load i8, i8* %25, align 1, !dbg !373, !tbaa !356
  switch i8 %32, label %33 [
    i8 120, label %35
    i8 88, label %35
  ], !dbg !374

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i32 %3, 0, !dbg !375
  br label %42, !dbg !377

; <label>:35:                                     ; preds = %31, %31
  %36 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !378
  %37 = load i8, i8* %36, align 1, !dbg !378, !tbaa !356
  %38 = getelementptr inbounds i8, i8* %25, i64 2, !dbg !380
  br label %51, !dbg !383

; <label>:39:                                     ; preds = %23
  %40 = icmp eq i32 %3, 0, !dbg !375
  %41 = icmp eq i8 %24, 48, !dbg !385
  br i1 %41, label %42, label %44, !dbg !377

; <label>:42:                                     ; preds = %33, %39
  %43 = phi i1 [ %34, %33 ], [ %40, %39 ]
  br label %44, !dbg !377

; <label>:44:                                     ; preds = %39, %42
  %45 = phi i1 [ %43, %42 ], [ %40, %39 ]
  %46 = phi i8 [ 48, %42 ], [ %24, %39 ]
  %47 = phi i32 [ 8, %42 ], [ 10, %39 ]
  %48 = select i1 %45, i32 %47, i32 %3, !dbg !386
  %49 = add i32 %48, -2, !dbg !383
  %50 = icmp ugt i32 %49, 34, !dbg !383
  br i1 %50, label %103, label %51, !dbg !383

; <label>:51:                                     ; preds = %35, %44
  %52 = phi i32 [ 16, %35 ], [ %48, %44 ]
  %53 = phi i8 [ %37, %35 ], [ %46, %44 ]
  %54 = phi i8* [ %38, %35 ], [ %25, %44 ]
  %55 = sext i32 %52 to i64, !dbg !387
  %56 = udiv i64 -1, %55, !dbg !388
  %57 = urem i64 -1, %55, !dbg !390
  %58 = trunc i64 %57 to i32, !dbg !391
  br label %59, !dbg !393

; <label>:59:                                     ; preds = %92, %51
  %60 = phi i64 [ 0, %51 ], [ %93, %92 ], !dbg !394
  %61 = phi i8 [ %53, %51 ], [ %96, %92 ], !dbg !395
  %62 = phi i8* [ %54, %51 ], [ %95, %92 ], !dbg !395
  %63 = phi i32 [ 0, %51 ], [ %94, %92 ], !dbg !398
  %64 = add i8 %61, -48, !dbg !401
  %65 = icmp ult i8 %64, 10, !dbg !401
  br i1 %65, label %76, label %66, !dbg !401

; <label>:66:                                     ; preds = %59
  %67 = add i8 %61, -65, !dbg !403
  %68 = icmp ult i8 %67, 26, !dbg !403
  br i1 %68, label %69, label %71, !dbg !403

; <label>:69:                                     ; preds = %66
  %70 = add i8 %61, -55, !dbg !405
  br label %76, !dbg !406

; <label>:71:                                     ; preds = %66
  %72 = add i8 %61, -97, !dbg !407
  %73 = icmp ult i8 %72, 26, !dbg !407
  br i1 %73, label %74, label %97, !dbg !407

; <label>:74:                                     ; preds = %71
  %75 = add i8 %61, -87, !dbg !409
  br label %76

; <label>:76:                                     ; preds = %59, %69, %74
  %77 = phi i8 [ %70, %69 ], [ %75, %74 ], [ %64, %59 ], !dbg !410
  %78 = sext i8 %77 to i32, !dbg !411
  %79 = icmp sgt i32 %52, %78, !dbg !413
  br i1 %79, label %80, label %97, !dbg !414

; <label>:80:                                     ; preds = %76
  %81 = icmp slt i32 %63, 0, !dbg !415
  %82 = icmp ugt i64 %60, %56, !dbg !416
  %83 = or i1 %82, %81, !dbg !417
  br i1 %83, label %92, label %84, !dbg !417

; <label>:84:                                     ; preds = %80
  %85 = icmp eq i64 %60, %56, !dbg !418
  %86 = icmp sgt i32 %78, %58, !dbg !419
  %87 = and i1 %85, %86, !dbg !420
  br i1 %87, label %92, label %88, !dbg !420

; <label>:88:                                     ; preds = %84
  %89 = mul i64 %60, %55, !dbg !421
  %90 = sext i8 %77 to i64, !dbg !423
  %91 = add i64 %89, %90, !dbg !424
  br label %92

; <label>:92:                                     ; preds = %80, %84, %88
  %93 = phi i64 [ %91, %88 ], [ %56, %84 ], [ %60, %80 ], !dbg !425
  %94 = phi i32 [ 1, %88 ], [ -1, %84 ], [ -1, %80 ], !dbg !425
  %95 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !426
  %96 = load i8, i8* %62, align 1, !dbg !427, !tbaa !356
  br label %59, !dbg !428, !llvm.loop !429

; <label>:97:                                     ; preds = %76, %71
  %98 = icmp slt i32 %63, 0, !dbg !432
  br i1 %98, label %99, label %101, !dbg !434

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !435
  store i32 34, i32* %100, align 8, !dbg !437, !tbaa !438
  br label %111, !dbg !439

; <label>:101:                                    ; preds = %97
  %102 = icmp eq i32 %63, 0, !dbg !440
  br i1 %102, label %103, label %107, !dbg !442

; <label>:103:                                    ; preds = %101, %44
  %104 = phi i64 [ 0, %44 ], [ %60, %101 ], !dbg !394
  %105 = phi i8* [ %25, %44 ], [ %62, %101 ], !dbg !380
  %106 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !443
  store i32 22, i32* %106, align 8, !dbg !445, !tbaa !438
  br label %111, !dbg !446

; <label>:107:                                    ; preds = %101
  %108 = icmp eq i32 %26, 0, !dbg !447
  %109 = sub i64 0, %60, !dbg !449
  %110 = select i1 %108, i64 %60, i64 %109, !dbg !450
  br label %111, !dbg !450

; <label>:111:                                    ; preds = %107, %103, %99
  %112 = phi i64 [ %104, %103 ], [ -1, %99 ], [ %110, %107 ], !dbg !451
  %113 = phi i8* [ %105, %103 ], [ %62, %99 ], [ %62, %107 ], !dbg !380
  %114 = phi i32 [ 0, %103 ], [ -1, %99 ], [ -1, %107 ], !dbg !452
  %115 = icmp eq i8** %2, null, !dbg !453
  br i1 %115, label %120, label %116, !dbg !455

; <label>:116:                                    ; preds = %111
  %117 = icmp eq i32 %114, 0, !dbg !456
  %118 = getelementptr inbounds i8, i8* %113, i64 -1, !dbg !457
  %119 = select i1 %117, i8* %1, i8* %118, !dbg !456
  store i8* %119, i8** %2, align 8, !dbg !458, !tbaa !459
  br label %120, !dbg !460

; <label>:120:                                    ; preds = %111, %116
  ret i64 %112, !dbg !461
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoumax_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !462 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !474
  %6 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !475
  ret i64 %6, !dbg !476
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoumax(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !477 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !487
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !488
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !490
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !490, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !488
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !488
  %10 = tail call fastcc i64 @_strtoumax_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %9) #4, !dbg !491
  ret i64 %10, !dbg !492
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoumax.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_strtoumax_r", scope: !1, file: !1, line: 130, type: !16, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !300)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !23, !297, !298, !7}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !19, line: 72, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !21, line: 222, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !25, line: 569, size: 14912, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !106, !107, !108, !109, !113, !114, !178, !179, !183, !195, !196, !197, !199, !200, !201, !263, !282, !283, !288, !295}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !24, file: !25, line: 571, baseType: !7, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !25, line: 287, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !25, line: 181, size: 1408, elements: !32)
!32 = !{!33, !35, !36, !37, !39, !40, !45, !46, !47, !54, !60, !65, !69, !70, !71, !72, !76, !80, !81, !82, !84, !85, !89, !105}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !31, file: !25, line: 182, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !31, file: !25, line: 183, baseType: !7, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !31, file: !25, line: 184, baseType: !7, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !31, file: !25, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !31, file: !25, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !31, file: !25, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !25, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !25, line: 118, baseType: !34, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !25, line: 119, baseType: !7, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !31, file: !25, line: 188, baseType: !7, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !31, file: !25, line: 195, baseType: !8, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !31, file: !25, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !23, !8, !9, !7}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !52, line: 145, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !31, file: !25, line: 199, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!51, !23, !8, !58, !7}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !31, file: !25, line: 202, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !23, !8, !64, !7}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !52, line: 114, baseType: !53)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !31, file: !25, line: 203, baseType: !66, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!7, !23, !8}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !31, file: !25, line: 206, baseType: !41, size: 128, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !31, file: !25, line: 207, baseType: !34, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !31, file: !25, line: 208, baseType: !7, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !31, file: !25, line: 211, baseType: !73, size: 24, offset: 928)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !31, file: !25, line: 212, baseType: !77, size: 8, offset: 952)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !31, file: !25, line: 215, baseType: !41, size: 128, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !31, file: !25, line: 218, baseType: !7, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !31, file: !25, line: 219, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !52, line: 44, baseType: !53)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !31, file: !25, line: 222, baseType: !23, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !31, file: !25, line: 226, baseType: !86, size: 32, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !52, line: 175, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !88, line: 12, baseType: !7)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !31, file: !25, line: 228, baseType: !90, size: 64, offset: 1312)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !52, line: 171, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 163, size: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !91, file: !52, line: 165, baseType: !7, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !91, file: !52, line: 170, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !52, line: 166, size: 32, elements: !96)
!96 = !{!97, !101}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !95, file: !52, line: 168, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !99, line: 124, baseType: !100)
!99 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !95, file: !52, line: 169, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !31, file: !25, line: 229, baseType: !7, size: 32, offset: 1376)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !24, file: !25, line: 576, baseType: !29, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !24, file: !25, line: 578, baseType: !7, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !24, file: !25, line: 579, baseType: !110, size: 200, offset: 288)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 25)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !24, file: !25, line: 582, baseType: !7, size: 32, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !24, file: !25, line: 583, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !117, line: 178, size: 3392, elements: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !{!119, !124, !132, !140, !141, !142, !170, !174, !177}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !116, file: !117, line: 180, baseType: !120, size: 1792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !121)
!121 = !{!122, !123}
!122 = !DISubrange(count: 7)
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !116, file: !117, line: 181, baseType: !125, size: 64, offset: 1792)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!7, !23, !9, !128, !129}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !99, line: 83, baseType: !7)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !131, line: 86, baseType: !90)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !116, file: !117, line: 183, baseType: !133, size: 64, offset: 1856)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!7, !23, !136, !58, !137, !129}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 40, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !52, line: 129, baseType: !22)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !116, file: !117, line: 185, baseType: !7, size: 32, offset: 1920)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !116, file: !117, line: 186, baseType: !9, size: 64, offset: 1984)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !116, file: !117, line: 187, baseType: !143, size: 768, offset: 2048)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !144, line: 42, size: 768, elements: !145)
!144 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !143, file: !144, line: 44, baseType: !9, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !143, file: !144, line: 45, baseType: !9, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !143, file: !144, line: 46, baseType: !9, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !143, file: !144, line: 47, baseType: !9, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !143, file: !144, line: 48, baseType: !9, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !143, file: !144, line: 49, baseType: !9, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !143, file: !144, line: 50, baseType: !9, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !143, file: !144, line: 51, baseType: !9, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !143, file: !144, line: 52, baseType: !9, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !143, file: !144, line: 53, baseType: !9, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !143, file: !144, line: 54, baseType: !10, size: 8, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !143, file: !144, line: 55, baseType: !10, size: 8, offset: 648)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !143, file: !144, line: 56, baseType: !10, size: 8, offset: 656)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !143, file: !144, line: 57, baseType: !10, size: 8, offset: 664)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !143, file: !144, line: 58, baseType: !10, size: 8, offset: 672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !143, file: !144, line: 59, baseType: !10, size: 8, offset: 680)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !143, file: !144, line: 60, baseType: !10, size: 8, offset: 688)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !143, file: !144, line: 61, baseType: !10, size: 8, offset: 696)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !143, file: !144, line: 62, baseType: !10, size: 8, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !143, file: !144, line: 63, baseType: !10, size: 8, offset: 712)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !143, file: !144, line: 64, baseType: !10, size: 8, offset: 720)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !143, file: !144, line: 65, baseType: !10, size: 8, offset: 728)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !143, file: !144, line: 66, baseType: !10, size: 8, offset: 736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !143, file: !144, line: 67, baseType: !10, size: 8, offset: 744)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !116, file: !117, line: 189, baseType: !171, size: 16, offset: 2816)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !116, file: !117, line: 190, baseType: !175, size: 256, offset: 2832)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !176)
!176 = !{!123}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !116, file: !117, line: 191, baseType: !175, size: 256, offset: 3088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !24, file: !25, line: 585, baseType: !7, size: 32, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !24, file: !25, line: 587, baseType: !180, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !23}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !24, file: !25, line: 590, baseType: !184, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !25, line: 47, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !185, file: !25, line: 49, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !185, file: !25, line: 50, baseType: !7, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !185, file: !25, line: 51, baseType: !193, size: 32, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32, elements: !78)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !25, line: 25, baseType: !100)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !24, file: !25, line: 591, baseType: !7, size: 32, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !24, file: !25, line: 592, baseType: !184, size: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !24, file: !25, line: 593, baseType: !198, size: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !24, file: !25, line: 596, baseType: !7, size: 32, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !24, file: !25, line: 597, baseType: !9, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !24, file: !25, line: 632, baseType: !202, size: 2880, offset: 1152)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !24, file: !25, line: 599, size: 2880, elements: !203)
!203 = !{!204, !254}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !202, file: !25, line: 622, baseType: !205, size: 1728)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !25, line: 601, size: 1728, elements: !206)
!206 = !{!207, !208, !209, !213, !225, !226, !228, !236, !237, !238, !239, !243, !247, !248, !249, !250, !251, !252, !253}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !205, file: !25, line: 603, baseType: !100, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !205, file: !25, line: 604, baseType: !9, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !205, file: !25, line: 605, baseType: !210, size: 208, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 26)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !205, file: !25, line: 606, baseType: !214, size: 288, offset: 352)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !25, line: 55, size: 288, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !214, file: !25, line: 57, baseType: !7, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !214, file: !25, line: 58, baseType: !7, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !214, file: !25, line: 59, baseType: !7, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !214, file: !25, line: 60, baseType: !7, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !214, file: !25, line: 61, baseType: !7, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !214, file: !25, line: 62, baseType: !7, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !214, file: !25, line: 63, baseType: !7, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !214, file: !25, line: 64, baseType: !7, size: 32, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !214, file: !25, line: 65, baseType: !7, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !205, file: !25, line: 607, baseType: !7, size: 32, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !205, file: !25, line: 608, baseType: !227, size: 64, offset: 704)
!227 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !205, file: !25, line: 609, baseType: !229, size: 112, offset: 768)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !25, line: 319, size: 112, elements: !230)
!230 = !{!231, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !229, file: !25, line: 320, baseType: !232, size: 48)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 48, elements: !74)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !229, file: !25, line: 321, baseType: !232, size: 48, offset: 48)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !229, file: !25, line: 322, baseType: !233, size: 16, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !205, file: !25, line: 610, baseType: !90, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !205, file: !25, line: 611, baseType: !90, size: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !205, file: !25, line: 612, baseType: !90, size: 64, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !205, file: !25, line: 613, baseType: !240, size: 64, offset: 1088)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !205, file: !25, line: 614, baseType: !244, size: 192, offset: 1152)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 24)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !205, file: !25, line: 615, baseType: !7, size: 32, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !205, file: !25, line: 616, baseType: !90, size: 64, offset: 1376)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !205, file: !25, line: 617, baseType: !90, size: 64, offset: 1440)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !205, file: !25, line: 618, baseType: !90, size: 64, offset: 1504)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !205, file: !25, line: 619, baseType: !90, size: 64, offset: 1568)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !205, file: !25, line: 620, baseType: !90, size: 64, offset: 1632)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !205, file: !25, line: 621, baseType: !7, size: 32, offset: 1696)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !202, file: !25, line: 631, baseType: !255, size: 2880)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !25, line: 626, size: 2880, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !255, file: !25, line: 629, baseType: !258, size: 1920)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1920, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 30)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !255, file: !25, line: 630, baseType: !262, size: 960, offset: 1920)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 960, elements: !259)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !24, file: !25, line: 636, baseType: !264, size: 64, offset: 4032)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !25, line: 93, size: 6336, elements: !266)
!266 = !{!267, !268, !269, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !265, file: !25, line: 94, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !265, file: !25, line: 95, baseType: !7, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !265, file: !25, line: 97, baseType: !270, size: 2048, offset: 128)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, elements: !176)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !265, file: !25, line: 98, baseType: !275, size: 4160, offset: 2176)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !25, line: 74, size: 4160, elements: !276)
!276 = !{!277, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !275, file: !25, line: 75, baseType: !278, size: 2048)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !176)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !275, file: !25, line: 76, baseType: !278, size: 2048, offset: 2048)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !275, file: !25, line: 78, baseType: !194, size: 32, offset: 4096)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !275, file: !25, line: 81, baseType: !194, size: 32, offset: 4128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !24, file: !25, line: 637, baseType: !265, size: 6336, offset: 4096)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !24, file: !25, line: 641, baseType: !284, size: 64, offset: 10432)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !7}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !24, file: !25, line: 646, baseType: !289, size: 192, offset: 10496)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !25, line: 291, size: 192, elements: !290)
!290 = !{!291, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !289, file: !25, line: 293, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !289, file: !25, line: 294, baseType: !7, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !289, file: !25, line: 295, baseType: !29, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !24, file: !25, line: 648, baseType: !296, size: 4224, offset: 10688)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 4224, elements: !74)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(name: "rptr", arg: 1, scope: !15, file: !1, line: 130, type: !23)
!302 = !DILocalVariable(name: "nptr", arg: 2, scope: !15, file: !1, line: 130, type: !297)
!303 = !DILocalVariable(name: "endptr", arg: 3, scope: !15, file: !1, line: 131, type: !298)
!304 = !DILocalVariable(name: "base", arg: 4, scope: !15, file: !1, line: 131, type: !7)
!305 = !DILocation(line: 130, column: 29, scope: !15)
!306 = !DILocation(line: 130, column: 58, scope: !15)
!307 = !DILocation(line: 131, column: 25, scope: !15)
!308 = !DILocation(line: 131, column: 37, scope: !15)
!309 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !313)
!310 = distinct !DISubprogram(name: "__get_current_locale", scope: !117, file: !117, line: 228, type: !311, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!311 = !DISubroutineType(types: !312)
!312 = !{!115}
!313 = distinct !DILocation(line: 133, column: 48, scope: !15)
!314 = !DILocation(line: 230, column: 18, scope: !310, inlinedAt: !313)
!315 = !{!316, !320, i64 72}
!316 = !{!"_reent", !317, i64 0, !320, i64 8, !320, i64 16, !320, i64 24, !317, i64 32, !318, i64 36, !317, i64 64, !320, i64 72, !317, i64 80, !320, i64 88, !320, i64 96, !317, i64 104, !320, i64 112, !320, i64 120, !317, i64 128, !320, i64 136, !318, i64 144, !320, i64 504, !321, i64 512, !320, i64 1304, !323, i64 1312, !318, i64 1336}
!317 = !{!"int", !318, i64 0}
!318 = !{!"omnipotent char", !319, i64 0}
!319 = !{!"Simple C/C++ TBAA"}
!320 = !{!"any pointer", !318, i64 0}
!321 = !{!"_atexit", !320, i64 0, !317, i64 8, !318, i64 16, !322, i64 272}
!322 = !{!"_on_exit_args", !318, i64 0, !318, i64 256, !317, i64 512, !317, i64 516}
!323 = !{!"_glue", !320, i64 0, !317, i64 8, !320, i64 16}
!324 = !DILocation(line: 133, column: 9, scope: !15)
!325 = !DILocation(line: 133, column: 2, scope: !15)
!326 = distinct !DISubprogram(name: "_strtoumax_l", scope: !1, file: !1, line: 60, type: !327, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !331)
!327 = !DISubroutineType(types: !328)
!328 = !{!18, !23, !297, !298, !7, !329}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !330, line: 10, baseType: !115)
!330 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!332 = !DILocalVariable(name: "rptr", arg: 1, scope: !326, file: !1, line: 60, type: !23)
!333 = !DILocalVariable(name: "nptr", arg: 2, scope: !326, file: !1, line: 60, type: !297)
!334 = !DILocalVariable(name: "endptr", arg: 3, scope: !326, file: !1, line: 61, type: !298)
!335 = !DILocalVariable(name: "base", arg: 4, scope: !326, file: !1, line: 61, type: !7)
!336 = !DILocalVariable(name: "loc", arg: 5, scope: !326, file: !1, line: 61, type: !329)
!337 = !DILocalVariable(name: "s", scope: !326, file: !1, line: 63, type: !58)
!338 = !DILocalVariable(name: "acc", scope: !326, file: !1, line: 64, type: !18)
!339 = !DILocalVariable(name: "c", scope: !326, file: !1, line: 65, type: !10)
!340 = !DILocalVariable(name: "cutoff", scope: !326, file: !1, line: 66, type: !18)
!341 = !DILocalVariable(name: "neg", scope: !326, file: !1, line: 67, type: !7)
!342 = !DILocalVariable(name: "any", scope: !326, file: !1, line: 67, type: !7)
!343 = !DILocalVariable(name: "cutlim", scope: !326, file: !1, line: 67, type: !7)
!344 = !DILocation(line: 60, column: 29, scope: !326)
!345 = !DILocation(line: 60, column: 59, scope: !326)
!346 = !DILocation(line: 61, column: 26, scope: !326)
!347 = !DILocation(line: 61, column: 38, scope: !326)
!348 = !DILocation(line: 61, column: 53, scope: !326)
!349 = !DILocation(line: 63, column: 14, scope: !326)
!350 = !DILocation(line: 67, column: 6, scope: !326)
!351 = !DILocation(line: 72, column: 2, scope: !326)
!352 = !DILocation(line: 0, scope: !353)
!353 = distinct !DILexicalBlock(scope: !326, file: !1, line: 72, column: 5)
!354 = !DILocation(line: 73, column: 9, scope: !353)
!355 = !DILocation(line: 73, column: 7, scope: !353)
!356 = !{!318, !318, i64 0}
!357 = !DILocation(line: 65, column: 7, scope: !326)
!358 = !DILocation(line: 74, column: 11, scope: !326)
!359 = !DILocation(line: 74, column: 2, scope: !353)
!360 = distinct !{!360, !351, !361}
!361 = !DILocation(line: 74, column: 28, scope: !326)
!362 = !DILocation(line: 75, column: 6, scope: !326)
!363 = !DILocation(line: 81, column: 4, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !1, line: 80, column: 7)
!365 = distinct !DILexicalBlock(scope: !366, file: !1, line: 78, column: 9)
!366 = distinct !DILexicalBlock(scope: !326, file: !1, line: 75, column: 6)
!367 = !DILocation(line: 0, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !1, line: 75, column: 16)
!369 = !DILocation(line: 83, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !326, file: !1, line: 83, column: 6)
!371 = !DILocation(line: 0, scope: !365)
!372 = !DILocation(line: 84, column: 8, scope: !370)
!373 = !DILocation(line: 84, column: 19, scope: !370)
!374 = !DILocation(line: 84, column: 29, scope: !370)
!375 = !DILocation(line: 89, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !326, file: !1, line: 89, column: 6)
!377 = !DILocation(line: 90, column: 10, scope: !376)
!378 = !DILocation(line: 85, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !370, file: !1, line: 84, column: 44)
!380 = !DILocation(line: 86, column: 5, scope: !379)
!381 = !DILocation(line: 67, column: 15, scope: !326)
!382 = !DILocation(line: 64, column: 12, scope: !326)
!383 = !DILocation(line: 92, column: 15, scope: !384)
!384 = distinct !DILexicalBlock(scope: !326, file: !1, line: 92, column: 6)
!385 = !DILocation(line: 90, column: 12, scope: !376)
!386 = !DILocation(line: 89, column: 6, scope: !326)
!387 = !DILocation(line: 95, column: 25, scope: !326)
!388 = !DILocation(line: 95, column: 23, scope: !326)
!389 = !DILocation(line: 66, column: 12, scope: !326)
!390 = !DILocation(line: 96, column: 23, scope: !326)
!391 = !DILocation(line: 96, column: 11, scope: !326)
!392 = !DILocation(line: 67, column: 20, scope: !326)
!393 = !DILocation(line: 97, column: 2, scope: !326)
!394 = !DILocation(line: 91, column: 6, scope: !326)
!395 = !DILocation(line: 0, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 97, column: 2)
!397 = distinct !DILexicalBlock(scope: !326, file: !1, line: 97, column: 2)
!398 = !DILocation(line: 0, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !1, line: 108, column: 7)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 97, column: 22)
!401 = !DILocation(line: 98, column: 16, scope: !402)
!402 = distinct !DILexicalBlock(scope: !400, file: !1, line: 98, column: 7)
!403 = !DILocation(line: 100, column: 21, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !1, line: 100, column: 12)
!405 = !DILocation(line: 101, column: 6, scope: !404)
!406 = !DILocation(line: 101, column: 4, scope: !404)
!407 = !DILocation(line: 102, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !1, line: 102, column: 12)
!409 = !DILocation(line: 103, column: 6, scope: !408)
!410 = !DILocation(line: 0, scope: !408)
!411 = !DILocation(line: 106, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !400, file: !1, line: 106, column: 7)
!413 = !DILocation(line: 106, column: 9, scope: !412)
!414 = !DILocation(line: 106, column: 7, scope: !400)
!415 = !DILocation(line: 108, column: 11, scope: !399)
!416 = !DILocation(line: 108, column: 22, scope: !399)
!417 = !DILocation(line: 108, column: 15, scope: !399)
!418 = !DILocation(line: 108, column: 39, scope: !399)
!419 = !DILocation(line: 108, column: 54, scope: !399)
!420 = !DILocation(line: 108, column: 49, scope: !399)
!421 = !DILocation(line: 112, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !399, file: !1, line: 110, column: 8)
!423 = !DILocation(line: 113, column: 11, scope: !422)
!424 = !DILocation(line: 113, column: 8, scope: !422)
!425 = !DILocation(line: 0, scope: !422)
!426 = !DILocation(line: 97, column: 18, scope: !396)
!427 = !DILocation(line: 97, column: 16, scope: !396)
!428 = !DILocation(line: 97, column: 2, scope: !396)
!429 = distinct !{!429, !430, !431}
!430 = !DILocation(line: 97, column: 2, scope: !397)
!431 = !DILocation(line: 115, column: 2, scope: !397)
!432 = !DILocation(line: 116, column: 10, scope: !433)
!433 = distinct !DILexicalBlock(scope: !326, file: !1, line: 116, column: 6)
!434 = !DILocation(line: 116, column: 6, scope: !326)
!435 = !DILocation(line: 118, column: 9, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !1, line: 116, column: 15)
!437 = !DILocation(line: 118, column: 16, scope: !436)
!438 = !{!316, !317, i64 0}
!439 = !DILocation(line: 119, column: 2, scope: !436)
!440 = !DILocation(line: 119, column: 14, scope: !441)
!441 = distinct !DILexicalBlock(scope: !433, file: !1, line: 119, column: 13)
!442 = !DILocation(line: 119, column: 13, scope: !433)
!443 = !DILocation(line: 121, column: 9, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !1, line: 119, column: 19)
!445 = !DILocation(line: 121, column: 16, scope: !444)
!446 = !DILocation(line: 122, column: 2, scope: !444)
!447 = !DILocation(line: 122, column: 13, scope: !448)
!448 = distinct !DILexicalBlock(scope: !441, file: !1, line: 122, column: 13)
!449 = !DILocation(line: 123, column: 9, scope: !448)
!450 = !DILocation(line: 122, column: 13, scope: !441)
!451 = !DILocation(line: 0, scope: !326)
!452 = !DILocation(line: 91, column: 12, scope: !326)
!453 = !DILocation(line: 124, column: 13, scope: !454)
!454 = distinct !DILexicalBlock(scope: !326, file: !1, line: 124, column: 6)
!455 = !DILocation(line: 124, column: 6, scope: !326)
!456 = !DILocation(line: 125, column: 22, scope: !454)
!457 = !DILocation(line: 125, column: 30, scope: !454)
!458 = !DILocation(line: 125, column: 11, scope: !454)
!459 = !{!320, !320, i64 0}
!460 = !DILocation(line: 125, column: 3, scope: !454)
!461 = !DILocation(line: 126, column: 2, scope: !326)
!462 = distinct !DISubprogram(name: "strtoumax_l", scope: !1, file: !1, line: 139, type: !463, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!18, !297, !298, !7, !329}
!465 = !{!466, !467, !468, !469}
!466 = !DILocalVariable(name: "nptr", arg: 1, scope: !462, file: !1, line: 139, type: !297)
!467 = !DILocalVariable(name: "endptr", arg: 2, scope: !462, file: !1, line: 139, type: !298)
!468 = !DILocalVariable(name: "base", arg: 3, scope: !462, file: !1, line: 139, type: !7)
!469 = !DILocalVariable(name: "loc", arg: 4, scope: !462, file: !1, line: 140, type: !329)
!470 = !DILocation(line: 139, column: 37, scope: !462)
!471 = !DILocation(line: 139, column: 62, scope: !462)
!472 = !DILocation(line: 139, column: 74, scope: !462)
!473 = !DILocation(line: 140, column: 15, scope: !462)
!474 = !DILocation(line: 142, column: 22, scope: !462)
!475 = !DILocation(line: 142, column: 9, scope: !462)
!476 = !DILocation(line: 142, column: 2, scope: !462)
!477 = distinct !DISubprogram(name: "strtoumax", scope: !1, file: !1, line: 146, type: !478, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!18, !297, !298, !7}
!480 = !{!481, !482, !483}
!481 = !DILocalVariable(name: "nptr", arg: 1, scope: !477, file: !1, line: 146, type: !297)
!482 = !DILocalVariable(name: "endptr", arg: 2, scope: !477, file: !1, line: 146, type: !298)
!483 = !DILocalVariable(name: "base", arg: 3, scope: !477, file: !1, line: 146, type: !7)
!484 = !DILocation(line: 146, column: 34, scope: !477)
!485 = !DILocation(line: 146, column: 58, scope: !477)
!486 = !DILocation(line: 146, column: 70, scope: !477)
!487 = !DILocation(line: 148, column: 22, scope: !477)
!488 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !489)
!489 = distinct !DILocation(line: 148, column: 50, scope: !477)
!490 = !DILocation(line: 230, column: 18, scope: !310, inlinedAt: !489)
!491 = !DILocation(line: 148, column: 9, scope: !477)
!492 = !DILocation(line: 148, column: 2, scope: !477)
