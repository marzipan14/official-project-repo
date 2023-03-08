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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br label %6, !dbg !316

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !317
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !319
  %9 = load i32, i32* %7, align 4, !dbg !320, !tbaa !321
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !326
  %11 = icmp eq i32 %10, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %11, label %12, label %6, !dbg !327, !llvm.loop !328

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i32 %9, 45, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %13, label %16, label %14, !dbg !332

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %9, 43, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %15, label %16, label %20, !dbg !335

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i32 [ 1, %12 ], [ 0, %14 ]
  %18 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !336
  %19 = load i32, i32* %8, align 4, !dbg !336, !tbaa !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %20, !dbg !338

; <label>:20:                                     ; preds = %16, %14
  %21 = phi i32 [ %9, %14 ], [ %19, %16 ], !dbg !317
  %22 = phi i32* [ %8, %14 ], [ %18, %16 ], !dbg !317
  %23 = phi i32 [ 0, %14 ], [ %17, %16 ], !dbg !340
  %24 = or i32 %3, 16, !dbg !338
  %25 = icmp eq i32 %24, 16, !dbg !338
  %26 = icmp eq i32 %21, 48, !dbg !341
  %27 = and i1 %25, %26, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %27, label %28, label %37, !dbg !338

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %22, align 4, !dbg !342, !tbaa !321
  %30 = icmp eq i32 %29, 120, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %30, label %33, label %31, !dbg !344

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i32 %29, 88, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %32, label %33, label %37, !dbg !346

; <label>:33:                                     ; preds = %28, %31
  %34 = getelementptr inbounds i32, i32* %22, i64 1, !dbg !347
  %35 = load i32, i32* %34, align 4, !dbg !347, !tbaa !321
  %36 = getelementptr inbounds i32, i32* %22, i64 2, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br label %42, !dbg !351

; <label>:37:                                     ; preds = %20, %31
  %38 = icmp eq i32 %3, 0, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %38, label %39, label %46, !dbg !351

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i32 %21, 48, !dbg !354
  %41 = select i1 %40, i32 8, i32 10, !dbg !355
  br label %42, !dbg !356

