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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @cleanup_glue(%struct._reent* nocapture readnone, %struct._glue*) local_unnamed_addr #0 !dbg !11 {
  %3 = getelementptr inbounds %struct._glue, %struct._glue* %1, i64 0, i32 0, !dbg !237
  %4 = load %struct._glue*, %struct._glue** %3, align 8, !dbg !237, !tbaa !239
  %5 = icmp eq %struct._glue* %4, null, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %5, label %7, label %6, !dbg !246

; <label>:6:                                      ; preds = %2
  tail call void @cleanup_glue(%struct._reent* %0, %struct._glue* nonnull %4) #3, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br label %7, !dbg !247

; <label>:7:                                      ; preds = %2, %6
  %8 = bitcast %struct._glue* %1 to i8*, !dbg !248
  tail call void @free(i8* %8) #4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  ret void, !dbg !249
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local void @_reclaim_reent(%struct._reent*) local_unnamed_addr #0 !dbg !250 {
  %2 = load %struct._reent*, %struct._reent** @_impure_ptr, align 8, !dbg !268, !tbaa !269
  %3 = icmp eq %struct._reent* %2, %0, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %3, label %66, label %4, !dbg !271

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 13, !dbg !272
  %6 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !272, !tbaa !273
  %7 = icmp eq %struct._Bigint** %6, null, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %7, label %29, label %8, !dbg !277

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br label %9, !dbg !280

; <label>:9:                                      ; preds = %24, %8
  %10 = phi %struct._Bigint** [ %6, %8 ], [ %25, %24 ], !dbg !281
  %11 = phi i64 [ 0, %8 ], [ %22, %24 ]
  %12 = getelementptr inbounds %struct._Bigint*, %struct._Bigint** %10, i64 %11, !dbg !281
  %13 = load %struct._Bigint*, %struct._Bigint** %12, align 8, !dbg !281, !tbaa !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %14 = icmp eq %struct._Bigint* %13, null, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %14, label %21, label %15, !dbg !283

; <label>:15:                                     ; preds = %9, %15
  %16 = phi %struct._Bigint* [ %19, %15 ], [ %13, %9 ]
  %17 = bitcast %struct._Bigint* %16 to i8*, !dbg !282
  %18 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %16, i64 0, i32 0, !dbg !285
  %19 = load %struct._Bigint*, %struct._Bigint** %18, align 8, !dbg !285, !tbaa !287
  tail call void @free(i8* %17) #4, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %20 = icmp eq %struct._Bigint* %19, null, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %20, label %21, label %15, !dbg !283, !llvm.loop !290

; <label>:21:                                     ; preds = %15, %9
  %22 = add nuw nsw i64 %11, 1, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  %23 = icmp eq i64 %22, 64, !dbg !294
  br i1 %23, label %26, label %24, !dbg !280, !llvm.loop !295

; <label>:24:                                     ; preds = %21
  %25 = load %struct._Bigint**, %struct._Bigint*** %5, align 8, !dbg !281, !tbaa !273
  br label %9, !dbg !280

; <label>:26:                                     ; preds = %21
  %27 = bitcast %struct._Bigint*** %5 to i8**, !dbg !297
  %28 = load i8*, i8** %27, align 8, !dbg !297, !tbaa !273
  tail call void @free(i8* %28) #4, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br label %29, !dbg !298

; <label>:29:                                     ; preds = %4, %26
  %30 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 10, !dbg !299
  %31 = load %struct._Bigint*, %struct._Bigint** %30, align 8, !dbg !299, !tbaa !301
  %32 = icmp eq %struct._Bigint* %31, null, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  br i1 %32, label %35, label %33, !dbg !302

; <label>:33:                                     ; preds = %29
  %34 = bitcast %struct._Bigint* %31 to i8*, !dbg !303
  tail call void @free(i8* %34) #4, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br label %35, !dbg !303

; <label>:35:                                     ; preds = %29, %33
  %36 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 17, !dbg !304
  %37 = load %struct._atexit*, %struct._atexit** %36, align 8, !dbg !304, !tbaa !305
  %38 = icmp eq %struct._atexit* %37, null, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %38, label %50, label %39, !dbg !307

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 18, !dbg !308
  %41 = icmp eq %struct._atexit* %37, %40, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %41, label %50, label %42, !dbg !310

; <label>:42:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br label %43, !dbg !314

; <label>:43:                                     ; preds = %42, %43
  %44 = phi %struct._atexit* [ %37, %42 ], [ %46, %43 ]
  %45 = getelementptr inbounds %struct._atexit, %struct._atexit* %44, i64 0, i32 0, !dbg !316
  %46 = load %struct._atexit*, %struct._atexit** %45, align 8, !dbg !316, !tbaa !319
  %47 = bitcast %struct._atexit* %44 to i8*, !dbg !320
  tail call void @free(i8* %47) #4, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  %48 = icmp eq %struct._atexit* %46, %40, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %48, label %49, label %43, !dbg !314, !llvm.loop !323

; <label>:49:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br label %50, !dbg !325

; <label>:50:                                     ; preds = %39, %35, %49
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 15, !dbg !326
  %52 = load i8*, i8** %51, align 8, !dbg !326, !tbaa !328
  %53 = icmp eq i8* %52, null, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br i1 %53, label %55, label %54, !dbg !330

; <label>:54:                                     ; preds = %50
  tail call void @free(i8* nonnull %52) #4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br label %55, !dbg !331

