; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/twalk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/twalk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8*, %struct.node*, %struct.node* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @twalk(i8*, void (i8*, i32, i32)*) local_unnamed_addr #0 !dbg !17 {
  %3 = icmp ne i8* %0, null, !dbg !31
  %4 = icmp ne void (i8*, i32, i32)* %1, null, !dbg !33
  %5 = and i1 %3, %4, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %5, label %6, label %8, !dbg !34

; <label>:6:                                      ; preds = %2
  %7 = bitcast i8* %0 to %struct.node*, !dbg !35
  tail call fastcc void @trecurse(%struct.node* %7, void (i8*, i32, i32)* nonnull %1, i32 0) #2, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br label %8, !dbg !36

; <label>:8:                                      ; preds = %6, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  ret void, !dbg !37
}

; Function Attrs: noredzone nounwind
define internal fastcc void @trecurse(%struct.node*, void (i8*, i32, i32)*, i32) unnamed_addr #0 !dbg !38 {
  %4 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1, !dbg !59
  %5 = load %struct.node*, %struct.node** %4, align 8, !dbg !59, !tbaa !61
  %6 = icmp eq %struct.node* %5, null, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %6, label %7, label %13, !dbg !67

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2, !dbg !68
  %9 = load %struct.node*, %struct.node** %8, align 8, !dbg !68, !tbaa !69
  %10 = icmp eq %struct.node* %9, null, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %10, label %11, label %13, !dbg !71

; <label>:11:                                     ; preds = %7
  %12 = bitcast %struct.node* %0 to i8*, !dbg !72
  tail call void %1(i8* %12, i32 3, i32 %2) #3, !dbg !73
  br label %26, !dbg !73

; <label>:13:                                     ; preds = %7, %3
  %14 = bitcast %struct.node* %0 to i8*, !dbg !74
  tail call void %1(i8* %14, i32 0, i32 %2) #3, !dbg !76
  %15 = load %struct.node*, %struct.node** %4, align 8, !dbg !77, !tbaa !61
  %16 = icmp eq %struct.node* %15, null, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %16, label %19, label %17, !dbg !80

; <label>:17:                                     ; preds = %13
  %18 = add nsw i32 %2, 1, !dbg !81
  tail call fastcc void @trecurse(%struct.node* nonnull %15, void (i8*, i32, i32)* %1, i32 %18) #2, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br label %19, !dbg !82

; <label>:19:                                     ; preds = %13, %17
  tail call void %1(i8* %14, i32 1, i32 %2) #3, !dbg !83
  %20 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2, !dbg !84
  %21 = load %struct.node*, %struct.node** %20, align 8, !dbg !84, !tbaa !69
  %22 = icmp eq %struct.node* %21, null, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %22, label %25, label %23, !dbg !87

; <label>:23:                                     ; preds = %19
  %24 = add nsw i32 %2, 1, !dbg !88
  tail call fastcc void @trecurse(%struct.node* nonnull %21, void (i8*, i32, i32)* %1, i32 %24) #2, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %25, !dbg !89

; <label>:25:                                     ; preds = %19, %23
  tail call void %1(i8* nonnull %14, i32 2, i32 %2) #3, !dbg !90
  br label %26

; <label>:26:                                     ; preds = %25, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  ret void, !dbg !91
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/twalk.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 25, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "preorder", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "postorder", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "endorder", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "leaf", value: 3, isUnsigned: true)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "twalk", scope: !1, file: !1, line: 52, type: !18, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !27)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !22}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !20, !25, !26}
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "VISIT", file: !4, line: 30, baseType: !3)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "vroot", arg: 1, scope: !17, file: !1, line: 52, type: !20)
!29 = !DILocalVariable(name: "action", arg: 2, scope: !17, file: !1, line: 52, type: !22)
!30 = !DILocation(line: 52, column: 1, scope: !17)
!31 = !DILocation(line: 56, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !17, file: !1, line: 56, column: 6)
!33 = !DILocation(line: 56, column: 30, scope: !32)
!34 = !DILocation(line: 56, column: 20, scope: !32)
!35 = !DILocation(line: 57, column: 12, scope: !32)
!36 = !DILocation(line: 57, column: 3, scope: !32)
!37 = !DILocation(line: 58, column: 1, scope: !17)
!38 = distinct !DISubprogram(name: "trecurse", scope: !1, file: !1, line: 31, type: !39, isLocal: true, isDefinition: true, scopeLine: 35, isOptimized: true, unit: !0, retainedNodes: !52)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !22, !26}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !4, line: 36, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !4, line: 33, size: 192, elements: !45)
!45 = !{!46, !49, !51}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !44, file: !4, line: 34, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !44, file: !4, line: 35, baseType: !50, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !44, file: !4, line: 35, baseType: !50, size: 64, offset: 128)
!52 = !{!53, !54, !55}
!53 = !DILocalVariable(name: "root", arg: 1, scope: !38, file: !1, line: 32, type: !41)
!54 = !DILocalVariable(name: "action", arg: 2, scope: !38, file: !1, line: 33, type: !22)
!55 = !DILocalVariable(name: "level", arg: 3, scope: !38, file: !1, line: 34, type: !26)
!56 = !DILocation(line: 32, column: 16, scope: !38)
!57 = !DILocation(line: 33, column: 9, scope: !38)
!58 = !DILocation(line: 34, column: 6, scope: !38)
!59 = !DILocation(line: 37, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !38, file: !1, line: 37, column: 6)
!61 = !{!62, !63, i64 8}
!62 = !{!"node", !63, i64 0, !63, i64 8, !63, i64 16}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 37, column: 18, scope: !60)
!67 = !DILocation(line: 37, column: 26, scope: !60)
!68 = !DILocation(line: 37, column: 35, scope: !60)
!69 = !{!62, !63, i64 16}
!70 = !DILocation(line: 37, column: 41, scope: !60)
!71 = !DILocation(line: 37, column: 6, scope: !38)
!72 = !DILocation(line: 38, column: 13, scope: !60)
!73 = !DILocation(line: 38, column: 3, scope: !60)
!74 = !DILocation(line: 40, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !60, file: !1, line: 39, column: 7)
!76 = !DILocation(line: 40, column: 3, scope: !75)
!77 = !DILocation(line: 41, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 41, column: 7)
!79 = !DILocation(line: 41, column: 19, scope: !78)
!80 = !DILocation(line: 41, column: 7, scope: !75)
!81 = !DILocation(line: 42, column: 40, scope: !78)
!82 = !DILocation(line: 42, column: 4, scope: !78)
!83 = !DILocation(line: 43, column: 3, scope: !75)
!84 = !DILocation(line: 44, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !75, file: !1, line: 44, column: 7)
!86 = !DILocation(line: 44, column: 19, scope: !85)
!87 = !DILocation(line: 44, column: 7, scope: !75)
!88 = !DILocation(line: 45, column: 40, scope: !85)
!89 = !DILocation(line: 45, column: 4, scope: !85)
!90 = !DILocation(line: 46, column: 3, scope: !75)
!91 = !DILocation(line: 48, column: 1, scope: !38)
