; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws_u.c"
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
define dso_local i32 @_fputws_unlocked_r(%struct._reent*, i32*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !13 {
  %4 = alloca i32*, align 8
  %5 = alloca [1024 x i8], align 16
  store i32* %1, i32** %4, align 8, !tbaa !252
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %6) #4, !dbg !256
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !258
  %8 = load i16, i16* %7, align 8, !dbg !258, !tbaa !260
  %9 = and i16 %8, 8, !dbg !258
  %10 = icmp eq i16 %9, 0, !dbg !258
  br i1 %10, label %15, label %11, !dbg !258

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !258
  %13 = load i8*, i8** %12, align 8, !dbg !258, !tbaa !267
  %14 = icmp eq i8* %13, null, !dbg !258
  br i1 %14, label %15, label %18, !dbg !258

; <label>:15:                                     ; preds = %11, %3
  %16 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #5, !dbg !258
  %17 = icmp eq i32 %16, 0, !dbg !258
  br i1 %17, label %18, label %51, !dbg !268

; <label>:18:                                     ; preds = %11, %15
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 22
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6
  br label %23, !dbg !269

; <label>:23:                                     ; preds = %18, %48
  %24 = call i64 @_wcsrtombs_r(%struct._reent* %0, i8* nonnull %6, i32** nonnull %4, i64 1024, %struct._mbstate_t* nonnull %19) #5, !dbg !271
  switch i64 %24, label %25 [
    i64 -1, label %51
    i64 0, label %48
  ], !dbg !273

; <label>:25:                                     ; preds = %23, %45
  %26 = phi i64 [ %46, %45 ], [ 0, %23 ]
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %26, !dbg !274
  %28 = load i8, i8* %27, align 1, !dbg !274, !tbaa !277
  %29 = sext i8 %28 to i32, !dbg !274
  %30 = load i32, i32* %20, align 4, !dbg !289, !tbaa !291
  %31 = add nsw i32 %30, -1, !dbg !289
  store i32 %31, i32* %20, align 4, !dbg !289, !tbaa !291
  %32 = icmp sgt i32 %30, 0, !dbg !292
  br i1 %32, label %39, label %33, !dbg !293

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %22, align 8, !dbg !294, !tbaa !295
  %35 = icmp sle i32 %30, %34, !dbg !296
  %36 = and i32 %29, 255, !dbg !297
  %37 = icmp eq i32 %36, 10, !dbg !297
  %38 = or i1 %37, %35, !dbg !298
  br i1 %38, label %42, label %39, !dbg !298

; <label>:39:                                     ; preds = %33, %25
  %40 = load i8*, i8** %21, align 8, !dbg !299, !tbaa !300
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !299
  store i8* %41, i8** %21, align 8, !dbg !299, !tbaa !300
  store i8 %28, i8* %40, align 1, !dbg !301, !tbaa !277
  br label %45, !dbg !302

; <label>:42:                                     ; preds = %33
  %43 = call i32 @__swbuf_r(%struct._reent* %0, i32 %29, %struct.__sFILE* nonnull %2) #5, !dbg !303
  %44 = icmp eq i32 %43, -1, !dbg !304
  br i1 %44, label %51, label %45, !dbg !302

; <label>:45:                                     ; preds = %39, %42
  %46 = add nuw i64 %26, 1, !dbg !305
  %47 = icmp ult i64 %46, %24, !dbg !306
  br i1 %47, label %25, label %48, !dbg !307, !llvm.loop !308

; <label>:48:                                     ; preds = %45, %23
  %49 = load i32*, i32** %4, align 8, !dbg !310, !tbaa !252
  %50 = icmp eq i32* %49, null, !dbg !311
  br i1 %50, label %51, label %23, !dbg !312, !llvm.loop !313

; <label>:51:                                     ; preds = %48, %23, %42, %15
  %52 = phi i32 [ -1, %15 ], [ -1, %42 ], [ -1, %23 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %6) #4, !dbg !316
  ret i32 %52, !dbg !316
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_wcsrtombs_r(%struct._reent*, i8*, i32**, i64, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @fputws_unlocked(i32* noalias, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !317 {
  %3 = tail call %struct._reent* @__getreent() #5, !dbg !329
  %4 = icmp eq %struct._reent* %3, null, !dbg !332
  br i1 %4, label %10, label %5, !dbg !332

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !332
  %7 = load i32, i32* %6, align 8, !dbg !332, !tbaa !334
  %8 = icmp eq i32 %7, 0, !dbg !332
  br i1 %8, label %9, label %10, !dbg !331

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #5, !dbg !332
  br label %10, !dbg !332

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = tail call i32 @_fputws_unlocked_r(%struct._reent* %3, i32* %0, %struct.__sFILE* %1) #6, !dbg !339
  ret i32 %11, !dbg !340
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 58, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "_fputws_unlocked_r", scope: !14, file: !14, line: 121, type: !15, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !240)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fputws.c", directory: "/root/.unikraft/apps/redis/build")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !234, !237}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !20, line: 569, size: 14912, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !102, !103, !104, !105, !109, !110, !113, !114, !118, !130, !131, !132, !134, !135, !136, !198, !219, !220, !225, !232}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !19, file: !20, line: 571, baseType: !17, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !20, line: 287, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !20, line: 181, size: 1408, elements: !27)
!27 = !{!28, !31, !32, !33, !35, !36, !41, !42, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !101}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !20, line: 182, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !20, line: 183, baseType: !17, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !20, line: 184, baseType: !17, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !20, line: 185, baseType: !34, size: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !20, line: 186, baseType: !34, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !20, line: 187, baseType: !37, size: 128, offset: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !20, line: 117, size: 128, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !20, line: 118, baseType: !29, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !20, line: 119, baseType: !17, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !20, line: 188, baseType: !17, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !20, line: 195, baseType: !4, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !20, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !18, !4, !50, !17}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !20, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !18, !4, !55, !17}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !20, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !18, !4, !61, !17}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !49)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !20, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!17, !18, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !20, line: 206, baseType: !37, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !26, file: !20, line: 207, baseType: !29, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !20, line: 208, baseType: !17, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !20, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !20, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !20, line: 215, baseType: !37, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !20, line: 218, baseType: !17, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !20, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !49)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !26, file: !20, line: 222, baseType: !18, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !26, file: !20, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !17)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !26, file: !20, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !48, line: 165, baseType: !17, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !48, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !48, line: 166, size: 32, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !48, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !6, line: 124, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !26, file: !20, line: 229, baseType: !17, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !19, file: !20, line: 576, baseType: !24, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !19, file: !20, line: 578, baseType: !17, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !19, file: !20, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !19, file: !20, line: 582, baseType: !17, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !19, file: !20, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !20, line: 40, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !19, file: !20, line: 585, baseType: !17, size: 32, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !19, file: !20, line: 587, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !18}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !19, file: !20, line: 590, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !20, line: 47, size: 256, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !120, file: !20, line: 49, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !120, file: !20, line: 50, baseType: !17, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !120, file: !20, line: 50, baseType: !17, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !120, file: !20, line: 50, baseType: !17, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !120, file: !20, line: 50, baseType: !17, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !120, file: !20, line: 51, baseType: !128, size: 32, offset: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !75)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !20, line: 25, baseType: !96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !19, file: !20, line: 591, baseType: !17, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !19, file: !20, line: 592, baseType: !119, size: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !19, file: !20, line: 593, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !19, file: !20, line: 596, baseType: !17, size: 32, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !19, file: !20, line: 597, baseType: !50, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !19, file: !20, line: 632, baseType: !137, size: 2880, offset: 1152)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !20, line: 599, size: 2880, elements: !138)
!138 = !{!139, !189}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !137, file: !20, line: 622, baseType: !140, size: 1728)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !20, line: 601, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !148, !160, !161, !163, !171, !172, !173, !174, !178, !182, !183, !184, !185, !186, !187, !188}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !140, file: !20, line: 603, baseType: !96, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !140, file: !20, line: 604, baseType: !50, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !140, file: !20, line: 605, baseType: !145, size: 208, offset: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 26)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !140, file: !20, line: 606, baseType: !149, size: 288, offset: 352)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !20, line: 55, size: 288, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !149, file: !20, line: 57, baseType: !17, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !149, file: !20, line: 58, baseType: !17, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !149, file: !20, line: 59, baseType: !17, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !149, file: !20, line: 60, baseType: !17, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !149, file: !20, line: 61, baseType: !17, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !149, file: !20, line: 62, baseType: !17, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !149, file: !20, line: 63, baseType: !17, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !149, file: !20, line: 64, baseType: !17, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !149, file: !20, line: 65, baseType: !17, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !140, file: !20, line: 607, baseType: !17, size: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !140, file: !20, line: 608, baseType: !162, size: 64, offset: 704)
!162 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !140, file: !20, line: 609, baseType: !164, size: 112, offset: 768)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !20, line: 319, size: 112, elements: !165)
!165 = !{!166, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !164, file: !20, line: 320, baseType: !167, size: 48)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !71)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !164, file: !20, line: 321, baseType: !167, size: 48, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !164, file: !20, line: 322, baseType: !168, size: 16, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !140, file: !20, line: 610, baseType: !87, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !140, file: !20, line: 611, baseType: !87, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !140, file: !20, line: 612, baseType: !87, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !140, file: !20, line: 613, baseType: !175, size: 64, offset: 1088)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !140, file: !20, line: 614, baseType: !179, size: 192, offset: 1152)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 24)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !140, file: !20, line: 615, baseType: !17, size: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !140, file: !20, line: 616, baseType: !87, size: 64, offset: 1376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !140, file: !20, line: 617, baseType: !87, size: 64, offset: 1440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !140, file: !20, line: 618, baseType: !87, size: 64, offset: 1504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !140, file: !20, line: 619, baseType: !87, size: 64, offset: 1568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !140, file: !20, line: 620, baseType: !87, size: 64, offset: 1632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !140, file: !20, line: 621, baseType: !17, size: 32, offset: 1696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !137, file: !20, line: 631, baseType: !190, size: 2880)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !20, line: 626, size: 2880, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !190, file: !20, line: 629, baseType: !193, size: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1920, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 30)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !190, file: !20, line: 630, baseType: !197, size: 960, offset: 1920)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !194)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !19, file: !20, line: 636, baseType: !199, size: 64, offset: 4032)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !20, line: 93, size: 6336, elements: !201)
!201 = !{!202, !203, !204, !211}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !200, file: !20, line: 94, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !200, file: !20, line: 95, baseType: !17, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !200, file: !20, line: 97, baseType: !205, size: 2048, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !209)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !{!210}
!210 = !DISubrange(count: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !200, file: !20, line: 98, baseType: !212, size: 4160, offset: 2176)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !20, line: 74, size: 4160, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !212, file: !20, line: 75, baseType: !215, size: 2048)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !209)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !212, file: !20, line: 76, baseType: !215, size: 2048, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !212, file: !20, line: 78, baseType: !129, size: 32, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !212, file: !20, line: 81, baseType: !129, size: 32, offset: 4128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !19, file: !20, line: 637, baseType: !200, size: 6336, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !19, file: !20, line: 641, baseType: !221, size: 64, offset: 10432)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !17}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !19, file: !20, line: 646, baseType: !226, size: 192, offset: 10496)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !20, line: 291, size: 192, elements: !227)
!227 = !{!228, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !226, file: !20, line: 293, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !226, file: !20, line: 294, baseType: !17, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !226, file: !20, line: 295, baseType: !24, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !19, file: !20, line: 648, baseType: !233, size: 4224, offset: 10688)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4224, elements: !71)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !17)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !239, line: 66, baseType: !25)
!239 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!240 = !{!241, !242, !243, !244, !245, !249}
!241 = !DILocalVariable(name: "ptr", arg: 1, scope: !13, file: !14, line: 121, type: !18)
!242 = !DILocalVariable(name: "ws", arg: 2, scope: !13, file: !14, line: 121, type: !234)
!243 = !DILocalVariable(name: "fp", arg: 3, scope: !13, file: !14, line: 121, type: !237)
!244 = !DILocalVariable(name: "nbytes", scope: !13, file: !14, line: 126, type: !5)
!245 = !DILocalVariable(name: "buf", scope: !13, file: !14, line: 127, type: !246)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 1024)
!249 = !DILocalVariable(name: "i", scope: !250, file: !14, line: 163, type: !5)
!250 = distinct !DILexicalBlock(scope: !13, file: !14, line: 162, column: 5)
!251 = !DILocation(line: 121, column: 1, scope: !13)
!252 = !{!253, !253, i64 0}
!253 = !{!"any pointer", !254, i64 0}
!254 = !{!"omnipotent char", !255, i64 0}
!255 = !{!"Simple C/C++ TBAA"}
!256 = !DILocation(line: 127, column: 3, scope: !13)
!257 = !DILocation(line: 127, column: 8, scope: !13)
!258 = !DILocation(line: 158, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !13, file: !14, line: 158, column: 7)
!260 = !{!261, !263, i64 16}
!261 = !{!"__sFILE", !253, i64 0, !262, i64 8, !262, i64 12, !263, i64 16, !263, i64 18, !264, i64 24, !262, i64 40, !253, i64 48, !253, i64 56, !253, i64 64, !253, i64 72, !253, i64 80, !264, i64 88, !253, i64 104, !262, i64 112, !254, i64 116, !254, i64 119, !264, i64 120, !262, i64 136, !265, i64 144, !253, i64 152, !262, i64 160, !266, i64 164, !262, i64 172}
!262 = !{!"int", !254, i64 0}
!263 = !{!"short", !254, i64 0}
!264 = !{!"__sbuf", !253, i64 0, !262, i64 8}
!265 = !{!"long", !254, i64 0}
!266 = !{!"", !262, i64 0, !254, i64 4}
!267 = !{!261, !253, i64 24}
!268 = !DILocation(line: 158, column: 7, scope: !13)
!269 = !DILocation(line: 164, column: 64, scope: !250)
!270 = !DILocation(line: 163, column: 14, scope: !250)
!271 = !DILocation(line: 164, column: 16, scope: !250)
!272 = !DILocation(line: 126, column: 10, scope: !13)
!273 = !DILocation(line: 165, column: 11, scope: !250)
!274 = !DILocation(line: 169, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !14, line: 169, column: 8)
!276 = distinct !DILexicalBlock(scope: !250, file: !14, line: 168, column: 9)
!277 = !{!254, !254, i64 0}
!278 = !DILocalVariable(name: "_ptr", arg: 1, scope: !279, file: !239, line: 687, type: !18)
!279 = distinct !DISubprogram(name: "__sputc_r", scope: !239, file: !239, line: 687, type: !280, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!17, !18, !17, !237}
!282 = !{!278, !283, !284}
!283 = !DILocalVariable(name: "_c", arg: 2, scope: !279, file: !239, line: 687, type: !17)
!284 = !DILocalVariable(name: "_p", arg: 3, scope: !279, file: !239, line: 687, type: !237)
!285 = !DILocation(line: 687, column: 47, scope: !279, inlinedAt: !286)
!286 = distinct !DILocation(line: 169, column: 8, scope: !275)
!287 = !DILocation(line: 687, column: 57, scope: !279, inlinedAt: !286)
!288 = !DILocation(line: 687, column: 67, scope: !279, inlinedAt: !286)
!289 = !DILocation(line: 692, column: 6, scope: !290, inlinedAt: !286)
!290 = distinct !DILexicalBlock(scope: !279, file: !239, line: 692, column: 6)
!291 = !{!261, !262, i64 12}
!292 = !DILocation(line: 692, column: 15, scope: !290, inlinedAt: !286)
!293 = !DILocation(line: 692, column: 20, scope: !290, inlinedAt: !286)
!294 = !DILocation(line: 692, column: 38, scope: !290, inlinedAt: !286)
!295 = !{!261, !262, i64 40}
!296 = !DILocation(line: 692, column: 31, scope: !290, inlinedAt: !286)
!297 = !DILocation(line: 692, column: 59, scope: !290, inlinedAt: !286)
!298 = !DILocation(line: 692, column: 47, scope: !290, inlinedAt: !286)
!299 = !DILocation(line: 693, column: 18, scope: !290, inlinedAt: !286)
!300 = !{!261, !253, i64 0}
!301 = !DILocation(line: 693, column: 21, scope: !290, inlinedAt: !286)
!302 = !DILocation(line: 169, column: 8, scope: !276)
!303 = !DILocation(line: 695, column: 11, scope: !290, inlinedAt: !286)
!304 = !DILocation(line: 169, column: 36, scope: !275)
!305 = !DILocation(line: 171, column: 5, scope: !276)
!306 = !DILocation(line: 167, column: 16, scope: !250)
!307 = !DILocation(line: 167, column: 7, scope: !250)
!308 = distinct !{!308, !307, !309}
!309 = !DILocation(line: 172, column: 9, scope: !250)
!310 = !DILocation(line: 174, column: 10, scope: !13)
!311 = !DILocation(line: 174, column: 13, scope: !13)
!312 = !DILocation(line: 173, column: 5, scope: !250)
!313 = distinct !{!313, !314, !315}
!314 = !DILocation(line: 161, column: 3, scope: !13)
!315 = !DILocation(line: 174, column: 20, scope: !13)
!316 = !DILocation(line: 182, column: 1, scope: !13)
!317 = distinct !DISubprogram(name: "fputws_unlocked", scope: !14, file: !14, line: 185, type: !318, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !322)
!318 = !DISubroutineType(types: !319)
!319 = !{!17, !320, !321}
!320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !234)
!321 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !237)
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "ws", arg: 1, scope: !317, file: !14, line: 185, type: !320)
!324 = !DILocalVariable(name: "fp", arg: 2, scope: !317, file: !14, line: 185, type: !321)
!325 = !DILocalVariable(name: "reent", scope: !317, file: !14, line: 189, type: !18)
!326 = !DILocalVariable(name: "_check_init_ptr", scope: !327, file: !14, line: 191, type: !18)
!327 = distinct !DILexicalBlock(scope: !317, file: !14, line: 191, column: 3)
!328 = !DILocation(line: 185, column: 1, scope: !317)
!329 = !DILocation(line: 189, column: 26, scope: !317)
!330 = !DILocation(line: 189, column: 18, scope: !317)
!331 = !DILocation(line: 191, column: 3, scope: !327)
!332 = !DILocation(line: 191, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !14, line: 191, column: 3)
!334 = !{!335, !262, i64 80}
!335 = !{!"_reent", !262, i64 0, !253, i64 8, !253, i64 16, !253, i64 24, !262, i64 32, !254, i64 36, !262, i64 64, !253, i64 72, !262, i64 80, !253, i64 88, !253, i64 96, !262, i64 104, !253, i64 112, !253, i64 120, !262, i64 128, !253, i64 136, !254, i64 144, !253, i64 504, !336, i64 512, !253, i64 1304, !338, i64 1312, !254, i64 1336}
!336 = !{!"_atexit", !253, i64 0, !262, i64 8, !254, i64 16, !337, i64 272}
!337 = !{!"_on_exit_args", !254, i64 0, !254, i64 256, !262, i64 512, !262, i64 516}
!338 = !{!"_glue", !253, i64 0, !262, i64 8, !253, i64 16}
!339 = !DILocation(line: 192, column: 10, scope: !317)
!340 = !DILocation(line: 192, column: 3, scope: !317)
