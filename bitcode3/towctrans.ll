; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/towctrans.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/towctrans.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

; Function Attrs: noredzone nounwind
define dso_local i32 @_towctrans_r(%struct._reent* nocapture, i32, i32) local_unnamed_addr #0 !dbg !7 {
  switch i32 %2, label %8 [
    i32 1, label %4
    i32 2, label %6
  ], !dbg !297

; <label>:4:                                      ; preds = %3
  %5 = tail call i32 @towlower(i32 %1) #3, !dbg !298
  br label %10, !dbg !300

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @towupper(i32 %1) #3, !dbg !301
  br label %10, !dbg !303

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !304
  store i32 22, i32* %9, align 8, !dbg !306, !tbaa !307
  br label %10, !dbg !316

; <label>:10:                                     ; preds = %8, %6, %4
  %11 = phi i32 [ %5, %4 ], [ %7, %6 ], [ %1, %8 ], !dbg !317
  ret i32 %11, !dbg !318
}

; Function Attrs: noredzone
declare dso_local i32 @towlower(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @towupper(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @towctrans(i32, i32) local_unnamed_addr #0 !dbg !319 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !326
  switch i32 %1, label %8 [
    i32 1, label %4
    i32 2, label %6
  ], !dbg !329

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @towlower(i32 %0) #3, !dbg !330
  br label %10, !dbg !331

; <label>:6:                                      ; preds = %2
  %7 = tail call i32 @towupper(i32 %0) #3, !dbg !332
  br label %10, !dbg !333

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 0, !dbg !334
  store i32 22, i32* %9, align 8, !dbg !335, !tbaa !307
  br label %10, !dbg !336

; <label>:10:                                     ; preds = %4, %6, %8
  %11 = phi i32 [ %5, %4 ], [ %7, %6 ], [ %0, %8 ], !dbg !337
  ret i32 %11, !dbg !338
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/towctrans.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_towctrans_r", scope: !1, file: !1, line: 85, type: !8, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !292)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !10, !290}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !11, line: 124, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !19, !98, !99, !100, !101, !105, !106, !171, !172, !176, !188, !189, !190, !192, !193, !194, !256, !275, !276, !281, !288}
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
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !109, line: 178, size: 3392, elements: !110)
!109 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !{!111, !116, !124, !133, !134, !135, !163, !167, !170}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !108, file: !109, line: 180, baseType: !112, size: 1792)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1792, elements: !113)
!113 = !{!114, !115}
!114 = !DISubrange(count: 7)
!115 = !DISubrange(count: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !108, file: !109, line: 181, baseType: !117, size: 64, offset: 1792)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!18, !13, !47, !120, !121}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !11, line: 83, baseType: !18)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !123, line: 86, baseType: !85)
!123 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !108, file: !109, line: 183, baseType: !125, size: 64, offset: 1856)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!18, !13, !128, !53, !129, !121}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 40, baseType: !131)
!130 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !45, line: 129, baseType: !132)
!132 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !108, file: !109, line: 185, baseType: !18, size: 32, offset: 1920)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !108, file: !109, line: 186, baseType: !47, size: 64, offset: 1984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !108, file: !109, line: 187, baseType: !136, size: 768, offset: 2048)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !137, line: 42, size: 768, elements: !138)
!137 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !136, file: !137, line: 44, baseType: !47, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !136, file: !137, line: 45, baseType: !47, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !136, file: !137, line: 46, baseType: !47, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !136, file: !137, line: 47, baseType: !47, size: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !136, file: !137, line: 48, baseType: !47, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !136, file: !137, line: 49, baseType: !47, size: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !136, file: !137, line: 50, baseType: !47, size: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !136, file: !137, line: 51, baseType: !47, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !136, file: !137, line: 52, baseType: !47, size: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !136, file: !137, line: 53, baseType: !47, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !136, file: !137, line: 54, baseType: !48, size: 8, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !136, file: !137, line: 55, baseType: !48, size: 8, offset: 648)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !136, file: !137, line: 56, baseType: !48, size: 8, offset: 656)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !136, file: !137, line: 57, baseType: !48, size: 8, offset: 664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !136, file: !137, line: 58, baseType: !48, size: 8, offset: 672)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !136, file: !137, line: 59, baseType: !48, size: 8, offset: 680)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !136, file: !137, line: 60, baseType: !48, size: 8, offset: 688)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !136, file: !137, line: 61, baseType: !48, size: 8, offset: 696)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !136, file: !137, line: 62, baseType: !48, size: 8, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !136, file: !137, line: 63, baseType: !48, size: 8, offset: 712)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !136, file: !137, line: 64, baseType: !48, size: 8, offset: 720)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !136, file: !137, line: 65, baseType: !48, size: 8, offset: 728)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !136, file: !137, line: 66, baseType: !48, size: 8, offset: 736)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !136, file: !137, line: 67, baseType: !48, size: 8, offset: 744)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !108, file: !109, line: 189, baseType: !164, size: 16, offset: 2816)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 16, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !108, file: !109, line: 190, baseType: !168, size: 256, offset: 2832)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !169)
!169 = !{!115}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !108, file: !109, line: 191, baseType: !168, size: 256, offset: 3088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !14, file: !15, line: 585, baseType: !18, size: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !14, file: !15, line: 587, baseType: !173, size: 64, offset: 704)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !13}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !14, file: !15, line: 590, baseType: !177, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !178, file: !15, line: 49, baseType: !177, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !178, file: !15, line: 50, baseType: !18, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !178, file: !15, line: 50, baseType: !18, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !178, file: !15, line: 50, baseType: !18, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !178, file: !15, line: 50, baseType: !18, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !178, file: !15, line: 51, baseType: !186, size: 32, offset: 192)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 32, elements: !73)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !12)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !14, file: !15, line: 591, baseType: !18, size: 32, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !14, file: !15, line: 592, baseType: !177, size: 64, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !14, file: !15, line: 593, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !14, file: !15, line: 596, baseType: !18, size: 32, offset: 1024)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !47, size: 64, offset: 1088)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !195, size: 2880, offset: 1152)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !196)
!196 = !{!197, !247}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !195, file: !15, line: 622, baseType: !198, size: 1728)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !15, line: 601, size: 1728, elements: !199)
!199 = !{!200, !201, !202, !206, !218, !219, !221, !229, !230, !231, !232, !236, !240, !241, !242, !243, !244, !245, !246}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !198, file: !15, line: 603, baseType: !12, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !198, file: !15, line: 604, baseType: !47, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !198, file: !15, line: 605, baseType: !203, size: 208, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 208, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 26)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !198, file: !15, line: 606, baseType: !207, size: 288, offset: 352)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !207, file: !15, line: 57, baseType: !18, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !207, file: !15, line: 58, baseType: !18, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !207, file: !15, line: 59, baseType: !18, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !207, file: !15, line: 60, baseType: !18, size: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !207, file: !15, line: 61, baseType: !18, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !207, file: !15, line: 62, baseType: !18, size: 32, offset: 160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !207, file: !15, line: 63, baseType: !18, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !207, file: !15, line: 64, baseType: !18, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !207, file: !15, line: 65, baseType: !18, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !198, file: !15, line: 607, baseType: !18, size: 32, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !198, file: !15, line: 608, baseType: !220, size: 64, offset: 704)
!220 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !198, file: !15, line: 609, baseType: !222, size: 112, offset: 768)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !223)
!223 = !{!224, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !222, file: !15, line: 320, baseType: !225, size: 48)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, elements: !69)
!226 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !222, file: !15, line: 321, baseType: !225, size: 48, offset: 48)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !222, file: !15, line: 322, baseType: !226, size: 16, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !198, file: !15, line: 610, baseType: !85, size: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !198, file: !15, line: 611, baseType: !85, size: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !198, file: !15, line: 612, baseType: !85, size: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !198, file: !15, line: 613, baseType: !233, size: 64, offset: 1088)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 8)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !198, file: !15, line: 614, baseType: !237, size: 192, offset: 1152)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 24)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !198, file: !15, line: 615, baseType: !18, size: 32, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !198, file: !15, line: 616, baseType: !85, size: 64, offset: 1376)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !198, file: !15, line: 617, baseType: !85, size: 64, offset: 1440)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !198, file: !15, line: 618, baseType: !85, size: 64, offset: 1504)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !198, file: !15, line: 619, baseType: !85, size: 64, offset: 1568)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !198, file: !15, line: 620, baseType: !85, size: 64, offset: 1632)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !198, file: !15, line: 621, baseType: !18, size: 32, offset: 1696)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !195, file: !15, line: 631, baseType: !248, size: 2880)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !195, file: !15, line: 626, size: 2880, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !248, file: !15, line: 629, baseType: !251, size: 1920)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 30)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !248, file: !15, line: 630, baseType: !255, size: 960, offset: 1920)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 960, elements: !252)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !14, file: !15, line: 636, baseType: !257, size: 64, offset: 4032)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !259)
!259 = !{!260, !261, !262, !267}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !258, file: !15, line: 94, baseType: !257, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !258, file: !15, line: 95, baseType: !18, size: 32, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !258, file: !15, line: 97, baseType: !263, size: 2048, offset: 128)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 2048, elements: !169)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !258, file: !15, line: 98, baseType: !268, size: 4160, offset: 2176)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !269)
!269 = !{!270, !272, !273, !274}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !268, file: !15, line: 75, baseType: !271, size: 2048)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !169)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !268, file: !15, line: 76, baseType: !271, size: 2048, offset: 2048)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !268, file: !15, line: 78, baseType: !187, size: 32, offset: 4096)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !268, file: !15, line: 81, baseType: !187, size: 32, offset: 4128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !14, file: !15, line: 637, baseType: !258, size: 6336, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !14, file: !15, line: 641, baseType: !277, size: 64, offset: 10432)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !18}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !14, file: !15, line: 646, baseType: !282, size: 192, offset: 10496)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !283)
!283 = !{!284, !286, !287}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !282, file: !15, line: 293, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !282, file: !15, line: 294, baseType: !18, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !282, file: !15, line: 295, baseType: !20, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !14, file: !15, line: 648, baseType: !289, size: 4224, offset: 10688)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !69)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !291, line: 27, baseType: !18)
!291 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wctype.h", directory: "/root/.unikraft/apps/redis/build")
!292 = !{!293, !294, !295}
!293 = !DILocalVariable(name: "r", arg: 1, scope: !7, file: !1, line: 85, type: !13)
!294 = !DILocalVariable(name: "c", arg: 2, scope: !7, file: !1, line: 85, type: !10)
!295 = !DILocalVariable(name: "w", arg: 3, scope: !7, file: !1, line: 85, type: !290)
!296 = !DILocation(line: 85, column: 1, scope: !7)
!297 = !DILocation(line: 90, column: 7, scope: !7)
!298 = !DILocation(line: 91, column: 12, scope: !299)
!299 = distinct !DILexicalBlock(scope: !7, file: !1, line: 90, column: 7)
!300 = !DILocation(line: 91, column: 5, scope: !299)
!301 = !DILocation(line: 93, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !1, line: 92, column: 12)
!303 = !DILocation(line: 93, column: 5, scope: !302)
!304 = !DILocation(line: 96, column: 10, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !1, line: 95, column: 5)
!306 = !DILocation(line: 96, column: 17, scope: !305)
!307 = !{!308, !309, i64 0}
!308 = !{!"_reent", !309, i64 0, !312, i64 8, !312, i64 16, !312, i64 24, !309, i64 32, !310, i64 36, !309, i64 64, !312, i64 72, !309, i64 80, !312, i64 88, !312, i64 96, !309, i64 104, !312, i64 112, !312, i64 120, !309, i64 128, !312, i64 136, !310, i64 144, !312, i64 504, !313, i64 512, !312, i64 1304, !315, i64 1312, !310, i64 1336}
!309 = !{!"int", !310, i64 0}
!310 = !{!"omnipotent char", !311, i64 0}
!311 = !{!"Simple C/C++ TBAA"}
!312 = !{!"any pointer", !310, i64 0}
!313 = !{!"_atexit", !312, i64 0, !309, i64 8, !310, i64 16, !314, i64 272}
!314 = !{!"_on_exit_args", !310, i64 0, !310, i64 256, !309, i64 512, !309, i64 516}
!315 = !{!"_glue", !312, i64 0, !309, i64 8, !312, i64 16}
!316 = !DILocation(line: 97, column: 7, scope: !305)
!317 = !DILocation(line: 0, scope: !305)
!318 = !DILocation(line: 99, column: 1, scope: !7)
!319 = distinct !DISubprogram(name: "towctrans", scope: !1, file: !1, line: 103, type: !320, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!10, !10, !290}
!322 = !{!323, !324}
!323 = !DILocalVariable(name: "c", arg: 1, scope: !319, file: !1, line: 103, type: !10)
!324 = !DILocalVariable(name: "w", arg: 2, scope: !319, file: !1, line: 103, type: !290)
!325 = !DILocation(line: 103, column: 1, scope: !319)
!326 = !DILocation(line: 107, column: 24, scope: !319)
!327 = !DILocation(line: 85, column: 1, scope: !7, inlinedAt: !328)
!328 = distinct !DILocation(line: 107, column: 10, scope: !319)
!329 = !DILocation(line: 90, column: 7, scope: !7, inlinedAt: !328)
!330 = !DILocation(line: 91, column: 12, scope: !299, inlinedAt: !328)
!331 = !DILocation(line: 91, column: 5, scope: !299, inlinedAt: !328)
!332 = !DILocation(line: 93, column: 12, scope: !302, inlinedAt: !328)
!333 = !DILocation(line: 93, column: 5, scope: !302, inlinedAt: !328)
!334 = !DILocation(line: 96, column: 10, scope: !305, inlinedAt: !328)
!335 = !DILocation(line: 96, column: 17, scope: !305, inlinedAt: !328)
!336 = !DILocation(line: 97, column: 7, scope: !305, inlinedAt: !328)
!337 = !DILocation(line: 0, scope: !305, inlinedAt: !328)
!338 = !DILocation(line: 107, column: 3, scope: !319)
