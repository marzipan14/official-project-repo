; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strtok_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strtok_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__strtok_r(i8*, i8* nocapture readonly, i8** nocapture, i32) local_unnamed_addr #0 !dbg !11 {
  %5 = icmp eq i8* %0, null, !dbg !28
  br i1 %5, label %6, label %9, !dbg !30

; <label>:6:                                      ; preds = %4
  %7 = load i8*, i8** %2, align 8, !dbg !31, !tbaa !32
  %8 = icmp eq i8* %7, null, !dbg !36
  br i1 %8, label %44, label %9, !dbg !37

; <label>:9:                                      ; preds = %6, %4
  %10 = phi i8* [ %7, %6 ], [ %0, %4 ]
  %11 = icmp eq i32 %3, 0
  br label %12, !dbg !38

; <label>:12:                                     ; preds = %23, %9
  %13 = phi i8* [ %10, %9 ], [ %14, %23 ], !dbg !39
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !40
  %15 = load i8, i8* %13, align 1, !dbg !41, !tbaa !42
  br label %16, !dbg !44

; <label>:16:                                     ; preds = %20, %12
  %17 = phi i8* [ %1, %12 ], [ %21, %20 ], !dbg !46
  %18 = load i8, i8* %17, align 1, !dbg !48, !tbaa !42
  %19 = icmp eq i8 %18, 0, !dbg !49
  br i1 %19, label %25, label %20, !dbg !50

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !51
  %22 = icmp eq i8 %15, %18, !dbg !52
  br i1 %22, label %23, label %16, !dbg !55, !llvm.loop !56

; <label>:23:                                     ; preds = %20
  br i1 %11, label %24, label %12, !dbg !58

; <label>:24:                                     ; preds = %23
  store i8* %14, i8** %2, align 8, !dbg !60, !tbaa !32
  store i8 0, i8* %13, align 1, !dbg !63, !tbaa !42
  br label %44, !dbg !64

; <label>:25:                                     ; preds = %16
  %26 = icmp eq i8 %15, 0, !dbg !65
  br i1 %26, label %27, label %28, !dbg !67

; <label>:27:                                     ; preds = %25
  store i8* null, i8** %2, align 8, !dbg !68, !tbaa !32
  br label %44, !dbg !70

; <label>:28:                                     ; preds = %41, %25
  %29 = phi i8* [ %14, %25 ], [ %30, %41 ], !dbg !71
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !75
  %31 = load i8, i8* %29, align 1, !dbg !76, !tbaa !42
  br label %32, !dbg !77

; <label>:32:                                     ; preds = %41, %28
  %33 = phi i8* [ %1, %28 ], [ %42, %41 ], !dbg !78
  %34 = load i8, i8* %33, align 1, !dbg !81, !tbaa !42
  %35 = icmp eq i8 %34, %31, !dbg !82
  br i1 %35, label %36, label %41, !dbg !83

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i8 %31, 0, !dbg !84
  br i1 %37, label %39, label %38, !dbg !87

; <label>:38:                                     ; preds = %36
  store i8 0, i8* %29, align 1, !dbg !88, !tbaa !42
  br label %39

; <label>:39:                                     ; preds = %36, %38
  %40 = phi i8* [ %30, %38 ], [ null, %36 ], !dbg !71
  store i8* %40, i8** %2, align 8, !dbg !89, !tbaa !32
  br label %44, !dbg !90

; <label>:41:                                     ; preds = %32
  %42 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !91
  %43 = icmp eq i8 %34, 0, !dbg !92
  br i1 %43, label %28, label %32, !dbg !93, !llvm.loop !94

; <label>:44:                                     ; preds = %6, %39, %27, %24
  %45 = phi i8* [ %13, %24 ], [ null, %27 ], [ %13, %39 ], [ null, %6 ], !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  ret i8* %45, !dbg !98
}

; Function Attrs: noredzone nounwind
define dso_local i8* @strtok_r(i8* noalias, i8* noalias nocapture readonly, i8** noalias nocapture) local_unnamed_addr #0 !dbg !99 {
  %4 = icmp eq i8* %0, null, !dbg !112
  br i1 %4, label %5, label %8, !dbg !113

