; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasprintf.c"
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
define dso_local i32 @vasprintf(i8** nocapture, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %4 = alloca %struct.__sFILE, align 8
  %5 = tail call %struct._reent* @__getreent() #4, !dbg !31
  %6 = bitcast %struct.__sFILE* %4 to i8*, !dbg !259
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !259
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 3, !dbg !260
  store i16 648, i16* %7, align 8, !dbg !261, !tbaa !262
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 0, !dbg !272
  store i8* null, i8** %8, align 8, !dbg !273, !tbaa !274
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 0, !dbg !275
  store i8* null, i8** %9, align 8, !dbg !276, !tbaa !277
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 2, !dbg !278
  store i32 0, i32* %10, align 4, !dbg !279, !tbaa !280
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 5, i32 1, !dbg !281
  store i32 0, i32* %11, align 8, !dbg !282, !tbaa !283
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %4, i64 0, i32 4, !dbg !284
  store i16 -1, i16* %12, align 2, !dbg !285, !tbaa !286
  %13 = call i32 @_svfprintf_r(%struct._reent* %5, %struct.__sFILE* nonnull %4, i8* %1, %struct.__va_list_tag* %2) #4, !dbg !288
  %14 = icmp sgt i32 %13, -1, !dbg !290
  br i1 %14, label %15, label %20, !dbg !292

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %8, align 8, !dbg !293, !tbaa !274
  store i8 0, i8* %16, align 1, !dbg !295, !tbaa !296
  %17 = bitcast i8** %9 to i64*, !dbg !297
  %18 = load i64, i64* %17, align 8, !dbg !297, !tbaa !277
  %19 = bitcast i8** %0 to i64*, !dbg !298
  store i64 %18, i64* %19, align 8, !dbg !298, !tbaa !299
  br label %20, !dbg !300

; <label>:20:                                     ; preds = %3, %15
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 %13, !dbg !303
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vasprintf_r(%struct._reent*, i8** nocapture, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !33 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = bitcast %struct.__sFILE* %5 to i8*, !dbg !305
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %6) #5, !dbg !305
  %7 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !306
  store i16 648, i16* %7, align 8, !dbg !307, !tbaa !262
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !308
  store i8* null, i8** %8, align 8, !dbg !309, !tbaa !274
  %9 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !310
  store i8* null, i8** %9, align 8, !dbg !311, !tbaa !277
  %10 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !312
  store i32 0, i32* %10, align 4, !dbg !313, !tbaa !280
  %11 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !314
  store i32 0, i32* %11, align 8, !dbg !315, !tbaa !283
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !316
  store i16 -1, i16* %12, align 2, !dbg !317, !tbaa !286
  %13 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #4, !dbg !319
  %14 = icmp sgt i32 %13, -1, !dbg !321
  br i1 %14, label %15, label %20, !dbg !322

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %8, align 8, !dbg !323, !tbaa !274
  store i8 0, i8* %16, align 1, !dbg !324, !tbaa !296
  %17 = bitcast i8** %9 to i64*, !dbg !325
  %18 = load i64, i64* %17, align 8, !dbg !325, !tbaa !277
  %19 = bitcast i8** %1 to i64*, !dbg !326
  store i64 %18, i64* %19, align 8, !dbg !326, !tbaa !299
  br label %20, !dbg !327

; <label>:20:                                     ; preds = %15, %4
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %6) #5, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  ret i32 %13, !dbg !329
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @_svfprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vasprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vasprintf", scope: !1, file: !1, line: 34, type: !11, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15, !17}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !19)
!19 = !{!20, !22, !23, !25}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !18, file: !1, baseType: !21, size: 32)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !18, file: !1, baseType: !21, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !18, file: !1, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !18, file: !1, baseType: !24, size: 64, offset: 128)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "strp", arg: 1, scope: !10, file: !1, line: 34, type: !14)
!28 = !DILocalVariable(name: "fmt", arg: 2, scope: !10, file: !1, line: 34, type: !15)
!29 = !DILocalVariable(name: "ap", arg: 3, scope: !10, file: !1, line: 34, type: !17)
!30 = !DILocation(line: 34, column: 1, scope: !10)
!31 = !DILocation(line: 39, column: 24, scope: !10)
!32 = !DILocalVariable(name: "ptr", arg: 1, scope: !33, file: !1, line: 51, type: !36)
!33 = distinct !DISubprogram(name: "_vasprintf_r", scope: !1, file: !1, line: 51, type: !34, isLocal: false, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !249)
!34 = !DISubroutineType(types: !35)
!35 = !{!13, !36, !14, !15, !17}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !38, line: 569, size: 14912, elements: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !117, !118, !119, !120, !124, !125, !128, !129, !133, !145, !146, !147, !149, !150, !151, !213, !234, !235, !240, !247}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !37, file: !38, line: 571, baseType: !13, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !38, line: 287, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !38, line: 181, size: 1408, elements: !45)
!45 = !{!46, !49, !50, !51, !53, !54, !59, !60, !61, !68, !72, !77, !81, !82, !83, !84, !88, !92, !93, !94, !96, !97, !101, !116}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !44, file: !38, line: 182, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !44, file: !38, line: 183, baseType: !13, size: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !44, file: !38, line: 184, baseType: !13, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !38, line: 185, baseType: !52, size: 16, offset: 128)
!52 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !44, file: !38, line: 186, baseType: !52, size: 16, offset: 144)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !44, file: !38, line: 187, baseType: !55, size: 128, offset: 192)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !38, line: 117, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !55, file: !38, line: 118, baseType: !47, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !55, file: !38, line: 119, baseType: !13, size: 32, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !44, file: !38, line: 188, baseType: !13, size: 32, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !44, file: !38, line: 195, baseType: !24, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !44, file: !38, line: 197, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{!65, !36, !24, !4, !13}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !66, line: 145, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !44, file: !38, line: 199, baseType: !69, size: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!65, !36, !24, !15, !13}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !44, file: !38, line: 202, baseType: !73, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !36, !24, !76, !13}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !66, line: 114, baseType: !67)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !44, file: !38, line: 203, baseType: !78, size: 64, offset: 640)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!13, !36, !24}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !44, file: !38, line: 206, baseType: !55, size: 128, offset: 704)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !44, file: !38, line: 207, baseType: !47, size: 64, offset: 832)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !44, file: !38, line: 208, baseType: !13, size: 32, offset: 896)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !44, file: !38, line: 211, baseType: !85, size: 24, offset: 928)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 24, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !44, file: !38, line: 212, baseType: !89, size: 8, offset: 952)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !44, file: !38, line: 215, baseType: !55, size: 128, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !44, file: !38, line: 218, baseType: !13, size: 32, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !38, line: 219, baseType: !95, size: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !66, line: 44, baseType: !67)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !44, file: !38, line: 222, baseType: !36, size: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !38, line: 226, baseType: !98, size: 32, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !66, line: 175, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !100, line: 12, baseType: !13)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !44, file: !38, line: 228, baseType: !102, size: 64, offset: 1312)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !66, line: 171, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 163, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !103, file: !66, line: 165, baseType: !13, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !103, file: !66, line: 170, baseType: !107, size: 32, offset: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !66, line: 166, size: 32, elements: !108)
!108 = !{!109, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !107, file: !66, line: 168, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !111, line: 124, baseType: !21)
!111 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !107, file: !66, line: 169, baseType: !113, size: 32)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !38, line: 229, baseType: !13, size: 32, offset: 1376)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !37, file: !38, line: 576, baseType: !42, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !37, file: !38, line: 578, baseType: !13, size: 32, offset: 256)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !37, file: !38, line: 579, baseType: !121, size: 200, offset: 288)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 25)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !37, file: !38, line: 582, baseType: !13, size: 32, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !37, file: !38, line: 583, baseType: !126, size: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !38, line: 40, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !37, file: !38, line: 585, baseType: !13, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !37, file: !38, line: 587, baseType: !130, size: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !36}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !37, file: !38, line: 590, baseType: !134, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !38, line: 47, size: 256, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !135, file: !38, line: 49, baseType: !134, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !135, file: !38, line: 50, baseType: !13, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !135, file: !38, line: 50, baseType: !13, size: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !135, file: !38, line: 50, baseType: !13, size: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !135, file: !38, line: 50, baseType: !13, size: 32, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !135, file: !38, line: 51, baseType: !143, size: 32, offset: 192)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32, elements: !90)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !38, line: 25, baseType: !21)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !37, file: !38, line: 591, baseType: !13, size: 32, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !37, file: !38, line: 592, baseType: !134, size: 64, offset: 896)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !37, file: !38, line: 593, baseType: !148, size: 64, offset: 960)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !37, file: !38, line: 596, baseType: !13, size: 32, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !37, file: !38, line: 597, baseType: !4, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !37, file: !38, line: 632, baseType: !152, size: 2880, offset: 1152)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !37, file: !38, line: 599, size: 2880, elements: !153)
!153 = !{!154, !204}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !152, file: !38, line: 622, baseType: !155, size: 1728)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !38, line: 601, size: 1728, elements: !156)
!156 = !{!157, !158, !159, !163, !175, !176, !178, !186, !187, !188, !189, !193, !197, !198, !199, !200, !201, !202, !203}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !155, file: !38, line: 603, baseType: !21, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !155, file: !38, line: 604, baseType: !4, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !155, file: !38, line: 605, baseType: !160, size: 208, offset: 128)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 26)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !155, file: !38, line: 606, baseType: !164, size: 288, offset: 352)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !38, line: 55, size: 288, elements: !165)
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !164, file: !38, line: 57, baseType: !13, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !164, file: !38, line: 58, baseType: !13, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !164, file: !38, line: 59, baseType: !13, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !164, file: !38, line: 60, baseType: !13, size: 32, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !164, file: !38, line: 61, baseType: !13, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !164, file: !38, line: 62, baseType: !13, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !164, file: !38, line: 63, baseType: !13, size: 32, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !164, file: !38, line: 64, baseType: !13, size: 32, offset: 224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !164, file: !38, line: 65, baseType: !13, size: 32, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !155, file: !38, line: 607, baseType: !13, size: 32, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !155, file: !38, line: 608, baseType: !177, size: 64, offset: 704)
!177 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !155, file: !38, line: 609, baseType: !179, size: 112, offset: 768)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !38, line: 319, size: 112, elements: !180)
!180 = !{!181, !184, !185}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !179, file: !38, line: 320, baseType: !182, size: 48)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 48, elements: !86)
!183 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !179, file: !38, line: 321, baseType: !182, size: 48, offset: 48)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !179, file: !38, line: 322, baseType: !183, size: 16, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !155, file: !38, line: 610, baseType: !102, size: 64, offset: 896)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !155, file: !38, line: 611, baseType: !102, size: 64, offset: 960)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !155, file: !38, line: 612, baseType: !102, size: 64, offset: 1024)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !155, file: !38, line: 613, baseType: !190, size: 64, offset: 1088)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 8)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !155, file: !38, line: 614, baseType: !194, size: 192, offset: 1152)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 24)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !155, file: !38, line: 615, baseType: !13, size: 32, offset: 1344)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !155, file: !38, line: 616, baseType: !102, size: 64, offset: 1376)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !155, file: !38, line: 617, baseType: !102, size: 64, offset: 1440)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !155, file: !38, line: 618, baseType: !102, size: 64, offset: 1504)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !155, file: !38, line: 619, baseType: !102, size: 64, offset: 1568)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !155, file: !38, line: 620, baseType: !102, size: 64, offset: 1632)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !155, file: !38, line: 621, baseType: !13, size: 32, offset: 1696)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !152, file: !38, line: 631, baseType: !205, size: 2880)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !38, line: 626, size: 2880, elements: !206)
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !205, file: !38, line: 629, baseType: !208, size: 1920)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1920, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 30)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !205, file: !38, line: 630, baseType: !212, size: 960, offset: 1920)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 960, elements: !209)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !37, file: !38, line: 636, baseType: !214, size: 64, offset: 4032)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !38, line: 93, size: 6336, elements: !216)
!216 = !{!217, !218, !219, !226}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !215, file: !38, line: 94, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !215, file: !38, line: 95, baseType: !13, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !215, file: !38, line: 97, baseType: !220, size: 2048, offset: 128)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 2048, elements: !224)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null}
!224 = !{!225}
!225 = !DISubrange(count: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !215, file: !38, line: 98, baseType: !227, size: 4160, offset: 2176)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !38, line: 74, size: 4160, elements: !228)
!228 = !{!229, !231, !232, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !227, file: !38, line: 75, baseType: !230, size: 2048)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 2048, elements: !224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !227, file: !38, line: 76, baseType: !230, size: 2048, offset: 2048)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !227, file: !38, line: 78, baseType: !144, size: 32, offset: 4096)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !227, file: !38, line: 81, baseType: !144, size: 32, offset: 4128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !37, file: !38, line: 637, baseType: !215, size: 6336, offset: 4096)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !37, file: !38, line: 641, baseType: !236, size: 64, offset: 10432)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !13}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !37, file: !38, line: 646, baseType: !241, size: 192, offset: 10496)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !38, line: 291, size: 192, elements: !242)
!242 = !{!243, !245, !246}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !241, file: !38, line: 293, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !241, file: !38, line: 294, baseType: !13, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !241, file: !38, line: 295, baseType: !42, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !37, file: !38, line: 648, baseType: !248, size: 4224, offset: 10688)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 4224, elements: !86)
!249 = !{!32, !250, !251, !252, !253, !254}
!250 = !DILocalVariable(name: "strp", arg: 2, scope: !33, file: !1, line: 51, type: !14)
!251 = !DILocalVariable(name: "fmt", arg: 3, scope: !33, file: !1, line: 51, type: !15)
!252 = !DILocalVariable(name: "ap", arg: 4, scope: !33, file: !1, line: 51, type: !17)
!253 = !DILocalVariable(name: "ret", scope: !33, file: !1, line: 57, type: !13)
!254 = !DILocalVariable(name: "f", scope: !33, file: !1, line: 58, type: !255)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !256, line: 66, baseType: !43)
!256 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!257 = !DILocation(line: 51, column: 1, scope: !33, inlinedAt: !258)
!258 = distinct !DILocation(line: 39, column: 10, scope: !10)
!259 = !DILocation(line: 58, column: 3, scope: !33, inlinedAt: !258)
!260 = !DILocation(line: 60, column: 5, scope: !33, inlinedAt: !258)
!261 = !DILocation(line: 60, column: 12, scope: !33, inlinedAt: !258)
!262 = !{!263, !268, i64 16}
!263 = !{!"__sFILE", !264, i64 0, !267, i64 8, !267, i64 12, !268, i64 16, !268, i64 18, !269, i64 24, !267, i64 40, !264, i64 48, !264, i64 56, !264, i64 64, !264, i64 72, !264, i64 80, !269, i64 88, !264, i64 104, !267, i64 112, !265, i64 116, !265, i64 119, !269, i64 120, !267, i64 136, !270, i64 144, !264, i64 152, !267, i64 160, !271, i64 164, !267, i64 172}
!264 = !{!"any pointer", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !{!"int", !265, i64 0}
!268 = !{!"short", !265, i64 0}
!269 = !{!"__sbuf", !264, i64 0, !267, i64 8}
!270 = !{!"long", !265, i64 0}
!271 = !{!"", !267, i64 0, !265, i64 4}
!272 = !DILocation(line: 61, column: 19, scope: !33, inlinedAt: !258)
!273 = !DILocation(line: 61, column: 22, scope: !33, inlinedAt: !258)
!274 = !{!263, !264, i64 0}
!275 = !DILocation(line: 61, column: 9, scope: !33, inlinedAt: !258)
!276 = !DILocation(line: 61, column: 15, scope: !33, inlinedAt: !258)
!277 = !{!263, !264, i64 24}
!278 = !DILocation(line: 62, column: 19, scope: !33, inlinedAt: !258)
!279 = !DILocation(line: 62, column: 22, scope: !33, inlinedAt: !258)
!280 = !{!263, !267, i64 12}
!281 = !DILocation(line: 62, column: 9, scope: !33, inlinedAt: !258)
!282 = !DILocation(line: 62, column: 15, scope: !33, inlinedAt: !258)
!283 = !{!263, !267, i64 32}
!284 = !DILocation(line: 63, column: 5, scope: !33, inlinedAt: !258)
!285 = !DILocation(line: 63, column: 11, scope: !33, inlinedAt: !258)
!286 = !{!263, !268, i64 18}
!287 = !DILocation(line: 58, column: 8, scope: !33, inlinedAt: !258)
!288 = !DILocation(line: 64, column: 9, scope: !33, inlinedAt: !258)
!289 = !DILocation(line: 57, column: 7, scope: !33, inlinedAt: !258)
!290 = !DILocation(line: 65, column: 11, scope: !291, inlinedAt: !258)
!291 = distinct !DILexicalBlock(scope: !33, file: !1, line: 65, column: 7)
!292 = !DILocation(line: 65, column: 7, scope: !33, inlinedAt: !258)
!293 = !DILocation(line: 67, column: 10, scope: !294, inlinedAt: !258)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 66, column: 5)
!295 = !DILocation(line: 67, column: 13, scope: !294, inlinedAt: !258)
!296 = !{!265, !265, i64 0}
!297 = !DILocation(line: 68, column: 30, scope: !294, inlinedAt: !258)
!298 = !DILocation(line: 68, column: 13, scope: !294, inlinedAt: !258)
!299 = !{!264, !264, i64 0}
!300 = !DILocation(line: 69, column: 5, scope: !294, inlinedAt: !258)
!301 = !DILocation(line: 71, column: 1, scope: !33, inlinedAt: !258)
!302 = !DILocation(line: 70, column: 3, scope: !33, inlinedAt: !258)
!303 = !DILocation(line: 39, column: 3, scope: !10)
!304 = !DILocation(line: 51, column: 1, scope: !33)
!305 = !DILocation(line: 58, column: 3, scope: !33)
!306 = !DILocation(line: 60, column: 5, scope: !33)
!307 = !DILocation(line: 60, column: 12, scope: !33)
!308 = !DILocation(line: 61, column: 19, scope: !33)
!309 = !DILocation(line: 61, column: 22, scope: !33)
!310 = !DILocation(line: 61, column: 9, scope: !33)
!311 = !DILocation(line: 61, column: 15, scope: !33)
!312 = !DILocation(line: 62, column: 19, scope: !33)
!313 = !DILocation(line: 62, column: 22, scope: !33)
!314 = !DILocation(line: 62, column: 9, scope: !33)
!315 = !DILocation(line: 62, column: 15, scope: !33)
!316 = !DILocation(line: 63, column: 5, scope: !33)
!317 = !DILocation(line: 63, column: 11, scope: !33)
!318 = !DILocation(line: 58, column: 8, scope: !33)
!319 = !DILocation(line: 64, column: 9, scope: !33)
!320 = !DILocation(line: 57, column: 7, scope: !33)
!321 = !DILocation(line: 65, column: 11, scope: !291)
!322 = !DILocation(line: 65, column: 7, scope: !33)
!323 = !DILocation(line: 67, column: 10, scope: !294)
!324 = !DILocation(line: 67, column: 13, scope: !294)
!325 = !DILocation(line: 68, column: 30, scope: !294)
!326 = !DILocation(line: 68, column: 13, scope: !294)
!327 = !DILocation(line: 69, column: 5, scope: !294)
!328 = !DILocation(line: 71, column: 1, scope: !33)
!329 = !DILocation(line: 70, column: 3, scope: !33)
