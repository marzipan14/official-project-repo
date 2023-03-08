; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/uselocale.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/uselocale.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.__locale_t* @_uselocale_r(%struct._reent* nocapture, %struct.__locale_t*) local_unnamed_addr #0 !dbg !288 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 7, !dbg !304
  %4 = load %struct.__locale_t*, %struct.__locale_t** %3, align 8, !dbg !304, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  %5 = icmp eq %struct.__locale_t* %4, null, !dbg !316
  %6 = select i1 %5, %struct.__locale_t* inttoptr (i64 -1 to %struct.__locale_t*), %struct.__locale_t* %4, !dbg !318
  %7 = ptrtoint %struct.__locale_t* %1 to i64, !dbg !319
  switch i64 %7, label %8 [
    i64 -1, label %9
    i64 0, label %11
  ], !dbg !319

; <label>:8:                                      ; preds = %2
  br label %9, !dbg !320

; <label>:9:                                      ; preds = %2, %8
  %10 = phi %struct.__locale_t* [ %1, %8 ], [ null, %2 ]
  store %struct.__locale_t* %10, %struct.__locale_t** %3, align 8, !dbg !323, !tbaa !305
  br label %11, !dbg !324

; <label>:11:                                     ; preds = %9, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  ret %struct.__locale_t* %6, !dbg !324
}

; Function Attrs: noredzone nounwind
define dso_local %struct.__locale_t* @uselocale(%struct.__locale_t*) local_unnamed_addr #0 !dbg !325 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !333
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 7, !dbg !339
  %4 = load %struct.__locale_t*, %struct.__locale_t** %3, align 8, !dbg !339, !tbaa !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  %5 = icmp eq %struct.__locale_t* %4, null, !dbg !342
  %6 = select i1 %5, %struct.__locale_t* inttoptr (i64 -1 to %struct.__locale_t*), %struct.__locale_t* %4, !dbg !343
  %7 = ptrtoint %struct.__locale_t* %0 to i64, !dbg !344
  switch i64 %7, label %8 [
    i64 -1, label %9
    i64 0, label %11
  ], !dbg !344

; <label>:8:                                      ; preds = %1
  br label %9, !dbg !345

; <label>:9:                                      ; preds = %1, %8
  %10 = phi %struct.__locale_t* [ %0, %8 ], [ null, %1 ]
  store %struct.__locale_t* %10, %struct.__locale_t** %3, align 8, !dbg !346, !tbaa !305
  br label %11, !dbg !347

