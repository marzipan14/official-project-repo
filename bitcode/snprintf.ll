; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/snprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/snprintf.c"
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
define dso_local i32 @_snprintf_r(%struct._reent*, i8* noalias, i64, i8* noalias, ...) local_unnamed_addr #0 !dbg !10 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !257
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #3, !dbg !257
  %8 = bitcast %struct.__sFILE* %6 to i8*, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %8) #3, !dbg !259
  %9 = icmp ugt i64 %2, 2147483647, !dbg !260
  br i1 %9, label %10, label %12, !dbg !262

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !263
  store i32 139, i32* %11, align 8, !dbg !265, !tbaa !266
  br label %31, !dbg !275

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !276
  store i16 520, i16* %13, align 8, !dbg !277, !tbaa !278
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !284
  store i8* %1, i8** %14, align 8, !dbg !285, !tbaa !286
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !287
  store i8* %1, i8** %15, align 8, !dbg !288, !tbaa !289
  %16 = icmp ne i64 %2, 0, !dbg !290
  %17 = add i64 %2, 4294967295, !dbg !291
  %18 = select i1 %16, i64 %17, i64 0, !dbg !292
  %19 = trunc i64 %18 to i32, !dbg !293
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !294
  store i32 %19, i32* %20, align 4, !dbg !295, !tbaa !296
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !297
  store i32 %19, i32* %21, align 8, !dbg !298, !tbaa !299
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !300
  store i16 -1, i16* %22, align 2, !dbg !301, !tbaa !302
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !303
  call void @llvm.va_start(i8* nonnull %7), !dbg !303
  %24 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* nonnull %23) #5, !dbg !305
  call void @llvm.va_end(i8* nonnull %7), !dbg !307
  %25 = icmp slt i32 %24, -1, !dbg !308
  br i1 %25, label %26, label %28, !dbg !310

; <label>:26:                                     ; preds = %12
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !311
  store i32 139, i32* %27, align 8, !dbg !312, !tbaa !266
  br label %28, !dbg !313

; <label>:28:                                     ; preds = %26, %12
  br i1 %16, label %29, label %31, !dbg !314

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %14, align 8, !dbg !315, !tbaa !286
  store i8 0, i8* %30, align 1, !dbg !317, !tbaa !318
  br label %31, !dbg !319

; <label>:31:                                     ; preds = %28, %29, %10
  %32 = phi i32 [ -1, %10 ], [ %24, %29 ], [ %24, %28 ], !dbg !320
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %8) #3, !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  ret i32 %32, !dbg !321
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
define dso_local i32 @snprintf(i8* noalias, i64, i8* noalias, ...) local_unnamed_addr #0 !dbg !322 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #3, !dbg !334
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !336
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #3, !dbg !336
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !337
  %9 = icmp ugt i64 %1, 2147483647, !dbg !339
  br i1 %9, label %10, label %12, !dbg !341

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 0, !dbg !342
  store i32 139, i32* %11, align 8, !dbg !344, !tbaa !266
  br label %31, !dbg !345

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !346
  store i16 520, i16* %13, align 8, !dbg !347, !tbaa !278
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !348
  store i8* %0, i8** %14, align 8, !dbg !349, !tbaa !286
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !350
  store i8* %0, i8** %15, align 8, !dbg !351, !tbaa !289
  %16 = icmp ne i64 %1, 0, !dbg !352
  %17 = add i64 %1, 4294967295, !dbg !353
  %18 = select i1 %16, i64 %17, i64 0, !dbg !354
  %19 = trunc i64 %18 to i32, !dbg !355
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !356
  store i32 %19, i32* %20, align 4, !dbg !357, !tbaa !296
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !358
  store i32 %19, i32* %21, align 8, !dbg !359, !tbaa !299
  %22 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !360
  store i16 -1, i16* %22, align 2, !dbg !361, !tbaa !302
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !362
  call void @llvm.va_start(i8* nonnull %6), !dbg !362
  %24 = call i32 @_svfprintf_r(%struct._reent* %8, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %23) #5, !dbg !364
  call void @llvm.va_end(i8* nonnull %6), !dbg !366
  %25 = icmp slt i32 %24, -1, !dbg !367
  br i1 %25, label %26, label %28, !dbg !369

