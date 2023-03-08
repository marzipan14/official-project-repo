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

@__A_VARIABLE = internal global i32 0

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %10, label %11, label %13, !dbg !268

; <label>:11:                                     ; preds = %3
  %12 = trunc i32 %1 to i8, !dbg !269
  store i8 %12, i8* %5, align 1, !dbg !271, !tbaa !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br label %23, !dbg !280

; <label>:13:                                     ; preds = %3
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 22, !dbg !281
  %15 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %5, i32 %1, %struct._mbstate_t* nonnull %14) #5, !dbg !284
  %16 = icmp eq i64 %15, -1, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %16, label %17, label %21, !dbg !286

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !287
  %19 = load i16, i16* %18, align 8, !dbg !289, !tbaa !290
  %20 = or i16 %19, 64, !dbg !289
  store i16 %20, i16* %18, align 8, !dbg !289, !tbaa !290
  br label %49, !dbg !298

; <label>:21:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  %22 = icmp eq i64 %15, 0, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %22, label %49, label %23, !dbg !280

; <label>:23:                                     ; preds = %11, %21
  %24 = phi i64 [ 1, %11 ], [ %15, %21 ]
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %28, !dbg !280

; <label>:28:                                     ; preds = %23, %46
  %29 = phi i64 [ 0, %23 ], [ %47, %46 ]
  %30 = load i8, i8* %5, align 1, !dbg !301, !tbaa !272
  %31 = zext i8 %30 to i32, !dbg !303
  %32 = load i32, i32* %25, align 4, !dbg !315, !tbaa !317
  %33 = add nsw i32 %32, -1, !dbg !315
  store i32 %33, i32* %25, align 4, !dbg !315, !tbaa !317
  %34 = icmp sgt i32 %32, 0, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %34, label %40, label %35, !dbg !319

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %27, align 8, !dbg !320, !tbaa !321
  %37 = icmp sgt i32 %32, %36, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %37, label %38, label %43, !dbg !323

; <label>:38:                                     ; preds = %35
  %39 = icmp eq i8 %30, 10, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %39, label %43, label %40, !dbg !325

; <label>:40:                                     ; preds = %38, %28
  %41 = load i8*, i8** %26, align 8, !dbg !326, !tbaa !327
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !326
  store i8* %42, i8** %26, align 8, !dbg !326, !tbaa !327
  store i8 %30, i8* %41, align 1, !dbg !328, !tbaa !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %46, !dbg !331

; <label>:43:                                     ; preds = %35, %38
  %44 = call i32 @__swbuf_r(%struct._reent* %0, i32 %31, %struct.__sFILE* nonnull %2) #5, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  %45 = icmp eq i32 %44, -1, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %45, label %49, label %46, !dbg !331

; <label>:46:                                     ; preds = %40, %43
  %47 = add nuw i64 %29, 1, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  %48 = icmp ult i64 %47, %24, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %48, label %28, label %49, !dbg !280, !llvm.loop !337

