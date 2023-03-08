; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoll.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoll.c"
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
define dso_local i64 @_strtoll_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !303
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !308
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !308, !tbaa !309
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %8, label %9, label %10, !dbg !303

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br label %10, !dbg !303

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  %12 = tail call fastcc i64 @_strtoll_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* nonnull %11) #4, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  ret i64 %12, !dbg !323
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoll_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !324 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br label %6, !dbg !349

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !350
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !352
  %9 = load i8, i8* %7, align 1, !dbg !353, !tbaa !354
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !355
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !355
  %12 = zext i8 %9 to i64, !dbg !355
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !355
  %14 = load i8, i8* %13, align 1, !dbg !355, !tbaa !354
  %15 = and i8 %14, 8, !dbg !355
  %16 = icmp eq i8 %15, 0, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %16, label %17, label %6, !dbg !356, !llvm.loop !357

; <label>:17:                                     ; preds = %6
  %18 = icmp eq i8 %9, 45, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %18, label %21, label %19, !dbg !361

; <label>:19:                                     ; preds = %17
  %20 = icmp eq i8 %9, 43, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %20, label %21, label %25, !dbg !364

; <label>:21:                                     ; preds = %19, %17
  %22 = phi i32 [ 1, %17 ], [ 0, %19 ]
  %23 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !365
  %24 = load i8, i8* %8, align 1, !dbg !365, !tbaa !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %25, !dbg !350

; <label>:25:                                     ; preds = %21, %19
  %26 = phi i8* [ %8, %19 ], [ %23, %21 ], !dbg !350
  %27 = phi i8 [ %9, %19 ], [ %24, %21 ]
  %28 = phi i32 [ 0, %19 ], [ %22, %21 ], !dbg !367
  %29 = zext i8 %27 to i32, !dbg !350
  %30 = or i32 %3, 16, !dbg !369
  %31 = icmp eq i32 %30, 16, !dbg !369
  %32 = icmp eq i8 %27, 48, !dbg !371
  %33 = and i1 %31, %32, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %33, label %34, label %44, !dbg !369

; <label>:34:                                     ; preds = %25
  %35 = load i8, i8* %26, align 1, !dbg !372, !tbaa !354
  %36 = icmp eq i8 %35, 120, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %36, label %39, label %37, !dbg !374

; <label>:37:                                     ; preds = %34
  %38 = icmp eq i8 %35, 88, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %38, label %39, label %44, !dbg !376

; <label>:39:                                     ; preds = %34, %37
  %40 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !377
  %41 = load i8, i8* %40, align 1, !dbg !377, !tbaa !354
  %42 = zext i8 %41 to i32, !dbg !377
  %43 = getelementptr inbounds i8, i8* %26, i64 2, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br label %49, !dbg !381

; <label>:44:                                     ; preds = %25, %37
  %45 = icmp eq i32 %3, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %45, label %46, label %53, !dbg !381

; <label>:46:                                     ; preds = %44
  %47 = icmp eq i8 %27, 48, !dbg !384
  %48 = select i1 %47, i32 8, i32 10, !dbg !385
  br label %49, !dbg !386

