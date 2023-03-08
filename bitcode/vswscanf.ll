; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vswscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vswscanf.c"
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
define dso_local i32 @vswscanf(i32* noalias, i32* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca %struct.__sFILE, align 8
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !35
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !266
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !266
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !267
  store i16 516, i16* %7, align 8, !dbg !268, !tbaa !269
  %8 = bitcast %struct.__sFILE* %4 to i32**, !dbg !279
  store i32* %0, i32** %8, align 8, !dbg !279, !tbaa !280
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, !dbg !281
  %10 = bitcast %struct.__sbuf* %9 to i32**, !dbg !282
  store i32* %0, i32** %10, align 8, !dbg !282, !tbaa !283
  %11 = tail call i64 @wcslen(i32* %0) #4, !dbg !284
  %12 = trunc i64 %11 to i32, !dbg !284
  %13 = shl i32 %12, 2, !dbg !284
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 1, !dbg !285
  store i32 %13, i32* %14, align 8, !dbg !286, !tbaa !287
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !288
  store i32 %13, i32* %15, align 8, !dbg !289, !tbaa !290
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 8, !dbg !291
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %16, align 8, !dbg !292, !tbaa !293
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 12, i32 0, !dbg !294
  store i8* null, i8** %17, align 8, !dbg !295, !tbaa !296
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 17, i32 0, !dbg !297
  store i8* null, i8** %18, align 8, !dbg !298, !tbaa !299
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !300
  store i16 -1, i16* %19, align 2, !dbg !301, !tbaa !302
  %20 = call i32 @__ssvfwscanf_r(%struct._reent* %5, %struct.__sFILE* nonnull %4, i32* %1, %struct.__va_list_tag* %2) #4, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  ret i32 %20, !dbg !307
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vswscanf_r(%struct._reent*, i32*, i32*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !37 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast %struct.__sFILE* %5 to i8*, !dbg !312
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !312
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !313
  store i16 516, i16* %7, align 8, !dbg !314, !tbaa !269
  %8 = bitcast %struct.__sFILE* %5 to i32**, !dbg !315
  store i32* %1, i32** %8, align 8, !dbg !315, !tbaa !280
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, !dbg !316
  %10 = bitcast %struct.__sbuf* %9 to i32**, !dbg !317
  store i32* %1, i32** %10, align 8, !dbg !317, !tbaa !283
  %11 = tail call i64 @wcslen(i32* %1) #4, !dbg !318
  %12 = trunc i64 %11 to i32, !dbg !318
  %13 = shl i32 %12, 2, !dbg !318
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 1, !dbg !319
  store i32 %13, i32* %14, align 8, !dbg !320, !tbaa !287
  %15 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !321
  store i32 %13, i32* %15, align 8, !dbg !322, !tbaa !290
  %16 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 8, !dbg !323
  store i64 (%struct._reent*, i8*, i8*, i32)* @__seofread, i64 (%struct._reent*, i8*, i8*, i32)** %16, align 8, !dbg !324, !tbaa !293
  %17 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 12, i32 0, !dbg !325
  store i8* null, i8** %17, align 8, !dbg !326, !tbaa !296
  %18 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 17, i32 0, !dbg !327
  store i8* null, i8** %18, align 8, !dbg !328, !tbaa !299
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !329
  store i16 -1, i16* %19, align 2, !dbg !330, !tbaa !302
  %20 = call i32 @__ssvfwscanf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i32* %2, %struct.__va_list_tag* %3) #4, !dbg !332
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  ret i32 %20, !dbg !334
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i64 @wcslen(i32*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @__seofread(%struct._reent*, i8*, i8*, i32) #1

; Function Attrs: noredzone
declare dso_local i32 @__ssvfwscanf_r(%struct._reent*, %struct.__sFILE*, i32*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vswscanf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vswscanf", scope: !1, file: !1, line: 40, type: !11, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !28)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !14, !19}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !18, line: 83, baseType: !13)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !21)
!21 = !{!22, !24, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !20, file: !1, baseType: !23, size: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !20, file: !1, baseType: !23, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 128)
!28 = !{!29, !30, !31}
!29 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 40, type: !14)
!30 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 40, type: !14)
!31 = !DILocalVariable(name: "ap", arg: 3, scope: !10, file: !1, line: 41, type: !19)
!32 = !DILocation(line: 40, column: 38, scope: !10)
!33 = !DILocation(line: 40, column: 71, scope: !10)
!34 = !DILocation(line: 41, column: 11, scope: !10)
!35 = !DILocation(line: 43, column: 23, scope: !10)
!36 = !DILocalVariable(name: "ptr", arg: 1, scope: !37, file: !1, line: 49, type: !40)
!37 = distinct !DISubprogram(name: "_vswscanf_r", scope: !1, file: !1, line: 49, type: !38, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !254)
!38 = !DISubroutineType(types: !39)
!39 = !{!13, !40, !15, !15, !19}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !42, line: 569, size: 14912, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !45, !122, !123, !124, !125, !129, !130, !133, !134, !138, !150, !151, !152, !154, !155, !156, !218, !239, !240, !245, !252}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !41, file: !42, line: 571, baseType: !13, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !41, file: !42, line: 576, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !42, line: 287, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !42, line: 181, size: 1408, elements: !49)
!49 = !{!50, !51, !52, !53, !55, !56, !61, !62, !63, !72, !78, !83, !87, !88, !89, !90, !94, !98, !99, !100, !102, !103, !107, !121}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !48, file: !42, line: 182, baseType: !4, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !48, file: !42, line: 183, baseType: !13, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !48, file: !42, line: 184, baseType: !13, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !42, line: 185, baseType: !54, size: 16, offset: 128)
!54 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !48, file: !42, line: 186, baseType: !54, size: 16, offset: 144)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !48, file: !42, line: 187, baseType: !57, size: 128, offset: 192)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !42, line: 117, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !57, file: !42, line: 118, baseType: !4, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !57, file: !42, line: 119, baseType: !13, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !48, file: !42, line: 188, baseType: !13, size: 32, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !48, file: !42, line: 195, baseType: !26, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !48, file: !42, line: 197, baseType: !64, size: 64, offset: 448)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !40, !26, !70, !13}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !68, line: 145, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !48, file: !42, line: 199, baseType: !73, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!67, !40, !26, !76, !13}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !48, file: !42, line: 202, baseType: !79, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !40, !26, !82, !13}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !68, line: 114, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !48, file: !42, line: 203, baseType: !84, size: 64, offset: 640)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!13, !40, !26}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !48, file: !42, line: 206, baseType: !57, size: 128, offset: 704)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !48, file: !42, line: 207, baseType: !4, size: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !48, file: !42, line: 208, baseType: !13, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !48, file: !42, line: 211, baseType: !91, size: 24, offset: 928)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 3)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !48, file: !42, line: 212, baseType: !95, size: 8, offset: 952)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !48, file: !42, line: 215, baseType: !57, size: 128, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !48, file: !42, line: 218, baseType: !13, size: 32, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !42, line: 219, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !68, line: 44, baseType: !69)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !48, file: !42, line: 222, baseType: !40, size: 64, offset: 1216)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !42, line: 226, baseType: !104, size: 32, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !68, line: 175, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !106, line: 12, baseType: !13)
!106 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !48, file: !42, line: 228, baseType: !108, size: 64, offset: 1312)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !68, line: 171, baseType: !109)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 163, size: 64, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !109, file: !68, line: 165, baseType: !13, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !109, file: !68, line: 170, baseType: !113, size: 32, offset: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !68, line: 166, size: 32, elements: !114)
!114 = !{!115, !117}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !113, file: !68, line: 168, baseType: !116, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !18, line: 124, baseType: !23)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !113, file: !68, line: 169, baseType: !118, size: 32)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 4)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !42, line: 229, baseType: !13, size: 32, offset: 1376)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !41, file: !42, line: 576, baseType: !46, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !41, file: !42, line: 576, baseType: !46, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !41, file: !42, line: 578, baseType: !13, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !41, file: !42, line: 579, baseType: !126, size: 200, offset: 288)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 200, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 25)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !41, file: !42, line: 582, baseType: !13, size: 32, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !41, file: !42, line: 583, baseType: !131, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !42, line: 40, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !41, file: !42, line: 585, baseType: !13, size: 32, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !41, file: !42, line: 587, baseType: !135, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !40}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !41, file: !42, line: 590, baseType: !139, size: 64, offset: 768)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !42, line: 47, size: 256, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !140, file: !42, line: 49, baseType: !139, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !140, file: !42, line: 50, baseType: !13, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !140, file: !42, line: 50, baseType: !13, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !140, file: !42, line: 50, baseType: !13, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !140, file: !42, line: 50, baseType: !13, size: 32, offset: 160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !140, file: !42, line: 51, baseType: !148, size: 32, offset: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32, elements: !96)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !42, line: 25, baseType: !23)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !41, file: !42, line: 591, baseType: !13, size: 32, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !41, file: !42, line: 592, baseType: !139, size: 64, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !41, file: !42, line: 593, baseType: !153, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !41, file: !42, line: 596, baseType: !13, size: 32, offset: 1024)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !41, file: !42, line: 597, baseType: !70, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !41, file: !42, line: 632, baseType: !157, size: 2880, offset: 1152)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !41, file: !42, line: 599, size: 2880, elements: !158)
!158 = !{!159, !209}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !157, file: !42, line: 622, baseType: !160, size: 1728)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !42, line: 601, size: 1728, elements: !161)
!161 = !{!162, !163, !164, !168, !180, !181, !183, !191, !192, !193, !194, !198, !202, !203, !204, !205, !206, !207, !208}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !160, file: !42, line: 603, baseType: !23, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !160, file: !42, line: 604, baseType: !70, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !160, file: !42, line: 605, baseType: !165, size: 208, offset: 128)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 208, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 26)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !160, file: !42, line: 606, baseType: !169, size: 288, offset: 352)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !42, line: 55, size: 288, elements: !170)
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !169, file: !42, line: 57, baseType: !13, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !169, file: !42, line: 58, baseType: !13, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !169, file: !42, line: 59, baseType: !13, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !169, file: !42, line: 60, baseType: !13, size: 32, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !169, file: !42, line: 61, baseType: !13, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !169, file: !42, line: 62, baseType: !13, size: 32, offset: 160)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !169, file: !42, line: 63, baseType: !13, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !169, file: !42, line: 64, baseType: !13, size: 32, offset: 224)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !169, file: !42, line: 65, baseType: !13, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !160, file: !42, line: 607, baseType: !13, size: 32, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !160, file: !42, line: 608, baseType: !182, size: 64, offset: 704)
!182 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !160, file: !42, line: 609, baseType: !184, size: 112, offset: 768)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !42, line: 319, size: 112, elements: !185)
!185 = !{!186, !189, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !184, file: !42, line: 320, baseType: !187, size: 48)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 48, elements: !92)
!188 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !184, file: !42, line: 321, baseType: !187, size: 48, offset: 48)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !184, file: !42, line: 322, baseType: !188, size: 16, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !160, file: !42, line: 610, baseType: !108, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !160, file: !42, line: 611, baseType: !108, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !160, file: !42, line: 612, baseType: !108, size: 64, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !160, file: !42, line: 613, baseType: !195, size: 64, offset: 1088)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !160, file: !42, line: 614, baseType: !199, size: 192, offset: 1152)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 192, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 24)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !160, file: !42, line: 615, baseType: !13, size: 32, offset: 1344)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !160, file: !42, line: 616, baseType: !108, size: 64, offset: 1376)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !160, file: !42, line: 617, baseType: !108, size: 64, offset: 1440)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !160, file: !42, line: 618, baseType: !108, size: 64, offset: 1504)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !160, file: !42, line: 619, baseType: !108, size: 64, offset: 1568)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !160, file: !42, line: 620, baseType: !108, size: 64, offset: 1632)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !160, file: !42, line: 621, baseType: !13, size: 32, offset: 1696)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !157, file: !42, line: 631, baseType: !210, size: 2880)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !42, line: 626, size: 2880, elements: !211)
!211 = !{!212, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !210, file: !42, line: 629, baseType: !213, size: 1920)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 30)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !210, file: !42, line: 630, baseType: !217, size: 960, offset: 1920)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 960, elements: !214)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !41, file: !42, line: 636, baseType: !219, size: 64, offset: 4032)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !42, line: 93, size: 6336, elements: !221)
!221 = !{!222, !223, !224, !231}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !220, file: !42, line: 94, baseType: !219, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !220, file: !42, line: 95, baseType: !13, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !220, file: !42, line: 97, baseType: !225, size: 2048, offset: 128)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !229)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !{!230}
!230 = !DISubrange(count: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !220, file: !42, line: 98, baseType: !232, size: 4160, offset: 2176)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !42, line: 74, size: 4160, elements: !233)
!233 = !{!234, !236, !237, !238}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !232, file: !42, line: 75, baseType: !235, size: 2048)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 2048, elements: !229)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !232, file: !42, line: 76, baseType: !235, size: 2048, offset: 2048)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !232, file: !42, line: 78, baseType: !149, size: 32, offset: 4096)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !232, file: !42, line: 81, baseType: !149, size: 32, offset: 4128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !41, file: !42, line: 637, baseType: !220, size: 6336, offset: 4096)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !41, file: !42, line: 641, baseType: !241, size: 64, offset: 10432)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !13}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !41, file: !42, line: 646, baseType: !246, size: 192, offset: 10496)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !42, line: 291, size: 192, elements: !247)
!247 = !{!248, !250, !251}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !246, file: !42, line: 293, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !246, file: !42, line: 294, baseType: !13, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !246, file: !42, line: 295, baseType: !46, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !41, file: !42, line: 648, baseType: !253, size: 4224, offset: 10688)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 4224, elements: !92)
!254 = !{!36, !255, !256, !257, !258}
!255 = !DILocalVariable(name: "str", arg: 2, scope: !37, file: !1, line: 49, type: !15)
!256 = !DILocalVariable(name: "fmt", arg: 3, scope: !37, file: !1, line: 49, type: !15)
!257 = !DILocalVariable(name: "ap", arg: 4, scope: !37, file: !1, line: 50, type: !19)
!258 = !DILocalVariable(name: "f", scope: !37, file: !1, line: 52, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !260, line: 66, baseType: !47)
!260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!261 = !DILocation(line: 49, column: 29, scope: !37, inlinedAt: !262)
!262 = distinct !DILocation(line: 43, column: 10, scope: !10)
!263 = !DILocation(line: 49, column: 50, scope: !37, inlinedAt: !262)
!264 = !DILocation(line: 49, column: 71, scope: !37, inlinedAt: !262)
!265 = !DILocation(line: 50, column: 15, scope: !37, inlinedAt: !262)
!266 = !DILocation(line: 52, column: 3, scope: !37, inlinedAt: !262)
!267 = !DILocation(line: 54, column: 5, scope: !37, inlinedAt: !262)
!268 = !DILocation(line: 54, column: 12, scope: !37, inlinedAt: !262)
!269 = !{!270, !275, i64 16}
!270 = !{!"__sFILE", !271, i64 0, !274, i64 8, !274, i64 12, !275, i64 16, !275, i64 18, !276, i64 24, !274, i64 40, !271, i64 48, !271, i64 56, !271, i64 64, !271, i64 72, !271, i64 80, !276, i64 88, !271, i64 104, !274, i64 112, !272, i64 116, !272, i64 119, !276, i64 120, !274, i64 136, !277, i64 144, !271, i64 152, !274, i64 160, !278, i64 164, !274, i64 172}
!271 = !{!"any pointer", !272, i64 0}
!272 = !{!"omnipotent char", !273, i64 0}
!273 = !{!"Simple C/C++ TBAA"}
!274 = !{!"int", !272, i64 0}
!275 = !{!"short", !272, i64 0}
!276 = !{!"__sbuf", !271, i64 0, !274, i64 8}
!277 = !{!"long", !272, i64 0}
!278 = !{!"", !274, i64 0, !272, i64 4}
!279 = !DILocation(line: 55, column: 22, scope: !37, inlinedAt: !262)
!280 = !{!270, !271, i64 0}
!281 = !DILocation(line: 55, column: 5, scope: !37, inlinedAt: !262)
!282 = !DILocation(line: 55, column: 15, scope: !37, inlinedAt: !262)
!283 = !{!270, !271, i64 24}
!284 = !DILocation(line: 56, column: 24, scope: !37, inlinedAt: !262)
!285 = !DILocation(line: 56, column: 19, scope: !37, inlinedAt: !262)
!286 = !DILocation(line: 56, column: 22, scope: !37, inlinedAt: !262)
!287 = !{!270, !274, i64 8}
!288 = !DILocation(line: 56, column: 9, scope: !37, inlinedAt: !262)
!289 = !DILocation(line: 56, column: 15, scope: !37, inlinedAt: !262)
!290 = !{!270, !274, i64 32}
!291 = !DILocation(line: 57, column: 5, scope: !37, inlinedAt: !262)
!292 = !DILocation(line: 57, column: 11, scope: !37, inlinedAt: !262)
!293 = !{!270, !271, i64 56}
!294 = !DILocation(line: 58, column: 9, scope: !37, inlinedAt: !262)
!295 = !DILocation(line: 58, column: 15, scope: !37, inlinedAt: !262)
!296 = !{!270, !271, i64 88}
!297 = !DILocation(line: 59, column: 9, scope: !37, inlinedAt: !262)
!298 = !DILocation(line: 59, column: 15, scope: !37, inlinedAt: !262)
!299 = !{!270, !271, i64 120}
!300 = !DILocation(line: 60, column: 5, scope: !37, inlinedAt: !262)
!301 = !DILocation(line: 60, column: 11, scope: !37, inlinedAt: !262)
!302 = !{!270, !275, i64 18}
!303 = !DILocation(line: 52, column: 8, scope: !37, inlinedAt: !262)
!304 = !DILocation(line: 61, column: 10, scope: !37, inlinedAt: !262)
!305 = !DILocation(line: 62, column: 1, scope: !37, inlinedAt: !262)
!306 = !DILocation(line: 61, column: 3, scope: !37, inlinedAt: !262)
!307 = !DILocation(line: 43, column: 3, scope: !10)
!308 = !DILocation(line: 49, column: 29, scope: !37)
!309 = !DILocation(line: 49, column: 50, scope: !37)
!310 = !DILocation(line: 49, column: 71, scope: !37)
!311 = !DILocation(line: 50, column: 15, scope: !37)
!312 = !DILocation(line: 52, column: 3, scope: !37)
!313 = !DILocation(line: 54, column: 5, scope: !37)
!314 = !DILocation(line: 54, column: 12, scope: !37)
!315 = !DILocation(line: 55, column: 22, scope: !37)
!316 = !DILocation(line: 55, column: 5, scope: !37)
!317 = !DILocation(line: 55, column: 15, scope: !37)
!318 = !DILocation(line: 56, column: 24, scope: !37)
!319 = !DILocation(line: 56, column: 19, scope: !37)
!320 = !DILocation(line: 56, column: 22, scope: !37)
!321 = !DILocation(line: 56, column: 9, scope: !37)
!322 = !DILocation(line: 56, column: 15, scope: !37)
!323 = !DILocation(line: 57, column: 5, scope: !37)
!324 = !DILocation(line: 57, column: 11, scope: !37)
!325 = !DILocation(line: 58, column: 9, scope: !37)
!326 = !DILocation(line: 58, column: 15, scope: !37)
!327 = !DILocation(line: 59, column: 9, scope: !37)
!328 = !DILocation(line: 59, column: 15, scope: !37)
!329 = !DILocation(line: 60, column: 5, scope: !37)
!330 = !DILocation(line: 60, column: 11, scope: !37)
!331 = !DILocation(line: 52, column: 8, scope: !37)
!332 = !DILocation(line: 61, column: 10, scope: !37)
!333 = !DILocation(line: 62, column: 1, scope: !37)
!334 = !DILocation(line: 61, column: 3, scope: !37)
