; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tsearch.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tsearch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8*, %struct.node*, %struct.node* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @tsearch(i8*, i8**, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0 !dbg !21 {
  %4 = bitcast i8** %1 to %struct.node**, !dbg !40
  %5 = icmp eq i8** %1, null, !dbg !42
  br i1 %5, label %36, label %6, !dbg !44

; <label>:6:                                      ; preds = %3
  %7 = load %struct.node*, %struct.node** %4, align 8, !dbg !45, !tbaa !46
  %8 = icmp eq %struct.node* %7, null, !dbg !50
  br i1 %8, label %27, label %9, !dbg !51

; <label>:9:                                      ; preds = %6, %19
  %10 = phi %struct.node* [ %25, %19 ], [ %7, %6 ]
  %11 = phi %struct.node** [ %24, %19 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.node, %struct.node* %10, i64 0, i32 0, !dbg !52
  %13 = load i8*, i8** %12, align 8, !dbg !52, !tbaa !54
  %14 = tail call i32 %2(i8* %0, i8* %13) #3, !dbg !56
  %15 = icmp eq i32 %14, 0, !dbg !58
  br i1 %15, label %16, label %19, !dbg !59

; <label>:16:                                     ; preds = %9
  %17 = bitcast %struct.node** %11 to i8**, !dbg !60
  %18 = load i8*, i8** %17, align 8, !dbg !60, !tbaa !46
  br label %36

; <label>:19:                                     ; preds = %9
  %20 = icmp slt i32 %14, 0, !dbg !61
  %21 = load %struct.node*, %struct.node** %11, align 8, !dbg !62, !tbaa !46
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 1, !dbg !63
  %23 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 2, !dbg !64
  %24 = select i1 %20, %struct.node** %22, %struct.node** %23, !dbg !65
  %25 = load %struct.node*, %struct.node** %24, align 8, !dbg !45, !tbaa !46
  %26 = icmp eq %struct.node* %25, null, !dbg !50
  br i1 %26, label %27, label %9, !dbg !51

; <label>:27:                                     ; preds = %19, %6
  %28 = phi %struct.node** [ %4, %6 ], [ %24, %19 ], !dbg !41
  %29 = tail call i8* @malloc(i64 24) #3, !dbg !66
  %30 = icmp eq i8* %29, null, !dbg !67
  br i1 %30, label %36, label %31, !dbg !69

; <label>:31:                                     ; preds = %27
  %32 = bitcast %struct.node** %28 to i8**, !dbg !71
  store i8* %29, i8** %32, align 8, !dbg !71, !tbaa !46
  %33 = bitcast i8* %29 to i8**, !dbg !73
  store i8* %0, i8** %33, align 8, !dbg !74, !tbaa !54
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !75
  %35 = bitcast i8* %34 to <2 x %struct.node*>*, !dbg !76
  store <2 x %struct.node*> zeroinitializer, <2 x %struct.node*>* %35, align 8, !dbg !76, !tbaa !46
  br label %36, !dbg !77

; <label>:36:                                     ; preds = %16, %31, %27, %3
  %37 = phi i8* [ null, %3 ], [ null, %27 ], [ %29, %31 ], [ %18, %16 ], !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  ret i8* %37, !dbg !79
}

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tsearch.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = distinct !DISubprogram(name: "tsearch", scope: !1, file: !1, line: 28, type: !22, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24, !26, !27}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !24, !24}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37}
!32 = !DILocalVariable(name: "vkey", arg: 1, scope: !21, file: !1, line: 28, type: !24)
!33 = !DILocalVariable(name: "vrootp", arg: 2, scope: !21, file: !1, line: 28, type: !26)
!34 = !DILocalVariable(name: "compar", arg: 3, scope: !21, file: !1, line: 28, type: !27)
!35 = !DILocalVariable(name: "q", scope: !21, file: !1, line: 33, type: !5)
!36 = !DILocalVariable(name: "rootp", scope: !21, file: !1, line: 34, type: !4)
!37 = !DILocalVariable(name: "r", scope: !38, file: !1, line: 40, type: !30)
!38 = distinct !DILexicalBlock(scope: !21, file: !1, line: 39, column: 25)
!39 = !DILocation(line: 28, column: 1, scope: !21)
!40 = !DILocation(line: 34, column: 19, scope: !21)
!41 = !DILocation(line: 34, column: 11, scope: !21)
!42 = !DILocation(line: 36, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !21, file: !1, line: 36, column: 6)
!44 = !DILocation(line: 36, column: 6, scope: !21)
!45 = !DILocation(line: 39, column: 9, scope: !21)
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 39, column: 16, scope: !21)
!51 = !DILocation(line: 39, column: 2, scope: !21)
!52 = !DILocation(line: 42, column: 38, scope: !53)
!53 = distinct !DILexicalBlock(scope: !38, file: !1, line: 42, column: 7)
!54 = !{!55, !47, i64 0}
!55 = !{!"node", !47, i64 0, !47, i64 8, !47, i64 16}
!56 = !DILocation(line: 42, column: 12, scope: !53)
!57 = !DILocation(line: 40, column: 7, scope: !38)
!58 = !DILocation(line: 42, column: 44, scope: !53)
!59 = !DILocation(line: 42, column: 7, scope: !38)
!60 = !DILocation(line: 43, column: 11, scope: !53)
!61 = !DILocation(line: 45, column: 14, scope: !38)
!62 = !DILocation(line: 0, scope: !38)
!63 = !DILocation(line: 46, column: 18, scope: !38)
!64 = !DILocation(line: 47, column: 18, scope: !38)
!65 = !DILocation(line: 45, column: 11, scope: !38)
!66 = !DILocation(line: 50, column: 6, scope: !21)
!67 = !DILocation(line: 51, column: 8, scope: !68)
!68 = distinct !DILexicalBlock(scope: !21, file: !1, line: 51, column: 6)
!69 = !DILocation(line: 51, column: 6, scope: !21)
!70 = !DILocation(line: 33, column: 10, scope: !21)
!71 = !DILocation(line: 52, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 51, column: 14)
!73 = !DILocation(line: 54, column: 6, scope: !72)
!74 = !DILocation(line: 54, column: 10, scope: !72)
!75 = !DILocation(line: 55, column: 6, scope: !72)
!76 = !DILocation(line: 55, column: 12, scope: !72)
!77 = !DILocation(line: 56, column: 2, scope: !72)
!78 = !DILocation(line: 0, scope: !21)
!79 = !DILocation(line: 58, column: 1, scope: !21)
