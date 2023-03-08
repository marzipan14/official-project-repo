; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swscanf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @swscanf(i32* noalias, i32* noalias, ...) local_unnamed_addr #0 !dbg !10 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.__sFILE, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !256
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !258
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #4, !dbg !258
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !259
  store i16 516, i16* %7, align 8, !dbg !260, !tbaa !261
  %8 = bitcast %struct.__sFILE* %4 to i32**, !dbg !271
  store i32* %0, i32** %8, align 8, !dbg !271, !tbaa !272
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, !dbg !273
  %10 = bitcast %struct.__sbuf* %9 to i32**, !dbg !274
  store i32* %0, i32** %10, align 8, !dbg !274, !tbaa !275
  %11 = tail call i64 @wcslen(i32* %0) #5, !dbg !276
  %12 = trunc i64 %11 to i32, !dbg !276
  %13 = shl i32 %12, 2, !dbg !276
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !277
  store i32 %13, i32* %14, align 8, !dbg !278, !tbaa !279
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !280
  store i32 %13, i32* %15, align 8, !dbg !281, !tbaa !282
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 8, !dbg !283
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %16, align 8, !dbg !284, !tbaa !285
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !286
  store i8* null, i8** %17, align 8, !dbg !287, !tbaa !288
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 17, i32 0, !dbg !289
  store i8* null, i8** %18, align 8, !dbg !290, !tbaa !291
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !292
  store i16 -1, i16* %19, align 2, !dbg !293, !tbaa !294
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !295
  call void @llvm.va_start(i8* nonnull %5), !dbg !295
  %21 = call %struct._reent* @__getreent() #5, !dbg !296
  %22 = call i32 @__ssvfwscanf_r(%struct._reent* %21, %struct.__sFILE* nonnull %4, i32* %1, %struct.__va_list_tag* nonnull %20) #5, !dbg !298
  call void @llvm.va_end(i8* nonnull %5), !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #4, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !301
  ret i32 %22, !dbg !302
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i64 @wcslen(i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @__seofread(%struct._reent*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @__ssvfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_swscanf_r(%struct._reent*, i32*, i32*, ...) local_unnamed_addr #0 !dbg !303 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !316
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !316
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !318
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #4, !dbg !318
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !319
  store i16 516, i16* %8, align 8, !dbg !320, !tbaa !261
  %9 = bitcast %struct.__sFILE* %5 to i32**, !dbg !321
  store i32* %1, i32** %9, align 8, !dbg !321, !tbaa !272
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, !dbg !322
  %11 = bitcast %struct.__sbuf* %10 to i32**, !dbg !323
  store i32* %1, i32** %11, align 8, !dbg !323, !tbaa !275
  %12 = tail call i64 @wcslen(i32* %1) #5, !dbg !324
  %13 = trunc i64 %12 to i32, !dbg !324
  %14 = shl i32 %13, 2, !dbg !324
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 1, !dbg !325
  store i32 %14, i32* %15, align 8, !dbg !326, !tbaa !279
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !327
  store i32 %14, i32* %16, align 8, !dbg !328, !tbaa !282
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 8, !dbg !329
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %17, align 8, !dbg !330, !tbaa !285
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 12, i32 0, !dbg !331
  store i8* null, i8** %18, align 8, !dbg !332, !tbaa !288
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 17, i32 0, !dbg !333
  store i8* null, i8** %19, align 8, !dbg !334, !tbaa !291
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !335
  store i16 -1, i16* %20, align 2, !dbg !336, !tbaa !294
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !337
  call void @llvm.va_start(i8* nonnull %6), !dbg !337
  %22 = call i32 @__ssvfwscanf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i32* %2, %struct.__va_list_tag* nonnull %21) #5, !dbg !339
  call void @llvm.va_end(i8* nonnull %6), !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #4, !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !342
  ret i32 %22, !dbg !343
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/swscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "swscanf", scope: !1, file: !1, line: 448, type: !11, isLocal: false, isDefinition: true, scopeLine: 449, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14, null}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !18, line: 83, baseType: !13)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21, !22, !23, !40}
!20 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 448, type: !14)
!21 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 448, type: !14)
!22 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 450, type: !13)
!23 = !DILocalVariable(name: "ap", scope: !10, file: !1, line: 451, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !27, line: 51, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 451, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 192, elements: !38)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 451, size: 192, elements: !31)
!31 = !{!32, !34, !35, !37}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !30, file: !1, line: 451, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !30, file: !1, line: 451, baseType: !33, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !30, file: !1, line: 451, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !30, file: !1, line: 451, baseType: !36, size: 64, offset: 128)
!38 = !{!39}
!39 = !DISubrange(count: 1)
!40 = !DILocalVariable(name: "f", scope: !10, file: !1, line: 452, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !25, line: 66, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !43, line: 287, baseType: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !43, line: 181, size: 1408, elements: !45)
!45 = !{!46, !47, !48, !49, !51, !52, !57, !58, !59, !221, !227, !232, !236, !237, !238, !239, !241, !243, !244, !245, !247, !248, !252, !253}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !43, line: 182, baseType: !4, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !43, line: 183, baseType: !13, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !43, line: 184, baseType: !13, size: 32, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !43, line: 185, baseType: !50, size: 16, offset: 128)
!50 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !43, line: 186, baseType: !50, size: 16, offset: 144)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !43, line: 187, baseType: !53, size: 128, offset: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !43, line: 117, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !53, file: !43, line: 118, baseType: !4, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !53, file: !43, line: 119, baseType: !13, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !43, line: 188, baseType: !13, size: 32, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !43, line: 195, baseType: !36, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !43, line: 197, baseType: !60, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !66, !36, !107, !13}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !64, line: 145, baseType: !65)
!64 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !43, line: 569, size: 14912, elements: !68)
!68 = !{!69, !70, !72, !73, !74, !75, !80, !81, !84, !85, !89, !101, !102, !103, !105, !106, !108, !185, !206, !207, !212, !219}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !67, file: !43, line: 571, baseType: !13, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !67, file: !43, line: 576, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !67, file: !43, line: 576, baseType: !71, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !67, file: !43, line: 576, baseType: !71, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !67, file: !43, line: 578, baseType: !13, size: 32, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !67, file: !43, line: 579, baseType: !76, size: 200, offset: 288)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 200, elements: !78)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!78 = !{!79}
!79 = !DISubrange(count: 25)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !67, file: !43, line: 582, baseType: !13, size: 32, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !67, file: !43, line: 583, baseType: !82, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !43, line: 40, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !67, file: !43, line: 585, baseType: !13, size: 32, offset: 640)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !67, file: !43, line: 587, baseType: !86, size: 64, offset: 704)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !66}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !67, file: !43, line: 590, baseType: !90, size: 64, offset: 768)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !43, line: 47, size: 256, elements: !92)
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !91, file: !43, line: 49, baseType: !90, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !91, file: !43, line: 50, baseType: !13, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !91, file: !43, line: 50, baseType: !13, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !91, file: !43, line: 50, baseType: !13, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !91, file: !43, line: 50, baseType: !13, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !91, file: !43, line: 51, baseType: !99, size: 32, offset: 192)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !38)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !43, line: 25, baseType: !33)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !67, file: !43, line: 591, baseType: !13, size: 32, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !67, file: !43, line: 592, baseType: !90, size: 64, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !67, file: !43, line: 593, baseType: !104, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !67, file: !43, line: 596, baseType: !13, size: 32, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !67, file: !43, line: 597, baseType: !107, size: 64, offset: 1088)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !67, file: !43, line: 632, baseType: !109, size: 2880, offset: 1152)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !43, line: 599, size: 2880, elements: !110)
!110 = !{!111, !176}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !109, file: !43, line: 622, baseType: !112, size: 1728)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !109, file: !43, line: 601, size: 1728, elements: !113)
!113 = !{!114, !115, !116, !120, !132, !133, !135, !145, !159, !160, !161, !165, !169, !170, !171, !172, !173, !174, !175}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !112, file: !43, line: 603, baseType: !33, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !112, file: !43, line: 604, baseType: !107, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !112, file: !43, line: 605, baseType: !117, size: 208, offset: 128)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 208, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 26)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !112, file: !43, line: 606, baseType: !121, size: 288, offset: 352)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !43, line: 55, size: 288, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !121, file: !43, line: 57, baseType: !13, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !121, file: !43, line: 58, baseType: !13, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !121, file: !43, line: 59, baseType: !13, size: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !121, file: !43, line: 60, baseType: !13, size: 32, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !121, file: !43, line: 61, baseType: !13, size: 32, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !121, file: !43, line: 62, baseType: !13, size: 32, offset: 160)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !121, file: !43, line: 63, baseType: !13, size: 32, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !121, file: !43, line: 64, baseType: !13, size: 32, offset: 224)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !121, file: !43, line: 65, baseType: !13, size: 32, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !112, file: !43, line: 607, baseType: !13, size: 32, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !112, file: !43, line: 608, baseType: !134, size: 64, offset: 704)
!134 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !112, file: !43, line: 609, baseType: !136, size: 112, offset: 768)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !43, line: 319, size: 112, elements: !137)
!137 = !{!138, !143, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !136, file: !43, line: 320, baseType: !139, size: 48)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 48, elements: !141)
!140 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!141 = !{!142}
!142 = !DISubrange(count: 3)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !136, file: !43, line: 321, baseType: !139, size: 48, offset: 48)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !136, file: !43, line: 322, baseType: !140, size: 16, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !112, file: !43, line: 610, baseType: !146, size: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !64, line: 171, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 163, size: 64, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !147, file: !64, line: 165, baseType: !13, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !147, file: !64, line: 170, baseType: !151, size: 32, offset: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !64, line: 166, size: 32, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !151, file: !64, line: 168, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !18, line: 124, baseType: !33)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !151, file: !64, line: 169, baseType: !156, size: 32)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 4)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !112, file: !43, line: 611, baseType: !146, size: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !112, file: !43, line: 612, baseType: !146, size: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !112, file: !43, line: 613, baseType: !162, size: 64, offset: 1088)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !112, file: !43, line: 614, baseType: !166, size: 192, offset: 1152)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 192, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 24)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !112, file: !43, line: 615, baseType: !13, size: 32, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !112, file: !43, line: 616, baseType: !146, size: 64, offset: 1376)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !112, file: !43, line: 617, baseType: !146, size: 64, offset: 1440)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !112, file: !43, line: 618, baseType: !146, size: 64, offset: 1504)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !112, file: !43, line: 619, baseType: !146, size: 64, offset: 1568)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !112, file: !43, line: 620, baseType: !146, size: 64, offset: 1632)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !112, file: !43, line: 621, baseType: !13, size: 32, offset: 1696)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !109, file: !43, line: 631, baseType: !177, size: 2880)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !109, file: !43, line: 626, size: 2880, elements: !178)
!178 = !{!179, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !177, file: !43, line: 629, baseType: !180, size: 1920)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 30)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !177, file: !43, line: 630, baseType: !184, size: 960, offset: 1920)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 960, elements: !181)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !67, file: !43, line: 636, baseType: !186, size: 64, offset: 4032)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !43, line: 93, size: 6336, elements: !188)
!188 = !{!189, !190, !191, !198}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !187, file: !43, line: 94, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !187, file: !43, line: 95, baseType: !13, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !187, file: !43, line: 97, baseType: !192, size: 2048, offset: 128)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !196)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null}
!196 = !{!197}
!197 = !DISubrange(count: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !187, file: !43, line: 98, baseType: !199, size: 4160, offset: 2176)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !43, line: 74, size: 4160, elements: !200)
!200 = !{!201, !203, !204, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !199, file: !43, line: 75, baseType: !202, size: 2048)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !196)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !199, file: !43, line: 76, baseType: !202, size: 2048, offset: 2048)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !199, file: !43, line: 78, baseType: !100, size: 32, offset: 4096)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !199, file: !43, line: 81, baseType: !100, size: 32, offset: 4128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !67, file: !43, line: 637, baseType: !187, size: 6336, offset: 4096)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !67, file: !43, line: 641, baseType: !208, size: 64, offset: 10432)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !13}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !67, file: !43, line: 646, baseType: !213, size: 192, offset: 10496)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !43, line: 291, size: 192, elements: !214)
!214 = !{!215, !217, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !213, file: !43, line: 293, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !213, file: !43, line: 294, baseType: !13, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !213, file: !43, line: 295, baseType: !71, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !67, file: !43, line: 648, baseType: !220, size: 4224, offset: 10688)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 4224, elements: !141)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !43, line: 199, baseType: !222, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!63, !66, !36, !225, !13}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !43, line: 202, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !66, !36, !231, !13}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !64, line: 114, baseType: !65)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !43, line: 203, baseType: !233, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!13, !66, !36}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !43, line: 206, baseType: !53, size: 128, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !43, line: 207, baseType: !4, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !43, line: 208, baseType: !13, size: 32, offset: 896)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !43, line: 211, baseType: !240, size: 24, offset: 928)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !141)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !43, line: 212, baseType: !242, size: 8, offset: 952)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !38)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !43, line: 215, baseType: !53, size: 128, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !43, line: 218, baseType: !13, size: 32, offset: 1088)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !43, line: 219, baseType: !246, size: 64, offset: 1152)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !64, line: 44, baseType: !65)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !43, line: 222, baseType: !66, size: 64, offset: 1216)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !43, line: 226, baseType: !249, size: 32, offset: 1280)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !64, line: 175, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !251, line: 12, baseType: !13)
!251 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !43, line: 228, baseType: !146, size: 64, offset: 1312)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !43, line: 229, baseType: !13, size: 32, offset: 1376)
!254 = !DILocation(line: 448, column: 37, scope: !10)
!255 = !DILocation(line: 448, column: 69, scope: !10)
!256 = !DILocation(line: 451, column: 3, scope: !10)
!257 = !DILocation(line: 451, column: 11, scope: !10)
!258 = !DILocation(line: 452, column: 3, scope: !10)
!259 = !DILocation(line: 454, column: 5, scope: !10)
!260 = !DILocation(line: 454, column: 12, scope: !10)
!261 = !{!262, !267, i64 16}
!262 = !{!"__sFILE", !263, i64 0, !266, i64 8, !266, i64 12, !267, i64 16, !267, i64 18, !268, i64 24, !266, i64 40, !263, i64 48, !263, i64 56, !263, i64 64, !263, i64 72, !263, i64 80, !268, i64 88, !263, i64 104, !266, i64 112, !264, i64 116, !264, i64 119, !268, i64 120, !266, i64 136, !269, i64 144, !263, i64 152, !266, i64 160, !270, i64 164, !266, i64 172}
!263 = !{!"any pointer", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !{!"int", !264, i64 0}
!267 = !{!"short", !264, i64 0}
!268 = !{!"__sbuf", !263, i64 0, !266, i64 8}
!269 = !{!"long", !264, i64 0}
!270 = !{!"", !266, i64 0, !264, i64 4}
!271 = !DILocation(line: 455, column: 22, scope: !10)
!272 = !{!262, !263, i64 0}
!273 = !DILocation(line: 455, column: 5, scope: !10)
!274 = !DILocation(line: 455, column: 15, scope: !10)
!275 = !{!262, !263, i64 24}
!276 = !DILocation(line: 456, column: 24, scope: !10)
!277 = !DILocation(line: 456, column: 19, scope: !10)
!278 = !DILocation(line: 456, column: 22, scope: !10)
!279 = !{!262, !266, i64 8}
!280 = !DILocation(line: 456, column: 9, scope: !10)
!281 = !DILocation(line: 456, column: 15, scope: !10)
!282 = !{!262, !266, i64 32}
!283 = !DILocation(line: 457, column: 5, scope: !10)
!284 = !DILocation(line: 457, column: 11, scope: !10)
!285 = !{!262, !263, i64 56}
!286 = !DILocation(line: 458, column: 9, scope: !10)
!287 = !DILocation(line: 458, column: 15, scope: !10)
!288 = !{!262, !263, i64 88}
!289 = !DILocation(line: 459, column: 9, scope: !10)
!290 = !DILocation(line: 459, column: 15, scope: !10)
!291 = !{!262, !263, i64 120}
!292 = !DILocation(line: 460, column: 5, scope: !10)
!293 = !DILocation(line: 460, column: 11, scope: !10)
!294 = !{!262, !267, i64 18}
!295 = !DILocation(line: 461, column: 3, scope: !10)
!296 = !DILocation(line: 462, column: 25, scope: !10)
!297 = !DILocation(line: 452, column: 8, scope: !10)
!298 = !DILocation(line: 462, column: 9, scope: !10)
!299 = !DILocation(line: 450, column: 7, scope: !10)
!300 = !DILocation(line: 463, column: 3, scope: !10)
!301 = !DILocation(line: 465, column: 1, scope: !10)
!302 = !DILocation(line: 464, column: 3, scope: !10)
!303 = distinct !DISubprogram(name: "_swscanf_r", scope: !1, file: !1, line: 470, type: !304, isLocal: false, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!13, !66, !15, !15, null}
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DILocalVariable(name: "ptr", arg: 1, scope: !303, file: !1, line: 470, type: !66)
!308 = !DILocalVariable(name: "str", arg: 2, scope: !303, file: !1, line: 470, type: !15)
!309 = !DILocalVariable(name: "fmt", arg: 3, scope: !303, file: !1, line: 470, type: !15)
!310 = !DILocalVariable(name: "ret", scope: !303, file: !1, line: 472, type: !13)
!311 = !DILocalVariable(name: "ap", scope: !303, file: !1, line: 473, type: !24)
!312 = !DILocalVariable(name: "f", scope: !303, file: !1, line: 474, type: !41)
!313 = !DILocation(line: 470, column: 28, scope: !303)
!314 = !DILocation(line: 470, column: 49, scope: !303)
!315 = !DILocation(line: 470, column: 70, scope: !303)
!316 = !DILocation(line: 473, column: 3, scope: !303)
!317 = !DILocation(line: 473, column: 11, scope: !303)
!318 = !DILocation(line: 474, column: 3, scope: !303)
!319 = !DILocation(line: 476, column: 5, scope: !303)
!320 = !DILocation(line: 476, column: 12, scope: !303)
!321 = !DILocation(line: 477, column: 22, scope: !303)
!322 = !DILocation(line: 477, column: 5, scope: !303)
!323 = !DILocation(line: 477, column: 15, scope: !303)
!324 = !DILocation(line: 478, column: 24, scope: !303)
!325 = !DILocation(line: 478, column: 19, scope: !303)
!326 = !DILocation(line: 478, column: 22, scope: !303)
!327 = !DILocation(line: 478, column: 9, scope: !303)
!328 = !DILocation(line: 478, column: 15, scope: !303)
!329 = !DILocation(line: 479, column: 5, scope: !303)
!330 = !DILocation(line: 479, column: 11, scope: !303)
!331 = !DILocation(line: 480, column: 9, scope: !303)
!332 = !DILocation(line: 480, column: 15, scope: !303)
!333 = !DILocation(line: 481, column: 9, scope: !303)
!334 = !DILocation(line: 481, column: 15, scope: !303)
!335 = !DILocation(line: 482, column: 5, scope: !303)
!336 = !DILocation(line: 482, column: 11, scope: !303)
!337 = !DILocation(line: 483, column: 3, scope: !303)
!338 = !DILocation(line: 474, column: 8, scope: !303)
!339 = !DILocation(line: 484, column: 9, scope: !303)
!340 = !DILocation(line: 472, column: 7, scope: !303)
!341 = !DILocation(line: 485, column: 3, scope: !303)
!342 = !DILocation(line: 487, column: 1, scope: !303)
!343 = !DILocation(line: 486, column: 3, scope: !303)
