; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/refill.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/refill.c"
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

@_global_impure_ptr = external dso_local local_unnamed_addr constant %struct._reent*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !11 {
  %3 = icmp eq %struct._reent* %0, null, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %3, label %9, label %4, !dbg !244

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !244
  %6 = load i32, i32* %5, align 8, !dbg !244, !tbaa !246
  %7 = icmp eq i32 %6, 0, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br i1 %7, label %8, label %9, !dbg !243

; <label>:8:                                      ; preds = %4
  tail call void @__sinit(%struct._reent* nonnull %0) #3, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br label %9, !dbg !244

; <label>:9:                                      ; preds = %4, %2, %8
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !255
  store i32 0, i32* %10, align 8, !dbg !256, !tbaa !257
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !263
  %12 = load i16, i16* %11, align 8, !dbg !263, !tbaa !265
  %13 = sext i16 %12 to i32, !dbg !266
  %14 = and i32 %13, 32, !dbg !267
  %15 = icmp eq i32 %14, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %15, label %16, label %93, !dbg !268

; <label>:16:                                     ; preds = %9
  %17 = and i32 %13, 4, !dbg !269
  %18 = icmp eq i32 %17, 0, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %18, label %19, label %39, !dbg !272

; <label>:19:                                     ; preds = %16
  %20 = and i32 %13, 16, !dbg !273
  %21 = icmp eq i32 %20, 0, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %21, label %22, label %25, !dbg !277

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !278
  store i32 9, i32* %23, align 8, !dbg !280, !tbaa !281
  %24 = or i16 %12, 64, !dbg !282
  store i16 %24, i16* %11, align 8, !dbg !282, !tbaa !265
  br label %93, !dbg !283

; <label>:25:                                     ; preds = %19
  %26 = and i32 %13, 8, !dbg !284
  %27 = icmp eq i32 %26, 0, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %27, label %36, label %28, !dbg !286

; <label>:28:                                     ; preds = %25
  %29 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !287
  %30 = icmp eq i32 %29, 0, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %30, label %31, label %93, !dbg !290

; <label>:31:                                     ; preds = %28
  %32 = load i16, i16* %11, align 8, !dbg !291, !tbaa !265
  %33 = and i16 %32, -9, !dbg !291
  store i16 %33, i16* %11, align 8, !dbg !291, !tbaa !265
  %34 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !292
  store i32 0, i32* %34, align 4, !dbg !293, !tbaa !294
  %35 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 6, !dbg !295
  store i32 0, i32* %35, align 8, !dbg !296, !tbaa !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br label %36, !dbg !298

; <label>:36:                                     ; preds = %25, %31
  %37 = phi i16 [ %12, %25 ], [ %33, %31 ], !dbg !299
  %38 = or i16 %37, 4, !dbg !299
  store i16 %38, i16* %11, align 8, !dbg !299, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br label %56, !dbg !300

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !301
  %41 = load i8*, i8** %40, align 8, !dbg !301, !tbaa !304
  %42 = icmp eq i8* %41, null, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %42, label %56, label %43, !dbg !305

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !306
  %45 = icmp eq i8* %41, %44, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  br i1 %45, label %47, label %46, !dbg !310

; <label>:46:                                     ; preds = %43
  tail call void @free(i8* nonnull %41) #3, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br label %47, !dbg !306

; <label>:47:                                     ; preds = %43, %46
  store i8* null, i8** %40, align 8, !dbg !310, !tbaa !304
  %48 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 14, !dbg !311
  %49 = load i32, i32* %48, align 8, !dbg !311, !tbaa !313
  store i32 %49, i32* %10, align 8, !dbg !314, !tbaa !257
  %50 = icmp eq i32 %49, 0, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %50, label %56, label %51, !dbg !316

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 13, !dbg !317
  %53 = bitcast i8** %52 to i64*, !dbg !317
  %54 = load i64, i64* %53, align 8, !dbg !317, !tbaa !319
  %55 = bitcast %struct.__sFILE* %1 to i64*, !dbg !320
  store i64 %54, i64* %55, align 8, !dbg !320, !tbaa !321
  br label %93, !dbg !322

; <label>:56:                                     ; preds = %47, %39, %36
  %57 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !323
  %58 = load i8*, i8** %57, align 8, !dbg !323, !tbaa !325
  %59 = icmp eq i8* %58, null, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %59, label %60, label %61, !dbg !327

; <label>:60:                                     ; preds = %56
  tail call void @__smakebuf_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br label %61, !dbg !328

; <label>:61:                                     ; preds = %60, %56
  %62 = load i16, i16* %11, align 8, !dbg !329, !tbaa !265
  %63 = sext i16 %62 to i32, !dbg !330
  %64 = and i32 %63, 3, !dbg !331
  %65 = icmp eq i32 %64, 0, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %65, label %74, label %66, !dbg !332

; <label>:66:                                     ; preds = %61
  store i16 1, i16* %11, align 8, !dbg !334, !tbaa !265
  %67 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !335, !tbaa !336
  %68 = tail call i32 @_fwalk(%struct._reent* %67, i32 (%struct.__sFILE*)* nonnull @lflush) #3, !dbg !337
  store i16 %62, i16* %11, align 8, !dbg !338, !tbaa !265
  %69 = and i32 %63, 9, !dbg !339
  %70 = icmp eq i32 %69, 9, !dbg !341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %70, label %71, label %73, !dbg !342

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @__sflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !343
  br label %73, !dbg !343

; <label>:73:                                     ; preds = %71, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br label %74, !dbg !344

; <label>:74:                                     ; preds = %61, %73
  %75 = load i8*, i8** %57, align 8, !dbg !345, !tbaa !325
  %76 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0, !dbg !346
  store i8* %75, i8** %76, align 8, !dbg !347, !tbaa !321
  %77 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 8, !dbg !348
  %78 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %77, align 8, !dbg !348, !tbaa !349
  %79 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7, !dbg !350
  %80 = load i8*, i8** %79, align 8, !dbg !350, !tbaa !351
  %81 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !352
  %82 = load i32, i32* %81, align 8, !dbg !352, !tbaa !353
  %83 = tail call i64 %78(%struct._reent* %0, i8* %80, i8* %75, i32 %82) #3, !dbg !354
  %84 = trunc i64 %83 to i32, !dbg !354
  store i32 %84, i32* %10, align 8, !dbg !355, !tbaa !257
  %85 = icmp slt i32 %84, 1, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %85, label %86, label %93, !dbg !358

; <label>:86:                                     ; preds = %74
  %87 = icmp eq i32 %84, 0, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %87, label %89, label %88, !dbg !362

; <label>:88:                                     ; preds = %86
  store i32 0, i32* %10, align 8, !dbg !363, !tbaa !257
  br label %89

; <label>:89:                                     ; preds = %86, %88
  %90 = phi i16 [ 64, %88 ], [ 32, %86 ]
  %91 = load i16, i16* %11, align 8, !dbg !365, !tbaa !265
  %92 = or i16 %91, %90, !dbg !365
  store i16 %92, i16* %11, align 8, !dbg !365, !tbaa !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %93, !dbg !366

; <label>:93:                                     ; preds = %74, %28, %9, %89, %51, %22
  %94 = phi i32 [ -1, %22 ], [ -1, %89 ], [ 0, %51 ], [ -1, %9 ], [ -1, %28 ], [ 0, %74 ], !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  ret i32 %94, !dbg !369
}

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__smakebuf_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_fwalk(%struct._reent*, i32 (%struct.__sFILE*)*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal i32 @lflush(%struct.__sFILE*) #0 !dbg !370 {
  %2 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %0, i64 0, i32 3, !dbg !376
  %3 = load i16, i16* %2, align 8, !dbg !376, !tbaa !265
  %4 = and i16 %3, 9, !dbg !378
  %5 = icmp eq i16 %4, 9, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  br i1 %5, label %6, label %8, !dbg !380

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @fflush(%struct.__sFILE* nonnull %0) #3, !dbg !381
  br label %8, !dbg !382

; <label>:8:                                      ; preds = %1, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %1 ], !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  ret i32 %9, !dbg !385
}

