; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fileno.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fileno.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @fileno(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !25 {
  %2 = alloca i32, align 4
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !258
  %4 = icmp eq %struct._reent* %3, null, !dbg !259
  br i1 %4, label %10, label %5, !dbg !259

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !259
  %7 = load i32, i32* %6, align 8, !dbg !259, !tbaa !261
  %8 = icmp eq i32 %7, 0, !dbg !259
  br i1 %8, label %9, label %10, !dbg !258

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #4, !dbg !259
  br label %10, !dbg !259

; <label>:10:                                     ; preds = %5, %1, %9
  %11 = bitcast i32* %2 to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !270
  %12 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %2) #4, !dbg !270
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !271
  %14 = load i16, i16* %13, align 8, !dbg !271, !tbaa !273
  %15 = icmp eq i16 %14, 0, !dbg !279
  br i1 %15, label %20, label %16, !dbg !280

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 4, !dbg !281
  %18 = load i16, i16* %17, align 2, !dbg !281, !tbaa !282
  %19 = sext i16 %18 to i32, !dbg !281
  br label %23, !dbg !284

; <label>:20:                                     ; preds = %10
  %21 = call %struct._reent* @__getreent() #4, !dbg !285
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %21, i64 0, i32 0, !dbg !287
  store i32 9, i32* %22, align 8, !dbg !288, !tbaa !289
  br label %23

; <label>:23:                                     ; preds = %20, %16
  %24 = phi i32 [ %19, %16 ], [ -1, %20 ], !dbg !290
  %25 = load i32, i32* %2, align 4, !dbg !291, !tbaa !292
  %26 = call i32 @pthread_setcancelstate(i32 %25, i32* nonnull %2) #4, !dbg !291
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !293
  ret i32 %24, !dbg !294
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fileno.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "fileno", scope: !1, file: !1, line: 76, type: !26, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !250)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !30, line: 66, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !32, line: 287, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !32, line: 181, size: 1408, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !51, !217, !223, !228, !232, !233, !234, !235, !237, !239, !240, !241, !243, !244, !248, !249}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !32, line: 182, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !32, line: 183, baseType: !5, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !32, line: 184, baseType: !5, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !32, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !32, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !32, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !32, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !32, line: 118, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !32, line: 119, baseType: !5, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !32, line: 188, baseType: !5, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !32, line: 195, baseType: !50, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !32, line: 197, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !58, !50, !102, !5}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !56, line: 145, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !32, line: 569, size: 14912, elements: !60)
!60 = !{!61, !62, !64, !65, !66, !67, !72, !73, !76, !77, !81, !96, !97, !98, !100, !101, !103, !181, !202, !203, !208, !215}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !59, file: !32, line: 571, baseType: !5, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !59, file: !32, line: 576, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !59, file: !32, line: 576, baseType: !63, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !59, file: !32, line: 576, baseType: !63, size: 64, offset: 192)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !59, file: !32, line: 578, baseType: !5, size: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !59, file: !32, line: 579, baseType: !68, size: 200, offset: 288)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 200, elements: !70)
!69 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!70 = !{!71}
!71 = !DISubrange(count: 25)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !59, file: !32, line: 582, baseType: !5, size: 32, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !59, file: !32, line: 583, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !32, line: 40, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !59, file: !32, line: 585, baseType: !5, size: 32, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !59, file: !32, line: 587, baseType: !78, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !58}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !59, file: !32, line: 590, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !32, line: 47, size: 256, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !83, file: !32, line: 49, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !83, file: !32, line: 50, baseType: !5, size: 32, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !83, file: !32, line: 50, baseType: !5, size: 32, offset: 96)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !83, file: !32, line: 50, baseType: !5, size: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !83, file: !32, line: 50, baseType: !5, size: 32, offset: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !83, file: !32, line: 51, baseType: !91, size: 32, offset: 192)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !94)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !32, line: 25, baseType: !93)
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !59, file: !32, line: 591, baseType: !5, size: 32, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !59, file: !32, line: 592, baseType: !82, size: 64, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !59, file: !32, line: 593, baseType: !99, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !59, file: !32, line: 596, baseType: !5, size: 32, offset: 1024)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !59, file: !32, line: 597, baseType: !102, size: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !59, file: !32, line: 632, baseType: !104, size: 2880, offset: 1152)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !59, file: !32, line: 599, size: 2880, elements: !105)
!105 = !{!106, !172}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !104, file: !32, line: 622, baseType: !107, size: 1728)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !32, line: 601, size: 1728, elements: !108)
!108 = !{!109, !110, !111, !115, !127, !128, !130, !140, !155, !156, !157, !161, !165, !166, !167, !168, !169, !170, !171}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !107, file: !32, line: 603, baseType: !93, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !107, file: !32, line: 604, baseType: !102, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !107, file: !32, line: 605, baseType: !112, size: 208, offset: 128)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 208, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 26)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !107, file: !32, line: 606, baseType: !116, size: 288, offset: 352)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !32, line: 55, size: 288, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !116, file: !32, line: 57, baseType: !5, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !116, file: !32, line: 58, baseType: !5, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !116, file: !32, line: 59, baseType: !5, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !116, file: !32, line: 60, baseType: !5, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !116, file: !32, line: 61, baseType: !5, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !116, file: !32, line: 62, baseType: !5, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !116, file: !32, line: 63, baseType: !5, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !116, file: !32, line: 64, baseType: !5, size: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !116, file: !32, line: 65, baseType: !5, size: 32, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !107, file: !32, line: 607, baseType: !5, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !107, file: !32, line: 608, baseType: !129, size: 64, offset: 704)
!129 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !107, file: !32, line: 609, baseType: !131, size: 112, offset: 768)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !32, line: 319, size: 112, elements: !132)
!132 = !{!133, !138, !139}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !131, file: !32, line: 320, baseType: !134, size: 48)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !136)
!135 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!136 = !{!137}
!137 = !DISubrange(count: 3)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !131, file: !32, line: 321, baseType: !134, size: 48, offset: 48)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !131, file: !32, line: 322, baseType: !135, size: 16, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !107, file: !32, line: 610, baseType: !141, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !56, line: 171, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 163, size: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !142, file: !56, line: 165, baseType: !5, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !142, file: !56, line: 170, baseType: !146, size: 32, offset: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !56, line: 166, size: 32, elements: !147)
!147 = !{!148, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !146, file: !56, line: 168, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !150, line: 124, baseType: !93)
!150 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !146, file: !56, line: 169, baseType: !152, size: 32)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 4)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !107, file: !32, line: 611, baseType: !141, size: 64, offset: 960)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !107, file: !32, line: 612, baseType: !141, size: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !107, file: !32, line: 613, baseType: !158, size: 64, offset: 1088)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !107, file: !32, line: 614, baseType: !162, size: 192, offset: 1152)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 192, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 24)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !107, file: !32, line: 615, baseType: !5, size: 32, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !107, file: !32, line: 616, baseType: !141, size: 64, offset: 1376)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !107, file: !32, line: 617, baseType: !141, size: 64, offset: 1440)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !107, file: !32, line: 618, baseType: !141, size: 64, offset: 1504)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !107, file: !32, line: 619, baseType: !141, size: 64, offset: 1568)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !107, file: !32, line: 620, baseType: !141, size: 64, offset: 1632)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !107, file: !32, line: 621, baseType: !5, size: 32, offset: 1696)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !104, file: !32, line: 631, baseType: !173, size: 2880)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !104, file: !32, line: 626, size: 2880, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !173, file: !32, line: 629, baseType: !176, size: 1920)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1920, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 30)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !173, file: !32, line: 630, baseType: !180, size: 960, offset: 1920)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !177)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !59, file: !32, line: 636, baseType: !182, size: 64, offset: 4032)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !32, line: 93, size: 6336, elements: !184)
!184 = !{!185, !186, !187, !194}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !183, file: !32, line: 94, baseType: !182, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !183, file: !32, line: 95, baseType: !5, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !183, file: !32, line: 97, baseType: !188, size: 2048, offset: 128)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 2048, elements: !192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null}
!192 = !{!193}
!193 = !DISubrange(count: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !183, file: !32, line: 98, baseType: !195, size: 4160, offset: 2176)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !32, line: 74, size: 4160, elements: !196)
!196 = !{!197, !199, !200, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !195, file: !32, line: 75, baseType: !198, size: 2048)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !195, file: !32, line: 76, baseType: !198, size: 2048, offset: 2048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !195, file: !32, line: 78, baseType: !92, size: 32, offset: 4096)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !195, file: !32, line: 81, baseType: !92, size: 32, offset: 4128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !59, file: !32, line: 637, baseType: !183, size: 6336, offset: 4096)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !59, file: !32, line: 641, baseType: !204, size: 64, offset: 10432)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, !5}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !59, file: !32, line: 646, baseType: !209, size: 192, offset: 10496)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !32, line: 291, size: 192, elements: !210)
!210 = !{!211, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !209, file: !32, line: 293, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !209, file: !32, line: 294, baseType: !5, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !209, file: !32, line: 295, baseType: !63, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !59, file: !32, line: 648, baseType: !216, size: 4224, offset: 10688)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !136)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !32, line: 199, baseType: !218, size: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!55, !58, !50, !221, !5}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !32, line: 202, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !58, !50, !227, !5}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !56, line: 114, baseType: !57)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !32, line: 203, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!5, !58, !50}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !32, line: 206, baseType: !44, size: 128, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !32, line: 207, baseType: !36, size: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !32, line: 208, baseType: !5, size: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !32, line: 211, baseType: !236, size: 24, offset: 928)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !136)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !32, line: 212, baseType: !238, size: 8, offset: 952)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !94)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !32, line: 215, baseType: !44, size: 128, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !32, line: 218, baseType: !5, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !32, line: 219, baseType: !242, size: 64, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !56, line: 44, baseType: !57)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !32, line: 222, baseType: !58, size: 64, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !32, line: 226, baseType: !245, size: 32, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !56, line: 175, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !247, line: 12, baseType: !5)
!247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !32, line: 228, baseType: !141, size: 64, offset: 1312)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !32, line: 229, baseType: !5, size: 32, offset: 1376)
!250 = !{!251, !252, !253, !255}
!251 = !DILocalVariable(name: "f", arg: 1, scope: !25, file: !1, line: 76, type: !28)
!252 = !DILocalVariable(name: "result", scope: !25, file: !1, line: 79, type: !5)
!253 = !DILocalVariable(name: "_check_init_ptr", scope: !254, file: !1, line: 80, type: !58)
!254 = distinct !DILexicalBlock(scope: !25, file: !1, line: 80, column: 3)
!255 = !DILocalVariable(name: "__oldfpcancel", scope: !256, file: !1, line: 81, type: !5)
!256 = distinct !DILexicalBlock(scope: !25, file: !1, line: 81, column: 3)
!257 = !DILocation(line: 76, column: 1, scope: !25)
!258 = !DILocation(line: 80, column: 3, scope: !254)
!259 = !DILocation(line: 80, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !254, file: !1, line: 80, column: 3)
!261 = !{!262, !263, i64 80}
!262 = !{!"_reent", !263, i64 0, !266, i64 8, !266, i64 16, !266, i64 24, !263, i64 32, !264, i64 36, !263, i64 64, !266, i64 72, !263, i64 80, !266, i64 88, !266, i64 96, !263, i64 104, !266, i64 112, !266, i64 120, !263, i64 128, !266, i64 136, !264, i64 144, !266, i64 504, !267, i64 512, !266, i64 1304, !269, i64 1312, !264, i64 1336}
!263 = !{!"int", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !{!"any pointer", !264, i64 0}
!267 = !{!"_atexit", !266, i64 0, !263, i64 8, !264, i64 16, !268, i64 272}
!268 = !{!"_on_exit_args", !264, i64 0, !264, i64 256, !263, i64 512, !263, i64 516}
!269 = !{!"_glue", !266, i64 0, !263, i64 8, !266, i64 16}
!270 = !DILocation(line: 81, column: 3, scope: !256)
!271 = !DILocation(line: 82, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !256, file: !1, line: 82, column: 7)
!273 = !{!274, !275, i64 16}
!274 = !{!"__sFILE", !266, i64 0, !263, i64 8, !263, i64 12, !275, i64 16, !275, i64 18, !276, i64 24, !263, i64 40, !266, i64 48, !266, i64 56, !266, i64 64, !266, i64 72, !266, i64 80, !276, i64 88, !266, i64 104, !263, i64 112, !264, i64 116, !264, i64 119, !276, i64 120, !263, i64 136, !277, i64 144, !266, i64 152, !263, i64 160, !278, i64 164, !263, i64 172}
!275 = !{!"short", !264, i64 0}
!276 = !{!"__sbuf", !266, i64 0, !263, i64 8}
!277 = !{!"long", !264, i64 0}
!278 = !{!"", !263, i64 0, !264, i64 4}
!279 = !DILocation(line: 82, column: 7, scope: !272)
!280 = !DILocation(line: 82, column: 7, scope: !256)
!281 = !DILocation(line: 83, column: 14, scope: !272)
!282 = !{!274, !275, i64 18}
!283 = !DILocation(line: 79, column: 7, scope: !25)
!284 = !DILocation(line: 83, column: 5, scope: !272)
!285 = !DILocation(line: 87, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !272, file: !1, line: 85, column: 5)
!287 = !DILocation(line: 87, column: 15, scope: !286)
!288 = !DILocation(line: 87, column: 22, scope: !286)
!289 = !{!262, !263, i64 0}
!290 = !DILocation(line: 0, scope: !286)
!291 = !DILocation(line: 89, column: 3, scope: !256)
!292 = !{!263, !263, i64 0}
!293 = !DILocation(line: 89, column: 3, scope: !25)
!294 = !DILocation(line: 90, column: 3, scope: !25)
