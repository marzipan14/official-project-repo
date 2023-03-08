; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fscanf.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @fscanf(%struct.__sFILE* noalias, i8* noalias, ...) local_unnamed_addr #0 !dbg !7 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #3, !dbg !253
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !255
  call void @llvm.va_start(i8* nonnull %4), !dbg !255
  %6 = call %struct._reent* @__getreent() #5, !dbg !256
  %7 = call i32 @_vfscanf_r(%struct._reent* %6, %struct.__sFILE* %0, i8* %1, %struct.__va_list_tag* nonnull %5) #5, !dbg !257
  call void @llvm.va_end(i8* nonnull %4), !dbg !259
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #3, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  ret i32 %7, !dbg !261
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @_vfscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_fscanf_r(%struct._reent*, %struct.__sFILE* noalias, i8* noalias, ...) local_unnamed_addr #0 !dbg !262 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !274
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #3, !dbg !274
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !276
  call void @llvm.va_start(i8* nonnull %5), !dbg !276
  %7 = call i32 @_vfscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i8* %2, %struct.__va_list_tag* nonnull %6) #5, !dbg !277
  call void @llvm.va_end(i8* nonnull %5), !dbg !279
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #3, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  ret i32 %7, !dbg !281
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "fscanf", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !235)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !234, null}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 66, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !18)
!18 = !{!19, !22, !23, !24, !26, !27, !32, !33, !35, !201, !207, !212, !216, !217, !218, !219, !221, !223, !224, !225, !227, !228, !232, !233}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !17, file: !16, line: 182, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !17, file: !16, line: 183, baseType: !10, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !17, file: !16, line: 184, baseType: !10, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !16, line: 185, baseType: !25, size: 16, offset: 128)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !17, file: !16, line: 186, baseType: !25, size: 16, offset: 144)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !17, file: !16, line: 187, baseType: !28, size: 128, offset: 192)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !28, file: !16, line: 118, baseType: !20, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !28, file: !16, line: 119, baseType: !10, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !17, file: !16, line: 188, baseType: !10, size: 32, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !17, file: !16, line: 195, baseType: !34, size: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !17, file: !16, line: 197, baseType: !36, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !42, !34, !86, !10}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !40, line: 145, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !44)
!44 = !{!45, !46, !48, !49, !50, !51, !56, !57, !60, !61, !65, !80, !81, !82, !84, !85, !87, !165, !186, !187, !192, !199}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !43, file: !16, line: 571, baseType: !10, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !43, file: !16, line: 576, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !43, file: !16, line: 576, baseType: !47, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !43, file: !16, line: 576, baseType: !47, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !43, file: !16, line: 578, baseType: !10, size: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !43, file: !16, line: 579, baseType: !52, size: 200, offset: 288)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !54)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !{!55}
!55 = !DISubrange(count: 25)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !43, file: !16, line: 582, baseType: !10, size: 32, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !43, file: !16, line: 583, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !43, file: !16, line: 585, baseType: !10, size: 32, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !43, file: !16, line: 587, baseType: !62, size: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !42}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !43, file: !16, line: 590, baseType: !66, size: 64, offset: 768)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !67, file: !16, line: 49, baseType: !66, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !67, file: !16, line: 50, baseType: !10, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !67, file: !16, line: 50, baseType: !10, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !67, file: !16, line: 50, baseType: !10, size: 32, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !67, file: !16, line: 50, baseType: !10, size: 32, offset: 160)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !67, file: !16, line: 51, baseType: !75, size: 32, offset: 192)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 32, elements: !78)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !77)
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !43, file: !16, line: 591, baseType: !10, size: 32, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !43, file: !16, line: 592, baseType: !66, size: 64, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !43, file: !16, line: 593, baseType: !83, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !43, file: !16, line: 596, baseType: !10, size: 32, offset: 1024)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !43, file: !16, line: 597, baseType: !86, size: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !43, file: !16, line: 632, baseType: !88, size: 2880, offset: 1152)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !43, file: !16, line: 599, size: 2880, elements: !89)
!89 = !{!90, !156}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !88, file: !16, line: 622, baseType: !91, size: 1728)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !16, line: 601, size: 1728, elements: !92)
!92 = !{!93, !94, !95, !99, !111, !112, !114, !124, !139, !140, !141, !145, !149, !150, !151, !152, !153, !154, !155}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !91, file: !16, line: 603, baseType: !77, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !91, file: !16, line: 604, baseType: !86, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !91, file: !16, line: 605, baseType: !96, size: 208, offset: 128)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 26)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !91, file: !16, line: 606, baseType: !100, size: 288, offset: 352)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !16, line: 55, size: 288, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !100, file: !16, line: 57, baseType: !10, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !100, file: !16, line: 58, baseType: !10, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !100, file: !16, line: 59, baseType: !10, size: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !100, file: !16, line: 60, baseType: !10, size: 32, offset: 96)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !100, file: !16, line: 61, baseType: !10, size: 32, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !100, file: !16, line: 62, baseType: !10, size: 32, offset: 160)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !100, file: !16, line: 63, baseType: !10, size: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !100, file: !16, line: 64, baseType: !10, size: 32, offset: 224)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !100, file: !16, line: 65, baseType: !10, size: 32, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !91, file: !16, line: 607, baseType: !10, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !91, file: !16, line: 608, baseType: !113, size: 64, offset: 704)
!113 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !91, file: !16, line: 609, baseType: !115, size: 112, offset: 768)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !16, line: 319, size: 112, elements: !116)
!116 = !{!117, !122, !123}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !115, file: !16, line: 320, baseType: !118, size: 48)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 48, elements: !120)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !115, file: !16, line: 321, baseType: !118, size: 48, offset: 48)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !115, file: !16, line: 322, baseType: !119, size: 16, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !91, file: !16, line: 610, baseType: !125, size: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !40, line: 171, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 163, size: 64, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !126, file: !40, line: 165, baseType: !10, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !126, file: !40, line: 170, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !40, line: 166, size: 32, elements: !131)
!131 = !{!132, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !130, file: !40, line: 168, baseType: !133, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !134, line: 124, baseType: !77)
!134 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !130, file: !40, line: 169, baseType: !136, size: 32)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !91, file: !16, line: 611, baseType: !125, size: 64, offset: 960)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !91, file: !16, line: 612, baseType: !125, size: 64, offset: 1024)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !91, file: !16, line: 613, baseType: !142, size: 64, offset: 1088)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !91, file: !16, line: 614, baseType: !146, size: 192, offset: 1152)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 24)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !91, file: !16, line: 615, baseType: !10, size: 32, offset: 1344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !91, file: !16, line: 616, baseType: !125, size: 64, offset: 1376)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !91, file: !16, line: 617, baseType: !125, size: 64, offset: 1440)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !91, file: !16, line: 618, baseType: !125, size: 64, offset: 1504)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !91, file: !16, line: 619, baseType: !125, size: 64, offset: 1568)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !91, file: !16, line: 620, baseType: !125, size: 64, offset: 1632)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !91, file: !16, line: 621, baseType: !10, size: 32, offset: 1696)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !88, file: !16, line: 631, baseType: !157, size: 2880)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !16, line: 626, size: 2880, elements: !158)
!158 = !{!159, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !157, file: !16, line: 629, baseType: !160, size: 1920)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1920, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 30)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !157, file: !16, line: 630, baseType: !164, size: 960, offset: 1920)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 960, elements: !161)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !43, file: !16, line: 636, baseType: !166, size: 64, offset: 4032)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !168)
!168 = !{!169, !170, !171, !178}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !167, file: !16, line: 94, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !167, file: !16, line: 95, baseType: !10, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !167, file: !16, line: 97, baseType: !172, size: 2048, offset: 128)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 2048, elements: !176)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null}
!176 = !{!177}
!177 = !DISubrange(count: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !167, file: !16, line: 98, baseType: !179, size: 4160, offset: 2176)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !16, line: 74, size: 4160, elements: !180)
!180 = !{!181, !183, !184, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !179, file: !16, line: 75, baseType: !182, size: 2048)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !176)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !179, file: !16, line: 76, baseType: !182, size: 2048, offset: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !179, file: !16, line: 78, baseType: !76, size: 32, offset: 4096)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !179, file: !16, line: 81, baseType: !76, size: 32, offset: 4128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !43, file: !16, line: 637, baseType: !167, size: 6336, offset: 4096)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !43, file: !16, line: 641, baseType: !188, size: 64, offset: 10432)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !10}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !43, file: !16, line: 646, baseType: !193, size: 192, offset: 10496)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !194)
!194 = !{!195, !197, !198}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !193, file: !16, line: 293, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !193, file: !16, line: 294, baseType: !10, size: 32, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !193, file: !16, line: 295, baseType: !47, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !43, file: !16, line: 648, baseType: !200, size: 4224, offset: 10688)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 4224, elements: !120)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !17, file: !16, line: 199, baseType: !202, size: 64, offset: 512)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!39, !42, !34, !205, !10}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !17, file: !16, line: 202, baseType: !208, size: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !42, !34, !211, !10}
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !40, line: 114, baseType: !41)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !17, file: !16, line: 203, baseType: !213, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!10, !42, !34}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !17, file: !16, line: 206, baseType: !28, size: 128, offset: 704)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !17, file: !16, line: 207, baseType: !20, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !17, file: !16, line: 208, baseType: !10, size: 32, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !17, file: !16, line: 211, baseType: !220, size: 24, offset: 928)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !120)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !17, file: !16, line: 212, baseType: !222, size: 8, offset: 952)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !78)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !17, file: !16, line: 215, baseType: !28, size: 128, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !17, file: !16, line: 218, baseType: !10, size: 32, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !16, line: 219, baseType: !226, size: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !40, line: 44, baseType: !41)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !17, file: !16, line: 222, baseType: !42, size: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !17, file: !16, line: 226, baseType: !229, size: 32, offset: 1280)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !40, line: 175, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !231, line: 12, baseType: !10)
!231 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !17, file: !16, line: 228, baseType: !125, size: 64, offset: 1312)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !17, file: !16, line: 229, baseType: !10, size: 32, offset: 1376)
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !205)
!235 = !{!236, !237, !238, !239}
!236 = !DILocalVariable(name: "fp", arg: 1, scope: !7, file: !1, line: 32, type: !11)
!237 = !DILocalVariable(name: "fmt", arg: 2, scope: !7, file: !1, line: 32, type: !234)
!238 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 40, type: !10)
!239 = !DILocalVariable(name: "ap", scope: !7, file: !1, line: 41, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !14, line: 46, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !242, line: 51, baseType: !243)
!242 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 41, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 192, elements: !78)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 41, size: 192, elements: !246)
!246 = !{!247, !248, !249, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !245, file: !1, line: 41, baseType: !77, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !245, file: !1, line: 41, baseType: !77, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !245, file: !1, line: 41, baseType: !34, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !245, file: !1, line: 41, baseType: !34, size: 64, offset: 128)
!251 = !DILocation(line: 32, column: 25, scope: !7)
!252 = !DILocation(line: 32, column: 53, scope: !7)
!253 = !DILocation(line: 41, column: 3, scope: !7)
!254 = !DILocation(line: 41, column: 11, scope: !7)
!255 = !DILocation(line: 44, column: 3, scope: !7)
!256 = !DILocation(line: 48, column: 21, scope: !7)
!257 = !DILocation(line: 48, column: 9, scope: !7)
!258 = !DILocation(line: 40, column: 7, scope: !7)
!259 = !DILocation(line: 49, column: 3, scope: !7)
!260 = !DILocation(line: 51, column: 1, scope: !7)
!261 = !DILocation(line: 50, column: 3, scope: !7)
!262 = distinct !DISubprogram(name: "_fscanf_r", scope: !1, file: !1, line: 63, type: !263, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!10, !42, !11, !234, null}
!265 = !{!266, !267, !268, !269, !270}
!266 = !DILocalVariable(name: "ptr", arg: 1, scope: !262, file: !1, line: 63, type: !42)
!267 = !DILocalVariable(name: "fp", arg: 2, scope: !262, file: !1, line: 63, type: !11)
!268 = !DILocalVariable(name: "fmt", arg: 3, scope: !262, file: !1, line: 63, type: !234)
!269 = !DILocalVariable(name: "ret", scope: !262, file: !1, line: 72, type: !10)
!270 = !DILocalVariable(name: "ap", scope: !262, file: !1, line: 73, type: !240)
!271 = !DILocation(line: 63, column: 26, scope: !262)
!272 = !DILocation(line: 63, column: 48, scope: !262)
!273 = !DILocation(line: 63, column: 76, scope: !262)
!274 = !DILocation(line: 73, column: 3, scope: !262)
!275 = !DILocation(line: 73, column: 11, scope: !262)
!276 = !DILocation(line: 76, column: 3, scope: !262)
!277 = !DILocation(line: 80, column: 9, scope: !262)
!278 = !DILocation(line: 72, column: 7, scope: !262)
!279 = !DILocation(line: 81, column: 3, scope: !262)
!280 = !DILocation(line: 83, column: 1, scope: !262)
!281 = !DILocation(line: 82, column: 3, scope: !262)
