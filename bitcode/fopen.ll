; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @_fopen_r(%struct._reent*, i8* noalias, i8* noalias) local_unnamed_addr #0 !dbg !27 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast i32* %4 to i8*, !dbg !267
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !267
  %8 = call i32 @__sflags(%struct._reent* %0, i8* %2, i32* nonnull %4) #5, !dbg !269
  %9 = icmp eq i32 %8, 0, !dbg !272
  br i1 %9, label %43, label %10, !dbg !273

; <label>:10:                                     ; preds = %3
  %11 = call %struct.__sFILE* @__sfp(%struct._reent* %0) #5, !dbg !274
  %12 = icmp eq %struct.__sFILE* %11, null, !dbg !277
  br i1 %12, label %43, label %13, !dbg !278

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %4, align 4, !dbg !279, !tbaa !280
  %15 = call i32 @_open_r(%struct._reent* %0, i8* %1, i32 %14, i32 438) #5, !dbg !284
  %16 = icmp slt i32 %15, 0, !dbg !286
  br i1 %16, label %17, label %23, !dbg !287

; <label>:17:                                     ; preds = %13
  %18 = bitcast i32* %5 to i8*, !dbg !288
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #4, !dbg !288
  %19 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #5, !dbg !288
  call void @__sfp_lock_acquire() #5, !dbg !288
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 3, !dbg !289
  store i16 0, i16* %20, align 8, !dbg !290, !tbaa !291
  call void @__sfp_lock_release() #5, !dbg !298
  %21 = load i32, i32* %5, align 4, !dbg !298, !tbaa !280
  %22 = call i32 @pthread_setcancelstate(i32 %21, i32* nonnull %5) #5, !dbg !298
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #4, !dbg !299
  br label %43, !dbg !300

; <label>:23:                                     ; preds = %13
  %24 = bitcast i32* %6 to i8*, !dbg !301
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #4, !dbg !301
  %25 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %6) #5, !dbg !301
  %26 = trunc i32 %15 to i16, !dbg !302
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 4, !dbg !303
  store i16 %26, i16* %27, align 2, !dbg !304, !tbaa !305
  %28 = trunc i32 %8 to i16, !dbg !306
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 3, !dbg !307
  store i16 %28, i16* %29, align 8, !dbg !308, !tbaa !291
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 7, !dbg !309
  %31 = bitcast i8** %30 to %struct.__sFILE**, !dbg !310
  store %struct.__sFILE* %11, %struct.__sFILE** %31, align 8, !dbg !310, !tbaa !311
  %32 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 8, !dbg !312
  %33 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %32 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !313
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %33, align 8, !dbg !313, !tbaa !314
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 10, !dbg !315
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %34, align 8, !dbg !316, !tbaa !317
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %11, i64 0, i32 11, !dbg !318
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %35, align 8, !dbg !319, !tbaa !320
  %36 = and i16 %28, 256, !dbg !321
  %37 = icmp eq i16 %36, 0, !dbg !321
  br i1 %37, label %40, label %38, !dbg !323

; <label>:38:                                     ; preds = %23
  %39 = call i32 @_fseek_r(%struct._reent* %0, %struct.__sFILE* nonnull %11, i64 0, i32 2) #5, !dbg !324
  br label %40, !dbg !324

; <label>:40:                                     ; preds = %23, %38
  %41 = load i32, i32* %6, align 4, !dbg !325, !tbaa !280
  %42 = call i32 @pthread_setcancelstate(i32 %41, i32* nonnull %6) #5, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #4, !dbg !326
  br label %43, !dbg !327