; <label>:5:                                      ; preds = %3
  %6 = load i8*, i8** %2, align 8, !dbg !114, !tbaa !32
  %7 = icmp eq i8* %6, null, !dbg !115
  br i1 %7, label %40, label %8, !dbg !116

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i8* [ %0, %3 ], [ %6, %5 ]
  br label %10, !dbg !117

; <label>:10:                                     ; preds = %18, %8
  %11 = phi i8* [ %9, %8 ], [ %12, %18 ], !dbg !118
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !117
  %13 = load i8, i8* %11, align 1, !dbg !119, !tbaa !42
  br label %14, !dbg !121

; <label>:14:                                     ; preds = %18, %10
  %15 = phi i8* [ %1, %10 ], [ %19, %18 ], !dbg !122
  %16 = load i8, i8* %15, align 1, !dbg !123, !tbaa !42
  %17 = icmp eq i8 %16, 0, !dbg !124
  br i1 %17, label %21, label %18, !dbg !125

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !126
  %20 = icmp eq i8 %13, %16, !dbg !127
  br i1 %20, label %10, label %14, !dbg !128, !llvm.loop !56

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i8 %13, 0, !dbg !129
  br i1 %22, label %37, label %23, !dbg !130

; <label>:23:                                     ; preds = %34, %21
  %24 = phi i8* [ %12, %21 ], [ %25, %34 ], !dbg !131
  %25 = getelementptr inbounds i8, i8* %24, i64 1, !dbg !132
  %26 = load i8, i8* %24, align 1, !dbg !133, !tbaa !42
  br label %27, !dbg !134

; <label>:27:                                     ; preds = %34, %23
  %28 = phi i8* [ %1, %23 ], [ %35, %34 ], !dbg !135
  %29 = load i8, i8* %28, align 1, !dbg !136, !tbaa !42
  %30 = icmp eq i8 %29, %26, !dbg !137
  br i1 %30, label %31, label %34, !dbg !138

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8 %26, 0, !dbg !139
  br i1 %32, label %37, label %33, !dbg !140

; <label>:33:                                     ; preds = %31
  store i8 0, i8* %24, align 1, !dbg !141, !tbaa !42
  br label %37

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds i8, i8* %28, i64 1, !dbg !142
  %36 = icmp eq i8 %29, 0, !dbg !143
  br i1 %36, label %23, label %27, !dbg !144, !llvm.loop !94

; <label>:37:                                     ; preds = %31, %33, %21
  %38 = phi i8* [ null, %21 ], [ %25, %33 ], [ null, %31 ]
  %39 = phi i8* [ null, %21 ], [ %11, %33 ], [ %11, %31 ]
  store i8* %38, i8** %2, align 8, !dbg !145, !tbaa !32
  br label %40, !dbg !146

