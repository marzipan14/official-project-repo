; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/utoa.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/utoa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__utoa.digits = private unnamed_addr constant [37 x i8] c"0123456789abcdefghijklmnopqrstuvwxyz\00", align 16

; Function Attrs: noredzone nounwind
define dso_local i8* @__utoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !7 {
  %4 = add i32 %2, -2, !dbg !29
  %5 = icmp ugt i32 %4, 34, !dbg !29
  br i1 %5, label %6, label %7, !dbg !29

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !31, !tbaa !33
  br label %35, !dbg !36

; <label>:7:                                      ; preds = %3, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %3 ], !dbg !37
  %9 = phi i32 [ %16, %7 ], [ %0, %3 ]
  %10 = urem i32 %9, %2, !dbg !40
  %11 = zext i32 %10 to i64, !dbg !42
  %12 = getelementptr inbounds [37 x i8], [37 x i8]* @__utoa.digits, i64 0, i64 %11, !dbg !42
  %13 = load i8, i8* %12, align 1, !dbg !42, !tbaa !33
  %14 = add nuw i64 %8, 1, !dbg !43
  %15 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !44
  store i8 %13, i8* %15, align 1, !dbg !45, !tbaa !33
  %16 = udiv i32 %9, %2, !dbg !46
  %17 = icmp ult i32 %9, %2, !dbg !47
  br i1 %17, label %18, label %7, !dbg !48, !llvm.loop !49

; <label>:18:                                     ; preds = %7
  %19 = trunc i64 %8 to i32, !dbg !39
  %20 = and i64 %14, 4294967295, !dbg !52
  %21 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !52
  store i8 0, i8* %21, align 1, !dbg !53, !tbaa !33
  %22 = icmp eq i32 %19, 0, !dbg !55
  br i1 %22, label %35, label %23, !dbg !58

; <label>:23:                                     ; preds = %18
  %24 = and i64 %8, 4294967295, !dbg !59
  br label %25, !dbg !59

; <label>:25:                                     ; preds = %23, %25
  %26 = phi i64 [ %24, %23 ], [ %33, %25 ]
  %27 = phi i64 [ 0, %23 ], [ %32, %25 ]
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !59
  %29 = load i8, i8* %28, align 1, !dbg !59, !tbaa !33
  %30 = getelementptr inbounds i8, i8* %1, i64 %26, !dbg !62
  %31 = load i8, i8* %30, align 1, !dbg !62, !tbaa !33
  store i8 %31, i8* %28, align 1, !dbg !63, !tbaa !33
  store i8 %29, i8* %30, align 1, !dbg !64, !tbaa !33
  %32 = add nuw nsw i64 %27, 1, !dbg !65
  %33 = add nsw i64 %26, -1, !dbg !66
  %34 = icmp slt i64 %32, %33, !dbg !55
  br i1 %34, label %25, label %35, !dbg !58, !llvm.loop !67

; <label>:35:                                     ; preds = %25, %18, %6
  %36 = phi i8* [ null, %6 ], [ %1, %18 ], [ %1, %25 ], !dbg !69
  ret i8* %36, !dbg !70
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local i8* @utoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !71 {
  %4 = add i32 %2, -2, !dbg !80
  %5 = icmp ugt i32 %4, 34, !dbg !80
  br i1 %5, label %6, label %7, !dbg !80

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !81, !tbaa !33
  br label %35, !dbg !82

; <label>:7:                                      ; preds = %3, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %3 ], !dbg !83
  %9 = phi i32 [ %16, %7 ], [ %0, %3 ]
  %10 = urem i32 %9, %2, !dbg !85
  %11 = zext i32 %10 to i64, !dbg !87
  %12 = getelementptr inbounds [37 x i8], [37 x i8]* @__utoa.digits, i64 0, i64 %11, !dbg !87
  %13 = load i8, i8* %12, align 1, !dbg !87, !tbaa !33
  %14 = add nuw i64 %8, 1, !dbg !88
  %15 = getelementptr inbounds i8, i8* %1, i64 %8, !dbg !89
  store i8 %13, i8* %15, align 1, !dbg !90, !tbaa !33
  %16 = udiv i32 %9, %2, !dbg !91
  %17 = icmp ult i32 %9, %2, !dbg !92
  br i1 %17, label %18, label %7, !dbg !93, !llvm.loop !49

; <label>:18:                                     ; preds = %7
  %19 = trunc i64 %8 to i32, !dbg !84
  %20 = and i64 %14, 4294967295, !dbg !94
  %21 = getelementptr inbounds i8, i8* %1, i64 %20, !dbg !94
  store i8 0, i8* %21, align 1, !dbg !95, !tbaa !33
  %22 = icmp eq i32 %19, 0, !dbg !97
  br i1 %22, label %35, label %23, !dbg !98

; <label>:23:                                     ; preds = %18
  %24 = and i64 %8, 4294967295, !dbg !99
  br label %25, !dbg !99

; <label>:25:                                     ; preds = %25, %23
  %26 = phi i64 [ %24, %23 ], [ %33, %25 ]
  %27 = phi i64 [ 0, %23 ], [ %32, %25 ]
  %28 = getelementptr inbounds i8, i8* %1, i64 %27, !dbg !99
  %29 = load i8, i8* %28, align 1, !dbg !99, !tbaa !33
  %30 = getelementptr inbounds i8, i8* %1, i64 %26, !dbg !101
  %31 = load i8, i8* %30, align 1, !dbg !101, !tbaa !33
  store i8 %31, i8* %28, align 1, !dbg !102, !tbaa !33
  store i8 %29, i8* %30, align 1, !dbg !103, !tbaa !33
  %32 = add nuw nsw i64 %27, 1, !dbg !104
  %33 = add nsw i64 %26, -1, !dbg !105
  %34 = icmp slt i64 %32, %33, !dbg !97
  br i1 %34, label %25, label %35, !dbg !98, !llvm.loop !67

