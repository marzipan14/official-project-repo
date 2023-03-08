; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c"
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
define dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #0 !dbg !11 {
  %3 = tail call %struct._reent* @__getreent() #3, !dbg !240
  %4 = icmp eq %struct._reent* %3, null, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %4, label %10, label %5, !dbg !241

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 8, !dbg !241
  %7 = load i32, i32* %6, align 8, !dbg !241, !tbaa !243
  %8 = icmp eq i32 %7, 0, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br i1 %8, label %9, label %10, !dbg !240

; <label>:9:                                      ; preds = %5
  tail call void @__sinit(%struct._reent* nonnull %3) #3, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br label %10, !dbg !241

; <label>:10:                                     ; preds = %5, %2, %9
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !252
  %12 = load i16, i16* %11, align 8, !dbg !252, !tbaa !254
  %13 = sext i16 %12 to i32, !dbg !260
  %14 = and i32 %13, 8, !dbg !261
  %15 = icmp eq i32 %14, 0, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %15, label %16, label %47, !dbg !263

; <label>:16:                                     ; preds = %10
  %17 = and i32 %13, 16, !dbg !264
  %18 = icmp eq i32 %17, 0, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %18, label %19, label %22, !dbg !268

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !269
  store i32 9, i32* %20, align 8, !dbg !271, !tbaa !272
  %21 = or i16 %12, 64, !dbg !273
  store i16 %21, i16* %11, align 8, !dbg !273, !tbaa !254
  br label %88, !dbg !274

; <label>:22:                                     ; preds = %16
  %23 = and i32 %13, 4, !dbg !275
  %24 = icmp eq i32 %23, 0, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %24, label %44, label %25, !dbg !277

; <label>:25:                                     ; preds = %22
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 12, i32 0, !dbg !278
  %27 = load i8*, i8** %26, align 8, !dbg !278, !tbaa !281
  %28 = icmp eq i8* %27, null, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br i1 %28, label %36, label %29, !dbg !282

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 15, i64 0, !dbg !283
  %31 = icmp eq i8* %27, %30, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %31, label %34, label %32, !dbg !286

; <label>:32:                                     ; preds = %29
  tail call void @free(i8* nonnull %27) #3, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %33 = load i16, i16* %11, align 8, !dbg !287, !tbaa !254
  br label %34, !dbg !283

; <label>:34:                                     ; preds = %29, %32
  %35 = phi i16 [ %12, %29 ], [ %33, %32 ], !dbg !287
  store i8* null, i8** %26, align 8, !dbg !286, !tbaa !281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %36, !dbg !286

; <label>:36:                                     ; preds = %25, %34
  %37 = phi i16 [ %12, %25 ], [ %35, %34 ], !dbg !287
  %38 = and i16 %37, -37, !dbg !287
  store i16 %38, i16* %11, align 8, !dbg !287, !tbaa !254
  %39 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1, !dbg !288
  store i32 0, i32* %39, align 8, !dbg !289, !tbaa !290
  %40 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !291
  %41 = bitcast i8** %40 to i64*, !dbg !291
  %42 = load i64, i64* %41, align 8, !dbg !291, !tbaa !292
  %43 = bitcast %struct.__sFILE* %1 to i64*, !dbg !293
  store i64 %42, i64* %43, align 8, !dbg !293, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br label %44, !dbg !295

; <label>:44:                                     ; preds = %22, %36
  %45 = phi i16 [ %12, %22 ], [ %38, %36 ], !dbg !296
  %46 = or i16 %45, 8, !dbg !296
  store i16 %46, i16* %11, align 8, !dbg !296, !tbaa !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br label %47, !dbg !297

; <label>:47:                                     ; preds = %44, %10
  %48 = phi i16 [ %46, %44 ], [ %12, %10 ]
  %49 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !298
  %50 = load i8*, i8** %49, align 8, !dbg !298, !tbaa !292
  %51 = icmp eq i8* %50, null, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %51, label %52, label %60, !dbg !301

; <label>:52:                                     ; preds = %47
  %53 = and i16 %48, 512, !dbg !302
  %54 = icmp eq i16 %53, 0, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %54, label %58, label %55, !dbg !303

; <label>:55:                                     ; preds = %52
  %56 = trunc i16 %48 to i8, !dbg !304
  %57 = icmp slt i8 %56, 0, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %57, label %58, label %60, !dbg !305

; <label>:58:                                     ; preds = %52, %55
  tail call void @__smakebuf_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  %59 = load i16, i16* %11, align 8, !dbg !307, !tbaa !254
  br label %60, !dbg !306

