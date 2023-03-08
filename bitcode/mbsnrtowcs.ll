; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsnrtowcs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsnrtowcs.c"
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
define dso_local i64 @_mbsnrtowcs_r(%struct._reent*, i32*, i8** nocapture, i64, i64, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !12 {
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8), !dbg !253
  %9 = icmp eq i32* %1, null, !dbg !255
  br i1 %9, label %10, label %14, !dbg !257

; <label>:10:                                     ; preds = %6
  %11 = bitcast i64* %7 to i8**
  %12 = bitcast i8** %2 to i64*, !dbg !258
  %13 = load i64, i64* %12, align 8, !dbg !258, !tbaa !260
  store i64 %13, i64* %7, align 8, !dbg !265, !tbaa !260
  br label %16, !dbg !267

; <label>:14:                                     ; preds = %6
  %15 = icmp eq i64 %4, 0, !dbg !268
  br i1 %15, label %49, label %16, !dbg !267

; <label>:16:                                     ; preds = %10, %14
  %17 = phi i8** [ %11, %10 ], [ %2, %14 ]
  %18 = phi i64 [ -1, %10 ], [ %4, %14 ]
  %19 = load i8*, i8** %17, align 8, !dbg !269, !tbaa !260
  br label %20, !dbg !269

; <label>:20:                                     ; preds = %16, %29
  %21 = phi i8* [ %33, %29 ], [ %19, %16 ], !dbg !269
  %22 = phi i64 [ %35, %29 ], [ 0, %16 ]
  %23 = phi i32* [ %37, %29 ], [ %1, %16 ]
  %24 = phi i64 [ %34, %29 ], [ %3, %16 ]
  %25 = phi i64 [ %38, %29 ], [ %18, %16 ]
  %26 = tail call i64 @_mbrtowc_r(%struct._reent* %0, i32* %23, i8* %21, i64 %24, %struct._mbstate_t* %5) #4, !dbg !271
  %27 = trunc i64 %26 to i32, !dbg !271
  %28 = icmp sgt i32 %27, 0, !dbg !273
  br i1 %28, label %29, label %40, !dbg !275

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %17, align 8, !dbg !276, !tbaa !260
  %31 = shl i64 %26, 32, !dbg !276
  %32 = ashr exact i64 %31, 32, !dbg !276
  %33 = getelementptr inbounds i8, i8* %30, i64 %32, !dbg !276
  store i8* %33, i8** %17, align 8, !dbg !276, !tbaa !260
  %34 = sub i64 %24, %32, !dbg !278
  %35 = add nuw i64 %22, 1, !dbg !279
  %36 = getelementptr inbounds i32, i32* %23, i64 1, !dbg !280
  %37 = select i1 %9, i32* null, i32* %36, !dbg !281
  %38 = add i64 %25, -1, !dbg !282
  %39 = icmp eq i64 %38, 0, !dbg !268
  br i1 %39, label %49, label %20, !dbg !267, !llvm.loop !283

; <label>:40:                                     ; preds = %20
  %41 = trunc i64 %26 to i32, !dbg !271
  switch i32 %41, label %46 [
    i32 -2, label %42
    i32 0, label %45
  ], !dbg !285

; <label>:42:                                     ; preds = %40
  %43 = load i8*, i8** %17, align 8, !dbg !286, !tbaa !260
  %44 = getelementptr inbounds i8, i8* %43, i64 %24, !dbg !286
  store i8* %44, i8** %17, align 8, !dbg !286, !tbaa !260
  br label %49, !dbg !289

; <label>:45:                                     ; preds = %40
  store i8* null, i8** %17, align 8, !dbg !290, !tbaa !260
  br label %49, !dbg !293

; <label>:46:                                     ; preds = %40
  %47 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 0, !dbg !294
  store i32 0, i32* %47, align 4, !dbg !296, !tbaa !297
  %48 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !300
  store i32 138, i32* %48, align 8, !dbg !301, !tbaa !302
  br label %49, !dbg !307

; <label>:49:                                     ; preds = %29, %14, %46, %45, %42
  %50 = phi i64 [ %22, %42 ], [ %22, %45 ], [ -1, %46 ], [ 0, %14 ], [ %18, %29 ], !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8), !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret i64 %50, !dbg !309
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i64 @_mbrtowc_r(%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i64 @mbsnrtowcs(i32* noalias, i8** noalias nocapture, i64, i64, %struct._mbstate_t* noalias) local_unnamed_addr #0 !dbg !310 {
  %6 = alloca i64, align 8
  %7 = tail call %struct._reent* @__getreent() #4, !dbg !323
  %8 = bitcast i64* %6 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8), !dbg !327
  %9 = icmp eq i32* %0, null, !dbg !329
  br i1 %9, label %10, label %15, !dbg !330

