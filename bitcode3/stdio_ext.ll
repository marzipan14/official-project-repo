; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio_ext.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio_ext.c"
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

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @__fbufsize(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !11 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 1, !dbg !239
  %3 = load i32, i32* %2, align 8, !dbg !239, !tbaa !240
  %4 = sext i32 %3 to i64, !dbg !250
  ret i64 %4, !dbg !251
}

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @__fpending(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !252 {
  %2 = bitcast %struct.__sFILE* %0 to i64*, !dbg !256
  %3 = load i64, i64* %2, align 8, !dbg !256, !tbaa !257
  %4 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 5, i32 0, !dbg !258
  %5 = bitcast i8** %4 to i64*, !dbg !258
  %6 = load i64, i64* %5, align 8, !dbg !258, !tbaa !259
  %7 = sub i64 %3, %6, !dbg !260
  ret i64 %7, !dbg !261
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__flbf(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !262 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !268
  %3 = load i16, i16* %2, align 8, !dbg !268, !tbaa !269
  %4 = and i16 %3, 1, !dbg !270
  %5 = zext i16 %4 to i32, !dbg !271
  ret i32 %5, !dbg !272
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__freadable(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !273 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !277
  %3 = load i16, i16* %2, align 8, !dbg !277, !tbaa !269
  %4 = and i16 %3, 20, !dbg !278
  %5 = icmp ne i16 %4, 0, !dbg !279
  %6 = zext i1 %5 to i32, !dbg !279
  ret i32 %6, !dbg !280
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__fwritable(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !281 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !285
  %3 = load i16, i16* %2, align 8, !dbg !285, !tbaa !269
  %4 = and i16 %3, 24, !dbg !286
  %5 = icmp ne i16 %4, 0, !dbg !287
  %6 = zext i1 %5 to i32, !dbg !287
  ret i32 %6, !dbg !288
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__freading(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !289 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !293
  %3 = load i16, i16* %2, align 8, !dbg !293, !tbaa !269
  %4 = lshr i16 %3, 2, !dbg !294
  %5 = and i16 %4, 1, !dbg !294
  %6 = zext i16 %5 to i32, !dbg !294
  ret i32 %6, !dbg !295
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @__fwriting(%struct.__sFILE* nocapture readonly) local_unnamed_addr #0 !dbg !296 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !300
  %3 = load i16, i16* %2, align 8, !dbg !300, !tbaa !269
  %4 = lshr i16 %3, 3, !dbg !301
  %5 = and i16 %4, 1, !dbg !301
  %6 = zext i16 %5 to i32, !dbg !301
  ret i32 %6, !dbg !302
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio_ext.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__fbufsize", scope: !1, file: !1, line: 65, type: !12, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !236)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !16, line: 66, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !20)
!20 = !{!21, !24, !26, !27, !29, !30, !35, !36, !38, !203, !209, !214, !218, !219, !220, !221, !223, !225, !226, !227, !229, !230, !234, !235}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !18, line: 182, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !18, line: 183, baseType: !25, size: 32, offset: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !18, line: 184, baseType: !25, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !18, line: 185, baseType: !28, size: 16, offset: 128)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !18, line: 186, baseType: !28, size: 16, offset: 144)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !18, line: 187, baseType: !31, size: 128, offset: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !31, file: !18, line: 118, baseType: !22, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !31, file: !18, line: 119, baseType: !25, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !18, line: 188, baseType: !25, size: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !18, line: 195, baseType: !37, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !18, line: 197, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !45, !37, !89, !25}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !43, line: 145, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !47)
!47 = !{!48, !49, !51, !52, !53, !54, !59, !60, !63, !64, !68, !83, !84, !85, !87, !88, !90, !167, !188, !189, !194, !201}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !46, file: !18, line: 571, baseType: !25, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !46, file: !18, line: 576, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !46, file: !18, line: 576, baseType: !50, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !46, file: !18, line: 576, baseType: !50, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !46, file: !18, line: 578, baseType: !25, size: 32, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !46, file: !18, line: 579, baseType: !55, size: 200, offset: 288)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 200, elements: !57)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = !{!58}
!58 = !DISubrange(count: 25)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !46, file: !18, line: 582, baseType: !25, size: 32, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !46, file: !18, line: 583, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !18, line: 40, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !46, file: !18, line: 585, baseType: !25, size: 32, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !46, file: !18, line: 587, baseType: !65, size: 64, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !45}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !46, file: !18, line: 590, baseType: !69, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !70, file: !18, line: 49, baseType: !69, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !70, file: !18, line: 50, baseType: !25, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !70, file: !18, line: 50, baseType: !25, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !70, file: !18, line: 50, baseType: !25, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !70, file: !18, line: 50, baseType: !25, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !70, file: !18, line: 51, baseType: !78, size: 32, offset: 192)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 32, elements: !81)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !80)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !46, file: !18, line: 591, baseType: !25, size: 32, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !46, file: !18, line: 592, baseType: !69, size: 64, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !46, file: !18, line: 593, baseType: !86, size: 64, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !46, file: !18, line: 596, baseType: !25, size: 32, offset: 1024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !46, file: !18, line: 597, baseType: !89, size: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !46, file: !18, line: 632, baseType: !91, size: 2880, offset: 1152)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !46, file: !18, line: 599, size: 2880, elements: !92)
!92 = !{!93, !158}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !91, file: !18, line: 622, baseType: !94, size: 1728)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !18, line: 601, size: 1728, elements: !95)
!95 = !{!96, !97, !98, !102, !114, !115, !117, !127, !141, !142, !143, !147, !151, !152, !153, !154, !155, !156, !157}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !94, file: !18, line: 603, baseType: !80, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !94, file: !18, line: 604, baseType: !89, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !94, file: !18, line: 605, baseType: !99, size: 208, offset: 128)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 208, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 26)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !94, file: !18, line: 606, baseType: !103, size: 288, offset: 352)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !104)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !103, file: !18, line: 57, baseType: !25, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !103, file: !18, line: 58, baseType: !25, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !103, file: !18, line: 59, baseType: !25, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !103, file: !18, line: 60, baseType: !25, size: 32, offset: 96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !103, file: !18, line: 61, baseType: !25, size: 32, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !103, file: !18, line: 62, baseType: !25, size: 32, offset: 160)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !103, file: !18, line: 63, baseType: !25, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !103, file: !18, line: 64, baseType: !25, size: 32, offset: 224)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !103, file: !18, line: 65, baseType: !25, size: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !94, file: !18, line: 607, baseType: !25, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !94, file: !18, line: 608, baseType: !116, size: 64, offset: 704)
!116 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !94, file: !18, line: 609, baseType: !118, size: 112, offset: 768)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !119)
!119 = !{!120, !125, !126}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !118, file: !18, line: 320, baseType: !121, size: 48)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 48, elements: !123)
!122 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!123 = !{!124}
!124 = !DISubrange(count: 3)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !118, file: !18, line: 321, baseType: !121, size: 48, offset: 48)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !118, file: !18, line: 322, baseType: !122, size: 16, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !94, file: !18, line: 610, baseType: !128, size: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !43, line: 171, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 163, size: 64, elements: !130)
!130 = !{!131, !132}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !129, file: !43, line: 165, baseType: !25, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !129, file: !43, line: 170, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !43, line: 166, size: 32, elements: !134)
!134 = !{!135, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !133, file: !43, line: 168, baseType: !136, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5, line: 124, baseType: !80)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !133, file: !43, line: 169, baseType: !138, size: 32)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !94, file: !18, line: 611, baseType: !128, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !94, file: !18, line: 612, baseType: !128, size: 64, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !94, file: !18, line: 613, baseType: !144, size: 64, offset: 1088)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !94, file: !18, line: 614, baseType: !148, size: 192, offset: 1152)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 24)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !94, file: !18, line: 615, baseType: !25, size: 32, offset: 1344)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !94, file: !18, line: 616, baseType: !128, size: 64, offset: 1376)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !94, file: !18, line: 617, baseType: !128, size: 64, offset: 1440)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !94, file: !18, line: 618, baseType: !128, size: 64, offset: 1504)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !94, file: !18, line: 619, baseType: !128, size: 64, offset: 1568)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !94, file: !18, line: 620, baseType: !128, size: 64, offset: 1632)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !94, file: !18, line: 621, baseType: !25, size: 32, offset: 1696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !91, file: !18, line: 631, baseType: !159, size: 2880)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !91, file: !18, line: 626, size: 2880, elements: !160)
!160 = !{!161, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !159, file: !18, line: 629, baseType: !162, size: 1920)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 30)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !159, file: !18, line: 630, baseType: !166, size: 960, offset: 1920)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 960, elements: !163)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !46, file: !18, line: 636, baseType: !168, size: 64, offset: 4032)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !170)
!170 = !{!171, !172, !173, !180}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !169, file: !18, line: 94, baseType: !168, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !169, file: !18, line: 95, baseType: !25, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !169, file: !18, line: 97, baseType: !174, size: 2048, offset: 128)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 2048, elements: !178)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null}
!178 = !{!179}
!179 = !DISubrange(count: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !169, file: !18, line: 98, baseType: !181, size: 4160, offset: 2176)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !182)
!182 = !{!183, !185, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !181, file: !18, line: 75, baseType: !184, size: 2048)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !178)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !181, file: !18, line: 76, baseType: !184, size: 2048, offset: 2048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !181, file: !18, line: 78, baseType: !79, size: 32, offset: 4096)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !181, file: !18, line: 81, baseType: !79, size: 32, offset: 4128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !46, file: !18, line: 637, baseType: !169, size: 6336, offset: 4096)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !46, file: !18, line: 641, baseType: !190, size: 64, offset: 10432)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !25}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !46, file: !18, line: 646, baseType: !195, size: 192, offset: 10496)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !196)
!196 = !{!197, !199, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !195, file: !18, line: 293, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !195, file: !18, line: 294, baseType: !25, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !195, file: !18, line: 295, baseType: !50, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !46, file: !18, line: 648, baseType: !202, size: 4224, offset: 10688)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 4224, elements: !123)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !18, line: 199, baseType: !204, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!42, !45, !37, !207, !25}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !18, line: 202, baseType: !210, size: 64, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !45, !37, !213, !25}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !43, line: 114, baseType: !44)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !18, line: 203, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!25, !45, !37}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !18, line: 206, baseType: !31, size: 128, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !19, file: !18, line: 207, baseType: !22, size: 64, offset: 832)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !18, line: 208, baseType: !25, size: 32, offset: 896)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !18, line: 211, baseType: !222, size: 24, offset: 928)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !123)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !18, line: 212, baseType: !224, size: 8, offset: 952)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !81)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !18, line: 215, baseType: !31, size: 128, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !18, line: 218, baseType: !25, size: 32, offset: 1088)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !18, line: 219, baseType: !228, size: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !43, line: 44, baseType: !44)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !19, file: !18, line: 222, baseType: !45, size: 64, offset: 1216)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !18, line: 226, baseType: !231, size: 32, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !43, line: 175, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !233, line: 12, baseType: !25)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !19, file: !18, line: 228, baseType: !128, size: 64, offset: 1312)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !18, line: 229, baseType: !25, size: 32, offset: 1376)
!236 = !{!237}
!237 = !DILocalVariable(name: "fp", arg: 1, scope: !11, file: !1, line: 65, type: !14)
!238 = !DILocation(line: 65, column: 1, scope: !11)
!239 = !DILocation(line: 68, column: 27, scope: !11)
!240 = !{!241, !245, i64 32}
!241 = !{!"__sFILE", !242, i64 0, !245, i64 8, !245, i64 12, !246, i64 16, !246, i64 18, !247, i64 24, !245, i64 40, !242, i64 48, !242, i64 56, !242, i64 64, !242, i64 72, !242, i64 80, !247, i64 88, !242, i64 104, !245, i64 112, !243, i64 116, !243, i64 119, !247, i64 120, !245, i64 136, !248, i64 144, !242, i64 152, !245, i64 160, !249, i64 164, !245, i64 172}
!242 = !{!"any pointer", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !{!"int", !243, i64 0}
!246 = !{!"short", !243, i64 0}
!247 = !{!"__sbuf", !242, i64 0, !245, i64 8}
!248 = !{!"long", !243, i64 0}
!249 = !{!"", !245, i64 0, !243, i64 4}
!250 = !DILocation(line: 68, column: 10, scope: !11)
!251 = !DILocation(line: 68, column: 3, scope: !11)
!252 = distinct !DISubprogram(name: "__fpending", scope: !1, file: !1, line: 72, type: !12, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!253 = !{!254}
!254 = !DILocalVariable(name: "fp", arg: 1, scope: !252, file: !1, line: 72, type: !14)
!255 = !DILocation(line: 72, column: 1, scope: !252)
!256 = !DILocation(line: 75, column: 14, scope: !252)
!257 = !{!241, !242, i64 0}
!258 = !DILocation(line: 75, column: 27, scope: !252)
!259 = !{!241, !242, i64 24}
!260 = !DILocation(line: 75, column: 17, scope: !252)
!261 = !DILocation(line: 75, column: 3, scope: !252)
!262 = distinct !DISubprogram(name: "__flbf", scope: !1, file: !1, line: 79, type: !263, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!25, !14}
!265 = !{!266}
!266 = !DILocalVariable(name: "fp", arg: 1, scope: !262, file: !1, line: 79, type: !14)
!267 = !DILocation(line: 79, column: 1, scope: !262)
!268 = !DILocation(line: 82, column: 15, scope: !262)
!269 = !{!241, !246, i64 16}
!270 = !DILocation(line: 82, column: 22, scope: !262)
!271 = !DILocation(line: 82, column: 32, scope: !262)
!272 = !DILocation(line: 82, column: 3, scope: !262)
!273 = distinct !DISubprogram(name: "__freadable", scope: !1, file: !1, line: 86, type: !263, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !274)
!274 = !{!275}
!275 = !DILocalVariable(name: "fp", arg: 1, scope: !273, file: !1, line: 86, type: !14)
!276 = !DILocation(line: 86, column: 1, scope: !273)
!277 = !DILocation(line: 89, column: 15, scope: !273)
!278 = !DILocation(line: 89, column: 22, scope: !273)
!279 = !DILocation(line: 89, column: 41, scope: !273)
!280 = !DILocation(line: 89, column: 3, scope: !273)
!281 = distinct !DISubprogram(name: "__fwritable", scope: !1, file: !1, line: 93, type: !263, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "fp", arg: 1, scope: !281, file: !1, line: 93, type: !14)
!284 = !DILocation(line: 93, column: 1, scope: !281)
!285 = !DILocation(line: 96, column: 15, scope: !281)
!286 = !DILocation(line: 96, column: 22, scope: !281)
!287 = !DILocation(line: 96, column: 41, scope: !281)
!288 = !DILocation(line: 96, column: 3, scope: !281)
!289 = distinct !DISubprogram(name: "__freading", scope: !1, file: !1, line: 100, type: !263, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !290)
!290 = !{!291}
!291 = !DILocalVariable(name: "fp", arg: 1, scope: !289, file: !1, line: 100, type: !14)
!292 = !DILocation(line: 100, column: 1, scope: !289)
!293 = !DILocation(line: 103, column: 15, scope: !289)
!294 = !DILocation(line: 103, column: 31, scope: !289)
!295 = !DILocation(line: 103, column: 3, scope: !289)
!296 = distinct !DISubprogram(name: "__fwriting", scope: !1, file: !1, line: 107, type: !263, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!297 = !{!298}
!298 = !DILocalVariable(name: "fp", arg: 1, scope: !296, file: !1, line: 107, type: !14)
!299 = !DILocation(line: 107, column: 1, scope: !296)
!300 = !DILocation(line: 110, column: 15, scope: !296)
!301 = !DILocation(line: 110, column: 31, scope: !296)
!302 = !DILocation(line: 110, column: 3, scope: !296)
