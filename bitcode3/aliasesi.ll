; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c"
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

@_iconv_aliases = external dso_local local_unnamed_addr global i8*, align 8

; Function Attrs: noredzone nounwind
define dso_local i8* @_iconv_resolve_encoding_name(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !19 {
  br label %3, !dbg !241

; <label>:3:                                      ; preds = %6, %2
  %4 = phi i8* [ %1, %2 ], [ %7, %6 ], !dbg !242
  %5 = load i8, i8* %4, align 1, !dbg !244, !tbaa !245
  switch i8 %5, label %6 [
    i8 0, label %9
    i8 32, label %127
    i8 13, label %127
  ], !dbg !241

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !248
  %8 = icmp eq i8 %5, 10, !dbg !249
  br i1 %8, label %127, label %3, !dbg !250, !llvm.loop !251

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8* %1, null, !dbg !270
  br i1 %10, label %127, label %11, !dbg !272

; <label>:11:                                     ; preds = %9
  %12 = tail call i8* @_strdup_r(%struct._reent* %0, i8* nonnull %1) #5, !dbg !273
  %13 = icmp eq i8* %12, null, !dbg !276
  br i1 %13, label %127, label %14, !dbg !277

; <label>:14:                                     ; preds = %11, %28
  %15 = phi i8* [ %31, %28 ], [ %12, %11 ], !dbg !278
  %16 = phi i8* [ %30, %28 ], [ %1, %11 ]
  %17 = load i8, i8* %16, align 1, !dbg !279, !tbaa !245
  switch i8 %17, label %18 [
    i8 0, label %32
    i8 45, label %28
  ], !dbg !280

; <label>:18:                                     ; preds = %14
  %19 = tail call i8* @__locale_ctype_ptr() #5, !dbg !281
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !281
  %21 = sext i8 %17 to i64, !dbg !281
  %22 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !281
  %23 = load i8, i8* %22, align 1, !dbg !281, !tbaa !245
  %24 = and i8 %23, 3, !dbg !281
  %25 = icmp eq i8 %24, 1, !dbg !281
  %26 = add i8 %17, 32, !dbg !281
  %27 = select i1 %25, i8 %26, i8 %17, !dbg !281
  br label %28

; <label>:28:                                     ; preds = %18, %14
  %29 = phi i8 [ %27, %18 ], [ 95, %14 ]
  store i8 %29, i8* %15, align 1, !dbg !282, !tbaa !245
  %30 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !283
  %31 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !284
  br label %14, !dbg !285, !llvm.loop !286

; <label>:32:                                     ; preds = %14
  %33 = load i8*, i8** @_iconv_aliases, align 8, !dbg !289, !tbaa !290
  %34 = tail call i64 @strlen(i8* %33) #5, !dbg !292
  %35 = trunc i64 %34 to i32, !dbg !292
  %36 = tail call i64 @strlen(i8* nonnull %12) #5, !dbg !308
  %37 = trunc i64 %36 to i32, !dbg !308
  %38 = shl i64 %34, 32, !dbg !311
  %39 = ashr exact i64 %38, 32, !dbg !311
  %40 = getelementptr inbounds i8, i8* %33, i64 %39, !dbg !311
  %41 = icmp eq i8* %33, null, !dbg !313
  br i1 %41, label %125, label %42, !dbg !315

; <label>:42:                                     ; preds = %32
  %43 = load i8, i8* %33, align 1, !dbg !316, !tbaa !245
  %44 = icmp eq i8 %43, 0, !dbg !317
  br i1 %44, label %125, label %45, !dbg !318

; <label>:45:                                     ; preds = %42
  %46 = load i8, i8* %12, align 1, !dbg !319, !tbaa !245
  %47 = icmp eq i8 %46, 0, !dbg !320
  %48 = icmp sgt i32 %37, %35, !dbg !321
  %49 = or i1 %48, %47, !dbg !323
  br i1 %49, label %125, label %50, !dbg !323

; <label>:50:                                     ; preds = %45
  %51 = shl i64 %36, 32
  %52 = ashr exact i64 %51, 32
  %53 = ptrtoint i8* %33 to i64
  br label %54, !dbg !324

; <label>:54:                                     ; preds = %91, %50
  %55 = phi i8* [ %33, %50 ], [ %92, %91 ]
  %56 = phi i32 [ %35, %50 ], [ %96, %91 ]
  %57 = sext i32 %56 to i64, !dbg !325
  %58 = tail call i8* @strnstr(i8* %55, i8* nonnull %12, i64 %57) #6, !dbg !326
  %59 = icmp eq i8* %58, null, !dbg !328
  br i1 %59, label %125, label %60, !dbg !329

; <label>:60:                                     ; preds = %54
  %61 = icmp eq i8* %58, %33, !dbg !330
  br i1 %61, label %76, label %62, !dbg !332

; <label>:62:                                     ; preds = %60
  %63 = tail call i8* @__locale_ctype_ptr() #5, !dbg !333
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !333
  %65 = getelementptr inbounds i8, i8* %58, i64 -1, !dbg !333
  %66 = load i8, i8* %65, align 1, !dbg !333, !tbaa !245
  %67 = sext i8 %66 to i64, !dbg !333
  %68 = getelementptr inbounds i8, i8* %64, i64 %67, !dbg !333
  %69 = load i8, i8* %68, align 1, !dbg !333, !tbaa !245
  %70 = and i8 %69, 8, !dbg !333
  %71 = icmp ne i8 %70, 0, !dbg !333
  %72 = icmp eq i8 %66, 10, !dbg !334
  %73 = or i1 %72, %71, !dbg !335
  br i1 %73, label %76, label %74, !dbg !335

; <label>:74:                                     ; preds = %62
  %75 = getelementptr inbounds i8, i8* %58, i64 %52, !dbg !336
  br label %91, !dbg !335

; <label>:76:                                     ; preds = %62, %60
  %77 = getelementptr inbounds i8, i8* %58, i64 %52, !dbg !338
  %78 = icmp eq i8* %77, %40, !dbg !339
  br i1 %78, label %79, label %80, !dbg !340

; <label>:79:                                     ; preds = %80, %76
  br label %98, !dbg !341

; <label>:80:                                     ; preds = %76
  %81 = tail call i8* @__locale_ctype_ptr() #5, !dbg !342
  %82 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !342
  %83 = load i8, i8* %77, align 1, !dbg !342, !tbaa !245
  %84 = sext i8 %83 to i64, !dbg !342
  %85 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !342
  %86 = load i8, i8* %85, align 1, !dbg !342, !tbaa !245
  %87 = and i8 %86, 8, !dbg !342
  %88 = icmp ne i8 %87, 0, !dbg !342
  %89 = icmp eq i8 %83, 10, !dbg !343
  %90 = or i1 %89, %88, !dbg !344
  br i1 %90, label %79, label %91, !dbg !344

; <label>:91:                                     ; preds = %80, %74
  %92 = phi i8* [ %75, %74 ], [ %77, %80 ], !dbg !336
  %93 = ptrtoint i8* %58 to i64, !dbg !345
  %94 = sub i64 %93, %53, !dbg !346
  %95 = trunc i64 %94 to i32, !dbg !346
  %96 = add i32 %56, %95, !dbg !346
  %97 = icmp slt i32 %96, %37, !dbg !321
  br i1 %97, label %125, label %54, !dbg !324

; <label>:98:                                     ; preds = %79, %102
  %99 = phi i8* [ %100, %102 ], [ %58, %79 ], !dbg !347
  %100 = getelementptr inbounds i8, i8* %99, i64 -1, !dbg !341
  %101 = icmp ugt i8* %100, %33, !dbg !348
  br i1 %101, label %102, label %105, !dbg !349

; <label>:102:                                    ; preds = %98
  %103 = load i8, i8* %100, align 1, !dbg !350, !tbaa !245
  %104 = icmp eq i8 %103, 10, !dbg !351
  br i1 %104, label %105, label %98, !dbg !352, !llvm.loop !353

; <label>:105:                                    ; preds = %102, %98
  %106 = load i8, i8* %99, align 1, !dbg !356, !tbaa !245
  %107 = icmp eq i8 %106, 35, !dbg !358
  br i1 %107, label %125, label %108, !dbg !359

; <label>:108:                                    ; preds = %105, %119
  %109 = phi i8* [ %110, %119 ], [ %99, %105 ]
  %110 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !360
  %111 = tail call i8* @__locale_ctype_ptr() #5, !dbg !364
  %112 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !364
  %113 = load i8, i8* %110, align 1, !dbg !364, !tbaa !245
  %114 = sext i8 %113 to i64, !dbg !364
  %115 = getelementptr inbounds i8, i8* %112, i64 %114, !dbg !364
  %116 = load i8, i8* %115, align 1, !dbg !364, !tbaa !245
  %117 = and i8 %116, 8, !dbg !364
  %118 = icmp eq i8 %117, 0, !dbg !364
  br i1 %118, label %119, label %120, !dbg !365

; <label>:119:                                    ; preds = %108
  switch i8 %113, label %108 [
    i8 10, label %120
    i8 0, label %120
  ], !dbg !365

; <label>:120:                                    ; preds = %119, %119, %108
  %121 = ptrtoint i8* %110 to i64, !dbg !366
  %122 = ptrtoint i8* %99 to i64, !dbg !366
  %123 = sub i64 %121, %122, !dbg !366
  %124 = tail call i8* @_strndup_r(%struct._reent* %0, i8* %99, i64 %123) #5, !dbg !367
  br label %125, !dbg !368

; <label>:125:                                    ; preds = %54, %91, %32, %42, %45, %105, %120
  %126 = phi i8* [ %124, %120 ], [ null, %45 ], [ null, %42 ], [ null, %32 ], [ null, %105 ], [ null, %91 ], [ null, %54 ], !dbg !347
  tail call void @free(i8* nonnull %12) #5, !dbg !369
  br label %127, !dbg !370

; <label>:127:                                    ; preds = %6, %3, %3, %9, %11, %125
  %128 = phi i8* [ %126, %125 ], [ null, %11 ], [ null, %9 ], [ null, %3 ], [ null, %3 ], [ null, %6 ], !dbg !371
  ret i8* %128, !dbg !372
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @_strdup_r(%struct._reent*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: noredzone nounwind readonly
declare dso_local i8* @strnstr(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @_strndup_r(%struct._reent*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "_iconv_resolve_encoding_name", scope: !1, file: !1, line: 150, type: !20, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !235)
!20 = !DISubroutineType(types: !21)
!21 = !{!4, !22, !7}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !24, line: 569, size: 14912, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !103, !104, !105, !106, !110, !111, !114, !115, !119, !131, !132, !133, !135, !136, !137, !199, !220, !221, !226, !233}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !23, file: !24, line: 571, baseType: !9, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !24, line: 287, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !24, line: 181, size: 1408, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !53, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !24, line: 182, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !24, line: 183, baseType: !9, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !24, line: 184, baseType: !9, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !24, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !24, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !24, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !24, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !24, line: 118, baseType: !33, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !24, line: 119, baseType: !9, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !24, line: 188, baseType: !9, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !24, line: 195, baseType: !6, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !24, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !22, !6, !4, !9}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !13, line: 145, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !24, line: 199, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!51, !22, !6, !7, !9}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !24, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !22, !6, !61, !9}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !13, line: 114, baseType: !52)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !24, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!9, !22, !6}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !24, line: 206, baseType: !41, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !30, file: !24, line: 207, baseType: !33, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !24, line: 208, baseType: !9, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !24, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !24, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !24, line: 215, baseType: !41, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !24, line: 218, baseType: !9, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !24, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !13, line: 44, baseType: !52)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !30, file: !24, line: 222, baseType: !22, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !24, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !13, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !9)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !30, file: !24, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !13, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !13, line: 165, baseType: !9, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !13, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !13, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !13, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !13, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !24, line: 229, baseType: !9, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !23, file: !24, line: 578, baseType: !9, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !23, file: !24, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !23, file: !24, line: 582, baseType: !9, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !23, file: !24, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !24, line: 40, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !23, file: !24, line: 585, baseType: !9, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !23, file: !24, line: 587, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !22}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !23, file: !24, line: 590, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !24, line: 47, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !121, file: !24, line: 49, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !121, file: !24, line: 51, baseType: !129, size: 32, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !75)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !24, line: 25, baseType: !97)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !23, file: !24, line: 591, baseType: !9, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !23, file: !24, line: 592, baseType: !120, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !23, file: !24, line: 593, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !23, file: !24, line: 596, baseType: !9, size: 32, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !23, file: !24, line: 597, baseType: !4, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !23, file: !24, line: 632, baseType: !138, size: 2880, offset: 1152)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !24, line: 599, size: 2880, elements: !139)
!139 = !{!140, !190}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !138, file: !24, line: 622, baseType: !141, size: 1728)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !24, line: 601, size: 1728, elements: !142)
!142 = !{!143, !144, !145, !149, !161, !162, !164, !172, !173, !174, !175, !179, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !141, file: !24, line: 603, baseType: !97, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !141, file: !24, line: 604, baseType: !4, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !141, file: !24, line: 605, baseType: !146, size: 208, offset: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 26)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !141, file: !24, line: 606, baseType: !150, size: 288, offset: 352)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !24, line: 55, size: 288, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !150, file: !24, line: 57, baseType: !9, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !150, file: !24, line: 58, baseType: !9, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !150, file: !24, line: 59, baseType: !9, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !150, file: !24, line: 60, baseType: !9, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !150, file: !24, line: 61, baseType: !9, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !150, file: !24, line: 62, baseType: !9, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !150, file: !24, line: 63, baseType: !9, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !150, file: !24, line: 64, baseType: !9, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !150, file: !24, line: 65, baseType: !9, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !141, file: !24, line: 607, baseType: !9, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !141, file: !24, line: 608, baseType: !163, size: 64, offset: 704)
!163 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !141, file: !24, line: 609, baseType: !165, size: 112, offset: 768)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !24, line: 319, size: 112, elements: !166)
!166 = !{!167, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !165, file: !24, line: 320, baseType: !168, size: 48)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !71)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !165, file: !24, line: 321, baseType: !168, size: 48, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !165, file: !24, line: 322, baseType: !169, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !141, file: !24, line: 610, baseType: !87, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !141, file: !24, line: 611, baseType: !87, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !141, file: !24, line: 612, baseType: !87, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !141, file: !24, line: 613, baseType: !176, size: 64, offset: 1088)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !141, file: !24, line: 614, baseType: !180, size: 192, offset: 1152)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !141, file: !24, line: 615, baseType: !9, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !141, file: !24, line: 616, baseType: !87, size: 64, offset: 1376)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !141, file: !24, line: 617, baseType: !87, size: 64, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !141, file: !24, line: 618, baseType: !87, size: 64, offset: 1504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !141, file: !24, line: 619, baseType: !87, size: 64, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !141, file: !24, line: 620, baseType: !87, size: 64, offset: 1632)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !141, file: !24, line: 621, baseType: !9, size: 32, offset: 1696)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !138, file: !24, line: 631, baseType: !191, size: 2880)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !24, line: 626, size: 2880, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !191, file: !24, line: 629, baseType: !194, size: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !191, file: !24, line: 630, baseType: !198, size: 960, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !23, file: !24, line: 636, baseType: !200, size: 64, offset: 4032)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !24, line: 93, size: 6336, elements: !202)
!202 = !{!203, !204, !205, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !24, line: 94, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !201, file: !24, line: 95, baseType: !9, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !201, file: !24, line: 97, baseType: !206, size: 2048, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2048, elements: !210)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{!211}
!211 = !DISubrange(count: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !201, file: !24, line: 98, baseType: !213, size: 4160, offset: 2176)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !24, line: 74, size: 4160, elements: !214)
!214 = !{!215, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !213, file: !24, line: 75, baseType: !216, size: 2048)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !210)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !213, file: !24, line: 76, baseType: !216, size: 2048, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !213, file: !24, line: 78, baseType: !130, size: 32, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !213, file: !24, line: 81, baseType: !130, size: 32, offset: 4128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !23, file: !24, line: 637, baseType: !201, size: 6336, offset: 4096)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !23, file: !24, line: 641, baseType: !222, size: 64, offset: 10432)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !9}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !23, file: !24, line: 646, baseType: !227, size: 192, offset: 10496)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !24, line: 291, size: 192, elements: !228)
!228 = !{!229, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !227, file: !24, line: 293, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !227, file: !24, line: 294, baseType: !9, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !227, file: !24, line: 295, baseType: !28, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !23, file: !24, line: 648, baseType: !234, size: 4224, offset: 10688)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4224, elements: !71)
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(name: "rptr", arg: 1, scope: !19, file: !1, line: 150, type: !22)
!237 = !DILocalVariable(name: "ca", arg: 2, scope: !19, file: !1, line: 150, type: !7)
!238 = !DILocalVariable(name: "p", scope: !19, file: !1, line: 154, type: !4)
!239 = !DILocation(line: 150, column: 1, scope: !19)
!240 = !DILocation(line: 154, column: 9, scope: !19)
!241 = !DILocation(line: 157, column: 3, scope: !19)
!242 = !DILocation(line: 0, scope: !243)
!243 = distinct !DILexicalBlock(scope: !19, file: !1, line: 158, column: 9)
!244 = !DILocation(line: 157, column: 10, scope: !19)
!245 = !{!246, !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !DILocation(line: 158, column: 38, scope: !243)
!249 = !DILocation(line: 158, column: 41, scope: !243)
!250 = !DILocation(line: 158, column: 9, scope: !19)
!251 = distinct !{!251, !241, !252}
!252 = !DILocation(line: 159, column: 14, scope: !19)
!253 = !DILocalVariable(name: "rptr", arg: 1, scope: !254, file: !1, line: 51, type: !22)
!254 = distinct !DISubprogram(name: "canonical_form", scope: !1, file: !1, line: 51, type: !255, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!7, !22, !7}
!257 = !{!253, !258, !259, !260, !261}
!258 = !DILocalVariable(name: "str", arg: 2, scope: !254, file: !1, line: 51, type: !7)
!259 = !DILocalVariable(name: "p", scope: !254, file: !1, line: 55, type: !4)
!260 = !DILocalVariable(name: "p1", scope: !254, file: !1, line: 55, type: !4)
!261 = !DILocalVariable(name: "__x", scope: !262, file: !1, line: 65, type: !8)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 65, column: 14)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 62, column: 11)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 61, column: 5)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 60, column: 3)
!266 = distinct !DILexicalBlock(scope: !254, file: !1, line: 60, column: 3)
!267 = !DILocation(line: 51, column: 1, scope: !254, inlinedAt: !268)
!268 = distinct !DILocation(line: 161, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !19, file: !1, line: 161, column: 7)
!270 = !DILocation(line: 57, column: 11, scope: !271, inlinedAt: !268)
!271 = distinct !DILexicalBlock(scope: !254, file: !1, line: 57, column: 7)
!272 = !DILocation(line: 57, column: 19, scope: !271, inlinedAt: !268)
!273 = !DILocation(line: 57, column: 32, scope: !271, inlinedAt: !268)
!274 = !DILocation(line: 55, column: 13, scope: !254, inlinedAt: !268)
!275 = !DILocation(line: 55, column: 9, scope: !254, inlinedAt: !268)
!276 = !DILocation(line: 57, column: 55, scope: !271, inlinedAt: !268)
!277 = !DILocation(line: 57, column: 7, scope: !254, inlinedAt: !268)
!278 = !DILocation(line: 0, scope: !265, inlinedAt: !268)
!279 = !DILocation(line: 60, column: 10, scope: !265, inlinedAt: !268)
!280 = !DILocation(line: 60, column: 3, scope: !266, inlinedAt: !268)
!281 = !DILocation(line: 65, column: 14, scope: !262, inlinedAt: !268)
!282 = !DILocation(line: 0, scope: !263, inlinedAt: !268)
!283 = !DILocation(line: 60, column: 19, scope: !265, inlinedAt: !268)
!284 = !DILocation(line: 60, column: 24, scope: !265, inlinedAt: !268)
!285 = !DILocation(line: 60, column: 3, scope: !265, inlinedAt: !268)
!286 = distinct !{!286, !287, !288}
!287 = !DILocation(line: 60, column: 3, scope: !266)
!288 = !DILocation(line: 66, column: 5, scope: !266)
!289 = !DILocation(line: 164, column: 29, scope: !19)
!290 = !{!291, !291, i64 0}
!291 = !{!"any pointer", !246, i64 0}
!292 = !DILocation(line: 164, column: 45, scope: !19)
!293 = !DILocalVariable(name: "rptr", arg: 1, scope: !294, file: !1, line: 96, type: !22)
!294 = distinct !DISubprogram(name: "find_alias", scope: !1, file: !1, line: 96, type: !295, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{!4, !22, !7, !7, !9}
!297 = !{!293, !298, !299, !300, !301, !302, !303, !304, !305}
!298 = !DILocalVariable(name: "alias", arg: 2, scope: !294, file: !1, line: 96, type: !7)
!299 = !DILocalVariable(name: "table", arg: 3, scope: !294, file: !1, line: 96, type: !7)
!300 = !DILocalVariable(name: "len", arg: 4, scope: !294, file: !1, line: 96, type: !9)
!301 = !DILocalVariable(name: "end", scope: !294, file: !1, line: 102, type: !7)
!302 = !DILocalVariable(name: "p", scope: !294, file: !1, line: 103, type: !7)
!303 = !DILocalVariable(name: "l", scope: !294, file: !1, line: 104, type: !9)
!304 = !DILocalVariable(name: "ptable", scope: !294, file: !1, line: 105, type: !7)
!305 = !DILocalVariable(name: "table_end", scope: !294, file: !1, line: 106, type: !7)
!306 = !DILocation(line: 96, column: 1, scope: !294, inlinedAt: !307)
!307 = distinct !DILocation(line: 164, column: 7, scope: !19)
!308 = !DILocation(line: 104, column: 11, scope: !294, inlinedAt: !307)
!309 = !DILocation(line: 104, column: 7, scope: !294, inlinedAt: !307)
!310 = !DILocation(line: 105, column: 16, scope: !294, inlinedAt: !307)
!311 = !DILocation(line: 106, column: 34, scope: !294, inlinedAt: !307)
!312 = !DILocation(line: 106, column: 16, scope: !294, inlinedAt: !307)
!313 = !DILocation(line: 108, column: 13, scope: !314, inlinedAt: !307)
!314 = distinct !DILexicalBlock(scope: !294, file: !1, line: 108, column: 7)
!315 = !DILocation(line: 108, column: 21, scope: !314, inlinedAt: !307)
!316 = !DILocation(line: 108, column: 41, scope: !314, inlinedAt: !307)
!317 = !DILocation(line: 108, column: 48, scope: !314, inlinedAt: !307)
!318 = !DILocation(line: 108, column: 56, scope: !314, inlinedAt: !307)
!319 = !DILocation(line: 108, column: 59, scope: !314, inlinedAt: !307)
!320 = !DILocation(line: 108, column: 66, scope: !314, inlinedAt: !307)
!321 = !DILocation(line: 112, column: 11, scope: !322, inlinedAt: !307)
!322 = distinct !DILexicalBlock(scope: !294, file: !1, line: 112, column: 7)
!323 = !DILocation(line: 108, column: 7, scope: !294, inlinedAt: !307)
!324 = !DILocation(line: 112, column: 15, scope: !322, inlinedAt: !307)
!325 = !DILocation(line: 112, column: 47, scope: !322, inlinedAt: !307)
!326 = !DILocation(line: 112, column: 23, scope: !322, inlinedAt: !307)
!327 = !DILocation(line: 103, column: 16, scope: !294, inlinedAt: !307)
!328 = !DILocation(line: 112, column: 53, scope: !322, inlinedAt: !307)
!329 = !DILocation(line: 112, column: 7, scope: !294, inlinedAt: !307)
!330 = !DILocation(line: 116, column: 12, scope: !331, inlinedAt: !307)
!331 = distinct !DILexicalBlock(scope: !294, file: !1, line: 116, column: 7)
!332 = !DILocation(line: 116, column: 21, scope: !331, inlinedAt: !307)
!333 = !DILocation(line: 116, column: 24, scope: !331, inlinedAt: !307)
!334 = !DILocation(line: 116, column: 51, scope: !331, inlinedAt: !307)
!335 = !DILocation(line: 116, column: 41, scope: !331, inlinedAt: !307)
!336 = !DILocation(line: 119, column: 18, scope: !337, inlinedAt: !307)
!337 = distinct !DILexicalBlock(scope: !331, file: !1, line: 118, column: 5)
!338 = !DILocation(line: 117, column: 11, scope: !331, inlinedAt: !307)
!339 = !DILocation(line: 117, column: 14, scope: !331, inlinedAt: !307)
!340 = !DILocation(line: 117, column: 27, scope: !331, inlinedAt: !307)
!341 = !DILocation(line: 124, column: 9, scope: !294, inlinedAt: !307)
!342 = !DILocation(line: 117, column: 30, scope: !331, inlinedAt: !307)
!343 = !DILocation(line: 117, column: 57, scope: !331, inlinedAt: !307)
!344 = !DILocation(line: 117, column: 47, scope: !331, inlinedAt: !307)
!345 = !DILocation(line: 120, column: 20, scope: !337, inlinedAt: !307)
!346 = !DILocation(line: 120, column: 11, scope: !337, inlinedAt: !307)
!347 = !DILocation(line: 0, scope: !294, inlinedAt: !307)
!348 = !DILocation(line: 124, column: 13, scope: !294, inlinedAt: !307)
!349 = !DILocation(line: 124, column: 21, scope: !294, inlinedAt: !307)
!350 = !DILocation(line: 124, column: 24, scope: !294, inlinedAt: !307)
!351 = !DILocation(line: 124, column: 27, scope: !294, inlinedAt: !307)
!352 = !DILocation(line: 124, column: 3, scope: !294, inlinedAt: !307)
!353 = distinct !{!353, !354, !355}
!354 = !DILocation(line: 124, column: 3, scope: !294)
!355 = !DILocation(line: 124, column: 35, scope: !294)
!356 = !DILocation(line: 126, column: 7, scope: !357, inlinedAt: !307)
!357 = distinct !DILexicalBlock(scope: !294, file: !1, line: 126, column: 7)
!358 = !DILocation(line: 126, column: 14, scope: !357, inlinedAt: !307)
!359 = !DILocation(line: 126, column: 7, scope: !294, inlinedAt: !307)
!360 = !DILocation(line: 0, scope: !361, inlinedAt: !307)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 129, column: 3)
!362 = distinct !DILexicalBlock(scope: !294, file: !1, line: 129, column: 3)
!363 = !DILocation(line: 102, column: 16, scope: !294, inlinedAt: !307)
!364 = !DILocation(line: 129, column: 22, scope: !361, inlinedAt: !307)
!365 = !DILocation(line: 129, column: 37, scope: !361, inlinedAt: !307)
!366 = !DILocation(line: 131, column: 44, scope: !294, inlinedAt: !307)
!367 = !DILocation(line: 131, column: 10, scope: !294, inlinedAt: !307)
!368 = !DILocation(line: 131, column: 3, scope: !294, inlinedAt: !307)
!369 = !DILocation(line: 166, column: 3, scope: !19)
!370 = !DILocation(line: 167, column: 3, scope: !19)
!371 = !DILocation(line: 0, scope: !19)
!372 = !DILocation(line: 168, column: 1, scope: !19)
