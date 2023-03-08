; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memccpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memccpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memccpy(i8* noalias, i8* noalias, i32, i64) local_unnamed_addr #0 !dbg !14 {
  %5 = zext i32 %2 to i64, !dbg !52
  %6 = icmp ult i64 %3, 8, !dbg !53
  br i1 %6, label %54, label %7, !dbg !54

; <label>:7:                                      ; preds = %4
  %8 = ptrtoint i8* %1 to i64, !dbg !55
  %9 = ptrtoint i8* %0 to i64, !dbg !55
  %10 = or i64 %8, %9, !dbg !55
  %11 = and i64 %10, 7, !dbg !55
  %12 = icmp eq i64 %11, 0, !dbg !55
  br i1 %12, label %13, label %54, !dbg !56

; <label>:13:                                     ; preds = %7
  %14 = bitcast i8* %0 to i64*, !dbg !58
  %15 = shl i64 %5, 56
  %16 = ashr exact i64 %15, 56
  %17 = ashr exact i64 %15, 48, !dbg !62
  %18 = add nsw i64 %17, %16, !dbg !65
  %19 = shl nsw i64 %18, 8, !dbg !62
  %20 = add nsw i64 %19, %16, !dbg !65
  %21 = shl nsw i64 %20, 8, !dbg !62
  %22 = add nsw i64 %21, %16, !dbg !65
  %23 = shl nsw i64 %22, 8, !dbg !62
  %24 = add i64 %23, %16, !dbg !65
  %25 = shl i64 %24, 8, !dbg !62
  %26 = add i64 %25, %16, !dbg !65
  %27 = shl i64 %26, 8, !dbg !62
  %28 = add i64 %27, %16, !dbg !65
  %29 = shl i64 %28, 8, !dbg !62
  %30 = add i64 %29, %16, !dbg !65
  %31 = bitcast i8* %1 to i64*, !dbg !66
  br label %32, !dbg !67

; <label>:32:                                     ; preds = %13, %43
  %33 = phi i64* [ %45, %43 ], [ %14, %13 ], !dbg !68
  %34 = phi i64* [ %44, %43 ], [ %31, %13 ], !dbg !69
  %35 = phi i64 [ %46, %43 ], [ %3, %13 ]
  %36 = load i64, i64* %34, align 8, !dbg !67, !tbaa !70
  %37 = xor i64 %36, %30, !dbg !75
  %38 = add i64 %37, -72340172838076673, !dbg !76
  %39 = and i64 %37, -9187201950435737472, !dbg !76
  %40 = xor i64 %39, -9187201950435737472, !dbg !76
  %41 = and i64 %40, %38, !dbg !76
  %42 = icmp eq i64 %41, 0, !dbg !76
  br i1 %42, label %43, label %48, !dbg !78

; <label>:43:                                     ; preds = %32
  %44 = getelementptr inbounds i64, i64* %34, i64 1, !dbg !79
  %45 = getelementptr inbounds i64, i64* %33, i64 1, !dbg !80
  store i64 %36, i64* %33, align 8, !dbg !81, !tbaa !70
  %46 = add i64 %35, -8, !dbg !82
  %47 = icmp ugt i64 %46, 7, !dbg !83
  br i1 %47, label %32, label %48, !llvm.loop !84

; <label>:48:                                     ; preds = %32, %43
  %49 = phi i64* [ %45, %43 ], [ %33, %32 ], !dbg !68
  %50 = phi i64* [ %44, %43 ], [ %34, %32 ], !dbg !69
  %51 = phi i64 [ %46, %43 ], [ %35, %32 ]
  %52 = bitcast i64* %49 to i8*, !dbg !87
  %53 = bitcast i64* %50 to i8*, !dbg !88
  br label %54, !dbg !89

; <label>:54:                                     ; preds = %7, %48, %4
  %55 = phi i8* [ %0, %4 ], [ %0, %7 ], [ %52, %48 ], !dbg !90
  %56 = phi i8* [ %1, %4 ], [ %1, %7 ], [ %53, %48 ], !dbg !90
  %57 = phi i64 [ %3, %4 ], [ %3, %7 ], [ %51, %48 ]
  %58 = shl i32 %2, 24
  %59 = ashr exact i32 %58, 24
  br label %60, !dbg !91

