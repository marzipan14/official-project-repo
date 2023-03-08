; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strtok_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strtok_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__strtok_r(i8*, i8* nocapture readonly, i8** nocapture, i32) local_unnamed_addr #0 !dbg !11 {
  %5 = icmp eq i8* %0, null, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %5, label %6, label %9, !dbg !30

; <label>:6:                                      ; preds = %4
  %7 = load i8*, i8** %2, align 8, !dbg !31, !tbaa !32
  %8 = icmp eq i8* %7, null, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %8, label %45, label %9, !dbg !37

; <label>:9:                                      ; preds = %6, %4
  %10 = phi i8* [ %7, %6 ], [ %0, %4 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %11 = icmp eq i32 %3, 0
  br label %12, !dbg !38

; <label>:12:                                     ; preds = %23, %9
  %13 = phi i8* [ %10, %9 ], [ %14, %23 ], !dbg !39
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !40
  %15 = load i8, i8* %13, align 1, !dbg !41, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br label %16, !dbg !44

; <label>:16:                                     ; preds = %20, %12
  %17 = phi i8* [ %1, %12 ], [ %21, %20 ], !dbg !46
  %18 = load i8, i8* %17, align 1, !dbg !48, !tbaa !42
  %19 = icmp eq i8 %18, 0, !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  br i1 %19, label %25, label %20, !dbg !50

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !51
  %22 = icmp eq i8 %15, %18, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %22, label %23, label %16, !dbg !55, !llvm.loop !56

; <label>:23:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %11, label %24, label %12, !dbg !58

; <label>:24:                                     ; preds = %23
  store i8* %14, i8** %2, align 8, !dbg !60, !tbaa !32
  store i8 0, i8* %13, align 1, !dbg !63, !tbaa !42
  br label %45, !dbg !64

; <label>:25:                                     ; preds = %16
  %26 = icmp eq i8 %15, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %26, label %27, label %28, !dbg !67

; <label>:27:                                     ; preds = %25
  store i8* null, i8** %2, align 8, !dbg !68, !tbaa !32
  br label %45, !dbg !70

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  br label %29, !dbg !72

; <label>:29:                                     ; preds = %42, %28
  %30 = phi i8* [ %14, %28 ], [ %31, %42 ], !dbg !73
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !77
  %32 = load i8, i8* %30, align 1, !dbg !78, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br label %33, !dbg !79

; <label>:33:                                     ; preds = %42, %29
  %34 = phi i8* [ %1, %29 ], [ %43, %42 ], !dbg !80
  %35 = load i8, i8* %34, align 1, !dbg !83, !tbaa !42
  %36 = icmp eq i8 %35, %32, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %36, label %37, label %42, !dbg !85

; <label>:37:                                     ; preds = %33
  %38 = icmp eq i8 %32, 0, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %38, label %40, label %39, !dbg !89

; <label>:39:                                     ; preds = %37
  store i8 0, i8* %30, align 1, !dbg !90, !tbaa !42
  br label %40

; <label>:40:                                     ; preds = %37, %39
  %41 = phi i8* [ %31, %39 ], [ null, %37 ], !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i8* %41, i8** %2, align 8, !dbg !91, !tbaa !32
  br label %45, !dbg !92

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !93
  %44 = icmp eq i8 %35, 0, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %44, label %29, label %33, !dbg !95, !llvm.loop !96

; <label>:45:                                     ; preds = %6, %40, %27, %24
  %46 = phi i8* [ %13, %24 ], [ null, %27 ], [ %13, %40 ], [ null, %6 ], !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  ret i8* %46, !dbg !101
}

; Function Attrs: noredzone nounwind
define dso_local i8* @strtok_r(i8* noalias, i8* noalias nocapture readonly, i8** noalias nocapture) local_unnamed_addr #0 !dbg !102 {
  %4 = icmp eq i8* %0, null, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %4, label %5, label %8, !dbg !116

