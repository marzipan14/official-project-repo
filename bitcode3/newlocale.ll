; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/newlocale.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/newlocale.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local global %struct.__locale_t, align 8

; Function Attrs: noredzone nounwind readnone
define dso_local nonnull %struct.__locale_t* @_newlocale_r(%struct._reent* nocapture readnone, i32, i8* nocapture readnone, %struct.__locale_t* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  ret %struct.__locale_t* @__global_locale, !dbg !299
}

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.__locale_t* @newlocale(i32, i8* nocapture readnone, %struct.__locale_t* nocapture readnone) local_unnamed_addr #1 !dbg !300 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !312
  ret %struct.__locale_t* @__global_locale, !dbg !313
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/newlocale.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_newlocale_r", scope: !1, file: !1, line: 86, type: !8, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !290)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !25, !24, !63, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !12, line: 178, size: 3392, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !20, !244, !253, !254, !255, !283, !287, !289}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !11, file: !12, line: 180, baseType: !15, size: 1792)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1792, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !19}
!18 = !DISubrange(count: 7)
!19 = !DISubrange(count: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !11, file: !12, line: 181, baseType: !21, size: 64, offset: 1792)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!24, !25, !58, !240, !241}
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !27, line: 569, size: 14912, elements: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !{!29, !30, !111, !112, !113, !114, !118, !119, !120, !121, !125, !137, !138, !139, !141, !142, !143, !205, !225, !226, !231, !238}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !26, file: !27, line: 571, baseType: !24, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !27, line: 287, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !27, line: 181, size: 1408, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !51, !59, !65, !70, !74, !75, !76, !77, !81, !85, !86, !87, !89, !90, !94, !110}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !27, line: 182, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !27, line: 183, baseType: !24, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !27, line: 184, baseType: !24, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !27, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !27, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !27, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !27, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !27, line: 118, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !27, line: 119, baseType: !24, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !27, line: 188, baseType: !24, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !27, line: 195, baseType: !50, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !27, line: 197, baseType: !52, size: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !25, !50, !58, !24}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !56, line: 145, baseType: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !27, line: 199, baseType: !60, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!55, !25, !50, !63, !24}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !27, line: 202, baseType: !66, size: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !25, !50, !69, !24}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !56, line: 114, baseType: !57)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !27, line: 203, baseType: !71, size: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!24, !25, !50}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !27, line: 206, baseType: !44, size: 128, offset: 704)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !27, line: 207, baseType: !36, size: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !27, line: 208, baseType: !24, size: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !27, line: 211, baseType: !78, size: 24, offset: 928)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 3)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !27, line: 212, baseType: !82, size: 8, offset: 952)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !27, line: 215, baseType: !44, size: 128, offset: 960)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !27, line: 218, baseType: !24, size: 32, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !27, line: 219, baseType: !88, size: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !56, line: 44, baseType: !57)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !27, line: 222, baseType: !25, size: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !27, line: 226, baseType: !91, size: 32, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !56, line: 175, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !93, line: 12, baseType: !24)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !27, line: 228, baseType: !95, size: 64, offset: 1312)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !56, line: 171, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 163, size: 64, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !96, file: !56, line: 165, baseType: !24, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !96, file: !56, line: 170, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !96, file: !56, line: 166, size: 32, elements: !101)
!101 = !{!102, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !100, file: !56, line: 168, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !104, line: 124, baseType: !105)
!104 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !100, file: !56, line: 169, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !27, line: 229, baseType: !24, size: 32, offset: 1376)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 192)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !26, file: !27, line: 578, baseType: !24, size: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !26, file: !27, line: 579, baseType: !115, size: 200, offset: 288)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 25)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !26, file: !27, line: 582, baseType: !24, size: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !26, file: !27, line: 583, baseType: !10, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !26, file: !27, line: 585, baseType: !24, size: 32, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !26, file: !27, line: 587, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !25}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !26, file: !27, line: 590, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !27, line: 47, size: 256, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !127, file: !27, line: 49, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !127, file: !27, line: 50, baseType: !24, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !127, file: !27, line: 50, baseType: !24, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !127, file: !27, line: 50, baseType: !24, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !127, file: !27, line: 50, baseType: !24, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !127, file: !27, line: 51, baseType: !135, size: 32, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !83)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !27, line: 25, baseType: !105)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !26, file: !27, line: 591, baseType: !24, size: 32, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !26, file: !27, line: 592, baseType: !126, size: 64, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !26, file: !27, line: 593, baseType: !140, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !26, file: !27, line: 596, baseType: !24, size: 32, offset: 1024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !26, file: !27, line: 597, baseType: !58, size: 64, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !26, file: !27, line: 632, baseType: !144, size: 2880, offset: 1152)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !27, line: 599, size: 2880, elements: !145)
!145 = !{!146, !196}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !144, file: !27, line: 622, baseType: !147, size: 1728)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !27, line: 601, size: 1728, elements: !148)
!148 = !{!149, !150, !151, !155, !167, !168, !170, !178, !179, !180, !181, !185, !189, !190, !191, !192, !193, !194, !195}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !147, file: !27, line: 603, baseType: !105, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !147, file: !27, line: 604, baseType: !58, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !147, file: !27, line: 605, baseType: !152, size: 208, offset: 128)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 26)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !147, file: !27, line: 606, baseType: !156, size: 288, offset: 352)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !27, line: 55, size: 288, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !156, file: !27, line: 57, baseType: !24, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !156, file: !27, line: 58, baseType: !24, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !156, file: !27, line: 59, baseType: !24, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !156, file: !27, line: 60, baseType: !24, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !156, file: !27, line: 61, baseType: !24, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !156, file: !27, line: 62, baseType: !24, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !156, file: !27, line: 63, baseType: !24, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !156, file: !27, line: 64, baseType: !24, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !156, file: !27, line: 65, baseType: !24, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !147, file: !27, line: 607, baseType: !24, size: 32, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !147, file: !27, line: 608, baseType: !169, size: 64, offset: 704)
!169 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !147, file: !27, line: 609, baseType: !171, size: 112, offset: 768)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !27, line: 319, size: 112, elements: !172)
!172 = !{!173, !176, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !171, file: !27, line: 320, baseType: !174, size: 48)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 48, elements: !79)
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !171, file: !27, line: 321, baseType: !174, size: 48, offset: 48)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !171, file: !27, line: 322, baseType: !175, size: 16, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !147, file: !27, line: 610, baseType: !95, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !147, file: !27, line: 611, baseType: !95, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !147, file: !27, line: 612, baseType: !95, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !147, file: !27, line: 613, baseType: !182, size: 64, offset: 1088)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !147, file: !27, line: 614, baseType: !186, size: 192, offset: 1152)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 24)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !147, file: !27, line: 615, baseType: !24, size: 32, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !147, file: !27, line: 616, baseType: !95, size: 64, offset: 1376)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !147, file: !27, line: 617, baseType: !95, size: 64, offset: 1440)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !147, file: !27, line: 618, baseType: !95, size: 64, offset: 1504)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !147, file: !27, line: 619, baseType: !95, size: 64, offset: 1568)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !147, file: !27, line: 620, baseType: !95, size: 64, offset: 1632)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !147, file: !27, line: 621, baseType: !24, size: 32, offset: 1696)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !144, file: !27, line: 631, baseType: !197, size: 2880)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !27, line: 626, size: 2880, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !197, file: !27, line: 629, baseType: !200, size: 1920)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1920, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 30)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !197, file: !27, line: 630, baseType: !204, size: 960, offset: 1920)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 960, elements: !201)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !26, file: !27, line: 636, baseType: !206, size: 64, offset: 4032)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !27, line: 93, size: 6336, elements: !208)
!208 = !{!209, !210, !211, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !207, file: !27, line: 94, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !207, file: !27, line: 95, baseType: !24, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !207, file: !27, line: 97, baseType: !212, size: 2048, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 2048, elements: !216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !{!19}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !207, file: !27, line: 98, baseType: !218, size: 4160, offset: 2176)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !27, line: 74, size: 4160, elements: !219)
!219 = !{!220, !222, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !218, file: !27, line: 75, baseType: !221, size: 2048)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !216)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !218, file: !27, line: 76, baseType: !221, size: 2048, offset: 2048)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !218, file: !27, line: 78, baseType: !136, size: 32, offset: 4096)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !218, file: !27, line: 81, baseType: !136, size: 32, offset: 4128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !26, file: !27, line: 637, baseType: !207, size: 6336, offset: 4096)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !26, file: !27, line: 641, baseType: !227, size: 64, offset: 10432)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !24}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !26, file: !27, line: 646, baseType: !232, size: 192, offset: 10496)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !27, line: 291, size: 192, elements: !233)
!233 = !{!234, !236, !237}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !232, file: !27, line: 293, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !232, file: !27, line: 294, baseType: !24, size: 32, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !232, file: !27, line: 295, baseType: !31, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !26, file: !27, line: 648, baseType: !239, size: 4224, offset: 10688)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4224, elements: !79)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !104, line: 83, baseType: !24)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !243, line: 86, baseType: !95)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !11, file: !12, line: 183, baseType: !245, size: 64, offset: 1856)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!24, !25, !248, !63, !249, !241}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !250, line: 40, baseType: !251)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !56, line: 129, baseType: !252)
!252 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !11, file: !12, line: 185, baseType: !24, size: 32, offset: 1920)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !11, file: !12, line: 186, baseType: !58, size: 64, offset: 1984)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !11, file: !12, line: 187, baseType: !256, size: 768, offset: 2048)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !257, line: 42, size: 768, elements: !258)
!257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !{!259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !256, file: !257, line: 44, baseType: !58, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !256, file: !257, line: 45, baseType: !58, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !256, file: !257, line: 46, baseType: !58, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !256, file: !257, line: 47, baseType: !58, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !256, file: !257, line: 48, baseType: !58, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !256, file: !257, line: 49, baseType: !58, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !256, file: !257, line: 50, baseType: !58, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !256, file: !257, line: 51, baseType: !58, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !256, file: !257, line: 52, baseType: !58, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !256, file: !257, line: 53, baseType: !58, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !256, file: !257, line: 54, baseType: !16, size: 8, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !256, file: !257, line: 55, baseType: !16, size: 8, offset: 648)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !256, file: !257, line: 56, baseType: !16, size: 8, offset: 656)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !256, file: !257, line: 57, baseType: !16, size: 8, offset: 664)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !256, file: !257, line: 58, baseType: !16, size: 8, offset: 672)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !256, file: !257, line: 59, baseType: !16, size: 8, offset: 680)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !256, file: !257, line: 60, baseType: !16, size: 8, offset: 688)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !256, file: !257, line: 61, baseType: !16, size: 8, offset: 696)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !256, file: !257, line: 62, baseType: !16, size: 8, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !256, file: !257, line: 63, baseType: !16, size: 8, offset: 712)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !256, file: !257, line: 64, baseType: !16, size: 8, offset: 720)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !256, file: !257, line: 65, baseType: !16, size: 8, offset: 728)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !256, file: !257, line: 66, baseType: !16, size: 8, offset: 736)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !256, file: !257, line: 67, baseType: !16, size: 8, offset: 744)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !11, file: !12, line: 189, baseType: !284, size: 16, offset: 2816)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !11, file: !12, line: 190, baseType: !288, size: 256, offset: 2832)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !216)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !11, file: !12, line: 191, baseType: !288, size: 256, offset: 3088)
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 86, type: !25)
!292 = !DILocalVariable(name: "category_mask", arg: 2, scope: !7, file: !1, line: 86, type: !24)
!293 = !DILocalVariable(name: "locale", arg: 3, scope: !7, file: !1, line: 86, type: !63)
!294 = !DILocalVariable(name: "base", arg: 4, scope: !7, file: !1, line: 87, type: !10)
!295 = !DILocation(line: 86, column: 30, scope: !7)
!296 = !DILocation(line: 86, column: 37, scope: !7)
!297 = !DILocation(line: 86, column: 64, scope: !7)
!298 = !DILocation(line: 87, column: 27, scope: !7)
!299 = !DILocation(line: 90, column: 3, scope: !7)
!300 = distinct !DISubprogram(name: "newlocale", scope: !1, file: !1, line: 219, type: !301, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !305)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !24, !63, !10}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !304, line: 10, baseType: !10)
!304 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!305 = !{!306, !307, !308}
!306 = !DILocalVariable(name: "category_mask", arg: 1, scope: !300, file: !1, line: 219, type: !24)
!307 = !DILocalVariable(name: "locale", arg: 2, scope: !300, file: !1, line: 219, type: !63)
!308 = !DILocalVariable(name: "base", arg: 3, scope: !300, file: !1, line: 219, type: !10)
!309 = !DILocation(line: 219, column: 16, scope: !300)
!310 = !DILocation(line: 219, column: 43, scope: !300)
!311 = !DILocation(line: 219, column: 70, scope: !300)
!312 = !DILocation(line: 221, column: 24, scope: !300)
!313 = !DILocation(line: 221, column: 3, scope: !300)
