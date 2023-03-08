; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite_u.c"
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
define dso_local i64 @_fwrite_unlocked_r(%struct._reent*, i8* noalias nocapture readonly, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !10 {
  %6 = mul i64 %3, %2, !dbg !258
  %7 = icmp eq %struct._reent* %0, null, !dbg !261
  br i1 %7, label %13, label %8, !dbg !261

; <label>:8:                                      ; preds = %5
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !261
  %10 = load i32, i32* %9, align 8, !dbg !261, !tbaa !263
  %11 = icmp eq i32 %10, 0, !dbg !261
  br i1 %11, label %12, label %13, !dbg !260

; <label>:12:                                     ; preds = %8
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !261
  br label %13, !dbg !261

; <label>:13:                                     ; preds = %8, %5, %12
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !272
  %15 = load i16, i16* %14, align 8, !dbg !272, !tbaa !274
  %16 = and i16 %15, 8, !dbg !272
  %17 = icmp eq i16 %16, 0, !dbg !272
  br i1 %17, label %22, label %18, !dbg !272

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !272
  %20 = load i8*, i8** %19, align 8, !dbg !272, !tbaa !280
  %21 = icmp eq i8* %20, null, !dbg !272
  br i1 %21, label %22, label %27, !dbg !272

; <label>:22:                                     ; preds = %18, %13
  %23 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #3, !dbg !272
  %24 = icmp eq i32 %23, 0, !dbg !272
  %25 = icmp ne i64 %6, 0, !dbg !281
  %26 = and i1 %24, %25, !dbg !282
  br i1 %26, label %29, label %60, !dbg !282

; <label>:27:                                     ; preds = %18
  %28 = icmp eq i64 %6, 0, !dbg !281
  br i1 %28, label %60, label %29, !dbg !283

; <label>:29:                                     ; preds = %27, %22
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0
  %32 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 6
  br label %33, !dbg !283

; <label>:33:                                     ; preds = %29, %57
  %34 = phi i64 [ 0, %29 ], [ %58, %57 ]
  %35 = getelementptr inbounds i8, i8* %1, i64 %34, !dbg !284
  %36 = load i8, i8* %35, align 1, !dbg !284, !tbaa !287
  %37 = sext i8 %36 to i32, !dbg !284
  %38 = load i32, i32* %30, align 4, !dbg !299, !tbaa !301
  %39 = add nsw i32 %38, -1, !dbg !299
  store i32 %39, i32* %30, align 4, !dbg !299, !tbaa !301
  %40 = icmp sgt i32 %38, 0, !dbg !302
  br i1 %40, label %47, label %41, !dbg !303

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %32, align 8, !dbg !304, !tbaa !305
  %43 = icmp sle i32 %38, %42, !dbg !306
  %44 = and i32 %37, 255, !dbg !307
  %45 = icmp eq i32 %44, 10, !dbg !307
  %46 = or i1 %45, %43, !dbg !308
  br i1 %46, label %50, label %47, !dbg !308

; <label>:47:                                     ; preds = %41, %33
  %48 = load i8*, i8** %31, align 8, !dbg !309, !tbaa !310
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !309
  store i8* %49, i8** %31, align 8, !dbg !309, !tbaa !310
  store i8 %36, i8* %48, align 1, !dbg !311, !tbaa !287
  br label %57, !dbg !312

; <label>:50:                                     ; preds = %41
  %51 = tail call i32 @__swbuf_r(%struct._reent* %0, i32 %37, %struct.__sFILE* nonnull %4) #3, !dbg !313
  %52 = icmp eq i32 %51, -1, !dbg !314
  br i1 %52, label %53, label %57, !dbg !312

; <label>:53:                                     ; preds = %50
  %54 = icmp eq i8 %36, 10, !dbg !315
  %55 = zext i1 %54 to i64, !dbg !318
  %56 = add i64 %34, %55, !dbg !318
  br label %60, !dbg !318

; <label>:57:                                     ; preds = %47, %50
  %58 = add nuw i64 %34, 1, !dbg !319
  %59 = icmp ult i64 %58, %6, !dbg !281
  br i1 %59, label %33, label %60, !dbg !283, !llvm.loop !320

; <label>:60:                                     ; preds = %57, %27, %53, %22
  %61 = phi i64 [ 0, %22 ], [ %56, %53 ], [ 0, %27 ], [ %58, %57 ], !dbg !322
  %62 = udiv i64 %61, %2, !dbg !323
  ret i64 %62, !dbg !324
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @fwrite_unlocked(i8* noalias nocapture readonly, i64, i64, %struct.__sFILE*) local_unnamed_addr #0 !dbg !325 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !334
  %6 = tail call i64 @_fwrite_unlocked_r(%struct._reent* %5, i8* %0, i64 %1, i64 %2, %struct.__sFILE* %3) #5, !dbg !335
  ret i64 %6, !dbg !336
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_fwrite_unlocked_r", scope: !11, file: !11, line: 143, type: !12, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !244)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwrite.c", directory: "/root/.unikraft/apps/redis/build")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !17, !234, !237, !237, !240}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !15, line: 58, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !19, line: 569, size: 14912, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !23, !102, !103, !104, !105, !109, !110, !113, !114, !118, !130, !131, !132, !134, !135, !136, !198, !219, !220, !225, !232}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !18, file: !19, line: 571, baseType: !22, size: 32)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !19, line: 287, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !19, line: 181, size: 1408, elements: !27)
!27 = !{!28, !31, !32, !33, !35, !36, !41, !42, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !101}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !26, file: !19, line: 182, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !26, file: !19, line: 183, baseType: !22, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !26, file: !19, line: 184, baseType: !22, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !26, file: !19, line: 185, baseType: !34, size: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !26, file: !19, line: 186, baseType: !34, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !26, file: !19, line: 187, baseType: !37, size: 128, offset: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !19, line: 117, size: 128, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !19, line: 118, baseType: !29, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !19, line: 119, baseType: !22, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !26, file: !19, line: 188, baseType: !22, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !26, file: !19, line: 195, baseType: !4, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !26, file: !19, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !17, !4, !50, !22}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !48, line: 145, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !26, file: !19, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !17, !4, !55, !22}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !26, file: !19, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !17, !4, !61, !22}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !48, line: 114, baseType: !49)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !26, file: !19, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!22, !17, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !26, file: !19, line: 206, baseType: !37, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !26, file: !19, line: 207, baseType: !29, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !26, file: !19, line: 208, baseType: !22, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !26, file: !19, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !26, file: !19, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !26, file: !19, line: 215, baseType: !37, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !26, file: !19, line: 218, baseType: !22, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !26, file: !19, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !48, line: 44, baseType: !49)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !26, file: !19, line: 222, baseType: !17, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !26, file: !19, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !48, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !22)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !26, file: !19, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !48, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !48, line: 165, baseType: !22, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !48, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !48, line: 166, size: 32, elements: !93)
!93 = !{!94, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !48, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !15, line: 124, baseType: !96)
!96 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !48, line: 169, baseType: !98, size: 32)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 32, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 4)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !26, file: !19, line: 229, baseType: !22, size: 32, offset: 1376)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !18, file: !19, line: 576, baseType: !24, size: 64, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !18, file: !19, line: 578, baseType: !22, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !18, file: !19, line: 579, baseType: !106, size: 200, offset: 288)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 25)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !18, file: !19, line: 582, baseType: !22, size: 32, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !18, file: !19, line: 583, baseType: !111, size: 64, offset: 576)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !19, line: 40, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !18, file: !19, line: 585, baseType: !22, size: 32, offset: 640)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !18, file: !19, line: 587, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !17}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !18, file: !19, line: 590, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !19, line: 47, size: 256, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !120, file: !19, line: 49, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !120, file: !19, line: 50, baseType: !22, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !120, file: !19, line: 50, baseType: !22, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !120, file: !19, line: 50, baseType: !22, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !120, file: !19, line: 50, baseType: !22, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !120, file: !19, line: 51, baseType: !128, size: 32, offset: 192)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 32, elements: !75)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !19, line: 25, baseType: !96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !18, file: !19, line: 591, baseType: !22, size: 32, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !18, file: !19, line: 592, baseType: !119, size: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !18, file: !19, line: 593, baseType: !133, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !18, file: !19, line: 596, baseType: !22, size: 32, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !18, file: !19, line: 597, baseType: !50, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !18, file: !19, line: 632, baseType: !137, size: 2880, offset: 1152)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !19, line: 599, size: 2880, elements: !138)
!138 = !{!139, !189}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !137, file: !19, line: 622, baseType: !140, size: 1728)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !19, line: 601, size: 1728, elements: !141)
!141 = !{!142, !143, !144, !148, !160, !161, !163, !171, !172, !173, !174, !178, !182, !183, !184, !185, !186, !187, !188}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !140, file: !19, line: 603, baseType: !96, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !140, file: !19, line: 604, baseType: !50, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !140, file: !19, line: 605, baseType: !145, size: 208, offset: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 26)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !140, file: !19, line: 606, baseType: !149, size: 288, offset: 352)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !19, line: 55, size: 288, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !149, file: !19, line: 57, baseType: !22, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !149, file: !19, line: 58, baseType: !22, size: 32, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !149, file: !19, line: 59, baseType: !22, size: 32, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !149, file: !19, line: 60, baseType: !22, size: 32, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !149, file: !19, line: 61, baseType: !22, size: 32, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !149, file: !19, line: 62, baseType: !22, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !149, file: !19, line: 63, baseType: !22, size: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !149, file: !19, line: 64, baseType: !22, size: 32, offset: 224)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !149, file: !19, line: 65, baseType: !22, size: 32, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !140, file: !19, line: 607, baseType: !22, size: 32, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !140, file: !19, line: 608, baseType: !162, size: 64, offset: 704)
!162 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !140, file: !19, line: 609, baseType: !164, size: 112, offset: 768)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !19, line: 319, size: 112, elements: !165)
!165 = !{!166, !169, !170}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !164, file: !19, line: 320, baseType: !167, size: 48)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 48, elements: !71)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !164, file: !19, line: 321, baseType: !167, size: 48, offset: 48)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !164, file: !19, line: 322, baseType: !168, size: 16, offset: 96)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !140, file: !19, line: 610, baseType: !87, size: 64, offset: 896)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !140, file: !19, line: 611, baseType: !87, size: 64, offset: 960)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !140, file: !19, line: 612, baseType: !87, size: 64, offset: 1024)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !140, file: !19, line: 613, baseType: !175, size: 64, offset: 1088)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !140, file: !19, line: 614, baseType: !179, size: 192, offset: 1152)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 24)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !140, file: !19, line: 615, baseType: !22, size: 32, offset: 1344)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !140, file: !19, line: 616, baseType: !87, size: 64, offset: 1376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !140, file: !19, line: 617, baseType: !87, size: 64, offset: 1440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !140, file: !19, line: 618, baseType: !87, size: 64, offset: 1504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !140, file: !19, line: 619, baseType: !87, size: 64, offset: 1568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !140, file: !19, line: 620, baseType: !87, size: 64, offset: 1632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !140, file: !19, line: 621, baseType: !22, size: 32, offset: 1696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !137, file: !19, line: 631, baseType: !190, size: 2880)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !19, line: 626, size: 2880, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !190, file: !19, line: 629, baseType: !193, size: 1920)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1920, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 30)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !190, file: !19, line: 630, baseType: !197, size: 960, offset: 1920)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 960, elements: !194)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !18, file: !19, line: 636, baseType: !199, size: 64, offset: 4032)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !19, line: 93, size: 6336, elements: !201)
!201 = !{!202, !203, !204, !211}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !200, file: !19, line: 94, baseType: !199, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !200, file: !19, line: 95, baseType: !22, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !200, file: !19, line: 97, baseType: !205, size: 2048, offset: 128)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 2048, elements: !209)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null}
!209 = !{!210}
!210 = !DISubrange(count: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !200, file: !19, line: 98, baseType: !212, size: 4160, offset: 2176)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !19, line: 74, size: 4160, elements: !213)
!213 = !{!214, !216, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !212, file: !19, line: 75, baseType: !215, size: 2048)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !209)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !212, file: !19, line: 76, baseType: !215, size: 2048, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !212, file: !19, line: 78, baseType: !129, size: 32, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !212, file: !19, line: 81, baseType: !129, size: 32, offset: 4128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !18, file: !19, line: 637, baseType: !200, size: 6336, offset: 4096)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !18, file: !19, line: 641, baseType: !221, size: 64, offset: 10432)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !22}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !18, file: !19, line: 646, baseType: !226, size: 192, offset: 10496)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !19, line: 291, size: 192, elements: !227)
!227 = !{!228, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !226, file: !19, line: 293, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !226, file: !19, line: 294, baseType: !22, size: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !226, file: !19, line: 295, baseType: !24, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !18, file: !19, line: 648, baseType: !233, size: 4224, offset: 10688)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 4224, elements: !71)
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !238, line: 40, baseType: !239)
!238 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !48, line: 129, baseType: !16)
!240 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !243, line: 66, baseType: !25)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253}
!245 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !11, line: 143, type: !17)
!246 = !DILocalVariable(name: "buf", arg: 2, scope: !10, file: !11, line: 143, type: !234)
!247 = !DILocalVariable(name: "size", arg: 3, scope: !10, file: !11, line: 143, type: !237)
!248 = !DILocalVariable(name: "count", arg: 4, scope: !10, file: !11, line: 143, type: !237)
!249 = !DILocalVariable(name: "fp", arg: 5, scope: !10, file: !11, line: 143, type: !240)
!250 = !DILocalVariable(name: "n", scope: !10, file: !11, line: 150, type: !237)
!251 = !DILocalVariable(name: "i", scope: !10, file: !11, line: 178, type: !237)
!252 = !DILocalVariable(name: "p", scope: !10, file: !11, line: 179, type: !55)
!253 = !DILocalVariable(name: "_check_init_ptr", scope: !254, file: !11, line: 181, type: !17)
!254 = distinct !DILexicalBlock(scope: !10, file: !11, line: 181, column: 3)
!255 = !DILocation(line: 143, column: 1, scope: !10)
!256 = !DILocation(line: 178, column: 10, scope: !10)
!257 = !DILocation(line: 179, column: 16, scope: !10)
!258 = !DILocation(line: 180, column: 13, scope: !10)
!259 = !DILocation(line: 150, column: 10, scope: !10)
!260 = !DILocation(line: 181, column: 3, scope: !254)
!261 = !DILocation(line: 181, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !254, file: !11, line: 181, column: 3)
!263 = !{!264, !265, i64 80}
!264 = !{!"_reent", !265, i64 0, !268, i64 8, !268, i64 16, !268, i64 24, !265, i64 32, !266, i64 36, !265, i64 64, !268, i64 72, !265, i64 80, !268, i64 88, !268, i64 96, !265, i64 104, !268, i64 112, !268, i64 120, !265, i64 128, !268, i64 136, !266, i64 144, !268, i64 504, !269, i64 512, !268, i64 1304, !271, i64 1312, !266, i64 1336}
!265 = !{!"int", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C/C++ TBAA"}
!268 = !{!"any pointer", !266, i64 0}
!269 = !{!"_atexit", !268, i64 0, !265, i64 8, !266, i64 16, !270, i64 272}
!270 = !{!"_on_exit_args", !266, i64 0, !266, i64 256, !265, i64 512, !265, i64 516}
!271 = !{!"_glue", !268, i64 0, !265, i64 8, !268, i64 16}
!272 = !DILocation(line: 186, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !10, file: !11, line: 186, column: 7)
!274 = !{!275, !276, i64 16}
!275 = !{!"__sFILE", !268, i64 0, !265, i64 8, !265, i64 12, !276, i64 16, !276, i64 18, !277, i64 24, !265, i64 40, !268, i64 48, !268, i64 56, !268, i64 64, !268, i64 72, !268, i64 80, !277, i64 88, !268, i64 104, !265, i64 112, !266, i64 116, !266, i64 119, !277, i64 120, !265, i64 136, !278, i64 144, !268, i64 152, !265, i64 160, !279, i64 164, !265, i64 172}
!276 = !{!"short", !266, i64 0}
!277 = !{!"__sbuf", !268, i64 0, !265, i64 8}
!278 = !{!"long", !266, i64 0}
!279 = !{!"", !265, i64 0, !266, i64 4}
!280 = !{!275, !268, i64 24}
!281 = !DILocation(line: 189, column: 12, scope: !10)
!282 = !DILocation(line: 186, column: 7, scope: !10)
!283 = !DILocation(line: 189, column: 3, scope: !10)
!284 = !DILocation(line: 191, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !11, line: 191, column: 11)
!286 = distinct !DILexicalBlock(scope: !10, file: !11, line: 190, column: 5)
!287 = !{!266, !266, i64 0}
!288 = !DILocalVariable(name: "_ptr", arg: 1, scope: !289, file: !243, line: 687, type: !17)
!289 = distinct !DISubprogram(name: "__sputc_r", scope: !243, file: !243, line: 687, type: !290, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{!22, !17, !22, !241}
!292 = !{!288, !293, !294}
!293 = !DILocalVariable(name: "_c", arg: 2, scope: !289, file: !243, line: 687, type: !22)
!294 = !DILocalVariable(name: "_p", arg: 3, scope: !289, file: !243, line: 687, type: !241)
!295 = !DILocation(line: 687, column: 47, scope: !289, inlinedAt: !296)
!296 = distinct !DILocation(line: 191, column: 11, scope: !285)
!297 = !DILocation(line: 687, column: 57, scope: !289, inlinedAt: !296)
!298 = !DILocation(line: 687, column: 67, scope: !289, inlinedAt: !296)
!299 = !DILocation(line: 692, column: 6, scope: !300, inlinedAt: !296)
!300 = distinct !DILexicalBlock(scope: !289, file: !243, line: 692, column: 6)
!301 = !{!275, !265, i64 12}
!302 = !DILocation(line: 692, column: 15, scope: !300, inlinedAt: !296)
!303 = !DILocation(line: 692, column: 20, scope: !300, inlinedAt: !296)
!304 = !DILocation(line: 692, column: 38, scope: !300, inlinedAt: !296)
!305 = !{!275, !265, i64 40}
!306 = !DILocation(line: 692, column: 31, scope: !300, inlinedAt: !296)
!307 = !DILocation(line: 692, column: 59, scope: !300, inlinedAt: !296)
!308 = !DILocation(line: 692, column: 47, scope: !300, inlinedAt: !296)
!309 = !DILocation(line: 693, column: 18, scope: !300, inlinedAt: !296)
!310 = !{!275, !268, i64 0}
!311 = !DILocation(line: 693, column: 21, scope: !300, inlinedAt: !296)
!312 = !DILocation(line: 191, column: 11, scope: !286)
!313 = !DILocation(line: 695, column: 11, scope: !300, inlinedAt: !296)
!314 = !DILocation(line: 191, column: 37, scope: !285)
!315 = !DILocation(line: 192, column: 12, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !11, line: 192, column: 7)
!317 = distinct !DILexicalBlock(scope: !285, file: !11, line: 191, column: 45)
!318 = !DILocation(line: 192, column: 7, scope: !317)
!319 = !DILocation(line: 197, column: 8, scope: !286)
!320 = distinct !{!320, !283, !321}
!321 = !DILocation(line: 198, column: 5, scope: !10)
!322 = !DILocation(line: 0, scope: !10)
!323 = !DILocation(line: 202, column: 12, scope: !10)
!324 = !DILocation(line: 202, column: 3, scope: !10)
!325 = distinct !DISubprogram(name: "fwrite_unlocked", scope: !11, file: !11, line: 208, type: !326, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!14, !234, !237, !237, !241}
!328 = !{!329, !330, !331, !332}
!329 = !DILocalVariable(name: "buf", arg: 1, scope: !325, file: !11, line: 208, type: !234)
!330 = !DILocalVariable(name: "size", arg: 2, scope: !325, file: !11, line: 208, type: !237)
!331 = !DILocalVariable(name: "count", arg: 3, scope: !325, file: !11, line: 208, type: !237)
!332 = !DILocalVariable(name: "fp", arg: 4, scope: !325, file: !11, line: 208, type: !241)
!333 = !DILocation(line: 208, column: 1, scope: !325)
!334 = !DILocation(line: 214, column: 21, scope: !325)
!335 = !DILocation(line: 214, column: 10, scope: !325)
!336 = !DILocation(line: 214, column: 3, scope: !325)