; <label>:5:                                      ; preds = %3
  %6 = load i8*, i8** %2, align 8, !dbg !117, !tbaa !32
  %7 = icmp eq i8* %6, null, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %7, label %43, label %8, !dbg !119

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i8* [ %0, %3 ], [ %6, %5 ]
  br label %10, !dbg !120

; <label>:10:                                     ; preds = %18, %8
  %11 = phi i8* [ %9, %8 ], [ %12, %18 ], !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !122
  %13 = load i8, i8* %11, align 1, !dbg !123, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br label %14, !dbg !125

; <label>:14:                                     ; preds = %18, %10
  %15 = phi i8* [ %1, %10 ], [ %19, %18 ], !dbg !126
  %16 = load i8, i8* %15, align 1, !dbg !127, !tbaa !42
  %17 = icmp eq i8 %16, 0, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %17, label %21, label %18, !dbg !129

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !130
  %20 = icmp eq i8 %13, %16, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %20, label %10, label %14, !dbg !132, !llvm.loop !56

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i8 %13, 0, !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br i1 %22, label %40, label %23, !dbg !134

; <label>:23:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br label %24, !dbg !136

; <label>:24:                                     ; preds = %37, %23
  %25 = phi i8* [ %12, %23 ], [ %26, %37 ], !dbg !137
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !138
  %27 = load i8, i8* %25, align 1, !dbg !139, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br label %28, !dbg !140

; <label>:28:                                     ; preds = %37, %24
  %29 = phi i8* [ %1, %24 ], [ %38, %37 ], !dbg !141
  %30 = load i8, i8* %29, align 1, !dbg !142, !tbaa !42
  %31 = icmp eq i8 %30, %27, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br i1 %31, label %32, label %37, !dbg !144

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i8 %27, 0, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br i1 %33, label %35, label %34, !dbg !146

; <label>:34:                                     ; preds = %32
  store i8 0, i8* %25, align 1, !dbg !147, !tbaa !42
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = phi i8* [ %26, %34 ], [ null, %32 ], !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %40, !dbg !148

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !149
  %39 = icmp eq i8 %30, 0, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br i1 %39, label %24, label %28, !dbg !151, !llvm.loop !96

; <label>:40:                                     ; preds = %21, %35
  %41 = phi i8* [ %36, %35 ], [ null, %21 ]
  %42 = phi i8* [ %11, %35 ], [ null, %21 ]
  store i8* %41, i8** %2, align 8, !dbg !120, !tbaa !32
  br label %43, !dbg !120

