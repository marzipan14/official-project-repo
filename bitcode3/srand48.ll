; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/srand48.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/srand48.c"
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
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }

; Function Attrs: noredzone nounwind
define dso_local void @_srand48_r(%struct._reent* nocapture, i64) local_unnamed_addr #0 !dbg !10 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !236
  %4 = bitcast i8** %3 to %struct._rand48*, !dbg !236
  %5 = bitcast i8** %3 to [3 x i16]*, !dbg !236
  %6 = bitcast i8** %3 to i16*, !dbg !236
  store i16 13070, i16* %6, align 8, !dbg !237, !tbaa !238
  %7 = trunc i64 %1 to i16, !dbg !241
  %8 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1, !dbg !242
  store i16 %7, i16* %8, align 2, !dbg !243, !tbaa !238
  %9 = lshr i64 %1, 16, !dbg !244
  %10 = trunc i64 %9 to i16, !dbg !245
  %11 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2, !dbg !246
  store i16 %10, i16* %11, align 4, !dbg !247, !tbaa !238
  %12 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 0, !dbg !248
  store i16 -6547, i16* %12, align 2, !dbg !249, !tbaa !238
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !250
  %14 = bitcast i8** %13 to i16*, !dbg !250
  store i16 -8468, i16* %14, align 2, !dbg !251, !tbaa !238
  %15 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 2, !dbg !252
  store i16 5, i16* %15, align 2, !dbg !253, !tbaa !238
  %16 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 2, !dbg !254
  store i16 11, i16* %16, align 4, !dbg !255, !tbaa !238
  ret void, !dbg !256
}

