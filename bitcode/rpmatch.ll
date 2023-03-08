; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rpmatch.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rpmatch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type opaque
%struct.regmatch_t = type { i64, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @rpmatch(i8*) local_unnamed_addr #0 !dbg !70 {
  %2 = alloca %struct.regex_t, align 8
  %3 = alloca %struct.regex_t, align 8
  %4 = bitcast %struct.regex_t* %2 to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #4, !dbg !96
  %5 = bitcast %struct.regex_t* %3 to i8*, !dbg !96
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #4, !dbg !96
  %6 = tail call i8* @nl_langinfo(i32 52) #5, !dbg !97
  %7 = call i32 @regcomp(%struct.regex_t* nonnull %2, i8* %6, i32 5) #5, !dbg !100
  %8 = icmp eq i32 %7, 0, !dbg !101
  br i1 %8, label %9, label %23, !dbg !102

; <label>:9:                                      ; preds = %1
  %10 = call i8* @nl_langinfo(i32 53) #5, !dbg !103
  %11 = call i32 @regcomp(%struct.regex_t* nonnull %3, i8* %10, i32 5) #5, !dbg !106
  %12 = icmp eq i32 %11, 0, !dbg !107
  br i1 %12, label %14, label %13, !dbg !108

; <label>:13:                                     ; preds = %9
  call void @regfree(%struct.regex_t* nonnull %2) #5, !dbg !109
  br label %23, !dbg !111

; <label>:14:                                     ; preds = %9
  %15 = call i32 @regexec(%struct.regex_t* nonnull %2, i8* %0, i64 0, %struct.regmatch_t* null, i32 0) #5, !dbg !112
  %16 = icmp eq i32 %15, 0, !dbg !114
  br i1 %16, label %21, label %17, !dbg !115

; <label>:17:                                     ; preds = %14
  %18 = call i32 @regexec(%struct.regex_t* nonnull %3, i8* %0, i64 0, %struct.regmatch_t* null, i32 0) #5, !dbg !116
  %19 = icmp ne i32 %18, 0, !dbg !118
  %20 = sext i1 %19 to i32, !dbg !119
  br label %21, !dbg !119

; <label>:21:                                     ; preds = %17, %14
  %22 = phi i32 [ 1, %14 ], [ %20, %17 ], !dbg !120
  call void @regfree(%struct.regex_t* nonnull %2) #5, !dbg !122
  call void @regfree(%struct.regex_t* nonnull %3) #5, !dbg !123
  br label %23, !dbg !124

; <label>:23:                                     ; preds = %1, %21, %13
  %24 = phi i32 [ -1, %13 ], [ %22, %21 ], [ -1, %1 ], !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #4, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  ret i32 %24, !dbg !126
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @regcomp(%struct.regex_t*, i8*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @regfree(%struct.regex_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @regexec(%struct.regex_t*, i8*, i64, %struct.regmatch_t*, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!66, !67, !68}
!llvm.ident = !{!69}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rpmatch.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__nl_item", file: !4, line: 41, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/langinfo.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!7 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "D_T_FMT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "D_FMT", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "T_FMT", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "T_FMT_AMPM", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "AM_STR", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "PM_STR", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "DAY_1", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "DAY_2", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "DAY_3", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "DAY_4", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "DAY_5", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "DAY_6", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "DAY_7", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "ABDAY_1", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "ABDAY_2", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "ABDAY_3", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "ABDAY_4", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "ABDAY_5", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "ABDAY_6", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "ABDAY_7", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "MON_1", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "MON_2", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "MON_3", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "MON_4", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "MON_5", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "MON_6", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "MON_7", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "MON_8", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "MON_9", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "MON_10", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "MON_11", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "MON_12", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "ABMON_1", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "ABMON_2", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "ABMON_3", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "ABMON_4", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "ABMON_5", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "ABMON_6", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "ABMON_7", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "ABMON_8", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "ABMON_9", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "ABMON_10", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "ABMON_11", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "ABMON_12", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "ERA", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "ERA_D_FMT", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "ERA_D_T_FMT", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "ERA_T_FMT", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "ALT_DIGITS", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "RADIXCHAR", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "THOUSEP", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "YESEXPR", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "NOEXPR", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "YESSTR", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "NOSTR", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "CRNCYSTR", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "D_MD_ORDER", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "_NL_TIME_DATE_FMT", value: 84, isUnsigned: true)
!66 = !{i32 2, !"Dwarf Version", i32 4}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!70 = distinct !DISubprogram(name: "rpmatch", scope: !1, file: !1, line: 67, type: !71, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !77)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !74}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!77 = !{!78, !79, !93, !94}
!78 = !DILocalVariable(name: "response", arg: 1, scope: !70, file: !1, line: 67, type: !74)
!79 = !DILocalVariable(name: "yes", scope: !70, file: !1, line: 70, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !81, line: 50, baseType: !82)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/regex.h", directory: "/root/.unikraft/apps/redis/build")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 45, size: 256, elements: !83)
!83 = !{!84, !85, !89, !90}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "re_magic", scope: !82, file: !81, line: 46, baseType: !73, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !82, file: !81, line: 47, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 58, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "re_endp", scope: !82, file: !81, line: 48, baseType: !74, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "re_g", scope: !82, file: !81, line: 49, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_guts", file: !81, line: 49, flags: DIFlagFwdDecl)
!93 = !DILocalVariable(name: "no", scope: !70, file: !1, line: 70, type: !80)
!94 = !DILocalVariable(name: "ret", scope: !70, file: !1, line: 71, type: !73)
!95 = !DILocation(line: 67, column: 1, scope: !70)
!96 = !DILocation(line: 70, column: 2, scope: !70)
!97 = !DILocation(line: 73, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !70, file: !1, line: 73, column: 6)
!99 = !DILocation(line: 70, column: 10, scope: !70)
!100 = !DILocation(line: 73, column: 6, scope: !98)
!101 = !DILocation(line: 73, column: 66, scope: !98)
!102 = !DILocation(line: 73, column: 6, scope: !70)
!103 = !DILocation(line: 75, column: 19, scope: !104)
!104 = distinct !DILexicalBlock(scope: !70, file: !1, line: 75, column: 6)
!105 = !DILocation(line: 70, column: 15, scope: !70)
!106 = !DILocation(line: 75, column: 6, scope: !104)
!107 = !DILocation(line: 75, column: 64, scope: !104)
!108 = !DILocation(line: 75, column: 6, scope: !70)
!109 = !DILocation(line: 76, column: 3, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 75, column: 70)
!111 = !DILocation(line: 77, column: 3, scope: !110)
!112 = !DILocation(line: 79, column: 6, scope: !113)
!113 = distinct !DILexicalBlock(scope: !70, file: !1, line: 79, column: 6)
!114 = !DILocation(line: 79, column: 42, scope: !113)
!115 = !DILocation(line: 79, column: 6, scope: !70)
!116 = !DILocation(line: 81, column: 11, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 81, column: 11)
!118 = !DILocation(line: 81, column: 46, scope: !117)
!119 = !DILocation(line: 82, column: 3, scope: !117)
!120 = !DILocation(line: 0, scope: !117)
!121 = !DILocation(line: 71, column: 6, scope: !70)
!122 = !DILocation(line: 85, column: 2, scope: !70)
!123 = !DILocation(line: 86, column: 2, scope: !70)
!124 = !DILocation(line: 87, column: 2, scope: !70)
!125 = !DILocation(line: 0, scope: !70)
!126 = !DILocation(line: 88, column: 1, scope: !70)
