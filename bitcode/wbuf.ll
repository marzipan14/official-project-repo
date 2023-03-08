; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wbuf.c"
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
define dso_local i32 @__swbuf_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !10 {
  %4 = icmp eq %struct._reent* %0, null, !dbg !243
  br i1 %4, label %10, label %5, !dbg !243

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !243
  %7 = load i32, i32* %6, align 8, !dbg !243, !tbaa !245
  %8 = icmp eq i32 %7, 0, !dbg !243
  br i1 %8, label %9, label %10, !dbg !242

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !243
  br label %10, !dbg !243

; <label>:10:                                     ; preds = %5, %3, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 6, !dbg !254
  %12 = load i32, i32* %11, align 8, !dbg !254, !tbaa !255
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 2, !dbg !261
  store i32 %12, i32* %13, align 4, !dbg !262, !tbaa !263
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 3, !dbg !264
  %15 = load i16, i16* %14, align 8, !dbg !264, !tbaa !266
  %16 = and i16 %15, 8, !dbg !264
  %17 = icmp eq i16 %16, 0, !dbg !264
  br i1 %17, label %24, label %18, !dbg !264

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 0, !dbg !264
  %20 = load i8*, i8** %19, align 8, !dbg !264, !tbaa !267
  %21 = icmp eq i8* %20, null, !dbg !264
  br i1 %21, label %24, label %22, !dbg !264

; <label>:22:                                     ; preds = %18
  %23 = ptrtoint i8* %20 to i64, !dbg !264
  br label %31, !dbg !264

; <label>:24:                                     ; preds = %18, %10
  %25 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #3, !dbg !264
  %26 = icmp eq i32 %25, 0, !dbg !264
  br i1 %26, label %27, label %68, !dbg !268

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5
  %29 = bitcast %struct.__sbuf* %28 to i64*
  %30 = load i64, i64* %29, align 8, !dbg !269, !tbaa !267
  br label %31, !dbg !268

; <label>:31:                                     ; preds = %22, %27
  %32 = phi i64 [ %30, %27 ], [ %23, %22 ], !dbg !269
  %33 = trunc i32 %1 to i8, !dbg !270
  %34 = and i32 %1, 255, !dbg !270
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 0, !dbg !271
  %36 = bitcast %struct.__sFILE* %2 to i64*, !dbg !271
  %37 = load i64, i64* %36, align 8, !dbg !271, !tbaa !272
  %38 = sub i64 %37, %32, !dbg !273
  %39 = trunc i64 %38 to i32, !dbg !274
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %2, i64 0, i32 5, i32 1, !dbg !276
  %41 = load i32, i32* %40, align 8, !dbg !276, !tbaa !278
  %42 = icmp sgt i32 %41, %39, !dbg !279
  %43 = inttoptr i64 %37 to i8*, !dbg !280
  br i1 %42, label %49, label %44, !dbg !280

; <label>:44:                                     ; preds = %31
  %45 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #3, !dbg !281
  %46 = icmp eq i32 %45, 0, !dbg !281
  br i1 %46, label %47, label %68, !dbg !284

; <label>:47:                                     ; preds = %44
  %48 = load i8*, i8** %35, align 8, !dbg !285, !tbaa !272
  br label %49, !dbg !284

; <label>:49:                                     ; preds = %47, %31
  %50 = phi i8* [ %43, %31 ], [ %48, %47 ], !dbg !285
  %51 = phi i32 [ %39, %31 ], [ 0, %47 ], !dbg !286
  %52 = load i32, i32* %13, align 4, !dbg !287, !tbaa !263
  %53 = add nsw i32 %52, -1, !dbg !287
  store i32 %53, i32* %13, align 4, !dbg !287, !tbaa !263
  %54 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !285
  store i8* %54, i8** %35, align 8, !dbg !285, !tbaa !272
  store i8 %33, i8* %50, align 1, !dbg !288, !tbaa !289
  %55 = add nsw i32 %51, 1, !dbg !290
  %56 = load i32, i32* %40, align 8, !dbg !292, !tbaa !278
  %57 = icmp eq i32 %55, %56, !dbg !293
  br i1 %57, label %64, label %58, !dbg !294

; <label>:58:                                     ; preds = %49
  %59 = load i16, i16* %14, align 8, !dbg !295, !tbaa !266
  %60 = and i16 %59, 1, !dbg !296
  %61 = icmp ne i16 %60, 0, !dbg !296
  %62 = icmp eq i32 %34, 10, !dbg !297
  %63 = and i1 %62, %61, !dbg !298
  br i1 %63, label %64, label %67, !dbg !298

; <label>:64:                                     ; preds = %58, %49
  %65 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %2) #3, !dbg !299
  %66 = icmp eq i32 %65, 0, !dbg !299
  br i1 %66, label %67, label %68, !dbg !301

