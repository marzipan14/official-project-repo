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

; Function Attrs: noredzone nounwind
define dso_local i64 @_strtoll_r(%struct._reent* nocapture, i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !303
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !308
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !308, !tbaa !309
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !303
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !303
  %10 = tail call fastcc i64 @_strtoll_l(%struct._reent* %0, i8* %1, i8** %2, i32 %3, %struct.__locale_t* %9) #4, !dbg !318
  ret i64 %10, !dbg !319
}

; Function Attrs: noredzone nounwind
define internal fastcc i64 @_strtoll_l(%struct._reent* nocapture, i8* noalias, i8** noalias, i32, %struct.__locale_t*) unnamed_addr #0 !dbg !320 {
  br label %6, !dbg !345

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i8* [ %1, %5 ], [ %8, %6 ], !dbg !346
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !348
  %9 = load i8, i8* %7, align 1, !dbg !349, !tbaa !350
  %10 = tail call i8* @__locale_ctype_ptr_l(%struct.__locale_t* %4) #3, !dbg !351
  %11 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !351
  %12 = zext i8 %9 to i64, !dbg !351
  %13 = getelementptr inbounds i8, i8* %11, i64 %12, !dbg !351
  %14 = load i8, i8* %13, align 1, !dbg !351, !tbaa !350
  %15 = and i8 %14, 8, !dbg !351
  %16 = icmp eq i8 %15, 0, !dbg !352
  br i1 %16, label %17, label %6, !dbg !352, !llvm.loop !353

; <label>:17:                                     ; preds = %6
  switch i8 %9, label %23 [
    i8 45, label %19
    i8 43, label %18
  ], !dbg !355

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !356

; <label>:19:                                     ; preds = %17, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %17 ]
  %21 = getelementptr inbounds i8, i8* %7, i64 2, !dbg !359
  %22 = load i8, i8* %8, align 1, !dbg !359, !tbaa !350
  br label %23, !dbg !361

; <label>:23:                                     ; preds = %19, %17
  %24 = phi i8* [ %8, %17 ], [ %21, %19 ], !dbg !346
  %25 = phi i8 [ %9, %17 ], [ %22, %19 ]
  %26 = phi i32 [ 0, %17 ], [ %20, %19 ], !dbg !363
  %27 = or i32 %3, 16, !dbg !361
  %28 = icmp eq i32 %27, 16, !dbg !361
  %29 = icmp eq i8 %25, 48, !dbg !364
  %30 = and i1 %28, %29, !dbg !361
  br i1 %30, label %31, label %40, !dbg !361

; <label>:31:                                     ; preds = %23
  %32 = load i8, i8* %24, align 1, !dbg !365, !tbaa !350
  switch i8 %32, label %33 [
    i8 120, label %35
    i8 88, label %35
  ], !dbg !366

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i32 %3, 0, !dbg !368
  br label %44, !dbg !370

; <label>:35:                                     ; preds = %31, %31
  %36 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !371
  %37 = load i8, i8* %36, align 1, !dbg !371, !tbaa !350
  %38 = zext i8 %37 to i32, !dbg !371
  %39 = getelementptr inbounds i8, i8* %24, i64 2, !dbg !373
  br label %51, !dbg !374

; <label>:40:                                     ; preds = %23
  %41 = zext i8 %25 to i32, !dbg !346
  %42 = icmp eq i32 %3, 0, !dbg !368
  %43 = icmp eq i8 %25, 48, !dbg !375
  br i1 %43, label %44, label %46, !dbg !370

; <label>:44:                                     ; preds = %33, %40
  %45 = phi i1 [ %34, %33 ], [ %42, %40 ]
  br label %46, !dbg !370

; <label>:46:                                     ; preds = %40, %44
  %47 = phi i1 [ %45, %44 ], [ %42, %40 ]
  %48 = phi i32 [ 48, %44 ], [ %41, %40 ]
  %49 = phi i32 [ 8, %44 ], [ 10, %40 ]
  %50 = select i1 %47, i32 %49, i32 %3, !dbg !374
  br label %51, !dbg !374

