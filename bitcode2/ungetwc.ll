; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetwc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetwc.c"
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
define dso_local i32 @_ungetwc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !32 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0, !dbg !263
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #4, !dbg !263
  %7 = bitcast i32* %5 to i8*, !dbg !265
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4, !dbg !265
  %8 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %5) #5, !dbg !265
  %9 = icmp eq i32 %1, -1, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %9, label %27, label %10, !dbg !268

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 22, !dbg !269
  %12 = call i64 @_wcrtomb_r(%struct._reent* %0, i8* nonnull %6, i32 %1, %struct._mbstate_t* nonnull %11) #5, !dbg !271
  %13 = icmp eq i64 %12, -1, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br i1 %13, label %14, label %18, !dbg !274

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !275
  %16 = load i16, i16* %15, align 8, !dbg !277, !tbaa !278
  %17 = or i16 %16, 64, !dbg !277
  store i16 %17, i16* %15, align 8, !dbg !277, !tbaa !278
  br label %27, !dbg !288

; <label>:18:                                     ; preds = %10, %21
  %19 = phi i64 [ %22, %21 ], [ %12, %10 ], !dbg !289
  %20 = icmp eq i64 %19, 0, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %20, label %28, label %21, !dbg !291

; <label>:21:                                     ; preds = %18
  %22 = add i64 %19, -1, !dbg !292
  %23 = load i8, i8* %6, align 1, !dbg !293, !tbaa !295
  %24 = zext i8 %23 to i32, !dbg !296
  %25 = call i32 @_ungetc_r(%struct._reent* %0, i32 %24, %struct.__sFILE* %2) #5, !dbg !297
  %26 = icmp eq i32 %25, -1, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %26, label %27, label %18, !dbg !299, !llvm.loop !300

; <label>:27:                                     ; preds = %21, %3, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br label %28, !dbg !303

