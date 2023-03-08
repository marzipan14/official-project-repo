; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asnprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asnprintf.c"
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
define dso_local i8* @_asnprintf_r(%struct._reent* noalias, i8*, i64* nocapture, i8* noalias, ...) local_unnamed_addr #0 !dbg !12 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #3, !dbg !259
  %8 = bitcast %struct.__sFILE* %6 to i8*, !dbg !261
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %8) #3, !dbg !261
  %9 = load i64, i64* %2, align 8, !dbg !262, !tbaa !263
  %10 = icmp ne i8* %1, null, !dbg !268
  %11 = icmp ne i64 %9, 0, !dbg !270
  %12 = and i1 %10, %11, !dbg !271
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br i1 %12, label %17, label %14, !dbg !271

; <label>:14:                                     ; preds = %4
  store i16 648, i16* %13, align 8, !dbg !274, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !282
  store i8* null, i8** %15, align 8, !dbg !283, !tbaa !284
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !285
  store i8* null, i8** %16, align 8, !dbg !286, !tbaa !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  br label %23, !dbg !288

; <label>:17:                                     ; preds = %4
  store i16 1544, i16* %13, align 8, !dbg !289, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !282
  store i8* %1, i8** %18, align 8, !dbg !283, !tbaa !284
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !285
  store i8* %1, i8** %19, align 8, !dbg !286, !tbaa !287
  %20 = icmp ugt i64 %9, 2147483647, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  br i1 %20, label %21, label %23, !dbg !288

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !294
  store i32 139, i32* %22, align 8, !dbg !296, !tbaa !297
  br label %38, !dbg !302

; <label>:23:                                     ; preds = %14, %17
  %24 = phi i8** [ %16, %14 ], [ %19, %17 ]
  %25 = phi i8** [ %15, %14 ], [ %18, %17 ]
  %26 = phi i64 [ 0, %14 ], [ %9, %17 ]
  %27 = trunc i64 %26 to i32, !dbg !303
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !304
  store i32 %27, i32* %28, align 4, !dbg !305, !tbaa !306
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !307
  store i32 %27, i32* %29, align 8, !dbg !308, !tbaa !309
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !310
  store i16 -1, i16* %30, align 2, !dbg !311, !tbaa !312
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !313
  call void @llvm.va_start(i8* nonnull %7), !dbg !313
  %32 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* nonnull %31) #5, !dbg !315
  call void @llvm.va_end(i8* nonnull %7), !dbg !317
  %33 = icmp slt i32 %32, 0, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %33, label %38, label %34, !dbg !320

; <label>:34:                                     ; preds = %23
  %35 = sext i32 %32 to i64, !dbg !321
  store i64 %35, i64* %2, align 8, !dbg !322, !tbaa !263
  %36 = load i8*, i8** %25, align 8, !dbg !323, !tbaa !284
  store i8 0, i8* %36, align 1, !dbg !324, !tbaa !325
  %37 = load i8*, i8** %24, align 8, !dbg !326, !tbaa !287
  br label %38, !dbg !327

; <label>:38:                                     ; preds = %23, %34, %21
  %39 = phi i8* [ null, %21 ], [ %37, %34 ], [ null, %23 ], !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %8) #3, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  ret i8* %39, !dbg !330
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @_svfprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @asnprintf(i8* noalias, i64* noalias nocapture, i8* noalias, ...) local_unnamed_addr #0 !dbg !331 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !346
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #3, !dbg !346
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !348
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #3, !dbg !348
  %8 = load i64, i64* %1, align 8, !dbg !349, !tbaa !263
  %9 = tail call %struct._reent* @__getreent() #5, !dbg !351
  %10 = icmp ne i8* %0, null, !dbg !353
  %11 = icmp ne i64 %8, 0, !dbg !355
  %12 = and i1 %10, %11, !dbg !356
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %12, label %17, label %14, !dbg !356

; <label>:14:                                     ; preds = %3
  store i16 648, i16* %13, align 8, !dbg !359, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !360
  store i8* null, i8** %15, align 8, !dbg !361, !tbaa !284
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !362
  store i8* null, i8** %16, align 8, !dbg !363, !tbaa !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br label %23, !dbg !364

; <label>:17:                                     ; preds = %3
  store i16 1544, i16* %13, align 8, !dbg !365, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !360
  store i8* %0, i8** %18, align 8, !dbg !361, !tbaa !284
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !362
  store i8* %0, i8** %19, align 8, !dbg !363, !tbaa !287
  %20 = icmp ugt i64 %8, 2147483647, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %20, label %21, label %23, !dbg !364

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct._reent, %struct._reent* %9, i64 0, i32 0, !dbg !370
  store i32 139, i32* %22, align 8, !dbg !372, !tbaa !297
  br label %38, !dbg !373

