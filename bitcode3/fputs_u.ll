; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs_u.c"
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

; Function Attrs: noredzone nounwind
define dso_local i32 @_fputs_unlocked_r(%struct._reent*, i8* noalias nocapture readonly, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !10 {
  %4 = icmp eq %struct._reent* %0, null, !dbg !247
  br i1 %4, label %10, label %5, !dbg !247

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !247
  %7 = load i32, i32* %6, align 8, !dbg !247, !tbaa !249
  %8 = icmp eq i32 %7, 0, !dbg !247
  br i1 %8, label %9, label %10, !dbg !246

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !247
  br label %10, !dbg !247

; <label>:10:                                     ; preds = %5, %3, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !258
  %12 = load i16, i16* %11, align 8, !dbg !258, !tbaa !260
  %13 = and i16 %12, 8, !dbg !258
  %14 = icmp eq i16 %13, 0, !dbg !258
  br i1 %14, label %19, label %15, !dbg !258

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !258
  %17 = load i8*, i8** %16, align 8, !dbg !258, !tbaa !266
  %18 = icmp eq i8* %17, null, !dbg !258
  br i1 %18, label %19, label %22, !dbg !258

; <label>:19:                                     ; preds = %15, %10
  %20 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #3, !dbg !258
  %21 = icmp eq i32 %20, 0, !dbg !258
  br i1 %21, label %22, label %53, !dbg !267

; <label>:22:                                     ; preds = %19, %15
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %26, !dbg !268

; <label>:26:                                     ; preds = %50, %22
  %27 = phi i8* [ %1, %22 ], [ %31, %50 ], !dbg !269
  %28 = load i8, i8* %27, align 1, !dbg !272, !tbaa !273
  %29 = icmp eq i8 %28, 0, !dbg !268
  br i1 %29, label %53, label %30, !dbg !268

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !274
  %32 = sext i8 %28 to i32, !dbg !275
  %33 = load i32, i32* %23, align 4, !dbg !287, !tbaa !289
  %34 = add nsw i32 %33, -1, !dbg !287
  store i32 %34, i32* %23, align 4, !dbg !287, !tbaa !289
  %35 = icmp sgt i32 %33, 0, !dbg !290
  br i1 %35, label %36, label %38, !dbg !291

; <label>:36:                                     ; preds = %30
  %37 = and i32 %32, 255, !dbg !292
  br label %44, !dbg !291

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %25, align 8, !dbg !293, !tbaa !294
  %40 = icmp sle i32 %33, %39, !dbg !295
  %41 = and i32 %32, 255, !dbg !296
  %42 = icmp eq i32 %41, 10, !dbg !296
  %43 = or i1 %42, %40, !dbg !297
  br i1 %43, label %48, label %44, !dbg !297

; <label>:44:                                     ; preds = %38, %36
  %45 = phi i32 [ %37, %36 ], [ %41, %38 ], !dbg !292
  %46 = load i8*, i8** %24, align 8, !dbg !298, !tbaa !299
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !298
  store i8* %47, i8** %24, align 8, !dbg !298, !tbaa !299
  store i8 %28, i8* %46, align 1, !dbg !300, !tbaa !273
  br label %50, !dbg !301

; <label>:48:                                     ; preds = %38
  %49 = tail call i32 @__swbuf_r(%struct._reent* %0, i32 %32, %struct.__sFILE* nonnull %2) #3, !dbg !302
  br label %50, !dbg !303

; <label>:50:                                     ; preds = %44, %48
  %51 = phi i32 [ %45, %44 ], [ %49, %48 ], !dbg !304
  %52 = icmp eq i32 %51, -1, !dbg !305
  br i1 %52, label %53, label %26, !dbg !306, !llvm.loop !307

; <label>:53:                                     ; preds = %50, %26, %19
  %54 = phi i32 [ -1, %19 ], [ -1, %50 ], [ 0, %26 ], !dbg !309
  ret i32 %54, !dbg !310
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @fputs_unlocked(i8* noalias nocapture readonly, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !311 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !318
  %4 = tail call i32 @_fputs_unlocked_r(%struct._reent* %3, i8* %0, %struct.__sFILE* %1) #5, !dbg !319
  ret i32 %4, !dbg !320
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_fputs_unlocked_r", scope: !11, file: !11, line: 113, type: !12, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputs.c", directory: "/root/.unikraft/apps/redis/build")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !232, !233}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !17, line: 569, size: 14912, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !20, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !16, file: !17, line: 571, baseType: !14, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !17, line: 287, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !17, line: 181, size: 1408, elements: !24)
!24 = !{!25, !28, !29, !30, !32, !33, !38, !39, !40, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !23, file: !17, line: 182, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !23, file: !17, line: 183, baseType: !14, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !23, file: !17, line: 184, baseType: !14, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !17, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !23, file: !17, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !23, file: !17, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !17, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !17, line: 118, baseType: !26, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !17, line: 119, baseType: !14, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !23, file: !17, line: 188, baseType: !14, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !23, file: !17, line: 195, baseType: !4, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !23, file: !17, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !15, !4, !47, !14}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !23, file: !17, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!44, !15, !4, !52, !14}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !23, file: !17, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !15, !4, !58, !14}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !23, file: !17, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!14, !15, !4}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !23, file: !17, line: 206, baseType: !34, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !23, file: !17, line: 207, baseType: !26, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !23, file: !17, line: 208, baseType: !14, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !23, file: !17, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !23, file: !17, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !23, file: !17, line: 215, baseType: !34, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !23, file: !17, line: 218, baseType: !14, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !17, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !23, file: !17, line: 222, baseType: !15, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !17, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !14)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !23, file: !17, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !45, line: 165, baseType: !14, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !45, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !45, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !45, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !45, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !17, line: 229, baseType: !14, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !16, file: !17, line: 578, baseType: !14, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !16, file: !17, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !16, file: !17, line: 582, baseType: !14, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !16, file: !17, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !16, file: !17, line: 585, baseType: !14, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !16, file: !17, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !15}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !16, file: !17, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !17, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !17, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !17, line: 50, baseType: !14, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !17, line: 50, baseType: !14, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !17, line: 50, baseType: !14, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !17, line: 50, baseType: !14, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !17, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !17, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !16, file: !17, line: 591, baseType: !14, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !16, file: !17, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !16, file: !17, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !16, file: !17, line: 596, baseType: !14, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !16, file: !17, line: 597, baseType: !47, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !16, file: !17, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !17, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !17, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !17, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !17, line: 604, baseType: !47, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !17, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !17, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !17, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !17, line: 57, baseType: !14, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !17, line: 58, baseType: !14, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !17, line: 59, baseType: !14, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !17, line: 60, baseType: !14, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !17, line: 61, baseType: !14, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !17, line: 62, baseType: !14, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !17, line: 63, baseType: !14, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !17, line: 64, baseType: !14, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !17, line: 65, baseType: !14, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !17, line: 607, baseType: !14, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !17, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !17, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !17, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !17, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !17, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !17, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !17, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !17, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !17, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !17, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !17, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !17, line: 615, baseType: !14, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !17, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !17, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !17, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !17, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !17, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !17, line: 621, baseType: !14, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !17, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !17, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !17, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !17, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !16, file: !17, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !17, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !17, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !17, line: 95, baseType: !14, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !17, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !17, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !17, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !17, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !17, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !17, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !17, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !16, file: !17, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !16, file: !17, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !14}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !16, file: !17, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !17, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !17, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !17, line: 294, baseType: !14, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !17, line: 295, baseType: !21, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !16, file: !17, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4224, elements: !68)
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !236, line: 66, baseType: !22)
!236 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!237 = !{!238, !239, !240, !241, !242}
!238 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !11, line: 113, type: !15)
!239 = !DILocalVariable(name: "s", arg: 2, scope: !10, file: !11, line: 113, type: !232)
!240 = !DILocalVariable(name: "fp", arg: 3, scope: !10, file: !11, line: 113, type: !233)
!241 = !DILocalVariable(name: "p", scope: !10, file: !11, line: 136, type: !52)
!242 = !DILocalVariable(name: "_check_init_ptr", scope: !243, file: !11, line: 138, type: !15)
!243 = distinct !DILexicalBlock(scope: !10, file: !11, line: 138, column: 3)
!244 = !DILocation(line: 113, column: 1, scope: !10)
!245 = !DILocation(line: 136, column: 16, scope: !10)
!246 = !DILocation(line: 138, column: 3, scope: !243)
!247 = !DILocation(line: 138, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !11, line: 138, column: 3)
!249 = !{!250, !251, i64 80}
!250 = !{!"_reent", !251, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !251, i64 32, !252, i64 36, !251, i64 64, !254, i64 72, !251, i64 80, !254, i64 88, !254, i64 96, !251, i64 104, !254, i64 112, !254, i64 120, !251, i64 128, !254, i64 136, !252, i64 144, !254, i64 504, !255, i64 512, !254, i64 1304, !257, i64 1312, !252, i64 1336}
!251 = !{!"int", !252, i64 0}
!252 = !{!"omnipotent char", !253, i64 0}
!253 = !{!"Simple C/C++ TBAA"}
!254 = !{!"any pointer", !252, i64 0}
!255 = !{!"_atexit", !254, i64 0, !251, i64 8, !252, i64 16, !256, i64 272}
!256 = !{!"_on_exit_args", !252, i64 0, !252, i64 256, !251, i64 512, !251, i64 516}
!257 = !{!"_glue", !254, i64 0, !251, i64 8, !254, i64 16}
!258 = !DILocation(line: 143, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !10, file: !11, line: 143, column: 7)
!260 = !{!261, !262, i64 16}
!261 = !{!"__sFILE", !254, i64 0, !251, i64 8, !251, i64 12, !262, i64 16, !262, i64 18, !263, i64 24, !251, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !263, i64 88, !254, i64 104, !251, i64 112, !252, i64 116, !252, i64 119, !263, i64 120, !251, i64 136, !264, i64 144, !254, i64 152, !251, i64 160, !265, i64 164, !251, i64 172}
!262 = !{!"short", !252, i64 0}
!263 = !{!"__sbuf", !254, i64 0, !251, i64 8}
!264 = !{!"long", !252, i64 0}
!265 = !{!"", !251, i64 0, !252, i64 4}
!266 = !{!261, !254, i64 24}
!267 = !DILocation(line: 143, column: 7, scope: !10)
!268 = !DILocation(line: 146, column: 3, scope: !10)
!269 = !DILocation(line: 0, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !11, line: 148, column: 11)
!271 = distinct !DILexicalBlock(scope: !10, file: !11, line: 147, column: 5)
!272 = !DILocation(line: 146, column: 10, scope: !10)
!273 = !{!252, !252, i64 0}
!274 = !DILocation(line: 148, column: 29, scope: !270)
!275 = !DILocation(line: 148, column: 27, scope: !270)
!276 = !DILocalVariable(name: "_ptr", arg: 1, scope: !277, file: !236, line: 687, type: !15)
!277 = distinct !DISubprogram(name: "__sputc_r", scope: !236, file: !236, line: 687, type: !278, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!14, !15, !14, !234}
!280 = !{!276, !281, !282}
!281 = !DILocalVariable(name: "_c", arg: 2, scope: !277, file: !236, line: 687, type: !14)
!282 = !DILocalVariable(name: "_p", arg: 3, scope: !277, file: !236, line: 687, type: !234)
!283 = !DILocation(line: 687, column: 47, scope: !277, inlinedAt: !284)
!284 = distinct !DILocation(line: 148, column: 11, scope: !270)
!285 = !DILocation(line: 687, column: 57, scope: !277, inlinedAt: !284)
!286 = !DILocation(line: 687, column: 67, scope: !277, inlinedAt: !284)
!287 = !DILocation(line: 692, column: 6, scope: !288, inlinedAt: !284)
!288 = distinct !DILexicalBlock(scope: !277, file: !236, line: 692, column: 6)
!289 = !{!261, !251, i64 12}
!290 = !DILocation(line: 692, column: 15, scope: !288, inlinedAt: !284)
!291 = !DILocation(line: 692, column: 20, scope: !288, inlinedAt: !284)
!292 = !DILocation(line: 693, column: 10, scope: !288, inlinedAt: !284)
!293 = !DILocation(line: 692, column: 38, scope: !288, inlinedAt: !284)
!294 = !{!261, !251, i64 40}
!295 = !DILocation(line: 692, column: 31, scope: !288, inlinedAt: !284)
!296 = !DILocation(line: 692, column: 59, scope: !288, inlinedAt: !284)
!297 = !DILocation(line: 692, column: 47, scope: !288, inlinedAt: !284)
!298 = !DILocation(line: 693, column: 18, scope: !288, inlinedAt: !284)
!299 = !{!261, !254, i64 0}
!300 = !DILocation(line: 693, column: 21, scope: !288, inlinedAt: !284)
!301 = !DILocation(line: 693, column: 3, scope: !288, inlinedAt: !284)
!302 = !DILocation(line: 695, column: 11, scope: !288, inlinedAt: !284)
!303 = !DILocation(line: 695, column: 3, scope: !288, inlinedAt: !284)
!304 = !DILocation(line: 0, scope: !288, inlinedAt: !284)
!305 = !DILocation(line: 148, column: 37, scope: !270)
!306 = !DILocation(line: 148, column: 11, scope: !271)
!307 = distinct !{!307, !268, !308}
!308 = !DILocation(line: 150, column: 5, scope: !10)
!309 = !DILocation(line: 0, scope: !10)
!310 = !DILocation(line: 158, column: 1, scope: !10)
!311 = distinct !DISubprogram(name: "fputs_unlocked", scope: !11, file: !11, line: 162, type: !312, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!14, !232, !233}
!314 = !{!315, !316}
!315 = !DILocalVariable(name: "s", arg: 1, scope: !311, file: !11, line: 162, type: !232)
!316 = !DILocalVariable(name: "fp", arg: 2, scope: !311, file: !11, line: 162, type: !233)
!317 = !DILocation(line: 162, column: 1, scope: !311)
!318 = !DILocation(line: 166, column: 20, scope: !311)
!319 = !DILocation(line: 166, column: 10, scope: !311)
!320 = !DILocation(line: 166, column: 3, scope: !311)
