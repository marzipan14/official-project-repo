; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], {}*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
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

@__global_locale = external dso_local local_unnamed_addr global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_wctomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !15 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !295
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 7, !dbg !300
  %7 = load %struct.__locale_t*, %struct.__locale_t** %6, align 8, !dbg !300, !tbaa !301
  %8 = icmp eq %struct.__locale_t* %7, null, !dbg !295
  br i1 %8, label %9, label %10, !dbg !295

; <label>:9:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br label %10, !dbg !295

; <label>:10:                                     ; preds = %4, %9
  %11 = phi %struct.__locale_t* [ @__global_locale, %9 ], [ %7, %4 ], !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  %12 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %11, i64 0, i32 1, !dbg !314
  %13 = bitcast {}** %12 to i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)**, !dbg !314
  %14 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %13, align 8, !dbg !314, !tbaa !315
  %15 = tail call i32 %14(%struct._reent* %0, i8* %1, i32 %2, %struct._mbstate_t* %3) #3, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret i32 %15, !dbg !318
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__ascii_wctomb(%struct._reent* nocapture, i8*, i32, %struct._mbstate_t* nocapture readnone) local_unnamed_addr #0 !dbg !319 {
  %5 = icmp eq i8* %1, null, !dbg !328
  br i1 %5, label %12, label %6, !dbg !330

; <label>:6:                                      ; preds = %4
  %7 = icmp ugt i32 %2, 255, !dbg !331
  br i1 %7, label %8, label %10, !dbg !333

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !334
  store i32 138, i32* %9, align 8, !dbg !336, !tbaa !337
  br label %12, !dbg !338

; <label>:10:                                     ; preds = %6
  %11 = trunc i32 %2 to i8, !dbg !339
  store i8 %11, i8* %1, align 1, !dbg !340, !tbaa !341
  br label %12, !dbg !342

