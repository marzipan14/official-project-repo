; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strchr(i8*, i32) local_unnamed_addr #0 !dbg !17 {
  %3 = trunc i32 %1 to i8, !dbg !33
  %4 = icmp eq i8 %3, 0, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  %5 = ptrtoint i8* %0 to i64, !dbg !38
  %6 = and i64 %5, 7, !dbg !38
  %7 = icmp eq i64 %6, 0, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %4, label %9, label %8, !dbg !37

; <label>:8:                                      ; preds = %2
  br i1 %7, label %63, label %50, !dbg !39

; <label>:9:                                      ; preds = %2
  br i1 %7, label %20, label %10, !dbg !40

; <label>:10:                                     ; preds = %9, %15
  %11 = phi i8* [ %16, %15 ], [ %0, %9 ]
  %12 = load i8, i8* %11, align 1, !dbg !42, !tbaa !45
  %13 = icmp eq i8 %12, 0, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %13, label %14, label %15, !dbg !48

; <label>:14:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %119, !dbg !49

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  %17 = ptrtoint i8* %16 to i64, !dbg !51
  %18 = and i64 %17, 7, !dbg !51
  %19 = icmp eq i64 %18, 0, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %19, label %20, label %10, !dbg !40, !llvm.loop !52

; <label>:20:                                     ; preds = %15, %9
  %21 = phi i8* [ %0, %9 ], [ %16, %15 ], !dbg !54
  %22 = bitcast i8* %21 to i64*, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %23 = load i64, i64* %22, align 8, !dbg !58, !tbaa !59
  %24 = add i64 %23, -72340172838076673, !dbg !58
  %25 = and i64 %23, -9187201950435737472, !dbg !58
  %26 = xor i64 %25, -9187201950435737472, !dbg !58
  %27 = and i64 %26, %24, !dbg !58
  %28 = icmp eq i64 %27, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %28, label %29, label %38, !dbg !57

; <label>:29:                                     ; preds = %20, %29
  %30 = phi i64* [ %31, %29 ], [ %22, %20 ]
  %31 = getelementptr inbounds i64, i64* %30, i64 1, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %32 = load i64, i64* %31, align 8, !dbg !58, !tbaa !59
  %33 = add i64 %32, -72340172838076673, !dbg !58
  %34 = and i64 %32, -9187201950435737472, !dbg !58
  %35 = xor i64 %34, -9187201950435737472, !dbg !58
  %36 = and i64 %35, %33, !dbg !58
  %37 = icmp eq i64 %36, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %37, label %29, label %38, !dbg !57, !llvm.loop !63

; <label>:38:                                     ; preds = %29, %20
  %39 = phi i64* [ %22, %20 ], [ %31, %29 ], !dbg !64
  %40 = bitcast i64* %39 to i8*, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %41 = load i8, i8* %40, align 1, !dbg !67, !tbaa !45
  %42 = icmp eq i8 %41, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %42, label %48, label %43, !dbg !66

