; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdestroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdestroy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8*, %struct.node*, %struct.node* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @tdestroy(i8*, void (i8*)*) local_unnamed_addr #0 !dbg !20 {
  %3 = icmp eq i8* %0, null, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %3, label %6, label %4, !dbg !33

; <label>:4:                                      ; preds = %2
  %5 = bitcast i8* %0 to %struct.node*, !dbg !34
  tail call fastcc void @trecurse(%struct.node* %5, void (i8*)* %1) #3, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br label %6, !dbg !36

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  ret void, !dbg !37
}

; Function Attrs: noredzone nounwind
define internal fastcc void @trecurse(%struct.node*, void (i8*)*) unnamed_addr #0 !dbg !38 {
  %3 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1, !dbg !46
  %4 = load %struct.node*, %struct.node** %3, align 8, !dbg !46, !tbaa !48
  %5 = icmp eq %struct.node* %4, null, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  br i1 %5, label %7, label %6, !dbg !54

; <label>:6:                                      ; preds = %2
  tail call fastcc void @trecurse(%struct.node* nonnull %4, void (i8*)* %1) #3, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br label %7, !dbg !55

; <label>:7:                                      ; preds = %2, %6
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2, !dbg !56
  %9 = load %struct.node*, %struct.node** %8, align 8, !dbg !56, !tbaa !58
  %10 = icmp eq %struct.node* %9, null, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %10, label %12, label %11, !dbg !60

; <label>:11:                                     ; preds = %7
  tail call fastcc void @trecurse(%struct.node* nonnull %9, void (i8*)* %1) #3, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br label %12, !dbg !61

; <label>:12:                                     ; preds = %7, %11
  %13 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0, !dbg !62
  %14 = load i8*, i8** %13, align 8, !dbg !62, !tbaa !63
  tail call void %1(i8* %14) #4, !dbg !64
  %15 = bitcast %struct.node* %0 to i8*, !dbg !65
  tail call void @free(i8* %15) #4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  ret void, !dbg !67
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tdestroy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !6, line: 36, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/search.h", directory: "/root/.unikraft/apps/redis/build")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !6, line: 33, size: 192, elements: !8)
!8 = !{!9, !12, !14}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !7, file: !6, line: 34, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "llink", scope: !7, file: !6, line: 35, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "rlink", scope: !7, file: !6, line: 35, baseType: !13, size: 64, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "tdestroy", scope: !1, file: !1, line: 43, type: !21, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !15, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !15}
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "vrootp", arg: 1, scope: !20, file: !1, line: 43, type: !15)
!28 = !DILocalVariable(name: "freefct", arg: 2, scope: !20, file: !1, line: 43, type: !23)
!29 = !DILocalVariable(name: "root", scope: !20, file: !1, line: 47, type: !4)
!30 = !DILocation(line: 43, column: 1, scope: !20)
!31 = !DILocation(line: 49, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !20, file: !1, line: 49, column: 7)
!33 = !DILocation(line: 49, column: 7, scope: !20)
!34 = !DILocation(line: 47, column: 18, scope: !20)
!35 = !DILocation(line: 47, column: 11, scope: !20)
!36 = !DILocation(line: 50, column: 5, scope: !32)
!37 = !DILocation(line: 51, column: 1, scope: !20)
!38 = distinct !DISubprogram(name: "trecurse", scope: !1, file: !1, line: 29, type: !39, isLocal: true, isDefinition: true, scopeLine: 32, isOptimized: true, unit: !0, retainedNodes: !41)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !4, !23}
!41 = !{!42, !43}
!42 = !DILocalVariable(name: "root", arg: 1, scope: !38, file: !1, line: 30, type: !4)
!43 = !DILocalVariable(name: "free_action", arg: 2, scope: !38, file: !1, line: 31, type: !23)
!44 = !DILocation(line: 30, column: 10, scope: !38)
!45 = !DILocation(line: 31, column: 9, scope: !38)
!46 = !DILocation(line: 33, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 33, column: 7)
!48 = !{!49, !50, i64 8}
!49 = !{!"node", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 33, column: 19, scope: !47)
!54 = !DILocation(line: 33, column: 7, scope: !38)
!55 = !DILocation(line: 34, column: 5, scope: !47)
!56 = !DILocation(line: 35, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !38, file: !1, line: 35, column: 7)
!58 = !{!49, !50, i64 16}
!59 = !DILocation(line: 35, column: 19, scope: !57)
!60 = !DILocation(line: 35, column: 7, scope: !38)
!61 = !DILocation(line: 36, column: 5, scope: !57)
!62 = !DILocation(line: 38, column: 34, scope: !38)
!63 = !{!49, !50, i64 0}
!64 = !DILocation(line: 38, column: 3, scope: !38)
!65 = !DILocation(line: 39, column: 8, scope: !38)
!66 = !DILocation(line: 39, column: 3, scope: !38)
!67 = !DILocation(line: 40, column: 1, scope: !38)