; Function Attrs: noredzone nounwind
define dso_local void @srand48(i64) local_unnamed_addr #0 !dbg !257 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !263
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !266
  %4 = bitcast i8** %3 to %struct._rand48*, !dbg !266
  %5 = bitcast i8** %3 to [3 x i16]*, !dbg !266
  %6 = bitcast i8** %3 to i16*, !dbg !266
  store i16 13070, i16* %6, align 8, !dbg !267, !tbaa !238
  %7 = trunc i64 %0 to i16, !dbg !268
  %8 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1, !dbg !269
  store i16 %7, i16* %8, align 2, !dbg !270, !tbaa !238
  %9 = lshr i64 %0, 16, !dbg !271
  %10 = trunc i64 %9 to i16, !dbg !272
  %11 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2, !dbg !273
  store i16 %10, i16* %11, align 4, !dbg !274, !tbaa !238
  %12 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 0, !dbg !275
  store i16 -6547, i16* %12, align 2, !dbg !276, !tbaa !238
  %13 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !277
  %14 = bitcast i8** %13 to i16*, !dbg !277
  store i16 -8468, i16* %14, align 2, !dbg !278, !tbaa !238
  %15 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 1, i64 2, !dbg !279
  store i16 5, i16* %15, align 2, !dbg !280, !tbaa !238
  %16 = getelementptr inbounds %struct._rand48, %struct._rand48* %4, i64 0, i32 2, !dbg !281
  store i16 11, i16* %16, align 4, !dbg !282, !tbaa !238
  ret void, !dbg !283
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/srand48.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!5 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_srand48_r", scope: !1, file: !1, line: 17, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !232)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13, !46}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !19, !101, !102, !103, !104, !108, !109, !112, !113, !117, !129, !130, !131, !133, !134, !135, !196, !217, !218, !223, !230}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !14, file: !15, line: 571, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !15, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 181, size: 1408, elements: !23)
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !40, !49, !55, !60, !64, !65, !66, !67, !71, !75, !76, !77, !79, !80, !84, !100}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !15, line: 182, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !15, line: 183, baseType: !18, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !15, line: 184, baseType: !18, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !15, line: 185, baseType: !30, size: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !15, line: 186, baseType: !30, size: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !15, line: 187, baseType: !33, size: 128, offset: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 117, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !15, line: 118, baseType: !25, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !15, line: 119, baseType: !18, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !15, line: 188, baseType: !18, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !15, line: 195, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !15, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !13, !39, !47, !18}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !15, line: 199, baseType: !50, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!44, !13, !39, !53, !18}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !15, line: 202, baseType: !56, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !13, !39, !59, !18}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !15, line: 203, baseType: !61, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!18, !13, !39}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !15, line: 206, baseType: !33, size: 128, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !15, line: 207, baseType: !25, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !15, line: 208, baseType: !18, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !15, line: 211, baseType: !68, size: 24, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !15, line: 212, baseType: !72, size: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !15, line: 215, baseType: !33, size: 128, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !15, line: 218, baseType: !18, size: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !15, line: 219, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !15, line: 222, baseType: !13, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !15, line: 226, baseType: !81, size: 32, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !83, line: 12, baseType: !18)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !15, line: 228, baseType: !85, size: 64, offset: 1312)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !86, file: !45, line: 165, baseType: !18, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !86, file: !45, line: 170, baseType: !90, size: 32, offset: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !45, line: 166, size: 32, elements: !91)
!91 = !{!92, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !90, file: !45, line: 168, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !94, line: 124, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !90, file: !45, line: 169, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !15, line: 229, baseType: !18, size: 32, offset: 1376)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !14, file: !15, line: 578, baseType: !18, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !14, file: !15, line: 579, baseType: !105, size: 200, offset: 288)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 200, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 25)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !14, file: !15, line: 582, baseType: !18, size: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !14, file: !15, line: 583, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !15, line: 40, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !14, file: !15, line: 585, baseType: !18, size: 32, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !14, file: !15, line: 587, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !13}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !14, file: !15, line: 590, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !119, file: !15, line: 49, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !119, file: !15, line: 50, baseType: !18, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !119, file: !15, line: 50, baseType: !18, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !119, file: !15, line: 50, baseType: !18, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !119, file: !15, line: 50, baseType: !18, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !119, file: !15, line: 51, baseType: !127, size: 32, offset: 192)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !73)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !95)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !14, file: !15, line: 591, baseType: !18, size: 32, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !14, file: !15, line: 592, baseType: !118, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !14, file: !15, line: 593, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !14, file: !15, line: 596, baseType: !18, size: 32, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !47, size: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !136, size: 2880, offset: 1152)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !137)
!137 = !{!138, !187}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !136, file: !15, line: 622, baseType: !139, size: 1728)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !15, line: 601, size: 1728, elements: !140)
!140 = !{!141, !142, !143, !147, !159, !160, !162, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !139, file: !15, line: 603, baseType: !95, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !139, file: !15, line: 604, baseType: !47, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !139, file: !15, line: 605, baseType: !144, size: 208, offset: 128)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 208, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 26)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !139, file: !15, line: 606, baseType: !148, size: 288, offset: 352)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !148, file: !15, line: 57, baseType: !18, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !148, file: !15, line: 58, baseType: !18, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !148, file: !15, line: 59, baseType: !18, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !148, file: !15, line: 60, baseType: !18, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !148, file: !15, line: 61, baseType: !18, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !148, file: !15, line: 62, baseType: !18, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !148, file: !15, line: 63, baseType: !18, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !148, file: !15, line: 64, baseType: !18, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !148, file: !15, line: 65, baseType: !18, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !139, file: !15, line: 607, baseType: !18, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !139, file: !15, line: 608, baseType: !161, size: 64, offset: 704)
!161 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !139, file: !15, line: 609, baseType: !163, size: 112, offset: 768)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !164)
!164 = !{!165, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !163, file: !15, line: 320, baseType: !166, size: 48)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !69)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !163, file: !15, line: 321, baseType: !166, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !163, file: !15, line: 322, baseType: !4, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !139, file: !15, line: 610, baseType: !85, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !139, file: !15, line: 611, baseType: !85, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !139, file: !15, line: 612, baseType: !85, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !139, file: !15, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !139, file: !15, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !139, file: !15, line: 615, baseType: !18, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !139, file: !15, line: 616, baseType: !85, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !139, file: !15, line: 617, baseType: !85, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !139, file: !15, line: 618, baseType: !85, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !139, file: !15, line: 619, baseType: !85, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !139, file: !15, line: 620, baseType: !85, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !139, file: !15, line: 621, baseType: !18, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !136, file: !15, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !15, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !15, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !15, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !14, file: !15, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !15, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !15, line: 95, baseType: !18, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !15, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !15, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !15, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !15, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !15, line: 78, baseType: !128, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !15, line: 81, baseType: !128, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !14, file: !15, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !14, file: !15, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !18}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !14, file: !15, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !15, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !15, line: 294, baseType: !18, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !15, line: 295, baseType: !20, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !14, file: !15, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !69)
!232 = !{!233, !234}
!233 = !DILocalVariable(name: "r", arg: 1, scope: !10, file: !1, line: 17, type: !13)
!234 = !DILocalVariable(name: "seed", arg: 2, scope: !10, file: !1, line: 17, type: !46)
!235 = !DILocation(line: 17, column: 1, scope: !10)
!236 = !DILocation(line: 22, column: 3, scope: !10)
!237 = !DILocation(line: 22, column: 20, scope: !10)
!238 = !{!239, !239, i64 0}
!239 = !{!"omnipotent char", !240, i64 0}
!240 = !{!"Simple C/C++ TBAA"}
!241 = !DILocation(line: 23, column: 22, scope: !10)
!242 = !DILocation(line: 23, column: 3, scope: !10)
!243 = !DILocation(line: 23, column: 20, scope: !10)
!244 = !DILocation(line: 24, column: 60, scope: !10)
!245 = !DILocation(line: 24, column: 22, scope: !10)
!246 = !DILocation(line: 24, column: 3, scope: !10)
!247 = !DILocation(line: 24, column: 20, scope: !10)
!248 = !DILocation(line: 25, column: 3, scope: !10)
!249 = !DILocation(line: 25, column: 20, scope: !10)
!250 = !DILocation(line: 26, column: 3, scope: !10)
!251 = !DILocation(line: 26, column: 20, scope: !10)
!252 = !DILocation(line: 27, column: 3, scope: !10)
!253 = !DILocation(line: 27, column: 20, scope: !10)
!254 = !DILocation(line: 28, column: 3, scope: !10)
!255 = !DILocation(line: 28, column: 16, scope: !10)
!256 = !DILocation(line: 29, column: 1, scope: !10)
!257 = distinct !DISubprogram(name: "srand48", scope: !1, file: !1, line: 33, type: !258, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !46}
!260 = !{!261}
!261 = !DILocalVariable(name: "seed", arg: 1, scope: !257, file: !1, line: 33, type: !46)
!262 = !DILocation(line: 33, column: 1, scope: !257)
!263 = !DILocation(line: 36, column: 15, scope: !257)
!264 = !DILocation(line: 17, column: 1, scope: !10, inlinedAt: !265)
!265 = distinct !DILocation(line: 36, column: 3, scope: !257)
!266 = !DILocation(line: 22, column: 3, scope: !10, inlinedAt: !265)
!267 = !DILocation(line: 22, column: 20, scope: !10, inlinedAt: !265)
!268 = !DILocation(line: 23, column: 22, scope: !10, inlinedAt: !265)
!269 = !DILocation(line: 23, column: 3, scope: !10, inlinedAt: !265)
!270 = !DILocation(line: 23, column: 20, scope: !10, inlinedAt: !265)
!271 = !DILocation(line: 24, column: 60, scope: !10, inlinedAt: !265)
!272 = !DILocation(line: 24, column: 22, scope: !10, inlinedAt: !265)
!273 = !DILocation(line: 24, column: 3, scope: !10, inlinedAt: !265)
!274 = !DILocation(line: 24, column: 20, scope: !10, inlinedAt: !265)
!275 = !DILocation(line: 25, column: 3, scope: !10, inlinedAt: !265)
!276 = !DILocation(line: 25, column: 20, scope: !10, inlinedAt: !265)
!277 = !DILocation(line: 26, column: 3, scope: !10, inlinedAt: !265)
!278 = !DILocation(line: 26, column: 20, scope: !10, inlinedAt: !265)
!279 = !DILocation(line: 27, column: 3, scope: !10, inlinedAt: !265)
!280 = !DILocation(line: 27, column: 20, scope: !10, inlinedAt: !265)
!281 = !DILocation(line: 28, column: 3, scope: !10, inlinedAt: !265)
!282 = !DILocation(line: 28, column: 16, scope: !10, inlinedAt: !265)
!283 = !DILocation(line: 37, column: 1, scope: !257)
