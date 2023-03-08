; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iscanf.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @iscanf(i8*, ...) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #3, !dbg !35
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !37
  call void @llvm.va_start(i8* nonnull %3), !dbg !37
  %5 = call %struct._reent* @__getreent() #5, !dbg !38
  %6 = call %struct._reent* @__getreent() #5, !dbg !39
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 1, !dbg !39
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !39, !tbaa !40
  %9 = call i32 @__svfiscanf_r(%struct._reent* %5, %struct.__sFILE* %8, i8* %0, %struct.__va_list_tag* nonnull %4) #5, !dbg !49
  call void @llvm.va_end(i8* nonnull %3), !dbg !51
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #3, !dbg !52
  ret i32 %9, !dbg !53
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @__svfiscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_iscanf_r(%struct._reent*, i8*, ...) local_unnamed_addr #0 !dbg !54 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !276
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #3, !dbg !276
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !278
  call void @llvm.va_start(i8* nonnull %4), !dbg !278
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 1, !dbg !279
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !279, !tbaa !40
  %8 = call i32 @__svfiscanf_r(%struct._reent* %0, %struct.__sFILE* %7, i8* %1, %struct.__va_list_tag* nonnull %5) #5, !dbg !280
  call void @llvm.va_end(i8* nonnull %4), !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #3, !dbg !283
  ret i32 %8, !dbg !284
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "iscanf", scope: !1, file: !1, line: 32, type: !8, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, null}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !1, line: 32, type: !11)
!16 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 39, type: !10)
!17 = !DILocalVariable(name: "ap", scope: !7, file: !1, line: 40, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !21, line: 51, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 40, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !32)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 40, size: 192, elements: !25)
!25 = !{!26, !28, !29, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, line: 40, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, line: 40, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, line: 40, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, line: 40, baseType: !30, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocation(line: 32, column: 21, scope: !7)
!35 = !DILocation(line: 40, column: 3, scope: !7)
!36 = !DILocation(line: 40, column: 11, scope: !7)
!37 = !DILocation(line: 44, column: 3, scope: !7)
!38 = !DILocation(line: 48, column: 24, scope: !7)
!39 = !DILocation(line: 48, column: 32, scope: !7)
!40 = !{!41, !45, i64 8}
!41 = !{!"_reent", !42, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !42, i64 32, !43, i64 36, !42, i64 64, !45, i64 72, !42, i64 80, !45, i64 88, !45, i64 96, !42, i64 104, !45, i64 112, !45, i64 120, !42, i64 128, !45, i64 136, !43, i64 144, !45, i64 504, !46, i64 512, !45, i64 1304, !48, i64 1312, !43, i64 1336}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!"any pointer", !43, i64 0}
!46 = !{!"_atexit", !45, i64 0, !42, i64 8, !43, i64 16, !47, i64 272}
!47 = !{!"_on_exit_args", !43, i64 0, !43, i64 256, !42, i64 512, !42, i64 516}
!48 = !{!"_glue", !45, i64 0, !42, i64 8, !45, i64 16}
!49 = !DILocation(line: 48, column: 9, scope: !7)
!50 = !DILocation(line: 39, column: 7, scope: !7)
!51 = !DILocation(line: 49, column: 3, scope: !7)
!52 = !DILocation(line: 51, column: 1, scope: !7)
!53 = !DILocation(line: 50, column: 3, scope: !7)
!54 = distinct !DISubprogram(name: "_iscanf_r", scope: !1, file: !1, line: 57, type: !55, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !269)
!55 = !DISubroutineType(types: !56)
!56 = !{!10, !57, !11, null}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !59, line: 569, size: 14912, elements: !60)
!59 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!60 = !{!61, !62, !137, !138, !139, !140, !144, !145, !148, !149, !153, !165, !166, !167, !169, !170, !171, !233, !254, !255, !260, !267}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !58, file: !59, line: 571, baseType: !10, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !58, file: !59, line: 576, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !59, line: 287, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !59, line: 181, size: 1408, elements: !66)
!66 = !{!67, !70, !71, !72, !74, !75, !80, !81, !82, !90, !94, !99, !103, !104, !105, !106, !110, !112, !113, !114, !116, !117, !121, !136}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !65, file: !59, line: 182, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !65, file: !59, line: 183, baseType: !10, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !65, file: !59, line: 184, baseType: !10, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !59, line: 185, baseType: !73, size: 16, offset: 128)
!73 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !65, file: !59, line: 186, baseType: !73, size: 16, offset: 144)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !65, file: !59, line: 187, baseType: !76, size: 128, offset: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !59, line: 117, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !76, file: !59, line: 118, baseType: !68, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !76, file: !59, line: 119, baseType: !10, size: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !65, file: !59, line: 188, baseType: !10, size: 32, offset: 320)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !65, file: !59, line: 195, baseType: !30, size: 64, offset: 384)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !65, file: !59, line: 197, baseType: !83, size: 64, offset: 448)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!86, !57, !30, !89, !10}
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !87, line: 145, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !65, file: !59, line: 199, baseType: !91, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!86, !57, !30, !11, !10}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !65, file: !59, line: 202, baseType: !95, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !57, !30, !98, !10}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !87, line: 114, baseType: !88)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !65, file: !59, line: 203, baseType: !100, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!10, !57, !30}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !65, file: !59, line: 206, baseType: !76, size: 128, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !65, file: !59, line: 207, baseType: !68, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !65, file: !59, line: 208, baseType: !10, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !65, file: !59, line: 211, baseType: !107, size: 24, offset: 928)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 24, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 3)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !65, file: !59, line: 212, baseType: !111, size: 8, offset: 952)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8, elements: !32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !65, file: !59, line: 215, baseType: !76, size: 128, offset: 960)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !65, file: !59, line: 218, baseType: !10, size: 32, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !59, line: 219, baseType: !115, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !87, line: 44, baseType: !88)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !65, file: !59, line: 222, baseType: !57, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !59, line: 226, baseType: !118, size: 32, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !87, line: 175, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !120, line: 12, baseType: !10)
!120 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !65, file: !59, line: 228, baseType: !122, size: 64, offset: 1312)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !87, line: 171, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 163, size: 64, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !123, file: !87, line: 165, baseType: !10, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !123, file: !87, line: 170, baseType: !127, size: 32, offset: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !87, line: 166, size: 32, elements: !128)
!128 = !{!129, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !127, file: !87, line: 168, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !131, line: 124, baseType: !27)
!131 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !127, file: !87, line: 169, baseType: !133, size: 32)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !59, line: 229, baseType: !10, size: 32, offset: 1376)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !58, file: !59, line: 576, baseType: !63, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !58, file: !59, line: 576, baseType: !63, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !58, file: !59, line: 578, baseType: !10, size: 32, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !58, file: !59, line: 579, baseType: !141, size: 200, offset: 288)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 200, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 25)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !58, file: !59, line: 582, baseType: !10, size: 32, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !58, file: !59, line: 583, baseType: !146, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !59, line: 40, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !58, file: !59, line: 585, baseType: !10, size: 32, offset: 640)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !58, file: !59, line: 587, baseType: !150, size: 64, offset: 704)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !57}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !58, file: !59, line: 590, baseType: !154, size: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !59, line: 47, size: 256, elements: !156)
!156 = !{!157, !158, !159, !160, !161, !162}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !155, file: !59, line: 49, baseType: !154, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !155, file: !59, line: 50, baseType: !10, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !155, file: !59, line: 50, baseType: !10, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !155, file: !59, line: 50, baseType: !10, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !155, file: !59, line: 50, baseType: !10, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !155, file: !59, line: 51, baseType: !163, size: 32, offset: 192)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 32, elements: !32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !59, line: 25, baseType: !27)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !58, file: !59, line: 591, baseType: !10, size: 32, offset: 832)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !58, file: !59, line: 592, baseType: !154, size: 64, offset: 896)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !58, file: !59, line: 593, baseType: !168, size: 64, offset: 960)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !58, file: !59, line: 596, baseType: !10, size: 32, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !58, file: !59, line: 597, baseType: !89, size: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !58, file: !59, line: 632, baseType: !172, size: 2880, offset: 1152)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !58, file: !59, line: 599, size: 2880, elements: !173)
!173 = !{!174, !224}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !172, file: !59, line: 622, baseType: !175, size: 1728)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !59, line: 601, size: 1728, elements: !176)
!176 = !{!177, !178, !179, !183, !195, !196, !198, !206, !207, !208, !209, !213, !217, !218, !219, !220, !221, !222, !223}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !175, file: !59, line: 603, baseType: !27, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !175, file: !59, line: 604, baseType: !89, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !175, file: !59, line: 605, baseType: !180, size: 208, offset: 128)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 208, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 26)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !175, file: !59, line: 606, baseType: !184, size: 288, offset: 352)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !59, line: 55, size: 288, elements: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !184, file: !59, line: 57, baseType: !10, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !184, file: !59, line: 58, baseType: !10, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !184, file: !59, line: 59, baseType: !10, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !184, file: !59, line: 60, baseType: !10, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !184, file: !59, line: 61, baseType: !10, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !184, file: !59, line: 62, baseType: !10, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !184, file: !59, line: 63, baseType: !10, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !184, file: !59, line: 64, baseType: !10, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !184, file: !59, line: 65, baseType: !10, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !175, file: !59, line: 607, baseType: !10, size: 32, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !175, file: !59, line: 608, baseType: !197, size: 64, offset: 704)
!197 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !175, file: !59, line: 609, baseType: !199, size: 112, offset: 768)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !59, line: 319, size: 112, elements: !200)
!200 = !{!201, !204, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !199, file: !59, line: 320, baseType: !202, size: 48)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 48, elements: !108)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !199, file: !59, line: 321, baseType: !202, size: 48, offset: 48)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !199, file: !59, line: 322, baseType: !203, size: 16, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !175, file: !59, line: 610, baseType: !122, size: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !175, file: !59, line: 611, baseType: !122, size: 64, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !175, file: !59, line: 612, baseType: !122, size: 64, offset: 1024)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !175, file: !59, line: 613, baseType: !210, size: 64, offset: 1088)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 8)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !175, file: !59, line: 614, baseType: !214, size: 192, offset: 1152)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 24)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !175, file: !59, line: 615, baseType: !10, size: 32, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !175, file: !59, line: 616, baseType: !122, size: 64, offset: 1376)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !175, file: !59, line: 617, baseType: !122, size: 64, offset: 1440)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !175, file: !59, line: 618, baseType: !122, size: 64, offset: 1504)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !175, file: !59, line: 619, baseType: !122, size: 64, offset: 1568)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !175, file: !59, line: 620, baseType: !122, size: 64, offset: 1632)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !175, file: !59, line: 621, baseType: !10, size: 32, offset: 1696)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !172, file: !59, line: 631, baseType: !225, size: 2880)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !172, file: !59, line: 626, size: 2880, elements: !226)
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !225, file: !59, line: 629, baseType: !228, size: 1920)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1920, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 30)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !225, file: !59, line: 630, baseType: !232, size: 960, offset: 1920)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 960, elements: !229)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !58, file: !59, line: 636, baseType: !234, size: 64, offset: 4032)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !59, line: 93, size: 6336, elements: !236)
!236 = !{!237, !238, !239, !246}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !235, file: !59, line: 94, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !235, file: !59, line: 95, baseType: !10, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !235, file: !59, line: 97, baseType: !240, size: 2048, offset: 128)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 2048, elements: !244)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null}
!244 = !{!245}
!245 = !DISubrange(count: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !235, file: !59, line: 98, baseType: !247, size: 4160, offset: 2176)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !59, line: 74, size: 4160, elements: !248)
!248 = !{!249, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !247, file: !59, line: 75, baseType: !250, size: 2048)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !244)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !247, file: !59, line: 76, baseType: !250, size: 2048, offset: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !247, file: !59, line: 78, baseType: !164, size: 32, offset: 4096)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !247, file: !59, line: 81, baseType: !164, size: 32, offset: 4128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !58, file: !59, line: 637, baseType: !235, size: 6336, offset: 4096)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !58, file: !59, line: 641, baseType: !256, size: 64, offset: 10432)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !10}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !58, file: !59, line: 646, baseType: !261, size: 192, offset: 10496)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !59, line: 291, size: 192, elements: !262)
!262 = !{!263, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !261, file: !59, line: 293, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !261, file: !59, line: 294, baseType: !10, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !261, file: !59, line: 295, baseType: !63, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !58, file: !59, line: 648, baseType: !268, size: 4224, offset: 10688)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 4224, elements: !108)
!269 = !{!270, !271, !272, !273}
!270 = !DILocalVariable(name: "ptr", arg: 1, scope: !54, file: !1, line: 57, type: !57)
!271 = !DILocalVariable(name: "fmt", arg: 2, scope: !54, file: !1, line: 57, type: !11)
!272 = !DILocalVariable(name: "ret", scope: !54, file: !1, line: 65, type: !10)
!273 = !DILocalVariable(name: "ap", scope: !54, file: !1, line: 66, type: !18)
!274 = !DILocation(line: 57, column: 26, scope: !54)
!275 = !DILocation(line: 57, column: 44, scope: !54)
!276 = !DILocation(line: 66, column: 3, scope: !54)
!277 = !DILocation(line: 66, column: 11, scope: !54)
!278 = !DILocation(line: 70, column: 3, scope: !54)
!279 = !DILocation(line: 74, column: 29, scope: !54)
!280 = !DILocation(line: 74, column: 9, scope: !54)
!281 = !DILocation(line: 65, column: 7, scope: !54)
!282 = !DILocation(line: 75, column: 3, scope: !54)
!283 = !DILocation(line: 77, column: 1, scope: !54)
!284 = !DILocation(line: 76, column: 3, scope: !54)
