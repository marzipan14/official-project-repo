; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputwc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputwc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @__fputwc(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !33 {
  %4 = alloca [1 x i8], align 1
  %5 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %5) #4, !dbg !263
  %6 = tail call i32 @__locale_mb_cur_max() #5, !dbg !265
  %7 = icmp eq i32 %6, 1, !dbg !267
  %8 = add i32 %1, -1, !dbg !268
  %9 = icmp ult i32 %8, 255, !dbg !268
  %10 = and i1 %9, %7, !dbg !268
  br i1 %10, label %11, label %13, !dbg !268

; <label>:11:                                     ; preds = %3
  %12 = trunc i32 %1 to i8, !dbg !269
  store i8 %12, i8* %5, align 1, !dbg !271, !tbaa !272
  br label %20, !dbg !277

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 22, !dbg !279
  %15 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %5, i32 %1, %struct._mbstate_t* nonnull %14) #5, !dbg !282
  switch i64 %15, label %20 [
    i64 -1, label %16
    i64 0, label %46
  ], !dbg !283

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !284
  %18 = load i16, i16* %17, align 8, !dbg !286, !tbaa !287
  %19 = or i16 %18, 64, !dbg !286
  store i16 %19, i16* %17, align 8, !dbg !286, !tbaa !287
  br label %46, !dbg !295

; <label>:20:                                     ; preds = %13, %11
  %21 = phi i64 [ 1, %11 ], [ %15, %13 ]
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %25, !dbg !277

; <label>:25:                                     ; preds = %20, %43
  %26 = phi i64 [ 0, %20 ], [ %44, %43 ]
  %27 = load i8, i8* %5, align 1, !dbg !296, !tbaa !272
  %28 = zext i8 %27 to i32, !dbg !299
  %29 = load i32, i32* %22, align 4, !dbg !311, !tbaa !313
  %30 = add nsw i32 %29, -1, !dbg !311
  store i32 %30, i32* %22, align 4, !dbg !311, !tbaa !313
  %31 = icmp sgt i32 %29, 0, !dbg !314
  br i1 %31, label %37, label %32, !dbg !315

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %24, align 8, !dbg !316, !tbaa !317
  %34 = icmp sle i32 %29, %33, !dbg !318
  %35 = icmp eq i8 %27, 10, !dbg !319
  %36 = or i1 %35, %34, !dbg !320
  br i1 %36, label %40, label %37, !dbg !320

; <label>:37:                                     ; preds = %32, %25
  %38 = load i8*, i8** %23, align 8, !dbg !321, !tbaa !322
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !321
  store i8* %39, i8** %23, align 8, !dbg !321, !tbaa !322
  store i8 %27, i8* %38, align 1, !dbg !323, !tbaa !272
  br label %43, !dbg !324

; <label>:40:                                     ; preds = %32
  %41 = call i32 @__swbuf_r(%struct._reent* %0, i32 %28, %struct.__sFILE* nonnull %2) #5, !dbg !325
  %42 = icmp eq i32 %41, -1, !dbg !326
  br i1 %42, label %46, label %43, !dbg !324

; <label>:43:                                     ; preds = %37, %40
  %44 = add nuw i64 %26, 1, !dbg !327
  %45 = icmp ult i64 %44, %21, !dbg !328
  br i1 %45, label %25, label %46, !dbg !277, !llvm.loop !329

