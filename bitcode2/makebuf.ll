; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/makebuf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/makebuf.c"
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
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @__smakebuf_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !11 {
  %3 = alloca %struct.stat, align 8
  %4 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !244
  %5 = load i16, i16* %4, align 8, !dbg !244, !tbaa !246
  %6 = and i16 %5, 2, !dbg !256
  %7 = icmp eq i16 %6, 0, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br i1 %7, label %13, label %8, !dbg !257

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 16, i64 0, !dbg !258
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !260
  store i8* %9, i8** %10, align 8, !dbg !261, !tbaa !262
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !263
  store i8* %9, i8** %11, align 8, !dbg !264, !tbaa !265
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !266
  store i32 1, i32* %12, align 8, !dbg !267, !tbaa !268
  br label %70, !dbg !269

; <label>:13:                                     ; preds = %2
  %14 = bitcast %struct.stat* %3 to i8*, !dbg !329
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %14) #4, !dbg !329
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 4, !dbg !330
  %16 = load i16, i16* %15, align 2, !dbg !330, !tbaa !332
  %17 = icmp slt i16 %16, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %17, label %24, label %18, !dbg !334

; <label>:18:                                     ; preds = %13
  %19 = sext i16 %16 to i32, !dbg !335
  %20 = call i32 @_fstat_r(%struct._reent* %0, i32 %19, %struct.stat* nonnull %3) #5, !dbg !337
  %21 = icmp slt i32 %20, 0, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %21, label %22, label %29, !dbg !339

; <label>:22:                                     ; preds = %18
  %23 = load i16, i16* %4, align 8, !dbg !340, !tbaa !246
  br label %24, !dbg !339

; <label>:24:                                     ; preds = %22, %13
  %25 = phi i16 [ %23, %22 ], [ %5, %13 ], !dbg !340
  %26 = trunc i16 %25 to i8, !dbg !343
  %27 = icmp slt i8 %26, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %28 = select i1 %27, i64 64, i64 1024, !dbg !345
  br label %35, !dbg !346

; <label>:29:                                     ; preds = %18
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 2, !dbg !347
  %31 = load i32, i32* %30, align 4, !dbg !347, !tbaa !348
  %32 = and i32 %31, 61440, !dbg !347
  %33 = icmp eq i32 %32, 8192, !dbg !347
  %34 = zext i1 %33 to i32, !dbg !347
  br label %35, !dbg !351

; <label>:35:                                     ; preds = %24, %29
  %36 = phi i64 [ %28, %24 ], [ 1024, %29 ], !dbg !352
  %37 = phi i32 [ 0, %24 ], [ %34, %29 ], !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %14) #4, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  %38 = call i8* @malloc(i64 %36) #5, !dbg !356
  %39 = icmp eq i8* %38, null, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %39, label %40, label %51, !dbg !360

; <label>:40:                                     ; preds = %35
  %41 = load i16, i16* %4, align 8, !dbg !361, !tbaa !246
  %42 = and i16 %41, 512, !dbg !364
  %43 = icmp eq i16 %42, 0, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %43, label %44, label %70, !dbg !365

; <label>:44:                                     ; preds = %40
  %45 = and i16 %41, -4, !dbg !366
  %46 = or i16 %45, 2, !dbg !368
  store i16 %46, i16* %4, align 8, !dbg !369, !tbaa !246
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 16, i64 0, !dbg !370
  %48 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !371
  store i8* %47, i8** %48, align 8, !dbg !372, !tbaa !262
  %49 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !373
  store i8* %47, i8** %49, align 8, !dbg !374, !tbaa !265
  %50 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !375
  store i32 1, i32* %50, align 8, !dbg !376, !tbaa !268
  br label %69, !dbg !377

