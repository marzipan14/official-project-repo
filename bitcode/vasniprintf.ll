; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasniprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasniprintf.c"
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
define dso_local i8* @_vasniprintf_r(%struct._reent*, i8*, i64* nocapture, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !12 {
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast %struct.__sFILE* %6 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #4, !dbg !253
  %8 = load i64, i64* %2, align 8, !dbg !254, !tbaa !255
  %9 = icmp ne i8* %1, null, !dbg !260
  %10 = icmp ne i64 %8, 0, !dbg !262
  %11 = and i1 %9, %10, !dbg !263
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !264
  %13 = select i1 %11, i16 1544, i16 648, !dbg !266
  %14 = select i1 %11, i8* %1, i8* null, !dbg !266
  %15 = select i1 %11, i64 %8, i64 0, !dbg !266
  store i16 %13, i16* %12, align 8, !dbg !268, !tbaa !269
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !276
  store i8* %14, i8** %16, align 8, !dbg !277, !tbaa !278
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !279
  store i8* %14, i8** %17, align 8, !dbg !280, !tbaa !281
  %18 = icmp ugt i64 %15, 2147483647, !dbg !282
  br i1 %18, label %19, label %21, !dbg !284

; <label>:19:                                     ; preds = %5
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !285
  store i32 139, i32* %20, align 8, !dbg !287, !tbaa !288
  br label %32, !dbg !293

; <label>:21:                                     ; preds = %5
  %22 = trunc i64 %15 to i32, !dbg !294
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !295
  store i32 %22, i32* %23, align 4, !dbg !296, !tbaa !297
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !298
  store i32 %22, i32* %24, align 8, !dbg !299, !tbaa !300
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !301
  store i16 -1, i16* %25, align 2, !dbg !302, !tbaa !303
  %26 = call i32 @_svfiprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* %4) #5, !dbg !305
  %27 = icmp slt i32 %26, 0, !dbg !307
  br i1 %27, label %32, label %28, !dbg !309

; <label>:28:                                     ; preds = %21
  %29 = sext i32 %26 to i64, !dbg !310
  store i64 %29, i64* %2, align 8, !dbg !311, !tbaa !255
  %30 = load i8*, i8** %16, align 8, !dbg !312, !tbaa !278
  store i8 0, i8* %30, align 1, !dbg !313, !tbaa !314
  %31 = load i8*, i8** %17, align 8, !dbg !315, !tbaa !281
  br label %32, !dbg !316

; <label>:32:                                     ; preds = %21, %28, %19
  %33 = phi i8* [ null, %19 ], [ %31, %28 ], [ null, %21 ], !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret i8* %33, !dbg !318
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @_svfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @vasniprintf(i8*, i64* nocapture, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !319 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = tail call %struct._reent* @__getreent() #5, !dbg !328
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !331
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #4, !dbg !331
  %8 = load i64, i64* %1, align 8, !dbg !332, !tbaa !255
  %9 = icmp ne i8* %0, null, !dbg !334
  %10 = icmp ne i64 %8, 0, !dbg !335
  %11 = and i1 %9, %10, !dbg !336
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !337
  %13 = select i1 %11, i16 1544, i16 648, !dbg !338
  %14 = select i1 %11, i8* %0, i8* null, !dbg !338
  %15 = select i1 %11, i64 %8, i64 0, !dbg !338
  store i16 %13, i16* %12, align 8, !dbg !339, !tbaa !269
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !340
  store i8* %14, i8** %16, align 8, !dbg !341, !tbaa !278
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !342
  store i8* %14, i8** %17, align 8, !dbg !343, !tbaa !281
  %18 = icmp ugt i64 %15, 2147483647, !dbg !344
  br i1 %18, label %19, label %21, !dbg !345

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 0, !dbg !346
  store i32 139, i32* %20, align 8, !dbg !347, !tbaa !288
  br label %32, !dbg !348

; <label>:21:                                     ; preds = %4
  %22 = trunc i64 %15 to i32, !dbg !349
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !350
  store i32 %22, i32* %23, align 4, !dbg !351, !tbaa !297
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !352
  store i32 %22, i32* %24, align 8, !dbg !353, !tbaa !300
  %25 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !354
  store i16 -1, i16* %25, align 2, !dbg !355, !tbaa !303
  %26 = call i32 @_svfiprintf_r(%struct._reent* %6, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #5, !dbg !357
  %27 = icmp slt i32 %26, 0, !dbg !359
  br i1 %27, label %32, label %28, !dbg !360

; <label>:28:                                     ; preds = %21
  %29 = sext i32 %26 to i64, !dbg !361
  store i64 %29, i64* %1, align 8, !dbg !362, !tbaa !255
  %30 = load i8*, i8** %16, align 8, !dbg !363, !tbaa !278
  store i8 0, i8* %30, align 1, !dbg !364, !tbaa !314
  %31 = load i8*, i8** %17, align 8, !dbg !365, !tbaa !281
  br label %32, !dbg !366

; <label>:32:                                     ; preds = %19, %21, %28
  %33 = phi i8* [ null, %19 ], [ %31, %28 ], [ null, %21 ], !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  ret i8* %33, !dbg !369
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasniprintf.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "_vasniprintf_r", scope: !1, file: !1, line: 17, type: !13, isLocal: false, isDefinition: true, scopeLine: 23, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !241)
!13 = !DISubroutineType(types: !14)
!14 = !{!6, !15, !6, !231, !51, !234}
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
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !235, file: !1, baseType: !93, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !235, file: !1, baseType: !93, size: 32, offset: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !235, file: !1, baseType: !39, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !235, file: !1, baseType: !39, size: 64, offset: 128)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !251}
!242 = !DILocalVariable(name: "ptr", arg: 1, scope: !12, file: !1, line: 17, type: !15)
!243 = !DILocalVariable(name: "buf", arg: 2, scope: !12, file: !1, line: 17, type: !6)
!244 = !DILocalVariable(name: "lenp", arg: 3, scope: !12, file: !1, line: 17, type: !231)
!245 = !DILocalVariable(name: "fmt", arg: 4, scope: !12, file: !1, line: 17, type: !51)
!246 = !DILocalVariable(name: "ap", arg: 5, scope: !12, file: !1, line: 17, type: !234)
!247 = !DILocalVariable(name: "ret", scope: !12, file: !1, line: 24, type: !20)
!248 = !DILocalVariable(name: "f", scope: !12, file: !1, line: 25, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !250, line: 66, baseType: !23)
!250 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!251 = !DILocalVariable(name: "len", scope: !12, file: !1, line: 26, type: !232)
!252 = !DILocation(line: 17, column: 1, scope: !12)
!253 = !DILocation(line: 25, column: 3, scope: !12)
!254 = !DILocation(line: 26, column: 16, scope: !12)
!255 = !{!256, !256, i64 0}
!256 = !{!"long", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C/C++ TBAA"}
!259 = !DILocation(line: 26, column: 10, scope: !12)
!260 = !DILocation(line: 28, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !12, file: !1, line: 28, column: 7)
!262 = !DILocation(line: 28, column: 14, scope: !261)
!263 = !DILocation(line: 28, column: 11, scope: !261)
!264 = !DILocation(line: 0, scope: !265)
!265 = distinct !DILexicalBlock(scope: !261, file: !1, line: 34, column: 5)
!266 = !DILocation(line: 32, column: 5, scope: !267)
!267 = distinct !DILexicalBlock(scope: !261, file: !1, line: 29, column: 5)
!268 = !DILocation(line: 0, scope: !267)
!269 = !{!270, !273, i64 16}
!270 = !{!"__sFILE", !271, i64 0, !272, i64 8, !272, i64 12, !273, i64 16, !273, i64 18, !274, i64 24, !272, i64 40, !271, i64 48, !271, i64 56, !271, i64 64, !271, i64 72, !271, i64 80, !274, i64 88, !271, i64 104, !272, i64 112, !257, i64 116, !257, i64 119, !274, i64 120, !272, i64 136, !256, i64 144, !271, i64 152, !272, i64 160, !275, i64 164, !272, i64 172}
!271 = !{!"any pointer", !257, i64 0}
!272 = !{!"int", !257, i64 0}
!273 = !{!"short", !257, i64 0}
!274 = !{!"__sbuf", !271, i64 0, !272, i64 8}
!275 = !{!"", !272, i64 0, !257, i64 4}
!276 = !DILocation(line: 40, column: 19, scope: !12)
!277 = !DILocation(line: 40, column: 22, scope: !12)
!278 = !{!270, !271, i64 0}
!279 = !DILocation(line: 40, column: 9, scope: !12)
!280 = !DILocation(line: 40, column: 15, scope: !12)
!281 = !{!270, !271, i64 24}
!282 = !DILocation(line: 44, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !12, file: !1, line: 44, column: 7)
!284 = !DILocation(line: 44, column: 7, scope: !12)
!285 = !DILocation(line: 46, column: 12, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !1, line: 45, column: 5)
!287 = !DILocation(line: 46, column: 19, scope: !286)
!288 = !{!289, !272, i64 0}
!289 = !{!"_reent", !272, i64 0, !271, i64 8, !271, i64 16, !271, i64 24, !272, i64 32, !257, i64 36, !272, i64 64, !271, i64 72, !272, i64 80, !271, i64 88, !271, i64 96, !272, i64 104, !271, i64 112, !271, i64 120, !272, i64 128, !271, i64 136, !257, i64 144, !271, i64 504, !290, i64 512, !271, i64 1304, !292, i64 1312, !257, i64 1336}
!290 = !{!"_atexit", !271, i64 0, !272, i64 8, !257, i64 16, !291, i64 272}
!291 = !{!"_on_exit_args", !257, i64 0, !257, i64 256, !272, i64 512, !272, i64 516}
!292 = !{!"_glue", !271, i64 0, !272, i64 8, !271, i64 16}
!293 = !DILocation(line: 47, column: 7, scope: !286)
!294 = !DILocation(line: 49, column: 24, scope: !12)
!295 = !DILocation(line: 49, column: 19, scope: !12)
!296 = !DILocation(line: 49, column: 22, scope: !12)
!297 = !{!270, !272, i64 12}
!298 = !DILocation(line: 49, column: 9, scope: !12)
!299 = !DILocation(line: 49, column: 15, scope: !12)
!300 = !{!270, !272, i64 32}
!301 = !DILocation(line: 50, column: 5, scope: !12)
!302 = !DILocation(line: 50, column: 11, scope: !12)
!303 = !{!270, !273, i64 18}
!304 = !DILocation(line: 25, column: 8, scope: !12)
!305 = !DILocation(line: 51, column: 9, scope: !12)
!306 = !DILocation(line: 24, column: 7, scope: !12)
!307 = !DILocation(line: 52, column: 11, scope: !308)
!308 = distinct !DILexicalBlock(scope: !12, file: !1, line: 52, column: 7)
!309 = !DILocation(line: 52, column: 7, scope: !12)
!310 = !DILocation(line: 54, column: 11, scope: !12)
!311 = !DILocation(line: 54, column: 9, scope: !12)
!312 = !DILocation(line: 55, column: 6, scope: !12)
!313 = !DILocation(line: 55, column: 9, scope: !12)
!314 = !{!257, !257, i64 0}
!315 = !DILocation(line: 56, column: 25, scope: !12)
!316 = !DILocation(line: 56, column: 3, scope: !12)
!317 = !DILocation(line: 0, scope: !12)
!318 = !DILocation(line: 57, column: 1, scope: !12)
!319 = distinct !DISubprogram(name: "vasniprintf", scope: !1, file: !1, line: 62, type: !320, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !322)
!320 = !DISubroutineType(types: !321)
!321 = !{!6, !6, !231, !51, !234}
!322 = !{!323, !324, !325, !326}
!323 = !DILocalVariable(name: "buf", arg: 1, scope: !319, file: !1, line: 62, type: !6)
!324 = !DILocalVariable(name: "lenp", arg: 2, scope: !319, file: !1, line: 62, type: !231)
!325 = !DILocalVariable(name: "fmt", arg: 3, scope: !319, file: !1, line: 62, type: !51)
!326 = !DILocalVariable(name: "ap", arg: 4, scope: !319, file: !1, line: 62, type: !234)
!327 = !DILocation(line: 62, column: 1, scope: !319)
!328 = !DILocation(line: 68, column: 26, scope: !319)
!329 = !DILocation(line: 17, column: 1, scope: !12, inlinedAt: !330)
!330 = distinct !DILocation(line: 68, column: 10, scope: !319)
!331 = !DILocation(line: 25, column: 3, scope: !12, inlinedAt: !330)
!332 = !DILocation(line: 26, column: 16, scope: !12, inlinedAt: !330)
!333 = !DILocation(line: 26, column: 10, scope: !12, inlinedAt: !330)
!334 = !DILocation(line: 28, column: 7, scope: !261, inlinedAt: !330)
!335 = !DILocation(line: 28, column: 14, scope: !261, inlinedAt: !330)
!336 = !DILocation(line: 28, column: 11, scope: !261, inlinedAt: !330)
!337 = !DILocation(line: 0, scope: !265, inlinedAt: !330)
!338 = !DILocation(line: 32, column: 5, scope: !267, inlinedAt: !330)
!339 = !DILocation(line: 0, scope: !267, inlinedAt: !330)
!340 = !DILocation(line: 40, column: 19, scope: !12, inlinedAt: !330)
!341 = !DILocation(line: 40, column: 22, scope: !12, inlinedAt: !330)
!342 = !DILocation(line: 40, column: 9, scope: !12, inlinedAt: !330)
!343 = !DILocation(line: 40, column: 15, scope: !12, inlinedAt: !330)
!344 = !DILocation(line: 44, column: 11, scope: !283, inlinedAt: !330)
!345 = !DILocation(line: 44, column: 7, scope: !12, inlinedAt: !330)
!346 = !DILocation(line: 46, column: 12, scope: !286, inlinedAt: !330)
!347 = !DILocation(line: 46, column: 19, scope: !286, inlinedAt: !330)
!348 = !DILocation(line: 47, column: 7, scope: !286, inlinedAt: !330)
!349 = !DILocation(line: 49, column: 24, scope: !12, inlinedAt: !330)
!350 = !DILocation(line: 49, column: 19, scope: !12, inlinedAt: !330)
!351 = !DILocation(line: 49, column: 22, scope: !12, inlinedAt: !330)
!352 = !DILocation(line: 49, column: 9, scope: !12, inlinedAt: !330)
!353 = !DILocation(line: 49, column: 15, scope: !12, inlinedAt: !330)
!354 = !DILocation(line: 50, column: 5, scope: !12, inlinedAt: !330)
!355 = !DILocation(line: 50, column: 11, scope: !12, inlinedAt: !330)
!356 = !DILocation(line: 25, column: 8, scope: !12, inlinedAt: !330)
!357 = !DILocation(line: 51, column: 9, scope: !12, inlinedAt: !330)
!358 = !DILocation(line: 24, column: 7, scope: !12, inlinedAt: !330)
!359 = !DILocation(line: 52, column: 11, scope: !308, inlinedAt: !330)
!360 = !DILocation(line: 52, column: 7, scope: !12, inlinedAt: !330)
!361 = !DILocation(line: 54, column: 11, scope: !12, inlinedAt: !330)
!362 = !DILocation(line: 54, column: 9, scope: !12, inlinedAt: !330)
!363 = !DILocation(line: 55, column: 6, scope: !12, inlinedAt: !330)
!364 = !DILocation(line: 55, column: 9, scope: !12, inlinedAt: !330)
!365 = !DILocation(line: 56, column: 25, scope: !12, inlinedAt: !330)
!366 = !DILocation(line: 56, column: 3, scope: !12, inlinedAt: !330)
!367 = !DILocation(line: 0, scope: !12, inlinedAt: !330)
!368 = !DILocation(line: 57, column: 1, scope: !12, inlinedAt: !330)
!369 = !DILocation(line: 68, column: 3, scope: !319)
