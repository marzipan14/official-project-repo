; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/localeconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/localeconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
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

@__global_locale = external dso_local global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.lconv* @__localeconv_l(%struct.__locale_t* readnone) local_unnamed_addr #0 !dbg !7 {
  %2 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %0, i64 0, i32 5, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  ret %struct.lconv* %2, !dbg !306
}

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.lconv* @_localeconv_r(%struct._reent* nocapture readnone) local_unnamed_addr #0 !dbg !307 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !313
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 7, !dbg !316
  %4 = load %struct.__locale_t*, %struct.__locale_t** %3, align 8, !dbg !316, !tbaa !317
  %5 = icmp eq %struct.__locale_t* %4, null, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br i1 %5, label %6, label %7, !dbg !313

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br label %7, !dbg !313

; <label>:7:                                      ; preds = %1, %6
  %8 = phi %struct.__locale_t* [ @__global_locale, %6 ], [ %4, %1 ], !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %9 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %8, i64 0, i32 5, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret %struct.lconv* %9, !dbg !338
}

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.lconv* @localeconv() local_unnamed_addr #0 !dbg !339 {
  %1 = tail call %struct._reent* @__getreent() #3, !dbg !342
  %2 = getelementptr inbounds %struct._reent, %struct._reent* %1, i64 0, i32 7, !dbg !344
  %3 = load %struct.__locale_t*, %struct.__locale_t** %2, align 8, !dbg !344, !tbaa !317
  %4 = icmp eq %struct.__locale_t* %3, null, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %4, label %5, label %6, !dbg !342

; <label>:5:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %6, !dbg !342