; <label>:55:                                     ; preds = %50, %54
  %56 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !332
  %57 = load i32, i32* %56, align 8, !dbg !332, !tbaa !334
  %58 = icmp eq i32 %57, 0, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %58, label %66, label %59, !dbg !336

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 9, !dbg !337
  %61 = load void (%struct._reent*)*, void (%struct._reent*)** %60, align 8, !dbg !337, !tbaa !339
  tail call void %61(%struct._reent* nonnull %0) #4, !dbg !340
  %62 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 20, i32 0, !dbg !341
  %63 = load %struct._glue*, %struct._glue** %62, align 8, !dbg !341, !tbaa !343
  %64 = icmp eq %struct._glue* %63, null, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %64, label %66, label %65, !dbg !345

; <label>:65:                                     ; preds = %59
  tail call void @cleanup_glue(%struct._reent* nonnull %0, %struct._glue* nonnull %63) #3, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br label %66, !dbg !346

; <label>:66:                                     ; preds = %59, %55, %1, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  ret void, !dbg !347
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
!278 = !DILocation(line: 57, column: 8, scope: !254)
!279 = !DILocation(line: 58, column: 9, scope: !261)
!280 = !DILocation(line: 58, column: 4, scope: !261)
!281 = !DILocation(line: 62, column: 18, scope: !259)
!282 = !DILocation(line: 60, column: 34, scope: !259)
!283 = !DILocation(line: 63, column: 8, scope: !259)
!284 = !DILocation(line: 60, column: 24, scope: !259)
!285 = !DILocation(line: 66, column: 24, scope: !286)
!286 = distinct !DILexicalBlock(scope: !259, file: !3, line: 64, column: 3)
!287 = !{!288, !241, i64 0}
!288 = !{!"_Bigint", !241, i64 0, !244, i64 8, !244, i64 12, !244, i64 16, !244, i64 20, !242, i64 24}
!289 = !DILocation(line: 67, column: 5, scope: !286)
!290 = distinct !{!290, !283, !291}
!291 = !DILocation(line: 68, column: 3, scope: !259)
!292 = !DILocation(line: 58, column: 28, scope: !260)
!293 = !DILocation(line: 58, column: 4, scope: !260)
!294 = !DILocation(line: 58, column: 18, scope: !260)
!295 = distinct !{!295, !280, !296}
!296 = !DILocation(line: 69, column: 6, scope: !261)
!297 = !DILocation(line: 71, column: 4, scope: !254)
!298 = !DILocation(line: 72, column: 2, scope: !254)
!299 = !DILocation(line: 73, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !256, file: !3, line: 73, column: 11)
!301 = !{!274, !241, i64 96}
!302 = !DILocation(line: 73, column: 11, scope: !256)
!303 = !DILocation(line: 74, column: 2, scope: !300)
!304 = !DILocation(line: 102, column: 17, scope: !265)
!305 = !{!274, !241, i64 504}
!306 = !DILocation(line: 102, column: 11, scope: !265)
!307 = !DILocation(line: 102, column: 26, scope: !265)
!308 = !DILocation(line: 102, column: 52, scope: !265)
!309 = !DILocation(line: 102, column: 43, scope: !265)
!310 = !DILocation(line: 102, column: 11, scope: !256)
!311 = !DILocation(line: 104, column: 20, scope: !264)
!312 = !DILocation(line: 105, column: 9, scope: !313)
!313 = distinct !DILexicalBlock(scope: !264, file: !3, line: 105, column: 4)
!314 = !DILocation(line: 105, column: 4, scope: !313)
!315 = !DILocation(line: 104, column: 24, scope: !264)
!316 = !DILocation(line: 108, column: 15, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 106, column: 6)
!318 = distinct !DILexicalBlock(scope: !313, file: !3, line: 105, column: 4)
!319 = !{!275, !241, i64 0}
!320 = !DILocation(line: 109, column: 8, scope: !317)
!321 = !DILocation(line: 105, column: 4, scope: !318)
!322 = !DILocation(line: 105, column: 29, scope: !318)
!323 = distinct !{!323, !314, !324}
!324 = !DILocation(line: 110, column: 6, scope: !313)
!325 = !DILocation(line: 111, column: 2, scope: !264)
!326 = !DILocation(line: 115, column: 16, scope: !327)
!327 = distinct !DILexicalBlock(scope: !256, file: !3, line: 115, column: 11)
!328 = !{!274, !241, i64 136}
!329 = !DILocation(line: 115, column: 11, scope: !327)
!330 = !DILocation(line: 115, column: 11, scope: !256)
!331 = !DILocation(line: 116, column: 2, scope: !327)
!332 = !DILocation(line: 123, column: 16, scope: !333)
!333 = distinct !DILexicalBlock(scope: !256, file: !3, line: 123, column: 11)
!334 = !{!274, !244, i64 80}
!335 = !DILocation(line: 123, column: 11, scope: !333)
!336 = !DILocation(line: 123, column: 11, scope: !256)
!337 = !DILocation(line: 127, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !3, line: 124, column: 2)
!339 = !{!274, !241, i64 88}
!340 = !DILocation(line: 127, column: 4, scope: !338)
!341 = !DILocation(line: 129, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 129, column: 8)
!343 = !{!274, !241, i64 1312}
!344 = !DILocation(line: 129, column: 8, scope: !342)
!345 = !DILocation(line: 129, column: 8, scope: !338)
!346 = !DILocation(line: 130, column: 6, scope: !342)
!347 = !DILocation(line: 136, column: 1, scope: !250)
