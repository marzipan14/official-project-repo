; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regfree.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regfree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.regex_t = type { i32, i64, i8*, %struct.re_guts* }
%struct.re_guts = type { i32, i64*, i32, i32, %struct.cset*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, i8*, i8*, i32, i32*, i32*, i32, i64, i32, i64, [1 x i8] }
%struct.cset = type { i8*, i8, i16, i64, i8* }

; Function Attrs: noredzone nounwind
define dso_local void @regfree(%struct.regex_t* nocapture) local_unnamed_addr #0 !dbg !11 {
  %2 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %0, i64 0, i32 0, !dbg !85
  %3 = load i32, i32* %2, align 8, !dbg !85, !tbaa !87
  %4 = icmp eq i32 %3, 62053, !dbg !94
  br i1 %4, label %5, label %50, !dbg !95

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.regex_t, %struct.regex_t* %0, i64 0, i32 3, !dbg !96
  %7 = load %struct.re_guts*, %struct.re_guts** %6, align 8, !dbg !96, !tbaa !97
  %8 = icmp eq %struct.re_guts* %7, null, !dbg !99
  br i1 %8, label %50, label %9, !dbg !101

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 0, !dbg !102
  %11 = load i32, i32* %10, align 8, !dbg !102, !tbaa !103
  %12 = icmp eq i32 %11, 53829, !dbg !105
  br i1 %12, label %13, label %50, !dbg !106

; <label>:13:                                     ; preds = %9
  store i32 0, i32* %2, align 8, !dbg !107, !tbaa !87
  store i32 0, i32* %10, align 8, !dbg !108, !tbaa !103
  %14 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 1, !dbg !109
  %15 = load i64*, i64** %14, align 8, !dbg !109, !tbaa !111
  %16 = icmp eq i64* %15, null, !dbg !112
  br i1 %16, label %19, label %17, !dbg !113

; <label>:17:                                     ; preds = %13
  %18 = bitcast i64* %15 to i8*, !dbg !114
  tail call void @free(i8* %18) #3, !dbg !115
  br label %19, !dbg !115

; <label>:19:                                     ; preds = %13, %17
  %20 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 4, !dbg !116
  %21 = load %struct.cset*, %struct.cset** %20, align 8, !dbg !116, !tbaa !118
  %22 = icmp eq %struct.cset* %21, null, !dbg !119
  br i1 %22, label %25, label %23, !dbg !120

; <label>:23:                                     ; preds = %19
  %24 = bitcast %struct.cset* %21 to i8*, !dbg !121
  tail call void @free(i8* %24) #3, !dbg !122
  br label %25, !dbg !122

; <label>:25:                                     ; preds = %19, %23
  %26 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 5, !dbg !123
  %27 = load i8*, i8** %26, align 8, !dbg !123, !tbaa !125
  %28 = icmp eq i8* %27, null, !dbg !126
  br i1 %28, label %30, label %29, !dbg !127

; <label>:29:                                     ; preds = %25
  tail call void @free(i8* nonnull %27) #3, !dbg !128
  br label %30, !dbg !128

; <label>:30:                                     ; preds = %25, %29
  %31 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 15, !dbg !129
  %32 = load i8*, i8** %31, align 8, !dbg !129, !tbaa !131
  %33 = icmp eq i8* %32, null, !dbg !132
  br i1 %33, label %35, label %34, !dbg !133

; <label>:34:                                     ; preds = %30
  tail call void @free(i8* nonnull %32) #3, !dbg !134
  br label %35, !dbg !134

; <label>:35:                                     ; preds = %30, %34
  %36 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 17, !dbg !135
  %37 = load i32*, i32** %36, align 8, !dbg !135, !tbaa !137
  %38 = icmp eq i32* %37, null, !dbg !138
  br i1 %38, label %42, label %39, !dbg !139

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds i32, i32* %37, i64 -128, !dbg !140
  %41 = bitcast i32* %40 to i8*, !dbg !141
  tail call void @free(i8* nonnull %41) #3, !dbg !142
  br label %42, !dbg !142

; <label>:42:                                     ; preds = %35, %39
  %43 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %7, i64 0, i32 18, !dbg !143
  %44 = load i32*, i32** %43, align 8, !dbg !143, !tbaa !145
  %45 = icmp eq i32* %44, null, !dbg !146
  br i1 %45, label %48, label %46, !dbg !147