; <label>:6:                                      ; preds = %0, %5
  %7 = phi %struct.__locale_t* [ @__global_locale, %5 ], [ %3, %0 ], !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  %8 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %7, i64 0, i32 5, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  ret %struct.lconv* %8, !dbg !357
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/localeconv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__localeconv_l", scope: !1, file: !1, line: 6, type: !8, isLocal: false, isDefinition: true, scopeLine: 7, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !291)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !40}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !12, line: 42, size: 768, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !11, file: !12, line: 44, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !11, file: !12, line: 45, baseType: !15, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !11, file: !12, line: 46, baseType: !15, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !11, file: !12, line: 47, baseType: !15, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !11, file: !12, line: 48, baseType: !15, size: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !11, file: !12, line: 49, baseType: !15, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !11, file: !12, line: 50, baseType: !15, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !11, file: !12, line: 51, baseType: !15, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !11, file: !12, line: 52, baseType: !15, size: 64, offset: 512)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !11, file: !12, line: 53, baseType: !15, size: 64, offset: 576)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !11, file: !12, line: 54, baseType: !16, size: 8, offset: 640)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !11, file: !12, line: 55, baseType: !16, size: 8, offset: 648)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !11, file: !12, line: 56, baseType: !16, size: 8, offset: 656)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !11, file: !12, line: 57, baseType: !16, size: 8, offset: 664)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !11, file: !12, line: 58, baseType: !16, size: 8, offset: 672)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !11, file: !12, line: 59, baseType: !16, size: 8, offset: 680)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !11, file: !12, line: 60, baseType: !16, size: 8, offset: 688)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !11, file: !12, line: 61, baseType: !16, size: 8, offset: 696)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !11, file: !12, line: 62, baseType: !16, size: 8, offset: 704)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !11, file: !12, line: 63, baseType: !16, size: 8, offset: 712)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !11, file: !12, line: 64, baseType: !16, size: 8, offset: 720)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !11, file: !12, line: 65, baseType: !16, size: 8, offset: 728)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !11, file: !12, line: 66, baseType: !16, size: 8, offset: 736)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !11, file: !12, line: 67, baseType: !16, size: 8, offset: 744)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !42, line: 178, size: 3392, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !49, !272, !281, !282, !283, !284, !288, !290}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !41, file: !42, line: 180, baseType: !45, size: 1792)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 1792, elements: !46)
!46 = !{!47, !48}
!47 = !DISubrange(count: 7)
!48 = !DISubrange(count: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !41, file: !42, line: 181, baseType: !50, size: 64, offset: 1792)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !54, !15, !268, !269}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !56, line: 569, size: 14912, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59, !139, !140, !141, !142, !146, !147, !148, !149, !153, !165, !166, !167, !169, !170, !171, !233, !253, !254, !259, !266}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !55, file: !56, line: 571, baseType: !53, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !55, file: !56, line: 576, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !56, line: 287, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !56, line: 181, size: 1408, elements: !63)
!63 = !{!64, !67, !68, !69, !71, !72, !77, !78, !80, !87, !93, !98, !102, !103, !104, !105, !109, !113, !114, !115, !117, !118, !122, !138}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !62, file: !56, line: 182, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !62, file: !56, line: 183, baseType: !53, size: 32, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !62, file: !56, line: 184, baseType: !53, size: 32, offset: 96)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !62, file: !56, line: 185, baseType: !70, size: 16, offset: 128)
!70 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !62, file: !56, line: 186, baseType: !70, size: 16, offset: 144)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !62, file: !56, line: 187, baseType: !73, size: 128, offset: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !56, line: 117, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !73, file: !56, line: 118, baseType: !65, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !73, file: !56, line: 119, baseType: !53, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !62, file: !56, line: 188, baseType: !53, size: 32, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !62, file: !56, line: 195, baseType: !79, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !62, file: !56, line: 197, baseType: !81, size: 64, offset: 448)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !54, !79, !15, !53}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !85, line: 145, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !62, file: !56, line: 199, baseType: !88, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!84, !54, !79, !91, !53}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !62, file: !56, line: 202, baseType: !94, size: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!97, !54, !79, !97, !53}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !85, line: 114, baseType: !86)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !62, file: !56, line: 203, baseType: !99, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!53, !54, !79}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !62, file: !56, line: 206, baseType: !73, size: 128, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !62, file: !56, line: 207, baseType: !65, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !62, file: !56, line: 208, baseType: !53, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !62, file: !56, line: 211, baseType: !106, size: 24, offset: 928)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 24, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 3)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !62, file: !56, line: 212, baseType: !110, size: 8, offset: 952)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !62, file: !56, line: 215, baseType: !73, size: 128, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !62, file: !56, line: 218, baseType: !53, size: 32, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !62, file: !56, line: 219, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !85, line: 44, baseType: !86)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !62, file: !56, line: 222, baseType: !54, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !62, file: !56, line: 226, baseType: !119, size: 32, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !85, line: 175, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !121, line: 12, baseType: !53)
!121 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !62, file: !56, line: 228, baseType: !123, size: 64, offset: 1312)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !85, line: 171, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !85, line: 163, size: 64, elements: !125)
!125 = !{!126, !127}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !124, file: !85, line: 165, baseType: !53, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !124, file: !85, line: 170, baseType: !128, size: 32, offset: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !85, line: 166, size: 32, elements: !129)
!129 = !{!130, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !128, file: !85, line: 168, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !132, line: 124, baseType: !133)
!132 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!133 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !128, file: !85, line: 169, baseType: !135, size: 32)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 4)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !62, file: !56, line: 229, baseType: !53, size: 32, offset: 1376)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !55, file: !56, line: 576, baseType: !60, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !55, file: !56, line: 576, baseType: !60, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !55, file: !56, line: 578, baseType: !53, size: 32, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !55, file: !56, line: 579, baseType: !143, size: 200, offset: 288)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 25)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !55, file: !56, line: 582, baseType: !53, size: 32, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !55, file: !56, line: 583, baseType: !40, size: 64, offset: 576)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !55, file: !56, line: 585, baseType: !53, size: 32, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !55, file: !56, line: 587, baseType: !150, size: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !54}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !55, file: !56, line: 590, baseType: !154, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !56, line: 47, size: 256, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !155, file: !56, line: 49, baseType: !154, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !155, file: !56, line: 50, baseType: !53, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !155, file: !56, line: 50, baseType: !53, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !155, file: !56, line: 50, baseType: !53, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !155, file: !56, line: 50, baseType: !53, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !155, file: !56, line: 51, baseType: !163, size: 32, offset: 192)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !111)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !56, line: 25, baseType: !133)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !55, file: !56, line: 591, baseType: !53, size: 32, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !55, file: !56, line: 592, baseType: !154, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !55, file: !56, line: 593, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !55, file: !56, line: 596, baseType: !53, size: 32, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !55, file: !56, line: 597, baseType: !15, size: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !55, file: !56, line: 632, baseType: !172, size: 2880, offset: 1152)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !56, line: 599, size: 2880, elements: !173)
!173 = !{!174, !224}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !172, file: !56, line: 622, baseType: !175, size: 1728)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !56, line: 601, size: 1728, elements: !176)
!176 = !{!177, !178, !179, !183, !195, !196, !198, !206, !207, !208, !209, !213, !217, !218, !219, !220, !221, !222, !223}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !175, file: !56, line: 603, baseType: !133, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !175, file: !56, line: 604, baseType: !15, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !175, file: !56, line: 605, baseType: !180, size: 208, offset: 128)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 26)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !175, file: !56, line: 606, baseType: !184, size: 288, offset: 352)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !56, line: 55, size: 288, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !184, file: !56, line: 57, baseType: !53, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !184, file: !56, line: 58, baseType: !53, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !184, file: !56, line: 59, baseType: !53, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !184, file: !56, line: 60, baseType: !53, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !184, file: !56, line: 61, baseType: !53, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !184, file: !56, line: 62, baseType: !53, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !184, file: !56, line: 63, baseType: !53, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !184, file: !56, line: 64, baseType: !53, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !184, file: !56, line: 65, baseType: !53, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !175, file: !56, line: 607, baseType: !53, size: 32, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !175, file: !56, line: 608, baseType: !197, size: 64, offset: 704)
!197 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !175, file: !56, line: 609, baseType: !199, size: 112, offset: 768)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !56, line: 319, size: 112, elements: !200)
!200 = !{!201, !204, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !199, file: !56, line: 320, baseType: !202, size: 48)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 48, elements: !107)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !199, file: !56, line: 321, baseType: !202, size: 48, offset: 48)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !199, file: !56, line: 322, baseType: !203, size: 16, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !175, file: !56, line: 610, baseType: !123, size: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !175, file: !56, line: 611, baseType: !123, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !175, file: !56, line: 612, baseType: !123, size: 64, offset: 1024)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !175, file: !56, line: 613, baseType: !210, size: 64, offset: 1088)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !175, file: !56, line: 614, baseType: !214, size: 192, offset: 1152)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 24)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !175, file: !56, line: 615, baseType: !53, size: 32, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !175, file: !56, line: 616, baseType: !123, size: 64, offset: 1376)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !175, file: !56, line: 617, baseType: !123, size: 64, offset: 1440)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !175, file: !56, line: 618, baseType: !123, size: 64, offset: 1504)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !175, file: !56, line: 619, baseType: !123, size: 64, offset: 1568)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !175, file: !56, line: 620, baseType: !123, size: 64, offset: 1632)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !175, file: !56, line: 621, baseType: !53, size: 32, offset: 1696)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !172, file: !56, line: 631, baseType: !225, size: 2880)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !56, line: 626, size: 2880, elements: !226)
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !225, file: !56, line: 629, baseType: !228, size: 1920)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1920, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 30)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !225, file: !56, line: 630, baseType: !232, size: 960, offset: 1920)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 960, elements: !229)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !55, file: !56, line: 636, baseType: !234, size: 64, offset: 4032)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !56, line: 93, size: 6336, elements: !236)
!236 = !{!237, !238, !239, !245}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !235, file: !56, line: 94, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !235, file: !56, line: 95, baseType: !53, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !235, file: !56, line: 97, baseType: !240, size: 2048, offset: 128)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 2048, elements: !244)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !{!48}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !235, file: !56, line: 98, baseType: !246, size: 4160, offset: 2176)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !56, line: 74, size: 4160, elements: !247)
!247 = !{!248, !250, !251, !252}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !246, file: !56, line: 75, baseType: !249, size: 2048)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 2048, elements: !244)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !246, file: !56, line: 76, baseType: !249, size: 2048, offset: 2048)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !246, file: !56, line: 78, baseType: !164, size: 32, offset: 4096)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !246, file: !56, line: 81, baseType: !164, size: 32, offset: 4128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !55, file: !56, line: 637, baseType: !235, size: 6336, offset: 4096)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !55, file: !56, line: 641, baseType: !255, size: 64, offset: 10432)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !53}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !55, file: !56, line: 646, baseType: !260, size: 192, offset: 10496)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !56, line: 291, size: 192, elements: !261)
!261 = !{!262, !264, !265}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !56, line: 293, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !260, file: !56, line: 294, baseType: !53, size: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !260, file: !56, line: 295, baseType: !60, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !55, file: !56, line: 648, baseType: !267, size: 4224, offset: 10688)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 4224, elements: !107)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !132, line: 83, baseType: !53)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !271, line: 86, baseType: !123)
!271 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !41, file: !42, line: 183, baseType: !273, size: 64, offset: 1856)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!53, !54, !276, !91, !277, !269}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 40, baseType: !279)
!278 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !85, line: 129, baseType: !280)
!280 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !41, file: !42, line: 185, baseType: !53, size: 32, offset: 1920)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !41, file: !42, line: 186, baseType: !15, size: 64, offset: 1984)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !41, file: !42, line: 187, baseType: !11, size: 768, offset: 2048)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !41, file: !42, line: 189, baseType: !285, size: 16, offset: 2816)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 2)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !41, file: !42, line: 190, baseType: !289, size: 256, offset: 2832)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 256, elements: !244)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !41, file: !42, line: 191, baseType: !289, size: 256, offset: 3088)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "locale", arg: 1, scope: !7, file: !1, line: 6, type: !40)
!293 = !DILocalVariable(name: "lconv", scope: !7, file: !1, line: 8, type: !10)
!294 = !DILocation(line: 6, column: 36, scope: !7)
!295 = !DILocation(line: 8, column: 34, scope: !7)
!296 = !DILocation(line: 8, column: 17, scope: !7)
!297 = !DILocation(line: 213, column: 3, scope: !298, inlinedAt: !301)
!298 = distinct !DISubprogram(name: "__get_global_locale", scope: !42, file: !42, line: 210, type: !299, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!299 = !DISubroutineType(types: !300)
!300 = !{!40}
!301 = distinct !DILocation(line: 239, column: 10, scope: !302, inlinedAt: !303)
!302 = distinct !DISubprogram(name: "__get_C_locale", scope: !42, file: !42, line: 236, type: !299, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!303 = distinct !DILocation(line: 9, column: 17, scope: !304)
!304 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 7)
!305 = !DILocation(line: 239, column: 3, scope: !302, inlinedAt: !303)
!306 = !DILocation(line: 51, column: 1, scope: !7)
!307 = distinct !DISubprogram(name: "_localeconv_r", scope: !1, file: !1, line: 54, type: !308, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{!10, !54}
!310 = !{!311}
!311 = !DILocalVariable(name: "data", arg: 1, scope: !307, file: !1, line: 54, type: !54)
!312 = !DILocation(line: 54, column: 1, scope: !307)
!313 = !DILocation(line: 230, column: 10, scope: !314, inlinedAt: !315)
!314 = distinct !DISubprogram(name: "__get_current_locale", scope: !42, file: !42, line: 228, type: !299, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!315 = distinct !DILocation(line: 60, column: 26, scope: !307)
!316 = !DILocation(line: 230, column: 18, scope: !314, inlinedAt: !315)
!317 = !{!318, !322, i64 72}
!318 = !{!"_reent", !319, i64 0, !322, i64 8, !322, i64 16, !322, i64 24, !319, i64 32, !320, i64 36, !319, i64 64, !322, i64 72, !319, i64 80, !322, i64 88, !322, i64 96, !319, i64 104, !322, i64 112, !322, i64 120, !319, i64 128, !322, i64 136, !320, i64 144, !322, i64 504, !323, i64 512, !322, i64 1304, !325, i64 1312, !320, i64 1336}
!319 = !{!"int", !320, i64 0}
!320 = !{!"omnipotent char", !321, i64 0}
!321 = !{!"Simple C/C++ TBAA"}
!322 = !{!"any pointer", !320, i64 0}
!323 = !{!"_atexit", !322, i64 0, !319, i64 8, !320, i64 16, !324, i64 272}
!324 = !{!"_on_exit_args", !320, i64 0, !320, i64 256, !319, i64 512, !319, i64 516}
!325 = !{!"_glue", !322, i64 0, !319, i64 8, !322, i64 16}
!326 = !DILocation(line: 213, column: 3, scope: !298, inlinedAt: !327)
!327 = distinct !DILocation(line: 230, column: 29, scope: !314, inlinedAt: !315)
!328 = !DILocation(line: 230, column: 3, scope: !314, inlinedAt: !315)
!329 = !DILocation(line: 6, column: 36, scope: !7, inlinedAt: !330)
!330 = distinct !DILocation(line: 60, column: 10, scope: !307)
!331 = !DILocation(line: 8, column: 34, scope: !7, inlinedAt: !330)
!332 = !DILocation(line: 8, column: 17, scope: !7, inlinedAt: !330)
!333 = !DILocation(line: 213, column: 3, scope: !298, inlinedAt: !334)
!334 = distinct !DILocation(line: 239, column: 10, scope: !302, inlinedAt: !335)
!335 = distinct !DILocation(line: 9, column: 17, scope: !304, inlinedAt: !330)
!336 = !DILocation(line: 239, column: 3, scope: !302, inlinedAt: !335)
!337 = !DILocation(line: 51, column: 1, scope: !7, inlinedAt: !330)
!338 = !DILocation(line: 60, column: 3, scope: !307)
!339 = distinct !DISubprogram(name: "localeconv", scope: !1, file: !1, line: 65, type: !340, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!340 = !DISubroutineType(types: !341)
!341 = !{!10}
!342 = !DILocation(line: 230, column: 10, scope: !314, inlinedAt: !343)
!343 = distinct !DILocation(line: 67, column: 26, scope: !339)
!344 = !DILocation(line: 230, column: 18, scope: !314, inlinedAt: !343)
!345 = !DILocation(line: 213, column: 3, scope: !298, inlinedAt: !346)
!346 = distinct !DILocation(line: 230, column: 29, scope: !314, inlinedAt: !343)
!347 = !DILocation(line: 230, column: 3, scope: !314, inlinedAt: !343)
!348 = !DILocation(line: 6, column: 36, scope: !7, inlinedAt: !349)
!349 = distinct !DILocation(line: 67, column: 10, scope: !339)
!350 = !DILocation(line: 8, column: 34, scope: !7, inlinedAt: !349)
!351 = !DILocation(line: 8, column: 17, scope: !7, inlinedAt: !349)
!352 = !DILocation(line: 213, column: 3, scope: !298, inlinedAt: !353)
!353 = distinct !DILocation(line: 239, column: 10, scope: !302, inlinedAt: !354)
!354 = distinct !DILocation(line: 9, column: 17, scope: !304, inlinedAt: !349)
!355 = !DILocation(line: 239, column: 3, scope: !302, inlinedAt: !354)
!356 = !DILocation(line: 51, column: 1, scope: !7, inlinedAt: !349)
!357 = !DILocation(line: 67, column: 3, scope: !339)
