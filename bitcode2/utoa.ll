; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/utoa.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/utoa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__utoa.digits = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__utoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !7 {
  %4 = add i32 %2, -2, !dbg !29
  %5 = icmp ugt i32 %4, 34, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %5, label %6, label %7, !dbg !29

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !31, !tbaa !33
  br label %36, !dbg !36

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br label %8, !dbg !38

; <label>:8:                                      ; preds = %8, %7
  %9 = phi i64 [ %15, %8 ], [ 0, %7 ], !dbg !39
  %10 = phi i32 [ %17, %8 ], [ %0, %7 ]
  %11 = urem i32 %10, %2, !dbg !41
  %12 = zext i32 %11 to i64, !dbg !43
  %13 = getelementptr inbounds [37 x i8], [37 x i8]* @__utoa.digits, i64 0, i64 %12, !dbg !43
  %14 = load i8, i8* %13, align 1, !dbg !43, !tbaa !33
  %15 = add nuw i64 %9, 1, !dbg !44
  %16 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !45
  store i8 %14, i8* %16, align 1, !dbg !46, !tbaa !33
  %17 = udiv i32 %10, %2, !dbg !47
  %18 = icmp ult i32 %10, %2, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %18, label %19, label %8, !dbg !49, !llvm.loop !50

; <label>:19:                                     ; preds = %8
  %20 = trunc i64 %9 to i32, !dbg !37
  %21 = and i64 %15, 4294967295, !dbg !52
  %22 = getelementptr inbounds i8, i8* %1, i64 %21, !dbg !52
  store i8 0, i8* %22, align 1, !dbg !53, !tbaa !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  %23 = icmp eq i32 %20, 0, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %23, label %36, label %24, !dbg !59

; <label>:24:                                     ; preds = %19
  %25 = and i64 %9, 4294967295, !dbg !60
  br label %26, !dbg !60

; <label>:26:                                     ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %34, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %33, %26 ]
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !60
  %30 = load i8, i8* %29, align 1, !dbg !60, !tbaa !33
  %31 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !63
  %32 = load i8, i8* %31, align 1, !dbg !63, !tbaa !33
  store i8 %32, i8* %29, align 1, !dbg !64, !tbaa !33
  store i8 %30, i8* %31, align 1, !dbg !65, !tbaa !33
  %33 = add nuw nsw i64 %28, 1, !dbg !66
  %34 = add nsw i64 %27, -1, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  %35 = icmp slt i64 %33, %34, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %35, label %26, label %36, !dbg !59, !llvm.loop !69

