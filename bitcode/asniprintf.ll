; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asniprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asniprintf.c"
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_asniprintf_r(%struct._reent*, i8*, i64* nocapture, i8*, ...) local_unnamed_addr #0 !dbg !12 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !257
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #3, !dbg !257
  %8 = bitcast %struct.__sFILE* %6 to i8*, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %8) #3, !dbg !259
  %9 = load i64, i64* %2, align 8, !dbg !260, !tbaa !261
  %10 = icmp ne i8* %1, null, !dbg !266
  %11 = icmp ne i64 %9, 0, !dbg !268
  %12 = and i1 %10, %11, !dbg !269
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !270
  %14 = select i1 %12, i16 1544, i16 648, !dbg !272
  %15 = select i1 %12, i8* %1, i8* null, !dbg !272
  %16 = select i1 %12, i64 %9, i64 0, !dbg !272
  store i16 %14, i16* %13, align 8, !dbg !274, !tbaa !275
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !282
  store i8* %15, i8** %17, align 8, !dbg !283, !tbaa !284
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !285
  store i8* %15, i8** %18, align 8, !dbg !286, !tbaa !287
  %19 = icmp ugt i64 %16, 2147483647, !dbg !288
  br i1 %19, label %20, label %22, !dbg !290

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !291
  store i32 139, i32* %21, align 8, !dbg !293, !tbaa !294
  br label %34, !dbg !299

; <label>:22:                                     ; preds = %4
  %23 = trunc i64 %16 to i32, !dbg !300
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !301
  store i32 %23, i32* %24, align 4, !dbg !302, !tbaa !303
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !304
  store i32 %23, i32* %25, align 8, !dbg !305, !tbaa !306
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !307
  store i16 -1, i16* %26, align 2, !dbg !308, !tbaa !309
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !310
  call void @llvm.va_start(i8* nonnull %7), !dbg !310
  %28 = call i32 @_svfiprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* nonnull %27) #5, !dbg !312
  call void @llvm.va_end(i8* nonnull %7), !dbg !314
  %29 = icmp slt i32 %28, 0, !dbg !315
  br i1 %29, label %34, label %30, !dbg !317

; <label>:30:                                     ; preds = %22
  %31 = sext i32 %28 to i64, !dbg !318
  store i64 %31, i64* %2, align 8, !dbg !319, !tbaa !261
  %32 = load i8*, i8** %17, align 8, !dbg !320, !tbaa !284
  store i8 0, i8* %32, align 1, !dbg !321, !tbaa !322
  %33 = load i8*, i8** %18, align 8, !dbg !323, !tbaa !287
  br label %34, !dbg !324

; <label>:34:                                     ; preds = %22, %30, %20
  %35 = phi i8* [ null, %20 ], [ %33, %30 ], [ null, %22 ], !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %8) #3, !dbg !326
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  ret i8* %35, !dbg !326
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @_svfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @asniprintf(i8*, i64* nocapture, i8*, ...) local_unnamed_addr #0 !dbg !327 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !340
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #3, !dbg !340
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !342
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #3, !dbg !342
  %8 = load i64, i64* %1, align 8, !dbg !343, !tbaa !261
  %9 = tail call %struct._reent* @__getreent() #5, !dbg !345
  %10 = icmp ne i8* %0, null, !dbg !347
  %11 = icmp ne i64 %8, 0, !dbg !349
  %12 = and i1 %10, %11, !dbg !350
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !351
  %14 = select i1 %12, i16 1544, i16 648, !dbg !353
  %15 = select i1 %12, i8* %0, i8* null, !dbg !353
  %16 = select i1 %12, i64 %8, i64 0, !dbg !353
  store i16 %14, i16* %13, align 8, !dbg !355, !tbaa !275
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !356
  store i8* %15, i8** %17, align 8, !dbg !357, !tbaa !284
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !358
  store i8* %15, i8** %18, align 8, !dbg !359, !tbaa !287
  %19 = icmp ugt i64 %16, 2147483647, !dbg !360
  br i1 %19, label %20, label %22, !dbg !362

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 0, !dbg !363
  store i32 139, i32* %21, align 8, !dbg !365, !tbaa !294
  br label %34, !dbg !366

