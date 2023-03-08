; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdelete.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdelete.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8*, %struct.node*, %struct.node* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @tdelete(i8* noalias, i8** noalias, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0 !dbg !21 {
  %4 = bitcast i8** %1 to %struct.node**, !dbg !43
  %5 = icmp eq i8** %1, null, !dbg !45
  br i1 %5, label %73, label %6, !dbg !47

; <label>:6:                                      ; preds = %3
  %7 = load %struct.node*, %struct.node** %4, align 8, !dbg !48, !tbaa !49
  %8 = icmp eq %struct.node* %7, null, !dbg !54
  br i1 %8, label %73, label %9, !dbg !55

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.node, %struct.node* %7, i64 0, i32 0, !dbg !56
  %11 = load i8*, i8** %10, align 8, !dbg !56, !tbaa !57
  %12 = tail call i32 %2(i8* %0, i8* %11) #3, !dbg !59
  %13 = icmp eq i32 %12, 0, !dbg !61
  %14 = load %struct.node*, %struct.node** %4, align 8, !dbg !62, !tbaa !49
  br i1 %13, label %30, label %21, !dbg !63

; <label>:15:                                     ; preds = %21
  %16 = getelementptr inbounds %struct.node, %struct.node* %28, i64 0, i32 0, !dbg !56
  %17 = load i8*, i8** %16, align 8, !dbg !56, !tbaa !57
  %18 = tail call i32 %2(i8* %0, i8* %17) #3, !dbg !59
  %19 = icmp eq i32 %18, 0, !dbg !61
  %20 = load %struct.node*, %struct.node** %27, align 8, !dbg !62, !tbaa !49
  br i1 %19, label %30, label %21, !dbg !63, !llvm.loop !64

; <label>:21:                                     ; preds = %9, %15
  %22 = phi %struct.node* [ %20, %15 ], [ %14, %9 ]
  %23 = phi i32 [ %18, %15 ], [ %12, %9 ]
  %24 = icmp slt i32 %23, 0, !dbg !66
  %25 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 1, !dbg !68
  %26 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2, !dbg !69
  %27 = select i1 %24, %struct.node** %25, %struct.node** %26, !dbg !70
  %28 = load %struct.node*, %struct.node** %27, align 8, !dbg !71, !tbaa !49
  %29 = icmp eq %struct.node* %28, null, !dbg !73
  br i1 %29, label %73, label %15, !dbg !74, !llvm.loop !64

; <label>:30:                                     ; preds = %15, %9
  %31 = phi %struct.node** [ %4, %9 ], [ %27, %15 ], !dbg !75
  %32 = phi %struct.node* [ %7, %9 ], [ %22, %15 ], !dbg !75
  %33 = phi %struct.node* [ %14, %9 ], [ %20, %15 ], !dbg !62
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i64 0, i32 2, !dbg !76
  %35 = load %struct.node*, %struct.node** %34, align 8, !dbg !76, !tbaa !77
  %36 = getelementptr inbounds %struct.node, %struct.node* %33, i64 0, i32 1, !dbg !79
  %37 = load %struct.node*, %struct.node** %36, align 8, !dbg !79, !tbaa !81
  %38 = icmp eq %struct.node* %37, null, !dbg !83
  br i1 %38, label %68, label %39, !dbg !84

; <label>:39:                                     ; preds = %30
  %40 = icmp eq %struct.node* %35, null, !dbg !85
  br i1 %40, label %68, label %41, !dbg !87

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds %struct.node, %struct.node* %35, i64 0, i32 1, !dbg !88
  %43 = load %struct.node*, %struct.node** %42, align 8, !dbg !88, !tbaa !81
  %44 = icmp eq %struct.node* %43, null, !dbg !91
  br i1 %44, label %45, label %46, !dbg !92

; <label>:45:                                     ; preds = %41
  store %struct.node* %37, %struct.node** %42, align 8, !dbg !93, !tbaa !81
  br label %68, !dbg !95

; <label>:46:                                     ; preds = %41, %46
  %47 = phi %struct.node* [ %50, %46 ], [ %43, %41 ], !dbg !96
  %48 = phi %struct.node* [ %47, %46 ], [ %35, %41 ], !dbg !96
  %49 = getelementptr inbounds %struct.node, %struct.node* %47, i64 0, i32 1, !dbg !100
  %50 = load %struct.node*, %struct.node** %49, align 8, !dbg !100, !tbaa !81
  %51 = icmp eq %struct.node* %50, null, !dbg !101
  br i1 %51, label %52, label %46, !dbg !102, !llvm.loop !103

; <label>:52:                                     ; preds = %46
  %53 = getelementptr inbounds %struct.node, %struct.node* %47, i64 0, i32 1, !dbg !100
  %54 = getelementptr inbounds %struct.node, %struct.node* %47, i64 0, i32 2, !dbg !105
  %55 = bitcast %struct.node** %54 to i64*, !dbg !105
  %56 = load i64, i64* %55, align 8, !dbg !105, !tbaa !77
  %57 = getelementptr inbounds %struct.node, %struct.node* %48, i64 0, i32 1, !dbg !106
  %58 = bitcast %struct.node** %57 to i64*, !dbg !107
  store i64 %56, i64* %58, align 8, !dbg !107, !tbaa !81
  %59 = load %struct.node*, %struct.node** %31, align 8, !dbg !108, !tbaa !49
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i64 0, i32 1, !dbg !109
  %61 = bitcast %struct.node** %60 to i64*, !dbg !109
  %62 = load i64, i64* %61, align 8, !dbg !109, !tbaa !81
  %63 = bitcast %struct.node** %53 to i64*, !dbg !110
  store i64 %62, i64* %63, align 8, !dbg !110, !tbaa !81
  %64 = load %struct.node*, %struct.node** %31, align 8, !dbg !111, !tbaa !49
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i64 0, i32 2, !dbg !112
  %66 = bitcast %struct.node** %65 to i64*, !dbg !112
  %67 = load i64, i64* %66, align 8, !dbg !112, !tbaa !77
  store i64 %67, i64* %55, align 8, !dbg !113, !tbaa !77
  br label %68

; <label>:68:                                     ; preds = %30, %39, %52, %45
  %69 = phi %struct.node* [ %35, %45 ], [ %47, %52 ], [ %37, %39 ], [ %35, %30 ], !dbg !114
  %70 = bitcast %struct.node** %31 to i8**, !dbg !115
  %71 = load i8*, i8** %70, align 8, !dbg !115, !tbaa !49
  tail call void @free(i8* %71) #3, !dbg !116
  store %struct.node* %69, %struct.node** %31, align 8, !dbg !117, !tbaa !49
  %72 = bitcast %struct.node* %32 to i8*, !dbg !118
  br label %73, !dbg !119

; <label>:73:                                     ; preds = %21, %3, %6, %68
  %74 = phi i8* [ %72, %68 ], [ null, %6 ], [ null, %3 ], [ null, %21 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  ret i8* %74, !dbg !120
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdelete.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !16}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !7, line: 36, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !7, line: 33, size: 192, elements: !9)
!9 = !{!10, !13, !15}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !8, file: !7, line: 34, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !8, file: !7, line: 35, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !8, file: !7, line: 35, baseType: !14, size: 64, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "tdelete", scope: !1, file: !1, line: 29, type: !22, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !33)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24, !27, !29}
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !25, !25}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41}
!34 = !DILocalVariable(name: "vkey", arg: 1, scope: !21, file: !1, line: 29, type: !24)
!35 = !DILocalVariable(name: "vrootp", arg: 2, scope: !21, file: !1, line: 29, type: !27)
!36 = !DILocalVariable(name: "compar", arg: 3, scope: !21, file: !1, line: 29, type: !29)
!37 = !DILocalVariable(name: "rootp", scope: !21, file: !1, line: 34, type: !4)
!38 = !DILocalVariable(name: "p", scope: !21, file: !1, line: 35, type: !5)
!39 = !DILocalVariable(name: "q", scope: !21, file: !1, line: 35, type: !5)
!40 = !DILocalVariable(name: "r", scope: !21, file: !1, line: 35, type: !5)
!41 = !DILocalVariable(name: "cmp", scope: !21, file: !1, line: 36, type: !32)
!42 = !DILocation(line: 29, column: 1, scope: !21)
!43 = !DILocation(line: 34, column: 19, scope: !21)
!44 = !DILocation(line: 34, column: 11, scope: !21)
!45 = !DILocation(line: 38, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !21, file: !1, line: 38, column: 6)
!47 = !DILocation(line: 38, column: 20, scope: !46)
!48 = !DILocation(line: 38, column: 28, scope: !46)
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 35, column: 10, scope: !21)
!54 = !DILocation(line: 38, column: 36, scope: !46)
!55 = !DILocation(line: 38, column: 6, scope: !21)
!56 = !DILocation(line: 41, column: 42, scope: !21)
!57 = !{!58, !50, i64 0}
!58 = !{!"node", !50, i64 0, !50, i64 8, !50, i64 16}
!59 = !DILocation(line: 41, column: 16, scope: !21)
!60 = !DILocation(line: 36, column: 7, scope: !21)
!61 = !DILocation(line: 41, column: 48, scope: !21)
!62 = !DILocation(line: 0, scope: !21)
!63 = !DILocation(line: 41, column: 2, scope: !21)
!64 = distinct !{!64, !63, !65}
!65 = !DILocation(line: 48, column: 2, scope: !21)
!66 = !DILocation(line: 43, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !21, file: !1, line: 41, column: 54)
!68 = !DILocation(line: 44, column: 18, scope: !67)
!69 = !DILocation(line: 45, column: 18, scope: !67)
!70 = !DILocation(line: 43, column: 11, scope: !67)
!71 = !DILocation(line: 46, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 46, column: 7)
!73 = !DILocation(line: 46, column: 14, scope: !72)
!74 = !DILocation(line: 46, column: 7, scope: !67)
!75 = !DILocation(line: 0, scope: !67)
!76 = !DILocation(line: 49, column: 16, scope: !21)
!77 = !{!58, !50, i64 16}
!78 = !DILocation(line: 35, column: 18, scope: !21)
!79 = !DILocation(line: 50, column: 21, scope: !80)
!80 = distinct !DILexicalBlock(scope: !21, file: !1, line: 50, column: 6)
!81 = !{!58, !50, i64 8}
!82 = !DILocation(line: 35, column: 14, scope: !21)
!83 = !DILocation(line: 50, column: 28, scope: !80)
!84 = !DILocation(line: 50, column: 6, scope: !21)
!85 = !DILocation(line: 52, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !80, file: !1, line: 52, column: 11)
!87 = !DILocation(line: 52, column: 11, scope: !80)
!88 = !DILocation(line: 53, column: 10, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 53, column: 7)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 52, column: 22)
!91 = !DILocation(line: 53, column: 16, scope: !89)
!92 = !DILocation(line: 53, column: 7, scope: !90)
!93 = !DILocation(line: 54, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 53, column: 25)
!95 = !DILocation(line: 56, column: 3, scope: !94)
!96 = !DILocation(line: 0, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 57, column: 4)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 57, column: 4)
!99 = distinct !DILexicalBlock(scope: !89, file: !1, line: 56, column: 10)
!100 = !DILocation(line: 57, column: 26, scope: !97)
!101 = !DILocation(line: 57, column: 32, scope: !97)
!102 = !DILocation(line: 57, column: 4, scope: !98)
!103 = distinct !{!103, !102, !104}
!104 = !DILocation(line: 58, column: 9, scope: !98)
!105 = !DILocation(line: 59, column: 18, scope: !99)
!106 = !DILocation(line: 59, column: 7, scope: !99)
!107 = !DILocation(line: 59, column: 13, scope: !99)
!108 = !DILocation(line: 60, column: 16, scope: !99)
!109 = !DILocation(line: 60, column: 25, scope: !99)
!110 = !DILocation(line: 60, column: 13, scope: !99)
!111 = !DILocation(line: 61, column: 16, scope: !99)
!112 = !DILocation(line: 61, column: 25, scope: !99)
!113 = !DILocation(line: 61, column: 13, scope: !99)
!114 = !DILocation(line: 0, scope: !80)
!115 = !DILocation(line: 64, column: 7, scope: !21)
!116 = !DILocation(line: 64, column: 2, scope: !21)
!117 = !DILocation(line: 65, column: 9, scope: !21)
!118 = !DILocation(line: 66, column: 9, scope: !21)
!119 = !DILocation(line: 66, column: 2, scope: !21)
!120 = !DILocation(line: 67, column: 1, scope: !21)
