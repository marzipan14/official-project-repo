; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fdopen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fdopen.c"
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
define dso_local %struct.__sFILE* @_fdopen_r(%struct._reent*, i32, i8*) local_unnamed_addr #0 !dbg !27 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast i32* %4 to i8*, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !261
  %7 = call i32 @__sflags(%struct._reent* %0, i8* %2, i32* nonnull %4) #5, !dbg !263
  %8 = icmp eq i32 %7, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %8, label %27, label %9, !dbg !267

; <label>:9:                                      ; preds = %3
  %10 = call %struct.__sFILE* @__sfp(%struct._reent* %0) #5, !dbg !268
  %11 = icmp eq %struct.__sFILE* %10, null, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %11, label %27, label %12, !dbg !272

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %5 to i8*, !dbg !273
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !273
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #5, !dbg !273
  %15 = trunc i32 %7 to i16, !dbg !274
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 3, !dbg !275
  store i16 %15, i16* %16, align 8, !dbg !276, !tbaa !277
  %17 = trunc i32 %1 to i16, !dbg !287
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 4, !dbg !288
  store i16 %17, i16* %18, align 2, !dbg !289, !tbaa !290
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 7, !dbg !291
  %20 = bitcast i8** %19 to %struct.__sFILE**, !dbg !292
  store %struct.__sFILE* %10, %struct.__sFILE** %20, align 8, !dbg !292, !tbaa !293
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 8, !dbg !294
  %22 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %21 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !295
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %22, align 8, !dbg !295, !tbaa !296
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 10, !dbg !297
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %23, align 8, !dbg !298, !tbaa !299
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 11, !dbg !300
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %24, align 8, !dbg !301, !tbaa !302
  %25 = load i32, i32* %5, align 4, !dbg !303, !tbaa !304
  %26 = call i32 @pthread_setcancelstate(i32 %25, i32* nonnull %5) #5, !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !305
  br label %27, !dbg !306