; <label>:46:                                     ; preds = %42
  %47 = bitcast i32* %44 to i8*, !dbg !148
  tail call void @free(i8* %47) #3, !dbg !149
  br label %48, !dbg !149

; <label>:48:                                     ; preds = %42, %46
  %49 = bitcast %struct.re_guts* %7 to i8*, !dbg !150
  tail call void @free(i8* %49) #3, !dbg !151
  br label %50, !dbg !152

; <label>:50:                                     ; preds = %5, %9, %1, %48
  ret void, !dbg !152
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regfree.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "regfree", scope: !1, file: !1, line: 57, type: !12, isLocal: false, isDefinition: true, scopeLine: 59, isOptimized: true, unit: !0, retainedNodes: !81)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_t", file: !16, line: 50, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/regex.h", directory: "/root/.unikraft/apps/redis/build")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 45, size: 256, elements: !18)
!18 = !{!19, !21, !25, !28}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "re_magic", scope: !17, file: !16, line: 46, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !17, file: !16, line: 47, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 58, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "re_endp", scope: !17, file: !16, line: 48, baseType: !26, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "re_g", scope: !17, file: !16, line: 49, baseType: !29, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_guts", file: !31, line: 143, size: 1344, elements: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/regex2.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33, !34, !37, !38, !39, !54, !55, !56, !59, !60, !61, !62, !63, !64, !65, !68, !69, !70, !72, !73, !74, !75, !76, !77}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !30, file: !31, line: 144, baseType: !20, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "strip", scope: !30, file: !31, line: 146, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "sop", file: !31, line: 79, baseType: !24)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "csetsize", scope: !30, file: !31, line: 147, baseType: !20, size: 32, offset: 128)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ncsets", scope: !30, file: !31, line: 148, baseType: !20, size: 32, offset: 160)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "sets", scope: !30, file: !31, line: 149, baseType: !40, size: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "cset", file: !31, line: 128, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !31, line: 122, size: 256, elements: !43)
!43 = !{!44, !49, !50, !52, !53}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !42, file: !31, line: 123, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uch", file: !47, line: 45, baseType: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/utils.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !42, file: !31, line: 124, baseType: !46, size: 8, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !42, file: !31, line: 125, baseType: !51, size: 16, offset: 80)
!51 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "smultis", scope: !42, file: !31, line: 126, baseType: !22, size: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "multis", scope: !42, file: !31, line: 127, baseType: !5, size: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "setbits", scope: !30, file: !31, line: 150, baseType: !45, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cflags", scope: !30, file: !31, line: 151, baseType: !20, size: 32, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nstates", scope: !30, file: !31, line: 152, baseType: !57, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "sopno", file: !31, line: 80, baseType: !58)
!58 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "firststate", scope: !30, file: !31, line: 153, baseType: !57, size: 64, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "laststate", scope: !30, file: !31, line: 154, baseType: !57, size: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !30, file: !31, line: 155, baseType: !20, size: 32, offset: 576)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nbol", scope: !30, file: !31, line: 159, baseType: !20, size: 32, offset: 608)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "neol", scope: !30, file: !31, line: 160, baseType: !20, size: 32, offset: 640)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ncategories", scope: !30, file: !31, line: 161, baseType: !20, size: 32, offset: 672)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !30, file: !31, line: 162, baseType: !66, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "cat_t", file: !31, line: 138, baseType: !48)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "must", scope: !30, file: !31, line: 163, baseType: !5, size: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "moffset", scope: !30, file: !31, line: 164, baseType: !20, size: 32, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "charjump", scope: !30, file: !31, line: 165, baseType: !71, size: 64, offset: 896)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "matchjump", scope: !30, file: !31, line: 166, baseType: !71, size: 64, offset: 960)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mlen", scope: !30, file: !31, line: 167, baseType: !20, size: 32, offset: 1024)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nsub", scope: !30, file: !31, line: 168, baseType: !22, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "backrefs", scope: !30, file: !31, line: 169, baseType: !20, size: 32, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "nplus", scope: !30, file: !31, line: 170, baseType: !57, size: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "catspace", scope: !30, file: !31, line: 172, baseType: !78, size: 8, offset: 1280)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 1)
!81 = !{!82, !83}
!82 = !DILocalVariable(name: "preg", arg: 1, scope: !11, file: !1, line: 58, type: !14)
!83 = !DILocalVariable(name: "g", scope: !11, file: !1, line: 60, type: !29)
!84 = !DILocation(line: 58, column: 10, scope: !11)
!85 = !DILocation(line: 62, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !11, file: !1, line: 62, column: 6)
!87 = !{!88, !89, i64 0}
!88 = !{!"", !89, i64 0, !92, i64 8, !93, i64 16, !93, i64 24}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"long", !90, i64 0}
!93 = !{!"any pointer", !90, i64 0}
!94 = !DILocation(line: 62, column: 21, scope: !86)
!95 = !DILocation(line: 62, column: 6, scope: !11)
!96 = !DILocation(line: 65, column: 12, scope: !11)
!97 = !{!88, !93, i64 24}
!98 = !DILocation(line: 60, column: 18, scope: !11)
!99 = !DILocation(line: 66, column: 8, scope: !100)
!100 = distinct !DILexicalBlock(scope: !11, file: !1, line: 66, column: 6)
!101 = !DILocation(line: 66, column: 16, scope: !100)
!102 = !DILocation(line: 66, column: 22, scope: !100)
!103 = !{!104, !89, i64 0}
!104 = !{!"re_guts", !89, i64 0, !93, i64 8, !89, i64 16, !89, i64 20, !93, i64 24, !93, i64 32, !89, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !89, i64 72, !89, i64 76, !89, i64 80, !89, i64 84, !93, i64 88, !93, i64 96, !89, i64 104, !93, i64 112, !93, i64 120, !89, i64 128, !92, i64 136, !89, i64 144, !92, i64 152, !90, i64 160}
!105 = !DILocation(line: 66, column: 28, scope: !100)
!106 = !DILocation(line: 66, column: 6, scope: !11)
!107 = !DILocation(line: 68, column: 17, scope: !11)
!108 = !DILocation(line: 69, column: 11, scope: !11)
!109 = !DILocation(line: 71, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !11, file: !1, line: 71, column: 6)
!111 = !{!104, !93, i64 8}
!112 = !DILocation(line: 71, column: 15, scope: !110)
!113 = !DILocation(line: 71, column: 6, scope: !11)
!114 = !DILocation(line: 72, column: 8, scope: !110)
!115 = !DILocation(line: 72, column: 3, scope: !110)
!116 = !DILocation(line: 73, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !11, file: !1, line: 73, column: 6)
!118 = !{!104, !93, i64 24}
!119 = !DILocation(line: 73, column: 14, scope: !117)
!120 = !DILocation(line: 73, column: 6, scope: !11)
!121 = !DILocation(line: 74, column: 8, scope: !117)
!122 = !DILocation(line: 74, column: 3, scope: !117)
!123 = !DILocation(line: 75, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !11, file: !1, line: 75, column: 6)
!125 = !{!104, !93, i64 32}
!126 = !DILocation(line: 75, column: 17, scope: !124)
!127 = !DILocation(line: 75, column: 6, scope: !11)
!128 = !DILocation(line: 76, column: 3, scope: !124)
!129 = !DILocation(line: 77, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !11, file: !1, line: 77, column: 6)
!131 = !{!104, !93, i64 96}
!132 = !DILocation(line: 77, column: 14, scope: !130)
!133 = !DILocation(line: 77, column: 6, scope: !11)
!134 = !DILocation(line: 78, column: 3, scope: !130)
!135 = !DILocation(line: 79, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !11, file: !1, line: 79, column: 6)
!137 = !{!104, !93, i64 112}
!138 = !DILocation(line: 79, column: 18, scope: !136)
!139 = !DILocation(line: 79, column: 6, scope: !11)
!140 = !DILocation(line: 80, column: 9, scope: !136)
!141 = !DILocation(line: 80, column: 8, scope: !136)
!142 = !DILocation(line: 80, column: 3, scope: !136)
!143 = !DILocation(line: 81, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !11, file: !1, line: 81, column: 6)
!145 = !{!104, !93, i64 120}
!146 = !DILocation(line: 81, column: 19, scope: !144)
!147 = !DILocation(line: 81, column: 6, scope: !11)
!148 = !DILocation(line: 82, column: 8, scope: !144)
!149 = !DILocation(line: 82, column: 3, scope: !144)
!150 = !DILocation(line: 83, column: 7, scope: !11)
!151 = !DILocation(line: 83, column: 2, scope: !11)
!152 = !DILocation(line: 84, column: 1, scope: !11)
