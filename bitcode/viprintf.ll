; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/viprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/viprintf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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
define dso_local i32 @viprintf(i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !242
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 2, !dbg !244
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8, !dbg !244, !tbaa !245
  %6 = tail call i32 @_vfiprintf_r(%struct._reent* %3, %struct.__sFILE* %5, i8* %0, %struct.__va_list_tag* %1) #3, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  ret i32 %6, !dbg !255
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_vfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @_viprintf_r(%struct._reent*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !256 {
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 2, !dbg !264
  %5 = load %struct.__sFILE*, %struct.__sFILE** %4, align 8, !dbg !264, !tbaa !245
  %6 = tail call i32 @_vfiprintf_r(%struct._reent* %0, %struct.__sFILE* %5, i8* %1, %struct.__va_list_tag* %2) #3, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i32 %6, !dbg !266
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/viprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "viprintf", scope: !1, file: !1, line: 108, type: !8, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !16)
!16 = !{!17, !19, !20, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !15, file: !1, baseType: !18, size: 32)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !15, file: !1, baseType: !18, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !15, file: !1, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !15, file: !1, baseType: !21, size: 64, offset: 128)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !1, line: 108, type: !11)
!25 = !DILocalVariable(name: "ap", arg: 2, scope: !7, file: !1, line: 108, type: !14)
!26 = !DILocalVariable(name: "reent", scope: !7, file: !1, line: 112, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !29, line: 569, size: 14912, elements: !30)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!30 = !{!31, !32, !109, !110, !111, !112, !116, !117, !120, !121, !125, !137, !138, !139, !141, !142, !143, !205, !226, !227, !232, !239}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !28, file: !29, line: 571, baseType: !10, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !28, file: !29, line: 576, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !29, line: 287, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !29, line: 181, size: 1408, elements: !36)
!36 = !{!37, !40, !41, !42, !44, !45, !50, !51, !52, !60, !64, !69, !73, !74, !75, !76, !80, !84, !85, !86, !88, !89, !93, !108}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !35, file: !29, line: 182, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !35, file: !29, line: 183, baseType: !10, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !35, file: !29, line: 184, baseType: !10, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !35, file: !29, line: 185, baseType: !43, size: 16, offset: 128)
!43 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !35, file: !29, line: 186, baseType: !43, size: 16, offset: 144)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !35, file: !29, line: 187, baseType: !46, size: 128, offset: 192)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !29, line: 117, size: 128, elements: !47)
!47 = !{!48, !49}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !46, file: !29, line: 118, baseType: !38, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !46, file: !29, line: 119, baseType: !10, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !35, file: !29, line: 188, baseType: !10, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !35, file: !29, line: 195, baseType: !21, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !35, file: !29, line: 197, baseType: !53, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !27, !21, !59, !10}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !57, line: 145, baseType: !58)
!57 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !35, file: !29, line: 199, baseType: !61, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!56, !27, !21, !11, !10}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !35, file: !29, line: 202, baseType: !65, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !27, !21, !68, !10}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !57, line: 114, baseType: !58)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !35, file: !29, line: 203, baseType: !70, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!10, !27, !21}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !35, file: !29, line: 206, baseType: !46, size: 128, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !35, file: !29, line: 207, baseType: !38, size: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !35, file: !29, line: 208, baseType: !10, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !35, file: !29, line: 211, baseType: !77, size: 24, offset: 928)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 24, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !35, file: !29, line: 212, baseType: !81, size: 8, offset: 952)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !35, file: !29, line: 215, baseType: !46, size: 128, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !35, file: !29, line: 218, baseType: !10, size: 32, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !35, file: !29, line: 219, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !57, line: 44, baseType: !58)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !35, file: !29, line: 222, baseType: !27, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !35, file: !29, line: 226, baseType: !90, size: 32, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !57, line: 175, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !92, line: 12, baseType: !10)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !35, file: !29, line: 228, baseType: !94, size: 64, offset: 1312)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !57, line: 171, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 163, size: 64, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !95, file: !57, line: 165, baseType: !10, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !95, file: !57, line: 170, baseType: !99, size: 32, offset: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !57, line: 166, size: 32, elements: !100)
!100 = !{!101, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !99, file: !57, line: 168, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !103, line: 124, baseType: !18)
!103 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !99, file: !57, line: 169, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !35, file: !29, line: 229, baseType: !10, size: 32, offset: 1376)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !28, file: !29, line: 576, baseType: !33, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !28, file: !29, line: 576, baseType: !33, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !28, file: !29, line: 578, baseType: !10, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !28, file: !29, line: 579, baseType: !113, size: 200, offset: 288)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 200, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 25)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !28, file: !29, line: 582, baseType: !10, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !28, file: !29, line: 583, baseType: !118, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !29, line: 40, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !28, file: !29, line: 585, baseType: !10, size: 32, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !28, file: !29, line: 587, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !27}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !28, file: !29, line: 590, baseType: !126, size: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !29, line: 47, size: 256, elements: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !127, file: !29, line: 49, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !127, file: !29, line: 50, baseType: !10, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !127, file: !29, line: 50, baseType: !10, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !127, file: !29, line: 50, baseType: !10, size: 32, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !127, file: !29, line: 50, baseType: !10, size: 32, offset: 160)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !127, file: !29, line: 51, baseType: !135, size: 32, offset: 192)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !82)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !29, line: 25, baseType: !18)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !28, file: !29, line: 591, baseType: !10, size: 32, offset: 832)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !28, file: !29, line: 592, baseType: !126, size: 64, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !28, file: !29, line: 593, baseType: !140, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !28, file: !29, line: 596, baseType: !10, size: 32, offset: 1024)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !28, file: !29, line: 597, baseType: !59, size: 64, offset: 1088)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !28, file: !29, line: 632, baseType: !144, size: 2880, offset: 1152)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !28, file: !29, line: 599, size: 2880, elements: !145)
!145 = !{!146, !196}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !144, file: !29, line: 622, baseType: !147, size: 1728)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !29, line: 601, size: 1728, elements: !148)
!148 = !{!149, !150, !151, !155, !167, !168, !170, !178, !179, !180, !181, !185, !189, !190, !191, !192, !193, !194, !195}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !147, file: !29, line: 603, baseType: !18, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !147, file: !29, line: 604, baseType: !59, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !147, file: !29, line: 605, baseType: !152, size: 208, offset: 128)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 208, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 26)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !147, file: !29, line: 606, baseType: !156, size: 288, offset: 352)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !29, line: 55, size: 288, elements: !157)
!157 = !{!158, !159, !160, !161, !162, !163, !164, !165, !166}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !156, file: !29, line: 57, baseType: !10, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !156, file: !29, line: 58, baseType: !10, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !156, file: !29, line: 59, baseType: !10, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !156, file: !29, line: 60, baseType: !10, size: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !156, file: !29, line: 61, baseType: !10, size: 32, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !156, file: !29, line: 62, baseType: !10, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !156, file: !29, line: 63, baseType: !10, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !156, file: !29, line: 64, baseType: !10, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !156, file: !29, line: 65, baseType: !10, size: 32, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !147, file: !29, line: 607, baseType: !10, size: 32, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !147, file: !29, line: 608, baseType: !169, size: 64, offset: 704)
!169 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !147, file: !29, line: 609, baseType: !171, size: 112, offset: 768)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !29, line: 319, size: 112, elements: !172)
!172 = !{!173, !176, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !171, file: !29, line: 320, baseType: !174, size: 48)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 48, elements: !78)
!175 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !171, file: !29, line: 321, baseType: !174, size: 48, offset: 48)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !171, file: !29, line: 322, baseType: !175, size: 16, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !147, file: !29, line: 610, baseType: !94, size: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !147, file: !29, line: 611, baseType: !94, size: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !147, file: !29, line: 612, baseType: !94, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !147, file: !29, line: 613, baseType: !182, size: 64, offset: 1088)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !147, file: !29, line: 614, baseType: !186, size: 192, offset: 1152)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 24)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !147, file: !29, line: 615, baseType: !10, size: 32, offset: 1344)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !147, file: !29, line: 616, baseType: !94, size: 64, offset: 1376)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !147, file: !29, line: 617, baseType: !94, size: 64, offset: 1440)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !147, file: !29, line: 618, baseType: !94, size: 64, offset: 1504)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !147, file: !29, line: 619, baseType: !94, size: 64, offset: 1568)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !147, file: !29, line: 620, baseType: !94, size: 64, offset: 1632)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !147, file: !29, line: 621, baseType: !10, size: 32, offset: 1696)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !144, file: !29, line: 631, baseType: !197, size: 2880)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !29, line: 626, size: 2880, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !197, file: !29, line: 629, baseType: !200, size: 1920)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1920, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 30)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !197, file: !29, line: 630, baseType: !204, size: 960, offset: 1920)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 960, elements: !201)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !28, file: !29, line: 636, baseType: !206, size: 64, offset: 4032)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !29, line: 93, size: 6336, elements: !208)
!208 = !{!209, !210, !211, !218}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !207, file: !29, line: 94, baseType: !206, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !207, file: !29, line: 95, baseType: !10, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !207, file: !29, line: 97, baseType: !212, size: 2048, offset: 128)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 2048, elements: !216)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !{!217}
!217 = !DISubrange(count: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !207, file: !29, line: 98, baseType: !219, size: 4160, offset: 2176)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !29, line: 74, size: 4160, elements: !220)
!220 = !{!221, !223, !224, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !219, file: !29, line: 75, baseType: !222, size: 2048)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !216)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !219, file: !29, line: 76, baseType: !222, size: 2048, offset: 2048)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !219, file: !29, line: 78, baseType: !136, size: 32, offset: 4096)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !219, file: !29, line: 81, baseType: !136, size: 32, offset: 4128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !28, file: !29, line: 637, baseType: !207, size: 6336, offset: 4096)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !28, file: !29, line: 641, baseType: !228, size: 64, offset: 10432)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !10}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !28, file: !29, line: 646, baseType: !233, size: 192, offset: 10496)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !29, line: 291, size: 192, elements: !234)
!234 = !{!235, !237, !238}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !233, file: !29, line: 293, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !233, file: !29, line: 294, baseType: !10, size: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !233, file: !29, line: 295, baseType: !33, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !28, file: !29, line: 648, baseType: !240, size: 4224, offset: 10688)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 4224, elements: !78)
!241 = !DILocation(line: 108, column: 1, scope: !7)
!242 = !DILocation(line: 112, column: 26, scope: !7)
!243 = !DILocation(line: 112, column: 18, scope: !7)
!244 = !DILocation(line: 115, column: 31, scope: !7)
!245 = !{!246, !250, i64 16}
!246 = !{!"_reent", !247, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !247, i64 32, !248, i64 36, !247, i64 64, !250, i64 72, !247, i64 80, !250, i64 88, !250, i64 96, !247, i64 104, !250, i64 112, !250, i64 120, !247, i64 128, !250, i64 136, !248, i64 144, !250, i64 504, !251, i64 512, !250, i64 1304, !253, i64 1312, !248, i64 1336}
!247 = !{!"int", !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C/C++ TBAA"}
!250 = !{!"any pointer", !248, i64 0}
!251 = !{!"_atexit", !250, i64 0, !247, i64 8, !248, i64 16, !252, i64 272}
!252 = !{!"_on_exit_args", !248, i64 0, !248, i64 256, !247, i64 512, !247, i64 516}
!253 = !{!"_glue", !250, i64 0, !247, i64 8, !250, i64 16}
!254 = !DILocation(line: 115, column: 10, scope: !7)
!255 = !DILocation(line: 115, column: 3, scope: !7)
!256 = distinct !DISubprogram(name: "_viprintf_r", scope: !1, file: !1, line: 121, type: !257, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!10, !27, !11, !14}
!259 = !{!260, !261, !262}
!260 = !DILocalVariable(name: "ptr", arg: 1, scope: !256, file: !1, line: 121, type: !27)
!261 = !DILocalVariable(name: "fmt", arg: 2, scope: !256, file: !1, line: 121, type: !11)
!262 = !DILocalVariable(name: "ap", arg: 3, scope: !256, file: !1, line: 121, type: !14)
!263 = !DILocation(line: 121, column: 1, scope: !256)
!264 = !DILocation(line: 127, column: 29, scope: !256)
!265 = !DILocation(line: 127, column: 10, scope: !256)
!266 = !DILocation(line: 127, column: 3, scope: !256)