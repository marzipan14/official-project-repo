; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, {}*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
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
define dso_local i64 @__sread(%struct._reent*, i8* nocapture, i8*, i32) local_unnamed_addr #0 !dbg !231 {
  %5 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !242
  %6 = bitcast i8* %5 to i16*, !dbg !242
  %7 = load i16, i16* %6, align 2, !dbg !242, !tbaa !243
  %8 = sext i16 %7 to i32, !dbg !253
  %9 = sext i32 %3 to i64, !dbg !254
  %10 = tail call i64 @_read_r(%struct._reent* %0, i32 %8, i8* %2, i64 %9) #3, !dbg !255
  %11 = icmp sgt i64 %10, -1, !dbg !257
  br i1 %11, label %12, label %17, !dbg !259

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %1, i64 144, !dbg !261
  %14 = bitcast i8* %13 to i64*, !dbg !261
  %15 = load i64, i64* %14, align 8, !dbg !262, !tbaa !263
  %16 = add nsw i64 %15, %10, !dbg !262
  store i64 %16, i64* %14, align 8, !dbg !262, !tbaa !263
  br label %22, !dbg !264

; <label>:17:                                     ; preds = %4
  %18 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !265
  %19 = bitcast i8* %18 to i16*, !dbg !265
  %20 = load i16, i16* %19, align 8, !dbg !266, !tbaa !267
  %21 = and i16 %20, -4097, !dbg !266
  store i16 %21, i16* %19, align 8, !dbg !266, !tbaa !267
  br label %22

; <label>:22:                                     ; preds = %17, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  ret i64 %10, !dbg !268
}

; Function Attrs: noredzone
declare dso_local i64 @_read_r(%struct._reent*, i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @__seofread(%struct._reent* nocapture readnone, i8* nocapture readnone, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !269 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  ret i64 0, !dbg !276
}

; Function Attrs: noredzone nounwind
define dso_local i64 @__swrite(%struct._reent*, i8* nocapture, i8*, i32) local_unnamed_addr #0 !dbg !277 {
  %5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !286
  %6 = bitcast i8* %5 to i16*, !dbg !286
  %7 = load i16, i16* %6, align 8, !dbg !286, !tbaa !267
  %8 = and i16 %7, 256, !dbg !288
  %9 = icmp eq i16 %8, 0, !dbg !288
  %10 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !289
  %11 = bitcast i8* %10 to i16*, !dbg !289
  br i1 %9, label %17, label %12, !dbg !290

; <label>:12:                                     ; preds = %4
  %13 = load i16, i16* %11, align 2, !dbg !292, !tbaa !243
  %14 = sext i16 %13 to i32, !dbg !293
  %15 = tail call i64 @_lseek_r(%struct._reent* %0, i32 %14, i64 0, i32 2) #3, !dbg !294
  %16 = load i16, i16* %6, align 8, !dbg !295, !tbaa !267
  br label %17, !dbg !294

; <label>:17:                                     ; preds = %4, %12
  %18 = phi i16 [ %16, %12 ], [ %7, %4 ], !dbg !295
  %19 = and i16 %18, -4097, !dbg !295
  store i16 %19, i16* %6, align 8, !dbg !295, !tbaa !267
  %20 = load i16, i16* %11, align 2, !dbg !296, !tbaa !243
  %21 = sext i16 %20 to i32, !dbg !297
  %22 = sext i32 %3 to i64, !dbg !298
  %23 = tail call i64 @_write_r(%struct._reent* %0, i32 %21, i8* %2, i64 %22) #3, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  ret i64 %23, !dbg !301
}

