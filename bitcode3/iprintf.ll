; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iprintf.c"
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
define dso_local i32 @iprintf(i8*, ...) local_unnamed_addr #0 !dbg !7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !248
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #4, !dbg !248
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !250
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !252
  call void @llvm.va_start(i8* nonnull %3), !dbg !252
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 2, !dbg !253
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !253, !tbaa !254
  %8 = call i32 @_vfiprintf_r(%struct._reent* %4, %struct.__sFILE* %7, i8* %0, %struct.__va_list_tag* nonnull %5) #5, !dbg !263
  call void @llvm.va_end(i8* nonnull %3), !dbg !265
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #4, !dbg !266
  ret i32 %8, !dbg !267
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @_vfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_iprintf_r(%struct._reent*, i8*, ...) local_unnamed_addr #0 !dbg !268 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !277
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #4, !dbg !277
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !279
  call void @llvm.va_start(i8* nonnull %4), !dbg !279
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 2, !dbg !280
  %7 = load %struct.__sFILE*, %struct.__sFILE** %6, align 8, !dbg !280, !tbaa !254
  %8 = call i32 @_vfiprintf_r(%struct._reent* %0, %struct.__sFILE* %7, i8* %1, %struct.__va_list_tag* nonnull %5) #5, !dbg !281
  call void @llvm.va_end(i8* nonnull %4), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #4, !dbg !284
  ret i32 %8, !dbg !285
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/iprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "iprintf", scope: !1, file: !1, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, null}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !34}
!15 = !DILocalVariable(name: "fmt", arg: 1, scope: !7, file: !1, line: 28, type: !11)
!16 = !DILocalVariable(name: "ret", scope: !7, file: !1, line: 31, type: !10)
!17 = !DILocalVariable(name: "ap", scope: !7, file: !1, line: 32, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !21, line: 51, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 32, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 192, elements: !32)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 32, size: 192, elements: !25)
!25 = !{!26, !28, !29, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, line: 32, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, line: 32, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, line: 32, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, line: 32, baseType: !30, size: 64, offset: 128)
!32 = !{!33}
!33 = !DISubrange(count: 1)
!34 = !DILocalVariable(name: "ptr", scope: !7, file: !1, line: 33, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !37, line: 569, size: 14912, elements: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !{!39, !40, !115, !116, !117, !118, !122, !123, !126, !127, !131, !143, !144, !145, !147, !148, !149, !211, !232, !233, !238, !245}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !36, file: !37, line: 571, baseType: !10, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !37, line: 287, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !37, line: 181, size: 1408, elements: !44)
!44 = !{!45, !48, !49, !50, !52, !53, !58, !59, !60, !68, !72, !77, !81, !82, !83, !84, !88, !90, !91, !92, !94, !95, !99, !114}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !43, file: !37, line: 182, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !43, file: !37, line: 183, baseType: !10, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !43, file: !37, line: 184, baseType: !10, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !37, line: 185, baseType: !51, size: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !43, file: !37, line: 186, baseType: !51, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !43, file: !37, line: 187, baseType: !54, size: 128, offset: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !37, line: 117, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !37, line: 118, baseType: !46, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !37, line: 119, baseType: !10, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !43, file: !37, line: 188, baseType: !10, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !43, file: !37, line: 195, baseType: !30, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !43, file: !37, line: 197, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !35, !30, !67, !10}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !65, line: 145, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !43, file: !37, line: 199, baseType: !69, size: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!64, !35, !30, !11, !10}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !43, file: !37, line: 202, baseType: !73, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !35, !30, !76, !10}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !65, line: 114, baseType: !66)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !43, file: !37, line: 203, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!10, !35, !30}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !43, file: !37, line: 206, baseType: !54, size: 128, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !43, file: !37, line: 207, baseType: !46, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !43, file: !37, line: 208, baseType: !10, size: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !43, file: !37, line: 211, baseType: !85, size: 24, offset: 928)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !43, file: !37, line: 212, baseType: !89, size: 8, offset: 952)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !43, file: !37, line: 215, baseType: !54, size: 128, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !43, file: !37, line: 218, baseType: !10, size: 32, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !37, line: 219, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !65, line: 44, baseType: !66)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !43, file: !37, line: 222, baseType: !35, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !37, line: 226, baseType: !96, size: 32, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !65, line: 175, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !98, line: 12, baseType: !10)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !43, file: !37, line: 228, baseType: !100, size: 64, offset: 1312)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !65, line: 171, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 163, size: 64, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !101, file: !65, line: 165, baseType: !10, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !101, file: !65, line: 170, baseType: !105, size: 32, offset: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !101, file: !65, line: 166, size: 32, elements: !106)
!106 = !{!107, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !105, file: !65, line: 168, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !109, line: 124, baseType: !27)
!109 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !105, file: !65, line: 169, baseType: !111, size: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 4)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !37, line: 229, baseType: !10, size: 32, offset: 1376)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !36, file: !37, line: 576, baseType: !41, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !36, file: !37, line: 578, baseType: !10, size: 32, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !36, file: !37, line: 579, baseType: !119, size: 200, offset: 288)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 200, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 25)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !36, file: !37, line: 582, baseType: !10, size: 32, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !36, file: !37, line: 583, baseType: !124, size: 64, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !37, line: 40, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !36, file: !37, line: 585, baseType: !10, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !36, file: !37, line: 587, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !35}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !36, file: !37, line: 590, baseType: !132, size: 64, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !37, line: 47, size: 256, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !133, file: !37, line: 49, baseType: !132, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !133, file: !37, line: 50, baseType: !10, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !133, file: !37, line: 50, baseType: !10, size: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !133, file: !37, line: 50, baseType: !10, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !133, file: !37, line: 50, baseType: !10, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !133, file: !37, line: 51, baseType: !141, size: 32, offset: 192)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 32, elements: !32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !37, line: 25, baseType: !27)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !36, file: !37, line: 591, baseType: !10, size: 32, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !36, file: !37, line: 592, baseType: !132, size: 64, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !36, file: !37, line: 593, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !36, file: !37, line: 596, baseType: !10, size: 32, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !36, file: !37, line: 597, baseType: !67, size: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !36, file: !37, line: 632, baseType: !150, size: 2880, offset: 1152)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !37, line: 599, size: 2880, elements: !151)
!151 = !{!152, !202}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !150, file: !37, line: 622, baseType: !153, size: 1728)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 601, size: 1728, elements: !154)
!154 = !{!155, !156, !157, !161, !173, !174, !176, !184, !185, !186, !187, !191, !195, !196, !197, !198, !199, !200, !201}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !153, file: !37, line: 603, baseType: !27, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !153, file: !37, line: 604, baseType: !67, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !153, file: !37, line: 605, baseType: !158, size: 208, offset: 128)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 208, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 26)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !153, file: !37, line: 606, baseType: !162, size: 288, offset: 352)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !37, line: 55, size: 288, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !162, file: !37, line: 57, baseType: !10, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !162, file: !37, line: 58, baseType: !10, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !162, file: !37, line: 59, baseType: !10, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !162, file: !37, line: 60, baseType: !10, size: 32, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !162, file: !37, line: 61, baseType: !10, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !162, file: !37, line: 62, baseType: !10, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !162, file: !37, line: 63, baseType: !10, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !162, file: !37, line: 64, baseType: !10, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !162, file: !37, line: 65, baseType: !10, size: 32, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !153, file: !37, line: 607, baseType: !10, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !153, file: !37, line: 608, baseType: !175, size: 64, offset: 704)
!175 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !153, file: !37, line: 609, baseType: !177, size: 112, offset: 768)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !37, line: 319, size: 112, elements: !178)
!178 = !{!179, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !177, file: !37, line: 320, baseType: !180, size: 48)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 48, elements: !86)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !177, file: !37, line: 321, baseType: !180, size: 48, offset: 48)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !177, file: !37, line: 322, baseType: !181, size: 16, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !153, file: !37, line: 610, baseType: !100, size: 64, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !153, file: !37, line: 611, baseType: !100, size: 64, offset: 960)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !153, file: !37, line: 612, baseType: !100, size: 64, offset: 1024)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !153, file: !37, line: 613, baseType: !188, size: 64, offset: 1088)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !153, file: !37, line: 614, baseType: !192, size: 192, offset: 1152)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 24)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !153, file: !37, line: 615, baseType: !10, size: 32, offset: 1344)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !153, file: !37, line: 616, baseType: !100, size: 64, offset: 1376)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !153, file: !37, line: 617, baseType: !100, size: 64, offset: 1440)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !153, file: !37, line: 618, baseType: !100, size: 64, offset: 1504)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !153, file: !37, line: 619, baseType: !100, size: 64, offset: 1568)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !153, file: !37, line: 620, baseType: !100, size: 64, offset: 1632)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !153, file: !37, line: 621, baseType: !10, size: 32, offset: 1696)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !150, file: !37, line: 631, baseType: !203, size: 2880)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !37, line: 626, size: 2880, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !203, file: !37, line: 629, baseType: !206, size: 1920)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1920, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 30)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !203, file: !37, line: 630, baseType: !210, size: 960, offset: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 960, elements: !207)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !36, file: !37, line: 636, baseType: !212, size: 64, offset: 4032)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !37, line: 93, size: 6336, elements: !214)
!214 = !{!215, !216, !217, !224}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !213, file: !37, line: 94, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !213, file: !37, line: 95, baseType: !10, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !213, file: !37, line: 97, baseType: !218, size: 2048, offset: 128)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, elements: !222)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null}
!222 = !{!223}
!223 = !DISubrange(count: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !213, file: !37, line: 98, baseType: !225, size: 4160, offset: 2176)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !37, line: 74, size: 4160, elements: !226)
!226 = !{!227, !229, !230, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !225, file: !37, line: 75, baseType: !228, size: 2048)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !222)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !225, file: !37, line: 76, baseType: !228, size: 2048, offset: 2048)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !225, file: !37, line: 78, baseType: !142, size: 32, offset: 4096)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !225, file: !37, line: 81, baseType: !142, size: 32, offset: 4128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !36, file: !37, line: 637, baseType: !213, size: 6336, offset: 4096)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !36, file: !37, line: 641, baseType: !234, size: 64, offset: 10432)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !10}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !36, file: !37, line: 646, baseType: !239, size: 192, offset: 10496)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !37, line: 291, size: 192, elements: !240)
!240 = !{!241, !243, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !239, file: !37, line: 293, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !239, file: !37, line: 294, baseType: !10, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !239, file: !37, line: 295, baseType: !41, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !36, file: !37, line: 648, baseType: !246, size: 4224, offset: 10688)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4224, elements: !86)
!247 = !DILocation(line: 28, column: 1, scope: !7)
!248 = !DILocation(line: 32, column: 3, scope: !7)
!249 = !DILocation(line: 32, column: 11, scope: !7)
!250 = !DILocation(line: 33, column: 24, scope: !7)
!251 = !DILocation(line: 33, column: 18, scope: !7)
!252 = !DILocation(line: 36, column: 3, scope: !7)
!253 = !DILocation(line: 37, column: 28, scope: !7)
!254 = !{!255, !259, i64 16}
!255 = !{!"_reent", !256, i64 0, !259, i64 8, !259, i64 16, !259, i64 24, !256, i64 32, !257, i64 36, !256, i64 64, !259, i64 72, !256, i64 80, !259, i64 88, !259, i64 96, !256, i64 104, !259, i64 112, !259, i64 120, !256, i64 128, !259, i64 136, !257, i64 144, !259, i64 504, !260, i64 512, !259, i64 1304, !262, i64 1312, !257, i64 1336}
!256 = !{!"int", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C/C++ TBAA"}
!259 = !{!"any pointer", !257, i64 0}
!260 = !{!"_atexit", !259, i64 0, !256, i64 8, !257, i64 16, !261, i64 272}
!261 = !{!"_on_exit_args", !257, i64 0, !257, i64 256, !256, i64 512, !256, i64 516}
!262 = !{!"_glue", !259, i64 0, !256, i64 8, !259, i64 16}
!263 = !DILocation(line: 37, column: 9, scope: !7)
!264 = !DILocation(line: 31, column: 7, scope: !7)
!265 = !DILocation(line: 38, column: 3, scope: !7)
!266 = !DILocation(line: 40, column: 1, scope: !7)
!267 = !DILocation(line: 39, column: 3, scope: !7)
!268 = distinct !DISubprogram(name: "_iprintf_r", scope: !1, file: !1, line: 45, type: !269, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !271)
!269 = !DISubroutineType(types: !270)
!270 = !{!10, !35, !11, null}
!271 = !{!272, !273, !274, !275}
!272 = !DILocalVariable(name: "ptr", arg: 1, scope: !268, file: !1, line: 45, type: !35)
!273 = !DILocalVariable(name: "fmt", arg: 2, scope: !268, file: !1, line: 45, type: !11)
!274 = !DILocalVariable(name: "ret", scope: !268, file: !1, line: 49, type: !10)
!275 = !DILocalVariable(name: "ap", scope: !268, file: !1, line: 50, type: !18)
!276 = !DILocation(line: 45, column: 1, scope: !268)
!277 = !DILocation(line: 50, column: 3, scope: !268)
!278 = !DILocation(line: 50, column: 11, scope: !268)
!279 = !DILocation(line: 53, column: 3, scope: !268)
!280 = !DILocation(line: 54, column: 28, scope: !268)
!281 = !DILocation(line: 54, column: 9, scope: !268)
!282 = !DILocation(line: 49, column: 7, scope: !268)
!283 = !DILocation(line: 55, column: 3, scope: !268)
!284 = !DILocation(line: 57, column: 1, scope: !268)
!285 = !DILocation(line: 56, column: 3, scope: !268)
