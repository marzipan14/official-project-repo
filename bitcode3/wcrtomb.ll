; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcrtomb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcrtomb.c"
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

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcrtomb_r(%struct._reent*, i8*, i32, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !14 {
  %5 = alloca [10 x i8], align 1
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0, !dbg !304
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %6) #4, !dbg !304
  %7 = icmp eq i8* %1, null, !dbg !306
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !308
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 7, !dbg !313
  %10 = load %struct.__locale_t*, %struct.__locale_t** %9, align 8, !dbg !313, !tbaa !314
  %11 = icmp eq %struct.__locale_t* %10, null, !dbg !308
  %12 = select i1 %11, %struct.__locale_t* @__global_locale, %struct.__locale_t* %10, !dbg !308
  %13 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %12, i64 0, i32 1, !dbg !323
  %14 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %13, align 8, !dbg !323, !tbaa !324
  br i1 %7, label %15, label %17, !dbg !327

; <label>:15:                                     ; preds = %4
  %16 = call i32 %14(%struct._reent* %0, i8* nonnull %6, i32 0, %struct._mbstate_t* %3) #5, !dbg !328
  br label %19, !dbg !329

; <label>:17:                                     ; preds = %4
  %18 = tail call i32 %14(%struct._reent* %0, i8* nonnull %1, i32 %2, %struct._mbstate_t* %3) #5, !dbg !330
  br label %19

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], !dbg !323
  %21 = icmp eq i32 %20, -1, !dbg !331
  br i1 %21, label %22, label %25, !dbg !333

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %3, i64 0, i32 0, !dbg !334
  store i32 0, i32* %23, align 4, !dbg !336, !tbaa !337
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !339
  store i32 138, i32* %24, align 8, !dbg !340, !tbaa !341
  br label %27, !dbg !342

; <label>:25:                                     ; preds = %19
  %26 = sext i32 %20 to i64, !dbg !343
  br label %27, !dbg !344

; <label>:27:                                     ; preds = %25, %22
  %28 = phi i64 [ -1, %22 ], [ %26, %25 ], !dbg !345
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #4, !dbg !346
  ret i64 %28, !dbg !346
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @wcrtomb(i8* noalias, i32, %struct._mbstate_t* noalias) local_unnamed_addr #0 !dbg !347 {
  %4 = alloca [10 x i8], align 1
  %5 = tail call %struct._reent* @__getreent() #5, !dbg !361
  %6 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %6) #4, !dbg !363
  %7 = icmp eq i8* %0, null, !dbg !365
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !367
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 7, !dbg !369
  %10 = load %struct.__locale_t*, %struct.__locale_t** %9, align 8, !dbg !369, !tbaa !314
  %11 = icmp eq %struct.__locale_t* %10, null, !dbg !367
  %12 = select i1 %11, %struct.__locale_t* @__global_locale, %struct.__locale_t* %10, !dbg !367
  %13 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %12, i64 0, i32 1, !dbg !370
  %14 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %13, align 8, !dbg !370, !tbaa !324
  br i1 %7, label %15, label %17, !dbg !371

; <label>:15:                                     ; preds = %3
  %16 = call i32 %14(%struct._reent* %5, i8* nonnull %6, i32 0, %struct._mbstate_t* %2) #5, !dbg !372
  br label %19, !dbg !373

; <label>:17:                                     ; preds = %3
  %18 = tail call i32 %14(%struct._reent* %5, i8* nonnull %0, i32 %1, %struct._mbstate_t* %2) #5, !dbg !374
  br label %19

; <label>:19:                                     ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ], !dbg !370
  %21 = icmp eq i32 %20, -1, !dbg !375
  br i1 %21, label %22, label %25, !dbg !377

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %2, i64 0, i32 0, !dbg !378
  store i32 0, i32* %23, align 4, !dbg !380, !tbaa !337
  %24 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 0, !dbg !381
  store i32 138, i32* %24, align 8, !dbg !382, !tbaa !341
  br label %27, !dbg !383