; <label>:42:                                     ; preds = %39, %33
  %43 = phi i32* [ %36, %33 ], [ %22, %39 ]
  %44 = phi i32 [ %35, %33 ], [ %21, %39 ]
  %45 = phi i32 [ 16, %33 ], [ %41, %39 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br label %46, !dbg !358

; <label>:46:                                     ; preds = %42, %37
  %47 = phi i32* [ %22, %37 ], [ %43, %42 ]
  %48 = phi i32 [ %21, %37 ], [ %44, %42 ]
  %49 = phi i32 [ %3, %37 ], [ %45, %42 ], !dbg !359
  %50 = sext i32 %49 to i64, !dbg !358
  %51 = udiv i64 -1, %50, !dbg !360
  %52 = urem i64 -1, %50, !dbg !362
  %53 = trunc i64 %52 to i32, !dbg !363
  br label %54, !dbg !367

; <label>:54:                                     ; preds = %86, %46
  %55 = phi i64 [ 0, %46 ], [ %87, %86 ], !dbg !369
  %56 = phi i32 [ %48, %46 ], [ %90, %86 ], !dbg !370
  %57 = phi i32* [ %47, %46 ], [ %89, %86 ], !dbg !370
  %58 = phi i32 [ 0, %46 ], [ %88, %86 ], !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %59 = add i32 %56, -48, !dbg !376
  %60 = icmp ult i32 %59, 10, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %60, label %71, label %61, !dbg !376

; <label>:61:                                     ; preds = %54
  %62 = add i32 %56, -65, !dbg !378
  %63 = icmp ult i32 %62, 26, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !378
  br i1 %63, label %64, label %66, !dbg !378

; <label>:64:                                     ; preds = %61
  %65 = add nsw i32 %56, -55, !dbg !380
  br label %71, !dbg !381

; <label>:66:                                     ; preds = %61
  %67 = add i32 %56, -97, !dbg !382
  %68 = icmp ult i32 %67, 26, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %68, label %69, label %91, !dbg !382

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %56, -87, !dbg !384
  br label %71

; <label>:71:                                     ; preds = %54, %64, %69
  %72 = phi i32 [ %65, %64 ], [ %70, %69 ], [ %59, %54 ], !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = icmp slt i32 %72, %49, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %73, label %74, label %91, !dbg !388

; <label>:74:                                     ; preds = %71
  %75 = icmp slt i32 %58, 0, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !390
  br i1 %75, label %86, label %76, !dbg !390

; <label>:76:                                     ; preds = %74
  %77 = icmp ugt i64 %55, %51, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %77, label %86, label %78, !dbg !392

; <label>:78:                                     ; preds = %76
  %79 = icmp eq i64 %55, %51, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %79, label %80, label %82, !dbg !394

; <label>:80:                                     ; preds = %78
  %81 = icmp sgt i32 %72, %53, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %81, label %86, label %82, !dbg !396

; <label>:82:                                     ; preds = %80, %78
  %83 = mul i64 %55, %50, !dbg !397
  %84 = sext i32 %72 to i64, !dbg !399
  %85 = add i64 %83, %84, !dbg !400
  br label %86

; <label>:86:                                     ; preds = %74, %76, %80, %82
  %87 = phi i64 [ %85, %82 ], [ %55, %80 ], [ %55, %76 ], [ %55, %74 ], !dbg !401
  %88 = phi i32 [ 1, %82 ], [ -1, %80 ], [ -1, %76 ], [ -1, %74 ], !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %89 = getelementptr inbounds i32, i32* %57, i64 1, !dbg !402
  %90 = load i32, i32* %57, align 4, !dbg !403, !tbaa !321
  br label %54, !dbg !404, !llvm.loop !405

; <label>:91:                                     ; preds = %71, %66
  %92 = icmp slt i32 %58, 0, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %92, label %93, label %95, !dbg !410

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !411
  store i32 34, i32* %94, align 8, !dbg !413, !tbaa !414
  br label %99, !dbg !420

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i32 %23, 0, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %96, label %101, label %97, !dbg !423

; <label>:97:                                     ; preds = %95
  %98 = sub i64 0, %55, !dbg !424
  br label %99, !dbg !425

; <label>:99:                                     ; preds = %93, %97
  %100 = phi i64 [ %98, %97 ], [ -1, %93 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br label %101, !dbg !427

; <label>:101:                                    ; preds = %99, %95
  %102 = phi i64 [ %55, %95 ], [ %100, %99 ], !dbg !375
  %103 = icmp eq i32** %2, null, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %103, label %108, label %104, !dbg !429

; <label>:104:                                    ; preds = %101
  %105 = icmp eq i32 %58, 0, !dbg !430
  %106 = getelementptr inbounds i32, i32* %57, i64 -1, !dbg !431
  %107 = select i1 %105, i32* %1, i32* %106, !dbg !430
  store i32* %107, i32** %2, align 8, !dbg !432, !tbaa !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br label %108, !dbg !434

; <label>:108:                                    ; preds = %101, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  ret i64 %102, !dbg !435
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstoul_r(%struct._reent* nocapture, i32*, i32**, i32) local_unnamed_addr #0 !dbg !436 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !445
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !450
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !450, !tbaa !451
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %8, label %9, label %10, !dbg !445

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br label %10, !dbg !445

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %12 = tail call i64 @_wcstoul_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  ret i64 %12, !dbg !457
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoul_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !458 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !472
  %6 = tail call i64 @_wcstoul_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  ret i64 %6, !dbg !474
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoul(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !475 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !483
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !484
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !486
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !486, !tbaa !451
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %8, label %9, label %10, !dbg !484

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %10, !dbg !484

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  %12 = tail call i64 @_wcstoul_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  ret i64 %12, !dbg !491
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
!330 = !DILocation(line: 163, column: 8, scope: !331)
!331 = distinct !DILexicalBlock(scope: !13, file: !1, line: 163, column: 6)
!332 = !DILocation(line: 163, column: 6, scope: !13)
!333 = !DILocation(line: 166, column: 15, scope: !334)
!334 = distinct !DILexicalBlock(scope: !331, file: !1, line: 166, column: 13)
!335 = !DILocation(line: 166, column: 13, scope: !331)
!336 = !DILocation(line: 0, scope: !337)
!337 = distinct !DILexicalBlock(scope: !331, file: !1, line: 163, column: 17)
!338 = !DILocation(line: 168, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !13, file: !1, line: 168, column: 6)
!340 = !DILocation(line: 0, scope: !13)
!341 = !DILocation(line: 169, column: 8, scope: !339)
!342 = !DILocation(line: 169, column: 20, scope: !339)
!343 = !DILocation(line: 169, column: 23, scope: !339)
!344 = !DILocation(line: 169, column: 31, scope: !339)
!345 = !DILocation(line: 169, column: 37, scope: !339)
!346 = !DILocation(line: 168, column: 6, scope: !13)
!347 = !DILocation(line: 170, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !339, file: !1, line: 169, column: 47)
!349 = !DILocation(line: 171, column: 5, scope: !348)
!350 = !DILocation(line: 173, column: 2, scope: !348)
!351 = !DILocation(line: 174, column: 6, scope: !13)
!352 = !DILocation(line: 174, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !13, file: !1, line: 174, column: 6)
!354 = !DILocation(line: 175, column: 12, scope: !353)
!355 = !DILocation(line: 175, column: 10, scope: !353)
!356 = !DILocation(line: 175, column: 3, scope: !353)
!357 = !DILocation(line: 0, scope: !353)
!358 = !DILocation(line: 176, column: 38, scope: !13)
!359 = !DILocation(line: 0, scope: !348)
!360 = !DILocation(line: 176, column: 36, scope: !13)
!361 = !DILocation(line: 154, column: 25, scope: !13)
!362 = !DILocation(line: 177, column: 36, scope: !13)
!363 = !DILocation(line: 177, column: 11, scope: !13)
!364 = !DILocation(line: 155, column: 29, scope: !13)
!365 = !DILocation(line: 152, column: 25, scope: !13)
!366 = !DILocation(line: 155, column: 24, scope: !13)
!367 = !DILocation(line: 178, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !13, file: !1, line: 178, column: 2)
!369 = !DILocation(line: 178, column: 11, scope: !368)
!370 = !DILocation(line: 0, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !1, line: 178, column: 2)
!372 = !DILocation(line: 0, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !1, line: 189, column: 20)
!374 = distinct !DILexicalBlock(scope: !371, file: !1, line: 178, column: 36)
!375 = !DILocation(line: 0, scope: !368)
!376 = !DILocation(line: 179, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !1, line: 179, column: 7)
!378 = !DILocation(line: 181, column: 22, scope: !379)
!379 = distinct !DILexicalBlock(scope: !377, file: !1, line: 181, column: 12)
!380 = !DILocation(line: 182, column: 6, scope: !379)
!381 = !DILocation(line: 182, column: 4, scope: !379)
!382 = !DILocation(line: 183, column: 22, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !1, line: 183, column: 12)
!384 = !DILocation(line: 184, column: 6, scope: !383)
!385 = !DILocation(line: 0, scope: !383)
!386 = !DILocation(line: 187, column: 9, scope: !387)
!387 = distinct !DILexicalBlock(scope: !374, file: !1, line: 187, column: 7)
!388 = !DILocation(line: 187, column: 7, scope: !374)
!389 = !DILocation(line: 189, column: 24, scope: !373)
!390 = !DILocation(line: 189, column: 28, scope: !373)
!391 = !DILocation(line: 189, column: 35, scope: !373)
!392 = !DILocation(line: 189, column: 44, scope: !373)
!393 = !DILocation(line: 189, column: 52, scope: !373)
!394 = !DILocation(line: 189, column: 62, scope: !373)
!395 = !DILocation(line: 189, column: 67, scope: !373)
!396 = !DILocation(line: 189, column: 20, scope: !374)
!397 = !DILocation(line: 193, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !373, file: !1, line: 191, column: 8)
!399 = !DILocation(line: 194, column: 11, scope: !398)
!400 = !DILocation(line: 194, column: 8, scope: !398)
!401 = !DILocation(line: 0, scope: !398)
!402 = !DILocation(line: 178, column: 32, scope: !371)
!403 = !DILocation(line: 178, column: 30, scope: !371)
!404 = !DILocation(line: 178, column: 2, scope: !371)
!405 = distinct !{!405, !406, !407}
!406 = !DILocation(line: 178, column: 2, scope: !368)
!407 = !DILocation(line: 196, column: 2, scope: !368)
!408 = !DILocation(line: 197, column: 10, scope: !409)
!409 = distinct !DILexicalBlock(scope: !13, file: !1, line: 197, column: 6)
!410 = !DILocation(line: 197, column: 6, scope: !13)
!411 = !DILocation(line: 199, column: 9, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !1, line: 197, column: 15)
!413 = !DILocation(line: 199, column: 16, scope: !412)
!414 = !{!415, !322, i64 0}
!415 = !{!"_reent", !322, i64 0, !416, i64 8, !416, i64 16, !416, i64 24, !322, i64 32, !323, i64 36, !322, i64 64, !416, i64 72, !322, i64 80, !416, i64 88, !416, i64 96, !322, i64 104, !416, i64 112, !416, i64 120, !322, i64 128, !416, i64 136, !323, i64 144, !416, i64 504, !417, i64 512, !416, i64 1304, !419, i64 1312, !323, i64 1336}
!416 = !{!"any pointer", !323, i64 0}
!417 = !{!"_atexit", !416, i64 0, !322, i64 8, !323, i64 16, !418, i64 272}
!418 = !{!"_on_exit_args", !323, i64 0, !323, i64 256, !322, i64 512, !322, i64 516}
!419 = !{!"_glue", !416, i64 0, !322, i64 8, !416, i64 16}
!420 = !DILocation(line: 200, column: 2, scope: !412)
!421 = !DILocation(line: 200, column: 13, scope: !422)
!422 = distinct !DILexicalBlock(scope: !409, file: !1, line: 200, column: 13)
!423 = !DILocation(line: 200, column: 13, scope: !409)
!424 = !DILocation(line: 201, column: 9, scope: !422)
!425 = !DILocation(line: 201, column: 3, scope: !422)
!426 = !DILocation(line: 0, scope: !412)
!427 = !DILocation(line: 202, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !13, file: !1, line: 202, column: 6)
!429 = !DILocation(line: 202, column: 6, scope: !13)
!430 = !DILocation(line: 203, column: 26, scope: !428)
!431 = !DILocation(line: 203, column: 34, scope: !428)
!432 = !DILocation(line: 203, column: 11, scope: !428)
!433 = !{!416, !416, i64 0}
!434 = !DILocation(line: 203, column: 3, scope: !428)
!435 = !DILocation(line: 204, column: 2, scope: !13)
!436 = distinct !DISubprogram(name: "_wcstoul_r", scope: !1, file: !1, line: 208, type: !437, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!4, !16, !291, !293, !8}
!439 = !{!440, !441, !442, !443}
!440 = !DILocalVariable(name: "rptr", arg: 1, scope: !436, file: !1, line: 208, type: !16)
!441 = !DILocalVariable(name: "nptr", arg: 2, scope: !436, file: !1, line: 208, type: !291)
!442 = !DILocalVariable(name: "endptr", arg: 3, scope: !436, file: !1, line: 208, type: !293)
!443 = !DILocalVariable(name: "base", arg: 4, scope: !436, file: !1, line: 208, type: !8)
!444 = !DILocation(line: 208, column: 1, scope: !436)
!445 = !DILocation(line: 230, column: 10, scope: !446, inlinedAt: !449)
!446 = distinct !DISubprogram(name: "__get_current_locale", scope: !113, file: !113, line: 228, type: !447, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!447 = !DISubroutineType(types: !448)
!448 = !{!111}
!449 = distinct !DILocation(line: 214, column: 47, scope: !436)
!450 = !DILocation(line: 230, column: 18, scope: !446, inlinedAt: !449)
!451 = !{!415, !416, i64 72}
!452 = !DILocation(line: 213, column: 3, scope: !453, inlinedAt: !454)
!453 = distinct !DISubprogram(name: "__get_global_locale", scope: !113, file: !113, line: 210, type: !447, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!454 = distinct !DILocation(line: 230, column: 29, scope: !446, inlinedAt: !449)
!455 = !DILocation(line: 230, column: 3, scope: !446, inlinedAt: !449)
!456 = !DILocation(line: 214, column: 9, scope: !436)
!457 = !DILocation(line: 214, column: 2, scope: !436)
!458 = distinct !DISubprogram(name: "wcstoul_l", scope: !1, file: !1, line: 220, type: !459, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !463)
!459 = !DISubroutineType(types: !460)
!460 = !{!4, !461, !462, !8, !294}
!461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!462 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !293)
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "s", arg: 1, scope: !458, file: !1, line: 220, type: !461)
!465 = !DILocalVariable(name: "ptr", arg: 2, scope: !458, file: !1, line: 220, type: !462)
!466 = !DILocalVariable(name: "base", arg: 3, scope: !458, file: !1, line: 220, type: !8)
!467 = !DILocalVariable(name: "loc", arg: 4, scope: !458, file: !1, line: 221, type: !294)
!468 = !DILocation(line: 220, column: 38, scope: !458)
!469 = !DILocation(line: 220, column: 62, scope: !458)
!470 = !DILocation(line: 220, column: 71, scope: !458)
!471 = !DILocation(line: 221, column: 14, scope: !458)
!472 = !DILocation(line: 223, column: 21, scope: !458)
!473 = !DILocation(line: 223, column: 9, scope: !458)
!474 = !DILocation(line: 223, column: 2, scope: !458)
!475 = distinct !DISubprogram(name: "wcstoul", scope: !1, file: !1, line: 227, type: !476, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!4, !461, !462, !8}
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "s", arg: 1, scope: !475, file: !1, line: 227, type: !461)
!480 = !DILocalVariable(name: "ptr", arg: 2, scope: !475, file: !1, line: 227, type: !462)
!481 = !DILocalVariable(name: "base", arg: 3, scope: !475, file: !1, line: 227, type: !8)
!482 = !DILocation(line: 227, column: 1, scope: !475)
!483 = !DILocation(line: 232, column: 21, scope: !475)
!484 = !DILocation(line: 230, column: 10, scope: !446, inlinedAt: !485)
!485 = distinct !DILocation(line: 232, column: 43, scope: !475)
!486 = !DILocation(line: 230, column: 18, scope: !446, inlinedAt: !485)
!487 = !DILocation(line: 213, column: 3, scope: !453, inlinedAt: !488)
!488 = distinct !DILocation(line: 230, column: 29, scope: !446, inlinedAt: !485)
!489 = !DILocation(line: 230, column: 3, scope: !446, inlinedAt: !485)
!490 = !DILocation(line: 232, column: 9, scope: !475)
!491 = !DILocation(line: 232, column: 2, scope: !475)