; <label>:27:                                     ; preds = %9, %3, %12
  %28 = phi %struct.__sFILE* [ %10, %12 ], [ null, %3 ], [ null, %9 ], !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret %struct.__sFILE* %28, !dbg !309
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__sflags(%struct._reent*, i8*, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.__sFILE* @__sfp(%struct._reent*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @__sread(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__swrite(%struct._reent*, i8*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @__sseek(%struct._reent*, i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @__sclose(%struct._reent*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.__sFILE* @fdopen(i32, i8*) local_unnamed_addr #0 !dbg !310 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call %struct._reent* @__getreent() #5, !dbg !317
  %6 = bitcast i32* %3 to i8*, !dbg !320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4, !dbg !320
  %7 = call i32 @__sflags(%struct._reent* %5, i8* %1, i32* nonnull %3) #5, !dbg !322
  %8 = icmp eq i32 %7, 0, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %8, label %27, label %9, !dbg !325

; <label>:9:                                      ; preds = %2
  %10 = call %struct.__sFILE* @__sfp(%struct._reent* %5) #5, !dbg !326
  %11 = icmp eq %struct.__sFILE* %10, null, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  br i1 %11, label %27, label %12, !dbg !329

; <label>:12:                                     ; preds = %9
  %13 = bitcast i32* %4 to i8*, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #4, !dbg !330
  %14 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %4) #5, !dbg !330
  %15 = trunc i32 %7 to i16, !dbg !331
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 3, !dbg !332
  store i16 %15, i16* %16, align 8, !dbg !333, !tbaa !277
  %17 = trunc i32 %0 to i16, !dbg !334
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 4, !dbg !335
  store i16 %17, i16* %18, align 2, !dbg !336, !tbaa !290
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 7, !dbg !337
  %20 = bitcast i8** %19 to %struct.__sFILE**, !dbg !338
  store %struct.__sFILE* %10, %struct.__sFILE** %20, align 8, !dbg !338, !tbaa !293
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 8, !dbg !339
  %22 = bitcast i64 (%struct._reent*, i8*, i8*, i32)** %21 to <2 x i64 (%struct._reent*, i8*, i8*, i32)*>*, !dbg !340
  store <2 x i64 (%struct._reent*, i8*, i8*, i32)*> <i64 (%struct._reent*, i8*, i8*, i32)* @__sread, i64 (%struct._reent*, i8*, i8*, i32)* @__swrite>, <2 x i64 (%struct._reent*, i8*, i8*, i32)*>* %22, align 8, !dbg !340, !tbaa !296
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 10, !dbg !341
  store i64 (%struct._reent*, i8*, i64, i32)* @__sseek, i64 (%struct._reent*, i8*, i64, i32)** %23, align 8, !dbg !342, !tbaa !299
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %10, i64 0, i32 11, !dbg !343
  store i32 (%struct._reent*, i8*)* @__sclose, i32 (%struct._reent*, i8*)** %24, align 8, !dbg !344, !tbaa !302
  %25 = load i32, i32* %4, align 4, !dbg !345, !tbaa !304
  %26 = call i32 @pthread_setcancelstate(i32 %25, i32* nonnull %4) #5, !dbg !345
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #4, !dbg !346
  br label %27, !dbg !347

; <label>:27:                                     ; preds = %9, %2, %12
  %28 = phi %struct.__sFILE* [ %10, %12 ], [ null, %2 ], [ null, %9 ], !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  ret %struct.__sFILE* %28, !dbg !351
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

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fdopen.c", directory: "/root/.unikraft/apps/redis/build")
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
!27 = distinct !DISubprogram(name: "_fdopen_r", scope: !1, file: !1, line: 67, type: !28, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !59, !5, !222}
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
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !27, file: !1, line: 67, type: !59)
!253 = !DILocalVariable(name: "fd", arg: 2, scope: !27, file: !1, line: 67, type: !5)
!254 = !DILocalVariable(name: "mode", arg: 3, scope: !27, file: !1, line: 67, type: !222)
!255 = !DILocalVariable(name: "fp", scope: !27, file: !1, line: 72, type: !30)
!256 = !DILocalVariable(name: "flags", scope: !27, file: !1, line: 73, type: !5)
!257 = !DILocalVariable(name: "oflags", scope: !27, file: !1, line: 73, type: !5)
!258 = !DILocalVariable(name: "__oldfpcancel", scope: !259, file: !1, line: 96, type: !5)
!259 = distinct !DILexicalBlock(scope: !27, file: !1, line: 96, column: 3)
!260 = !DILocation(line: 67, column: 1, scope: !27)
!261 = !DILocation(line: 73, column: 3, scope: !27)
!262 = !DILocation(line: 73, column: 14, scope: !27)
!263 = !DILocation(line: 78, column: 16, scope: !264)
!264 = distinct !DILexicalBlock(scope: !27, file: !1, line: 78, column: 7)
!265 = !DILocation(line: 73, column: 7, scope: !27)
!266 = !DILocation(line: 78, column: 47, scope: !264)
!267 = !DILocation(line: 78, column: 7, scope: !27)
!268 = !DILocation(line: 93, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !27, file: !1, line: 93, column: 7)
!270 = !DILocation(line: 72, column: 18, scope: !27)
!271 = !DILocation(line: 93, column: 26, scope: !269)
!272 = !DILocation(line: 93, column: 7, scope: !27)
!273 = !DILocation(line: 96, column: 3, scope: !259)
!274 = !DILocation(line: 98, column: 16, scope: !259)
!275 = !DILocation(line: 98, column: 7, scope: !259)
!276 = !DILocation(line: 98, column: 14, scope: !259)
!277 = !{!278, !283, i64 16}
!278 = !{!"__sFILE", !279, i64 0, !282, i64 8, !282, i64 12, !283, i64 16, !283, i64 18, !284, i64 24, !282, i64 40, !279, i64 48, !279, i64 56, !279, i64 64, !279, i64 72, !279, i64 80, !284, i64 88, !279, i64 104, !282, i64 112, !280, i64 116, !280, i64 119, !284, i64 120, !282, i64 136, !285, i64 144, !279, i64 152, !282, i64 160, !286, i64 164, !282, i64 172}
!279 = !{!"any pointer", !280, i64 0}
!280 = !{!"omnipotent char", !281, i64 0}
!281 = !{!"Simple C/C++ TBAA"}
!282 = !{!"int", !280, i64 0}
!283 = !{!"short", !280, i64 0}
!284 = !{!"__sbuf", !279, i64 0, !282, i64 8}
!285 = !{!"long", !280, i64 0}
!286 = !{!"", !282, i64 0, !280, i64 4}
!287 = !DILocation(line: 107, column: 15, scope: !259)
!288 = !DILocation(line: 107, column: 7, scope: !259)
!289 = !DILocation(line: 107, column: 13, scope: !259)
!290 = !{!278, !283, i64 18}
!291 = !DILocation(line: 108, column: 7, scope: !259)
!292 = !DILocation(line: 108, column: 15, scope: !259)
!293 = !{!278, !279, i64 48}
!294 = !DILocation(line: 115, column: 7, scope: !259)
!295 = !DILocation(line: 115, column: 13, scope: !259)
!296 = !{!279, !279, i64 0}
!297 = !DILocation(line: 117, column: 7, scope: !259)
!298 = !DILocation(line: 117, column: 13, scope: !259)
!299 = !{!278, !279, i64 72}
!300 = !DILocation(line: 118, column: 7, scope: !259)
!301 = !DILocation(line: 118, column: 14, scope: !259)
!302 = !{!278, !279, i64 80}
!303 = !DILocation(line: 130, column: 3, scope: !259)
!304 = !{!282, !282, i64 0}
!305 = !DILocation(line: 130, column: 3, scope: !27)
!306 = !DILocation(line: 131, column: 3, scope: !27)
!307 = !DILocation(line: 0, scope: !27)
!308 = !DILocation(line: 0, scope: !264)
!309 = !DILocation(line: 132, column: 1, scope: !27)
!310 = distinct !DISubprogram(name: "fdopen", scope: !1, file: !1, line: 137, type: !311, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!30, !5, !222}
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "fd", arg: 1, scope: !310, file: !1, line: 137, type: !5)
!315 = !DILocalVariable(name: "mode", arg: 2, scope: !310, file: !1, line: 137, type: !222)
!316 = !DILocation(line: 137, column: 1, scope: !310)
!317 = !DILocation(line: 141, column: 21, scope: !310)
!318 = !DILocation(line: 67, column: 1, scope: !27, inlinedAt: !319)
!319 = distinct !DILocation(line: 141, column: 10, scope: !310)
!320 = !DILocation(line: 73, column: 3, scope: !27, inlinedAt: !319)
!321 = !DILocation(line: 73, column: 14, scope: !27, inlinedAt: !319)
!322 = !DILocation(line: 78, column: 16, scope: !264, inlinedAt: !319)
!323 = !DILocation(line: 73, column: 7, scope: !27, inlinedAt: !319)
!324 = !DILocation(line: 78, column: 47, scope: !264, inlinedAt: !319)
!325 = !DILocation(line: 78, column: 7, scope: !27, inlinedAt: !319)
!326 = !DILocation(line: 93, column: 13, scope: !269, inlinedAt: !319)
!327 = !DILocation(line: 72, column: 18, scope: !27, inlinedAt: !319)
!328 = !DILocation(line: 93, column: 26, scope: !269, inlinedAt: !319)
!329 = !DILocation(line: 93, column: 7, scope: !27, inlinedAt: !319)
!330 = !DILocation(line: 96, column: 3, scope: !259, inlinedAt: !319)
!331 = !DILocation(line: 98, column: 16, scope: !259, inlinedAt: !319)
!332 = !DILocation(line: 98, column: 7, scope: !259, inlinedAt: !319)
!333 = !DILocation(line: 98, column: 14, scope: !259, inlinedAt: !319)
!334 = !DILocation(line: 107, column: 15, scope: !259, inlinedAt: !319)
!335 = !DILocation(line: 107, column: 7, scope: !259, inlinedAt: !319)
!336 = !DILocation(line: 107, column: 13, scope: !259, inlinedAt: !319)
!337 = !DILocation(line: 108, column: 7, scope: !259, inlinedAt: !319)
!338 = !DILocation(line: 108, column: 15, scope: !259, inlinedAt: !319)
!339 = !DILocation(line: 115, column: 7, scope: !259, inlinedAt: !319)
!340 = !DILocation(line: 115, column: 13, scope: !259, inlinedAt: !319)
!341 = !DILocation(line: 117, column: 7, scope: !259, inlinedAt: !319)
!342 = !DILocation(line: 117, column: 13, scope: !259, inlinedAt: !319)
!343 = !DILocation(line: 118, column: 7, scope: !259, inlinedAt: !319)
!344 = !DILocation(line: 118, column: 14, scope: !259, inlinedAt: !319)
!345 = !DILocation(line: 130, column: 3, scope: !259, inlinedAt: !319)
!346 = !DILocation(line: 130, column: 3, scope: !27, inlinedAt: !319)
!347 = !DILocation(line: 131, column: 3, scope: !27, inlinedAt: !319)
!348 = !DILocation(line: 0, scope: !27, inlinedAt: !319)
!349 = !DILocation(line: 0, scope: !310)
!350 = !DILocation(line: 132, column: 1, scope: !27, inlinedAt: !319)
!351 = !DILocation(line: 141, column: 3, scope: !310)
