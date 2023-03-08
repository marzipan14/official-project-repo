; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread_u.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread_u.c"
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
define dso_local i64 @_fread_unlocked_r(%struct._reent*, i8* noalias, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !18 {
  %6 = mul i64 %3, %2, !dbg !263
  %7 = icmp eq i64 %6, 0, !dbg !266
  br i1 %7, label %111, label %8, !dbg !267

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct._reent* %0, null, !dbg !269
  br i1 %9, label %15, label %10, !dbg !269

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !269
  %12 = load i32, i32* %11, align 8, !dbg !269, !tbaa !271
  %13 = icmp eq i32 %12, 0, !dbg !269
  br i1 %13, label %14, label %15, !dbg !268

; <label>:14:                                     ; preds = %10
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !269
  br label %15, !dbg !269

; <label>:15:                                     ; preds = %10, %8, %14
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !280
  %17 = load i32, i32* %16, align 8, !dbg !280, !tbaa !282
  %18 = icmp slt i32 %17, 0, !dbg !288
  br i1 %18, label %19, label %20, !dbg !289

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %16, align 8, !dbg !290, !tbaa !282
  br label %20, !dbg !291

; <label>:20:                                     ; preds = %19, %15
  %21 = phi i32 [ 0, %19 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !294
  %23 = load i16, i16* %22, align 8, !dbg !294, !tbaa !295
  %24 = and i16 %23, 2, !dbg !296
  %25 = icmp eq i16 %24, 0, !dbg !296
  br i1 %25, label %26, label %31, !dbg !297

; <label>:26:                                     ; preds = %20
  %27 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0
  %28 = sext i32 %21 to i64, !dbg !299
  %29 = icmp ugt i64 %6, %28, !dbg !301
  %30 = load i8*, i8** %27, align 8, !dbg !302, !tbaa !303
  br i1 %29, label %81, label %101, !dbg !304

; <label>:31:                                     ; preds = %20
  %32 = sext i32 %21 to i64, !dbg !305
  %33 = icmp ugt i64 %6, %32, !dbg !306
  %34 = select i1 %33, i64 %32, i64 %6, !dbg !307
  %35 = trunc i64 %34 to i32, !dbg !307
  %36 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !309
  %37 = load i8*, i8** %36, align 8, !dbg !309, !tbaa !303
  %38 = shl i64 %34, 32, !dbg !310
  %39 = ashr exact i64 %38, 32, !dbg !310
  %40 = tail call i8* @memcpy(i8* %1, i8* %37, i64 %39) #3, !dbg !311
  %41 = load i8*, i8** %36, align 8, !dbg !312, !tbaa !303
  %42 = getelementptr inbounds i8, i8* %41, i64 %39, !dbg !312
  store i8* %42, i8** %36, align 8, !dbg !312, !tbaa !303
  %43 = load i32, i32* %16, align 8, !dbg !313, !tbaa !282
  %44 = sub nsw i32 %43, %35, !dbg !313
  store i32 %44, i32* %16, align 8, !dbg !313, !tbaa !282
  %45 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !314
  %46 = sub i64 %6, %39, !dbg !315
  %47 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !316
  %48 = load i8*, i8** %47, align 8, !dbg !316, !tbaa !318
  %49 = icmp ne i8* %48, null, !dbg !316
  %50 = icmp ne i64 %46, 0, !dbg !319
  %51 = and i1 %50, %49, !dbg !320
  br i1 %51, label %52, label %57, !dbg !320

; <label>:52:                                     ; preds = %31
  %53 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 15, i64 0, !dbg !321
  %54 = icmp eq i8* %48, %53, !dbg !321
  br i1 %54, label %56, label %55, !dbg !324

; <label>:55:                                     ; preds = %52
  tail call void @free(i8* nonnull %48) #3, !dbg !321
  br label %56, !dbg !321

; <label>:56:                                     ; preds = %52, %55
  store i8* null, i8** %47, align 8, !dbg !324, !tbaa !318
  br label %57, !dbg !324

; <label>:57:                                     ; preds = %56, %31
  %58 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5
  %59 = getelementptr inbounds %struct.__sbuf, %struct.__sbuf* %58, i64 0, i32 0
  %60 = bitcast %struct.__sbuf* %58 to i64*
  %61 = bitcast %struct.__sFILE* %4 to i64*
  %62 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1
  br label %63, !dbg !325

; <label>:63:                                     ; preds = %67, %57
  %64 = phi i8* [ %45, %57 ], [ %76, %67 ], !dbg !326
  %65 = phi i64 [ %46, %57 ], [ %75, %67 ], !dbg !326
  %66 = icmp eq i64 %65, 0, !dbg !327
  br i1 %66, label %111, label %67, !dbg !325

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %60, align 8, !dbg !329, !tbaa !330
  %69 = load i64, i64* %61, align 8, !dbg !332, !tbaa !303
  %70 = load i32, i32* %62, align 8, !dbg !334, !tbaa !335
  store i8* %64, i8** %59, align 8, !dbg !337, !tbaa !330
  %71 = trunc i64 %65 to i32, !dbg !338
  store i32 %71, i32* %62, align 8, !dbg !339, !tbaa !335
  store i8* %64, i8** %36, align 8, !dbg !340, !tbaa !303
  %72 = tail call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #3, !dbg !341
  store i64 %68, i64* %60, align 8, !dbg !342, !tbaa !330
  store i32 %70, i32* %62, align 8, !dbg !343, !tbaa !335
  store i64 %69, i64* %61, align 8, !dbg !344, !tbaa !303
  %73 = load i32, i32* %16, align 8, !dbg !345, !tbaa !282
  %74 = sext i32 %73 to i64, !dbg !346
  %75 = sub i64 %65, %74, !dbg !347
  %76 = getelementptr inbounds i8, i8* %64, i64 %74, !dbg !348
  store i32 0, i32* %16, align 8, !dbg !349, !tbaa !282
  %77 = icmp eq i32 %72, 0, !dbg !350
  br i1 %77, label %63, label %78, !dbg !352

; <label>:78:                                     ; preds = %67
  %79 = sub i64 %6, %75, !dbg !353
  %80 = udiv i64 %79, %2, !dbg !355
  br label %111

; <label>:81:                                     ; preds = %26, %92
  %82 = phi i8* [ %97, %92 ], [ %30, %26 ]
  %83 = phi i64 [ %95, %92 ], [ %28, %26 ]
  %84 = phi i64 [ %89, %92 ], [ %6, %26 ]
  %85 = phi i8* [ %93, %92 ], [ %1, %26 ]
  %86 = tail call i8* @memcpy(i8* %85, i8* %82, i64 %83) #3, !dbg !356
  %87 = load i8*, i8** %27, align 8, !dbg !358, !tbaa !303
  %88 = getelementptr inbounds i8, i8* %87, i64 %83, !dbg !358
  store i8* %88, i8** %27, align 8, !dbg !358, !tbaa !303
  %89 = sub i64 %84, %83, !dbg !359
  %90 = tail call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %4) #3, !dbg !360
  %91 = icmp eq i32 %90, 0, !dbg !360
  br i1 %91, label %92, label %98, !dbg !362, !llvm.loop !363

; <label>:92:                                     ; preds = %81
  %93 = getelementptr inbounds i8, i8* %85, i64 %83, !dbg !365
  %94 = load i32, i32* %16, align 8, !dbg !366, !tbaa !282
  %95 = sext i32 %94 to i64, !dbg !299
  %96 = icmp ugt i64 %89, %95, !dbg !301
  %97 = load i8*, i8** %27, align 8, !dbg !302, !tbaa !303
  br i1 %96, label %81, label %101, !dbg !304

; <label>:98:                                     ; preds = %81
  %99 = sub i64 %6, %89, !dbg !367
  %100 = udiv i64 %99, %2, !dbg !369
  br label %111, !dbg !370

; <label>:101:                                    ; preds = %92, %26
  %102 = phi i8* [ %1, %26 ], [ %93, %92 ], !dbg !371
  %103 = phi i64 [ %6, %26 ], [ %89, %92 ], !dbg !371
  %104 = phi i8* [ %30, %26 ], [ %97, %92 ], !dbg !302
  %105 = tail call i8* @memcpy(i8* %102, i8* %104, i64 %103) #3, !dbg !372
  %106 = load i32, i32* %16, align 8, !dbg !373, !tbaa !282
  %107 = trunc i64 %103 to i32, !dbg !373
  %108 = sub i32 %106, %107, !dbg !373
  store i32 %108, i32* %16, align 8, !dbg !373, !tbaa !282
  %109 = load i8*, i8** %27, align 8, !dbg !374, !tbaa !303
  %110 = getelementptr inbounds i8, i8* %109, i64 %103, !dbg !374
  store i8* %110, i8** %27, align 8, !dbg !374, !tbaa !303
  br label %111

; <label>:111:                                    ; preds = %63, %101, %78, %5, %98
  %112 = phi i64 [ %80, %78 ], [ %100, %98 ], [ 0, %5 ], [ %3, %101 ], [ %3, %63 ], !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  ret i64 %112, !dbg !376
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i64 @fread_unlocked(i8* noalias, i64, i64, %struct.__sFILE* noalias) local_unnamed_addr #0 !dbg !377 {
  %5 = tail call %struct._reent* @__getreent() #3, !dbg !386
  %6 = tail call i64 @_fread_unlocked_r(%struct._reent* %5, i8* %0, i64 %1, i64 %2, %struct.__sFILE* %3) #4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  ret i64 %6, !dbg !388
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread_u.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10, !12}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "_fread_unlocked_r", scope: !19, file: !19, line: 177, type: !20, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !242)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fread.c", directory: "/root/.unikraft/apps/redis/build")
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !24, !237, !5, !5, !238}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 58, baseType: !9)
!23 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !26, line: 569, size: 14912, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !30, !105, !106, !107, !108, !112, !113, !116, !117, !121, !133, !134, !135, !137, !138, !139, !201, !222, !223, !228, !235}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !25, file: !26, line: 571, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !26, line: 287, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 181, size: 1408, elements: !34)
!34 = !{!35, !36, !37, !38, !40, !41, !46, !47, !48, !54, !60, !65, !69, !70, !71, !72, !76, !80, !81, !82, !84, !85, !89, !104}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !26, line: 182, baseType: !12, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !26, line: 183, baseType: !29, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !26, line: 184, baseType: !29, size: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !26, line: 185, baseType: !39, size: 16, offset: 128)
!39 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !26, line: 186, baseType: !39, size: 16, offset: 144)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !26, line: 187, baseType: !42, size: 128, offset: 192)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 117, size: 128, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !42, file: !26, line: 118, baseType: !12, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !42, file: !26, line: 119, baseType: !29, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !26, line: 188, baseType: !29, size: 32, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !26, line: 195, baseType: !4, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !26, line: 197, baseType: !49, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !24, !4, !10, !29}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !8, line: 145, baseType: !53)
!53 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !26, line: 199, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!52, !24, !4, !58, !29}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !26, line: 202, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !24, !4, !64, !29}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !8, line: 114, baseType: !53)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !26, line: 203, baseType: !66, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!29, !24, !4}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !26, line: 206, baseType: !42, size: 128, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !26, line: 207, baseType: !12, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !26, line: 208, baseType: !29, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !26, line: 211, baseType: !73, size: 24, offset: 928)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !26, line: 212, baseType: !77, size: 8, offset: 952)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !26, line: 215, baseType: !42, size: 128, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !26, line: 218, baseType: !29, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !26, line: 219, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !8, line: 44, baseType: !53)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !26, line: 222, baseType: !24, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !26, line: 226, baseType: !86, size: 32, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !8, line: 175, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !88, line: 12, baseType: !29)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !26, line: 228, baseType: !90, size: 64, offset: 1312)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !8, line: 171, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 163, size: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !91, file: !8, line: 165, baseType: !29, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !91, file: !8, line: 170, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !8, line: 166, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !95, file: !8, line: 168, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !23, line: 124, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !95, file: !8, line: 169, baseType: !101, size: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 32, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !26, line: 229, baseType: !29, size: 32, offset: 1376)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !25, file: !26, line: 578, baseType: !29, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !25, file: !26, line: 579, baseType: !109, size: 200, offset: 288)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 25)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !25, file: !26, line: 582, baseType: !29, size: 32, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !25, file: !26, line: 583, baseType: !114, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !26, line: 40, flags: DIFlagFwdDecl)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !25, file: !26, line: 585, baseType: !29, size: 32, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !25, file: !26, line: 587, baseType: !118, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !24}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !25, file: !26, line: 590, baseType: !122, size: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !26, line: 47, size: 256, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !123, file: !26, line: 49, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !123, file: !26, line: 50, baseType: !29, size: 32, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !123, file: !26, line: 50, baseType: !29, size: 32, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !123, file: !26, line: 50, baseType: !29, size: 32, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !123, file: !26, line: 50, baseType: !29, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !123, file: !26, line: 51, baseType: !131, size: 32, offset: 192)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, elements: !78)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !99)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !25, file: !26, line: 591, baseType: !29, size: 32, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !25, file: !26, line: 592, baseType: !122, size: 64, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !25, file: !26, line: 593, baseType: !136, size: 64, offset: 960)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !25, file: !26, line: 596, baseType: !29, size: 32, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !25, file: !26, line: 597, baseType: !10, size: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !25, file: !26, line: 632, baseType: !140, size: 2880, offset: 1152)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 599, size: 2880, elements: !141)
!141 = !{!142, !192}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !140, file: !26, line: 622, baseType: !143, size: 1728)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !26, line: 601, size: 1728, elements: !144)
!144 = !{!145, !146, !147, !151, !163, !164, !166, !174, !175, !176, !177, !181, !185, !186, !187, !188, !189, !190, !191}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !143, file: !26, line: 603, baseType: !99, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !143, file: !26, line: 604, baseType: !10, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !143, file: !26, line: 605, baseType: !148, size: 208, offset: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 26)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !143, file: !26, line: 606, baseType: !152, size: 288, offset: 352)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !26, line: 55, size: 288, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !152, file: !26, line: 57, baseType: !29, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !152, file: !26, line: 58, baseType: !29, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !152, file: !26, line: 59, baseType: !29, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !152, file: !26, line: 60, baseType: !29, size: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !152, file: !26, line: 61, baseType: !29, size: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !152, file: !26, line: 62, baseType: !29, size: 32, offset: 160)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !152, file: !26, line: 63, baseType: !29, size: 32, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !152, file: !26, line: 64, baseType: !29, size: 32, offset: 224)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !152, file: !26, line: 65, baseType: !29, size: 32, offset: 256)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !143, file: !26, line: 607, baseType: !29, size: 32, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !143, file: !26, line: 608, baseType: !165, size: 64, offset: 704)
!165 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !143, file: !26, line: 609, baseType: !167, size: 112, offset: 768)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !26, line: 319, size: 112, elements: !168)
!168 = !{!169, !172, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !167, file: !26, line: 320, baseType: !170, size: 48)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, elements: !74)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !167, file: !26, line: 321, baseType: !170, size: 48, offset: 48)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !167, file: !26, line: 322, baseType: !171, size: 16, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !143, file: !26, line: 610, baseType: !90, size: 64, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !143, file: !26, line: 611, baseType: !90, size: 64, offset: 960)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !143, file: !26, line: 612, baseType: !90, size: 64, offset: 1024)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !143, file: !26, line: 613, baseType: !178, size: 64, offset: 1088)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 8)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !143, file: !26, line: 614, baseType: !182, size: 192, offset: 1152)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 24)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !143, file: !26, line: 615, baseType: !29, size: 32, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !143, file: !26, line: 616, baseType: !90, size: 64, offset: 1376)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !143, file: !26, line: 617, baseType: !90, size: 64, offset: 1440)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !143, file: !26, line: 618, baseType: !90, size: 64, offset: 1504)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !143, file: !26, line: 619, baseType: !90, size: 64, offset: 1568)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !143, file: !26, line: 620, baseType: !90, size: 64, offset: 1632)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !143, file: !26, line: 621, baseType: !29, size: 32, offset: 1696)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !140, file: !26, line: 631, baseType: !193, size: 2880)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !26, line: 626, size: 2880, elements: !194)
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !193, file: !26, line: 629, baseType: !196, size: 1920)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1920, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 30)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !193, file: !26, line: 630, baseType: !200, size: 960, offset: 1920)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 960, elements: !197)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !25, file: !26, line: 636, baseType: !202, size: 64, offset: 4032)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !26, line: 93, size: 6336, elements: !204)
!204 = !{!205, !206, !207, !214}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !203, file: !26, line: 94, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !203, file: !26, line: 95, baseType: !29, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !203, file: !26, line: 97, baseType: !208, size: 2048, offset: 128)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 2048, elements: !212)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null}
!212 = !{!213}
!213 = !DISubrange(count: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !203, file: !26, line: 98, baseType: !215, size: 4160, offset: 2176)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !26, line: 74, size: 4160, elements: !216)
!216 = !{!217, !219, !220, !221}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !215, file: !26, line: 75, baseType: !218, size: 2048)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !212)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !215, file: !26, line: 76, baseType: !218, size: 2048, offset: 2048)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !215, file: !26, line: 78, baseType: !132, size: 32, offset: 4096)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !215, file: !26, line: 81, baseType: !132, size: 32, offset: 4128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !25, file: !26, line: 637, baseType: !203, size: 6336, offset: 4096)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !25, file: !26, line: 641, baseType: !224, size: 64, offset: 10432)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !29}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !25, file: !26, line: 646, baseType: !229, size: 192, offset: 10496)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !26, line: 291, size: 192, elements: !230)
!230 = !{!231, !233, !234}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !229, file: !26, line: 293, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !229, file: !26, line: 294, baseType: !29, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !229, file: !26, line: 295, baseType: !31, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !25, file: !26, line: 648, baseType: !236, size: 4224, offset: 10688)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4224, elements: !74)
!237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!238 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !241, line: 66, baseType: !32)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !257, !259, !260, !261}
!243 = !DILocalVariable(name: "ptr", arg: 1, scope: !18, file: !19, line: 177, type: !24)
!244 = !DILocalVariable(name: "buf", arg: 2, scope: !18, file: !19, line: 177, type: !237)
!245 = !DILocalVariable(name: "size", arg: 3, scope: !18, file: !19, line: 177, type: !5)
!246 = !DILocalVariable(name: "count", arg: 4, scope: !18, file: !19, line: 177, type: !5)
!247 = !DILocalVariable(name: "fp", arg: 5, scope: !18, file: !19, line: 177, type: !238)
!248 = !DILocalVariable(name: "resid", scope: !18, file: !19, line: 184, type: !5)
!249 = !DILocalVariable(name: "p", scope: !18, file: !19, line: 185, type: !10)
!250 = !DILocalVariable(name: "r", scope: !18, file: !19, line: 186, type: !29)
!251 = !DILocalVariable(name: "total", scope: !18, file: !19, line: 187, type: !5)
!252 = !DILocalVariable(name: "_check_init_ptr", scope: !253, file: !19, line: 192, type: !24)
!253 = distinct !DILexicalBlock(scope: !18, file: !19, line: 192, column: 3)
!254 = !DILocalVariable(name: "copy_size", scope: !255, file: !19, line: 207, type: !29)
!255 = distinct !DILexicalBlock(scope: !256, file: !19, line: 205, column: 5)
!256 = distinct !DILexicalBlock(scope: !18, file: !19, line: 204, column: 7)
!257 = !DILocalVariable(name: "rc", scope: !258, file: !19, line: 221, type: !29)
!258 = distinct !DILexicalBlock(scope: !255, file: !19, line: 220, column: 2)
!259 = !DILocalVariable(name: "old_base", scope: !258, file: !19, line: 223, type: !4)
!260 = !DILocalVariable(name: "old_p", scope: !258, file: !19, line: 224, type: !4)
!261 = !DILocalVariable(name: "old_size", scope: !258, file: !19, line: 225, type: !29)
!262 = !DILocation(line: 177, column: 1, scope: !18)
!263 = !DILocation(line: 189, column: 22, scope: !264)
!264 = distinct !DILexicalBlock(scope: !18, file: !19, line: 189, column: 7)
!265 = !DILocation(line: 184, column: 19, scope: !18)
!266 = !DILocation(line: 189, column: 30, scope: !264)
!267 = !DILocation(line: 189, column: 7, scope: !18)
!268 = !DILocation(line: 192, column: 3, scope: !253)
!269 = !DILocation(line: 192, column: 3, scope: !270)
!270 = distinct !DILexicalBlock(scope: !253, file: !19, line: 192, column: 3)
!271 = !{!272, !273, i64 80}
!272 = !{!"_reent", !273, i64 0, !276, i64 8, !276, i64 16, !276, i64 24, !273, i64 32, !274, i64 36, !273, i64 64, !276, i64 72, !273, i64 80, !276, i64 88, !276, i64 96, !273, i64 104, !276, i64 112, !276, i64 120, !273, i64 128, !276, i64 136, !274, i64 144, !276, i64 504, !277, i64 512, !276, i64 1304, !279, i64 1312, !274, i64 1336}
!273 = !{!"int", !274, i64 0}
!274 = !{!"omnipotent char", !275, i64 0}
!275 = !{!"Simple C/C++ TBAA"}
!276 = !{!"any pointer", !274, i64 0}
!277 = !{!"_atexit", !276, i64 0, !273, i64 8, !274, i64 16, !278, i64 272}
!278 = !{!"_on_exit_args", !274, i64 0, !274, i64 256, !273, i64 512, !273, i64 516}
!279 = !{!"_glue", !276, i64 0, !273, i64 8, !276, i64 16}
!280 = !DILocation(line: 196, column: 11, scope: !281)
!281 = distinct !DILexicalBlock(scope: !18, file: !19, line: 196, column: 7)
!282 = !{!283, !273, i64 8}
!283 = !{!"__sFILE", !276, i64 0, !273, i64 8, !273, i64 12, !284, i64 16, !284, i64 18, !285, i64 24, !273, i64 40, !276, i64 48, !276, i64 56, !276, i64 64, !276, i64 72, !276, i64 80, !285, i64 88, !276, i64 104, !273, i64 112, !274, i64 116, !274, i64 119, !285, i64 120, !273, i64 136, !286, i64 144, !276, i64 152, !273, i64 160, !287, i64 164, !273, i64 172}
!284 = !{!"short", !274, i64 0}
!285 = !{!"__sbuf", !276, i64 0, !273, i64 8}
!286 = !{!"long", !274, i64 0}
!287 = !{!"", !273, i64 0, !274, i64 4}
!288 = !DILocation(line: 196, column: 14, scope: !281)
!289 = !DILocation(line: 196, column: 7, scope: !18)
!290 = !DILocation(line: 197, column: 12, scope: !281)
!291 = !DILocation(line: 197, column: 5, scope: !281)
!292 = !DILocation(line: 187, column: 10, scope: !18)
!293 = !DILocation(line: 185, column: 18, scope: !18)
!294 = !DILocation(line: 204, column: 11, scope: !256)
!295 = !{!283, !284, i64 16}
!296 = !DILocation(line: 204, column: 18, scope: !256)
!297 = !DILocation(line: 204, column: 7, scope: !18)
!298 = !DILocation(line: 186, column: 16, scope: !18)
!299 = !DILocation(line: 255, column: 22, scope: !300)
!300 = distinct !DILexicalBlock(scope: !256, file: !19, line: 254, column: 5)
!301 = !DILocation(line: 255, column: 20, scope: !300)
!302 = !DILocation(line: 0, scope: !300)
!303 = !{!283, !276, i64 0}
!304 = !DILocation(line: 255, column: 7, scope: !300)
!305 = !DILocation(line: 207, column: 31, scope: !255)
!306 = !DILocation(line: 207, column: 29, scope: !255)
!307 = !DILocation(line: 207, column: 23, scope: !255)
!308 = !DILocation(line: 207, column: 11, scope: !255)
!309 = !DILocation(line: 208, column: 47, scope: !255)
!310 = !DILocation(line: 208, column: 51, scope: !255)
!311 = !DILocation(line: 208, column: 18, scope: !255)
!312 = !DILocation(line: 209, column: 14, scope: !255)
!313 = !DILocation(line: 210, column: 14, scope: !255)
!314 = !DILocation(line: 211, column: 9, scope: !255)
!315 = !DILocation(line: 212, column: 13, scope: !255)
!316 = !DILocation(line: 215, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !255, file: !19, line: 215, column: 11)
!318 = !{!283, !276, i64 88}
!319 = !DILocation(line: 215, column: 31, scope: !317)
!320 = !DILocation(line: 215, column: 22, scope: !317)
!321 = !DILocation(line: 216, column: 2, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !19, line: 216, column: 2)
!323 = distinct !DILexicalBlock(scope: !317, file: !19, line: 216, column: 2)
!324 = !DILocation(line: 216, column: 2, scope: !323)
!325 = !DILocation(line: 219, column: 7, scope: !255)
!326 = !DILocation(line: 0, scope: !258)
!327 = !DILocation(line: 219, column: 20, scope: !255)
!328 = !DILocation(line: 221, column: 8, scope: !258)
!329 = !DILocation(line: 223, column: 29, scope: !258)
!330 = !{!283, !276, i64 24}
!331 = !DILocation(line: 223, column: 10, scope: !258)
!332 = !DILocation(line: 224, column: 23, scope: !258)
!333 = !DILocation(line: 224, column: 11, scope: !258)
!334 = !DILocation(line: 225, column: 27, scope: !258)
!335 = !{!283, !273, i64 32}
!336 = !DILocation(line: 225, column: 8, scope: !258)
!337 = !DILocation(line: 227, column: 18, scope: !258)
!338 = !DILocation(line: 228, column: 20, scope: !258)
!339 = !DILocation(line: 228, column: 18, scope: !258)
!340 = !DILocation(line: 229, column: 11, scope: !258)
!341 = !DILocation(line: 230, column: 9, scope: !258)
!342 = !DILocation(line: 232, column: 18, scope: !258)
!343 = !DILocation(line: 233, column: 18, scope: !258)
!344 = !DILocation(line: 234, column: 11, scope: !258)
!345 = !DILocation(line: 235, column: 17, scope: !258)
!346 = !DILocation(line: 235, column: 13, scope: !258)
!347 = !DILocation(line: 235, column: 10, scope: !258)
!348 = !DILocation(line: 236, column: 6, scope: !258)
!349 = !DILocation(line: 237, column: 11, scope: !258)
!350 = !DILocation(line: 238, column: 8, scope: !351)
!351 = distinct !DILexicalBlock(scope: !258, file: !19, line: 238, column: 8)
!352 = !DILocation(line: 238, column: 8, scope: !258)
!353 = !DILocation(line: 248, column: 22, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !19, line: 239, column: 6)
!355 = !DILocation(line: 248, column: 31, scope: !354)
!356 = !DILocation(line: 257, column: 15, scope: !357)
!357 = distinct !DILexicalBlock(scope: !300, file: !19, line: 256, column: 2)
!358 = !DILocation(line: 258, column: 11, scope: !357)
!359 = !DILocation(line: 261, column: 10, scope: !357)
!360 = !DILocation(line: 262, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !19, line: 262, column: 8)
!362 = !DILocation(line: 262, column: 8, scope: !357)
!363 = distinct !{!363, !304, !364}
!364 = !DILocation(line: 275, column: 2, scope: !300)
!365 = !DILocation(line: 260, column: 6, scope: !357)
!366 = !DILocation(line: 255, column: 31, scope: !300)
!367 = !DILocation(line: 273, column: 22, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !19, line: 263, column: 6)
!369 = !DILocation(line: 273, column: 31, scope: !368)
!370 = !DILocation(line: 273, column: 8, scope: !368)
!371 = !DILocation(line: 0, scope: !357)
!372 = !DILocation(line: 276, column: 18, scope: !300)
!373 = !DILocation(line: 277, column: 14, scope: !300)
!374 = !DILocation(line: 278, column: 14, scope: !300)
!375 = !DILocation(line: 0, scope: !368)
!376 = !DILocation(line: 291, column: 1, scope: !18)
!377 = distinct !DISubprogram(name: "fread_unlocked", scope: !19, file: !19, line: 295, type: !378, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!22, !237, !5, !5, !238}
!380 = !{!381, !382, !383, !384}
!381 = !DILocalVariable(name: "buf", arg: 1, scope: !377, file: !19, line: 295, type: !237)
!382 = !DILocalVariable(name: "size", arg: 2, scope: !377, file: !19, line: 295, type: !5)
!383 = !DILocalVariable(name: "count", arg: 3, scope: !377, file: !19, line: 295, type: !5)
!384 = !DILocalVariable(name: "fp", arg: 4, scope: !377, file: !19, line: 295, type: !238)
!385 = !DILocation(line: 295, column: 1, scope: !377)
!386 = !DILocation(line: 301, column: 21, scope: !377)
!387 = !DILocation(line: 301, column: 11, scope: !377)
!388 = !DILocation(line: 301, column: 4, scope: !377)