; <label>:60:                                     ; preds = %58, %55, %47
  %61 = phi i16 [ %59, %58 ], [ %48, %55 ], [ %48, %47 ], !dbg !307
  %62 = sext i16 %61 to i32, !dbg !309
  %63 = and i32 %62, 1, !dbg !310
  %64 = icmp eq i32 %63, 0, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %64, label %71, label %65, !dbg !311

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !312
  store i32 0, i32* %66, align 4, !dbg !314, !tbaa !315
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !316
  %68 = load i32, i32* %67, align 8, !dbg !316, !tbaa !317
  %69 = sub nsw i32 0, %68, !dbg !318
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 6, !dbg !319
  store i32 %69, i32* %70, align 8, !dbg !320, !tbaa !321
  br label %80, !dbg !322

; <label>:71:                                     ; preds = %60
  %72 = and i32 %62, 2, !dbg !323
  %73 = icmp eq i32 %72, 0, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %73, label %74, label %77, !dbg !324

; <label>:74:                                     ; preds = %71
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1, !dbg !325
  %76 = load i32, i32* %75, align 8, !dbg !325, !tbaa !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br label %77, !dbg !324

; <label>:77:                                     ; preds = %71, %74
  %78 = phi i32 [ %76, %74 ], [ 0, %71 ], !dbg !324
  %79 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2, !dbg !326
  store i32 %78, i32* %79, align 4, !dbg !327, !tbaa !315
  br label %80

; <label>:80:                                     ; preds = %77, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %81 = load i8*, i8** %49, align 8, !dbg !328, !tbaa !292
  %82 = icmp eq i8* %81, null, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %82, label %83, label %88, !dbg !331

; <label>:83:                                     ; preds = %80
  %84 = trunc i16 %61 to i8, !dbg !332
  %85 = icmp slt i8 %84, 0, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %85, label %86, label %88, !dbg !333

; <label>:86:                                     ; preds = %83
  %87 = or i16 %61, 64, !dbg !334
  store i16 %87, i16* %11, align 8, !dbg !334, !tbaa !254
  br label %88, !dbg !336