; <label>:10:                                     ; preds = %5
  %11 = bitcast i64* %6 to i8**
  %12 = bitcast i8** %1 to i64*, !dbg !331
  %13 = load i64, i64* %12, align 8, !dbg !331, !tbaa !260
  store i64 %13, i64* %6, align 8, !dbg !333, !tbaa !260
  %14 = inttoptr i64 %13 to i8*, !dbg !335
  br label %19, !dbg !335

; <label>:15:                                     ; preds = %5
  %16 = icmp eq i64 %3, 0, !dbg !336
  br i1 %16, label %52, label %17, !dbg !335

; <label>:17:                                     ; preds = %15
  %18 = load i8*, i8** %1, align 8, !dbg !337, !tbaa !260
  br label %19, !dbg !335

; <label>:19:                                     ; preds = %17, %10
  %20 = phi i8* [ %14, %10 ], [ %18, %17 ], !dbg !337
  %21 = phi i8** [ %11, %10 ], [ %1, %17 ]
  %22 = phi i64 [ -1, %10 ], [ %3, %17 ]
  br label %23, !dbg !337

; <label>:23:                                     ; preds = %32, %19
  %24 = phi i8* [ %36, %32 ], [ %20, %19 ], !dbg !337
  %25 = phi i64 [ %38, %32 ], [ 0, %19 ]
  %26 = phi i32* [ %40, %32 ], [ %0, %19 ]
  %27 = phi i64 [ %37, %32 ], [ %2, %19 ]
  %28 = phi i64 [ %41, %32 ], [ %22, %19 ]
  %29 = tail call i64 @_mbrtowc_r(%struct._reent* %7, i32* %26, i8* %24, i64 %27, %struct._mbstate_t* %4) #4, !dbg !338
  %30 = trunc i64 %29 to i32, !dbg !338
  %31 = icmp sgt i32 %30, 0, !dbg !340
  br i1 %31, label %32, label %43, !dbg !341

; <label>:32:                                     ; preds = %23
  %33 = load i8*, i8** %21, align 8, !dbg !342, !tbaa !260
  %34 = shl i64 %29, 32, !dbg !342
  %35 = ashr exact i64 %34, 32, !dbg !342
  %36 = getelementptr inbounds i8, i8* %33, i64 %35, !dbg !342
  store i8* %36, i8** %21, align 8, !dbg !342, !tbaa !260
  %37 = sub i64 %27, %35, !dbg !343
  %38 = add nuw i64 %25, 1, !dbg !344
  %39 = getelementptr inbounds i32, i32* %26, i64 1, !dbg !345
  %40 = select i1 %9, i32* null, i32* %39, !dbg !346
  %41 = add i64 %28, -1, !dbg !347
  %42 = icmp eq i64 %41, 0, !dbg !336
  br i1 %42, label %52, label %23, !dbg !335, !llvm.loop !283

; <label>:43:                                     ; preds = %23
  %44 = trunc i64 %29 to i32, !dbg !338
  switch i32 %44, label %49 [
    i32 -2, label %45
    i32 0, label %48
  ], !dbg !348

