; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsiprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsiprintf.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @vsiprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca %struct.__sFILE, align 8
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !32
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !258
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !259
  store i16 520, i16* %7, align 8, !dbg !260, !tbaa !261
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !271
  store i8* %0, i8** %8, align 8, !dbg !272, !tbaa !273
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !274
  store i8* %0, i8** %9, align 8, !dbg !275, !tbaa !276
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2, !dbg !277
  store i32 2147483647, i32* %10, align 4, !dbg !278, !tbaa !279
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !280
  store i32 2147483647, i32* %11, align 8, !dbg !281, !tbaa !282
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !283
  store i16 -1, i16* %12, align 2, !dbg !284, !tbaa !285
  %13 = call i32 @_svfiprintf_r(%struct._reent* %5, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* %2) #4, !dbg !287
  %14 = load i8*, i8** %8, align 8, !dbg !289, !tbaa !273
  store i8 0, i8* %14, align 1, !dbg !290, !tbaa !291
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !292
  ret i32 %13, !dbg !293
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vsiprintf_r(%struct._reent*, i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !34 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast %struct.__sFILE* %5 to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !295
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !296
  store i16 520, i16* %7, align 8, !dbg !297, !tbaa !261
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !298
  store i8* %1, i8** %8, align 8, !dbg !299, !tbaa !273
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !300
  store i8* %1, i8** %9, align 8, !dbg !301, !tbaa !276
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !302
  store i32 2147483647, i32* %10, align 4, !dbg !303, !tbaa !279
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !304
  store i32 2147483647, i32* %11, align 8, !dbg !305, !tbaa !282
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !306
  store i16 -1, i16* %12, align 2, !dbg !307, !tbaa !285
  %13 = call i32 @_svfiprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #4, !dbg !309
  %14 = load i8*, i8** %8, align 8, !dbg !311, !tbaa !273
  store i8 0, i8* %14, align 1, !dbg !312, !tbaa !291
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !313
  ret i32 %13, !dbg !314
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @_svfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsiprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vsiprintf", scope: !1, file: !1, line: 34, type: !11, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !18}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !20)
!20 = !{!21, !23, !24, !26}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !19, file: !1, baseType: !22, size: 32)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !19, file: !1, baseType: !22, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !19, file: !1, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !19, file: !1, baseType: !25, size: 64, offset: 128)
!27 = !{!28, !29, !30}
!28 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 34, type: !14)
!29 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 34, type: !16)
!30 = !DILocalVariable(name: "ap", arg: 3, scope: !10, file: !1, line: 34, type: !18)
!31 = !DILocation(line: 34, column: 1, scope: !10)
!32 = !DILocation(line: 39, column: 24, scope: !10)
!33 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !1, line: 45, type: !37)
!34 = distinct !DISubprogram(name: "_vsiprintf_r", scope: !1, file: !1, line: 45, type: !35, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !248)
!35 = !DISubroutineType(types: !36)
!36 = !{!13, !37, !14, !16, !18}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !39, line: 569, size: 14912, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !116, !117, !118, !119, !123, !124, !127, !128, !132, !144, !145, !146, !148, !149, !150, !212, !233, !234, !239, !246}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !38, file: !39, line: 571, baseType: !13, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !39, line: 287, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !39, line: 181, size: 1408, elements: !46)
!46 = !{!47, !48, !49, !50, !52, !53, !58, !59, !60, !67, !71, !76, !80, !81, !82, !83, !87, !91, !92, !93, !95, !96, !100, !115}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !45, file: !39, line: 182, baseType: !4, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !45, file: !39, line: 183, baseType: !13, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !45, file: !39, line: 184, baseType: !13, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !39, line: 185, baseType: !51, size: 16, offset: 128)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !45, file: !39, line: 186, baseType: !51, size: 16, offset: 144)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !45, file: !39, line: 187, baseType: !54, size: 128, offset: 192)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !39, line: 117, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !54, file: !39, line: 118, baseType: !4, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !54, file: !39, line: 119, baseType: !13, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !45, file: !39, line: 188, baseType: !13, size: 32, offset: 320)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !45, file: !39, line: 195, baseType: !25, size: 64, offset: 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !45, file: !39, line: 197, baseType: !61, size: 64, offset: 448)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !37, !25, !14, !13}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !65, line: 145, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !45, file: !39, line: 199, baseType: !68, size: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!64, !37, !25, !16, !13}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !45, file: !39, line: 202, baseType: !72, size: 64, offset: 576)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !37, !25, !75, !13}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !65, line: 114, baseType: !66)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !45, file: !39, line: 203, baseType: !77, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!13, !37, !25}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !45, file: !39, line: 206, baseType: !54, size: 128, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !45, file: !39, line: 207, baseType: !4, size: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !45, file: !39, line: 208, baseType: !13, size: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !45, file: !39, line: 211, baseType: !84, size: 24, offset: 928)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 3)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !45, file: !39, line: 212, baseType: !88, size: 8, offset: 952)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !45, file: !39, line: 215, baseType: !54, size: 128, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !45, file: !39, line: 218, baseType: !13, size: 32, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !39, line: 219, baseType: !94, size: 64, offset: 1152)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !65, line: 44, baseType: !66)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !45, file: !39, line: 222, baseType: !37, size: 64, offset: 1216)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !39, line: 226, baseType: !97, size: 32, offset: 1280)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !65, line: 175, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !99, line: 12, baseType: !13)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !45, file: !39, line: 228, baseType: !101, size: 64, offset: 1312)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !65, line: 171, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 163, size: 64, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !102, file: !65, line: 165, baseType: !13, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !102, file: !65, line: 170, baseType: !106, size: 32, offset: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !65, line: 166, size: 32, elements: !107)
!107 = !{!108, !111}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !106, file: !65, line: 168, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !110, line: 124, baseType: !22)
!110 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !106, file: !65, line: 169, baseType: !112, size: 32)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 4)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !39, line: 229, baseType: !13, size: 32, offset: 1376)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !38, file: !39, line: 576, baseType: !43, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !38, file: !39, line: 578, baseType: !13, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !38, file: !39, line: 579, baseType: !120, size: 200, offset: 288)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !38, file: !39, line: 582, baseType: !13, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !38, file: !39, line: 583, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !39, line: 40, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !38, file: !39, line: 585, baseType: !13, size: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !38, file: !39, line: 587, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !37}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !38, file: !39, line: 590, baseType: !133, size: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !39, line: 47, size: 256, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !134, file: !39, line: 49, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !134, file: !39, line: 50, baseType: !13, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !134, file: !39, line: 50, baseType: !13, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !134, file: !39, line: 50, baseType: !13, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !134, file: !39, line: 50, baseType: !13, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !134, file: !39, line: 51, baseType: !142, size: 32, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 32, elements: !89)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !39, line: 25, baseType: !22)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !38, file: !39, line: 591, baseType: !13, size: 32, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !38, file: !39, line: 592, baseType: !133, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !38, file: !39, line: 593, baseType: !147, size: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !38, file: !39, line: 596, baseType: !13, size: 32, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !38, file: !39, line: 597, baseType: !14, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !38, file: !39, line: 632, baseType: !151, size: 2880, offset: 1152)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 599, size: 2880, elements: !152)
!152 = !{!153, !203}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !151, file: !39, line: 622, baseType: !154, size: 1728)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !39, line: 601, size: 1728, elements: !155)
!155 = !{!156, !157, !158, !162, !174, !175, !177, !185, !186, !187, !188, !192, !196, !197, !198, !199, !200, !201, !202}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !154, file: !39, line: 603, baseType: !22, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !154, file: !39, line: 604, baseType: !14, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !154, file: !39, line: 605, baseType: !159, size: 208, offset: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 26)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !154, file: !39, line: 606, baseType: !163, size: 288, offset: 352)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !39, line: 55, size: 288, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !163, file: !39, line: 57, baseType: !13, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !163, file: !39, line: 58, baseType: !13, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !163, file: !39, line: 59, baseType: !13, size: 32, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !163, file: !39, line: 60, baseType: !13, size: 32, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !163, file: !39, line: 61, baseType: !13, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !163, file: !39, line: 62, baseType: !13, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !163, file: !39, line: 63, baseType: !13, size: 32, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !163, file: !39, line: 64, baseType: !13, size: 32, offset: 224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !163, file: !39, line: 65, baseType: !13, size: 32, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !154, file: !39, line: 607, baseType: !13, size: 32, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !154, file: !39, line: 608, baseType: !176, size: 64, offset: 704)
!176 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !154, file: !39, line: 609, baseType: !178, size: 112, offset: 768)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !39, line: 319, size: 112, elements: !179)
!179 = !{!180, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !178, file: !39, line: 320, baseType: !181, size: 48)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !85)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !178, file: !39, line: 321, baseType: !181, size: 48, offset: 48)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !178, file: !39, line: 322, baseType: !182, size: 16, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !154, file: !39, line: 610, baseType: !101, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !154, file: !39, line: 611, baseType: !101, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !154, file: !39, line: 612, baseType: !101, size: 64, offset: 1024)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !154, file: !39, line: 613, baseType: !189, size: 64, offset: 1088)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !154, file: !39, line: 614, baseType: !193, size: 192, offset: 1152)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 24)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !154, file: !39, line: 615, baseType: !13, size: 32, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !154, file: !39, line: 616, baseType: !101, size: 64, offset: 1376)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !154, file: !39, line: 617, baseType: !101, size: 64, offset: 1440)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !154, file: !39, line: 618, baseType: !101, size: 64, offset: 1504)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !154, file: !39, line: 619, baseType: !101, size: 64, offset: 1568)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !154, file: !39, line: 620, baseType: !101, size: 64, offset: 1632)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !154, file: !39, line: 621, baseType: !13, size: 32, offset: 1696)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !151, file: !39, line: 631, baseType: !204, size: 2880)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !39, line: 626, size: 2880, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !204, file: !39, line: 629, baseType: !207, size: 1920)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 30)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !204, file: !39, line: 630, baseType: !211, size: 960, offset: 1920)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 960, elements: !208)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !38, file: !39, line: 636, baseType: !213, size: 64, offset: 4032)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !39, line: 93, size: 6336, elements: !215)
!215 = !{!216, !217, !218, !225}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !214, file: !39, line: 94, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !214, file: !39, line: 95, baseType: !13, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !214, file: !39, line: 97, baseType: !219, size: 2048, offset: 128)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 2048, elements: !223)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null}
!223 = !{!224}
!224 = !DISubrange(count: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !214, file: !39, line: 98, baseType: !226, size: 4160, offset: 2176)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !39, line: 74, size: 4160, elements: !227)
!227 = !{!228, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !226, file: !39, line: 75, baseType: !229, size: 2048)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 2048, elements: !223)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !226, file: !39, line: 76, baseType: !229, size: 2048, offset: 2048)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !226, file: !39, line: 78, baseType: !143, size: 32, offset: 4096)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !226, file: !39, line: 81, baseType: !143, size: 32, offset: 4128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !38, file: !39, line: 637, baseType: !214, size: 6336, offset: 4096)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !38, file: !39, line: 641, baseType: !235, size: 64, offset: 10432)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !13}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !38, file: !39, line: 646, baseType: !240, size: 192, offset: 10496)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !39, line: 291, size: 192, elements: !241)
!241 = !{!242, !244, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !39, line: 293, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !240, file: !39, line: 294, baseType: !13, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !240, file: !39, line: 295, baseType: !43, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !38, file: !39, line: 648, baseType: !247, size: 4224, offset: 10688)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 4224, elements: !85)
!248 = !{!33, !249, !250, !251, !252, !253}
!249 = !DILocalVariable(name: "str", arg: 2, scope: !34, file: !1, line: 45, type: !14)
!250 = !DILocalVariable(name: "fmt", arg: 3, scope: !34, file: !1, line: 45, type: !16)
!251 = !DILocalVariable(name: "ap", arg: 4, scope: !34, file: !1, line: 45, type: !18)
!252 = !DILocalVariable(name: "ret", scope: !34, file: !1, line: 51, type: !13)
!253 = !DILocalVariable(name: "f", scope: !34, file: !1, line: 52, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !255, line: 66, baseType: !44)
!255 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !DILocation(line: 45, column: 1, scope: !34, inlinedAt: !257)
!257 = distinct !DILocation(line: 39, column: 10, scope: !10)
!258 = !DILocation(line: 52, column: 3, scope: !34, inlinedAt: !257)
!259 = !DILocation(line: 54, column: 5, scope: !34, inlinedAt: !257)
!260 = !DILocation(line: 54, column: 12, scope: !34, inlinedAt: !257)
!261 = !{!262, !267, i64 16}
!262 = !{!"__sFILE", !263, i64 0, !266, i64 8, !266, i64 12, !267, i64 16, !267, i64 18, !268, i64 24, !266, i64 40, !263, i64 48, !263, i64 56, !263, i64 64, !263, i64 72, !263, i64 80, !268, i64 88, !263, i64 104, !266, i64 112, !264, i64 116, !264, i64 119, !268, i64 120, !266, i64 136, !269, i64 144, !263, i64 152, !266, i64 160, !270, i64 164, !266, i64 172}
!263 = !{!"any pointer", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !{!"int", !264, i64 0}
!267 = !{!"short", !264, i64 0}
!268 = !{!"__sbuf", !263, i64 0, !266, i64 8}
!269 = !{!"long", !264, i64 0}
!270 = !{!"", !266, i64 0, !264, i64 4}
!271 = !DILocation(line: 55, column: 19, scope: !34, inlinedAt: !257)
!272 = !DILocation(line: 55, column: 22, scope: !34, inlinedAt: !257)
!273 = !{!262, !263, i64 0}
!274 = !DILocation(line: 55, column: 9, scope: !34, inlinedAt: !257)
!275 = !DILocation(line: 55, column: 15, scope: !34, inlinedAt: !257)
!276 = !{!262, !263, i64 24}
!277 = !DILocation(line: 56, column: 19, scope: !34, inlinedAt: !257)
!278 = !DILocation(line: 56, column: 22, scope: !34, inlinedAt: !257)
!279 = !{!262, !266, i64 12}
!280 = !DILocation(line: 56, column: 9, scope: !34, inlinedAt: !257)
!281 = !DILocation(line: 56, column: 15, scope: !34, inlinedAt: !257)
!282 = !{!262, !266, i64 32}
!283 = !DILocation(line: 57, column: 5, scope: !34, inlinedAt: !257)
!284 = !DILocation(line: 57, column: 11, scope: !34, inlinedAt: !257)
!285 = !{!262, !267, i64 18}
!286 = !DILocation(line: 52, column: 8, scope: !34, inlinedAt: !257)
!287 = !DILocation(line: 58, column: 9, scope: !34, inlinedAt: !257)
!288 = !DILocation(line: 51, column: 7, scope: !34, inlinedAt: !257)
!289 = !DILocation(line: 59, column: 6, scope: !34, inlinedAt: !257)
!290 = !DILocation(line: 59, column: 9, scope: !34, inlinedAt: !257)
!291 = !{!264, !264, i64 0}
!292 = !DILocation(line: 61, column: 1, scope: !34, inlinedAt: !257)
!293 = !DILocation(line: 39, column: 3, scope: !10)
!294 = !DILocation(line: 45, column: 1, scope: !34)
!295 = !DILocation(line: 52, column: 3, scope: !34)
!296 = !DILocation(line: 54, column: 5, scope: !34)
!297 = !DILocation(line: 54, column: 12, scope: !34)
!298 = !DILocation(line: 55, column: 19, scope: !34)
!299 = !DILocation(line: 55, column: 22, scope: !34)
!300 = !DILocation(line: 55, column: 9, scope: !34)
!301 = !DILocation(line: 55, column: 15, scope: !34)
!302 = !DILocation(line: 56, column: 19, scope: !34)
!303 = !DILocation(line: 56, column: 22, scope: !34)
!304 = !DILocation(line: 56, column: 9, scope: !34)
!305 = !DILocation(line: 56, column: 15, scope: !34)
!306 = !DILocation(line: 57, column: 5, scope: !34)
!307 = !DILocation(line: 57, column: 11, scope: !34)
!308 = !DILocation(line: 52, column: 8, scope: !34)
!309 = !DILocation(line: 58, column: 9, scope: !34)
!310 = !DILocation(line: 51, column: 7, scope: !34)
!311 = !DILocation(line: 59, column: 6, scope: !34)
!312 = !DILocation(line: 59, column: 9, scope: !34)
!313 = !DILocation(line: 61, column: 1, scope: !34)
!314 = !DILocation(line: 60, column: 3, scope: !34)