; <label>:88:                                     ; preds = %83, %80, %86, %19
  %89 = phi i32 [ -1, %19 ], [ -1, %86 ], [ 0, %80 ], [ 0, %83 ], !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  ret i32 %89, !dbg !339
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__smakebuf_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/wsetup.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__swsetup_r", scope: !1, file: !1, line: 33, type: !12, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
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
!234 = !{!235, !236, !237}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !11, file: !1, line: 33, type: !15)
!236 = !DILocalVariable(name: "fp", arg: 2, scope: !11, file: !1, line: 33, type: !231)
!237 = !DILocalVariable(name: "_check_init_ptr", scope: !238, file: !1, line: 39, type: !15)
!238 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 3)
!239 = !DILocation(line: 33, column: 1, scope: !11)
!240 = !DILocation(line: 39, column: 3, scope: !238)
!241 = !DILocation(line: 39, column: 3, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !1, line: 39, column: 3)
!243 = !{!244, !245, i64 80}
!244 = !{!"_reent", !245, i64 0, !248, i64 8, !248, i64 16, !248, i64 24, !245, i64 32, !246, i64 36, !245, i64 64, !248, i64 72, !245, i64 80, !248, i64 88, !248, i64 96, !245, i64 104, !248, i64 112, !248, i64 120, !245, i64 128, !248, i64 136, !246, i64 144, !248, i64 504, !249, i64 512, !248, i64 1304, !251, i64 1312, !246, i64 1336}
!245 = !{!"int", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"any pointer", !246, i64 0}
!249 = !{!"_atexit", !248, i64 0, !245, i64 8, !246, i64 16, !250, i64 272}
!250 = !{!"_on_exit_args", !246, i64 0, !246, i64 256, !245, i64 512, !245, i64 516}
!251 = !{!"_glue", !248, i64 0, !245, i64 8, !248, i64 16}
!252 = !DILocation(line: 45, column: 12, scope: !253)
!253 = distinct !DILexicalBlock(scope: !11, file: !1, line: 45, column: 7)
!254 = !{!255, !256, i64 16}
!255 = !{!"__sFILE", !248, i64 0, !245, i64 8, !245, i64 12, !256, i64 16, !256, i64 18, !257, i64 24, !245, i64 40, !248, i64 48, !248, i64 56, !248, i64 64, !248, i64 72, !248, i64 80, !257, i64 88, !248, i64 104, !245, i64 112, !246, i64 116, !246, i64 119, !257, i64 120, !245, i64 136, !258, i64 144, !248, i64 152, !245, i64 160, !259, i64 164, !245, i64 172}
!256 = !{!"short", !246, i64 0}
!257 = !{!"__sbuf", !248, i64 0, !245, i64 8}
!258 = !{!"long", !246, i64 0}
!259 = !{!"", !245, i64 0, !246, i64 4}
!260 = !DILocation(line: 45, column: 8, scope: !253)
!261 = !DILocation(line: 45, column: 19, scope: !253)
!262 = !DILocation(line: 45, column: 28, scope: !253)
!263 = !DILocation(line: 45, column: 7, scope: !11)
!264 = !DILocation(line: 47, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 47, column: 11)
!266 = distinct !DILexicalBlock(scope: !253, file: !1, line: 46, column: 5)
!267 = !DILocation(line: 47, column: 32, scope: !265)
!268 = !DILocation(line: 47, column: 11, scope: !266)
!269 = !DILocation(line: 49, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !1, line: 48, column: 9)
!271 = !DILocation(line: 49, column: 16, scope: !270)
!272 = !{!244, !245, i64 0}
!273 = !DILocation(line: 50, column: 15, scope: !270)
!274 = !DILocation(line: 51, column: 4, scope: !270)
!275 = !DILocation(line: 53, column: 22, scope: !276)
!276 = distinct !DILexicalBlock(scope: !266, file: !1, line: 53, column: 11)
!277 = !DILocation(line: 53, column: 11, scope: !266)
!278 = !DILocation(line: 56, column: 8, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 56, column: 8)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 54, column: 2)
!281 = !{!255, !248, i64 88}
!282 = !DILocation(line: 56, column: 8, scope: !280)
!283 = !DILocation(line: 57, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 57, column: 6)
!285 = distinct !DILexicalBlock(scope: !279, file: !1, line: 57, column: 6)
!286 = !DILocation(line: 57, column: 6, scope: !285)
!287 = !DILocation(line: 58, column: 15, scope: !280)
!288 = !DILocation(line: 59, column: 8, scope: !280)
!289 = !DILocation(line: 59, column: 11, scope: !280)
!290 = !{!255, !245, i64 8}
!291 = !DILocation(line: 60, column: 21, scope: !280)
!292 = !{!255, !248, i64 24}
!293 = !DILocation(line: 60, column: 11, scope: !280)
!294 = !{!255, !248, i64 0}
!295 = !DILocation(line: 61, column: 2, scope: !280)
!296 = !DILocation(line: 62, column: 18, scope: !266)
!297 = !DILocation(line: 63, column: 5, scope: !266)
!298 = !DILocation(line: 70, column: 15, scope: !299)
!299 = distinct !DILexicalBlock(scope: !11, file: !1, line: 70, column: 7)
!300 = !DILocation(line: 70, column: 21, scope: !299)
!301 = !DILocation(line: 71, column: 9, scope: !299)
!302 = !DILocation(line: 71, column: 26, scope: !299)
!303 = !DILocation(line: 71, column: 36, scope: !299)
!304 = !DILocation(line: 71, column: 51, scope: !299)
!305 = !DILocation(line: 70, column: 7, scope: !11)
!306 = !DILocation(line: 72, column: 5, scope: !299)
!307 = !DILocation(line: 74, column: 11, scope: !308)
!308 = distinct !DILexicalBlock(scope: !11, file: !1, line: 74, column: 7)
!309 = !DILocation(line: 74, column: 7, scope: !308)
!310 = !DILocation(line: 74, column: 18, scope: !308)
!311 = !DILocation(line: 74, column: 7, scope: !11)
!312 = !DILocation(line: 81, column: 11, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !1, line: 75, column: 5)
!314 = !DILocation(line: 81, column: 14, scope: !313)
!315 = !{!255, !245, i64 12}
!316 = !DILocation(line: 82, column: 31, scope: !313)
!317 = !{!255, !245, i64 32}
!318 = !DILocation(line: 82, column: 22, scope: !313)
!319 = !DILocation(line: 82, column: 11, scope: !313)
!320 = !DILocation(line: 82, column: 20, scope: !313)
!321 = !{!255, !245, i64 40}
!322 = !DILocation(line: 83, column: 5, scope: !313)
!323 = !DILocation(line: 85, column: 25, scope: !308)
!324 = !DILocation(line: 85, column: 14, scope: !308)
!325 = !DILocation(line: 85, column: 48, scope: !308)
!326 = !DILocation(line: 85, column: 9, scope: !308)
!327 = !DILocation(line: 85, column: 12, scope: !308)
!328 = !DILocation(line: 87, column: 16, scope: !329)
!329 = distinct !DILexicalBlock(scope: !11, file: !1, line: 87, column: 7)
!330 = !DILocation(line: 87, column: 8, scope: !329)
!331 = !DILocation(line: 87, column: 22, scope: !329)
!332 = !DILocation(line: 87, column: 37, scope: !329)
!333 = !DILocation(line: 87, column: 7, scope: !11)
!334 = !DILocation(line: 90, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !329, file: !1, line: 88, column: 5)
!336 = !DILocation(line: 91, column: 7, scope: !335)
!337 = !DILocation(line: 0, scope: !335)
!338 = !DILocation(line: 0, scope: !270)
!339 = !DILocation(line: 94, column: 1, scope: !11)