; <label>:43:                                     ; preds = %40, %5
  %44 = phi i8* [ null, %5 ], [ %42, %40 ], !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  ret i8* %44, !dbg !154
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strtok_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "__strtok_r", scope: !1, file: !1, line: 33, type: !12, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!5, !5, !14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !1, line: 33, type: !5)
!20 = !DILocalVariable(name: "delim", arg: 2, scope: !11, file: !1, line: 33, type: !14)
!21 = !DILocalVariable(name: "lasts", arg: 3, scope: !11, file: !1, line: 33, type: !16)
!22 = !DILocalVariable(name: "skip_leading_delim", arg: 4, scope: !11, file: !1, line: 33, type: !17)
!23 = !DILocalVariable(name: "spanp", scope: !11, file: !1, line: 39, type: !5)
!24 = !DILocalVariable(name: "c", scope: !11, file: !1, line: 40, type: !17)
!25 = !DILocalVariable(name: "sc", scope: !11, file: !1, line: 40, type: !17)
!26 = !DILocalVariable(name: "tok", scope: !11, file: !1, line: 41, type: !5)
!27 = !DILocation(line: 33, column: 1, scope: !11)
!28 = !DILocation(line: 44, column: 8, scope: !29)
!29 = distinct !DILexicalBlock(scope: !11, file: !1, line: 44, column: 6)
!30 = !DILocation(line: 44, column: 16, scope: !29)
!31 = !DILocation(line: 44, column: 24, scope: !29)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 44, column: 32, scope: !29)
!37 = !DILocation(line: 44, column: 6, scope: !11)
!38 = !DILocation(line: 44, column: 35, scope: !29)
!39 = !DILocation(line: 0, scope: !11)
!40 = !DILocation(line: 51, column: 8, scope: !11)
!41 = !DILocation(line: 51, column: 6, scope: !11)
!42 = !{!34, !34, i64 0}
!43 = !DILocation(line: 39, column: 17, scope: !11)
!44 = !DILocation(line: 52, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !11, file: !1, line: 52, column: 2)
!46 = !DILocation(line: 0, scope: !47)
!47 = distinct !DILexicalBlock(scope: !45, file: !1, line: 52, column: 2)
!48 = !DILocation(line: 52, column: 36, scope: !47)
!49 = !DILocation(line: 52, column: 46, scope: !47)
!50 = !DILocation(line: 52, column: 2, scope: !45)
!51 = !DILocation(line: 52, column: 42, scope: !47)
!52 = !DILocation(line: 53, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 53, column: 7)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 52, column: 53)
!55 = !DILocation(line: 53, column: 7, scope: !54)
!56 = distinct !{!56, !50, !57}
!57 = !DILocation(line: 63, column: 2, scope: !45)
!58 = !DILocation(line: 54, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 53, column: 16)
!60 = !DILocation(line: 58, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 57, column: 9)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 54, column: 8)
!63 = !DILocation(line: 59, column: 11, scope: !61)
!64 = !DILocation(line: 60, column: 5, scope: !61)
!65 = !DILocation(line: 65, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !11, file: !1, line: 65, column: 6)
!67 = !DILocation(line: 65, column: 6, scope: !11)
!68 = !DILocation(line: 66, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 65, column: 14)
!70 = !DILocation(line: 67, column: 3, scope: !69)
!71 = !DILocation(line: 41, column: 8, scope: !11)
!72 = !DILocation(line: 75, column: 2, scope: !11)
!73 = !DILocation(line: 0, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 75, column: 11)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 75, column: 2)
!76 = distinct !DILexicalBlock(scope: !11, file: !1, line: 75, column: 2)
!77 = !DILocation(line: 76, column: 9, scope: !74)
!78 = !DILocation(line: 76, column: 7, scope: !74)
!79 = !DILocation(line: 78, column: 3, scope: !74)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 79, column: 8)
!82 = distinct !DILexicalBlock(scope: !74, file: !1, line: 78, column: 6)
!83 = !DILocation(line: 79, column: 14, scope: !81)
!84 = !DILocation(line: 79, column: 24, scope: !81)
!85 = !DILocation(line: 79, column: 8, scope: !82)
!86 = !DILocation(line: 80, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 80, column: 9)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 79, column: 30)
!89 = !DILocation(line: 80, column: 9, scope: !88)
!90 = !DILocation(line: 83, column: 12, scope: !87)
!91 = !DILocation(line: 84, column: 12, scope: !88)
!92 = !DILocation(line: 85, column: 5, scope: !88)
!93 = !DILocation(line: 79, column: 20, scope: !81)
!94 = !DILocation(line: 87, column: 15, scope: !74)
!95 = !DILocation(line: 87, column: 3, scope: !82)
!96 = distinct !{!96, !97, !98}
!97 = !DILocation(line: 75, column: 2, scope: !76)
!98 = !DILocation(line: 88, column: 2, scope: !76)
!99 = !DILocation(line: 0, scope: !88)
!100 = !DILocation(line: 0, scope: !29)
!101 = !DILocation(line: 90, column: 1, scope: !11)
!102 = distinct !DISubprogram(name: "strtok_r", scope: !1, file: !1, line: 93, type: !103, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !108)
!103 = !DISubroutineType(types: !104)
!104 = !{!5, !105, !106, !107}
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!108 = !{!109, !110, !111}
!109 = !DILocalVariable(name: "s", arg: 1, scope: !102, file: !1, line: 93, type: !105)
!110 = !DILocalVariable(name: "delim", arg: 2, scope: !102, file: !1, line: 93, type: !106)
!111 = !DILocalVariable(name: "lasts", arg: 3, scope: !102, file: !1, line: 93, type: !107)
!112 = !DILocation(line: 93, column: 1, scope: !102)
!113 = !DILocation(line: 33, column: 1, scope: !11, inlinedAt: !114)
!114 = distinct !DILocation(line: 98, column: 9, scope: !102)
!115 = !DILocation(line: 44, column: 8, scope: !29, inlinedAt: !114)
!116 = !DILocation(line: 44, column: 16, scope: !29, inlinedAt: !114)
!117 = !DILocation(line: 44, column: 24, scope: !29, inlinedAt: !114)
!118 = !DILocation(line: 44, column: 32, scope: !29, inlinedAt: !114)
!119 = !DILocation(line: 44, column: 6, scope: !11, inlinedAt: !114)
!120 = !DILocation(line: 0, scope: !102)
!121 = !DILocation(line: 0, scope: !11, inlinedAt: !114)
!122 = !DILocation(line: 51, column: 8, scope: !11, inlinedAt: !114)
!123 = !DILocation(line: 51, column: 6, scope: !11, inlinedAt: !114)
!124 = !DILocation(line: 39, column: 17, scope: !11, inlinedAt: !114)
!125 = !DILocation(line: 52, column: 7, scope: !45, inlinedAt: !114)
!126 = !DILocation(line: 0, scope: !47, inlinedAt: !114)
!127 = !DILocation(line: 52, column: 36, scope: !47, inlinedAt: !114)
!128 = !DILocation(line: 52, column: 46, scope: !47, inlinedAt: !114)
!129 = !DILocation(line: 52, column: 2, scope: !45, inlinedAt: !114)
!130 = !DILocation(line: 52, column: 42, scope: !47, inlinedAt: !114)
!131 = !DILocation(line: 53, column: 9, scope: !53, inlinedAt: !114)
!132 = !DILocation(line: 53, column: 7, scope: !54, inlinedAt: !114)
!133 = !DILocation(line: 65, column: 8, scope: !66, inlinedAt: !114)
!134 = !DILocation(line: 65, column: 6, scope: !11, inlinedAt: !114)
!135 = !DILocation(line: 41, column: 8, scope: !11, inlinedAt: !114)
!136 = !DILocation(line: 75, column: 2, scope: !11, inlinedAt: !114)
!137 = !DILocation(line: 0, scope: !74, inlinedAt: !114)
!138 = !DILocation(line: 76, column: 9, scope: !74, inlinedAt: !114)
!139 = !DILocation(line: 76, column: 7, scope: !74, inlinedAt: !114)
!140 = !DILocation(line: 78, column: 3, scope: !74, inlinedAt: !114)
!141 = !DILocation(line: 0, scope: !81, inlinedAt: !114)
!142 = !DILocation(line: 79, column: 14, scope: !81, inlinedAt: !114)
!143 = !DILocation(line: 79, column: 24, scope: !81, inlinedAt: !114)
!144 = !DILocation(line: 79, column: 8, scope: !82, inlinedAt: !114)
!145 = !DILocation(line: 80, column: 11, scope: !87, inlinedAt: !114)
!146 = !DILocation(line: 80, column: 9, scope: !88, inlinedAt: !114)
!147 = !DILocation(line: 83, column: 12, scope: !87, inlinedAt: !114)
!148 = !DILocation(line: 85, column: 5, scope: !88, inlinedAt: !114)
!149 = !DILocation(line: 79, column: 20, scope: !81, inlinedAt: !114)
!150 = !DILocation(line: 87, column: 15, scope: !74, inlinedAt: !114)
!151 = !DILocation(line: 87, column: 3, scope: !82, inlinedAt: !114)
!152 = !DILocation(line: 0, scope: !88, inlinedAt: !114)
!153 = !DILocation(line: 90, column: 1, scope: !11, inlinedAt: !114)
!154 = !DILocation(line: 98, column: 2, scope: !102)