; <label>:36:                                     ; preds = %26, %19, %6
  %37 = phi i8* [ null, %6 ], [ %1, %19 ], [ %1, %26 ], !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  ret i8* %37, !dbg !73
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local i8* @utoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !74 {
  %4 = add i32 %2, -2, !dbg !83
  %5 = icmp ugt i32 %4, 34, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br i1 %5, label %6, label %7, !dbg !83

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !84, !tbaa !33
  br label %36, !dbg !85

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br label %8, !dbg !87

; <label>:8:                                      ; preds = %8, %7
  %9 = phi i64 [ %15, %8 ], [ 0, %7 ], !dbg !88
  %10 = phi i32 [ %17, %8 ], [ %0, %7 ]
  %11 = urem i32 %10, %2, !dbg !89
  %12 = zext i32 %11 to i64, !dbg !91
  %13 = getelementptr inbounds [37 x i8], [37 x i8]* @__utoa.digits, i64 0, i64 %12, !dbg !91
  %14 = load i8, i8* %13, align 1, !dbg !91, !tbaa !33
  %15 = add nuw i64 %9, 1, !dbg !92
  %16 = getelementptr inbounds i8, i8* %1, i64 %9, !dbg !93
  store i8 %14, i8* %16, align 1, !dbg !94, !tbaa !33
  %17 = udiv i32 %10, %2, !dbg !95
  %18 = icmp ult i32 %10, %2, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br i1 %18, label %19, label %8, !dbg !97, !llvm.loop !50

; <label>:19:                                     ; preds = %8
  %20 = trunc i64 %9 to i32, !dbg !86
  %21 = and i64 %15, 4294967295, !dbg !98
  %22 = getelementptr inbounds i8, i8* %1, i64 %21, !dbg !98
  store i8 0, i8* %22, align 1, !dbg !99, !tbaa !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  %23 = icmp eq i32 %20, 0, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %23, label %36, label %24, !dbg !103

; <label>:24:                                     ; preds = %19
  %25 = and i64 %9, 4294967295, !dbg !104
  br label %26, !dbg !104

; <label>:26:                                     ; preds = %26, %24
  %27 = phi i64 [ %25, %24 ], [ %34, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %33, %26 ]
  %29 = getelementptr inbounds i8, i8* %1, i64 %28, !dbg !104
  %30 = load i8, i8* %29, align 1, !dbg !104, !tbaa !33
  %31 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !106
  %32 = load i8, i8* %31, align 1, !dbg !106, !tbaa !33
  store i8 %32, i8* %29, align 1, !dbg !107, !tbaa !33
  store i8 %30, i8* %31, align 1, !dbg !108, !tbaa !33
  %33 = add nuw nsw i64 %28, 1, !dbg !109
  %34 = add nsw i64 %27, -1, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  %35 = icmp slt i64 %33, %34, !dbg !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  br i1 %35, label %26, label %36, !dbg !103, !llvm.loop !69

; <label>:36:                                     ; preds = %26, %19, %6
  %37 = phi i8* [ null, %6 ], [ %1, %19 ], [ %1, %26 ], !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  ret i8* %37, !dbg !115
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/utoa.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__utoa", scope: !1, file: !1, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !10, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !23, !24, !25, !26}
!15 = !DILocalVariable(name: "value", arg: 1, scope: !7, file: !1, line: 31, type: !12)
!16 = !DILocalVariable(name: "str", arg: 2, scope: !7, file: !1, line: 31, type: !10)
!17 = !DILocalVariable(name: "base", arg: 3, scope: !7, file: !1, line: 31, type: !13)
!18 = !DILocalVariable(name: "digits", scope: !7, file: !1, line: 36, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 296, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!21 = !{!22}
!22 = !DISubrange(count: 37)
!23 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 37, type: !13)
!24 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 37, type: !13)
!25 = !DILocalVariable(name: "remainder", scope: !7, file: !1, line: 38, type: !12)
!26 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 39, type: !11)
!27 = !DILocation(line: 31, column: 1, scope: !7)
!28 = !DILocation(line: 36, column: 14, scope: !7)
!29 = !DILocation(line: 42, column: 18, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 42, column: 7)
!31 = !DILocation(line: 44, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 43, column: 5)
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 45, column: 7, scope: !32)
!37 = !DILocation(line: 37, column: 7, scope: !7)
!38 = !DILocation(line: 50, column: 3, scope: !7)
!39 = !DILocation(line: 0, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 5)
!41 = !DILocation(line: 52, column: 25, scope: !40)
!42 = !DILocation(line: 38, column: 12, scope: !7)
!43 = !DILocation(line: 53, column: 18, scope: !40)
!44 = !DILocation(line: 53, column: 12, scope: !40)
!45 = !DILocation(line: 53, column: 7, scope: !40)
!46 = !DILocation(line: 53, column: 16, scope: !40)
!47 = !DILocation(line: 54, column: 21, scope: !40)
!48 = !DILocation(line: 55, column: 20, scope: !7)
!49 = !DILocation(line: 55, column: 5, scope: !40)
!50 = distinct !{!50, !38, !51}
!51 = !DILocation(line: 55, column: 24, scope: !7)
!52 = !DILocation(line: 56, column: 3, scope: !7)
!53 = !DILocation(line: 56, column: 10, scope: !7)
!54 = !DILocation(line: 37, column: 10, scope: !7)
!55 = !DILocation(line: 59, column: 8, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!57 = !DILocation(line: 59, column: 22, scope: !58)
!58 = distinct !DILexicalBlock(scope: !56, file: !1, line: 59, column: 3)
!59 = !DILocation(line: 59, column: 3, scope: !56)
!60 = !DILocation(line: 61, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 60, column: 5)
!62 = !DILocation(line: 39, column: 8, scope: !7)
!63 = !DILocation(line: 62, column: 16, scope: !61)
!64 = !DILocation(line: 62, column: 14, scope: !61)
!65 = !DILocation(line: 63, column: 14, scope: !61)
!66 = !DILocation(line: 59, column: 28, scope: !58)
!67 = !DILocation(line: 59, column: 33, scope: !58)
!68 = !DILocation(line: 59, column: 3, scope: !58)
!69 = distinct !{!69, !59, !70}
!70 = !DILocation(line: 64, column: 5, scope: !56)
!71 = !DILocation(line: 0, scope: !7)
!72 = !DILocation(line: 0, scope: !32)
!73 = !DILocation(line: 67, column: 1, scope: !7)
!74 = distinct !DISubprogram(name: "utoa", scope: !1, file: !1, line: 70, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !75)
!75 = !{!76, !77, !78}
!76 = !DILocalVariable(name: "value", arg: 1, scope: !74, file: !1, line: 70, type: !12)
!77 = !DILocalVariable(name: "str", arg: 2, scope: !74, file: !1, line: 70, type: !10)
!78 = !DILocalVariable(name: "base", arg: 3, scope: !74, file: !1, line: 70, type: !13)
!79 = !DILocation(line: 70, column: 1, scope: !74)
!80 = !DILocation(line: 31, column: 1, scope: !7, inlinedAt: !81)
!81 = distinct !DILocation(line: 75, column: 10, scope: !74)
!82 = !DILocation(line: 36, column: 14, scope: !7, inlinedAt: !81)
!83 = !DILocation(line: 42, column: 18, scope: !30, inlinedAt: !81)
!84 = !DILocation(line: 44, column: 14, scope: !32, inlinedAt: !81)
!85 = !DILocation(line: 45, column: 7, scope: !32, inlinedAt: !81)
!86 = !DILocation(line: 37, column: 7, scope: !7, inlinedAt: !81)
!87 = !DILocation(line: 50, column: 3, scope: !7, inlinedAt: !81)
!88 = !DILocation(line: 0, scope: !40, inlinedAt: !81)
!89 = !DILocation(line: 52, column: 25, scope: !40, inlinedAt: !81)
!90 = !DILocation(line: 38, column: 12, scope: !7, inlinedAt: !81)
!91 = !DILocation(line: 53, column: 18, scope: !40, inlinedAt: !81)
!92 = !DILocation(line: 53, column: 12, scope: !40, inlinedAt: !81)
!93 = !DILocation(line: 53, column: 7, scope: !40, inlinedAt: !81)
!94 = !DILocation(line: 53, column: 16, scope: !40, inlinedAt: !81)
!95 = !DILocation(line: 54, column: 21, scope: !40, inlinedAt: !81)
!96 = !DILocation(line: 55, column: 20, scope: !7, inlinedAt: !81)
!97 = !DILocation(line: 55, column: 5, scope: !40, inlinedAt: !81)
!98 = !DILocation(line: 56, column: 3, scope: !7, inlinedAt: !81)
!99 = !DILocation(line: 56, column: 10, scope: !7, inlinedAt: !81)
!100 = !DILocation(line: 37, column: 10, scope: !7, inlinedAt: !81)
!101 = !DILocation(line: 59, column: 8, scope: !56, inlinedAt: !81)
!102 = !DILocation(line: 59, column: 22, scope: !58, inlinedAt: !81)
!103 = !DILocation(line: 59, column: 3, scope: !56, inlinedAt: !81)
!104 = !DILocation(line: 61, column: 11, scope: !61, inlinedAt: !81)
!105 = !DILocation(line: 39, column: 8, scope: !7, inlinedAt: !81)
!106 = !DILocation(line: 62, column: 16, scope: !61, inlinedAt: !81)
!107 = !DILocation(line: 62, column: 14, scope: !61, inlinedAt: !81)
!108 = !DILocation(line: 63, column: 14, scope: !61, inlinedAt: !81)
!109 = !DILocation(line: 59, column: 28, scope: !58, inlinedAt: !81)
!110 = !DILocation(line: 59, column: 33, scope: !58, inlinedAt: !81)
!111 = !DILocation(line: 59, column: 3, scope: !58, inlinedAt: !81)
!112 = !DILocation(line: 0, scope: !7, inlinedAt: !81)
!113 = !DILocation(line: 0, scope: !74)
!114 = !DILocation(line: 67, column: 1, scope: !7, inlinedAt: !81)
!115 = !DILocation(line: 75, column: 3, scope: !74)
