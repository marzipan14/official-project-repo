; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tfind.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tfind.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8*, %struct.node*, %struct.node* }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @tfind(i8*, i8** readonly, i32 (i8*, i8*)* nocapture) local_unnamed_addr #0 !dbg !21 {
  %4 = bitcast i8** %1 to %struct.node**, !dbg !39
  %5 = icmp eq i8** %1, null, !dbg !41
  br i1 %5, label %27, label %6, !dbg !43

; <label>:6:                                      ; preds = %3
  %7 = load %struct.node*, %struct.node** %4, align 8, !dbg !44, !tbaa !45
  %8 = icmp eq %struct.node* %7, null, !dbg !49
  br i1 %8, label %27, label %9, !dbg !50

; <label>:9:                                      ; preds = %6, %19
  %10 = phi %struct.node* [ %25, %19 ], [ %7, %6 ]
  %11 = phi %struct.node** [ %24, %19 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.node, %struct.node* %10, i64 0, i32 0, !dbg !51
  %13 = load i8*, i8** %12, align 8, !dbg !51, !tbaa !53
  %14 = tail call i32 %2(i8* %0, i8* %13) #2, !dbg !55
  %15 = icmp eq i32 %14, 0, !dbg !57
  br i1 %15, label %16, label %19, !dbg !58

; <label>:16:                                     ; preds = %9
  %17 = bitcast %struct.node** %11 to i8**, !dbg !59
  %18 = load i8*, i8** %17, align 8, !dbg !59, !tbaa !45
  br label %27

; <label>:19:                                     ; preds = %9
  %20 = icmp slt i32 %14, 0, !dbg !60
  %21 = load %struct.node*, %struct.node** %11, align 8, !dbg !61, !tbaa !45
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 1, !dbg !62
  %23 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 2, !dbg !63
  %24 = select i1 %20, %struct.node** %22, %struct.node** %23, !dbg !64
  %25 = load %struct.node*, %struct.node** %24, align 8, !dbg !44, !tbaa !45
  %26 = icmp eq %struct.node* %25, null, !dbg !49
  br i1 %26, label %27, label %9, !dbg !50

; <label>:27:                                     ; preds = %19, %6, %16, %3
  %28 = phi i8* [ null, %3 ], [ %18, %16 ], [ null, %6 ], [ null, %19 ], !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  ret i8* %28, !dbg !66
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/tfind.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = distinct !DISubprogram(name: "tfind", scope: !1, file: !1, line: 28, type: !22, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!22 = !DISubroutineType(types: !23)
!23 = !{!16, !24, !26, !27}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !24, !24}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DILocalVariable(name: "vkey", arg: 1, scope: !21, file: !1, line: 28, type: !24)
!33 = !DILocalVariable(name: "vrootp", arg: 2, scope: !21, file: !1, line: 28, type: !26)
!34 = !DILocalVariable(name: "compar", arg: 3, scope: !21, file: !1, line: 28, type: !27)
!35 = !DILocalVariable(name: "rootp", scope: !21, file: !1, line: 33, type: !4)
!36 = !DILocalVariable(name: "r", scope: !37, file: !1, line: 39, type: !30)
!37 = distinct !DILexicalBlock(scope: !21, file: !1, line: 38, column: 25)
!38 = !DILocation(line: 28, column: 1, scope: !21)
!39 = !DILocation(line: 33, column: 19, scope: !21)
!40 = !DILocation(line: 33, column: 11, scope: !21)
!41 = !DILocation(line: 35, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 6)
!43 = !DILocation(line: 35, column: 6, scope: !21)
!44 = !DILocation(line: 38, column: 9, scope: !21)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 38, column: 16, scope: !21)
!50 = !DILocation(line: 38, column: 2, scope: !21)
!51 = !DILocation(line: 41, column: 38, scope: !52)
!52 = distinct !DILexicalBlock(scope: !37, file: !1, line: 41, column: 7)
!53 = !{!54, !46, i64 0}
!54 = !{!"node", !46, i64 0, !46, i64 8, !46, i64 16}
!55 = !DILocation(line: 41, column: 12, scope: !52)
!56 = !DILocation(line: 39, column: 7, scope: !37)
!57 = !DILocation(line: 41, column: 44, scope: !52)
!58 = !DILocation(line: 41, column: 7, scope: !37)
!59 = !DILocation(line: 42, column: 11, scope: !52)
!60 = !DILocation(line: 43, column: 14, scope: !37)
!61 = !DILocation(line: 0, scope: !37)
!62 = !DILocation(line: 44, column: 18, scope: !37)
!63 = !DILocation(line: 45, column: 18, scope: !37)
!64 = !DILocation(line: 43, column: 11, scope: !37)
!65 = !DILocation(line: 0, scope: !21)
!66 = !DILocation(line: 48, column: 1, scope: !21)