; <label>:49:                                     ; preds = %46, %43, %21, %17
  %50 = phi i32 [ -1, %17 ], [ %1, %21 ], [ %1, %46 ], [ -1, %43 ], !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %5) #4, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret i32 %50, !dbg !340
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
define dso_local i32 @_fputwc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !341 {
  %4 = alloca i32, align 4
  %5 = bitcast i32* %4 to i8*, !dbg !350
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4, !dbg !350
  %6 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #5, !dbg !350
  %7 = call i32 @__fputwc(%struct._reent* %0, i32 %1, %struct.__sFILE* %2) #6, !dbg !351
  %8 = load i32, i32* %4, align 4, !dbg !353, !tbaa !354
  %9 = call i32 @pthread_setcancelstate(i32 %8, i32* nonnull %4) #5, !dbg !353
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  ret i32 %7, !dbg !356
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @fputwc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !357 {
  %3 = alloca i32, align 4
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !367
  %5 = icmp eq %struct._reent* %4, null, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %5, label %11, label %6, !dbg !370

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !370
  %8 = load i32, i32* %7, align 8, !dbg !370, !tbaa !372
  %9 = icmp eq i32 %8, 0, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %9, label %10, label %11, !dbg !369

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #5, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %11, !dbg !370

; <label>:11:                                     ; preds = %6, %2, %10
  %12 = bitcast i32* %3 to i8*, !dbg !379
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #4, !dbg !379
  %13 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %3) #5, !dbg !379
  %14 = call i32 @__fputwc(%struct._reent* %4, i32 %0, %struct.__sFILE* %1) #5, !dbg !380
  %15 = load i32, i32* %3, align 4, !dbg !382, !tbaa !354
  %16 = call i32 @pthread_setcancelstate(i32 %15, i32* nonnull %3) #5, !dbg !382
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  ret i32 %14, !dbg !385
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
!276 = !DILocation(line: 203, column: 5, scope: !270)
!277 = !DILocation(line: 192, column: 10, scope: !33)
!278 = !DILocation(line: 213, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !33, file: !1, line: 213, column: 3)
!280 = !DILocation(line: 213, column: 3, scope: !279)
!281 = !DILocation(line: 206, column: 49, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 206, column: 11)
!283 = distinct !DILexicalBlock(scope: !266, file: !1, line: 205, column: 5)
!284 = !DILocation(line: 206, column: 18, scope: !282)
!285 = !DILocation(line: 206, column: 60, scope: !282)
!286 = !DILocation(line: 206, column: 11, scope: !283)
!287 = !DILocation(line: 208, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !282, file: !1, line: 207, column: 2)
!289 = !DILocation(line: 208, column: 15, scope: !288)
!290 = !{!291, !294, i64 16}
!291 = !{!"__sFILE", !292, i64 0, !293, i64 8, !293, i64 12, !294, i64 16, !294, i64 18, !295, i64 24, !293, i64 40, !292, i64 48, !292, i64 56, !292, i64 64, !292, i64 72, !292, i64 80, !295, i64 88, !292, i64 104, !293, i64 112, !273, i64 116, !273, i64 119, !295, i64 120, !293, i64 136, !296, i64 144, !292, i64 152, !293, i64 160, !297, i64 164, !293, i64 172}
!292 = !{!"any pointer", !273, i64 0}
!293 = !{!"int", !273, i64 0}
!294 = !{!"short", !273, i64 0}
!295 = !{!"__sbuf", !292, i64 0, !293, i64 8}
!296 = !{!"long", !273, i64 0}
!297 = !{!"", !293, i64 0, !273, i64 4}
!298 = !DILocation(line: 209, column: 4, scope: !288)
!299 = !DILocation(line: 213, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !279, file: !1, line: 213, column: 3)
!301 = !DILocation(line: 214, column: 41, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !1, line: 214, column: 9)
!303 = !DILocation(line: 214, column: 25, scope: !302)
!304 = !DILocalVariable(name: "_ptr", arg: 1, scope: !305, file: !253, line: 687, type: !36)
!305 = distinct !DISubprogram(name: "__sputc_r", scope: !253, file: !253, line: 687, type: !306, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!5, !36, !5, !251}
!308 = !{!304, !309, !310}
!309 = !DILocalVariable(name: "_c", arg: 2, scope: !305, file: !253, line: 687, type: !5)
!310 = !DILocalVariable(name: "_p", arg: 3, scope: !305, file: !253, line: 687, type: !251)
!311 = !DILocation(line: 687, column: 47, scope: !305, inlinedAt: !312)
!312 = distinct !DILocation(line: 214, column: 9, scope: !302)
!313 = !DILocation(line: 687, column: 57, scope: !305, inlinedAt: !312)
!314 = !DILocation(line: 687, column: 67, scope: !305, inlinedAt: !312)
!315 = !DILocation(line: 692, column: 6, scope: !316, inlinedAt: !312)
!316 = distinct !DILexicalBlock(scope: !305, file: !253, line: 692, column: 6)
!317 = !{!291, !293, i64 12}
!318 = !DILocation(line: 692, column: 15, scope: !316, inlinedAt: !312)
!319 = !DILocation(line: 692, column: 20, scope: !316, inlinedAt: !312)
!320 = !DILocation(line: 692, column: 38, scope: !316, inlinedAt: !312)
!321 = !{!291, !293, i64 40}
!322 = !DILocation(line: 692, column: 31, scope: !316, inlinedAt: !312)
!323 = !DILocation(line: 692, column: 47, scope: !316, inlinedAt: !312)
!324 = !DILocation(line: 692, column: 59, scope: !316, inlinedAt: !312)
!325 = !DILocation(line: 692, column: 6, scope: !305, inlinedAt: !312)
!326 = !DILocation(line: 693, column: 18, scope: !316, inlinedAt: !312)
!327 = !{!291, !292, i64 0}
!328 = !DILocation(line: 693, column: 21, scope: !316, inlinedAt: !312)
!329 = !DILocation(line: 693, column: 3, scope: !316, inlinedAt: !312)
!330 = !DILocation(line: 696, column: 1, scope: !305, inlinedAt: !312)
!331 = !DILocation(line: 214, column: 9, scope: !300)
!332 = !DILocation(line: 695, column: 11, scope: !316, inlinedAt: !312)
!333 = !DILocation(line: 695, column: 3, scope: !316, inlinedAt: !312)
!334 = !DILocation(line: 214, column: 53, scope: !302)
!335 = !DILocation(line: 213, column: 25, scope: !300)
!336 = !DILocation(line: 213, column: 3, scope: !300)
!337 = distinct !{!337, !280, !338}
!338 = !DILocation(line: 215, column: 14, scope: !279)
!339 = !DILocation(line: 0, scope: !288)
!340 = !DILocation(line: 218, column: 1, scope: !33)
!341 = distinct !DISubprogram(name: "_fputwc_r", scope: !1, file: !1, line: 221, type: !34, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !342)
!342 = !{!343, !344, !345, !346, !347}
!343 = !DILocalVariable(name: "ptr", arg: 1, scope: !341, file: !1, line: 221, type: !36)
!344 = !DILocalVariable(name: "wc", arg: 2, scope: !341, file: !1, line: 221, type: !250)
!345 = !DILocalVariable(name: "fp", arg: 3, scope: !341, file: !1, line: 221, type: !251)
!346 = !DILocalVariable(name: "r", scope: !341, file: !1, line: 226, type: !26)
!347 = !DILocalVariable(name: "__oldfpcancel", scope: !348, file: !1, line: 228, type: !5)
!348 = distinct !DILexicalBlock(scope: !341, file: !1, line: 228, column: 3)
!349 = !DILocation(line: 221, column: 1, scope: !341)
!350 = !DILocation(line: 228, column: 3, scope: !348)
!351 = !DILocation(line: 230, column: 7, scope: !348)
!352 = !DILocation(line: 226, column: 10, scope: !341)
!353 = !DILocation(line: 231, column: 3, scope: !348)
!354 = !{!293, !293, i64 0}
!355 = !DILocation(line: 231, column: 3, scope: !341)
!356 = !DILocation(line: 232, column: 3, scope: !341)
!357 = distinct !DISubprogram(name: "fputwc", scope: !1, file: !1, line: 236, type: !358, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!26, !250, !251}
!360 = !{!361, !362, !363, !364}
!361 = !DILocalVariable(name: "wc", arg: 1, scope: !357, file: !1, line: 236, type: !250)
!362 = !DILocalVariable(name: "fp", arg: 2, scope: !357, file: !1, line: 236, type: !251)
!363 = !DILocalVariable(name: "reent", scope: !357, file: !1, line: 240, type: !36)
!364 = !DILocalVariable(name: "_check_init_ptr", scope: !365, file: !1, line: 242, type: !36)
!365 = distinct !DILexicalBlock(scope: !357, file: !1, line: 242, column: 3)
!366 = !DILocation(line: 236, column: 1, scope: !357)
!367 = !DILocation(line: 240, column: 26, scope: !357)
!368 = !DILocation(line: 240, column: 18, scope: !357)
!369 = !DILocation(line: 242, column: 3, scope: !365)
!370 = !DILocation(line: 242, column: 3, scope: !371)
!371 = distinct !DILexicalBlock(scope: !365, file: !1, line: 242, column: 3)
!372 = !{!373, !293, i64 80}
!373 = !{!"_reent", !293, i64 0, !292, i64 8, !292, i64 16, !292, i64 24, !293, i64 32, !273, i64 36, !293, i64 64, !292, i64 72, !293, i64 80, !292, i64 88, !292, i64 96, !293, i64 104, !292, i64 112, !292, i64 120, !293, i64 128, !292, i64 136, !273, i64 144, !292, i64 504, !374, i64 512, !292, i64 1304, !376, i64 1312, !273, i64 1336}
!374 = !{!"_atexit", !292, i64 0, !293, i64 8, !273, i64 16, !375, i64 272}
!375 = !{!"_on_exit_args", !273, i64 0, !273, i64 256, !293, i64 512, !293, i64 516}
!376 = !{!"_glue", !292, i64 0, !293, i64 8, !292, i64 16}
!377 = !DILocation(line: 221, column: 1, scope: !341, inlinedAt: !378)
!378 = distinct !DILocation(line: 243, column: 10, scope: !357)
!379 = !DILocation(line: 228, column: 3, scope: !348, inlinedAt: !378)
!380 = !DILocation(line: 230, column: 7, scope: !348, inlinedAt: !378)
!381 = !DILocation(line: 226, column: 10, scope: !341, inlinedAt: !378)
!382 = !DILocation(line: 231, column: 3, scope: !348, inlinedAt: !378)
!383 = !DILocation(line: 231, column: 3, scope: !341, inlinedAt: !378)
!384 = !DILocation(line: 232, column: 3, scope: !341, inlinedAt: !378)
!385 = !DILocation(line: 243, column: 3, scope: !357)
