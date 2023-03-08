; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local local_unnamed_addr global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @_mbstowcs_r(%struct._reent*, i32* noalias, i8* noalias, i64, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !15 {
  %6 = icmp eq i32* %1, null, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %6, label %7, label %8, !dbg !308

; <label>:7:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br label %10, !dbg !310

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i64 %3, 0, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %9, label %46, label %10, !dbg !310

; <label>:10:                                     ; preds = %7, %8
  %11 = phi i64 [ %3, %8 ], [ 1, %7 ]
  br label %12, !dbg !312

; <label>:12:                                     ; preds = %10, %42
  %13 = phi i8* [ %36, %42 ], [ %2, %10 ]
  %14 = phi i64 [ %37, %42 ], [ 0, %10 ]
  %15 = phi i32* [ %44, %42 ], [ %1, %10 ]
  %16 = phi i64 [ %43, %42 ], [ %11, %10 ]
  %17 = tail call %struct._reent* @__getreent() #3, !dbg !312
  %18 = getelementptr inbounds %struct._reent, %struct._reent* %17, i64 0, i32 7, !dbg !318
  %19 = load %struct.__locale_t*, %struct.__locale_t** %18, align 8, !dbg !318, !tbaa !319
  %20 = icmp eq %struct.__locale_t* %19, null, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %20, label %21, label %22, !dbg !312

; <label>:21:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br label %22, !dbg !312

; <label>:22:                                     ; preds = %12, %21
  %23 = phi %struct.__locale_t* [ @__global_locale, %21 ], [ %19, %12 ], !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %24 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %23, i64 0, i32 2, !dbg !332
  %25 = load i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)** %24, align 8, !dbg !332, !tbaa !333
  %26 = tail call i32 @__locale_mb_cur_max() #3, !dbg !336
  %27 = sext i32 %26 to i64, !dbg !336
  %28 = tail call i32 %25(%struct._reent* %0, i32* %15, i8* %13, i64 %27, %struct._mbstate_t* %4) #3, !dbg !332
  %29 = icmp slt i32 %28, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %29, label %30, label %32, !dbg !340

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %4, i64 0, i32 0, !dbg !341
  store i32 0, i32* %31, align 4, !dbg !343, !tbaa !344
  br label %46, !dbg !346

; <label>:32:                                     ; preds = %22
  %33 = icmp eq i32 %28, 0, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %33, label %46, label %34, !dbg !349

; <label>:34:                                     ; preds = %32
  %35 = sext i32 %28 to i64, !dbg !350
  %36 = getelementptr inbounds i8, i8* %13, i64 %35, !dbg !350
  %37 = add i64 %14, 1, !dbg !351
  %38 = icmp eq i32* %15, null, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %38, label %42, label %39, !dbg !354

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !355
  %41 = add i64 %16, -1, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br label %42, !dbg !358

; <label>:42:                                     ; preds = %34, %39
  %43 = phi i64 [ %41, %39 ], [ %16, %34 ]
  %44 = phi i32* [ %40, %39 ], [ null, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  %45 = icmp eq i64 %43, 0, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %45, label %46, label %12, !dbg !310, !llvm.loop !359

; <label>:46:                                     ; preds = %42, %32, %8, %30
  %47 = phi i64 [ -1, %30 ], [ 0, %8 ], [ %37, %42 ], [ %14, %32 ], !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  ret i64 %47, !dbg !362
}

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 40, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !9, line: 129, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "_mbstowcs_r", scope: !1, file: !1, line: 6, type: !16, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !20, !292, !293, !6, !127}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 58, baseType: !10)
!19 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !22, line: 569, size: 14912, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !26, !104, !105, !106, !107, !111, !112, !173, !174, !178, !190, !191, !192, !194, !195, !196, !258, !277, !278, !283, !290}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !21, file: !22, line: 571, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !21, file: !22, line: 576, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !22, line: 287, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !22, line: 181, size: 1408, elements: !30)
!30 = !{!31, !34, !35, !36, !38, !39, !44, !45, !47, !53, !59, !64, !68, !69, !70, !71, !75, !79, !80, !81, !83, !84, !88, !103}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !29, file: !22, line: 182, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !29, file: !22, line: 183, baseType: !25, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !29, file: !22, line: 184, baseType: !25, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !22, line: 185, baseType: !37, size: 16, offset: 128)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !29, file: !22, line: 186, baseType: !37, size: 16, offset: 144)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !29, file: !22, line: 187, baseType: !40, size: 128, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !22, line: 117, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !40, file: !22, line: 118, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !40, file: !22, line: 119, baseType: !25, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !29, file: !22, line: 188, baseType: !25, size: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !29, file: !22, line: 195, baseType: !46, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !29, file: !22, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !20, !46, !4, !25}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !29, file: !22, line: 199, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!51, !20, !46, !57, !25}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !29, file: !22, line: 202, baseType: !60, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !20, !46, !63, !25}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !9, line: 114, baseType: !52)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !29, file: !22, line: 203, baseType: !65, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!25, !20, !46}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !29, file: !22, line: 206, baseType: !40, size: 128, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !29, file: !22, line: 207, baseType: !32, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !29, file: !22, line: 208, baseType: !25, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !29, file: !22, line: 211, baseType: !72, size: 24, offset: 928)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !29, file: !22, line: 212, baseType: !76, size: 8, offset: 952)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !29, file: !22, line: 215, baseType: !40, size: 128, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !29, file: !22, line: 218, baseType: !25, size: 32, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !22, line: 219, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !52)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !29, file: !22, line: 222, baseType: !20, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !22, line: 226, baseType: !85, size: 32, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !9, line: 175, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !87, line: 12, baseType: !25)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !29, file: !22, line: 228, baseType: !89, size: 64, offset: 1312)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !9, line: 171, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 163, size: 64, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !90, file: !9, line: 165, baseType: !25, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !90, file: !9, line: 170, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !9, line: 166, size: 32, elements: !95)
!95 = !{!96, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !94, file: !9, line: 168, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !19, line: 124, baseType: !98)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !94, file: !9, line: 169, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !22, line: 229, baseType: !25, size: 32, offset: 1376)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !21, file: !22, line: 576, baseType: !27, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !21, file: !22, line: 576, baseType: !27, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !21, file: !22, line: 578, baseType: !25, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !21, file: !22, line: 579, baseType: !108, size: 200, offset: 288)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 25)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !21, file: !22, line: 582, baseType: !25, size: 32, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !21, file: !22, line: 583, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !115, line: 178, size: 3392, elements: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!116 = !{!117, !122, !130, !135, !136, !137, !165, !169, !172}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !114, file: !115, line: 180, baseType: !118, size: 1792)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1792, elements: !119)
!119 = !{!120, !121}
!120 = !DISubrange(count: 7)
!121 = !DISubrange(count: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !114, file: !115, line: 181, baseType: !123, size: 64, offset: 1792)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!25, !20, !4, !126, !127}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !19, line: 83, baseType: !25)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !129, line: 86, baseType: !89)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !114, file: !115, line: 183, baseType: !131, size: 64, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!25, !20, !134, !57, !6, !127}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !114, file: !115, line: 185, baseType: !25, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !114, file: !115, line: 186, baseType: !4, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !114, file: !115, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !4, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !4, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !4, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !4, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !4, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !4, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !4, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !4, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !4, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !4, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !5, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !5, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !5, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !5, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !5, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !5, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !5, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !5, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !5, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !5, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !5, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !5, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !5, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !5, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !114, file: !115, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !114, file: !115, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 256, elements: !171)
!171 = !{!121}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !114, file: !115, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !21, file: !22, line: 585, baseType: !25, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !21, file: !22, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !20}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !21, file: !22, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !22, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !22, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !22, line: 50, baseType: !25, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !22, line: 50, baseType: !25, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !22, line: 50, baseType: !25, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !22, line: 50, baseType: !25, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !22, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !77)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !22, line: 25, baseType: !98)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !21, file: !22, line: 591, baseType: !25, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !21, file: !22, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !21, file: !22, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !21, file: !22, line: 596, baseType: !25, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !21, file: !22, line: 597, baseType: !4, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !21, file: !22, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !22, line: 599, size: 2880, elements: !198)
!198 = !{!199, !249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !22, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !22, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !22, line: 603, baseType: !98, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !22, line: 604, baseType: !4, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !22, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !22, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !22, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !22, line: 57, baseType: !25, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !22, line: 58, baseType: !25, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !22, line: 59, baseType: !25, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !22, line: 60, baseType: !25, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !22, line: 61, baseType: !25, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !22, line: 62, baseType: !25, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !22, line: 63, baseType: !25, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !22, line: 64, baseType: !25, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !22, line: 65, baseType: !25, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !22, line: 607, baseType: !25, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !22, line: 608, baseType: !222, size: 64, offset: 704)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !22, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !22, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !22, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !73)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !22, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !22, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !22, line: 610, baseType: !89, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !22, line: 611, baseType: !89, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !22, line: 612, baseType: !89, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !22, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !22, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !22, line: 615, baseType: !25, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !22, line: 616, baseType: !89, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !22, line: 617, baseType: !89, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !22, line: 618, baseType: !89, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !22, line: 619, baseType: !89, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !22, line: 620, baseType: !89, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !22, line: 621, baseType: !25, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !22, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !22, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !22, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !22, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !21, file: !22, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !22, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !22, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !22, line: 95, baseType: !25, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !22, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !171)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !22, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !22, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !22, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !171)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !22, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !22, line: 78, baseType: !189, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !22, line: 81, baseType: !189, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !21, file: !22, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !21, file: !22, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !25}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !21, file: !22, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !22, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !22, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !22, line: 294, baseType: !25, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !22, line: 295, baseType: !27, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !21, file: !22, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 4224, elements: !73)
!292 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302}
!295 = !DILocalVariable(name: "r", arg: 1, scope: !15, file: !1, line: 6, type: !20)
!296 = !DILocalVariable(name: "pwcs", arg: 2, scope: !15, file: !1, line: 6, type: !292)
!297 = !DILocalVariable(name: "s", arg: 3, scope: !15, file: !1, line: 6, type: !293)
!298 = !DILocalVariable(name: "n", arg: 4, scope: !15, file: !1, line: 6, type: !6)
!299 = !DILocalVariable(name: "state", arg: 5, scope: !15, file: !1, line: 6, type: !127)
!300 = !DILocalVariable(name: "ret", scope: !15, file: !1, line: 13, type: !6)
!301 = !DILocalVariable(name: "t", scope: !15, file: !1, line: 14, type: !4)
!302 = !DILocalVariable(name: "bytes", scope: !15, file: !1, line: 15, type: !25)
!303 = !DILocation(line: 6, column: 1, scope: !15)
!304 = !DILocation(line: 13, column: 10, scope: !15)
!305 = !DILocation(line: 14, column: 9, scope: !15)
!306 = !DILocation(line: 17, column: 8, scope: !307)
!307 = distinct !DILexicalBlock(scope: !15, file: !1, line: 17, column: 7)
!308 = !DILocation(line: 17, column: 7, scope: !15)
!309 = !DILocation(line: 0, scope: !15)
!310 = !DILocation(line: 19, column: 3, scope: !15)
!311 = !DILocation(line: 19, column: 12, scope: !15)
!312 = !DILocation(line: 230, column: 10, scope: !313, inlinedAt: !316)
!313 = distinct !DISubprogram(name: "__get_current_locale", scope: !115, file: !115, line: 228, type: !314, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!314 = !DISubroutineType(types: !315)
!315 = !{!113}
!316 = distinct !DILocation(line: 21, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !15, file: !1, line: 20, column: 5)
!318 = !DILocation(line: 230, column: 18, scope: !313, inlinedAt: !316)
!319 = !{!320, !324, i64 72}
!320 = !{!"_reent", !321, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !321, i64 32, !322, i64 36, !321, i64 64, !324, i64 72, !321, i64 80, !324, i64 88, !324, i64 96, !321, i64 104, !324, i64 112, !324, i64 120, !321, i64 128, !324, i64 136, !322, i64 144, !324, i64 504, !325, i64 512, !324, i64 1304, !327, i64 1312, !322, i64 1336}
!321 = !{!"int", !322, i64 0}
!322 = !{!"omnipotent char", !323, i64 0}
!323 = !{!"Simple C/C++ TBAA"}
!324 = !{!"any pointer", !322, i64 0}
!325 = !{!"_atexit", !324, i64 0, !321, i64 8, !322, i64 16, !326, i64 272}
!326 = !{!"_on_exit_args", !322, i64 0, !322, i64 256, !321, i64 512, !321, i64 516}
!327 = !{!"_glue", !324, i64 0, !321, i64 8, !324, i64 16}
!328 = !DILocation(line: 213, column: 3, scope: !329, inlinedAt: !330)
!329 = distinct !DISubprogram(name: "__get_global_locale", scope: !115, file: !115, line: 210, type: !314, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!330 = distinct !DILocation(line: 230, column: 29, scope: !313, inlinedAt: !316)
!331 = !DILocation(line: 230, column: 3, scope: !313, inlinedAt: !316)
!332 = !DILocation(line: 21, column: 15, scope: !317)
!333 = !{!334, !324, i64 232}
!334 = !{!"__locale_t", !322, i64 0, !324, i64 224, !324, i64 232, !321, i64 240, !324, i64 248, !335, i64 256, !322, i64 352, !322, i64 354, !322, i64 386}
!335 = !{!"lconv", !324, i64 0, !324, i64 8, !324, i64 16, !324, i64 24, !324, i64 32, !324, i64 40, !324, i64 48, !324, i64 56, !324, i64 64, !324, i64 72, !322, i64 80, !322, i64 81, !322, i64 82, !322, i64 83, !322, i64 84, !322, i64 85, !322, i64 86, !322, i64 87, !322, i64 88, !322, i64 89, !322, i64 90, !322, i64 91, !322, i64 92, !322, i64 93}
!336 = !DILocation(line: 21, column: 37, scope: !317)
!337 = !DILocation(line: 15, column: 7, scope: !15)
!338 = !DILocation(line: 22, column: 17, scope: !339)
!339 = distinct !DILexicalBlock(scope: !317, file: !1, line: 22, column: 11)
!340 = !DILocation(line: 22, column: 11, scope: !317)
!341 = !DILocation(line: 24, column: 11, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !1, line: 23, column: 2)
!343 = !DILocation(line: 24, column: 19, scope: !342)
!344 = !{!345, !321, i64 0}
!345 = !{!"", !321, i64 0, !322, i64 4}
!346 = !DILocation(line: 25, column: 4, scope: !342)
!347 = !DILocation(line: 27, column: 22, scope: !348)
!348 = distinct !DILexicalBlock(scope: !339, file: !1, line: 27, column: 16)
!349 = !DILocation(line: 27, column: 16, scope: !339)
!350 = !DILocation(line: 29, column: 9, scope: !317)
!351 = !DILocation(line: 30, column: 7, scope: !317)
!352 = !DILocation(line: 31, column: 11, scope: !353)
!353 = distinct !DILexicalBlock(scope: !317, file: !1, line: 31, column: 11)
!354 = !DILocation(line: 31, column: 11, scope: !317)
!355 = !DILocation(line: 33, column: 4, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 32, column: 2)
!357 = !DILocation(line: 34, column: 4, scope: !356)
!358 = !DILocation(line: 35, column: 2, scope: !356)
!359 = distinct !{!359, !310, !360}
!360 = !DILocation(line: 36, column: 5, scope: !15)
!361 = !DILocation(line: 0, scope: !342)
!362 = !DILocation(line: 38, column: 1, scope: !15)
