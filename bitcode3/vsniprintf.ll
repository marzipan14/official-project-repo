; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsniprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsniprintf.c"
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
define dso_local i32 @vsniprintf(i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = tail call %struct._reent* @__getreent() #4, !dbg !36
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !262
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #5, !dbg !262
  %8 = icmp ugt i64 %1, 2147483647, !dbg !263
  br i1 %8, label %9, label %11, !dbg !265

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 0, !dbg !266
  store i32 139, i32* %10, align 8, !dbg !268, !tbaa !269
  br label %29, !dbg !278

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !279
  store i16 520, i16* %12, align 8, !dbg !280, !tbaa !281
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !287
  store i8* %0, i8** %13, align 8, !dbg !288, !tbaa !289
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !290
  store i8* %0, i8** %14, align 8, !dbg !291, !tbaa !292
  %15 = icmp ne i64 %1, 0, !dbg !293
  %16 = add i64 %1, 4294967295, !dbg !294
  %17 = select i1 %15, i64 %16, i64 0, !dbg !295
  %18 = trunc i64 %17 to i32, !dbg !296
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !297
  store i32 %18, i32* %19, align 4, !dbg !298, !tbaa !299
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !300
  store i32 %18, i32* %20, align 8, !dbg !301, !tbaa !302
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !303
  store i16 -1, i16* %21, align 2, !dbg !304, !tbaa !305
  %22 = call i32 @_svfiprintf_r(%struct._reent* %6, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #4, !dbg !307
  %23 = icmp slt i32 %22, -1, !dbg !309
  br i1 %23, label %24, label %26, !dbg !311

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 0, !dbg !312
  store i32 139, i32* %25, align 8, !dbg !313, !tbaa !269
  br label %26, !dbg !314

; <label>:26:                                     ; preds = %24, %11
  br i1 %15, label %27, label %29, !dbg !315

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %13, align 8, !dbg !316, !tbaa !289
  store i8 0, i8* %28, align 1, !dbg !318, !tbaa !319
  br label %29, !dbg !320

; <label>:29:                                     ; preds = %9, %26, %27
  %30 = phi i32 [ -1, %9 ], [ %22, %27 ], [ %22, %26 ], !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #5, !dbg !322
  ret i32 %30, !dbg !323
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vsniprintf_r(%struct._reent*, i8*, i64, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !38 {
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast %struct.__sFILE* %6 to i8*, !dbg !325
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #5, !dbg !325
  %8 = icmp ugt i64 %2, 2147483647, !dbg !326
  br i1 %8, label %9, label %11, !dbg !327

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !328
  store i32 139, i32* %10, align 8, !dbg !329, !tbaa !269
  br label %29, !dbg !330

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !331
  store i16 520, i16* %12, align 8, !dbg !332, !tbaa !281
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !333
  store i8* %1, i8** %13, align 8, !dbg !334, !tbaa !289
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !335
  store i8* %1, i8** %14, align 8, !dbg !336, !tbaa !292
  %15 = icmp ne i64 %2, 0, !dbg !337
  %16 = add i64 %2, 4294967295, !dbg !338
  %17 = select i1 %15, i64 %16, i64 0, !dbg !339
  %18 = trunc i64 %17 to i32, !dbg !340
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !341
  store i32 %18, i32* %19, align 4, !dbg !342, !tbaa !299
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !343
  store i32 %18, i32* %20, align 8, !dbg !344, !tbaa !302
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !345
  store i16 -1, i16* %21, align 2, !dbg !346, !tbaa !305
  %22 = call i32 @_svfiprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* %4) #4, !dbg !348
  %23 = icmp slt i32 %22, -1, !dbg !350
  br i1 %23, label %24, label %26, !dbg !351

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !352
  store i32 139, i32* %25, align 8, !dbg !353, !tbaa !269
  br label %26, !dbg !354

; <label>:26:                                     ; preds = %24, %11
  br i1 %15, label %27, label %29, !dbg !355

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %13, align 8, !dbg !356, !tbaa !289
  store i8 0, i8* %28, align 1, !dbg !357, !tbaa !319
  br label %29, !dbg !358

; <label>:29:                                     ; preds = %26, %27, %9
  %30 = phi i32 [ -1, %9 ], [ %22, %27 ], [ %22, %26 ], !dbg !359
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #5, !dbg !360
  ret i32 %30, !dbg !360
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @_svfiprintf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsniprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vsniprintf", scope: !1, file: !1, line: 35, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !30)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !16, !19, !21}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 58, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !23)
!23 = !{!24, !26, !27, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !22, file: !1, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !22, file: !1, baseType: !25, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !22, file: !1, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !22, file: !1, baseType: !28, size: 64, offset: 128)
!30 = !{!31, !32, !33, !34}
!31 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 35, type: !14)
!32 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !1, line: 35, type: !16)
!33 = !DILocalVariable(name: "fmt", arg: 3, scope: !10, file: !1, line: 35, type: !19)
!34 = !DILocalVariable(name: "ap", arg: 4, scope: !10, file: !1, line: 35, type: !21)
!35 = !DILocation(line: 35, column: 1, scope: !10)
!36 = !DILocation(line: 41, column: 25, scope: !10)
!37 = !DILocalVariable(name: "ptr", arg: 1, scope: !38, file: !1, line: 47, type: !41)
!38 = distinct !DISubprogram(name: "_vsniprintf_r", scope: !1, file: !1, line: 47, type: !39, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !251)
!39 = !DISubroutineType(types: !40)
!40 = !{!13, !41, !14, !16, !19, !21}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !43, line: 569, size: 14912, elements: !44)
!43 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!44 = !{!45, !46, !119, !120, !121, !122, !126, !127, !130, !131, !135, !147, !148, !149, !151, !152, !153, !215, !236, !237, !242, !249}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !42, file: !43, line: 571, baseType: !13, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !43, line: 287, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !43, line: 181, size: 1408, elements: !50)
!50 = !{!51, !52, !53, !54, !56, !57, !62, !63, !64, !71, !75, !80, !84, !85, !86, !87, !91, !95, !96, !97, !99, !100, !104, !118}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !49, file: !43, line: 182, baseType: !4, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !49, file: !43, line: 183, baseType: !13, size: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !49, file: !43, line: 184, baseType: !13, size: 32, offset: 96)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !49, file: !43, line: 185, baseType: !55, size: 16, offset: 128)
!55 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !49, file: !43, line: 186, baseType: !55, size: 16, offset: 144)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !49, file: !43, line: 187, baseType: !58, size: 128, offset: 192)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !43, line: 117, size: 128, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !58, file: !43, line: 118, baseType: !4, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !58, file: !43, line: 119, baseType: !13, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !49, file: !43, line: 188, baseType: !13, size: 32, offset: 320)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !49, file: !43, line: 195, baseType: !28, size: 64, offset: 384)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !49, file: !43, line: 197, baseType: !65, size: 64, offset: 448)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !41, !28, !14, !13}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !69, line: 145, baseType: !70)
!69 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !49, file: !43, line: 199, baseType: !72, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!68, !41, !28, !19, !13}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !49, file: !43, line: 202, baseType: !76, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !41, !28, !79, !13}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !69, line: 114, baseType: !70)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !49, file: !43, line: 203, baseType: !81, size: 64, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!13, !41, !28}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !49, file: !43, line: 206, baseType: !58, size: 128, offset: 704)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !49, file: !43, line: 207, baseType: !4, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !49, file: !43, line: 208, baseType: !13, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !49, file: !43, line: 211, baseType: !88, size: 24, offset: 928)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !49, file: !43, line: 212, baseType: !92, size: 8, offset: 952)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !49, file: !43, line: 215, baseType: !58, size: 128, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !49, file: !43, line: 218, baseType: !13, size: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !49, file: !43, line: 219, baseType: !98, size: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !69, line: 44, baseType: !70)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !49, file: !43, line: 222, baseType: !41, size: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !49, file: !43, line: 226, baseType: !101, size: 32, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !69, line: 175, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !103, line: 12, baseType: !13)
!103 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !49, file: !43, line: 228, baseType: !105, size: 64, offset: 1312)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !69, line: 171, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 163, size: 64, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !69, line: 165, baseType: !13, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !106, file: !69, line: 170, baseType: !110, size: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !69, line: 166, size: 32, elements: !111)
!111 = !{!112, !114}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !110, file: !69, line: 168, baseType: !113, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !17, line: 124, baseType: !25)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !110, file: !69, line: 169, baseType: !115, size: 32)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !49, file: !43, line: 229, baseType: !13, size: 32, offset: 1376)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !42, file: !43, line: 576, baseType: !47, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !42, file: !43, line: 578, baseType: !13, size: 32, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !42, file: !43, line: 579, baseType: !123, size: 200, offset: 288)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 200, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 25)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !42, file: !43, line: 582, baseType: !13, size: 32, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !42, file: !43, line: 583, baseType: !128, size: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !43, line: 40, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !42, file: !43, line: 585, baseType: !13, size: 32, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !42, file: !43, line: 587, baseType: !132, size: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !41}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !42, file: !43, line: 590, baseType: !136, size: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !43, line: 47, size: 256, elements: !138)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !137, file: !43, line: 49, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !137, file: !43, line: 50, baseType: !13, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !137, file: !43, line: 50, baseType: !13, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !137, file: !43, line: 50, baseType: !13, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !137, file: !43, line: 50, baseType: !13, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !137, file: !43, line: 51, baseType: !145, size: 32, offset: 192)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 32, elements: !93)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !43, line: 25, baseType: !25)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !42, file: !43, line: 591, baseType: !13, size: 32, offset: 832)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !42, file: !43, line: 592, baseType: !136, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !42, file: !43, line: 593, baseType: !150, size: 64, offset: 960)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !42, file: !43, line: 596, baseType: !13, size: 32, offset: 1024)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !42, file: !43, line: 597, baseType: !14, size: 64, offset: 1088)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !42, file: !43, line: 632, baseType: !154, size: 2880, offset: 1152)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !43, line: 599, size: 2880, elements: !155)
!155 = !{!156, !206}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !154, file: !43, line: 622, baseType: !157, size: 1728)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !43, line: 601, size: 1728, elements: !158)
!158 = !{!159, !160, !161, !165, !177, !178, !180, !188, !189, !190, !191, !195, !199, !200, !201, !202, !203, !204, !205}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !157, file: !43, line: 603, baseType: !25, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !157, file: !43, line: 604, baseType: !14, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !157, file: !43, line: 605, baseType: !162, size: 208, offset: 128)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 26)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !157, file: !43, line: 606, baseType: !166, size: 288, offset: 352)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !43, line: 55, size: 288, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !166, file: !43, line: 57, baseType: !13, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !166, file: !43, line: 58, baseType: !13, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !166, file: !43, line: 59, baseType: !13, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !166, file: !43, line: 60, baseType: !13, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !166, file: !43, line: 61, baseType: !13, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !166, file: !43, line: 62, baseType: !13, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !166, file: !43, line: 63, baseType: !13, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !166, file: !43, line: 64, baseType: !13, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !166, file: !43, line: 65, baseType: !13, size: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !157, file: !43, line: 607, baseType: !13, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !157, file: !43, line: 608, baseType: !179, size: 64, offset: 704)
!179 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !157, file: !43, line: 609, baseType: !181, size: 112, offset: 768)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !43, line: 319, size: 112, elements: !182)
!182 = !{!183, !186, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !181, file: !43, line: 320, baseType: !184, size: 48)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !89)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !181, file: !43, line: 321, baseType: !184, size: 48, offset: 48)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !181, file: !43, line: 322, baseType: !185, size: 16, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !157, file: !43, line: 610, baseType: !105, size: 64, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !157, file: !43, line: 611, baseType: !105, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !157, file: !43, line: 612, baseType: !105, size: 64, offset: 1024)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !157, file: !43, line: 613, baseType: !192, size: 64, offset: 1088)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !157, file: !43, line: 614, baseType: !196, size: 192, offset: 1152)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 24)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !157, file: !43, line: 615, baseType: !13, size: 32, offset: 1344)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !157, file: !43, line: 616, baseType: !105, size: 64, offset: 1376)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !157, file: !43, line: 617, baseType: !105, size: 64, offset: 1440)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !157, file: !43, line: 618, baseType: !105, size: 64, offset: 1504)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !157, file: !43, line: 619, baseType: !105, size: 64, offset: 1568)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !157, file: !43, line: 620, baseType: !105, size: 64, offset: 1632)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !157, file: !43, line: 621, baseType: !13, size: 32, offset: 1696)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !154, file: !43, line: 631, baseType: !207, size: 2880)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !43, line: 626, size: 2880, elements: !208)
!208 = !{!209, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !207, file: !43, line: 629, baseType: !210, size: 1920)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 30)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !207, file: !43, line: 630, baseType: !214, size: 960, offset: 1920)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 960, elements: !211)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !42, file: !43, line: 636, baseType: !216, size: 64, offset: 4032)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !43, line: 93, size: 6336, elements: !218)
!218 = !{!219, !220, !221, !228}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !217, file: !43, line: 94, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !217, file: !43, line: 95, baseType: !13, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !217, file: !43, line: 97, baseType: !222, size: 2048, offset: 128)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !226)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !{!227}
!227 = !DISubrange(count: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !217, file: !43, line: 98, baseType: !229, size: 4160, offset: 2176)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !43, line: 74, size: 4160, elements: !230)
!230 = !{!231, !233, !234, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !229, file: !43, line: 75, baseType: !232, size: 2048)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !226)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !229, file: !43, line: 76, baseType: !232, size: 2048, offset: 2048)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !229, file: !43, line: 78, baseType: !146, size: 32, offset: 4096)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !229, file: !43, line: 81, baseType: !146, size: 32, offset: 4128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !42, file: !43, line: 637, baseType: !217, size: 6336, offset: 4096)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !42, file: !43, line: 641, baseType: !238, size: 64, offset: 10432)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !13}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !42, file: !43, line: 646, baseType: !243, size: 192, offset: 10496)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !43, line: 291, size: 192, elements: !244)
!244 = !{!245, !247, !248}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !243, file: !43, line: 293, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !243, file: !43, line: 294, baseType: !13, size: 32, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !243, file: !43, line: 295, baseType: !47, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !42, file: !43, line: 648, baseType: !250, size: 4224, offset: 10688)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 4224, elements: !89)
!251 = !{!37, !252, !253, !254, !255, !256, !257}
!252 = !DILocalVariable(name: "str", arg: 2, scope: !38, file: !1, line: 47, type: !14)
!253 = !DILocalVariable(name: "size", arg: 3, scope: !38, file: !1, line: 47, type: !16)
!254 = !DILocalVariable(name: "fmt", arg: 4, scope: !38, file: !1, line: 47, type: !19)
!255 = !DILocalVariable(name: "ap", arg: 5, scope: !38, file: !1, line: 47, type: !21)
!256 = !DILocalVariable(name: "ret", scope: !38, file: !1, line: 54, type: !13)
!257 = !DILocalVariable(name: "f", scope: !38, file: !1, line: 55, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !259, line: 66, baseType: !48)
!259 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!260 = !DILocation(line: 47, column: 1, scope: !38, inlinedAt: !261)
!261 = distinct !DILocation(line: 41, column: 10, scope: !10)
!262 = !DILocation(line: 55, column: 3, scope: !38, inlinedAt: !261)
!263 = !DILocation(line: 57, column: 12, scope: !264, inlinedAt: !261)
!264 = distinct !DILexicalBlock(scope: !38, file: !1, line: 57, column: 7)
!265 = !DILocation(line: 57, column: 7, scope: !38, inlinedAt: !261)
!266 = !DILocation(line: 59, column: 12, scope: !267, inlinedAt: !261)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 58, column: 5)
!268 = !DILocation(line: 59, column: 19, scope: !267, inlinedAt: !261)
!269 = !{!270, !271, i64 0}
!270 = !{!"_reent", !271, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !271, i64 32, !272, i64 36, !271, i64 64, !274, i64 72, !271, i64 80, !274, i64 88, !274, i64 96, !271, i64 104, !274, i64 112, !274, i64 120, !271, i64 128, !274, i64 136, !272, i64 144, !274, i64 504, !275, i64 512, !274, i64 1304, !277, i64 1312, !272, i64 1336}
!271 = !{!"int", !272, i64 0}
!272 = !{!"omnipotent char", !273, i64 0}
!273 = !{!"Simple C/C++ TBAA"}
!274 = !{!"any pointer", !272, i64 0}
!275 = !{!"_atexit", !274, i64 0, !271, i64 8, !272, i64 16, !276, i64 272}
!276 = !{!"_on_exit_args", !272, i64 0, !272, i64 256, !271, i64 512, !271, i64 516}
!277 = !{!"_glue", !274, i64 0, !271, i64 8, !274, i64 16}
!278 = !DILocation(line: 60, column: 7, scope: !267, inlinedAt: !261)
!279 = !DILocation(line: 62, column: 5, scope: !38, inlinedAt: !261)
!280 = !DILocation(line: 62, column: 12, scope: !38, inlinedAt: !261)
!281 = !{!282, !283, i64 16}
!282 = !{!"__sFILE", !274, i64 0, !271, i64 8, !271, i64 12, !283, i64 16, !283, i64 18, !284, i64 24, !271, i64 40, !274, i64 48, !274, i64 56, !274, i64 64, !274, i64 72, !274, i64 80, !284, i64 88, !274, i64 104, !271, i64 112, !272, i64 116, !272, i64 119, !284, i64 120, !271, i64 136, !285, i64 144, !274, i64 152, !271, i64 160, !286, i64 164, !271, i64 172}
!283 = !{!"short", !272, i64 0}
!284 = !{!"__sbuf", !274, i64 0, !271, i64 8}
!285 = !{!"long", !272, i64 0}
!286 = !{!"", !271, i64 0, !272, i64 4}
!287 = !DILocation(line: 63, column: 19, scope: !38, inlinedAt: !261)
!288 = !DILocation(line: 63, column: 22, scope: !38, inlinedAt: !261)
!289 = !{!282, !274, i64 0}
!290 = !DILocation(line: 63, column: 9, scope: !38, inlinedAt: !261)
!291 = !DILocation(line: 63, column: 15, scope: !38, inlinedAt: !261)
!292 = !{!282, !274, i64 24}
!293 = !DILocation(line: 64, column: 30, scope: !38, inlinedAt: !261)
!294 = !DILocation(line: 64, column: 41, scope: !38, inlinedAt: !261)
!295 = !DILocation(line: 64, column: 25, scope: !38, inlinedAt: !261)
!296 = !DILocation(line: 64, column: 24, scope: !38, inlinedAt: !261)
!297 = !DILocation(line: 64, column: 19, scope: !38, inlinedAt: !261)
!298 = !DILocation(line: 64, column: 22, scope: !38, inlinedAt: !261)
!299 = !{!282, !271, i64 12}
!300 = !DILocation(line: 64, column: 9, scope: !38, inlinedAt: !261)
!301 = !DILocation(line: 64, column: 15, scope: !38, inlinedAt: !261)
!302 = !{!282, !271, i64 32}
!303 = !DILocation(line: 65, column: 5, scope: !38, inlinedAt: !261)
!304 = !DILocation(line: 65, column: 11, scope: !38, inlinedAt: !261)
!305 = !{!282, !283, i64 18}
!306 = !DILocation(line: 55, column: 8, scope: !38, inlinedAt: !261)
!307 = !DILocation(line: 66, column: 9, scope: !38, inlinedAt: !261)
!308 = !DILocation(line: 54, column: 7, scope: !38, inlinedAt: !261)
!309 = !DILocation(line: 67, column: 11, scope: !310, inlinedAt: !261)
!310 = distinct !DILexicalBlock(scope: !38, file: !1, line: 67, column: 7)
!311 = !DILocation(line: 67, column: 7, scope: !38, inlinedAt: !261)
!312 = !DILocation(line: 68, column: 10, scope: !310, inlinedAt: !261)
!313 = !DILocation(line: 68, column: 17, scope: !310, inlinedAt: !261)
!314 = !DILocation(line: 68, column: 5, scope: !310, inlinedAt: !261)
!315 = !DILocation(line: 69, column: 7, scope: !38, inlinedAt: !261)
!316 = !DILocation(line: 70, column: 8, scope: !317, inlinedAt: !261)
!317 = distinct !DILexicalBlock(scope: !38, file: !1, line: 69, column: 7)
!318 = !DILocation(line: 70, column: 11, scope: !317, inlinedAt: !261)
!319 = !{!272, !272, i64 0}
!320 = !DILocation(line: 70, column: 5, scope: !317, inlinedAt: !261)
!321 = !DILocation(line: 0, scope: !38, inlinedAt: !261)
!322 = !DILocation(line: 72, column: 1, scope: !38, inlinedAt: !261)
!323 = !DILocation(line: 41, column: 3, scope: !10)
!324 = !DILocation(line: 47, column: 1, scope: !38)
!325 = !DILocation(line: 55, column: 3, scope: !38)
!326 = !DILocation(line: 57, column: 12, scope: !264)
!327 = !DILocation(line: 57, column: 7, scope: !38)
!328 = !DILocation(line: 59, column: 12, scope: !267)
!329 = !DILocation(line: 59, column: 19, scope: !267)
!330 = !DILocation(line: 60, column: 7, scope: !267)
!331 = !DILocation(line: 62, column: 5, scope: !38)
!332 = !DILocation(line: 62, column: 12, scope: !38)
!333 = !DILocation(line: 63, column: 19, scope: !38)
!334 = !DILocation(line: 63, column: 22, scope: !38)
!335 = !DILocation(line: 63, column: 9, scope: !38)
!336 = !DILocation(line: 63, column: 15, scope: !38)
!337 = !DILocation(line: 64, column: 30, scope: !38)
!338 = !DILocation(line: 64, column: 41, scope: !38)
!339 = !DILocation(line: 64, column: 25, scope: !38)
!340 = !DILocation(line: 64, column: 24, scope: !38)
!341 = !DILocation(line: 64, column: 19, scope: !38)
!342 = !DILocation(line: 64, column: 22, scope: !38)
!343 = !DILocation(line: 64, column: 9, scope: !38)
!344 = !DILocation(line: 64, column: 15, scope: !38)
!345 = !DILocation(line: 65, column: 5, scope: !38)
!346 = !DILocation(line: 65, column: 11, scope: !38)
!347 = !DILocation(line: 55, column: 8, scope: !38)
!348 = !DILocation(line: 66, column: 9, scope: !38)
!349 = !DILocation(line: 54, column: 7, scope: !38)
!350 = !DILocation(line: 67, column: 11, scope: !310)
!351 = !DILocation(line: 67, column: 7, scope: !38)
!352 = !DILocation(line: 68, column: 10, scope: !310)
!353 = !DILocation(line: 68, column: 17, scope: !310)
!354 = !DILocation(line: 68, column: 5, scope: !310)
!355 = !DILocation(line: 69, column: 7, scope: !38)
!356 = !DILocation(line: 70, column: 8, scope: !317)
!357 = !DILocation(line: 70, column: 11, scope: !317)
!358 = !DILocation(line: 70, column: 5, scope: !317)
!359 = !DILocation(line: 0, scope: !38)
!360 = !DILocation(line: 72, column: 1, scope: !38)
