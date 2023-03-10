; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstold.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstold.c"
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

; Function Attrs: noredzone nounwind
define dso_local x86_fp80 @wcstold_l(i32* noalias, i32** noalias, %struct.__locale_t*) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call double @wcstod_l(i32* %0, i32** %1, %struct.__locale_t* %2) #3, !dbg !305
  %5 = fpext double %4 to x86_fp80, !dbg !305
  ret x86_fp80 %5, !dbg !306
}

; Function Attrs: noredzone
declare dso_local double @wcstod_l(i32*, i32**, %struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local x86_fp80 @wcstold(i32* noalias, i32** noalias) local_unnamed_addr #0 !dbg !307 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !315
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 7, !dbg !320
  %5 = load %struct.__locale_t*, %struct.__locale_t** %4, align 8, !dbg !320, !tbaa !321
  %6 = icmp eq %struct.__locale_t* %5, null, !dbg !315
  %7 = select i1 %6, %struct.__locale_t* @__global_locale, %struct.__locale_t* %5, !dbg !315
  %8 = tail call double @wcstod_l(i32* %0, i32** %1, %struct.__locale_t* %7) #3, !dbg !330
  %9 = fpext double %8 to x86_fp80, !dbg !330
  ret x86_fp80 %9, !dbg !331
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstold.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcstold_l", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !298)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !17, !20}
!10 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !15, line: 83, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !21, line: 10, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !24, line: 178, size: 3392, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !32, !253, !261, !262, !263, !291, !295, !297}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !23, file: !24, line: 180, baseType: !27, size: 1792)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1792, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30, !31}
!30 = !DISubrange(count: 7)
!31 = !DISubrange(count: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !23, file: !24, line: 181, baseType: !33, size: 64, offset: 1792)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!16, !36, !69, !14, !250}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !38, line: 569, size: 14912, elements: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !121, !122, !123, !124, !128, !129, !130, !131, !135, !147, !148, !149, !151, !152, !153, !215, !235, !236, !241, !248}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !37, file: !38, line: 571, baseType: !16, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !38, line: 287, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 181, size: 1408, elements: !45)
!45 = !{!46, !49, !50, !51, !53, !54, !59, !60, !62, !70, !76, !81, !85, !86, !87, !88, !92, !96, !97, !98, !100, !101, !105, !120}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !38, line: 182, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !38, line: 183, baseType: !16, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !38, line: 184, baseType: !16, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !38, line: 185, baseType: !52, size: 16, offset: 128)
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !38, line: 186, baseType: !52, size: 16, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !38, line: 187, baseType: !55, size: 128, offset: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 117, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !55, file: !38, line: 118, baseType: !47, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !55, file: !38, line: 119, baseType: !16, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !38, line: 188, baseType: !16, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !38, line: 195, baseType: !61, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !38, line: 197, baseType: !63, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !36, !61, !69, !16}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !67, line: 145, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !38, line: 199, baseType: !71, size: 64, offset: 512)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!66, !36, !61, !74, !16}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !38, line: 202, baseType: !77, size: 64, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!80, !36, !61, !80, !16}
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !67, line: 114, baseType: !68)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !38, line: 203, baseType: !82, size: 64, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!16, !36, !61}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !38, line: 206, baseType: !55, size: 128, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !38, line: 207, baseType: !47, size: 64, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !38, line: 208, baseType: !16, size: 32, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !38, line: 211, baseType: !89, size: 24, offset: 928)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 24, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !38, line: 212, baseType: !93, size: 8, offset: 952)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 1)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !38, line: 215, baseType: !55, size: 128, offset: 960)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !38, line: 218, baseType: !16, size: 32, offset: 1088)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !38, line: 219, baseType: !99, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !67, line: 44, baseType: !68)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !38, line: 222, baseType: !36, size: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !38, line: 226, baseType: !102, size: 32, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !67, line: 175, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !104, line: 12, baseType: !16)
!104 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !38, line: 228, baseType: !106, size: 64, offset: 1312)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !67, line: 171, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 163, size: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !107, file: !67, line: 165, baseType: !16, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !107, file: !67, line: 170, baseType: !111, size: 32, offset: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !67, line: 166, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !111, file: !67, line: 168, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !15, line: 124, baseType: !115)
!115 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !111, file: !67, line: 169, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !38, line: 229, baseType: !16, size: 32, offset: 1376)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !37, file: !38, line: 578, baseType: !16, size: 32, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !37, file: !38, line: 579, baseType: !125, size: 200, offset: 288)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !37, file: !38, line: 582, baseType: !16, size: 32, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !37, file: !38, line: 583, baseType: !22, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !37, file: !38, line: 585, baseType: !16, size: 32, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !37, file: !38, line: 587, baseType: !132, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !36}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !37, file: !38, line: 590, baseType: !136, size: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !38, line: 47, size: 256, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !137, file: !38, line: 49, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !137, file: !38, line: 50, baseType: !16, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !137, file: !38, line: 50, baseType: !16, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !137, file: !38, line: 50, baseType: !16, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !137, file: !38, line: 50, baseType: !16, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !137, file: !38, line: 51, baseType: !145, size: 32, offset: 192)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !94)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !38, line: 25, baseType: !115)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !37, file: !38, line: 591, baseType: !16, size: 32, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !37, file: !38, line: 592, baseType: !136, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !37, file: !38, line: 593, baseType: !150, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !37, file: !38, line: 596, baseType: !16, size: 32, offset: 1024)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !37, file: !38, line: 597, baseType: !69, size: 64, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !37, file: !38, line: 632, baseType: !154, size: 2880, offset: 1152)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 599, size: 2880, elements: !155)
!155 = !{!156, !206}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !154, file: !38, line: 622, baseType: !157, size: 1728)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !38, line: 601, size: 1728, elements: !158)
!158 = !{!159, !160, !161, !165, !177, !178, !180, !188, !189, !190, !191, !195, !199, !200, !201, !202, !203, !204, !205}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !157, file: !38, line: 603, baseType: !115, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !157, file: !38, line: 604, baseType: !69, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !157, file: !38, line: 605, baseType: !162, size: 208, offset: 128)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 208, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 26)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !157, file: !38, line: 606, baseType: !166, size: 288, offset: 352)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !38, line: 55, size: 288, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !166, file: !38, line: 57, baseType: !16, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !166, file: !38, line: 58, baseType: !16, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !166, file: !38, line: 59, baseType: !16, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !166, file: !38, line: 60, baseType: !16, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !166, file: !38, line: 61, baseType: !16, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !166, file: !38, line: 62, baseType: !16, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !166, file: !38, line: 63, baseType: !16, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !166, file: !38, line: 64, baseType: !16, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !166, file: !38, line: 65, baseType: !16, size: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !157, file: !38, line: 607, baseType: !16, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !157, file: !38, line: 608, baseType: !179, size: 64, offset: 704)
!179 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !157, file: !38, line: 609, baseType: !181, size: 112, offset: 768)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !38, line: 319, size: 112, elements: !182)
!182 = !{!183, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !181, file: !38, line: 320, baseType: !184, size: 48)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !90)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !181, file: !38, line: 321, baseType: !184, size: 48, offset: 48)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !181, file: !38, line: 322, baseType: !185, size: 16, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !157, file: !38, line: 610, baseType: !106, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !157, file: !38, line: 611, baseType: !106, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !157, file: !38, line: 612, baseType: !106, size: 64, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !157, file: !38, line: 613, baseType: !192, size: 64, offset: 1088)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !157, file: !38, line: 614, baseType: !196, size: 192, offset: 1152)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 24)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !157, file: !38, line: 615, baseType: !16, size: 32, offset: 1344)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !157, file: !38, line: 616, baseType: !106, size: 64, offset: 1376)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !157, file: !38, line: 617, baseType: !106, size: 64, offset: 1440)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !157, file: !38, line: 618, baseType: !106, size: 64, offset: 1504)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !157, file: !38, line: 619, baseType: !106, size: 64, offset: 1568)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !157, file: !38, line: 620, baseType: !106, size: 64, offset: 1632)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !157, file: !38, line: 621, baseType: !16, size: 32, offset: 1696)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !154, file: !38, line: 631, baseType: !207, size: 2880)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !38, line: 626, size: 2880, elements: !208)
!208 = !{!209, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !207, file: !38, line: 629, baseType: !210, size: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1920, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 30)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !207, file: !38, line: 630, baseType: !214, size: 960, offset: 1920)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 960, elements: !211)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !37, file: !38, line: 636, baseType: !216, size: 64, offset: 4032)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !38, line: 93, size: 6336, elements: !218)
!218 = !{!219, !220, !221, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !217, file: !38, line: 94, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !217, file: !38, line: 95, baseType: !16, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !217, file: !38, line: 97, baseType: !222, size: 2048, offset: 128)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !226)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !{!31}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !217, file: !38, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !38, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !38, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !226)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !38, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !38, line: 78, baseType: !146, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !38, line: 81, baseType: !146, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !37, file: !38, line: 637, baseType: !217, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !37, file: !38, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !16}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !37, file: !38, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !38, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !38, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !38, line: 294, baseType: !16, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !38, line: 295, baseType: !42, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !37, file: !38, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 4224, elements: !90)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !252, line: 86, baseType: !106)
!252 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !23, file: !24, line: 183, baseType: !254, size: 64, offset: 1856)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!16, !36, !19, !74, !257, !250}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 40, baseType: !259)
!258 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !67, line: 129, baseType: !260)
!260 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !23, file: !24, line: 185, baseType: !16, size: 32, offset: 1920)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !23, file: !24, line: 186, baseType: !69, size: 64, offset: 1984)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !23, file: !24, line: 187, baseType: !264, size: 768, offset: 2048)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !265, line: 42, size: 768, elements: !266)
!265 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !264, file: !265, line: 44, baseType: !69, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !264, file: !265, line: 45, baseType: !69, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !264, file: !265, line: 46, baseType: !69, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !264, file: !265, line: 47, baseType: !69, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !264, file: !265, line: 48, baseType: !69, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !264, file: !265, line: 49, baseType: !69, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !264, file: !265, line: 50, baseType: !69, size: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !264, file: !265, line: 51, baseType: !69, size: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !264, file: !265, line: 52, baseType: !69, size: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !264, file: !265, line: 53, baseType: !69, size: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !264, file: !265, line: 54, baseType: !28, size: 8, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !264, file: !265, line: 55, baseType: !28, size: 8, offset: 648)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !264, file: !265, line: 56, baseType: !28, size: 8, offset: 656)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !264, file: !265, line: 57, baseType: !28, size: 8, offset: 664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !264, file: !265, line: 58, baseType: !28, size: 8, offset: 672)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !264, file: !265, line: 59, baseType: !28, size: 8, offset: 680)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !264, file: !265, line: 60, baseType: !28, size: 8, offset: 688)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !264, file: !265, line: 61, baseType: !28, size: 8, offset: 696)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !264, file: !265, line: 62, baseType: !28, size: 8, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !264, file: !265, line: 63, baseType: !28, size: 8, offset: 712)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !264, file: !265, line: 64, baseType: !28, size: 8, offset: 720)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !264, file: !265, line: 65, baseType: !28, size: 8, offset: 728)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !264, file: !265, line: 66, baseType: !28, size: 8, offset: 736)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !264, file: !265, line: 67, baseType: !28, size: 8, offset: 744)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !23, file: !24, line: 189, baseType: !292, size: 16, offset: 2816)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 16, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 2)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !23, file: !24, line: 190, baseType: !296, size: 256, offset: 2832)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !226)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !23, file: !24, line: 191, baseType: !296, size: 256, offset: 3088)
!298 = !{!299, !300, !301}
!299 = !DILocalVariable(name: "nptr", arg: 1, scope: !7, file: !1, line: 41, type: !11)
!300 = !DILocalVariable(name: "endptr", arg: 2, scope: !7, file: !1, line: 41, type: !17)
!301 = !DILocalVariable(name: "loc", arg: 3, scope: !7, file: !1, line: 42, type: !20)
!302 = !DILocation(line: 41, column: 38, scope: !7)
!303 = !DILocation(line: 41, column: 65, scope: !7)
!304 = !DILocation(line: 42, column: 14, scope: !7)
!305 = !DILocation(line: 46, column: 10, scope: !7)
!306 = !DILocation(line: 46, column: 3, scope: !7)
!307 = distinct !DISubprogram(name: "wcstold", scope: !1, file: !1, line: 115, type: !308, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{!10, !11, !17}
!310 = !{!311, !312}
!311 = !DILocalVariable(name: "nptr", arg: 1, scope: !307, file: !1, line: 115, type: !11)
!312 = !DILocalVariable(name: "endptr", arg: 2, scope: !307, file: !1, line: 115, type: !17)
!313 = !DILocation(line: 115, column: 36, scope: !307)
!314 = !DILocation(line: 115, column: 63, scope: !307)
!315 = !DILocation(line: 230, column: 10, scope: !316, inlinedAt: !319)
!316 = distinct !DISubprogram(name: "__get_current_locale", scope: !24, file: !24, line: 228, type: !317, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!317 = !DISubroutineType(types: !318)
!318 = !{!22}
!319 = distinct !DILocation(line: 119, column: 33, scope: !307)
!320 = !DILocation(line: 230, column: 18, scope: !316, inlinedAt: !319)
!321 = !{!322, !326, i64 72}
!322 = !{!"_reent", !323, i64 0, !326, i64 8, !326, i64 16, !326, i64 24, !323, i64 32, !324, i64 36, !323, i64 64, !326, i64 72, !323, i64 80, !326, i64 88, !326, i64 96, !323, i64 104, !326, i64 112, !326, i64 120, !323, i64 128, !326, i64 136, !324, i64 144, !326, i64 504, !327, i64 512, !326, i64 1304, !329, i64 1312, !324, i64 1336}
!323 = !{!"int", !324, i64 0}
!324 = !{!"omnipotent char", !325, i64 0}
!325 = !{!"Simple C/C++ TBAA"}
!326 = !{!"any pointer", !324, i64 0}
!327 = !{!"_atexit", !326, i64 0, !323, i64 8, !324, i64 16, !328, i64 272}
!328 = !{!"_on_exit_args", !324, i64 0, !324, i64 256, !323, i64 512, !323, i64 516}
!329 = !{!"_glue", !326, i64 0, !323, i64 8, !326, i64 16}
!330 = !DILocation(line: 119, column: 10, scope: !307)
!331 = !DILocation(line: 119, column: 3, scope: !307)