; Function Attrs: noredzone
declare dso_local i32 @__sflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @fflush(%struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/refill.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__srefill_r", scope: !1, file: !1, line: 40, type: !12, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !231}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !17, line: 569, size: 14912, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !20, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !16, file: !17, line: 571, baseType: !14, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !17, line: 287, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !17, line: 181, size: 1408, elements: !24)
!24 = !{!25, !28, !29, !30, !32, !33, !38, !39, !40, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !23, file: !17, line: 182, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !23, file: !17, line: 183, baseType: !14, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !23, file: !17, line: 184, baseType: !14, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !23, file: !17, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !23, file: !17, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !23, file: !17, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !17, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !17, line: 118, baseType: !26, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !17, line: 119, baseType: !14, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !23, file: !17, line: 188, baseType: !14, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !23, file: !17, line: 195, baseType: !4, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !23, file: !17, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !15, !4, !5, !14}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !23, file: !17, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!44, !15, !4, !51, !14}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !23, file: !17, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !15, !4, !57, !14}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !23, file: !17, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!14, !15, !4}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !23, file: !17, line: 206, baseType: !34, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !23, file: !17, line: 207, baseType: !26, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !23, file: !17, line: 208, baseType: !14, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !23, file: !17, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !23, file: !17, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !23, file: !17, line: 215, baseType: !34, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !23, file: !17, line: 218, baseType: !14, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !23, file: !17, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !23, file: !17, line: 222, baseType: !15, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !23, file: !17, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !14)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !23, file: !17, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !45, line: 165, baseType: !14, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !45, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !45, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !45, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !45, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !23, file: !17, line: 229, baseType: !14, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !16, file: !17, line: 576, baseType: !21, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !16, file: !17, line: 578, baseType: !14, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !16, file: !17, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !16, file: !17, line: 582, baseType: !14, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !16, file: !17, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !16, file: !17, line: 585, baseType: !14, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !16, file: !17, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !15}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !16, file: !17, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !17, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !17, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !17, line: 50, baseType: !14, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !17, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !17, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !16, file: !17, line: 591, baseType: !14, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !16, file: !17, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !16, file: !17, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !16, file: !17, line: 596, baseType: !14, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !16, file: !17, line: 597, baseType: !5, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !16, file: !17, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !17, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !17, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !17, line: 604, baseType: !5, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !17, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !17, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !17, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !17, line: 57, baseType: !14, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !17, line: 58, baseType: !14, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !17, line: 59, baseType: !14, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !17, line: 60, baseType: !14, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !17, line: 61, baseType: !14, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !17, line: 62, baseType: !14, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !17, line: 63, baseType: !14, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !17, line: 64, baseType: !14, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !17, line: 65, baseType: !14, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !17, line: 607, baseType: !14, size: 32, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !137, file: !17, line: 608, baseType: !159, size: 64, offset: 704)
!159 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !137, file: !17, line: 609, baseType: !161, size: 112, offset: 768)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !17, line: 319, size: 112, elements: !162)
!162 = !{!163, !166, !167}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !161, file: !17, line: 320, baseType: !164, size: 48)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 48, elements: !67)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !161, file: !17, line: 321, baseType: !164, size: 48, offset: 48)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !161, file: !17, line: 322, baseType: !165, size: 16, offset: 96)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !137, file: !17, line: 610, baseType: !83, size: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !137, file: !17, line: 611, baseType: !83, size: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !137, file: !17, line: 612, baseType: !83, size: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !137, file: !17, line: 613, baseType: !172, size: 64, offset: 1088)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !17, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !17, line: 615, baseType: !14, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !17, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !17, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !17, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !17, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !17, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !17, line: 621, baseType: !14, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !17, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !17, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !17, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !16, file: !17, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !17, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !17, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !17, line: 95, baseType: !14, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !197, file: !17, line: 97, baseType: !202, size: 2048, offset: 128)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2048, elements: !206)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !{!207}
!207 = !DISubrange(count: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !197, file: !17, line: 98, baseType: !209, size: 4160, offset: 2176)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !17, line: 74, size: 4160, elements: !210)
!210 = !{!211, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !209, file: !17, line: 75, baseType: !212, size: 2048)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !17, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !17, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !17, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !16, file: !17, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !16, file: !17, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !14}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !16, file: !17, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !17, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !17, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !17, line: 294, baseType: !14, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !17, line: 295, baseType: !21, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !16, file: !17, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 66, baseType: !22)
!233 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!234 = !{!235, !236, !237, !239}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !1, line: 40, type: !15)
!236 = !DILocalVariable(name: "fp", arg: 2, scope: !11, file: !1, line: 40, type: !231)
!237 = !DILocalVariable(name: "_check_init_ptr", scope: !238, file: !1, line: 46, type: !15)
!238 = distinct !DILexicalBlock(scope: !11, file: !1, line: 46, column: 3)
!239 = !DILocalVariable(name: "orig_flags", scope: !240, file: !1, line: 108, type: !31)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 106, column: 5)
!241 = distinct !DILexicalBlock(scope: !11, file: !1, line: 105, column: 7)
!242 = !DILocation(line: 40, column: 1, scope: !11)
!243 = !DILocation(line: 46, column: 3, scope: !238)
!244 = !DILocation(line: 46, column: 3, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !1, line: 46, column: 3)
!246 = !{!247, !248, i64 80}
!247 = !{!"_reent", !248, i64 0, !251, i64 8, !251, i64 16, !251, i64 24, !248, i64 32, !249, i64 36, !248, i64 64, !251, i64 72, !248, i64 80, !251, i64 88, !251, i64 96, !248, i64 104, !251, i64 112, !251, i64 120, !248, i64 128, !251, i64 136, !249, i64 144, !251, i64 504, !252, i64 512, !251, i64 1304, !254, i64 1312, !249, i64 1336}
!248 = !{!"int", !249, i64 0}
!249 = !{!"omnipotent char", !250, i64 0}
!250 = !{!"Simple C/C++ TBAA"}
!251 = !{!"any pointer", !249, i64 0}
!252 = !{!"_atexit", !251, i64 0, !248, i64 8, !249, i64 16, !253, i64 272}
!253 = !{!"_on_exit_args", !249, i64 0, !249, i64 256, !248, i64 512, !248, i64 516}
!254 = !{!"_glue", !251, i64 0, !248, i64 8, !251, i64 16}
!255 = !DILocation(line: 50, column: 7, scope: !11)
!256 = !DILocation(line: 50, column: 10, scope: !11)
!257 = !{!258, !248, i64 8}
!258 = !{!"__sFILE", !251, i64 0, !248, i64 8, !248, i64 12, !259, i64 16, !259, i64 18, !260, i64 24, !248, i64 40, !251, i64 48, !251, i64 56, !251, i64 64, !251, i64 72, !251, i64 80, !260, i64 88, !251, i64 104, !248, i64 112, !249, i64 116, !249, i64 119, !260, i64 120, !248, i64 136, !261, i64 144, !251, i64 152, !248, i64 160, !262, i64 164, !248, i64 172}
!259 = !{!"short", !249, i64 0}
!260 = !{!"__sbuf", !251, i64 0, !248, i64 8}
!261 = !{!"long", !249, i64 0}
!262 = !{!"", !248, i64 0, !249, i64 4}
!263 = !DILocation(line: 54, column: 11, scope: !264)
!264 = distinct !DILexicalBlock(scope: !11, file: !1, line: 54, column: 7)
!265 = !{!258, !259, i64 16}
!266 = !DILocation(line: 54, column: 7, scope: !264)
!267 = !DILocation(line: 54, column: 18, scope: !264)
!268 = !DILocation(line: 54, column: 7, scope: !11)
!269 = !DILocation(line: 59, column: 19, scope: !270)
!270 = distinct !DILexicalBlock(scope: !11, file: !1, line: 59, column: 7)
!271 = !DILocation(line: 59, column: 28, scope: !270)
!272 = !DILocation(line: 59, column: 7, scope: !11)
!273 = !DILocation(line: 61, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 61, column: 11)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 60, column: 5)
!276 = !DILocation(line: 61, column: 32, scope: !274)
!277 = !DILocation(line: 61, column: 11, scope: !275)
!278 = !DILocation(line: 63, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 62, column: 2)
!280 = !DILocation(line: 63, column: 16, scope: !279)
!281 = !{!247, !248, i64 0}
!282 = !DILocation(line: 64, column: 15, scope: !279)
!283 = !DILocation(line: 65, column: 4, scope: !279)
!284 = !DILocation(line: 68, column: 22, scope: !285)
!285 = distinct !DILexicalBlock(scope: !275, file: !1, line: 68, column: 11)
!286 = !DILocation(line: 68, column: 11, scope: !275)
!287 = !DILocation(line: 70, column: 8, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 70, column: 8)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 69, column: 2)
!290 = !DILocation(line: 70, column: 8, scope: !289)
!291 = !DILocation(line: 72, column: 15, scope: !289)
!292 = !DILocation(line: 73, column: 8, scope: !289)
!293 = !DILocation(line: 73, column: 11, scope: !289)
!294 = !{!258, !248, i64 12}
!295 = !DILocation(line: 74, column: 8, scope: !289)
!296 = !DILocation(line: 74, column: 17, scope: !289)
!297 = !{!258, !248, i64 40}
!298 = !DILocation(line: 75, column: 2, scope: !289)
!299 = !DILocation(line: 76, column: 18, scope: !275)
!300 = !DILocation(line: 77, column: 5, scope: !275)
!301 = !DILocation(line: 86, column: 11, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 86, column: 11)
!303 = distinct !DILexicalBlock(scope: !270, file: !1, line: 79, column: 5)
!304 = !{!258, !251, i64 88}
!305 = !DILocation(line: 86, column: 11, scope: !303)
!306 = !DILocation(line: 88, column: 4, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !1, line: 88, column: 4)
!308 = distinct !DILexicalBlock(scope: !309, file: !1, line: 88, column: 4)
!309 = distinct !DILexicalBlock(scope: !302, file: !1, line: 87, column: 2)
!310 = !DILocation(line: 88, column: 4, scope: !308)
!311 = !DILocation(line: 89, column: 22, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !1, line: 89, column: 8)
!313 = !{!258, !248, i64 112}
!314 = !DILocation(line: 89, column: 16, scope: !312)
!315 = !DILocation(line: 89, column: 27, scope: !312)
!316 = !DILocation(line: 89, column: 8, scope: !309)
!317 = !DILocation(line: 91, column: 21, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !1, line: 90, column: 6)
!319 = !{!258, !251, i64 104}
!320 = !DILocation(line: 91, column: 15, scope: !318)
!321 = !{!258, !251, i64 0}
!322 = !DILocation(line: 92, column: 8, scope: !318)
!323 = !DILocation(line: 97, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !11, file: !1, line: 97, column: 7)
!325 = !{!258, !251, i64 24}
!326 = !DILocation(line: 97, column: 21, scope: !324)
!327 = !DILocation(line: 97, column: 7, scope: !11)
!328 = !DILocation(line: 98, column: 5, scope: !324)
!329 = !DILocation(line: 105, column: 11, scope: !241)
!330 = !DILocation(line: 105, column: 7, scope: !241)
!331 = !DILocation(line: 105, column: 18, scope: !241)
!332 = !DILocation(line: 105, column: 7, scope: !11)
!333 = !DILocation(line: 108, column: 13, scope: !240)
!334 = !DILocation(line: 109, column: 18, scope: !240)
!335 = !DILocation(line: 110, column: 26, scope: !240)
!336 = !{!251, !251, i64 0}
!337 = !DILocation(line: 110, column: 18, scope: !240)
!338 = !DILocation(line: 111, column: 18, scope: !240)
!339 = !DILocation(line: 114, column: 23, scope: !340)
!340 = distinct !DILexicalBlock(scope: !240, file: !1, line: 114, column: 11)
!341 = !DILocation(line: 114, column: 41, scope: !340)
!342 = !DILocation(line: 114, column: 11, scope: !240)
!343 = !DILocation(line: 115, column: 2, scope: !340)
!344 = !DILocation(line: 116, column: 5, scope: !240)
!345 = !DILocation(line: 118, column: 20, scope: !11)
!346 = !DILocation(line: 118, column: 7, scope: !11)
!347 = !DILocation(line: 118, column: 10, scope: !11)
!348 = !DILocation(line: 119, column: 16, scope: !11)
!349 = !{!258, !251, i64 56}
!350 = !DILocation(line: 119, column: 32, scope: !11)
!351 = !{!258, !251, i64 48}
!352 = !DILocation(line: 119, column: 66, scope: !11)
!353 = !{!258, !248, i64 32}
!354 = !DILocation(line: 119, column: 12, scope: !11)
!355 = !DILocation(line: 119, column: 10, scope: !11)
!356 = !DILocation(line: 121, column: 14, scope: !357)
!357 = distinct !DILexicalBlock(scope: !11, file: !1, line: 121, column: 7)
!358 = !DILocation(line: 121, column: 7, scope: !11)
!359 = !DILocation(line: 128, column: 18, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 128, column: 11)
!361 = distinct !DILexicalBlock(scope: !357, file: !1, line: 127, column: 5)
!362 = !DILocation(line: 128, column: 11, scope: !361)
!363 = !DILocation(line: 132, column: 11, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !1, line: 131, column: 2)
!365 = !DILocation(line: 0, scope: !360)
!366 = !DILocation(line: 135, column: 7, scope: !361)
!367 = !DILocation(line: 0, scope: !318)
!368 = !DILocation(line: 0, scope: !264)
!369 = !DILocation(line: 138, column: 1, scope: !11)
!370 = distinct !DISubprogram(name: "lflush", scope: !1, file: !1, line: 26, type: !371, isLocal: true, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!14, !231}
!373 = !{!374}
!374 = !DILocalVariable(name: "fp", arg: 1, scope: !370, file: !1, line: 26, type: !231)
!375 = !DILocation(line: 26, column: 1, scope: !370)
!376 = !DILocation(line: 29, column: 12, scope: !377)
!377 = distinct !DILexicalBlock(scope: !370, file: !1, line: 29, column: 7)
!378 = !DILocation(line: 29, column: 19, scope: !377)
!379 = !DILocation(line: 29, column: 39, scope: !377)
!380 = !DILocation(line: 29, column: 7, scope: !370)
!381 = !DILocation(line: 30, column: 12, scope: !377)
!382 = !DILocation(line: 30, column: 5, scope: !377)
!383 = !DILocation(line: 0, scope: !370)
!384 = !DILocation(line: 0, scope: !377)
!385 = !DILocation(line: 32, column: 1, scope: !370)
