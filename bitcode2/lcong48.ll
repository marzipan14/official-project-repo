; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lcong48.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lcong48.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._rand48 = type { [3 x i16], [3 x i16], i16 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @_lcong48_r(%struct._reent* nocapture, i16* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  %3 = load i16, i16* %1, align 2, !dbg !235, !tbaa !236
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !240
  %5 = bitcast i8** %4 to %struct._rand48*, !dbg !240
  %6 = bitcast i8** %4 to [3 x i16]*, !dbg !240
  %7 = bitcast i8** %4 to i16*, !dbg !240
  store i16 %3, i16* %7, align 8, !dbg !241, !tbaa !242
  %8 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !243
  %9 = load i16, i16* %8, align 2, !dbg !243, !tbaa !236
  %10 = getelementptr inbounds [3 x i16], [3 x i16]* %6, i64 0, i64 1, !dbg !244
  store i16 %9, i16* %10, align 2, !dbg !245, !tbaa !242
  %11 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !246
  %12 = load i16, i16* %11, align 2, !dbg !246, !tbaa !236
  %13 = getelementptr inbounds [3 x i16], [3 x i16]* %6, i64 0, i64 2, !dbg !247
  store i16 %12, i16* %13, align 4, !dbg !248, !tbaa !242
  %14 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !249
  %15 = load i16, i16* %14, align 2, !dbg !249, !tbaa !236
  %16 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 1, i64 0, !dbg !250
  store i16 %15, i16* %16, align 2, !dbg !251, !tbaa !242
  %17 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !252
  %18 = load i16, i16* %17, align 2, !dbg !252, !tbaa !236
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !253
  %20 = bitcast i8** %19 to i16*, !dbg !253
  store i16 %18, i16* %20, align 2, !dbg !254, !tbaa !242
  %21 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !255
  %22 = load i16, i16* %21, align 2, !dbg !255, !tbaa !236
  %23 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 1, i64 2, !dbg !256
  store i16 %22, i16* %23, align 2, !dbg !257, !tbaa !242
  %24 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !258
  %25 = load i16, i16* %24, align 2, !dbg !258, !tbaa !236
  %26 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 2, !dbg !259
  store i16 %25, i16* %26, align 4, !dbg !260, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  ret void, !dbg !261
}

; Function Attrs: noredzone nounwind
define dso_local void @lcong48(i16* nocapture readonly) local_unnamed_addr #0 !dbg !262 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !268
  %3 = load i16, i16* %0, align 2, !dbg !271, !tbaa !236
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 12, !dbg !272
  %5 = bitcast i8** %4 to %struct._rand48*, !dbg !272
  %6 = bitcast i8** %4 to [3 x i16]*, !dbg !272
  %7 = bitcast i8** %4 to i16*, !dbg !272
  store i16 %3, i16* %7, align 8, !dbg !273, !tbaa !242
  %8 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !274
  %9 = load i16, i16* %8, align 2, !dbg !274, !tbaa !236
  %10 = getelementptr inbounds [3 x i16], [3 x i16]* %6, i64 0, i64 1, !dbg !275
  store i16 %9, i16* %10, align 2, !dbg !276, !tbaa !242
  %11 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !277
  %12 = load i16, i16* %11, align 2, !dbg !277, !tbaa !236
  %13 = getelementptr inbounds [3 x i16], [3 x i16]* %6, i64 0, i64 2, !dbg !278
  store i16 %12, i16* %13, align 4, !dbg !279, !tbaa !242
  %14 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !280
  %15 = load i16, i16* %14, align 2, !dbg !280, !tbaa !236
  %16 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 1, i64 0, !dbg !281
  store i16 %15, i16* %16, align 2, !dbg !282, !tbaa !242
  %17 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !283
  %18 = load i16, i16* %17, align 2, !dbg !283, !tbaa !236
  %19 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 16, i32 0, i32 0, i64 13, !dbg !284
  %20 = bitcast i8** %19 to i16*, !dbg !284
  store i16 %18, i16* %20, align 2, !dbg !285, !tbaa !242
  %21 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !286
  %22 = load i16, i16* %21, align 2, !dbg !286, !tbaa !236
  %23 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 1, i64 2, !dbg !287
  store i16 %22, i16* %23, align 2, !dbg !288, !tbaa !242
  %24 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !289
  %25 = load i16, i16* %24, align 2, !dbg !289, !tbaa !236
  %26 = getelementptr inbounds %struct._rand48, %struct._rand48* %5, i64 0, i32 2, !dbg !290
  store i16 %25, i16* %26, align 4, !dbg !291, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  ret void, !dbg !293
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lcong48.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_lcong48_r", scope: !1, file: !1, line: 17, type: !8, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !231)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !230}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !12, line: 569, size: 14912, elements: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !{!14, !16, !98, !99, !100, !101, !105, !106, !109, !110, !114, !126, !127, !128, !130, !131, !132, !194, !215, !216, !221, !228}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !11, file: !12, line: 571, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !12, line: 287, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !12, line: 181, size: 1408, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !37, !46, !52, !57, !61, !62, !63, !64, !68, !72, !73, !74, !76, !77, !81, !97}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !12, line: 182, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !12, line: 183, baseType: !15, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !12, line: 184, baseType: !15, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !12, line: 185, baseType: !27, size: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !12, line: 186, baseType: !27, size: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !12, line: 187, baseType: !30, size: 128, offset: 192)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !12, line: 117, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !12, line: 118, baseType: !22, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !12, line: 119, baseType: !15, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !12, line: 188, baseType: !15, size: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !12, line: 195, baseType: !36, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !12, line: 197, baseType: !38, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !10, !36, !44, !15}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !42, line: 145, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !12, line: 199, baseType: !47, size: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!41, !10, !36, !50, !15}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !12, line: 202, baseType: !53, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !10, !36, !56, !15}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !42, line: 114, baseType: !43)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !12, line: 203, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!15, !10, !36}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !12, line: 206, baseType: !30, size: 128, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !19, file: !12, line: 207, baseType: !22, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !12, line: 208, baseType: !15, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !12, line: 211, baseType: !65, size: 24, offset: 928)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !12, line: 212, baseType: !69, size: 8, offset: 952)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !12, line: 215, baseType: !30, size: 128, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !12, line: 218, baseType: !15, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !12, line: 219, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !42, line: 44, baseType: !43)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !19, file: !12, line: 222, baseType: !10, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !19, file: !12, line: 226, baseType: !78, size: 32, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !42, line: 175, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !80, line: 12, baseType: !15)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !19, file: !12, line: 228, baseType: !82, size: 64, offset: 1312)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !42, line: 171, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 163, size: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !83, file: !42, line: 165, baseType: !15, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !83, file: !42, line: 170, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !42, line: 166, size: 32, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !87, file: !42, line: 168, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !91, line: 124, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !87, file: !42, line: 169, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !19, file: !12, line: 229, baseType: !15, size: 32, offset: 1376)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !11, file: !12, line: 576, baseType: !17, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !11, file: !12, line: 578, baseType: !15, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !11, file: !12, line: 579, baseType: !102, size: 200, offset: 288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !11, file: !12, line: 582, baseType: !15, size: 32, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !11, file: !12, line: 583, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !12, line: 40, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !11, file: !12, line: 585, baseType: !15, size: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !11, file: !12, line: 587, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !10}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !11, file: !12, line: 590, baseType: !115, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !12, line: 47, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !116, file: !12, line: 49, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !116, file: !12, line: 50, baseType: !15, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !116, file: !12, line: 50, baseType: !15, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !116, file: !12, line: 50, baseType: !15, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !116, file: !12, line: 50, baseType: !15, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !116, file: !12, line: 51, baseType: !124, size: 32, offset: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !70)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !12, line: 25, baseType: !92)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !11, file: !12, line: 591, baseType: !15, size: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !11, file: !12, line: 592, baseType: !115, size: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !11, file: !12, line: 593, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !11, file: !12, line: 596, baseType: !15, size: 32, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !11, file: !12, line: 597, baseType: !44, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !11, file: !12, line: 632, baseType: !133, size: 2880, offset: 1152)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !11, file: !12, line: 599, size: 2880, elements: !134)
!134 = !{!135, !185}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !133, file: !12, line: 622, baseType: !136, size: 1728)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !12, line: 601, size: 1728, elements: !137)
!137 = !{!138, !139, !140, !144, !156, !157, !159, !167, !168, !169, !170, !174, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !136, file: !12, line: 603, baseType: !92, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !136, file: !12, line: 604, baseType: !44, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !136, file: !12, line: 605, baseType: !141, size: 208, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 26)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !136, file: !12, line: 606, baseType: !145, size: 288, offset: 352)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !12, line: 55, size: 288, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !145, file: !12, line: 57, baseType: !15, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !145, file: !12, line: 58, baseType: !15, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !145, file: !12, line: 59, baseType: !15, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !145, file: !12, line: 60, baseType: !15, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !145, file: !12, line: 61, baseType: !15, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !145, file: !12, line: 62, baseType: !15, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !145, file: !12, line: 63, baseType: !15, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !145, file: !12, line: 64, baseType: !15, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !145, file: !12, line: 65, baseType: !15, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !136, file: !12, line: 607, baseType: !15, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !136, file: !12, line: 608, baseType: !158, size: 64, offset: 704)
!158 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !136, file: !12, line: 609, baseType: !160, size: 112, offset: 768)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !12, line: 319, size: 112, elements: !161)
!161 = !{!162, !165, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !160, file: !12, line: 320, baseType: !163, size: 48)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !66)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !160, file: !12, line: 321, baseType: !163, size: 48, offset: 48)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !160, file: !12, line: 322, baseType: !164, size: 16, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !136, file: !12, line: 610, baseType: !82, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !136, file: !12, line: 611, baseType: !82, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !136, file: !12, line: 612, baseType: !82, size: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !136, file: !12, line: 613, baseType: !171, size: 64, offset: 1088)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !136, file: !12, line: 614, baseType: !175, size: 192, offset: 1152)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !136, file: !12, line: 615, baseType: !15, size: 32, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !136, file: !12, line: 616, baseType: !82, size: 64, offset: 1376)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !136, file: !12, line: 617, baseType: !82, size: 64, offset: 1440)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !136, file: !12, line: 618, baseType: !82, size: 64, offset: 1504)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !136, file: !12, line: 619, baseType: !82, size: 64, offset: 1568)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !136, file: !12, line: 620, baseType: !82, size: 64, offset: 1632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !136, file: !12, line: 621, baseType: !15, size: 32, offset: 1696)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !133, file: !12, line: 631, baseType: !186, size: 2880)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !12, line: 626, size: 2880, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !186, file: !12, line: 629, baseType: !189, size: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1920, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 30)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !186, file: !12, line: 630, baseType: !193, size: 960, offset: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 960, elements: !190)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !11, file: !12, line: 636, baseType: !195, size: 64, offset: 4032)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !12, line: 93, size: 6336, elements: !197)
!197 = !{!198, !199, !200, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !196, file: !12, line: 94, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !196, file: !12, line: 95, baseType: !15, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !196, file: !12, line: 97, baseType: !201, size: 2048, offset: 128)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, elements: !205)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null}
!205 = !{!206}
!206 = !DISubrange(count: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !196, file: !12, line: 98, baseType: !208, size: 4160, offset: 2176)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !12, line: 74, size: 4160, elements: !209)
!209 = !{!210, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !208, file: !12, line: 75, baseType: !211, size: 2048)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !205)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !208, file: !12, line: 76, baseType: !211, size: 2048, offset: 2048)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !208, file: !12, line: 78, baseType: !125, size: 32, offset: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !208, file: !12, line: 81, baseType: !125, size: 32, offset: 4128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !11, file: !12, line: 637, baseType: !196, size: 6336, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !11, file: !12, line: 641, baseType: !217, size: 64, offset: 10432)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !15}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !11, file: !12, line: 646, baseType: !222, size: 192, offset: 10496)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !12, line: 291, size: 192, elements: !223)
!223 = !{!224, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !222, file: !12, line: 293, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !222, file: !12, line: 294, baseType: !15, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !222, file: !12, line: 295, baseType: !17, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !11, file: !12, line: 648, baseType: !229, size: 4224, offset: 10688)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 4224, elements: !66)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "r", arg: 1, scope: !7, file: !1, line: 17, type: !10)
!233 = !DILocalVariable(name: "p", arg: 2, scope: !7, file: !1, line: 17, type: !230)
!234 = !DILocation(line: 17, column: 1, scope: !7)
!235 = !DILocation(line: 22, column: 22, scope: !7)
!236 = !{!237, !237, i64 0}
!237 = !{!"short", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C/C++ TBAA"}
!240 = !DILocation(line: 22, column: 3, scope: !7)
!241 = !DILocation(line: 22, column: 20, scope: !7)
!242 = !{!238, !238, i64 0}
!243 = !DILocation(line: 23, column: 22, scope: !7)
!244 = !DILocation(line: 23, column: 3, scope: !7)
!245 = !DILocation(line: 23, column: 20, scope: !7)
!246 = !DILocation(line: 24, column: 22, scope: !7)
!247 = !DILocation(line: 24, column: 3, scope: !7)
!248 = !DILocation(line: 24, column: 20, scope: !7)
!249 = !DILocation(line: 25, column: 22, scope: !7)
!250 = !DILocation(line: 25, column: 3, scope: !7)
!251 = !DILocation(line: 25, column: 20, scope: !7)
!252 = !DILocation(line: 26, column: 22, scope: !7)
!253 = !DILocation(line: 26, column: 3, scope: !7)
!254 = !DILocation(line: 26, column: 20, scope: !7)
!255 = !DILocation(line: 27, column: 22, scope: !7)
!256 = !DILocation(line: 27, column: 3, scope: !7)
!257 = !DILocation(line: 27, column: 20, scope: !7)
!258 = !DILocation(line: 28, column: 18, scope: !7)
!259 = !DILocation(line: 28, column: 3, scope: !7)
!260 = !DILocation(line: 28, column: 16, scope: !7)
!261 = !DILocation(line: 29, column: 1, scope: !7)
!262 = distinct !DISubprogram(name: "lcong48", scope: !1, file: !1, line: 33, type: !263, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !230}
!265 = !{!266}
!266 = !DILocalVariable(name: "p", arg: 1, scope: !262, file: !1, line: 33, type: !230)
!267 = !DILocation(line: 33, column: 1, scope: !262)
!268 = !DILocation(line: 36, column: 15, scope: !262)
!269 = !DILocation(line: 17, column: 1, scope: !7, inlinedAt: !270)
!270 = distinct !DILocation(line: 36, column: 3, scope: !262)
!271 = !DILocation(line: 22, column: 22, scope: !7, inlinedAt: !270)
!272 = !DILocation(line: 22, column: 3, scope: !7, inlinedAt: !270)
!273 = !DILocation(line: 22, column: 20, scope: !7, inlinedAt: !270)
!274 = !DILocation(line: 23, column: 22, scope: !7, inlinedAt: !270)
!275 = !DILocation(line: 23, column: 3, scope: !7, inlinedAt: !270)
!276 = !DILocation(line: 23, column: 20, scope: !7, inlinedAt: !270)
!277 = !DILocation(line: 24, column: 22, scope: !7, inlinedAt: !270)
!278 = !DILocation(line: 24, column: 3, scope: !7, inlinedAt: !270)
!279 = !DILocation(line: 24, column: 20, scope: !7, inlinedAt: !270)
!280 = !DILocation(line: 25, column: 22, scope: !7, inlinedAt: !270)
!281 = !DILocation(line: 25, column: 3, scope: !7, inlinedAt: !270)
!282 = !DILocation(line: 25, column: 20, scope: !7, inlinedAt: !270)
!283 = !DILocation(line: 26, column: 22, scope: !7, inlinedAt: !270)
!284 = !DILocation(line: 26, column: 3, scope: !7, inlinedAt: !270)
!285 = !DILocation(line: 26, column: 20, scope: !7, inlinedAt: !270)
!286 = !DILocation(line: 27, column: 22, scope: !7, inlinedAt: !270)
!287 = !DILocation(line: 27, column: 3, scope: !7, inlinedAt: !270)
!288 = !DILocation(line: 27, column: 20, scope: !7, inlinedAt: !270)
!289 = !DILocation(line: 28, column: 18, scope: !7, inlinedAt: !270)
!290 = !DILocation(line: 28, column: 3, scope: !7, inlinedAt: !270)
!291 = !DILocation(line: 28, column: 16, scope: !7, inlinedAt: !270)
!292 = !DILocation(line: 29, column: 1, scope: !7, inlinedAt: !270)
!293 = !DILocation(line: 37, column: 1, scope: !262)
