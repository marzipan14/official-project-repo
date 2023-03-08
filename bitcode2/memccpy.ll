; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memccpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memccpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memccpy(i8* noalias, i8* noalias, i32, i64) local_unnamed_addr #0 !dbg !14 {
  %5 = zext i32 %2 to i64, !dbg !52
  %6 = icmp ult i64 %3, 8, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %6, label %55, label %7, !dbg !54

; <label>:7:                                      ; preds = %4
  %8 = ptrtoint i8* %1 to i64, !dbg !55
  %9 = ptrtoint i8* %0 to i64, !dbg !55
  %10 = or i64 %8, %9, !dbg !55
  %11 = and i64 %10, 7, !dbg !55
  %12 = icmp eq i64 %11, 0, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %12, label %13, label %55, !dbg !56

; <label>:13:                                     ; preds = %7
  %14 = bitcast i8* %0 to i64*, !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %15 = shl i64 %5, 56
  %16 = ashr exact i64 %15, 56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %17 = ashr exact i64 %15, 48, !dbg !67
  %18 = add nsw i64 %17, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %19 = shl nsw i64 %18, 8, !dbg !67
  %20 = add nsw i64 %19, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %21 = shl nsw i64 %20, 8, !dbg !67
  %22 = add nsw i64 %21, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %23 = shl nsw i64 %22, 8, !dbg !67
  %24 = add i64 %23, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %25 = shl i64 %24, 8, !dbg !67
  %26 = add i64 %25, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %27 = shl i64 %26, 8, !dbg !67
  %28 = add i64 %27, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %29 = shl i64 %28, 8, !dbg !67
  %30 = add i64 %29, %16, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %31 = bitcast i8* %1 to i64*, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br label %32, !dbg !71

; <label>:32:                                     ; preds = %13, %44
  %33 = phi i64* [ %46, %44 ], [ %14, %13 ], !dbg !72
  %34 = phi i64* [ %45, %44 ], [ %31, %13 ], !dbg !73
  %35 = phi i64 [ %47, %44 ], [ %3, %13 ]
  %36 = load i64, i64* %34, align 8, !dbg !71, !tbaa !74
  %37 = xor i64 %36, %30, !dbg !79
  %38 = add i64 %37, -72340172838076673, !dbg !80
  %39 = and i64 %37, -9187201950435737472, !dbg !80
  %40 = xor i64 %39, -9187201950435737472, !dbg !80
  %41 = and i64 %40, %38, !dbg !80
  %42 = icmp eq i64 %41, 0, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %42, label %44, label %43, !dbg !82

; <label>:43:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %49

; <label>:44:                                     ; preds = %32
  %45 = getelementptr inbounds i64, i64* %34, i64 1, !dbg !84
  %46 = getelementptr inbounds i64, i64* %33, i64 1, !dbg !85
  store i64 %36, i64* %33, align 8, !dbg !86, !tbaa !74
  %47 = add i64 %35, -8, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  %48 = icmp ugt i64 %47, 7, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %48, label %32, label %49, !llvm.loop !90

; <label>:49:                                     ; preds = %44, %43
  %50 = phi i64* [ %33, %43 ], [ %46, %44 ], !dbg !72
  %51 = phi i64* [ %34, %43 ], [ %45, %44 ], !dbg !73
  %52 = phi i64 [ %35, %43 ], [ %47, %44 ]
  %53 = bitcast i64* %50 to i8*, !dbg !91
  %54 = bitcast i64* %51 to i8*, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br label %55, !dbg !93