; <label>:60:                                     ; preds = %65, %54
  %61 = phi i8* [ %55, %54 ], [ %69, %65 ], !dbg !92
  %62 = phi i8* [ %56, %54 ], [ %67, %65 ], !dbg !92
  %63 = phi i64 [ %57, %54 ], [ %66, %65 ]
  %64 = icmp eq i64 %63, 0, !dbg !91
  br i1 %64, label %72, label %65, !dbg !91

; <label>:65:                                     ; preds = %60
  %66 = add i64 %63, -1, !dbg !95
  %67 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !96
  %68 = load i8, i8* %62, align 1, !dbg !97, !tbaa !98
  %69 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !99
  store i8 %68, i8* %61, align 1, !dbg !100, !tbaa !98
  %70 = sext i8 %68 to i32, !dbg !101
  %71 = icmp eq i32 %59, %70, !dbg !102
  br i1 %71, label %72, label %60, !dbg !103, !llvm.loop !104

; <label>:72:                                     ; preds = %65, %60
  %73 = phi i8* [ null, %60 ], [ %69, %65 ], !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !107
  ret i8* %73, !dbg !107
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
!62 = !DILocation(line: 114, column: 22, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 113, column: 7)
!64 = distinct !DILexicalBlock(scope: !42, file: !1, line: 113, column: 7)
!65 = !DILocation(line: 114, column: 28, scope: !63)
!66 = !DILocation(line: 105, column: 21, scope: !42)
!67 = !DILocation(line: 120, column: 50, scope: !47)
!68 = !DILocation(line: 104, column: 19, scope: !42)
!69 = !DILocation(line: 105, column: 19, scope: !42)
!70 = !{!71, !71, i64 0}
!71 = !{!"long", !72, i64 0}
!72 = !{!"omnipotent char", !73, i64 0}
!73 = !{!"Simple C/C++ TBAA"}
!74 = !DILocation(line: 120, column: 25, scope: !47)
!75 = !DILocation(line: 121, column: 18, scope: !47)
!76 = !DILocation(line: 122, column: 15, scope: !77)
!77 = distinct !DILexicalBlock(scope: !47, file: !1, line: 122, column: 15)
!78 = !DILocation(line: 122, column: 15, scope: !47)
!79 = !DILocation(line: 124, column: 40, scope: !47)
!80 = !DILocation(line: 124, column: 23, scope: !47)
!81 = !DILocation(line: 124, column: 26, scope: !47)
!82 = !DILocation(line: 125, column: 16, scope: !47)
!83 = !DILocation(line: 118, column: 19, scope: !42)
!84 = distinct !{!84, !85, !86}
!85 = !DILocation(line: 118, column: 7, scope: !42)
!86 = !DILocation(line: 126, column: 9, scope: !42)
!87 = !DILocation(line: 129, column: 13, scope: !42)
!88 = !DILocation(line: 130, column: 13, scope: !42)
!89 = !DILocation(line: 131, column: 5, scope: !42)
!90 = !DILocation(line: 0, scope: !42)
!91 = !DILocation(line: 133, column: 3, scope: !14)
!92 = !DILocation(line: 0, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 135, column: 11)
!94 = distinct !DILexicalBlock(scope: !14, file: !1, line: 134, column: 5)
!95 = !DILocation(line: 133, column: 14, scope: !14)
!96 = !DILocation(line: 135, column: 25, scope: !93)
!97 = !DILocation(line: 135, column: 21, scope: !93)
!98 = !{!72, !72, i64 0}
!99 = !DILocation(line: 135, column: 16, scope: !93)
!100 = !DILocation(line: 135, column: 19, scope: !93)
!101 = !DILocation(line: 135, column: 11, scope: !93)
!102 = !DILocation(line: 135, column: 29, scope: !93)
!103 = !DILocation(line: 135, column: 11, scope: !94)
!104 = distinct !{!104, !91, !105}
!105 = !DILocation(line: 140, column: 5, scope: !14)
!106 = !DILocation(line: 0, scope: !14)
!107 = !DILocation(line: 142, column: 3, scope: !14)
