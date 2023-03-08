; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/wctrans.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/wctrans.c"
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

@.str = private unnamed_addr constant [8 x i8] c"tolower\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"toupper\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_wctrans_r(%struct._reent* nocapture, i8*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !296
  %4 = icmp eq i32 %3, 0, !dbg !296
  br i1 %4, label %10, label %5, !dbg !298

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !299
  %7 = icmp eq i32 %6, 0, !dbg !299
  br i1 %7, label %10, label %8, !dbg !301

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !302
  store i32 22, i32* %9, align 8, !dbg !304, !tbaa !305
  br label %10, !dbg !314

; <label>:10:                                     ; preds = %5, %2, %8
  %11 = phi i32 [ 0, %8 ], [ 1, %2 ], [ 2, %5 ], !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  ret i32 %11, !dbg !316
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @wctrans(i8*) local_unnamed_addr #0 !dbg !317 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !323
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !326
  %4 = icmp eq i32 %3, 0, !dbg !326
  br i1 %4, label %10, label %5, !dbg !327

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !328
  %7 = icmp eq i32 %6, 0, !dbg !328
  br i1 %7, label %10, label %8, !dbg !329

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 0, !dbg !330
  store i32 22, i32* %9, align 8, !dbg !331, !tbaa !305
  br label %10, !dbg !332

; <label>:10:                                     ; preds = %1, %5, %8
  %11 = phi i32 [ 0, %8 ], [ 1, %1 ], [ 2, %5 ], !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  ret i32 %11, !dbg !335
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/wctrans.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_wctrans_r", scope: !1, file: !1, line: 83, type: !8, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !292)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !52}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !11, line: 27, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wctype.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !18, !100, !101, !102, !103, !107, !108, !173, !174, !178, !190, !191, !192, !194, !195, !196, !258, !277, !278, !283, !290}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !14, file: !15, line: 571, baseType: !12, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !15, line: 287, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 181, size: 1408, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !15, line: 182, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !15, line: 183, baseType: !12, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !15, line: 184, baseType: !12, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !15, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !15, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !15, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !15, line: 118, baseType: !24, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !15, line: 119, baseType: !12, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !15, line: 188, baseType: !12, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !15, line: 195, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !15, line: 197, baseType: !40, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !13, !38, !46, !12}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !44, line: 145, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !15, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!43, !13, !38, !52, !12}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !15, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !13, !38, !58, !12}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !44, line: 114, baseType: !45)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !15, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!12, !13, !38}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !15, line: 206, baseType: !32, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !21, file: !15, line: 207, baseType: !24, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !15, line: 208, baseType: !12, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !15, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !15, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !15, line: 215, baseType: !32, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !15, line: 218, baseType: !12, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !15, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !44, line: 44, baseType: !45)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !21, file: !15, line: 222, baseType: !13, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !15, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !44, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !12)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !21, file: !15, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !44, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !44, line: 165, baseType: !12, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !44, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !44, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !44, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !44, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !15, line: 229, baseType: !12, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !14, file: !15, line: 578, baseType: !12, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !14, file: !15, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !14, file: !15, line: 582, baseType: !12, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !14, file: !15, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !111, line: 178, size: 3392, elements: !112)
!111 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !{!113, !118, !126, !135, !136, !137, !165, !169, !172}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !110, file: !111, line: 180, baseType: !114, size: 1792)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1792, elements: !115)
!115 = !{!116, !117}
!116 = !DISubrange(count: 7)
!117 = !DISubrange(count: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !110, file: !111, line: 181, baseType: !119, size: 64, offset: 1792)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!12, !13, !46, !122, !123}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !93, line: 83, baseType: !12)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !125, line: 86, baseType: !84)
!125 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !110, file: !111, line: 183, baseType: !127, size: 64, offset: 1856)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!12, !13, !130, !52, !131, !123}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 40, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !44, line: 129, baseType: !134)
!134 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !110, file: !111, line: 185, baseType: !12, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !110, file: !111, line: 186, baseType: !46, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !110, file: !111, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !46, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !46, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !46, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !46, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !46, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !46, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !46, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !46, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !46, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !46, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !47, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !47, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !47, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !47, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !47, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !47, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !47, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !47, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !47, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !47, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !47, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !47, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !47, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !47, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !110, file: !111, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !110, file: !111, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !171)
!171 = !{!117}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !110, file: !111, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !14, file: !15, line: 585, baseType: !12, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !14, file: !15, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !13}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !14, file: !15, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !15, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !15, line: 50, baseType: !12, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !15, line: 50, baseType: !12, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !15, line: 50, baseType: !12, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !15, line: 50, baseType: !12, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !15, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !72)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !94)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !14, file: !15, line: 591, baseType: !12, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !14, file: !15, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !14, file: !15, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !14, file: !15, line: 596, baseType: !12, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !46, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !198)
!198 = !{!199, !249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !15, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !15, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !15, line: 603, baseType: !94, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !15, line: 604, baseType: !46, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !15, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !15, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !15, line: 57, baseType: !12, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !15, line: 58, baseType: !12, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !15, line: 59, baseType: !12, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !15, line: 60, baseType: !12, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !15, line: 61, baseType: !12, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !15, line: 62, baseType: !12, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !15, line: 63, baseType: !12, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !15, line: 64, baseType: !12, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !15, line: 65, baseType: !12, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !15, line: 607, baseType: !12, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !15, line: 608, baseType: !222, size: 64, offset: 704)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !15, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !15, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !68)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !15, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !15, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !15, line: 610, baseType: !84, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !15, line: 611, baseType: !84, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !15, line: 612, baseType: !84, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !15, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !15, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !15, line: 615, baseType: !12, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !15, line: 616, baseType: !84, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !15, line: 617, baseType: !84, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !15, line: 618, baseType: !84, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !15, line: 619, baseType: !84, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !15, line: 620, baseType: !84, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !15, line: 621, baseType: !12, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !15, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !15, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !15, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !15, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !14, file: !15, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !15, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !15, line: 95, baseType: !12, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !15, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !171)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !15, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !15, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !171)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !15, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !15, line: 78, baseType: !189, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !15, line: 81, baseType: !189, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !14, file: !15, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !14, file: !15, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !12}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !14, file: !15, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !15, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !15, line: 294, baseType: !12, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !15, line: 295, baseType: !19, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !14, file: !15, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 4224, elements: !68)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "r", arg: 1, scope: !7, file: !1, line: 83, type: !13)
!294 = !DILocalVariable(name: "c", arg: 2, scope: !7, file: !1, line: 83, type: !52)
!295 = !DILocation(line: 83, column: 1, scope: !7)
!296 = !DILocation(line: 87, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !7, file: !1, line: 87, column: 7)
!298 = !DILocation(line: 87, column: 7, scope: !7)
!299 = !DILocation(line: 89, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !1, line: 89, column: 12)
!301 = !DILocation(line: 89, column: 12, scope: !297)
!302 = !DILocation(line: 93, column: 10, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !1, line: 92, column: 5)
!304 = !DILocation(line: 93, column: 17, scope: !303)
!305 = !{!306, !307, i64 0}
!306 = !{!"_reent", !307, i64 0, !310, i64 8, !310, i64 16, !310, i64 24, !307, i64 32, !308, i64 36, !307, i64 64, !310, i64 72, !307, i64 80, !310, i64 88, !310, i64 96, !307, i64 104, !310, i64 112, !310, i64 120, !307, i64 128, !310, i64 136, !308, i64 144, !310, i64 504, !311, i64 512, !310, i64 1304, !313, i64 1312, !308, i64 1336}
!307 = !{!"int", !308, i64 0}
!308 = !{!"omnipotent char", !309, i64 0}
!309 = !{!"Simple C/C++ TBAA"}
!310 = !{!"any pointer", !308, i64 0}
!311 = !{!"_atexit", !310, i64 0, !307, i64 8, !308, i64 16, !312, i64 272}
!312 = !{!"_on_exit_args", !308, i64 0, !308, i64 256, !307, i64 512, !307, i64 516}
!313 = !{!"_glue", !310, i64 0, !307, i64 8, !310, i64 16}
!314 = !DILocation(line: 94, column: 7, scope: !303)
!315 = !DILocation(line: 0, scope: !297)
!316 = !DILocation(line: 96, column: 1, scope: !7)
!317 = distinct !DISubprogram(name: "wctrans", scope: !1, file: !1, line: 100, type: !318, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!10, !52}
!320 = !{!321}
!321 = !DILocalVariable(name: "c", arg: 1, scope: !317, file: !1, line: 100, type: !52)
!322 = !DILocation(line: 100, column: 1, scope: !317)
!323 = !DILocation(line: 103, column: 22, scope: !317)
!324 = !DILocation(line: 83, column: 1, scope: !7, inlinedAt: !325)
!325 = distinct !DILocation(line: 103, column: 10, scope: !317)
!326 = !DILocation(line: 87, column: 8, scope: !297, inlinedAt: !325)
!327 = !DILocation(line: 87, column: 7, scope: !7, inlinedAt: !325)
!328 = !DILocation(line: 89, column: 13, scope: !300, inlinedAt: !325)
!329 = !DILocation(line: 89, column: 12, scope: !297, inlinedAt: !325)
!330 = !DILocation(line: 93, column: 10, scope: !303, inlinedAt: !325)
!331 = !DILocation(line: 93, column: 17, scope: !303, inlinedAt: !325)
!332 = !DILocation(line: 94, column: 7, scope: !303, inlinedAt: !325)
!333 = !DILocation(line: 0, scope: !297, inlinedAt: !325)
!334 = !DILocation(line: 96, column: 1, scope: !7, inlinedAt: !325)
!335 = !DILocation(line: 103, column: 3, scope: !317)
