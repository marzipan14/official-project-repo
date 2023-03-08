; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/nullconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/nullconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iconv_conversion_handlers_t = type { i8* (%struct._reent*, i8*, i8*)*, i64 (%struct._reent*, i8*)*, i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)*, void (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, %struct._mbstate_t*, i32)*, i32 (i8*, i32)*, i32 (i8*, i32)* }
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

@_iconv_null_conversion_handlers = dso_local local_unnamed_addr constant %struct.iconv_conversion_handlers_t { i8* (%struct._reent*, i8*, i8*)* @null_conversion_open, i64 (%struct._reent*, i8*)* @null_conversion_close, i64 (%struct._reent*, i8*, i8**, i64*, i8**, i64*, i32)* @null_conversion_convert, void (i8*, %struct._mbstate_t*, i32)* @null_conversion_get_state, i32 (i8*, %struct._mbstate_t*, i32)* @null_conversion_set_state, i32 (i8*, i32)* @null_conversion_get_mb_cur_max, i32 (i8*, i32)* @null_conversion_is_stateful }, align 8, !dbg !0
@null_conversion_dummy_data = internal global i32 0, align 4, !dbg !13
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define internal i8* @null_conversion_open(%struct._reent* nocapture readnone, i8* nocapture readnone, i8* nocapture readnone) #0 !dbg !275 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  ret i8* bitcast (i32* @null_conversion_dummy_data to i8*), !dbg !281
}

; Function Attrs: noredzone nounwind
define internal i64 @null_conversion_close(%struct._reent* nocapture readnone, i8* nocapture readnone) #0 !dbg !282 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  ret i64 0, !dbg !287
}

; Function Attrs: noredzone nounwind
define internal i64 @null_conversion_convert(%struct._reent* nocapture, i8* nocapture readnone, i8** nocapture, i64* nocapture, i8** nocapture, i64* nocapture, i32) #0 !dbg !288 {
  %8 = load i64, i64* %3, align 8, !dbg !300, !tbaa !302
  %9 = load i64, i64* %5, align 8, !dbg !306, !tbaa !302
  %10 = icmp ult i64 %8, %9, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br i1 %10, label %13, label %11, !dbg !308

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !311
  store i32 7, i32* %12, align 8, !dbg !313, !tbaa !314
  br label %13

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i64 [ -1, %11 ], [ 0, %7 ], !dbg !321
  %15 = phi i64 [ %9, %11 ], [ %8, %7 ], !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %16 = and i32 %6, 1, !dbg !322
  %17 = icmp eq i32 %16, 0, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %17, label %18, label %23, !dbg !325

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %4, align 8, !dbg !326, !tbaa !327
  %20 = load i8*, i8** %2, align 8, !dbg !328, !tbaa !327
  %21 = tail call i8* @memcpy(i8* %19, i8* %20, i64 %15) #3, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  %22 = load i64, i64* %3, align 8, !dbg !330, !tbaa !302
  br label %23, !dbg !329

; <label>:23:                                     ; preds = %18, %13
  %24 = phi i64 [ %22, %18 ], [ %8, %13 ], !dbg !330
  %25 = load i8*, i8** %2, align 8, !dbg !331, !tbaa !327
  %26 = getelementptr inbounds i8, i8* %25, i64 %15, !dbg !331
  store i8* %26, i8** %2, align 8, !dbg !331, !tbaa !327
  %27 = load i8*, i8** %4, align 8, !dbg !332, !tbaa !327
  %28 = getelementptr inbounds i8, i8* %27, i64 %15, !dbg !332
  store i8* %28, i8** %4, align 8, !dbg !332, !tbaa !327
  %29 = sub i64 %24, %15, !dbg !330
  store i64 %29, i64* %3, align 8, !dbg !330, !tbaa !302
  %30 = load i64, i64* %5, align 8, !dbg !333, !tbaa !302
  %31 = sub i64 %30, %15, !dbg !333
  store i64 %31, i64* %5, align 8, !dbg !333, !tbaa !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  ret i64 %14, !dbg !334
}

; Function Attrs: noredzone nounwind
define internal void @null_conversion_get_state(i8* nocapture readnone, %struct._mbstate_t* nocapture readnone, i32) #0 !dbg !335 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  ret void, !dbg !341
}

; Function Attrs: noredzone nounwind
define internal i32 @null_conversion_set_state(i8* nocapture readnone, %struct._mbstate_t* nocapture readnone, i32) #0 !dbg !342 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  ret i32 0, !dbg !348
}

