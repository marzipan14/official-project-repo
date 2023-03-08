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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_iconv_resolve_encoding_name(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !19 {
  br label %3, !dbg !241

; <label>:3:                                      ; preds = %6, %2
  %4 = phi i8* [ %1, %2 ], [ %7, %6 ], !dbg !242
  %5 = load i8, i8* %4, align 1, !dbg !244, !tbaa !245
  switch i8 %5, label %6 [
    i8 0, label %9
    i8 32, label %128
    i8 13, label %128
  ], !dbg !241

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !248
  %8 = icmp eq i8 %5, 10, !dbg !249
  br i1 %8, label %128, label %3, !dbg !250, !llvm.loop !251

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8* %1, null, !dbg !270
  br i1 %10, label %32, label %11, !dbg !272

; <label>:11:                                     ; preds = %9
  %12 = tail call i8* @_strdup_r(%struct._reent* %0, i8* nonnull %1) #5, !dbg !273
  %13 = icmp eq i8* %12, null, !dbg !276
  br i1 %13, label %32, label %14, !dbg !277

; <label>:14:                                     ; preds = %11, %28
  %15 = phi i8* [ %31, %28 ], [ %12, %11 ], !dbg !278
  %16 = phi i8* [ %30, %28 ], [ %1, %11 ]
  %17 = load i8, i8* %16, align 1, !dbg !279, !tbaa !245
  switch i8 %17, label %18 [
    i8 0, label %33
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

; <label>:32:                                     ; preds = %11, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br label %128, !dbg !290

; <label>:33:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  %34 = load i8*, i8** @_iconv_aliases, align 8, !dbg !291, !tbaa !292
  %35 = tail call i64 @strlen(i8* %34) #5, !dbg !294
  %36 = trunc i64 %35 to i32, !dbg !294
  %37 = tail call i64 @strlen(i8* nonnull %12) #5, !dbg !310
  %38 = trunc i64 %37 to i32, !dbg !310
  %39 = shl i64 %35, 32, !dbg !313
  %40 = ashr exact i64 %39, 32, !dbg !313
  %41 = getelementptr inbounds i8, i8* %34, i64 %40, !dbg !313
  %42 = icmp eq i8* %34, null, !dbg !315
  br i1 %42, label %126, label %43, !dbg !317

; <label>:43:                                     ; preds = %33
  %44 = load i8, i8* %34, align 1, !dbg !318, !tbaa !245
  %45 = icmp eq i8 %44, 0, !dbg !319
  br i1 %45, label %126, label %46, !dbg !320

; <label>:46:                                     ; preds = %43
  %47 = load i8, i8* %12, align 1, !dbg !321, !tbaa !245
  %48 = icmp eq i8 %47, 0, !dbg !322
  %49 = icmp sgt i32 %38, %36, !dbg !323
  %50 = or i1 %49, %48, !dbg !325
  br i1 %50, label %126, label %51, !dbg !325

; <label>:51:                                     ; preds = %46
  %52 = shl i64 %37, 32
  %53 = ashr exact i64 %52, 32
  %54 = ptrtoint i8* %34 to i64
  br label %55, !dbg !326

; <label>:55:                                     ; preds = %92, %51
  %56 = phi i8* [ %34, %51 ], [ %93, %92 ]
  %57 = phi i32 [ %36, %51 ], [ %97, %92 ]
  %58 = sext i32 %57 to i64, !dbg !327
  %59 = tail call i8* @strnstr(i8* %56, i8* nonnull %12, i64 %58) #6, !dbg !328
  %60 = icmp eq i8* %59, null, !dbg !330
  br i1 %60, label %126, label %61, !dbg !331

; <label>:61:                                     ; preds = %55
  %62 = icmp eq i8* %59, %34, !dbg !332
  br i1 %62, label %77, label %63, !dbg !334

; <label>:63:                                     ; preds = %61
  %64 = tail call i8* @__locale_ctype_ptr() #5, !dbg !335
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !335
  %66 = getelementptr inbounds i8, i8* %59, i64 -1, !dbg !335
  %67 = load i8, i8* %66, align 1, !dbg !335, !tbaa !245
  %68 = sext i8 %67 to i64, !dbg !335
  %69 = getelementptr inbounds i8, i8* %65, i64 %68, !dbg !335
  %70 = load i8, i8* %69, align 1, !dbg !335, !tbaa !245
  %71 = and i8 %70, 8, !dbg !335
  %72 = icmp ne i8 %71, 0, !dbg !335
  %73 = icmp eq i8 %67, 10, !dbg !336
  %74 = or i1 %73, %72, !dbg !337
  br i1 %74, label %77, label %75, !dbg !337

; <label>:75:                                     ; preds = %63
  %76 = getelementptr inbounds i8, i8* %59, i64 %53, !dbg !338
  br label %92, !dbg !337

; <label>:77:                                     ; preds = %63, %61
  %78 = getelementptr inbounds i8, i8* %59, i64 %53, !dbg !340
  %79 = icmp eq i8* %78, %41, !dbg !341
  br i1 %79, label %80, label %81, !dbg !342

; <label>:80:                                     ; preds = %81, %77
  br label %99, !dbg !343

; <label>:81:                                     ; preds = %77
  %82 = tail call i8* @__locale_ctype_ptr() #5, !dbg !344
  %83 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !344
  %84 = load i8, i8* %78, align 1, !dbg !344, !tbaa !245
  %85 = sext i8 %84 to i64, !dbg !344
  %86 = getelementptr inbounds i8, i8* %83, i64 %85, !dbg !344
  %87 = load i8, i8* %86, align 1, !dbg !344, !tbaa !245
  %88 = and i8 %87, 8, !dbg !344
  %89 = icmp ne i8 %88, 0, !dbg !344
  %90 = icmp eq i8 %84, 10, !dbg !345
  %91 = or i1 %90, %89, !dbg !346
  br i1 %91, label %80, label %92, !dbg !346

; <label>:92:                                     ; preds = %81, %75
  %93 = phi i8* [ %76, %75 ], [ %78, %81 ], !dbg !338
  %94 = ptrtoint i8* %59 to i64, !dbg !347
  %95 = sub i64 %94, %54, !dbg !348
  %96 = trunc i64 %95 to i32, !dbg !348
  %97 = add i32 %57, %96, !dbg !348
  %98 = icmp slt i32 %97, %38, !dbg !323
  br i1 %98, label %126, label %55, !dbg !326

; <label>:99:                                     ; preds = %80, %103
  %100 = phi i8* [ %101, %103 ], [ %59, %80 ], !dbg !349
  %101 = getelementptr inbounds i8, i8* %100, i64 -1, !dbg !343
  %102 = icmp ugt i8* %101, %34, !dbg !350
  br i1 %102, label %103, label %106, !dbg !351

; <label>:103:                                    ; preds = %99
  %104 = load i8, i8* %101, align 1, !dbg !352, !tbaa !245
  %105 = icmp eq i8 %104, 10, !dbg !353
  br i1 %105, label %106, label %99, !dbg !354, !llvm.loop !355

; <label>:106:                                    ; preds = %103, %99
  %107 = load i8, i8* %100, align 1, !dbg !358, !tbaa !245
  %108 = icmp eq i8 %107, 35, !dbg !360
  br i1 %108, label %126, label %109, !dbg !361

; <label>:109:                                    ; preds = %106, %120
  %110 = phi i8* [ %111, %120 ], [ %100, %106 ]
  %111 = getelementptr inbounds i8, i8* %110, i64 1, !dbg !362
  %112 = tail call i8* @__locale_ctype_ptr() #5, !dbg !366
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !366
  %114 = load i8, i8* %111, align 1, !dbg !366, !tbaa !245
  %115 = sext i8 %114 to i64, !dbg !366
  %116 = getelementptr inbounds i8, i8* %113, i64 %115, !dbg !366
  %117 = load i8, i8* %116, align 1, !dbg !366, !tbaa !245
  %118 = and i8 %117, 8, !dbg !366
  %119 = icmp eq i8 %118, 0, !dbg !366
  br i1 %119, label %120, label %121, !dbg !367

; <label>:120:                                    ; preds = %109
  switch i8 %114, label %109 [
    i8 10, label %121
    i8 0, label %121
  ], !dbg !367

; <label>:121:                                    ; preds = %120, %120, %109
  %122 = ptrtoint i8* %111 to i64, !dbg !368
  %123 = ptrtoint i8* %100 to i64, !dbg !368
  %124 = sub i64 %122, %123, !dbg !368
  %125 = tail call i8* @_strndup_r(%struct._reent* %0, i8* %100, i64 %124) #5, !dbg !369
  br label %126, !dbg !370

; <label>:126:                                    ; preds = %55, %92, %33, %43, %46, %106, %121
  %127 = phi i8* [ %125, %121 ], [ null, %46 ], [ null, %43 ], [ null, %33 ], [ null, %106 ], [ null, %92 ], [ null, %55 ], !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  tail call void @free(i8* nonnull %12) #5, !dbg !372
  br label %128, !dbg !373

; <label>:128:                                    ; preds = %6, %3, %3, %32, %126
  %129 = phi i8* [ %127, %126 ], [ null, %32 ], [ null, %3 ], [ null, %3 ], [ null, %6 ], !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  ret i8* %129, !dbg !375
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
!289 = !DILocation(line: 69, column: 1, scope: !254, inlinedAt: !268)
!290 = !DILocation(line: 161, column: 7, scope: !19)
!291 = !DILocation(line: 164, column: 29, scope: !19)
!292 = !{!293, !293, i64 0}
!293 = !{!"any pointer", !246, i64 0}
!294 = !DILocation(line: 164, column: 45, scope: !19)
!295 = !DILocalVariable(name: "rptr", arg: 1, scope: !296, file: !1, line: 96, type: !22)
!296 = distinct !DISubprogram(name: "find_alias", scope: !1, file: !1, line: 96, type: !297, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!4, !22, !7, !7, !9}
!299 = !{!295, !300, !301, !302, !303, !304, !305, !306, !307}
!300 = !DILocalVariable(name: "alias", arg: 2, scope: !296, file: !1, line: 96, type: !7)
!301 = !DILocalVariable(name: "table", arg: 3, scope: !296, file: !1, line: 96, type: !7)
!302 = !DILocalVariable(name: "len", arg: 4, scope: !296, file: !1, line: 96, type: !9)
!303 = !DILocalVariable(name: "end", scope: !296, file: !1, line: 102, type: !7)
!304 = !DILocalVariable(name: "p", scope: !296, file: !1, line: 103, type: !7)
!305 = !DILocalVariable(name: "l", scope: !296, file: !1, line: 104, type: !9)
!306 = !DILocalVariable(name: "ptable", scope: !296, file: !1, line: 105, type: !7)
!307 = !DILocalVariable(name: "table_end", scope: !296, file: !1, line: 106, type: !7)
!308 = !DILocation(line: 96, column: 1, scope: !296, inlinedAt: !309)
!309 = distinct !DILocation(line: 164, column: 7, scope: !19)
!310 = !DILocation(line: 104, column: 11, scope: !296, inlinedAt: !309)
!311 = !DILocation(line: 104, column: 7, scope: !296, inlinedAt: !309)
!312 = !DILocation(line: 105, column: 16, scope: !296, inlinedAt: !309)
!313 = !DILocation(line: 106, column: 34, scope: !296, inlinedAt: !309)
!314 = !DILocation(line: 106, column: 16, scope: !296, inlinedAt: !309)
!315 = !DILocation(line: 108, column: 13, scope: !316, inlinedAt: !309)
!316 = distinct !DILexicalBlock(scope: !296, file: !1, line: 108, column: 7)
!317 = !DILocation(line: 108, column: 21, scope: !316, inlinedAt: !309)
!318 = !DILocation(line: 108, column: 41, scope: !316, inlinedAt: !309)
!319 = !DILocation(line: 108, column: 48, scope: !316, inlinedAt: !309)
!320 = !DILocation(line: 108, column: 56, scope: !316, inlinedAt: !309)
!321 = !DILocation(line: 108, column: 59, scope: !316, inlinedAt: !309)
!322 = !DILocation(line: 108, column: 66, scope: !316, inlinedAt: !309)
!323 = !DILocation(line: 112, column: 11, scope: !324, inlinedAt: !309)
!324 = distinct !DILexicalBlock(scope: !296, file: !1, line: 112, column: 7)
!325 = !DILocation(line: 108, column: 7, scope: !296, inlinedAt: !309)
!326 = !DILocation(line: 112, column: 15, scope: !324, inlinedAt: !309)
!327 = !DILocation(line: 112, column: 47, scope: !324, inlinedAt: !309)
!328 = !DILocation(line: 112, column: 23, scope: !324, inlinedAt: !309)
!329 = !DILocation(line: 103, column: 16, scope: !296, inlinedAt: !309)
!330 = !DILocation(line: 112, column: 53, scope: !324, inlinedAt: !309)
!331 = !DILocation(line: 112, column: 7, scope: !296, inlinedAt: !309)
!332 = !DILocation(line: 116, column: 12, scope: !333, inlinedAt: !309)
!333 = distinct !DILexicalBlock(scope: !296, file: !1, line: 116, column: 7)
!334 = !DILocation(line: 116, column: 21, scope: !333, inlinedAt: !309)
!335 = !DILocation(line: 116, column: 24, scope: !333, inlinedAt: !309)
!336 = !DILocation(line: 116, column: 51, scope: !333, inlinedAt: !309)
!337 = !DILocation(line: 116, column: 41, scope: !333, inlinedAt: !309)
!338 = !DILocation(line: 119, column: 18, scope: !339, inlinedAt: !309)
!339 = distinct !DILexicalBlock(scope: !333, file: !1, line: 118, column: 5)
!340 = !DILocation(line: 117, column: 11, scope: !333, inlinedAt: !309)
!341 = !DILocation(line: 117, column: 14, scope: !333, inlinedAt: !309)
!342 = !DILocation(line: 117, column: 27, scope: !333, inlinedAt: !309)
!343 = !DILocation(line: 124, column: 9, scope: !296, inlinedAt: !309)
!344 = !DILocation(line: 117, column: 30, scope: !333, inlinedAt: !309)
!345 = !DILocation(line: 117, column: 57, scope: !333, inlinedAt: !309)
!346 = !DILocation(line: 117, column: 47, scope: !333, inlinedAt: !309)
!347 = !DILocation(line: 120, column: 20, scope: !339, inlinedAt: !309)
!348 = !DILocation(line: 120, column: 11, scope: !339, inlinedAt: !309)
!349 = !DILocation(line: 0, scope: !296, inlinedAt: !309)
!350 = !DILocation(line: 124, column: 13, scope: !296, inlinedAt: !309)
!351 = !DILocation(line: 124, column: 21, scope: !296, inlinedAt: !309)
!352 = !DILocation(line: 124, column: 24, scope: !296, inlinedAt: !309)
!353 = !DILocation(line: 124, column: 27, scope: !296, inlinedAt: !309)
!354 = !DILocation(line: 124, column: 3, scope: !296, inlinedAt: !309)
!355 = distinct !{!355, !356, !357}
!356 = !DILocation(line: 124, column: 3, scope: !296)
!357 = !DILocation(line: 124, column: 35, scope: !296)
!358 = !DILocation(line: 126, column: 7, scope: !359, inlinedAt: !309)
!359 = distinct !DILexicalBlock(scope: !296, file: !1, line: 126, column: 7)
!360 = !DILocation(line: 126, column: 14, scope: !359, inlinedAt: !309)
!361 = !DILocation(line: 126, column: 7, scope: !296, inlinedAt: !309)
!362 = !DILocation(line: 0, scope: !363, inlinedAt: !309)
!363 = distinct !DILexicalBlock(scope: !364, file: !1, line: 129, column: 3)
!364 = distinct !DILexicalBlock(scope: !296, file: !1, line: 129, column: 3)
!365 = !DILocation(line: 102, column: 16, scope: !296, inlinedAt: !309)
!366 = !DILocation(line: 129, column: 22, scope: !363, inlinedAt: !309)
!367 = !DILocation(line: 129, column: 37, scope: !363, inlinedAt: !309)
!368 = !DILocation(line: 131, column: 44, scope: !296, inlinedAt: !309)
!369 = !DILocation(line: 131, column: 10, scope: !296, inlinedAt: !309)
!370 = !DILocation(line: 131, column: 3, scope: !296, inlinedAt: !309)
!371 = !DILocation(line: 132, column: 1, scope: !296, inlinedAt: !309)
!372 = !DILocation(line: 166, column: 3, scope: !19)
!373 = !DILocation(line: 167, column: 3, scope: !19)
!374 = !DILocation(line: 0, scope: !19)
!375 = !DILocation(line: 168, column: 1, scope: !19)
