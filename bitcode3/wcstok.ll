; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcstok.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcstok.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32* @wcstok(i32* noalias, i32* noalias nocapture readonly, i32** noalias nocapture) local_unnamed_addr #0 !dbg !9 {
  %4 = icmp eq i32* %0, null, !dbg !31
  br i1 %4, label %5, label %8, !dbg !33

; <label>:5:                                      ; preds = %3
  %6 = load i32*, i32** %2, align 8, !dbg !34, !tbaa !35
  %7 = icmp eq i32* %6, null, !dbg !39
  br i1 %7, label %40, label %8, !dbg !40

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i32* [ %0, %3 ], [ %6, %5 ]
  br label %10, !dbg !41

; <label>:10:                                     ; preds = %18, %8
  %11 = phi i32* [ %9, %8 ], [ %12, %18 ], !dbg !42
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !41
  %13 = load i32, i32* %11, align 4, !dbg !43, !tbaa !44
  br label %14, !dbg !48

; <label>:14:                                     ; preds = %18, %10
  %15 = phi i32* [ %1, %10 ], [ %19, %18 ], !dbg !50
  %16 = load i32, i32* %15, align 4, !dbg !52, !tbaa !44
  %17 = icmp eq i32 %16, 0, !dbg !54
  br i1 %17, label %21, label %18, !dbg !55

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !56
  %20 = icmp eq i32 %13, %16, !dbg !57
  br i1 %20, label %10, label %14, !dbg !60, !llvm.loop !61

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i32 %13, 0, !dbg !63
  br i1 %22, label %37, label %23, !dbg !65

; <label>:23:                                     ; preds = %34, %21
  %24 = phi i32* [ %12, %21 ], [ %25, %34 ], !dbg !66
  %25 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !70
  %26 = load i32, i32* %24, align 4, !dbg !71, !tbaa !44
  br label %27, !dbg !72

; <label>:27:                                     ; preds = %34, %23
  %28 = phi i32* [ %1, %23 ], [ %35, %34 ], !dbg !73
  %29 = load i32, i32* %28, align 4, !dbg !76, !tbaa !44
  %30 = icmp eq i32 %29, %26, !dbg !77
  br i1 %30, label %31, label %34, !dbg !78

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i32 %26, 0, !dbg !79
  br i1 %32, label %37, label %33, !dbg !82

; <label>:33:                                     ; preds = %31
  store i32 0, i32* %24, align 4, !dbg !83, !tbaa !44
  br label %37

; <label>:34:                                     ; preds = %27
  %35 = getelementptr inbounds i32, i32* %28, i64 1, !dbg !84
  %36 = icmp eq i32 %29, 0, !dbg !85
  br i1 %36, label %23, label %27, !dbg !86, !llvm.loop !87

; <label>:37:                                     ; preds = %33, %31, %21
  %38 = phi i32* [ null, %21 ], [ %25, %33 ], [ null, %31 ]
  %39 = phi i32* [ null, %21 ], [ %11, %33 ], [ %11, %31 ]
  store i32* %38, i32** %2, align 8, !dbg !90, !tbaa !35
  br label %40, !dbg !92

; <label>:40:                                     ; preds = %37, %5
  %41 = phi i32* [ null, %5 ], [ %39, %37 ], !dbg !93
  ret i32* %41, !dbg !92
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcstok.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "wcstok", scope: !1, file: !1, line: 100, type: !10, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !16, !17, !20}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!20 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !1, line: 100, type: !16)
!24 = !DILocalVariable(name: "delim", arg: 2, scope: !9, file: !1, line: 100, type: !17)
!25 = !DILocalVariable(name: "lasts", arg: 3, scope: !9, file: !1, line: 100, type: !20)
!26 = !DILocalVariable(name: "spanp", scope: !9, file: !1, line: 105, type: !18)
!27 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 106, type: !15)
!28 = !DILocalVariable(name: "sc", scope: !9, file: !1, line: 106, type: !15)
!29 = !DILocalVariable(name: "tok", scope: !9, file: !1, line: 107, type: !12)
!30 = !DILocation(line: 100, column: 1, scope: !9)
!31 = !DILocation(line: 110, column: 8, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 110, column: 6)
!33 = !DILocation(line: 110, column: 16, scope: !32)
!34 = !DILocation(line: 110, column: 24, scope: !32)
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 110, column: 32, scope: !32)
!40 = !DILocation(line: 110, column: 6, scope: !9)
!41 = !DILocation(line: 117, column: 8, scope: !9)
!42 = !DILocation(line: 0, scope: !9)
!43 = !DILocation(line: 117, column: 6, scope: !9)
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !37, i64 0}
!46 = !DILocation(line: 106, column: 15, scope: !9)
!47 = !DILocation(line: 105, column: 26, scope: !9)
!48 = !DILocation(line: 118, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !9, file: !1, line: 118, column: 2)
!50 = !DILocation(line: 0, scope: !51)
!51 = distinct !DILexicalBlock(scope: !49, file: !1, line: 118, column: 2)
!52 = !DILocation(line: 118, column: 28, scope: !51)
!53 = !DILocation(line: 106, column: 18, scope: !9)
!54 = !DILocation(line: 118, column: 38, scope: !51)
!55 = !DILocation(line: 118, column: 2, scope: !49)
!56 = !DILocation(line: 118, column: 34, scope: !51)
!57 = !DILocation(line: 119, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 119, column: 7)
!59 = distinct !DILexicalBlock(scope: !51, file: !1, line: 118, column: 49)
!60 = !DILocation(line: 119, column: 7, scope: !59)
!61 = distinct !{!61, !55, !62}
!62 = !DILocation(line: 120, column: 2, scope: !49)
!63 = !DILocation(line: 122, column: 8, scope: !64)
!64 = distinct !DILexicalBlock(scope: !9, file: !1, line: 122, column: 6)
!65 = !DILocation(line: 122, column: 6, scope: !9)
!66 = !DILocation(line: 0, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 132, column: 11)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 132, column: 2)
!69 = distinct !DILexicalBlock(scope: !9, file: !1, line: 132, column: 2)
!70 = !DILocation(line: 133, column: 9, scope: !67)
!71 = !DILocation(line: 133, column: 7, scope: !67)
!72 = !DILocation(line: 135, column: 3, scope: !67)
!73 = !DILocation(line: 0, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 136, column: 8)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 135, column: 6)
!76 = !DILocation(line: 136, column: 14, scope: !74)
!77 = !DILocation(line: 136, column: 24, scope: !74)
!78 = !DILocation(line: 136, column: 8, scope: !75)
!79 = !DILocation(line: 137, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 137, column: 9)
!81 = distinct !DILexicalBlock(scope: !74, file: !1, line: 136, column: 30)
!82 = !DILocation(line: 137, column: 9, scope: !81)
!83 = !DILocation(line: 140, column: 12, scope: !80)
!84 = !DILocation(line: 136, column: 20, scope: !74)
!85 = !DILocation(line: 144, column: 15, scope: !67)
!86 = !DILocation(line: 144, column: 3, scope: !75)
!87 = distinct !{!87, !88, !89}
!88 = !DILocation(line: 132, column: 2, scope: !69)
!89 = !DILocation(line: 145, column: 2, scope: !69)
!90 = !DILocation(line: 0, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !1, line: 122, column: 18)
!92 = !DILocation(line: 147, column: 1, scope: !9)
!93 = !DILocation(line: 0, scope: !81)
