; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws.c"
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
define dso_local i32 @_fputws_r(%struct._reent*, i32*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !31 {
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  store i32* %1, i32** %4, align 8, !tbaa !270
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %7) #4, !dbg !274
  %8 = bitcast i32* %6 to i8*, !dbg !276
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !276
  %9 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !276
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !277
  %11 = load i16, i16* %10, align 8, !dbg !277, !tbaa !279
  %12 = and i16 %11, 8, !dbg !277
  %13 = icmp eq i16 %12, 0, !dbg !277
  br i1 %13, label %18, label %14, !dbg !277

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !277
  %16 = load i8*, i8** %15, align 8, !dbg !277, !tbaa !286
  %17 = icmp eq i8* %16, null, !dbg !277
  br i1 %17, label %18, label %21, !dbg !277

; <label>:18:                                     ; preds = %14, %3
  %19 = call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #5, !dbg !277
  %20 = icmp eq i32 %19, 0, !dbg !277
  br i1 %20, label %21, label %57, !dbg !287

; <label>:21:                                     ; preds = %14, %18
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 22
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %26, !dbg !288

; <label>:26:                                     ; preds = %21, %51
  %27 = call i64 @_wcsrtombs_r(%struct._reent* %0, i8* nonnull %7, i32** nonnull %4, i64 1024, %struct._mbstate_t* nonnull %22) #5, !dbg !290
  switch i64 %27, label %28 [
    i64 -1, label %57
    i64 0, label %51
  ], !dbg !292

; <label>:28:                                     ; preds = %26, %48
  %29 = phi i64 [ %49, %48 ], [ 0, %26 ]
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %29, !dbg !293
  %31 = load i8, i8* %30, align 1, !dbg !293, !tbaa !296
  %32 = sext i8 %31 to i32, !dbg !293
  %33 = load i32, i32* %23, align 4, !dbg !308, !tbaa !310
  %34 = add nsw i32 %33, -1, !dbg !308
  store i32 %34, i32* %23, align 4, !dbg !308, !tbaa !310
  %35 = icmp sgt i32 %33, 0, !dbg !311
  br i1 %35, label %42, label %36, !dbg !312

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* %25, align 8, !dbg !313, !tbaa !314
  %38 = icmp sle i32 %33, %37, !dbg !315
  %39 = and i32 %32, 255, !dbg !316
  %40 = icmp eq i32 %39, 10, !dbg !316
  %41 = or i1 %40, %38, !dbg !317
  br i1 %41, label %45, label %42, !dbg !317

; <label>:42:                                     ; preds = %36, %28
  %43 = load i8*, i8** %24, align 8, !dbg !318, !tbaa !319
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !318
  store i8* %44, i8** %24, align 8, !dbg !318, !tbaa !319
  store i8 %31, i8* %43, align 1, !dbg !320, !tbaa !296
  br label %48, !dbg !321

; <label>:45:                                     ; preds = %36
  %46 = call i32 @__swbuf_r(%struct._reent* %0, i32 %32, %struct.__sFILE* nonnull %2) #5, !dbg !322
  %47 = icmp eq i32 %46, -1, !dbg !323
  br i1 %47, label %57, label %48, !dbg !321

; <label>:48:                                     ; preds = %42, %45
  %49 = add nuw i64 %29, 1, !dbg !324
  %50 = icmp ult i64 %49, %27, !dbg !325
  br i1 %50, label %28, label %51, !dbg !326, !llvm.loop !327

; <label>:51:                                     ; preds = %48, %26
  %52 = load i32*, i32** %4, align 8, !dbg !329, !tbaa !270
  %53 = icmp eq i32* %52, null, !dbg !330
  br i1 %53, label %54, label %26, !dbg !331, !llvm.loop !332

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %6, align 4, !dbg !335, !tbaa !336
  %56 = call i32 @pthread_setcancelstate(i32 %55, i32* nonnull %6) #5, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !337
  br label %60

; <label>:57:                                     ; preds = %26, %45, %18
  %58 = load i32, i32* %6, align 4, !dbg !338, !tbaa !336
  %59 = call i32 @pthread_setcancelstate(i32 %58, i32* nonnull %6) #5, !dbg !338
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !337
  br label %60

; <label>:60:                                     ; preds = %54, %57
  %61 = phi i32 [ -1, %57 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %7) #4, !dbg !339
  ret i32 %61, !dbg !339
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcsrtombs_r(%struct._reent*, i8*, i32**, i64, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fputws(i32* noalias, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !340 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !352
  %4 = icmp eq %struct._reent* %3, null, !dbg !355
  br i1 %4, label %10, label %5, !dbg !355

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !355
  %7 = load i32, i32* %6, align 8, !dbg !355, !tbaa !357
  %8 = icmp eq i32 %7, 0, !dbg !355
  br i1 %8, label %9, label %10, !dbg !354

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #5, !dbg !355
  br label %10, !dbg !355

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = tail call i32 @_fputws_r(%struct._reent* %3, i32* %0, %struct.__sFILE* %1) #6, !dbg !362
  ret i32 %11, !dbg !363
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

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !23, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 58, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!31 = distinct !DISubprogram(name: "_fputws_r", scope: !1, file: !1, line: 121, type: !32, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !256)
!32 = !DISubroutineType(types: !33)
!33 = !{!5, !34, !250, !253}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !36, line: 569, size: 14912, elements: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !{!38, !39, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !35, file: !36, line: 571, baseType: !5, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !36, line: 287, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !36, line: 181, size: 1408, elements: !43)
!43 = !{!44, !47, !48, !49, !51, !52, !57, !58, !59, !67, !73, !78, !82, !83, !84, !85, !89, !93, !94, !95, !97, !98, !102, !117}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !42, file: !36, line: 182, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !42, file: !36, line: 183, baseType: !5, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !42, file: !36, line: 184, baseType: !5, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !36, line: 185, baseType: !50, size: 16, offset: 128)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !42, file: !36, line: 186, baseType: !50, size: 16, offset: 144)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !42, file: !36, line: 187, baseType: !53, size: 128, offset: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !36, line: 117, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !53, file: !36, line: 118, baseType: !45, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !53, file: !36, line: 119, baseType: !5, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !42, file: !36, line: 188, baseType: !5, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !42, file: !36, line: 195, baseType: !22, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !42, file: !36, line: 197, baseType: !60, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !34, !22, !66, !5}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !64, line: 145, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !36, line: 199, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!63, !34, !22, !71, !5}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !36, line: 202, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !34, !22, !77, !5}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !64, line: 114, baseType: !65)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !36, line: 203, baseType: !79, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!5, !34, !22}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !36, line: 206, baseType: !53, size: 128, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !42, file: !36, line: 207, baseType: !45, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !36, line: 208, baseType: !5, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !36, line: 211, baseType: !86, size: 24, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 24, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !36, line: 212, baseType: !90, size: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !36, line: 215, baseType: !53, size: 128, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !36, line: 218, baseType: !5, size: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !36, line: 219, baseType: !96, size: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !64, line: 44, baseType: !65)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !42, file: !36, line: 222, baseType: !34, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !36, line: 226, baseType: !99, size: 32, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !64, line: 175, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !101, line: 12, baseType: !5)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !42, file: !36, line: 228, baseType: !103, size: 64, offset: 1312)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !64, line: 171, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 163, size: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !104, file: !64, line: 165, baseType: !5, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !104, file: !64, line: 170, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !64, line: 166, size: 32, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !108, file: !64, line: 168, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !24, line: 124, baseType: !112)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !108, file: !64, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !36, line: 229, baseType: !5, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !35, file: !36, line: 576, baseType: !40, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !35, file: !36, line: 578, baseType: !5, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !35, file: !36, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 200, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !35, file: !36, line: 582, baseType: !5, size: 32, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !35, file: !36, line: 583, baseType: !127, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !36, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !35, file: !36, line: 585, baseType: !5, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !35, file: !36, line: 587, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !34}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !35, file: !36, line: 590, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !36, line: 47, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !36, line: 49, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !136, file: !36, line: 50, baseType: !5, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !136, file: !36, line: 51, baseType: !144, size: 32, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32, elements: !91)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !36, line: 25, baseType: !112)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !35, file: !36, line: 591, baseType: !5, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !35, file: !36, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !35, file: !36, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !35, file: !36, line: 596, baseType: !5, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !35, file: !36, line: 597, baseType: !66, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !35, file: !36, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !36, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !36, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !36, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !36, line: 603, baseType: !112, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !36, line: 604, baseType: !66, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !36, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !36, line: 606, baseType: !165, size: 288, offset: 352)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !36, line: 55, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !36, line: 57, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !36, line: 58, baseType: !5, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !36, line: 59, baseType: !5, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !36, line: 60, baseType: !5, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !36, line: 61, baseType: !5, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !36, line: 62, baseType: !5, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !36, line: 63, baseType: !5, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !36, line: 64, baseType: !5, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !36, line: 65, baseType: !5, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !36, line: 607, baseType: !5, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !36, line: 608, baseType: !178, size: 64, offset: 704)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !36, line: 609, baseType: !180, size: 112, offset: 768)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !36, line: 319, size: 112, elements: !181)
!181 = !{!182, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !36, line: 320, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !87)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !36, line: 321, baseType: !183, size: 48, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !36, line: 322, baseType: !184, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !36, line: 610, baseType: !103, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !36, line: 611, baseType: !103, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !36, line: 612, baseType: !103, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !36, line: 613, baseType: !191, size: 64, offset: 1088)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !36, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !36, line: 615, baseType: !5, size: 32, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !36, line: 616, baseType: !103, size: 64, offset: 1376)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !36, line: 617, baseType: !103, size: 64, offset: 1440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !36, line: 618, baseType: !103, size: 64, offset: 1504)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !36, line: 619, baseType: !103, size: 64, offset: 1568)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !36, line: 620, baseType: !103, size: 64, offset: 1632)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !36, line: 621, baseType: !5, size: 32, offset: 1696)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !36, line: 631, baseType: !206, size: 2880)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !36, line: 626, size: 2880, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !206, file: !36, line: 629, baseType: !209, size: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1920, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !206, file: !36, line: 630, baseType: !213, size: 960, offset: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 960, elements: !210)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !35, file: !36, line: 636, baseType: !215, size: 64, offset: 4032)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !36, line: 93, size: 6336, elements: !217)
!217 = !{!218, !219, !220, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !36, line: 94, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !216, file: !36, line: 95, baseType: !5, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !216, file: !36, line: 97, baseType: !221, size: 2048, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !225)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !216, file: !36, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !36, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !36, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !225)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !36, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !36, line: 78, baseType: !145, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !36, line: 81, baseType: !145, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !35, file: !36, line: 637, baseType: !216, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !35, file: !36, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !5}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !35, file: !36, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !36, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !36, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !36, line: 294, baseType: !5, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !36, line: 295, baseType: !40, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !35, file: !36, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4224, elements: !87)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 83, baseType: !5)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !255, line: 66, baseType: !41)
!255 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !{!257, !258, !259, !260, !261, !265, !267}
!257 = !DILocalVariable(name: "ptr", arg: 1, scope: !31, file: !1, line: 121, type: !34)
!258 = !DILocalVariable(name: "ws", arg: 2, scope: !31, file: !1, line: 121, type: !250)
!259 = !DILocalVariable(name: "fp", arg: 3, scope: !31, file: !1, line: 121, type: !253)
!260 = !DILocalVariable(name: "nbytes", scope: !31, file: !1, line: 126, type: !23)
!261 = !DILocalVariable(name: "buf", scope: !31, file: !1, line: 127, type: !262)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8192, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 1024)
!265 = !DILocalVariable(name: "__oldfpcancel", scope: !266, file: !1, line: 156, type: !5)
!266 = distinct !DILexicalBlock(scope: !31, file: !1, line: 156, column: 3)
!267 = !DILocalVariable(name: "i", scope: !268, file: !1, line: 163, type: !23)
!268 = distinct !DILexicalBlock(scope: !266, file: !1, line: 162, column: 5)
!269 = !DILocation(line: 121, column: 1, scope: !31)
!270 = !{!271, !271, i64 0}
!271 = !{!"any pointer", !272, i64 0}
!272 = !{!"omnipotent char", !273, i64 0}
!273 = !{!"Simple C/C++ TBAA"}
!274 = !DILocation(line: 127, column: 3, scope: !31)
!275 = !DILocation(line: 127, column: 8, scope: !31)
!276 = !DILocation(line: 156, column: 3, scope: !266)
!277 = !DILocation(line: 158, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !266, file: !1, line: 158, column: 7)
!279 = !{!280, !282, i64 16}
!280 = !{!"__sFILE", !271, i64 0, !281, i64 8, !281, i64 12, !282, i64 16, !282, i64 18, !283, i64 24, !281, i64 40, !271, i64 48, !271, i64 56, !271, i64 64, !271, i64 72, !271, i64 80, !283, i64 88, !271, i64 104, !281, i64 112, !272, i64 116, !272, i64 119, !283, i64 120, !281, i64 136, !284, i64 144, !271, i64 152, !281, i64 160, !285, i64 164, !281, i64 172}
!281 = !{!"int", !272, i64 0}
!282 = !{!"short", !272, i64 0}
!283 = !{!"__sbuf", !271, i64 0, !281, i64 8}
!284 = !{!"long", !272, i64 0}
!285 = !{!"", !281, i64 0, !272, i64 4}
!286 = !{!280, !271, i64 24}
!287 = !DILocation(line: 158, column: 7, scope: !266)
!288 = !DILocation(line: 164, column: 64, scope: !268)
!289 = !DILocation(line: 163, column: 14, scope: !268)
!290 = !DILocation(line: 164, column: 16, scope: !268)
!291 = !DILocation(line: 126, column: 10, scope: !31)
!292 = !DILocation(line: 165, column: 11, scope: !268)
!293 = !DILocation(line: 169, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 169, column: 8)
!295 = distinct !DILexicalBlock(scope: !268, file: !1, line: 168, column: 9)
!296 = !{!272, !272, i64 0}
!297 = !DILocalVariable(name: "_ptr", arg: 1, scope: !298, file: !255, line: 687, type: !34)
!298 = distinct !DISubprogram(name: "__sputc_r", scope: !255, file: !255, line: 687, type: !299, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!5, !34, !5, !253}
!301 = !{!297, !302, !303}
!302 = !DILocalVariable(name: "_c", arg: 2, scope: !298, file: !255, line: 687, type: !5)
!303 = !DILocalVariable(name: "_p", arg: 3, scope: !298, file: !255, line: 687, type: !253)
!304 = !DILocation(line: 687, column: 47, scope: !298, inlinedAt: !305)
!305 = distinct !DILocation(line: 169, column: 8, scope: !294)
!306 = !DILocation(line: 687, column: 57, scope: !298, inlinedAt: !305)
!307 = !DILocation(line: 687, column: 67, scope: !298, inlinedAt: !305)
!308 = !DILocation(line: 692, column: 6, scope: !309, inlinedAt: !305)
!309 = distinct !DILexicalBlock(scope: !298, file: !255, line: 692, column: 6)
!310 = !{!280, !281, i64 12}
!311 = !DILocation(line: 692, column: 15, scope: !309, inlinedAt: !305)
!312 = !DILocation(line: 692, column: 20, scope: !309, inlinedAt: !305)
!313 = !DILocation(line: 692, column: 38, scope: !309, inlinedAt: !305)
!314 = !{!280, !281, i64 40}
!315 = !DILocation(line: 692, column: 31, scope: !309, inlinedAt: !305)
!316 = !DILocation(line: 692, column: 59, scope: !309, inlinedAt: !305)
!317 = !DILocation(line: 692, column: 47, scope: !309, inlinedAt: !305)
!318 = !DILocation(line: 693, column: 18, scope: !309, inlinedAt: !305)
!319 = !{!280, !271, i64 0}
!320 = !DILocation(line: 693, column: 21, scope: !309, inlinedAt: !305)
!321 = !DILocation(line: 169, column: 8, scope: !295)
!322 = !DILocation(line: 695, column: 11, scope: !309, inlinedAt: !305)
!323 = !DILocation(line: 169, column: 36, scope: !294)
!324 = !DILocation(line: 171, column: 5, scope: !295)
!325 = !DILocation(line: 167, column: 16, scope: !268)
!326 = !DILocation(line: 167, column: 7, scope: !268)
!327 = distinct !{!327, !326, !328}
!328 = !DILocation(line: 172, column: 9, scope: !268)
!329 = !DILocation(line: 174, column: 10, scope: !266)
!330 = !DILocation(line: 174, column: 13, scope: !266)
!331 = !DILocation(line: 173, column: 5, scope: !268)
!332 = distinct !{!332, !333, !334}
!333 = !DILocation(line: 161, column: 3, scope: !266)
!334 = !DILocation(line: 174, column: 20, scope: !266)
!335 = !DILocation(line: 175, column: 3, scope: !266)
!336 = !{!281, !281, i64 0}
!337 = !DILocation(line: 179, column: 3, scope: !31)
!338 = !DILocation(line: 179, column: 3, scope: !266)
!339 = !DILocation(line: 182, column: 1, scope: !31)
!340 = distinct !DISubprogram(name: "fputws", scope: !1, file: !1, line: 185, type: !341, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !345)
!341 = !DISubroutineType(types: !342)
!342 = !{!5, !343, !344}
!343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !253)
!345 = !{!346, !347, !348, !349}
!346 = !DILocalVariable(name: "ws", arg: 1, scope: !340, file: !1, line: 185, type: !343)
!347 = !DILocalVariable(name: "fp", arg: 2, scope: !340, file: !1, line: 185, type: !344)
!348 = !DILocalVariable(name: "reent", scope: !340, file: !1, line: 189, type: !34)
!349 = !DILocalVariable(name: "_check_init_ptr", scope: !350, file: !1, line: 191, type: !34)
!350 = distinct !DILexicalBlock(scope: !340, file: !1, line: 191, column: 3)
!351 = !DILocation(line: 185, column: 1, scope: !340)
!352 = !DILocation(line: 189, column: 26, scope: !340)
!353 = !DILocation(line: 189, column: 18, scope: !340)
!354 = !DILocation(line: 191, column: 3, scope: !350)
!355 = !DILocation(line: 191, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !1, line: 191, column: 3)
!357 = !{!358, !281, i64 80}
!358 = !{!"_reent", !281, i64 0, !271, i64 8, !271, i64 16, !271, i64 24, !281, i64 32, !272, i64 36, !281, i64 64, !271, i64 72, !281, i64 80, !271, i64 88, !271, i64 96, !281, i64 104, !271, i64 112, !271, i64 120, !281, i64 128, !271, i64 136, !272, i64 144, !271, i64 504, !359, i64 512, !271, i64 1304, !361, i64 1312, !272, i64 1336}
!359 = !{!"_atexit", !271, i64 0, !281, i64 8, !272, i64 16, !360, i64 272}
!360 = !{!"_on_exit_args", !272, i64 0, !272, i64 256, !281, i64 512, !281, i64 516}
!361 = !{!"_glue", !271, i64 0, !281, i64 8, !271, i64 16}
!362 = !DILocation(line: 192, column: 10, scope: !340)
!363 = !DILocation(line: 192, column: 3, scope: !340)