; <label>:35:                                     ; preds = %25, %6, %18
  %36 = phi i8* [ null, %6 ], [ %1, %18 ], [ %1, %25 ], !dbg !106
  ret i8* %36, !dbg !107
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
!37 = !DILocation(line: 0, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 5)
!39 = !DILocation(line: 37, column: 7, scope: !7)
!40 = !DILocation(line: 52, column: 25, scope: !38)
!41 = !DILocation(line: 38, column: 12, scope: !7)
!42 = !DILocation(line: 53, column: 18, scope: !38)
!43 = !DILocation(line: 53, column: 12, scope: !38)
!44 = !DILocation(line: 53, column: 7, scope: !38)
!45 = !DILocation(line: 53, column: 16, scope: !38)
!46 = !DILocation(line: 54, column: 21, scope: !38)
!47 = !DILocation(line: 55, column: 20, scope: !7)
!48 = !DILocation(line: 55, column: 5, scope: !38)
!49 = distinct !{!49, !50, !51}
!50 = !DILocation(line: 50, column: 3, scope: !7)
!51 = !DILocation(line: 55, column: 24, scope: !7)
!52 = !DILocation(line: 56, column: 3, scope: !7)
!53 = !DILocation(line: 56, column: 10, scope: !7)
!54 = !DILocation(line: 37, column: 10, scope: !7)
!55 = !DILocation(line: 59, column: 22, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 59, column: 3)
!57 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!58 = !DILocation(line: 59, column: 3, scope: !57)
!59 = !DILocation(line: 61, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 60, column: 5)
!61 = !DILocation(line: 39, column: 8, scope: !7)
!62 = !DILocation(line: 62, column: 16, scope: !60)
!63 = !DILocation(line: 62, column: 14, scope: !60)
!64 = !DILocation(line: 63, column: 14, scope: !60)
!65 = !DILocation(line: 59, column: 28, scope: !56)
!66 = !DILocation(line: 59, column: 33, scope: !56)
!67 = distinct !{!67, !58, !68}
!68 = !DILocation(line: 64, column: 5, scope: !57)
!69 = !DILocation(line: 0, scope: !7)
!70 = !DILocation(line: 67, column: 1, scope: !7)
!71 = distinct !DISubprogram(name: "utoa", scope: !1, file: !1, line: 70, type: !8, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !72)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(name: "value", arg: 1, scope: !71, file: !1, line: 70, type: !12)
!74 = !DILocalVariable(name: "str", arg: 2, scope: !71, file: !1, line: 70, type: !10)
!75 = !DILocalVariable(name: "base", arg: 3, scope: !71, file: !1, line: 70, type: !13)
!76 = !DILocation(line: 70, column: 1, scope: !71)
!77 = !DILocation(line: 31, column: 1, scope: !7, inlinedAt: !78)
!78 = distinct !DILocation(line: 75, column: 10, scope: !71)
!79 = !DILocation(line: 36, column: 14, scope: !7, inlinedAt: !78)
!80 = !DILocation(line: 42, column: 18, scope: !30, inlinedAt: !78)
!81 = !DILocation(line: 44, column: 14, scope: !32, inlinedAt: !78)
!82 = !DILocation(line: 45, column: 7, scope: !32, inlinedAt: !78)
!83 = !DILocation(line: 0, scope: !38, inlinedAt: !78)
!84 = !DILocation(line: 37, column: 7, scope: !7, inlinedAt: !78)
!85 = !DILocation(line: 52, column: 25, scope: !38, inlinedAt: !78)
!86 = !DILocation(line: 38, column: 12, scope: !7, inlinedAt: !78)
!87 = !DILocation(line: 53, column: 18, scope: !38, inlinedAt: !78)
!88 = !DILocation(line: 53, column: 12, scope: !38, inlinedAt: !78)
!89 = !DILocation(line: 53, column: 7, scope: !38, inlinedAt: !78)
!90 = !DILocation(line: 53, column: 16, scope: !38, inlinedAt: !78)
!91 = !DILocation(line: 54, column: 21, scope: !38, inlinedAt: !78)
!92 = !DILocation(line: 55, column: 20, scope: !7, inlinedAt: !78)
!93 = !DILocation(line: 55, column: 5, scope: !38, inlinedAt: !78)
!94 = !DILocation(line: 56, column: 3, scope: !7, inlinedAt: !78)
!95 = !DILocation(line: 56, column: 10, scope: !7, inlinedAt: !78)
!96 = !DILocation(line: 37, column: 10, scope: !7, inlinedAt: !78)
!97 = !DILocation(line: 59, column: 22, scope: !56, inlinedAt: !78)
!98 = !DILocation(line: 59, column: 3, scope: !57, inlinedAt: !78)
!99 = !DILocation(line: 61, column: 11, scope: !60, inlinedAt: !78)
!100 = !DILocation(line: 39, column: 8, scope: !7, inlinedAt: !78)
!101 = !DILocation(line: 62, column: 16, scope: !60, inlinedAt: !78)
!102 = !DILocation(line: 62, column: 14, scope: !60, inlinedAt: !78)
!103 = !DILocation(line: 63, column: 14, scope: !60, inlinedAt: !78)
!104 = !DILocation(line: 59, column: 28, scope: !56, inlinedAt: !78)
!105 = !DILocation(line: 59, column: 33, scope: !56, inlinedAt: !78)
!106 = !DILocation(line: 0, scope: !7, inlinedAt: !78)
!107 = !DILocation(line: 75, column: 3, scope: !71)