; Function Attrs: noredzone nounwind
define internal i32 @null_conversion_get_mb_cur_max(i8* nocapture readnone, i32) #0 !dbg !349 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  ret i32 6, !dbg !354
}

; Function Attrs: noredzone nounwind
define internal i32 @null_conversion_is_stateful(i8* nocapture readnone, i32) #0 !dbg !355 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret i32 0, !dbg !360
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!271, !272, !273}
!llvm.ident = !{!274}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_iconv_null_conversion_handlers", scope: !2, file: !3, line: 133, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !12)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/nullconv.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 40, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !10, line: 129, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !{!0, !13}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "null_conversion_dummy_data", scope: !2, file: !3, line: 35, type: !15, isLocal: true, isDefinition: true)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_conversion_handlers_t", file: !18, line: 191, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/conv.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 48, size: 448, elements: !20)
!20 = !{!21, !242, !246, !255, !262, !266, !270}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !19, file: !18, line: 66, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!6, !25, !62, !62}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !27, line: 569, size: 14912, elements: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !{!29, !30, !110, !111, !112, !113, !117, !118, !121, !122, !126, !138, !139, !140, !142, !143, !144, !206, !227, !228, !233, !240}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !26, file: !27, line: 571, baseType: !15, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !27, line: 287, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !27, line: 181, size: 1408, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !50, !58, !64, !69, !73, !74, !75, !76, !80, !84, !85, !86, !88, !89, !93, !109}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !27, line: 182, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !27, line: 183, baseType: !15, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !27, line: 184, baseType: !15, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !27, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !27, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !27, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !27, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !27, line: 118, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !27, line: 119, baseType: !15, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !27, line: 188, baseType: !15, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !27, line: 195, baseType: !6, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !27, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !25, !6, !56, !15}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !10, line: 145, baseType: !55)
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !27, line: 199, baseType: !59, size: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!54, !25, !6, !62, !15}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !27, line: 202, baseType: !65, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !25, !6, !68, !15}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !10, line: 114, baseType: !55)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !27, line: 203, baseType: !70, size: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!15, !25, !6}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !27, line: 206, baseType: !44, size: 128, offset: 704)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !27, line: 207, baseType: !36, size: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !27, line: 208, baseType: !15, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !27, line: 211, baseType: !77, size: 24, offset: 928)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !27, line: 212, baseType: !81, size: 8, offset: 952)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !27, line: 215, baseType: !44, size: 128, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !27, line: 218, baseType: !15, size: 32, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !27, line: 219, baseType: !87, size: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !10, line: 44, baseType: !55)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !27, line: 222, baseType: !25, size: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !27, line: 226, baseType: !90, size: 32, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !10, line: 175, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !92, line: 12, baseType: !15)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !27, line: 228, baseType: !94, size: 64, offset: 1312)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !10, line: 171, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 163, size: 64, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !95, file: !10, line: 165, baseType: !15, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !95, file: !10, line: 170, baseType: !99, size: 32, offset: 32)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !10, line: 166, size: 32, elements: !100)
!100 = !{!101, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !99, file: !10, line: 168, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !103, line: 124, baseType: !104)
!103 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!104 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !99, file: !10, line: 169, baseType: !106, size: 32)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !27, line: 229, baseType: !15, size: 32, offset: 1376)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !26, file: !27, line: 576, baseType: !31, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !26, file: !27, line: 578, baseType: !15, size: 32, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !26, file: !27, line: 579, baseType: !114, size: 200, offset: 288)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 200, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 25)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !26, file: !27, line: 582, baseType: !15, size: 32, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !26, file: !27, line: 583, baseType: !119, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !27, line: 40, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !26, file: !27, line: 585, baseType: !15, size: 32, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !26, file: !27, line: 587, baseType: !123, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !25}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !26, file: !27, line: 590, baseType: !127, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !27, line: 47, size: 256, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !128, file: !27, line: 49, baseType: !127, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !128, file: !27, line: 50, baseType: !15, size: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !128, file: !27, line: 50, baseType: !15, size: 32, offset: 96)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !128, file: !27, line: 50, baseType: !15, size: 32, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !128, file: !27, line: 50, baseType: !15, size: 32, offset: 160)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !128, file: !27, line: 51, baseType: !136, size: 32, offset: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 32, elements: !82)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !27, line: 25, baseType: !104)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !26, file: !27, line: 591, baseType: !15, size: 32, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !26, file: !27, line: 592, baseType: !127, size: 64, offset: 896)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !26, file: !27, line: 593, baseType: !141, size: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !26, file: !27, line: 596, baseType: !15, size: 32, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !26, file: !27, line: 597, baseType: !56, size: 64, offset: 1088)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !26, file: !27, line: 632, baseType: !145, size: 2880, offset: 1152)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !27, line: 599, size: 2880, elements: !146)
!146 = !{!147, !197}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !145, file: !27, line: 622, baseType: !148, size: 1728)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !27, line: 601, size: 1728, elements: !149)
!149 = !{!150, !151, !152, !156, !168, !169, !171, !179, !180, !181, !182, !186, !190, !191, !192, !193, !194, !195, !196}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !148, file: !27, line: 603, baseType: !104, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !148, file: !27, line: 604, baseType: !56, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !148, file: !27, line: 605, baseType: !153, size: 208, offset: 128)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 208, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 26)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !148, file: !27, line: 606, baseType: !157, size: 288, offset: 352)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !27, line: 55, size: 288, elements: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !157, file: !27, line: 57, baseType: !15, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !157, file: !27, line: 58, baseType: !15, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !157, file: !27, line: 59, baseType: !15, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !157, file: !27, line: 60, baseType: !15, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !157, file: !27, line: 61, baseType: !15, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !157, file: !27, line: 62, baseType: !15, size: 32, offset: 160)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !157, file: !27, line: 63, baseType: !15, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !157, file: !27, line: 64, baseType: !15, size: 32, offset: 224)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !157, file: !27, line: 65, baseType: !15, size: 32, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !148, file: !27, line: 607, baseType: !15, size: 32, offset: 640)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !148, file: !27, line: 608, baseType: !170, size: 64, offset: 704)
!170 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !148, file: !27, line: 609, baseType: !172, size: 112, offset: 768)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !27, line: 319, size: 112, elements: !173)
!173 = !{!174, !177, !178}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !172, file: !27, line: 320, baseType: !175, size: 48)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 48, elements: !78)
!176 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !172, file: !27, line: 321, baseType: !175, size: 48, offset: 48)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !172, file: !27, line: 322, baseType: !176, size: 16, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !148, file: !27, line: 610, baseType: !94, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !148, file: !27, line: 611, baseType: !94, size: 64, offset: 960)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !148, file: !27, line: 612, baseType: !94, size: 64, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !148, file: !27, line: 613, baseType: !183, size: 64, offset: 1088)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !148, file: !27, line: 614, baseType: !187, size: 192, offset: 1152)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 192, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 24)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !148, file: !27, line: 615, baseType: !15, size: 32, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !148, file: !27, line: 616, baseType: !94, size: 64, offset: 1376)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !148, file: !27, line: 617, baseType: !94, size: 64, offset: 1440)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !148, file: !27, line: 618, baseType: !94, size: 64, offset: 1504)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !148, file: !27, line: 619, baseType: !94, size: 64, offset: 1568)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !148, file: !27, line: 620, baseType: !94, size: 64, offset: 1632)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !148, file: !27, line: 621, baseType: !15, size: 32, offset: 1696)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !145, file: !27, line: 631, baseType: !198, size: 2880)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !145, file: !27, line: 626, size: 2880, elements: !199)
!199 = !{!200, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !198, file: !27, line: 629, baseType: !201, size: 1920)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1920, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 30)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !198, file: !27, line: 630, baseType: !205, size: 960, offset: 1920)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 960, elements: !202)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !26, file: !27, line: 636, baseType: !207, size: 64, offset: 4032)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !27, line: 93, size: 6336, elements: !209)
!209 = !{!210, !211, !212, !219}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !208, file: !27, line: 94, baseType: !207, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !208, file: !27, line: 95, baseType: !15, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !208, file: !27, line: 97, baseType: !213, size: 2048, offset: 128)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 2048, elements: !217)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null}
!217 = !{!218}
!218 = !DISubrange(count: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !208, file: !27, line: 98, baseType: !220, size: 4160, offset: 2176)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !27, line: 74, size: 4160, elements: !221)
!221 = !{!222, !224, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !220, file: !27, line: 75, baseType: !223, size: 2048)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !217)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !220, file: !27, line: 76, baseType: !223, size: 2048, offset: 2048)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !220, file: !27, line: 78, baseType: !137, size: 32, offset: 4096)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !220, file: !27, line: 81, baseType: !137, size: 32, offset: 4128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !26, file: !27, line: 637, baseType: !208, size: 6336, offset: 4096)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !26, file: !27, line: 641, baseType: !229, size: 64, offset: 10432)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !15}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !26, file: !27, line: 646, baseType: !234, size: 192, offset: 10496)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !27, line: 291, size: 192, elements: !235)
!235 = !{!236, !238, !239}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !234, file: !27, line: 293, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !234, file: !27, line: 294, baseType: !15, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !234, file: !27, line: 295, baseType: !31, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !26, file: !27, line: 648, baseType: !241, size: 4224, offset: 10688)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4224, elements: !78)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !19, file: !18, line: 84, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!7, !25, !6}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "convert", scope: !19, file: !18, line: 117, baseType: !247, size: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!7, !25, !6, !250, !253, !254, !253, !15}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !19, file: !18, line: 138, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !6, !259, !15}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !261, line: 86, baseType: !94)
!261 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "set_state", scope: !19, file: !18, line: 157, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!15, !6, !259, !15}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "get_mb_cur_max", scope: !19, file: !18, line: 173, baseType: !267, size: 64, offset: 320)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!15, !6, !15}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "is_stateful", scope: !19, file: !18, line: 188, baseType: !267, size: 64, offset: 384)
!271 = !{i32 2, !"Dwarf Version", i32 4}
!272 = !{i32 2, !"Debug Info Version", i32 3}
!273 = !{i32 1, !"wchar_size", i32 4}
!274 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!275 = distinct !DISubprogram(name: "null_conversion_open", scope: !3, file: !3, line: 39, type: !23, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !276)
!276 = !{!277, !278, !279}
!277 = !DILocalVariable(name: "rptr", arg: 1, scope: !275, file: !3, line: 39, type: !25)
!278 = !DILocalVariable(name: "to", arg: 2, scope: !275, file: !3, line: 39, type: !62)
!279 = !DILocalVariable(name: "from", arg: 3, scope: !275, file: !3, line: 39, type: !62)
!280 = !DILocation(line: 39, column: 1, scope: !275)
!281 = !DILocation(line: 44, column: 3, scope: !275)
!282 = distinct !DISubprogram(name: "null_conversion_close", scope: !3, file: !3, line: 49, type: !244, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !283)
!283 = !{!284, !285}
!284 = !DILocalVariable(name: "rptr", arg: 1, scope: !282, file: !3, line: 49, type: !25)
!285 = !DILocalVariable(name: "data", arg: 2, scope: !282, file: !3, line: 49, type: !6)
!286 = !DILocation(line: 49, column: 1, scope: !282)
!287 = !DILocation(line: 53, column: 3, scope: !282)
!288 = distinct !DISubprogram(name: "null_conversion_convert", scope: !3, file: !3, line: 58, type: !248, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298}
!290 = !DILocalVariable(name: "rptr", arg: 1, scope: !288, file: !3, line: 58, type: !25)
!291 = !DILocalVariable(name: "data", arg: 2, scope: !288, file: !3, line: 58, type: !6)
!292 = !DILocalVariable(name: "inbuf", arg: 3, scope: !288, file: !3, line: 58, type: !250)
!293 = !DILocalVariable(name: "inbytesleft", arg: 4, scope: !288, file: !3, line: 58, type: !253)
!294 = !DILocalVariable(name: "outbuf", arg: 5, scope: !288, file: !3, line: 58, type: !254)
!295 = !DILocalVariable(name: "outbytesleft", arg: 6, scope: !288, file: !3, line: 58, type: !253)
!296 = !DILocalVariable(name: "flags", arg: 7, scope: !288, file: !3, line: 58, type: !15)
!297 = !DILocalVariable(name: "result", scope: !288, file: !3, line: 68, type: !7)
!298 = !DILocalVariable(name: "len", scope: !288, file: !3, line: 69, type: !7)
!299 = !DILocation(line: 58, column: 1, scope: !288)
!300 = !DILocation(line: 71, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !288, file: !3, line: 71, column: 7)
!302 = !{!303, !303, i64 0}
!303 = !{!"long", !304, i64 0}
!304 = !{!"omnipotent char", !305, i64 0}
!305 = !{!"Simple C/C++ TBAA"}
!306 = !DILocation(line: 71, column: 22, scope: !301)
!307 = !DILocation(line: 71, column: 20, scope: !301)
!308 = !DILocation(line: 71, column: 7, scope: !288)
!309 = !DILocation(line: 68, column: 10, scope: !288)
!310 = !DILocation(line: 69, column: 10, scope: !288)
!311 = !DILocation(line: 80, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !301, file: !3, line: 77, column: 5)
!313 = !DILocation(line: 80, column: 24, scope: !312)
!314 = !{!315, !316, i64 0}
!315 = !{!"_reent", !316, i64 0, !317, i64 8, !317, i64 16, !317, i64 24, !316, i64 32, !304, i64 36, !316, i64 64, !317, i64 72, !316, i64 80, !317, i64 88, !317, i64 96, !316, i64 104, !317, i64 112, !317, i64 120, !316, i64 128, !317, i64 136, !304, i64 144, !317, i64 504, !318, i64 512, !317, i64 1304, !320, i64 1312, !304, i64 1336}
!316 = !{!"int", !304, i64 0}
!317 = !{!"any pointer", !304, i64 0}
!318 = !{!"_atexit", !317, i64 0, !316, i64 8, !304, i64 16, !319, i64 272}
!319 = !{!"_on_exit_args", !304, i64 0, !304, i64 256, !316, i64 512, !316, i64 516}
!320 = !{!"_glue", !317, i64 0, !316, i64 8, !317, i64 16}
!321 = !DILocation(line: 0, scope: !312)
!322 = !DILocation(line: 83, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !288, file: !3, line: 83, column: 7)
!324 = !DILocation(line: 83, column: 19, scope: !323)
!325 = !DILocation(line: 83, column: 7, scope: !288)
!326 = !DILocation(line: 84, column: 13, scope: !323)
!327 = !{!317, !317, i64 0}
!328 = !DILocation(line: 84, column: 22, scope: !323)
!329 = !DILocation(line: 84, column: 5, scope: !323)
!330 = !DILocation(line: 88, column: 17, scope: !288)
!331 = !DILocation(line: 86, column: 17, scope: !288)
!332 = !DILocation(line: 87, column: 17, scope: !288)
!333 = !DILocation(line: 89, column: 17, scope: !288)
!334 = !DILocation(line: 91, column: 3, scope: !288)
!335 = distinct !DISubprogram(name: "null_conversion_get_state", scope: !3, file: !3, line: 105, type: !257, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !336)
!336 = !{!337, !338, !339}
!337 = !DILocalVariable(name: "data", arg: 1, scope: !335, file: !3, line: 105, type: !6)
!338 = !DILocalVariable(name: "state", arg: 2, scope: !335, file: !3, line: 105, type: !259)
!339 = !DILocalVariable(name: "direction", arg: 3, scope: !335, file: !3, line: 105, type: !15)
!340 = !DILocation(line: 105, column: 1, scope: !335)
!341 = !DILocation(line: 110, column: 3, scope: !335)
!342 = distinct !DISubprogram(name: "null_conversion_set_state", scope: !3, file: !3, line: 115, type: !264, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !343)
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(name: "data", arg: 1, scope: !342, file: !3, line: 115, type: !6)
!345 = !DILocalVariable(name: "state", arg: 2, scope: !342, file: !3, line: 115, type: !259)
!346 = !DILocalVariable(name: "direction", arg: 3, scope: !342, file: !3, line: 115, type: !15)
!347 = !DILocation(line: 115, column: 1, scope: !342)
!348 = !DILocation(line: 120, column: 3, scope: !342)
!349 = distinct !DISubprogram(name: "null_conversion_get_mb_cur_max", scope: !3, file: !3, line: 96, type: !268, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !350)
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "data", arg: 1, scope: !349, file: !3, line: 96, type: !6)
!352 = !DILocalVariable(name: "direction", arg: 2, scope: !349, file: !3, line: 96, type: !15)
!353 = !DILocation(line: 96, column: 1, scope: !349)
!354 = !DILocation(line: 100, column: 3, scope: !349)
!355 = distinct !DISubprogram(name: "null_conversion_is_stateful", scope: !3, file: !3, line: 124, type: !268, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !356)
!356 = !{!357, !358}
!357 = !DILocalVariable(name: "data", arg: 1, scope: !355, file: !3, line: 124, type: !6)
!358 = !DILocalVariable(name: "direction", arg: 2, scope: !355, file: !3, line: 124, type: !15)
!359 = !DILocation(line: 124, column: 1, scope: !355)
!360 = !DILocation(line: 128, column: 3, scope: !355)
