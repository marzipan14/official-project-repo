; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc.c"
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
define dso_local i32 @__fgetwc(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !33 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !260
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !260
  %5 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !261
  %6 = load i32, i32* %5, align 8, !dbg !261, !tbaa !263
  %7 = icmp slt i32 %6, 1, !dbg !273
  br i1 %7, label %8, label %11, !dbg !274

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !275
  %10 = icmp eq i32 %9, 0, !dbg !275
  br i1 %10, label %11, label %49, !dbg !276

; <label>:11:                                     ; preds = %8, %2
  %12 = tail call i32 @__locale_mb_cur_max() #5, !dbg !277
  %13 = icmp eq i32 %12, 1, !dbg !279
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  br i1 %13, label %17, label %15, !dbg !280

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 22
  br label %24, !dbg !281

; <label>:17:                                     ; preds = %11
  %18 = load i8*, i8** %14, align 8, !dbg !283, !tbaa !285
  %19 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !283
  store i8* %19, i8** %14, align 8, !dbg !283, !tbaa !285
  %20 = load i8, i8* %18, align 1, !dbg !286, !tbaa !287
  %21 = zext i8 %20 to i32, !dbg !286
  store i32 %21, i32* %3, align 4, !dbg !289, !tbaa !290
  %22 = load i32, i32* %5, align 8, !dbg !291, !tbaa !263
  %23 = add nsw i32 %22, -1, !dbg !291
  store i32 %23, i32* %5, align 8, !dbg !291, !tbaa !263
  br label %49, !dbg !292

; <label>:24:                                     ; preds = %15, %41
  %25 = load i8*, i8** %14, align 8, !dbg !281, !tbaa !285
  %26 = load i32, i32* %5, align 8, !dbg !293, !tbaa !263
  %27 = sext i32 %26 to i64, !dbg !294
  %28 = call i64 @_mbrtowc_r(%struct._reent* %0, i32* nonnull %3, i8* %25, i64 %27, %struct._mbstate_t* nonnull %16) #5, !dbg !295
  switch i64 %28, label %34 [
    i64 -1, label %44
    i64 -2, label %41
    i64 0, label %29
  ], !dbg !297

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %14, align 8, !dbg !298, !tbaa !285
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !298
  store i8* %31, i8** %14, align 8, !dbg !298, !tbaa !285
  %32 = load i32, i32* %5, align 8, !dbg !303, !tbaa !263
  %33 = add nsw i32 %32, -1, !dbg !303
  store i32 %33, i32* %5, align 8, !dbg !303, !tbaa !263
  br label %49, !dbg !304

; <label>:34:                                     ; preds = %24
  %35 = load i8*, i8** %14, align 8, !dbg !305, !tbaa !285
  %36 = getelementptr inbounds i8, i8* %35, i64 %28, !dbg !305
  store i8* %36, i8** %14, align 8, !dbg !305, !tbaa !285
  %37 = load i32, i32* %5, align 8, !dbg !307, !tbaa !263
  %38 = trunc i64 %28 to i32, !dbg !307
  %39 = sub i32 %37, %38, !dbg !307
  store i32 %39, i32* %5, align 8, !dbg !307, !tbaa !263
  %40 = load i32, i32* %3, align 4, !dbg !308, !tbaa !290
  br label %49, !dbg !309

; <label>:41:                                     ; preds = %24
  %42 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #5, !dbg !310
  %43 = icmp eq i32 %42, 0, !dbg !311
  br i1 %43, label %24, label %44, !dbg !312, !llvm.loop !313

; <label>:44:                                     ; preds = %24, %41
  %45 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !316
  %46 = load i16, i16* %45, align 8, !dbg !317, !tbaa !318
  %47 = or i16 %46, 64, !dbg !317
  store i16 %47, i16* %45, align 8, !dbg !317, !tbaa !318
  %48 = call i32* @__errno() #5, !dbg !319
  store i32 138, i32* %48, align 4, !dbg !320, !tbaa !290
  br label %49, !dbg !321

; <label>:49:                                     ; preds = %8, %44, %34, %29, %17
  %50 = phi i32 [ %21, %17 ], [ -1, %44 ], [ 0, %29 ], [ %40, %34 ], [ -1, %8 ], !dbg !322
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !323
  ret i32 %50, !dbg !323
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @_mbrtowc_r(%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @_fgetwc_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !324 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4, !dbg !332
  %5 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #5, !dbg !332
  %6 = call i32 @__fgetwc(%struct._reent* %0, %struct.__sFILE* %1) #6, !dbg !333
  %7 = load i32, i32* %3, align 4, !dbg !335, !tbaa !290
  %8 = call i32 @pthread_setcancelstate(i32 %7, i32* nonnull %3) #5, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4, !dbg !336
  ret i32 %6, !dbg !337
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fgetwc(%struct.__sFILE*) local_unnamed_addr #0 !dbg !338 {
  %2 = alloca i32, align 4
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !347
  %4 = icmp eq %struct._reent* %3, null, !dbg !350
  br i1 %4, label %10, label %5, !dbg !350

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !350
  %7 = load i32, i32* %6, align 8, !dbg !350, !tbaa !352
  %8 = icmp eq i32 %7, 0, !dbg !350
  br i1 %8, label %9, label %10, !dbg !349

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #5, !dbg !350
  br label %10, !dbg !350

; <label>:10:                                     ; preds = %5, %1, %9
  %11 = bitcast i32* %2 to i8*, !dbg !359
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4, !dbg !359
  %12 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %2) #5, !dbg !359
  %13 = call i32 @__fgetwc(%struct._reent* %3, %struct.__sFILE* %0) #5, !dbg !360
  %14 = load i32, i32* %2, align 4, !dbg !362, !tbaa !290
  %15 = call i32 @pthread_setcancelstate(i32 %14, i32* nonnull %2) #5, !dbg !362
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4, !dbg !363
  ret i32 %13, !dbg !364
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !23, line: 124, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 58, baseType: !28)
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "__fgetwc", scope: !1, file: !1, line: 175, type: !34, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!34 = !DISubroutineType(types: !35)
!35 = !{!22, !36, !250}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !38, line: 569, size: 14912, elements: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !37, file: !38, line: 571, baseType: !5, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !38, line: 287, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 181, size: 1408, elements: !45)
!45 = !{!46, !49, !50, !51, !53, !54, !59, !60, !62, !69, !75, !80, !84, !85, !86, !87, !91, !95, !96, !97, !99, !100, !104, !117}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !38, line: 182, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !38, line: 183, baseType: !5, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !38, line: 184, baseType: !5, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !38, line: 185, baseType: !52, size: 16, offset: 128)
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !38, line: 186, baseType: !52, size: 16, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !38, line: 187, baseType: !55, size: 128, offset: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 117, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !55, file: !38, line: 118, baseType: !47, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !55, file: !38, line: 119, baseType: !5, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !38, line: 188, baseType: !5, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !38, line: 195, baseType: !61, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !38, line: 197, baseType: !63, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !36, !61, !25, !5}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !67, line: 145, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !38, line: 199, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!66, !36, !61, !73, !5}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !38, line: 202, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !36, !61, !79, !5}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !67, line: 114, baseType: !68)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !38, line: 203, baseType: !81, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!5, !36, !61}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !38, line: 206, baseType: !55, size: 128, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !38, line: 207, baseType: !47, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !38, line: 208, baseType: !5, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !38, line: 211, baseType: !88, size: 24, offset: 928)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 24, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !38, line: 212, baseType: !92, size: 8, offset: 952)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !38, line: 215, baseType: !55, size: 128, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !38, line: 218, baseType: !5, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !38, line: 219, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !67, line: 44, baseType: !68)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !38, line: 222, baseType: !36, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !38, line: 226, baseType: !101, size: 32, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !67, line: 175, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !103, line: 12, baseType: !5)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !38, line: 228, baseType: !105, size: 64, offset: 1312)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !67, line: 171, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 163, size: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !67, line: 165, baseType: !5, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !106, file: !67, line: 170, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !67, line: 166, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !110, file: !67, line: 168, baseType: !22, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !110, file: !67, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !38, line: 229, baseType: !5, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !37, file: !38, line: 578, baseType: !5, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !37, file: !38, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 200, elements: !123)
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
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !38, line: 25, baseType: !24)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !37, file: !38, line: 591, baseType: !5, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !37, file: !38, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !37, file: !38, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !37, file: !38, line: 596, baseType: !5, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !37, file: !38, line: 597, baseType: !25, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !37, file: !38, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !38, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !38, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !38, line: 603, baseType: !24, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !38, line: 604, baseType: !25, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !38, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 208, elements: !162)
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
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !38, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !196)
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
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 960, elements: !210)
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
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !225)
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
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !252, line: 66, baseType: !43)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !{!254, !255, !256, !258}
!254 = !DILocalVariable(name: "ptr", arg: 1, scope: !33, file: !1, line: 175, type: !36)
!255 = !DILocalVariable(name: "fp", arg: 2, scope: !33, file: !1, line: 175, type: !250)
!256 = !DILocalVariable(name: "wc", scope: !33, file: !1, line: 179, type: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !23, line: 83, baseType: !5)
!258 = !DILocalVariable(name: "nconv", scope: !33, file: !1, line: 180, type: !27)
!259 = !DILocation(line: 175, column: 1, scope: !33)
!260 = !DILocation(line: 179, column: 3, scope: !33)
!261 = !DILocation(line: 182, column: 11, scope: !262)
!262 = distinct !DILexicalBlock(scope: !33, file: !1, line: 182, column: 7)
!263 = !{!264, !268, i64 8}
!264 = !{!"__sFILE", !265, i64 0, !268, i64 8, !268, i64 12, !269, i64 16, !269, i64 18, !270, i64 24, !268, i64 40, !265, i64 48, !265, i64 56, !265, i64 64, !265, i64 72, !265, i64 80, !270, i64 88, !265, i64 104, !268, i64 112, !266, i64 116, !266, i64 119, !270, i64 120, !268, i64 136, !271, i64 144, !265, i64 152, !268, i64 160, !272, i64 164, !268, i64 172}
!265 = !{!"any pointer", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !{!"int", !266, i64 0}
!269 = !{!"short", !266, i64 0}
!270 = !{!"__sbuf", !265, i64 0, !268, i64 8}
!271 = !{!"long", !266, i64 0}
!272 = !{!"", !268, i64 0, !266, i64 4}
!273 = !DILocation(line: 182, column: 14, scope: !262)
!274 = !DILocation(line: 182, column: 19, scope: !262)
!275 = !DILocation(line: 182, column: 22, scope: !262)
!276 = !DILocation(line: 182, column: 7, scope: !33)
!277 = !DILocation(line: 184, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !33, file: !1, line: 184, column: 7)
!279 = !DILocation(line: 184, column: 18, scope: !278)
!280 = !DILocation(line: 184, column: 7, scope: !33)
!281 = !DILocation(line: 193, column: 50, scope: !282)
!282 = distinct !DILexicalBlock(scope: !33, file: !1, line: 192, column: 5)
!283 = !DILocation(line: 187, column: 19, scope: !284)
!284 = distinct !DILexicalBlock(scope: !278, file: !1, line: 185, column: 5)
!285 = !{!264, !265, i64 0}
!286 = !DILocation(line: 187, column: 12, scope: !284)
!287 = !{!266, !266, i64 0}
!288 = !DILocation(line: 179, column: 11, scope: !33)
!289 = !DILocation(line: 187, column: 10, scope: !284)
!290 = !{!268, !268, i64 0}
!291 = !DILocation(line: 188, column: 13, scope: !284)
!292 = !DILocation(line: 189, column: 7, scope: !284)
!293 = !DILocation(line: 193, column: 58, scope: !282)
!294 = !DILocation(line: 193, column: 54, scope: !282)
!295 = !DILocation(line: 193, column: 15, scope: !282)
!296 = !DILocation(line: 180, column: 10, scope: !33)
!297 = !DILocation(line: 194, column: 11, scope: !282)
!298 = !DILocation(line: 204, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 199, column: 2)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 198, column: 16)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 196, column: 16)
!302 = distinct !DILexicalBlock(scope: !282, file: !1, line: 194, column: 11)
!303 = !DILocation(line: 205, column: 10, scope: !299)
!304 = !DILocation(line: 206, column: 4, scope: !299)
!305 = !DILocation(line: 210, column: 11, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !1, line: 209, column: 9)
!307 = !DILocation(line: 211, column: 11, scope: !306)
!308 = !DILocation(line: 212, column: 12, scope: !306)
!309 = !DILocation(line: 212, column: 4, scope: !306)
!310 = !DILocation(line: 215, column: 10, scope: !33)
!311 = !DILocation(line: 215, column: 31, scope: !33)
!312 = !DILocation(line: 214, column: 5, scope: !282)
!313 = distinct !{!313, !314, !315}
!314 = !DILocation(line: 191, column: 3, scope: !33)
!315 = !DILocation(line: 215, column: 35, scope: !33)
!316 = !DILocation(line: 216, column: 7, scope: !33)
!317 = !DILocation(line: 216, column: 14, scope: !33)
!318 = !{!264, !269, i64 16}
!319 = !DILocation(line: 217, column: 3, scope: !33)
!320 = !DILocation(line: 217, column: 9, scope: !33)
!321 = !DILocation(line: 218, column: 3, scope: !33)
!322 = !DILocation(line: 0, scope: !306)
!323 = !DILocation(line: 219, column: 1, scope: !33)
!324 = distinct !DISubprogram(name: "_fgetwc_r", scope: !1, file: !1, line: 222, type: !34, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !325)
!325 = !{!326, !327, !328, !329}
!326 = !DILocalVariable(name: "ptr", arg: 1, scope: !324, file: !1, line: 222, type: !36)
!327 = !DILocalVariable(name: "fp", arg: 2, scope: !324, file: !1, line: 222, type: !250)
!328 = !DILocalVariable(name: "r", scope: !324, file: !1, line: 226, type: !22)
!329 = !DILocalVariable(name: "__oldfpcancel", scope: !330, file: !1, line: 228, type: !5)
!330 = distinct !DILexicalBlock(scope: !324, file: !1, line: 228, column: 3)
!331 = !DILocation(line: 222, column: 1, scope: !324)
!332 = !DILocation(line: 228, column: 3, scope: !330)
!333 = !DILocation(line: 230, column: 7, scope: !330)
!334 = !DILocation(line: 226, column: 10, scope: !324)
!335 = !DILocation(line: 231, column: 3, scope: !330)
!336 = !DILocation(line: 231, column: 3, scope: !324)
!337 = !DILocation(line: 232, column: 3, scope: !324)
!338 = distinct !DISubprogram(name: "fgetwc", scope: !1, file: !1, line: 236, type: !339, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!22, !250}
!341 = !{!342, !343, !344}
!342 = !DILocalVariable(name: "fp", arg: 1, scope: !338, file: !1, line: 236, type: !250)
!343 = !DILocalVariable(name: "reent", scope: !338, file: !1, line: 239, type: !36)
!344 = !DILocalVariable(name: "_check_init_ptr", scope: !345, file: !1, line: 241, type: !36)
!345 = distinct !DILexicalBlock(scope: !338, file: !1, line: 241, column: 3)
!346 = !DILocation(line: 236, column: 1, scope: !338)
!347 = !DILocation(line: 239, column: 26, scope: !338)
!348 = !DILocation(line: 239, column: 18, scope: !338)
!349 = !DILocation(line: 241, column: 3, scope: !345)
!350 = !DILocation(line: 241, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !345, file: !1, line: 241, column: 3)
!352 = !{!353, !268, i64 80}
!353 = !{!"_reent", !268, i64 0, !265, i64 8, !265, i64 16, !265, i64 24, !268, i64 32, !266, i64 36, !268, i64 64, !265, i64 72, !268, i64 80, !265, i64 88, !265, i64 96, !268, i64 104, !265, i64 112, !265, i64 120, !268, i64 128, !265, i64 136, !266, i64 144, !265, i64 504, !354, i64 512, !265, i64 1304, !356, i64 1312, !266, i64 1336}
!354 = !{!"_atexit", !265, i64 0, !268, i64 8, !266, i64 16, !355, i64 272}
!355 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !268, i64 512, !268, i64 516}
!356 = !{!"_glue", !265, i64 0, !268, i64 8, !265, i64 16}
!357 = !DILocation(line: 222, column: 1, scope: !324, inlinedAt: !358)
!358 = distinct !DILocation(line: 242, column: 10, scope: !338)
!359 = !DILocation(line: 228, column: 3, scope: !330, inlinedAt: !358)
!360 = !DILocation(line: 230, column: 7, scope: !330, inlinedAt: !358)
!361 = !DILocation(line: 226, column: 10, scope: !324, inlinedAt: !358)
!362 = !DILocation(line: 231, column: 3, scope: !330, inlinedAt: !358)
!363 = !DILocation(line: 231, column: 3, scope: !324, inlinedAt: !358)
!364 = !DILocation(line: 242, column: 3, scope: !338)