; <label>:43:                                     ; preds = %10, %3, %40, %17
  %44 = phi %struct.__sFILE* [ null, %17 ], [ %11, %40 ], [ null, %3 ], [ null, %10 ], !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret %struct.__sFILE* %44, !dbg !329
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__sflags(%struct._reent*, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @__sfp(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @_open_r(%struct._reent*, i8*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_acquire() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sfp_lock_release() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @__sread(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__swrite(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__sseek(%struct._reent*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__sclose(%struct._reent*, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @_fseek_r(%struct._reent*, %struct.__sFILE*, i64, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @fopen(i8*, i8*) local_unnamed_addr #0 !dbg !330 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !337
  %4 = tail call %struct.__sFILE* @_fopen_r(%struct._reent* %3, i8* %0, i8* %1) #6, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  ret %struct.__sFILE* %4, !dbg !339
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fopen.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "_fopen_r", scope: !1, file: !1, line: 127, type: !28, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !252)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !59, !251, !251}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 66, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !34, line: 287, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !34, line: 181, size: 1408, elements: !36)
!36 = !{!37, !40, !41, !42, !44, !45, !50, !51, !52, !218, !224, !229, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !249, !250}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !35, file: !34, line: 182, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !35, file: !34, line: 183, baseType: !5, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !35, file: !34, line: 184, baseType: !5, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !35, file: !34, line: 185, baseType: !43, size: 16, offset: 128)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !35, file: !34, line: 186, baseType: !43, size: 16, offset: 144)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !35, file: !34, line: 187, baseType: !46, size: 128, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !34, line: 117, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !46, file: !34, line: 118, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !46, file: !34, line: 119, baseType: !5, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !35, file: !34, line: 188, baseType: !5, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !35, file: !34, line: 195, baseType: !22, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !35, file: !34, line: 197, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !59, !22, !103, !5}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !57, line: 145, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !34, line: 569, size: 14912, elements: !61)
!61 = !{!62, !63, !65, !66, !67, !68, !73, !74, !77, !78, !82, !97, !98, !99, !101, !102, !104, !182, !203, !204, !209, !216}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !60, file: !34, line: 571, baseType: !5, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !60, file: !34, line: 576, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !60, file: !34, line: 576, baseType: !64, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !60, file: !34, line: 576, baseType: !64, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !60, file: !34, line: 578, baseType: !5, size: 32, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !60, file: !34, line: 579, baseType: !69, size: 200, offset: 288)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !71)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !{!72}
!72 = !DISubrange(count: 25)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !60, file: !34, line: 582, baseType: !5, size: 32, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !60, file: !34, line: 583, baseType: !75, size: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !34, line: 40, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !60, file: !34, line: 585, baseType: !5, size: 32, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !60, file: !34, line: 587, baseType: !79, size: 64, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !59}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !60, file: !34, line: 590, baseType: !83, size: 64, offset: 768)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !34, line: 47, size: 256, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !84, file: !34, line: 49, baseType: !83, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !84, file: !34, line: 50, baseType: !5, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !84, file: !34, line: 50, baseType: !5, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !84, file: !34, line: 50, baseType: !5, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !84, file: !34, line: 50, baseType: !5, size: 32, offset: 160)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !84, file: !34, line: 51, baseType: !92, size: 32, offset: 192)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !95)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !34, line: 25, baseType: !94)
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !60, file: !34, line: 591, baseType: !5, size: 32, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !60, file: !34, line: 592, baseType: !83, size: 64, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !60, file: !34, line: 593, baseType: !100, size: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !60, file: !34, line: 596, baseType: !5, size: 32, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !60, file: !34, line: 597, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !60, file: !34, line: 632, baseType: !105, size: 2880, offset: 1152)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !34, line: 599, size: 2880, elements: !106)
!106 = !{!107, !173}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !105, file: !34, line: 622, baseType: !108, size: 1728)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !34, line: 601, size: 1728, elements: !109)
!109 = !{!110, !111, !112, !116, !128, !129, !131, !141, !156, !157, !158, !162, !166, !167, !168, !169, !170, !171, !172}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !108, file: !34, line: 603, baseType: !94, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !108, file: !34, line: 604, baseType: !103, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !108, file: !34, line: 605, baseType: !113, size: 208, offset: 128)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 26)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !108, file: !34, line: 606, baseType: !117, size: 288, offset: 352)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !34, line: 55, size: 288, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !117, file: !34, line: 57, baseType: !5, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !117, file: !34, line: 58, baseType: !5, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !117, file: !34, line: 59, baseType: !5, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !117, file: !34, line: 60, baseType: !5, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !117, file: !34, line: 61, baseType: !5, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !117, file: !34, line: 62, baseType: !5, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !117, file: !34, line: 63, baseType: !5, size: 32, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !117, file: !34, line: 64, baseType: !5, size: 32, offset: 224)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !117, file: !34, line: 65, baseType: !5, size: 32, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !108, file: !34, line: 607, baseType: !5, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !108, file: !34, line: 608, baseType: !130, size: 64, offset: 704)
!130 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !108, file: !34, line: 609, baseType: !132, size: 112, offset: 768)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !34, line: 319, size: 112, elements: !133)
!133 = !{!134, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !132, file: !34, line: 320, baseType: !135, size: 48)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !137)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 3)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !132, file: !34, line: 321, baseType: !135, size: 48, offset: 48)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !132, file: !34, line: 322, baseType: !136, size: 16, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !108, file: !34, line: 610, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !57, line: 171, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 163, size: 64, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !143, file: !57, line: 165, baseType: !5, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !143, file: !57, line: 170, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !57, line: 166, size: 32, elements: !148)
!148 = !{!149, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !147, file: !57, line: 168, baseType: !150, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !151, line: 124, baseType: !94)
!151 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !147, file: !57, line: 169, baseType: !153, size: 32)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 4)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !108, file: !34, line: 611, baseType: !142, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !108, file: !34, line: 612, baseType: !142, size: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !108, file: !34, line: 613, baseType: !159, size: 64, offset: 1088)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !108, file: !34, line: 614, baseType: !163, size: 192, offset: 1152)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 24)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !108, file: !34, line: 615, baseType: !5, size: 32, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !108, file: !34, line: 616, baseType: !142, size: 64, offset: 1376)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !108, file: !34, line: 617, baseType: !142, size: 64, offset: 1440)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !108, file: !34, line: 618, baseType: !142, size: 64, offset: 1504)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !108, file: !34, line: 619, baseType: !142, size: 64, offset: 1568)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !108, file: !34, line: 620, baseType: !142, size: 64, offset: 1632)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !108, file: !34, line: 621, baseType: !5, size: 32, offset: 1696)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !105, file: !34, line: 631, baseType: !174, size: 2880)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !34, line: 626, size: 2880, elements: !175)
!175 = !{!176, !180}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !174, file: !34, line: 629, baseType: !177, size: 1920)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1920, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 30)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !174, file: !34, line: 630, baseType: !181, size: 960, offset: 1920)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !178)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !60, file: !34, line: 636, baseType: !183, size: 64, offset: 4032)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !34, line: 93, size: 6336, elements: !185)
!185 = !{!186, !187, !188, !195}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !184, file: !34, line: 94, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !184, file: !34, line: 95, baseType: !5, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !184, file: !34, line: 97, baseType: !189, size: 2048, offset: 128)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2048, elements: !193)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null}
!193 = !{!194}
!194 = !DISubrange(count: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !184, file: !34, line: 98, baseType: !196, size: 4160, offset: 2176)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !34, line: 74, size: 4160, elements: !197)
!197 = !{!198, !200, !201, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !196, file: !34, line: 75, baseType: !199, size: 2048)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !193)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !196, file: !34, line: 76, baseType: !199, size: 2048, offset: 2048)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !196, file: !34, line: 78, baseType: !93, size: 32, offset: 4096)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !196, file: !34, line: 81, baseType: !93, size: 32, offset: 4128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !60, file: !34, line: 637, baseType: !184, size: 6336, offset: 4096)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !60, file: !34, line: 641, baseType: !205, size: 64, offset: 10432)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !5}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !60, file: !34, line: 646, baseType: !210, size: 192, offset: 10496)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !34, line: 291, size: 192, elements: !211)
!211 = !{!212, !214, !215}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !210, file: !34, line: 293, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !210, file: !34, line: 294, baseType: !5, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !210, file: !34, line: 295, baseType: !64, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !60, file: !34, line: 648, baseType: !217, size: 4224, offset: 10688)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 4224, elements: !137)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !35, file: !34, line: 199, baseType: !219, size: 64, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!56, !59, !22, !222, !5}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !35, file: !34, line: 202, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !59, !22, !228, !5}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !57, line: 114, baseType: !58)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !35, file: !34, line: 203, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!5, !59, !22}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !35, file: !34, line: 206, baseType: !46, size: 128, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !35, file: !34, line: 207, baseType: !38, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !35, file: !34, line: 208, baseType: !5, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !35, file: !34, line: 211, baseType: !237, size: 24, offset: 928)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !137)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !35, file: !34, line: 212, baseType: !239, size: 8, offset: 952)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !95)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !35, file: !34, line: 215, baseType: !46, size: 128, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !35, file: !34, line: 218, baseType: !5, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !35, file: !34, line: 219, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !57, line: 44, baseType: !58)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !35, file: !34, line: 222, baseType: !59, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !35, file: !34, line: 226, baseType: !246, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !57, line: 175, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !248, line: 12, baseType: !5)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !35, file: !34, line: 228, baseType: !142, size: 64, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !35, file: !34, line: 229, baseType: !5, size: 32, offset: 1376)
!251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !264}
!253 = !DILocalVariable(name: "ptr", arg: 1, scope: !27, file: !1, line: 127, type: !59)
!254 = !DILocalVariable(name: "file", arg: 2, scope: !27, file: !1, line: 127, type: !251)
!255 = !DILocalVariable(name: "mode", arg: 3, scope: !27, file: !1, line: 127, type: !251)
!256 = !DILocalVariable(name: "fp", scope: !27, file: !1, line: 132, type: !30)
!257 = !DILocalVariable(name: "f", scope: !27, file: !1, line: 133, type: !5)
!258 = !DILocalVariable(name: "flags", scope: !27, file: !1, line: 134, type: !5)
!259 = !DILocalVariable(name: "oflags", scope: !27, file: !1, line: 134, type: !5)
!260 = !DILocalVariable(name: "__oldsfpcancel", scope: !261, file: !1, line: 143, type: !5)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 143, column: 7)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 142, column: 5)
!263 = distinct !DILexicalBlock(scope: !27, file: !1, line: 141, column: 7)
!264 = !DILocalVariable(name: "__oldfpcancel", scope: !265, file: !1, line: 152, type: !5)
!265 = distinct !DILexicalBlock(scope: !27, file: !1, line: 152, column: 3)
!266 = !DILocation(line: 127, column: 1, scope: !27)
!267 = !DILocation(line: 134, column: 3, scope: !27)
!268 = !DILocation(line: 134, column: 14, scope: !27)
!269 = !DILocation(line: 136, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !27, file: !1, line: 136, column: 7)
!271 = !DILocation(line: 134, column: 7, scope: !27)
!272 = !DILocation(line: 136, column: 47, scope: !270)
!273 = !DILocation(line: 136, column: 7, scope: !27)
!274 = !DILocation(line: 138, column: 13, scope: !275)
!275 = distinct !DILexicalBlock(scope: !27, file: !1, line: 138, column: 7)
!276 = !DILocation(line: 132, column: 18, scope: !27)
!277 = !DILocation(line: 138, column: 26, scope: !275)
!278 = !DILocation(line: 138, column: 7, scope: !27)
!279 = !DILocation(line: 141, column: 32, scope: !263)
!280 = !{!281, !281, i64 0}
!281 = !{!"int", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !DILocation(line: 141, column: 12, scope: !263)
!285 = !DILocation(line: 133, column: 16, scope: !27)
!286 = !DILocation(line: 141, column: 47, scope: !263)
!287 = !DILocation(line: 141, column: 7, scope: !27)
!288 = !DILocation(line: 143, column: 7, scope: !261)
!289 = !DILocation(line: 144, column: 11, scope: !261)
!290 = !DILocation(line: 144, column: 18, scope: !261)
!291 = !{!292, !294, i64 16}
!292 = !{!"__sFILE", !293, i64 0, !281, i64 8, !281, i64 12, !294, i64 16, !294, i64 18, !295, i64 24, !281, i64 40, !293, i64 48, !293, i64 56, !293, i64 64, !293, i64 72, !293, i64 80, !295, i64 88, !293, i64 104, !281, i64 112, !282, i64 116, !282, i64 119, !295, i64 120, !281, i64 136, !296, i64 144, !293, i64 152, !281, i64 160, !297, i64 164, !281, i64 172}
!293 = !{!"any pointer", !282, i64 0}
!294 = !{!"short", !282, i64 0}
!295 = !{!"__sbuf", !293, i64 0, !281, i64 8}
!296 = !{!"long", !282, i64 0}
!297 = !{!"", !281, i64 0, !282, i64 4}
!298 = !DILocation(line: 148, column: 7, scope: !261)
!299 = !DILocation(line: 148, column: 7, scope: !262)
!300 = !DILocation(line: 149, column: 7, scope: !262)
!301 = !DILocation(line: 152, column: 3, scope: !265)
!302 = !DILocation(line: 154, column: 15, scope: !265)
!303 = !DILocation(line: 154, column: 7, scope: !265)
!304 = !DILocation(line: 154, column: 13, scope: !265)
!305 = !{!292, !294, i64 18}
!306 = !DILocation(line: 155, column: 16, scope: !265)
!307 = !DILocation(line: 155, column: 7, scope: !265)
!308 = !DILocation(line: 155, column: 14, scope: !265)
!309 = !DILocation(line: 156, column: 7, scope: !265)
!310 = !DILocation(line: 156, column: 15, scope: !265)
!311 = !{!292, !293, i64 48}
!312 = !DILocation(line: 157, column: 7, scope: !265)
!313 = !DILocation(line: 157, column: 13, scope: !265)
!314 = !{!293, !293, i64 0}
!315 = !DILocation(line: 159, column: 7, scope: !265)
!316 = !DILocation(line: 159, column: 13, scope: !265)
!317 = !{!292, !293, i64 72}
!318 = !DILocation(line: 160, column: 7, scope: !265)
!319 = !DILocation(line: 160, column: 14, scope: !265)
!320 = !{!292, !293, i64 80}
!321 = !DILocation(line: 162, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !265, file: !1, line: 162, column: 7)
!323 = !DILocation(line: 162, column: 7, scope: !265)
!324 = !DILocation(line: 163, column: 5, scope: !322)
!325 = !DILocation(line: 170, column: 3, scope: !265)
!326 = !DILocation(line: 170, column: 3, scope: !27)
!327 = !DILocation(line: 171, column: 3, scope: !27)
!328 = !DILocation(line: 0, scope: !27)
!329 = !DILocation(line: 172, column: 1, scope: !27)
!330 = distinct !DISubprogram(name: "fopen", scope: !1, file: !1, line: 177, type: !331, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!30, !222, !222}
!333 = !{!334, !335}
!334 = !DILocalVariable(name: "file", arg: 1, scope: !330, file: !1, line: 177, type: !222)
!335 = !DILocalVariable(name: "mode", arg: 2, scope: !330, file: !1, line: 177, type: !222)
!336 = !DILocation(line: 177, column: 1, scope: !330)
!337 = !DILocation(line: 181, column: 20, scope: !330)
!338 = !DILocation(line: 181, column: 10, scope: !330)
!339 = !DILocation(line: 181, column: 3, scope: !330)
