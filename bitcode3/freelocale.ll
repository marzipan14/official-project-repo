; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/freelocale.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/freelocale.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: noredzone nounwind readnone
define dso_local void @_freelocale_r(%struct._reent* nocapture, %struct.__locale_t* nocapture) local_unnamed_addr #0 !dbg !7 {
  ret void, !dbg !295
}

; Function Attrs: noredzone nounwind
define dso_local void @freelocale(%struct.__locale_t* nocapture readnone) local_unnamed_addr #1 !dbg !296 {
  %2 = tail call %struct._reent* @__getreent() #4, !dbg !302
  ret void, !dbg !303
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/freelocale.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_freelocale_r", scope: !1, file: !1, line: 41, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !290)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !107}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !12, line: 569, size: 14912, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !16, !98, !99, !100, !101, !105, !106, !171, !172, !176, !188, !189, !190, !192, !193, !194, !256, !275, !276, !281, !288}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !11, file: !12, line: 571, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !12, line: 287, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !12, line: 181, size: 1408, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !37, !46, !52, !57, !61, !62, !63, !64, !68, !72, !73, !74, !76, !77, !81, !97}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !12, line: 182, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !12, line: 183, baseType: !15, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !12, line: 184, baseType: !15, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !12, line: 185, baseType: !27, size: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !12, line: 186, baseType: !27, size: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !12, line: 187, baseType: !30, size: 128, offset: 192)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !12, line: 117, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !12, line: 118, baseType: !22, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !12, line: 119, baseType: !15, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !12, line: 188, baseType: !15, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !12, line: 195, baseType: !36, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !12, line: 197, baseType: !38, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !10, !36, !44, !15}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !42, line: 145, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !12, line: 199, baseType: !47, size: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!41, !10, !36, !50, !15}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !12, line: 202, baseType: !53, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !10, !36, !56, !15}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !42, line: 114, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !12, line: 203, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!15, !10, !36}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !12, line: 206, baseType: !30, size: 128, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !19, file: !12, line: 207, baseType: !22, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !12, line: 208, baseType: !15, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !12, line: 211, baseType: !65, size: 24, offset: 928)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !12, line: 212, baseType: !69, size: 8, offset: 952)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !12, line: 215, baseType: !30, size: 128, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !12, line: 218, baseType: !15, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !12, line: 219, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !42, line: 44, baseType: !43)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !19, file: !12, line: 222, baseType: !10, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !12, line: 226, baseType: !78, size: 32, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !42, line: 175, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !80, line: 12, baseType: !15)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !19, file: !12, line: 228, baseType: !82, size: 64, offset: 1312)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !42, line: 171, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 163, size: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !83, file: !42, line: 165, baseType: !15, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !83, file: !42, line: 170, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !42, line: 166, size: 32, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !87, file: !42, line: 168, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !91, line: 124, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !87, file: !42, line: 169, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !12, line: 229, baseType: !15, size: 32, offset: 1376)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !11, file: !12, line: 578, baseType: !15, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !11, file: !12, line: 579, baseType: !102, size: 200, offset: 288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !11, file: !12, line: 582, baseType: !15, size: 32, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !11, file: !12, line: 583, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !109, line: 178, size: 3392, elements: !110)
!109 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !{!111, !116, !124, !133, !134, !135, !163, !167, !170}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !108, file: !109, line: 180, baseType: !112, size: 1792)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1792, elements: !113)
!113 = !{!114, !115}
!114 = !DISubrange(count: 7)
!115 = !DISubrange(count: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !108, file: !109, line: 181, baseType: !117, size: 64, offset: 1792)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!15, !10, !44, !120, !121}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !91, line: 83, baseType: !15)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !123, line: 86, baseType: !82)
!123 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !108, file: !109, line: 183, baseType: !125, size: 64, offset: 1856)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!15, !10, !128, !50, !129, !121}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 40, baseType: !131)
!130 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !42, line: 129, baseType: !132)
!132 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !108, file: !109, line: 185, baseType: !15, size: 32, offset: 1920)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !108, file: !109, line: 186, baseType: !44, size: 64, offset: 1984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !108, file: !109, line: 187, baseType: !136, size: 768, offset: 2048)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !137, line: 42, size: 768, elements: !138)
!137 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !136, file: !137, line: 44, baseType: !44, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !136, file: !137, line: 45, baseType: !44, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !136, file: !137, line: 46, baseType: !44, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !136, file: !137, line: 47, baseType: !44, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !136, file: !137, line: 48, baseType: !44, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !136, file: !137, line: 49, baseType: !44, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !136, file: !137, line: 50, baseType: !44, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !136, file: !137, line: 51, baseType: !44, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !136, file: !137, line: 52, baseType: !44, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !136, file: !137, line: 53, baseType: !44, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !136, file: !137, line: 54, baseType: !45, size: 8, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !136, file: !137, line: 55, baseType: !45, size: 8, offset: 648)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !136, file: !137, line: 56, baseType: !45, size: 8, offset: 656)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !136, file: !137, line: 57, baseType: !45, size: 8, offset: 664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !136, file: !137, line: 58, baseType: !45, size: 8, offset: 672)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !136, file: !137, line: 59, baseType: !45, size: 8, offset: 680)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !136, file: !137, line: 60, baseType: !45, size: 8, offset: 688)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !136, file: !137, line: 61, baseType: !45, size: 8, offset: 696)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !136, file: !137, line: 62, baseType: !45, size: 8, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !136, file: !137, line: 63, baseType: !45, size: 8, offset: 712)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !136, file: !137, line: 64, baseType: !45, size: 8, offset: 720)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !136, file: !137, line: 65, baseType: !45, size: 8, offset: 728)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !136, file: !137, line: 66, baseType: !45, size: 8, offset: 736)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !136, file: !137, line: 67, baseType: !45, size: 8, offset: 744)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !108, file: !109, line: 189, baseType: !164, size: 16, offset: 2816)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !108, file: !109, line: 190, baseType: !168, size: 256, offset: 2832)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, elements: !169)
!169 = !{!115}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !108, file: !109, line: 191, baseType: !168, size: 256, offset: 3088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !11, file: !12, line: 585, baseType: !15, size: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !11, file: !12, line: 587, baseType: !173, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !10}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !11, file: !12, line: 590, baseType: !177, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !12, line: 47, size: 256, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !178, file: !12, line: 49, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !178, file: !12, line: 50, baseType: !15, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !178, file: !12, line: 50, baseType: !15, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !178, file: !12, line: 50, baseType: !15, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !178, file: !12, line: 50, baseType: !15, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !178, file: !12, line: 51, baseType: !186, size: 32, offset: 192)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 32, elements: !70)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !12, line: 25, baseType: !92)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !11, file: !12, line: 591, baseType: !15, size: 32, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !11, file: !12, line: 592, baseType: !177, size: 64, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !11, file: !12, line: 593, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !11, file: !12, line: 596, baseType: !15, size: 32, offset: 1024)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !11, file: !12, line: 597, baseType: !44, size: 64, offset: 1088)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !11, file: !12, line: 632, baseType: !195, size: 2880, offset: 1152)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !11, file: !12, line: 599, size: 2880, elements: !196)
!196 = !{!197, !247}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !195, file: !12, line: 622, baseType: !198, size: 1728)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !12, line: 601, size: 1728, elements: !199)
!199 = !{!200, !201, !202, !206, !218, !219, !221, !229, !230, !231, !232, !236, !240, !241, !242, !243, !244, !245, !246}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !198, file: !12, line: 603, baseType: !92, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !198, file: !12, line: 604, baseType: !44, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !198, file: !12, line: 605, baseType: !203, size: 208, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 26)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !198, file: !12, line: 606, baseType: !207, size: 288, offset: 352)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !12, line: 55, size: 288, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !207, file: !12, line: 57, baseType: !15, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !207, file: !12, line: 58, baseType: !15, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !207, file: !12, line: 59, baseType: !15, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !207, file: !12, line: 60, baseType: !15, size: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !207, file: !12, line: 61, baseType: !15, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !207, file: !12, line: 62, baseType: !15, size: 32, offset: 160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !207, file: !12, line: 63, baseType: !15, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !207, file: !12, line: 64, baseType: !15, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !207, file: !12, line: 65, baseType: !15, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !198, file: !12, line: 607, baseType: !15, size: 32, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !198, file: !12, line: 608, baseType: !220, size: 64, offset: 704)
!220 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !198, file: !12, line: 609, baseType: !222, size: 112, offset: 768)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !12, line: 319, size: 112, elements: !223)
!223 = !{!224, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !222, file: !12, line: 320, baseType: !225, size: 48)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !66)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !222, file: !12, line: 321, baseType: !225, size: 48, offset: 48)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !222, file: !12, line: 322, baseType: !226, size: 16, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !198, file: !12, line: 610, baseType: !82, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !198, file: !12, line: 611, baseType: !82, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !198, file: !12, line: 612, baseType: !82, size: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !198, file: !12, line: 613, baseType: !233, size: 64, offset: 1088)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 8)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !198, file: !12, line: 614, baseType: !237, size: 192, offset: 1152)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 24)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !198, file: !12, line: 615, baseType: !15, size: 32, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !198, file: !12, line: 616, baseType: !82, size: 64, offset: 1376)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !198, file: !12, line: 617, baseType: !82, size: 64, offset: 1440)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !198, file: !12, line: 618, baseType: !82, size: 64, offset: 1504)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !198, file: !12, line: 619, baseType: !82, size: 64, offset: 1568)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !198, file: !12, line: 620, baseType: !82, size: 64, offset: 1632)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !198, file: !12, line: 621, baseType: !15, size: 32, offset: 1696)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !195, file: !12, line: 631, baseType: !248, size: 2880)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !12, line: 626, size: 2880, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !248, file: !12, line: 629, baseType: !251, size: 1920)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 30)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !248, file: !12, line: 630, baseType: !255, size: 960, offset: 1920)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 960, elements: !252)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !11, file: !12, line: 636, baseType: !257, size: 64, offset: 4032)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !12, line: 93, size: 6336, elements: !259)
!259 = !{!260, !261, !262, !267}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !258, file: !12, line: 94, baseType: !257, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !258, file: !12, line: 95, baseType: !15, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !258, file: !12, line: 97, baseType: !263, size: 2048, offset: 128)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 2048, elements: !169)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !258, file: !12, line: 98, baseType: !268, size: 4160, offset: 2176)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !12, line: 74, size: 4160, elements: !269)
!269 = !{!270, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !268, file: !12, line: 75, baseType: !271, size: 2048)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !169)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !268, file: !12, line: 76, baseType: !271, size: 2048, offset: 2048)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !268, file: !12, line: 78, baseType: !187, size: 32, offset: 4096)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !268, file: !12, line: 81, baseType: !187, size: 32, offset: 4128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !11, file: !12, line: 637, baseType: !258, size: 6336, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !11, file: !12, line: 641, baseType: !277, size: 64, offset: 10432)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !15}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !11, file: !12, line: 646, baseType: !282, size: 192, offset: 10496)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !12, line: 291, size: 192, elements: !283)
!283 = !{!284, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !282, file: !12, line: 293, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !282, file: !12, line: 294, baseType: !15, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !282, file: !12, line: 295, baseType: !17, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !11, file: !12, line: 648, baseType: !289, size: 4224, offset: 10688)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4224, elements: !66)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 41, type: !10)
!292 = !DILocalVariable(name: "locobj", arg: 2, scope: !7, file: !1, line: 41, type: !107)
!293 = !DILocation(line: 41, column: 31, scope: !7)
!294 = !DILocation(line: 41, column: 53, scope: !7)
!295 = !DILocation(line: 58, column: 1, scope: !7)
!296 = distinct !DISubprogram(name: "freelocale", scope: !1, file: !1, line: 61, type: !297, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !107}
!299 = !{!300}
!300 = !DILocalVariable(name: "locobj", arg: 1, scope: !296, file: !1, line: 61, type: !107)
!301 = !DILocation(line: 61, column: 32, scope: !296)
!302 = !DILocation(line: 63, column: 18, scope: !296)
!303 = !DILocation(line: 64, column: 1, scope: !296)