; <label>:51:                                     ; preds = %46, %35
  %52 = phi i32 [ %38, %35 ], [ %48, %46 ]
  %53 = phi i8* [ %39, %35 ], [ %24, %46 ]
  %54 = phi i32 [ 16, %35 ], [ %50, %46 ]
  %55 = icmp ne i32 %26, 0, !dbg !376
  %56 = select i1 %55, i64 -9223372036854775808, i64 9223372036854775807, !dbg !376
  %57 = sext i32 %54 to i64, !dbg !378
  %58 = urem i64 %56, %57, !dbg !379
  %59 = trunc i64 %58 to i32, !dbg !380
  %60 = udiv i64 %56, %57, !dbg !382
  br label %61, !dbg !385

; <label>:61:                                     ; preds = %93, %51
  %62 = phi i8* [ %53, %51 ], [ %96, %93 ], !dbg !387
  %63 = phi i64 [ 0, %51 ], [ %94, %93 ], !dbg !389
  %64 = phi i32 [ %52, %51 ], [ %98, %93 ], !dbg !387
  %65 = phi i32 [ 0, %51 ], [ %95, %93 ], !dbg !390
  %66 = add nsw i32 %64, -48, !dbg !393
  %67 = icmp ult i32 %66, 10, !dbg !393
  br i1 %67, label %78, label %68, !dbg !393

; <label>:68:                                     ; preds = %61
  %69 = add nsw i32 %64, -65, !dbg !395
  %70 = icmp ult i32 %69, 26, !dbg !395
  br i1 %70, label %71, label %73, !dbg !395

; <label>:71:                                     ; preds = %68
  %72 = add nsw i32 %64, -55, !dbg !397
  br label %78, !dbg !398

; <label>:73:                                     ; preds = %68
  %74 = add nsw i32 %64, -97, !dbg !399
  %75 = icmp ult i32 %74, 26, !dbg !399
  br i1 %75, label %76, label %99, !dbg !399

; <label>:76:                                     ; preds = %73
  %77 = add nsw i32 %64, -87, !dbg !401
  br label %78

; <label>:78:                                     ; preds = %61, %71, %76
  %79 = phi i32 [ %72, %71 ], [ %77, %76 ], [ %66, %61 ], !dbg !402
  %80 = icmp slt i32 %79, %54, !dbg !403
  br i1 %80, label %81, label %99, !dbg !405

; <label>:81:                                     ; preds = %78
  %82 = icmp slt i32 %65, 0, !dbg !406
  %83 = icmp ugt i64 %63, %60, !dbg !407
  %84 = or i1 %83, %82, !dbg !408
  br i1 %84, label %93, label %85, !dbg !408

; <label>:85:                                     ; preds = %81
  %86 = icmp eq i64 %63, %60, !dbg !409
  %87 = icmp sgt i32 %79, %59, !dbg !410
  %88 = and i1 %86, %87, !dbg !411
  br i1 %88, label %93, label %89, !dbg !411

; <label>:89:                                     ; preds = %85
  %90 = mul i64 %63, %57, !dbg !412
  %91 = sext i32 %79 to i64, !dbg !414
  %92 = add i64 %90, %91, !dbg !415
  br label %93

; <label>:93:                                     ; preds = %81, %85, %89
  %94 = phi i64 [ %92, %89 ], [ %60, %85 ], [ %63, %81 ], !dbg !416
  %95 = phi i32 [ 1, %89 ], [ -1, %85 ], [ -1, %81 ], !dbg !416
  %96 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !417
  %97 = load i8, i8* %62, align 1, !dbg !418, !tbaa !350
  %98 = zext i8 %97 to i32, !dbg !418
  br label %61, !dbg !419, !llvm.loop !420

; <label>:99:                                     ; preds = %78, %73
  %100 = icmp slt i32 %65, 0, !dbg !423
  br i1 %100, label %101, label %103, !dbg !425

; <label>:101:                                    ; preds = %99
  %102 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !426
  store i32 34, i32* %102, align 8, !dbg !428, !tbaa !429
  br label %106, !dbg !430

