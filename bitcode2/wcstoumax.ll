; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoumax.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoumax.c"
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
define dso_local i64 @_wcstoumax_r(%struct._reent* nocapture, i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !13 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !309
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !314
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !314, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %8, label %9, label %10, !dbg !309

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br label %10, !dbg !309

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %12 = tail call fastcc i64 @_wcstoumax_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i64 %12, !dbg !329
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_wcstoumax_l(%struct._reent* nocapture, i32* noalias, i32** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !330 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %6, !dbg !355

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i32* [ %1, %5 ], [ %8, %6 ], !dbg !356
  %8 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !358
  %9 = load i32, i32* %7, align 4, !dbg !359, !tbaa !360
  %10 = tail call i32 @iswspace_l(i32 %9, %struct.__locale_t* %4) #3, !dbg !362
  %11 = icmp eq i32 %10, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %11, label %12, label %6, !dbg !363, !llvm.loop !364

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i32 %9, 45, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %13, label %16, label %14, !dbg !368

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %9, 43, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %15, label %16, label %20, !dbg !372

; <label>:16:                                     ; preds = %14, %12
  %17 = phi i32 [ 1, %12 ], [ 0, %14 ]
  %18 = getelementptr inbounds i32, i32* %7, i64 2, !dbg !373
  %19 = load i32, i32* %8, align 4, !dbg !373, !tbaa !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br label %20, !dbg !375

; <label>:20:                                     ; preds = %16, %14
  %21 = phi i32 [ %9, %14 ], [ %19, %16 ], !dbg !356
  %22 = phi i32* [ %8, %14 ], [ %18, %16 ], !dbg !356
  %23 = phi i32 [ 0, %14 ], [ %17, %16 ], !dbg !377
  %24 = or i32 %3, 16, !dbg !375
  %25 = icmp eq i32 %24, 16, !dbg !375
  %26 = icmp eq i32 %21, 48, !dbg !378
  %27 = and i1 %25, %26, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %27, label %28, label %37, !dbg !375

; <label>:28:                                     ; preds = %20
  %29 = load i32, i32* %22, align 4, !dbg !379, !tbaa !360
  %30 = icmp eq i32 %29, 120, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %30, label %33, label %31, !dbg !381

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i32 %29, 88, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %32, label %33, label %37, !dbg !383

; <label>:33:                                     ; preds = %31, %28
  %34 = getelementptr inbounds i32, i32* %22, i64 1, !dbg !384
  %35 = load i32, i32* %34, align 4, !dbg !384, !tbaa !360
  %36 = getelementptr inbounds i32, i32* %22, i64 2, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br label %46, !dbg !391

; <label>:37:                                     ; preds = %20, %31
  %38 = icmp eq i32 %3, 0, !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %38, label %39, label %42, !dbg !388

; <label>:39:                                     ; preds = %37
  %40 = icmp eq i32 %21, 48, !dbg !395
  %41 = select i1 %40, i32 8, i32 10, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br label %42, !dbg !397

; <label>:42:                                     ; preds = %39, %37
  %43 = phi i32 [ %41, %39 ], [ %3, %37 ], !dbg !398
  %44 = add i32 %43, -2, !dbg !391
  %45 = icmp ugt i32 %44, 34, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %45, label %97, label %46, !dbg !391

; <label>:46:                                     ; preds = %33, %42
  %47 = phi i32 [ 16, %33 ], [ %43, %42 ]
  %48 = phi i32 [ %35, %33 ], [ %21, %42 ]
  %49 = phi i32* [ %36, %33 ], [ %22, %42 ]
  %50 = sext i32 %47 to i64, !dbg !399
  %51 = udiv i64 -1, %50, !dbg !400
  %52 = urem i64 -1, %50, !dbg !402
  %53 = trunc i64 %52 to i32, !dbg !403
  br label %54, !dbg !405

; <label>:54:                                     ; preds = %86, %46
  %55 = phi i64 [ 0, %46 ], [ %87, %86 ], !dbg !406
  %56 = phi i32 [ %48, %46 ], [ %90, %86 ], !dbg !407
  %57 = phi i32* [ %49, %46 ], [ %89, %86 ], !dbg !407
  %58 = phi i32 [ 0, %46 ], [ %88, %86 ], !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  %59 = add i32 %56, -48, !dbg !414
  %60 = icmp ult i32 %59, 10, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %60, label %71, label %61, !dbg !414

; <label>:61:                                     ; preds = %54
  %62 = add i32 %56, -65, !dbg !416
  %63 = icmp ult i32 %62, 26, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %63, label %64, label %66, !dbg !416

; <label>:64:                                     ; preds = %61
  %65 = add nsw i32 %56, -55, !dbg !418
  br label %71, !dbg !419

; <label>:66:                                     ; preds = %61
  %67 = add i32 %56, -97, !dbg !420
  %68 = icmp ult i32 %67, 26, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %68, label %69, label %91, !dbg !420

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %56, -87, !dbg !422
  br label %71

; <label>:71:                                     ; preds = %54, %64, %69
  %72 = phi i32 [ %65, %64 ], [ %70, %69 ], [ %59, %54 ], !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = icmp slt i32 %72, %47, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %73, label %74, label %91, !dbg !426

; <label>:74:                                     ; preds = %71
  %75 = icmp slt i32 %58, 0, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %75, label %86, label %76, !dbg !428

; <label>:76:                                     ; preds = %74
  %77 = icmp ugt i64 %55, %51, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %77, label %86, label %78, !dbg !430

; <label>:78:                                     ; preds = %76
  %79 = icmp eq i64 %55, %51, !dbg !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  br i1 %79, label %80, label %82, !dbg !432

; <label>:80:                                     ; preds = %78
  %81 = icmp sgt i32 %72, %53, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  br i1 %81, label %86, label %82, !dbg !434

; <label>:82:                                     ; preds = %80, %78
  %83 = mul i64 %55, %50, !dbg !435
  %84 = sext i32 %72 to i64, !dbg !437
  %85 = add i64 %83, %84, !dbg !438
  br label %86

; <label>:86:                                     ; preds = %74, %76, %80, %82
  %87 = phi i64 [ %85, %82 ], [ %55, %80 ], [ %55, %76 ], [ %55, %74 ], !dbg !439
  %88 = phi i32 [ 1, %82 ], [ -1, %80 ], [ -1, %76 ], [ -1, %74 ], !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %89 = getelementptr inbounds i32, i32* %57, i64 1, !dbg !440
  %90 = load i32, i32* %57, align 4, !dbg !441, !tbaa !360
  br label %54, !dbg !413, !llvm.loop !442

; <label>:91:                                     ; preds = %71, %66
  %92 = icmp slt i32 %58, 0, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %92, label %93, label %95, !dbg !447

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !448
  store i32 34, i32* %94, align 8, !dbg !450, !tbaa !451
  br label %105, !dbg !452

; <label>:95:                                     ; preds = %91
  %96 = icmp eq i32 %58, 0, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br i1 %96, label %97, label %101, !dbg !455

; <label>:97:                                     ; preds = %95, %42
  %98 = phi i64 [ 0, %42 ], [ %55, %95 ], !dbg !406
  %99 = phi i32* [ %22, %42 ], [ %57, %95 ], !dbg !386
  %100 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !456
  store i32 22, i32* %100, align 8, !dbg !458, !tbaa !451
  br label %105, !dbg !459

; <label>:101:                                    ; preds = %95
  %102 = icmp eq i32 %23, 0, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %102, label %109, label %103, !dbg !462

; <label>:103:                                    ; preds = %101
  %104 = sub i64 0, %55, !dbg !463
  br label %105, !dbg !464

; <label>:105:                                    ; preds = %93, %103, %97
  %106 = phi i64 [ %104, %103 ], [ -1, %93 ], [ %98, %97 ]
  %107 = phi i32* [ %57, %103 ], [ %57, %93 ], [ %99, %97 ]
  %108 = phi i32 [ -1, %103 ], [ -1, %93 ], [ 0, %97 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br label %109, !dbg !466

; <label>:109:                                    ; preds = %105, %101
  %110 = phi i64 [ %55, %101 ], [ %106, %105 ], !dbg !468
  %111 = phi i32* [ %57, %101 ], [ %107, %105 ], !dbg !386
  %112 = phi i32 [ -1, %101 ], [ %108, %105 ], !dbg !469
  %113 = icmp eq i32** %2, null, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %113, label %118, label %114, !dbg !470

; <label>:114:                                    ; preds = %109
  %115 = icmp eq i32 %112, 0, !dbg !471
  %116 = getelementptr inbounds i32, i32* %111, i64 -1, !dbg !472
  %117 = select i1 %115, i32* %1, i32* %116, !dbg !471
  store i32* %117, i32** %2, align 8, !dbg !473, !tbaa !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br label %118, !dbg !475

; <label>:118:                                    ; preds = %109, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  ret i64 %110, !dbg !476
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoumax_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !477 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !489
  %6 = tail call fastcc i64 @_wcstoumax_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  ret i64 %6, !dbg !491
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoumax(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !492 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !502
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !503
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !505
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !505, !tbaa !315
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br i1 %8, label %9, label %10, !dbg !503

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  br label %10, !dbg !503

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %12 = tail call fastcc i64 @_wcstoumax_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  ret i64 %12, !dbg !510
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoumax.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 83, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "_wcstoumax_r", scope: !1, file: !1, line: 136, type: !14, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !300)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !21, !295, !298, !8}
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !17, line: 72, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !19, line: 222, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !23, line: 569, size: 14912, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !106, !107, !108, !109, !113, !114, !176, !177, !181, !193, !194, !195, !197, !198, !199, !261, !280, !281, !286, !293}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !22, file: !23, line: 571, baseType: !8, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !23, line: 287, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !23, line: 181, size: 1408, elements: !30)
!30 = !{!31, !34, !35, !36, !38, !39, !44, !45, !46, !55, !61, !66, !70, !71, !72, !73, !77, !81, !82, !83, !85, !86, !90, !105}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !29, file: !23, line: 182, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !29, file: !23, line: 183, baseType: !8, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !29, file: !23, line: 184, baseType: !8, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !23, line: 185, baseType: !37, size: 16, offset: 128)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !29, file: !23, line: 186, baseType: !37, size: 16, offset: 144)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !29, file: !23, line: 187, baseType: !40, size: 128, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !23, line: 117, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !40, file: !23, line: 118, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !40, file: !23, line: 119, baseType: !8, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !29, file: !23, line: 188, baseType: !8, size: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !29, file: !23, line: 195, baseType: !4, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !29, file: !23, line: 197, baseType: !47, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !21, !4, !53, !8}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !51, line: 145, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !29, file: !23, line: 199, baseType: !56, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!50, !21, !4, !59, !8}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !29, file: !23, line: 202, baseType: !62, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !21, !4, !65, !8}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !51, line: 114, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !29, file: !23, line: 203, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!8, !21, !4}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !29, file: !23, line: 206, baseType: !40, size: 128, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !29, file: !23, line: 207, baseType: !32, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !29, file: !23, line: 208, baseType: !8, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !29, file: !23, line: 211, baseType: !74, size: 24, offset: 928)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !29, file: !23, line: 212, baseType: !78, size: 8, offset: 952)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !29, file: !23, line: 215, baseType: !40, size: 128, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !29, file: !23, line: 218, baseType: !8, size: 32, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !23, line: 219, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !51, line: 44, baseType: !52)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !29, file: !23, line: 222, baseType: !21, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !23, line: 226, baseType: !87, size: 32, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !51, line: 175, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !89, line: 12, baseType: !8)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !29, file: !23, line: 228, baseType: !91, size: 64, offset: 1312)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !51, line: 171, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 163, size: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !92, file: !51, line: 165, baseType: !8, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !92, file: !51, line: 170, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !51, line: 166, size: 32, elements: !97)
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !96, file: !51, line: 168, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !7, line: 124, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !96, file: !51, line: 169, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !23, line: 229, baseType: !8, size: 32, offset: 1376)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !22, file: !23, line: 578, baseType: !8, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !22, file: !23, line: 579, baseType: !110, size: 200, offset: 288)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 200, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 25)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !22, file: !23, line: 582, baseType: !8, size: 32, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !22, file: !23, line: 583, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !117, line: 178, size: 3392, elements: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !{!119, !124, !131, !138, !139, !140, !168, !172, !175}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !116, file: !117, line: 180, baseType: !120, size: 1792)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1792, elements: !121)
!121 = !{!122, !123}
!122 = !DISubrange(count: 7)
!123 = !DISubrange(count: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !116, file: !117, line: 181, baseType: !125, size: 64, offset: 1792)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!8, !21, !53, !6, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !130, line: 86, baseType: !91)
!130 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !116, file: !117, line: 183, baseType: !132, size: 64, offset: 1856)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!8, !21, !5, !59, !135, !128}
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 40, baseType: !137)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !51, line: 129, baseType: !20)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !116, file: !117, line: 185, baseType: !8, size: 32, offset: 1920)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !116, file: !117, line: 186, baseType: !53, size: 64, offset: 1984)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !116, file: !117, line: 187, baseType: !141, size: 768, offset: 2048)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !142, line: 42, size: 768, elements: !143)
!142 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !141, file: !142, line: 44, baseType: !53, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !141, file: !142, line: 45, baseType: !53, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !141, file: !142, line: 46, baseType: !53, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !141, file: !142, line: 47, baseType: !53, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !141, file: !142, line: 48, baseType: !53, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !141, file: !142, line: 49, baseType: !53, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !141, file: !142, line: 50, baseType: !53, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !141, file: !142, line: 51, baseType: !53, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !141, file: !142, line: 52, baseType: !53, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !141, file: !142, line: 53, baseType: !53, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !141, file: !142, line: 54, baseType: !54, size: 8, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !141, file: !142, line: 55, baseType: !54, size: 8, offset: 648)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !141, file: !142, line: 56, baseType: !54, size: 8, offset: 656)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !141, file: !142, line: 57, baseType: !54, size: 8, offset: 664)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !141, file: !142, line: 58, baseType: !54, size: 8, offset: 672)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !141, file: !142, line: 59, baseType: !54, size: 8, offset: 680)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !141, file: !142, line: 60, baseType: !54, size: 8, offset: 688)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !141, file: !142, line: 61, baseType: !54, size: 8, offset: 696)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !141, file: !142, line: 62, baseType: !54, size: 8, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !141, file: !142, line: 63, baseType: !54, size: 8, offset: 712)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !141, file: !142, line: 64, baseType: !54, size: 8, offset: 720)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !141, file: !142, line: 65, baseType: !54, size: 8, offset: 728)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !141, file: !142, line: 66, baseType: !54, size: 8, offset: 736)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !141, file: !142, line: 67, baseType: !54, size: 8, offset: 744)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !116, file: !117, line: 189, baseType: !169, size: 16, offset: 2816)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 16, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !116, file: !117, line: 190, baseType: !173, size: 256, offset: 2832)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !174)
!174 = !{!123}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !116, file: !117, line: 191, baseType: !173, size: 256, offset: 3088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !22, file: !23, line: 585, baseType: !8, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !22, file: !23, line: 587, baseType: !178, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !21}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !22, file: !23, line: 590, baseType: !182, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !23, line: 47, size: 256, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !183, file: !23, line: 49, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !183, file: !23, line: 50, baseType: !8, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !183, file: !23, line: 50, baseType: !8, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !183, file: !23, line: 50, baseType: !8, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !183, file: !23, line: 50, baseType: !8, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !183, file: !23, line: 51, baseType: !191, size: 32, offset: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 32, elements: !79)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !23, line: 25, baseType: !100)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !22, file: !23, line: 591, baseType: !8, size: 32, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !22, file: !23, line: 592, baseType: !182, size: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !22, file: !23, line: 593, baseType: !196, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !22, file: !23, line: 596, baseType: !8, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !22, file: !23, line: 597, baseType: !53, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !22, file: !23, line: 632, baseType: !200, size: 2880, offset: 1152)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !23, line: 599, size: 2880, elements: !201)
!201 = !{!202, !252}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !200, file: !23, line: 622, baseType: !203, size: 1728)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !23, line: 601, size: 1728, elements: !204)
!204 = !{!205, !206, !207, !211, !223, !224, !226, !234, !235, !236, !237, !241, !245, !246, !247, !248, !249, !250, !251}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !203, file: !23, line: 603, baseType: !100, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !203, file: !23, line: 604, baseType: !53, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !203, file: !23, line: 605, baseType: !208, size: 208, offset: 128)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 208, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 26)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !203, file: !23, line: 606, baseType: !212, size: 288, offset: 352)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !23, line: 55, size: 288, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !212, file: !23, line: 57, baseType: !8, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !212, file: !23, line: 58, baseType: !8, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !212, file: !23, line: 59, baseType: !8, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !212, file: !23, line: 60, baseType: !8, size: 32, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !212, file: !23, line: 61, baseType: !8, size: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !212, file: !23, line: 62, baseType: !8, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !212, file: !23, line: 63, baseType: !8, size: 32, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !212, file: !23, line: 64, baseType: !8, size: 32, offset: 224)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !212, file: !23, line: 65, baseType: !8, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !203, file: !23, line: 607, baseType: !8, size: 32, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !203, file: !23, line: 608, baseType: !225, size: 64, offset: 704)
!225 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !203, file: !23, line: 609, baseType: !227, size: 112, offset: 768)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !23, line: 319, size: 112, elements: !228)
!228 = !{!229, !232, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !227, file: !23, line: 320, baseType: !230, size: 48)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 48, elements: !75)
!231 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !227, file: !23, line: 321, baseType: !230, size: 48, offset: 48)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !227, file: !23, line: 322, baseType: !231, size: 16, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !203, file: !23, line: 610, baseType: !91, size: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !203, file: !23, line: 611, baseType: !91, size: 64, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !203, file: !23, line: 612, baseType: !91, size: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !203, file: !23, line: 613, baseType: !238, size: 64, offset: 1088)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !203, file: !23, line: 614, baseType: !242, size: 192, offset: 1152)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 192, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 24)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !203, file: !23, line: 615, baseType: !8, size: 32, offset: 1344)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !203, file: !23, line: 616, baseType: !91, size: 64, offset: 1376)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !203, file: !23, line: 617, baseType: !91, size: 64, offset: 1440)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !203, file: !23, line: 618, baseType: !91, size: 64, offset: 1504)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !203, file: !23, line: 619, baseType: !91, size: 64, offset: 1568)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !203, file: !23, line: 620, baseType: !91, size: 64, offset: 1632)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !203, file: !23, line: 621, baseType: !8, size: 32, offset: 1696)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !200, file: !23, line: 631, baseType: !253, size: 2880)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !23, line: 626, size: 2880, elements: !254)
!254 = !{!255, !259}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !253, file: !23, line: 629, baseType: !256, size: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1920, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 30)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !253, file: !23, line: 630, baseType: !260, size: 960, offset: 1920)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 960, elements: !257)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !22, file: !23, line: 636, baseType: !262, size: 64, offset: 4032)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !23, line: 93, size: 6336, elements: !264)
!264 = !{!265, !266, !267, !272}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !263, file: !23, line: 94, baseType: !262, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !263, file: !23, line: 95, baseType: !8, size: 32, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !263, file: !23, line: 97, baseType: !268, size: 2048, offset: 128)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !174)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !263, file: !23, line: 98, baseType: !273, size: 4160, offset: 2176)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !23, line: 74, size: 4160, elements: !274)
!274 = !{!275, !277, !278, !279}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !273, file: !23, line: 75, baseType: !276, size: 2048)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !174)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !273, file: !23, line: 76, baseType: !276, size: 2048, offset: 2048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !273, file: !23, line: 78, baseType: !192, size: 32, offset: 4096)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !273, file: !23, line: 81, baseType: !192, size: 32, offset: 4128)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !22, file: !23, line: 637, baseType: !263, size: 6336, offset: 4096)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !22, file: !23, line: 641, baseType: !282, size: 64, offset: 10432)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !8}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !22, file: !23, line: 646, baseType: !287, size: 192, offset: 10496)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !23, line: 291, size: 192, elements: !288)
!288 = !{!289, !291, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !287, file: !23, line: 293, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !287, file: !23, line: 294, baseType: !8, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !287, file: !23, line: 295, baseType: !27, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !22, file: !23, line: 648, baseType: !294, size: 4224, offset: 10688)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 4224, elements: !75)
!295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!298 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(name: "rptr", arg: 1, scope: !13, file: !1, line: 136, type: !21)
!302 = !DILocalVariable(name: "nptr", arg: 2, scope: !13, file: !1, line: 136, type: !295)
!303 = !DILocalVariable(name: "endptr", arg: 3, scope: !13, file: !1, line: 137, type: !298)
!304 = !DILocalVariable(name: "base", arg: 4, scope: !13, file: !1, line: 137, type: !8)
!305 = !DILocation(line: 136, column: 29, scope: !13)
!306 = !DILocation(line: 136, column: 61, scope: !13)
!307 = !DILocation(line: 137, column: 28, scope: !13)
!308 = !DILocation(line: 137, column: 40, scope: !13)
!309 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !313)
!310 = distinct !DISubprogram(name: "__get_current_locale", scope: !117, file: !117, line: 228, type: !311, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!311 = !DISubroutineType(types: !312)
!312 = !{!115}
!313 = distinct !DILocation(line: 139, column: 48, scope: !13)
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
!324 = !DILocation(line: 213, column: 3, scope: !325, inlinedAt: !326)
!325 = distinct !DISubprogram(name: "__get_global_locale", scope: !117, file: !117, line: 210, type: !311, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!326 = distinct !DILocation(line: 230, column: 29, scope: !310, inlinedAt: !313)
!327 = !DILocation(line: 230, column: 3, scope: !310, inlinedAt: !313)
!328 = !DILocation(line: 139, column: 9, scope: !13)
!329 = !DILocation(line: 139, column: 2, scope: !13)
!330 = distinct !DISubprogram(name: "_wcstoumax_l", scope: !1, file: !1, line: 61, type: !331, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !335)
!331 = !DISubroutineType(types: !332)
!332 = !{!16, !21, !295, !298, !8, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !334, line: 10, baseType: !115)
!334 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!336 = !DILocalVariable(name: "rptr", arg: 1, scope: !330, file: !1, line: 61, type: !21)
!337 = !DILocalVariable(name: "nptr", arg: 2, scope: !330, file: !1, line: 61, type: !295)
!338 = !DILocalVariable(name: "endptr", arg: 3, scope: !330, file: !1, line: 62, type: !298)
!339 = !DILocalVariable(name: "base", arg: 4, scope: !330, file: !1, line: 62, type: !8)
!340 = !DILocalVariable(name: "loc", arg: 5, scope: !330, file: !1, line: 62, type: !333)
!341 = !DILocalVariable(name: "s", scope: !330, file: !1, line: 64, type: !296)
!342 = !DILocalVariable(name: "acc", scope: !330, file: !1, line: 65, type: !16)
!343 = !DILocalVariable(name: "c", scope: !330, file: !1, line: 66, type: !6)
!344 = !DILocalVariable(name: "cutoff", scope: !330, file: !1, line: 67, type: !16)
!345 = !DILocalVariable(name: "neg", scope: !330, file: !1, line: 68, type: !8)
!346 = !DILocalVariable(name: "any", scope: !330, file: !1, line: 68, type: !8)
!347 = !DILocalVariable(name: "cutlim", scope: !330, file: !1, line: 68, type: !8)
!348 = !DILocation(line: 61, column: 29, scope: !330)
!349 = !DILocation(line: 61, column: 61, scope: !330)
!350 = !DILocation(line: 62, column: 29, scope: !330)
!351 = !DILocation(line: 62, column: 41, scope: !330)
!352 = !DILocation(line: 62, column: 56, scope: !330)
!353 = !DILocation(line: 64, column: 17, scope: !330)
!354 = !DILocation(line: 68, column: 6, scope: !330)
!355 = !DILocation(line: 73, column: 2, scope: !330)
!356 = !DILocation(line: 0, scope: !357)
!357 = distinct !DILexicalBlock(scope: !330, file: !1, line: 73, column: 5)
!358 = !DILocation(line: 74, column: 9, scope: !357)
!359 = !DILocation(line: 74, column: 7, scope: !357)
!360 = !{!317, !317, i64 0}
!361 = !DILocation(line: 66, column: 10, scope: !330)
!362 = !DILocation(line: 75, column: 11, scope: !330)
!363 = !DILocation(line: 75, column: 2, scope: !357)
!364 = distinct !{!364, !355, !365}
!365 = !DILocation(line: 75, column: 29, scope: !330)
!366 = !DILocation(line: 76, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !330, file: !1, line: 76, column: 6)
!368 = !DILocation(line: 76, column: 6, scope: !330)
!369 = !DILocation(line: 81, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 81, column: 7)
!371 = distinct !DILexicalBlock(scope: !367, file: !1, line: 79, column: 9)
!372 = !DILocation(line: 81, column: 7, scope: !371)
!373 = !DILocation(line: 0, scope: !374)
!374 = distinct !DILexicalBlock(scope: !367, file: !1, line: 76, column: 17)
!375 = !DILocation(line: 84, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !330, file: !1, line: 84, column: 6)
!377 = !DILocation(line: 0, scope: !371)
!378 = !DILocation(line: 85, column: 8, scope: !376)
!379 = !DILocation(line: 85, column: 20, scope: !376)
!380 = !DILocation(line: 85, column: 23, scope: !376)
!381 = !DILocation(line: 85, column: 31, scope: !376)
!382 = !DILocation(line: 85, column: 37, scope: !376)
!383 = !DILocation(line: 84, column: 6, scope: !330)
!384 = !DILocation(line: 86, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !376, file: !1, line: 85, column: 47)
!386 = !DILocation(line: 87, column: 5, scope: !385)
!387 = !DILocation(line: 89, column: 2, scope: !385)
!388 = !DILocation(line: 90, column: 6, scope: !330)
!389 = !DILocation(line: 68, column: 15, scope: !330)
!390 = !DILocation(line: 65, column: 12, scope: !330)
!391 = !DILocation(line: 93, column: 15, scope: !392)
!392 = distinct !DILexicalBlock(scope: !330, file: !1, line: 93, column: 6)
!393 = !DILocation(line: 90, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !330, file: !1, line: 90, column: 6)
!395 = !DILocation(line: 91, column: 12, scope: !394)
!396 = !DILocation(line: 91, column: 10, scope: !394)
!397 = !DILocation(line: 91, column: 3, scope: !394)
!398 = !DILocation(line: 0, scope: !385)
!399 = !DILocation(line: 96, column: 25, scope: !330)
!400 = !DILocation(line: 96, column: 23, scope: !330)
!401 = !DILocation(line: 67, column: 12, scope: !330)
!402 = !DILocation(line: 97, column: 23, scope: !330)
!403 = !DILocation(line: 97, column: 11, scope: !330)
!404 = !DILocation(line: 68, column: 20, scope: !330)
!405 = !DILocation(line: 98, column: 2, scope: !330)
!406 = !DILocation(line: 92, column: 6, scope: !330)
!407 = !DILocation(line: 0, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 98, column: 2)
!409 = distinct !DILexicalBlock(scope: !330, file: !1, line: 98, column: 2)
!410 = !DILocation(line: 0, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 114, column: 7)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 98, column: 22)
!413 = !DILocation(line: 98, column: 2, scope: !408)
!414 = !DILocation(line: 104, column: 17, scope: !415)
!415 = distinct !DILexicalBlock(scope: !412, file: !1, line: 104, column: 7)
!416 = !DILocation(line: 106, column: 22, scope: !417)
!417 = distinct !DILexicalBlock(scope: !415, file: !1, line: 106, column: 12)
!418 = !DILocation(line: 107, column: 6, scope: !417)
!419 = !DILocation(line: 107, column: 4, scope: !417)
!420 = !DILocation(line: 108, column: 22, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !1, line: 108, column: 12)
!422 = !DILocation(line: 109, column: 6, scope: !421)
!423 = !DILocation(line: 0, scope: !421)
!424 = !DILocation(line: 112, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !412, file: !1, line: 112, column: 7)
!426 = !DILocation(line: 112, column: 7, scope: !412)
!427 = !DILocation(line: 114, column: 11, scope: !411)
!428 = !DILocation(line: 114, column: 15, scope: !411)
!429 = !DILocation(line: 114, column: 22, scope: !411)
!430 = !DILocation(line: 114, column: 31, scope: !411)
!431 = !DILocation(line: 114, column: 39, scope: !411)
!432 = !DILocation(line: 114, column: 49, scope: !411)
!433 = !DILocation(line: 114, column: 54, scope: !411)
!434 = !DILocation(line: 114, column: 7, scope: !412)
!435 = !DILocation(line: 118, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !411, file: !1, line: 116, column: 8)
!437 = !DILocation(line: 119, column: 11, scope: !436)
!438 = !DILocation(line: 119, column: 8, scope: !436)
!439 = !DILocation(line: 0, scope: !436)
!440 = !DILocation(line: 98, column: 18, scope: !408)
!441 = !DILocation(line: 98, column: 16, scope: !408)
!442 = distinct !{!442, !443, !444}
!443 = !DILocation(line: 98, column: 2, scope: !409)
!444 = !DILocation(line: 121, column: 2, scope: !409)
!445 = !DILocation(line: 122, column: 10, scope: !446)
!446 = distinct !DILexicalBlock(scope: !330, file: !1, line: 122, column: 6)
!447 = !DILocation(line: 122, column: 6, scope: !330)
!448 = !DILocation(line: 124, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !1, line: 122, column: 15)
!450 = !DILocation(line: 124, column: 16, scope: !449)
!451 = !{!316, !317, i64 0}
!452 = !DILocation(line: 125, column: 2, scope: !449)
!453 = !DILocation(line: 125, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !1, line: 125, column: 13)
!455 = !DILocation(line: 125, column: 13, scope: !446)
!456 = !DILocation(line: 127, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !1, line: 125, column: 19)
!458 = !DILocation(line: 127, column: 16, scope: !457)
!459 = !DILocation(line: 128, column: 2, scope: !457)
!460 = !DILocation(line: 128, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !1, line: 128, column: 13)
!462 = !DILocation(line: 128, column: 13, scope: !454)
!463 = !DILocation(line: 129, column: 9, scope: !461)
!464 = !DILocation(line: 129, column: 3, scope: !461)
!465 = !DILocation(line: 0, scope: !449)
!466 = !DILocation(line: 130, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !330, file: !1, line: 130, column: 6)
!468 = !DILocation(line: 0, scope: !330)
!469 = !DILocation(line: 92, column: 12, scope: !330)
!470 = !DILocation(line: 130, column: 6, scope: !330)
!471 = !DILocation(line: 131, column: 25, scope: !467)
!472 = !DILocation(line: 131, column: 33, scope: !467)
!473 = !DILocation(line: 131, column: 11, scope: !467)
!474 = !{!320, !320, i64 0}
!475 = !DILocation(line: 131, column: 3, scope: !467)
!476 = !DILocation(line: 132, column: 2, scope: !330)
!477 = distinct !DISubprogram(name: "wcstoumax_l", scope: !1, file: !1, line: 145, type: !478, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!16, !295, !298, !8, !333}
!480 = !{!481, !482, !483, !484}
!481 = !DILocalVariable(name: "nptr", arg: 1, scope: !477, file: !1, line: 145, type: !295)
!482 = !DILocalVariable(name: "endptr", arg: 2, scope: !477, file: !1, line: 145, type: !298)
!483 = !DILocalVariable(name: "base", arg: 3, scope: !477, file: !1, line: 146, type: !8)
!484 = !DILocalVariable(name: "loc", arg: 4, scope: !477, file: !1, line: 146, type: !333)
!485 = !DILocation(line: 145, column: 40, scope: !477)
!486 = !DILocation(line: 145, column: 68, scope: !477)
!487 = !DILocation(line: 146, column: 10, scope: !477)
!488 = !DILocation(line: 146, column: 25, scope: !477)
!489 = !DILocation(line: 148, column: 22, scope: !477)
!490 = !DILocation(line: 148, column: 9, scope: !477)
!491 = !DILocation(line: 148, column: 2, scope: !477)
!492 = distinct !DISubprogram(name: "wcstoumax", scope: !1, file: !1, line: 152, type: !493, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{!16, !295, !298, !8}
!495 = !{!496, !497, !498}
!496 = !DILocalVariable(name: "nptr", arg: 1, scope: !492, file: !1, line: 152, type: !295)
!497 = !DILocalVariable(name: "endptr", arg: 2, scope: !492, file: !1, line: 152, type: !298)
!498 = !DILocalVariable(name: "base", arg: 3, scope: !492, file: !1, line: 152, type: !8)
!499 = !DILocation(line: 152, column: 37, scope: !492)
!500 = !DILocation(line: 152, column: 64, scope: !492)
!501 = !DILocation(line: 152, column: 76, scope: !492)
!502 = !DILocation(line: 154, column: 22, scope: !492)
!503 = !DILocation(line: 230, column: 10, scope: !310, inlinedAt: !504)
!504 = distinct !DILocation(line: 154, column: 50, scope: !492)
!505 = !DILocation(line: 230, column: 18, scope: !310, inlinedAt: !504)
!506 = !DILocation(line: 213, column: 3, scope: !325, inlinedAt: !507)
!507 = distinct !DILocation(line: 230, column: 29, scope: !310, inlinedAt: !504)
!508 = !DILocation(line: 230, column: 3, scope: !310, inlinedAt: !504)
!509 = !DILocation(line: 154, column: 9, scope: !492)
!510 = !DILocation(line: 154, column: 2, scope: !492)
