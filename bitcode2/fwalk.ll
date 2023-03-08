; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwalk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwalk.c"
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
define dso_local i32 @_fwalk(%struct._reent* readonly, i32 (%struct.__sFILE*)* nocapture) local_unnamed_addr #0 !dbg !9 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br label %4, !dbg !250

; <label>:4:                                      ; preds = %2, %33
  %5 = phi %struct._glue* [ %3, %2 ], [ %36, %33 ]
  %6 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %7 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 2, !dbg !251
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !251, !tbaa !254
  %9 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 1, !dbg !261
  %10 = load i32, i32* %9, align 8, !dbg !261, !tbaa !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %11 = icmp sgt i32 %10, 0, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %11, label %12, label %33, !dbg !267

; <label>:12:                                     ; preds = %4, %29
  %13 = phi i32 [ %16, %29 ], [ %10, %4 ]
  %14 = phi i32 [ %30, %29 ], [ %6, %4 ]
  %15 = phi %struct.__sFILE* [ %31, %29 ], [ %8, %4 ]
  %16 = add nsw i32 %13, -1, !dbg !268
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 3, !dbg !269
  %18 = load i16, i16* %17, align 8, !dbg !269, !tbaa !271
  %19 = icmp eq i16 %18, 0, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %19, label %29, label %20, !dbg !278

; <label>:20:                                     ; preds = %12
  %21 = icmp eq i16 %18, 1, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br i1 %21, label %29, label %22, !dbg !280

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 4, !dbg !281
  %24 = load i16, i16* %23, align 2, !dbg !281, !tbaa !282
  %25 = icmp eq i16 %24, -1, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %25, label %29, label %26, !dbg !284

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 %1(%struct.__sFILE* nonnull %15) #2, !dbg !285
  %28 = or i32 %27, %14, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br label %29, !dbg !287

; <label>:29:                                     ; preds = %22, %20, %12, %26
  %30 = phi i32 [ %28, %26 ], [ %14, %22 ], [ %14, %20 ], [ %14, %12 ], !dbg !288
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 1, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  %32 = icmp sgt i32 %13, 1, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  br i1 %32, label %12, label %33, !dbg !267, !llvm.loop !291

; <label>:33:                                     ; preds = %29, %4
  %34 = phi i32 [ %6, %4 ], [ %30, %29 ], !dbg !293
  %35 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 0, !dbg !294
  %36 = load %struct._glue*, %struct._glue** %35, align 8, !dbg !294, !tbaa !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  %37 = icmp eq %struct._glue* %36, null, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %37, label %38, label %4, !dbg !250, !llvm.loop !298

; <label>:38:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret i32 %34, !dbg !300
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_fwalk_reent(%struct._reent*, i32 (%struct._reent*, %struct.__sFILE*)* nocapture) local_unnamed_addr #0 !dbg !301 {
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %4, !dbg !320

; <label>:4:                                      ; preds = %2, %33
  %5 = phi %struct._glue* [ %3, %2 ], [ %36, %33 ]
  %6 = phi i32 [ 0, %2 ], [ %34, %33 ]
  %7 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 2, !dbg !321
  %8 = load %struct.__sFILE*, %struct.__sFILE** %7, align 8, !dbg !321, !tbaa !254
  %9 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 1, !dbg !325
  %10 = load i32, i32* %9, align 8, !dbg !325, !tbaa !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %11 = icmp sgt i32 %10, 0, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %11, label %12, label %33, !dbg !330

; <label>:12:                                     ; preds = %4, %29
  %13 = phi i32 [ %16, %29 ], [ %10, %4 ]
  %14 = phi i32 [ %30, %29 ], [ %6, %4 ]
  %15 = phi %struct.__sFILE* [ %31, %29 ], [ %8, %4 ]
  %16 = add nsw i32 %13, -1, !dbg !331
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 3, !dbg !332
  %18 = load i16, i16* %17, align 8, !dbg !332, !tbaa !271
  %19 = icmp eq i16 %18, 0, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %19, label %29, label %20, !dbg !335

; <label>:20:                                     ; preds = %12
  %21 = icmp eq i16 %18, 1, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %21, label %29, label %22, !dbg !337

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 0, i32 4, !dbg !338
  %24 = load i16, i16* %23, align 2, !dbg !338, !tbaa !282
  %25 = icmp eq i16 %24, -1, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  br i1 %25, label %29, label %26, !dbg !340

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 %1(%struct._reent* %0, %struct.__sFILE* nonnull %15) #2, !dbg !341
  %28 = or i32 %27, %14, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br label %29, !dbg !343

; <label>:29:                                     ; preds = %22, %20, %12, %26
  %30 = phi i32 [ %28, %26 ], [ %14, %22 ], [ %14, %20 ], [ %14, %12 ], !dbg !344
  %31 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %15, i64 1, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  %32 = icmp sgt i32 %13, 1, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %32, label %12, label %33, !dbg !330, !llvm.loop !347