; Function Attrs: noredzone
declare dso_local i64 @_lseek_r(%struct._reent*, i32, i64, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @_write_r(%struct._reent*, i32, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @__sseek(%struct._reent*, i8* nocapture, i64, i32) local_unnamed_addr #0 !dbg !302 {
  %5 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !311
  %6 = bitcast i8* %5 to i16*, !dbg !311
  %7 = load i16, i16* %6, align 2, !dbg !311, !tbaa !243
  %8 = sext i16 %7 to i32, !dbg !312
  %9 = tail call i64 @_lseek_r(%struct._reent* %0, i32 %8, i64 %2, i32 %3) #3, !dbg !313
  %10 = icmp eq i64 %9, -1, !dbg !315
  %11 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !317
  %12 = bitcast i8* %11 to i16*, !dbg !317
  %13 = load i16, i16* %12, align 8, !dbg !317, !tbaa !267
  br i1 %10, label %14, label %16, !dbg !319

; <label>:14:                                     ; preds = %4
  %15 = and i16 %13, -4097, !dbg !320
  store i16 %15, i16* %12, align 8, !dbg !320, !tbaa !267
  br label %20, !dbg !321

; <label>:16:                                     ; preds = %4
  %17 = or i16 %13, 4096, !dbg !323
  store i16 %17, i16* %12, align 8, !dbg !323, !tbaa !267
  %18 = getelementptr inbounds i8, i8* %1, i64 144, !dbg !324
  %19 = bitcast i8* %18 to i64*, !dbg !324
  store i64 %9, i64* %19, align 8, !dbg !325, !tbaa !263
  br label %20

; <label>:20:                                     ; preds = %16, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  ret i64 %9, !dbg !326
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__sclose(%struct._reent*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !327 {
  %3 = getelementptr inbounds i8, i8* %1, i64 18, !dbg !334
  %4 = bitcast i8* %3 to i16*, !dbg !334
  %5 = load i16, i16* %4, align 2, !dbg !334, !tbaa !243
  %6 = sext i16 %5 to i32, !dbg !335
  %7 = tail call i32 @_close_r(%struct._reent* %0, i32 %6) #3, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  ret i32 %7, !dbg !337
}

; Function Attrs: noredzone
declare dso_local i32 @_close_r(%struct._reent*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!227, !228, !229}
!llvm.ident = !{!230}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/stdio.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !219}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !6, line: 66, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !8, line: 287, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 181, size: 1408, elements: !10)
!10 = !{!11, !14, !16, !17, !19, !20, !25, !26, !28, !194, !200, !205, !209, !210, !211, !212, !214, !216, !217, !218, !220, !221, !225, !226}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !9, file: !8, line: 182, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !9, file: !8, line: 183, baseType: !15, size: 32, offset: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !9, file: !8, line: 184, baseType: !15, size: 32, offset: 96)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !8, line: 185, baseType: !18, size: 16, offset: 128)
!18 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !9, file: !8, line: 186, baseType: !18, size: 16, offset: 144)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !9, file: !8, line: 187, baseType: !21, size: 128, offset: 192)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 117, size: 128, elements: !22)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !21, file: !8, line: 118, baseType: !12, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !21, file: !8, line: 119, baseType: !15, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !9, file: !8, line: 188, baseType: !15, size: 32, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !9, file: !8, line: 195, baseType: !27, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !9, file: !8, line: 197, baseType: !29, size: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !35, !27, !79, !15}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !33, line: 145, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !8, line: 569, size: 14912, elements: !37)
!37 = !{!38, !39, !41, !42, !43, !44, !49, !50, !53, !54, !58, !73, !74, !75, !77, !78, !80, !158, !179, !180, !185, !192}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !36, file: !8, line: 571, baseType: !15, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !36, file: !8, line: 576, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !36, file: !8, line: 576, baseType: !40, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !36, file: !8, line: 576, baseType: !40, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !36, file: !8, line: 578, baseType: !15, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !36, file: !8, line: 579, baseType: !45, size: 200, offset: 288)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !{!48}
!48 = !DISubrange(count: 25)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !36, file: !8, line: 582, baseType: !15, size: 32, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !36, file: !8, line: 583, baseType: !51, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !8, line: 40, flags: DIFlagFwdDecl)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !36, file: !8, line: 585, baseType: !15, size: 32, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !36, file: !8, line: 587, baseType: !55, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !35}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !36, file: !8, line: 590, baseType: !59, size: 64, offset: 768)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !8, line: 47, size: 256, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !60, file: !8, line: 49, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !60, file: !8, line: 50, baseType: !15, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !60, file: !8, line: 50, baseType: !15, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !60, file: !8, line: 50, baseType: !15, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !60, file: !8, line: 50, baseType: !15, size: 32, offset: 160)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !60, file: !8, line: 51, baseType: !68, size: 32, offset: 192)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 32, elements: !71)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !8, line: 25, baseType: !70)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !36, file: !8, line: 591, baseType: !15, size: 32, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !36, file: !8, line: 592, baseType: !59, size: 64, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !36, file: !8, line: 593, baseType: !76, size: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !36, file: !8, line: 596, baseType: !15, size: 32, offset: 1024)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !36, file: !8, line: 597, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !36, file: !8, line: 632, baseType: !81, size: 2880, offset: 1152)
!81 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !36, file: !8, line: 599, size: 2880, elements: !82)
!82 = !{!83, !149}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !81, file: !8, line: 622, baseType: !84, size: 1728)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !8, line: 601, size: 1728, elements: !85)
!85 = !{!86, !87, !88, !92, !104, !105, !107, !117, !132, !133, !134, !138, !142, !143, !144, !145, !146, !147, !148}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !84, file: !8, line: 603, baseType: !70, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !84, file: !8, line: 604, baseType: !79, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !84, file: !8, line: 605, baseType: !89, size: 208, offset: 128)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 26)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !84, file: !8, line: 606, baseType: !93, size: 288, offset: 352)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !8, line: 55, size: 288, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !93, file: !8, line: 57, baseType: !15, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !93, file: !8, line: 58, baseType: !15, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !93, file: !8, line: 59, baseType: !15, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !93, file: !8, line: 60, baseType: !15, size: 32, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !93, file: !8, line: 61, baseType: !15, size: 32, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !93, file: !8, line: 62, baseType: !15, size: 32, offset: 160)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !93, file: !8, line: 63, baseType: !15, size: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !93, file: !8, line: 64, baseType: !15, size: 32, offset: 224)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !93, file: !8, line: 65, baseType: !15, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !84, file: !8, line: 607, baseType: !15, size: 32, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !84, file: !8, line: 608, baseType: !106, size: 64, offset: 704)
!106 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !84, file: !8, line: 609, baseType: !108, size: 112, offset: 768)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !8, line: 319, size: 112, elements: !109)
!109 = !{!110, !115, !116}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !108, file: !8, line: 320, baseType: !111, size: 48)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 48, elements: !113)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !{!114}
!114 = !DISubrange(count: 3)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !108, file: !8, line: 321, baseType: !111, size: 48, offset: 48)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !108, file: !8, line: 322, baseType: !112, size: 16, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !84, file: !8, line: 610, baseType: !118, size: 64, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !33, line: 171, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 163, size: 64, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !119, file: !33, line: 165, baseType: !15, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !119, file: !33, line: 170, baseType: !123, size: 32, offset: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !33, line: 166, size: 32, elements: !124)
!124 = !{!125, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !123, file: !33, line: 168, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !127, line: 124, baseType: !70)
!127 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !123, file: !33, line: 169, baseType: !129, size: 32)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !84, file: !8, line: 611, baseType: !118, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !84, file: !8, line: 612, baseType: !118, size: 64, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !84, file: !8, line: 613, baseType: !135, size: 64, offset: 1088)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !84, file: !8, line: 614, baseType: !139, size: 192, offset: 1152)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 24)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !84, file: !8, line: 615, baseType: !15, size: 32, offset: 1344)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !84, file: !8, line: 616, baseType: !118, size: 64, offset: 1376)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !84, file: !8, line: 617, baseType: !118, size: 64, offset: 1440)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !84, file: !8, line: 618, baseType: !118, size: 64, offset: 1504)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !84, file: !8, line: 619, baseType: !118, size: 64, offset: 1568)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !84, file: !8, line: 620, baseType: !118, size: 64, offset: 1632)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !84, file: !8, line: 621, baseType: !15, size: 32, offset: 1696)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !81, file: !8, line: 631, baseType: !150, size: 2880)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !8, line: 626, size: 2880, elements: !151)
!151 = !{!152, !156}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !150, file: !8, line: 629, baseType: !153, size: 1920)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1920, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 30)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !150, file: !8, line: 630, baseType: !157, size: 960, offset: 1920)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 960, elements: !154)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !36, file: !8, line: 636, baseType: !159, size: 64, offset: 4032)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !8, line: 93, size: 6336, elements: !161)
!161 = !{!162, !163, !164, !171}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !160, file: !8, line: 94, baseType: !159, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !160, file: !8, line: 95, baseType: !15, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !160, file: !8, line: 97, baseType: !165, size: 2048, offset: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2048, elements: !169)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null}
!169 = !{!170}
!170 = !DISubrange(count: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !160, file: !8, line: 98, baseType: !172, size: 4160, offset: 2176)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !8, line: 74, size: 4160, elements: !173)
!173 = !{!174, !176, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !172, file: !8, line: 75, baseType: !175, size: 2048)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !169)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !172, file: !8, line: 76, baseType: !175, size: 2048, offset: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !172, file: !8, line: 78, baseType: !69, size: 32, offset: 4096)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !172, file: !8, line: 81, baseType: !69, size: 32, offset: 4128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !36, file: !8, line: 637, baseType: !160, size: 6336, offset: 4096)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !36, file: !8, line: 641, baseType: !181, size: 64, offset: 10432)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !15}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !36, file: !8, line: 646, baseType: !186, size: 192, offset: 10496)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !8, line: 291, size: 192, elements: !187)
!187 = !{!188, !190, !191}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !186, file: !8, line: 293, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !186, file: !8, line: 294, baseType: !15, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !186, file: !8, line: 295, baseType: !40, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !36, file: !8, line: 648, baseType: !193, size: 4224, offset: 10688)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 4224, elements: !113)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !9, file: !8, line: 199, baseType: !195, size: 64, offset: 512)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!32, !35, !27, !198, !15}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !9, file: !8, line: 202, baseType: !201, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !35, !27, !204, !15}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !33, line: 114, baseType: !34)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !9, file: !8, line: 203, baseType: !206, size: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!15, !35, !27}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !9, file: !8, line: 206, baseType: !21, size: 128, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !9, file: !8, line: 207, baseType: !12, size: 64, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !9, file: !8, line: 208, baseType: !15, size: 32, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !9, file: !8, line: 211, baseType: !213, size: 24, offset: 928)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !113)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !9, file: !8, line: 212, baseType: !215, size: 8, offset: 952)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !71)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !9, file: !8, line: 215, baseType: !21, size: 128, offset: 960)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !9, file: !8, line: 218, baseType: !15, size: 32, offset: 1088)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !8, line: 219, baseType: !219, size: 64, offset: 1152)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !33, line: 44, baseType: !34)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !9, file: !8, line: 222, baseType: !35, size: 64, offset: 1216)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !9, file: !8, line: 226, baseType: !222, size: 32, offset: 1280)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !33, line: 175, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !224, line: 12, baseType: !15)
!224 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !9, file: !8, line: 228, baseType: !118, size: 64, offset: 1312)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !9, file: !8, line: 229, baseType: !15, size: 32, offset: 1376)
!227 = !{i32 2, !"Dwarf Version", i32 4}
!228 = !{i32 2, !"Debug Info Version", i32 3}
!229 = !{i32 1, !"wchar_size", i32 4}
!230 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!231 = distinct !DISubprogram(name: "__sread", scope: !1, file: !1, line: 33, type: !30, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !232)
!232 = !{!233, !234, !235, !236, !237, !238}
!233 = !DILocalVariable(name: "ptr", arg: 1, scope: !231, file: !1, line: 33, type: !35)
!234 = !DILocalVariable(name: "cookie", arg: 2, scope: !231, file: !1, line: 33, type: !27)
!235 = !DILocalVariable(name: "buf", arg: 3, scope: !231, file: !1, line: 33, type: !79)
!236 = !DILocalVariable(name: "n", arg: 4, scope: !231, file: !1, line: 33, type: !15)
!237 = !DILocalVariable(name: "fp", scope: !231, file: !1, line: 39, type: !4)
!238 = !DILocalVariable(name: "ret", scope: !231, file: !1, line: 40, type: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !240, line: 200, baseType: !32)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !DILocation(line: 33, column: 1, scope: !231)
!242 = !DILocation(line: 48, column: 27, scope: !231)
!243 = !{!244, !249, i64 18}
!244 = !{!"__sFILE", !245, i64 0, !248, i64 8, !248, i64 12, !249, i64 16, !249, i64 18, !250, i64 24, !248, i64 40, !245, i64 48, !245, i64 56, !245, i64 64, !245, i64 72, !245, i64 80, !250, i64 88, !245, i64 104, !248, i64 112, !246, i64 116, !246, i64 119, !250, i64 120, !248, i64 136, !251, i64 144, !245, i64 152, !248, i64 160, !252, i64 164, !248, i64 172}
!245 = !{!"any pointer", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"int", !246, i64 0}
!249 = !{!"short", !246, i64 0}
!250 = !{!"__sbuf", !245, i64 0, !248, i64 8}
!251 = !{!"long", !246, i64 0}
!252 = !{!"", !248, i64 0, !246, i64 4}
!253 = !DILocation(line: 48, column: 23, scope: !231)
!254 = !DILocation(line: 48, column: 39, scope: !231)
!255 = !DILocation(line: 48, column: 9, scope: !231)
!256 = !DILocation(line: 40, column: 20, scope: !231)
!257 = !DILocation(line: 57, column: 11, scope: !258)
!258 = distinct !DILexicalBlock(scope: !231, file: !1, line: 57, column: 7)
!259 = !DILocation(line: 57, column: 7, scope: !231)
!260 = !DILocation(line: 39, column: 18, scope: !231)
!261 = !DILocation(line: 58, column: 9, scope: !258)
!262 = !DILocation(line: 58, column: 17, scope: !258)
!263 = !{!244, !251, i64 144}
!264 = !DILocation(line: 58, column: 5, scope: !258)
!265 = !DILocation(line: 60, column: 9, scope: !258)
!266 = !DILocation(line: 60, column: 16, scope: !258)
!267 = !{!244, !249, i64 16}
!268 = !DILocation(line: 61, column: 3, scope: !231)
!269 = distinct !DISubprogram(name: "__seofread", scope: !1, file: !1, line: 66, type: !30, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !270)
!270 = !{!271, !272, !273, !274}
!271 = !DILocalVariable(name: "_ptr", arg: 1, scope: !269, file: !1, line: 66, type: !35)
!272 = !DILocalVariable(name: "cookie", arg: 2, scope: !269, file: !1, line: 66, type: !27)
!273 = !DILocalVariable(name: "buf", arg: 3, scope: !269, file: !1, line: 66, type: !79)
!274 = !DILocalVariable(name: "len", arg: 4, scope: !269, file: !1, line: 66, type: !15)
!275 = !DILocation(line: 66, column: 1, scope: !269)
!276 = !DILocation(line: 72, column: 3, scope: !269)
!277 = distinct !DISubprogram(name: "__swrite", scope: !1, file: !1, line: 76, type: !196, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !278)
!278 = !{!279, !280, !281, !282, !283, !284}
!279 = !DILocalVariable(name: "ptr", arg: 1, scope: !277, file: !1, line: 76, type: !35)
!280 = !DILocalVariable(name: "cookie", arg: 2, scope: !277, file: !1, line: 76, type: !27)
!281 = !DILocalVariable(name: "buf", arg: 3, scope: !277, file: !1, line: 76, type: !198)
!282 = !DILocalVariable(name: "n", arg: 4, scope: !277, file: !1, line: 76, type: !15)
!283 = !DILocalVariable(name: "fp", scope: !277, file: !1, line: 82, type: !4)
!284 = !DILocalVariable(name: "w", scope: !277, file: !1, line: 83, type: !239)
!285 = !DILocation(line: 76, column: 1, scope: !277)
!286 = !DILocation(line: 88, column: 11, scope: !287)
!287 = distinct !DILexicalBlock(scope: !277, file: !1, line: 88, column: 7)
!288 = !DILocation(line: 88, column: 18, scope: !287)
!289 = !DILocation(line: 0, scope: !287)
!290 = !DILocation(line: 88, column: 7, scope: !277)
!291 = !DILocation(line: 82, column: 18, scope: !277)
!292 = !DILocation(line: 89, column: 24, scope: !287)
!293 = !DILocation(line: 89, column: 20, scope: !287)
!294 = !DILocation(line: 89, column: 5, scope: !287)
!295 = !DILocation(line: 90, column: 14, scope: !277)
!296 = !DILocation(line: 97, column: 26, scope: !277)
!297 = !DILocation(line: 97, column: 22, scope: !277)
!298 = !DILocation(line: 97, column: 38, scope: !277)
!299 = !DILocation(line: 97, column: 7, scope: !277)
!300 = !DILocation(line: 83, column: 11, scope: !277)
!301 = !DILocation(line: 104, column: 3, scope: !277)
!302 = distinct !DISubprogram(name: "__sseek", scope: !1, file: !1, line: 108, type: !202, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DILocalVariable(name: "ptr", arg: 1, scope: !302, file: !1, line: 108, type: !35)
!305 = !DILocalVariable(name: "cookie", arg: 2, scope: !302, file: !1, line: 108, type: !27)
!306 = !DILocalVariable(name: "offset", arg: 3, scope: !302, file: !1, line: 108, type: !204)
!307 = !DILocalVariable(name: "whence", arg: 4, scope: !302, file: !1, line: 108, type: !15)
!308 = !DILocalVariable(name: "fp", scope: !302, file: !1, line: 114, type: !4)
!309 = !DILocalVariable(name: "ret", scope: !302, file: !1, line: 115, type: !219)
!310 = !DILocation(line: 108, column: 1, scope: !302)
!311 = !DILocation(line: 117, column: 28, scope: !302)
!312 = !DILocation(line: 117, column: 24, scope: !302)
!313 = !DILocation(line: 117, column: 9, scope: !302)
!314 = !DILocation(line: 115, column: 19, scope: !302)
!315 = !DILocation(line: 118, column: 11, scope: !316)
!316 = distinct !DILexicalBlock(scope: !302, file: !1, line: 118, column: 7)
!317 = !DILocation(line: 0, scope: !318)
!318 = distinct !DILexicalBlock(scope: !316, file: !1, line: 121, column: 5)
!319 = !DILocation(line: 118, column: 7, scope: !302)
!320 = !DILocation(line: 119, column: 16, scope: !316)
!321 = !DILocation(line: 119, column: 5, scope: !316)
!322 = !DILocation(line: 114, column: 18, scope: !302)
!323 = !DILocation(line: 122, column: 18, scope: !318)
!324 = !DILocation(line: 123, column: 11, scope: !318)
!325 = !DILocation(line: 123, column: 19, scope: !318)
!326 = !DILocation(line: 125, column: 3, scope: !302)
!327 = distinct !DISubprogram(name: "__sclose", scope: !1, file: !1, line: 129, type: !207, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!328 = !{!329, !330, !331}
!329 = !DILocalVariable(name: "ptr", arg: 1, scope: !327, file: !1, line: 129, type: !35)
!330 = !DILocalVariable(name: "cookie", arg: 2, scope: !327, file: !1, line: 129, type: !27)
!331 = !DILocalVariable(name: "fp", scope: !327, file: !1, line: 133, type: !4)
!332 = !DILocation(line: 129, column: 1, scope: !327)
!333 = !DILocation(line: 133, column: 9, scope: !327)
!334 = !DILocation(line: 135, column: 29, scope: !327)
!335 = !DILocation(line: 135, column: 25, scope: !327)
!336 = !DILocation(line: 135, column: 10, scope: !327)
!337 = !DILocation(line: 135, column: 3, scope: !327)