; <label>:43:                                     ; preds = %38, %43
  %44 = phi i8* [ %45, %43 ], [ %40, %38 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %46 = load i8, i8* %45, align 1, !dbg !67, !tbaa !45
  %47 = icmp eq i8 %46, 0, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %47, label %48, label %43, !dbg !66, !llvm.loop !69

; <label>:48:                                     ; preds = %43, %38
  %49 = phi i8* [ %40, %38 ], [ %45, %43 ], !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br label %119, !dbg !70

; <label>:50:                                     ; preds = %8, %58
  %51 = phi i8* [ %59, %58 ], [ %0, %8 ]
  %52 = load i8, i8* %51, align 1, !dbg !71, !tbaa !45
  %53 = icmp eq i8 %52, 0, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %53, label %54, label %55, !dbg !74

; <label>:54:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br label %119, !dbg !75

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i8 %52, %3, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %56, label %57, label %58, !dbg !78

; <label>:57:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  br label %119, !dbg !79

; <label>:58:                                     ; preds = %55
  %59 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %60 = ptrtoint i8* %59 to i64, !dbg !81
  %61 = and i64 %60, 7, !dbg !81
  %62 = icmp eq i64 %61, 0, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %62, label %63, label %50, !dbg !39, !llvm.loop !82

; <label>:63:                                     ; preds = %58, %8
  %64 = phi i8* [ %0, %8 ], [ %59, %58 ], !dbg !84
  %65 = and i32 %1, 255, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  %66 = shl nuw nsw i32 %65, 8, !dbg !90
  %67 = or i32 %66, %65, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  %68 = shl nuw i32 %67, 16, !dbg !90
  %69 = or i32 %68, %67, !dbg !92
  %70 = zext i32 %69 to i64, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  %71 = shl nuw i64 %70, 32, !dbg !90
  %72 = or i64 %71, %70, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  %73 = bitcast i8* %64 to i64*, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  %74 = load i64, i64* %73, align 8, !dbg !97, !tbaa !59
  %75 = add i64 %74, -72340172838076673, !dbg !97
  %76 = and i64 %74, -9187201950435737472, !dbg !97
  %77 = xor i64 %76, -9187201950435737472, !dbg !97
  %78 = and i64 %77, %75, !dbg !97
  %79 = icmp eq i64 %78, 0, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %79, label %80, label %97, !dbg !98

; <label>:80:                                     ; preds = %63, %89
  %81 = phi i64 [ %91, %89 ], [ %74, %63 ]
  %82 = phi i64* [ %90, %89 ], [ %73, %63 ]
  %83 = xor i64 %81, %72, !dbg !99
  %84 = add i64 %83, -72340172838076673, !dbg !99
  %85 = and i64 %83, -9187201950435737472, !dbg !99
  %86 = xor i64 %85, -9187201950435737472, !dbg !99
  %87 = and i64 %86, %84, !dbg !99
  %88 = icmp eq i64 %87, 0, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %88, label %89, label %99, !dbg !96

; <label>:89:                                     ; preds = %80
  %90 = getelementptr inbounds i64, i64* %82, i64 1, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  %91 = load i64, i64* %90, align 8, !dbg !97, !tbaa !59
  %92 = add i64 %91, -72340172838076673, !dbg !97
  %93 = and i64 %91, -9187201950435737472, !dbg !97
  %94 = xor i64 %93, -9187201950435737472, !dbg !97
  %95 = and i64 %94, %92, !dbg !97
  %96 = icmp eq i64 %95, 0, !dbg !97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  br i1 %96, label %80, label %97, !dbg !98, !llvm.loop !102

; <label>:97:                                     ; preds = %89, %63
  %98 = phi i64* [ %73, %63 ], [ %90, %89 ], !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %99

; <label>:99:                                     ; preds = %80, %97
  %100 = phi i64* [ %98, %97 ], [ %82, %80 ]
  %101 = bitcast i64* %100 to i8*, !dbg !103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %102 = load i8, i8* %101, align 1, !dbg !105, !tbaa !45
  %103 = icmp eq i8 %102, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %103, label %112, label %104, !dbg !106

; <label>:104:                                    ; preds = %99, %108
  %105 = phi i8 [ %110, %108 ], [ %102, %99 ]
  %106 = phi i8* [ %109, %108 ], [ %101, %99 ]
  %107 = icmp eq i8 %105, %3, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br i1 %107, label %114, label %108, !dbg !104

; <label>:108:                                    ; preds = %104
  %109 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %110 = load i8, i8* %109, align 1, !dbg !105, !tbaa !45
  %111 = icmp eq i8 %110, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %111, label %112, label %104, !dbg !106, !llvm.loop !109

; <label>:112:                                    ; preds = %108, %99
  %113 = phi i8* [ %101, %99 ], [ %109, %108 ], !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br label %114

; <label>:114:                                    ; preds = %104, %112
  %115 = phi i8* [ %113, %112 ], [ %106, %104 ]
  %116 = phi i8 [ 0, %112 ], [ %3, %104 ]
  %117 = icmp eq i8 %116, %3, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  %118 = select i1 %117, i8* %115, i8* null, !dbg !113
  br label %119, !dbg !113

; <label>:119:                                    ; preds = %114, %57, %54, %48, %14
  %120 = phi i8* [ %51, %57 ], [ null, %54 ], [ %11, %14 ], [ %49, %48 ], [ %118, %114 ], !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  ret i8* %120, !dbg !114
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
!37 = !DILocation(line: 73, column: 7, scope: !17)
!38 = !DILocation(line: 0, scope: !17)
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
!49 = !DILocation(line: 78, column: 13, scope: !43)
!50 = !DILocation(line: 79, column: 12, scope: !44)
!51 = !DILocation(line: 75, column: 14, scope: !41)
!52 = distinct !{!52, !40, !53}
!53 = !DILocation(line: 80, column: 9, scope: !41)
!54 = !DILocation(line: 0, scope: !44)
!55 = !DILocation(line: 82, column: 22, scope: !41)
!56 = !DILocation(line: 70, column: 18, scope: !17)
!57 = !DILocation(line: 83, column: 7, scope: !41)
!58 = !DILocation(line: 83, column: 15, scope: !41)
!59 = !{!60, !60, i64 0}
!60 = !{!"long", !46, i64 0}
!61 = !DILocation(line: 83, column: 14, scope: !41)
!62 = !DILocation(line: 84, column: 21, scope: !41)
!63 = distinct !{!63, !57, !62}
!64 = !DILocation(line: 0, scope: !41)
!65 = !DILocation(line: 86, column: 11, scope: !41)
!66 = !DILocation(line: 87, column: 7, scope: !41)
!67 = !DILocation(line: 87, column: 14, scope: !41)
!68 = !DILocation(line: 88, column: 10, scope: !41)
!69 = distinct !{!69, !66, !68}
!70 = !DILocation(line: 89, column: 7, scope: !41)
!71 = !DILocation(line: 95, column: 12, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 95, column: 11)
!73 = distinct !DILexicalBlock(scope: !17, file: !1, line: 94, column: 5)
!74 = !DILocation(line: 95, column: 11, scope: !73)
!75 = !DILocation(line: 96, column: 9, scope: !72)
!76 = !DILocation(line: 97, column: 14, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 97, column: 11)
!78 = !DILocation(line: 97, column: 11, scope: !73)
!79 = !DILocation(line: 98, column: 9, scope: !77)
!80 = !DILocation(line: 99, column: 8, scope: !73)
!81 = !DILocation(line: 93, column: 10, scope: !17)
!82 = distinct !{!82, !39, !83}
!83 = !DILocation(line: 100, column: 5, scope: !17)
!84 = !DILocation(line: 0, scope: !73)
!85 = !DILocation(line: 102, column: 10, scope: !17)
!86 = !DILocation(line: 69, column: 22, scope: !17)
!87 = !DILocation(line: 103, column: 8, scope: !88)
!88 = distinct !DILexicalBlock(scope: !17, file: !1, line: 103, column: 3)
!89 = !DILocation(line: 103, column: 3, scope: !88)
!90 = !DILocation(line: 104, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 103, column: 3)
!92 = !DILocation(line: 104, column: 24, scope: !91)
!93 = !DILocation(line: 103, column: 3, scope: !91)
!94 = !DILocation(line: 69, column: 17, scope: !17)
!95 = !DILocation(line: 106, column: 18, scope: !17)
!96 = !DILocation(line: 107, column: 3, scope: !17)
!97 = !DILocation(line: 107, column: 11, scope: !17)
!98 = !DILocation(line: 107, column: 38, scope: !17)
!99 = !DILocation(line: 107, column: 42, scope: !17)
!100 = !DILocation(line: 107, column: 41, scope: !17)
!101 = !DILocation(line: 108, column: 17, scope: !17)
!102 = distinct !{!102, !96, !101}
!103 = !DILocation(line: 114, column: 7, scope: !17)
!104 = !DILocation(line: 118, column: 3, scope: !17)
!105 = !DILocation(line: 118, column: 10, scope: !17)
!106 = !DILocation(line: 118, column: 13, scope: !17)
!107 = !DILocation(line: 118, column: 19, scope: !17)
!108 = !DILocation(line: 119, column: 6, scope: !17)
!109 = distinct !{!109, !104, !108}
!110 = !DILocation(line: 120, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !17, file: !1, line: 120, column: 7)
!112 = !DILocation(line: 120, column: 7, scope: !17)
!113 = !DILocation(line: 121, column: 5, scope: !111)
!114 = !DILocation(line: 123, column: 1, scope: !17)
