; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asprintf.c"
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
define dso_local i32 @_asprintf_r(%struct._reent*, i8** noalias nocapture, i8* noalias, ...) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !255
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #3, !dbg !255
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !257
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #3, !dbg !257
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !258
  store i16 648, i16* %8, align 8, !dbg !259, !tbaa !260
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !270
  store i8* null, i8** %9, align 8, !dbg !271, !tbaa !272
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !273
  store i8* null, i8** %10, align 8, !dbg !274, !tbaa !275
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !276
  store i32 0, i32* %11, align 4, !dbg !277, !tbaa !278
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !279
  store i32 0, i32* %12, align 8, !dbg !280, !tbaa !281
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !282
  store i16 -1, i16* %13, align 2, !dbg !283, !tbaa !284
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !285
  call void @llvm.va_start(i8* nonnull %6), !dbg !285
  %15 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %14) #5, !dbg !287
  call void @llvm.va_end(i8* nonnull %6), !dbg !289
  %16 = icmp sgt i32 %15, -1, !dbg !290
  br i1 %16, label %17, label %22, !dbg !292

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %9, align 8, !dbg !293, !tbaa !272
  store i8 0, i8* %18, align 1, !dbg !295, !tbaa !296
  %19 = bitcast i8** %10 to i64*, !dbg !297
  %20 = load i64, i64* %19, align 8, !dbg !297, !tbaa !275
  %21 = bitcast i8** %1 to i64*, !dbg !298
  store i64 %20, i64* %21, align 8, !dbg !298, !tbaa !299
  br label %22, !dbg !300

; <label>:22:                                     ; preds = %17, %3
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #3, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #3, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  ret i32 %15, !dbg !302
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
define dso_local i32 @asprintf(i8** noalias nocapture, i8* noalias, ...) local_unnamed_addr #0 !dbg !303 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.__sFILE, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !313
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #3, !dbg !313
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !315
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #3, !dbg !315
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !316
  store i16 648, i16* %7, align 8, !dbg !317, !tbaa !260
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !318
  store i8* null, i8** %8, align 8, !dbg !319, !tbaa !272
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !320
  store i8* null, i8** %9, align 8, !dbg !321, !tbaa !275
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2, !dbg !322
  store i32 0, i32* %10, align 4, !dbg !323, !tbaa !278
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !324
  store i32 0, i32* %11, align 8, !dbg !325, !tbaa !281
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !326
  store i16 -1, i16* %12, align 2, !dbg !327, !tbaa !284
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !328
  call void @llvm.va_start(i8* nonnull %5), !dbg !328
  %14 = call %struct._reent* @__getreent() #5, !dbg !329
  %15 = call i32 @_svfprintf_r(%struct._reent* %14, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* nonnull %13) #5, !dbg !331
  call void @llvm.va_end(i8* nonnull %5), !dbg !333
  %16 = icmp sgt i32 %15, -1, !dbg !334
  br i1 %16, label %17, label %22, !dbg !336

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %8, align 8, !dbg !337, !tbaa !272
  store i8 0, i8* %18, align 1, !dbg !339, !tbaa !296
  %19 = bitcast i8** %9 to i64*, !dbg !340
  %20 = load i64, i64* %19, align 8, !dbg !340, !tbaa !275
  %21 = bitcast i8** %0 to i64*, !dbg !341
  store i64 %20, i64* %21, align 8, !dbg !341, !tbaa !299
  br label %22, !dbg !342

