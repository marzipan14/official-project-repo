; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strchr(i8*, i32) local_unnamed_addr #0 !dbg !17 {
  %3 = trunc i32 %1 to i8, !dbg !33
  %4 = icmp eq i8 %3, 0, !dbg !35
  %5 = ptrtoint i8* %0 to i64, !dbg !37
  %6 = and i64 %5, 7, !dbg !37
  %7 = icmp eq i64 %6, 0, !dbg !37
  br i1 %4, label %9, label %8, !dbg !38

; <label>:8:                                      ; preds = %2
  br i1 %7, label %51, label %40, !dbg !39

; <label>:9:                                      ; preds = %2
  br i1 %7, label %19, label %10, !dbg !40

; <label>:10:                                     ; preds = %9, %14
  %11 = phi i8* [ %15, %14 ], [ %0, %9 ]
  %12 = load i8, i8* %11, align 1, !dbg !42, !tbaa !45
  %13 = icmp eq i8 %12, 0, !dbg !42
  br i1 %13, label %98, label %14, !dbg !48

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !49
  %16 = ptrtoint i8* %15 to i64, !dbg !50
  %17 = and i64 %16, 7, !dbg !50
  %18 = icmp eq i64 %17, 0, !dbg !40
  br i1 %18, label %19, label %10, !dbg !40, !llvm.loop !51

; <label>:19:                                     ; preds = %14, %9
  %20 = phi i8* [ %0, %9 ], [ %15, %14 ], !dbg !53
  %21 = bitcast i8* %20 to i64*, !dbg !54
  br label %22, !dbg !56

; <label>:22:                                     ; preds = %22, %19
  %23 = phi i64* [ %21, %19 ], [ %30, %22 ], !dbg !57
  %24 = load i64, i64* %23, align 8, !dbg !58, !tbaa !59
  %25 = add i64 %24, -72340172838076673, !dbg !58
  %26 = and i64 %24, -9187201950435737472, !dbg !58
  %27 = xor i64 %26, -9187201950435737472, !dbg !58
  %28 = and i64 %27, %25, !dbg !58
  %29 = icmp eq i64 %28, 0, !dbg !61
  %30 = getelementptr inbounds i64, i64* %23, i64 1, !dbg !62
  br i1 %29, label %22, label %31, !dbg !56, !llvm.loop !63

; <label>:31:                                     ; preds = %22
  %32 = trunc i64 %24 to i8, !dbg !56
  %33 = bitcast i64* %23 to i8*, !dbg !64
  %34 = icmp eq i8 %32, 0, !dbg !65
  br i1 %34, label %98, label %35, !dbg !65, !llvm.loop !66

; <label>:35:                                     ; preds = %31, %35
  %36 = phi i8* [ %37, %35 ], [ %33, %31 ]
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !67
  %38 = load i8, i8* %37, align 1, !dbg !68, !tbaa !45
  %39 = icmp eq i8 %38, 0, !dbg !65
  br i1 %39, label %98, label %35, !dbg !65, !llvm.loop !66

; <label>:40:                                     ; preds = %8, %46
  %41 = phi i8* [ %47, %46 ], [ %0, %8 ]
  %42 = load i8, i8* %41, align 1, !dbg !69, !tbaa !45
  %43 = icmp eq i8 %42, 0, !dbg !69
  br i1 %43, label %98, label %44, !dbg !72

; <label>:44:                                     ; preds = %40
  %45 = icmp eq i8 %42, %3, !dbg !73
  br i1 %45, label %98, label %46, !dbg !75

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !76
  %48 = ptrtoint i8* %47 to i64, !dbg !77
  %49 = and i64 %48, 7, !dbg !77
  %50 = icmp eq i64 %49, 0, !dbg !39
  br i1 %50, label %51, label %40, !dbg !39, !llvm.loop !78