; <label>:11:                                     ; preds = %9, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  ret %struct.__locale_t* %6, !dbg !348
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!284, !285, !286}
!llvm.ident = !{!287}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/uselocale.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !6, line: 178, size: 3392, elements: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !{!8, !14, !238, !247, !248, !249, !277, !281, !283}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !5, file: !6, line: 180, baseType: !9, size: 1792)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12, !13}
!12 = !DISubrange(count: 7)
!13 = !DISubrange(count: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !5, file: !6, line: 181, baseType: !15, size: 64, offset: 1792)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !52, !234, !235}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !21, line: 569, size: 14912, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !105, !106, !107, !108, !112, !113, !114, !115, !119, !131, !132, !133, !135, !136, !137, !199, !219, !220, !225, !232}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !20, file: !21, line: 571, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !21, line: 287, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 181, size: 1408, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !45, !53, !59, !64, !68, !69, !70, !71, !75, !79, !80, !81, !83, !84, !88, !104}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !27, file: !21, line: 182, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !27, file: !21, line: 183, baseType: !18, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !27, file: !21, line: 184, baseType: !18, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !21, line: 185, baseType: !35, size: 16, offset: 128)
!35 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !27, file: !21, line: 186, baseType: !35, size: 16, offset: 144)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !27, file: !21, line: 187, baseType: !38, size: 128, offset: 192)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !21, line: 117, size: 128, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !38, file: !21, line: 118, baseType: !30, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !38, file: !21, line: 119, baseType: !18, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !27, file: !21, line: 188, baseType: !18, size: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !21, line: 195, baseType: !44, size: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !21, line: 197, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !19, !44, !52, !18}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !50, line: 145, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !21, line: 199, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!49, !19, !44, !57, !18}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !21, line: 202, baseType: !60, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !19, !44, !63, !18}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !50, line: 114, baseType: !51)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !21, line: 203, baseType: !65, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!18, !19, !44}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !21, line: 206, baseType: !38, size: 128, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !27, file: !21, line: 207, baseType: !30, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !21, line: 208, baseType: !18, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !21, line: 211, baseType: !72, size: 24, offset: 928)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !21, line: 212, baseType: !76, size: 8, offset: 952)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !21, line: 215, baseType: !38, size: 128, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !21, line: 218, baseType: !18, size: 32, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !21, line: 219, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !50, line: 44, baseType: !51)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !27, file: !21, line: 222, baseType: !19, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !21, line: 226, baseType: !85, size: 32, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !50, line: 175, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !87, line: 12, baseType: !18)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !27, file: !21, line: 228, baseType: !89, size: 64, offset: 1312)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !50, line: 171, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 163, size: 64, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !90, file: !50, line: 165, baseType: !18, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !90, file: !50, line: 170, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !50, line: 166, size: 32, elements: !95)
!95 = !{!96, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !94, file: !50, line: 168, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !98, line: 124, baseType: !99)
!98 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !94, file: !50, line: 169, baseType: !101, size: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !21, line: 229, baseType: !18, size: 32, offset: 1376)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !20, file: !21, line: 578, baseType: !18, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !20, file: !21, line: 579, baseType: !109, size: 200, offset: 288)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 25)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !20, file: !21, line: 582, baseType: !18, size: 32, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !20, file: !21, line: 583, baseType: !4, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !20, file: !21, line: 585, baseType: !18, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !20, file: !21, line: 587, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !19}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !20, file: !21, line: 590, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !21, line: 47, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !121, file: !21, line: 49, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !121, file: !21, line: 50, baseType: !18, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !121, file: !21, line: 50, baseType: !18, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !121, file: !21, line: 50, baseType: !18, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !121, file: !21, line: 50, baseType: !18, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !121, file: !21, line: 51, baseType: !129, size: 32, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !77)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !21, line: 25, baseType: !99)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !20, file: !21, line: 591, baseType: !18, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !20, file: !21, line: 592, baseType: !120, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !20, file: !21, line: 593, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !20, file: !21, line: 596, baseType: !18, size: 32, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !20, file: !21, line: 597, baseType: !52, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !20, file: !21, line: 632, baseType: !138, size: 2880, offset: 1152)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 599, size: 2880, elements: !139)
!139 = !{!140, !190}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !138, file: !21, line: 622, baseType: !141, size: 1728)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !21, line: 601, size: 1728, elements: !142)
!142 = !{!143, !144, !145, !149, !161, !162, !164, !172, !173, !174, !175, !179, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !141, file: !21, line: 603, baseType: !99, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !141, file: !21, line: 604, baseType: !52, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !141, file: !21, line: 605, baseType: !146, size: 208, offset: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 26)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !141, file: !21, line: 606, baseType: !150, size: 288, offset: 352)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !21, line: 55, size: 288, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !150, file: !21, line: 57, baseType: !18, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !150, file: !21, line: 58, baseType: !18, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !150, file: !21, line: 59, baseType: !18, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !150, file: !21, line: 60, baseType: !18, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !150, file: !21, line: 61, baseType: !18, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !150, file: !21, line: 62, baseType: !18, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !150, file: !21, line: 63, baseType: !18, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !150, file: !21, line: 64, baseType: !18, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !150, file: !21, line: 65, baseType: !18, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !141, file: !21, line: 607, baseType: !18, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !141, file: !21, line: 608, baseType: !163, size: 64, offset: 704)
!163 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !141, file: !21, line: 609, baseType: !165, size: 112, offset: 768)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !21, line: 319, size: 112, elements: !166)
!166 = !{!167, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !165, file: !21, line: 320, baseType: !168, size: 48)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !73)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !165, file: !21, line: 321, baseType: !168, size: 48, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !165, file: !21, line: 322, baseType: !169, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !141, file: !21, line: 610, baseType: !89, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !141, file: !21, line: 611, baseType: !89, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !141, file: !21, line: 612, baseType: !89, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !141, file: !21, line: 613, baseType: !176, size: 64, offset: 1088)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !141, file: !21, line: 614, baseType: !180, size: 192, offset: 1152)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !141, file: !21, line: 615, baseType: !18, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !141, file: !21, line: 616, baseType: !89, size: 64, offset: 1376)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !141, file: !21, line: 617, baseType: !89, size: 64, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !141, file: !21, line: 618, baseType: !89, size: 64, offset: 1504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !141, file: !21, line: 619, baseType: !89, size: 64, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !141, file: !21, line: 620, baseType: !89, size: 64, offset: 1632)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !141, file: !21, line: 621, baseType: !18, size: 32, offset: 1696)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !138, file: !21, line: 631, baseType: !191, size: 2880)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !21, line: 626, size: 2880, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !191, file: !21, line: 629, baseType: !194, size: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !191, file: !21, line: 630, baseType: !198, size: 960, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 960, elements: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !20, file: !21, line: 636, baseType: !200, size: 64, offset: 4032)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !21, line: 93, size: 6336, elements: !202)
!202 = !{!203, !204, !205, !211}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !21, line: 94, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !201, file: !21, line: 95, baseType: !18, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !201, file: !21, line: 97, baseType: !206, size: 2048, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2048, elements: !210)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{!13}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !201, file: !21, line: 98, baseType: !212, size: 4160, offset: 2176)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !21, line: 74, size: 4160, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !212, file: !21, line: 75, baseType: !215, size: 2048)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !210)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !212, file: !21, line: 76, baseType: !215, size: 2048, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !212, file: !21, line: 78, baseType: !130, size: 32, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !212, file: !21, line: 81, baseType: !130, size: 32, offset: 4128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !20, file: !21, line: 637, baseType: !201, size: 6336, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !20, file: !21, line: 641, baseType: !221, size: 64, offset: 10432)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !18}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !20, file: !21, line: 646, baseType: !226, size: 192, offset: 10496)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !21, line: 291, size: 192, elements: !227)
!227 = !{!228, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !226, file: !21, line: 293, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !226, file: !21, line: 294, baseType: !18, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !226, file: !21, line: 295, baseType: !25, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !20, file: !21, line: 648, baseType: !233, size: 4224, offset: 10688)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4224, elements: !73)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !98, line: 83, baseType: !18)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !237, line: 86, baseType: !89)
!237 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !5, file: !6, line: 183, baseType: !239, size: 64, offset: 1856)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!18, !19, !242, !57, !243, !235}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !244, line: 40, baseType: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !50, line: 129, baseType: !246)
!246 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !5, file: !6, line: 185, baseType: !18, size: 32, offset: 1920)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !5, file: !6, line: 186, baseType: !52, size: 64, offset: 1984)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !5, file: !6, line: 187, baseType: !250, size: 768, offset: 2048)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !251, line: 42, size: 768, elements: !252)
!251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !250, file: !251, line: 44, baseType: !52, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !250, file: !251, line: 45, baseType: !52, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !250, file: !251, line: 46, baseType: !52, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !250, file: !251, line: 47, baseType: !52, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !250, file: !251, line: 48, baseType: !52, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !250, file: !251, line: 49, baseType: !52, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !250, file: !251, line: 50, baseType: !52, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !250, file: !251, line: 51, baseType: !52, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !250, file: !251, line: 52, baseType: !52, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !250, file: !251, line: 53, baseType: !52, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !250, file: !251, line: 54, baseType: !10, size: 8, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !250, file: !251, line: 55, baseType: !10, size: 8, offset: 648)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !250, file: !251, line: 56, baseType: !10, size: 8, offset: 656)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !250, file: !251, line: 57, baseType: !10, size: 8, offset: 664)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !250, file: !251, line: 58, baseType: !10, size: 8, offset: 672)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !250, file: !251, line: 59, baseType: !10, size: 8, offset: 680)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !250, file: !251, line: 60, baseType: !10, size: 8, offset: 688)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !250, file: !251, line: 61, baseType: !10, size: 8, offset: 696)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !250, file: !251, line: 62, baseType: !10, size: 8, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !250, file: !251, line: 63, baseType: !10, size: 8, offset: 712)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !250, file: !251, line: 64, baseType: !10, size: 8, offset: 720)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !250, file: !251, line: 65, baseType: !10, size: 8, offset: 728)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !250, file: !251, line: 66, baseType: !10, size: 8, offset: 736)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !250, file: !251, line: 67, baseType: !10, size: 8, offset: 744)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !5, file: !6, line: 189, baseType: !278, size: 16, offset: 2816)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !5, file: !6, line: 190, baseType: !282, size: 256, offset: 2832)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !210)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !5, file: !6, line: 191, baseType: !282, size: 256, offset: 3088)
!284 = !{i32 2, !"Dwarf Version", i32 4}
!285 = !{i32 2, !"Debug Info Version", i32 3}
!286 = !{i32 1, !"wchar_size", i32 4}
!287 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!288 = distinct !DISubprogram(name: "_uselocale_r", scope: !1, file: !1, line: 59, type: !289, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!4, !19, !4}
!291 = !{!292, !293, !294}
!292 = !DILocalVariable(name: "p", arg: 1, scope: !288, file: !1, line: 59, type: !19)
!293 = !DILocalVariable(name: "newloc", arg: 2, scope: !288, file: !1, line: 59, type: !4)
!294 = !DILocalVariable(name: "current_locale", scope: !288, file: !1, line: 61, type: !4)
!295 = !DILocation(line: 59, column: 30, scope: !288)
!296 = !DILocation(line: 59, column: 52, scope: !288)
!297 = !DILocalVariable(name: "r", arg: 1, scope: !298, file: !6, line: 218, type: !19)
!298 = distinct !DISubprogram(name: "__get_locale_r", scope: !6, file: !6, line: 218, type: !299, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!4, !19}
!301 = !{!297}
!302 = !DILocation(line: 218, column: 32, scope: !298, inlinedAt: !303)
!303 = distinct !DILocation(line: 63, column: 20, scope: !288)
!304 = !DILocation(line: 220, column: 13, scope: !298, inlinedAt: !303)
!305 = !{!306, !310, i64 72}
!306 = !{!"_reent", !307, i64 0, !310, i64 8, !310, i64 16, !310, i64 24, !307, i64 32, !308, i64 36, !307, i64 64, !310, i64 72, !307, i64 80, !310, i64 88, !310, i64 96, !307, i64 104, !310, i64 112, !310, i64 120, !307, i64 128, !310, i64 136, !308, i64 144, !310, i64 504, !311, i64 512, !310, i64 1304, !313, i64 1312, !308, i64 1336}
!307 = !{!"int", !308, i64 0}
!308 = !{!"omnipotent char", !309, i64 0}
!309 = !{!"Simple C/C++ TBAA"}
!310 = !{!"any pointer", !308, i64 0}
!311 = !{!"_atexit", !310, i64 0, !307, i64 8, !308, i64 16, !312, i64 272}
!312 = !{!"_on_exit_args", !308, i64 0, !308, i64 256, !307, i64 512, !307, i64 516}
!313 = !{!"_glue", !310, i64 0, !307, i64 8, !310, i64 16}
!314 = !DILocation(line: 220, column: 3, scope: !298, inlinedAt: !303)
!315 = !DILocation(line: 61, column: 22, scope: !288)
!316 = !DILocation(line: 64, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !288, file: !1, line: 64, column: 7)
!318 = !DILocation(line: 64, column: 7, scope: !288)
!319 = !DILocation(line: 66, column: 7, scope: !288)
!320 = !DILocation(line: 69, column: 5, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 68, column: 12)
!322 = distinct !DILexicalBlock(scope: !288, file: !1, line: 66, column: 7)
!323 = !DILocation(line: 0, scope: !322)
!324 = !DILocation(line: 70, column: 3, scope: !288)
!325 = distinct !DISubprogram(name: "uselocale", scope: !1, file: !1, line: 75, type: !326, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !330)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !4}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !329, line: 10, baseType: !4)
!329 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!330 = !{!331}
!331 = !DILocalVariable(name: "newloc", arg: 1, scope: !325, file: !1, line: 75, type: !4)
!332 = !DILocation(line: 75, column: 31, scope: !325)
!333 = !DILocation(line: 77, column: 24, scope: !325)
!334 = !DILocation(line: 59, column: 30, scope: !288, inlinedAt: !335)
!335 = distinct !DILocation(line: 77, column: 10, scope: !325)
!336 = !DILocation(line: 59, column: 52, scope: !288, inlinedAt: !335)
!337 = !DILocation(line: 218, column: 32, scope: !298, inlinedAt: !338)
!338 = distinct !DILocation(line: 63, column: 20, scope: !288, inlinedAt: !335)
!339 = !DILocation(line: 220, column: 13, scope: !298, inlinedAt: !338)
!340 = !DILocation(line: 220, column: 3, scope: !298, inlinedAt: !338)
!341 = !DILocation(line: 61, column: 22, scope: !288, inlinedAt: !335)
!342 = !DILocation(line: 64, column: 8, scope: !317, inlinedAt: !335)
!343 = !DILocation(line: 64, column: 7, scope: !288, inlinedAt: !335)
!344 = !DILocation(line: 66, column: 7, scope: !288, inlinedAt: !335)
!345 = !DILocation(line: 69, column: 5, scope: !321, inlinedAt: !335)
!346 = !DILocation(line: 0, scope: !325)
!347 = !DILocation(line: 70, column: 3, scope: !288, inlinedAt: !335)
!348 = !DILocation(line: 77, column: 3, scope: !325)
