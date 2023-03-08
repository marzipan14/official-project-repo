; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc_u.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @_putc_unlocked_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !9 {
  %4 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2, !dbg !248
  %5 = load i32, i32* %4, align 4, !dbg !250, !tbaa !251
  %6 = add nsw i32 %5, -1, !dbg !250
  store i32 %6, i32* %4, align 4, !dbg !250, !tbaa !251
  %7 = icmp sgt i32 %5, 0, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %7, label %8, label %10, !dbg !262

; <label>:8:                                      ; preds = %3
  %9 = and i32 %1, 255, !dbg !263
  br label %17, !dbg !262

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6, !dbg !264
  %12 = load i32, i32* %11, align 8, !dbg !264, !tbaa !265
  %13 = icmp sgt i32 %5, %12, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %13, label %14, label %23, !dbg !267

; <label>:14:                                     ; preds = %10
  %15 = and i32 %1, 255, !dbg !268
  %16 = icmp eq i32 %15, 10, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br i1 %16, label %23, label %17, !dbg !269

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i32 [ %9, %8 ], [ %15, %14 ], !dbg !263
  %19 = trunc i32 %1 to i8, !dbg !270
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !271
  %21 = load i8*, i8** %20, align 8, !dbg !272, !tbaa !273
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !272
  store i8* %22, i8** %20, align 8, !dbg !272, !tbaa !273
  store i8 %19, i8* %21, align 1, !dbg !274, !tbaa !275
  br label %25, !dbg !276

; <label>:23:                                     ; preds = %14, %10
  %24 = tail call i32 @__swbuf_r(%struct._reent* %0, i32 %1, %struct.__sFILE* nonnull %2) #4, !dbg !277
  br label %25, !dbg !278

; <label>:25:                                     ; preds = %17, %23
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ], !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  ret i32 %26, !dbg !282
}