; <label>:51:                                     ; preds = %46, %8
  %52 = phi i8* [ %0, %8 ], [ %47, %46 ], !dbg !80
  %53 = and i32 %1, 255, !dbg !81
  %54 = shl nuw nsw i32 %53, 8, !dbg !83
  %55 = or i32 %54, %53, !dbg !86
  %56 = shl nuw i32 %55, 16, !dbg !83
  %57 = or i32 %56, %55, !dbg !86
  %58 = zext i32 %57 to i64, !dbg !86
  %59 = shl nuw i64 %58, 32, !dbg !83
  %60 = or i64 %59, %58, !dbg !86
  %61 = bitcast i8* %52 to i64*, !dbg !88
  %62 = load i64, i64* %61, align 8, !dbg !89, !tbaa !59
  %63 = add i64 %62, -72340172838076673, !dbg !89
  %64 = and i64 %62, -9187201950435737472, !dbg !89
  %65 = xor i64 %64, -9187201950435737472, !dbg !89
  %66 = and i64 %65, %63, !dbg !89
  %67 = icmp eq i64 %66, 0, !dbg !89
  br i1 %67, label %68, label %85, !dbg !90

; <label>:68:                                     ; preds = %51, %77
  %69 = phi i64 [ %79, %77 ], [ %62, %51 ]
  %70 = phi i64* [ %78, %77 ], [ %61, %51 ]
  %71 = xor i64 %69, %60, !dbg !91
  %72 = add i64 %71, -72340172838076673, !dbg !91
  %73 = and i64 %71, -9187201950435737472, !dbg !91
  %74 = xor i64 %73, -9187201950435737472, !dbg !91
  %75 = and i64 %74, %72, !dbg !91
  %76 = icmp eq i64 %75, 0, !dbg !92
  br i1 %76, label %77, label %85, !dbg !93

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i64, i64* %70, i64 1, !dbg !94
  %79 = load i64, i64* %78, align 8, !dbg !89, !tbaa !59
  %80 = add i64 %79, -72340172838076673, !dbg !89
  %81 = and i64 %79, -9187201950435737472, !dbg !89
  %82 = xor i64 %81, -9187201950435737472, !dbg !89
  %83 = and i64 %82, %80, !dbg !89
  %84 = icmp eq i64 %83, 0, !dbg !89
  br i1 %84, label %68, label %85, !dbg !90, !llvm.loop !95

; <label>:85:                                     ; preds = %68, %77, %51
  %86 = phi i64* [ %61, %51 ], [ %78, %77 ], [ %70, %68 ], !dbg !37
  %87 = bitcast i64* %86 to i8*, !dbg !96
  br label %88, !dbg !97

; <label>:88:                                     ; preds = %88, %85
  %89 = phi i8* [ %87, %85 ], [ %94, %88 ], !dbg !37
  %90 = load i8, i8* %89, align 1, !dbg !98, !tbaa !45
  %91 = icmp ne i8 %90, 0, !dbg !98
  %92 = icmp ne i8 %90, %3, !dbg !99
  %93 = and i1 %92, %91, !dbg !100
  %94 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !101
  br i1 %93, label %88, label %95, !dbg !97, !llvm.loop !102

; <label>:95:                                     ; preds = %88
  %96 = icmp eq i8 %90, %3, !dbg !103
  %97 = select i1 %96, i8* %89, i8* null, !dbg !105
  br label %98, !dbg !105

