; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoul.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoul.c"
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
define dso_local i64 @_strtoul_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !302
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !307
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !307, !tbaa !308
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %8, label %9, label %10, !dbg !302

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br label %10, !dbg !302

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  %12 = tail call fastcc i64 @_strtoul_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  ret i64 %12, !dbg !322
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoul_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !323 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br label %6, !dbg !348

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !349
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !351
  %9 = load i8, i8* %7, align 1, !dbg !352, !tbaa !353
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !354
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !354
  %12 = zext i8 %9 to i64, !dbg !354
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !354
  %14 = load i8, i8* %13, align 1, !dbg !354, !tbaa !353
  %15 = and i8 %14, 8, !dbg !354
  %16 = icmp eq i8 %15, 0, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %16, label %17, label %6, !dbg !355, !llvm.loop !356

; <label>:17:                                     ; preds = %6
  %18 = icmp eq i8 %9, 45, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %18, label %21, label %19, !dbg !360

; <label>:19:                                     ; preds = %17
  %20 = icmp eq i8 %9, 43, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %20, label %21, label %25, !dbg !363

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %19 ]
  %23 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !364
  %24 = load i8, i8* %8, align 1, !dbg !364, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br label %25, !dbg !349

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8 [ %9, %19 ], [ %24, %21 ]
  %27 = phi i8* [ %8, %19 ], [ %23, %21 ], !dbg !349
  %28 = phi i32 [ 0, %19 ], [ %22, %21 ], !dbg !366
  %29 = zext i8 %26 to i32, !dbg !349
  %30 = or i32 %3, 16, !dbg !368
  %31 = icmp eq i32 %30, 16, !dbg !368
  %32 = icmp eq i8 %26, 48, !dbg !370
  %33 = and i1 %31, %32, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %33, label %34, label %44, !dbg !368

; <label>:34:                                     ; preds = %25
  %35 = load i8, i8* %27, align 1, !dbg !371, !tbaa !353
  %36 = icmp eq i8 %35, 120, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %36, label %39, label %37, !dbg !373

; <label>:37:                                     ; preds = %34
  %38 = icmp eq i8 %35, 88, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %38, label %39, label %44, !dbg !375

; <label>:39:                                     ; preds = %34, %37
  %40 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !376
  %41 = load i8, i8* %40, align 1, !dbg !376, !tbaa !353
  %42 = zext i8 %41 to i32, !dbg !376
  %43 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br label %49, !dbg !380

; <label>:44:                                     ; preds = %25, %37
  %45 = icmp eq i32 %3, 0, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %45, label %46, label %53, !dbg !380

; <label>:46:                                     ; preds = %44
  %47 = icmp eq i8 %26, 48, !dbg !383
  %48 = select i1 %47, i32 8, i32 10, !dbg !384
  br label %49, !dbg !385