; <label>:55:                                     ; preds = %7, %49, %4
  %56 = phi i8* [ %0, %4 ], [ %0, %7 ], [ %53, %49 ], !dbg !94
  %57 = phi i8* [ %1, %4 ], [ %1, %7 ], [ %54, %49 ], !dbg !94
  %58 = phi i64 [ %3, %4 ], [ %3, %7 ], [ %52, %49 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %59 = shl i32 %2, 24
  %60 = ashr exact i32 %59, 24
  br label %61, !dbg !95

; <label>:61:                                     ; preds = %66, %55
  %62 = phi i8* [ %56, %55 ], [ %70, %66 ], !dbg !96
  %63 = phi i8* [ %57, %55 ], [ %68, %66 ], !dbg !96
  %64 = phi i64 [ %58, %55 ], [ %67, %66 ]
  %65 = icmp eq i64 %64, 0, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  br i1 %65, label %74, label %66, !dbg !95

; <label>:66:                                     ; preds = %61
  %67 = add i64 %64, -1, !dbg !99
  %68 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !100
  %69 = load i8, i8* %63, align 1, !dbg !101, !tbaa !102
  %70 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !103
  store i8 %69, i8* %62, align 1, !dbg !104, !tbaa !102
  %71 = sext i8 %69 to i32, !dbg !105
  %72 = icmp eq i32 %60, %71, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  br i1 %72, label %73, label %61, !dbg !107, !llvm.loop !108

; <label>:73:                                     ; preds = %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !110
  br label %74, !dbg !110

; <label>:74:                                     ; preds = %61, %73
  %75 = phi i8* [ %70, %73 ], [ null, %61 ], !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  ret i8* %75, !dbg !113
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memccpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!7 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "memccpy", scope: !1, file: !1, line: 66, type: !15, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!15 = !DISubroutineType(types: !16)
!16 = !{!4, !17, !18, !21, !22}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!18 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 40, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !25, line: 129, baseType: !7)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !36, !37, !40, !41, !45, !46}
!27 = !DILocalVariable(name: "dst0", arg: 1, scope: !14, file: !1, line: 66, type: !17)
!28 = !DILocalVariable(name: "src0", arg: 2, scope: !14, file: !1, line: 66, type: !18)
!29 = !DILocalVariable(name: "endchar0", arg: 3, scope: !14, file: !1, line: 66, type: !21)
!30 = !DILocalVariable(name: "len0", arg: 4, scope: !14, file: !1, line: 66, type: !22)
!31 = !DILocalVariable(name: "ptr", scope: !14, file: !1, line: 90, type: !4)
!32 = !DILocalVariable(name: "dst", scope: !14, file: !1, line: 91, type: !8)
!33 = !DILocalVariable(name: "src", scope: !14, file: !1, line: 92, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!36 = !DILocalVariable(name: "aligned_dst", scope: !14, file: !1, line: 93, type: !6)
!37 = !DILocalVariable(name: "aligned_src", scope: !14, file: !1, line: 94, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!40 = !DILocalVariable(name: "endchar", scope: !14, file: !1, line: 95, type: !9)
!41 = !DILocalVariable(name: "i", scope: !42, file: !1, line: 101, type: !44)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 100, column: 5)
!43 = distinct !DILexicalBlock(scope: !14, file: !1, line: 99, column: 7)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "mask", scope: !42, file: !1, line: 102, type: !7)
!46 = !DILocalVariable(name: "buffer", scope: !47, file: !1, line: 120, type: !7)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 119, column: 9)
!48 = !DILocation(line: 66, column: 1, scope: !14)
!49 = !DILocation(line: 90, column: 8, scope: !14)
!50 = !DILocation(line: 91, column: 9, scope: !14)
!51 = !DILocation(line: 92, column: 16, scope: !14)
!52 = !DILocation(line: 95, column: 18, scope: !14)
!53 = !DILocation(line: 99, column: 8, scope: !43)
!54 = !DILocation(line: 99, column: 24, scope: !43)
!55 = !DILocation(line: 99, column: 28, scope: !43)
!56 = !DILocation(line: 99, column: 7, scope: !14)
!57 = !DILocation(line: 102, column: 21, scope: !42)
!58 = !DILocation(line: 104, column: 21, scope: !42)
!59 = !DILocation(line: 93, column: 9, scope: !14)
!60 = !DILocation(line: 94, column: 16, scope: !14)
!61 = !DILocation(line: 101, column: 20, scope: !42)
!62 = !DILocation(line: 113, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !42, file: !1, line: 113, column: 7)
!64 = !DILocation(line: 113, column: 7, scope: !63)
!65 = !DILocation(line: 113, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 113, column: 7)
!67 = !DILocation(line: 114, column: 22, scope: !66)
!68 = !DILocation(line: 114, column: 28, scope: !66)
!69 = !DILocation(line: 105, column: 21, scope: !42)
!70 = !DILocation(line: 118, column: 7, scope: !42)
!71 = !DILocation(line: 120, column: 50, scope: !47)
!72 = !DILocation(line: 104, column: 19, scope: !42)
!73 = !DILocation(line: 105, column: 19, scope: !42)
!74 = !{!75, !75, i64 0}
!75 = !{!"long", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 120, column: 25, scope: !47)
!79 = !DILocation(line: 121, column: 18, scope: !47)
!80 = !DILocation(line: 122, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !47, file: !1, line: 122, column: 15)
!82 = !DILocation(line: 122, column: 15, scope: !47)
!83 = !DILocation(line: 123, column: 13, scope: !81)
!84 = !DILocation(line: 124, column: 40, scope: !47)
!85 = !DILocation(line: 124, column: 23, scope: !47)
!86 = !DILocation(line: 124, column: 26, scope: !47)
!87 = !DILocation(line: 125, column: 16, scope: !47)
!88 = !DILocation(line: 126, column: 9, scope: !42)
!89 = !DILocation(line: 118, column: 19, scope: !42)
!90 = distinct !{!90, !70, !88}
!91 = !DILocation(line: 129, column: 13, scope: !42)
!92 = !DILocation(line: 130, column: 13, scope: !42)
!93 = !DILocation(line: 131, column: 5, scope: !42)
!94 = !DILocation(line: 0, scope: !42)
!95 = !DILocation(line: 133, column: 3, scope: !14)
!96 = !DILocation(line: 0, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 135, column: 11)
!98 = distinct !DILexicalBlock(scope: !14, file: !1, line: 134, column: 5)
!99 = !DILocation(line: 133, column: 14, scope: !14)
!100 = !DILocation(line: 135, column: 25, scope: !97)
!101 = !DILocation(line: 135, column: 21, scope: !97)
!102 = !{!76, !76, i64 0}
!103 = !DILocation(line: 135, column: 16, scope: !97)
!104 = !DILocation(line: 135, column: 19, scope: !97)
!105 = !DILocation(line: 135, column: 11, scope: !97)
!106 = !DILocation(line: 135, column: 29, scope: !97)
!107 = !DILocation(line: 135, column: 11, scope: !98)
!108 = distinct !{!108, !95, !109}
!109 = !DILocation(line: 140, column: 5, scope: !14)
!110 = !DILocation(line: 138, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !97, file: !1, line: 136, column: 9)
!112 = !DILocation(line: 0, scope: !14)
!113 = !DILocation(line: 142, column: 3, scope: !14)
