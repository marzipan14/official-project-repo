; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fsetlocking.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fsetlocking.c"
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
define dso_local i32 @__fsetlocking(%struct.__sFILE* nocapture, i32) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !240
  %4 = icmp eq %struct._reent* %3, null, !dbg !241
  br i1 %4, label %10, label %5, !dbg !241

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !241
  %7 = load i32, i32* %6, align 8, !dbg !241, !tbaa !243
  %8 = icmp eq i32 %7, 0, !dbg !241
  br i1 %8, label %9, label %10, !dbg !240

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #3, !dbg !241
  br label %10, !dbg !241

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 23, !dbg !252
  %12 = load i32, i32* %11, align 4, !dbg !252, !tbaa !253
  %13 = and i32 %12, 1, !dbg !259
  %14 = icmp eq i32 %13, 0, !dbg !260
  %15 = select i1 %14, i32 1, i32 2, !dbg !260
  switch i32 %1, label %22 [
    i32 2, label %16
    i32 1, label %18
  ], !dbg !262

; <label>:16:                                     ; preds = %10
  %17 = or i32 %12, 1, !dbg !263
  br label %20, !dbg !265

; <label>:18:                                     ; preds = %10
  %19 = and i32 %12, -2, !dbg !266
  br label %20, !dbg !267

; <label>:20:                                     ; preds = %16, %18
  %21 = phi i32 [ %19, %18 ], [ %17, %16 ]
  store i32 %21, i32* %11, align 4, !dbg !268, !tbaa !253
  br label %22, !dbg !269