; <label>:28:                                     ; preds = %18, %27
  %29 = phi i32 [ -1, %27 ], [ %1, %18 ]
  %30 = load i32, i32* %5, align 4, !dbg !303, !tbaa !304
  %31 = call i32 @pthread_setcancelstate(i32 %30, i32* nonnull %5) #5, !dbg !303
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4, !dbg !305
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #4, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  ret i32 %29, !dbg !307
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcrtomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @_ungetc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @ungetwc(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !308 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !318
  %4 = icmp eq %struct._reent* %3, null, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %4, label %10, label %5, !dbg !321

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !321
  %7 = load i32, i32* %6, align 8, !dbg !321, !tbaa !323
  %8 = icmp eq i32 %7, 0, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %8, label %9, label %10, !dbg !320

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #5, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br label %10, !dbg !321

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = tail call i32 @_ungetwc_r(%struct._reent* %3, i32 %0, %struct.__sFILE* %1) #6, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i32 %11, !dbg !329
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/ungetwc.c", directory: "/root/.unikraft/apps/redis/build")
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
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 58, baseType: !26)
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = distinct !DISubprogram(name: "_ungetwc_r", scope: !1, file: !1, line: 77, type: !33, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!33 = !DISubroutineType(types: !34)
!34 = !{!22, !35, !22, !250}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !37, line: 569, size: 14912, elements: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !{!39, !40, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !36, file: !37, line: 571, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !37, line: 287, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !37, line: 181, size: 1408, elements: !44)
!44 = !{!45, !47, !48, !49, !51, !52, !57, !58, !60, !69, !75, !80, !84, !85, !86, !87, !91, !95, !96, !97, !99, !100, !104, !117}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !43, file: !37, line: 182, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !43, file: !37, line: 183, baseType: !5, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !43, file: !37, line: 184, baseType: !5, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !37, line: 185, baseType: !50, size: 16, offset: 128)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !43, file: !37, line: 186, baseType: !50, size: 16, offset: 144)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !43, file: !37, line: 187, baseType: !53, size: 128, offset: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !37, line: 117, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !53, file: !37, line: 118, baseType: !46, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !53, file: !37, line: 119, baseType: !5, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !43, file: !37, line: 188, baseType: !5, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !43, file: !37, line: 195, baseType: !59, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !43, file: !37, line: 197, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !35, !59, !67, !5}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !65, line: 145, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !43, file: !37, line: 199, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!64, !35, !59, !73, !5}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !43, file: !37, line: 202, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !35, !59, !79, !5}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !65, line: 114, baseType: !66)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !43, file: !37, line: 203, baseType: !81, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!5, !35, !59}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !43, file: !37, line: 206, baseType: !53, size: 128, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !43, file: !37, line: 207, baseType: !46, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !43, file: !37, line: 208, baseType: !5, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !43, file: !37, line: 211, baseType: !88, size: 24, offset: 928)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !43, file: !37, line: 212, baseType: !92, size: 8, offset: 952)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !43, file: !37, line: 215, baseType: !53, size: 128, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !43, file: !37, line: 218, baseType: !5, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !37, line: 219, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !65, line: 44, baseType: !66)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !43, file: !37, line: 222, baseType: !35, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !37, line: 226, baseType: !101, size: 32, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !65, line: 175, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !103, line: 12, baseType: !5)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !43, file: !37, line: 228, baseType: !105, size: 64, offset: 1312)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !65, line: 171, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 163, size: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !65, line: 165, baseType: !5, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !106, file: !65, line: 170, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !65, line: 166, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !110, file: !65, line: 168, baseType: !22, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !110, file: !65, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !37, line: 229, baseType: !5, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !36, file: !37, line: 578, baseType: !5, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !36, file: !37, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 200, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !36, file: !37, line: 582, baseType: !5, size: 32, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !36, file: !37, line: 583, baseType: !127, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !37, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !36, file: !37, line: 585, baseType: !5, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !36, file: !37, line: 587, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !35}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !36, file: !37, line: 590, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !37, line: 47, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !37, line: 49, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !136, file: !37, line: 50, baseType: !5, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !136, file: !37, line: 50, baseType: !5, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !136, file: !37, line: 50, baseType: !5, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !136, file: !37, line: 50, baseType: !5, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !136, file: !37, line: 51, baseType: !144, size: 32, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32, elements: !93)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !37, line: 25, baseType: !24)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !36, file: !37, line: 591, baseType: !5, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !36, file: !37, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !36, file: !37, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !36, file: !37, line: 596, baseType: !5, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !36, file: !37, line: 597, baseType: !67, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !36, file: !37, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !37, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !37, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !37, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !37, line: 603, baseType: !24, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !37, line: 604, baseType: !67, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !37, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !37, line: 606, baseType: !165, size: 288, offset: 352)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !37, line: 55, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !37, line: 57, baseType: !5, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !37, line: 58, baseType: !5, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !37, line: 59, baseType: !5, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !37, line: 60, baseType: !5, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !37, line: 61, baseType: !5, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !37, line: 62, baseType: !5, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !37, line: 63, baseType: !5, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !37, line: 64, baseType: !5, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !37, line: 65, baseType: !5, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !37, line: 607, baseType: !5, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !37, line: 608, baseType: !178, size: 64, offset: 704)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !37, line: 609, baseType: !180, size: 112, offset: 768)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !37, line: 319, size: 112, elements: !181)
!181 = !{!182, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !37, line: 320, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !89)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !37, line: 321, baseType: !183, size: 48, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !37, line: 322, baseType: !184, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !37, line: 610, baseType: !105, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !37, line: 611, baseType: !105, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !37, line: 612, baseType: !105, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !37, line: 613, baseType: !191, size: 64, offset: 1088)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !37, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !37, line: 615, baseType: !5, size: 32, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !37, line: 616, baseType: !105, size: 64, offset: 1376)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !37, line: 617, baseType: !105, size: 64, offset: 1440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !37, line: 618, baseType: !105, size: 64, offset: 1504)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !37, line: 619, baseType: !105, size: 64, offset: 1568)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !37, line: 620, baseType: !105, size: 64, offset: 1632)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !37, line: 621, baseType: !5, size: 32, offset: 1696)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !37, line: 631, baseType: !206, size: 2880)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !37, line: 626, size: 2880, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !206, file: !37, line: 629, baseType: !209, size: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !206, file: !37, line: 630, baseType: !213, size: 960, offset: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 960, elements: !210)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !36, file: !37, line: 636, baseType: !215, size: 64, offset: 4032)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !37, line: 93, size: 6336, elements: !217)
!217 = !{!218, !219, !220, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !37, line: 94, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !216, file: !37, line: 95, baseType: !5, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !216, file: !37, line: 97, baseType: !221, size: 2048, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !225)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !216, file: !37, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !37, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !37, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, elements: !225)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !37, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !37, line: 78, baseType: !145, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !37, line: 81, baseType: !145, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !36, file: !37, line: 637, baseType: !216, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !36, file: !37, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !5}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !36, file: !37, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !37, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !37, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !37, line: 294, baseType: !5, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !37, line: 295, baseType: !41, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !36, file: !37, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4224, elements: !89)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !252, line: 66, baseType: !42)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !{!254, !255, !256, !257, !259, !260}
!254 = !DILocalVariable(name: "ptr", arg: 1, scope: !32, file: !1, line: 77, type: !35)
!255 = !DILocalVariable(name: "wc", arg: 2, scope: !32, file: !1, line: 77, type: !22)
!256 = !DILocalVariable(name: "fp", arg: 3, scope: !32, file: !1, line: 77, type: !250)
!257 = !DILocalVariable(name: "buf", scope: !32, file: !1, line: 82, type: !258)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8, elements: !93)
!259 = !DILocalVariable(name: "len", scope: !32, file: !1, line: 83, type: !25)
!260 = !DILocalVariable(name: "__oldfpcancel", scope: !261, file: !1, line: 85, type: !5)
!261 = distinct !DILexicalBlock(scope: !32, file: !1, line: 85, column: 3)
!262 = !DILocation(line: 77, column: 1, scope: !32)
!263 = !DILocation(line: 82, column: 3, scope: !32)
!264 = !DILocation(line: 82, column: 8, scope: !32)
!265 = !DILocation(line: 85, column: 3, scope: !261)
!266 = !DILocation(line: 87, column: 10, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !1, line: 87, column: 7)
!268 = !DILocation(line: 87, column: 7, scope: !261)
!269 = !DILocation(line: 89, column: 49, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !1, line: 89, column: 12)
!271 = !DILocation(line: 89, column: 19, scope: !270)
!272 = !DILocation(line: 83, column: 10, scope: !32)
!273 = !DILocation(line: 89, column: 60, scope: !270)
!274 = !DILocation(line: 89, column: 12, scope: !267)
!275 = !DILocation(line: 91, column: 11, scope: !276)
!276 = distinct !DILexicalBlock(scope: !270, file: !1, line: 90, column: 5)
!277 = !DILocation(line: 91, column: 18, scope: !276)
!278 = !{!279, !284, i64 16}
!279 = !{!"__sFILE", !280, i64 0, !283, i64 8, !283, i64 12, !284, i64 16, !284, i64 18, !285, i64 24, !283, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !285, i64 88, !280, i64 104, !283, i64 112, !281, i64 116, !281, i64 119, !285, i64 120, !283, i64 136, !286, i64 144, !280, i64 152, !283, i64 160, !287, i64 164, !283, i64 172}
!280 = !{!"any pointer", !281, i64 0}
!281 = !{!"omnipotent char", !282, i64 0}
!282 = !{!"Simple C/C++ TBAA"}
!283 = !{!"int", !281, i64 0}
!284 = !{!"short", !281, i64 0}
!285 = !{!"__sbuf", !280, i64 0, !283, i64 8}
!286 = !{!"long", !281, i64 0}
!287 = !{!"", !283, i64 0, !281, i64 4}
!288 = !DILocation(line: 93, column: 5, scope: !276)
!289 = !DILocation(line: 0, scope: !270)
!290 = !DILocation(line: 95, column: 18, scope: !270)
!291 = !DILocation(line: 95, column: 5, scope: !270)
!292 = !DILocation(line: 95, column: 15, scope: !270)
!293 = !DILocation(line: 96, column: 41, scope: !294)
!294 = distinct !DILexicalBlock(scope: !270, file: !1, line: 96, column: 11)
!295 = !{!281, !281, i64 0}
!296 = !DILocation(line: 96, column: 26, scope: !294)
!297 = !DILocation(line: 96, column: 11, scope: !294)
!298 = !DILocation(line: 96, column: 55, scope: !294)
!299 = !DILocation(line: 96, column: 11, scope: !270)
!300 = distinct !{!300, !291, !301}
!301 = !DILocation(line: 100, column: 2, scope: !270)
!302 = !DILocation(line: 0, scope: !267)
!303 = !DILocation(line: 101, column: 3, scope: !261)
!304 = !{!283, !283, i64 0}
!305 = !DILocation(line: 101, column: 3, scope: !32)
!306 = !DILocation(line: 103, column: 1, scope: !32)
!307 = !DILocation(line: 102, column: 3, scope: !32)
!308 = distinct !DISubprogram(name: "ungetwc", scope: !1, file: !1, line: 109, type: !309, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !311)
!309 = !DISubroutineType(types: !310)
!310 = !{!22, !22, !250}
!311 = !{!312, !313, !314, !315}
!312 = !DILocalVariable(name: "wc", arg: 1, scope: !308, file: !1, line: 109, type: !22)
!313 = !DILocalVariable(name: "fp", arg: 2, scope: !308, file: !1, line: 109, type: !250)
!314 = !DILocalVariable(name: "reent", scope: !308, file: !1, line: 113, type: !35)
!315 = !DILocalVariable(name: "_check_init_ptr", scope: !316, file: !1, line: 115, type: !35)
!316 = distinct !DILexicalBlock(scope: !308, file: !1, line: 115, column: 3)
!317 = !DILocation(line: 109, column: 1, scope: !308)
!318 = !DILocation(line: 113, column: 26, scope: !308)
!319 = !DILocation(line: 113, column: 18, scope: !308)
!320 = !DILocation(line: 115, column: 3, scope: !316)
!321 = !DILocation(line: 115, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !1, line: 115, column: 3)
!323 = !{!324, !283, i64 80}
!324 = !{!"_reent", !283, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !283, i64 32, !281, i64 36, !283, i64 64, !280, i64 72, !283, i64 80, !280, i64 88, !280, i64 96, !283, i64 104, !280, i64 112, !280, i64 120, !283, i64 128, !280, i64 136, !281, i64 144, !280, i64 504, !325, i64 512, !280, i64 1304, !327, i64 1312, !281, i64 1336}
!325 = !{!"_atexit", !280, i64 0, !283, i64 8, !281, i64 16, !326, i64 272}
!326 = !{!"_on_exit_args", !281, i64 0, !281, i64 256, !283, i64 512, !283, i64 516}
!327 = !{!"_glue", !280, i64 0, !283, i64 8, !280, i64 16}
!328 = !DILocation(line: 116, column: 10, scope: !308)
!329 = !DILocation(line: 116, column: 3, scope: !308)