; <label>:40:                                     ; preds = %37, %5
  %41 = phi i8* [ null, %5 ], [ %39, %37 ], !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  ret i8* %41, !dbg !148
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
!71 = !DILocation(line: 0, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 75, column: 11)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 75, column: 2)
!74 = distinct !DILexicalBlock(scope: !11, file: !1, line: 75, column: 2)
!75 = !DILocation(line: 76, column: 9, scope: !72)
!76 = !DILocation(line: 76, column: 7, scope: !72)
!77 = !DILocation(line: 78, column: 3, scope: !72)
!78 = !DILocation(line: 0, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 79, column: 8)
!80 = distinct !DILexicalBlock(scope: !72, file: !1, line: 78, column: 6)
!81 = !DILocation(line: 79, column: 14, scope: !79)
!82 = !DILocation(line: 79, column: 24, scope: !79)
!83 = !DILocation(line: 79, column: 8, scope: !80)
!84 = !DILocation(line: 80, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 80, column: 9)
!86 = distinct !DILexicalBlock(scope: !79, file: !1, line: 79, column: 30)
!87 = !DILocation(line: 80, column: 9, scope: !86)
!88 = !DILocation(line: 83, column: 12, scope: !85)
!89 = !DILocation(line: 84, column: 12, scope: !86)
!90 = !DILocation(line: 85, column: 5, scope: !86)
!91 = !DILocation(line: 79, column: 20, scope: !79)
!92 = !DILocation(line: 87, column: 15, scope: !72)
!93 = !DILocation(line: 87, column: 3, scope: !80)
!94 = distinct !{!94, !95, !96}
!95 = !DILocation(line: 75, column: 2, scope: !74)
!96 = !DILocation(line: 88, column: 2, scope: !74)
!97 = !DILocation(line: 0, scope: !86)
!98 = !DILocation(line: 90, column: 1, scope: !11)
!99 = distinct !DISubprogram(name: "strtok_r", scope: !1, file: !1, line: 93, type: !100, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !105)
!100 = !DISubroutineType(types: !101)
!101 = !{!5, !102, !103, !104}
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!105 = !{!106, !107, !108}
!106 = !DILocalVariable(name: "s", arg: 1, scope: !99, file: !1, line: 93, type: !102)
!107 = !DILocalVariable(name: "delim", arg: 2, scope: !99, file: !1, line: 93, type: !103)
!108 = !DILocalVariable(name: "lasts", arg: 3, scope: !99, file: !1, line: 93, type: !104)
!109 = !DILocation(line: 93, column: 1, scope: !99)
!110 = !DILocation(line: 33, column: 1, scope: !11, inlinedAt: !111)
!111 = distinct !DILocation(line: 98, column: 9, scope: !99)
!112 = !DILocation(line: 44, column: 8, scope: !29, inlinedAt: !111)
!113 = !DILocation(line: 44, column: 16, scope: !29, inlinedAt: !111)
!114 = !DILocation(line: 44, column: 24, scope: !29, inlinedAt: !111)
!115 = !DILocation(line: 44, column: 32, scope: !29, inlinedAt: !111)
!116 = !DILocation(line: 44, column: 6, scope: !11, inlinedAt: !111)
!117 = !DILocation(line: 51, column: 8, scope: !11, inlinedAt: !111)
!118 = !DILocation(line: 0, scope: !11, inlinedAt: !111)
!119 = !DILocation(line: 51, column: 6, scope: !11, inlinedAt: !111)
!120 = !DILocation(line: 39, column: 17, scope: !11, inlinedAt: !111)
!121 = !DILocation(line: 52, column: 7, scope: !45, inlinedAt: !111)
!122 = !DILocation(line: 0, scope: !47, inlinedAt: !111)
!123 = !DILocation(line: 52, column: 36, scope: !47, inlinedAt: !111)
!124 = !DILocation(line: 52, column: 46, scope: !47, inlinedAt: !111)
!125 = !DILocation(line: 52, column: 2, scope: !45, inlinedAt: !111)
!126 = !DILocation(line: 52, column: 42, scope: !47, inlinedAt: !111)
!127 = !DILocation(line: 53, column: 9, scope: !53, inlinedAt: !111)
!128 = !DILocation(line: 53, column: 7, scope: !54, inlinedAt: !111)
!129 = !DILocation(line: 65, column: 8, scope: !66, inlinedAt: !111)
!130 = !DILocation(line: 65, column: 6, scope: !11, inlinedAt: !111)
!131 = !DILocation(line: 0, scope: !72, inlinedAt: !111)
!132 = !DILocation(line: 76, column: 9, scope: !72, inlinedAt: !111)
!133 = !DILocation(line: 76, column: 7, scope: !72, inlinedAt: !111)
!134 = !DILocation(line: 78, column: 3, scope: !72, inlinedAt: !111)
!135 = !DILocation(line: 0, scope: !79, inlinedAt: !111)
!136 = !DILocation(line: 79, column: 14, scope: !79, inlinedAt: !111)
!137 = !DILocation(line: 79, column: 24, scope: !79, inlinedAt: !111)
!138 = !DILocation(line: 79, column: 8, scope: !80, inlinedAt: !111)
!139 = !DILocation(line: 80, column: 11, scope: !85, inlinedAt: !111)
!140 = !DILocation(line: 80, column: 9, scope: !86, inlinedAt: !111)
!141 = !DILocation(line: 83, column: 12, scope: !85, inlinedAt: !111)
!142 = !DILocation(line: 79, column: 20, scope: !79, inlinedAt: !111)
!143 = !DILocation(line: 87, column: 15, scope: !72, inlinedAt: !111)
!144 = !DILocation(line: 87, column: 3, scope: !80, inlinedAt: !111)
!145 = !DILocation(line: 0, scope: !99)
!146 = !DILocation(line: 90, column: 1, scope: !11, inlinedAt: !111)
!147 = !DILocation(line: 0, scope: !86, inlinedAt: !111)
!148 = !DILocation(line: 98, column: 2, scope: !99)