; <label>:25:                                     ; preds = %19
  %26 = sext i32 %20 to i64, !dbg !384
  br label %27, !dbg !385

; <label>:27:                                     ; preds = %25, %22
  %28 = phi i64 [ -1, %22 ], [ %26, %25 ], !dbg !386
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %6) #4, !dbg !387
  ret i64 %28, !dbg !387
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcrtomb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "_wcrtomb_r", scope: !1, file: !1, line: 10, type: !15, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !292)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !19, !51, !126, !127}
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 58, baseType: !9)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !21, line: 569, size: 14912, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !25, !104, !105, !106, !107, !111, !112, !173, !174, !178, !190, !191, !192, !194, !195, !196, !258, !277, !278, !283, !290}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !20, file: !21, line: 571, baseType: !24, size: 32)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !20, file: !21, line: 576, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !21, line: 287, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !21, line: 181, size: 1408, elements: !29)
!29 = !{!30, !33, !34, !35, !37, !38, !43, !44, !45, !53, !59, !64, !68, !69, !70, !71, !75, !79, !80, !81, !83, !84, !88, !103}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !28, file: !21, line: 182, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !28, file: !21, line: 183, baseType: !24, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !28, file: !21, line: 184, baseType: !24, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !21, line: 185, baseType: !36, size: 16, offset: 128)
!36 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !28, file: !21, line: 186, baseType: !36, size: 16, offset: 144)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !28, file: !21, line: 187, baseType: !39, size: 128, offset: 192)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !21, line: 117, size: 128, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !39, file: !21, line: 118, baseType: !31, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !39, file: !21, line: 119, baseType: !24, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !28, file: !21, line: 188, baseType: !24, size: 32, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !28, file: !21, line: 195, baseType: !4, size: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !28, file: !21, line: 197, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !19, !4, !51, !24}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !8, line: 145, baseType: !50)
!50 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !28, file: !21, line: 199, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!49, !19, !4, !57, !24}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !28, file: !21, line: 202, baseType: !60, size: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !19, !4, !63, !24}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !8, line: 114, baseType: !50)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !28, file: !21, line: 203, baseType: !65, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!24, !19, !4}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !28, file: !21, line: 206, baseType: !39, size: 128, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !28, file: !21, line: 207, baseType: !31, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !28, file: !21, line: 208, baseType: !24, size: 32, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !28, file: !21, line: 211, baseType: !72, size: 24, offset: 928)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 24, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !28, file: !21, line: 212, baseType: !76, size: 8, offset: 952)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !28, file: !21, line: 215, baseType: !39, size: 128, offset: 960)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !28, file: !21, line: 218, baseType: !24, size: 32, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !21, line: 219, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !8, line: 44, baseType: !50)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !28, file: !21, line: 222, baseType: !19, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !21, line: 226, baseType: !85, size: 32, offset: 1280)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !8, line: 175, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !87, line: 12, baseType: !24)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !28, file: !21, line: 228, baseType: !89, size: 64, offset: 1312)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !8, line: 171, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 163, size: 64, elements: !91)
!91 = !{!92, !93}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !90, file: !8, line: 165, baseType: !24, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !90, file: !8, line: 170, baseType: !94, size: 32, offset: 32)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !8, line: 166, size: 32, elements: !95)
!95 = !{!96, !99}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !94, file: !8, line: 168, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !18, line: 124, baseType: !98)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !94, file: !8, line: 169, baseType: !100, size: 32)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !21, line: 229, baseType: !24, size: 32, offset: 1376)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !20, file: !21, line: 576, baseType: !26, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !20, file: !21, line: 576, baseType: !26, size: 64, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !20, file: !21, line: 578, baseType: !24, size: 32, offset: 256)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !20, file: !21, line: 579, baseType: !108, size: 200, offset: 288)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 200, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 25)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !20, file: !21, line: 582, baseType: !24, size: 32, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !20, file: !21, line: 583, baseType: !113, size: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !115, line: 178, size: 3392, elements: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!116 = !{!117, !122, !130, !135, !136, !137, !165, !169, !172}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !114, file: !115, line: 180, baseType: !118, size: 1792)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 1792, elements: !119)
!119 = !{!120, !121}
!120 = !DISubrange(count: 7)
!121 = !DISubrange(count: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !114, file: !115, line: 181, baseType: !123, size: 64, offset: 1792)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!24, !19, !51, !126, !127}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !18, line: 83, baseType: !24)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !129, line: 86, baseType: !89)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !114, file: !115, line: 183, baseType: !131, size: 64, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!24, !19, !134, !57, !5, !127}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !114, file: !115, line: 185, baseType: !24, size: 32, offset: 1920)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !114, file: !115, line: 186, baseType: !51, size: 64, offset: 1984)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !114, file: !115, line: 187, baseType: !138, size: 768, offset: 2048)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !139, line: 42, size: 768, elements: !140)
!139 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !138, file: !139, line: 44, baseType: !51, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !138, file: !139, line: 45, baseType: !51, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !138, file: !139, line: 46, baseType: !51, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !138, file: !139, line: 47, baseType: !51, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !138, file: !139, line: 48, baseType: !51, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !138, file: !139, line: 49, baseType: !51, size: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !138, file: !139, line: 50, baseType: !51, size: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !138, file: !139, line: 51, baseType: !51, size: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !138, file: !139, line: 52, baseType: !51, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !138, file: !139, line: 53, baseType: !51, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !138, file: !139, line: 54, baseType: !52, size: 8, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !138, file: !139, line: 55, baseType: !52, size: 8, offset: 648)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !138, file: !139, line: 56, baseType: !52, size: 8, offset: 656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !138, file: !139, line: 57, baseType: !52, size: 8, offset: 664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !138, file: !139, line: 58, baseType: !52, size: 8, offset: 672)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !138, file: !139, line: 59, baseType: !52, size: 8, offset: 680)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !138, file: !139, line: 60, baseType: !52, size: 8, offset: 688)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !138, file: !139, line: 61, baseType: !52, size: 8, offset: 696)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !138, file: !139, line: 62, baseType: !52, size: 8, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !138, file: !139, line: 63, baseType: !52, size: 8, offset: 712)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !138, file: !139, line: 64, baseType: !52, size: 8, offset: 720)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !138, file: !139, line: 65, baseType: !52, size: 8, offset: 728)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !138, file: !139, line: 66, baseType: !52, size: 8, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !138, file: !139, line: 67, baseType: !52, size: 8, offset: 744)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !114, file: !115, line: 189, baseType: !166, size: 16, offset: 2816)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !114, file: !115, line: 190, baseType: !170, size: 256, offset: 2832)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 256, elements: !171)
!171 = !{!121}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !114, file: !115, line: 191, baseType: !170, size: 256, offset: 3088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !20, file: !21, line: 585, baseType: !24, size: 32, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !20, file: !21, line: 587, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !19}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !20, file: !21, line: 590, baseType: !179, size: 64, offset: 768)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !21, line: 47, size: 256, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !180, file: !21, line: 49, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !180, file: !21, line: 50, baseType: !24, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !180, file: !21, line: 50, baseType: !24, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !180, file: !21, line: 50, baseType: !24, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !180, file: !21, line: 50, baseType: !24, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !180, file: !21, line: 51, baseType: !188, size: 32, offset: 192)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 32, elements: !77)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !21, line: 25, baseType: !98)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !20, file: !21, line: 591, baseType: !24, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !20, file: !21, line: 592, baseType: !179, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !20, file: !21, line: 593, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !20, file: !21, line: 596, baseType: !24, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !20, file: !21, line: 597, baseType: !51, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !20, file: !21, line: 632, baseType: !197, size: 2880, offset: 1152)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !21, line: 599, size: 2880, elements: !198)
!198 = !{!199, !249}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !197, file: !21, line: 622, baseType: !200, size: 1728)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !21, line: 601, size: 1728, elements: !201)
!201 = !{!202, !203, !204, !208, !220, !221, !223, !231, !232, !233, !234, !238, !242, !243, !244, !245, !246, !247, !248}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !200, file: !21, line: 603, baseType: !98, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !200, file: !21, line: 604, baseType: !51, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !200, file: !21, line: 605, baseType: !205, size: 208, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 208, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 26)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !200, file: !21, line: 606, baseType: !209, size: 288, offset: 352)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !21, line: 55, size: 288, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218, !219}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !209, file: !21, line: 57, baseType: !24, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !209, file: !21, line: 58, baseType: !24, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !209, file: !21, line: 59, baseType: !24, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !209, file: !21, line: 60, baseType: !24, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !209, file: !21, line: 61, baseType: !24, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !209, file: !21, line: 62, baseType: !24, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !209, file: !21, line: 63, baseType: !24, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !209, file: !21, line: 64, baseType: !24, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !209, file: !21, line: 65, baseType: !24, size: 32, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !200, file: !21, line: 607, baseType: !24, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !200, file: !21, line: 608, baseType: !222, size: 64, offset: 704)
!222 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !200, file: !21, line: 609, baseType: !224, size: 112, offset: 768)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !21, line: 319, size: 112, elements: !225)
!225 = !{!226, !229, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !224, file: !21, line: 320, baseType: !227, size: 48)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !73)
!228 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !224, file: !21, line: 321, baseType: !227, size: 48, offset: 48)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !224, file: !21, line: 322, baseType: !228, size: 16, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !200, file: !21, line: 610, baseType: !89, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !200, file: !21, line: 611, baseType: !89, size: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !200, file: !21, line: 612, baseType: !89, size: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !200, file: !21, line: 613, baseType: !235, size: 64, offset: 1088)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !200, file: !21, line: 614, baseType: !239, size: 192, offset: 1152)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 24)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !200, file: !21, line: 615, baseType: !24, size: 32, offset: 1344)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !200, file: !21, line: 616, baseType: !89, size: 64, offset: 1376)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !200, file: !21, line: 617, baseType: !89, size: 64, offset: 1440)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !200, file: !21, line: 618, baseType: !89, size: 64, offset: 1504)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !200, file: !21, line: 619, baseType: !89, size: 64, offset: 1568)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !200, file: !21, line: 620, baseType: !89, size: 64, offset: 1632)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !200, file: !21, line: 621, baseType: !24, size: 32, offset: 1696)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !197, file: !21, line: 631, baseType: !250, size: 2880)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !21, line: 626, size: 2880, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !250, file: !21, line: 629, baseType: !253, size: 1920)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1920, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 30)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !250, file: !21, line: 630, baseType: !257, size: 960, offset: 1920)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 960, elements: !254)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !20, file: !21, line: 636, baseType: !259, size: 64, offset: 4032)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !21, line: 93, size: 6336, elements: !261)
!261 = !{!262, !263, !264, !269}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !260, file: !21, line: 94, baseType: !259, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !260, file: !21, line: 95, baseType: !24, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !260, file: !21, line: 97, baseType: !265, size: 2048, offset: 128)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 2048, elements: !171)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !260, file: !21, line: 98, baseType: !270, size: 4160, offset: 2176)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !21, line: 74, size: 4160, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !270, file: !21, line: 75, baseType: !273, size: 2048)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !171)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !270, file: !21, line: 76, baseType: !273, size: 2048, offset: 2048)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !270, file: !21, line: 78, baseType: !189, size: 32, offset: 4096)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !270, file: !21, line: 81, baseType: !189, size: 32, offset: 4128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !20, file: !21, line: 637, baseType: !260, size: 6336, offset: 4096)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !20, file: !21, line: 641, baseType: !279, size: 64, offset: 10432)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !24}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !20, file: !21, line: 646, baseType: !284, size: 192, offset: 10496)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !21, line: 291, size: 192, elements: !285)
!285 = !{!286, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !284, file: !21, line: 293, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !284, file: !21, line: 294, baseType: !24, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !284, file: !21, line: 295, baseType: !26, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !20, file: !21, line: 648, baseType: !291, size: 4224, offset: 10688)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4224, elements: !73)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DILocalVariable(name: "ptr", arg: 1, scope: !14, file: !1, line: 10, type: !19)
!294 = !DILocalVariable(name: "s", arg: 2, scope: !14, file: !1, line: 10, type: !51)
!295 = !DILocalVariable(name: "wc", arg: 3, scope: !14, file: !1, line: 10, type: !126)
!296 = !DILocalVariable(name: "ps", arg: 4, scope: !14, file: !1, line: 10, type: !127)
!297 = !DILocalVariable(name: "retval", scope: !14, file: !1, line: 16, type: !24)
!298 = !DILocalVariable(name: "buf", scope: !14, file: !1, line: 17, type: !299)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 80, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 10)
!302 = !DILocation(line: 10, column: 1, scope: !14)
!303 = !DILocation(line: 16, column: 7, scope: !14)
!304 = !DILocation(line: 17, column: 3, scope: !14)
!305 = !DILocation(line: 17, column: 8, scope: !14)
!306 = !DILocation(line: 27, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !14, file: !1, line: 27, column: 7)
!308 = !DILocation(line: 230, column: 10, scope: !309, inlinedAt: !312)
!309 = distinct !DISubprogram(name: "__get_current_locale", scope: !115, file: !115, line: 228, type: !310, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!310 = !DISubroutineType(types: !311)
!311 = !{!113}
!312 = distinct !DILocation(line: 0, scope: !307)
!313 = !DILocation(line: 230, column: 18, scope: !309, inlinedAt: !312)
!314 = !{!315, !319, i64 72}
!315 = !{!"_reent", !316, i64 0, !319, i64 8, !319, i64 16, !319, i64 24, !316, i64 32, !317, i64 36, !316, i64 64, !319, i64 72, !316, i64 80, !319, i64 88, !319, i64 96, !316, i64 104, !319, i64 112, !319, i64 120, !316, i64 128, !319, i64 136, !317, i64 144, !319, i64 504, !320, i64 512, !319, i64 1304, !322, i64 1312, !317, i64 1336}
!316 = !{!"int", !317, i64 0}
!317 = !{!"omnipotent char", !318, i64 0}
!318 = !{!"Simple C/C++ TBAA"}
!319 = !{!"any pointer", !317, i64 0}
!320 = !{!"_atexit", !319, i64 0, !316, i64 8, !317, i64 16, !321, i64 272}
!321 = !{!"_on_exit_args", !317, i64 0, !317, i64 256, !316, i64 512, !316, i64 516}
!322 = !{!"_glue", !319, i64 0, !316, i64 8, !319, i64 16}
!323 = !DILocation(line: 0, scope: !307)
!324 = !{!325, !319, i64 224}
!325 = !{!"__locale_t", !317, i64 0, !319, i64 224, !319, i64 232, !316, i64 240, !319, i64 248, !326, i64 256, !317, i64 352, !317, i64 354, !317, i64 386}
!326 = !{!"lconv", !319, i64 0, !319, i64 8, !319, i64 16, !319, i64 24, !319, i64 32, !319, i64 40, !319, i64 48, !319, i64 56, !319, i64 64, !319, i64 72, !317, i64 80, !317, i64 81, !317, i64 82, !317, i64 83, !317, i64 84, !317, i64 85, !317, i64 86, !317, i64 87, !317, i64 88, !317, i64 89, !317, i64 90, !317, i64 91, !317, i64 92, !317, i64 93}
!327 = !DILocation(line: 27, column: 7, scope: !14)
!328 = !DILocation(line: 28, column: 14, scope: !307)
!329 = !DILocation(line: 28, column: 5, scope: !307)
!330 = !DILocation(line: 30, column: 14, scope: !307)
!331 = !DILocation(line: 32, column: 14, scope: !332)
!332 = distinct !DILexicalBlock(scope: !14, file: !1, line: 32, column: 7)
!333 = !DILocation(line: 32, column: 7, scope: !14)
!334 = !DILocation(line: 34, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 33, column: 5)
!336 = !DILocation(line: 34, column: 19, scope: !335)
!337 = !{!338, !316, i64 0}
!338 = !{!"", !316, i64 0, !317, i64 4}
!339 = !DILocation(line: 35, column: 12, scope: !335)
!340 = !DILocation(line: 35, column: 19, scope: !335)
!341 = !{!315, !316, i64 0}
!342 = !DILocation(line: 36, column: 7, scope: !335)
!343 = !DILocation(line: 39, column: 12, scope: !332)
!344 = !DILocation(line: 39, column: 5, scope: !332)
!345 = !DILocation(line: 0, scope: !332)
!346 = !DILocation(line: 40, column: 1, scope: !14)
!347 = distinct !DISubprogram(name: "wcrtomb", scope: !1, file: !1, line: 44, type: !348, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !352)
!348 = !DISubroutineType(types: !349)
!349 = !{!17, !350, !126, !351}
!350 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!351 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!352 = !{!353, !354, !355, !356, !357, !358}
!353 = !DILocalVariable(name: "s", arg: 1, scope: !347, file: !1, line: 44, type: !350)
!354 = !DILocalVariable(name: "wc", arg: 2, scope: !347, file: !1, line: 44, type: !126)
!355 = !DILocalVariable(name: "ps", arg: 3, scope: !347, file: !1, line: 44, type: !351)
!356 = !DILocalVariable(name: "retval", scope: !347, file: !1, line: 52, type: !24)
!357 = !DILocalVariable(name: "reent", scope: !347, file: !1, line: 53, type: !19)
!358 = !DILocalVariable(name: "buf", scope: !347, file: !1, line: 54, type: !299)
!359 = !DILocation(line: 44, column: 1, scope: !347)
!360 = !DILocation(line: 52, column: 7, scope: !347)
!361 = !DILocation(line: 53, column: 26, scope: !347)
!362 = !DILocation(line: 53, column: 18, scope: !347)
!363 = !DILocation(line: 54, column: 3, scope: !347)
!364 = !DILocation(line: 54, column: 8, scope: !347)
!365 = !DILocation(line: 64, column: 9, scope: !366)
!366 = distinct !DILexicalBlock(scope: !347, file: !1, line: 64, column: 7)
!367 = !DILocation(line: 230, column: 10, scope: !309, inlinedAt: !368)
!368 = distinct !DILocation(line: 0, scope: !366)
!369 = !DILocation(line: 230, column: 18, scope: !309, inlinedAt: !368)
!370 = !DILocation(line: 0, scope: !366)
!371 = !DILocation(line: 64, column: 7, scope: !347)
!372 = !DILocation(line: 65, column: 14, scope: !366)
!373 = !DILocation(line: 65, column: 5, scope: !366)
!374 = !DILocation(line: 67, column: 14, scope: !366)
!375 = !DILocation(line: 69, column: 14, scope: !376)
!376 = distinct !DILexicalBlock(scope: !347, file: !1, line: 69, column: 7)
!377 = !DILocation(line: 69, column: 7, scope: !347)
!378 = !DILocation(line: 71, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !376, file: !1, line: 70, column: 5)
!380 = !DILocation(line: 71, column: 19, scope: !379)
!381 = !DILocation(line: 72, column: 14, scope: !379)
!382 = !DILocation(line: 72, column: 21, scope: !379)
!383 = !DILocation(line: 73, column: 7, scope: !379)
!384 = !DILocation(line: 76, column: 12, scope: !376)
!385 = !DILocation(line: 76, column: 5, scope: !376)
!386 = !DILocation(line: 0, scope: !376)
!387 = !DILocation(line: 78, column: 1, scope: !347)