; <label>:98:                                     ; preds = %44, %40, %10, %35, %31, %95
  %99 = phi i8* [ %97, %95 ], [ %33, %31 ], [ %37, %35 ], [ %11, %10 ], [ %41, %44 ], [ null, %40 ], !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  ret i8* %99, !dbg !106
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8, !10, !12}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "strchr", scope: !1, file: !1, line: 61, type: !18, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!8, !20, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DILocalVariable(name: "s1", arg: 1, scope: !17, file: !1, line: 61, type: !20)
!25 = !DILocalVariable(name: "i", arg: 2, scope: !17, file: !1, line: 61, type: !22)
!26 = !DILocalVariable(name: "s", scope: !17, file: !1, line: 65, type: !4)
!27 = !DILocalVariable(name: "c", scope: !17, file: !1, line: 66, type: !6)
!28 = !DILocalVariable(name: "mask", scope: !17, file: !1, line: 69, type: !11)
!29 = !DILocalVariable(name: "j", scope: !17, file: !1, line: 69, type: !11)
!30 = !DILocalVariable(name: "aligned_addr", scope: !17, file: !1, line: 70, type: !10)
!31 = !DILocation(line: 61, column: 1, scope: !17)
!32 = !DILocation(line: 65, column: 25, scope: !17)
!33 = !DILocation(line: 66, column: 21, scope: !17)
!34 = !DILocation(line: 66, column: 17, scope: !17)
!35 = !DILocation(line: 73, column: 8, scope: !36)
!36 = distinct !DILexicalBlock(scope: !17, file: !1, line: 73, column: 7)
!37 = !DILocation(line: 0, scope: !17)
!38 = !DILocation(line: 73, column: 7, scope: !17)
!39 = !DILocation(line: 93, column: 3, scope: !17)
!40 = !DILocation(line: 75, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 74, column: 5)
!42 = !DILocation(line: 77, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 77, column: 15)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 76, column: 9)
!45 = !{!46, !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 77, column: 15, scope: !44)
!49 = !DILocation(line: 79, column: 12, scope: !44)
!50 = !DILocation(line: 75, column: 14, scope: !41)
!51 = distinct !{!51, !40, !52}
!52 = !DILocation(line: 80, column: 9, scope: !41)
!53 = !DILocation(line: 0, scope: !44)
!54 = !DILocation(line: 82, column: 22, scope: !41)
!55 = !DILocation(line: 70, column: 18, scope: !17)
!56 = !DILocation(line: 83, column: 7, scope: !41)
!57 = !DILocation(line: 0, scope: !41)
!58 = !DILocation(line: 83, column: 15, scope: !41)
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !46, i64 0}
!61 = !DILocation(line: 83, column: 14, scope: !41)
!62 = !DILocation(line: 84, column: 21, scope: !41)
!63 = distinct !{!63, !56, !62}
!64 = !DILocation(line: 86, column: 11, scope: !41)
!65 = !DILocation(line: 87, column: 7, scope: !41)
!66 = distinct !{!66, !65, !67}
!67 = !DILocation(line: 88, column: 10, scope: !41)
!68 = !DILocation(line: 87, column: 14, scope: !41)
!69 = !DILocation(line: 95, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 95, column: 11)
!71 = distinct !DILexicalBlock(scope: !17, file: !1, line: 94, column: 5)
!72 = !DILocation(line: 95, column: 11, scope: !71)
!73 = !DILocation(line: 97, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 97, column: 11)
!75 = !DILocation(line: 97, column: 11, scope: !71)
!76 = !DILocation(line: 99, column: 8, scope: !71)
!77 = !DILocation(line: 93, column: 10, scope: !17)
!78 = distinct !{!78, !39, !79}
!79 = !DILocation(line: 100, column: 5, scope: !17)
!80 = !DILocation(line: 0, scope: !71)
!81 = !DILocation(line: 102, column: 10, scope: !17)
!82 = !DILocation(line: 69, column: 22, scope: !17)
!83 = !DILocation(line: 104, column: 18, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 103, column: 3)
!85 = distinct !DILexicalBlock(scope: !17, file: !1, line: 103, column: 3)
!86 = !DILocation(line: 104, column: 24, scope: !84)
!87 = !DILocation(line: 69, column: 17, scope: !17)
!88 = !DILocation(line: 106, column: 18, scope: !17)
!89 = !DILocation(line: 107, column: 11, scope: !17)
!90 = !DILocation(line: 107, column: 38, scope: !17)
!91 = !DILocation(line: 107, column: 42, scope: !17)
!92 = !DILocation(line: 107, column: 41, scope: !17)
!93 = !DILocation(line: 107, column: 3, scope: !17)
!94 = !DILocation(line: 108, column: 17, scope: !17)
!95 = distinct !{!95, !93, !94}
!96 = !DILocation(line: 114, column: 7, scope: !17)
!97 = !DILocation(line: 118, column: 3, scope: !17)
!98 = !DILocation(line: 118, column: 10, scope: !17)
!99 = !DILocation(line: 118, column: 19, scope: !17)
!100 = !DILocation(line: 118, column: 13, scope: !17)
!101 = !DILocation(line: 119, column: 6, scope: !17)
!102 = distinct !{!102, !97, !101}
!103 = !DILocation(line: 120, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !17, file: !1, line: 120, column: 7)
!105 = !DILocation(line: 121, column: 5, scope: !104)
!106 = !DILocation(line: 123, column: 1, scope: !17)
