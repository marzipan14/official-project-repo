; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sscanf.c"
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
define dso_local i32 @sscanf(i8* noalias, i8*, ...) local_unnamed_addr #0 !dbg !10 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.__sFILE, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !252
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #4, !dbg !252
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !254
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #4, !dbg !254
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !255
  store i16 516, i16* %7, align 8, !dbg !256, !tbaa !257
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !267
  store i8* %0, i8** %8, align 8, !dbg !268, !tbaa !269
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !270
  store i8* %0, i8** %9, align 8, !dbg !271, !tbaa !272
  %10 = tail call i64 @strlen(i8* %0) #5, !dbg !273
  %11 = trunc i64 %10 to i32, !dbg !273
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !274
  store i32 %11, i32* %12, align 8, !dbg !275, !tbaa !276
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !277
  store i32 %11, i32* %13, align 8, !dbg !278, !tbaa !279
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 8, !dbg !280
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %14, align 8, !dbg !281, !tbaa !282
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !283
  store i8* null, i8** %15, align 8, !dbg !284, !tbaa !285
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 17, i32 0, !dbg !286
  store i8* null, i8** %16, align 8, !dbg !287, !tbaa !288
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !289
  store i16 -1, i16* %17, align 2, !dbg !290, !tbaa !291
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !292
  call void @llvm.va_start(i8* nonnull %5), !dbg !292
  %19 = call %struct._reent* @__getreent() #5, !dbg !293
  %20 = call i32 @__ssvfscanf_r(%struct._reent* %19, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* nonnull %18) #5, !dbg !295
  call void @llvm.va_end(i8* nonnull %5), !dbg !297
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #4, !dbg !298
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #4, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  ret i32 %20, !dbg !299
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
declare dso_local i32 @__ssvfscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_sscanf_r(%struct._reent*, i8* noalias, i8* noalias, ...) local_unnamed_addr #0 !dbg !300 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*, !dbg !311
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #4, !dbg !311
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !313
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #4, !dbg !313
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !314
  store i16 516, i16* %8, align 8, !dbg !315, !tbaa !257
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !316
  store i8* %1, i8** %9, align 8, !dbg !317, !tbaa !269
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !318
  store i8* %1, i8** %10, align 8, !dbg !319, !tbaa !272
  %11 = tail call i64 @strlen(i8* %1) #5, !dbg !320
  %12 = trunc i64 %11 to i32, !dbg !320
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 1, !dbg !321
  store i32 %12, i32* %13, align 8, !dbg !322, !tbaa !276
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !323
  store i32 %12, i32* %14, align 8, !dbg !324, !tbaa !279
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 8, !dbg !325
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %15, align 8, !dbg !326, !tbaa !282
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 12, i32 0, !dbg !327
  store i8* null, i8** %16, align 8, !dbg !328, !tbaa !285
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 17, i32 0, !dbg !329
  store i8* null, i8** %17, align 8, !dbg !330, !tbaa !288
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !331
  store i16 -1, i16* %18, align 2, !dbg !332, !tbaa !291
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, !dbg !333
  call void @llvm.va_start(i8* nonnull %6), !dbg !333
  %20 = call i32 @__ssvfscanf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* nonnull %19) #5, !dbg !335
  call void @llvm.va_end(i8* nonnull %6), !dbg !337
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #4, !dbg !338
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  ret i32 %20, !dbg !339
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/sscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "sscanf", scope: !1, file: !1, line: 459, type: !11, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15, null}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22, !39}
!19 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 459, type: !14)
!20 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 459, type: !15)
!21 = !DILocalVariable(name: "ret", scope: !10, file: !1, line: 470, type: !13)
!22 = !DILocalVariable(name: "ap", scope: !10, file: !1, line: 471, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !24, line: 46, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !26, line: 51, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 471, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !37)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 471, size: 192, elements: !30)
!30 = !{!31, !33, !34, !36}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !29, file: !1, line: 471, baseType: !32, size: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !29, file: !1, line: 471, baseType: !32, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !29, file: !1, line: 471, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !29, file: !1, line: 471, baseType: !35, size: 64, offset: 128)
!37 = !{!38}
!38 = !DISubrange(count: 1)
!39 = !DILocalVariable(name: "f", scope: !10, file: !1, line: 472, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 66, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !42, line: 287, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !42, line: 181, size: 1408, elements: !44)
!44 = !{!45, !46, !47, !48, !50, !51, !56, !57, !58, !220, !224, !229, !233, !234, !235, !236, !238, !240, !241, !242, !244, !245, !249, !250}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !43, file: !42, line: 182, baseType: !4, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !43, file: !42, line: 183, baseType: !13, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !43, file: !42, line: 184, baseType: !13, size: 32, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !43, file: !42, line: 185, baseType: !49, size: 16, offset: 128)
!49 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !43, file: !42, line: 186, baseType: !49, size: 16, offset: 144)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !43, file: !42, line: 187, baseType: !52, size: 128, offset: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !42, line: 117, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !52, file: !42, line: 118, baseType: !4, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !52, file: !42, line: 119, baseType: !13, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !43, file: !42, line: 188, baseType: !13, size: 32, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !43, file: !42, line: 195, baseType: !35, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !43, file: !42, line: 197, baseType: !59, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !65, !35, !105, !13}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !63, line: 145, baseType: !64)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !42, line: 569, size: 14912, elements: !67)
!67 = !{!68, !69, !71, !72, !73, !74, !78, !79, !82, !83, !87, !99, !100, !101, !103, !104, !106, !184, !205, !206, !211, !218}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !66, file: !42, line: 571, baseType: !13, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !66, file: !42, line: 576, baseType: !70, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !66, file: !42, line: 576, baseType: !70, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !66, file: !42, line: 576, baseType: !70, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !66, file: !42, line: 578, baseType: !13, size: 32, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !66, file: !42, line: 579, baseType: !75, size: 200, offset: 288)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 200, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 25)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !66, file: !42, line: 582, baseType: !13, size: 32, offset: 512)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !66, file: !42, line: 583, baseType: !80, size: 64, offset: 576)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !42, line: 40, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !66, file: !42, line: 585, baseType: !13, size: 32, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !66, file: !42, line: 587, baseType: !84, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !65}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !66, file: !42, line: 590, baseType: !88, size: 64, offset: 768)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !42, line: 47, size: 256, elements: !90)
!90 = !{!91, !92, !93, !94, !95, !96}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !89, file: !42, line: 49, baseType: !88, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !89, file: !42, line: 50, baseType: !13, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !89, file: !42, line: 50, baseType: !13, size: 32, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !89, file: !42, line: 50, baseType: !13, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !89, file: !42, line: 50, baseType: !13, size: 32, offset: 160)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !89, file: !42, line: 51, baseType: !97, size: 32, offset: 192)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !37)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !42, line: 25, baseType: !32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !66, file: !42, line: 591, baseType: !13, size: 32, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !66, file: !42, line: 592, baseType: !88, size: 64, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !66, file: !42, line: 593, baseType: !102, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !66, file: !42, line: 596, baseType: !13, size: 32, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !66, file: !42, line: 597, baseType: !105, size: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !66, file: !42, line: 632, baseType: !107, size: 2880, offset: 1152)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !42, line: 599, size: 2880, elements: !108)
!108 = !{!109, !175}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !107, file: !42, line: 622, baseType: !110, size: 1728)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !42, line: 601, size: 1728, elements: !111)
!111 = !{!112, !113, !114, !118, !130, !131, !133, !143, !158, !159, !160, !164, !168, !169, !170, !171, !172, !173, !174}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !110, file: !42, line: 603, baseType: !32, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !110, file: !42, line: 604, baseType: !105, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !110, file: !42, line: 605, baseType: !115, size: 208, offset: 128)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 208, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 26)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !110, file: !42, line: 606, baseType: !119, size: 288, offset: 352)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !42, line: 55, size: 288, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !119, file: !42, line: 57, baseType: !13, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !119, file: !42, line: 58, baseType: !13, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !119, file: !42, line: 59, baseType: !13, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !119, file: !42, line: 60, baseType: !13, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !119, file: !42, line: 61, baseType: !13, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !119, file: !42, line: 62, baseType: !13, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !119, file: !42, line: 63, baseType: !13, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !119, file: !42, line: 64, baseType: !13, size: 32, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !119, file: !42, line: 65, baseType: !13, size: 32, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !110, file: !42, line: 607, baseType: !13, size: 32, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !110, file: !42, line: 608, baseType: !132, size: 64, offset: 704)
!132 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !110, file: !42, line: 609, baseType: !134, size: 112, offset: 768)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !42, line: 319, size: 112, elements: !135)
!135 = !{!136, !141, !142}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !134, file: !42, line: 320, baseType: !137, size: 48)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !139)
!138 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!139 = !{!140}
!140 = !DISubrange(count: 3)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !134, file: !42, line: 321, baseType: !137, size: 48, offset: 48)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !134, file: !42, line: 322, baseType: !138, size: 16, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !110, file: !42, line: 610, baseType: !144, size: 64, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !63, line: 171, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 163, size: 64, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !145, file: !63, line: 165, baseType: !13, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !145, file: !63, line: 170, baseType: !149, size: 32, offset: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !63, line: 166, size: 32, elements: !150)
!150 = !{!151, !154}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !149, file: !63, line: 168, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !153, line: 124, baseType: !32)
!153 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !149, file: !63, line: 169, baseType: !155, size: 32)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 4)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !110, file: !42, line: 611, baseType: !144, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !110, file: !42, line: 612, baseType: !144, size: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !110, file: !42, line: 613, baseType: !161, size: 64, offset: 1088)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !110, file: !42, line: 614, baseType: !165, size: 192, offset: 1152)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 24)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !110, file: !42, line: 615, baseType: !13, size: 32, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !110, file: !42, line: 616, baseType: !144, size: 64, offset: 1376)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !110, file: !42, line: 617, baseType: !144, size: 64, offset: 1440)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !110, file: !42, line: 618, baseType: !144, size: 64, offset: 1504)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !110, file: !42, line: 619, baseType: !144, size: 64, offset: 1568)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !110, file: !42, line: 620, baseType: !144, size: 64, offset: 1632)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !110, file: !42, line: 621, baseType: !13, size: 32, offset: 1696)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !107, file: !42, line: 631, baseType: !176, size: 2880)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !42, line: 626, size: 2880, elements: !177)
!177 = !{!178, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !176, file: !42, line: 629, baseType: !179, size: 1920)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 30)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !176, file: !42, line: 630, baseType: !183, size: 960, offset: 1920)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 960, elements: !180)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !66, file: !42, line: 636, baseType: !185, size: 64, offset: 4032)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !42, line: 93, size: 6336, elements: !187)
!187 = !{!188, !189, !190, !197}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !186, file: !42, line: 94, baseType: !185, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !186, file: !42, line: 95, baseType: !13, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !186, file: !42, line: 97, baseType: !191, size: 2048, offset: 128)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 2048, elements: !195)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null}
!195 = !{!196}
!196 = !DISubrange(count: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !186, file: !42, line: 98, baseType: !198, size: 4160, offset: 2176)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !42, line: 74, size: 4160, elements: !199)
!199 = !{!200, !202, !203, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !198, file: !42, line: 75, baseType: !201, size: 2048)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !195)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !198, file: !42, line: 76, baseType: !201, size: 2048, offset: 2048)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !198, file: !42, line: 78, baseType: !98, size: 32, offset: 4096)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !198, file: !42, line: 81, baseType: !98, size: 32, offset: 4128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !66, file: !42, line: 637, baseType: !186, size: 6336, offset: 4096)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !66, file: !42, line: 641, baseType: !207, size: 64, offset: 10432)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !13}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !66, file: !42, line: 646, baseType: !212, size: 192, offset: 10496)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !42, line: 291, size: 192, elements: !213)
!213 = !{!214, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !212, file: !42, line: 293, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !212, file: !42, line: 294, baseType: !13, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !212, file: !42, line: 295, baseType: !70, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !66, file: !42, line: 648, baseType: !219, size: 4224, offset: 10688)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 4224, elements: !139)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !43, file: !42, line: 199, baseType: !221, size: 64, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!62, !65, !35, !15, !13}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !43, file: !42, line: 202, baseType: !225, size: 64, offset: 576)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !65, !35, !228, !13}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !63, line: 114, baseType: !64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !43, file: !42, line: 203, baseType: !230, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!13, !65, !35}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !43, file: !42, line: 206, baseType: !52, size: 128, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !43, file: !42, line: 207, baseType: !4, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !43, file: !42, line: 208, baseType: !13, size: 32, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !43, file: !42, line: 211, baseType: !237, size: 24, offset: 928)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !139)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !43, file: !42, line: 212, baseType: !239, size: 8, offset: 952)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !37)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !43, file: !42, line: 215, baseType: !52, size: 128, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !43, file: !42, line: 218, baseType: !13, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !43, file: !42, line: 219, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !63, line: 44, baseType: !64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !43, file: !42, line: 222, baseType: !65, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !43, file: !42, line: 226, baseType: !246, size: 32, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !63, line: 175, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !248, line: 12, baseType: !13)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !43, file: !42, line: 228, baseType: !144, size: 64, offset: 1312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !43, file: !42, line: 229, baseType: !13, size: 32, offset: 1376)
!251 = !DILocation(line: 459, column: 1, scope: !10)
!252 = !DILocation(line: 471, column: 3, scope: !10)
!253 = !DILocation(line: 471, column: 11, scope: !10)
!254 = !DILocation(line: 472, column: 3, scope: !10)
!255 = !DILocation(line: 474, column: 5, scope: !10)
!256 = !DILocation(line: 474, column: 12, scope: !10)
!257 = !{!258, !263, i64 16}
!258 = !{!"__sFILE", !259, i64 0, !262, i64 8, !262, i64 12, !263, i64 16, !263, i64 18, !264, i64 24, !262, i64 40, !259, i64 48, !259, i64 56, !259, i64 64, !259, i64 72, !259, i64 80, !264, i64 88, !259, i64 104, !262, i64 112, !260, i64 116, !260, i64 119, !264, i64 120, !262, i64 136, !265, i64 144, !259, i64 152, !262, i64 160, !266, i64 164, !262, i64 172}
!259 = !{!"any pointer", !260, i64 0}
!260 = !{!"omnipotent char", !261, i64 0}
!261 = !{!"Simple C/C++ TBAA"}
!262 = !{!"int", !260, i64 0}
!263 = !{!"short", !260, i64 0}
!264 = !{!"__sbuf", !259, i64 0, !262, i64 8}
!265 = !{!"long", !260, i64 0}
!266 = !{!"", !262, i64 0, !260, i64 4}
!267 = !DILocation(line: 475, column: 19, scope: !10)
!268 = !DILocation(line: 475, column: 22, scope: !10)
!269 = !{!258, !259, i64 0}
!270 = !DILocation(line: 475, column: 9, scope: !10)
!271 = !DILocation(line: 475, column: 15, scope: !10)
!272 = !{!258, !259, i64 24}
!273 = !DILocation(line: 476, column: 24, scope: !10)
!274 = !DILocation(line: 476, column: 19, scope: !10)
!275 = !DILocation(line: 476, column: 22, scope: !10)
!276 = !{!258, !262, i64 8}
!277 = !DILocation(line: 476, column: 9, scope: !10)
!278 = !DILocation(line: 476, column: 15, scope: !10)
!279 = !{!258, !262, i64 32}
!280 = !DILocation(line: 477, column: 5, scope: !10)
!281 = !DILocation(line: 477, column: 11, scope: !10)
!282 = !{!258, !259, i64 56}
!283 = !DILocation(line: 478, column: 9, scope: !10)
!284 = !DILocation(line: 478, column: 15, scope: !10)
!285 = !{!258, !259, i64 88}
!286 = !DILocation(line: 479, column: 9, scope: !10)
!287 = !DILocation(line: 479, column: 15, scope: !10)
!288 = !{!258, !259, i64 120}
!289 = !DILocation(line: 480, column: 5, scope: !10)
!290 = !DILocation(line: 480, column: 11, scope: !10)
!291 = !{!258, !263, i64 18}
!292 = !DILocation(line: 482, column: 3, scope: !10)
!293 = !DILocation(line: 486, column: 24, scope: !10)
!294 = !DILocation(line: 472, column: 8, scope: !10)
!295 = !DILocation(line: 486, column: 9, scope: !10)
!296 = !DILocation(line: 470, column: 7, scope: !10)
!297 = !DILocation(line: 487, column: 3, scope: !10)
!298 = !DILocation(line: 489, column: 1, scope: !10)
!299 = !DILocation(line: 488, column: 3, scope: !10)
!300 = distinct !DISubprogram(name: "_sscanf_r", scope: !1, file: !1, line: 501, type: !301, isLocal: false, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!13, !65, !14, !14, null}
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DILocalVariable(name: "ptr", arg: 1, scope: !300, file: !1, line: 501, type: !65)
!305 = !DILocalVariable(name: "str", arg: 2, scope: !300, file: !1, line: 501, type: !14)
!306 = !DILocalVariable(name: "fmt", arg: 3, scope: !300, file: !1, line: 501, type: !14)
!307 = !DILocalVariable(name: "ret", scope: !300, file: !1, line: 514, type: !13)
!308 = !DILocalVariable(name: "ap", scope: !300, file: !1, line: 515, type: !23)
!309 = !DILocalVariable(name: "f", scope: !300, file: !1, line: 516, type: !40)
!310 = !DILocation(line: 501, column: 1, scope: !300)
!311 = !DILocation(line: 515, column: 3, scope: !300)
!312 = !DILocation(line: 515, column: 11, scope: !300)
!313 = !DILocation(line: 516, column: 3, scope: !300)
!314 = !DILocation(line: 518, column: 5, scope: !300)
!315 = !DILocation(line: 518, column: 12, scope: !300)
!316 = !DILocation(line: 519, column: 19, scope: !300)
!317 = !DILocation(line: 519, column: 22, scope: !300)
!318 = !DILocation(line: 519, column: 9, scope: !300)
!319 = !DILocation(line: 519, column: 15, scope: !300)
!320 = !DILocation(line: 520, column: 24, scope: !300)
!321 = !DILocation(line: 520, column: 19, scope: !300)
!322 = !DILocation(line: 520, column: 22, scope: !300)
!323 = !DILocation(line: 520, column: 9, scope: !300)
!324 = !DILocation(line: 520, column: 15, scope: !300)
!325 = !DILocation(line: 521, column: 5, scope: !300)
!326 = !DILocation(line: 521, column: 11, scope: !300)
!327 = !DILocation(line: 522, column: 9, scope: !300)
!328 = !DILocation(line: 522, column: 15, scope: !300)
!329 = !DILocation(line: 523, column: 9, scope: !300)
!330 = !DILocation(line: 523, column: 15, scope: !300)
!331 = !DILocation(line: 524, column: 5, scope: !300)
!332 = !DILocation(line: 524, column: 11, scope: !300)
!333 = !DILocation(line: 526, column: 3, scope: !300)
!334 = !DILocation(line: 516, column: 8, scope: !300)
!335 = !DILocation(line: 530, column: 9, scope: !300)
!336 = !DILocation(line: 514, column: 7, scope: !300)
!337 = !DILocation(line: 531, column: 3, scope: !300)
!338 = !DILocation(line: 533, column: 1, scope: !300)
!339 = !DILocation(line: 532, column: 3, scope: !300)
