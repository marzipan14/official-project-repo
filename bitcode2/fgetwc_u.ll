; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc_u.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_fgetwc_unlocked_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @__fgetwc(%struct._reent* %0, %struct.__sFILE* %1) #3, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  ret i32 %3, !dbg !238
}

; Function Attrs: noredzone
declare dso_local i32 @__fgetwc(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @fgetwc_unlocked(%struct.__sFILE*) local_unnamed_addr #0 !dbg !239 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !248
  %3 = icmp eq %struct._reent* %2, null, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %3, label %9, label %4, !dbg !251

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 8, !dbg !251
  %6 = load i32, i32* %5, align 8, !dbg !251, !tbaa !253
  %7 = icmp eq i32 %6, 0, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %7, label %8, label %9, !dbg !250

; <label>:8:                                      ; preds = %4
  tail call void @__sinit(%struct._reent* nonnull %2) #3, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br label %9, !dbg !251

; <label>:9:                                      ; preds = %4, %1, %8
  %10 = tail call i32 @__fgetwc(%struct._reent* %2, %struct.__sFILE* %0) #3, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i32 %10, !dbg !266
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
attributes #4 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetwc_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_fgetwc_unlocked_r", scope: !1, file: !1, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !233)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !230}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !11, line: 124, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !19, !98, !99, !100, !101, !105, !106, !109, !110, !114, !126, !127, !128, !130, !131, !132, !194, !215, !216, !221, !228}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !14, file: !15, line: 571, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !15, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 181, size: 1408, elements: !23)
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !40, !49, !55, !60, !64, !65, !66, !67, !71, !75, !76, !77, !79, !80, !84, !97}
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
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !90, file: !45, line: 168, baseType: !10, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !90, file: !45, line: 169, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !15, line: 229, baseType: !18, size: 32, offset: 1376)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !14, file: !15, line: 576, baseType: !20, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !14, file: !15, line: 578, baseType: !18, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !14, file: !15, line: 579, baseType: !102, size: 200, offset: 288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !14, file: !15, line: 582, baseType: !18, size: 32, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !14, file: !15, line: 583, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !15, line: 40, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !14, file: !15, line: 585, baseType: !18, size: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !14, file: !15, line: 587, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !13}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !14, file: !15, line: 590, baseType: !115, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !116, file: !15, line: 49, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !116, file: !15, line: 50, baseType: !18, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !116, file: !15, line: 50, baseType: !18, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !116, file: !15, line: 50, baseType: !18, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !116, file: !15, line: 50, baseType: !18, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !116, file: !15, line: 51, baseType: !124, size: 32, offset: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !73)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !12)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !14, file: !15, line: 591, baseType: !18, size: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !14, file: !15, line: 592, baseType: !115, size: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !14, file: !15, line: 593, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !14, file: !15, line: 596, baseType: !18, size: 32, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !47, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !133, size: 2880, offset: 1152)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !134)
!134 = !{!135, !185}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !133, file: !15, line: 622, baseType: !136, size: 1728)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !15, line: 601, size: 1728, elements: !137)
!137 = !{!138, !139, !140, !144, !156, !157, !159, !167, !168, !169, !170, !174, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !136, file: !15, line: 603, baseType: !12, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !136, file: !15, line: 604, baseType: !47, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !136, file: !15, line: 605, baseType: !141, size: 208, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 208, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 26)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !136, file: !15, line: 606, baseType: !145, size: 288, offset: 352)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !145, file: !15, line: 57, baseType: !18, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !145, file: !15, line: 58, baseType: !18, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !145, file: !15, line: 59, baseType: !18, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !145, file: !15, line: 60, baseType: !18, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !145, file: !15, line: 61, baseType: !18, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !145, file: !15, line: 62, baseType: !18, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !145, file: !15, line: 63, baseType: !18, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !145, file: !15, line: 64, baseType: !18, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !145, file: !15, line: 65, baseType: !18, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !136, file: !15, line: 607, baseType: !18, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !136, file: !15, line: 608, baseType: !158, size: 64, offset: 704)
!158 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !136, file: !15, line: 609, baseType: !160, size: 112, offset: 768)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !161)
!161 = !{!162, !165, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !160, file: !15, line: 320, baseType: !163, size: 48)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !69)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !160, file: !15, line: 321, baseType: !163, size: 48, offset: 48)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !160, file: !15, line: 322, baseType: !164, size: 16, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !136, file: !15, line: 610, baseType: !85, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !136, file: !15, line: 611, baseType: !85, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !136, file: !15, line: 612, baseType: !85, size: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !136, file: !15, line: 613, baseType: !171, size: 64, offset: 1088)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !136, file: !15, line: 614, baseType: !175, size: 192, offset: 1152)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !136, file: !15, line: 615, baseType: !18, size: 32, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !136, file: !15, line: 616, baseType: !85, size: 64, offset: 1376)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !136, file: !15, line: 617, baseType: !85, size: 64, offset: 1440)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !136, file: !15, line: 618, baseType: !85, size: 64, offset: 1504)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !136, file: !15, line: 619, baseType: !85, size: 64, offset: 1568)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !136, file: !15, line: 620, baseType: !85, size: 64, offset: 1632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !136, file: !15, line: 621, baseType: !18, size: 32, offset: 1696)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !133, file: !15, line: 631, baseType: !186, size: 2880)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !15, line: 626, size: 2880, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !186, file: !15, line: 629, baseType: !189, size: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 30)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !186, file: !15, line: 630, baseType: !193, size: 960, offset: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 960, elements: !190)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !14, file: !15, line: 636, baseType: !195, size: 64, offset: 4032)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !197)
!197 = !{!198, !199, !200, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !196, file: !15, line: 94, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !196, file: !15, line: 95, baseType: !18, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !196, file: !15, line: 97, baseType: !201, size: 2048, offset: 128)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, elements: !205)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null}
!205 = !{!206}
!206 = !DISubrange(count: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !196, file: !15, line: 98, baseType: !208, size: 4160, offset: 2176)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !209)
!209 = !{!210, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !208, file: !15, line: 75, baseType: !211, size: 2048)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !205)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !208, file: !15, line: 76, baseType: !211, size: 2048, offset: 2048)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !208, file: !15, line: 78, baseType: !125, size: 32, offset: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !208, file: !15, line: 81, baseType: !125, size: 32, offset: 4128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !14, file: !15, line: 637, baseType: !196, size: 6336, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !14, file: !15, line: 641, baseType: !217, size: 64, offset: 10432)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !18}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !14, file: !15, line: 646, baseType: !222, size: 192, offset: 10496)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !223)
!223 = !{!224, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !222, file: !15, line: 293, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !222, file: !15, line: 294, baseType: !18, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !222, file: !15, line: 295, baseType: !20, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !14, file: !15, line: 648, baseType: !229, size: 4224, offset: 10688)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !69)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !232, line: 66, baseType: !21)
!232 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "ptr", arg: 1, scope: !7, file: !1, line: 33, type: !13)
!235 = !DILocalVariable(name: "fp", arg: 2, scope: !7, file: !1, line: 33, type: !230)
!236 = !DILocation(line: 33, column: 1, scope: !7)
!237 = !DILocation(line: 38, column: 10, scope: !7)
!238 = !DILocation(line: 38, column: 3, scope: !7)
!239 = distinct !DISubprogram(name: "fgetwc_unlocked", scope: !1, file: !1, line: 42, type: !240, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{!10, !230}
!242 = !{!243, !244, !245}
!243 = !DILocalVariable(name: "fp", arg: 1, scope: !239, file: !1, line: 42, type: !230)
!244 = !DILocalVariable(name: "reent", scope: !239, file: !1, line: 45, type: !13)
!245 = !DILocalVariable(name: "_check_init_ptr", scope: !246, file: !1, line: 47, type: !13)
!246 = distinct !DILexicalBlock(scope: !239, file: !1, line: 47, column: 3)
!247 = !DILocation(line: 42, column: 1, scope: !239)
!248 = !DILocation(line: 45, column: 26, scope: !239)
!249 = !DILocation(line: 45, column: 18, scope: !239)
!250 = !DILocation(line: 47, column: 3, scope: !246)
!251 = !DILocation(line: 47, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !246, file: !1, line: 47, column: 3)
!253 = !{!254, !255, i64 80}
!254 = !{!"_reent", !255, i64 0, !258, i64 8, !258, i64 16, !258, i64 24, !255, i64 32, !256, i64 36, !255, i64 64, !258, i64 72, !255, i64 80, !258, i64 88, !258, i64 96, !255, i64 104, !258, i64 112, !258, i64 120, !255, i64 128, !258, i64 136, !256, i64 144, !258, i64 504, !259, i64 512, !258, i64 1304, !261, i64 1312, !256, i64 1336}
!255 = !{!"int", !256, i64 0}
!256 = !{!"omnipotent char", !257, i64 0}
!257 = !{!"Simple C/C++ TBAA"}
!258 = !{!"any pointer", !256, i64 0}
!259 = !{!"_atexit", !258, i64 0, !255, i64 8, !256, i64 16, !260, i64 272}
!260 = !{!"_on_exit_args", !256, i64 0, !256, i64 256, !255, i64 512, !255, i64 516}
!261 = !{!"_glue", !258, i64 0, !255, i64 8, !258, i64 16}
!262 = !DILocation(line: 33, column: 1, scope: !7, inlinedAt: !263)
!263 = distinct !DILocation(line: 48, column: 10, scope: !239)
!264 = !DILocation(line: 38, column: 10, scope: !7, inlinedAt: !263)
!265 = !DILocation(line: 38, column: 3, scope: !7, inlinedAt: !263)
!266 = !DILocation(line: 48, column: 3, scope: !239)