; <label>:23:                                     ; preds = %14, %17
  %24 = phi i8** [ %16, %14 ], [ %19, %17 ]
  %25 = phi i8** [ %15, %14 ], [ %18, %17 ]
  %26 = phi i64 [ 0, %14 ], [ %8, %17 ]
  %27 = trunc i64 %26 to i32, !dbg !374
  %28 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !375
  store i32 %27, i32* %28, align 4, !dbg !376, !tbaa !306
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !377
  store i32 %27, i32* %29, align 8, !dbg !378, !tbaa !309
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !379
  store i16 -1, i16* %30, align 2, !dbg !380, !tbaa !312
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !381
  call void @llvm.va_start(i8* nonnull %6), !dbg !381
  %32 = call i32 @_svfprintf_r(%struct._reent* %9, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %31) #5, !dbg !383
  call void @llvm.va_end(i8* nonnull %6), !dbg !385
  %33 = icmp slt i32 %32, 0, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br i1 %33, label %38, label %34, !dbg !388

; <label>:34:                                     ; preds = %23
  %35 = sext i32 %32 to i64, !dbg !389
  store i64 %35, i64* %1, align 8, !dbg !390, !tbaa !263
  %36 = load i8*, i8** %25, align 8, !dbg !391, !tbaa !284
  store i8 0, i8* %36, align 1, !dbg !392, !tbaa !325
  %37 = load i8*, i8** %24, align 8, !dbg !393, !tbaa !287
  br label %38, !dbg !394

