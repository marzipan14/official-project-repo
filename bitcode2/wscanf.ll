; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wscanf.c"
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
define dso_local i32 @wscanf(i32* noalias, ...) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !252
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !252
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !254
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !256
  call void @llvm.va_start(i8* nonnull %3), !dbg !256
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 1, !dbg !257
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !257, !tbaa !258
  %8 = call i32 @_vfwscanf_r(%struct._reent* %4, %struct.__sFILE* %7, i32* %0, %struct.__va_list_tag* nonnull %5) #5, !dbg !267
  call void @llvm.va_end(i8* nonnull %3), !dbg !269
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  ret i32 %8, !dbg !271
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @_vfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_wscanf_r(%struct._reent*, i32*, ...) local_unnamed_addr #0 !dbg !272 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !282
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !282
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !284
  call void @llvm.va_start(i8* nonnull %4), !dbg !284
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 1, !dbg !285
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !285, !tbaa !258
  %8 = call i32 @_vfwscanf_r(%struct._reent* %0, %struct.__sFILE* %7, i32* %1, %struct.__va_list_tag* nonnull %5) #5, !dbg !286
  call void @llvm.va_end(i8* nonnull %4), !dbg !288
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  ret i32 %8, !dbg !290
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wscanf", scope: !1, file: !1, line: 29, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, null}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !15, line: 83, baseType: !10)
!15 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !18, !19, !36}
!17 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !1, line: 29, type: !11)
!18 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 31, type: !10)
!19 = !DILocalVariable(name: "ap", scope: !7, file: !1, line: 32, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !23, line: 51, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 32, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !34)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 32, size: 192, elements: !27)
!27 = !{!28, !30, !31, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !26, file: !1, line: 32, baseType: !29, size: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !26, file: !1, line: 32, baseType: !29, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !26, file: !1, line: 32, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !26, file: !1, line: 32, baseType: !32, size: 64, offset: 128)
!34 = !{!35}
!35 = !DISubrange(count: 1)
!36 = !DILocalVariable(name: "reent", scope: !7, file: !1, line: 33, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !39, line: 569, size: 14912, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !119, !120, !121, !122, !126, !127, !130, !131, !135, !147, !148, !149, !151, !152, !153, !215, !236, !237, !242, !249}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !38, file: !39, line: 571, baseType: !10, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !39, line: 287, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 181, size: 1408, elements: !46)
!46 = !{!47, !50, !51, !52, !54, !55, !60, !61, !62, !71, !77, !82, !86, !87, !88, !89, !93, !95, !96, !97, !99, !100, !104, !118}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !39, line: 182, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !39, line: 183, baseType: !10, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !39, line: 184, baseType: !10, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !39, line: 185, baseType: !53, size: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !39, line: 186, baseType: !53, size: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !39, line: 187, baseType: !56, size: 128, offset: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 117, size: 128, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !39, line: 118, baseType: !48, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !39, line: 119, baseType: !10, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !39, line: 188, baseType: !10, size: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !39, line: 195, baseType: !32, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !39, line: 197, baseType: !63, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !37, !32, !69, !10}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !67, line: 145, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !39, line: 199, baseType: !72, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!66, !37, !32, !75, !10}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !39, line: 202, baseType: !78, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !37, !32, !81, !10}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !67, line: 114, baseType: !68)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !39, line: 203, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!10, !37, !32}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !39, line: 206, baseType: !56, size: 128, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !45, file: !39, line: 207, baseType: !48, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !39, line: 208, baseType: !10, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !39, line: 211, baseType: !90, size: 24, offset: 928)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 24, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !39, line: 212, baseType: !94, size: 8, offset: 952)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8, elements: !34)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !39, line: 215, baseType: !56, size: 128, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !39, line: 218, baseType: !10, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !39, line: 219, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !67, line: 44, baseType: !68)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !45, file: !39, line: 222, baseType: !37, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !39, line: 226, baseType: !101, size: 32, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !67, line: 175, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !103, line: 12, baseType: !10)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !45, file: !39, line: 228, baseType: !105, size: 64, offset: 1312)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !67, line: 171, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 163, size: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !67, line: 165, baseType: !10, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !106, file: !67, line: 170, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !67, line: 166, size: 32, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !110, file: !67, line: 168, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !15, line: 124, baseType: !29)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !110, file: !67, line: 169, baseType: !115, size: 32)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !39, line: 229, baseType: !10, size: 32, offset: 1376)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !38, file: !39, line: 578, baseType: !10, size: 32, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !38, file: !39, line: 579, baseType: !123, size: 200, offset: 288)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 200, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 25)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !38, file: !39, line: 582, baseType: !10, size: 32, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !38, file: !39, line: 583, baseType: !128, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !39, line: 40, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !38, file: !39, line: 585, baseType: !10, size: 32, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !38, file: !39, line: 587, baseType: !132, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !37}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !38, file: !39, line: 590, baseType: !136, size: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !39, line: 47, size: 256, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !137, file: !39, line: 49, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !137, file: !39, line: 50, baseType: !10, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !137, file: !39, line: 50, baseType: !10, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !137, file: !39, line: 50, baseType: !10, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !137, file: !39, line: 50, baseType: !10, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !137, file: !39, line: 51, baseType: !145, size: 32, offset: 192)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !34)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !39, line: 25, baseType: !29)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !38, file: !39, line: 591, baseType: !10, size: 32, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !38, file: !39, line: 592, baseType: !136, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !38, file: !39, line: 593, baseType: !150, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !38, file: !39, line: 596, baseType: !10, size: 32, offset: 1024)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !38, file: !39, line: 597, baseType: !69, size: 64, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !38, file: !39, line: 632, baseType: !154, size: 2880, offset: 1152)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 599, size: 2880, elements: !155)
!155 = !{!156, !206}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !154, file: !39, line: 622, baseType: !157, size: 1728)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !39, line: 601, size: 1728, elements: !158)
!158 = !{!159, !160, !161, !165, !177, !178, !180, !188, !189, !190, !191, !195, !199, !200, !201, !202, !203, !204, !205}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !157, file: !39, line: 603, baseType: !29, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !157, file: !39, line: 604, baseType: !69, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !157, file: !39, line: 605, baseType: !162, size: 208, offset: 128)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 208, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 26)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !157, file: !39, line: 606, baseType: !166, size: 288, offset: 352)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !39, line: 55, size: 288, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !166, file: !39, line: 57, baseType: !10, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !166, file: !39, line: 58, baseType: !10, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !166, file: !39, line: 59, baseType: !10, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !166, file: !39, line: 60, baseType: !10, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !166, file: !39, line: 61, baseType: !10, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !166, file: !39, line: 62, baseType: !10, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !166, file: !39, line: 63, baseType: !10, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !166, file: !39, line: 64, baseType: !10, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !166, file: !39, line: 65, baseType: !10, size: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !157, file: !39, line: 607, baseType: !10, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !157, file: !39, line: 608, baseType: !179, size: 64, offset: 704)
!179 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !157, file: !39, line: 609, baseType: !181, size: 112, offset: 768)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !39, line: 319, size: 112, elements: !182)
!182 = !{!183, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !181, file: !39, line: 320, baseType: !184, size: 48)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !91)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !181, file: !39, line: 321, baseType: !184, size: 48, offset: 48)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !181, file: !39, line: 322, baseType: !185, size: 16, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !157, file: !39, line: 610, baseType: !105, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !157, file: !39, line: 611, baseType: !105, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !157, file: !39, line: 612, baseType: !105, size: 64, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !157, file: !39, line: 613, baseType: !192, size: 64, offset: 1088)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !157, file: !39, line: 614, baseType: !196, size: 192, offset: 1152)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 24)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !157, file: !39, line: 615, baseType: !10, size: 32, offset: 1344)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !157, file: !39, line: 616, baseType: !105, size: 64, offset: 1376)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !157, file: !39, line: 617, baseType: !105, size: 64, offset: 1440)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !157, file: !39, line: 618, baseType: !105, size: 64, offset: 1504)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !157, file: !39, line: 619, baseType: !105, size: 64, offset: 1568)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !157, file: !39, line: 620, baseType: !105, size: 64, offset: 1632)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !157, file: !39, line: 621, baseType: !10, size: 32, offset: 1696)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !154, file: !39, line: 631, baseType: !207, size: 2880)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !39, line: 626, size: 2880, elements: !208)
!208 = !{!209, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !207, file: !39, line: 629, baseType: !210, size: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1920, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 30)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !207, file: !39, line: 630, baseType: !214, size: 960, offset: 1920)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 960, elements: !211)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !38, file: !39, line: 636, baseType: !216, size: 64, offset: 4032)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !39, line: 93, size: 6336, elements: !218)
!218 = !{!219, !220, !221, !228}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !217, file: !39, line: 94, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !217, file: !39, line: 95, baseType: !10, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !217, file: !39, line: 97, baseType: !222, size: 2048, offset: 128)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !226)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !{!227}
!227 = !DISubrange(count: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !217, file: !39, line: 98, baseType: !229, size: 4160, offset: 2176)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !39, line: 74, size: 4160, elements: !230)
!230 = !{!231, !233, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !229, file: !39, line: 75, baseType: !232, size: 2048)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !226)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !229, file: !39, line: 76, baseType: !232, size: 2048, offset: 2048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !229, file: !39, line: 78, baseType: !146, size: 32, offset: 4096)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !229, file: !39, line: 81, baseType: !146, size: 32, offset: 4128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !38, file: !39, line: 637, baseType: !217, size: 6336, offset: 4096)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !38, file: !39, line: 641, baseType: !238, size: 64, offset: 10432)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !10}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !38, file: !39, line: 646, baseType: !243, size: 192, offset: 10496)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !39, line: 291, size: 192, elements: !244)
!244 = !{!245, !247, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !243, file: !39, line: 293, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !243, file: !39, line: 294, baseType: !10, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !243, file: !39, line: 295, baseType: !43, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !38, file: !39, line: 648, baseType: !250, size: 4224, offset: 10688)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 4224, elements: !91)
!251 = !DILocation(line: 29, column: 35, scope: !7)
!252 = !DILocation(line: 32, column: 3, scope: !7)
!253 = !DILocation(line: 32, column: 11, scope: !7)
!254 = !DILocation(line: 33, column: 26, scope: !7)
!255 = !DILocation(line: 33, column: 18, scope: !7)
!256 = !DILocation(line: 36, column: 3, scope: !7)
!257 = !DILocation(line: 37, column: 29, scope: !7)
!258 = !{!259, !263, i64 8}
!259 = !{!"_reent", !260, i64 0, !263, i64 8, !263, i64 16, !263, i64 24, !260, i64 32, !261, i64 36, !260, i64 64, !263, i64 72, !260, i64 80, !263, i64 88, !263, i64 96, !260, i64 104, !263, i64 112, !263, i64 120, !260, i64 128, !263, i64 136, !261, i64 144, !263, i64 504, !264, i64 512, !263, i64 1304, !266, i64 1312, !261, i64 1336}
!260 = !{!"int", !261, i64 0}
!261 = !{!"omnipotent char", !262, i64 0}
!262 = !{!"Simple C/C++ TBAA"}
!263 = !{!"any pointer", !261, i64 0}
!264 = !{!"_atexit", !263, i64 0, !260, i64 8, !261, i64 16, !265, i64 272}
!265 = !{!"_on_exit_args", !261, i64 0, !261, i64 256, !260, i64 512, !260, i64 516}
!266 = !{!"_glue", !263, i64 0, !260, i64 8, !263, i64 16}
!267 = !DILocation(line: 37, column: 9, scope: !7)
!268 = !DILocation(line: 31, column: 7, scope: !7)
!269 = !DILocation(line: 38, column: 3, scope: !7)
!270 = !DILocation(line: 40, column: 1, scope: !7)
!271 = !DILocation(line: 39, column: 3, scope: !7)
!272 = distinct !DISubprogram(name: "_wscanf_r", scope: !1, file: !1, line: 45, type: !273, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{!10, !37, !12, null}
!275 = !{!276, !277, !278, !279}
!276 = !DILocalVariable(name: "ptr", arg: 1, scope: !272, file: !1, line: 45, type: !37)
!277 = !DILocalVariable(name: "fmt", arg: 2, scope: !272, file: !1, line: 45, type: !12)
!278 = !DILocalVariable(name: "ret", scope: !272, file: !1, line: 47, type: !10)
!279 = !DILocalVariable(name: "ap", scope: !272, file: !1, line: 48, type: !20)
!280 = !DILocation(line: 45, column: 26, scope: !272)
!281 = !DILocation(line: 45, column: 47, scope: !272)
!282 = !DILocation(line: 48, column: 3, scope: !272)
!283 = !DILocation(line: 48, column: 11, scope: !272)
!284 = !DILocation(line: 51, column: 3, scope: !272)
!285 = !DILocation(line: 52, column: 27, scope: !272)
!286 = !DILocation(line: 52, column: 9, scope: !272)
!287 = !DILocation(line: 47, column: 7, scope: !272)
!288 = !DILocation(line: 53, column: 3, scope: !272)
!289 = !DILocation(line: 55, column: 1, scope: !272)
!290 = !DILocation(line: 54, column: 3, scope: !272)