; Function Attrs: noredzone nounwind
define dso_local i32 @putc_unlocked(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !283 {
  %3 = tail call %struct._reent* @__getreent() #4, !dbg !290
  %4 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !295
  %5 = load i32, i32* %4, align 4, !dbg !296, !tbaa !251
  %6 = add nsw i32 %5, -1, !dbg !296
  store i32 %6, i32* %4, align 4, !dbg !296, !tbaa !251
  %7 = icmp sgt i32 %5, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %7, label %8, label %10, !dbg !298

; <label>:8:                                      ; preds = %2
  %9 = and i32 %0, 255, !dbg !299
  br label %17, !dbg !298

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 6, !dbg !300
  %12 = load i32, i32* %11, align 8, !dbg !300, !tbaa !265
  %13 = icmp sgt i32 %5, %12, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %13, label %14, label %23, !dbg !302

; <label>:14:                                     ; preds = %10
  %15 = and i32 %0, 255, !dbg !303
  %16 = icmp eq i32 %15, 10, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br i1 %16, label %23, label %17, !dbg !304

; <label>:17:                                     ; preds = %14, %8
  %18 = phi i32 [ %9, %8 ], [ %15, %14 ], !dbg !299
  %19 = trunc i32 %0 to i8, !dbg !305
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !306
  %21 = load i8*, i8** %20, align 8, !dbg !307, !tbaa !273
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !307
  store i8* %22, i8** %20, align 8, !dbg !307, !tbaa !273
  store i8 %19, i8* %21, align 1, !dbg !308, !tbaa !275
  br label %25, !dbg !309

; <label>:23:                                     ; preds = %14, %10
  %24 = tail call i32 @__swbuf_r(%struct._reent* %3, i32 %0, %struct.__sFILE* nonnull %1) #4, !dbg !310
  br label %25, !dbg !311

; <label>:25:                                     ; preds = %17, %23
  %26 = phi i32 [ %18, %17 ], [ %24, %23 ], !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  ret i32 %26, !dbg !315
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/putc_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "_putc_unlocked_r", scope: !1, file: !1, line: 73, type: !10, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !12, !231}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !15, line: 569, size: 14912, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !18, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !14, file: !15, line: 571, baseType: !12, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !15, line: 287, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !15, line: 181, size: 1408, elements: !22)
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !39, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !21, file: !15, line: 182, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !21, file: !15, line: 183, baseType: !12, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !21, file: !15, line: 184, baseType: !12, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !21, file: !15, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !21, file: !15, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !21, file: !15, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !15, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !15, line: 118, baseType: !24, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !15, line: 119, baseType: !12, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !21, file: !15, line: 188, baseType: !12, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !15, line: 195, baseType: !38, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !15, line: 197, baseType: !40, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !13, !38, !46, !12}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !44, line: 145, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !15, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!43, !13, !38, !51, !12}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !15, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !13, !38, !57, !12}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !44, line: 114, baseType: !45)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !15, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!12, !13, !38}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !21, file: !15, line: 206, baseType: !32, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !21, file: !15, line: 207, baseType: !24, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !21, file: !15, line: 208, baseType: !12, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !21, file: !15, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !21, file: !15, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !21, file: !15, line: 215, baseType: !32, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !21, file: !15, line: 218, baseType: !12, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !21, file: !15, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !44, line: 44, baseType: !45)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !21, file: !15, line: 222, baseType: !13, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !15, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !44, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !12)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !21, file: !15, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !44, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !44, line: 165, baseType: !12, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !44, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !44, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !44, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !44, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !15, line: 229, baseType: !12, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !14, file: !15, line: 578, baseType: !12, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !14, file: !15, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !14, file: !15, line: 582, baseType: !12, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !14, file: !15, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !15, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !14, file: !15, line: 585, baseType: !12, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !14, file: !15, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !13}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !14, file: !15, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !15, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !15, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !15, line: 50, baseType: !12, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !15, line: 50, baseType: !12, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !15, line: 50, baseType: !12, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !15, line: 50, baseType: !12, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !15, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !15, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !14, file: !15, line: 591, baseType: !12, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !14, file: !15, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !14, file: !15, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !14, file: !15, line: 596, baseType: !12, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !46, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !15, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !15, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !15, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !15, line: 604, baseType: !46, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !15, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !15, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !15, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !15, line: 57, baseType: !12, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !15, line: 58, baseType: !12, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !15, line: 59, baseType: !12, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !15, line: 60, baseType: !12, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !15, line: 61, baseType: !12, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !15, line: 62, baseType: !12, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !15, line: 63, baseType: !12, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !15, line: 64, baseType: !12, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !15, line: 65, baseType: !12, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !15, line: 607, baseType: !12, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !15, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !15, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !15, line: 319, size: 112, elements: !162)
!162 = !{!163, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !15, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !67)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !15, line: 321, baseType: !164, size: 48, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !15, line: 322, baseType: !165, size: 16, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !15, line: 610, baseType: !83, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !15, line: 611, baseType: !83, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !15, line: 612, baseType: !83, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !15, line: 613, baseType: !172, size: 64, offset: 1088)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !15, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !15, line: 615, baseType: !12, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !15, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !15, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !15, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !15, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !15, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !15, line: 621, baseType: !12, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !15, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !15, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !15, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !15, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !14, file: !15, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !15, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !15, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !15, line: 95, baseType: !12, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !197, file: !15, line: 97, baseType: !202, size: 2048, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !197, file: !15, line: 98, baseType: !209, size: 4160, offset: 2176)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !15, line: 74, size: 4160, elements: !210)
!210 = !{!211, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !209, file: !15, line: 75, baseType: !212, size: 2048)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !15, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !15, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !15, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !14, file: !15, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !14, file: !15, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !12}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !14, file: !15, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !15, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !15, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !15, line: 294, baseType: !12, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !15, line: 295, baseType: !19, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !14, file: !15, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 66, baseType: !20)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !237}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !9, file: !1, line: 73, type: !13)
!236 = !DILocalVariable(name: "c", arg: 2, scope: !9, file: !1, line: 73, type: !12)
!237 = !DILocalVariable(name: "fp", arg: 3, scope: !9, file: !1, line: 73, type: !231)
!238 = !DILocation(line: 73, column: 1, scope: !9)
!239 = !DILocalVariable(name: "_ptr", arg: 1, scope: !240, file: !233, line: 687, type: !13)
!240 = distinct !DISubprogram(name: "__sputc_r", scope: !233, file: !233, line: 687, type: !10, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !241)
!241 = !{!239, !242, !243}
!242 = !DILocalVariable(name: "_c", arg: 2, scope: !240, file: !233, line: 687, type: !12)
!243 = !DILocalVariable(name: "_p", arg: 3, scope: !240, file: !233, line: 687, type: !231)
!244 = !DILocation(line: 687, column: 47, scope: !240, inlinedAt: !245)
!245 = distinct !DILocation(line: 80, column: 10, scope: !9)
!246 = !DILocation(line: 687, column: 57, scope: !240, inlinedAt: !245)
!247 = !DILocation(line: 687, column: 67, scope: !240, inlinedAt: !245)
!248 = !DILocation(line: 692, column: 12, scope: !249, inlinedAt: !245)
!249 = distinct !DILexicalBlock(scope: !240, file: !233, line: 692, column: 6)
!250 = !DILocation(line: 692, column: 6, scope: !249, inlinedAt: !245)
!251 = !{!252, !256, i64 12}
!252 = !{!"__sFILE", !253, i64 0, !256, i64 8, !256, i64 12, !257, i64 16, !257, i64 18, !258, i64 24, !256, i64 40, !253, i64 48, !253, i64 56, !253, i64 64, !253, i64 72, !253, i64 80, !258, i64 88, !253, i64 104, !256, i64 112, !254, i64 116, !254, i64 119, !258, i64 120, !256, i64 136, !259, i64 144, !253, i64 152, !256, i64 160, !260, i64 164, !256, i64 172}
!253 = !{!"any pointer", !254, i64 0}
!254 = !{!"omnipotent char", !255, i64 0}
!255 = !{!"Simple C/C++ TBAA"}
!256 = !{!"int", !254, i64 0}
!257 = !{!"short", !254, i64 0}
!258 = !{!"__sbuf", !253, i64 0, !256, i64 8}
!259 = !{!"long", !254, i64 0}
!260 = !{!"", !256, i64 0, !254, i64 4}
!261 = !DILocation(line: 692, column: 15, scope: !249, inlinedAt: !245)
!262 = !DILocation(line: 692, column: 20, scope: !249, inlinedAt: !245)
!263 = !DILocation(line: 693, column: 10, scope: !249, inlinedAt: !245)
!264 = !DILocation(line: 692, column: 38, scope: !249, inlinedAt: !245)
!265 = !{!252, !256, i64 40}
!266 = !DILocation(line: 692, column: 31, scope: !249, inlinedAt: !245)
!267 = !DILocation(line: 692, column: 47, scope: !249, inlinedAt: !245)
!268 = !DILocation(line: 692, column: 59, scope: !249, inlinedAt: !245)
!269 = !DILocation(line: 692, column: 6, scope: !240, inlinedAt: !245)
!270 = !DILocation(line: 693, column: 23, scope: !249, inlinedAt: !245)
!271 = !DILocation(line: 693, column: 16, scope: !249, inlinedAt: !245)
!272 = !DILocation(line: 693, column: 18, scope: !249, inlinedAt: !245)
!273 = !{!252, !253, i64 0}
!274 = !DILocation(line: 693, column: 21, scope: !249, inlinedAt: !245)
!275 = !{!254, !254, i64 0}
!276 = !DILocation(line: 693, column: 3, scope: !249, inlinedAt: !245)
!277 = !DILocation(line: 695, column: 11, scope: !249, inlinedAt: !245)
!278 = !DILocation(line: 695, column: 3, scope: !249, inlinedAt: !245)
!279 = !DILocation(line: 0, scope: !249, inlinedAt: !245)
!280 = !DILocation(line: 0, scope: !9)
!281 = !DILocation(line: 696, column: 1, scope: !240, inlinedAt: !245)
!282 = !DILocation(line: 80, column: 3, scope: !9)
!283 = distinct !DISubprogram(name: "putc_unlocked", scope: !1, file: !1, line: 85, type: !284, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{!12, !12, !231}
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "c", arg: 1, scope: !283, file: !1, line: 85, type: !12)
!288 = !DILocalVariable(name: "fp", arg: 2, scope: !283, file: !1, line: 85, type: !231)
!289 = !DILocation(line: 85, column: 1, scope: !283)
!290 = !DILocation(line: 91, column: 21, scope: !283)
!291 = !DILocation(line: 687, column: 47, scope: !240, inlinedAt: !292)
!292 = distinct !DILocation(line: 91, column: 10, scope: !283)
!293 = !DILocation(line: 687, column: 57, scope: !240, inlinedAt: !292)
!294 = !DILocation(line: 687, column: 67, scope: !240, inlinedAt: !292)
!295 = !DILocation(line: 692, column: 12, scope: !249, inlinedAt: !292)
!296 = !DILocation(line: 692, column: 6, scope: !249, inlinedAt: !292)
!297 = !DILocation(line: 692, column: 15, scope: !249, inlinedAt: !292)
!298 = !DILocation(line: 692, column: 20, scope: !249, inlinedAt: !292)
!299 = !DILocation(line: 693, column: 10, scope: !249, inlinedAt: !292)
!300 = !DILocation(line: 692, column: 38, scope: !249, inlinedAt: !292)
!301 = !DILocation(line: 692, column: 31, scope: !249, inlinedAt: !292)
!302 = !DILocation(line: 692, column: 47, scope: !249, inlinedAt: !292)
!303 = !DILocation(line: 692, column: 59, scope: !249, inlinedAt: !292)
!304 = !DILocation(line: 692, column: 6, scope: !240, inlinedAt: !292)
!305 = !DILocation(line: 693, column: 23, scope: !249, inlinedAt: !292)
!306 = !DILocation(line: 693, column: 16, scope: !249, inlinedAt: !292)
!307 = !DILocation(line: 693, column: 18, scope: !249, inlinedAt: !292)
!308 = !DILocation(line: 693, column: 21, scope: !249, inlinedAt: !292)
!309 = !DILocation(line: 693, column: 3, scope: !249, inlinedAt: !292)
!310 = !DILocation(line: 695, column: 11, scope: !249, inlinedAt: !292)
!311 = !DILocation(line: 695, column: 3, scope: !249, inlinedAt: !292)
!312 = !DILocation(line: 0, scope: !249, inlinedAt: !292)
!313 = !DILocation(line: 0, scope: !283)
!314 = !DILocation(line: 696, column: 1, scope: !240, inlinedAt: !292)
!315 = !DILocation(line: 91, column: 3, scope: !283)
