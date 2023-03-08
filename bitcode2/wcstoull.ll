; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoull.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoull.c"
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
define dso_local i64 @_wcstoull_l(%struct._reent* nocapture, i32*, i32**, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !13 {
  %6 = icmp eq i32 %3, 1, !dbg !316
  %7 = icmp ugt i32 %3, 36, !dbg !318
  %8 = or i1 %7, %6, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br i1 %8, label %9, label %11, !dbg !318

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !319
  store i32 22, i32* %10, align 8, !dbg !321, !tbaa !322
  br label %113, !dbg !331

; <label>:11:                                     ; preds = %5, %11
  %12 = phi i32* [ %13, %11 ], [ %1, %5 ], !dbg !332
  %13 = getelementptr inbounds i32, i32* %12, i64 1, !dbg !334
  %14 = load i32, i32* %12, align 4, !dbg !335, !tbaa !336
  %15 = tail call i32 @iswspace_l(i32 %14, %struct.__locale_t* %4) #3, !dbg !338
  %16 = icmp eq i32 %15, 0, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %16, label %17, label %11, !dbg !339, !llvm.loop !340

; <label>:17:                                     ; preds = %11
  %18 = icmp eq i32 %14, 45, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %18, label %21, label %19, !dbg !345

; <label>:19:                                     ; preds = %17
  %20 = icmp eq i32 %14, 43, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %20, label %21, label %25, !dbg !348

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %19 ]
  %23 = getelementptr inbounds i32, i32* %12, i64 2, !dbg !349
  %24 = load i32, i32* %13, align 4, !dbg !349, !tbaa !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br label %25, !dbg !351

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i32* [ %13, %19 ], [ %23, %21 ], !dbg !332
  %27 = phi i32 [ %14, %19 ], [ %24, %21 ], !dbg !332
  %28 = phi i32 [ 0, %19 ], [ %22, %21 ], !dbg !353
  %29 = or i32 %3, 16, !dbg !351
  %30 = icmp eq i32 %29, 16, !dbg !351
  %31 = icmp eq i32 %27, 48, !dbg !354
  %32 = and i1 %30, %31, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %32, label %33, label %42, !dbg !351

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %26, align 4, !dbg !355, !tbaa !336
  %35 = icmp eq i32 %34, 120, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br i1 %35, label %38, label %36, !dbg !357

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i32 %34, 88, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %37, label %38, label %42, !dbg !359

; <label>:38:                                     ; preds = %33, %36
  %39 = getelementptr inbounds i32, i32* %26, i64 1, !dbg !360
  %40 = load i32, i32* %39, align 4, !dbg !360, !tbaa !336
  %41 = getelementptr inbounds i32, i32* %26, i64 2, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br label %47, !dbg !364

; <label>:42:                                     ; preds = %25, %36
  %43 = icmp eq i32 %3, 0, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %43, label %44, label %51, !dbg !364

; <label>:44:                                     ; preds = %42
  %45 = icmp eq i32 %27, 48, !dbg !367
  %46 = select i1 %45, i32 8, i32 10, !dbg !368
  br label %47, !dbg !369

; <label>:47:                                     ; preds = %44, %38
  %48 = phi i32 [ %40, %38 ], [ %27, %44 ]
  %49 = phi i32* [ %41, %38 ], [ %26, %44 ]
  %50 = phi i32 [ 16, %38 ], [ %46, %44 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %51, !dbg !371

; <label>:51:                                     ; preds = %47, %42
  %52 = phi i32 [ %27, %42 ], [ %48, %47 ]
  %53 = phi i32* [ %26, %42 ], [ %49, %47 ]
  %54 = phi i32 [ %3, %42 ], [ %50, %47 ], !dbg !372
  %55 = sext i32 %54 to i64, !dbg !371
  %56 = udiv i64 -1, %55, !dbg !373
  %57 = urem i64 -1, %55, !dbg !375
  %58 = trunc i64 %57 to i32, !dbg !376
  br label %59, !dbg !380

; <label>:59:                                     ; preds = %91, %51
  %60 = phi i32* [ %53, %51 ], [ %94, %91 ], !dbg !382
  %61 = phi i64 [ 0, %51 ], [ %92, %91 ], !dbg !384
  %62 = phi i32 [ %52, %51 ], [ %95, %91 ], !dbg !382
  %63 = phi i32 [ 0, %51 ], [ %93, %91 ], !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  %64 = add i32 %62, -48, !dbg !389
  %65 = icmp ult i32 %64, 10, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  br i1 %65, label %76, label %66, !dbg !389

; <label>:66:                                     ; preds = %59
  %67 = add i32 %62, -65, !dbg !391
  %68 = icmp ult i32 %67, 26, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %68, label %69, label %71, !dbg !391

; <label>:69:                                     ; preds = %66
  %70 = add nsw i32 %62, -55, !dbg !393
  br label %76, !dbg !394

; <label>:71:                                     ; preds = %66
  %72 = add i32 %62, -97, !dbg !395
  %73 = icmp ult i32 %72, 26, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %73, label %74, label %96, !dbg !395

; <label>:74:                                     ; preds = %71
  %75 = add nsw i32 %62, -87, !dbg !397
  br label %76

; <label>:76:                                     ; preds = %59, %69, %74
  %77 = phi i32 [ %70, %69 ], [ %75, %74 ], [ %64, %59 ], !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = icmp slt i32 %77, %54, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %78, label %79, label %96, !dbg !401

; <label>:79:                                     ; preds = %76
  %80 = icmp slt i32 %63, 0, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br i1 %80, label %91, label %81, !dbg !403

; <label>:81:                                     ; preds = %79
  %82 = icmp ugt i64 %61, %56, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %82, label %91, label %83, !dbg !405

; <label>:83:                                     ; preds = %81
  %84 = icmp eq i64 %61, %56, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %84, label %85, label %87, !dbg !407

; <label>:85:                                     ; preds = %83
  %86 = icmp sgt i32 %77, %58, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %86, label %91, label %87, !dbg !409

; <label>:87:                                     ; preds = %85, %83
  %88 = mul i64 %61, %55, !dbg !410
  %89 = sext i32 %77 to i64, !dbg !412
  %90 = add i64 %88, %89, !dbg !413
  br label %91

; <label>:91:                                     ; preds = %79, %81, %85, %87
  %92 = phi i64 [ %90, %87 ], [ %61, %85 ], [ %61, %81 ], [ %61, %79 ], !dbg !414
  %93 = phi i32 [ 1, %87 ], [ -1, %85 ], [ -1, %81 ], [ -1, %79 ], !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %94 = getelementptr inbounds i32, i32* %60, i64 1, !dbg !415
  %95 = load i32, i32* %60, align 4, !dbg !416, !tbaa !336
  br label %59, !dbg !417, !llvm.loop !418

; <label>:96:                                     ; preds = %76, %71
  %97 = icmp slt i32 %63, 0, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %97, label %98, label %100, !dbg !423

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !424
  store i32 34, i32* %99, align 8, !dbg !426, !tbaa !322
  br label %104, !dbg !427

; <label>:100:                                    ; preds = %96
  %101 = icmp eq i32 %28, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %101, label %106, label %102, !dbg !430

; <label>:102:                                    ; preds = %100
  %103 = sub i64 0, %61, !dbg !431
  br label %104, !dbg !432

; <label>:104:                                    ; preds = %98, %102
  %105 = phi i64 [ %103, %102 ], [ -1, %98 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br label %106, !dbg !434

; <label>:106:                                    ; preds = %104, %100
  %107 = phi i64 [ %61, %100 ], [ %105, %104 ], !dbg !388
  %108 = icmp eq i32** %2, null, !dbg !434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br i1 %108, label %113, label %109, !dbg !436

; <label>:109:                                    ; preds = %106
  %110 = icmp eq i32 %63, 0, !dbg !437
  %111 = getelementptr inbounds i32, i32* %60, i64 -1, !dbg !438
  %112 = select i1 %110, i32* %1, i32* %111, !dbg !437
  store i32* %112, i32** %2, align 8, !dbg !439, !tbaa !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br label %113, !dbg !441

; <label>:113:                                    ; preds = %109, %106, %9
  %114 = phi i64 [ 0, %9 ], [ %107, %106 ], [ %107, %109 ], !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  ret i64 %114, !dbg !443
}

; Function Attrs: noredzone
declare dso_local i32 @iswspace_l(i32, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcstoull_r(%struct._reent* nocapture, i32*, i32**, i32) local_unnamed_addr #0 !dbg !444 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !453
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !458
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !458, !tbaa !459
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br i1 %8, label %9, label %10, !dbg !453

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br label %10, !dbg !453

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  %12 = tail call i64 @_wcstoull_l(%struct._reent* %0, i32* %1, i32** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  ret i64 %12, !dbg !465
}

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoull_l(i32* noalias, i32** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !466 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !480
  %6 = tail call i64 @_wcstoull_l(%struct._reent* %5, i32* %0, i32** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  ret i64 %6, !dbg !482
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstoull(i32* noalias, i32** noalias, i32) local_unnamed_addr #0 !dbg !483 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !491
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !492
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !494
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !494, !tbaa !459
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %8, label %9, label %10, !dbg !492

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br label %10, !dbg !492

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  %12 = tail call i64 @_wcstoull_l(%struct._reent* %4, i32* %0, i32** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  ret i64 %12, !dbg !499
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstoull.c", directory: "/root/.unikraft/apps/redis/build")
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
!13 = distinct !DISubprogram(name: "_wcstoull_l", scope: !1, file: !1, line: 160, type: !14, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !16, !291, !293, !8, !294}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !102, !103, !104, !105, !109, !110, !173, !174, !178, !190, !191, !192, !194, !195, !196, !257, !276, !277, !282, !289}
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
!114 = !{!115, !120, !127, !135, !136, !137, !165, !169, !172}
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
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !47, line: 129, baseType: !134)
!134 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !112, file: !113, line: 185, baseType: !8, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !112, file: !113, line: 186, baseType: !49, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !112, file: !113, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !49, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !49, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !49, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !49, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !49, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !49, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !49, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !49, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !49, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !49, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !50, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !50, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !50, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !50, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !50, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !50, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !50, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !50, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !50, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !50, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !50, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !50, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !50, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !50, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !112, file: !113, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !112, file: !113, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 256, elements: !171)
!171 = !{!119}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !112, file: !113, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !8, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !16}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !18, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !18, line: 50, baseType: !8, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !18, line: 50, baseType: !8, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !18, line: 50, baseType: !8, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !18, line: 50, baseType: !8, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !18, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !75)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !8, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !8, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !49, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !198)
!198 = !{!199, !248}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !18, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !18, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !222, !230, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !18, line: 603, baseType: !96, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !18, line: 604, baseType: !49, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !18, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !18, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !18, line: 57, baseType: !8, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !18, line: 58, baseType: !8, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !18, line: 59, baseType: !8, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !18, line: 60, baseType: !8, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !18, line: 61, baseType: !8, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !18, line: 62, baseType: !8, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !18, line: 63, baseType: !8, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !18, line: 64, baseType: !8, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !18, line: 65, baseType: !8, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !18, line: 607, baseType: !8, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !18, line: 608, baseType: !4, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !18, line: 609, baseType: !223, size: 112, offset: 768)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !224)
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !223, file: !18, line: 320, baseType: !226, size: 48)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !71)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !223, file: !18, line: 321, baseType: !226, size: 48, offset: 48)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !223, file: !18, line: 322, baseType: !227, size: 16, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !18, line: 610, baseType: !87, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !18, line: 611, baseType: !87, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !18, line: 612, baseType: !87, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !18, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !18, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !18, line: 615, baseType: !8, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !18, line: 616, baseType: !87, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !18, line: 617, baseType: !87, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !18, line: 618, baseType: !87, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !18, line: 619, baseType: !87, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !18, line: 620, baseType: !87, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !18, line: 621, baseType: !8, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !18, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !18, line: 626, size: 2880, elements: !250)
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
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !171)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !18, line: 98, baseType: !269, size: 4160, offset: 2176)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !270)
!270 = !{!271, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !269, file: !18, line: 75, baseType: !272, size: 2048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !171)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !269, file: !18, line: 76, baseType: !272, size: 2048, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !269, file: !18, line: 78, baseType: !189, size: 32, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !269, file: !18, line: 81, baseType: !189, size: 32, offset: 4128)
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
!297 = !DILocalVariable(name: "rptr", arg: 1, scope: !13, file: !1, line: 160, type: !16)
!298 = !DILocalVariable(name: "nptr", arg: 2, scope: !13, file: !1, line: 160, type: !291)
!299 = !DILocalVariable(name: "endptr", arg: 3, scope: !13, file: !1, line: 160, type: !293)
!300 = !DILocalVariable(name: "base", arg: 4, scope: !13, file: !1, line: 161, type: !8)
!301 = !DILocalVariable(name: "loc", arg: 5, scope: !13, file: !1, line: 161, type: !294)
!302 = !DILocalVariable(name: "s", scope: !13, file: !1, line: 163, type: !291)
!303 = !DILocalVariable(name: "acc", scope: !13, file: !1, line: 164, type: !4)
!304 = !DILocalVariable(name: "c", scope: !13, file: !1, line: 165, type: !8)
!305 = !DILocalVariable(name: "cutoff", scope: !13, file: !1, line: 166, type: !4)
!306 = !DILocalVariable(name: "neg", scope: !13, file: !1, line: 167, type: !8)
!307 = !DILocalVariable(name: "any", scope: !13, file: !1, line: 167, type: !8)
!308 = !DILocalVariable(name: "cutlim", scope: !13, file: !1, line: 167, type: !8)
!309 = !DILocation(line: 160, column: 29, scope: !13)
!310 = !DILocation(line: 160, column: 50, scope: !13)
!311 = !DILocation(line: 160, column: 66, scope: !13)
!312 = !DILocation(line: 161, column: 11, scope: !13)
!313 = !DILocation(line: 161, column: 26, scope: !13)
!314 = !DILocation(line: 163, column: 26, scope: !13)
!315 = !DILocation(line: 167, column: 15, scope: !13)
!316 = !DILocation(line: 169, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !13, file: !1, line: 169, column: 5)
!318 = !DILocation(line: 169, column: 15, scope: !317)
!319 = !DILocation(line: 170, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !1, line: 169, column: 46)
!321 = !DILocation(line: 170, column: 16, scope: !320)
!322 = !{!323, !324, i64 0}
!323 = !{!"_reent", !324, i64 0, !327, i64 8, !327, i64 16, !327, i64 24, !324, i64 32, !325, i64 36, !324, i64 64, !327, i64 72, !324, i64 80, !327, i64 88, !327, i64 96, !324, i64 104, !327, i64 112, !327, i64 120, !324, i64 128, !327, i64 136, !325, i64 144, !327, i64 504, !328, i64 512, !327, i64 1304, !330, i64 1312, !325, i64 1336}
!324 = !{!"int", !325, i64 0}
!325 = !{!"omnipotent char", !326, i64 0}
!326 = !{!"Simple C/C++ TBAA"}
!327 = !{!"any pointer", !325, i64 0}
!328 = !{!"_atexit", !327, i64 0, !324, i64 8, !325, i64 16, !329, i64 272}
!329 = !{!"_on_exit_args", !325, i64 0, !325, i64 256, !324, i64 512, !324, i64 516}
!330 = !{!"_glue", !327, i64 0, !324, i64 8, !327, i64 16}
!331 = !DILocation(line: 171, column: 3, scope: !320)
!332 = !DILocation(line: 0, scope: !333)
!333 = distinct !DILexicalBlock(scope: !13, file: !1, line: 176, column: 5)
!334 = !DILocation(line: 177, column: 9, scope: !333)
!335 = !DILocation(line: 177, column: 7, scope: !333)
!336 = !{!324, !324, i64 0}
!337 = !DILocation(line: 165, column: 15, scope: !13)
!338 = !DILocation(line: 178, column: 11, scope: !13)
!339 = !DILocation(line: 178, column: 2, scope: !333)
!340 = distinct !{!340, !341, !342}
!341 = !DILocation(line: 176, column: 2, scope: !13)
!342 = !DILocation(line: 178, column: 29, scope: !13)
!343 = !DILocation(line: 179, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !13, file: !1, line: 179, column: 6)
!345 = !DILocation(line: 179, column: 6, scope: !13)
!346 = !DILocation(line: 182, column: 15, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 182, column: 13)
!348 = !DILocation(line: 182, column: 13, scope: !344)
!349 = !DILocation(line: 0, scope: !350)
!350 = distinct !DILexicalBlock(scope: !344, file: !1, line: 179, column: 17)
!351 = !DILocation(line: 184, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !13, file: !1, line: 184, column: 6)
!353 = !DILocation(line: 0, scope: !13)
!354 = !DILocation(line: 185, column: 8, scope: !352)
!355 = !DILocation(line: 185, column: 20, scope: !352)
!356 = !DILocation(line: 185, column: 23, scope: !352)
!357 = !DILocation(line: 185, column: 31, scope: !352)
!358 = !DILocation(line: 185, column: 37, scope: !352)
!359 = !DILocation(line: 184, column: 6, scope: !13)
!360 = !DILocation(line: 186, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !352, file: !1, line: 185, column: 47)
!362 = !DILocation(line: 187, column: 5, scope: !361)
!363 = !DILocation(line: 189, column: 2, scope: !361)
!364 = !DILocation(line: 190, column: 6, scope: !13)
!365 = !DILocation(line: 190, column: 11, scope: !366)
!366 = distinct !DILexicalBlock(scope: !13, file: !1, line: 190, column: 6)
!367 = !DILocation(line: 191, column: 12, scope: !366)
!368 = !DILocation(line: 191, column: 10, scope: !366)
!369 = !DILocation(line: 191, column: 3, scope: !366)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocation(line: 192, column: 44, scope: !13)
!372 = !DILocation(line: 0, scope: !361)
!373 = !DILocation(line: 192, column: 42, scope: !13)
!374 = !DILocation(line: 166, column: 30, scope: !13)
!375 = !DILocation(line: 193, column: 42, scope: !13)
!376 = !DILocation(line: 193, column: 11, scope: !13)
!377 = !DILocation(line: 167, column: 29, scope: !13)
!378 = !DILocation(line: 164, column: 30, scope: !13)
!379 = !DILocation(line: 167, column: 24, scope: !13)
!380 = !DILocation(line: 194, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !13, file: !1, line: 194, column: 2)
!382 = !DILocation(line: 0, scope: !383)
!383 = distinct !DILexicalBlock(scope: !381, file: !1, line: 194, column: 2)
!384 = !DILocation(line: 194, column: 11, scope: !381)
!385 = !DILocation(line: 0, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 205, column: 20)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 194, column: 36)
!388 = !DILocation(line: 0, scope: !381)
!389 = !DILocation(line: 195, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 195, column: 7)
!391 = !DILocation(line: 197, column: 22, scope: !392)
!392 = distinct !DILexicalBlock(scope: !390, file: !1, line: 197, column: 12)
!393 = !DILocation(line: 198, column: 6, scope: !392)
!394 = !DILocation(line: 198, column: 4, scope: !392)
!395 = !DILocation(line: 199, column: 22, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !1, line: 199, column: 12)
!397 = !DILocation(line: 200, column: 6, scope: !396)
!398 = !DILocation(line: 0, scope: !396)
!399 = !DILocation(line: 203, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !387, file: !1, line: 203, column: 7)
!401 = !DILocation(line: 203, column: 7, scope: !387)
!402 = !DILocation(line: 205, column: 24, scope: !386)
!403 = !DILocation(line: 205, column: 28, scope: !386)
!404 = !DILocation(line: 205, column: 35, scope: !386)
!405 = !DILocation(line: 205, column: 44, scope: !386)
!406 = !DILocation(line: 205, column: 52, scope: !386)
!407 = !DILocation(line: 205, column: 62, scope: !386)
!408 = !DILocation(line: 205, column: 67, scope: !386)
!409 = !DILocation(line: 205, column: 20, scope: !387)
!410 = !DILocation(line: 209, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !386, file: !1, line: 207, column: 8)
!412 = !DILocation(line: 210, column: 11, scope: !411)
!413 = !DILocation(line: 210, column: 8, scope: !411)
!414 = !DILocation(line: 0, scope: !411)
!415 = !DILocation(line: 194, column: 32, scope: !383)
!416 = !DILocation(line: 194, column: 30, scope: !383)
!417 = !DILocation(line: 194, column: 2, scope: !383)
!418 = distinct !{!418, !419, !420}
!419 = !DILocation(line: 194, column: 2, scope: !381)
!420 = !DILocation(line: 212, column: 2, scope: !381)
!421 = !DILocation(line: 213, column: 10, scope: !422)
!422 = distinct !DILexicalBlock(scope: !13, file: !1, line: 213, column: 6)
!423 = !DILocation(line: 213, column: 6, scope: !13)
!424 = !DILocation(line: 215, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !422, file: !1, line: 213, column: 15)
!426 = !DILocation(line: 215, column: 16, scope: !425)
!427 = !DILocation(line: 216, column: 2, scope: !425)
!428 = !DILocation(line: 216, column: 13, scope: !429)
!429 = distinct !DILexicalBlock(scope: !422, file: !1, line: 216, column: 13)
!430 = !DILocation(line: 216, column: 13, scope: !422)
!431 = !DILocation(line: 217, column: 9, scope: !429)
!432 = !DILocation(line: 217, column: 3, scope: !429)
!433 = !DILocation(line: 0, scope: !425)
!434 = !DILocation(line: 218, column: 13, scope: !435)
!435 = distinct !DILexicalBlock(scope: !13, file: !1, line: 218, column: 6)
!436 = !DILocation(line: 218, column: 6, scope: !13)
!437 = !DILocation(line: 219, column: 26, scope: !435)
!438 = !DILocation(line: 219, column: 34, scope: !435)
!439 = !DILocation(line: 219, column: 11, scope: !435)
!440 = !{!327, !327, i64 0}
!441 = !DILocation(line: 219, column: 3, scope: !435)
!442 = !DILocation(line: 0, scope: !320)
!443 = !DILocation(line: 221, column: 1, scope: !13)
!444 = distinct !DISubprogram(name: "_wcstoull_r", scope: !1, file: !1, line: 224, type: !445, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!4, !16, !291, !293, !8}
!447 = !{!448, !449, !450, !451}
!448 = !DILocalVariable(name: "rptr", arg: 1, scope: !444, file: !1, line: 224, type: !16)
!449 = !DILocalVariable(name: "nptr", arg: 2, scope: !444, file: !1, line: 224, type: !291)
!450 = !DILocalVariable(name: "endptr", arg: 3, scope: !444, file: !1, line: 224, type: !293)
!451 = !DILocalVariable(name: "base", arg: 4, scope: !444, file: !1, line: 224, type: !8)
!452 = !DILocation(line: 224, column: 1, scope: !444)
!453 = !DILocation(line: 230, column: 10, scope: !454, inlinedAt: !457)
!454 = distinct !DISubprogram(name: "__get_current_locale", scope: !113, file: !113, line: 228, type: !455, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!455 = !DISubroutineType(types: !456)
!456 = !{!111}
!457 = distinct !DILocation(line: 230, column: 48, scope: !444)
!458 = !DILocation(line: 230, column: 18, scope: !454, inlinedAt: !457)
!459 = !{!323, !327, i64 72}
!460 = !DILocation(line: 213, column: 3, scope: !461, inlinedAt: !462)
!461 = distinct !DISubprogram(name: "__get_global_locale", scope: !113, file: !113, line: 210, type: !455, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!462 = distinct !DILocation(line: 230, column: 29, scope: !454, inlinedAt: !457)
!463 = !DILocation(line: 230, column: 3, scope: !454, inlinedAt: !457)
!464 = !DILocation(line: 230, column: 9, scope: !444)
!465 = !DILocation(line: 230, column: 2, scope: !444)
!466 = distinct !DISubprogram(name: "wcstoull_l", scope: !1, file: !1, line: 236, type: !467, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !471)
!467 = !DISubroutineType(types: !468)
!468 = !{!4, !469, !470, !8, !294}
!469 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!470 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !293)
!471 = !{!472, !473, !474, !475}
!472 = !DILocalVariable(name: "s", arg: 1, scope: !466, file: !1, line: 236, type: !469)
!473 = !DILocalVariable(name: "ptr", arg: 2, scope: !466, file: !1, line: 236, type: !470)
!474 = !DILocalVariable(name: "base", arg: 3, scope: !466, file: !1, line: 236, type: !8)
!475 = !DILocalVariable(name: "loc", arg: 4, scope: !466, file: !1, line: 237, type: !294)
!476 = !DILocation(line: 236, column: 39, scope: !466)
!477 = !DILocation(line: 236, column: 63, scope: !466)
!478 = !DILocation(line: 236, column: 72, scope: !466)
!479 = !DILocation(line: 237, column: 15, scope: !466)
!480 = !DILocation(line: 239, column: 22, scope: !466)
!481 = !DILocation(line: 239, column: 9, scope: !466)
!482 = !DILocation(line: 239, column: 2, scope: !466)
!483 = distinct !DISubprogram(name: "wcstoull", scope: !1, file: !1, line: 243, type: !484, isLocal: false, isDefinition: true, scopeLine: 247, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!4, !469, !470, !8}
!486 = !{!487, !488, !489}
!487 = !DILocalVariable(name: "s", arg: 1, scope: !483, file: !1, line: 243, type: !469)
!488 = !DILocalVariable(name: "ptr", arg: 2, scope: !483, file: !1, line: 243, type: !470)
!489 = !DILocalVariable(name: "base", arg: 3, scope: !483, file: !1, line: 243, type: !8)
!490 = !DILocation(line: 243, column: 1, scope: !483)
!491 = !DILocation(line: 248, column: 22, scope: !483)
!492 = !DILocation(line: 230, column: 10, scope: !454, inlinedAt: !493)
!493 = distinct !DILocation(line: 248, column: 44, scope: !483)
!494 = !DILocation(line: 230, column: 18, scope: !454, inlinedAt: !493)
!495 = !DILocation(line: 213, column: 3, scope: !461, inlinedAt: !496)
!496 = distinct !DILocation(line: 230, column: 29, scope: !454, inlinedAt: !493)
!497 = !DILocation(line: 230, column: 3, scope: !454, inlinedAt: !493)
!498 = !DILocation(line: 248, column: 9, scope: !483)
!499 = !DILocation(line: 248, column: 2, scope: !483)
