; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/reent.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/reent.c"
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

@_impure_ptr = external dso_local local_unnamed_addr global %struct._reent*, align 8
@errno = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local void @cleanup_glue(%struct._reent* nocapture readnone, %struct._glue*) local_unnamed_addr #0 !dbg !11 {
  %3 = getelementptr inbounds %struct._glue, %struct._glue* %1, i64 0, i32 0, !dbg !237
  %4 = load %struct._glue*, %struct._glue** %3, align 8, !dbg !237, !tbaa !239
  %5 = icmp eq %struct._glue* %4, null, !dbg !245
  br i1 %5, label %7, label %6, !dbg !246

; <label>:6:                                      ; preds = %2
  tail call void @cleanup_glue(%struct._reent* %0, %struct._glue* nonnull %4) #3, !dbg !247
  br label %7, !dbg !247

; <label>:7:                                      ; preds = %2, %6
  %8 = bitcast %struct._glue* %1 to i8*, !dbg !248
  tail call void @free(i8* %8) #4, !dbg !248
  ret void, !dbg !249
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @_reclaim_reent(%struct._reent*) local_unnamed_addr #0 !dbg !250 {
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 8, !dbg !268, !tbaa !269
  %3 = icmp eq %struct._reent* %2, %0, !dbg !270
  br i1 %3, label %63, label %4, !dbg !271

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !272
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !272, !tbaa !273
  %7 = icmp eq %struct._Bigint** %6, null, !dbg !272
  br i1 %7, label %28, label %8, !dbg !277