; <label>:46:                                     ; preds = %40, %43, %13, %16
  %47 = phi i32 [ -1, %16 ], [ %1, %13 ], [ -1, %40 ], [ %1, %43 ], !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #4, !dbg !332
  ret i32 %47, !dbg !332
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcrtomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_fputwc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !333 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !342
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !342
  %6 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #5, !dbg !342
  %7 = call i32 @__fputwc(%struct._reent* %0, i32 %1, %struct.__sFILE* %2) #6, !dbg !343
  %8 = load i32, i32* %4, align 4, !dbg !345, !tbaa !346
  %9 = call i32 @pthread_setcancelstate(i32 %8, i32* nonnull %4) #5, !dbg !345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !347
  ret i32 %7, !dbg !348
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @fputwc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !349 {
  %3 = alloca i32, align 4
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !359
  %5 = icmp eq %struct._reent* %4, null, !dbg !362
  br i1 %5, label %11, label %6, !dbg !362

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !362
  %8 = load i32, i32* %7, align 8, !dbg !362, !tbaa !364
  %9 = icmp eq i32 %8, 0, !dbg !362
  br i1 %9, label %10, label %11, !dbg !361

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #5, !dbg !362
  br label %11, !dbg !362

; <label>:11:                                     ; preds = %6, %2, %10
  %12 = bitcast i32* %3 to i8*, !dbg !371
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !371
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #5, !dbg !371
  %14 = call i32 @__fputwc(%struct._reent* %4, i32 %0, %struct.__sFILE* %1) #5, !dbg !372
  %15 = load i32, i32* %3, align 4, !dbg !374, !tbaa !346
  %16 = call i32 @pthread_setcancelstate(i32 %15, i32* nonnull %3) #5, !dbg !374
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !375
  ret i32 %14, !dbg !376
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputwc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 435, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!8 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!9 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!14 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!21 = !{!22, !23, !26, !28}
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 58, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !24, line: 124, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__fputwc", scope: !1, file: !1, line: 186, type: !34, isLocal: false, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !254)
!34 = !DISubroutineType(types: !35)
!35 = !{!26, !36, !250, !251}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !38, line: 569, size: 14912, elements: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !37, file: !38, line: 571, baseType: !5, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !38, line: 287, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 181, size: 1408, elements: !45)
!45 = !{!46, !48, !49, !50, !52, !53, !58, !59, !61, !69, !75, !80, !84, !85, !86, !87, !91, !95, !96, !97, !99, !100, !104, !117}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !38, line: 182, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !38, line: 183, baseType: !5, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !38, line: 184, baseType: !5, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !38, line: 185, baseType: !51, size: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !38, line: 186, baseType: !51, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !38, line: 187, baseType: !54, size: 128, offset: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 117, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !38, line: 118, baseType: !47, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !38, line: 119, baseType: !5, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !38, line: 188, baseType: !5, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !38, line: 195, baseType: !60, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !38, line: 197, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !36, !60, !68, !5}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !66, line: 145, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !38, line: 199, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!65, !36, !60, !73, !5}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !38, line: 202, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !36, !60, !79, !5}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !66, line: 114, baseType: !67)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !38, line: 203, baseType: !81, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!5, !36, !60}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !38, line: 206, baseType: !54, size: 128, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !38, line: 207, baseType: !47, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !38, line: 208, baseType: !5, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !38, line: 211, baseType: !88, size: 24, offset: 928)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 24, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !38, line: 212, baseType: !92, size: 8, offset: 952)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !38, line: 215, baseType: !54, size: 128, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !38, line: 218, baseType: !5, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !38, line: 219, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !66, line: 44, baseType: !67)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !38, line: 222, baseType: !36, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !38, line: 226, baseType: !101, size: 32, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !66, line: 175, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !103, line: 12, baseType: !5)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !38, line: 228, baseType: !105, size: 64, offset: 1312)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !66, line: 171, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 163, size: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !66, line: 165, baseType: !5, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !106, file: !66, line: 170, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !66, line: 166, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !110, file: !66, line: 168, baseType: !26, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !110, file: !66, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !38, line: 229, baseType: !5, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !37, file: !38, line: 578, baseType: !5, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !37, file: !38, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 200, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !37, file: !38, line: 582, baseType: !5, size: 32, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !37, file: !38, line: 583, baseType: !127, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !38, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !37, file: !38, line: 585, baseType: !5, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !37, file: !38, line: 587, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !36}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !37, file: !38, line: 590, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !38, line: 47, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !38, line: 49, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !136, file: !38, line: 50, baseType: !5, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !136, file: !38, line: 50, baseType: !5, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !136, file: !38, line: 50, baseType: !5, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !136, file: !38, line: 50, baseType: !5, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !136, file: !38, line: 51, baseType: !144, size: 32, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32, elements: !93)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !38, line: 25, baseType: !27)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !37, file: !38, line: 591, baseType: !5, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !37, file: !38, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !37, file: !38, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !37, file: !38, line: 596, baseType: !5, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !37, file: !38, line: 597, baseType: !68, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !37, file: !38, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !38, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !38, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !38, line: 603, baseType: !27, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !38, line: 604, baseType: !68, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !38, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !38, line: 606, baseType: !165, size: 288, offset: 352)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !38, line: 55, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !38, line: 57, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !38, line: 58, baseType: !5, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !38, line: 59, baseType: !5, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !38, line: 60, baseType: !5, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !38, line: 61, baseType: !5, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !38, line: 62, baseType: !5, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !38, line: 63, baseType: !5, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !38, line: 64, baseType: !5, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !38, line: 65, baseType: !5, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !38, line: 607, baseType: !5, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !38, line: 608, baseType: !178, size: 64, offset: 704)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !38, line: 609, baseType: !180, size: 112, offset: 768)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !38, line: 319, size: 112, elements: !181)
!181 = !{!182, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !38, line: 320, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !89)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !38, line: 321, baseType: !183, size: 48, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !38, line: 322, baseType: !184, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !38, line: 610, baseType: !105, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !38, line: 611, baseType: !105, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !38, line: 612, baseType: !105, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !38, line: 613, baseType: !191, size: 64, offset: 1088)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !38, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !38, line: 615, baseType: !5, size: 32, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !38, line: 616, baseType: !105, size: 64, offset: 1376)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !38, line: 617, baseType: !105, size: 64, offset: 1440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !38, line: 618, baseType: !105, size: 64, offset: 1504)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !38, line: 619, baseType: !105, size: 64, offset: 1568)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !38, line: 620, baseType: !105, size: 64, offset: 1632)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !38, line: 621, baseType: !5, size: 32, offset: 1696)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !38, line: 631, baseType: !206, size: 2880)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !38, line: 626, size: 2880, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !206, file: !38, line: 629, baseType: !209, size: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1920, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !206, file: !38, line: 630, baseType: !213, size: 960, offset: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 960, elements: !210)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !37, file: !38, line: 636, baseType: !215, size: 64, offset: 4032)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !38, line: 93, size: 6336, elements: !217)
!217 = !{!218, !219, !220, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !38, line: 94, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !216, file: !38, line: 95, baseType: !5, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !216, file: !38, line: 97, baseType: !221, size: 2048, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !225)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !216, file: !38, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !38, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !38, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !225)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !38, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !38, line: 78, baseType: !145, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !38, line: 81, baseType: !145, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !37, file: !38, line: 637, baseType: !216, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !37, file: !38, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !5}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !37, file: !38, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !38, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !38, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !38, line: 294, baseType: !5, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !38, line: 295, baseType: !42, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !37, file: !38, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 4224, elements: !89)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 83, baseType: !5)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !253, line: 66, baseType: !43)
!253 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!254 = !{!255, !256, !257, !258, !260, !261}
!255 = !DILocalVariable(name: "ptr", arg: 1, scope: !33, file: !1, line: 186, type: !36)
!256 = !DILocalVariable(name: "wc", arg: 2, scope: !33, file: !1, line: 186, type: !250)
!257 = !DILocalVariable(name: "fp", arg: 3, scope: !33, file: !1, line: 186, type: !251)
!258 = !DILocalVariable(name: "buf", scope: !33, file: !1, line: 191, type: !259)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !93)
!260 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 192, type: !23)
!261 = !DILocalVariable(name: "len", scope: !33, file: !1, line: 192, type: !23)
!262 = !DILocation(line: 186, column: 1, scope: !33)
!263 = !DILocation(line: 191, column: 3, scope: !33)
!264 = !DILocation(line: 191, column: 8, scope: !33)
!265 = !DILocation(line: 194, column: 7, scope: !266)
!266 = distinct !DILexicalBlock(scope: !33, file: !1, line: 194, column: 7)
!267 = !DILocation(line: 194, column: 18, scope: !266)
!268 = !DILocation(line: 194, column: 23, scope: !266)
!269 = !DILocation(line: 201, column: 14, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 195, column: 5)
!271 = !DILocation(line: 201, column: 12, scope: !270)
!272 = !{!273, !273, i64 0}
!273 = !{!"omnipotent char", !274, i64 0}
!274 = !{!"Simple C/C++ TBAA"}
!275 = !DILocation(line: 192, column: 13, scope: !33)
!276 = !DILocation(line: 192, column: 10, scope: !33)
!277 = !DILocation(line: 213, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !33, file: !1, line: 213, column: 3)
!279 = !DILocation(line: 206, column: 49, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 206, column: 11)
!281 = distinct !DILexicalBlock(scope: !266, file: !1, line: 205, column: 5)
!282 = !DILocation(line: 206, column: 18, scope: !280)
!283 = !DILocation(line: 206, column: 11, scope: !281)
!284 = !DILocation(line: 208, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 207, column: 2)
!286 = !DILocation(line: 208, column: 15, scope: !285)
!287 = !{!288, !291, i64 16}
!288 = !{!"__sFILE", !289, i64 0, !290, i64 8, !290, i64 12, !291, i64 16, !291, i64 18, !292, i64 24, !290, i64 40, !289, i64 48, !289, i64 56, !289, i64 64, !289, i64 72, !289, i64 80, !292, i64 88, !289, i64 104, !290, i64 112, !273, i64 116, !273, i64 119, !292, i64 120, !290, i64 136, !293, i64 144, !289, i64 152, !290, i64 160, !294, i64 164, !290, i64 172}
!289 = !{!"any pointer", !273, i64 0}
!290 = !{!"int", !273, i64 0}
!291 = !{!"short", !273, i64 0}
!292 = !{!"__sbuf", !289, i64 0, !290, i64 8}
!293 = !{!"long", !273, i64 0}
!294 = !{!"", !290, i64 0, !273, i64 4}
!295 = !DILocation(line: 209, column: 4, scope: !285)
!296 = !DILocation(line: 214, column: 41, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !1, line: 214, column: 9)
!298 = distinct !DILexicalBlock(scope: !278, file: !1, line: 213, column: 3)
!299 = !DILocation(line: 214, column: 25, scope: !297)
!300 = !DILocalVariable(name: "_ptr", arg: 1, scope: !301, file: !253, line: 687, type: !36)
!301 = distinct !DISubprogram(name: "__sputc_r", scope: !253, file: !253, line: 687, type: !302, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!5, !36, !5, !251}
!304 = !{!300, !305, !306}
!305 = !DILocalVariable(name: "_c", arg: 2, scope: !301, file: !253, line: 687, type: !5)
!306 = !DILocalVariable(name: "_p", arg: 3, scope: !301, file: !253, line: 687, type: !251)
!307 = !DILocation(line: 687, column: 47, scope: !301, inlinedAt: !308)
!308 = distinct !DILocation(line: 214, column: 9, scope: !297)
!309 = !DILocation(line: 687, column: 57, scope: !301, inlinedAt: !308)
!310 = !DILocation(line: 687, column: 67, scope: !301, inlinedAt: !308)
!311 = !DILocation(line: 692, column: 6, scope: !312, inlinedAt: !308)
!312 = distinct !DILexicalBlock(scope: !301, file: !253, line: 692, column: 6)
!313 = !{!288, !290, i64 12}
!314 = !DILocation(line: 692, column: 15, scope: !312, inlinedAt: !308)
!315 = !DILocation(line: 692, column: 20, scope: !312, inlinedAt: !308)
!316 = !DILocation(line: 692, column: 38, scope: !312, inlinedAt: !308)
!317 = !{!288, !290, i64 40}
!318 = !DILocation(line: 692, column: 31, scope: !312, inlinedAt: !308)
!319 = !DILocation(line: 692, column: 59, scope: !312, inlinedAt: !308)
!320 = !DILocation(line: 692, column: 47, scope: !312, inlinedAt: !308)
!321 = !DILocation(line: 693, column: 18, scope: !312, inlinedAt: !308)
!322 = !{!288, !289, i64 0}
!323 = !DILocation(line: 693, column: 21, scope: !312, inlinedAt: !308)
!324 = !DILocation(line: 214, column: 9, scope: !298)
!325 = !DILocation(line: 695, column: 11, scope: !312, inlinedAt: !308)
!326 = !DILocation(line: 214, column: 53, scope: !297)
!327 = !DILocation(line: 213, column: 25, scope: !298)
!328 = !DILocation(line: 213, column: 17, scope: !298)
!329 = distinct !{!329, !277, !330}
!330 = !DILocation(line: 215, column: 14, scope: !278)
!331 = !DILocation(line: 0, scope: !285)
!332 = !DILocation(line: 218, column: 1, scope: !33)
!333 = distinct !DISubprogram(name: "_fputwc_r", scope: !1, file: !1, line: 221, type: !34, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !334)
!334 = !{!335, !336, !337, !338, !339}
!335 = !DILocalVariable(name: "ptr", arg: 1, scope: !333, file: !1, line: 221, type: !36)
!336 = !DILocalVariable(name: "wc", arg: 2, scope: !333, file: !1, line: 221, type: !250)
!337 = !DILocalVariable(name: "fp", arg: 3, scope: !333, file: !1, line: 221, type: !251)
!338 = !DILocalVariable(name: "r", scope: !333, file: !1, line: 226, type: !26)
!339 = !DILocalVariable(name: "__oldfpcancel", scope: !340, file: !1, line: 228, type: !5)
!340 = distinct !DILexicalBlock(scope: !333, file: !1, line: 228, column: 3)
!341 = !DILocation(line: 221, column: 1, scope: !333)
!342 = !DILocation(line: 228, column: 3, scope: !340)
!343 = !DILocation(line: 230, column: 7, scope: !340)
!344 = !DILocation(line: 226, column: 10, scope: !333)
!345 = !DILocation(line: 231, column: 3, scope: !340)
!346 = !{!290, !290, i64 0}
!347 = !DILocation(line: 231, column: 3, scope: !333)
!348 = !DILocation(line: 232, column: 3, scope: !333)
!349 = distinct !DISubprogram(name: "fputwc", scope: !1, file: !1, line: 236, type: !350, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!350 = !DISubroutineType(types: !351)
!351 = !{!26, !250, !251}
!352 = !{!353, !354, !355, !356}
!353 = !DILocalVariable(name: "wc", arg: 1, scope: !349, file: !1, line: 236, type: !250)
!354 = !DILocalVariable(name: "fp", arg: 2, scope: !349, file: !1, line: 236, type: !251)
!355 = !DILocalVariable(name: "reent", scope: !349, file: !1, line: 240, type: !36)
!356 = !DILocalVariable(name: "_check_init_ptr", scope: !357, file: !1, line: 242, type: !36)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 242, column: 3)
!358 = !DILocation(line: 236, column: 1, scope: !349)
!359 = !DILocation(line: 240, column: 26, scope: !349)
!360 = !DILocation(line: 240, column: 18, scope: !349)
!361 = !DILocation(line: 242, column: 3, scope: !357)
!362 = !DILocation(line: 242, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 242, column: 3)
!364 = !{!365, !290, i64 80}
!365 = !{!"_reent", !290, i64 0, !289, i64 8, !289, i64 16, !289, i64 24, !290, i64 32, !273, i64 36, !290, i64 64, !289, i64 72, !290, i64 80, !289, i64 88, !289, i64 96, !290, i64 104, !289, i64 112, !289, i64 120, !290, i64 128, !289, i64 136, !273, i64 144, !289, i64 504, !366, i64 512, !289, i64 1304, !368, i64 1312, !273, i64 1336}
!366 = !{!"_atexit", !289, i64 0, !290, i64 8, !273, i64 16, !367, i64 272}
!367 = !{!"_on_exit_args", !273, i64 0, !273, i64 256, !290, i64 512, !290, i64 516}
!368 = !{!"_glue", !289, i64 0, !290, i64 8, !289, i64 16}
!369 = !DILocation(line: 221, column: 1, scope: !333, inlinedAt: !370)
!370 = distinct !DILocation(line: 243, column: 10, scope: !349)
!371 = !DILocation(line: 228, column: 3, scope: !340, inlinedAt: !370)
!372 = !DILocation(line: 230, column: 7, scope: !340, inlinedAt: !370)
!373 = !DILocation(line: 226, column: 10, scope: !333, inlinedAt: !370)
!374 = !DILocation(line: 231, column: 3, scope: !340, inlinedAt: !370)
!375 = !DILocation(line: 231, column: 3, scope: !333, inlinedAt: !370)
!376 = !DILocation(line: 243, column: 3, scope: !349)