; <label>:51:                                     ; preds = %35
  %52 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 9, !dbg !378
  store void (%struct._reent*)* @_cleanup_r, void (%struct._reent*)** %52, align 8, !dbg !380, !tbaa !381
  %53 = load i16, i16* %4, align 8, !dbg !386, !tbaa !246
  %54 = or i16 %53, 128, !dbg !386
  store i16 %54, i16* %4, align 8, !dbg !386, !tbaa !246
  %55 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !387
  store i8* %38, i8** %55, align 8, !dbg !388, !tbaa !262
  %56 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !389
  store i8* %38, i8** %56, align 8, !dbg !390, !tbaa !265
  %57 = trunc i64 %36 to i32, !dbg !391
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !392
  store i32 %57, i32* %58, align 8, !dbg !393, !tbaa !268
  %59 = icmp eq i32 %37, 0, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %59, label %69, label %60, !dbg !397

; <label>:60:                                     ; preds = %51
  %61 = load i16, i16* %15, align 2, !dbg !398, !tbaa !332
  %62 = sext i16 %61 to i32, !dbg !399
  %63 = call i32 @_isatty_r(%struct._reent* nonnull %0, i32 %62) #5, !dbg !400
  %64 = icmp eq i32 %63, 0, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  br i1 %64, label %69, label %65, !dbg !401

; <label>:65:                                     ; preds = %60
  %66 = load i16, i16* %4, align 8, !dbg !402, !tbaa !246
  %67 = and i16 %66, -4, !dbg !403
  %68 = or i16 %67, 1, !dbg !404
  store i16 %68, i16* %4, align 8, !dbg !405, !tbaa !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br label %69, !dbg !406

; <label>:69:                                     ; preds = %65, %51, %60, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %70, !dbg !407

; <label>:70:                                     ; preds = %40, %69, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  ret void, !dbg !407
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32 @__swhatbuf_r(%struct._reent*, %struct.__sFILE* nocapture readonly, i64* nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !271 {
  %5 = alloca %struct.stat, align 8
  %6 = bitcast %struct.stat* %5 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %6) #4, !dbg !411
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 4, !dbg !412
  %8 = load i16, i16* %7, align 2, !dbg !412, !tbaa !332
  %9 = icmp slt i16 %8, 0, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %9, label %14, label %10, !dbg !414

; <label>:10:                                     ; preds = %4
  %11 = sext i16 %8 to i32, !dbg !415
  %12 = call i32 @_fstat_r(%struct._reent* %0, i32 %11, %struct.stat* nonnull %5) #5, !dbg !417
  %13 = icmp slt i32 %12, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %13, label %14, label %20, !dbg !419

; <label>:14:                                     ; preds = %10, %4
  store i32 0, i32* %3, align 4, !dbg !420, !tbaa !421
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !422
  %16 = load i16, i16* %15, align 8, !dbg !422, !tbaa !246
  %17 = trunc i16 %16 to i8, !dbg !423
  %18 = icmp slt i8 %17, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %19 = select i1 %18, i64 64, i64 1024, !dbg !424
  store i64 %19, i64* %2, align 8, !dbg !425, !tbaa !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %26, !dbg !427

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %5, i64 0, i32 2, !dbg !428
  %22 = load i32, i32* %21, align 4, !dbg !428, !tbaa !348
  %23 = and i32 %22, 61440, !dbg !428
  %24 = icmp eq i32 %23, 8192, !dbg !428
  %25 = zext i1 %24 to i32, !dbg !428
  store i32 %25, i32* %3, align 4, !dbg !429, !tbaa !421
  store i64 1024, i64* %2, align 8, !dbg !430, !tbaa !426
  br label %26, !dbg !431

; <label>:26:                                     ; preds = %20, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %6) #4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  ret i32 0, !dbg !433
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @_cleanup_r(%struct._reent*) #2