; <label>:22:                                     ; preds = %3
  %23 = trunc i64 %16 to i32, !dbg !367
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !368
  store i32 %23, i32* %24, align 4, !dbg !369, !tbaa !303
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !370
  store i32 %23, i32* %25, align 8, !dbg !371, !tbaa !306
  %26 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !372
  store i16 -1, i16* %26, align 2, !dbg !373, !tbaa !309
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !374
  call void @llvm.va_start(i8* nonnull %6), !dbg !374
  %28 = call i32 @_svfiprintf_r(%struct._reent* %9, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %27) #5, !dbg !376
  call void @llvm.va_end(i8* nonnull %6), !dbg !378
  %29 = icmp slt i32 %28, 0, !dbg !379
  br i1 %29, label %34, label %30, !dbg !381

; <label>:30:                                     ; preds = %22
  %31 = sext i32 %28 to i64, !dbg !382
  store i64 %31, i64* %1, align 8, !dbg !383, !tbaa !261
  %32 = load i8*, i8** %17, align 8, !dbg !384, !tbaa !284
  store i8 0, i8* %32, align 1, !dbg !385, !tbaa !322
  %33 = load i8*, i8** %18, align 8, !dbg !386, !tbaa !287
  br label %34, !dbg !387

; <label>:34:                                     ; preds = %22, %30, %20
  %35 = phi i8* [ null, %20 ], [ %33, %30 ], [ null, %22 ], !dbg !388
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #3, !dbg !389
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #3, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  ret i8* %35, !dbg !389
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asniprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "_asniprintf_r", scope: !1, file: !1, line: 17, type: !13, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !6, !231, !51, null}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !17, line: 569, size: 14912, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !21, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !16, file: !17, line: 571, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !17, line: 287, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !17, line: 181, size: 1408, elements: !25)
!25 = !{!26, !27, !28, !29, !31, !32, !37, !38, !40, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !24, file: !17, line: 182, baseType: !4, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !24, file: !17, line: 183, baseType: !20, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !24, file: !17, line: 184, baseType: !20, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !24, file: !17, line: 185, baseType: !30, size: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !24, file: !17, line: 186, baseType: !30, size: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !24, file: !17, line: 187, baseType: !33, size: 128, offset: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !17, line: 117, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !17, line: 118, baseType: !4, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !17, line: 119, baseType: !20, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !24, file: !17, line: 188, baseType: !20, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !24, file: !17, line: 195, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !24, file: !17, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !15, !39, !6, !20}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !24, file: !17, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!44, !15, !39, !51, !20}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !24, file: !17, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !15, !39, !57, !20}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !24, file: !17, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!20, !15, !39}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !24, file: !17, line: 206, baseType: !33, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !24, file: !17, line: 207, baseType: !4, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !24, file: !17, line: 208, baseType: !20, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !24, file: !17, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !24, file: !17, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !24, file: !17, line: 215, baseType: !33, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !24, file: !17, line: 218, baseType: !20, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !24, file: !17, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !24, file: !17, line: 222, baseType: !15, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !24, file: !17, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !20)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !24, file: !17, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !45, line: 165, baseType: !20, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !45, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !45, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !45, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !45, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !24, file: !17, line: 229, baseType: !20, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !16, file: !17, line: 576, baseType: !22, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !16, file: !17, line: 578, baseType: !20, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !16, file: !17, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !16, file: !17, line: 582, baseType: !20, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !16, file: !17, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !16, file: !17, line: 585, baseType: !20, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !16, file: !17, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !15}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !16, file: !17, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !17, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !17, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !17, line: 50, baseType: !20, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !17, line: 50, baseType: !20, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !17, line: 50, baseType: !20, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !17, line: 50, baseType: !20, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !17, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !17, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !16, file: !17, line: 591, baseType: !20, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !16, file: !17, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !16, file: !17, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !16, file: !17, line: 596, baseType: !20, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !16, file: !17, line: 597, baseType: !6, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !16, file: !17, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !16, file: !17, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !17, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !17, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !17, line: 604, baseType: !6, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !17, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 208, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 26)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !137, file: !17, line: 606, baseType: !146, size: 288, offset: 352)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !17, line: 55, size: 288, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !17, line: 57, baseType: !20, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !17, line: 58, baseType: !20, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !17, line: 59, baseType: !20, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !17, line: 60, baseType: !20, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !17, line: 61, baseType: !20, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !17, line: 62, baseType: !20, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !17, line: 63, baseType: !20, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !17, line: 64, baseType: !20, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !17, line: 65, baseType: !20, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !17, line: 607, baseType: !20, size: 32, offset: 640)
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
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !17, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 24)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !17, line: 615, baseType: !20, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !17, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !17, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !17, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !17, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !17, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !17, line: 621, baseType: !20, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !17, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !17, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !17, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !17, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !16, file: !17, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !17, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !17, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !17, line: 95, baseType: !20, size: 32, offset: 64)
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
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !17, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !17, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !17, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !16, file: !17, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !16, file: !17, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !20}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !16, file: !17, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !17, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !17, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !17, line: 294, baseType: !20, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !17, line: 295, baseType: !22, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !16, file: !17, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 58, baseType: !233)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235, !236, !237, !238, !239, !240, !253, !255}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !12, file: !1, line: 17, type: !15)
!236 = !DILocalVariable(name: "buf", arg: 2, scope: !12, file: !1, line: 17, type: !6)
!237 = !DILocalVariable(name: "lenp", arg: 3, scope: !12, file: !1, line: 17, type: !231)
!238 = !DILocalVariable(name: "fmt", arg: 4, scope: !12, file: !1, line: 17, type: !51)
!239 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 23, type: !20)
!240 = !DILocalVariable(name: "ap", scope: !12, file: !1, line: 24, type: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !242, line: 46, baseType: !243)
!242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !244, line: 51, baseType: !245)
!244 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 24, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !71)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 24, size: 192, elements: !248)
!248 = !{!249, !250, !251, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !247, file: !1, line: 24, baseType: !93, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !247, file: !1, line: 24, baseType: !93, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !247, file: !1, line: 24, baseType: !39, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !247, file: !1, line: 24, baseType: !39, size: 64, offset: 128)
!253 = !DILocalVariable(name: "f", scope: !12, file: !1, line: 25, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !242, line: 66, baseType: !23)
!255 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 26, type: !232)
!256 = !DILocation(line: 17, column: 1, scope: !12)
!257 = !DILocation(line: 24, column: 3, scope: !12)
!258 = !DILocation(line: 24, column: 11, scope: !12)
!259 = !DILocation(line: 25, column: 3, scope: !12)
!260 = !DILocation(line: 26, column: 16, scope: !12)
!261 = !{!262, !262, i64 0}
!262 = !{!"long", !263, i64 0}
!263 = !{!"omnipotent char", !264, i64 0}
!264 = !{!"Simple C/C++ TBAA"}
!265 = !DILocation(line: 26, column: 10, scope: !12)
!266 = !DILocation(line: 28, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !12, file: !1, line: 28, column: 7)
!268 = !DILocation(line: 28, column: 14, scope: !267)
!269 = !DILocation(line: 28, column: 11, scope: !267)
!270 = !DILocation(line: 0, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !1, line: 34, column: 5)
!272 = !DILocation(line: 32, column: 5, scope: !273)
!273 = distinct !DILexicalBlock(scope: !267, file: !1, line: 29, column: 5)
!274 = !DILocation(line: 0, scope: !273)
!275 = !{!276, !279, i64 16}
!276 = !{!"__sFILE", !277, i64 0, !278, i64 8, !278, i64 12, !279, i64 16, !279, i64 18, !280, i64 24, !278, i64 40, !277, i64 48, !277, i64 56, !277, i64 64, !277, i64 72, !277, i64 80, !280, i64 88, !277, i64 104, !278, i64 112, !263, i64 116, !263, i64 119, !280, i64 120, !278, i64 136, !262, i64 144, !277, i64 152, !278, i64 160, !281, i64 164, !278, i64 172}
!277 = !{!"any pointer", !263, i64 0}
!278 = !{!"int", !263, i64 0}
!279 = !{!"short", !263, i64 0}
!280 = !{!"__sbuf", !277, i64 0, !278, i64 8}
!281 = !{!"", !278, i64 0, !263, i64 4}
!282 = !DILocation(line: 40, column: 19, scope: !12)
!283 = !DILocation(line: 40, column: 22, scope: !12)
!284 = !{!276, !277, i64 0}
!285 = !DILocation(line: 40, column: 9, scope: !12)
!286 = !DILocation(line: 40, column: 15, scope: !12)
!287 = !{!276, !277, i64 24}
!288 = !DILocation(line: 44, column: 11, scope: !289)
!289 = distinct !DILexicalBlock(scope: !12, file: !1, line: 44, column: 7)
!290 = !DILocation(line: 44, column: 7, scope: !12)
!291 = !DILocation(line: 46, column: 12, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 45, column: 5)
!293 = !DILocation(line: 46, column: 19, scope: !292)
!294 = !{!295, !278, i64 0}
!295 = !{!"_reent", !278, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !278, i64 32, !263, i64 36, !278, i64 64, !277, i64 72, !278, i64 80, !277, i64 88, !277, i64 96, !278, i64 104, !277, i64 112, !277, i64 120, !278, i64 128, !277, i64 136, !263, i64 144, !277, i64 504, !296, i64 512, !277, i64 1304, !298, i64 1312, !263, i64 1336}
!296 = !{!"_atexit", !277, i64 0, !278, i64 8, !263, i64 16, !297, i64 272}
!297 = !{!"_on_exit_args", !263, i64 0, !263, i64 256, !278, i64 512, !278, i64 516}
!298 = !{!"_glue", !277, i64 0, !278, i64 8, !277, i64 16}
!299 = !DILocation(line: 47, column: 7, scope: !292)
!300 = !DILocation(line: 49, column: 24, scope: !12)
!301 = !DILocation(line: 49, column: 19, scope: !12)
!302 = !DILocation(line: 49, column: 22, scope: !12)
!303 = !{!276, !278, i64 12}
!304 = !DILocation(line: 49, column: 9, scope: !12)
!305 = !DILocation(line: 49, column: 15, scope: !12)
!306 = !{!276, !278, i64 32}
!307 = !DILocation(line: 50, column: 5, scope: !12)
!308 = !DILocation(line: 50, column: 11, scope: !12)
!309 = !{!276, !279, i64 18}
!310 = !DILocation(line: 51, column: 3, scope: !12)
!311 = !DILocation(line: 25, column: 8, scope: !12)
!312 = !DILocation(line: 52, column: 9, scope: !12)
!313 = !DILocation(line: 23, column: 7, scope: !12)
!314 = !DILocation(line: 53, column: 3, scope: !12)
!315 = !DILocation(line: 54, column: 11, scope: !316)
!316 = distinct !DILexicalBlock(scope: !12, file: !1, line: 54, column: 7)
!317 = !DILocation(line: 54, column: 7, scope: !12)
!318 = !DILocation(line: 56, column: 11, scope: !12)
!319 = !DILocation(line: 56, column: 9, scope: !12)
!320 = !DILocation(line: 57, column: 6, scope: !12)
!321 = !DILocation(line: 57, column: 9, scope: !12)
!322 = !{!263, !263, i64 0}
!323 = !DILocation(line: 58, column: 25, scope: !12)
!324 = !DILocation(line: 58, column: 3, scope: !12)
!325 = !DILocation(line: 0, scope: !12)
!326 = !DILocation(line: 59, column: 1, scope: !12)
!327 = distinct !DISubprogram(name: "asniprintf", scope: !1, file: !1, line: 64, type: !328, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!6, !6, !231, !51, null}
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338}
!331 = !DILocalVariable(name: "buf", arg: 1, scope: !327, file: !1, line: 64, type: !6)
!332 = !DILocalVariable(name: "lenp", arg: 2, scope: !327, file: !1, line: 64, type: !231)
!333 = !DILocalVariable(name: "fmt", arg: 3, scope: !327, file: !1, line: 64, type: !51)
!334 = !DILocalVariable(name: "ret", scope: !327, file: !1, line: 69, type: !20)
!335 = !DILocalVariable(name: "ap", scope: !327, file: !1, line: 70, type: !241)
!336 = !DILocalVariable(name: "f", scope: !327, file: !1, line: 71, type: !254)
!337 = !DILocalVariable(name: "len", scope: !327, file: !1, line: 72, type: !232)
!338 = !DILocalVariable(name: "ptr", scope: !327, file: !1, line: 73, type: !15)
!339 = !DILocation(line: 64, column: 1, scope: !327)
!340 = !DILocation(line: 70, column: 3, scope: !327)
!341 = !DILocation(line: 70, column: 11, scope: !327)
!342 = !DILocation(line: 71, column: 3, scope: !327)
!343 = !DILocation(line: 72, column: 16, scope: !327)
!344 = !DILocation(line: 72, column: 10, scope: !327)
!345 = !DILocation(line: 73, column: 24, scope: !327)
!346 = !DILocation(line: 73, column: 18, scope: !327)
!347 = !DILocation(line: 75, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !327, file: !1, line: 75, column: 7)
!349 = !DILocation(line: 75, column: 14, scope: !348)
!350 = !DILocation(line: 75, column: 11, scope: !348)
!351 = !DILocation(line: 0, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !1, line: 81, column: 5)
!353 = !DILocation(line: 79, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !348, file: !1, line: 76, column: 5)
!355 = !DILocation(line: 0, scope: !354)
!356 = !DILocation(line: 87, column: 19, scope: !327)
!357 = !DILocation(line: 87, column: 22, scope: !327)
!358 = !DILocation(line: 87, column: 9, scope: !327)
!359 = !DILocation(line: 87, column: 15, scope: !327)
!360 = !DILocation(line: 91, column: 11, scope: !361)
!361 = distinct !DILexicalBlock(scope: !327, file: !1, line: 91, column: 7)
!362 = !DILocation(line: 91, column: 7, scope: !327)
!363 = !DILocation(line: 93, column: 12, scope: !364)
!364 = distinct !DILexicalBlock(scope: !361, file: !1, line: 92, column: 5)
!365 = !DILocation(line: 93, column: 19, scope: !364)
!366 = !DILocation(line: 94, column: 7, scope: !364)
!367 = !DILocation(line: 96, column: 24, scope: !327)
!368 = !DILocation(line: 96, column: 19, scope: !327)
!369 = !DILocation(line: 96, column: 22, scope: !327)
!370 = !DILocation(line: 96, column: 9, scope: !327)
!371 = !DILocation(line: 96, column: 15, scope: !327)
!372 = !DILocation(line: 97, column: 5, scope: !327)
!373 = !DILocation(line: 97, column: 11, scope: !327)
!374 = !DILocation(line: 98, column: 3, scope: !327)
!375 = !DILocation(line: 71, column: 8, scope: !327)
!376 = !DILocation(line: 99, column: 9, scope: !327)
!377 = !DILocation(line: 69, column: 7, scope: !327)
!378 = !DILocation(line: 100, column: 3, scope: !327)
!379 = !DILocation(line: 101, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !327, file: !1, line: 101, column: 7)
!381 = !DILocation(line: 101, column: 7, scope: !327)
!382 = !DILocation(line: 103, column: 11, scope: !327)
!383 = !DILocation(line: 103, column: 9, scope: !327)
!384 = !DILocation(line: 104, column: 6, scope: !327)
!385 = !DILocation(line: 104, column: 9, scope: !327)
!386 = !DILocation(line: 105, column: 25, scope: !327)
!387 = !DILocation(line: 105, column: 3, scope: !327)
!388 = !DILocation(line: 0, scope: !327)
!389 = !DILocation(line: 106, column: 1, scope: !327)