; <label>:33:                                     ; preds = %29, %4
  %34 = phi i32 [ %6, %4 ], [ %30, %29 ], !dbg !349
  %35 = getelementptr inbounds %struct._glue, %struct._glue* %5, i64 0, i32 0, !dbg !350
  %36 = load %struct._glue*, %struct._glue** %35, align 8, !dbg !350, !tbaa !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %37 = icmp eq %struct._glue* %36, null, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %37, label %38, label %4, !dbg !320, !llvm.loop !353

; <label>:38:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  ret i32 %34, !dbg !355
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fwalk.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "_fwalk", scope: !1, file: !1, line: 31, type: !10, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !237)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !231}
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
!22 = !{!23, !26, !27, !28, !30, !31, !36, !37, !38, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
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
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !21, file: !15, line: 195, baseType: !4, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !21, file: !15, line: 197, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !13, !4, !45, !12}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !43, line: 145, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !21, file: !15, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!42, !13, !4, !51, !12}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !21, file: !15, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !13, !4, !57, !12}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !43, line: 114, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !21, file: !15, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!12, !13, !4}
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
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !43, line: 44, baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !21, file: !15, line: 222, baseType: !13, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !21, file: !15, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !43, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !12)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !21, file: !15, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !43, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !43, line: 165, baseType: !12, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !43, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !43, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !43, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !43, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !21, file: !15, line: 229, baseType: !12, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !14, file: !15, line: 576, baseType: !19, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !14, file: !15, line: 578, baseType: !12, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !14, file: !15, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !104)
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
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !14, file: !15, line: 597, baseType: !45, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !14, file: !15, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !14, file: !15, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !15, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !15, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !15, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !15, line: 604, baseType: !45, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !15, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !143)
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
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !15, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !177)
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
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !206)
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
!232 = !DISubroutineType(types: !233)
!233 = !{!12, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !236, line: 66, baseType: !20)
!236 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!237 = !{!238, !239, !240, !241, !242, !243}
!238 = !DILocalVariable(name: "ptr", arg: 1, scope: !9, file: !1, line: 31, type: !13)
!239 = !DILocalVariable(name: "function", arg: 2, scope: !9, file: !1, line: 31, type: !231)
!240 = !DILocalVariable(name: "fp", scope: !9, file: !1, line: 35, type: !234)
!241 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 36, type: !12)
!242 = !DILocalVariable(name: "ret", scope: !9, file: !1, line: 36, type: !12)
!243 = !DILocalVariable(name: "g", scope: !9, file: !1, line: 37, type: !226)
!244 = !DILocation(line: 31, column: 1, scope: !9)
!245 = !DILocation(line: 36, column: 19, scope: !9)
!246 = !DILocation(line: 47, column: 18, scope: !247)
!247 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 3)
!248 = !DILocation(line: 37, column: 26, scope: !9)
!249 = !DILocation(line: 47, column: 8, scope: !247)
!250 = !DILocation(line: 47, column: 3, scope: !247)
!251 = !DILocation(line: 48, column: 18, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 48, column: 5)
!253 = distinct !DILexicalBlock(scope: !247, file: !1, line: 47, column: 3)
!254 = !{!255, !256, i64 16}
!255 = !{!"_glue", !256, i64 0, !259, i64 8, !256, i64 16}
!256 = !{!"any pointer", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C/C++ TBAA"}
!259 = !{!"int", !257, i64 0}
!260 = !DILocation(line: 35, column: 18, scope: !9)
!261 = !DILocation(line: 48, column: 32, scope: !252)
!262 = !{!255, !259, i64 8}
!263 = !DILocation(line: 36, column: 16, scope: !9)
!264 = !DILocation(line: 48, column: 10, scope: !252)
!265 = !DILocation(line: 48, column: 44, scope: !266)
!266 = distinct !DILexicalBlock(scope: !252, file: !1, line: 48, column: 5)
!267 = !DILocation(line: 48, column: 5, scope: !252)
!268 = !DILocation(line: 48, column: 40, scope: !266)
!269 = !DILocation(line: 49, column: 15, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !1, line: 49, column: 11)
!271 = !{!272, !273, i64 16}
!272 = !{!"__sFILE", !256, i64 0, !259, i64 8, !259, i64 12, !273, i64 16, !273, i64 18, !274, i64 24, !259, i64 40, !256, i64 48, !256, i64 56, !256, i64 64, !256, i64 72, !256, i64 80, !274, i64 88, !256, i64 104, !259, i64 112, !257, i64 116, !257, i64 119, !274, i64 120, !259, i64 136, !275, i64 144, !256, i64 152, !259, i64 160, !276, i64 164, !259, i64 172}
!273 = !{!"short", !257, i64 0}
!274 = !{!"__sbuf", !256, i64 0, !259, i64 8}
!275 = !{!"long", !257, i64 0}
!276 = !{!"", !259, i64 0, !257, i64 4}
!277 = !DILocation(line: 49, column: 22, scope: !270)
!278 = !DILocation(line: 49, column: 27, scope: !270)
!279 = !DILocation(line: 49, column: 41, scope: !270)
!280 = !DILocation(line: 49, column: 46, scope: !270)
!281 = !DILocation(line: 49, column: 53, scope: !270)
!282 = !{!272, !273, i64 18}
!283 = !DILocation(line: 49, column: 59, scope: !270)
!284 = !DILocation(line: 49, column: 11, scope: !266)
!285 = !DILocation(line: 50, column: 9, scope: !270)
!286 = !DILocation(line: 50, column: 6, scope: !270)
!287 = !DILocation(line: 50, column: 2, scope: !270)
!288 = !DILocation(line: 0, scope: !9)
!289 = !DILocation(line: 48, column: 52, scope: !266)
!290 = !DILocation(line: 48, column: 5, scope: !266)
!291 = distinct !{!291, !267, !292}
!292 = !DILocation(line: 50, column: 24, scope: !252)
!293 = !DILocation(line: 0, scope: !270)
!294 = !DILocation(line: 47, column: 45, scope: !253)
!295 = !{!255, !256, i64 0}
!296 = !DILocation(line: 47, column: 3, scope: !253)
!297 = !DILocation(line: 47, column: 29, scope: !253)
!298 = distinct !{!298, !250, !299}
!299 = !DILocation(line: 50, column: 24, scope: !247)
!300 = !DILocation(line: 52, column: 3, scope: !9)
!301 = distinct !DISubprogram(name: "_fwalk_reent", scope: !1, file: !1, line: 58, type: !302, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !307)
!302 = !DISubroutineType(types: !303)
!303 = !{!12, !13, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!12, !13, !234}
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DILocalVariable(name: "ptr", arg: 1, scope: !301, file: !1, line: 58, type: !13)
!309 = !DILocalVariable(name: "reent_function", arg: 2, scope: !301, file: !1, line: 58, type: !304)
!310 = !DILocalVariable(name: "fp", scope: !301, file: !1, line: 62, type: !234)
!311 = !DILocalVariable(name: "n", scope: !301, file: !1, line: 63, type: !12)
!312 = !DILocalVariable(name: "ret", scope: !301, file: !1, line: 63, type: !12)
!313 = !DILocalVariable(name: "g", scope: !301, file: !1, line: 64, type: !226)
!314 = !DILocation(line: 58, column: 1, scope: !301)
!315 = !DILocation(line: 63, column: 19, scope: !301)
!316 = !DILocation(line: 74, column: 18, scope: !317)
!317 = distinct !DILexicalBlock(scope: !301, file: !1, line: 74, column: 3)
!318 = !DILocation(line: 64, column: 26, scope: !301)
!319 = !DILocation(line: 74, column: 8, scope: !317)
!320 = !DILocation(line: 74, column: 3, scope: !317)
!321 = !DILocation(line: 75, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 75, column: 5)
!323 = distinct !DILexicalBlock(scope: !317, file: !1, line: 74, column: 3)
!324 = !DILocation(line: 62, column: 18, scope: !301)
!325 = !DILocation(line: 75, column: 32, scope: !322)
!326 = !DILocation(line: 63, column: 16, scope: !301)
!327 = !DILocation(line: 75, column: 10, scope: !322)
!328 = !DILocation(line: 75, column: 44, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !1, line: 75, column: 5)
!330 = !DILocation(line: 75, column: 5, scope: !322)
!331 = !DILocation(line: 75, column: 40, scope: !329)
!332 = !DILocation(line: 76, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !1, line: 76, column: 11)
!334 = !DILocation(line: 76, column: 22, scope: !333)
!335 = !DILocation(line: 76, column: 27, scope: !333)
!336 = !DILocation(line: 76, column: 41, scope: !333)
!337 = !DILocation(line: 76, column: 46, scope: !333)
!338 = !DILocation(line: 76, column: 53, scope: !333)
!339 = !DILocation(line: 76, column: 59, scope: !333)
!340 = !DILocation(line: 76, column: 11, scope: !329)
!341 = !DILocation(line: 77, column: 9, scope: !333)
!342 = !DILocation(line: 77, column: 6, scope: !333)
!343 = !DILocation(line: 77, column: 2, scope: !333)
!344 = !DILocation(line: 0, scope: !301)
!345 = !DILocation(line: 75, column: 52, scope: !329)
!346 = !DILocation(line: 75, column: 5, scope: !329)
!347 = distinct !{!347, !330, !348}
!348 = !DILocation(line: 77, column: 35, scope: !322)
!349 = !DILocation(line: 0, scope: !333)
!350 = !DILocation(line: 74, column: 45, scope: !323)
!351 = !DILocation(line: 74, column: 3, scope: !323)
!352 = !DILocation(line: 74, column: 29, scope: !323)
!353 = distinct !{!353, !320, !354}
!354 = !DILocation(line: 77, column: 35, scope: !317)
!355 = !DILocation(line: 79, column: 3, scope: !301)
