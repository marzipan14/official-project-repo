; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsprintf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @vsprintf(i8* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca %struct.__sFILE, align 8
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !34
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !260
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !260, !noalias !261
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !265
  store i16 520, i16* %7, align 8, !dbg !266, !tbaa !267, !noalias !261
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !277
  store i8* %0, i8** %8, align 8, !dbg !278, !tbaa !279, !noalias !261
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !280
  store i8* %0, i8** %9, align 8, !dbg !281, !tbaa !282, !noalias !261
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2, !dbg !283
  store i32 2147483647, i32* %10, align 4, !dbg !284, !tbaa !285, !noalias !261
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !286
  store i32 2147483647, i32* %11, align 8, !dbg !287, !tbaa !288, !noalias !261
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !289
  store i16 -1, i16* %12, align 2, !dbg !290, !tbaa !291, !noalias !261
  %13 = call i32 @_svfprintf_r(%struct._reent* %5, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* %2) #4, !dbg !293
  %14 = load i8*, i8** %8, align 8, !dbg !295, !tbaa !279, !noalias !261
  store i8 0, i8* %14, align 1, !dbg !296, !tbaa !297
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !298, !noalias !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret i32 %13, !dbg !300
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vsprintf_r(%struct._reent*, i8* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !36 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast %struct.__sFILE* %5 to i8*, !dbg !302
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !302
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !303
  store i16 520, i16* %7, align 8, !dbg !304, !tbaa !267
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !305
  store i8* %1, i8** %8, align 8, !dbg !306, !tbaa !279
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !307
  store i8* %1, i8** %9, align 8, !dbg !308, !tbaa !282
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !309
  store i32 2147483647, i32* %10, align 4, !dbg !310, !tbaa !285
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !311
  store i32 2147483647, i32* %11, align 8, !dbg !312, !tbaa !288
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !313
  store i16 -1, i16* %12, align 2, !dbg !314, !tbaa !291
  %13 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #4, !dbg !316
  %14 = load i8*, i8** %8, align 8, !dbg !318, !tbaa !279
  store i8 0, i8* %14, align 1, !dbg !319, !tbaa !297
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  ret i32 %13, !dbg !321
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @_svfprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vsprintf", scope: !1, file: !1, line: 34, type: !11, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !17, !20}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !22)
!22 = !{!23, !25, !26, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !21, file: !1, baseType: !24, size: 32)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !21, file: !1, baseType: !24, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !21, file: !1, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !21, file: !1, baseType: !27, size: 64, offset: 128)
!29 = !{!30, !31, !32}
!30 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 34, type: !14)
!31 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 34, type: !17)
!32 = !DILocalVariable(name: "ap", arg: 3, scope: !10, file: !1, line: 34, type: !20)
!33 = !DILocation(line: 34, column: 1, scope: !10)
!34 = !DILocation(line: 39, column: 23, scope: !10)
!35 = !DILocalVariable(name: "ptr", arg: 1, scope: !36, file: !1, line: 51, type: !39)
!36 = distinct !DISubprogram(name: "_vsprintf_r", scope: !1, file: !1, line: 51, type: !37, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !250)
!37 = !DISubroutineType(types: !38)
!38 = !{!13, !39, !14, !17, !20}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !41, line: 569, size: 14912, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !44, !118, !119, !120, !121, !125, !126, !129, !130, !134, !146, !147, !148, !150, !151, !152, !214, !235, !236, !241, !248}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !40, file: !41, line: 571, baseType: !13, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !40, file: !41, line: 576, baseType: !45, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !41, line: 287, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !41, line: 181, size: 1408, elements: !48)
!48 = !{!49, !50, !51, !52, !54, !55, !60, !61, !62, !69, !73, !78, !82, !83, !84, !85, !89, !93, !94, !95, !97, !98, !102, !117}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !47, file: !41, line: 182, baseType: !4, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !47, file: !41, line: 183, baseType: !13, size: 32, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !47, file: !41, line: 184, baseType: !13, size: 32, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !41, line: 185, baseType: !53, size: 16, offset: 128)
!53 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !47, file: !41, line: 186, baseType: !53, size: 16, offset: 144)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !47, file: !41, line: 187, baseType: !56, size: 128, offset: 192)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !41, line: 117, size: 128, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !56, file: !41, line: 118, baseType: !4, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !56, file: !41, line: 119, baseType: !13, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !47, file: !41, line: 188, baseType: !13, size: 32, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !47, file: !41, line: 195, baseType: !27, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !47, file: !41, line: 197, baseType: !63, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !39, !27, !15, !13}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !67, line: 145, baseType: !68)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !47, file: !41, line: 199, baseType: !70, size: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!66, !39, !27, !18, !13}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !47, file: !41, line: 202, baseType: !74, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !39, !27, !77, !13}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !67, line: 114, baseType: !68)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !47, file: !41, line: 203, baseType: !79, size: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!13, !39, !27}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !47, file: !41, line: 206, baseType: !56, size: 128, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !47, file: !41, line: 207, baseType: !4, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !47, file: !41, line: 208, baseType: !13, size: 32, offset: 896)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !47, file: !41, line: 211, baseType: !86, size: 24, offset: 928)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 3)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !47, file: !41, line: 212, baseType: !90, size: 8, offset: 952)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !47, file: !41, line: 215, baseType: !56, size: 128, offset: 960)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !47, file: !41, line: 218, baseType: !13, size: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !41, line: 219, baseType: !96, size: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !67, line: 44, baseType: !68)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !47, file: !41, line: 222, baseType: !39, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !41, line: 226, baseType: !99, size: 32, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !67, line: 175, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !101, line: 12, baseType: !13)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !47, file: !41, line: 228, baseType: !103, size: 64, offset: 1312)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !67, line: 171, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !67, line: 163, size: 64, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !104, file: !67, line: 165, baseType: !13, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !104, file: !67, line: 170, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !67, line: 166, size: 32, elements: !109)
!109 = !{!110, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !108, file: !67, line: 168, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !112, line: 124, baseType: !24)
!112 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !108, file: !67, line: 169, baseType: !114, size: 32)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !41, line: 229, baseType: !13, size: 32, offset: 1376)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !40, file: !41, line: 576, baseType: !45, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !40, file: !41, line: 576, baseType: !45, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !40, file: !41, line: 578, baseType: !13, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !40, file: !41, line: 579, baseType: !122, size: 200, offset: 288)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 25)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !40, file: !41, line: 582, baseType: !13, size: 32, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !40, file: !41, line: 583, baseType: !127, size: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !41, line: 40, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !40, file: !41, line: 585, baseType: !13, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !40, file: !41, line: 587, baseType: !131, size: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !39}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !40, file: !41, line: 590, baseType: !135, size: 64, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !41, line: 47, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !136, file: !41, line: 49, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !136, file: !41, line: 50, baseType: !13, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !136, file: !41, line: 50, baseType: !13, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !136, file: !41, line: 50, baseType: !13, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !136, file: !41, line: 50, baseType: !13, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !136, file: !41, line: 51, baseType: !144, size: 32, offset: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32, elements: !91)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !41, line: 25, baseType: !24)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !40, file: !41, line: 591, baseType: !13, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !40, file: !41, line: 592, baseType: !135, size: 64, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !40, file: !41, line: 593, baseType: !149, size: 64, offset: 960)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !40, file: !41, line: 596, baseType: !13, size: 32, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !40, file: !41, line: 597, baseType: !15, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !40, file: !41, line: 632, baseType: !153, size: 2880, offset: 1152)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !40, file: !41, line: 599, size: 2880, elements: !154)
!154 = !{!155, !205}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !153, file: !41, line: 622, baseType: !156, size: 1728)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !41, line: 601, size: 1728, elements: !157)
!157 = !{!158, !159, !160, !164, !176, !177, !179, !187, !188, !189, !190, !194, !198, !199, !200, !201, !202, !203, !204}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !156, file: !41, line: 603, baseType: !24, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !156, file: !41, line: 604, baseType: !15, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !156, file: !41, line: 605, baseType: !161, size: 208, offset: 128)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 26)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !156, file: !41, line: 606, baseType: !165, size: 288, offset: 352)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !41, line: 55, size: 288, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !165, file: !41, line: 57, baseType: !13, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !165, file: !41, line: 58, baseType: !13, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !165, file: !41, line: 59, baseType: !13, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !165, file: !41, line: 60, baseType: !13, size: 32, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !165, file: !41, line: 61, baseType: !13, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !165, file: !41, line: 62, baseType: !13, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !165, file: !41, line: 63, baseType: !13, size: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !165, file: !41, line: 64, baseType: !13, size: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !165, file: !41, line: 65, baseType: !13, size: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !156, file: !41, line: 607, baseType: !13, size: 32, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !156, file: !41, line: 608, baseType: !178, size: 64, offset: 704)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !156, file: !41, line: 609, baseType: !180, size: 112, offset: 768)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !41, line: 319, size: 112, elements: !181)
!181 = !{!182, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !180, file: !41, line: 320, baseType: !183, size: 48)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !87)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !180, file: !41, line: 321, baseType: !183, size: 48, offset: 48)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !180, file: !41, line: 322, baseType: !184, size: 16, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !156, file: !41, line: 610, baseType: !103, size: 64, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !156, file: !41, line: 611, baseType: !103, size: 64, offset: 960)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !156, file: !41, line: 612, baseType: !103, size: 64, offset: 1024)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !156, file: !41, line: 613, baseType: !191, size: 64, offset: 1088)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !156, file: !41, line: 614, baseType: !195, size: 192, offset: 1152)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !156, file: !41, line: 615, baseType: !13, size: 32, offset: 1344)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !156, file: !41, line: 616, baseType: !103, size: 64, offset: 1376)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !156, file: !41, line: 617, baseType: !103, size: 64, offset: 1440)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !156, file: !41, line: 618, baseType: !103, size: 64, offset: 1504)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !156, file: !41, line: 619, baseType: !103, size: 64, offset: 1568)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !156, file: !41, line: 620, baseType: !103, size: 64, offset: 1632)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !156, file: !41, line: 621, baseType: !13, size: 32, offset: 1696)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !153, file: !41, line: 631, baseType: !206, size: 2880)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !41, line: 626, size: 2880, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !206, file: !41, line: 629, baseType: !209, size: 1920)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 30)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !206, file: !41, line: 630, baseType: !213, size: 960, offset: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 960, elements: !210)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !40, file: !41, line: 636, baseType: !215, size: 64, offset: 4032)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !41, line: 93, size: 6336, elements: !217)
!217 = !{!218, !219, !220, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !216, file: !41, line: 94, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !216, file: !41, line: 95, baseType: !13, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !216, file: !41, line: 97, baseType: !221, size: 2048, offset: 128)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !225)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !{!226}
!226 = !DISubrange(count: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !216, file: !41, line: 98, baseType: !228, size: 4160, offset: 2176)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !41, line: 74, size: 4160, elements: !229)
!229 = !{!230, !232, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !228, file: !41, line: 75, baseType: !231, size: 2048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !225)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !228, file: !41, line: 76, baseType: !231, size: 2048, offset: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !228, file: !41, line: 78, baseType: !145, size: 32, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !228, file: !41, line: 81, baseType: !145, size: 32, offset: 4128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !40, file: !41, line: 637, baseType: !216, size: 6336, offset: 4096)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !40, file: !41, line: 641, baseType: !237, size: 64, offset: 10432)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !13}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !40, file: !41, line: 646, baseType: !242, size: 192, offset: 10496)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !41, line: 291, size: 192, elements: !243)
!243 = !{!244, !246, !247}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !242, file: !41, line: 293, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !242, file: !41, line: 294, baseType: !13, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !242, file: !41, line: 295, baseType: !45, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !40, file: !41, line: 648, baseType: !249, size: 4224, offset: 10688)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 4224, elements: !87)
!250 = !{!35, !251, !252, !253, !254, !255}
!251 = !DILocalVariable(name: "str", arg: 2, scope: !36, file: !1, line: 51, type: !14)
!252 = !DILocalVariable(name: "fmt", arg: 3, scope: !36, file: !1, line: 51, type: !17)
!253 = !DILocalVariable(name: "ap", arg: 4, scope: !36, file: !1, line: 51, type: !20)
!254 = !DILocalVariable(name: "ret", scope: !36, file: !1, line: 57, type: !13)
!255 = !DILocalVariable(name: "f", scope: !36, file: !1, line: 58, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !257, line: 66, baseType: !46)
!257 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!258 = !DILocation(line: 51, column: 1, scope: !36, inlinedAt: !259)
!259 = distinct !DILocation(line: 39, column: 10, scope: !10)
!260 = !DILocation(line: 58, column: 3, scope: !36, inlinedAt: !259)
!261 = !{!262, !264}
!262 = distinct !{!262, !263, !"_vsprintf_r: argument 0"}
!263 = distinct !{!263, !"_vsprintf_r"}
!264 = distinct !{!264, !263, !"_vsprintf_r: argument 1"}
!265 = !DILocation(line: 60, column: 5, scope: !36, inlinedAt: !259)
!266 = !DILocation(line: 60, column: 12, scope: !36, inlinedAt: !259)
!267 = !{!268, !273, i64 16}
!268 = !{!"__sFILE", !269, i64 0, !272, i64 8, !272, i64 12, !273, i64 16, !273, i64 18, !274, i64 24, !272, i64 40, !269, i64 48, !269, i64 56, !269, i64 64, !269, i64 72, !269, i64 80, !274, i64 88, !269, i64 104, !272, i64 112, !270, i64 116, !270, i64 119, !274, i64 120, !272, i64 136, !275, i64 144, !269, i64 152, !272, i64 160, !276, i64 164, !272, i64 172}
!269 = !{!"any pointer", !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C/C++ TBAA"}
!272 = !{!"int", !270, i64 0}
!273 = !{!"short", !270, i64 0}
!274 = !{!"__sbuf", !269, i64 0, !272, i64 8}
!275 = !{!"long", !270, i64 0}
!276 = !{!"", !272, i64 0, !270, i64 4}
!277 = !DILocation(line: 61, column: 19, scope: !36, inlinedAt: !259)
!278 = !DILocation(line: 61, column: 22, scope: !36, inlinedAt: !259)
!279 = !{!268, !269, i64 0}
!280 = !DILocation(line: 61, column: 9, scope: !36, inlinedAt: !259)
!281 = !DILocation(line: 61, column: 15, scope: !36, inlinedAt: !259)
!282 = !{!268, !269, i64 24}
!283 = !DILocation(line: 62, column: 19, scope: !36, inlinedAt: !259)
!284 = !DILocation(line: 62, column: 22, scope: !36, inlinedAt: !259)
!285 = !{!268, !272, i64 12}
!286 = !DILocation(line: 62, column: 9, scope: !36, inlinedAt: !259)
!287 = !DILocation(line: 62, column: 15, scope: !36, inlinedAt: !259)
!288 = !{!268, !272, i64 32}
!289 = !DILocation(line: 63, column: 5, scope: !36, inlinedAt: !259)
!290 = !DILocation(line: 63, column: 11, scope: !36, inlinedAt: !259)
!291 = !{!268, !273, i64 18}
!292 = !DILocation(line: 58, column: 8, scope: !36, inlinedAt: !259)
!293 = !DILocation(line: 64, column: 9, scope: !36, inlinedAt: !259)
!294 = !DILocation(line: 57, column: 7, scope: !36, inlinedAt: !259)
!295 = !DILocation(line: 65, column: 6, scope: !36, inlinedAt: !259)
!296 = !DILocation(line: 65, column: 9, scope: !36, inlinedAt: !259)
!297 = !{!270, !270, i64 0}
!298 = !DILocation(line: 67, column: 1, scope: !36, inlinedAt: !259)
!299 = !DILocation(line: 66, column: 3, scope: !36, inlinedAt: !259)
!300 = !DILocation(line: 39, column: 3, scope: !10)
!301 = !DILocation(line: 51, column: 1, scope: !36)
!302 = !DILocation(line: 58, column: 3, scope: !36)
!303 = !DILocation(line: 60, column: 5, scope: !36)
!304 = !DILocation(line: 60, column: 12, scope: !36)
!305 = !DILocation(line: 61, column: 19, scope: !36)
!306 = !DILocation(line: 61, column: 22, scope: !36)
!307 = !DILocation(line: 61, column: 9, scope: !36)
!308 = !DILocation(line: 61, column: 15, scope: !36)
!309 = !DILocation(line: 62, column: 19, scope: !36)
!310 = !DILocation(line: 62, column: 22, scope: !36)
!311 = !DILocation(line: 62, column: 9, scope: !36)
!312 = !DILocation(line: 62, column: 15, scope: !36)
!313 = !DILocation(line: 63, column: 5, scope: !36)
!314 = !DILocation(line: 63, column: 11, scope: !36)
!315 = !DILocation(line: 58, column: 8, scope: !36)
!316 = !DILocation(line: 64, column: 9, scope: !36)
!317 = !DILocation(line: 57, column: 7, scope: !36)
!318 = !DILocation(line: 65, column: 6, scope: !36)
!319 = !DILocation(line: 65, column: 9, scope: !36)
!320 = !DILocation(line: 67, column: 1, scope: !36)
!321 = !DILocation(line: 66, column: 3, scope: !36)