; <label>:38:                                     ; preds = %23, %34, %21
  %39 = phi i8* [ null, %21 ], [ %37, %34 ], [ null, %23 ], !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #3, !dbg !397
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #3, !dbg !397
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  ret i8* %39, !dbg !397
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asnprintf.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "_asnprintf_r", scope: !1, file: !1, line: 17, type: !13, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !236)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !6, !232, !235, null}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !18, line: 569, size: 14912, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !22, !100, !101, !102, !103, !107, !108, !111, !112, !116, !128, !129, !130, !132, !133, !134, !196, !217, !218, !223, !230}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !17, file: !18, line: 571, baseType: !21, size: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !18, line: 287, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !18, line: 181, size: 1408, elements: !26)
!26 = !{!27, !28, !29, !30, !32, !33, !38, !39, !41, !48, !54, !59, !63, !64, !65, !66, !70, !74, !75, !76, !78, !79, !83, !99}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !25, file: !18, line: 182, baseType: !4, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !25, file: !18, line: 183, baseType: !21, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !25, file: !18, line: 184, baseType: !21, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !18, line: 185, baseType: !31, size: 16, offset: 128)
!31 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !25, file: !18, line: 186, baseType: !31, size: 16, offset: 144)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !25, file: !18, line: 187, baseType: !34, size: 128, offset: 192)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !18, line: 117, size: 128, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !34, file: !18, line: 118, baseType: !4, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !34, file: !18, line: 119, baseType: !21, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !25, file: !18, line: 188, baseType: !21, size: 32, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !25, file: !18, line: 195, baseType: !40, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !25, file: !18, line: 197, baseType: !42, size: 64, offset: 448)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !16, !40, !6, !21}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !46, line: 145, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !25, file: !18, line: 199, baseType: !49, size: 64, offset: 512)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!45, !16, !40, !52, !21}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !25, file: !18, line: 202, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !16, !40, !58, !21}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !46, line: 114, baseType: !47)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !25, file: !18, line: 203, baseType: !60, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!21, !16, !40}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !25, file: !18, line: 206, baseType: !34, size: 128, offset: 704)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !25, file: !18, line: 207, baseType: !4, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !25, file: !18, line: 208, baseType: !21, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !25, file: !18, line: 211, baseType: !67, size: 24, offset: 928)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !25, file: !18, line: 212, baseType: !71, size: 8, offset: 952)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !25, file: !18, line: 215, baseType: !34, size: 128, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !25, file: !18, line: 218, baseType: !21, size: 32, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !18, line: 219, baseType: !77, size: 64, offset: 1152)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !46, line: 44, baseType: !47)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !25, file: !18, line: 222, baseType: !16, size: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !18, line: 226, baseType: !80, size: 32, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !46, line: 175, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !82, line: 12, baseType: !21)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !25, file: !18, line: 228, baseType: !84, size: 64, offset: 1312)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !46, line: 171, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 163, size: 64, elements: !86)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !46, line: 165, baseType: !21, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !85, file: !46, line: 170, baseType: !89, size: 32, offset: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !46, line: 166, size: 32, elements: !90)
!90 = !{!91, !95}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !89, file: !46, line: 168, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !93, line: 124, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !89, file: !46, line: 169, baseType: !96, size: 32)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !18, line: 229, baseType: !21, size: 32, offset: 1376)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !17, file: !18, line: 576, baseType: !23, size: 64, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !17, file: !18, line: 578, baseType: !21, size: 32, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !17, file: !18, line: 579, baseType: !104, size: 200, offset: 288)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 25)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !17, file: !18, line: 582, baseType: !21, size: 32, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !17, file: !18, line: 583, baseType: !109, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !18, line: 40, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !17, file: !18, line: 585, baseType: !21, size: 32, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !17, file: !18, line: 587, baseType: !113, size: 64, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !16}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !17, file: !18, line: 590, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !18, line: 47, size: 256, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !118, file: !18, line: 49, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !118, file: !18, line: 50, baseType: !21, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !118, file: !18, line: 50, baseType: !21, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !118, file: !18, line: 50, baseType: !21, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !118, file: !18, line: 50, baseType: !21, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !118, file: !18, line: 51, baseType: !126, size: 32, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 32, elements: !72)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !18, line: 25, baseType: !94)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !17, file: !18, line: 591, baseType: !21, size: 32, offset: 832)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !17, file: !18, line: 592, baseType: !117, size: 64, offset: 896)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !17, file: !18, line: 593, baseType: !131, size: 64, offset: 960)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !17, file: !18, line: 596, baseType: !21, size: 32, offset: 1024)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !17, file: !18, line: 597, baseType: !6, size: 64, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !17, file: !18, line: 632, baseType: !135, size: 2880, offset: 1152)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 599, size: 2880, elements: !136)
!136 = !{!137, !187}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !135, file: !18, line: 622, baseType: !138, size: 1728)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !18, line: 601, size: 1728, elements: !139)
!139 = !{!140, !141, !142, !146, !158, !159, !161, !169, !170, !171, !172, !176, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !138, file: !18, line: 603, baseType: !94, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !138, file: !18, line: 604, baseType: !6, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !138, file: !18, line: 605, baseType: !143, size: 208, offset: 128)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 208, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 26)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !138, file: !18, line: 606, baseType: !147, size: 288, offset: 352)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !18, line: 55, size: 288, elements: !148)
!148 = !{!149, !150, !151, !152, !153, !154, !155, !156, !157}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !147, file: !18, line: 57, baseType: !21, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !147, file: !18, line: 58, baseType: !21, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !147, file: !18, line: 59, baseType: !21, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !147, file: !18, line: 60, baseType: !21, size: 32, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !147, file: !18, line: 61, baseType: !21, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !147, file: !18, line: 62, baseType: !21, size: 32, offset: 160)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !147, file: !18, line: 63, baseType: !21, size: 32, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !147, file: !18, line: 64, baseType: !21, size: 32, offset: 224)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !147, file: !18, line: 65, baseType: !21, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !138, file: !18, line: 607, baseType: !21, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !138, file: !18, line: 608, baseType: !160, size: 64, offset: 704)
!160 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !138, file: !18, line: 609, baseType: !162, size: 112, offset: 768)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !18, line: 319, size: 112, elements: !163)
!163 = !{!164, !167, !168}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !162, file: !18, line: 320, baseType: !165, size: 48)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, elements: !68)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !162, file: !18, line: 321, baseType: !165, size: 48, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !162, file: !18, line: 322, baseType: !166, size: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !138, file: !18, line: 610, baseType: !84, size: 64, offset: 896)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !138, file: !18, line: 611, baseType: !84, size: 64, offset: 960)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !138, file: !18, line: 612, baseType: !84, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !138, file: !18, line: 613, baseType: !173, size: 64, offset: 1088)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !138, file: !18, line: 614, baseType: !177, size: 192, offset: 1152)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 24)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !138, file: !18, line: 615, baseType: !21, size: 32, offset: 1344)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !138, file: !18, line: 616, baseType: !84, size: 64, offset: 1376)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !138, file: !18, line: 617, baseType: !84, size: 64, offset: 1440)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !138, file: !18, line: 618, baseType: !84, size: 64, offset: 1504)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !138, file: !18, line: 619, baseType: !84, size: 64, offset: 1568)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !138, file: !18, line: 620, baseType: !84, size: 64, offset: 1632)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !138, file: !18, line: 621, baseType: !21, size: 32, offset: 1696)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !135, file: !18, line: 631, baseType: !188, size: 2880)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !18, line: 626, size: 2880, elements: !189)
!189 = !{!190, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !188, file: !18, line: 629, baseType: !191, size: 1920)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !188, file: !18, line: 630, baseType: !195, size: 960, offset: 1920)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 960, elements: !192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !17, file: !18, line: 636, baseType: !197, size: 64, offset: 4032)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !18, line: 93, size: 6336, elements: !199)
!199 = !{!200, !201, !202, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !198, file: !18, line: 94, baseType: !197, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !198, file: !18, line: 95, baseType: !21, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !198, file: !18, line: 97, baseType: !203, size: 2048, offset: 128)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, elements: !207)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null}
!207 = !{!208}
!208 = !DISubrange(count: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !198, file: !18, line: 98, baseType: !210, size: 4160, offset: 2176)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !18, line: 74, size: 4160, elements: !211)
!211 = !{!212, !214, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !210, file: !18, line: 75, baseType: !213, size: 2048)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !207)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !210, file: !18, line: 76, baseType: !213, size: 2048, offset: 2048)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !210, file: !18, line: 78, baseType: !127, size: 32, offset: 4096)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !210, file: !18, line: 81, baseType: !127, size: 32, offset: 4128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !17, file: !18, line: 637, baseType: !198, size: 6336, offset: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !17, file: !18, line: 641, baseType: !219, size: 64, offset: 10432)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !21}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !17, file: !18, line: 646, baseType: !224, size: 192, offset: 10496)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !18, line: 291, size: 192, elements: !225)
!225 = !{!226, !228, !229}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !224, file: !18, line: 293, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !224, file: !18, line: 294, baseType: !21, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !224, file: !18, line: 295, baseType: !23, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !17, file: !18, line: 648, baseType: !231, size: 4224, offset: 10688)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 4224, elements: !68)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 58, baseType: !234)
!234 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!236 = !{!237, !238, !239, !240, !241, !242, !255, !257}
!237 = !DILocalVariable(name: "ptr", arg: 1, scope: !12, file: !1, line: 17, type: !15)
!238 = !DILocalVariable(name: "buf", arg: 2, scope: !12, file: !1, line: 17, type: !6)
!239 = !DILocalVariable(name: "lenp", arg: 3, scope: !12, file: !1, line: 17, type: !232)
!240 = !DILocalVariable(name: "fmt", arg: 4, scope: !12, file: !1, line: 17, type: !235)
!241 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 23, type: !21)
!242 = !DILocalVariable(name: "ap", scope: !12, file: !1, line: 24, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !244, line: 46, baseType: !245)
!244 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !246, line: 51, baseType: !247)
!246 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 24, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 192, elements: !72)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 24, size: 192, elements: !250)
!250 = !{!251, !252, !253, !254}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !249, file: !1, line: 24, baseType: !94, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !249, file: !1, line: 24, baseType: !94, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !249, file: !1, line: 24, baseType: !40, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !249, file: !1, line: 24, baseType: !40, size: 64, offset: 128)
!255 = !DILocalVariable(name: "f", scope: !12, file: !1, line: 25, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !244, line: 66, baseType: !24)
!257 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 26, type: !233)
!258 = !DILocation(line: 17, column: 1, scope: !12)
!259 = !DILocation(line: 24, column: 3, scope: !12)
!260 = !DILocation(line: 24, column: 11, scope: !12)
!261 = !DILocation(line: 25, column: 3, scope: !12)
!262 = !DILocation(line: 26, column: 16, scope: !12)
!263 = !{!264, !264, i64 0}
!264 = !{!"long", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !DILocation(line: 26, column: 10, scope: !12)
!268 = !DILocation(line: 28, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !12, file: !1, line: 28, column: 7)
!270 = !DILocation(line: 28, column: 14, scope: !269)
!271 = !DILocation(line: 28, column: 11, scope: !269)
!272 = !DILocation(line: 0, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !1, line: 34, column: 5)
!274 = !DILocation(line: 36, column: 16, scope: !273)
!275 = !{!276, !279, i64 16}
!276 = !{!"__sFILE", !277, i64 0, !278, i64 8, !278, i64 12, !279, i64 16, !279, i64 18, !280, i64 24, !278, i64 40, !277, i64 48, !277, i64 56, !277, i64 64, !277, i64 72, !277, i64 80, !280, i64 88, !277, i64 104, !278, i64 112, !265, i64 116, !265, i64 119, !280, i64 120, !278, i64 136, !264, i64 144, !277, i64 152, !278, i64 160, !281, i64 164, !278, i64 172}
!277 = !{!"any pointer", !265, i64 0}
!278 = !{!"int", !265, i64 0}
!279 = !{!"short", !265, i64 0}
!280 = !{!"__sbuf", !277, i64 0, !278, i64 8}
!281 = !{!"", !278, i64 0, !265, i64 4}
!282 = !DILocation(line: 40, column: 19, scope: !12)
!283 = !DILocation(line: 40, column: 22, scope: !12)
!284 = !{!276, !277, i64 0}
!285 = !DILocation(line: 40, column: 9, scope: !12)
!286 = !DILocation(line: 40, column: 15, scope: !12)
!287 = !{!276, !277, i64 24}
!288 = !DILocation(line: 44, column: 7, scope: !12)
!289 = !DILocation(line: 31, column: 16, scope: !290)
!290 = distinct !DILexicalBlock(scope: !269, file: !1, line: 29, column: 5)
!291 = !DILocation(line: 32, column: 5, scope: !290)
!292 = !DILocation(line: 44, column: 11, scope: !293)
!293 = distinct !DILexicalBlock(scope: !12, file: !1, line: 44, column: 7)
!294 = !DILocation(line: 46, column: 12, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !1, line: 45, column: 5)
!296 = !DILocation(line: 46, column: 19, scope: !295)
!297 = !{!298, !278, i64 0}
!298 = !{!"_reent", !278, i64 0, !277, i64 8, !277, i64 16, !277, i64 24, !278, i64 32, !265, i64 36, !278, i64 64, !277, i64 72, !278, i64 80, !277, i64 88, !277, i64 96, !278, i64 104, !277, i64 112, !277, i64 120, !278, i64 128, !277, i64 136, !265, i64 144, !277, i64 504, !299, i64 512, !277, i64 1304, !301, i64 1312, !265, i64 1336}
!299 = !{!"_atexit", !277, i64 0, !278, i64 8, !265, i64 16, !300, i64 272}
!300 = !{!"_on_exit_args", !265, i64 0, !265, i64 256, !278, i64 512, !278, i64 516}
!301 = !{!"_glue", !277, i64 0, !278, i64 8, !277, i64 16}
!302 = !DILocation(line: 47, column: 7, scope: !295)
!303 = !DILocation(line: 49, column: 24, scope: !12)
!304 = !DILocation(line: 49, column: 19, scope: !12)
!305 = !DILocation(line: 49, column: 22, scope: !12)
!306 = !{!276, !278, i64 12}
!307 = !DILocation(line: 49, column: 9, scope: !12)
!308 = !DILocation(line: 49, column: 15, scope: !12)
!309 = !{!276, !278, i64 32}
!310 = !DILocation(line: 50, column: 5, scope: !12)
!311 = !DILocation(line: 50, column: 11, scope: !12)
!312 = !{!276, !279, i64 18}
!313 = !DILocation(line: 51, column: 3, scope: !12)
!314 = !DILocation(line: 25, column: 8, scope: !12)
!315 = !DILocation(line: 52, column: 9, scope: !12)
!316 = !DILocation(line: 23, column: 7, scope: !12)
!317 = !DILocation(line: 53, column: 3, scope: !12)
!318 = !DILocation(line: 54, column: 11, scope: !319)
!319 = distinct !DILexicalBlock(scope: !12, file: !1, line: 54, column: 7)
!320 = !DILocation(line: 54, column: 7, scope: !12)
!321 = !DILocation(line: 56, column: 11, scope: !12)
!322 = !DILocation(line: 56, column: 9, scope: !12)
!323 = !DILocation(line: 57, column: 6, scope: !12)
!324 = !DILocation(line: 57, column: 9, scope: !12)
!325 = !{!265, !265, i64 0}
!326 = !DILocation(line: 58, column: 25, scope: !12)
!327 = !DILocation(line: 58, column: 3, scope: !12)
!328 = !DILocation(line: 0, scope: !12)
!329 = !DILocation(line: 0, scope: !295)
!330 = !DILocation(line: 59, column: 1, scope: !12)
!331 = distinct !DISubprogram(name: "asnprintf", scope: !1, file: !1, line: 70, type: !332, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !336)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !334, !335, !235, null}
!334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!335 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344}
!337 = !DILocalVariable(name: "buf", arg: 1, scope: !331, file: !1, line: 70, type: !334)
!338 = !DILocalVariable(name: "lenp", arg: 2, scope: !331, file: !1, line: 70, type: !335)
!339 = !DILocalVariable(name: "fmt", arg: 3, scope: !331, file: !1, line: 70, type: !235)
!340 = !DILocalVariable(name: "ret", scope: !331, file: !1, line: 75, type: !21)
!341 = !DILocalVariable(name: "ap", scope: !331, file: !1, line: 76, type: !243)
!342 = !DILocalVariable(name: "f", scope: !331, file: !1, line: 77, type: !256)
!343 = !DILocalVariable(name: "len", scope: !331, file: !1, line: 78, type: !233)
!344 = !DILocalVariable(name: "ptr", scope: !331, file: !1, line: 79, type: !16)
!345 = !DILocation(line: 70, column: 1, scope: !331)
!346 = !DILocation(line: 76, column: 3, scope: !331)
!347 = !DILocation(line: 76, column: 11, scope: !331)
!348 = !DILocation(line: 77, column: 3, scope: !331)
!349 = !DILocation(line: 78, column: 16, scope: !331)
!350 = !DILocation(line: 78, column: 10, scope: !331)
!351 = !DILocation(line: 79, column: 24, scope: !331)
!352 = !DILocation(line: 79, column: 18, scope: !331)
!353 = !DILocation(line: 81, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !331, file: !1, line: 81, column: 7)
!355 = !DILocation(line: 81, column: 14, scope: !354)
!356 = !DILocation(line: 81, column: 11, scope: !354)
!357 = !DILocation(line: 0, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !1, line: 87, column: 5)
!359 = !DILocation(line: 89, column: 16, scope: !358)
!360 = !DILocation(line: 93, column: 19, scope: !331)
!361 = !DILocation(line: 93, column: 22, scope: !331)
!362 = !DILocation(line: 93, column: 9, scope: !331)
!363 = !DILocation(line: 93, column: 15, scope: !331)
!364 = !DILocation(line: 97, column: 7, scope: !331)
!365 = !DILocation(line: 84, column: 16, scope: !366)
!366 = distinct !DILexicalBlock(scope: !354, file: !1, line: 82, column: 5)
!367 = !DILocation(line: 85, column: 5, scope: !366)
!368 = !DILocation(line: 97, column: 11, scope: !369)
!369 = distinct !DILexicalBlock(scope: !331, file: !1, line: 97, column: 7)
!370 = !DILocation(line: 99, column: 12, scope: !371)
!371 = distinct !DILexicalBlock(scope: !369, file: !1, line: 98, column: 5)
!372 = !DILocation(line: 99, column: 19, scope: !371)
!373 = !DILocation(line: 100, column: 7, scope: !371)
!374 = !DILocation(line: 102, column: 24, scope: !331)
!375 = !DILocation(line: 102, column: 19, scope: !331)
!376 = !DILocation(line: 102, column: 22, scope: !331)
!377 = !DILocation(line: 102, column: 9, scope: !331)
!378 = !DILocation(line: 102, column: 15, scope: !331)
!379 = !DILocation(line: 103, column: 5, scope: !331)
!380 = !DILocation(line: 103, column: 11, scope: !331)
!381 = !DILocation(line: 104, column: 3, scope: !331)
!382 = !DILocation(line: 77, column: 8, scope: !331)
!383 = !DILocation(line: 105, column: 9, scope: !331)
!384 = !DILocation(line: 75, column: 7, scope: !331)
!385 = !DILocation(line: 106, column: 3, scope: !331)
!386 = !DILocation(line: 107, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !331, file: !1, line: 107, column: 7)
!388 = !DILocation(line: 107, column: 7, scope: !331)
!389 = !DILocation(line: 109, column: 11, scope: !331)
!390 = !DILocation(line: 109, column: 9, scope: !331)
!391 = !DILocation(line: 110, column: 6, scope: !331)
!392 = !DILocation(line: 110, column: 9, scope: !331)
!393 = !DILocation(line: 111, column: 25, scope: !331)
!394 = !DILocation(line: 111, column: 3, scope: !331)
!395 = !DILocation(line: 0, scope: !331)
!396 = !DILocation(line: 0, scope: !371)
!397 = !DILocation(line: 112, column: 1, scope: !331)