; <label>:22:                                     ; preds = %20, %10
  ret i32 %15, !dbg !269
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fsetlocking.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__fsetlocking", scope: !1, file: !1, line: 68, type: !8, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !233)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 66, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !15, line: 287, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 181, size: 1408, elements: !17)
!17 = !{!18, !21, !22, !23, !25, !26, !31, !32, !34, !200, !206, !211, !215, !216, !217, !218, !220, !222, !223, !224, !226, !227, !231, !232}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !16, file: !15, line: 182, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !16, file: !15, line: 183, baseType: !10, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !16, file: !15, line: 184, baseType: !10, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !16, file: !15, line: 185, baseType: !24, size: 16, offset: 128)
!24 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !16, file: !15, line: 186, baseType: !24, size: 16, offset: 144)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !16, file: !15, line: 187, baseType: !27, size: 128, offset: 192)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 117, size: 128, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !27, file: !15, line: 118, baseType: !19, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !27, file: !15, line: 119, baseType: !10, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !16, file: !15, line: 188, baseType: !10, size: 32, offset: 320)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !16, file: !15, line: 195, baseType: !33, size: 64, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !16, file: !15, line: 197, baseType: !35, size: 64, offset: 448)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !41, !33, !85, !10}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !39, line: 145, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !43)
!43 = !{!44, !45, !47, !48, !49, !50, !55, !56, !59, !60, !64, !79, !80, !81, !83, !84, !86, !164, !185, !186, !191, !198}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !42, file: !15, line: 571, baseType: !10, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !42, file: !15, line: 576, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !42, file: !15, line: 576, baseType: !46, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !42, file: !15, line: 576, baseType: !46, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !42, file: !15, line: 578, baseType: !10, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !42, file: !15, line: 579, baseType: !51, size: 200, offset: 288)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 200, elements: !53)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!54}
!54 = !DISubrange(count: 25)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !42, file: !15, line: 582, baseType: !10, size: 32, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !42, file: !15, line: 583, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !15, line: 40, flags: DIFlagFwdDecl)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !42, file: !15, line: 585, baseType: !10, size: 32, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !42, file: !15, line: 587, baseType: !61, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !41}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !42, file: !15, line: 590, baseType: !65, size: 64, offset: 768)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !66, file: !15, line: 49, baseType: !65, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !66, file: !15, line: 50, baseType: !10, size: 32, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !66, file: !15, line: 50, baseType: !10, size: 32, offset: 96)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !66, file: !15, line: 50, baseType: !10, size: 32, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !66, file: !15, line: 50, baseType: !10, size: 32, offset: 160)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !66, file: !15, line: 51, baseType: !74, size: 32, offset: 192)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32, elements: !77)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !76)
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !42, file: !15, line: 591, baseType: !10, size: 32, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !42, file: !15, line: 592, baseType: !65, size: 64, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !42, file: !15, line: 593, baseType: !82, size: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !42, file: !15, line: 596, baseType: !10, size: 32, offset: 1024)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !42, file: !15, line: 597, baseType: !85, size: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !42, file: !15, line: 632, baseType: !87, size: 2880, offset: 1152)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !15, line: 599, size: 2880, elements: !88)
!88 = !{!89, !155}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !87, file: !15, line: 622, baseType: !90, size: 1728)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !15, line: 601, size: 1728, elements: !91)
!91 = !{!92, !93, !94, !98, !110, !111, !113, !123, !138, !139, !140, !144, !148, !149, !150, !151, !152, !153, !154}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !90, file: !15, line: 603, baseType: !76, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !90, file: !15, line: 604, baseType: !85, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !90, file: !15, line: 605, baseType: !95, size: 208, offset: 128)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 208, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 26)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !90, file: !15, line: 606, baseType: !99, size: 288, offset: 352)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !99, file: !15, line: 57, baseType: !10, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !99, file: !15, line: 58, baseType: !10, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !99, file: !15, line: 59, baseType: !10, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !99, file: !15, line: 60, baseType: !10, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !99, file: !15, line: 61, baseType: !10, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !99, file: !15, line: 62, baseType: !10, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !99, file: !15, line: 63, baseType: !10, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !99, file: !15, line: 64, baseType: !10, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !99, file: !15, line: 65, baseType: !10, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !90, file: !15, line: 607, baseType: !10, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !90, file: !15, line: 608, baseType: !112, size: 64, offset: 704)
!112 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !90, file: !15, line: 609, baseType: !114, size: 112, offset: 768)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !115)
!115 = !{!116, !121, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !114, file: !15, line: 320, baseType: !117, size: 48)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 48, elements: !119)
!118 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!119 = !{!120}
!120 = !DISubrange(count: 3)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !114, file: !15, line: 321, baseType: !117, size: 48, offset: 48)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !114, file: !15, line: 322, baseType: !118, size: 16, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !90, file: !15, line: 610, baseType: !124, size: 64, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !39, line: 171, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 163, size: 64, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !125, file: !39, line: 165, baseType: !10, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !125, file: !39, line: 170, baseType: !129, size: 32, offset: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !39, line: 166, size: 32, elements: !130)
!130 = !{!131, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !129, file: !39, line: 168, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !133, line: 124, baseType: !76)
!133 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !129, file: !39, line: 169, baseType: !135, size: 32)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 4)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !90, file: !15, line: 611, baseType: !124, size: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !90, file: !15, line: 612, baseType: !124, size: 64, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !90, file: !15, line: 613, baseType: !141, size: 64, offset: 1088)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !90, file: !15, line: 614, baseType: !145, size: 192, offset: 1152)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 24)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !90, file: !15, line: 615, baseType: !10, size: 32, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !90, file: !15, line: 616, baseType: !124, size: 64, offset: 1376)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !90, file: !15, line: 617, baseType: !124, size: 64, offset: 1440)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !90, file: !15, line: 618, baseType: !124, size: 64, offset: 1504)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !90, file: !15, line: 619, baseType: !124, size: 64, offset: 1568)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !90, file: !15, line: 620, baseType: !124, size: 64, offset: 1632)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !90, file: !15, line: 621, baseType: !10, size: 32, offset: 1696)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !87, file: !15, line: 631, baseType: !156, size: 2880)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !87, file: !15, line: 626, size: 2880, elements: !157)
!157 = !{!158, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !156, file: !15, line: 629, baseType: !159, size: 1920)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1920, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 30)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !156, file: !15, line: 630, baseType: !163, size: 960, offset: 1920)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 960, elements: !160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !42, file: !15, line: 636, baseType: !165, size: 64, offset: 4032)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !167)
!167 = !{!168, !169, !170, !177}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !166, file: !15, line: 94, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !166, file: !15, line: 95, baseType: !10, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !166, file: !15, line: 97, baseType: !171, size: 2048, offset: 128)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 2048, elements: !175)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null}
!175 = !{!176}
!176 = !DISubrange(count: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !166, file: !15, line: 98, baseType: !178, size: 4160, offset: 2176)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !179)
!179 = !{!180, !182, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !178, file: !15, line: 75, baseType: !181, size: 2048)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !175)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !178, file: !15, line: 76, baseType: !181, size: 2048, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !178, file: !15, line: 78, baseType: !75, size: 32, offset: 4096)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !178, file: !15, line: 81, baseType: !75, size: 32, offset: 4128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !42, file: !15, line: 637, baseType: !166, size: 6336, offset: 4096)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !42, file: !15, line: 641, baseType: !187, size: 64, offset: 10432)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !10}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !42, file: !15, line: 646, baseType: !192, size: 192, offset: 10496)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !193)
!193 = !{!194, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !192, file: !15, line: 293, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !192, file: !15, line: 294, baseType: !10, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !192, file: !15, line: 295, baseType: !46, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !42, file: !15, line: 648, baseType: !199, size: 4224, offset: 10688)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4224, elements: !119)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !16, file: !15, line: 199, baseType: !201, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!38, !41, !33, !204, !10}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !16, file: !15, line: 202, baseType: !207, size: 64, offset: 576)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !41, !33, !210, !10}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !39, line: 114, baseType: !40)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !16, file: !15, line: 203, baseType: !212, size: 64, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!10, !41, !33}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !16, file: !15, line: 206, baseType: !27, size: 128, offset: 704)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !16, file: !15, line: 207, baseType: !19, size: 64, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !16, file: !15, line: 208, baseType: !10, size: 32, offset: 896)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !16, file: !15, line: 211, baseType: !219, size: 24, offset: 928)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !119)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !16, file: !15, line: 212, baseType: !221, size: 8, offset: 952)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !77)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !16, file: !15, line: 215, baseType: !27, size: 128, offset: 960)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !16, file: !15, line: 218, baseType: !10, size: 32, offset: 1088)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !16, file: !15, line: 219, baseType: !225, size: 64, offset: 1152)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !39, line: 44, baseType: !40)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !16, file: !15, line: 222, baseType: !41, size: 64, offset: 1216)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !16, file: !15, line: 226, baseType: !228, size: 32, offset: 1280)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !39, line: 175, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !230, line: 12, baseType: !10)
!230 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !16, file: !15, line: 228, baseType: !124, size: 64, offset: 1312)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !16, file: !15, line: 229, baseType: !10, size: 32, offset: 1376)
!233 = !{!234, !235, !236, !237}
!234 = !DILocalVariable(name: "fp", arg: 1, scope: !7, file: !1, line: 68, type: !11)
!235 = !DILocalVariable(name: "type", arg: 2, scope: !7, file: !1, line: 68, type: !10)
!236 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 72, type: !10)
!237 = !DILocalVariable(name: "_check_init_ptr", scope: !238, file: !1, line: 73, type: !41)
!238 = distinct !DILexicalBlock(scope: !7, file: !1, line: 73, column: 3)
!239 = !DILocation(line: 68, column: 1, scope: !7)
!240 = !DILocation(line: 73, column: 3, scope: !238)
!241 = !DILocation(line: 73, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 73, column: 3)
!243 = !{!244, !245, i64 80}
!244 = !{!"_reent", !245, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !245, i64 32, !246, i64 36, !245, i64 64, !248, i64 72, !245, i64 80, !248, i64 88, !248, i64 96, !245, i64 104, !248, i64 112, !248, i64 120, !245, i64 128, !248, i64 136, !246, i64 144, !248, i64 504, !249, i64 512, !248, i64 1304, !251, i64 1312, !246, i64 1336}
!245 = !{!"int", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"any pointer", !246, i64 0}
!249 = !{!"_atexit", !248, i64 0, !245, i64 8, !246, i64 16, !250, i64 272}
!250 = !{!"_on_exit_args", !246, i64 0, !246, i64 256, !245, i64 512, !245, i64 516}
!251 = !{!"_glue", !248, i64 0, !245, i64 8, !248, i64 16}
!252 = !DILocation(line: 74, column: 17, scope: !7)
!253 = !{!254, !245, i64 172}
!254 = !{!"__sFILE", !248, i64 0, !245, i64 8, !245, i64 12, !255, i64 16, !255, i64 18, !256, i64 24, !245, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !256, i64 88, !248, i64 104, !245, i64 112, !246, i64 116, !246, i64 119, !256, i64 120, !245, i64 136, !257, i64 144, !248, i64 152, !245, i64 160, !258, i64 164, !245, i64 172}
!255 = !{!"short", !246, i64 0}
!256 = !{!"__sbuf", !248, i64 0, !245, i64 8}
!257 = !{!"long", !246, i64 0}
!258 = !{!"", !245, i64 0, !246, i64 4}
!259 = !DILocation(line: 74, column: 25, scope: !7)
!260 = !DILocation(line: 74, column: 12, scope: !7)
!261 = !DILocation(line: 72, column: 7, scope: !7)
!262 = !DILocation(line: 75, column: 3, scope: !7)
!263 = !DILocation(line: 78, column: 19, scope: !264)
!264 = distinct !DILexicalBlock(scope: !7, file: !1, line: 76, column: 5)
!265 = !DILocation(line: 79, column: 7, scope: !264)
!266 = !DILocation(line: 81, column: 19, scope: !264)
!267 = !DILocation(line: 82, column: 7, scope: !264)
!268 = !DILocation(line: 0, scope: !264)
!269 = !DILocation(line: 87, column: 3, scope: !7)