; <label>:49:                                     ; preds = %46, %39
  %50 = phi i8* [ %43, %39 ], [ %27, %46 ]
  %51 = phi i32 [ %42, %39 ], [ %29, %46 ]
  %52 = phi i32 [ 16, %39 ], [ %48, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %53, !dbg !387

; <label>:53:                                     ; preds = %49, %44
  %54 = phi i8* [ %27, %44 ], [ %50, %49 ]
  %55 = phi i32 [ %29, %44 ], [ %51, %49 ]
  %56 = phi i32 [ %3, %44 ], [ %52, %49 ], !dbg !388
  %57 = sext i32 %56 to i64, !dbg !387
  %58 = udiv i64 -1, %57, !dbg !389
  %59 = urem i64 -1, %57, !dbg !391
  %60 = trunc i64 %59 to i32, !dbg !392
  br label %61, !dbg !396

; <label>:61:                                     ; preds = %93, %53
  %62 = phi i64 [ 0, %53 ], [ %94, %93 ], !dbg !398
  %63 = phi i32 [ %55, %53 ], [ %98, %93 ], !dbg !399
  %64 = phi i8* [ %54, %53 ], [ %96, %93 ], !dbg !399
  %65 = phi i32 [ 0, %53 ], [ %95, %93 ], !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %66 = add nsw i32 %63, -48, !dbg !405
  %67 = icmp ult i32 %66, 10, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %67, label %78, label %68, !dbg !405

; <label>:68:                                     ; preds = %61
  %69 = add nsw i32 %63, -65, !dbg !407
  %70 = icmp ult i32 %69, 26, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %70, label %71, label %73, !dbg !407

; <label>:71:                                     ; preds = %68
  %72 = add nsw i32 %63, -55, !dbg !409
  br label %78, !dbg !410

; <label>:73:                                     ; preds = %68
  %74 = add nsw i32 %63, -97, !dbg !411
  %75 = icmp ult i32 %74, 26, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  br i1 %75, label %76, label %99, !dbg !411

; <label>:76:                                     ; preds = %73
  %77 = add nsw i32 %63, -87, !dbg !413
  br label %78

; <label>:78:                                     ; preds = %61, %71, %76
  %79 = phi i32 [ %72, %71 ], [ %77, %76 ], [ %66, %61 ], !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %80 = icmp slt i32 %79, %56, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %80, label %81, label %99, !dbg !417

; <label>:81:                                     ; preds = %78
  %82 = icmp slt i32 %65, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %82, label %93, label %83, !dbg !419

; <label>:83:                                     ; preds = %81
  %84 = icmp ugt i64 %62, %58, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %84, label %93, label %85, !dbg !421

; <label>:85:                                     ; preds = %83
  %86 = icmp eq i64 %62, %58, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %86, label %87, label %89, !dbg !423

; <label>:87:                                     ; preds = %85
  %88 = icmp sgt i32 %79, %60, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %88, label %93, label %89, !dbg !425

; <label>:89:                                     ; preds = %87, %85
  %90 = mul i64 %62, %57, !dbg !426
  %91 = sext i32 %79 to i64, !dbg !428
  %92 = add i64 %90, %91, !dbg !429
  br label %93

; <label>:93:                                     ; preds = %81, %83, %87, %89
  %94 = phi i64 [ %92, %89 ], [ %62, %87 ], [ %62, %83 ], [ %62, %81 ], !dbg !430
  %95 = phi i32 [ 1, %89 ], [ -1, %87 ], [ -1, %83 ], [ -1, %81 ], !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %96 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !431
  %97 = load i8, i8* %64, align 1, !dbg !432, !tbaa !353
  %98 = zext i8 %97 to i32, !dbg !432
  br label %61, !dbg !433, !llvm.loop !434

; <label>:99:                                     ; preds = %78, %73
  %100 = icmp slt i32 %65, 0, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %100, label %101, label %103, !dbg !439

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !440
  store i32 34, i32* %102, align 8, !dbg !442, !tbaa !443
  br label %107, !dbg !444

; <label>:103:                                    ; preds = %99
  %104 = icmp eq i32 %28, 0, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %104, label %109, label %105, !dbg !447

; <label>:105:                                    ; preds = %103
  %106 = sub i64 0, %62, !dbg !448
  br label %107, !dbg !449

; <label>:107:                                    ; preds = %101, %105
  %108 = phi i64 [ %106, %105 ], [ -1, %101 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br label %109, !dbg !451

; <label>:109:                                    ; preds = %107, %103
  %110 = phi i64 [ %62, %103 ], [ %108, %107 ], !dbg !404
  %111 = icmp eq i8** %2, null, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br i1 %111, label %116, label %112, !dbg !453

; <label>:112:                                    ; preds = %109
  %113 = icmp eq i32 %65, 0, !dbg !454
  %114 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !455
  %115 = select i1 %113, i8* %1, i8* %114, !dbg !454
  store i8* %115, i8** %2, align 8, !dbg !456, !tbaa !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !458
  br label %116, !dbg !458

; <label>:116:                                    ; preds = %109, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  ret i64 %110, !dbg !459
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoul_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !460 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !472
  %6 = tail call fastcc i64 @_strtoul_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  ret i64 %6, !dbg !474
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoul(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !475 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !483
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !484
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !486
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !486, !tbaa !308
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
  %12 = tail call fastcc i64 @_strtoul_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  ret i64 %12, !dbg !491
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoul.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_strtoul_r", scope: !1, file: !1, line: 207, type: !16, isLocal: false, isDefinition: true, scopeLine: 212, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !296)
!16 = !DISubroutineType(types: !17)
!17 = !{!8, !18, !293, !294, !7}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !20, line: 569, size: 14912, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !102, !103, !104, !105, !109, !110, !174, !175, !179, !191, !192, !193, !195, !196, !197, !259, !278, !279, !284, !291}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !19, file: !20, line: 571, baseType: !7, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !20, line: 287, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !20, line: 181, size: 1408, elements: !27)
!27 = !{!28, !30, !31, !32, !34, !35, !40, !41, !43, !50, !56, !61, !65, !66, !67, !68, !72, !76, !77, !78, !80, !81, !85, !101}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !20, line: 182, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !20, line: 183, baseType: !7, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !20, line: 184, baseType: !7, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !20, line: 185, baseType: !33, size: 16, offset: 128)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !20, line: 186, baseType: !33, size: 16, offset: 144)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !20, line: 187, baseType: !36, size: 128, offset: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !20, line: 117, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !36, file: !20, line: 118, baseType: !29, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !36, file: !20, line: 119, baseType: !7, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !20, line: 188, baseType: !7, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !20, line: 195, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !20, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !18, !42, !9, !7}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !20, line: 199, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!47, !18, !42, !54, !7}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !20, line: 202, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !18, !42, !60, !7}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !49)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !20, line: 203, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!7, !18, !42}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !20, line: 206, baseType: !36, size: 128, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !26, file: !20, line: 207, baseType: !29, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !20, line: 208, baseType: !7, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !20, line: 211, baseType: !69, size: 24, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !20, line: 212, baseType: !73, size: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !20, line: 215, baseType: !36, size: 128, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !20, line: 218, baseType: !7, size: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !20, line: 219, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !49)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !26, file: !20, line: 222, baseType: !18, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !26, file: !20, line: 226, baseType: !82, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !84, line: 12, baseType: !7)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !26, file: !20, line: 228, baseType: !86, size: 64, offset: 1312)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !48, line: 165, baseType: !7, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !48, line: 170, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !48, line: 166, size: 32, elements: !92)
!92 = !{!93, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !48, line: 168, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !95, line: 124, baseType: !96)
!95 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !26, file: !20, line: 229, baseType: !7, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !19, file: !20, line: 578, baseType: !7, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !19, file: !20, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !19, file: !20, line: 582, baseType: !7, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !19, file: !20, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !113, line: 178, size: 3392, elements: !114)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !{!115, !120, !128, !136, !137, !138, !166, !170, !173}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !112, file: !113, line: 180, baseType: !116, size: 1792)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !117)
!117 = !{!118, !119}
!118 = !DISubrange(count: 7)
!119 = !DISubrange(count: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !112, file: !113, line: 181, baseType: !121, size: 64, offset: 1792)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!7, !18, !9, !124, !125}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 83, baseType: !7)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !127, line: 86, baseType: !86)
!127 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !112, file: !113, line: 183, baseType: !129, size: 64, offset: 1856)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!7, !18, !132, !54, !133, !125}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 40, baseType: !135)
!134 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !48, line: 129, baseType: !8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !112, file: !113, line: 185, baseType: !7, size: 32, offset: 1920)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !112, file: !113, line: 186, baseType: !9, size: 64, offset: 1984)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !112, file: !113, line: 187, baseType: !139, size: 768, offset: 2048)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !140, line: 42, size: 768, elements: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !139, file: !140, line: 44, baseType: !9, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !139, file: !140, line: 45, baseType: !9, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !139, file: !140, line: 46, baseType: !9, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !139, file: !140, line: 47, baseType: !9, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !139, file: !140, line: 48, baseType: !9, size: 64, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !139, file: !140, line: 49, baseType: !9, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !139, file: !140, line: 50, baseType: !9, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !139, file: !140, line: 51, baseType: !9, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !139, file: !140, line: 52, baseType: !9, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !139, file: !140, line: 53, baseType: !9, size: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !139, file: !140, line: 54, baseType: !10, size: 8, offset: 640)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !139, file: !140, line: 55, baseType: !10, size: 8, offset: 648)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !139, file: !140, line: 56, baseType: !10, size: 8, offset: 656)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !139, file: !140, line: 57, baseType: !10, size: 8, offset: 664)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !139, file: !140, line: 58, baseType: !10, size: 8, offset: 672)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !139, file: !140, line: 59, baseType: !10, size: 8, offset: 680)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !139, file: !140, line: 60, baseType: !10, size: 8, offset: 688)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !139, file: !140, line: 61, baseType: !10, size: 8, offset: 696)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !139, file: !140, line: 62, baseType: !10, size: 8, offset: 704)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !139, file: !140, line: 63, baseType: !10, size: 8, offset: 712)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !139, file: !140, line: 64, baseType: !10, size: 8, offset: 720)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !139, file: !140, line: 65, baseType: !10, size: 8, offset: 728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !139, file: !140, line: 66, baseType: !10, size: 8, offset: 736)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !139, file: !140, line: 67, baseType: !10, size: 8, offset: 744)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !112, file: !113, line: 189, baseType: !167, size: 16, offset: 2816)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 2)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !112, file: !113, line: 190, baseType: !171, size: 256, offset: 2832)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !172)
!172 = !{!119}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !112, file: !113, line: 191, baseType: !171, size: 256, offset: 3088)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !19, file: !20, line: 585, baseType: !7, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !19, file: !20, line: 587, baseType: !176, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !18}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !19, file: !20, line: 590, baseType: !180, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !20, line: 47, size: 256, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !181, file: !20, line: 49, baseType: !180, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !181, file: !20, line: 50, baseType: !7, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !181, file: !20, line: 50, baseType: !7, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !181, file: !20, line: 50, baseType: !7, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !181, file: !20, line: 50, baseType: !7, size: 32, offset: 160)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !181, file: !20, line: 51, baseType: !189, size: 32, offset: 192)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 32, elements: !74)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !20, line: 25, baseType: !96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !19, file: !20, line: 591, baseType: !7, size: 32, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !19, file: !20, line: 592, baseType: !180, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !19, file: !20, line: 593, baseType: !194, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !19, file: !20, line: 596, baseType: !7, size: 32, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !19, file: !20, line: 597, baseType: !9, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !19, file: !20, line: 632, baseType: !198, size: 2880, offset: 1152)
!198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !20, line: 599, size: 2880, elements: !199)
!199 = !{!200, !250}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !198, file: !20, line: 622, baseType: !201, size: 1728)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !20, line: 601, size: 1728, elements: !202)
!202 = !{!203, !204, !205, !209, !221, !222, !224, !232, !233, !234, !235, !239, !243, !244, !245, !246, !247, !248, !249}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !201, file: !20, line: 603, baseType: !96, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !201, file: !20, line: 604, baseType: !9, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !201, file: !20, line: 605, baseType: !206, size: 208, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 26)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !201, file: !20, line: 606, baseType: !210, size: 288, offset: 352)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !20, line: 55, size: 288, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !210, file: !20, line: 57, baseType: !7, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !210, file: !20, line: 58, baseType: !7, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !210, file: !20, line: 59, baseType: !7, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !210, file: !20, line: 60, baseType: !7, size: 32, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !210, file: !20, line: 61, baseType: !7, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !210, file: !20, line: 62, baseType: !7, size: 32, offset: 160)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !210, file: !20, line: 63, baseType: !7, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !210, file: !20, line: 64, baseType: !7, size: 32, offset: 224)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !210, file: !20, line: 65, baseType: !7, size: 32, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !201, file: !20, line: 607, baseType: !7, size: 32, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !201, file: !20, line: 608, baseType: !223, size: 64, offset: 704)
!223 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !201, file: !20, line: 609, baseType: !225, size: 112, offset: 768)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !20, line: 319, size: 112, elements: !226)
!226 = !{!227, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !225, file: !20, line: 320, baseType: !228, size: 48)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 48, elements: !70)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !225, file: !20, line: 321, baseType: !228, size: 48, offset: 48)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !225, file: !20, line: 322, baseType: !229, size: 16, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !201, file: !20, line: 610, baseType: !86, size: 64, offset: 896)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !201, file: !20, line: 611, baseType: !86, size: 64, offset: 960)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !201, file: !20, line: 612, baseType: !86, size: 64, offset: 1024)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !201, file: !20, line: 613, baseType: !236, size: 64, offset: 1088)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !201, file: !20, line: 614, baseType: !240, size: 192, offset: 1152)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 24)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !201, file: !20, line: 615, baseType: !7, size: 32, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !201, file: !20, line: 616, baseType: !86, size: 64, offset: 1376)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !201, file: !20, line: 617, baseType: !86, size: 64, offset: 1440)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !201, file: !20, line: 618, baseType: !86, size: 64, offset: 1504)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !201, file: !20, line: 619, baseType: !86, size: 64, offset: 1568)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !201, file: !20, line: 620, baseType: !86, size: 64, offset: 1632)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !201, file: !20, line: 621, baseType: !7, size: 32, offset: 1696)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !198, file: !20, line: 631, baseType: !251, size: 2880)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !20, line: 626, size: 2880, elements: !252)
!252 = !{!253, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !251, file: !20, line: 629, baseType: !254, size: 1920)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1920, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 30)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !251, file: !20, line: 630, baseType: !258, size: 960, offset: 1920)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !255)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !19, file: !20, line: 636, baseType: !260, size: 64, offset: 4032)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !20, line: 93, size: 6336, elements: !262)
!262 = !{!263, !264, !265, !270}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !261, file: !20, line: 94, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !261, file: !20, line: 95, baseType: !7, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !261, file: !20, line: 97, baseType: !266, size: 2048, offset: 128)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 2048, elements: !172)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !261, file: !20, line: 98, baseType: !271, size: 4160, offset: 2176)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !20, line: 74, size: 4160, elements: !272)
!272 = !{!273, !275, !276, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !271, file: !20, line: 75, baseType: !274, size: 2048)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !172)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !271, file: !20, line: 76, baseType: !274, size: 2048, offset: 2048)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !271, file: !20, line: 78, baseType: !190, size: 32, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !271, file: !20, line: 81, baseType: !190, size: 32, offset: 4128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !19, file: !20, line: 637, baseType: !261, size: 6336, offset: 4096)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !19, file: !20, line: 641, baseType: !280, size: 64, offset: 10432)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !7}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !19, file: !20, line: 646, baseType: !285, size: 192, offset: 10496)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !20, line: 291, size: 192, elements: !286)
!286 = !{!287, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !285, file: !20, line: 293, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !285, file: !20, line: 294, baseType: !7, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !285, file: !20, line: 295, baseType: !24, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !19, file: !20, line: 648, baseType: !292, size: 4224, offset: 10688)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4224, elements: !70)
!293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!296 = !{!297, !298, !299, !300}
!297 = !DILocalVariable(name: "rptr", arg: 1, scope: !15, file: !1, line: 207, type: !18)
!298 = !DILocalVariable(name: "nptr", arg: 2, scope: !15, file: !1, line: 207, type: !293)
!299 = !DILocalVariable(name: "endptr", arg: 3, scope: !15, file: !1, line: 207, type: !294)
!300 = !DILocalVariable(name: "base", arg: 4, scope: !15, file: !1, line: 207, type: !7)
!301 = !DILocation(line: 207, column: 1, scope: !15)
!302 = !DILocation(line: 230, column: 10, scope: !303, inlinedAt: !306)
!303 = distinct !DISubprogram(name: "__get_current_locale", scope: !113, file: !113, line: 228, type: !304, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!304 = !DISubroutineType(types: !305)
!305 = !{!111}
!306 = distinct !DILocation(line: 213, column: 48, scope: !15)
!307 = !DILocation(line: 230, column: 18, scope: !303, inlinedAt: !306)
!308 = !{!309, !313, i64 72}
!309 = !{!"_reent", !310, i64 0, !313, i64 8, !313, i64 16, !313, i64 24, !310, i64 32, !311, i64 36, !310, i64 64, !313, i64 72, !310, i64 80, !313, i64 88, !313, i64 96, !310, i64 104, !313, i64 112, !313, i64 120, !310, i64 128, !313, i64 136, !311, i64 144, !313, i64 504, !314, i64 512, !313, i64 1304, !316, i64 1312, !311, i64 1336}
!310 = !{!"int", !311, i64 0}
!311 = !{!"omnipotent char", !312, i64 0}
!312 = !{!"Simple C/C++ TBAA"}
!313 = !{!"any pointer", !311, i64 0}
!314 = !{!"_atexit", !313, i64 0, !310, i64 8, !311, i64 16, !315, i64 272}
!315 = !{!"_on_exit_args", !311, i64 0, !311, i64 256, !310, i64 512, !310, i64 516}
!316 = !{!"_glue", !313, i64 0, !310, i64 8, !313, i64 16}
!317 = !DILocation(line: 213, column: 3, scope: !318, inlinedAt: !319)
!318 = distinct !DISubprogram(name: "__get_global_locale", scope: !113, file: !113, line: 210, type: !304, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!319 = distinct !DILocation(line: 230, column: 29, scope: !303, inlinedAt: !306)
!320 = !DILocation(line: 230, column: 3, scope: !303, inlinedAt: !306)
!321 = !DILocation(line: 213, column: 10, scope: !15)
!322 = !DILocation(line: 213, column: 3, scope: !15)
!323 = distinct !DISubprogram(name: "_strtoul_l", scope: !1, file: !1, line: 147, type: !324, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!324 = !DISubroutineType(types: !325)
!325 = !{!8, !18, !293, !294, !7, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !327, line: 10, baseType: !111)
!327 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!329 = !DILocalVariable(name: "rptr", arg: 1, scope: !323, file: !1, line: 147, type: !18)
!330 = !DILocalVariable(name: "nptr", arg: 2, scope: !323, file: !1, line: 147, type: !293)
!331 = !DILocalVariable(name: "endptr", arg: 3, scope: !323, file: !1, line: 148, type: !294)
!332 = !DILocalVariable(name: "base", arg: 4, scope: !323, file: !1, line: 148, type: !7)
!333 = !DILocalVariable(name: "loc", arg: 5, scope: !323, file: !1, line: 148, type: !326)
!334 = !DILocalVariable(name: "s", scope: !323, file: !1, line: 150, type: !4)
!335 = !DILocalVariable(name: "acc", scope: !323, file: !1, line: 151, type: !8)
!336 = !DILocalVariable(name: "c", scope: !323, file: !1, line: 152, type: !7)
!337 = !DILocalVariable(name: "cutoff", scope: !323, file: !1, line: 153, type: !8)
!338 = !DILocalVariable(name: "neg", scope: !323, file: !1, line: 154, type: !7)
!339 = !DILocalVariable(name: "any", scope: !323, file: !1, line: 154, type: !7)
!340 = !DILocalVariable(name: "cutlim", scope: !323, file: !1, line: 154, type: !7)
!341 = !DILocation(line: 147, column: 28, scope: !323)
!342 = !DILocation(line: 147, column: 57, scope: !323)
!343 = !DILocation(line: 148, column: 24, scope: !323)
!344 = !DILocation(line: 148, column: 36, scope: !323)
!345 = !DILocation(line: 148, column: 51, scope: !323)
!346 = !DILocation(line: 150, column: 32, scope: !323)
!347 = !DILocation(line: 154, column: 15, scope: !323)
!348 = !DILocation(line: 159, column: 2, scope: !323)
!349 = !DILocation(line: 0, scope: !350)
!350 = distinct !DILexicalBlock(scope: !323, file: !1, line: 159, column: 5)
!351 = !DILocation(line: 160, column: 9, scope: !350)
!352 = !DILocation(line: 160, column: 7, scope: !350)
!353 = !{!311, !311, i64 0}
!354 = !DILocation(line: 161, column: 11, scope: !323)
!355 = !DILocation(line: 161, column: 2, scope: !350)
!356 = distinct !{!356, !348, !357}
!357 = !DILocation(line: 161, column: 28, scope: !323)
!358 = !DILocation(line: 162, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !323, file: !1, line: 162, column: 6)
!360 = !DILocation(line: 162, column: 6, scope: !323)
!361 = !DILocation(line: 165, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !1, line: 165, column: 13)
!363 = !DILocation(line: 165, column: 13, scope: !359)
!364 = !DILocation(line: 0, scope: !365)
!365 = distinct !DILexicalBlock(scope: !359, file: !1, line: 162, column: 16)
!366 = !DILocation(line: 0, scope: !323)
!367 = !DILocation(line: 152, column: 15, scope: !323)
!368 = !DILocation(line: 167, column: 17, scope: !369)
!369 = distinct !DILexicalBlock(scope: !323, file: !1, line: 167, column: 6)
!370 = !DILocation(line: 168, column: 8, scope: !369)
!371 = !DILocation(line: 168, column: 19, scope: !369)
!372 = !DILocation(line: 168, column: 22, scope: !369)
!373 = !DILocation(line: 168, column: 29, scope: !369)
!374 = !DILocation(line: 168, column: 35, scope: !369)
!375 = !DILocation(line: 167, column: 6, scope: !323)
!376 = !DILocation(line: 169, column: 7, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !1, line: 168, column: 44)
!378 = !DILocation(line: 170, column: 5, scope: !377)
!379 = !DILocation(line: 172, column: 2, scope: !377)
!380 = !DILocation(line: 173, column: 6, scope: !323)
!381 = !DILocation(line: 173, column: 11, scope: !382)
!382 = distinct !DILexicalBlock(scope: !323, file: !1, line: 173, column: 6)
!383 = !DILocation(line: 174, column: 12, scope: !382)
!384 = !DILocation(line: 174, column: 10, scope: !382)
!385 = !DILocation(line: 174, column: 3, scope: !382)
!386 = !DILocation(line: 0, scope: !382)
!387 = !DILocation(line: 175, column: 38, scope: !323)
!388 = !DILocation(line: 0, scope: !377)
!389 = !DILocation(line: 175, column: 36, scope: !323)
!390 = !DILocation(line: 153, column: 25, scope: !323)
!391 = !DILocation(line: 176, column: 36, scope: !323)
!392 = !DILocation(line: 176, column: 11, scope: !323)
!393 = !DILocation(line: 154, column: 29, scope: !323)
!394 = !DILocation(line: 151, column: 25, scope: !323)
!395 = !DILocation(line: 154, column: 24, scope: !323)
!396 = !DILocation(line: 177, column: 7, scope: !397)
!397 = distinct !DILexicalBlock(scope: !323, file: !1, line: 177, column: 2)
!398 = !DILocation(line: 177, column: 11, scope: !397)
!399 = !DILocation(line: 0, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !1, line: 177, column: 2)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 188, column: 20)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 177, column: 36)
!404 = !DILocation(line: 0, scope: !397)
!405 = !DILocation(line: 178, column: 16, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !1, line: 178, column: 7)
!407 = !DILocation(line: 180, column: 21, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !1, line: 180, column: 12)
!409 = !DILocation(line: 181, column: 6, scope: !408)
!410 = !DILocation(line: 181, column: 4, scope: !408)
!411 = !DILocation(line: 182, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !1, line: 182, column: 12)
!413 = !DILocation(line: 183, column: 6, scope: !412)
!414 = !DILocation(line: 0, scope: !412)
!415 = !DILocation(line: 186, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !403, file: !1, line: 186, column: 7)
!417 = !DILocation(line: 186, column: 7, scope: !403)
!418 = !DILocation(line: 188, column: 24, scope: !402)
!419 = !DILocation(line: 188, column: 28, scope: !402)
!420 = !DILocation(line: 188, column: 35, scope: !402)
!421 = !DILocation(line: 188, column: 44, scope: !402)
!422 = !DILocation(line: 188, column: 52, scope: !402)
!423 = !DILocation(line: 188, column: 62, scope: !402)
!424 = !DILocation(line: 188, column: 67, scope: !402)
!425 = !DILocation(line: 188, column: 20, scope: !403)
!426 = !DILocation(line: 192, column: 8, scope: !427)
!427 = distinct !DILexicalBlock(scope: !402, file: !1, line: 190, column: 8)
!428 = !DILocation(line: 193, column: 11, scope: !427)
!429 = !DILocation(line: 193, column: 8, scope: !427)
!430 = !DILocation(line: 0, scope: !427)
!431 = !DILocation(line: 177, column: 32, scope: !400)
!432 = !DILocation(line: 177, column: 30, scope: !400)
!433 = !DILocation(line: 177, column: 2, scope: !400)
!434 = distinct !{!434, !435, !436}
!435 = !DILocation(line: 177, column: 2, scope: !397)
!436 = !DILocation(line: 195, column: 2, scope: !397)
!437 = !DILocation(line: 196, column: 10, scope: !438)
!438 = distinct !DILexicalBlock(scope: !323, file: !1, line: 196, column: 6)
!439 = !DILocation(line: 196, column: 6, scope: !323)
!440 = !DILocation(line: 198, column: 9, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !1, line: 196, column: 15)
!442 = !DILocation(line: 198, column: 16, scope: !441)
!443 = !{!309, !310, i64 0}
!444 = !DILocation(line: 199, column: 2, scope: !441)
!445 = !DILocation(line: 199, column: 13, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !1, line: 199, column: 13)
!447 = !DILocation(line: 199, column: 13, scope: !438)
!448 = !DILocation(line: 200, column: 9, scope: !446)
!449 = !DILocation(line: 200, column: 3, scope: !446)
!450 = !DILocation(line: 0, scope: !441)
!451 = !DILocation(line: 201, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !323, file: !1, line: 201, column: 6)
!453 = !DILocation(line: 201, column: 6, scope: !323)
!454 = !DILocation(line: 202, column: 23, scope: !452)
!455 = !DILocation(line: 202, column: 39, scope: !452)
!456 = !DILocation(line: 202, column: 11, scope: !452)
!457 = !{!313, !313, i64 0}
!458 = !DILocation(line: 202, column: 3, scope: !452)
!459 = !DILocation(line: 203, column: 2, scope: !323)
!460 = distinct !DISubprogram(name: "strtoul_l", scope: !1, file: !1, line: 219, type: !461, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!8, !293, !294, !7, !326}
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "s", arg: 1, scope: !460, file: !1, line: 219, type: !293)
!465 = !DILocalVariable(name: "ptr", arg: 2, scope: !460, file: !1, line: 219, type: !294)
!466 = !DILocalVariable(name: "base", arg: 3, scope: !460, file: !1, line: 219, type: !7)
!467 = !DILocalVariable(name: "loc", arg: 4, scope: !460, file: !1, line: 220, type: !326)
!468 = !DILocation(line: 219, column: 35, scope: !460)
!469 = !DILocation(line: 219, column: 56, scope: !460)
!470 = !DILocation(line: 219, column: 65, scope: !460)
!471 = !DILocation(line: 220, column: 14, scope: !460)
!472 = !DILocation(line: 222, column: 21, scope: !460)
!473 = !DILocation(line: 222, column: 9, scope: !460)
!474 = !DILocation(line: 222, column: 2, scope: !460)
!475 = distinct !DISubprogram(name: "strtoul", scope: !1, file: !1, line: 226, type: !476, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{!8, !293, !294, !7}
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "s", arg: 1, scope: !475, file: !1, line: 226, type: !293)
!480 = !DILocalVariable(name: "ptr", arg: 2, scope: !475, file: !1, line: 226, type: !294)
!481 = !DILocalVariable(name: "base", arg: 3, scope: !475, file: !1, line: 226, type: !7)
!482 = !DILocation(line: 226, column: 1, scope: !475)
!483 = !DILocation(line: 231, column: 21, scope: !475)
!484 = !DILocation(line: 230, column: 10, scope: !303, inlinedAt: !485)
!485 = distinct !DILocation(line: 231, column: 43, scope: !475)
!486 = !DILocation(line: 230, column: 18, scope: !303, inlinedAt: !485)
!487 = !DILocation(line: 213, column: 3, scope: !318, inlinedAt: !488)
!488 = distinct !DILocation(line: 230, column: 29, scope: !303, inlinedAt: !485)
!489 = !DILocation(line: 230, column: 3, scope: !303, inlinedAt: !485)
!490 = !DILocation(line: 231, column: 9, scope: !475)
!491 = !DILocation(line: 231, column: 2, scope: !475)