; <label>:26:                                     ; preds = %12
  %27 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 0, !dbg !370
  store i32 139, i32* %27, align 8, !dbg !371, !tbaa !266
  br label %28, !dbg !372

; <label>:28:                                     ; preds = %26, %12
  br i1 %16, label %29, label %31, !dbg !373

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %14, align 8, !dbg !374, !tbaa !286
  store i8 0, i8* %30, align 1, !dbg !376, !tbaa !318
  br label %31, !dbg !377

; <label>:31:                                     ; preds = %28, %29, %10
  %32 = phi i32 [ -1, %10 ], [ %24, %29 ], [ %24, %28 ], !dbg !378
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #3, !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #3, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  ret i32 %32, !dbg !379
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

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/snprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_snprintf_r", scope: !1, file: !1, line: 34, type: !11, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !235)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !231, !232, !234, null}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !16, line: 569, size: 14912, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !19, !99, !100, !101, !102, !106, !107, !110, !111, !115, !127, !128, !129, !131, !132, !133, !195, !216, !217, !222, !229}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !15, file: !16, line: 571, baseType: !13, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !16, line: 287, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !16, line: 181, size: 1408, elements: !23)
!23 = !{!24, !25, !26, !27, !29, !30, !35, !36, !38, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !16, line: 182, baseType: !4, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !16, line: 184, baseType: !13, size: 32, offset: 96)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !16, line: 185, baseType: !28, size: 16, offset: 128)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !16, line: 186, baseType: !28, size: 16, offset: 144)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !16, line: 187, baseType: !31, size: 128, offset: 192)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !31, file: !16, line: 118, baseType: !4, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !31, file: !16, line: 119, baseType: !13, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !16, line: 195, baseType: !37, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !16, line: 197, baseType: !39, size: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !14, !37, !45, !13}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !43, line: 145, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !16, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!42, !14, !37, !51, !13}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !16, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !14, !37, !57, !13}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !43, line: 114, baseType: !44)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !16, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!13, !14, !37}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !16, line: 206, baseType: !31, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !16, line: 207, baseType: !4, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !16, line: 208, baseType: !13, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !16, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !16, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !16, line: 215, baseType: !31, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !16, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !43, line: 44, baseType: !44)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !16, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !43, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !13)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !16, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !43, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !43, line: 165, baseType: !13, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !43, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !43, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !43, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !43, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !13, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 200, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !15, file: !16, line: 582, baseType: !13, size: 32, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !15, file: !16, line: 583, baseType: !108, size: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !16, line: 40, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !15, file: !16, line: 585, baseType: !13, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !15, file: !16, line: 587, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !14}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !15, file: !16, line: 590, baseType: !116, size: 64, offset: 768)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !16, line: 47, size: 256, elements: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !117, file: !16, line: 49, baseType: !116, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !117, file: !16, line: 50, baseType: !13, size: 32, offset: 160)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !117, file: !16, line: 51, baseType: !125, size: 32, offset: 192)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !71)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !16, line: 25, baseType: !93)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !15, file: !16, line: 591, baseType: !13, size: 32, offset: 832)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !15, file: !16, line: 592, baseType: !116, size: 64, offset: 896)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !15, file: !16, line: 593, baseType: !130, size: 64, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !15, file: !16, line: 596, baseType: !13, size: 32, offset: 1024)
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
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !146, file: !16, line: 57, baseType: !13, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !146, file: !16, line: 58, baseType: !13, size: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !146, file: !16, line: 59, baseType: !13, size: 32, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !146, file: !16, line: 60, baseType: !13, size: 32, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !146, file: !16, line: 61, baseType: !13, size: 32, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !146, file: !16, line: 62, baseType: !13, size: 32, offset: 160)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !146, file: !16, line: 63, baseType: !13, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !146, file: !16, line: 64, baseType: !13, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !146, file: !16, line: 65, baseType: !13, size: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !137, file: !16, line: 607, baseType: !13, size: 32, offset: 640)
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
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !137, file: !16, line: 615, baseType: !13, size: 32, offset: 1344)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !137, file: !16, line: 616, baseType: !83, size: 64, offset: 1376)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !137, file: !16, line: 617, baseType: !83, size: 64, offset: 1440)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !137, file: !16, line: 618, baseType: !83, size: 64, offset: 1504)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !137, file: !16, line: 619, baseType: !83, size: 64, offset: 1568)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !137, file: !16, line: 620, baseType: !83, size: 64, offset: 1632)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !137, file: !16, line: 621, baseType: !13, size: 32, offset: 1696)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !134, file: !16, line: 631, baseType: !187, size: 2880)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !16, line: 626, size: 2880, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !187, file: !16, line: 629, baseType: !190, size: 1920)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 30)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !187, file: !16, line: 630, baseType: !194, size: 960, offset: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 960, elements: !191)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !15, file: !16, line: 636, baseType: !196, size: 64, offset: 4032)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !16, line: 93, size: 6336, elements: !198)
!198 = !{!199, !200, !201, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !197, file: !16, line: 94, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !197, file: !16, line: 95, baseType: !13, size: 32, offset: 64)
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
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !206)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !209, file: !16, line: 76, baseType: !212, size: 2048, offset: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !209, file: !16, line: 78, baseType: !126, size: 32, offset: 4096)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !209, file: !16, line: 81, baseType: !126, size: 32, offset: 4128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !15, file: !16, line: 637, baseType: !197, size: 6336, offset: 4096)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !15, file: !16, line: 641, baseType: !218, size: 64, offset: 10432)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !13}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !15, file: !16, line: 646, baseType: !223, size: 192, offset: 10496)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !16, line: 291, size: 192, elements: !224)
!224 = !{!225, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !223, file: !16, line: 293, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !223, file: !16, line: 294, baseType: !13, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !223, file: !16, line: 295, baseType: !20, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !15, file: !16, line: 648, baseType: !230, size: 4224, offset: 10688)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 4224, elements: !67)
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 58, baseType: !233)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!235 = !{!236, !237, !238, !239, !240, !241, !254}
!236 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !1, line: 34, type: !14)
!237 = !DILocalVariable(name: "str", arg: 2, scope: !10, file: !1, line: 34, type: !231)
!238 = !DILocalVariable(name: "size", arg: 3, scope: !10, file: !1, line: 34, type: !232)
!239 = !DILocalVariable(name: "fmt", arg: 4, scope: !10, file: !1, line: 34, type: !234)
!240 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 48, type: !13)
!241 = !DILocalVariable(name: "ap", scope: !10, file: !1, line: 49, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !243, line: 46, baseType: !244)
!243 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !245, line: 51, baseType: !246)
!245 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 49, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 192, elements: !71)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 49, size: 192, elements: !249)
!249 = !{!250, !251, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !248, file: !1, line: 49, baseType: !93, size: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !248, file: !1, line: 49, baseType: !93, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !248, file: !1, line: 49, baseType: !37, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !248, file: !1, line: 49, baseType: !37, size: 64, offset: 128)
!254 = !DILocalVariable(name: "f", scope: !10, file: !1, line: 50, type: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !243, line: 66, baseType: !21)
!256 = !DILocation(line: 34, column: 1, scope: !10)
!257 = !DILocation(line: 49, column: 3, scope: !10)
!258 = !DILocation(line: 49, column: 11, scope: !10)
!259 = !DILocation(line: 50, column: 3, scope: !10)
!260 = !DILocation(line: 52, column: 12, scope: !261)
!261 = distinct !DILexicalBlock(scope: !10, file: !1, line: 52, column: 7)
!262 = !DILocation(line: 52, column: 7, scope: !10)
!263 = !DILocation(line: 54, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 53, column: 5)
!265 = !DILocation(line: 54, column: 19, scope: !264)
!266 = !{!267, !268, i64 0}
!267 = !{!"_reent", !268, i64 0, !271, i64 8, !271, i64 16, !271, i64 24, !268, i64 32, !269, i64 36, !268, i64 64, !271, i64 72, !268, i64 80, !271, i64 88, !271, i64 96, !268, i64 104, !271, i64 112, !271, i64 120, !268, i64 128, !271, i64 136, !269, i64 144, !271, i64 504, !272, i64 512, !271, i64 1304, !274, i64 1312, !269, i64 1336}
!268 = !{!"int", !269, i64 0}
!269 = !{!"omnipotent char", !270, i64 0}
!270 = !{!"Simple C/C++ TBAA"}
!271 = !{!"any pointer", !269, i64 0}
!272 = !{!"_atexit", !271, i64 0, !268, i64 8, !269, i64 16, !273, i64 272}
!273 = !{!"_on_exit_args", !269, i64 0, !269, i64 256, !268, i64 512, !268, i64 516}
!274 = !{!"_glue", !271, i64 0, !268, i64 8, !271, i64 16}
!275 = !DILocation(line: 55, column: 7, scope: !264)
!276 = !DILocation(line: 57, column: 5, scope: !10)
!277 = !DILocation(line: 57, column: 12, scope: !10)
!278 = !{!279, !280, i64 16}
!279 = !{!"__sFILE", !271, i64 0, !268, i64 8, !268, i64 12, !280, i64 16, !280, i64 18, !281, i64 24, !268, i64 40, !271, i64 48, !271, i64 56, !271, i64 64, !271, i64 72, !271, i64 80, !281, i64 88, !271, i64 104, !268, i64 112, !269, i64 116, !269, i64 119, !281, i64 120, !268, i64 136, !282, i64 144, !271, i64 152, !268, i64 160, !283, i64 164, !268, i64 172}
!280 = !{!"short", !269, i64 0}
!281 = !{!"__sbuf", !271, i64 0, !268, i64 8}
!282 = !{!"long", !269, i64 0}
!283 = !{!"", !268, i64 0, !269, i64 4}
!284 = !DILocation(line: 58, column: 19, scope: !10)
!285 = !DILocation(line: 58, column: 22, scope: !10)
!286 = !{!279, !271, i64 0}
!287 = !DILocation(line: 58, column: 9, scope: !10)
!288 = !DILocation(line: 58, column: 15, scope: !10)
!289 = !{!279, !271, i64 24}
!290 = !DILocation(line: 59, column: 30, scope: !10)
!291 = !DILocation(line: 59, column: 41, scope: !10)
!292 = !DILocation(line: 59, column: 25, scope: !10)
!293 = !DILocation(line: 59, column: 24, scope: !10)
!294 = !DILocation(line: 59, column: 19, scope: !10)
!295 = !DILocation(line: 59, column: 22, scope: !10)
!296 = !{!279, !268, i64 12}
!297 = !DILocation(line: 59, column: 9, scope: !10)
!298 = !DILocation(line: 59, column: 15, scope: !10)
!299 = !{!279, !268, i64 32}
!300 = !DILocation(line: 60, column: 5, scope: !10)
!301 = !DILocation(line: 60, column: 11, scope: !10)
!302 = !{!279, !280, i64 18}
!303 = !DILocation(line: 62, column: 3, scope: !10)
!304 = !DILocation(line: 50, column: 8, scope: !10)
!305 = !DILocation(line: 66, column: 9, scope: !10)
!306 = !DILocation(line: 48, column: 7, scope: !10)
!307 = !DILocation(line: 67, column: 3, scope: !10)
!308 = !DILocation(line: 68, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !10, file: !1, line: 68, column: 7)
!310 = !DILocation(line: 68, column: 7, scope: !10)
!311 = !DILocation(line: 69, column: 10, scope: !309)
!312 = !DILocation(line: 69, column: 17, scope: !309)
!313 = !DILocation(line: 69, column: 5, scope: !309)
!314 = !DILocation(line: 70, column: 7, scope: !10)
!315 = !DILocation(line: 71, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !10, file: !1, line: 70, column: 7)
!317 = !DILocation(line: 71, column: 11, scope: !316)
!318 = !{!269, !269, i64 0}
!319 = !DILocation(line: 71, column: 5, scope: !316)
!320 = !DILocation(line: 0, scope: !10)
!321 = !DILocation(line: 73, column: 1, scope: !10)
!322 = distinct !DISubprogram(name: "snprintf", scope: !1, file: !1, line: 85, type: !323, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{!13, !231, !232, !234, null}
!325 = !{!326, !327, !328, !329, !330, !331, !332}
!326 = !DILocalVariable(name: "str", arg: 1, scope: !322, file: !1, line: 85, type: !231)
!327 = !DILocalVariable(name: "size", arg: 2, scope: !322, file: !1, line: 85, type: !232)
!328 = !DILocalVariable(name: "fmt", arg: 3, scope: !322, file: !1, line: 85, type: !234)
!329 = !DILocalVariable(name: "ret", scope: !322, file: !1, line: 97, type: !13)
!330 = !DILocalVariable(name: "ap", scope: !322, file: !1, line: 98, type: !242)
!331 = !DILocalVariable(name: "f", scope: !322, file: !1, line: 99, type: !255)
!332 = !DILocalVariable(name: "ptr", scope: !322, file: !1, line: 100, type: !14)
!333 = !DILocation(line: 85, column: 1, scope: !322)
!334 = !DILocation(line: 98, column: 3, scope: !322)
!335 = !DILocation(line: 98, column: 11, scope: !322)
!336 = !DILocation(line: 99, column: 3, scope: !322)
!337 = !DILocation(line: 100, column: 24, scope: !322)
!338 = !DILocation(line: 100, column: 18, scope: !322)
!339 = !DILocation(line: 102, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !322, file: !1, line: 102, column: 7)
!341 = !DILocation(line: 102, column: 7, scope: !322)
!342 = !DILocation(line: 104, column: 12, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 103, column: 5)
!344 = !DILocation(line: 104, column: 19, scope: !343)
!345 = !DILocation(line: 105, column: 7, scope: !343)
!346 = !DILocation(line: 107, column: 5, scope: !322)
!347 = !DILocation(line: 107, column: 12, scope: !322)
!348 = !DILocation(line: 108, column: 19, scope: !322)
!349 = !DILocation(line: 108, column: 22, scope: !322)
!350 = !DILocation(line: 108, column: 9, scope: !322)
!351 = !DILocation(line: 108, column: 15, scope: !322)
!352 = !DILocation(line: 109, column: 30, scope: !322)
!353 = !DILocation(line: 109, column: 41, scope: !322)
!354 = !DILocation(line: 109, column: 25, scope: !322)
!355 = !DILocation(line: 109, column: 24, scope: !322)
!356 = !DILocation(line: 109, column: 19, scope: !322)
!357 = !DILocation(line: 109, column: 22, scope: !322)
!358 = !DILocation(line: 109, column: 9, scope: !322)
!359 = !DILocation(line: 109, column: 15, scope: !322)
!360 = !DILocation(line: 110, column: 5, scope: !322)
!361 = !DILocation(line: 110, column: 11, scope: !322)
!362 = !DILocation(line: 112, column: 3, scope: !322)
!363 = !DILocation(line: 99, column: 8, scope: !322)
!364 = !DILocation(line: 116, column: 9, scope: !322)
!365 = !DILocation(line: 97, column: 7, scope: !322)
!366 = !DILocation(line: 117, column: 3, scope: !322)
!367 = !DILocation(line: 118, column: 11, scope: !368)
!368 = distinct !DILexicalBlock(scope: !322, file: !1, line: 118, column: 7)
!369 = !DILocation(line: 118, column: 7, scope: !322)
!370 = !DILocation(line: 119, column: 10, scope: !368)
!371 = !DILocation(line: 119, column: 17, scope: !368)
!372 = !DILocation(line: 119, column: 5, scope: !368)
!373 = !DILocation(line: 120, column: 7, scope: !322)
!374 = !DILocation(line: 121, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !322, file: !1, line: 120, column: 7)
!376 = !DILocation(line: 121, column: 11, scope: !375)
!377 = !DILocation(line: 121, column: 5, scope: !375)
!378 = !DILocation(line: 0, scope: !322)
!379 = !DILocation(line: 123, column: 1, scope: !322)