; <label>:12:                                     ; preds = %4, %10, %8
  %13 = phi i32 [ -1, %8 ], [ 1, %10 ], [ 0, %4 ], !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  ret i32 %13, !dbg !344
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_wctomb_r", scope: !1, file: !1, line: 10, type: !16, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !289)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !50, !128, !129}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !21, line: 569, size: 14912, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !103, !104, !105, !106, !110, !111, !170, !171, !175, !187, !188, !189, !191, !192, !193, !255, !274, !275, !280, !287}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !20, file: !21, line: 571, baseType: !18, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !21, line: 287, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 181, size: 1408, elements: !28)
!28 = !{!29, !32, !33, !34, !36, !37, !42, !43, !44, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
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
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !27, file: !21, line: 195, baseType: !4, size: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !27, file: !21, line: 197, baseType: !45, size: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !19, !4, !50, !18}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !8, line: 145, baseType: !49)
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !27, file: !21, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!48, !19, !4, !55, !18}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !27, file: !21, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !19, !4, !61, !18}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !8, line: 114, baseType: !49)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !27, file: !21, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!18, !19, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !27, file: !21, line: 206, baseType: !38, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !27, file: !21, line: 207, baseType: !30, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !27, file: !21, line: 208, baseType: !18, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !27, file: !21, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !27, file: !21, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !27, file: !21, line: 215, baseType: !38, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !27, file: !21, line: 218, baseType: !18, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !21, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !8, line: 44, baseType: !49)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !27, file: !21, line: 222, baseType: !19, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !21, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !8, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !18)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !27, file: !21, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !8, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !8, line: 165, baseType: !18, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !8, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !8, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !8, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !8, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !21, line: 229, baseType: !18, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !20, file: !21, line: 576, baseType: !25, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !20, file: !21, line: 578, baseType: !18, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !20, file: !21, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !20, file: !21, line: 582, baseType: !18, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !20, file: !21, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !114, line: 178, size: 3392, elements: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !{!116, !121, !123, !132, !133, !134, !162, !166, !169}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !113, file: !114, line: 180, baseType: !117, size: 1792)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1792, elements: !118)
!118 = !{!119, !120}
!119 = !DISubrange(count: 7)
!120 = !DISubrange(count: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !113, file: !114, line: 181, baseType: !122, size: 64, offset: 1792)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !113, file: !114, line: 183, baseType: !124, size: 64, offset: 1856)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!18, !19, !127, !55, !5, !129}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !96, line: 83, baseType: !18)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !131, line: 86, baseType: !87)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !113, file: !114, line: 185, baseType: !18, size: 32, offset: 1920)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !113, file: !114, line: 186, baseType: !50, size: 64, offset: 1984)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !113, file: !114, line: 187, baseType: !135, size: 768, offset: 2048)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !136, line: 42, size: 768, elements: !137)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !135, file: !136, line: 44, baseType: !50, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !135, file: !136, line: 45, baseType: !50, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !135, file: !136, line: 46, baseType: !50, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !135, file: !136, line: 47, baseType: !50, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !135, file: !136, line: 48, baseType: !50, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !135, file: !136, line: 49, baseType: !50, size: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !135, file: !136, line: 50, baseType: !50, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !135, file: !136, line: 51, baseType: !50, size: 64, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !135, file: !136, line: 52, baseType: !50, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !135, file: !136, line: 53, baseType: !50, size: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !135, file: !136, line: 54, baseType: !10, size: 8, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !135, file: !136, line: 55, baseType: !10, size: 8, offset: 648)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !135, file: !136, line: 56, baseType: !10, size: 8, offset: 656)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !135, file: !136, line: 57, baseType: !10, size: 8, offset: 664)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !135, file: !136, line: 58, baseType: !10, size: 8, offset: 672)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !135, file: !136, line: 59, baseType: !10, size: 8, offset: 680)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !135, file: !136, line: 60, baseType: !10, size: 8, offset: 688)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !135, file: !136, line: 61, baseType: !10, size: 8, offset: 696)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !135, file: !136, line: 62, baseType: !10, size: 8, offset: 704)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !135, file: !136, line: 63, baseType: !10, size: 8, offset: 712)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !135, file: !136, line: 64, baseType: !10, size: 8, offset: 720)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !135, file: !136, line: 65, baseType: !10, size: 8, offset: 728)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !135, file: !136, line: 66, baseType: !10, size: 8, offset: 736)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !135, file: !136, line: 67, baseType: !10, size: 8, offset: 744)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !113, file: !114, line: 189, baseType: !163, size: 16, offset: 2816)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 2)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !113, file: !114, line: 190, baseType: !167, size: 256, offset: 2832)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !168)
!168 = !{!120}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !113, file: !114, line: 191, baseType: !167, size: 256, offset: 3088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !20, file: !21, line: 585, baseType: !18, size: 32, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !20, file: !21, line: 587, baseType: !172, size: 64, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !19}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !20, file: !21, line: 590, baseType: !176, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !21, line: 47, size: 256, elements: !178)
!178 = !{!179, !180, !181, !182, !183, !184}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !177, file: !21, line: 49, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !177, file: !21, line: 50, baseType: !18, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !177, file: !21, line: 50, baseType: !18, size: 32, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !177, file: !21, line: 50, baseType: !18, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !177, file: !21, line: 50, baseType: !18, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !177, file: !21, line: 51, baseType: !185, size: 32, offset: 192)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 32, elements: !75)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !21, line: 25, baseType: !97)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !20, file: !21, line: 591, baseType: !18, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !20, file: !21, line: 592, baseType: !176, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !20, file: !21, line: 593, baseType: !190, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !20, file: !21, line: 596, baseType: !18, size: 32, offset: 1024)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !20, file: !21, line: 597, baseType: !50, size: 64, offset: 1088)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !20, file: !21, line: 632, baseType: !194, size: 2880, offset: 1152)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 599, size: 2880, elements: !195)
!195 = !{!196, !246}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !194, file: !21, line: 622, baseType: !197, size: 1728)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !21, line: 601, size: 1728, elements: !198)
!198 = !{!199, !200, !201, !205, !217, !218, !220, !228, !229, !230, !231, !235, !239, !240, !241, !242, !243, !244, !245}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !197, file: !21, line: 603, baseType: !97, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !197, file: !21, line: 604, baseType: !50, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !197, file: !21, line: 605, baseType: !202, size: 208, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 208, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 26)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !197, file: !21, line: 606, baseType: !206, size: 288, offset: 352)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !21, line: 55, size: 288, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !206, file: !21, line: 57, baseType: !18, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !206, file: !21, line: 58, baseType: !18, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !206, file: !21, line: 59, baseType: !18, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !206, file: !21, line: 60, baseType: !18, size: 32, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !206, file: !21, line: 61, baseType: !18, size: 32, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !206, file: !21, line: 62, baseType: !18, size: 32, offset: 160)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !206, file: !21, line: 63, baseType: !18, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !206, file: !21, line: 64, baseType: !18, size: 32, offset: 224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !206, file: !21, line: 65, baseType: !18, size: 32, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !197, file: !21, line: 607, baseType: !18, size: 32, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !197, file: !21, line: 608, baseType: !219, size: 64, offset: 704)
!219 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !197, file: !21, line: 609, baseType: !221, size: 112, offset: 768)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !21, line: 319, size: 112, elements: !222)
!222 = !{!223, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !221, file: !21, line: 320, baseType: !224, size: 48)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 48, elements: !71)
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !221, file: !21, line: 321, baseType: !224, size: 48, offset: 48)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !221, file: !21, line: 322, baseType: !225, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !197, file: !21, line: 610, baseType: !87, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !197, file: !21, line: 611, baseType: !87, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !197, file: !21, line: 612, baseType: !87, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !197, file: !21, line: 613, baseType: !232, size: 64, offset: 1088)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 8)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !197, file: !21, line: 614, baseType: !236, size: 192, offset: 1152)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 24)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !197, file: !21, line: 615, baseType: !18, size: 32, offset: 1344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !197, file: !21, line: 616, baseType: !87, size: 64, offset: 1376)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !197, file: !21, line: 617, baseType: !87, size: 64, offset: 1440)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !197, file: !21, line: 618, baseType: !87, size: 64, offset: 1504)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !197, file: !21, line: 619, baseType: !87, size: 64, offset: 1568)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !197, file: !21, line: 620, baseType: !87, size: 64, offset: 1632)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !197, file: !21, line: 621, baseType: !18, size: 32, offset: 1696)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !194, file: !21, line: 631, baseType: !247, size: 2880)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !21, line: 626, size: 2880, elements: !248)
!248 = !{!249, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !247, file: !21, line: 629, baseType: !250, size: 1920)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1920, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 30)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !247, file: !21, line: 630, baseType: !254, size: 960, offset: 1920)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !251)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !20, file: !21, line: 636, baseType: !256, size: 64, offset: 4032)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !21, line: 93, size: 6336, elements: !258)
!258 = !{!259, !260, !261, !266}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !257, file: !21, line: 94, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !257, file: !21, line: 95, baseType: !18, size: 32, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !257, file: !21, line: 97, baseType: !262, size: 2048, offset: 128)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 2048, elements: !168)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !257, file: !21, line: 98, baseType: !267, size: 4160, offset: 2176)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !21, line: 74, size: 4160, elements: !268)
!268 = !{!269, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !267, file: !21, line: 75, baseType: !270, size: 2048)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !168)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !267, file: !21, line: 76, baseType: !270, size: 2048, offset: 2048)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !267, file: !21, line: 78, baseType: !186, size: 32, offset: 4096)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !267, file: !21, line: 81, baseType: !186, size: 32, offset: 4128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !20, file: !21, line: 637, baseType: !257, size: 6336, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !20, file: !21, line: 641, baseType: !276, size: 64, offset: 10432)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !18}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !20, file: !21, line: 646, baseType: !281, size: 192, offset: 10496)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !21, line: 291, size: 192, elements: !282)
!282 = !{!283, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !281, file: !21, line: 293, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !281, file: !21, line: 294, baseType: !18, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !281, file: !21, line: 295, baseType: !25, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !20, file: !21, line: 648, baseType: !288, size: 4224, offset: 10688)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4224, elements: !71)
!289 = !{!290, !291, !292, !293}
!290 = !DILocalVariable(name: "r", arg: 1, scope: !15, file: !1, line: 10, type: !19)
!291 = !DILocalVariable(name: "s", arg: 2, scope: !15, file: !1, line: 10, type: !50)
!292 = !DILocalVariable(name: "_wchar", arg: 3, scope: !15, file: !1, line: 10, type: !128)
!293 = !DILocalVariable(name: "state", arg: 4, scope: !15, file: !1, line: 10, type: !129)
!294 = !DILocation(line: 10, column: 1, scope: !15)
!295 = !DILocation(line: 230, column: 10, scope: !296, inlinedAt: !299)
!296 = distinct !DISubprogram(name: "__get_current_locale", scope: !114, file: !114, line: 228, type: !297, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!297 = !DISubroutineType(types: !298)
!298 = !{!112}
!299 = distinct !DILocation(line: 16, column: 10, scope: !15)
!300 = !DILocation(line: 230, column: 18, scope: !296, inlinedAt: !299)
!301 = !{!302, !306, i64 72}
!302 = !{!"_reent", !303, i64 0, !306, i64 8, !306, i64 16, !306, i64 24, !303, i64 32, !304, i64 36, !303, i64 64, !306, i64 72, !303, i64 80, !306, i64 88, !306, i64 96, !303, i64 104, !306, i64 112, !306, i64 120, !303, i64 128, !306, i64 136, !304, i64 144, !306, i64 504, !307, i64 512, !306, i64 1304, !309, i64 1312, !304, i64 1336}
!303 = !{!"int", !304, i64 0}
!304 = !{!"omnipotent char", !305, i64 0}
!305 = !{!"Simple C/C++ TBAA"}
!306 = !{!"any pointer", !304, i64 0}
!307 = !{!"_atexit", !306, i64 0, !303, i64 8, !304, i64 16, !308, i64 272}
!308 = !{!"_on_exit_args", !304, i64 0, !304, i64 256, !303, i64 512, !303, i64 516}
!309 = !{!"_glue", !306, i64 0, !303, i64 8, !306, i64 16}
!310 = !DILocation(line: 213, column: 3, scope: !311, inlinedAt: !312)
!311 = distinct !DISubprogram(name: "__get_global_locale", scope: !114, file: !114, line: 210, type: !297, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!312 = distinct !DILocation(line: 230, column: 29, scope: !296, inlinedAt: !299)
!313 = !DILocation(line: 230, column: 3, scope: !296, inlinedAt: !299)
!314 = !DILocation(line: 16, column: 10, scope: !15)
!315 = !{!316, !306, i64 224}
!316 = !{!"__locale_t", !304, i64 0, !306, i64 224, !306, i64 232, !303, i64 240, !306, i64 248, !317, i64 256, !304, i64 352, !304, i64 354, !304, i64 386}
!317 = !{!"lconv", !306, i64 0, !306, i64 8, !306, i64 16, !306, i64 24, !306, i64 32, !306, i64 40, !306, i64 48, !306, i64 56, !306, i64 64, !306, i64 72, !304, i64 80, !304, i64 81, !304, i64 82, !304, i64 83, !304, i64 84, !304, i64 85, !304, i64 86, !304, i64 87, !304, i64 88, !304, i64 89, !304, i64 90, !304, i64 91, !304, i64 92, !304, i64 93}
!318 = !DILocation(line: 16, column: 3, scope: !15)
!319 = distinct !DISubprogram(name: "__ascii_wctomb", scope: !1, file: !1, line: 20, type: !16, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !320)
!320 = !{!321, !322, !323, !324, !325}
!321 = !DILocalVariable(name: "r", arg: 1, scope: !319, file: !1, line: 20, type: !19)
!322 = !DILocalVariable(name: "s", arg: 2, scope: !319, file: !1, line: 20, type: !50)
!323 = !DILocalVariable(name: "_wchar", arg: 3, scope: !319, file: !1, line: 20, type: !128)
!324 = !DILocalVariable(name: "state", arg: 4, scope: !319, file: !1, line: 20, type: !129)
!325 = !DILocalVariable(name: "wchar", scope: !319, file: !1, line: 29, type: !95)
!326 = !DILocation(line: 20, column: 1, scope: !319)
!327 = !DILocation(line: 29, column: 10, scope: !319)
!328 = !DILocation(line: 31, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !319, file: !1, line: 31, column: 7)
!330 = !DILocation(line: 31, column: 7, scope: !319)
!331 = !DILocation(line: 37, column: 21, scope: !332)
!332 = distinct !DILexicalBlock(scope: !319, file: !1, line: 37, column: 7)
!333 = !DILocation(line: 37, column: 7, scope: !319)
!334 = !DILocation(line: 40, column: 10, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 39, column: 5)
!336 = !DILocation(line: 40, column: 17, scope: !335)
!337 = !{!302, !303, i64 0}
!338 = !DILocation(line: 41, column: 7, scope: !335)
!339 = !DILocation(line: 44, column: 8, scope: !319)
!340 = !DILocation(line: 44, column: 6, scope: !319)
!341 = !{!304, !304, i64 0}
!342 = !DILocation(line: 45, column: 3, scope: !319)
!343 = !DILocation(line: 0, scope: !319)
!344 = !DILocation(line: 46, column: 1, scope: !319)
