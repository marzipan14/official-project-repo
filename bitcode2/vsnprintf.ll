; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsnprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsnprintf.c"
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
define dso_local i32 @vsnprintf(i8* noalias, i64, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !10 {
  %5 = alloca %struct.__sFILE, align 8
  %6 = tail call %struct._reent* @__getreent() #4, !dbg !38
  %7 = bitcast %struct.__sFILE* %5 to i8*, !dbg !264
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #5, !dbg !264, !noalias !265
  %8 = icmp ugt i64 %1, 2147483647, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271, !noalias !265
  br i1 %8, label %9, label %11, !dbg !271

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 0, !dbg !272
  store i32 139, i32* %10, align 8, !dbg !274, !tbaa !275, !noalias !265
  br label %29, !dbg !284

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 3, !dbg !285
  store i16 520, i16* %12, align 8, !dbg !286, !tbaa !287, !noalias !265
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 0, !dbg !293
  store i8* %0, i8** %13, align 8, !dbg !294, !tbaa !295, !noalias !265
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 0, !dbg !296
  store i8* %0, i8** %14, align 8, !dbg !297, !tbaa !298, !noalias !265
  %15 = icmp ne i64 %1, 0, !dbg !299
  %16 = add i64 %1, 4294967295, !dbg !300
  %17 = select i1 %15, i64 %16, i64 0, !dbg !301
  %18 = trunc i64 %17 to i32, !dbg !302
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 2, !dbg !303
  store i32 %18, i32* %19, align 4, !dbg !304, !tbaa !305, !noalias !265
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 5, i32 1, !dbg !306
  store i32 %18, i32* %20, align 8, !dbg !307, !tbaa !308, !noalias !265
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %5, i64 0, i32 4, !dbg !309
  store i16 -1, i16* %21, align 2, !dbg !310, !tbaa !311, !noalias !265
  %22 = call i32 @_svfprintf_r(%struct._reent* %6, %struct.__sFILE* nonnull %5, i8* %2, %struct.__va_list_tag* %3) #4, !dbg !313
  %23 = icmp slt i32 %22, -1, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %23, label %24, label %26, !dbg !317

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %6, i64 0, i32 0, !dbg !318
  store i32 139, i32* %25, align 8, !dbg !319, !tbaa !275, !noalias !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br label %26, !dbg !320

; <label>:26:                                     ; preds = %24, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %15, label %27, label %29, !dbg !321

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %13, align 8, !dbg !322, !tbaa !295, !noalias !265
  store i8 0, i8* %28, align 1, !dbg !324, !tbaa !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br label %29, !dbg !326

; <label>:29:                                     ; preds = %26, %27, %9
  %30 = phi i32 [ -1, %9 ], [ %22, %27 ], [ %22, %26 ], !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #5, !dbg !329, !noalias !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  ret i32 %30, !dbg !330
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vsnprintf_r(%struct._reent*, i8* noalias, i64, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !40 {
  %6 = alloca %struct.__sFILE, align 8
  %7 = bitcast %struct.__sFILE* %6 to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %7) #5, !dbg !332
  %8 = icmp ugt i64 %2, 2147483647, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %8, label %9, label %11, !dbg !334

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !335
  store i32 139, i32* %10, align 8, !dbg !336, !tbaa !275
  br label %29, !dbg !337

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 3, !dbg !338
  store i16 520, i16* %12, align 8, !dbg !339, !tbaa !287
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 0, !dbg !340
  store i8* %1, i8** %13, align 8, !dbg !341, !tbaa !295
  %14 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 0, !dbg !342
  store i8* %1, i8** %14, align 8, !dbg !343, !tbaa !298
  %15 = icmp ne i64 %2, 0, !dbg !344
  %16 = add i64 %2, 4294967295, !dbg !345
  %17 = select i1 %15, i64 %16, i64 0, !dbg !346
  %18 = trunc i64 %17 to i32, !dbg !347
  %19 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 2, !dbg !348
  store i32 %18, i32* %19, align 4, !dbg !349, !tbaa !305
  %20 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 5, i32 1, !dbg !350
  store i32 %18, i32* %20, align 8, !dbg !351, !tbaa !308
  %21 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %6, i64 0, i32 4, !dbg !352
  store i16 -1, i16* %21, align 2, !dbg !353, !tbaa !311
  %22 = call i32 @_svfprintf_r(%struct._reent* %0, %struct.__sFILE* nonnull %6, i8* %3, %struct.__va_list_tag* %4) #4, !dbg !355
  %23 = icmp slt i32 %22, -1, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %23, label %24, label %26, !dbg !358

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !359
  store i32 139, i32* %25, align 8, !dbg !360, !tbaa !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br label %26, !dbg !361

; <label>:26:                                     ; preds = %24, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %15, label %27, label %29, !dbg !362

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %13, align 8, !dbg !363, !tbaa !295
  store i8 0, i8* %28, align 1, !dbg !364, !tbaa !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %29, !dbg !365

; <label>:29:                                     ; preds = %26, %27, %9
  %30 = phi i32 [ -1, %9 ], [ %22, %27 ], [ %22, %26 ], !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %7) #5, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  ret i32 %30, !dbg !368
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vsnprintf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "vsnprintf", scope: !1, file: !1, line: 35, type: !11, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !17, !20, !23}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !18, line: 58, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !25)
!25 = !{!26, !28, !29, !31}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !24, file: !1, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !24, file: !1, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !24, file: !1, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !24, file: !1, baseType: !30, size: 64, offset: 128)
!32 = !{!33, !34, !35, !36}
!33 = !DILocalVariable(name: "str", arg: 1, scope: !10, file: !1, line: 35, type: !14)
!34 = !DILocalVariable(name: "size", arg: 2, scope: !10, file: !1, line: 35, type: !17)
!35 = !DILocalVariable(name: "fmt", arg: 3, scope: !10, file: !1, line: 35, type: !20)
!36 = !DILocalVariable(name: "ap", arg: 4, scope: !10, file: !1, line: 35, type: !23)
!37 = !DILocation(line: 35, column: 1, scope: !10)
!38 = !DILocation(line: 41, column: 24, scope: !10)
!39 = !DILocalVariable(name: "ptr", arg: 1, scope: !40, file: !1, line: 53, type: !43)
!40 = distinct !DISubprogram(name: "_vsnprintf_r", scope: !1, file: !1, line: 53, type: !41, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !253)
!41 = !DISubroutineType(types: !42)
!42 = !{!13, !43, !14, !17, !20, !23}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !45, line: 569, size: 14912, elements: !46)
!45 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!46 = !{!47, !48, !121, !122, !123, !124, !128, !129, !132, !133, !137, !149, !150, !151, !153, !154, !155, !217, !238, !239, !244, !251}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !44, file: !45, line: 571, baseType: !13, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !44, file: !45, line: 576, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !45, line: 287, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !45, line: 181, size: 1408, elements: !52)
!52 = !{!53, !54, !55, !56, !58, !59, !64, !65, !66, !73, !77, !82, !86, !87, !88, !89, !93, !97, !98, !99, !101, !102, !106, !120}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !51, file: !45, line: 182, baseType: !4, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !51, file: !45, line: 183, baseType: !13, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !51, file: !45, line: 184, baseType: !13, size: 32, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !45, line: 185, baseType: !57, size: 16, offset: 128)
!57 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !51, file: !45, line: 186, baseType: !57, size: 16, offset: 144)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !51, file: !45, line: 187, baseType: !60, size: 128, offset: 192)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !45, line: 117, size: 128, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !60, file: !45, line: 118, baseType: !4, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !60, file: !45, line: 119, baseType: !13, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !51, file: !45, line: 188, baseType: !13, size: 32, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !51, file: !45, line: 195, baseType: !30, size: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !51, file: !45, line: 197, baseType: !67, size: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !43, !30, !15, !13}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !71, line: 145, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !51, file: !45, line: 199, baseType: !74, size: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!70, !43, !30, !21, !13}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !51, file: !45, line: 202, baseType: !78, size: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !43, !30, !81, !13}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !71, line: 114, baseType: !72)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !51, file: !45, line: 203, baseType: !83, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{!13, !43, !30}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !51, file: !45, line: 206, baseType: !60, size: 128, offset: 704)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !51, file: !45, line: 207, baseType: !4, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !51, file: !45, line: 208, baseType: !13, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !51, file: !45, line: 211, baseType: !90, size: 24, offset: 928)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 24, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !51, file: !45, line: 212, baseType: !94, size: 8, offset: 952)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !51, file: !45, line: 215, baseType: !60, size: 128, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !51, file: !45, line: 218, baseType: !13, size: 32, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !45, line: 219, baseType: !100, size: 64, offset: 1152)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !71, line: 44, baseType: !72)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !51, file: !45, line: 222, baseType: !43, size: 64, offset: 1216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !45, line: 226, baseType: !103, size: 32, offset: 1280)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !71, line: 175, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !105, line: 12, baseType: !13)
!105 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !51, file: !45, line: 228, baseType: !107, size: 64, offset: 1312)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !71, line: 171, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 163, size: 64, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !108, file: !71, line: 165, baseType: !13, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !108, file: !71, line: 170, baseType: !112, size: 32, offset: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !71, line: 166, size: 32, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !112, file: !71, line: 168, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !18, line: 124, baseType: !27)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !112, file: !71, line: 169, baseType: !117, size: 32)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 32, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 4)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !45, line: 229, baseType: !13, size: 32, offset: 1376)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !44, file: !45, line: 576, baseType: !49, size: 64, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !44, file: !45, line: 576, baseType: !49, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !44, file: !45, line: 578, baseType: !13, size: 32, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !44, file: !45, line: 579, baseType: !125, size: 200, offset: 288)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 200, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 25)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !44, file: !45, line: 582, baseType: !13, size: 32, offset: 512)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !44, file: !45, line: 583, baseType: !130, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !45, line: 40, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !44, file: !45, line: 585, baseType: !13, size: 32, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !44, file: !45, line: 587, baseType: !134, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !43}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !44, file: !45, line: 590, baseType: !138, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !45, line: 47, size: 256, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !139, file: !45, line: 49, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !139, file: !45, line: 50, baseType: !13, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !139, file: !45, line: 50, baseType: !13, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !139, file: !45, line: 50, baseType: !13, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !139, file: !45, line: 50, baseType: !13, size: 32, offset: 160)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !139, file: !45, line: 51, baseType: !147, size: 32, offset: 192)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 32, elements: !95)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !45, line: 25, baseType: !27)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !44, file: !45, line: 591, baseType: !13, size: 32, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !44, file: !45, line: 592, baseType: !138, size: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !44, file: !45, line: 593, baseType: !152, size: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !44, file: !45, line: 596, baseType: !13, size: 32, offset: 1024)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !44, file: !45, line: 597, baseType: !15, size: 64, offset: 1088)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !44, file: !45, line: 632, baseType: !156, size: 2880, offset: 1152)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !44, file: !45, line: 599, size: 2880, elements: !157)
!157 = !{!158, !208}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !156, file: !45, line: 622, baseType: !159, size: 1728)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !45, line: 601, size: 1728, elements: !160)
!160 = !{!161, !162, !163, !167, !179, !180, !182, !190, !191, !192, !193, !197, !201, !202, !203, !204, !205, !206, !207}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !159, file: !45, line: 603, baseType: !27, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !159, file: !45, line: 604, baseType: !15, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !159, file: !45, line: 605, baseType: !164, size: 208, offset: 128)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 26)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !159, file: !45, line: 606, baseType: !168, size: 288, offset: 352)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !45, line: 55, size: 288, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !168, file: !45, line: 57, baseType: !13, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !168, file: !45, line: 58, baseType: !13, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !168, file: !45, line: 59, baseType: !13, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !168, file: !45, line: 60, baseType: !13, size: 32, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !168, file: !45, line: 61, baseType: !13, size: 32, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !168, file: !45, line: 62, baseType: !13, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !168, file: !45, line: 63, baseType: !13, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !168, file: !45, line: 64, baseType: !13, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !168, file: !45, line: 65, baseType: !13, size: 32, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !159, file: !45, line: 607, baseType: !13, size: 32, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !159, file: !45, line: 608, baseType: !181, size: 64, offset: 704)
!181 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !159, file: !45, line: 609, baseType: !183, size: 112, offset: 768)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !45, line: 319, size: 112, elements: !184)
!184 = !{!185, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !183, file: !45, line: 320, baseType: !186, size: 48)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 48, elements: !91)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !183, file: !45, line: 321, baseType: !186, size: 48, offset: 48)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !183, file: !45, line: 322, baseType: !187, size: 16, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !159, file: !45, line: 610, baseType: !107, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !159, file: !45, line: 611, baseType: !107, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !159, file: !45, line: 612, baseType: !107, size: 64, offset: 1024)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !159, file: !45, line: 613, baseType: !194, size: 64, offset: 1088)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !159, file: !45, line: 614, baseType: !198, size: 192, offset: 1152)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 192, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 24)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !159, file: !45, line: 615, baseType: !13, size: 32, offset: 1344)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !159, file: !45, line: 616, baseType: !107, size: 64, offset: 1376)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !159, file: !45, line: 617, baseType: !107, size: 64, offset: 1440)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !159, file: !45, line: 618, baseType: !107, size: 64, offset: 1504)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !159, file: !45, line: 619, baseType: !107, size: 64, offset: 1568)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !159, file: !45, line: 620, baseType: !107, size: 64, offset: 1632)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !159, file: !45, line: 621, baseType: !13, size: 32, offset: 1696)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !156, file: !45, line: 631, baseType: !209, size: 2880)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !45, line: 626, size: 2880, elements: !210)
!210 = !{!211, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !209, file: !45, line: 629, baseType: !212, size: 1920)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1920, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 30)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !209, file: !45, line: 630, baseType: !216, size: 960, offset: 1920)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 960, elements: !213)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !44, file: !45, line: 636, baseType: !218, size: 64, offset: 4032)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !45, line: 93, size: 6336, elements: !220)
!220 = !{!221, !222, !223, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !219, file: !45, line: 94, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !219, file: !45, line: 95, baseType: !13, size: 32, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !219, file: !45, line: 97, baseType: !224, size: 2048, offset: 128)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2048, elements: !228)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{null}
!228 = !{!229}
!229 = !DISubrange(count: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !219, file: !45, line: 98, baseType: !231, size: 4160, offset: 2176)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !45, line: 74, size: 4160, elements: !232)
!232 = !{!233, !235, !236, !237}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !231, file: !45, line: 75, baseType: !234, size: 2048)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2048, elements: !228)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !231, file: !45, line: 76, baseType: !234, size: 2048, offset: 2048)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !231, file: !45, line: 78, baseType: !148, size: 32, offset: 4096)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !231, file: !45, line: 81, baseType: !148, size: 32, offset: 4128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !44, file: !45, line: 637, baseType: !219, size: 6336, offset: 4096)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !44, file: !45, line: 641, baseType: !240, size: 64, offset: 10432)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !13}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !44, file: !45, line: 646, baseType: !245, size: 192, offset: 10496)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !45, line: 291, size: 192, elements: !246)
!246 = !{!247, !249, !250}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !245, file: !45, line: 293, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !245, file: !45, line: 294, baseType: !13, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !245, file: !45, line: 295, baseType: !49, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !44, file: !45, line: 648, baseType: !252, size: 4224, offset: 10688)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 4224, elements: !91)
!253 = !{!39, !254, !255, !256, !257, !258, !259}
!254 = !DILocalVariable(name: "str", arg: 2, scope: !40, file: !1, line: 53, type: !14)
!255 = !DILocalVariable(name: "size", arg: 3, scope: !40, file: !1, line: 53, type: !17)
!256 = !DILocalVariable(name: "fmt", arg: 4, scope: !40, file: !1, line: 53, type: !20)
!257 = !DILocalVariable(name: "ap", arg: 5, scope: !40, file: !1, line: 53, type: !23)
!258 = !DILocalVariable(name: "ret", scope: !40, file: !1, line: 60, type: !13)
!259 = !DILocalVariable(name: "f", scope: !40, file: !1, line: 61, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !261, line: 66, baseType: !50)
!261 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !DILocation(line: 53, column: 1, scope: !40, inlinedAt: !263)
!263 = distinct !DILocation(line: 41, column: 10, scope: !10)
!264 = !DILocation(line: 61, column: 3, scope: !40, inlinedAt: !263)
!265 = !{!266, !268}
!266 = distinct !{!266, !267, !"_vsnprintf_r: argument 0"}
!267 = distinct !{!267, !"_vsnprintf_r"}
!268 = distinct !{!268, !267, !"_vsnprintf_r: argument 1"}
!269 = !DILocation(line: 63, column: 12, scope: !270, inlinedAt: !263)
!270 = distinct !DILexicalBlock(scope: !40, file: !1, line: 63, column: 7)
!271 = !DILocation(line: 63, column: 7, scope: !40, inlinedAt: !263)
!272 = !DILocation(line: 65, column: 12, scope: !273, inlinedAt: !263)
!273 = distinct !DILexicalBlock(scope: !270, file: !1, line: 64, column: 5)
!274 = !DILocation(line: 65, column: 19, scope: !273, inlinedAt: !263)
!275 = !{!276, !277, i64 0}
!276 = !{!"_reent", !277, i64 0, !280, i64 8, !280, i64 16, !280, i64 24, !277, i64 32, !278, i64 36, !277, i64 64, !280, i64 72, !277, i64 80, !280, i64 88, !280, i64 96, !277, i64 104, !280, i64 112, !280, i64 120, !277, i64 128, !280, i64 136, !278, i64 144, !280, i64 504, !281, i64 512, !280, i64 1304, !283, i64 1312, !278, i64 1336}
!277 = !{!"int", !278, i64 0}
!278 = !{!"omnipotent char", !279, i64 0}
!279 = !{!"Simple C/C++ TBAA"}
!280 = !{!"any pointer", !278, i64 0}
!281 = !{!"_atexit", !280, i64 0, !277, i64 8, !278, i64 16, !282, i64 272}
!282 = !{!"_on_exit_args", !278, i64 0, !278, i64 256, !277, i64 512, !277, i64 516}
!283 = !{!"_glue", !280, i64 0, !277, i64 8, !280, i64 16}
!284 = !DILocation(line: 66, column: 7, scope: !273, inlinedAt: !263)
!285 = !DILocation(line: 68, column: 5, scope: !40, inlinedAt: !263)
!286 = !DILocation(line: 68, column: 12, scope: !40, inlinedAt: !263)
!287 = !{!288, !289, i64 16}
!288 = !{!"__sFILE", !280, i64 0, !277, i64 8, !277, i64 12, !289, i64 16, !289, i64 18, !290, i64 24, !277, i64 40, !280, i64 48, !280, i64 56, !280, i64 64, !280, i64 72, !280, i64 80, !290, i64 88, !280, i64 104, !277, i64 112, !278, i64 116, !278, i64 119, !290, i64 120, !277, i64 136, !291, i64 144, !280, i64 152, !277, i64 160, !292, i64 164, !277, i64 172}
!289 = !{!"short", !278, i64 0}
!290 = !{!"__sbuf", !280, i64 0, !277, i64 8}
!291 = !{!"long", !278, i64 0}
!292 = !{!"", !277, i64 0, !278, i64 4}
!293 = !DILocation(line: 69, column: 19, scope: !40, inlinedAt: !263)
!294 = !DILocation(line: 69, column: 22, scope: !40, inlinedAt: !263)
!295 = !{!288, !280, i64 0}
!296 = !DILocation(line: 69, column: 9, scope: !40, inlinedAt: !263)
!297 = !DILocation(line: 69, column: 15, scope: !40, inlinedAt: !263)
!298 = !{!288, !280, i64 24}
!299 = !DILocation(line: 70, column: 30, scope: !40, inlinedAt: !263)
!300 = !DILocation(line: 70, column: 41, scope: !40, inlinedAt: !263)
!301 = !DILocation(line: 70, column: 25, scope: !40, inlinedAt: !263)
!302 = !DILocation(line: 70, column: 24, scope: !40, inlinedAt: !263)
!303 = !DILocation(line: 70, column: 19, scope: !40, inlinedAt: !263)
!304 = !DILocation(line: 70, column: 22, scope: !40, inlinedAt: !263)
!305 = !{!288, !277, i64 12}
!306 = !DILocation(line: 70, column: 9, scope: !40, inlinedAt: !263)
!307 = !DILocation(line: 70, column: 15, scope: !40, inlinedAt: !263)
!308 = !{!288, !277, i64 32}
!309 = !DILocation(line: 71, column: 5, scope: !40, inlinedAt: !263)
!310 = !DILocation(line: 71, column: 11, scope: !40, inlinedAt: !263)
!311 = !{!288, !289, i64 18}
!312 = !DILocation(line: 61, column: 8, scope: !40, inlinedAt: !263)
!313 = !DILocation(line: 72, column: 9, scope: !40, inlinedAt: !263)
!314 = !DILocation(line: 60, column: 7, scope: !40, inlinedAt: !263)
!315 = !DILocation(line: 73, column: 11, scope: !316, inlinedAt: !263)
!316 = distinct !DILexicalBlock(scope: !40, file: !1, line: 73, column: 7)
!317 = !DILocation(line: 73, column: 7, scope: !40, inlinedAt: !263)
!318 = !DILocation(line: 74, column: 10, scope: !316, inlinedAt: !263)
!319 = !DILocation(line: 74, column: 17, scope: !316, inlinedAt: !263)
!320 = !DILocation(line: 74, column: 5, scope: !316, inlinedAt: !263)
!321 = !DILocation(line: 75, column: 7, scope: !40, inlinedAt: !263)
!322 = !DILocation(line: 76, column: 8, scope: !323, inlinedAt: !263)
!323 = distinct !DILexicalBlock(scope: !40, file: !1, line: 75, column: 7)
!324 = !DILocation(line: 76, column: 11, scope: !323, inlinedAt: !263)
!325 = !{!278, !278, i64 0}
!326 = !DILocation(line: 76, column: 5, scope: !323, inlinedAt: !263)
!327 = !DILocation(line: 0, scope: !40, inlinedAt: !263)
!328 = !DILocation(line: 0, scope: !10)
!329 = !DILocation(line: 78, column: 1, scope: !40, inlinedAt: !263)
!330 = !DILocation(line: 41, column: 3, scope: !10)
!331 = !DILocation(line: 53, column: 1, scope: !40)
!332 = !DILocation(line: 61, column: 3, scope: !40)
!333 = !DILocation(line: 63, column: 12, scope: !270)
!334 = !DILocation(line: 63, column: 7, scope: !40)
!335 = !DILocation(line: 65, column: 12, scope: !273)
!336 = !DILocation(line: 65, column: 19, scope: !273)
!337 = !DILocation(line: 66, column: 7, scope: !273)
!338 = !DILocation(line: 68, column: 5, scope: !40)
!339 = !DILocation(line: 68, column: 12, scope: !40)
!340 = !DILocation(line: 69, column: 19, scope: !40)
!341 = !DILocation(line: 69, column: 22, scope: !40)
!342 = !DILocation(line: 69, column: 9, scope: !40)
!343 = !DILocation(line: 69, column: 15, scope: !40)
!344 = !DILocation(line: 70, column: 30, scope: !40)
!345 = !DILocation(line: 70, column: 41, scope: !40)
!346 = !DILocation(line: 70, column: 25, scope: !40)
!347 = !DILocation(line: 70, column: 24, scope: !40)
!348 = !DILocation(line: 70, column: 19, scope: !40)
!349 = !DILocation(line: 70, column: 22, scope: !40)
!350 = !DILocation(line: 70, column: 9, scope: !40)
!351 = !DILocation(line: 70, column: 15, scope: !40)
!352 = !DILocation(line: 71, column: 5, scope: !40)
!353 = !DILocation(line: 71, column: 11, scope: !40)
!354 = !DILocation(line: 61, column: 8, scope: !40)
!355 = !DILocation(line: 72, column: 9, scope: !40)
!356 = !DILocation(line: 60, column: 7, scope: !40)
!357 = !DILocation(line: 73, column: 11, scope: !316)
!358 = !DILocation(line: 73, column: 7, scope: !40)
!359 = !DILocation(line: 74, column: 10, scope: !316)
!360 = !DILocation(line: 74, column: 17, scope: !316)
!361 = !DILocation(line: 74, column: 5, scope: !316)
!362 = !DILocation(line: 75, column: 7, scope: !40)
!363 = !DILocation(line: 76, column: 8, scope: !323)
!364 = !DILocation(line: 76, column: 11, scope: !323)
!365 = !DILocation(line: 76, column: 5, scope: !323)
!366 = !DILocation(line: 0, scope: !40)
!367 = !DILocation(line: 0, scope: !273)
!368 = !DILocation(line: 78, column: 1, scope: !40)