; <label>:103:                                    ; preds = %99
  %104 = sub i64 0, %63, !dbg !431
  %105 = select i1 %55, i64 %104, i64 %63, !dbg !433
  br label %106, !dbg !433

; <label>:106:                                    ; preds = %103, %101
  %107 = phi i64 [ %56, %101 ], [ %105, %103 ], !dbg !434
  %108 = icmp eq i8** %2, null, !dbg !435
  br i1 %108, label %113, label %109, !dbg !437

; <label>:109:                                    ; preds = %106
  %110 = icmp eq i32 %65, 0, !dbg !438
  %111 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !439
  %112 = select i1 %110, i8* %1, i8* %111, !dbg !438
  store i8* %112, i8** %2, align 8, !dbg !440, !tbaa !441
  br label %113, !dbg !442

; <label>:113:                                    ; preds = %106, %109
  ret i64 %107, !dbg !443
}

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoll_l(i8* noalias, i8** noalias, i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !444 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !456
  %6 = tail call fastcc i64 @_strtoll_l(%struct._reent* %5, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %3) #4, !dbg !457
  ret i64 %6, !dbg !458
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @strtoll(i8* noalias, i8** noalias, i32) local_unnamed_addr #0 !dbg !459 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !467
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !468
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !470
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !470, !tbaa !309
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !468
  %9 = select i1 %8, %struct.__locale_t* @__global_locale, %struct.__locale_t* %7, !dbg !468
  %10 = tail call fastcc i64 @_strtoll_l(%struct._reent* %4, i8* %0, i8** %1, i32 %2, %struct.__locale_t* %9) #4, !dbg !471
  ret i64 %10, !dbg !472
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
!318 = !DILocation(line: 236, column: 9, scope: !15)
!319 = !DILocation(line: 236, column: 2, scope: !15)
!320 = distinct !DISubprogram(name: "_strtoll_l", scope: !1, file: !1, line: 149, type: !321, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !325)
!321 = !DISubroutineType(types: !322)
!322 = !{!18, !19, !294, !295, !7, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !324, line: 10, baseType: !112)
!324 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!326 = !DILocalVariable(name: "rptr", arg: 1, scope: !320, file: !1, line: 149, type: !19)
!327 = !DILocalVariable(name: "nptr", arg: 2, scope: !320, file: !1, line: 149, type: !294)
!328 = !DILocalVariable(name: "endptr", arg: 3, scope: !320, file: !1, line: 150, type: !295)
!329 = !DILocalVariable(name: "base", arg: 4, scope: !320, file: !1, line: 150, type: !7)
!330 = !DILocalVariable(name: "loc", arg: 5, scope: !320, file: !1, line: 150, type: !323)
!331 = !DILocalVariable(name: "s", scope: !320, file: !1, line: 152, type: !4)
!332 = !DILocalVariable(name: "acc", scope: !320, file: !1, line: 153, type: !8)
!333 = !DILocalVariable(name: "c", scope: !320, file: !1, line: 154, type: !7)
!334 = !DILocalVariable(name: "cutoff", scope: !320, file: !1, line: 155, type: !8)
!335 = !DILocalVariable(name: "neg", scope: !320, file: !1, line: 156, type: !7)
!336 = !DILocalVariable(name: "any", scope: !320, file: !1, line: 156, type: !7)
!337 = !DILocalVariable(name: "cutlim", scope: !320, file: !1, line: 156, type: !7)
!338 = !DILocation(line: 149, column: 28, scope: !320)
!339 = !DILocation(line: 149, column: 58, scope: !320)
!340 = !DILocation(line: 150, column: 24, scope: !320)
!341 = !DILocation(line: 150, column: 36, scope: !320)
!342 = !DILocation(line: 150, column: 51, scope: !320)
!343 = !DILocation(line: 152, column: 32, scope: !320)
!344 = !DILocation(line: 156, column: 15, scope: !320)
!345 = !DILocation(line: 163, column: 2, scope: !320)
!346 = !DILocation(line: 0, scope: !347)
!347 = distinct !DILexicalBlock(scope: !320, file: !1, line: 163, column: 5)
!348 = !DILocation(line: 164, column: 9, scope: !347)
!349 = !DILocation(line: 164, column: 7, scope: !347)
!350 = !{!312, !312, i64 0}
!351 = !DILocation(line: 165, column: 11, scope: !320)
!352 = !DILocation(line: 165, column: 2, scope: !347)
!353 = distinct !{!353, !345, !354}
!354 = !DILocation(line: 165, column: 28, scope: !320)
!355 = !DILocation(line: 166, column: 6, scope: !320)
!356 = !DILocation(line: 170, column: 3, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 169, column: 13)
!358 = distinct !DILexicalBlock(scope: !320, file: !1, line: 166, column: 6)
!359 = !DILocation(line: 0, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !1, line: 166, column: 16)
!361 = !DILocation(line: 171, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !320, file: !1, line: 171, column: 6)
!363 = !DILocation(line: 0, scope: !320)
!364 = !DILocation(line: 172, column: 8, scope: !362)
!365 = !DILocation(line: 172, column: 19, scope: !362)
!366 = !DILocation(line: 172, column: 29, scope: !362)
!367 = !DILocation(line: 154, column: 15, scope: !320)
!368 = !DILocation(line: 177, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !320, file: !1, line: 177, column: 6)
!370 = !DILocation(line: 178, column: 10, scope: !369)
!371 = !DILocation(line: 173, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !362, file: !1, line: 172, column: 44)
!373 = !DILocation(line: 174, column: 5, scope: !372)
!374 = !DILocation(line: 177, column: 6, scope: !320)
!375 = !DILocation(line: 178, column: 12, scope: !369)
!376 = !DILocation(line: 197, column: 11, scope: !320)
!377 = !DILocation(line: 155, column: 30, scope: !320)
!378 = !DILocation(line: 198, column: 20, scope: !320)
!379 = !DILocation(line: 198, column: 18, scope: !320)
!380 = !DILocation(line: 198, column: 11, scope: !320)
!381 = !DILocation(line: 156, column: 29, scope: !320)
!382 = !DILocation(line: 199, column: 9, scope: !320)
!383 = !DILocation(line: 153, column: 30, scope: !320)
!384 = !DILocation(line: 156, column: 24, scope: !320)
!385 = !DILocation(line: 200, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !320, file: !1, line: 200, column: 2)
!387 = !DILocation(line: 0, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !1, line: 200, column: 2)
!389 = !DILocation(line: 200, column: 11, scope: !386)
!390 = !DILocation(line: 0, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 211, column: 20)
!392 = distinct !DILexicalBlock(scope: !388, file: !1, line: 200, column: 36)
!393 = !DILocation(line: 201, column: 16, scope: !394)
!394 = distinct !DILexicalBlock(scope: !392, file: !1, line: 201, column: 7)
!395 = !DILocation(line: 203, column: 21, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !1, line: 203, column: 12)
!397 = !DILocation(line: 204, column: 6, scope: !396)
!398 = !DILocation(line: 204, column: 4, scope: !396)
!399 = !DILocation(line: 205, column: 21, scope: !400)
!400 = distinct !DILexicalBlock(scope: !396, file: !1, line: 205, column: 12)
!401 = !DILocation(line: 206, column: 6, scope: !400)
!402 = !DILocation(line: 0, scope: !400)
!403 = !DILocation(line: 209, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !1, line: 209, column: 7)
!405 = !DILocation(line: 209, column: 7, scope: !392)
!406 = !DILocation(line: 211, column: 24, scope: !391)
!407 = !DILocation(line: 211, column: 35, scope: !391)
!408 = !DILocation(line: 211, column: 28, scope: !391)
!409 = !DILocation(line: 211, column: 52, scope: !391)
!410 = !DILocation(line: 211, column: 67, scope: !391)
!411 = !DILocation(line: 211, column: 62, scope: !391)
!412 = !DILocation(line: 215, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !391, file: !1, line: 213, column: 8)
!414 = !DILocation(line: 216, column: 11, scope: !413)
!415 = !DILocation(line: 216, column: 8, scope: !413)
!416 = !DILocation(line: 0, scope: !413)
!417 = !DILocation(line: 200, column: 32, scope: !388)
!418 = !DILocation(line: 200, column: 30, scope: !388)
!419 = !DILocation(line: 200, column: 2, scope: !388)
!420 = distinct !{!420, !421, !422}
!421 = !DILocation(line: 200, column: 2, scope: !386)
!422 = !DILocation(line: 218, column: 2, scope: !386)
!423 = !DILocation(line: 219, column: 10, scope: !424)
!424 = distinct !DILexicalBlock(scope: !320, file: !1, line: 219, column: 6)
!425 = !DILocation(line: 219, column: 6, scope: !320)
!426 = !DILocation(line: 221, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !1, line: 219, column: 15)
!428 = !DILocation(line: 221, column: 16, scope: !427)
!429 = !{!310, !311, i64 0}
!430 = !DILocation(line: 222, column: 2, scope: !427)
!431 = !DILocation(line: 223, column: 9, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !1, line: 222, column: 13)
!433 = !DILocation(line: 222, column: 13, scope: !424)
!434 = !DILocation(line: 0, scope: !386)
!435 = !DILocation(line: 224, column: 13, scope: !436)
!436 = distinct !DILexicalBlock(scope: !320, file: !1, line: 224, column: 6)
!437 = !DILocation(line: 224, column: 6, scope: !320)
!438 = !DILocation(line: 225, column: 23, scope: !436)
!439 = !DILocation(line: 225, column: 39, scope: !436)
!440 = !DILocation(line: 225, column: 11, scope: !436)
!441 = !{!314, !314, i64 0}
!442 = !DILocation(line: 225, column: 3, scope: !436)
!443 = !DILocation(line: 226, column: 2, scope: !320)
!444 = distinct !DISubprogram(name: "strtoll_l", scope: !1, file: !1, line: 242, type: !445, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!18, !294, !295, !7, !323}
!447 = !{!448, !449, !450, !451}
!448 = !DILocalVariable(name: "s", arg: 1, scope: !444, file: !1, line: 242, type: !294)
!449 = !DILocalVariable(name: "ptr", arg: 2, scope: !444, file: !1, line: 242, type: !295)
!450 = !DILocalVariable(name: "base", arg: 3, scope: !444, file: !1, line: 242, type: !7)
!451 = !DILocalVariable(name: "loc", arg: 4, scope: !444, file: !1, line: 243, type: !323)
!452 = !DILocation(line: 242, column: 35, scope: !444)
!453 = !DILocation(line: 242, column: 56, scope: !444)
!454 = !DILocation(line: 242, column: 65, scope: !444)
!455 = !DILocation(line: 243, column: 14, scope: !444)
!456 = !DILocation(line: 245, column: 21, scope: !444)
!457 = !DILocation(line: 245, column: 9, scope: !444)
!458 = !DILocation(line: 245, column: 2, scope: !444)
!459 = distinct !DISubprogram(name: "strtoll", scope: !1, file: !1, line: 249, type: !460, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!18, !294, !295, !7}
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(name: "s", arg: 1, scope: !459, file: !1, line: 249, type: !294)
!464 = !DILocalVariable(name: "ptr", arg: 2, scope: !459, file: !1, line: 249, type: !295)
!465 = !DILocalVariable(name: "base", arg: 3, scope: !459, file: !1, line: 249, type: !7)
!466 = !DILocation(line: 249, column: 1, scope: !459)
!467 = !DILocation(line: 254, column: 21, scope: !459)
!468 = !DILocation(line: 230, column: 10, scope: !304, inlinedAt: !469)
!469 = distinct !DILocation(line: 254, column: 43, scope: !459)
!470 = !DILocation(line: 230, column: 18, scope: !304, inlinedAt: !469)
!471 = !DILocation(line: 254, column: 9, scope: !459)
!472 = !DILocation(line: 254, column: 2, scope: !459)