; <label>:49:                                     ; preds = %46, %39
  %50 = phi i32 [ %42, %39 ], [ %29, %46 ]
  %51 = phi i8* [ %43, %39 ], [ %26, %46 ]
  %52 = phi i32 [ 16, %39 ], [ %48, %46 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %53, !dbg !388

; <label>:53:                                     ; preds = %49, %44
  %54 = phi i32 [ %29, %44 ], [ %50, %49 ]
  %55 = phi i8* [ %26, %44 ], [ %51, %49 ]
  %56 = phi i32 [ %3, %44 ], [ %52, %49 ], !dbg !389
  %57 = icmp ne i32 %28, 0, !dbg !388
  %58 = select i1 %57, i64 -9223372036854775808, i64 9223372036854775807, !dbg !388
  %59 = sext i32 %56 to i64, !dbg !391
  %60 = urem i64 %58, %59, !dbg !392
  %61 = trunc i64 %60 to i32, !dbg !393
  %62 = udiv i64 %58, %59, !dbg !395
  br label %63, !dbg !398

; <label>:63:                                     ; preds = %95, %53
  %64 = phi i8* [ %55, %53 ], [ %98, %95 ], !dbg !400
  %65 = phi i64 [ 0, %53 ], [ %96, %95 ], !dbg !402
  %66 = phi i32 [ %54, %53 ], [ %100, %95 ], !dbg !400
  %67 = phi i32 [ 0, %53 ], [ %97, %95 ], !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  %68 = add nsw i32 %66, -48, !dbg !407
  %69 = icmp ult i32 %68, 10, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %69, label %80, label %70, !dbg !407

; <label>:70:                                     ; preds = %63
  %71 = add nsw i32 %66, -65, !dbg !409
  %72 = icmp ult i32 %71, 26, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %72, label %73, label %75, !dbg !409

; <label>:73:                                     ; preds = %70
  %74 = add nsw i32 %66, -55, !dbg !411
  br label %80, !dbg !412

; <label>:75:                                     ; preds = %70
  %76 = add nsw i32 %66, -97, !dbg !413
  %77 = icmp ult i32 %76, 26, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %77, label %78, label %101, !dbg !413

; <label>:78:                                     ; preds = %75
  %79 = add nsw i32 %66, -87, !dbg !415
  br label %80

; <label>:80:                                     ; preds = %63, %73, %78
  %81 = phi i32 [ %74, %73 ], [ %79, %78 ], [ %68, %63 ], !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %82 = icmp slt i32 %81, %56, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %82, label %83, label %101, !dbg !419

; <label>:83:                                     ; preds = %80
  %84 = icmp slt i32 %67, 0, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %84, label %95, label %85, !dbg !421

; <label>:85:                                     ; preds = %83
  %86 = icmp ugt i64 %65, %62, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %86, label %95, label %87, !dbg !423

; <label>:87:                                     ; preds = %85
  %88 = icmp eq i64 %65, %62, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %88, label %89, label %91, !dbg !425

; <label>:89:                                     ; preds = %87
  %90 = icmp sgt i32 %81, %61, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %90, label %95, label %91, !dbg !427

; <label>:91:                                     ; preds = %89, %87
  %92 = mul i64 %65, %59, !dbg !428
  %93 = sext i32 %81 to i64, !dbg !430
  %94 = add i64 %92, %93, !dbg !431
  br label %95

; <label>:95:                                     ; preds = %83, %85, %89, %91
  %96 = phi i64 [ %94, %91 ], [ %65, %89 ], [ %65, %85 ], [ %65, %83 ], !dbg !432
  %97 = phi i32 [ 1, %91 ], [ -1, %89 ], [ -1, %85 ], [ -1, %83 ], !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %98 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !433
  %99 = load i8, i8* %64, align 1, !dbg !434, !tbaa !354
  %100 = zext i8 %99 to i32, !dbg !434
  br label %63, !dbg !435, !llvm.loop !436

; <label>:101:                                    ; preds = %80, %75
  %102 = icmp slt i32 %67, 0, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %102, label %103, label %105, !dbg !441

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !442
  store i32 34, i32* %104, align 8, !dbg !444, !tbaa !445
  br label %108, !dbg !446

; <label>:105:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %57, label %106, label %110, !dbg !447

; <label>:106:                                    ; preds = %105
  %107 = sub i64 0, %65, !dbg !448
  br label %108, !dbg !450

; <label>:108:                                    ; preds = %103, %106
  %109 = phi i64 [ %107, %106 ], [ %58, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br label %110, !dbg !452

; <label>:110:                                    ; preds = %108, %105
  %111 = phi i64 [ %65, %105 ], [ %109, %108 ], !dbg !406
  %112 = icmp eq i8** %2, null, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %112, label %117, label %113, !dbg !454

; <label>:113:                                    ; preds = %110
  %114 = icmp eq i32 %67, 0, !dbg !455
  %115 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !456
  %116 = select i1 %114, i8* %1, i8* %115, !dbg !455
  store i8* %116, i8** %2, align 8, !dbg !457, !tbaa !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  br label %117, !dbg !459

; <label>:117:                                    ; preds = %110, %113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  ret i64 %111, !dbg !460
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoll_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !461 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !473
  %6 = tail call fastcc i64 @_strtoll_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  ret i64 %6, !dbg !475
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoll(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !476 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !484
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !485
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !487
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !487, !tbaa !309
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br i1 %8, label %9, label %10, !dbg !485

; <label>:9:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  br label %10, !dbg !485

; <label>:10:                                     ; preds = %3, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %3 ], !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %12 = tail call fastcc i64 @_strtoll_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* nonnull %11) #4, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  ret i64 %12, !dbg !492
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/strtoll.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_strtoll_r", scope: !1, file: !1, line: 230, type: !16, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !294, !295, !7}
!18 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !21, line: 569, size: 14912, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !103, !104, !105, !106, !110, !111, !176, !177, !181, !193, !194, !195, !197, !198, !199, !260, !279, !280, !285, !292}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !20, file: !21, line: 571, baseType: !7, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !21, line: 287, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 181, size: 1408, elements: !28)
!28 = !{!29, !31, !32, !33, !35, !36, !41, !42, !44, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !21, line: 182, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !21, line: 183, baseType: !7, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !21, line: 184, baseType: !7, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !21, line: 185, baseType: !34, size: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !21, line: 186, baseType: !34, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !21, line: 187, baseType: !37, size: 128, offset: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !21, line: 117, size: 128, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !21, line: 118, baseType: !30, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !21, line: 119, baseType: !7, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !21, line: 188, baseType: !7, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !21, line: 195, baseType: !43, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !21, line: 197, baseType: !45, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !19, !43, !9, !7}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !49, line: 145, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !21, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!48, !19, !43, !55, !7}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !21, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !19, !43, !61, !7}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !49, line: 114, baseType: !50)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !21, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!7, !19, !43}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !21, line: 206, baseType: !37, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !27, file: !21, line: 207, baseType: !30, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !21, line: 208, baseType: !7, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !21, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !21, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !21, line: 215, baseType: !37, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !21, line: 218, baseType: !7, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !21, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !49, line: 44, baseType: !50)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !27, file: !21, line: 222, baseType: !19, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !21, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !49, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !7)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !27, file: !21, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !49, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !49, line: 165, baseType: !7, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !49, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !49, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !49, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !49, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !21, line: 229, baseType: !7, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !20, file: !21, line: 578, baseType: !7, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !20, file: !21, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !20, file: !21, line: 582, baseType: !7, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !20, file: !21, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !114, line: 178, size: 3392, elements: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !{!116, !121, !129, !138, !139, !140, !168, !172, !175}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !113, file: !114, line: 180, baseType: !117, size: 1792)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !118)
!118 = !{!119, !120}
!119 = !DISubrange(count: 7)
!120 = !DISubrange(count: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !113, file: !114, line: 181, baseType: !122, size: 64, offset: 1792)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!7, !19, !9, !125, !126}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !96, line: 83, baseType: !7)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !128, line: 86, baseType: !87)
!128 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !113, file: !114, line: 183, baseType: !130, size: 64, offset: 1856)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!7, !19, !133, !55, !134, !126}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !135, line: 40, baseType: !136)
!135 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !49, line: 129, baseType: !137)
!137 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !113, file: !114, line: 185, baseType: !7, size: 32, offset: 1920)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !113, file: !114, line: 186, baseType: !9, size: 64, offset: 1984)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !113, file: !114, line: 187, baseType: !141, size: 768, offset: 2048)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !142, line: 42, size: 768, elements: !143)
!142 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !141, file: !142, line: 44, baseType: !9, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !141, file: !142, line: 45, baseType: !9, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !141, file: !142, line: 46, baseType: !9, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !141, file: !142, line: 47, baseType: !9, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !141, file: !142, line: 48, baseType: !9, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !141, file: !142, line: 49, baseType: !9, size: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !141, file: !142, line: 50, baseType: !9, size: 64, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !141, file: !142, line: 51, baseType: !9, size: 64, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !141, file: !142, line: 52, baseType: !9, size: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !141, file: !142, line: 53, baseType: !9, size: 64, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !141, file: !142, line: 54, baseType: !10, size: 8, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !141, file: !142, line: 55, baseType: !10, size: 8, offset: 648)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !141, file: !142, line: 56, baseType: !10, size: 8, offset: 656)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !141, file: !142, line: 57, baseType: !10, size: 8, offset: 664)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !141, file: !142, line: 58, baseType: !10, size: 8, offset: 672)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !141, file: !142, line: 59, baseType: !10, size: 8, offset: 680)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !141, file: !142, line: 60, baseType: !10, size: 8, offset: 688)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !141, file: !142, line: 61, baseType: !10, size: 8, offset: 696)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !141, file: !142, line: 62, baseType: !10, size: 8, offset: 704)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !141, file: !142, line: 63, baseType: !10, size: 8, offset: 712)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !141, file: !142, line: 64, baseType: !10, size: 8, offset: 720)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !141, file: !142, line: 65, baseType: !10, size: 8, offset: 728)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !141, file: !142, line: 66, baseType: !10, size: 8, offset: 736)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !141, file: !142, line: 67, baseType: !10, size: 8, offset: 744)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !113, file: !114, line: 189, baseType: !169, size: 16, offset: 2816)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 2)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !113, file: !114, line: 190, baseType: !173, size: 256, offset: 2832)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !174)
!174 = !{!120}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !113, file: !114, line: 191, baseType: !173, size: 256, offset: 3088)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !20, file: !21, line: 585, baseType: !7, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !20, file: !21, line: 587, baseType: !178, size: 64, offset: 704)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !19}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !20, file: !21, line: 590, baseType: !182, size: 64, offset: 768)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !21, line: 47, size: 256, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !183, file: !21, line: 49, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !183, file: !21, line: 50, baseType: !7, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !183, file: !21, line: 50, baseType: !7, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !183, file: !21, line: 50, baseType: !7, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !183, file: !21, line: 50, baseType: !7, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !183, file: !21, line: 51, baseType: !191, size: 32, offset: 192)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 32, elements: !75)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !21, line: 25, baseType: !97)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !20, file: !21, line: 591, baseType: !7, size: 32, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !20, file: !21, line: 592, baseType: !182, size: 64, offset: 896)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !20, file: !21, line: 593, baseType: !196, size: 64, offset: 960)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !20, file: !21, line: 596, baseType: !7, size: 32, offset: 1024)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !20, file: !21, line: 597, baseType: !9, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !20, file: !21, line: 632, baseType: !200, size: 2880, offset: 1152)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 599, size: 2880, elements: !201)
!201 = !{!202, !251}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !200, file: !21, line: 622, baseType: !203, size: 1728)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !21, line: 601, size: 1728, elements: !204)
!204 = !{!205, !206, !207, !211, !223, !224, !225, !233, !234, !235, !236, !240, !244, !245, !246, !247, !248, !249, !250}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !203, file: !21, line: 603, baseType: !97, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !203, file: !21, line: 604, baseType: !9, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !203, file: !21, line: 605, baseType: !208, size: 208, offset: 128)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 26)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !203, file: !21, line: 606, baseType: !212, size: 288, offset: 352)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !21, line: 55, size: 288, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !219, !220, !221, !222}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !212, file: !21, line: 57, baseType: !7, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !212, file: !21, line: 58, baseType: !7, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !212, file: !21, line: 59, baseType: !7, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !212, file: !21, line: 60, baseType: !7, size: 32, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !212, file: !21, line: 61, baseType: !7, size: 32, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !212, file: !21, line: 62, baseType: !7, size: 32, offset: 160)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !212, file: !21, line: 63, baseType: !7, size: 32, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !212, file: !21, line: 64, baseType: !7, size: 32, offset: 224)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !212, file: !21, line: 65, baseType: !7, size: 32, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !203, file: !21, line: 607, baseType: !7, size: 32, offset: 640)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !203, file: !21, line: 608, baseType: !8, size: 64, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !203, file: !21, line: 609, baseType: !226, size: 112, offset: 768)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !21, line: 319, size: 112, elements: !227)
!227 = !{!228, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !226, file: !21, line: 320, baseType: !229, size: 48)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 48, elements: !71)
!230 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !226, file: !21, line: 321, baseType: !229, size: 48, offset: 48)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !226, file: !21, line: 322, baseType: !230, size: 16, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !203, file: !21, line: 610, baseType: !87, size: 64, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !203, file: !21, line: 611, baseType: !87, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !203, file: !21, line: 612, baseType: !87, size: 64, offset: 1024)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !203, file: !21, line: 613, baseType: !237, size: 64, offset: 1088)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !203, file: !21, line: 614, baseType: !241, size: 192, offset: 1152)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 24)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !203, file: !21, line: 615, baseType: !7, size: 32, offset: 1344)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !203, file: !21, line: 616, baseType: !87, size: 64, offset: 1376)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !203, file: !21, line: 617, baseType: !87, size: 64, offset: 1440)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !203, file: !21, line: 618, baseType: !87, size: 64, offset: 1504)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !203, file: !21, line: 619, baseType: !87, size: 64, offset: 1568)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !203, file: !21, line: 620, baseType: !87, size: 64, offset: 1632)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !203, file: !21, line: 621, baseType: !7, size: 32, offset: 1696)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !200, file: !21, line: 631, baseType: !252, size: 2880)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !200, file: !21, line: 626, size: 2880, elements: !253)
!253 = !{!254, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !252, file: !21, line: 629, baseType: !255, size: 1920)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 30)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !252, file: !21, line: 630, baseType: !259, size: 960, offset: 1920)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !20, file: !21, line: 636, baseType: !261, size: 64, offset: 4032)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !21, line: 93, size: 6336, elements: !263)
!263 = !{!264, !265, !266, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !262, file: !21, line: 94, baseType: !261, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !262, file: !21, line: 95, baseType: !7, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !262, file: !21, line: 97, baseType: !267, size: 2048, offset: 128)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 2048, elements: !174)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !262, file: !21, line: 98, baseType: !272, size: 4160, offset: 2176)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !21, line: 74, size: 4160, elements: !273)
!273 = !{!274, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !272, file: !21, line: 75, baseType: !275, size: 2048)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !174)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !272, file: !21, line: 76, baseType: !275, size: 2048, offset: 2048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !272, file: !21, line: 78, baseType: !192, size: 32, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !272, file: !21, line: 81, baseType: !192, size: 32, offset: 4128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !20, file: !21, line: 637, baseType: !262, size: 6336, offset: 4096)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !20, file: !21, line: 641, baseType: !281, size: 64, offset: 10432)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !7}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !20, file: !21, line: 646, baseType: !286, size: 192, offset: 10496)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !21, line: 291, size: 192, elements: !287)
!287 = !{!288, !290, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !286, file: !21, line: 293, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !286, file: !21, line: 294, baseType: !7, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !286, file: !21, line: 295, baseType: !25, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !20, file: !21, line: 648, baseType: !293, size: 4224, offset: 10688)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4224, elements: !71)
!294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!295 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!297 = !{!298, !299, !300, !301}
!298 = !DILocalVariable(name: "rptr", arg: 1, scope: !15, file: !1, line: 230, type: !19)
!299 = !DILocalVariable(name: "nptr", arg: 2, scope: !15, file: !1, line: 230, type: !294)
!300 = !DILocalVariable(name: "endptr", arg: 3, scope: !15, file: !1, line: 230, type: !295)
!301 = !DILocalVariable(name: "base", arg: 4, scope: !15, file: !1, line: 230, type: !7)
!302 = !DILocation(line: 230, column: 1, scope: !15)
!303 = !DILocation(line: 230, column: 10, scope: !304, inlinedAt: !307)
!304 = distinct !DISubprogram(name: "__get_current_locale", scope: !114, file: !114, line: 228, type: !305, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!305 = !DISubroutineType(types: !306)
!306 = !{!112}
!307 = distinct !DILocation(line: 236, column: 47, scope: !15)
!308 = !DILocation(line: 230, column: 18, scope: !304, inlinedAt: !307)
!309 = !{!310, !314, i64 72}
!310 = !{!"_reent", !311, i64 0, !314, i64 8, !314, i64 16, !314, i64 24, !311, i64 32, !312, i64 36, !311, i64 64, !314, i64 72, !311, i64 80, !314, i64 88, !314, i64 96, !311, i64 104, !314, i64 112, !314, i64 120, !311, i64 128, !314, i64 136, !312, i64 144, !314, i64 504, !315, i64 512, !314, i64 1304, !317, i64 1312, !312, i64 1336}
!311 = !{!"int", !312, i64 0}
!312 = !{!"omnipotent char", !313, i64 0}
!313 = !{!"Simple C/C++ TBAA"}
!314 = !{!"any pointer", !312, i64 0}
!315 = !{!"_atexit", !314, i64 0, !311, i64 8, !312, i64 16, !316, i64 272}
!316 = !{!"_on_exit_args", !312, i64 0, !312, i64 256, !311, i64 512, !311, i64 516}
!317 = !{!"_glue", !314, i64 0, !311, i64 8, !314, i64 16}
!318 = !DILocation(line: 213, column: 3, scope: !319, inlinedAt: !320)
!319 = distinct !DISubprogram(name: "__get_global_locale", scope: !114, file: !114, line: 210, type: !305, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!320 = distinct !DILocation(line: 230, column: 29, scope: !304, inlinedAt: !307)
!321 = !DILocation(line: 230, column: 3, scope: !304, inlinedAt: !307)
!322 = !DILocation(line: 236, column: 9, scope: !15)
!323 = !DILocation(line: 236, column: 2, scope: !15)
!324 = distinct !DISubprogram(name: "_strtoll_l", scope: !1, file: !1, line: 149, type: !325, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !329)
!325 = !DISubroutineType(types: !326)
!326 = !{!18, !19, !294, !295, !7, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !328, line: 10, baseType: !112)
!328 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!330 = !DILocalVariable(name: "rptr", arg: 1, scope: !324, file: !1, line: 149, type: !19)
!331 = !DILocalVariable(name: "nptr", arg: 2, scope: !324, file: !1, line: 149, type: !294)
!332 = !DILocalVariable(name: "endptr", arg: 3, scope: !324, file: !1, line: 150, type: !295)
!333 = !DILocalVariable(name: "base", arg: 4, scope: !324, file: !1, line: 150, type: !7)
!334 = !DILocalVariable(name: "loc", arg: 5, scope: !324, file: !1, line: 150, type: !327)
!335 = !DILocalVariable(name: "s", scope: !324, file: !1, line: 152, type: !4)
!336 = !DILocalVariable(name: "acc", scope: !324, file: !1, line: 153, type: !8)
!337 = !DILocalVariable(name: "c", scope: !324, file: !1, line: 154, type: !7)
!338 = !DILocalVariable(name: "cutoff", scope: !324, file: !1, line: 155, type: !8)
!339 = !DILocalVariable(name: "neg", scope: !324, file: !1, line: 156, type: !7)
!340 = !DILocalVariable(name: "any", scope: !324, file: !1, line: 156, type: !7)
!341 = !DILocalVariable(name: "cutlim", scope: !324, file: !1, line: 156, type: !7)
!342 = !DILocation(line: 149, column: 28, scope: !324)
!343 = !DILocation(line: 149, column: 58, scope: !324)
!344 = !DILocation(line: 150, column: 24, scope: !324)
!345 = !DILocation(line: 150, column: 36, scope: !324)
!346 = !DILocation(line: 150, column: 51, scope: !324)
!347 = !DILocation(line: 152, column: 32, scope: !324)
!348 = !DILocation(line: 156, column: 15, scope: !324)
!349 = !DILocation(line: 163, column: 2, scope: !324)
!350 = !DILocation(line: 0, scope: !351)
!351 = distinct !DILexicalBlock(scope: !324, file: !1, line: 163, column: 5)
!352 = !DILocation(line: 164, column: 9, scope: !351)
!353 = !DILocation(line: 164, column: 7, scope: !351)
!354 = !{!312, !312, i64 0}
!355 = !DILocation(line: 165, column: 11, scope: !324)
!356 = !DILocation(line: 165, column: 2, scope: !351)
!357 = distinct !{!357, !349, !358}
!358 = !DILocation(line: 165, column: 28, scope: !324)
!359 = !DILocation(line: 166, column: 8, scope: !360)
!360 = distinct !DILexicalBlock(scope: !324, file: !1, line: 166, column: 6)
!361 = !DILocation(line: 166, column: 6, scope: !324)
!362 = !DILocation(line: 169, column: 15, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !1, line: 169, column: 13)
!364 = !DILocation(line: 169, column: 13, scope: !360)
!365 = !DILocation(line: 0, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !1, line: 166, column: 16)
!367 = !DILocation(line: 0, scope: !324)
!368 = !DILocation(line: 154, column: 15, scope: !324)
!369 = !DILocation(line: 171, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !324, file: !1, line: 171, column: 6)
!371 = !DILocation(line: 172, column: 8, scope: !370)
!372 = !DILocation(line: 172, column: 19, scope: !370)
!373 = !DILocation(line: 172, column: 22, scope: !370)
!374 = !DILocation(line: 172, column: 29, scope: !370)
!375 = !DILocation(line: 172, column: 35, scope: !370)
!376 = !DILocation(line: 171, column: 6, scope: !324)
!377 = !DILocation(line: 173, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !1, line: 172, column: 44)
!379 = !DILocation(line: 174, column: 5, scope: !378)
!380 = !DILocation(line: 176, column: 2, scope: !378)
!381 = !DILocation(line: 177, column: 6, scope: !324)
!382 = !DILocation(line: 177, column: 11, scope: !383)
!383 = distinct !DILexicalBlock(scope: !324, file: !1, line: 177, column: 6)
!384 = !DILocation(line: 178, column: 12, scope: !383)
!385 = !DILocation(line: 178, column: 10, scope: !383)
!386 = !DILocation(line: 178, column: 3, scope: !383)
!387 = !DILocation(line: 0, scope: !383)
!388 = !DILocation(line: 197, column: 11, scope: !324)
!389 = !DILocation(line: 0, scope: !378)
!390 = !DILocation(line: 155, column: 30, scope: !324)
!391 = !DILocation(line: 198, column: 20, scope: !324)
!392 = !DILocation(line: 198, column: 18, scope: !324)
!393 = !DILocation(line: 198, column: 11, scope: !324)
!394 = !DILocation(line: 156, column: 29, scope: !324)
!395 = !DILocation(line: 199, column: 9, scope: !324)
!396 = !DILocation(line: 153, column: 30, scope: !324)
!397 = !DILocation(line: 156, column: 24, scope: !324)
!398 = !DILocation(line: 200, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !324, file: !1, line: 200, column: 2)
!400 = !DILocation(line: 0, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !1, line: 200, column: 2)
!402 = !DILocation(line: 200, column: 11, scope: !399)
!403 = !DILocation(line: 0, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !1, line: 211, column: 20)
!405 = distinct !DILexicalBlock(scope: !401, file: !1, line: 200, column: 36)
!406 = !DILocation(line: 0, scope: !399)
!407 = !DILocation(line: 201, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !1, line: 201, column: 7)
!409 = !DILocation(line: 203, column: 21, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !1, line: 203, column: 12)
!411 = !DILocation(line: 204, column: 6, scope: !410)
!412 = !DILocation(line: 204, column: 4, scope: !410)
!413 = !DILocation(line: 205, column: 21, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !1, line: 205, column: 12)
!415 = !DILocation(line: 206, column: 6, scope: !414)
!416 = !DILocation(line: 0, scope: !414)
!417 = !DILocation(line: 209, column: 9, scope: !418)
!418 = distinct !DILexicalBlock(scope: !405, file: !1, line: 209, column: 7)
!419 = !DILocation(line: 209, column: 7, scope: !405)
!420 = !DILocation(line: 211, column: 24, scope: !404)
!421 = !DILocation(line: 211, column: 28, scope: !404)
!422 = !DILocation(line: 211, column: 35, scope: !404)
!423 = !DILocation(line: 211, column: 44, scope: !404)
!424 = !DILocation(line: 211, column: 52, scope: !404)
!425 = !DILocation(line: 211, column: 62, scope: !404)
!426 = !DILocation(line: 211, column: 67, scope: !404)
!427 = !DILocation(line: 211, column: 20, scope: !405)
!428 = !DILocation(line: 215, column: 8, scope: !429)
!429 = distinct !DILexicalBlock(scope: !404, file: !1, line: 213, column: 8)
!430 = !DILocation(line: 216, column: 11, scope: !429)
!431 = !DILocation(line: 216, column: 8, scope: !429)
!432 = !DILocation(line: 0, scope: !429)
!433 = !DILocation(line: 200, column: 32, scope: !401)
!434 = !DILocation(line: 200, column: 30, scope: !401)
!435 = !DILocation(line: 200, column: 2, scope: !401)
!436 = distinct !{!436, !437, !438}
!437 = !DILocation(line: 200, column: 2, scope: !399)
!438 = !DILocation(line: 218, column: 2, scope: !399)
!439 = !DILocation(line: 219, column: 10, scope: !440)
!440 = distinct !DILexicalBlock(scope: !324, file: !1, line: 219, column: 6)
!441 = !DILocation(line: 219, column: 6, scope: !324)
!442 = !DILocation(line: 221, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !1, line: 219, column: 15)
!444 = !DILocation(line: 221, column: 16, scope: !443)
!445 = !{!310, !311, i64 0}
!446 = !DILocation(line: 222, column: 2, scope: !443)
!447 = !DILocation(line: 222, column: 13, scope: !440)
!448 = !DILocation(line: 223, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !440, file: !1, line: 222, column: 13)
!450 = !DILocation(line: 223, column: 3, scope: !449)
!451 = !DILocation(line: 0, scope: !443)
!452 = !DILocation(line: 224, column: 13, scope: !453)
!453 = distinct !DILexicalBlock(scope: !324, file: !1, line: 224, column: 6)
!454 = !DILocation(line: 224, column: 6, scope: !324)
!455 = !DILocation(line: 225, column: 23, scope: !453)
!456 = !DILocation(line: 225, column: 39, scope: !453)
!457 = !DILocation(line: 225, column: 11, scope: !453)
!458 = !{!314, !314, i64 0}
!459 = !DILocation(line: 225, column: 3, scope: !453)
!460 = !DILocation(line: 226, column: 2, scope: !324)
!461 = distinct !DISubprogram(name: "strtoll_l", scope: !1, file: !1, line: 242, type: !462, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!18, !294, !295, !7, !327}
!464 = !{!465, !466, !467, !468}
!465 = !DILocalVariable(name: "s", arg: 1, scope: !461, file: !1, line: 242, type: !294)
!466 = !DILocalVariable(name: "ptr", arg: 2, scope: !461, file: !1, line: 242, type: !295)
!467 = !DILocalVariable(name: "base", arg: 3, scope: !461, file: !1, line: 242, type: !7)
!468 = !DILocalVariable(name: "loc", arg: 4, scope: !461, file: !1, line: 243, type: !327)
!469 = !DILocation(line: 242, column: 35, scope: !461)
!470 = !DILocation(line: 242, column: 56, scope: !461)
!471 = !DILocation(line: 242, column: 65, scope: !461)
!472 = !DILocation(line: 243, column: 14, scope: !461)
!473 = !DILocation(line: 245, column: 21, scope: !461)
!474 = !DILocation(line: 245, column: 9, scope: !461)
!475 = !DILocation(line: 245, column: 2, scope: !461)
!476 = distinct !DISubprogram(name: "strtoll", scope: !1, file: !1, line: 249, type: !477, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!18, !294, !295, !7}
!479 = !{!480, !481, !482}
!480 = !DILocalVariable(name: "s", arg: 1, scope: !476, file: !1, line: 249, type: !294)
!481 = !DILocalVariable(name: "ptr", arg: 2, scope: !476, file: !1, line: 249, type: !295)
!482 = !DILocalVariable(name: "base", arg: 3, scope: !476, file: !1, line: 249, type: !7)
!483 = !DILocation(line: 249, column: 1, scope: !476)
!484 = !DILocation(line: 254, column: 21, scope: !476)
!485 = !DILocation(line: 230, column: 10, scope: !304, inlinedAt: !486)
!486 = distinct !DILocation(line: 254, column: 43, scope: !476)
!487 = !DILocation(line: 230, column: 18, scope: !304, inlinedAt: !486)
!488 = !DILocation(line: 213, column: 3, scope: !319, inlinedAt: !489)
!489 = distinct !DILocation(line: 230, column: 29, scope: !304, inlinedAt: !486)
!490 = !DILocation(line: 230, column: 3, scope: !304, inlinedAt: !486)
!491 = !DILocation(line: 254, column: 9, scope: !476)
!492 = !DILocation(line: 254, column: 2, scope: !476)
