; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws_u.c"
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
define dso_local i32* @_fgetws_unlocked_r(%struct._reent*, i32*, i32, %struct.__sFILE*) local_unnamed_addr #0 !dbg !18 {
  %5 = alloca i8*, align 8
  %6 = bitcast i8** %5 to i8*, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4, !dbg !251
  %7 = icmp slt i32 %2, 1, !dbg !252
  br i1 %7, label %8, label %10, !dbg !254

; <label>:8:                                      ; preds = %4
  %9 = tail call i32* @__errno() #5, !dbg !255
  store i32 22, i32* %9, align 4, !dbg !257, !tbaa !258
  br label %84, !dbg !262

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 1, !dbg !263
  %12 = load i32, i32* %11, align 8, !dbg !263, !tbaa !265
  %13 = icmp slt i32 %12, 1, !dbg !272
  br i1 %13, label %14, label %17, !dbg !273

; <label>:14:                                     ; preds = %10
  %15 = tail call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #5, !dbg !274
  %16 = icmp eq i32 %15, 0, !dbg !274
  br i1 %16, label %17, label %84, !dbg !275

; <label>:17:                                     ; preds = %14, %10
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 0
  %19 = bitcast %struct.__sFILE* %3 to i64*
  %20 = bitcast i8** %5 to i64*
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %3, i64 0, i32 22
  br label %22, !dbg !277

; <label>:22:                                     ; preds = %77, %17
  %23 = phi i32 [ %2, %17 ], [ %65, %77 ]
  %24 = phi i32* [ %1, %17 ], [ %66, %77 ], !dbg !278
  %25 = load i64, i64* %19, align 8, !dbg !280, !tbaa !281
  store i64 %25, i64* %20, align 8, !dbg !283, !tbaa !284
  %26 = inttoptr i64 %25 to i8*, !dbg !285
  %27 = load i32, i32* %11, align 8, !dbg !286, !tbaa !265
  %28 = sext i32 %27 to i64, !dbg !287
  %29 = call i8* @memchr(i8* %26, i32 10, i64 %28) #5, !dbg !288
  %30 = icmp eq i8* %29, null, !dbg !290
  br i1 %30, label %36, label %31, !dbg !291

; <label>:31:                                     ; preds = %22
  %32 = load i64, i64* %19, align 8, !dbg !292, !tbaa !281
  %33 = ptrtoint i8* %29 to i64, !dbg !293
  %34 = add i64 %33, 1, !dbg !293
  %35 = sub i64 %34, %32, !dbg !294
  br label %39, !dbg !291

; <label>:36:                                     ; preds = %22
  %37 = load i32, i32* %11, align 8, !dbg !295, !tbaa !265
  %38 = sext i32 %37 to i64, !dbg !296
  br label %39, !dbg !291

; <label>:39:                                     ; preds = %36, %31
  %40 = phi i64 [ %35, %31 ], [ %38, %36 ], !dbg !291
  %41 = add nsw i32 %23, -1, !dbg !297
  %42 = sext i32 %41 to i64, !dbg !298
  %43 = call i64 @_mbsnrtowcs_r(%struct._reent* %0, i32* %24, i8** nonnull %5, i64 %40, i64 %42, %struct._mbstate_t* nonnull %21) #5, !dbg !299
  %44 = icmp eq i64 %43, -1, !dbg !301
  br i1 %44, label %84, label %45, !dbg !303

; <label>:45:                                     ; preds = %39
  %46 = load i8*, i8** %5, align 8, !dbg !304, !tbaa !284
  %47 = icmp eq i8* %46, null, !dbg !306
  br i1 %47, label %48, label %55, !dbg !307

; <label>:48:                                     ; preds = %45
  %49 = add i64 %43, 1, !dbg !308
  %50 = load i8*, i8** %18, align 8, !dbg !310, !tbaa !281
  %51 = load i32, i32* %11, align 8, !dbg !311, !tbaa !265
  %52 = sext i32 %51 to i64, !dbg !312
  %53 = call i8* @memchr(i8* %50, i32 0, i64 %52) #5, !dbg !313
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !314
  store i8* %54, i8** %5, align 8, !dbg !314, !tbaa !284
  br label %55, !dbg !315