; <label>:67:                                     ; preds = %64, %58
  br label %68, !dbg !302

; <label>:68:                                     ; preds = %64, %44, %24, %67
  %69 = phi i32 [ %34, %67 ], [ -1, %24 ], [ -1, %44 ], [ -1, %64 ], !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 %69, !dbg !303
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__swbuf(i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !304 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !311
  %4 = tail call i32 @__swbuf_r(%struct._reent* %3, i32 %0, %struct.__sFILE* %1) #4, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  ret i32 %4, !dbg !313
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wbuf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "__swbuf_r", scope: !1, file: !1, line: 36, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !13, !231}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !15, file: !16, line: 571, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !23)
!23 = !{!24, !26, !27, !28, !30, !31, !36, !37, !38, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !16, line: 182, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !16, line: 184, baseType: !13, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !16, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !16, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !16, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !16, line: 118, baseType: !25, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !16, line: 119, baseType: !13, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !16, line: 195, baseType: !4, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !16, line: 197, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !14, !4, !45, !13}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !43, line: 145, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !16, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!42, !14, !4, !51, !13}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !16, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !14, !4, !57, !13}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !43, line: 114, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !16, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!13, !14, !4}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !16, line: 206, baseType: !32, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !16, line: 207, baseType: !25, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !16, line: 208, baseType: !13, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !16, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !16, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !16, line: 215, baseType: !32, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !16, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !43, line: 44, baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !16, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !43, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !13)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !16, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !43, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !43, line: 165, baseType: !13, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !43, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !43, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !43, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !43, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !13, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !15, file: !16, line: 582, baseType: !13, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !15, file: !16, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !15, file: !16, line: 585, baseType: !13, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !15, file: !16, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !14}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !15, file: !16, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !16, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !16, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !15, file: !16, line: 591, baseType: !13, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !15, file: !16, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !15, file: !16, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !15, file: !16, line: 596, baseType: !13, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !15, file: !16, line: 597, baseType: !45, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !15, file: !16, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !16, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !16, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !16, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !16, line: 604, baseType: !45, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !16, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !16, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !16, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !16, line: 57, baseType: !13, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !16, line: 58, baseType: !13, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !16, line: 59, baseType: !13, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !16, line: 60, baseType: !13, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !16, line: 61, baseType: !13, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !16, line: 62, baseType: !13, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !16, line: 63, baseType: !13, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !16, line: 64, baseType: !13, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !16, line: 65, baseType: !13, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !16, line: 607, baseType: !13, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !16, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !16, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !16, line: 319, size: 112, elements: !162)
!162 = !{!163, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !16, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !67)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !16, line: 321, baseType: !164, size: 48, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !16, line: 322, baseType: !165, size: 16, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !16, line: 610, baseType: !83, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !16, line: 611, baseType: !83, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !16, line: 612, baseType: !83, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !16, line: 613, baseType: !172, size: 64, offset: 1088)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !16, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !16, line: 615, baseType: !13, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !16, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !16, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !16, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !16, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !16, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !16, line: 621, baseType: !13, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !16, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !16, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !16, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !16, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !15, file: !16, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !16, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !16, line: 95, baseType: !13, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !197, file: !16, line: 97, baseType: !202, size: 2048, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !197, file: !16, line: 98, baseType: !209, size: 4160, offset: 2176)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !16, line: 74, size: 4160, elements: !210)
!210 = !{!211, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !209, file: !16, line: 75, baseType: !212, size: 2048)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !16, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !16, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !16, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !15, file: !16, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !15, file: !16, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !13}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !15, file: !16, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !16, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !16, line: 294, baseType: !13, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !16, line: 295, baseType: !20, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !15, file: !16, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 66, baseType: !21)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !237, !238, !239}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !1, line: 36, type: !14)
!236 = !DILocalVariable(name: "c", arg: 2, scope: !10, file: !1, line: 36, type: !13)
!237 = !DILocalVariable(name: "fp", arg: 3, scope: !10, file: !1, line: 36, type: !231)
!238 = !DILocalVariable(name: "n", scope: !10, file: !1, line: 41, type: !13)
!239 = !DILocalVariable(name: "_check_init_ptr", scope: !240, file: !1, line: 45, type: !14)
!240 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 3)
!241 = !DILocation(line: 36, column: 1, scope: !10)
!242 = !DILocation(line: 45, column: 3, scope: !240)
!243 = !DILocation(line: 45, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !1, line: 45, column: 3)
!245 = !{!246, !247, i64 80}
!246 = !{!"_reent", !247, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !247, i64 32, !248, i64 36, !247, i64 64, !250, i64 72, !247, i64 80, !250, i64 88, !250, i64 96, !247, i64 104, !250, i64 112, !250, i64 120, !247, i64 128, !250, i64 136, !248, i64 144, !250, i64 504, !251, i64 512, !250, i64 1304, !253, i64 1312, !248, i64 1336}
!247 = !{!"int", !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C/C++ TBAA"}
!250 = !{!"any pointer", !248, i64 0}
!251 = !{!"_atexit", !250, i64 0, !247, i64 8, !248, i64 16, !252, i64 272}
!252 = !{!"_on_exit_args", !248, i64 0, !248, i64 256, !247, i64 512, !247, i64 516}
!253 = !{!"_glue", !250, i64 0, !247, i64 8, !250, i64 16}
!254 = !DILocation(line: 55, column: 16, scope: !10)
!255 = !{!256, !247, i64 40}
!256 = !{!"__sFILE", !250, i64 0, !247, i64 8, !247, i64 12, !257, i64 16, !257, i64 18, !258, i64 24, !247, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !258, i64 88, !250, i64 104, !247, i64 112, !248, i64 116, !248, i64 119, !258, i64 120, !247, i64 136, !259, i64 144, !250, i64 152, !247, i64 160, !260, i64 164, !247, i64 172}
!257 = !{!"short", !248, i64 0}
!258 = !{!"__sbuf", !250, i64 0, !247, i64 8}
!259 = !{!"long", !248, i64 0}
!260 = !{!"", !247, i64 0, !248, i64 4}
!261 = !DILocation(line: 55, column: 7, scope: !10)
!262 = !DILocation(line: 55, column: 10, scope: !10)
!263 = !{!256, !247, i64 12}
!264 = !DILocation(line: 56, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !10, file: !1, line: 56, column: 7)
!266 = !{!256, !257, i64 16}
!267 = !{!256, !250, i64 24}
!268 = !DILocation(line: 56, column: 7, scope: !10)
!269 = !DILocation(line: 72, column: 24, scope: !10)
!270 = !DILocation(line: 58, column: 7, scope: !10)
!271 = !DILocation(line: 72, column: 11, scope: !10)
!272 = !{!256, !250, i64 0}
!273 = !DILocation(line: 72, column: 14, scope: !10)
!274 = !DILocation(line: 72, column: 7, scope: !10)
!275 = !DILocation(line: 41, column: 16, scope: !10)
!276 = !DILocation(line: 73, column: 20, scope: !277)
!277 = distinct !DILexicalBlock(scope: !10, file: !1, line: 73, column: 7)
!278 = !{!256, !247, i64 32}
!279 = !DILocation(line: 73, column: 9, scope: !277)
!280 = !DILocation(line: 73, column: 7, scope: !10)
!281 = !DILocation(line: 75, column: 11, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 75, column: 11)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 74, column: 5)
!284 = !DILocation(line: 75, column: 11, scope: !283)
!285 = !DILocation(line: 80, column: 10, scope: !10)
!286 = !DILocation(line: 0, scope: !10)
!287 = !DILocation(line: 79, column: 9, scope: !10)
!288 = !DILocation(line: 80, column: 13, scope: !10)
!289 = !{!248, !248, i64 0}
!290 = !DILocation(line: 81, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !10, file: !1, line: 81, column: 7)
!292 = !DILocation(line: 81, column: 22, scope: !291)
!293 = !DILocation(line: 81, column: 11, scope: !291)
!294 = !DILocation(line: 81, column: 28, scope: !291)
!295 = !DILocation(line: 81, column: 36, scope: !291)
!296 = !DILocation(line: 81, column: 43, scope: !291)
!297 = !DILocation(line: 81, column: 57, scope: !291)
!298 = !DILocation(line: 81, column: 52, scope: !291)
!299 = !DILocation(line: 82, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !291, file: !1, line: 82, column: 9)
!301 = !DILocation(line: 82, column: 9, scope: !291)
!302 = !DILocation(line: 84, column: 3, scope: !10)
!303 = !DILocation(line: 85, column: 1, scope: !10)
!304 = distinct !DISubprogram(name: "__swbuf", scope: !1, file: !1, line: 91, type: !305, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!13, !13, !231}
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "c", arg: 1, scope: !304, file: !1, line: 91, type: !13)
!309 = !DILocalVariable(name: "fp", arg: 2, scope: !304, file: !1, line: 91, type: !231)
!310 = !DILocation(line: 91, column: 1, scope: !304)
!311 = !DILocation(line: 95, column: 21, scope: !304)
!312 = !DILocation(line: 95, column: 10, scope: !304)
!313 = !DILocation(line: 95, column: 3, scope: !304)
