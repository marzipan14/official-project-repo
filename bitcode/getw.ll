; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getw.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getw.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getw(%struct.__sFILE*) local_unnamed_addr #0 !dbg !10 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !238
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4, !dbg !238
  %4 = call i64 @fread(i8* nonnull %3, i64 4, i64 1, %struct.__sFILE* %0) #5, !dbg !239
  %5 = icmp eq i64 %4, 1, !dbg !241
  %6 = load i32, i32* %2, align 4, !dbg !242
  %7 = select i1 %5, i32 %6, i32 -1, !dbg !244
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  ret i32 %7, !dbg !245
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @fread(i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/getw.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "getw", scope: !1, file: !1, line: 62, type: !11, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !16, line: 66, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !37, !201, !207, !212, !216, !217, !218, !219, !221, !223, !224, !225, !227, !228, !232, !233}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !18, line: 182, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !18, line: 183, baseType: !13, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !18, line: 184, baseType: !13, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !18, line: 185, baseType: !27, size: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !18, line: 186, baseType: !27, size: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !18, line: 187, baseType: !30, size: 128, offset: 192)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !18, line: 118, baseType: !22, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !18, line: 119, baseType: !13, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !18, line: 188, baseType: !13, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !18, line: 195, baseType: !36, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !18, line: 197, baseType: !38, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !44, !36, !4, !13}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !42, line: 145, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !46)
!46 = !{!47, !48, !50, !51, !52, !53, !57, !58, !61, !62, !66, !81, !82, !83, !85, !86, !87, !165, !186, !187, !192, !199}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !45, file: !18, line: 571, baseType: !13, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !45, file: !18, line: 576, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !45, file: !18, line: 576, baseType: !49, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !45, file: !18, line: 576, baseType: !49, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !45, file: !18, line: 578, baseType: !13, size: 32, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !45, file: !18, line: 579, baseType: !54, size: 200, offset: 288)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 25)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !45, file: !18, line: 582, baseType: !13, size: 32, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !45, file: !18, line: 583, baseType: !59, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !18, line: 40, flags: DIFlagFwdDecl)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !45, file: !18, line: 585, baseType: !13, size: 32, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !45, file: !18, line: 587, baseType: !63, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !44}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !45, file: !18, line: 590, baseType: !67, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !68, file: !18, line: 49, baseType: !67, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !68, file: !18, line: 50, baseType: !13, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !68, file: !18, line: 50, baseType: !13, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !68, file: !18, line: 50, baseType: !13, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !68, file: !18, line: 50, baseType: !13, size: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !68, file: !18, line: 51, baseType: !76, size: 32, offset: 192)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !79)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !78)
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !45, file: !18, line: 591, baseType: !13, size: 32, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !45, file: !18, line: 592, baseType: !67, size: 64, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !45, file: !18, line: 593, baseType: !84, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !45, file: !18, line: 596, baseType: !13, size: 32, offset: 1024)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !45, file: !18, line: 597, baseType: !4, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !45, file: !18, line: 632, baseType: !88, size: 2880, offset: 1152)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !18, line: 599, size: 2880, elements: !89)
!89 = !{!90, !156}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !88, file: !18, line: 622, baseType: !91, size: 1728)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !18, line: 601, size: 1728, elements: !92)
!92 = !{!93, !94, !95, !99, !111, !112, !114, !124, !139, !140, !141, !145, !149, !150, !151, !152, !153, !154, !155}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !91, file: !18, line: 603, baseType: !78, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !91, file: !18, line: 604, baseType: !4, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !91, file: !18, line: 605, baseType: !96, size: 208, offset: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 26)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !91, file: !18, line: 606, baseType: !100, size: 288, offset: 352)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !100, file: !18, line: 57, baseType: !13, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !100, file: !18, line: 58, baseType: !13, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !100, file: !18, line: 59, baseType: !13, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !100, file: !18, line: 60, baseType: !13, size: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !100, file: !18, line: 61, baseType: !13, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !100, file: !18, line: 62, baseType: !13, size: 32, offset: 160)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !100, file: !18, line: 63, baseType: !13, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !100, file: !18, line: 64, baseType: !13, size: 32, offset: 224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !100, file: !18, line: 65, baseType: !13, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !91, file: !18, line: 607, baseType: !13, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !91, file: !18, line: 608, baseType: !113, size: 64, offset: 704)
!113 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !91, file: !18, line: 609, baseType: !115, size: 112, offset: 768)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !116)
!116 = !{!117, !122, !123}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !115, file: !18, line: 320, baseType: !118, size: 48)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 48, elements: !120)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !115, file: !18, line: 321, baseType: !118, size: 48, offset: 48)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !115, file: !18, line: 322, baseType: !119, size: 16, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !91, file: !18, line: 610, baseType: !125, size: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !42, line: 171, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 163, size: 64, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !126, file: !42, line: 165, baseType: !13, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !126, file: !42, line: 170, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !42, line: 166, size: 32, elements: !131)
!131 = !{!132, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !130, file: !42, line: 168, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !134, line: 124, baseType: !78)
!134 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !130, file: !42, line: 169, baseType: !136, size: 32)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !91, file: !18, line: 611, baseType: !125, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !91, file: !18, line: 612, baseType: !125, size: 64, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !91, file: !18, line: 613, baseType: !142, size: 64, offset: 1088)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !91, file: !18, line: 614, baseType: !146, size: 192, offset: 1152)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 24)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !91, file: !18, line: 615, baseType: !13, size: 32, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !91, file: !18, line: 616, baseType: !125, size: 64, offset: 1376)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !91, file: !18, line: 617, baseType: !125, size: 64, offset: 1440)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !91, file: !18, line: 618, baseType: !125, size: 64, offset: 1504)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !91, file: !18, line: 619, baseType: !125, size: 64, offset: 1568)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !91, file: !18, line: 620, baseType: !125, size: 64, offset: 1632)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !91, file: !18, line: 621, baseType: !13, size: 32, offset: 1696)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !88, file: !18, line: 631, baseType: !157, size: 2880)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !18, line: 626, size: 2880, elements: !158)
!158 = !{!159, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !157, file: !18, line: 629, baseType: !160, size: 1920)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 30)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !157, file: !18, line: 630, baseType: !164, size: 960, offset: 1920)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 960, elements: !161)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !45, file: !18, line: 636, baseType: !166, size: 64, offset: 4032)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !168)
!168 = !{!169, !170, !171, !178}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !167, file: !18, line: 94, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !167, file: !18, line: 95, baseType: !13, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !167, file: !18, line: 97, baseType: !172, size: 2048, offset: 128)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !176)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null}
!176 = !{!177}
!177 = !DISubrange(count: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !167, file: !18, line: 98, baseType: !179, size: 4160, offset: 2176)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !180)
!180 = !{!181, !183, !184, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !179, file: !18, line: 75, baseType: !182, size: 2048)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !176)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !179, file: !18, line: 76, baseType: !182, size: 2048, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !179, file: !18, line: 78, baseType: !77, size: 32, offset: 4096)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !179, file: !18, line: 81, baseType: !77, size: 32, offset: 4128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !45, file: !18, line: 637, baseType: !167, size: 6336, offset: 4096)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !45, file: !18, line: 641, baseType: !188, size: 64, offset: 10432)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !13}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !45, file: !18, line: 646, baseType: !193, size: 192, offset: 10496)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !194)
!194 = !{!195, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !193, file: !18, line: 293, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !193, file: !18, line: 294, baseType: !13, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !193, file: !18, line: 295, baseType: !49, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !45, file: !18, line: 648, baseType: !200, size: 4224, offset: 10688)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 4224, elements: !120)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !18, line: 199, baseType: !202, size: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!41, !44, !36, !205, !13}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !18, line: 202, baseType: !208, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !44, !36, !211, !13}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !42, line: 114, baseType: !43)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !18, line: 203, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!13, !44, !36}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !18, line: 206, baseType: !30, size: 128, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !19, file: !18, line: 207, baseType: !22, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !18, line: 208, baseType: !13, size: 32, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !18, line: 211, baseType: !220, size: 24, offset: 928)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !120)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !18, line: 212, baseType: !222, size: 8, offset: 952)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !79)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !18, line: 215, baseType: !30, size: 128, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !18, line: 218, baseType: !13, size: 32, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !18, line: 219, baseType: !226, size: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !42, line: 44, baseType: !43)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !19, file: !18, line: 222, baseType: !44, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !18, line: 226, baseType: !229, size: 32, offset: 1280)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !42, line: 175, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !231, line: 12, baseType: !13)
!231 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !19, file: !18, line: 228, baseType: !125, size: 64, offset: 1312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !18, line: 229, baseType: !13, size: 32, offset: 1376)
!234 = !{!235, !236}
!235 = !DILocalVariable(name: "fp", arg: 1, scope: !10, file: !1, line: 62, type: !14)
!236 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 65, type: !13)
!237 = !DILocation(line: 62, column: 1, scope: !10)
!238 = !DILocation(line: 65, column: 3, scope: !10)
!239 = !DILocation(line: 66, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !10, file: !1, line: 66, column: 7)
!241 = !DILocation(line: 66, column: 54, scope: !240)
!242 = !DILocation(line: 68, column: 10, scope: !10)
!243 = !DILocation(line: 65, column: 7, scope: !10)
!244 = !DILocation(line: 66, column: 7, scope: !10)
!245 = !DILocation(line: 69, column: 1, scope: !10)