; <label>:55:                                     ; preds = %48, %45
  %56 = phi i8* [ %54, %48 ], [ %46, %45 ]
  %57 = phi i64 [ %49, %48 ], [ %43, %45 ], !dbg !278
  %58 = ptrtoint i8* %56 to i64, !dbg !316
  %59 = load i64, i64* %19, align 8, !dbg !317, !tbaa !281
  %60 = load i32, i32* %11, align 8, !dbg !318, !tbaa !265
  %61 = sub i64 %59, %58, !dbg !318
  %62 = trunc i64 %61 to i32, !dbg !318
  %63 = add i32 %60, %62, !dbg !318
  store i32 %63, i32* %11, align 8, !dbg !318, !tbaa !265
  store i64 %58, i64* %19, align 8, !dbg !319, !tbaa !281
  %64 = trunc i64 %57 to i32, !dbg !320
  %65 = sub i32 %23, %64, !dbg !320
  %66 = getelementptr inbounds i32, i32* %24, i64 %57, !dbg !321
  %67 = getelementptr inbounds i32, i32* %66, i64 -1, !dbg !322
  %68 = load i32, i32* %67, align 4, !dbg !322, !tbaa !258
  %69 = icmp ne i32 %68, 10, !dbg !323
  %70 = icmp sgt i32 %65, 1, !dbg !324
  %71 = and i1 %70, %69, !dbg !325
  br i1 %71, label %72, label %78, !dbg !325

; <label>:72:                                     ; preds = %55
  %73 = icmp sgt i32 %63, 0, !dbg !326
  br i1 %73, label %77, label %74, !dbg !327

; <label>:74:                                     ; preds = %72
  %75 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %3) #5, !dbg !328
  %76 = icmp eq i32 %75, 0, !dbg !329
  br i1 %76, label %77, label %78, !dbg !330

; <label>:77:                                     ; preds = %74, %72
  br label %22, !dbg !276, !llvm.loop !331

; <label>:78:                                     ; preds = %55, %74
  %79 = icmp eq i32* %66, %1, !dbg !333
  br i1 %79, label %84, label %80, !dbg !335

; <label>:80:                                     ; preds = %78
  %81 = call i32 @mbsinit(%struct._mbstate_t* nonnull %21) #5, !dbg !336
  %82 = icmp eq i32 %81, 0, !dbg !336
  br i1 %82, label %84, label %83, !dbg !338

; <label>:83:                                     ; preds = %80
  store i32 0, i32* %66, align 4, !dbg !339, !tbaa !258
  br label %84, !dbg !340

