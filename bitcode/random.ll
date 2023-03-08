; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/random.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/random.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @srandom(i32) local_unnamed_addr #0 !dbg !9 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !235
  %3 = zext i32 %0 to i64, !dbg !237
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 11, !dbg !238
  %5 = bitcast i8** %4 to i64*, !dbg !238
  store i64 %3, i64* %5, align 8, !dbg !239, !tbaa !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  ret void, !dbg !243
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @random() local_unnamed_addr #0 !dbg !244 {
  %1 = tail call %struct._reent* @__getreent() #3, !dbg !248
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i64 0, i32 16, i32 0, i32 0, i64 11, !dbg !250
  %3 = bitcast i8** %2 to i64*, !dbg !250
  %4 = load i64, i64* %3, align 8, !dbg !250, !tbaa !240
  %5 = mul i64 %4, 6364136223846793005, !dbg !251
  %6 = add i64 %5, 1, !dbg !252
  store i64 %6, i64* %3, align 8, !dbg !253, !tbaa !240
  %7 = lshr i64 %6, 32, !dbg !254
  %8 = and i64 %7, 2147483647, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret i64 %8, !dbg !256
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/random.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "srandom", scope: !1, file: !1, line: 60, type: !10, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "seed", arg: 1, scope: !9, file: !1, line: 60, type: !12)
!15 = !DILocalVariable(name: "reent", scope: !9, file: !1, line: 62, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !22, !102, !103, !104, !105, !109, !110, !113, !114, !118, !130, !131, !132, !134, !135, !136, !198, !219, !220, !225, !232}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !17, file: !18, line: 571, baseType: !21, size: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !26)
!26 = !{!27, !30, !31, !32, !34, !35, !40, !41, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !101}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !18, line: 182, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !18, line: 183, baseType: !21, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !18, line: 184, baseType: !21, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !18, line: 185, baseType: !33, size: 16, offset: 128)
!33 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !18, line: 186, baseType: !33, size: 16, offset: 144)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !18, line: 187, baseType: !36, size: 128, offset: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !36, file: !18, line: 118, baseType: !28, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !36, file: !18, line: 119, baseType: !21, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !18, line: 188, baseType: !21, size: 32, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !18, line: 195, baseType: !42, size: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !18, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !16, !42, !49, !21}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !4)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !18, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !16, !42, !55, !21}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !18, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !16, !42, !61, !21}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !4)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !18, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!21, !16, !42}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !18, line: 206, baseType: !36, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !18, line: 207, baseType: !28, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !18, line: 208, baseType: !21, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !18, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !18, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !18, line: 215, baseType: !36, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !18, line: 218, baseType: !21, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !18, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !4)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !18, line: 222, baseType: !16, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !18, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !21)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !18, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !48, line: 165, baseType: !21, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !48, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !48, line: 166, size: 32, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !48, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !12)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !18, line: 229, baseType: !21, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !17, file: !18, line: 578, baseType: !21, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !17, file: !18, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !17, file: !18, line: 582, baseType: !21, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !17, file: !18, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !18, line: 40, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !21, size: 32, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !16}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !120, file: !18, line: 49, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !120, file: !18, line: 50, baseType: !21, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !120, file: !18, line: 50, baseType: !21, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !120, file: !18, line: 50, baseType: !21, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !120, file: !18, line: 50, baseType: !21, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !120, file: !18, line: 51, baseType: !128, size: 32, offset: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !75)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !12)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !21, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !119, size: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !21, size: 32, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !49, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !137, size: 2880, offset: 1152)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !138)
!138 = !{!139, !189}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !137, file: !18, line: 622, baseType: !140, size: 1728)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !18, line: 601, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !148, !160, !161, !163, !171, !172, !173, !174, !178, !182, !183, !184, !185, !186, !187, !188}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !140, file: !18, line: 603, baseType: !12, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !140, file: !18, line: 604, baseType: !49, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !140, file: !18, line: 605, baseType: !145, size: 208, offset: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 26)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !140, file: !18, line: 606, baseType: !149, size: 288, offset: 352)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !149, file: !18, line: 57, baseType: !21, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !149, file: !18, line: 58, baseType: !21, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !149, file: !18, line: 59, baseType: !21, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !149, file: !18, line: 60, baseType: !21, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !149, file: !18, line: 61, baseType: !21, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !149, file: !18, line: 62, baseType: !21, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !149, file: !18, line: 63, baseType: !21, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !149, file: !18, line: 64, baseType: !21, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !149, file: !18, line: 65, baseType: !21, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !140, file: !18, line: 607, baseType: !21, size: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !140, file: !18, line: 608, baseType: !162, size: 64, offset: 704)
!162 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !140, file: !18, line: 609, baseType: !164, size: 112, offset: 768)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !165)
!165 = !{!166, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !164, file: !18, line: 320, baseType: !167, size: 48)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !71)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !164, file: !18, line: 321, baseType: !167, size: 48, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !164, file: !18, line: 322, baseType: !168, size: 16, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !140, file: !18, line: 610, baseType: !87, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !140, file: !18, line: 611, baseType: !87, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !140, file: !18, line: 612, baseType: !87, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !140, file: !18, line: 613, baseType: !175, size: 64, offset: 1088)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !140, file: !18, line: 614, baseType: !179, size: 192, offset: 1152)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 24)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !140, file: !18, line: 615, baseType: !21, size: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !140, file: !18, line: 616, baseType: !87, size: 64, offset: 1376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !140, file: !18, line: 617, baseType: !87, size: 64, offset: 1440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !140, file: !18, line: 618, baseType: !87, size: 64, offset: 1504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !140, file: !18, line: 619, baseType: !87, size: 64, offset: 1568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !140, file: !18, line: 620, baseType: !87, size: 64, offset: 1632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !140, file: !18, line: 621, baseType: !21, size: 32, offset: 1696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !137, file: !18, line: 631, baseType: !190, size: 2880)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !18, line: 626, size: 2880, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !190, file: !18, line: 629, baseType: !193, size: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1920, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 30)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !190, file: !18, line: 630, baseType: !197, size: 960, offset: 1920)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 960, elements: !194)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !17, file: !18, line: 636, baseType: !199, size: 64, offset: 4032)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !201)
!201 = !{!202, !203, !204, !211}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !200, file: !18, line: 94, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !200, file: !18, line: 95, baseType: !21, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !200, file: !18, line: 97, baseType: !205, size: 2048, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !209)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !{!210}
!210 = !DISubrange(count: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !200, file: !18, line: 98, baseType: !212, size: 4160, offset: 2176)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !212, file: !18, line: 75, baseType: !215, size: 2048)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !209)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !212, file: !18, line: 76, baseType: !215, size: 2048, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !212, file: !18, line: 78, baseType: !129, size: 32, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !212, file: !18, line: 81, baseType: !129, size: 32, offset: 4128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !17, file: !18, line: 637, baseType: !200, size: 6336, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !17, file: !18, line: 641, baseType: !221, size: 64, offset: 10432)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !21}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !17, file: !18, line: 646, baseType: !226, size: 192, offset: 10496)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !227)
!227 = !{!228, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !226, file: !18, line: 293, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !226, file: !18, line: 294, baseType: !21, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !226, file: !18, line: 295, baseType: !23, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !17, file: !18, line: 648, baseType: !233, size: 4224, offset: 10688)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !71)
!234 = !DILocation(line: 60, column: 1, scope: !9)
!235 = !DILocation(line: 62, column: 26, scope: !9)
!236 = !DILocation(line: 62, column: 18, scope: !9)
!237 = !DILocation(line: 65, column: 29, scope: !9)
!238 = !DILocation(line: 65, column: 3, scope: !9)
!239 = !DILocation(line: 65, column: 27, scope: !9)
!240 = !{!241, !241, i64 0}
!241 = !{!"omnipotent char", !242, i64 0}
!242 = !{!"Simple C/C++ TBAA"}
!243 = !DILocation(line: 66, column: 1, scope: !9)
!244 = distinct !DISubprogram(name: "random", scope: !1, file: !1, line: 69, type: !245, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !246)
!245 = !DISubroutineType(types: !3)
!246 = !{!247}
!247 = !DILocalVariable(name: "reent", scope: !244, file: !1, line: 71, type: !16)
!248 = !DILocation(line: 71, column: 26, scope: !244)
!249 = !DILocation(line: 71, column: 18, scope: !244)
!250 = !DILocation(line: 78, column: 6, scope: !244)
!251 = !DILocation(line: 78, column: 30, scope: !244)
!252 = !DILocation(line: 78, column: 68, scope: !244)
!253 = !DILocation(line: 77, column: 27, scope: !244)
!254 = !DILocation(line: 79, column: 46, scope: !244)
!255 = !DILocation(line: 79, column: 53, scope: !244)
!256 = !DILocation(line: 79, column: 3, scope: !244)