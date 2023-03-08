; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/siscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/siscanf.c"
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

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @siscanf(i8*, i8*, ...) local_unnamed_addr #0 !dbg !10 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.__sFILE, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !251
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !251
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #4, !dbg !253
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !254
  store i16 516, i16* %7, align 8, !dbg !255, !tbaa !256
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !266
  store i8* %0, i8** %8, align 8, !dbg !267, !tbaa !268
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !269
  store i8* %0, i8** %9, align 8, !dbg !270, !tbaa !271
  %10 = tail call i64 @strlen(i8* %0) #5, !dbg !272
  %11 = trunc i64 %10 to i32, !dbg !272
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !273
  store i32 %11, i32* %12, align 8, !dbg !274, !tbaa !275
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !276
  store i32 %11, i32* %13, align 8, !dbg !277, !tbaa !278
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 8, !dbg !279
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %14, align 8, !dbg !280, !tbaa !281
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !282
  store i8* null, i8** %15, align 8, !dbg !283, !tbaa !284
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 17, i32 0, !dbg !285
  store i8* null, i8** %16, align 8, !dbg !286, !tbaa !287
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !288
  store i16 -1, i16* %17, align 2, !dbg !289, !tbaa !290
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !291
  call void @llvm.va_start(i8* nonnull %5), !dbg !291
  %19 = call %struct._reent* @__getreent() #5, !dbg !292
  %20 = call i32 @__ssvfiscanf_r(%struct._reent* %19, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* nonnull %18) #5, !dbg !294
  call void @llvm.va_end(i8* nonnull %5), !dbg !296
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #4, !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  ret i32 %20, !dbg !298
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @__seofread(%struct._reent*, i8*, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: noredzone
declare dso_local i32 @__ssvfiscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_siscanf_r(%struct._reent*, i8*, i8*, ...) local_unnamed_addr #0 !dbg !299 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !310
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !310
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #4, !dbg !312
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !313
  store i16 516, i16* %8, align 8, !dbg !314, !tbaa !256
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !315
  store i8* %1, i8** %9, align 8, !dbg !316, !tbaa !268
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !317
  store i8* %1, i8** %10, align 8, !dbg !318, !tbaa !271
  %11 = tail call i64 @strlen(i8* %1) #5, !dbg !319
  %12 = trunc i64 %11 to i32, !dbg !319
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 1, !dbg !320
  store i32 %12, i32* %13, align 8, !dbg !321, !tbaa !275
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !322
  store i32 %12, i32* %14, align 8, !dbg !323, !tbaa !278
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 8, !dbg !324
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %15, align 8, !dbg !325, !tbaa !281
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 12, i32 0, !dbg !326
  store i8* null, i8** %16, align 8, !dbg !327, !tbaa !284
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 17, i32 0, !dbg !328
  store i8* null, i8** %17, align 8, !dbg !329, !tbaa !287
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !330
  store i16 -1, i16* %18, align 2, !dbg !331, !tbaa !290
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !332
  call void @llvm.va_start(i8* nonnull %6), !dbg !332
  %20 = call i32 @__ssvfiscanf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %19) #5, !dbg !334
  call void @llvm.va_end(i8* nonnull %6), !dbg !336
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #4, !dbg !337
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret i32 %20, !dbg !338
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/siscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "siscanf", scope: !1, file: !1, line: 120, type: !11, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14, null}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !19, !20, !21, !38}
!18 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 120, type: !14)
!19 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 120, type: !14)
!20 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 131, type: !13)
!21 = !DILocalVariable(name: "ap", scope: !10, file: !1, line: 132, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !23, line: 46, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !25, line: 51, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 132, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !36)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 132, size: 192, elements: !29)
!29 = !{!30, !32, !33, !35}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !28, file: !1, line: 132, baseType: !31, size: 32)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !28, file: !1, line: 132, baseType: !31, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !28, file: !1, line: 132, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !28, file: !1, line: 132, baseType: !34, size: 64, offset: 128)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !DILocalVariable(name: "f", scope: !10, file: !1, line: 133, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !23, line: 66, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !41, line: 287, baseType: !42)
!41 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !41, line: 181, size: 1408, elements: !43)
!43 = !{!44, !45, !46, !47, !49, !50, !55, !56, !57, !219, !223, !228, !232, !233, !234, !235, !237, !239, !240, !241, !243, !244, !248, !249}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !42, file: !41, line: 182, baseType: !4, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !42, file: !41, line: 183, baseType: !13, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !42, file: !41, line: 184, baseType: !13, size: 32, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !41, line: 185, baseType: !48, size: 16, offset: 128)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !42, file: !41, line: 186, baseType: !48, size: 16, offset: 144)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !42, file: !41, line: 187, baseType: !51, size: 128, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !41, line: 117, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !51, file: !41, line: 118, baseType: !4, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !51, file: !41, line: 119, baseType: !13, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !42, file: !41, line: 188, baseType: !13, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !42, file: !41, line: 195, baseType: !34, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !42, file: !41, line: 197, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !64, !34, !104, !13}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !62, line: 145, baseType: !63)
!62 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !41, line: 569, size: 14912, elements: !66)
!66 = !{!67, !68, !70, !71, !72, !73, !77, !78, !81, !82, !86, !98, !99, !100, !102, !103, !105, !183, !204, !205, !210, !217}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !65, file: !41, line: 571, baseType: !13, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !65, file: !41, line: 576, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !65, file: !41, line: 576, baseType: !69, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !65, file: !41, line: 576, baseType: !69, size: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !65, file: !41, line: 578, baseType: !13, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !65, file: !41, line: 579, baseType: !74, size: 200, offset: 288)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 25)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !65, file: !41, line: 582, baseType: !13, size: 32, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !65, file: !41, line: 583, baseType: !79, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !41, line: 40, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !65, file: !41, line: 585, baseType: !13, size: 32, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !65, file: !41, line: 587, baseType: !83, size: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !64}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !65, file: !41, line: 590, baseType: !87, size: 64, offset: 768)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !41, line: 47, size: 256, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !88, file: !41, line: 49, baseType: !87, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !88, file: !41, line: 50, baseType: !13, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !88, file: !41, line: 50, baseType: !13, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !88, file: !41, line: 50, baseType: !13, size: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !88, file: !41, line: 50, baseType: !13, size: 32, offset: 160)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !88, file: !41, line: 51, baseType: !96, size: 32, offset: 192)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 32, elements: !36)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !41, line: 25, baseType: !31)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !65, file: !41, line: 591, baseType: !13, size: 32, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !65, file: !41, line: 592, baseType: !87, size: 64, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !65, file: !41, line: 593, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !65, file: !41, line: 596, baseType: !13, size: 32, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !65, file: !41, line: 597, baseType: !104, size: 64, offset: 1088)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !65, file: !41, line: 632, baseType: !106, size: 2880, offset: 1152)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !41, line: 599, size: 2880, elements: !107)
!107 = !{!108, !174}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !106, file: !41, line: 622, baseType: !109, size: 1728)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !41, line: 601, size: 1728, elements: !110)
!110 = !{!111, !112, !113, !117, !129, !130, !132, !142, !157, !158, !159, !163, !167, !168, !169, !170, !171, !172, !173}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !109, file: !41, line: 603, baseType: !31, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !109, file: !41, line: 604, baseType: !104, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !109, file: !41, line: 605, baseType: !114, size: 208, offset: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 26)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !109, file: !41, line: 606, baseType: !118, size: 288, offset: 352)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !41, line: 55, size: 288, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !118, file: !41, line: 57, baseType: !13, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !118, file: !41, line: 58, baseType: !13, size: 32, offset: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !118, file: !41, line: 59, baseType: !13, size: 32, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !118, file: !41, line: 60, baseType: !13, size: 32, offset: 96)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !118, file: !41, line: 61, baseType: !13, size: 32, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !118, file: !41, line: 62, baseType: !13, size: 32, offset: 160)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !118, file: !41, line: 63, baseType: !13, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !118, file: !41, line: 64, baseType: !13, size: 32, offset: 224)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !118, file: !41, line: 65, baseType: !13, size: 32, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !109, file: !41, line: 607, baseType: !13, size: 32, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !109, file: !41, line: 608, baseType: !131, size: 64, offset: 704)
!131 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !109, file: !41, line: 609, baseType: !133, size: 112, offset: 768)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !41, line: 319, size: 112, elements: !134)
!134 = !{!135, !140, !141}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !133, file: !41, line: 320, baseType: !136, size: 48)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 48, elements: !138)
!137 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!138 = !{!139}
!139 = !DISubrange(count: 3)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !133, file: !41, line: 321, baseType: !136, size: 48, offset: 48)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !133, file: !41, line: 322, baseType: !137, size: 16, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !109, file: !41, line: 610, baseType: !143, size: 64, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !62, line: 171, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 163, size: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !144, file: !62, line: 165, baseType: !13, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !144, file: !62, line: 170, baseType: !148, size: 32, offset: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !62, line: 166, size: 32, elements: !149)
!149 = !{!150, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !148, file: !62, line: 168, baseType: !151, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !152, line: 124, baseType: !31)
!152 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !148, file: !62, line: 169, baseType: !154, size: 32)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 4)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !109, file: !41, line: 611, baseType: !143, size: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !109, file: !41, line: 612, baseType: !143, size: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !109, file: !41, line: 613, baseType: !160, size: 64, offset: 1088)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !109, file: !41, line: 614, baseType: !164, size: 192, offset: 1152)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 24)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !109, file: !41, line: 615, baseType: !13, size: 32, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !109, file: !41, line: 616, baseType: !143, size: 64, offset: 1376)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !109, file: !41, line: 617, baseType: !143, size: 64, offset: 1440)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !109, file: !41, line: 618, baseType: !143, size: 64, offset: 1504)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !109, file: !41, line: 619, baseType: !143, size: 64, offset: 1568)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !109, file: !41, line: 620, baseType: !143, size: 64, offset: 1632)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !109, file: !41, line: 621, baseType: !13, size: 32, offset: 1696)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !106, file: !41, line: 631, baseType: !175, size: 2880)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !41, line: 626, size: 2880, elements: !176)
!176 = !{!177, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !175, file: !41, line: 629, baseType: !178, size: 1920)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 30)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !175, file: !41, line: 630, baseType: !182, size: 960, offset: 1920)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 960, elements: !179)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !65, file: !41, line: 636, baseType: !184, size: 64, offset: 4032)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !41, line: 93, size: 6336, elements: !186)
!186 = !{!187, !188, !189, !196}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !185, file: !41, line: 94, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !185, file: !41, line: 95, baseType: !13, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !185, file: !41, line: 97, baseType: !190, size: 2048, offset: 128)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 2048, elements: !194)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null}
!194 = !{!195}
!195 = !DISubrange(count: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !185, file: !41, line: 98, baseType: !197, size: 4160, offset: 2176)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !41, line: 74, size: 4160, elements: !198)
!198 = !{!199, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !197, file: !41, line: 75, baseType: !200, size: 2048)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !194)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !197, file: !41, line: 76, baseType: !200, size: 2048, offset: 2048)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !197, file: !41, line: 78, baseType: !97, size: 32, offset: 4096)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !197, file: !41, line: 81, baseType: !97, size: 32, offset: 4128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !65, file: !41, line: 637, baseType: !185, size: 6336, offset: 4096)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !65, file: !41, line: 641, baseType: !206, size: 64, offset: 10432)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !13}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !65, file: !41, line: 646, baseType: !211, size: 192, offset: 10496)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !41, line: 291, size: 192, elements: !212)
!212 = !{!213, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !211, file: !41, line: 293, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !211, file: !41, line: 294, baseType: !13, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !211, file: !41, line: 295, baseType: !69, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !65, file: !41, line: 648, baseType: !218, size: 4224, offset: 10688)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4224, elements: !138)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !42, file: !41, line: 199, baseType: !220, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!61, !64, !34, !14, !13}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !42, file: !41, line: 202, baseType: !224, size: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !64, !34, !227, !13}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !62, line: 114, baseType: !63)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !42, file: !41, line: 203, baseType: !229, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!13, !64, !34}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !42, file: !41, line: 206, baseType: !51, size: 128, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !42, file: !41, line: 207, baseType: !4, size: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !42, file: !41, line: 208, baseType: !13, size: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !42, file: !41, line: 211, baseType: !236, size: 24, offset: 928)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !138)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !42, file: !41, line: 212, baseType: !238, size: 8, offset: 952)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !36)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !42, file: !41, line: 215, baseType: !51, size: 128, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !42, file: !41, line: 218, baseType: !13, size: 32, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !41, line: 219, baseType: !242, size: 64, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !62, line: 44, baseType: !63)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !42, file: !41, line: 222, baseType: !64, size: 64, offset: 1216)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !41, line: 226, baseType: !245, size: 32, offset: 1280)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !62, line: 175, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !247, line: 12, baseType: !13)
!247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !42, file: !41, line: 228, baseType: !143, size: 64, offset: 1312)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !41, line: 229, baseType: !13, size: 32, offset: 1376)
!250 = !DILocation(line: 120, column: 1, scope: !10)
!251 = !DILocation(line: 132, column: 3, scope: !10)
!252 = !DILocation(line: 132, column: 11, scope: !10)
!253 = !DILocation(line: 133, column: 3, scope: !10)
!254 = !DILocation(line: 135, column: 5, scope: !10)
!255 = !DILocation(line: 135, column: 12, scope: !10)
!256 = !{!257, !262, i64 16}
!257 = !{!"__sFILE", !258, i64 0, !261, i64 8, !261, i64 12, !262, i64 16, !262, i64 18, !263, i64 24, !261, i64 40, !258, i64 48, !258, i64 56, !258, i64 64, !258, i64 72, !258, i64 80, !263, i64 88, !258, i64 104, !261, i64 112, !259, i64 116, !259, i64 119, !263, i64 120, !261, i64 136, !264, i64 144, !258, i64 152, !261, i64 160, !265, i64 164, !261, i64 172}
!258 = !{!"any pointer", !259, i64 0}
!259 = !{!"omnipotent char", !260, i64 0}
!260 = !{!"Simple C/C++ TBAA"}
!261 = !{!"int", !259, i64 0}
!262 = !{!"short", !259, i64 0}
!263 = !{!"__sbuf", !258, i64 0, !261, i64 8}
!264 = !{!"long", !259, i64 0}
!265 = !{!"", !261, i64 0, !259, i64 4}
!266 = !DILocation(line: 136, column: 19, scope: !10)
!267 = !DILocation(line: 136, column: 22, scope: !10)
!268 = !{!257, !258, i64 0}
!269 = !DILocation(line: 136, column: 9, scope: !10)
!270 = !DILocation(line: 136, column: 15, scope: !10)
!271 = !{!257, !258, i64 24}
!272 = !DILocation(line: 137, column: 24, scope: !10)
!273 = !DILocation(line: 137, column: 19, scope: !10)
!274 = !DILocation(line: 137, column: 22, scope: !10)
!275 = !{!257, !261, i64 8}
!276 = !DILocation(line: 137, column: 9, scope: !10)
!277 = !DILocation(line: 137, column: 15, scope: !10)
!278 = !{!257, !261, i64 32}
!279 = !DILocation(line: 138, column: 5, scope: !10)
!280 = !DILocation(line: 138, column: 11, scope: !10)
!281 = !{!257, !258, i64 56}
!282 = !DILocation(line: 139, column: 9, scope: !10)
!283 = !DILocation(line: 139, column: 15, scope: !10)
!284 = !{!257, !258, i64 88}
!285 = !DILocation(line: 140, column: 9, scope: !10)
!286 = !DILocation(line: 140, column: 15, scope: !10)
!287 = !{!257, !258, i64 120}
!288 = !DILocation(line: 141, column: 5, scope: !10)
!289 = !DILocation(line: 141, column: 11, scope: !10)
!290 = !{!257, !262, i64 18}
!291 = !DILocation(line: 143, column: 3, scope: !10)
!292 = !DILocation(line: 147, column: 25, scope: !10)
!293 = !DILocation(line: 133, column: 8, scope: !10)
!294 = !DILocation(line: 147, column: 9, scope: !10)
!295 = !DILocation(line: 131, column: 7, scope: !10)
!296 = !DILocation(line: 148, column: 3, scope: !10)
!297 = !DILocation(line: 150, column: 1, scope: !10)
!298 = !DILocation(line: 149, column: 3, scope: !10)
!299 = distinct !DISubprogram(name: "_siscanf_r", scope: !1, file: !1, line: 156, type: !300, isLocal: false, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!13, !64, !14, !14, null}
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DILocalVariable(name: "ptr", arg: 1, scope: !299, file: !1, line: 156, type: !64)
!304 = !DILocalVariable(name: "str", arg: 2, scope: !299, file: !1, line: 156, type: !14)
!305 = !DILocalVariable(name: "fmt", arg: 3, scope: !299, file: !1, line: 156, type: !14)
!306 = !DILocalVariable(name: "ret", scope: !299, file: !1, line: 169, type: !13)
!307 = !DILocalVariable(name: "ap", scope: !299, file: !1, line: 170, type: !22)
!308 = !DILocalVariable(name: "f", scope: !299, file: !1, line: 171, type: !39)
!309 = !DILocation(line: 156, column: 1, scope: !299)
!310 = !DILocation(line: 170, column: 3, scope: !299)
!311 = !DILocation(line: 170, column: 11, scope: !299)
!312 = !DILocation(line: 171, column: 3, scope: !299)
!313 = !DILocation(line: 173, column: 5, scope: !299)
!314 = !DILocation(line: 173, column: 12, scope: !299)
!315 = !DILocation(line: 174, column: 19, scope: !299)
!316 = !DILocation(line: 174, column: 22, scope: !299)
!317 = !DILocation(line: 174, column: 9, scope: !299)
!318 = !DILocation(line: 174, column: 15, scope: !299)
!319 = !DILocation(line: 175, column: 24, scope: !299)
!320 = !DILocation(line: 175, column: 19, scope: !299)
!321 = !DILocation(line: 175, column: 22, scope: !299)
!322 = !DILocation(line: 175, column: 9, scope: !299)
!323 = !DILocation(line: 175, column: 15, scope: !299)
!324 = !DILocation(line: 176, column: 5, scope: !299)
!325 = !DILocation(line: 176, column: 11, scope: !299)
!326 = !DILocation(line: 177, column: 9, scope: !299)
!327 = !DILocation(line: 177, column: 15, scope: !299)
!328 = !DILocation(line: 178, column: 9, scope: !299)
!329 = !DILocation(line: 178, column: 15, scope: !299)
!330 = !DILocation(line: 179, column: 5, scope: !299)
!331 = !DILocation(line: 179, column: 11, scope: !299)
!332 = !DILocation(line: 181, column: 3, scope: !299)
!333 = !DILocation(line: 171, column: 8, scope: !299)
!334 = !DILocation(line: 185, column: 9, scope: !299)
!335 = !DILocation(line: 169, column: 7, scope: !299)
!336 = !DILocation(line: 186, column: 3, scope: !299)
!337 = !DILocation(line: 188, column: 1, scope: !299)
!338 = !DILocation(line: 187, column: 3, scope: !299)
