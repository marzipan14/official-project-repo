; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/scanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/scanf.c"
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
define dso_local i32 @scanf(i8* noalias, ...) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !249
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !249
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !251
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !253
  call void @llvm.va_start(i8* nonnull %3), !dbg !253
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 1, !dbg !254
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !254, !tbaa !255
  %8 = call i32 @_vfscanf_r(%struct._reent* %4, %struct.__sFILE* %7, i8* %0, %struct.__va_list_tag* nonnull %5) #5, !dbg !264
  call void @llvm.va_end(i8* nonnull %3), !dbg !266
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  ret i32 %8, !dbg !268
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @_vfscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_scanf_r(%struct._reent*, i8* noalias, ...) local_unnamed_addr #0 !dbg !269 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !279
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !279
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !281
  call void @llvm.va_start(i8* nonnull %4), !dbg !281
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 1, !dbg !282
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !282, !tbaa !255
  %8 = call i32 @_vfscanf_r(%struct._reent* %0, %struct.__sFILE* %7, i8* %1, %struct.__va_list_tag* nonnull %5) #5, !dbg !283
  call void @llvm.va_end(i8* nonnull %4), !dbg !285
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  ret i32 %8, !dbg !287
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/scanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "scanf", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, null}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !17, !18, !35}
!16 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !1, line: 32, type: !11)
!17 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 39, type: !10)
!18 = !DILocalVariable(name: "ap", scope: !7, file: !1, line: 40, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !22, line: 51, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 40, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 192, elements: !33)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 40, size: 192, elements: !26)
!26 = !{!27, !29, !30, !32}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !25, file: !1, line: 40, baseType: !28, size: 32)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !25, file: !1, line: 40, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !25, file: !1, line: 40, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !25, file: !1, line: 40, baseType: !31, size: 64, offset: 128)
!33 = !{!34}
!34 = !DISubrange(count: 1)
!35 = !DILocalVariable(name: "reent", scope: !7, file: !1, line: 41, type: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !38, line: 569, size: 14912, elements: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !37, file: !38, line: 571, baseType: !10, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !38, line: 287, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 181, size: 1408, elements: !45)
!45 = !{!46, !49, !50, !51, !53, !54, !59, !60, !61, !69, !73, !78, !82, !83, !84, !85, !89, !91, !92, !93, !95, !96, !100, !115}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !38, line: 182, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !38, line: 183, baseType: !10, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !38, line: 184, baseType: !10, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !38, line: 185, baseType: !52, size: 16, offset: 128)
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !38, line: 186, baseType: !52, size: 16, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !38, line: 187, baseType: !55, size: 128, offset: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 117, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !55, file: !38, line: 118, baseType: !47, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !55, file: !38, line: 119, baseType: !10, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !38, line: 188, baseType: !10, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !38, line: 195, baseType: !31, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !38, line: 197, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !36, !31, !68, !10}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !66, line: 145, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !38, line: 199, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!65, !36, !31, !12, !10}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !38, line: 202, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !36, !31, !77, !10}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !66, line: 114, baseType: !67)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !38, line: 203, baseType: !79, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!10, !36, !31}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !38, line: 206, baseType: !55, size: 128, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !38, line: 207, baseType: !47, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !38, line: 208, baseType: !10, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !38, line: 211, baseType: !86, size: 24, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 24, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !38, line: 212, baseType: !90, size: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !33)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !38, line: 215, baseType: !55, size: 128, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !38, line: 218, baseType: !10, size: 32, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !38, line: 219, baseType: !94, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !66, line: 44, baseType: !67)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !38, line: 222, baseType: !36, size: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !38, line: 226, baseType: !97, size: 32, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !66, line: 175, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !99, line: 12, baseType: !10)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !38, line: 228, baseType: !101, size: 64, offset: 1312)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !66, line: 171, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 163, size: 64, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !102, file: !66, line: 165, baseType: !10, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !102, file: !66, line: 170, baseType: !106, size: 32, offset: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !66, line: 166, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !106, file: !66, line: 168, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !110, line: 124, baseType: !28)
!110 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !106, file: !66, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !38, line: 229, baseType: !10, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !37, file: !38, line: 578, baseType: !10, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !37, file: !38, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !37, file: !38, line: 582, baseType: !10, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !37, file: !38, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !38, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !37, file: !38, line: 585, baseType: !10, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !37, file: !38, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !36}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !37, file: !38, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !38, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !38, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !38, line: 50, baseType: !10, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !38, line: 50, baseType: !10, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !38, line: 50, baseType: !10, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !38, line: 50, baseType: !10, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !38, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !33)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !38, line: 25, baseType: !28)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !37, file: !38, line: 591, baseType: !10, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !37, file: !38, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !37, file: !38, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !37, file: !38, line: 596, baseType: !10, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !37, file: !38, line: 597, baseType: !68, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !37, file: !38, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !38, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !38, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !38, line: 603, baseType: !28, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !38, line: 604, baseType: !68, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !38, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !38, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !38, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !38, line: 57, baseType: !10, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !38, line: 58, baseType: !10, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !38, line: 59, baseType: !10, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !38, line: 60, baseType: !10, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !38, line: 61, baseType: !10, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !38, line: 62, baseType: !10, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !38, line: 63, baseType: !10, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !38, line: 64, baseType: !10, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !38, line: 65, baseType: !10, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !38, line: 607, baseType: !10, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !38, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !38, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !38, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !38, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !87)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !38, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !38, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !38, line: 610, baseType: !101, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !38, line: 611, baseType: !101, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !38, line: 612, baseType: !101, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !38, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !38, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !38, line: 615, baseType: !10, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !38, line: 616, baseType: !101, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !38, line: 617, baseType: !101, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !38, line: 618, baseType: !101, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !38, line: 619, baseType: !101, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !38, line: 620, baseType: !101, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !38, line: 621, baseType: !10, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !38, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !38, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !38, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !38, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !37, file: !38, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !38, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !38, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !38, line: 95, baseType: !10, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !38, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !38, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !38, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !38, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !38, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !38, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !38, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !37, file: !38, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !37, file: !38, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !10}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !37, file: !38, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !38, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !38, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !38, line: 294, baseType: !10, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !38, line: 295, baseType: !42, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !37, file: !38, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 4224, elements: !87)
!248 = !DILocation(line: 32, column: 31, scope: !7)
!249 = !DILocation(line: 40, column: 3, scope: !7)
!250 = !DILocation(line: 40, column: 11, scope: !7)
!251 = !DILocation(line: 41, column: 26, scope: !7)
!252 = !DILocation(line: 41, column: 18, scope: !7)
!253 = !DILocation(line: 45, column: 3, scope: !7)
!254 = !DILocation(line: 49, column: 28, scope: !7)
!255 = !{!256, !260, i64 8}
!256 = !{!"_reent", !257, i64 0, !260, i64 8, !260, i64 16, !260, i64 24, !257, i64 32, !258, i64 36, !257, i64 64, !260, i64 72, !257, i64 80, !260, i64 88, !260, i64 96, !257, i64 104, !260, i64 112, !260, i64 120, !257, i64 128, !260, i64 136, !258, i64 144, !260, i64 504, !261, i64 512, !260, i64 1304, !263, i64 1312, !258, i64 1336}
!257 = !{!"int", !258, i64 0}
!258 = !{!"omnipotent char", !259, i64 0}
!259 = !{!"Simple C/C++ TBAA"}
!260 = !{!"any pointer", !258, i64 0}
!261 = !{!"_atexit", !260, i64 0, !257, i64 8, !258, i64 16, !262, i64 272}
!262 = !{!"_on_exit_args", !258, i64 0, !258, i64 256, !257, i64 512, !257, i64 516}
!263 = !{!"_glue", !260, i64 0, !257, i64 8, !260, i64 16}
!264 = !DILocation(line: 49, column: 9, scope: !7)
!265 = !DILocation(line: 39, column: 7, scope: !7)
!266 = !DILocation(line: 50, column: 3, scope: !7)
!267 = !DILocation(line: 52, column: 1, scope: !7)
!268 = !DILocation(line: 51, column: 3, scope: !7)
!269 = distinct !DISubprogram(name: "_scanf_r", scope: !1, file: !1, line: 64, type: !270, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!10, !36, !11, null}
!272 = !{!273, !274, !275, !276}
!273 = !DILocalVariable(name: "ptr", arg: 1, scope: !269, file: !1, line: 64, type: !36)
!274 = !DILocalVariable(name: "fmt", arg: 2, scope: !269, file: !1, line: 64, type: !11)
!275 = !DILocalVariable(name: "ret", scope: !269, file: !1, line: 72, type: !10)
!276 = !DILocalVariable(name: "ap", scope: !269, file: !1, line: 73, type: !19)
!277 = !DILocation(line: 64, column: 25, scope: !269)
!278 = !DILocation(line: 64, column: 54, scope: !269)
!279 = !DILocation(line: 73, column: 3, scope: !269)
!280 = !DILocation(line: 73, column: 11, scope: !269)
!281 = !DILocation(line: 77, column: 3, scope: !269)
!282 = !DILocation(line: 81, column: 26, scope: !269)
!283 = !DILocation(line: 81, column: 9, scope: !269)
!284 = !DILocation(line: 72, column: 7, scope: !269)
!285 = !DILocation(line: 82, column: 3, scope: !269)
!286 = !DILocation(line: 84, column: 1, scope: !269)
!287 = !DILocation(line: 83, column: 3, scope: !269)
