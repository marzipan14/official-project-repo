; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @_fgetws_r(%struct._reent*, i32*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !36 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = bitcast i8** %5 to i8*, !dbg !269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !269
  %8 = bitcast i32* %6 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #4, !dbg !270
  %9 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !270
  %10 = icmp slt i32 %2, 1, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %10, label %11, label %13, !dbg !273

; <label>:11:                                     ; preds = %4
  %12 = call i32* @__errno() #5, !dbg !274
  store i32 22, i32* %12, align 4, !dbg !276, !tbaa !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br label %89, !dbg !281

; <label>:13:                                     ; preds = %4
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 1, !dbg !282
  %15 = load i32, i32* %14, align 8, !dbg !282, !tbaa !284
  %16 = icmp slt i32 %15, 1, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %16, label %17, label %20, !dbg !292

; <label>:17:                                     ; preds = %13
  %18 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #5, !dbg !293
  %19 = icmp eq i32 %18, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br i1 %19, label %20, label %89, !dbg !294

; <label>:20:                                     ; preds = %17, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 0
  %22 = bitcast %struct.__sFILE* %3 to i64*
  %23 = bitcast i8** %5 to i64*
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 22
  br label %25, !dbg !296

; <label>:25:                                     ; preds = %80, %20
  %26 = phi i32 [ %2, %20 ], [ %68, %80 ]
  %27 = phi i32* [ %1, %20 ], [ %69, %80 ], !dbg !297
  %28 = load i64, i64* %22, align 8, !dbg !299, !tbaa !300
  store i64 %28, i64* %23, align 8, !dbg !302, !tbaa !303
  %29 = inttoptr i64 %28 to i8*, !dbg !304
  %30 = load i32, i32* %14, align 8, !dbg !305, !tbaa !284
  %31 = sext i32 %30 to i64, !dbg !306
  %32 = call i8* @memchr(i8* %29, i32 10, i64 %31) #5, !dbg !307
  %33 = icmp eq i8* %32, null, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %33, label %39, label %34, !dbg !310

; <label>:34:                                     ; preds = %25
  %35 = load i64, i64* %22, align 8, !dbg !311, !tbaa !300
  %36 = ptrtoint i8* %32 to i64, !dbg !312
  %37 = add i64 %36, 1, !dbg !312
  %38 = sub i64 %37, %35, !dbg !313
  br label %42, !dbg !310

; <label>:39:                                     ; preds = %25
  %40 = load i32, i32* %14, align 8, !dbg !314, !tbaa !284
  %41 = sext i32 %40 to i64, !dbg !315
  br label %42, !dbg !310

; <label>:42:                                     ; preds = %39, %34
  %43 = phi i64 [ %38, %34 ], [ %41, %39 ], !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  %44 = add nsw i32 %26, -1, !dbg !316
  %45 = sext i32 %44 to i64, !dbg !317
  %46 = call i64 @_mbsnrtowcs_r(%struct._reent* %0, i32* %27, i8** nonnull %5, i64 %43, i64 %45, %struct._mbstate_t* nonnull %24) #5, !dbg !318
  %47 = icmp eq i64 %46, -1, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %47, label %89, label %48, !dbg !322

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %5, align 8, !dbg !323, !tbaa !303
  %50 = icmp eq i8* %49, null, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %50, label %51, label %58, !dbg !326

; <label>:51:                                     ; preds = %48
  %52 = add i64 %46, 1, !dbg !327
  %53 = load i8*, i8** %21, align 8, !dbg !329, !tbaa !300
  %54 = load i32, i32* %14, align 8, !dbg !330, !tbaa !284
  %55 = sext i32 %54 to i64, !dbg !331
  %56 = call i8* @memchr(i8* %53, i32 0, i64 %55) #5, !dbg !332
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !333
  store i8* %57, i8** %5, align 8, !dbg !333, !tbaa !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br label %58, !dbg !334

; <label>:58:                                     ; preds = %51, %48
  %59 = phi i8* [ %57, %51 ], [ %49, %48 ]
  %60 = phi i64 [ %52, %51 ], [ %46, %48 ], !dbg !297
  %61 = ptrtoint i8* %59 to i64, !dbg !335
  %62 = load i64, i64* %22, align 8, !dbg !336, !tbaa !300
  %63 = load i32, i32* %14, align 8, !dbg !337, !tbaa !284
  %64 = sub i64 %62, %61, !dbg !337
  %65 = trunc i64 %64 to i32, !dbg !337
  %66 = add i32 %63, %65, !dbg !337
  store i32 %66, i32* %14, align 8, !dbg !337, !tbaa !284
  store i64 %61, i64* %22, align 8, !dbg !338, !tbaa !300
  %67 = trunc i64 %60 to i32, !dbg !339
  %68 = sub i32 %26, %67, !dbg !339
  %69 = getelementptr inbounds i32, i32* %27, i64 %60, !dbg !340
  %70 = getelementptr inbounds i32, i32* %69, i64 -1, !dbg !341
  %71 = load i32, i32* %70, align 4, !dbg !341, !tbaa !277
  %72 = icmp ne i32 %71, 10, !dbg !342
  %73 = icmp sgt i32 %68, 1, !dbg !343
  %74 = and i1 %73, %72, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %74, label %75, label %81, !dbg !344

; <label>:75:                                     ; preds = %58
  %76 = icmp sgt i32 %66, 0, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %76, label %80, label %77, !dbg !346

; <label>:77:                                     ; preds = %75
  %78 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #5, !dbg !347
  %79 = icmp eq i32 %78, 0, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %79, label %80, label %81, !dbg !349

; <label>:80:                                     ; preds = %77, %75
  br label %25, !dbg !295, !llvm.loop !350

; <label>:81:                                     ; preds = %58, %77
  %82 = icmp eq i32* %69, %1, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %82, label %89, label %83, !dbg !354

; <label>:83:                                     ; preds = %81
  %84 = call i32 @mbsinit(%struct._mbstate_t* nonnull %24) #5, !dbg !355
  %85 = icmp eq i32 %84, 0, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br i1 %85, label %89, label %86, !dbg !357

; <label>:86:                                     ; preds = %83
  store i32 0, i32* %69, align 4, !dbg !358, !tbaa !277
  %87 = load i32, i32* %6, align 4, !dbg !359, !tbaa !277
  %88 = call i32 @pthread_setcancelstate(i32 %87, i32* nonnull %6) #5, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !361
  br label %92

; <label>:89:                                     ; preds = %42, %17, %83, %81, %11
  %90 = load i32, i32* %6, align 4, !dbg !362, !tbaa !277
  %91 = call i32 @pthread_setcancelstate(i32 %90, i32* nonnull %6) #5, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %92, !dbg !363

; <label>:92:                                     ; preds = %86, %89
  %93 = phi i32* [ null, %89 ], [ %1, %86 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  ret i32* %93, !dbg !364
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @_mbsnrtowcs_r(%struct._reent*, i32*, i8**, i64, i64, %struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @mbsinit(%struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32* @fgetws(i32* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !365 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !378
  %5 = icmp eq %struct._reent* %4, null, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %5, label %11, label %6, !dbg !381

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !381
  %8 = load i32, i32* %7, align 8, !dbg !381, !tbaa !383
  %9 = icmp eq i32 %8, 0, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %9, label %10, label %11, !dbg !380

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #5, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br label %11, !dbg !381

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = tail call i32* @_fgetws_r(%struct._reent* %4, i32* %0, i32 %1, %struct.__sFILE* %2) #6, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  ret i32* %12, !dbg !389
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

!llvm.module.flags = !{!32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !24, !25, !30}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !28, line: 129, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{i32 2, !"Dwarf Version", i32 4}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!36 = distinct !DISubprogram(name: "_fgetws_r", scope: !1, file: !1, line: 130, type: !37, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !257)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !42, !39, !5, !254}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !41, line: 83, baseType: !5)
!41 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !44, line: 569, size: 14912, elements: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !{!46, !47, !122, !123, !124, !125, !129, !130, !133, !134, !138, !150, !151, !152, !154, !155, !156, !218, !239, !240, !245, !252}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !43, file: !44, line: 571, baseType: !5, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !43, file: !44, line: 576, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !44, line: 287, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !44, line: 181, size: 1408, elements: !51)
!51 = !{!52, !53, !54, !55, !57, !58, !63, !64, !65, !71, !77, !82, !86, !87, !88, !89, !93, !97, !98, !99, !101, !102, !106, !121}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !50, file: !44, line: 182, baseType: !30, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !50, file: !44, line: 183, baseType: !5, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !50, file: !44, line: 184, baseType: !5, size: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !44, line: 185, baseType: !56, size: 16, offset: 128)
!56 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !50, file: !44, line: 186, baseType: !56, size: 16, offset: 144)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !50, file: !44, line: 187, baseType: !59, size: 128, offset: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !44, line: 117, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !59, file: !44, line: 118, baseType: !30, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !59, file: !44, line: 119, baseType: !5, size: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !50, file: !44, line: 188, baseType: !5, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !50, file: !44, line: 195, baseType: !24, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !50, file: !44, line: 197, baseType: !66, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !42, !24, !22, !5}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !28, line: 145, baseType: !70)
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !50, file: !44, line: 199, baseType: !72, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!69, !42, !24, !75, !5}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !50, file: !44, line: 202, baseType: !78, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !42, !24, !81, !5}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !28, line: 114, baseType: !70)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !50, file: !44, line: 203, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!5, !42, !24}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !50, file: !44, line: 206, baseType: !59, size: 128, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !50, file: !44, line: 207, baseType: !30, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !50, file: !44, line: 208, baseType: !5, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !50, file: !44, line: 211, baseType: !90, size: 24, offset: 928)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !50, file: !44, line: 212, baseType: !94, size: 8, offset: 952)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !50, file: !44, line: 215, baseType: !59, size: 128, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !50, file: !44, line: 218, baseType: !5, size: 32, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !44, line: 219, baseType: !100, size: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !28, line: 44, baseType: !70)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !50, file: !44, line: 222, baseType: !42, size: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !44, line: 226, baseType: !103, size: 32, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !28, line: 175, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !105, line: 12, baseType: !5)
!105 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !50, file: !44, line: 228, baseType: !107, size: 64, offset: 1312)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !28, line: 171, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 163, size: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !108, file: !28, line: 165, baseType: !5, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !108, file: !28, line: 170, baseType: !112, size: 32, offset: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !28, line: 166, size: 32, elements: !113)
!113 = !{!114, !117}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !112, file: !28, line: 168, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !41, line: 124, baseType: !116)
!116 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !112, file: !28, line: 169, baseType: !118, size: 32)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 4)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !44, line: 229, baseType: !5, size: 32, offset: 1376)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !43, file: !44, line: 576, baseType: !48, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !43, file: !44, line: 576, baseType: !48, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !43, file: !44, line: 578, baseType: !5, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !43, file: !44, line: 579, baseType: !126, size: 200, offset: 288)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 200, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 25)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !43, file: !44, line: 582, baseType: !5, size: 32, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !43, file: !44, line: 583, baseType: !131, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !44, line: 40, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !43, file: !44, line: 585, baseType: !5, size: 32, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !43, file: !44, line: 587, baseType: !135, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !42}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !43, file: !44, line: 590, baseType: !139, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !44, line: 47, size: 256, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !140, file: !44, line: 49, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !140, file: !44, line: 50, baseType: !5, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !140, file: !44, line: 50, baseType: !5, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !140, file: !44, line: 50, baseType: !5, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !140, file: !44, line: 50, baseType: !5, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !140, file: !44, line: 51, baseType: !148, size: 32, offset: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32, elements: !95)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !44, line: 25, baseType: !116)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !43, file: !44, line: 591, baseType: !5, size: 32, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !43, file: !44, line: 592, baseType: !139, size: 64, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !43, file: !44, line: 593, baseType: !153, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !43, file: !44, line: 596, baseType: !5, size: 32, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !43, file: !44, line: 597, baseType: !22, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !43, file: !44, line: 632, baseType: !157, size: 2880, offset: 1152)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !44, line: 599, size: 2880, elements: !158)
!158 = !{!159, !209}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !157, file: !44, line: 622, baseType: !160, size: 1728)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !44, line: 601, size: 1728, elements: !161)
!161 = !{!162, !163, !164, !168, !180, !181, !183, !191, !192, !193, !194, !198, !202, !203, !204, !205, !206, !207, !208}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !160, file: !44, line: 603, baseType: !116, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !160, file: !44, line: 604, baseType: !22, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !160, file: !44, line: 605, baseType: !165, size: 208, offset: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 208, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 26)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !160, file: !44, line: 606, baseType: !169, size: 288, offset: 352)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !44, line: 55, size: 288, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !169, file: !44, line: 57, baseType: !5, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !169, file: !44, line: 58, baseType: !5, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !169, file: !44, line: 59, baseType: !5, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !169, file: !44, line: 60, baseType: !5, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !169, file: !44, line: 61, baseType: !5, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !169, file: !44, line: 62, baseType: !5, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !169, file: !44, line: 63, baseType: !5, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !169, file: !44, line: 64, baseType: !5, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !169, file: !44, line: 65, baseType: !5, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !160, file: !44, line: 607, baseType: !5, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !160, file: !44, line: 608, baseType: !182, size: 64, offset: 704)
!182 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !160, file: !44, line: 609, baseType: !184, size: 112, offset: 768)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !44, line: 319, size: 112, elements: !185)
!185 = !{!186, !189, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !184, file: !44, line: 320, baseType: !187, size: 48)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !91)
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !184, file: !44, line: 321, baseType: !187, size: 48, offset: 48)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !184, file: !44, line: 322, baseType: !188, size: 16, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !160, file: !44, line: 610, baseType: !107, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !160, file: !44, line: 611, baseType: !107, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !160, file: !44, line: 612, baseType: !107, size: 64, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !160, file: !44, line: 613, baseType: !195, size: 64, offset: 1088)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !160, file: !44, line: 614, baseType: !199, size: 192, offset: 1152)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 24)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !160, file: !44, line: 615, baseType: !5, size: 32, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !160, file: !44, line: 616, baseType: !107, size: 64, offset: 1376)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !160, file: !44, line: 617, baseType: !107, size: 64, offset: 1440)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !160, file: !44, line: 618, baseType: !107, size: 64, offset: 1504)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !160, file: !44, line: 619, baseType: !107, size: 64, offset: 1568)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !160, file: !44, line: 620, baseType: !107, size: 64, offset: 1632)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !160, file: !44, line: 621, baseType: !5, size: 32, offset: 1696)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !157, file: !44, line: 631, baseType: !210, size: 2880)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !44, line: 626, size: 2880, elements: !211)
!211 = !{!212, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !210, file: !44, line: 629, baseType: !213, size: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 30)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !210, file: !44, line: 630, baseType: !217, size: 960, offset: 1920)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 960, elements: !214)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !43, file: !44, line: 636, baseType: !219, size: 64, offset: 4032)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !44, line: 93, size: 6336, elements: !221)
!221 = !{!222, !223, !224, !231}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !220, file: !44, line: 94, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !220, file: !44, line: 95, baseType: !5, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !220, file: !44, line: 97, baseType: !225, size: 2048, offset: 128)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !{!230}
!230 = !DISubrange(count: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !220, file: !44, line: 98, baseType: !232, size: 4160, offset: 2176)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !44, line: 74, size: 4160, elements: !233)
!233 = !{!234, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !232, file: !44, line: 75, baseType: !235, size: 2048)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !229)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !232, file: !44, line: 76, baseType: !235, size: 2048, offset: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !232, file: !44, line: 78, baseType: !149, size: 32, offset: 4096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !232, file: !44, line: 81, baseType: !149, size: 32, offset: 4128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !43, file: !44, line: 637, baseType: !220, size: 6336, offset: 4096)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !43, file: !44, line: 641, baseType: !241, size: 64, offset: 10432)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !5}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !43, file: !44, line: 646, baseType: !246, size: 192, offset: 10496)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !44, line: 291, size: 192, elements: !247)
!247 = !{!248, !250, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !246, file: !44, line: 293, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !246, file: !44, line: 294, baseType: !5, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !246, file: !44, line: 295, baseType: !48, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !43, file: !44, line: 648, baseType: !253, size: 4224, offset: 10688)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 4224, elements: !91)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !256, line: 66, baseType: !49)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266}
!258 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 130, type: !42)
!259 = !DILocalVariable(name: "ws", arg: 2, scope: !36, file: !1, line: 130, type: !39)
!260 = !DILocalVariable(name: "n", arg: 3, scope: !36, file: !1, line: 130, type: !5)
!261 = !DILocalVariable(name: "fp", arg: 4, scope: !36, file: !1, line: 130, type: !254)
!262 = !DILocalVariable(name: "wsp", scope: !36, file: !1, line: 136, type: !39)
!263 = !DILocalVariable(name: "nconv", scope: !36, file: !1, line: 137, type: !25)
!264 = !DILocalVariable(name: "src", scope: !36, file: !1, line: 138, type: !75)
!265 = !DILocalVariable(name: "nl", scope: !36, file: !1, line: 139, type: !30)
!266 = !DILocalVariable(name: "__oldfpcancel", scope: !267, file: !1, line: 141, type: !5)
!267 = distinct !DILexicalBlock(scope: !36, file: !1, line: 141, column: 3)
!268 = !DILocation(line: 130, column: 1, scope: !36)
!269 = !DILocation(line: 138, column: 3, scope: !36)
!270 = !DILocation(line: 141, column: 3, scope: !267)
!271 = !DILocation(line: 144, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 144, column: 7)
!273 = !DILocation(line: 144, column: 7, scope: !267)
!274 = !DILocation(line: 146, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !1, line: 145, column: 5)
!276 = !DILocation(line: 146, column: 13, scope: !275)
!277 = !{!278, !278, i64 0}
!278 = !{!"int", !279, i64 0}
!279 = !{!"omnipotent char", !280, i64 0}
!280 = !{!"Simple C/C++ TBAA"}
!281 = !DILocation(line: 147, column: 7, scope: !275)
!282 = !DILocation(line: 150, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !267, file: !1, line: 150, column: 7)
!284 = !{!285, !278, i64 8}
!285 = !{!"__sFILE", !286, i64 0, !278, i64 8, !278, i64 12, !287, i64 16, !287, i64 18, !288, i64 24, !278, i64 40, !286, i64 48, !286, i64 56, !286, i64 64, !286, i64 72, !286, i64 80, !288, i64 88, !286, i64 104, !278, i64 112, !279, i64 116, !279, i64 119, !288, i64 120, !278, i64 136, !289, i64 144, !286, i64 152, !278, i64 160, !290, i64 164, !278, i64 172}
!286 = !{!"any pointer", !279, i64 0}
!287 = !{!"short", !279, i64 0}
!288 = !{!"__sbuf", !286, i64 0, !278, i64 8}
!289 = !{!"long", !279, i64 0}
!290 = !{!"", !278, i64 0, !279, i64 4}
!291 = !DILocation(line: 150, column: 14, scope: !283)
!292 = !DILocation(line: 150, column: 19, scope: !283)
!293 = !DILocation(line: 150, column: 22, scope: !283)
!294 = !DILocation(line: 150, column: 7, scope: !267)
!295 = !DILocation(line: 136, column: 12, scope: !36)
!296 = !DILocation(line: 154, column: 3, scope: !267)
!297 = !DILocation(line: 0, scope: !298)
!298 = distinct !DILexicalBlock(scope: !267, file: !1, line: 155, column: 5)
!299 = !DILocation(line: 156, column: 26, scope: !298)
!300 = !{!285, !286, i64 0}
!301 = !DILocation(line: 138, column: 15, scope: !36)
!302 = !DILocation(line: 156, column: 11, scope: !298)
!303 = !{!286, !286, i64 0}
!304 = !DILocation(line: 157, column: 24, scope: !298)
!305 = !DILocation(line: 157, column: 38, scope: !298)
!306 = !DILocation(line: 157, column: 34, scope: !298)
!307 = !DILocation(line: 157, column: 12, scope: !298)
!308 = !DILocation(line: 139, column: 18, scope: !36)
!309 = !DILocation(line: 161, column: 12, scope: !298)
!310 = !DILocation(line: 161, column: 9, scope: !298)
!311 = !DILocation(line: 161, column: 32, scope: !298)
!312 = !DILocation(line: 161, column: 26, scope: !298)
!313 = !DILocation(line: 161, column: 35, scope: !298)
!314 = !DILocation(line: 161, column: 46, scope: !298)
!315 = !DILocation(line: 161, column: 42, scope: !298)
!316 = !DILocation(line: 163, column: 11, scope: !298)
!317 = !DILocation(line: 163, column: 9, scope: !298)
!318 = !DILocation(line: 158, column: 15, scope: !298)
!319 = !DILocation(line: 137, column: 10, scope: !36)
!320 = !DILocation(line: 165, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !298, file: !1, line: 165, column: 11)
!322 = !DILocation(line: 165, column: 11, scope: !298)
!323 = !DILocation(line: 168, column: 11, scope: !324)
!324 = distinct !DILexicalBlock(scope: !298, file: !1, line: 168, column: 11)
!325 = !DILocation(line: 168, column: 15, scope: !324)
!326 = !DILocation(line: 168, column: 11, scope: !298)
!327 = !DILocation(line: 176, column: 9, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !1, line: 169, column: 2)
!329 = !DILocation(line: 177, column: 22, scope: !328)
!330 = !DILocation(line: 177, column: 36, scope: !328)
!331 = !DILocation(line: 177, column: 32, scope: !328)
!332 = !DILocation(line: 177, column: 10, scope: !328)
!333 = !DILocation(line: 178, column: 7, scope: !328)
!334 = !DILocation(line: 179, column: 2, scope: !328)
!335 = !DILocation(line: 180, column: 35, scope: !298)
!336 = !DILocation(line: 180, column: 45, scope: !298)
!337 = !DILocation(line: 180, column: 14, scope: !298)
!338 = !DILocation(line: 181, column: 14, scope: !298)
!339 = !DILocation(line: 182, column: 9, scope: !298)
!340 = !DILocation(line: 183, column: 11, scope: !298)
!341 = !DILocation(line: 185, column: 10, scope: !267)
!342 = !DILocation(line: 185, column: 18, scope: !267)
!343 = !DILocation(line: 185, column: 32, scope: !267)
!344 = !DILocation(line: 185, column: 27, scope: !267)
!345 = !DILocation(line: 185, column: 47, scope: !267)
!346 = !DILocation(line: 186, column: 3, scope: !267)
!347 = !DILocation(line: 186, column: 6, scope: !267)
!348 = !DILocation(line: 186, column: 28, scope: !267)
!349 = !DILocation(line: 184, column: 5, scope: !298)
!350 = distinct !{!350, !296, !351}
!351 = !DILocation(line: 186, column: 33, scope: !267)
!352 = !DILocation(line: 187, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !267, file: !1, line: 187, column: 7)
!354 = !DILocation(line: 187, column: 7, scope: !267)
!355 = !DILocation(line: 190, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !267, file: !1, line: 190, column: 7)
!357 = !DILocation(line: 190, column: 7, scope: !267)
!358 = !DILocation(line: 193, column: 10, scope: !267)
!359 = !DILocation(line: 194, column: 3, scope: !267)
!360 = !DILocation(line: 195, column: 3, scope: !267)
!361 = !DILocation(line: 198, column: 3, scope: !36)
!362 = !DILocation(line: 198, column: 3, scope: !267)
!363 = !DILocation(line: 199, column: 3, scope: !36)
!364 = !DILocation(line: 200, column: 1, scope: !36)
!365 = distinct !DISubprogram(name: "fgetws", scope: !1, file: !1, line: 203, type: !366, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !370)
!366 = !DISubroutineType(types: !367)
!367 = !{!39, !368, !5, !369}
!368 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !254)
!370 = !{!371, !372, !373, !374, !375}
!371 = !DILocalVariable(name: "ws", arg: 1, scope: !365, file: !1, line: 203, type: !368)
!372 = !DILocalVariable(name: "n", arg: 2, scope: !365, file: !1, line: 203, type: !5)
!373 = !DILocalVariable(name: "fp", arg: 3, scope: !365, file: !1, line: 203, type: !369)
!374 = !DILocalVariable(name: "reent", scope: !365, file: !1, line: 208, type: !42)
!375 = !DILocalVariable(name: "_check_init_ptr", scope: !376, file: !1, line: 210, type: !42)
!376 = distinct !DILexicalBlock(scope: !365, file: !1, line: 210, column: 3)
!377 = !DILocation(line: 203, column: 1, scope: !365)
!378 = !DILocation(line: 208, column: 26, scope: !365)
!379 = !DILocation(line: 208, column: 18, scope: !365)
!380 = !DILocation(line: 210, column: 3, scope: !376)
!381 = !DILocation(line: 210, column: 3, scope: !382)
!382 = distinct !DILexicalBlock(scope: !376, file: !1, line: 210, column: 3)
!383 = !{!384, !278, i64 80}
!384 = !{!"_reent", !278, i64 0, !286, i64 8, !286, i64 16, !286, i64 24, !278, i64 32, !279, i64 36, !278, i64 64, !286, i64 72, !278, i64 80, !286, i64 88, !286, i64 96, !278, i64 104, !286, i64 112, !286, i64 120, !278, i64 128, !286, i64 136, !279, i64 144, !286, i64 504, !385, i64 512, !286, i64 1304, !387, i64 1312, !279, i64 1336}
!385 = !{!"_atexit", !286, i64 0, !278, i64 8, !279, i64 16, !386, i64 272}
!386 = !{!"_on_exit_args", !279, i64 0, !279, i64 256, !278, i64 512, !278, i64 516}
!387 = !{!"_glue", !286, i64 0, !278, i64 8, !286, i64 16}
!388 = !DILocation(line: 211, column: 10, scope: !365)
!389 = !DILocation(line: 211, column: 3, scope: !365)
