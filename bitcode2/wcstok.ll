; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcstok.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcstok.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcstok(i32* noalias, i32* noalias nocapture readonly, i32** noalias nocapture) local_unnamed_addr #0 !dbg !9 {
  %4 = icmp eq i32* %0, null, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %4, label %5, label %8, !dbg !33

; <label>:5:                                      ; preds = %3
  %6 = load i32*, i32** %2, align 8, !dbg !34, !tbaa !35
  %7 = icmp eq i32* %6, null, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %7, label %43, label %8, !dbg !40

; <label>:8:                                      ; preds = %5, %3
  %9 = phi i32* [ %6, %5 ], [ %0, %3 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br label %10, !dbg !41

; <label>:10:                                     ; preds = %18, %8
  %11 = phi i32* [ %9, %8 ], [ %12, %18 ], !dbg !42
  %12 = getelementptr inbounds i32, i32* %11, i64 1, !dbg !43
  %13 = load i32, i32* %11, align 4, !dbg !44, !tbaa !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %14, !dbg !49

; <label>:14:                                     ; preds = %18, %10
  %15 = phi i32* [ %1, %10 ], [ %19, %18 ], !dbg !51
  %16 = load i32, i32* %15, align 4, !dbg !53, !tbaa !45
  %17 = icmp eq i32 %16, 0, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %17, label %21, label %18, !dbg !56

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i32, i32* %15, i64 1, !dbg !57
  %20 = icmp eq i32 %13, %16, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %20, label %10, label %14, !dbg !61, !llvm.loop !62

; <label>:21:                                     ; preds = %14
  %22 = icmp eq i32 %13, 0, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %22, label %40, label %23, !dbg !66

; <label>:23:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br label %24, !dbg !68

; <label>:24:                                     ; preds = %37, %23
  %25 = phi i32* [ %12, %23 ], [ %26, %37 ], !dbg !69
  %26 = getelementptr inbounds i32, i32* %25, i64 1, !dbg !73
  %27 = load i32, i32* %25, align 4, !dbg !74, !tbaa !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br label %28, !dbg !75

; <label>:28:                                     ; preds = %37, %24
  %29 = phi i32* [ %1, %24 ], [ %38, %37 ], !dbg !76
  %30 = load i32, i32* %29, align 4, !dbg !79, !tbaa !45
  %31 = icmp eq i32 %30, %27, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  br i1 %31, label %32, label %37, !dbg !81

; <label>:32:                                     ; preds = %28
  %33 = icmp eq i32 %27, 0, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %33, label %35, label %34, !dbg !85

; <label>:34:                                     ; preds = %32
  store i32 0, i32* %25, align 4, !dbg !86, !tbaa !45
  br label %35

; <label>:35:                                     ; preds = %32, %34
  %36 = phi i32* [ %26, %34 ], [ null, %32 ], !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %40, !dbg !87

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i32, i32* %29, i64 1, !dbg !88
  %39 = icmp eq i32 %30, 0, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !90
  br i1 %39, label %24, label %28, !dbg !90, !llvm.loop !91

; <label>:40:                                     ; preds = %21, %35
  %41 = phi i32* [ %36, %35 ], [ null, %21 ]
  %42 = phi i32* [ %11, %35 ], [ null, %21 ]
  store i32* %41, i32** %2, align 8, !dbg !94, !tbaa !35
  br label %43, !dbg !96

; <label>:43:                                     ; preds = %40, %5
  %44 = phi i32* [ null, %5 ], [ %42, %40 ], !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  ret i32* %44, !dbg !98
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
!41 = !DILocation(line: 110, column: 35, scope: !32)
!42 = !DILocation(line: 0, scope: !9)
!43 = !DILocation(line: 117, column: 8, scope: !9)
!44 = !DILocation(line: 117, column: 6, scope: !9)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !37, i64 0}
!47 = !DILocation(line: 106, column: 15, scope: !9)
!48 = !DILocation(line: 105, column: 26, scope: !9)
!49 = !DILocation(line: 118, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !9, file: !1, line: 118, column: 2)
!51 = !DILocation(line: 0, scope: !52)
!52 = distinct !DILexicalBlock(scope: !50, file: !1, line: 118, column: 2)
!53 = !DILocation(line: 118, column: 28, scope: !52)
!54 = !DILocation(line: 106, column: 18, scope: !9)
!55 = !DILocation(line: 118, column: 38, scope: !52)
!56 = !DILocation(line: 118, column: 2, scope: !50)
!57 = !DILocation(line: 118, column: 34, scope: !52)
!58 = !DILocation(line: 119, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 119, column: 7)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 118, column: 49)
!61 = !DILocation(line: 119, column: 7, scope: !60)
!62 = distinct !{!62, !56, !63}
!63 = !DILocation(line: 120, column: 2, scope: !50)
!64 = !DILocation(line: 122, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !9, file: !1, line: 122, column: 6)
!66 = !DILocation(line: 122, column: 6, scope: !9)
!67 = !DILocation(line: 107, column: 11, scope: !9)
!68 = !DILocation(line: 132, column: 2, scope: !9)
!69 = !DILocation(line: 0, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 132, column: 11)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 132, column: 2)
!72 = distinct !DILexicalBlock(scope: !9, file: !1, line: 132, column: 2)
!73 = !DILocation(line: 133, column: 9, scope: !70)
!74 = !DILocation(line: 133, column: 7, scope: !70)
!75 = !DILocation(line: 135, column: 3, scope: !70)
!76 = !DILocation(line: 0, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 136, column: 8)
!78 = distinct !DILexicalBlock(scope: !70, file: !1, line: 135, column: 6)
!79 = !DILocation(line: 136, column: 14, scope: !77)
!80 = !DILocation(line: 136, column: 24, scope: !77)
!81 = !DILocation(line: 136, column: 8, scope: !78)
!82 = !DILocation(line: 137, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 137, column: 9)
!84 = distinct !DILexicalBlock(scope: !77, file: !1, line: 136, column: 30)
!85 = !DILocation(line: 137, column: 9, scope: !84)
!86 = !DILocation(line: 140, column: 12, scope: !83)
!87 = !DILocation(line: 142, column: 5, scope: !84)
!88 = !DILocation(line: 136, column: 20, scope: !77)
!89 = !DILocation(line: 144, column: 15, scope: !70)
!90 = !DILocation(line: 144, column: 3, scope: !78)
!91 = distinct !{!91, !92, !93}
!92 = !DILocation(line: 132, column: 2, scope: !72)
!93 = !DILocation(line: 145, column: 2, scope: !72)
!94 = !DILocation(line: 0, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !1, line: 122, column: 18)
!96 = !DILocation(line: 0, scope: !32)
!97 = !DILocation(line: 0, scope: !84)
!98 = !DILocation(line: 147, column: 1, scope: !9)
