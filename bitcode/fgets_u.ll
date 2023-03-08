; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets_u.c"
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
define dso_local i8* @_fgets_unlocked_r(%struct._reent*, i8* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !11 {
  %5 = icmp slt i32 %2, 2, !dbg !253
  br i1 %5, label %58, label %6, !dbg !255

; <label>:6:                                      ; preds = %4
  %7 = icmp eq %struct._reent* %0, null, !dbg !258
  br i1 %7, label %13, label %8, !dbg !258

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !258
  %10 = load i32, i32* %9, align 8, !dbg !258, !tbaa !260
  %11 = icmp eq i32 %10, 0, !dbg !258
  br i1 %11, label %12, label %13, !dbg !257

; <label>:12:                                     ; preds = %8
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !258
  br label %13, !dbg !258

; <label>:13:                                     ; preds = %8, %6, %12
  %14 = add nsw i32 %2, -1, !dbg !269
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 1
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 0
  br label %17, !dbg !270

; <label>:17:                                     ; preds = %47, %13
  %18 = phi i8* [ %1, %13 ], [ %53, %47 ], !dbg !271
  %19 = phi i32 [ %14, %13 ], [ %54, %47 ], !dbg !273
  %20 = load i32, i32* %15, align 8, !dbg !274, !tbaa !276
  %21 = icmp eq i32 %20, 0, !dbg !282
  br i1 %21, label %22, label %29, !dbg !283

; <label>:22:                                     ; preds = %17
  %23 = tail call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #3, !dbg !284
  %24 = icmp eq i32 %23, 0, !dbg !284
  br i1 %24, label %27, label %25, !dbg !287

; <label>:25:                                     ; preds = %22
  %26 = icmp eq i8* %18, %1, !dbg !288
  br i1 %26, label %58, label %56, !dbg !291

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %15, align 8, !dbg !292, !tbaa !276
  br label %29, !dbg !293

; <label>:29:                                     ; preds = %27, %17
  %30 = phi i32 [ %28, %27 ], [ %20, %17 ]
  %31 = load i8*, i8** %16, align 8, !dbg !294, !tbaa !295
  %32 = icmp ugt i32 %30, %19, !dbg !297
  %33 = select i1 %32, i32 %19, i32 %30, !dbg !299
  %34 = sext i32 %33 to i64, !dbg !300
  %35 = tail call i8* @memchr(i8* %31, i32 10, i64 %34) #3, !dbg !302
  %36 = icmp eq i8* %35, null, !dbg !304
  br i1 %36, label %47, label %37, !dbg !306

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !307
  %39 = ptrtoint i8* %38 to i64, !dbg !309
  %40 = ptrtoint i8* %31 to i64, !dbg !309
  %41 = sub i64 %39, %40, !dbg !309
  %42 = load i32, i32* %15, align 8, !dbg !310, !tbaa !276
  %43 = trunc i64 %41 to i32, !dbg !310
  %44 = sub i32 %42, %43, !dbg !310
  store i32 %44, i32* %15, align 8, !dbg !310, !tbaa !276
  store i8* %38, i8** %16, align 8, !dbg !311, !tbaa !295
  %45 = tail call i8* @memcpy(i8* %18, i8* %31, i64 %41) #3, !dbg !312
  %46 = getelementptr inbounds i8, i8* %18, i64 %41, !dbg !313
  store i8 0, i8* %46, align 1, !dbg !314, !tbaa !315
  br label %58, !dbg !316

; <label>:47:                                     ; preds = %29
  %48 = load i32, i32* %15, align 8, !dbg !317, !tbaa !276
  %49 = sub i32 %48, %33, !dbg !317
  store i32 %49, i32* %15, align 8, !dbg !317, !tbaa !276
  %50 = load i8*, i8** %16, align 8, !dbg !318, !tbaa !295
  %51 = getelementptr inbounds i8, i8* %50, i64 %34, !dbg !318
  store i8* %51, i8** %16, align 8, !dbg !318, !tbaa !295
  %52 = tail call i8* @memcpy(i8* %18, i8* %31, i64 %34) #3, !dbg !319
  %53 = getelementptr inbounds i8, i8* %18, i64 %34, !dbg !320
  %54 = sub i32 %19, %33, !dbg !321
  %55 = icmp eq i32 %54, 0, !dbg !322
  br i1 %55, label %56, label %17, !dbg !323, !llvm.loop !324

; <label>:56:                                     ; preds = %47, %25
  %57 = phi i8* [ %18, %25 ], [ %53, %47 ], !dbg !271
  store i8 0, i8* %57, align 1, !dbg !326, !tbaa !315
  br label %58, !dbg !327

; <label>:58:                                     ; preds = %25, %4, %56, %37
  %59 = phi i8* [ %1, %56 ], [ %1, %37 ], [ null, %4 ], [ null, %25 ], !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i8* %59, !dbg !329
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @fgets_unlocked(i8* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !330 {
  %4 = tail call %struct._reent* @__getreent() #3, !dbg !338
  %5 = tail call i8* @_fgets_unlocked_r(%struct._reent* %4, i8* %0, i32 %1, %struct.__sFILE* %2) #4, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  ret i8* %5, !dbg !340
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "_fgets_unlocked_r", scope: !12, file: !12, line: 125, type: !13, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgets.c", directory: "/root/.unikraft/apps/redis/build")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !17, !232, !22, !233}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !23, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !27)
!27 = !{!28, !29, !30, !31, !33, !34, !39, !40, !41, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !19, line: 182, baseType: !4, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !19, line: 183, baseType: !22, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !19, line: 184, baseType: !22, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !19, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !19, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !19, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !19, line: 118, baseType: !4, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !19, line: 119, baseType: !22, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !19, line: 188, baseType: !22, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !19, line: 195, baseType: !6, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !19, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !17, !6, !15, !22}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !19, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!45, !17, !6, !52, !22}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !19, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !17, !6, !58, !22}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !19, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!22, !17, !6}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !19, line: 206, baseType: !35, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !26, file: !19, line: 207, baseType: !4, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !19, line: 208, baseType: !22, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !19, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !19, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !19, line: 215, baseType: !35, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !19, line: 218, baseType: !22, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !19, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !26, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !26, file: !19, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !22)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !26, file: !19, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !46, line: 165, baseType: !22, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !46, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !46, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !46, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !46, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !26, file: !19, line: 229, baseType: !22, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !22, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !22, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !22, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !17}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !19, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !19, line: 50, baseType: !22, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !19, line: 50, baseType: !22, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !19, line: 50, baseType: !22, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !19, line: 50, baseType: !22, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !19, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !22, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !22, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !15, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !19, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !19, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !19, line: 604, baseType: !15, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !19, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !19, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !19, line: 57, baseType: !22, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !19, line: 58, baseType: !22, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !19, line: 59, baseType: !22, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !19, line: 60, baseType: !22, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !19, line: 61, baseType: !22, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !19, line: 62, baseType: !22, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !19, line: 63, baseType: !22, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !19, line: 64, baseType: !22, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !19, line: 65, baseType: !22, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !19, line: 607, baseType: !22, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !19, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !19, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !19, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !19, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !19, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !19, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !19, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !19, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !19, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !19, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !19, line: 615, baseType: !22, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !19, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !19, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !19, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !19, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !19, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !19, line: 621, baseType: !22, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !19, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !19, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !19, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !19, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !19, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !19, line: 95, baseType: !22, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !19, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !19, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !19, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !19, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !19, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !19, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !22}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !19, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !19, line: 294, baseType: !22, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !19, line: 295, baseType: !24, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4224, elements: !68)
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !236, line: 66, baseType: !25)
!236 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!237 = !{!238, !239, !240, !241, !242, !247, !248, !249, !250}
!238 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !12, line: 125, type: !17)
!239 = !DILocalVariable(name: "buf", arg: 2, scope: !11, file: !12, line: 125, type: !232)
!240 = !DILocalVariable(name: "n", arg: 3, scope: !11, file: !12, line: 125, type: !22)
!241 = !DILocalVariable(name: "fp", arg: 4, scope: !11, file: !12, line: 125, type: !233)
!242 = !DILocalVariable(name: "len", scope: !11, file: !12, line: 131, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !244, line: 40, baseType: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !46, line: 129, baseType: !246)
!246 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!247 = !DILocalVariable(name: "s", scope: !11, file: !12, line: 132, type: !15)
!248 = !DILocalVariable(name: "p", scope: !11, file: !12, line: 133, type: !4)
!249 = !DILocalVariable(name: "t", scope: !11, file: !12, line: 133, type: !4)
!250 = !DILocalVariable(name: "_check_init_ptr", scope: !251, file: !12, line: 140, type: !17)
!251 = distinct !DILexicalBlock(scope: !11, file: !12, line: 140, column: 3)
!252 = !DILocation(line: 125, column: 1, scope: !11)
!253 = !DILocation(line: 135, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !11, file: !12, line: 135, column: 7)
!255 = !DILocation(line: 135, column: 7, scope: !11)
!256 = !DILocation(line: 132, column: 9, scope: !11)
!257 = !DILocation(line: 140, column: 3, scope: !251)
!258 = !DILocation(line: 140, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !251, file: !12, line: 140, column: 3)
!260 = !{!261, !262, i64 80}
!261 = !{!"_reent", !262, i64 0, !265, i64 8, !265, i64 16, !265, i64 24, !262, i64 32, !263, i64 36, !262, i64 64, !265, i64 72, !262, i64 80, !265, i64 88, !265, i64 96, !262, i64 104, !265, i64 112, !265, i64 120, !262, i64 128, !265, i64 136, !263, i64 144, !265, i64 504, !266, i64 512, !265, i64 1304, !268, i64 1312, !263, i64 1336}
!262 = !{!"int", !263, i64 0}
!263 = !{!"omnipotent char", !264, i64 0}
!264 = !{!"Simple C/C++ TBAA"}
!265 = !{!"any pointer", !263, i64 0}
!266 = !{!"_atexit", !265, i64 0, !262, i64 8, !263, i64 16, !267, i64 272}
!267 = !{!"_on_exit_args", !263, i64 0, !263, i64 256, !262, i64 512, !262, i64 516}
!268 = !{!"_glue", !265, i64 0, !262, i64 8, !265, i64 16}
!269 = !DILocation(line: 165, column: 4, scope: !11)
!270 = !DILocation(line: 166, column: 3, scope: !11)
!271 = !DILocation(line: 0, scope: !272)
!272 = distinct !DILexicalBlock(scope: !11, file: !12, line: 167, column: 5)
!273 = !DILocation(line: 0, scope: !11)
!274 = !DILocation(line: 171, column: 22, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !12, line: 171, column: 11)
!276 = !{!277, !262, i64 8}
!277 = !{!"__sFILE", !265, i64 0, !262, i64 8, !262, i64 12, !278, i64 16, !278, i64 18, !279, i64 24, !262, i64 40, !265, i64 48, !265, i64 56, !265, i64 64, !265, i64 72, !265, i64 80, !279, i64 88, !265, i64 104, !262, i64 112, !263, i64 116, !263, i64 119, !279, i64 120, !262, i64 136, !280, i64 144, !265, i64 152, !262, i64 160, !281, i64 164, !262, i64 172}
!278 = !{!"short", !263, i64 0}
!279 = !{!"__sbuf", !265, i64 0, !262, i64 8}
!280 = !{!"long", !263, i64 0}
!281 = !{!"", !262, i64 0, !263, i64 4}
!282 = !DILocation(line: 171, column: 26, scope: !275)
!283 = !DILocation(line: 171, column: 11, scope: !272)
!284 = !DILocation(line: 173, column: 8, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !12, line: 173, column: 8)
!286 = distinct !DILexicalBlock(scope: !275, file: !12, line: 172, column: 2)
!287 = !DILocation(line: 173, column: 8, scope: !286)
!288 = !DILocation(line: 176, column: 14, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !12, line: 176, column: 12)
!290 = distinct !DILexicalBlock(scope: !285, file: !12, line: 174, column: 6)
!291 = !DILocation(line: 176, column: 12, scope: !290)
!292 = !DILocation(line: 183, column: 14, scope: !286)
!293 = !DILocation(line: 184, column: 2, scope: !286)
!294 = !DILocation(line: 185, column: 15, scope: !272)
!295 = !{!277, !265, i64 0}
!296 = !DILocation(line: 133, column: 18, scope: !11)
!297 = !DILocation(line: 193, column: 15, scope: !298)
!298 = distinct !DILexicalBlock(scope: !272, file: !12, line: 193, column: 11)
!299 = !DILocation(line: 193, column: 11, scope: !272)
!300 = !DILocation(line: 0, scope: !286)
!301 = !DILocation(line: 131, column: 10, scope: !11)
!302 = !DILocation(line: 195, column: 29, scope: !272)
!303 = !DILocation(line: 133, column: 22, scope: !11)
!304 = !DILocation(line: 196, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !272, file: !12, line: 196, column: 11)
!306 = !DILocation(line: 196, column: 11, scope: !272)
!307 = !DILocation(line: 198, column: 10, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !12, line: 197, column: 2)
!309 = !DILocation(line: 198, column: 14, scope: !308)
!310 = !DILocation(line: 199, column: 11, scope: !308)
!311 = !DILocation(line: 200, column: 11, scope: !308)
!312 = !DILocation(line: 201, column: 15, scope: !308)
!313 = !DILocation(line: 202, column: 4, scope: !308)
!314 = !DILocation(line: 202, column: 11, scope: !308)
!315 = !{!263, !263, i64 0}
!316 = !DILocation(line: 204, column: 4, scope: !308)
!317 = !DILocation(line: 206, column: 14, scope: !272)
!318 = !DILocation(line: 207, column: 14, scope: !272)
!319 = !DILocation(line: 208, column: 18, scope: !272)
!320 = !DILocation(line: 209, column: 9, scope: !272)
!321 = !DILocation(line: 211, column: 13, scope: !11)
!322 = !DILocation(line: 211, column: 21, scope: !11)
!323 = !DILocation(line: 210, column: 5, scope: !272)
!324 = distinct !{!324, !270, !325}
!325 = !DILocation(line: 211, column: 25, scope: !11)
!326 = !DILocation(line: 212, column: 6, scope: !11)
!327 = !DILocation(line: 214, column: 3, scope: !11)
!328 = !DILocation(line: 0, scope: !308)
!329 = !DILocation(line: 215, column: 1, scope: !11)
!330 = distinct !DISubprogram(name: "fgets_unlocked", scope: !12, file: !12, line: 220, type: !331, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!15, !232, !22, !233}
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(name: "buf", arg: 1, scope: !330, file: !12, line: 220, type: !232)
!335 = !DILocalVariable(name: "n", arg: 2, scope: !330, file: !12, line: 220, type: !22)
!336 = !DILocalVariable(name: "fp", arg: 3, scope: !330, file: !12, line: 220, type: !233)
!337 = !DILocation(line: 220, column: 1, scope: !330)
!338 = !DILocation(line: 225, column: 20, scope: !330)
!339 = !DILocation(line: 225, column: 10, scope: !330)
!340 = !DILocation(line: 225, column: 3, scope: !330)