; Function Attrs: noredzone
declare dso_local i32 @_isatty_r(%struct._reent*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @_fstat_r(%struct._reent*, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/makebuf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__smakebuf_r", scope: !1, file: !1, line: 38, type: !12, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !231}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !20, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !15, file: !16, line: 571, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !15, file: !16, line: 576, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !24)
!24 = !{!25, !26, !27, !28, !30, !31, !36, !37, !38, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !23, file: !16, line: 182, baseType: !5, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !23, file: !16, line: 183, baseType: !19, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !23, file: !16, line: 184, baseType: !19, size: 32, offset: 96)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !16, line: 185, baseType: !29, size: 16, offset: 128)
!29 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !23, file: !16, line: 186, baseType: !29, size: 16, offset: 144)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !23, file: !16, line: 187, baseType: !32, size: 128, offset: 192)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !32, file: !16, line: 118, baseType: !5, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !32, file: !16, line: 119, baseType: !19, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !23, file: !16, line: 188, baseType: !19, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !23, file: !16, line: 195, baseType: !4, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !23, file: !16, line: 197, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !14, !4, !45, !19}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !43, line: 145, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !23, file: !16, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!42, !14, !4, !51, !19}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !23, file: !16, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !14, !4, !57, !19}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !43, line: 114, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !23, file: !16, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!19, !14, !4}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !23, file: !16, line: 206, baseType: !32, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !23, file: !16, line: 207, baseType: !5, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !23, file: !16, line: 208, baseType: !19, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !23, file: !16, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !23, file: !16, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !23, file: !16, line: 215, baseType: !32, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !23, file: !16, line: 218, baseType: !19, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !16, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !43, line: 44, baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !23, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !16, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !43, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !19)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !23, file: !16, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !43, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !43, line: 165, baseType: !19, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !43, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !43, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !43, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !43, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !16, line: 229, baseType: !19, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !21, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !21, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !19, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !15, file: !16, line: 582, baseType: !19, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !15, file: !16, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !15, file: !16, line: 585, baseType: !19, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !15, file: !16, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !14}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !15, file: !16, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !16, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !16, line: 50, baseType: !19, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !16, line: 50, baseType: !19, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !16, line: 50, baseType: !19, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !16, line: 50, baseType: !19, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !16, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !15, file: !16, line: 591, baseType: !19, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !15, file: !16, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !15, file: !16, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !15, file: !16, line: 596, baseType: !19, size: 32, offset: 1024)
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
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !16, line: 57, baseType: !19, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !16, line: 58, baseType: !19, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !16, line: 59, baseType: !19, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !16, line: 60, baseType: !19, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !16, line: 61, baseType: !19, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !16, line: 62, baseType: !19, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !16, line: 63, baseType: !19, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !16, line: 64, baseType: !19, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !16, line: 65, baseType: !19, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !16, line: 607, baseType: !19, size: 32, offset: 640)
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
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !16, line: 615, baseType: !19, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !16, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !16, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !16, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !16, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !16, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !16, line: 621, baseType: !19, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !16, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !16, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !16, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !16, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !15, file: !16, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !16, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !16, line: 95, baseType: !19, size: 32, offset: 64)
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
!221 = !{null, !19}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !15, file: !16, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !16, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !16, line: 294, baseType: !19, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !16, line: 295, baseType: !21, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !15, file: !16, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 66, baseType: !22)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !237, !238, !239, !242}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !1, line: 38, type: !14)
!236 = !DILocalVariable(name: "fp", arg: 2, scope: !11, file: !1, line: 38, type: !231)
!237 = !DILocalVariable(name: "p", scope: !11, file: !1, line: 42, type: !4)
!238 = !DILocalVariable(name: "flags", scope: !11, file: !1, line: 43, type: !19)
!239 = !DILocalVariable(name: "size", scope: !11, file: !1, line: 44, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 58, baseType: !241)
!241 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DILocalVariable(name: "couldbetty", scope: !11, file: !1, line: 45, type: !19)
!243 = !DILocation(line: 38, column: 1, scope: !11)
!244 = !DILocation(line: 47, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !11, file: !1, line: 47, column: 7)
!246 = !{!247, !252, i64 16}
!247 = !{!"__sFILE", !248, i64 0, !251, i64 8, !251, i64 12, !252, i64 16, !252, i64 18, !253, i64 24, !251, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !253, i64 88, !248, i64 104, !251, i64 112, !249, i64 116, !249, i64 119, !253, i64 120, !251, i64 136, !254, i64 144, !248, i64 152, !251, i64 160, !255, i64 164, !251, i64 172}
!248 = !{!"any pointer", !249, i64 0}
!249 = !{!"omnipotent char", !250, i64 0}
!250 = !{!"Simple C/C++ TBAA"}
!251 = !{!"int", !249, i64 0}
!252 = !{!"short", !249, i64 0}
!253 = !{!"__sbuf", !248, i64 0, !251, i64 8}
!254 = !{!"long", !249, i64 0}
!255 = !{!"", !251, i64 0, !249, i64 4}
!256 = !DILocation(line: 47, column: 18, scope: !245)
!257 = !DILocation(line: 47, column: 7, scope: !11)
!258 = !DILocation(line: 49, column: 32, scope: !259)
!259 = distinct !DILexicalBlock(scope: !245, file: !1, line: 48, column: 5)
!260 = !DILocation(line: 49, column: 27, scope: !259)
!261 = !DILocation(line: 49, column: 30, scope: !259)
!262 = !{!247, !248, i64 0}
!263 = !DILocation(line: 49, column: 15, scope: !259)
!264 = !DILocation(line: 49, column: 21, scope: !259)
!265 = !{!247, !248, i64 24}
!266 = !DILocation(line: 50, column: 15, scope: !259)
!267 = !DILocation(line: 50, column: 21, scope: !259)
!268 = !{!247, !251, i64 32}
!269 = !DILocation(line: 51, column: 7, scope: !259)
!270 = !DILocalVariable(name: "ptr", arg: 1, scope: !271, file: !1, line: 79, type: !14)
!271 = distinct !DISubprogram(name: "__swhatbuf_r", scope: !1, file: !1, line: 79, type: !272, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !276)
!272 = !DISubroutineType(types: !273)
!273 = !{!19, !14, !231, !274, !275}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!276 = !{!270, !277, !278, !279, !280, !282}
!277 = !DILocalVariable(name: "fp", arg: 2, scope: !271, file: !1, line: 79, type: !231)
!278 = !DILocalVariable(name: "bufsize", arg: 3, scope: !271, file: !1, line: 79, type: !274)
!279 = !DILocalVariable(name: "couldbetty", arg: 4, scope: !271, file: !1, line: 79, type: !275)
!280 = !DILocalVariable(name: "snpt", scope: !271, file: !1, line: 88, type: !281)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!282 = !DILocalVariable(name: "st", scope: !271, file: !1, line: 96, type: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !284, line: 27, size: 704, elements: !285)
!284 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!285 = !{!286, !290, !293, !298, !301, !304, !307, !308, !311, !318, !319, !320, !323}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !283, file: !284, line: 29, baseType: !287, size: 16)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !288, line: 177, baseType: !289)
!288 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !43, line: 54, baseType: !29)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !283, file: !284, line: 30, baseType: !291, size: 16, offset: 16)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !288, line: 155, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !43, line: 73, baseType: !165)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !283, file: !284, line: 31, baseType: !294, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !288, line: 205, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !43, line: 88, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !297, line: 79, baseType: !93)
!297 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!298 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !283, file: !284, line: 32, baseType: !299, size: 16, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !288, line: 210, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !43, line: 210, baseType: !165)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !283, file: !284, line: 33, baseType: !302, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !288, line: 181, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !43, line: 58, baseType: !165)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !283, file: !284, line: 34, baseType: !305, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !288, line: 185, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !43, line: 61, baseType: !165)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !283, file: !284, line: 35, baseType: !287, size: 16, offset: 112)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !283, file: !284, line: 36, baseType: !309, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !288, line: 173, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 100, baseType: !76)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !283, file: !284, line: 37, baseType: !312, size: 128, offset: 192)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !313, line: 52, size: 128, elements: !314)
!313 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !312, file: !313, line: 53, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !313, line: 34, baseType: !44)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !312, file: !313, line: 54, baseType: !44, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !283, file: !284, line: 38, baseType: !312, size: 128, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !283, file: !284, line: 39, baseType: !312, size: 128, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !283, file: !284, line: 40, baseType: !321, size: 64, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !288, line: 118, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !43, line: 32, baseType: !44)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !283, file: !284, line: 41, baseType: !324, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !288, line: 113, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !43, line: 28, baseType: !44)
!326 = !DILocation(line: 79, column: 1, scope: !271, inlinedAt: !327)
!327 = distinct !DILocation(line: 53, column: 11, scope: !11)
!328 = !DILocation(line: 88, column: 13, scope: !271, inlinedAt: !327)
!329 = !DILocation(line: 96, column: 3, scope: !271, inlinedAt: !327)
!330 = !DILocation(line: 98, column: 11, scope: !331, inlinedAt: !327)
!331 = distinct !DILexicalBlock(scope: !271, file: !1, line: 98, column: 7)
!332 = !{!247, !252, i64 18}
!333 = !DILocation(line: 98, column: 17, scope: !331, inlinedAt: !327)
!334 = !DILocation(line: 98, column: 21, scope: !331, inlinedAt: !327)
!335 = !DILocation(line: 98, column: 7, scope: !331, inlinedAt: !327)
!336 = !DILocation(line: 96, column: 15, scope: !271, inlinedAt: !327)
!337 = !DILocation(line: 98, column: 24, scope: !331, inlinedAt: !327)
!338 = !DILocation(line: 98, column: 55, scope: !331, inlinedAt: !327)
!339 = !DILocation(line: 98, column: 7, scope: !271, inlinedAt: !327)
!340 = !DILocation(line: 103, column: 15, scope: !341, inlinedAt: !327)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 103, column: 11)
!342 = distinct !DILexicalBlock(scope: !331, file: !1, line: 100, column: 5)
!343 = !DILocation(line: 103, column: 22, scope: !341, inlinedAt: !327)
!344 = !DILocation(line: 103, column: 11, scope: !342, inlinedAt: !327)
!345 = !DILocation(line: 104, column: 9, scope: !341, inlinedAt: !327)
!346 = !DILocation(line: 107, column: 7, scope: !342, inlinedAt: !327)
!347 = !DILocation(line: 111, column: 17, scope: !271, inlinedAt: !327)
!348 = !{!349, !251, i64 4}
!349 = !{!"stat", !252, i64 0, !252, i64 2, !251, i64 4, !252, i64 8, !252, i64 10, !252, i64 12, !252, i64 14, !254, i64 16, !350, i64 24, !350, i64 40, !350, i64 56, !254, i64 72, !254, i64 80}
!350 = !{!"timespec", !254, i64 0, !254, i64 8}
!351 = !DILocation(line: 126, column: 3, scope: !271, inlinedAt: !327)
!352 = !DILocation(line: 0, scope: !11)
!353 = !DILocation(line: 127, column: 1, scope: !271, inlinedAt: !327)
!354 = !DILocation(line: 43, column: 7, scope: !11)
!355 = !DILocation(line: 44, column: 10, scope: !11)
!356 = !DILocation(line: 54, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !11, file: !1, line: 54, column: 7)
!358 = !DILocation(line: 42, column: 17, scope: !11)
!359 = !DILocation(line: 54, column: 35, scope: !357)
!360 = !DILocation(line: 54, column: 7, scope: !11)
!361 = !DILocation(line: 56, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 56, column: 11)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 55, column: 5)
!364 = !DILocation(line: 56, column: 24, scope: !362)
!365 = !DILocation(line: 56, column: 11, scope: !363)
!366 = !DILocation(line: 58, column: 29, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 57, column: 2)
!368 = !DILocation(line: 58, column: 40, scope: !367)
!369 = !DILocation(line: 58, column: 15, scope: !367)
!370 = !DILocation(line: 59, column: 29, scope: !367)
!371 = !DILocation(line: 59, column: 24, scope: !367)
!372 = !DILocation(line: 59, column: 27, scope: !367)
!373 = !DILocation(line: 59, column: 12, scope: !367)
!374 = !DILocation(line: 59, column: 18, scope: !367)
!375 = !DILocation(line: 60, column: 12, scope: !367)
!376 = !DILocation(line: 60, column: 18, scope: !367)
!377 = !DILocation(line: 61, column: 2, scope: !367)
!378 = !DILocation(line: 65, column: 12, scope: !379)
!379 = distinct !DILexicalBlock(scope: !357, file: !1, line: 64, column: 5)
!380 = !DILocation(line: 65, column: 22, scope: !379)
!381 = !{!382, !248, i64 88}
!382 = !{!"_reent", !251, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !251, i64 32, !249, i64 36, !251, i64 64, !248, i64 72, !251, i64 80, !248, i64 88, !248, i64 96, !251, i64 104, !248, i64 112, !248, i64 120, !251, i64 128, !248, i64 136, !249, i64 144, !248, i64 504, !383, i64 512, !248, i64 1304, !385, i64 1312, !249, i64 1336}
!383 = !{!"_atexit", !248, i64 0, !251, i64 8, !249, i64 16, !384, i64 272}
!384 = !{!"_on_exit_args", !249, i64 0, !249, i64 256, !251, i64 512, !251, i64 516}
!385 = !{!"_glue", !248, i64 0, !251, i64 8, !248, i64 16}
!386 = !DILocation(line: 66, column: 18, scope: !379)
!387 = !DILocation(line: 67, column: 27, scope: !379)
!388 = !DILocation(line: 67, column: 30, scope: !379)
!389 = !DILocation(line: 67, column: 15, scope: !379)
!390 = !DILocation(line: 67, column: 21, scope: !379)
!391 = !DILocation(line: 68, column: 23, scope: !379)
!392 = !DILocation(line: 68, column: 15, scope: !379)
!393 = !DILocation(line: 68, column: 21, scope: !379)
!394 = !DILocation(line: 45, column: 7, scope: !11)
!395 = !DILocation(line: 69, column: 11, scope: !396)
!396 = distinct !DILexicalBlock(scope: !379, file: !1, line: 69, column: 11)
!397 = !DILocation(line: 69, column: 22, scope: !396)
!398 = !DILocation(line: 69, column: 45, scope: !396)
!399 = !DILocation(line: 69, column: 41, scope: !396)
!400 = !DILocation(line: 69, column: 25, scope: !396)
!401 = !DILocation(line: 69, column: 11, scope: !379)
!402 = !DILocation(line: 70, column: 20, scope: !396)
!403 = !DILocation(line: 70, column: 27, scope: !396)
!404 = !DILocation(line: 70, column: 38, scope: !396)
!405 = !DILocation(line: 70, column: 13, scope: !396)
!406 = !DILocation(line: 70, column: 2, scope: !396)
!407 = !DILocation(line: 73, column: 1, scope: !11)
!408 = !DILocation(line: 0, scope: !259)
!409 = !DILocation(line: 79, column: 1, scope: !271)
!410 = !DILocation(line: 88, column: 13, scope: !271)
!411 = !DILocation(line: 96, column: 3, scope: !271)
!412 = !DILocation(line: 98, column: 11, scope: !331)
!413 = !DILocation(line: 98, column: 17, scope: !331)
!414 = !DILocation(line: 98, column: 21, scope: !331)
!415 = !DILocation(line: 98, column: 7, scope: !331)
!416 = !DILocation(line: 96, column: 15, scope: !271)
!417 = !DILocation(line: 98, column: 24, scope: !331)
!418 = !DILocation(line: 98, column: 55, scope: !331)
!419 = !DILocation(line: 98, column: 7, scope: !271)
!420 = !DILocation(line: 101, column: 19, scope: !342)
!421 = !{!251, !251, i64 0}
!422 = !DILocation(line: 103, column: 15, scope: !341)
!423 = !DILocation(line: 103, column: 22, scope: !341)
!424 = !DILocation(line: 103, column: 11, scope: !342)
!425 = !DILocation(line: 0, scope: !341)
!426 = !{!254, !254, i64 0}
!427 = !DILocation(line: 107, column: 7, scope: !342)
!428 = !DILocation(line: 111, column: 17, scope: !271)
!429 = !DILocation(line: 111, column: 15, scope: !271)
!430 = !DILocation(line: 125, column: 12, scope: !271)
!431 = !DILocation(line: 126, column: 3, scope: !271)
!432 = !DILocation(line: 0, scope: !342)
!433 = !DILocation(line: 127, column: 1, scope: !271)