; <label>:45:                                     ; preds = %43
  %46 = load i8*, i8** %21, align 8, !dbg !349, !tbaa !260
  %47 = getelementptr inbounds i8, i8* %46, i64 %27, !dbg !349
  store i8* %47, i8** %21, align 8, !dbg !349, !tbaa !260
  br label %52, !dbg !350

; <label>:48:                                     ; preds = %43
  store i8* null, i8** %21, align 8, !dbg !351, !tbaa !260
  br label %52, !dbg !352

; <label>:49:                                     ; preds = %43
  %50 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %4, i64 0, i32 0, !dbg !353
  store i32 0, i32* %50, align 4, !dbg !354, !tbaa !297
  %51 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 0, !dbg !355
  store i32 138, i32* %51, align 8, !dbg !356, !tbaa !302
  br label %52, !dbg !357

; <label>:52:                                     ; preds = %32, %15, %45, %48, %49
  %53 = phi i64 [ %25, %45 ], [ %25, %48 ], [ -1, %49 ], [ 0, %15 ], [ %22, %32 ], !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8), !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret i64 %53, !dbg !360
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsnrtowcs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 58, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "_mbsnrtowcs_r", scope: !1, file: !1, line: 107, type: !13, isLocal: false, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !239)
!13 = !DISubroutineType(types: !14)
!14 = !{!5, !15, !233, !235, !5, !5, !236}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !17, line: 569, size: 14912, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !21, !101, !102, !103, !104, !108, !109, !112, !113, !117, !129, !130, !131, !133, !134, !135, !197, !218, !219, !224, !231}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !16, file: !17, line: 571, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !17, line: 287, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !17, line: 181, size: 1408, elements: !25)
!25 = !{!26, !29, !30, !31, !33, !34, !39, !40, !41, !50, !56, !61, !65, !66, !67, !68, !72, !76, !77, !78, !80, !81, !85, !100}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !24, file: !17, line: 182, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !24, file: !17, line: 183, baseType: !20, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !24, file: !17, line: 184, baseType: !20, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !17, line: 185, baseType: !32, size: 16, offset: 128)
!32 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !24, file: !17, line: 186, baseType: !32, size: 16, offset: 144)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !24, file: !17, line: 187, baseType: !35, size: 128, offset: 192)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !17, line: 117, size: 128, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !35, file: !17, line: 118, baseType: !27, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !35, file: !17, line: 119, baseType: !20, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !24, file: !17, line: 188, baseType: !20, size: 32, offset: 320)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !24, file: !17, line: 195, baseType: !4, size: 64, offset: 384)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !24, file: !17, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !15, !4, !48, !20}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !24, file: !17, line: 199, baseType: !51, size: 64, offset: 512)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!45, !15, !4, !54, !20}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !24, file: !17, line: 202, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!60, !15, !4, !60, !20}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !24, file: !17, line: 203, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!20, !15, !4}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !24, file: !17, line: 206, baseType: !35, size: 128, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !24, file: !17, line: 207, baseType: !27, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !24, file: !17, line: 208, baseType: !20, size: 32, offset: 896)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !24, file: !17, line: 211, baseType: !69, size: 24, offset: 928)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 24, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !24, file: !17, line: 212, baseType: !73, size: 8, offset: 952)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !24, file: !17, line: 215, baseType: !35, size: 128, offset: 960)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !24, file: !17, line: 218, baseType: !20, size: 32, offset: 1088)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !17, line: 219, baseType: !79, size: 64, offset: 1152)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !24, file: !17, line: 222, baseType: !15, size: 64, offset: 1216)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !17, line: 226, baseType: !82, size: 32, offset: 1280)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !84, line: 12, baseType: !20)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !24, file: !17, line: 228, baseType: !86, size: 64, offset: 1312)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !87, file: !46, line: 165, baseType: !20, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !87, file: !46, line: 170, baseType: !91, size: 32, offset: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !87, file: !46, line: 166, size: 32, elements: !92)
!92 = !{!93, !96}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !91, file: !46, line: 168, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !6, line: 124, baseType: !95)
!95 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !91, file: !46, line: 169, baseType: !97, size: 32)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !17, line: 229, baseType: !20, size: 32, offset: 1376)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !16, file: !17, line: 578, baseType: !20, size: 32, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !16, file: !17, line: 579, baseType: !105, size: 200, offset: 288)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 200, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 25)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !16, file: !17, line: 582, baseType: !20, size: 32, offset: 512)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !16, file: !17, line: 583, baseType: !110, size: 64, offset: 576)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 40, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !16, file: !17, line: 585, baseType: !20, size: 32, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !16, file: !17, line: 587, baseType: !114, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !15}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !16, file: !17, line: 590, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !17, line: 47, size: 256, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !119, file: !17, line: 49, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !119, file: !17, line: 50, baseType: !20, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !119, file: !17, line: 50, baseType: !20, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !119, file: !17, line: 50, baseType: !20, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !119, file: !17, line: 50, baseType: !20, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !119, file: !17, line: 51, baseType: !127, size: 32, offset: 192)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 32, elements: !74)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !17, line: 25, baseType: !95)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !16, file: !17, line: 591, baseType: !20, size: 32, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !16, file: !17, line: 592, baseType: !118, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !16, file: !17, line: 593, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !16, file: !17, line: 596, baseType: !20, size: 32, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !16, file: !17, line: 597, baseType: !48, size: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !16, file: !17, line: 632, baseType: !136, size: 2880, offset: 1152)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 599, size: 2880, elements: !137)
!137 = !{!138, !188}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !136, file: !17, line: 622, baseType: !139, size: 1728)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !17, line: 601, size: 1728, elements: !140)
!140 = !{!141, !142, !143, !147, !159, !160, !162, !170, !171, !172, !173, !177, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !139, file: !17, line: 603, baseType: !95, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !139, file: !17, line: 604, baseType: !48, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !139, file: !17, line: 605, baseType: !144, size: 208, offset: 128)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 208, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 26)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !139, file: !17, line: 606, baseType: !148, size: 288, offset: 352)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !17, line: 55, size: 288, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !148, file: !17, line: 57, baseType: !20, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !148, file: !17, line: 58, baseType: !20, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !148, file: !17, line: 59, baseType: !20, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !148, file: !17, line: 60, baseType: !20, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !148, file: !17, line: 61, baseType: !20, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !148, file: !17, line: 62, baseType: !20, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !148, file: !17, line: 63, baseType: !20, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !148, file: !17, line: 64, baseType: !20, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !148, file: !17, line: 65, baseType: !20, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !139, file: !17, line: 607, baseType: !20, size: 32, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !139, file: !17, line: 608, baseType: !161, size: 64, offset: 704)
!161 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !139, file: !17, line: 609, baseType: !163, size: 112, offset: 768)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !17, line: 319, size: 112, elements: !164)
!164 = !{!165, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !163, file: !17, line: 320, baseType: !166, size: 48)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 48, elements: !70)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !163, file: !17, line: 321, baseType: !166, size: 48, offset: 48)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !163, file: !17, line: 322, baseType: !167, size: 16, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !139, file: !17, line: 610, baseType: !86, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !139, file: !17, line: 611, baseType: !86, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !139, file: !17, line: 612, baseType: !86, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !139, file: !17, line: 613, baseType: !174, size: 64, offset: 1088)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !139, file: !17, line: 614, baseType: !178, size: 192, offset: 1152)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !139, file: !17, line: 615, baseType: !20, size: 32, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !139, file: !17, line: 616, baseType: !86, size: 64, offset: 1376)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !139, file: !17, line: 617, baseType: !86, size: 64, offset: 1440)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !139, file: !17, line: 618, baseType: !86, size: 64, offset: 1504)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !139, file: !17, line: 619, baseType: !86, size: 64, offset: 1568)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !139, file: !17, line: 620, baseType: !86, size: 64, offset: 1632)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !139, file: !17, line: 621, baseType: !20, size: 32, offset: 1696)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !136, file: !17, line: 631, baseType: !189, size: 2880)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !17, line: 626, size: 2880, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !189, file: !17, line: 629, baseType: !192, size: 1920)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 1920, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 30)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !189, file: !17, line: 630, baseType: !196, size: 960, offset: 1920)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 960, elements: !193)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !16, file: !17, line: 636, baseType: !198, size: 64, offset: 4032)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !17, line: 93, size: 6336, elements: !200)
!200 = !{!201, !202, !203, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !199, file: !17, line: 94, baseType: !198, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !199, file: !17, line: 95, baseType: !20, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !199, file: !17, line: 97, baseType: !204, size: 2048, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !208)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null}
!208 = !{!209}
!209 = !DISubrange(count: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !199, file: !17, line: 98, baseType: !211, size: 4160, offset: 2176)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !17, line: 74, size: 4160, elements: !212)
!212 = !{!213, !215, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !211, file: !17, line: 75, baseType: !214, size: 2048)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !208)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !211, file: !17, line: 76, baseType: !214, size: 2048, offset: 2048)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !211, file: !17, line: 78, baseType: !128, size: 32, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !211, file: !17, line: 81, baseType: !128, size: 32, offset: 4128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !16, file: !17, line: 637, baseType: !199, size: 6336, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !16, file: !17, line: 641, baseType: !220, size: 64, offset: 10432)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !20}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !16, file: !17, line: 646, baseType: !225, size: 192, offset: 10496)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !17, line: 291, size: 192, elements: !226)
!226 = !{!227, !229, !230}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !225, file: !17, line: 293, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !225, file: !17, line: 294, baseType: !20, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !225, file: !17, line: 295, baseType: !22, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !16, file: !17, line: 648, baseType: !232, size: 4224, offset: 10688)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4224, elements: !70)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !20)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !238, line: 86, baseType: !86)
!238 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250}
!240 = !DILocalVariable(name: "r", arg: 1, scope: !12, file: !1, line: 107, type: !15)
!241 = !DILocalVariable(name: "dst", arg: 2, scope: !12, file: !1, line: 107, type: !233)
!242 = !DILocalVariable(name: "src", arg: 3, scope: !12, file: !1, line: 107, type: !235)
!243 = !DILocalVariable(name: "nms", arg: 4, scope: !12, file: !1, line: 107, type: !5)
!244 = !DILocalVariable(name: "len", arg: 5, scope: !12, file: !1, line: 107, type: !5)
!245 = !DILocalVariable(name: "ps", arg: 6, scope: !12, file: !1, line: 107, type: !236)
!246 = !DILocalVariable(name: "ptr", scope: !12, file: !1, line: 115, type: !233)
!247 = !DILocalVariable(name: "tmp_src", scope: !12, file: !1, line: 116, type: !54)
!248 = !DILocalVariable(name: "max", scope: !12, file: !1, line: 117, type: !5)
!249 = !DILocalVariable(name: "count", scope: !12, file: !1, line: 118, type: !5)
!250 = !DILocalVariable(name: "bytes", scope: !12, file: !1, line: 119, type: !20)
!251 = !DILocation(line: 107, column: 1, scope: !12)
!252 = !DILocation(line: 115, column: 12, scope: !12)
!253 = !DILocation(line: 116, column: 3, scope: !12)
!254 = !DILocation(line: 118, column: 10, scope: !12)
!255 = !DILocation(line: 129, column: 11, scope: !256)
!256 = distinct !DILexicalBlock(scope: !12, file: !1, line: 129, column: 7)
!257 = !DILocation(line: 129, column: 7, scope: !12)
!258 = !DILocation(line: 134, column: 17, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !1, line: 130, column: 5)
!260 = !{!261, !261, i64 0}
!261 = !{!"any pointer", !262, i64 0}
!262 = !{!"omnipotent char", !263, i64 0}
!263 = !{!"Simple C/C++ TBAA"}
!264 = !DILocation(line: 116, column: 15, scope: !12)
!265 = !DILocation(line: 134, column: 15, scope: !259)
!266 = !DILocation(line: 117, column: 10, scope: !12)
!267 = !DILocation(line: 139, column: 3, scope: !12)
!268 = !DILocation(line: 139, column: 14, scope: !12)
!269 = !DILocation(line: 141, column: 35, scope: !270)
!270 = distinct !DILexicalBlock(scope: !12, file: !1, line: 140, column: 5)
!271 = !DILocation(line: 141, column: 15, scope: !270)
!272 = !DILocation(line: 119, column: 7, scope: !12)
!273 = !DILocation(line: 142, column: 17, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !1, line: 142, column: 11)
!275 = !DILocation(line: 142, column: 11, scope: !270)
!276 = !DILocation(line: 144, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !1, line: 143, column: 2)
!278 = !DILocation(line: 145, column: 8, scope: !277)
!279 = !DILocation(line: 146, column: 4, scope: !277)
!280 = !DILocation(line: 147, column: 37, scope: !277)
!281 = !DILocation(line: 147, column: 10, scope: !277)
!282 = !DILocation(line: 148, column: 4, scope: !277)
!283 = distinct !{!283, !267, !284}
!284 = !DILocation(line: 166, column: 5, scope: !12)
!285 = !DILocation(line: 150, column: 16, scope: !274)
!286 = !DILocation(line: 152, column: 9, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 151, column: 2)
!288 = distinct !DILexicalBlock(scope: !274, file: !1, line: 150, column: 16)
!289 = !DILocation(line: 153, column: 4, scope: !287)
!290 = !DILocation(line: 157, column: 9, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !1, line: 156, column: 2)
!292 = distinct !DILexicalBlock(scope: !288, file: !1, line: 155, column: 16)
!293 = !DILocation(line: 158, column: 4, scope: !291)
!294 = !DILocation(line: 162, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !1, line: 161, column: 2)
!296 = !DILocation(line: 162, column: 16, scope: !295)
!297 = !{!298, !299, i64 0}
!298 = !{!"", !299, i64 0, !262, i64 4}
!299 = !{!"int", !262, i64 0}
!300 = !DILocation(line: 163, column: 7, scope: !295)
!301 = !DILocation(line: 163, column: 14, scope: !295)
!302 = !{!303, !299, i64 0}
!303 = !{!"_reent", !299, i64 0, !261, i64 8, !261, i64 16, !261, i64 24, !299, i64 32, !262, i64 36, !299, i64 64, !261, i64 72, !299, i64 80, !261, i64 88, !261, i64 96, !299, i64 104, !261, i64 112, !261, i64 120, !299, i64 128, !261, i64 136, !262, i64 144, !261, i64 504, !304, i64 512, !261, i64 1304, !306, i64 1312, !262, i64 1336}
!304 = !{!"_atexit", !261, i64 0, !299, i64 8, !262, i64 16, !305, i64 272}
!305 = !{!"_on_exit_args", !262, i64 0, !262, i64 256, !299, i64 512, !299, i64 516}
!306 = !{!"_glue", !261, i64 0, !299, i64 8, !261, i64 16}
!307 = !DILocation(line: 164, column: 4, scope: !295)
!308 = !DILocation(line: 0, scope: !12)
!309 = !DILocation(line: 169, column: 1, scope: !12)
!310 = distinct !DISubprogram(name: "mbsnrtowcs", scope: !1, file: !1, line: 173, type: !311, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !316)
!311 = !DISubroutineType(types: !312)
!312 = !{!5, !313, !314, !5, !5, !315}
!313 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !236)
!316 = !{!317, !318, !319, !320, !321}
!317 = !DILocalVariable(name: "dst", arg: 1, scope: !310, file: !1, line: 173, type: !313)
!318 = !DILocalVariable(name: "src", arg: 2, scope: !310, file: !1, line: 173, type: !314)
!319 = !DILocalVariable(name: "nms", arg: 3, scope: !310, file: !1, line: 173, type: !5)
!320 = !DILocalVariable(name: "len", arg: 4, scope: !310, file: !1, line: 173, type: !5)
!321 = !DILocalVariable(name: "ps", arg: 5, scope: !310, file: !1, line: 173, type: !315)
!322 = !DILocation(line: 173, column: 1, scope: !310)
!323 = !DILocation(line: 180, column: 25, scope: !310)
!324 = !DILocation(line: 107, column: 1, scope: !12, inlinedAt: !325)
!325 = distinct !DILocation(line: 180, column: 10, scope: !310)
!326 = !DILocation(line: 115, column: 12, scope: !12, inlinedAt: !325)
!327 = !DILocation(line: 116, column: 3, scope: !12, inlinedAt: !325)
!328 = !DILocation(line: 118, column: 10, scope: !12, inlinedAt: !325)
!329 = !DILocation(line: 129, column: 11, scope: !256, inlinedAt: !325)
!330 = !DILocation(line: 129, column: 7, scope: !12, inlinedAt: !325)
!331 = !DILocation(line: 134, column: 17, scope: !259, inlinedAt: !325)
!332 = !DILocation(line: 116, column: 15, scope: !12, inlinedAt: !325)
!333 = !DILocation(line: 134, column: 15, scope: !259, inlinedAt: !325)
!334 = !DILocation(line: 117, column: 10, scope: !12, inlinedAt: !325)
!335 = !DILocation(line: 139, column: 3, scope: !12, inlinedAt: !325)
!336 = !DILocation(line: 139, column: 14, scope: !12, inlinedAt: !325)
!337 = !DILocation(line: 141, column: 35, scope: !270, inlinedAt: !325)
!338 = !DILocation(line: 141, column: 15, scope: !270, inlinedAt: !325)
!339 = !DILocation(line: 119, column: 7, scope: !12, inlinedAt: !325)
!340 = !DILocation(line: 142, column: 17, scope: !274, inlinedAt: !325)
!341 = !DILocation(line: 142, column: 11, scope: !270, inlinedAt: !325)
!342 = !DILocation(line: 144, column: 9, scope: !277, inlinedAt: !325)
!343 = !DILocation(line: 145, column: 8, scope: !277, inlinedAt: !325)
!344 = !DILocation(line: 146, column: 4, scope: !277, inlinedAt: !325)
!345 = !DILocation(line: 147, column: 37, scope: !277, inlinedAt: !325)
!346 = !DILocation(line: 147, column: 10, scope: !277, inlinedAt: !325)
!347 = !DILocation(line: 148, column: 4, scope: !277, inlinedAt: !325)
!348 = !DILocation(line: 150, column: 16, scope: !274, inlinedAt: !325)
!349 = !DILocation(line: 152, column: 9, scope: !287, inlinedAt: !325)
!350 = !DILocation(line: 153, column: 4, scope: !287, inlinedAt: !325)
!351 = !DILocation(line: 157, column: 9, scope: !291, inlinedAt: !325)
!352 = !DILocation(line: 158, column: 4, scope: !291, inlinedAt: !325)
!353 = !DILocation(line: 162, column: 8, scope: !295, inlinedAt: !325)
!354 = !DILocation(line: 162, column: 16, scope: !295, inlinedAt: !325)
!355 = !DILocation(line: 163, column: 7, scope: !295, inlinedAt: !325)
!356 = !DILocation(line: 163, column: 14, scope: !295, inlinedAt: !325)
!357 = !DILocation(line: 164, column: 4, scope: !295, inlinedAt: !325)
!358 = !DILocation(line: 0, scope: !12, inlinedAt: !325)
!359 = !DILocation(line: 169, column: 1, scope: !12, inlinedAt: !325)
!360 = !DILocation(line: 180, column: 3, scope: !310)
