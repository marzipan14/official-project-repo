; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoimax.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoimax.c"
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
define dso_local i64 @_wcstoimax_r(%struct._reent* nocapture, i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !18 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !311
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !316
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !316, !tbaa !317
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !311
  br i1 %8, label %9, label %10, !dbg !311

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br label %10, !dbg !311

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  %12 = tail call fastcc i64 @_wcstoimax_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  ret i64 %12, !dbg !331
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_wcstoimax_l(%struct._reent* nocapture, i32* noalias, i32** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !332 {
  br label %6, !dbg !357

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !358
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !360
  %9 = load i32, i32* %7, align 4, !dbg !361, !tbaa !362
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !364
  %11 = icmp eq i32 %10, 0, !dbg !365
  br i1 %11, label %12, label %6, !dbg !365, !llvm.loop !366

; <label>:12:                                     ; preds = %6
  switch i32 %9, label %18 [
    i32 45, label %14
    i32 43, label %13
  ], !dbg !368

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !369

; <label>:14:                                     ; preds = %12, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %12 ]
  %16 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !373
  %17 = load i32, i32* %8, align 4, !dbg !373, !tbaa !362
  br label %18, !dbg !375

; <label>:18:                                     ; preds = %14, %12
  %19 = phi i32* [ %8, %12 ], [ %16, %14 ], !dbg !358
  %20 = phi i32 [ %9, %12 ], [ %17, %14 ], !dbg !358
  %21 = phi i32 [ 0, %12 ], [ %15, %14 ], !dbg !377
  %22 = or i32 %3, 16, !dbg !375
  %23 = icmp eq i32 %22, 16, !dbg !375
  %24 = icmp eq i32 %20, 48, !dbg !378
  %25 = and i1 %23, %24, !dbg !375
  br i1 %25, label %26, label %34, !dbg !375

; <label>:26:                                     ; preds = %18
  %27 = load i32, i32* %19, align 4, !dbg !379, !tbaa !362
  switch i32 %27, label %28 [
    i32 120, label %30
    i32 88, label %30
  ], !dbg !380

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i32 %3, 0, !dbg !381
  br label %37, !dbg !383

; <label>:30:                                     ; preds = %26, %26
  %31 = getelementptr inbounds i32, i32* %19, i64 1, !dbg !384
  %32 = load i32, i32* %31, align 4, !dbg !384, !tbaa !362
  %33 = getelementptr inbounds i32, i32* %19, i64 2, !dbg !386
  br label %46, !dbg !389

; <label>:34:                                     ; preds = %18
  %35 = icmp eq i32 %3, 0, !dbg !381
  %36 = icmp eq i32 %20, 48, !dbg !391
  br i1 %36, label %37, label %39, !dbg !383

; <label>:37:                                     ; preds = %28, %34
  %38 = phi i1 [ %29, %28 ], [ %35, %34 ]
  br label %39, !dbg !383

; <label>:39:                                     ; preds = %34, %37
  %40 = phi i1 [ %38, %37 ], [ %35, %34 ]
  %41 = phi i32 [ 48, %37 ], [ %20, %34 ]
  %42 = phi i32 [ 8, %37 ], [ 10, %34 ]
  %43 = select i1 %40, i32 %42, i32 %3, !dbg !392
  %44 = add i32 %43, -2, !dbg !389
  %45 = icmp ugt i32 %44, 34, !dbg !389
  br i1 %45, label %99, label %46, !dbg !389

; <label>:46:                                     ; preds = %30, %39
  %47 = phi i32 [ 16, %30 ], [ %43, %39 ]
  %48 = phi i32* [ %33, %30 ], [ %19, %39 ]
  %49 = phi i32 [ %32, %30 ], [ %41, %39 ]
  %50 = icmp ne i32 %21, 0, !dbg !393
  %51 = select i1 %50, i64 -9223372036854775808, i64 9223372036854775807, !dbg !393
  %52 = sext i32 %47 to i64, !dbg !395
  %53 = urem i64 %51, %52, !dbg !396
  %54 = trunc i64 %53 to i32, !dbg !397
  %55 = udiv i64 %51, %52, !dbg !399
  br label %56, !dbg !400

; <label>:56:                                     ; preds = %88, %46
  %57 = phi i32* [ %48, %46 ], [ %91, %88 ], !dbg !401
  %58 = phi i64 [ 0, %46 ], [ %89, %88 ], !dbg !404
  %59 = phi i32 [ %49, %46 ], [ %92, %88 ], !dbg !401
  %60 = phi i32 [ 0, %46 ], [ %90, %88 ], !dbg !405
  %61 = add i32 %59, -48, !dbg !408
  %62 = icmp ult i32 %61, 10, !dbg !408
  br i1 %62, label %73, label %63, !dbg !408

; <label>:63:                                     ; preds = %56
  %64 = add i32 %59, -65, !dbg !410
  %65 = icmp ult i32 %64, 26, !dbg !410
  br i1 %65, label %66, label %68, !dbg !410

; <label>:66:                                     ; preds = %63
  %67 = add nsw i32 %59, -55, !dbg !412
  br label %73, !dbg !413

; <label>:68:                                     ; preds = %63
  %69 = add i32 %59, -97, !dbg !414
  %70 = icmp ult i32 %69, 26, !dbg !414
  br i1 %70, label %71, label %93, !dbg !414

; <label>:71:                                     ; preds = %68
  %72 = add nsw i32 %59, -87, !dbg !416
  br label %73

; <label>:73:                                     ; preds = %56, %66, %71
  %74 = phi i32 [ %67, %66 ], [ %72, %71 ], [ %61, %56 ], !dbg !417
  %75 = icmp slt i32 %74, %47, !dbg !418
  br i1 %75, label %76, label %93, !dbg !420

; <label>:76:                                     ; preds = %73
  %77 = icmp slt i32 %60, 0, !dbg !421
  %78 = icmp ugt i64 %58, %55, !dbg !422
  %79 = or i1 %78, %77, !dbg !423
  br i1 %79, label %88, label %80, !dbg !423

; <label>:80:                                     ; preds = %76
  %81 = icmp eq i64 %58, %55, !dbg !424
  %82 = icmp sgt i32 %74, %54, !dbg !425
  %83 = and i1 %81, %82, !dbg !426
  br i1 %83, label %88, label %84, !dbg !426

; <label>:84:                                     ; preds = %80
  %85 = mul i64 %58, %52, !dbg !427
  %86 = sext i32 %74 to i64, !dbg !429
  %87 = add i64 %85, %86, !dbg !430
  br label %88

; <label>:88:                                     ; preds = %76, %80, %84
  %89 = phi i64 [ %87, %84 ], [ %55, %80 ], [ %58, %76 ], !dbg !431
  %90 = phi i32 [ 1, %84 ], [ -1, %80 ], [ -1, %76 ], !dbg !431
  %91 = getelementptr inbounds i32, i32* %57, i64 1, !dbg !432
  %92 = load i32, i32* %57, align 4, !dbg !433, !tbaa !362
  br label %56, !dbg !434, !llvm.loop !435

; <label>:93:                                     ; preds = %73, %68
  %94 = icmp slt i32 %60, 0, !dbg !438
  br i1 %94, label %95, label %97, !dbg !440

; <label>:95:                                     ; preds = %93
  %96 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !441
  store i32 34, i32* %96, align 8, !dbg !443, !tbaa !444
  br label %106, !dbg !445

; <label>:97:                                     ; preds = %93
  %98 = icmp eq i32 %60, 0, !dbg !446
  br i1 %98, label %99, label %103, !dbg !448

; <label>:99:                                     ; preds = %97, %39
  %100 = phi i32* [ %19, %39 ], [ %57, %97 ], !dbg !386
  %101 = phi i64 [ 0, %39 ], [ %58, %97 ], !dbg !404
  %102 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !449
  store i32 22, i32* %102, align 8, !dbg !451, !tbaa !444
  br label %106, !dbg !452

; <label>:103:                                    ; preds = %97
  %104 = sub i64 0, %58, !dbg !453
  %105 = select i1 %50, i64 %104, i64 %58, !dbg !455
  br label %106, !dbg !455

; <label>:106:                                    ; preds = %103, %99, %95
  %107 = phi i32* [ %100, %99 ], [ %57, %95 ], [ %57, %103 ], !dbg !386
  %108 = phi i64 [ %101, %99 ], [ %51, %95 ], [ %105, %103 ], !dbg !456
  %109 = phi i32 [ 0, %99 ], [ -1, %95 ], [ -1, %103 ], !dbg !457
  %110 = icmp eq i32** %2, null, !dbg !458
  br i1 %110, label %115, label %111, !dbg !460

; <label>:111:                                    ; preds = %106
  %112 = icmp eq i32 %109, 0, !dbg !461
  %113 = getelementptr inbounds i32, i32* %107, i64 -1, !dbg !462
  %114 = select i1 %112, i32* %1, i32* %113, !dbg !461
  store i32* %114, i32** %2, align 8, !dbg !463, !tbaa !464
  br label %115, !dbg !465

; <label>:115:                                    ; preds = %106, %111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  ret i64 %108, !dbg !466
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoimax_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !467 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !479
  %6 = tail call fastcc i64 @_wcstoimax_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  ret i64 %6, !dbg !481
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoimax(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !482 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !492
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !493
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !495
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !495, !tbaa !317
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !493
  br i1 %8, label %9, label %10, !dbg !493

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  br label %10, !dbg !493

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %12 = tail call fastcc i64 @_wcstoimax_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  ret i64 %12, !dbg !500
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoimax.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !5, line: 72, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !7, line: 222, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "_wcstoimax_r", scope: !1, file: !1, line: 137, type: !19, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !302)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !24, !297, !300, !13}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !5, line: 67, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !7, line: 214, baseType: !23)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !26, line: 569, size: 14912, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !108, !109, !110, !111, !115, !116, !178, !179, !183, !195, !196, !197, !199, !200, !201, !263, !282, !283, !288, !295}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !25, file: !26, line: 571, baseType: !13, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !26, line: 287, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 181, size: 1408, elements: !33)
!33 = !{!34, !37, !38, !39, !41, !42, !47, !48, !49, !57, !63, !68, !72, !73, !74, !75, !79, !83, !84, !85, !87, !88, !92, !107}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !32, file: !26, line: 182, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !32, file: !26, line: 183, baseType: !13, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !32, file: !26, line: 184, baseType: !13, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !26, line: 185, baseType: !40, size: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !32, file: !26, line: 186, baseType: !40, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !32, file: !26, line: 187, baseType: !43, size: 128, offset: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 117, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !26, line: 118, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !26, line: 119, baseType: !13, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !32, file: !26, line: 188, baseType: !13, size: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !32, file: !26, line: 195, baseType: !9, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !32, file: !26, line: 197, baseType: !50, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !24, !9, !55, !13}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !54, line: 145, baseType: !23)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !32, file: !26, line: 199, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!53, !24, !9, !61, !13}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !32, file: !26, line: 202, baseType: !64, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !24, !9, !67, !13}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !54, line: 114, baseType: !23)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !32, file: !26, line: 203, baseType: !69, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!13, !24, !9}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !32, file: !26, line: 206, baseType: !43, size: 128, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !32, file: !26, line: 207, baseType: !35, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !32, file: !26, line: 208, baseType: !13, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !32, file: !26, line: 211, baseType: !76, size: 24, offset: 928)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !32, file: !26, line: 212, baseType: !80, size: 8, offset: 952)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !32, file: !26, line: 215, baseType: !43, size: 128, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !32, file: !26, line: 218, baseType: !13, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !26, line: 219, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !54, line: 44, baseType: !23)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !32, file: !26, line: 222, baseType: !24, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !32, file: !26, line: 226, baseType: !89, size: 32, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !54, line: 175, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !91, line: 12, baseType: !13)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !32, file: !26, line: 228, baseType: !93, size: 64, offset: 1312)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !54, line: 171, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 163, size: 64, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !94, file: !54, line: 165, baseType: !13, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !94, file: !54, line: 170, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !54, line: 166, size: 32, elements: !99)
!99 = !{!100, !103}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !98, file: !54, line: 168, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !12, line: 124, baseType: !102)
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !98, file: !54, line: 169, baseType: !104, size: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 4)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !32, file: !26, line: 229, baseType: !13, size: 32, offset: 1376)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !25, file: !26, line: 578, baseType: !13, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !25, file: !26, line: 579, baseType: !112, size: 200, offset: 288)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !25, file: !26, line: 582, baseType: !13, size: 32, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !25, file: !26, line: 583, baseType: !117, size: 64, offset: 576)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !119, line: 178, size: 3392, elements: !120)
!119 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!120 = !{!121, !126, !133, !140, !141, !142, !170, !174, !177}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !118, file: !119, line: 180, baseType: !122, size: 1792)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1792, elements: !123)
!123 = !{!124, !125}
!124 = !DISubrange(count: 7)
!125 = !DISubrange(count: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !118, file: !119, line: 181, baseType: !127, size: 64, offset: 1792)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!13, !24, !55, !11, !130}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !132, line: 86, baseType: !93)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !118, file: !119, line: 183, baseType: !134, size: 64, offset: 1856)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!13, !24, !10, !61, !137, !130}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !138, line: 40, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !54, line: 129, baseType: !8)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !118, file: !119, line: 185, baseType: !13, size: 32, offset: 1920)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !118, file: !119, line: 186, baseType: !55, size: 64, offset: 1984)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !118, file: !119, line: 187, baseType: !143, size: 768, offset: 2048)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !144, line: 42, size: 768, elements: !145)
!144 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !143, file: !144, line: 44, baseType: !55, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !143, file: !144, line: 45, baseType: !55, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !143, file: !144, line: 46, baseType: !55, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !143, file: !144, line: 47, baseType: !55, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !143, file: !144, line: 48, baseType: !55, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !143, file: !144, line: 49, baseType: !55, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !143, file: !144, line: 50, baseType: !55, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !143, file: !144, line: 51, baseType: !55, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !143, file: !144, line: 52, baseType: !55, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !143, file: !144, line: 53, baseType: !55, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !143, file: !144, line: 54, baseType: !56, size: 8, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !143, file: !144, line: 55, baseType: !56, size: 8, offset: 648)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !143, file: !144, line: 56, baseType: !56, size: 8, offset: 656)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !143, file: !144, line: 57, baseType: !56, size: 8, offset: 664)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !143, file: !144, line: 58, baseType: !56, size: 8, offset: 672)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !143, file: !144, line: 59, baseType: !56, size: 8, offset: 680)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !143, file: !144, line: 60, baseType: !56, size: 8, offset: 688)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !143, file: !144, line: 61, baseType: !56, size: 8, offset: 696)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !143, file: !144, line: 62, baseType: !56, size: 8, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !143, file: !144, line: 63, baseType: !56, size: 8, offset: 712)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !143, file: !144, line: 64, baseType: !56, size: 8, offset: 720)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !143, file: !144, line: 65, baseType: !56, size: 8, offset: 728)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !143, file: !144, line: 66, baseType: !56, size: 8, offset: 736)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !143, file: !144, line: 67, baseType: !56, size: 8, offset: 744)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !118, file: !119, line: 189, baseType: !171, size: 16, offset: 2816)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 16, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 2)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !118, file: !119, line: 190, baseType: !175, size: 256, offset: 2832)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 256, elements: !176)
!176 = !{!125}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !118, file: !119, line: 191, baseType: !175, size: 256, offset: 3088)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !25, file: !26, line: 585, baseType: !13, size: 32, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !25, file: !26, line: 587, baseType: !180, size: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !24}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !25, file: !26, line: 590, baseType: !184, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !26, line: 47, size: 256, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !185, file: !26, line: 49, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !185, file: !26, line: 50, baseType: !13, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !185, file: !26, line: 50, baseType: !13, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !185, file: !26, line: 50, baseType: !13, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !185, file: !26, line: 50, baseType: !13, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !185, file: !26, line: 51, baseType: !193, size: 32, offset: 192)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32, elements: !81)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !102)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !25, file: !26, line: 591, baseType: !13, size: 32, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !25, file: !26, line: 592, baseType: !184, size: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !25, file: !26, line: 593, baseType: !198, size: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !25, file: !26, line: 596, baseType: !13, size: 32, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !25, file: !26, line: 597, baseType: !55, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !25, file: !26, line: 632, baseType: !202, size: 2880, offset: 1152)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 599, size: 2880, elements: !203)
!203 = !{!204, !254}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !202, file: !26, line: 622, baseType: !205, size: 1728)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !26, line: 601, size: 1728, elements: !206)
!206 = !{!207, !208, !209, !213, !225, !226, !228, !236, !237, !238, !239, !243, !247, !248, !249, !250, !251, !252, !253}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !205, file: !26, line: 603, baseType: !102, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !205, file: !26, line: 604, baseType: !55, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !205, file: !26, line: 605, baseType: !210, size: 208, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 208, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 26)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !205, file: !26, line: 606, baseType: !214, size: 288, offset: 352)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !26, line: 55, size: 288, elements: !215)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !214, file: !26, line: 57, baseType: !13, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !214, file: !26, line: 58, baseType: !13, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !214, file: !26, line: 59, baseType: !13, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !214, file: !26, line: 60, baseType: !13, size: 32, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !214, file: !26, line: 61, baseType: !13, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !214, file: !26, line: 62, baseType: !13, size: 32, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !214, file: !26, line: 63, baseType: !13, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !214, file: !26, line: 64, baseType: !13, size: 32, offset: 224)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !214, file: !26, line: 65, baseType: !13, size: 32, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !205, file: !26, line: 607, baseType: !13, size: 32, offset: 640)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !205, file: !26, line: 608, baseType: !227, size: 64, offset: 704)
!227 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !205, file: !26, line: 609, baseType: !229, size: 112, offset: 768)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !26, line: 319, size: 112, elements: !230)
!230 = !{!231, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !229, file: !26, line: 320, baseType: !232, size: 48)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 48, elements: !77)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !229, file: !26, line: 321, baseType: !232, size: 48, offset: 48)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !229, file: !26, line: 322, baseType: !233, size: 16, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !205, file: !26, line: 610, baseType: !93, size: 64, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !205, file: !26, line: 611, baseType: !93, size: 64, offset: 960)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !205, file: !26, line: 612, baseType: !93, size: 64, offset: 1024)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !205, file: !26, line: 613, baseType: !240, size: 64, offset: 1088)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !205, file: !26, line: 614, baseType: !244, size: 192, offset: 1152)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 24)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !205, file: !26, line: 615, baseType: !13, size: 32, offset: 1344)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !205, file: !26, line: 616, baseType: !93, size: 64, offset: 1376)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !205, file: !26, line: 617, baseType: !93, size: 64, offset: 1440)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !205, file: !26, line: 618, baseType: !93, size: 64, offset: 1504)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !205, file: !26, line: 619, baseType: !93, size: 64, offset: 1568)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !205, file: !26, line: 620, baseType: !93, size: 64, offset: 1632)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !205, file: !26, line: 621, baseType: !13, size: 32, offset: 1696)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !202, file: !26, line: 631, baseType: !255, size: 2880)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !26, line: 626, size: 2880, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !255, file: !26, line: 629, baseType: !258, size: 1920)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1920, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 30)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !255, file: !26, line: 630, baseType: !262, size: 960, offset: 1920)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 960, elements: !259)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !25, file: !26, line: 636, baseType: !264, size: 64, offset: 4032)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !26, line: 93, size: 6336, elements: !266)
!266 = !{!267, !268, !269, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !265, file: !26, line: 94, baseType: !264, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !265, file: !26, line: 95, baseType: !13, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !265, file: !26, line: 97, baseType: !270, size: 2048, offset: 128)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, elements: !176)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !265, file: !26, line: 98, baseType: !275, size: 4160, offset: 2176)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !26, line: 74, size: 4160, elements: !276)
!276 = !{!277, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !275, file: !26, line: 75, baseType: !278, size: 2048)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2048, elements: !176)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !275, file: !26, line: 76, baseType: !278, size: 2048, offset: 2048)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !275, file: !26, line: 78, baseType: !194, size: 32, offset: 4096)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !275, file: !26, line: 81, baseType: !194, size: 32, offset: 4128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !25, file: !26, line: 637, baseType: !265, size: 6336, offset: 4096)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !25, file: !26, line: 641, baseType: !284, size: 64, offset: 10432)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !13}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !25, file: !26, line: 646, baseType: !289, size: 192, offset: 10496)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !26, line: 291, size: 192, elements: !290)
!290 = !{!291, !293, !294}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !289, file: !26, line: 293, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !289, file: !26, line: 294, baseType: !13, size: 32, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !289, file: !26, line: 295, baseType: !30, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !25, file: !26, line: 648, baseType: !296, size: 4224, offset: 10688)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !77)
!297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!300 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!302 = !{!303, !304, !305, !306}
!303 = !DILocalVariable(name: "rptr", arg: 1, scope: !18, file: !1, line: 137, type: !24)
!304 = !DILocalVariable(name: "nptr", arg: 2, scope: !18, file: !1, line: 137, type: !297)
!305 = !DILocalVariable(name: "endptr", arg: 3, scope: !18, file: !1, line: 138, type: !300)
!306 = !DILocalVariable(name: "base", arg: 4, scope: !18, file: !1, line: 138, type: !13)
!307 = !DILocation(line: 137, column: 29, scope: !18)
!308 = !DILocation(line: 137, column: 61, scope: !18)
!309 = !DILocation(line: 138, column: 28, scope: !18)
!310 = !DILocation(line: 138, column: 40, scope: !18)
!311 = !DILocation(line: 230, column: 10, scope: !312, inlinedAt: !315)
!312 = distinct !DISubprogram(name: "__get_current_locale", scope: !119, file: !119, line: 228, type: !313, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!313 = !DISubroutineType(types: !314)
!314 = !{!117}
!315 = distinct !DILocation(line: 140, column: 48, scope: !18)
!316 = !DILocation(line: 230, column: 18, scope: !312, inlinedAt: !315)
!317 = !{!318, !322, i64 72}
!318 = !{!"_reent", !319, i64 0, !322, i64 8, !322, i64 16, !322, i64 24, !319, i64 32, !320, i64 36, !319, i64 64, !322, i64 72, !319, i64 80, !322, i64 88, !322, i64 96, !319, i64 104, !322, i64 112, !322, i64 120, !319, i64 128, !322, i64 136, !320, i64 144, !322, i64 504, !323, i64 512, !322, i64 1304, !325, i64 1312, !320, i64 1336}
!319 = !{!"int", !320, i64 0}
!320 = !{!"omnipotent char", !321, i64 0}
!321 = !{!"Simple C/C++ TBAA"}
!322 = !{!"any pointer", !320, i64 0}
!323 = !{!"_atexit", !322, i64 0, !319, i64 8, !320, i64 16, !324, i64 272}
!324 = !{!"_on_exit_args", !320, i64 0, !320, i64 256, !319, i64 512, !319, i64 516}
!325 = !{!"_glue", !322, i64 0, !319, i64 8, !322, i64 16}
!326 = !DILocation(line: 213, column: 3, scope: !327, inlinedAt: !328)
!327 = distinct !DISubprogram(name: "__get_global_locale", scope: !119, file: !119, line: 210, type: !313, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!328 = distinct !DILocation(line: 230, column: 29, scope: !312, inlinedAt: !315)
!329 = !DILocation(line: 230, column: 3, scope: !312, inlinedAt: !315)
!330 = !DILocation(line: 140, column: 9, scope: !18)
!331 = !DILocation(line: 140, column: 2, scope: !18)
!332 = distinct !DISubprogram(name: "_wcstoimax_l", scope: !1, file: !1, line: 61, type: !333, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !337)
!333 = !DISubroutineType(types: !334)
!334 = !{!21, !24, !297, !300, !13, !335}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !336, line: 10, baseType: !117)
!336 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!338 = !DILocalVariable(name: "rptr", arg: 1, scope: !332, file: !1, line: 61, type: !24)
!339 = !DILocalVariable(name: "nptr", arg: 2, scope: !332, file: !1, line: 61, type: !297)
!340 = !DILocalVariable(name: "endptr", arg: 3, scope: !332, file: !1, line: 62, type: !300)
!341 = !DILocalVariable(name: "base", arg: 4, scope: !332, file: !1, line: 62, type: !13)
!342 = !DILocalVariable(name: "loc", arg: 5, scope: !332, file: !1, line: 62, type: !335)
!343 = !DILocalVariable(name: "s", scope: !332, file: !1, line: 64, type: !298)
!344 = !DILocalVariable(name: "acc", scope: !332, file: !1, line: 65, type: !4)
!345 = !DILocalVariable(name: "c", scope: !332, file: !1, line: 66, type: !11)
!346 = !DILocalVariable(name: "cutoff", scope: !332, file: !1, line: 67, type: !4)
!347 = !DILocalVariable(name: "neg", scope: !332, file: !1, line: 68, type: !13)
!348 = !DILocalVariable(name: "any", scope: !332, file: !1, line: 68, type: !13)
!349 = !DILocalVariable(name: "cutlim", scope: !332, file: !1, line: 68, type: !13)
!350 = !DILocation(line: 61, column: 29, scope: !332)
!351 = !DILocation(line: 61, column: 62, scope: !332)
!352 = !DILocation(line: 62, column: 29, scope: !332)
!353 = !DILocation(line: 62, column: 41, scope: !332)
!354 = !DILocation(line: 62, column: 56, scope: !332)
!355 = !DILocation(line: 64, column: 17, scope: !332)
!356 = !DILocation(line: 68, column: 6, scope: !332)
!357 = !DILocation(line: 73, column: 2, scope: !332)
!358 = !DILocation(line: 0, scope: !359)
!359 = distinct !DILexicalBlock(scope: !332, file: !1, line: 73, column: 5)
!360 = !DILocation(line: 74, column: 9, scope: !359)
!361 = !DILocation(line: 74, column: 7, scope: !359)
!362 = !{!319, !319, i64 0}
!363 = !DILocation(line: 66, column: 10, scope: !332)
!364 = !DILocation(line: 75, column: 11, scope: !332)
!365 = !DILocation(line: 75, column: 2, scope: !359)
!366 = distinct !{!366, !357, !367}
!367 = !DILocation(line: 75, column: 29, scope: !332)
!368 = !DILocation(line: 76, column: 6, scope: !332)
!369 = !DILocation(line: 82, column: 4, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 81, column: 7)
!371 = distinct !DILexicalBlock(scope: !372, file: !1, line: 79, column: 9)
!372 = distinct !DILexicalBlock(scope: !332, file: !1, line: 76, column: 6)
!373 = !DILocation(line: 0, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !1, line: 76, column: 17)
!375 = !DILocation(line: 84, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !332, file: !1, line: 84, column: 6)
!377 = !DILocation(line: 0, scope: !371)
!378 = !DILocation(line: 85, column: 8, scope: !376)
!379 = !DILocation(line: 85, column: 20, scope: !376)
!380 = !DILocation(line: 85, column: 31, scope: !376)
!381 = !DILocation(line: 90, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !332, file: !1, line: 90, column: 6)
!383 = !DILocation(line: 91, column: 10, scope: !382)
!384 = !DILocation(line: 86, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !1, line: 85, column: 47)
!386 = !DILocation(line: 87, column: 5, scope: !385)
!387 = !DILocation(line: 68, column: 15, scope: !332)
!388 = !DILocation(line: 65, column: 12, scope: !332)
!389 = !DILocation(line: 93, column: 15, scope: !390)
!390 = distinct !DILexicalBlock(scope: !332, file: !1, line: 93, column: 6)
!391 = !DILocation(line: 91, column: 12, scope: !382)
!392 = !DILocation(line: 90, column: 6, scope: !332)
!393 = !DILocation(line: 96, column: 11, scope: !332)
!394 = !DILocation(line: 67, column: 12, scope: !332)
!395 = !DILocation(line: 97, column: 20, scope: !332)
!396 = !DILocation(line: 97, column: 18, scope: !332)
!397 = !DILocation(line: 97, column: 11, scope: !332)
!398 = !DILocation(line: 68, column: 20, scope: !332)
!399 = !DILocation(line: 98, column: 9, scope: !332)
!400 = !DILocation(line: 99, column: 2, scope: !332)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 99, column: 2)
!403 = distinct !DILexicalBlock(scope: !332, file: !1, line: 99, column: 2)
!404 = !DILocation(line: 92, column: 6, scope: !332)
!405 = !DILocation(line: 0, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !1, line: 115, column: 7)
!407 = distinct !DILexicalBlock(scope: !402, file: !1, line: 99, column: 22)
!408 = !DILocation(line: 105, column: 17, scope: !409)
!409 = distinct !DILexicalBlock(scope: !407, file: !1, line: 105, column: 7)
!410 = !DILocation(line: 107, column: 22, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !1, line: 107, column: 12)
!412 = !DILocation(line: 108, column: 6, scope: !411)
!413 = !DILocation(line: 108, column: 4, scope: !411)
!414 = !DILocation(line: 109, column: 21, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !1, line: 109, column: 12)
!416 = !DILocation(line: 110, column: 6, scope: !415)
!417 = !DILocation(line: 0, scope: !415)
!418 = !DILocation(line: 113, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !407, file: !1, line: 113, column: 7)
!420 = !DILocation(line: 113, column: 7, scope: !407)
!421 = !DILocation(line: 115, column: 11, scope: !406)
!422 = !DILocation(line: 115, column: 22, scope: !406)
!423 = !DILocation(line: 115, column: 15, scope: !406)
!424 = !DILocation(line: 115, column: 39, scope: !406)
!425 = !DILocation(line: 115, column: 54, scope: !406)
!426 = !DILocation(line: 115, column: 49, scope: !406)
!427 = !DILocation(line: 119, column: 8, scope: !428)
!428 = distinct !DILexicalBlock(scope: !406, file: !1, line: 117, column: 8)
!429 = !DILocation(line: 120, column: 11, scope: !428)
!430 = !DILocation(line: 120, column: 8, scope: !428)
!431 = !DILocation(line: 0, scope: !428)
!432 = !DILocation(line: 99, column: 18, scope: !402)
!433 = !DILocation(line: 99, column: 16, scope: !402)
!434 = !DILocation(line: 99, column: 2, scope: !402)
!435 = distinct !{!435, !436, !437}
!436 = !DILocation(line: 99, column: 2, scope: !403)
!437 = !DILocation(line: 122, column: 2, scope: !403)
!438 = !DILocation(line: 123, column: 10, scope: !439)
!439 = distinct !DILexicalBlock(scope: !332, file: !1, line: 123, column: 6)
!440 = !DILocation(line: 123, column: 6, scope: !332)
!441 = !DILocation(line: 125, column: 9, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 123, column: 15)
!443 = !DILocation(line: 125, column: 16, scope: !442)
!444 = !{!318, !319, i64 0}
!445 = !DILocation(line: 126, column: 2, scope: !442)
!446 = !DILocation(line: 126, column: 14, scope: !447)
!447 = distinct !DILexicalBlock(scope: !439, file: !1, line: 126, column: 13)
!448 = !DILocation(line: 126, column: 13, scope: !439)
!449 = !DILocation(line: 128, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !447, file: !1, line: 126, column: 19)
!451 = !DILocation(line: 128, column: 16, scope: !450)
!452 = !DILocation(line: 129, column: 2, scope: !450)
!453 = !DILocation(line: 130, column: 9, scope: !454)
!454 = distinct !DILexicalBlock(scope: !447, file: !1, line: 129, column: 13)
!455 = !DILocation(line: 129, column: 13, scope: !447)
!456 = !DILocation(line: 0, scope: !332)
!457 = !DILocation(line: 92, column: 12, scope: !332)
!458 = !DILocation(line: 131, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !332, file: !1, line: 131, column: 6)
!460 = !DILocation(line: 131, column: 6, scope: !332)
!461 = !DILocation(line: 132, column: 25, scope: !459)
!462 = !DILocation(line: 132, column: 33, scope: !459)
!463 = !DILocation(line: 132, column: 11, scope: !459)
!464 = !{!322, !322, i64 0}
!465 = !DILocation(line: 132, column: 3, scope: !459)
!466 = !DILocation(line: 133, column: 2, scope: !332)
!467 = distinct !DISubprogram(name: "wcstoimax_l", scope: !1, file: !1, line: 146, type: !468, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!21, !297, !300, !13, !335}
!470 = !{!471, !472, !473, !474}
!471 = !DILocalVariable(name: "nptr", arg: 1, scope: !467, file: !1, line: 146, type: !297)
!472 = !DILocalVariable(name: "endptr", arg: 2, scope: !467, file: !1, line: 146, type: !300)
!473 = !DILocalVariable(name: "base", arg: 3, scope: !467, file: !1, line: 147, type: !13)
!474 = !DILocalVariable(name: "loc", arg: 4, scope: !467, file: !1, line: 147, type: !335)
!475 = !DILocation(line: 146, column: 40, scope: !467)
!476 = !DILocation(line: 146, column: 68, scope: !467)
!477 = !DILocation(line: 147, column: 10, scope: !467)
!478 = !DILocation(line: 147, column: 25, scope: !467)
!479 = !DILocation(line: 149, column: 22, scope: !467)
!480 = !DILocation(line: 149, column: 9, scope: !467)
!481 = !DILocation(line: 149, column: 2, scope: !467)
!482 = distinct !DISubprogram(name: "wcstoimax", scope: !1, file: !1, line: 153, type: !483, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!21, !297, !300, !13}
!485 = !{!486, !487, !488}
!486 = !DILocalVariable(name: "nptr", arg: 1, scope: !482, file: !1, line: 153, type: !297)
!487 = !DILocalVariable(name: "endptr", arg: 2, scope: !482, file: !1, line: 153, type: !300)
!488 = !DILocalVariable(name: "base", arg: 3, scope: !482, file: !1, line: 153, type: !13)
!489 = !DILocation(line: 153, column: 37, scope: !482)
!490 = !DILocation(line: 153, column: 64, scope: !482)
!491 = !DILocation(line: 153, column: 76, scope: !482)
!492 = !DILocation(line: 155, column: 22, scope: !482)
!493 = !DILocation(line: 230, column: 10, scope: !312, inlinedAt: !494)
!494 = distinct !DILocation(line: 155, column: 50, scope: !482)
!495 = !DILocation(line: 230, column: 18, scope: !312, inlinedAt: !494)
!496 = !DILocation(line: 213, column: 3, scope: !327, inlinedAt: !497)
!497 = distinct !DILocation(line: 230, column: 29, scope: !312, inlinedAt: !494)
!498 = !DILocation(line: 230, column: 3, scope: !312, inlinedAt: !494)
!499 = !DILocation(line: 155, column: 9, scope: !482)
!500 = !DILocation(line: 155, column: 2, scope: !482)
