; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strndup_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strndup_r.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_strndup_r(%struct._reent* nocapture readnone, i8*, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  %4 = icmp eq i64 %2, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %4, label %14, label %5, !dbg !245

; <label>:5:                                      ; preds = %3, %11
  %6 = phi i64 [ %8, %11 ], [ %2, %3 ]
  %7 = phi i8* [ %12, %11 ], [ %1, %3 ]
  %8 = add i64 %6, -1, !dbg !246
  %9 = load i8, i8* %7, align 1, !dbg !247, !tbaa !248
  %10 = icmp eq i8 %9, 0, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %10, label %16, label %11, !dbg !243

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  %13 = icmp eq i64 %8, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %13, label %14, label %5, !dbg !245, !llvm.loop !252

; <label>:14:                                     ; preds = %11, %3
  %15 = phi i8* [ %1, %3 ], [ %12, %11 ], !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br label %16

; <label>:16:                                     ; preds = %5, %14
  %17 = phi i8* [ %15, %14 ], [ %7, %5 ]
  %18 = ptrtoint i8* %17 to i64, !dbg !254
  %19 = ptrtoint i8* %1 to i64, !dbg !254
  %20 = sub i64 %18, %19, !dbg !254
  %21 = add i64 %20, 1, !dbg !256
  %22 = tail call i8* @malloc(i64 %21) #3, !dbg !256
  %23 = icmp eq i8* %22, null, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %23, label %27, label %24, !dbg !260

; <label>:24:                                     ; preds = %16
  %25 = tail call i8* @memcpy(i8* nonnull %22, i8* %1, i64 %20) #3, !dbg !261
  %26 = getelementptr inbounds i8, i8* %22, i64 %20, !dbg !263
  store i8 0, i8* %26, align 1, !dbg !264, !tbaa !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br label %27, !dbg !265

; <label>:27:                                     ; preds = %16, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  ret i8* %22, !dbg !266
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strndup_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "_strndup_r", scope: !1, file: !1, line: 6, type: !8, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !50, !230}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !14, line: 569, size: 14912, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !18, !98, !99, !100, !101, !105, !106, !109, !110, !114, !126, !127, !128, !130, !131, !132, !194, !215, !216, !221, !228}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !13, file: !14, line: 571, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !14, line: 287, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !14, line: 181, size: 1408, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !46, !52, !57, !61, !62, !63, !64, !68, !72, !73, !74, !76, !77, !81, !97}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !14, line: 182, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !14, line: 183, baseType: !17, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !14, line: 184, baseType: !17, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !14, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !14, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !14, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !14, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !14, line: 118, baseType: !24, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !14, line: 119, baseType: !17, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !14, line: 188, baseType: !17, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !14, line: 195, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !14, line: 197, baseType: !40, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !12, !38, !10, !17}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !44, line: 145, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !14, line: 199, baseType: !47, size: 64, offset: 512)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!43, !12, !38, !50, !17}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !14, line: 202, baseType: !53, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !12, !38, !56, !17}
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !44, line: 114, baseType: !45)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !14, line: 203, baseType: !58, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!17, !12, !38}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !14, line: 206, baseType: !32, size: 128, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !21, file: !14, line: 207, baseType: !24, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !14, line: 208, baseType: !17, size: 32, offset: 896)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !14, line: 211, baseType: !65, size: 24, offset: 928)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !14, line: 212, baseType: !69, size: 8, offset: 952)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !14, line: 215, baseType: !32, size: 128, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !14, line: 218, baseType: !17, size: 32, offset: 1088)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !14, line: 219, baseType: !75, size: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !44, line: 44, baseType: !45)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !21, file: !14, line: 222, baseType: !12, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !14, line: 226, baseType: !78, size: 32, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !44, line: 175, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !80, line: 12, baseType: !17)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !21, file: !14, line: 228, baseType: !82, size: 64, offset: 1312)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !44, line: 171, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 163, size: 64, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !83, file: !44, line: 165, baseType: !17, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !83, file: !44, line: 170, baseType: !87, size: 32, offset: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !44, line: 166, size: 32, elements: !88)
!88 = !{!89, !93}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !87, file: !44, line: 168, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !91, line: 124, baseType: !92)
!91 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !87, file: !44, line: 169, baseType: !94, size: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !14, line: 229, baseType: !17, size: 32, offset: 1376)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !13, file: !14, line: 576, baseType: !19, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !13, file: !14, line: 578, baseType: !17, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !13, file: !14, line: 579, baseType: !102, size: 200, offset: 288)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 25)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !13, file: !14, line: 582, baseType: !17, size: 32, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !13, file: !14, line: 583, baseType: !107, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !14, line: 40, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !13, file: !14, line: 585, baseType: !17, size: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !13, file: !14, line: 587, baseType: !111, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !12}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !13, file: !14, line: 590, baseType: !115, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !14, line: 47, size: 256, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !116, file: !14, line: 49, baseType: !115, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !116, file: !14, line: 50, baseType: !17, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !116, file: !14, line: 51, baseType: !124, size: 32, offset: 192)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 32, elements: !70)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !14, line: 25, baseType: !92)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !13, file: !14, line: 591, baseType: !17, size: 32, offset: 832)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !13, file: !14, line: 592, baseType: !115, size: 64, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !13, file: !14, line: 593, baseType: !129, size: 64, offset: 960)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !13, file: !14, line: 596, baseType: !17, size: 32, offset: 1024)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !13, file: !14, line: 597, baseType: !10, size: 64, offset: 1088)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !13, file: !14, line: 632, baseType: !133, size: 2880, offset: 1152)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !14, line: 599, size: 2880, elements: !134)
!134 = !{!135, !185}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !133, file: !14, line: 622, baseType: !136, size: 1728)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !14, line: 601, size: 1728, elements: !137)
!137 = !{!138, !139, !140, !144, !156, !157, !159, !167, !168, !169, !170, !174, !178, !179, !180, !181, !182, !183, !184}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !136, file: !14, line: 603, baseType: !92, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !136, file: !14, line: 604, baseType: !10, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !136, file: !14, line: 605, baseType: !141, size: 208, offset: 128)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 26)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !136, file: !14, line: 606, baseType: !145, size: 288, offset: 352)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !14, line: 55, size: 288, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !145, file: !14, line: 57, baseType: !17, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !145, file: !14, line: 58, baseType: !17, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !145, file: !14, line: 59, baseType: !17, size: 32, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !145, file: !14, line: 60, baseType: !17, size: 32, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !145, file: !14, line: 61, baseType: !17, size: 32, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !145, file: !14, line: 62, baseType: !17, size: 32, offset: 160)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !145, file: !14, line: 63, baseType: !17, size: 32, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !145, file: !14, line: 64, baseType: !17, size: 32, offset: 224)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !145, file: !14, line: 65, baseType: !17, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !136, file: !14, line: 607, baseType: !17, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !136, file: !14, line: 608, baseType: !158, size: 64, offset: 704)
!158 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !136, file: !14, line: 609, baseType: !160, size: 112, offset: 768)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !14, line: 319, size: 112, elements: !161)
!161 = !{!162, !165, !166}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !160, file: !14, line: 320, baseType: !163, size: 48)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 48, elements: !66)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !160, file: !14, line: 321, baseType: !163, size: 48, offset: 48)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !160, file: !14, line: 322, baseType: !164, size: 16, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !136, file: !14, line: 610, baseType: !82, size: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !136, file: !14, line: 611, baseType: !82, size: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !136, file: !14, line: 612, baseType: !82, size: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !136, file: !14, line: 613, baseType: !171, size: 64, offset: 1088)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !136, file: !14, line: 614, baseType: !175, size: 192, offset: 1152)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !136, file: !14, line: 615, baseType: !17, size: 32, offset: 1344)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !136, file: !14, line: 616, baseType: !82, size: 64, offset: 1376)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !136, file: !14, line: 617, baseType: !82, size: 64, offset: 1440)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !136, file: !14, line: 618, baseType: !82, size: 64, offset: 1504)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !136, file: !14, line: 619, baseType: !82, size: 64, offset: 1568)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !136, file: !14, line: 620, baseType: !82, size: 64, offset: 1632)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !136, file: !14, line: 621, baseType: !17, size: 32, offset: 1696)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !133, file: !14, line: 631, baseType: !186, size: 2880)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !133, file: !14, line: 626, size: 2880, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !186, file: !14, line: 629, baseType: !189, size: 1920)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1920, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 30)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !186, file: !14, line: 630, baseType: !193, size: 960, offset: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 960, elements: !190)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !13, file: !14, line: 636, baseType: !195, size: 64, offset: 4032)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !14, line: 93, size: 6336, elements: !197)
!197 = !{!198, !199, !200, !207}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !196, file: !14, line: 94, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !196, file: !14, line: 95, baseType: !17, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !196, file: !14, line: 97, baseType: !201, size: 2048, offset: 128)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 2048, elements: !205)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null}
!205 = !{!206}
!206 = !DISubrange(count: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !196, file: !14, line: 98, baseType: !208, size: 4160, offset: 2176)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !14, line: 74, size: 4160, elements: !209)
!209 = !{!210, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !208, file: !14, line: 75, baseType: !211, size: 2048)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !205)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !208, file: !14, line: 76, baseType: !211, size: 2048, offset: 2048)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !208, file: !14, line: 78, baseType: !125, size: 32, offset: 4096)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !208, file: !14, line: 81, baseType: !125, size: 32, offset: 4128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !13, file: !14, line: 637, baseType: !196, size: 6336, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !13, file: !14, line: 641, baseType: !217, size: 64, offset: 10432)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !17}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !13, file: !14, line: 646, baseType: !222, size: 192, offset: 10496)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !14, line: 291, size: 192, elements: !223)
!223 = !{!224, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !222, file: !14, line: 293, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !222, file: !14, line: 294, baseType: !17, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !222, file: !14, line: 295, baseType: !19, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !13, file: !14, line: 648, baseType: !229, size: 4224, offset: 10688)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 4224, elements: !66)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 40, baseType: !232)
!231 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !44, line: 129, baseType: !233)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !7, file: !1, line: 6, type: !12)
!236 = !DILocalVariable(name: "str", arg: 2, scope: !7, file: !1, line: 6, type: !50)
!237 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 6, type: !230)
!238 = !DILocalVariable(name: "ptr", scope: !7, file: !1, line: 11, type: !50)
!239 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 12, type: !230)
!240 = !DILocalVariable(name: "copy", scope: !7, file: !1, line: 13, type: !10)
!241 = !DILocation(line: 6, column: 1, scope: !7)
!242 = !DILocation(line: 11, column: 16, scope: !7)
!243 = !DILocation(line: 15, column: 3, scope: !7)
!244 = !DILocation(line: 15, column: 14, scope: !7)
!245 = !DILocation(line: 15, column: 18, scope: !7)
!246 = !DILocation(line: 15, column: 11, scope: !7)
!247 = !DILocation(line: 15, column: 21, scope: !7)
!248 = !{!249, !249, i64 0}
!249 = !{!"omnipotent char", !250, i64 0}
!250 = !{!"Simple C/C++ TBAA"}
!251 = !DILocation(line: 16, column: 8, scope: !7)
!252 = distinct !{!252, !243, !251}
!253 = !DILocation(line: 0, scope: !7)
!254 = !DILocation(line: 18, column: 13, scope: !7)
!255 = !DILocation(line: 12, column: 10, scope: !7)
!256 = !DILocation(line: 20, column: 10, scope: !7)
!257 = !DILocation(line: 13, column: 9, scope: !7)
!258 = !DILocation(line: 21, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!260 = !DILocation(line: 21, column: 7, scope: !7)
!261 = !DILocation(line: 23, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 22, column: 5)
!263 = !DILocation(line: 24, column: 7, scope: !262)
!264 = !DILocation(line: 24, column: 17, scope: !262)
!265 = !DILocation(line: 25, column: 5, scope: !262)
!266 = !DILocation(line: 26, column: 3, scope: !7)