; <label>:84:                                     ; preds = %39, %8, %78, %80, %14, %83
  %85 = phi i32* [ %1, %83 ], [ null, %14 ], [ null, %80 ], [ null, %78 ], [ null, %8 ], [ null, %39 ], !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4, !dbg !342
  ret i32* %85, !dbg !342
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @_mbsnrtowcs_r(%struct._reent*, i32*, i8**, i64, i64, %struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @mbsinit(%struct._mbstate_t*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i32* @fgetws_unlocked(i32* noalias, i32, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !343 {
  %4 = tail call %struct._reent* @__getreent() #5, !dbg !356
  %5 = icmp eq %struct._reent* %4, null, !dbg !359
  br i1 %5, label %11, label %6, !dbg !359

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !359
  %8 = load i32, i32* %7, align 8, !dbg !359, !tbaa !361
  %9 = icmp eq i32 %8, 0, !dbg !359
  br i1 %9, label %10, label %11, !dbg !358

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #5, !dbg !359
  br label %11, !dbg !359

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = tail call i32* @_fgetws_unlocked_r(%struct._reent* %4, i32* %0, i32 %1, %struct.__sFILE* %2) #6, !dbg !366
  ret i32* %12, !dbg !367
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7, !12}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 40, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !10, line: 129, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "_fgetws_unlocked_r", scope: !19, file: !19, line: 130, type: !20, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !241)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fgetws.c", directory: "/root/.unikraft/apps/redis/build")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !26, !22, !25, !238}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !24, line: 83, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !28, line: 569, size: 14912, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !31, !106, !107, !108, !109, !113, !114, !117, !118, !122, !134, !135, !136, !138, !139, !140, !202, !223, !224, !229, !236}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !27, file: !28, line: 571, baseType: !25, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !28, line: 287, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !28, line: 181, size: 1408, elements: !35)
!35 = !{!36, !37, !38, !39, !41, !42, !47, !48, !49, !55, !61, !66, !70, !71, !72, !73, !77, !81, !82, !83, !85, !86, !90, !105}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !34, file: !28, line: 182, baseType: !12, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !34, file: !28, line: 183, baseType: !25, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !34, file: !28, line: 184, baseType: !25, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !28, line: 185, baseType: !40, size: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !34, file: !28, line: 186, baseType: !40, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !34, file: !28, line: 187, baseType: !43, size: 128, offset: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !28, line: 117, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !28, line: 118, baseType: !12, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !28, line: 119, baseType: !25, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !34, file: !28, line: 188, baseType: !25, size: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !34, file: !28, line: 195, baseType: !6, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !34, file: !28, line: 197, baseType: !50, size: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !26, !6, !4, !25}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !10, line: 145, baseType: !54)
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !34, file: !28, line: 199, baseType: !56, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!53, !26, !6, !59, !25}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !34, file: !28, line: 202, baseType: !62, size: 64, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !26, !6, !65, !25}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !10, line: 114, baseType: !54)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !34, file: !28, line: 203, baseType: !67, size: 64, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!25, !26, !6}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !34, file: !28, line: 206, baseType: !43, size: 128, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !34, file: !28, line: 207, baseType: !12, size: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !34, file: !28, line: 208, baseType: !25, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !34, file: !28, line: 211, baseType: !74, size: 24, offset: 928)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !34, file: !28, line: 212, baseType: !78, size: 8, offset: 952)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !34, file: !28, line: 215, baseType: !43, size: 128, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !34, file: !28, line: 218, baseType: !25, size: 32, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !28, line: 219, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !10, line: 44, baseType: !54)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !34, file: !28, line: 222, baseType: !26, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !28, line: 226, baseType: !87, size: 32, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !10, line: 175, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !89, line: 12, baseType: !25)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !34, file: !28, line: 228, baseType: !91, size: 64, offset: 1312)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !10, line: 171, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 163, size: 64, elements: !93)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !92, file: !10, line: 165, baseType: !25, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !92, file: !10, line: 170, baseType: !96, size: 32, offset: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !10, line: 166, size: 32, elements: !97)
!97 = !{!98, !101}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !96, file: !10, line: 168, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !24, line: 124, baseType: !100)
!100 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !96, file: !10, line: 169, baseType: !102, size: 32)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !28, line: 229, baseType: !25, size: 32, offset: 1376)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !27, file: !28, line: 576, baseType: !32, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !27, file: !28, line: 578, baseType: !25, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !27, file: !28, line: 579, baseType: !110, size: 200, offset: 288)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 25)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !27, file: !28, line: 582, baseType: !25, size: 32, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !27, file: !28, line: 583, baseType: !115, size: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !28, line: 40, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !27, file: !28, line: 585, baseType: !25, size: 32, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !27, file: !28, line: 587, baseType: !119, size: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !26}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !27, file: !28, line: 590, baseType: !123, size: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !28, line: 47, size: 256, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !124, file: !28, line: 49, baseType: !123, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !124, file: !28, line: 50, baseType: !25, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !124, file: !28, line: 50, baseType: !25, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !124, file: !28, line: 50, baseType: !25, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !124, file: !28, line: 50, baseType: !25, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !124, file: !28, line: 51, baseType: !132, size: 32, offset: 192)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32, elements: !79)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !28, line: 25, baseType: !100)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !27, file: !28, line: 591, baseType: !25, size: 32, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !27, file: !28, line: 592, baseType: !123, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !27, file: !28, line: 593, baseType: !137, size: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !27, file: !28, line: 596, baseType: !25, size: 32, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !27, file: !28, line: 597, baseType: !4, size: 64, offset: 1088)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !27, file: !28, line: 632, baseType: !141, size: 2880, offset: 1152)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !28, line: 599, size: 2880, elements: !142)
!142 = !{!143, !193}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !141, file: !28, line: 622, baseType: !144, size: 1728)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !28, line: 601, size: 1728, elements: !145)
!145 = !{!146, !147, !148, !152, !164, !165, !167, !175, !176, !177, !178, !182, !186, !187, !188, !189, !190, !191, !192}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !144, file: !28, line: 603, baseType: !100, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !144, file: !28, line: 604, baseType: !4, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !144, file: !28, line: 605, baseType: !149, size: 208, offset: 128)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 26)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !144, file: !28, line: 606, baseType: !153, size: 288, offset: 352)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !28, line: 55, size: 288, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !153, file: !28, line: 57, baseType: !25, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !153, file: !28, line: 58, baseType: !25, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !153, file: !28, line: 59, baseType: !25, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !153, file: !28, line: 60, baseType: !25, size: 32, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !153, file: !28, line: 61, baseType: !25, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !153, file: !28, line: 62, baseType: !25, size: 32, offset: 160)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !153, file: !28, line: 63, baseType: !25, size: 32, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !153, file: !28, line: 64, baseType: !25, size: 32, offset: 224)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !153, file: !28, line: 65, baseType: !25, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !144, file: !28, line: 607, baseType: !25, size: 32, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !144, file: !28, line: 608, baseType: !166, size: 64, offset: 704)
!166 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !144, file: !28, line: 609, baseType: !168, size: 112, offset: 768)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !28, line: 319, size: 112, elements: !169)
!169 = !{!170, !173, !174}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !168, file: !28, line: 320, baseType: !171, size: 48)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 48, elements: !75)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !168, file: !28, line: 321, baseType: !171, size: 48, offset: 48)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !168, file: !28, line: 322, baseType: !172, size: 16, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !144, file: !28, line: 610, baseType: !91, size: 64, offset: 896)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !144, file: !28, line: 611, baseType: !91, size: 64, offset: 960)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !144, file: !28, line: 612, baseType: !91, size: 64, offset: 1024)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !144, file: !28, line: 613, baseType: !179, size: 64, offset: 1088)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 8)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !144, file: !28, line: 614, baseType: !183, size: 192, offset: 1152)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 24)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !144, file: !28, line: 615, baseType: !25, size: 32, offset: 1344)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !144, file: !28, line: 616, baseType: !91, size: 64, offset: 1376)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !144, file: !28, line: 617, baseType: !91, size: 64, offset: 1440)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !144, file: !28, line: 618, baseType: !91, size: 64, offset: 1504)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !144, file: !28, line: 619, baseType: !91, size: 64, offset: 1568)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !144, file: !28, line: 620, baseType: !91, size: 64, offset: 1632)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !144, file: !28, line: 621, baseType: !25, size: 32, offset: 1696)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !141, file: !28, line: 631, baseType: !194, size: 2880)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !28, line: 626, size: 2880, elements: !195)
!195 = !{!196, !200}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !194, file: !28, line: 629, baseType: !197, size: 1920)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1920, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 30)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !194, file: !28, line: 630, baseType: !201, size: 960, offset: 1920)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 960, elements: !198)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !27, file: !28, line: 636, baseType: !203, size: 64, offset: 4032)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !28, line: 93, size: 6336, elements: !205)
!205 = !{!206, !207, !208, !215}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !204, file: !28, line: 94, baseType: !203, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !204, file: !28, line: 95, baseType: !25, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !204, file: !28, line: 97, baseType: !209, size: 2048, offset: 128)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 2048, elements: !213)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null}
!213 = !{!214}
!214 = !DISubrange(count: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !204, file: !28, line: 98, baseType: !216, size: 4160, offset: 2176)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !28, line: 74, size: 4160, elements: !217)
!217 = !{!218, !220, !221, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !216, file: !28, line: 75, baseType: !219, size: 2048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !213)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !216, file: !28, line: 76, baseType: !219, size: 2048, offset: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !216, file: !28, line: 78, baseType: !133, size: 32, offset: 4096)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !216, file: !28, line: 81, baseType: !133, size: 32, offset: 4128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !27, file: !28, line: 637, baseType: !204, size: 6336, offset: 4096)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !27, file: !28, line: 641, baseType: !225, size: 64, offset: 10432)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !25}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !27, file: !28, line: 646, baseType: !230, size: 192, offset: 10496)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !28, line: 291, size: 192, elements: !231)
!231 = !{!232, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !230, file: !28, line: 293, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !230, file: !28, line: 294, baseType: !25, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !230, file: !28, line: 295, baseType: !32, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !27, file: !28, line: 648, baseType: !237, size: 4224, offset: 10688)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 4224, elements: !75)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 66, baseType: !33)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249}
!242 = !DILocalVariable(name: "ptr", arg: 1, scope: !18, file: !19, line: 130, type: !26)
!243 = !DILocalVariable(name: "ws", arg: 2, scope: !18, file: !19, line: 130, type: !22)
!244 = !DILocalVariable(name: "n", arg: 3, scope: !18, file: !19, line: 130, type: !25)
!245 = !DILocalVariable(name: "fp", arg: 4, scope: !18, file: !19, line: 130, type: !238)
!246 = !DILocalVariable(name: "wsp", scope: !18, file: !19, line: 136, type: !22)
!247 = !DILocalVariable(name: "nconv", scope: !18, file: !19, line: 137, type: !7)
!248 = !DILocalVariable(name: "src", scope: !18, file: !19, line: 138, type: !59)
!249 = !DILocalVariable(name: "nl", scope: !18, file: !19, line: 139, type: !12)
!250 = !DILocation(line: 130, column: 1, scope: !18)
!251 = !DILocation(line: 138, column: 3, scope: !18)
!252 = !DILocation(line: 144, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !18, file: !19, line: 144, column: 7)
!254 = !DILocation(line: 144, column: 7, scope: !18)
!255 = !DILocation(line: 146, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !19, line: 145, column: 5)
!257 = !DILocation(line: 146, column: 13, scope: !256)
!258 = !{!259, !259, i64 0}
!259 = !{!"int", !260, i64 0}
!260 = !{!"omnipotent char", !261, i64 0}
!261 = !{!"Simple C/C++ TBAA"}
!262 = !DILocation(line: 147, column: 7, scope: !256)
!263 = !DILocation(line: 150, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !18, file: !19, line: 150, column: 7)
!265 = !{!266, !259, i64 8}
!266 = !{!"__sFILE", !267, i64 0, !259, i64 8, !259, i64 12, !268, i64 16, !268, i64 18, !269, i64 24, !259, i64 40, !267, i64 48, !267, i64 56, !267, i64 64, !267, i64 72, !267, i64 80, !269, i64 88, !267, i64 104, !259, i64 112, !260, i64 116, !260, i64 119, !269, i64 120, !259, i64 136, !270, i64 144, !267, i64 152, !259, i64 160, !271, i64 164, !259, i64 172}
!267 = !{!"any pointer", !260, i64 0}
!268 = !{!"short", !260, i64 0}
!269 = !{!"__sbuf", !267, i64 0, !259, i64 8}
!270 = !{!"long", !260, i64 0}
!271 = !{!"", !259, i64 0, !260, i64 4}
!272 = !DILocation(line: 150, column: 14, scope: !264)
!273 = !DILocation(line: 150, column: 19, scope: !264)
!274 = !DILocation(line: 150, column: 22, scope: !264)
!275 = !DILocation(line: 150, column: 7, scope: !18)
!276 = !DILocation(line: 136, column: 12, scope: !18)
!277 = !DILocation(line: 154, column: 3, scope: !18)
!278 = !DILocation(line: 0, scope: !279)
!279 = distinct !DILexicalBlock(scope: !18, file: !19, line: 155, column: 5)
!280 = !DILocation(line: 156, column: 26, scope: !279)
!281 = !{!266, !267, i64 0}
!282 = !DILocation(line: 138, column: 15, scope: !18)
!283 = !DILocation(line: 156, column: 11, scope: !279)
!284 = !{!267, !267, i64 0}
!285 = !DILocation(line: 157, column: 24, scope: !279)
!286 = !DILocation(line: 157, column: 38, scope: !279)
!287 = !DILocation(line: 157, column: 34, scope: !279)
!288 = !DILocation(line: 157, column: 12, scope: !279)
!289 = !DILocation(line: 139, column: 18, scope: !18)
!290 = !DILocation(line: 161, column: 12, scope: !279)
!291 = !DILocation(line: 161, column: 9, scope: !279)
!292 = !DILocation(line: 161, column: 32, scope: !279)
!293 = !DILocation(line: 161, column: 26, scope: !279)
!294 = !DILocation(line: 161, column: 35, scope: !279)
!295 = !DILocation(line: 161, column: 46, scope: !279)
!296 = !DILocation(line: 161, column: 42, scope: !279)
!297 = !DILocation(line: 163, column: 11, scope: !279)
!298 = !DILocation(line: 163, column: 9, scope: !279)
!299 = !DILocation(line: 158, column: 15, scope: !279)
!300 = !DILocation(line: 137, column: 10, scope: !18)
!301 = !DILocation(line: 165, column: 17, scope: !302)
!302 = distinct !DILexicalBlock(scope: !279, file: !19, line: 165, column: 11)
!303 = !DILocation(line: 165, column: 11, scope: !279)
!304 = !DILocation(line: 168, column: 11, scope: !305)
!305 = distinct !DILexicalBlock(scope: !279, file: !19, line: 168, column: 11)
!306 = !DILocation(line: 168, column: 15, scope: !305)
!307 = !DILocation(line: 168, column: 11, scope: !279)
!308 = !DILocation(line: 176, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !19, line: 169, column: 2)
!310 = !DILocation(line: 177, column: 22, scope: !309)
!311 = !DILocation(line: 177, column: 36, scope: !309)
!312 = !DILocation(line: 177, column: 32, scope: !309)
!313 = !DILocation(line: 177, column: 10, scope: !309)
!314 = !DILocation(line: 178, column: 7, scope: !309)
!315 = !DILocation(line: 179, column: 2, scope: !309)
!316 = !DILocation(line: 180, column: 35, scope: !279)
!317 = !DILocation(line: 180, column: 45, scope: !279)
!318 = !DILocation(line: 180, column: 14, scope: !279)
!319 = !DILocation(line: 181, column: 14, scope: !279)
!320 = !DILocation(line: 182, column: 9, scope: !279)
!321 = !DILocation(line: 183, column: 11, scope: !279)
!322 = !DILocation(line: 185, column: 10, scope: !18)
!323 = !DILocation(line: 185, column: 18, scope: !18)
!324 = !DILocation(line: 185, column: 32, scope: !18)
!325 = !DILocation(line: 185, column: 27, scope: !18)
!326 = !DILocation(line: 185, column: 47, scope: !18)
!327 = !DILocation(line: 186, column: 3, scope: !18)
!328 = !DILocation(line: 186, column: 6, scope: !18)
!329 = !DILocation(line: 186, column: 28, scope: !18)
!330 = !DILocation(line: 184, column: 5, scope: !279)
!331 = distinct !{!331, !277, !332}
!332 = !DILocation(line: 186, column: 33, scope: !18)
!333 = !DILocation(line: 187, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !18, file: !19, line: 187, column: 7)
!335 = !DILocation(line: 187, column: 7, scope: !18)
!336 = !DILocation(line: 190, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !18, file: !19, line: 190, column: 7)
!338 = !DILocation(line: 190, column: 7, scope: !18)
!339 = !DILocation(line: 193, column: 10, scope: !18)
!340 = !DILocation(line: 195, column: 3, scope: !18)
!341 = !DILocation(line: 0, scope: !18)
!342 = !DILocation(line: 200, column: 1, scope: !18)
!343 = distinct !DISubprogram(name: "fgetws_unlocked", scope: !19, file: !19, line: 203, type: !344, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !348)
!344 = !DISubroutineType(types: !345)
!345 = !{!22, !346, !25, !347}
!346 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!347 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!348 = !{!349, !350, !351, !352, !353}
!349 = !DILocalVariable(name: "ws", arg: 1, scope: !343, file: !19, line: 203, type: !346)
!350 = !DILocalVariable(name: "n", arg: 2, scope: !343, file: !19, line: 203, type: !25)
!351 = !DILocalVariable(name: "fp", arg: 3, scope: !343, file: !19, line: 203, type: !347)
!352 = !DILocalVariable(name: "reent", scope: !343, file: !19, line: 208, type: !26)
!353 = !DILocalVariable(name: "_check_init_ptr", scope: !354, file: !19, line: 210, type: !26)
!354 = distinct !DILexicalBlock(scope: !343, file: !19, line: 210, column: 3)
!355 = !DILocation(line: 203, column: 1, scope: !343)
!356 = !DILocation(line: 208, column: 26, scope: !343)
!357 = !DILocation(line: 208, column: 18, scope: !343)
!358 = !DILocation(line: 210, column: 3, scope: !354)
!359 = !DILocation(line: 210, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !354, file: !19, line: 210, column: 3)
!361 = !{!362, !259, i64 80}
!362 = !{!"_reent", !259, i64 0, !267, i64 8, !267, i64 16, !267, i64 24, !259, i64 32, !260, i64 36, !259, i64 64, !267, i64 72, !259, i64 80, !267, i64 88, !267, i64 96, !259, i64 104, !267, i64 112, !267, i64 120, !259, i64 128, !267, i64 136, !260, i64 144, !267, i64 504, !363, i64 512, !267, i64 1304, !365, i64 1312, !260, i64 1336}
!363 = !{!"_atexit", !267, i64 0, !259, i64 8, !260, i64 16, !364, i64 272}
!364 = !{!"_on_exit_args", !260, i64 0, !260, i64 256, !259, i64 512, !259, i64 516}
!365 = !{!"_glue", !267, i64 0, !259, i64 8, !267, i64 16}
!366 = !DILocation(line: 211, column: 10, scope: !343)
!367 = !DILocation(line: 211, column: 3, scope: !343)