; <label>:8:                                      ; preds = %4, %23
  %9 = phi %struct._Bigint** [ %24, %23 ], [ %6, %4 ], !dbg !278
  %10 = phi i64 [ %21, %23 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %9, i64 %10, !dbg !278
  %12 = load %struct._Bigint*, %struct._Bigint** %11, align 8, !dbg !278, !tbaa !269
  %13 = icmp eq %struct._Bigint* %12, null, !dbg !281
  br i1 %13, label %20, label %14, !dbg !281

; <label>:14:                                     ; preds = %8, %14
  %15 = phi %struct._Bigint* [ %18, %14 ], [ %12, %8 ]
  %16 = bitcast %struct._Bigint* %15 to i8*, !dbg !280
  %17 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %15, i64 0, i32 0, !dbg !283
  %18 = load %struct._Bigint*, %struct._Bigint** %17, align 8, !dbg !283, !tbaa !285
  tail call void @free(i8* %16) #4, !dbg !287
  %19 = icmp eq %struct._Bigint* %18, null, !dbg !281
  br i1 %19, label %20, label %14, !dbg !281, !llvm.loop !288

; <label>:20:                                     ; preds = %14, %8
  %21 = add nuw nsw i64 %10, 1, !dbg !290
  %22 = icmp eq i64 %21, 64, !dbg !291
  br i1 %22, label %25, label %23, !dbg !292, !llvm.loop !293

; <label>:23:                                     ; preds = %20
  %24 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !278, !tbaa !273
  br label %8, !dbg !292

; <label>:25:                                     ; preds = %20
  %26 = bitcast %struct._Bigint*** %5 to i8**, !dbg !295
  %27 = load i8*, i8** %26, align 8, !dbg !295, !tbaa !273
  tail call void @free(i8* %27) #4, !dbg !295
  br label %28, !dbg !296

; <label>:28:                                     ; preds = %4, %25
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 10, !dbg !297
  %30 = load %struct._Bigint*, %struct._Bigint** %29, align 8, !dbg !297, !tbaa !299
  %31 = icmp eq %struct._Bigint* %30, null, !dbg !297
  br i1 %31, label %34, label %32, !dbg !300

; <label>:32:                                     ; preds = %28
  %33 = bitcast %struct._Bigint* %30 to i8*, !dbg !301
  tail call void @free(i8* %33) #4, !dbg !301
  br label %34, !dbg !301

; <label>:34:                                     ; preds = %28, %32
  %35 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 17, !dbg !302
  %36 = load %struct._atexit*, %struct._atexit** %35, align 8, !dbg !302, !tbaa !303
  %37 = icmp eq %struct._atexit* %36, null, !dbg !304
  br i1 %37, label %47, label %38, !dbg !305

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 18, !dbg !306
  %40 = icmp eq %struct._atexit* %36, %39, !dbg !307
  br i1 %40, label %47, label %41, !dbg !308

; <label>:41:                                     ; preds = %38, %41
  %42 = phi %struct._atexit* [ %44, %41 ], [ %36, %38 ]
  %43 = getelementptr inbounds %struct._atexit, %struct._atexit* %42, i64 0, i32 0, !dbg !311
  %44 = load %struct._atexit*, %struct._atexit** %43, align 8, !dbg !311, !tbaa !315
  %45 = bitcast %struct._atexit* %42 to i8*, !dbg !316
  tail call void @free(i8* %45) #4, !dbg !316
  %46 = icmp eq %struct._atexit* %44, %39, !dbg !317
  br i1 %46, label %47, label %41, !dbg !318, !llvm.loop !319

; <label>:47:                                     ; preds = %41, %38, %34
  %48 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 15, !dbg !321
  %49 = load i8*, i8** %48, align 8, !dbg !321, !tbaa !323
  %50 = icmp eq i8* %49, null, !dbg !324
  br i1 %50, label %52, label %51, !dbg !325

; <label>:51:                                     ; preds = %47
  tail call void @free(i8* nonnull %49) #4, !dbg !326
  br label %52, !dbg !326

; <label>:52:                                     ; preds = %47, %51
  %53 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !327
  %54 = load i32, i32* %53, align 8, !dbg !327, !tbaa !329
  %55 = icmp eq i32 %54, 0, !dbg !330
  br i1 %55, label %63, label %56, !dbg !331

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 9, !dbg !332
  %58 = load void (%struct._reent*)*, void (%struct._reent*)** %57, align 8, !dbg !332, !tbaa !334
  tail call void %58(%struct._reent* nonnull %0) #4, !dbg !335
  %59 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 0, !dbg !336
  %60 = load %struct._glue*, %struct._glue** %59, align 8, !dbg !336, !tbaa !338
  %61 = icmp eq %struct._glue* %60, null, !dbg !339
  br i1 %61, label %63, label %62, !dbg !340

; <label>:62:                                     ; preds = %56
  tail call void @cleanup_glue(%struct._reent* nonnull %0, %struct._glue* nonnull %60) #3, !dbg !341
  br label %63, !dbg !341

; <label>:63:                                     ; preds = %56, %52, %1, %62
  ret void, !dbg !342
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "errno", scope: !2, file: !3, line: 26, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/reent/reent.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "cleanup_glue", scope: !3, file: !3, line: 33, type: !12, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !233)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !228}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !101, !102, !103, !104, !108, !109, !112, !113, !117, !129, !130, !131, !133, !134, !135, !197, !218, !219, !224, !231}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !15, file: !16, line: 571, baseType: !6, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !23)
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !40, !49, !55, !60, !64, !65, !66, !67, !71, !75, !76, !77, !79, !80, !84, !100}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !16, line: 182, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !16, line: 183, baseType: !6, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !16, line: 184, baseType: !6, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !16, line: 185, baseType: !30, size: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !16, line: 186, baseType: !30, size: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !16, line: 187, baseType: !33, size: 128, offset: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !16, line: 118, baseType: !25, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !16, line: 119, baseType: !6, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !16, line: 188, baseType: !6, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !16, line: 195, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !16, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !14, !39, !47, !6}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !16, line: 199, baseType: !50, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!44, !14, !39, !53, !6}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !16, line: 202, baseType: !56, size: 64, offset: 576)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !14, !39, !59, !6}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !16, line: 203, baseType: !61, size: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!6, !14, !39}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !16, line: 206, baseType: !33, size: 128, offset: 704)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !16, line: 207, baseType: !25, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !16, line: 208, baseType: !6, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !16, line: 211, baseType: !68, size: 24, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !16, line: 212, baseType: !72, size: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !16, line: 215, baseType: !33, size: 128, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !16, line: 218, baseType: !6, size: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !16, line: 219, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !16, line: 226, baseType: !81, size: 32, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !83, line: 12, baseType: !6)
!83 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !16, line: 228, baseType: !85, size: 64, offset: 1312)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !86, file: !45, line: 165, baseType: !6, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !86, file: !45, line: 170, baseType: !90, size: 32, offset: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !45, line: 166, size: 32, elements: !91)
!91 = !{!92, !96}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !90, file: !45, line: 168, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !94, line: 124, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !90, file: !45, line: 169, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !16, line: 229, baseType: !6, size: 32, offset: 1376)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !6, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !105, size: 200, offset: 288)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 200, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 25)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !15, file: !16, line: 582, baseType: !6, size: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !15, file: !16, line: 583, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !15, file: !16, line: 585, baseType: !6, size: 32, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !15, file: !16, line: 587, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !14}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !15, file: !16, line: 590, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !119, file: !16, line: 49, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !119, file: !16, line: 50, baseType: !6, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !119, file: !16, line: 50, baseType: !6, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !119, file: !16, line: 50, baseType: !6, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !119, file: !16, line: 50, baseType: !6, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !119, file: !16, line: 51, baseType: !127, size: 32, offset: 192)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !73)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !95)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !15, file: !16, line: 591, baseType: !6, size: 32, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !15, file: !16, line: 592, baseType: !118, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !15, file: !16, line: 593, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !15, file: !16, line: 596, baseType: !6, size: 32, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !15, file: !16, line: 597, baseType: !47, size: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !15, file: !16, line: 632, baseType: !136, size: 2880, offset: 1152)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 599, size: 2880, elements: !137)
!137 = !{!138, !188}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !136, file: !16, line: 622, baseType: !139, size: 1728)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !16, line: 601, size: 1728, elements: !140)
!140 = !{!141, !142, !143, !147, !159, !160, !162, !170, !171, !172, !173, !177, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !139, file: !16, line: 603, baseType: !95, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !139, file: !16, line: 604, baseType: !47, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !139, file: !16, line: 605, baseType: !144, size: 208, offset: 128)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 208, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 26)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !139, file: !16, line: 606, baseType: !148, size: 288, offset: 352)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !16, line: 55, size: 288, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !148, file: !16, line: 57, baseType: !6, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !148, file: !16, line: 58, baseType: !6, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !148, file: !16, line: 59, baseType: !6, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !148, file: !16, line: 60, baseType: !6, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !148, file: !16, line: 61, baseType: !6, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !148, file: !16, line: 62, baseType: !6, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !148, file: !16, line: 63, baseType: !6, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !148, file: !16, line: 64, baseType: !6, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !148, file: !16, line: 65, baseType: !6, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !139, file: !16, line: 607, baseType: !6, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !139, file: !16, line: 608, baseType: !161, size: 64, offset: 704)
!161 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !139, file: !16, line: 609, baseType: !163, size: 112, offset: 768)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !16, line: 319, size: 112, elements: !164)
!164 = !{!165, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !163, file: !16, line: 320, baseType: !166, size: 48)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !69)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !163, file: !16, line: 321, baseType: !166, size: 48, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !163, file: !16, line: 322, baseType: !167, size: 16, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !139, file: !16, line: 610, baseType: !85, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !139, file: !16, line: 611, baseType: !85, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !139, file: !16, line: 612, baseType: !85, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !139, file: !16, line: 613, baseType: !174, size: 64, offset: 1088)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !139, file: !16, line: 614, baseType: !178, size: 192, offset: 1152)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !139, file: !16, line: 615, baseType: !6, size: 32, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !139, file: !16, line: 616, baseType: !85, size: 64, offset: 1376)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !139, file: !16, line: 617, baseType: !85, size: 64, offset: 1440)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !139, file: !16, line: 618, baseType: !85, size: 64, offset: 1504)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !139, file: !16, line: 619, baseType: !85, size: 64, offset: 1568)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !139, file: !16, line: 620, baseType: !85, size: 64, offset: 1632)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !139, file: !16, line: 621, baseType: !6, size: 32, offset: 1696)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !136, file: !16, line: 631, baseType: !189, size: 2880)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !16, line: 626, size: 2880, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !189, file: !16, line: 629, baseType: !192, size: 1920)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 30)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !189, file: !16, line: 630, baseType: !196, size: 960, offset: 1920)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !193)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !15, file: !16, line: 636, baseType: !198, size: 64, offset: 4032)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !200)
!200 = !{!201, !202, !203, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !199, file: !16, line: 94, baseType: !198, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !199, file: !16, line: 95, baseType: !6, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !199, file: !16, line: 97, baseType: !204, size: 2048, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !208)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !{!209}
!209 = !DISubrange(count: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !199, file: !16, line: 98, baseType: !211, size: 4160, offset: 2176)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !16, line: 74, size: 4160, elements: !212)
!212 = !{!213, !215, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !211, file: !16, line: 75, baseType: !214, size: 2048)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !208)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !211, file: !16, line: 76, baseType: !214, size: 2048, offset: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !211, file: !16, line: 78, baseType: !128, size: 32, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !211, file: !16, line: 81, baseType: !128, size: 32, offset: 4128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !15, file: !16, line: 637, baseType: !199, size: 6336, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !15, file: !16, line: 641, baseType: !220, size: 64, offset: 10432)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !6}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !15, file: !16, line: 646, baseType: !225, size: 192, offset: 10496)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !226)
!226 = !{!227, !229, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !225, file: !16, line: 293, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !225, file: !16, line: 294, baseType: !6, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !225, file: !16, line: 295, baseType: !20, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !15, file: !16, line: 648, baseType: !232, size: 4224, offset: 10688)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !69)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !3, line: 33, type: !14)
!235 = !DILocalVariable(name: "glue", arg: 2, scope: !11, file: !3, line: 33, type: !228)
!236 = !DILocation(line: 33, column: 1, scope: !11)
!237 = !DILocation(line: 38, column: 13, scope: !238)
!238 = distinct !DILexicalBlock(scope: !11, file: !3, line: 38, column: 7)
!239 = !{!240, !241, i64 0}
!240 = !{!"_glue", !241, i64 0, !244, i64 8, !241, i64 16}
!241 = !{!"any pointer", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C/C++ TBAA"}
!244 = !{!"int", !242, i64 0}
!245 = !DILocation(line: 38, column: 7, scope: !238)
!246 = !DILocation(line: 38, column: 7, scope: !11)
!247 = !DILocation(line: 39, column: 5, scope: !238)
!248 = !DILocation(line: 41, column: 3, scope: !11)
!249 = !DILocation(line: 42, column: 1, scope: !11)
!250 = distinct !DISubprogram(name: "_reclaim_reent", scope: !3, file: !3, line: 45, type: !115, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !251)
!251 = !{!252, !253, !258, !262, !263, !266}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !250, file: !3, line: 45, type: !14)
!253 = !DILocalVariable(name: "i", scope: !254, file: !3, line: 57, type: !6)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 56, column: 2)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 55, column: 11)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 49, column: 5)
!257 = distinct !DILexicalBlock(scope: !250, file: !3, line: 48, column: 7)
!258 = !DILocalVariable(name: "thisone", scope: !259, file: !3, line: 60, type: !118)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 59, column: 6)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 58, column: 4)
!261 = distinct !DILexicalBlock(scope: !254, file: !3, line: 58, column: 4)
!262 = !DILocalVariable(name: "nextone", scope: !259, file: !3, line: 60, type: !118)
!263 = !DILocalVariable(name: "p", scope: !264, file: !3, line: 104, type: !198)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 103, column: 2)
!265 = distinct !DILexicalBlock(scope: !256, file: !3, line: 102, column: 11)
!266 = !DILocalVariable(name: "q", scope: !264, file: !3, line: 104, type: !198)
!267 = !DILocation(line: 45, column: 1, scope: !250)
!268 = !DILocation(line: 48, column: 14, scope: !257)
!269 = !{!241, !241, i64 0}
!270 = !DILocation(line: 48, column: 11, scope: !257)
!271 = !DILocation(line: 48, column: 7, scope: !250)
!272 = !DILocation(line: 55, column: 11, scope: !255)
!273 = !{!274, !241, i64 120}
!274 = !{!"_reent", !244, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !244, i64 32, !242, i64 36, !244, i64 64, !241, i64 72, !244, i64 80, !241, i64 88, !241, i64 96, !244, i64 104, !241, i64 112, !241, i64 120, !244, i64 128, !241, i64 136, !242, i64 144, !241, i64 504, !275, i64 512, !241, i64 1304, !240, i64 1312, !242, i64 1336}
!275 = !{!"_atexit", !241, i64 0, !244, i64 8, !242, i64 16, !276, i64 272}
!276 = !{!"_on_exit_args", !242, i64 0, !242, i64 256, !244, i64 512, !244, i64 516}
!277 = !DILocation(line: 55, column: 11, scope: !256)
!278 = !DILocation(line: 62, column: 18, scope: !259)
!279 = !DILocation(line: 57, column: 8, scope: !254)
!280 = !DILocation(line: 60, column: 34, scope: !259)
!281 = !DILocation(line: 63, column: 8, scope: !259)
!282 = !DILocation(line: 60, column: 24, scope: !259)
!283 = !DILocation(line: 66, column: 24, scope: !284)
!284 = distinct !DILexicalBlock(scope: !259, file: !3, line: 64, column: 3)
!285 = !{!286, !241, i64 0}
!286 = !{!"_Bigint", !241, i64 0, !244, i64 8, !244, i64 12, !244, i64 16, !244, i64 20, !242, i64 24}
!287 = !DILocation(line: 67, column: 5, scope: !284)
!288 = distinct !{!288, !281, !289}
!289 = !DILocation(line: 68, column: 3, scope: !259)
!290 = !DILocation(line: 58, column: 28, scope: !260)
!291 = !DILocation(line: 58, column: 18, scope: !260)
!292 = !DILocation(line: 58, column: 4, scope: !261)
!293 = distinct !{!293, !292, !294}
!294 = !DILocation(line: 69, column: 6, scope: !261)
!295 = !DILocation(line: 71, column: 4, scope: !254)
!296 = !DILocation(line: 72, column: 2, scope: !254)
!297 = !DILocation(line: 73, column: 11, scope: !298)
!298 = distinct !DILexicalBlock(scope: !256, file: !3, line: 73, column: 11)
!299 = !{!274, !241, i64 96}
!300 = !DILocation(line: 73, column: 11, scope: !256)
!301 = !DILocation(line: 74, column: 2, scope: !298)
!302 = !DILocation(line: 102, column: 17, scope: !265)
!303 = !{!274, !241, i64 504}
!304 = !DILocation(line: 102, column: 11, scope: !265)
!305 = !DILocation(line: 102, column: 26, scope: !265)
!306 = !DILocation(line: 102, column: 52, scope: !265)
!307 = !DILocation(line: 102, column: 43, scope: !265)
!308 = !DILocation(line: 102, column: 11, scope: !256)
!309 = !DILocation(line: 104, column: 20, scope: !264)
!310 = !DILocation(line: 104, column: 24, scope: !264)
!311 = !DILocation(line: 108, column: 15, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 106, column: 6)
!313 = distinct !DILexicalBlock(scope: !314, file: !3, line: 105, column: 4)
!314 = distinct !DILexicalBlock(scope: !264, file: !3, line: 105, column: 4)
!315 = !{!275, !241, i64 0}
!316 = !DILocation(line: 109, column: 8, scope: !312)
!317 = !DILocation(line: 105, column: 29, scope: !313)
!318 = !DILocation(line: 105, column: 4, scope: !314)
!319 = distinct !{!319, !318, !320}
!320 = !DILocation(line: 110, column: 6, scope: !314)
!321 = !DILocation(line: 115, column: 16, scope: !322)
!322 = distinct !DILexicalBlock(scope: !256, file: !3, line: 115, column: 11)
!323 = !{!274, !241, i64 136}
!324 = !DILocation(line: 115, column: 11, scope: !322)
!325 = !DILocation(line: 115, column: 11, scope: !256)
!326 = !DILocation(line: 116, column: 2, scope: !322)
!327 = !DILocation(line: 123, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !256, file: !3, line: 123, column: 11)
!329 = !{!274, !244, i64 80}
!330 = !DILocation(line: 123, column: 11, scope: !328)
!331 = !DILocation(line: 123, column: 11, scope: !256)
!332 = !DILocation(line: 127, column: 9, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 124, column: 2)
!334 = !{!274, !241, i64 88}
!335 = !DILocation(line: 127, column: 4, scope: !333)
!336 = !DILocation(line: 129, column: 21, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 129, column: 8)
!338 = !{!274, !241, i64 1312}
!339 = !DILocation(line: 129, column: 8, scope: !337)
!340 = !DILocation(line: 129, column: 8, scope: !333)
!341 = !DILocation(line: 130, column: 6, scope: !337)
!342 = !DILocation(line: 136, column: 1, scope: !250)