; <label>:22:                                     ; preds = %17, %2
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #3, !dbg !343
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #3, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  ret i32 %15, !dbg !344
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/asprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "_asprintf_r", scope: !1, file: !1, line: 28, type: !11, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !234)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !231, !233, null}
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
!23 = !{!24, !27, !28, !29, !31, !32, !37, !38, !40, !47, !53, !58, !62, !63, !64, !65, !69, !73, !74, !75, !77, !78, !82, !98}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !22, file: !16, line: 182, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !22, file: !16, line: 184, baseType: !13, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !22, file: !16, line: 185, baseType: !30, size: 16, offset: 128)
!30 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !22, file: !16, line: 186, baseType: !30, size: 16, offset: 144)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !22, file: !16, line: 187, baseType: !33, size: 128, offset: 192)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !16, line: 117, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !33, file: !16, line: 118, baseType: !25, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !33, file: !16, line: 119, baseType: !13, size: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !22, file: !16, line: 195, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !22, file: !16, line: 197, baseType: !41, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !14, !39, !4, !13}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !45, line: 145, baseType: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !22, file: !16, line: 199, baseType: !48, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!44, !14, !39, !51, !13}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !22, file: !16, line: 202, baseType: !54, size: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!57, !14, !39, !57, !13}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !45, line: 114, baseType: !46)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !22, file: !16, line: 203, baseType: !59, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!13, !14, !39}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !22, file: !16, line: 206, baseType: !33, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !22, file: !16, line: 207, baseType: !25, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !22, file: !16, line: 208, baseType: !13, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !22, file: !16, line: 211, baseType: !66, size: 24, offset: 928)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 24, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 3)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !22, file: !16, line: 212, baseType: !70, size: 8, offset: 952)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 8, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 1)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !22, file: !16, line: 215, baseType: !33, size: 128, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !22, file: !16, line: 219, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !45, line: 44, baseType: !46)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !22, file: !16, line: 222, baseType: !14, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !22, file: !16, line: 226, baseType: !79, size: 32, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !45, line: 175, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !81, line: 12, baseType: !13)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !22, file: !16, line: 228, baseType: !83, size: 64, offset: 1312)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !45, line: 171, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 163, size: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !84, file: !45, line: 165, baseType: !13, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !84, file: !45, line: 170, baseType: !88, size: 32, offset: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !45, line: 166, size: 32, elements: !89)
!89 = !{!90, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !88, file: !45, line: 168, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !92, line: 124, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !88, file: !45, line: 169, baseType: !95, size: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 32, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 4)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 1376)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !15, file: !16, line: 576, baseType: !20, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !15, file: !16, line: 578, baseType: !13, size: 32, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !15, file: !16, line: 579, baseType: !103, size: 200, offset: 288)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !104)
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
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !15, file: !16, line: 597, baseType: !4, size: 64, offset: 1088)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !15, file: !16, line: 632, baseType: !134, size: 2880, offset: 1152)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !15, file: !16, line: 599, size: 2880, elements: !135)
!135 = !{!136, !186}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !134, file: !16, line: 622, baseType: !137, size: 1728)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !134, file: !16, line: 601, size: 1728, elements: !138)
!138 = !{!139, !140, !141, !145, !157, !158, !160, !168, !169, !170, !171, !175, !179, !180, !181, !182, !183, !184, !185}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !137, file: !16, line: 603, baseType: !93, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !137, file: !16, line: 604, baseType: !4, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !137, file: !16, line: 605, baseType: !142, size: 208, offset: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !143)
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
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !137, file: !16, line: 614, baseType: !176, size: 192, offset: 1152)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !177)
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
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1920, elements: !191)
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
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !206)
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
!231 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!234 = !{!235, !236, !237, !238, !239, !252}
!235 = !DILocalVariable(name: "ptr", arg: 1, scope: !10, file: !1, line: 28, type: !14)
!236 = !DILocalVariable(name: "strp", arg: 2, scope: !10, file: !1, line: 28, type: !231)
!237 = !DILocalVariable(name: "fmt", arg: 3, scope: !10, file: !1, line: 28, type: !233)
!238 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 33, type: !13)
!239 = !DILocalVariable(name: "ap", scope: !10, file: !1, line: 34, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !241, line: 46, baseType: !242)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !243, line: 51, baseType: !244)
!243 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 34, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 192, elements: !71)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 34, size: 192, elements: !247)
!247 = !{!248, !249, !250, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !246, file: !1, line: 34, baseType: !93, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !246, file: !1, line: 34, baseType: !93, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !246, file: !1, line: 34, baseType: !39, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !246, file: !1, line: 34, baseType: !39, size: 64, offset: 128)
!252 = !DILocalVariable(name: "f", scope: !10, file: !1, line: 35, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !241, line: 66, baseType: !21)
!254 = !DILocation(line: 28, column: 1, scope: !10)
!255 = !DILocation(line: 34, column: 3, scope: !10)
!256 = !DILocation(line: 34, column: 11, scope: !10)
!257 = !DILocation(line: 35, column: 3, scope: !10)
!258 = !DILocation(line: 38, column: 5, scope: !10)
!259 = !DILocation(line: 38, column: 12, scope: !10)
!260 = !{!261, !266, i64 16}
!261 = !{!"__sFILE", !262, i64 0, !265, i64 8, !265, i64 12, !266, i64 16, !266, i64 18, !267, i64 24, !265, i64 40, !262, i64 48, !262, i64 56, !262, i64 64, !262, i64 72, !262, i64 80, !267, i64 88, !262, i64 104, !265, i64 112, !263, i64 116, !263, i64 119, !267, i64 120, !265, i64 136, !268, i64 144, !262, i64 152, !265, i64 160, !269, i64 164, !265, i64 172}
!262 = !{!"any pointer", !263, i64 0}
!263 = !{!"omnipotent char", !264, i64 0}
!264 = !{!"Simple C/C++ TBAA"}
!265 = !{!"int", !263, i64 0}
!266 = !{!"short", !263, i64 0}
!267 = !{!"__sbuf", !262, i64 0, !265, i64 8}
!268 = !{!"long", !263, i64 0}
!269 = !{!"", !265, i64 0, !263, i64 4}
!270 = !DILocation(line: 39, column: 19, scope: !10)
!271 = !DILocation(line: 39, column: 22, scope: !10)
!272 = !{!261, !262, i64 0}
!273 = !DILocation(line: 39, column: 9, scope: !10)
!274 = !DILocation(line: 39, column: 15, scope: !10)
!275 = !{!261, !262, i64 24}
!276 = !DILocation(line: 40, column: 19, scope: !10)
!277 = !DILocation(line: 40, column: 22, scope: !10)
!278 = !{!261, !265, i64 12}
!279 = !DILocation(line: 40, column: 9, scope: !10)
!280 = !DILocation(line: 40, column: 15, scope: !10)
!281 = !{!261, !265, i64 32}
!282 = !DILocation(line: 41, column: 5, scope: !10)
!283 = !DILocation(line: 41, column: 11, scope: !10)
!284 = !{!261, !266, i64 18}
!285 = !DILocation(line: 42, column: 3, scope: !10)
!286 = !DILocation(line: 35, column: 8, scope: !10)
!287 = !DILocation(line: 43, column: 9, scope: !10)
!288 = !DILocation(line: 33, column: 7, scope: !10)
!289 = !DILocation(line: 44, column: 3, scope: !10)
!290 = !DILocation(line: 45, column: 11, scope: !291)
!291 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 7)
!292 = !DILocation(line: 45, column: 7, scope: !10)
!293 = !DILocation(line: 47, column: 10, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 46, column: 5)
!295 = !DILocation(line: 47, column: 13, scope: !294)
!296 = !{!263, !263, i64 0}
!297 = !DILocation(line: 48, column: 30, scope: !294)
!298 = !DILocation(line: 48, column: 13, scope: !294)
!299 = !{!262, !262, i64 0}
!300 = !DILocation(line: 49, column: 5, scope: !294)
!301 = !DILocation(line: 51, column: 1, scope: !10)
!302 = !DILocation(line: 50, column: 3, scope: !10)
!303 = distinct !DISubprogram(name: "asprintf", scope: !1, file: !1, line: 62, type: !304, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!13, !231, !233, null}
!306 = !{!307, !308, !309, !310, !311}
!307 = !DILocalVariable(name: "strp", arg: 1, scope: !303, file: !1, line: 62, type: !231)
!308 = !DILocalVariable(name: "fmt", arg: 2, scope: !303, file: !1, line: 62, type: !233)
!309 = !DILocalVariable(name: "ret", scope: !303, file: !1, line: 66, type: !13)
!310 = !DILocalVariable(name: "ap", scope: !303, file: !1, line: 67, type: !240)
!311 = !DILocalVariable(name: "f", scope: !303, file: !1, line: 68, type: !253)
!312 = !DILocation(line: 62, column: 1, scope: !303)
!313 = !DILocation(line: 67, column: 3, scope: !303)
!314 = !DILocation(line: 67, column: 11, scope: !303)
!315 = !DILocation(line: 68, column: 3, scope: !303)
!316 = !DILocation(line: 71, column: 5, scope: !303)
!317 = !DILocation(line: 71, column: 12, scope: !303)
!318 = !DILocation(line: 72, column: 19, scope: !303)
!319 = !DILocation(line: 72, column: 22, scope: !303)
!320 = !DILocation(line: 72, column: 9, scope: !303)
!321 = !DILocation(line: 72, column: 15, scope: !303)
!322 = !DILocation(line: 73, column: 19, scope: !303)
!323 = !DILocation(line: 73, column: 22, scope: !303)
!324 = !DILocation(line: 73, column: 9, scope: !303)
!325 = !DILocation(line: 73, column: 15, scope: !303)
!326 = !DILocation(line: 74, column: 5, scope: !303)
!327 = !DILocation(line: 74, column: 11, scope: !303)
!328 = !DILocation(line: 75, column: 3, scope: !303)
!329 = !DILocation(line: 76, column: 23, scope: !303)
!330 = !DILocation(line: 68, column: 8, scope: !303)
!331 = !DILocation(line: 76, column: 9, scope: !303)
!332 = !DILocation(line: 66, column: 7, scope: !303)
!333 = !DILocation(line: 77, column: 3, scope: !303)
!334 = !DILocation(line: 78, column: 11, scope: !335)
!335 = distinct !DILexicalBlock(scope: !303, file: !1, line: 78, column: 7)
!336 = !DILocation(line: 78, column: 7, scope: !303)
!337 = !DILocation(line: 80, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !1, line: 79, column: 5)
!339 = !DILocation(line: 80, column: 13, scope: !338)
!340 = !DILocation(line: 81, column: 30, scope: !338)
!341 = !DILocation(line: 81, column: 13, scope: !338)
!342 = !DILocation(line: 82, column: 5, scope: !338)
!343 = !DILocation(line: 84, column: 1, scope: !303)
!344 = !DILocation(line: 83, column: 3, scope: !303)
