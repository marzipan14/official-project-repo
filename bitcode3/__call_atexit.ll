; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__call_atexit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__call_atexit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@_global_impure_ptr = external dso_local local_unnamed_addr constant %struct._reent*, align 8

; Function Attrs: noredzone nounwind
define dso_local void @__call_exitprocs(i32, i8* readnone) local_unnamed_addr #0 !dbg !16 {
  %3 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !57, !tbaa !58
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 17, !dbg !57
  %5 = load %struct._atexit*, %struct._atexit** %4, align 8, !dbg !57, !tbaa !62
  %6 = icmp eq %struct._atexit* %5, null, !dbg !70
  br i1 %6, label %67, label %7, !dbg !70

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i8* %1, null
  br label %11, !dbg !70

; <label>:9:                                      ; preds = %58
  %10 = icmp eq %struct._atexit* %61, null, !dbg !70
  br i1 %10, label %67, label %11, !dbg !70

; <label>:11:                                     ; preds = %7, %9
  %12 = phi %struct._atexit* [ %5, %7 ], [ %61, %9 ]
  %13 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 1, !dbg !72
  %14 = load i32, i32* %13, align 8, !dbg !72, !tbaa !73
  %15 = icmp sgt i32 %14, 0, !dbg !75
  br i1 %15, label %16, label %67, !dbg !76

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 2
  %18 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 3
  %19 = sext i32 %14 to i64, !dbg !76
  br label %20, !dbg !76

; <label>:20:                                     ; preds = %16, %64
  %21 = phi i32 [ %14, %16 ], [ %65, %64 ]
  %22 = phi i64 [ %19, %16 ], [ %24, %64 ]
  %23 = phi i32 [ %14, %16 ], [ %25, %64 ]
  %24 = add nsw i64 %22, -1, !dbg !77
  %25 = add nsw i32 %23, -1, !dbg !77
  %26 = trunc i64 %24 to i32, !dbg !78
  %27 = shl i32 1, %26, !dbg !78
  br i1 %8, label %32, label %28, !dbg !80

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 1, i64 %24, !dbg !82
  %30 = load i8*, i8** %29, align 8, !dbg !82, !tbaa !58
  %31 = icmp eq i8* %30, %1, !dbg !83
  br i1 %31, label %32, label %64, !dbg !84

; <label>:32:                                     ; preds = %28, %20
  %33 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 2, i64 %24, !dbg !85
  %34 = load void ()*, void ()** %33, align 8, !dbg !85, !tbaa !58
  %35 = icmp eq i32 %23, %21, !dbg !87
  br i1 %35, label %36, label %37, !dbg !89

; <label>:36:                                     ; preds = %32
  store i32 %25, i32* %13, align 8, !dbg !90, !tbaa !73
  br label %38, !dbg !91

; <label>:37:                                     ; preds = %32
  store void ()* null, void ()** %33, align 8, !dbg !92, !tbaa !58
  br label %38

; <label>:38:                                     ; preds = %37, %36
  %39 = phi i32 [ %21, %37 ], [ %25, %36 ]
  %40 = icmp eq void ()* %34, null, !dbg !93
  br i1 %40, label %64, label %41, !dbg !95

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %17, align 8, !dbg !97, !tbaa !99
  %43 = and i32 %42, %27, !dbg !100
  %44 = icmp eq i32 %43, 0, !dbg !101
  br i1 %44, label %45, label %46, !dbg !102

; <label>:45:                                     ; preds = %41
  tail call void %34() #2, !dbg !103
  br label %58, !dbg !103

; <label>:46:                                     ; preds = %41
  %47 = load i32, i32* %18, align 4, !dbg !104, !tbaa !106
  %48 = and i32 %47, %27, !dbg !107
  %49 = icmp eq i32 %48, 0, !dbg !108
  br i1 %49, label %50, label %54, !dbg !109

; <label>:50:                                     ; preds = %46
  %51 = bitcast void ()* %34 to void (i32, i8*)*, !dbg !110
  %52 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 0, i64 %24, !dbg !111
  %53 = load i8*, i8** %52, align 8, !dbg !111, !tbaa !58
  tail call void %51(i32 %0, i8* %53) #2, !dbg !112
  br label %58, !dbg !112

; <label>:54:                                     ; preds = %46
  %55 = bitcast void ()* %34 to void (i8*)*, !dbg !113
  %56 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 0, i64 %24, !dbg !114
  %57 = load i8*, i8** %56, align 8, !dbg !114, !tbaa !58
  tail call void %55(i8* %57) #2, !dbg !115
  br label %58

; <label>:58:                                     ; preds = %50, %54, %45
  %59 = load i32, i32* %13, align 8, !dbg !116, !tbaa !73
  %60 = icmp eq i32 %39, %59, !dbg !118
  %61 = load %struct._atexit*, %struct._atexit** %4, align 8, !dbg !119, !tbaa !58
  %62 = icmp eq %struct._atexit* %61, %12, !dbg !120
  %63 = and i1 %60, %62, !dbg !121
  br i1 %63, label %64, label %9, !dbg !121

; <label>:64:                                     ; preds = %58, %38, %28
  %65 = phi i32 [ %39, %38 ], [ %21, %28 ], [ %39, %58 ]
  %66 = icmp sgt i64 %22, 1, !dbg !75
  br i1 %66, label %20, label %67, !dbg !76, !llvm.loop !122

; <label>:67:                                     ; preds = %9, %11, %64, %2
  ret void, !dbg !124
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__call_atexit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DISubroutineType(types: !6)
!6 = !{null, !7, !8}
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !8}
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "__call_exitprocs", scope: !1, file: !1, line: 68, type: !5, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!17 = !{!18, !19, !20, !44, !46, !48, !49, !50, !51}
!18 = !DILocalVariable(name: "code", arg: 1, scope: !16, file: !1, line: 68, type: !7)
!19 = !DILocalVariable(name: "d", arg: 2, scope: !16, file: !1, line: 68, type: !8)
!20 = !DILocalVariable(name: "p", scope: !16, file: !1, line: 71, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !23, line: 93, size: 6336, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !27, !34}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !22, file: !23, line: 94, baseType: !21, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !22, file: !23, line: 95, baseType: !7, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !22, file: !23, line: 97, baseType: !28, size: 2048, offset: 128)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 2048, elements: !32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !{!33}
!33 = !DISubrange(count: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !22, file: !23, line: 98, baseType: !35, size: 4160, offset: 2176)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !23, line: 74, size: 4160, elements: !36)
!36 = !{!37, !39, !40, !43}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !35, file: !23, line: 75, baseType: !38, size: 2048)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !35, file: !23, line: 76, baseType: !38, size: 2048, offset: 2048)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !35, file: !23, line: 78, baseType: !41, size: 32, offset: 4096)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !23, line: 25, baseType: !42)
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !35, file: !23, line: 81, baseType: !41, size: 32, offset: 4128)
!44 = !DILocalVariable(name: "lastp", scope: !16, file: !1, line: 72, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!46 = !DILocalVariable(name: "args", scope: !16, file: !1, line: 73, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!48 = !DILocalVariable(name: "n", scope: !16, file: !1, line: 74, type: !7)
!49 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 75, type: !7)
!50 = !DILocalVariable(name: "fn", scope: !16, file: !1, line: 76, type: !29)
!51 = !DILocalVariable(name: "ind", scope: !52, file: !1, line: 96, type: !7)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 95, column: 2)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 94, column: 7)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 94, column: 7)
!55 = distinct !DILexicalBlock(scope: !16, file: !1, line: 88, column: 5)
!56 = !DILocation(line: 68, column: 1, scope: !16)
!57 = !DILocation(line: 85, column: 7, scope: !16)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!63, !59, i64 504}
!63 = !{!"_reent", !64, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !64, i64 32, !60, i64 36, !64, i64 64, !59, i64 72, !64, i64 80, !59, i64 88, !59, i64 96, !64, i64 104, !59, i64 112, !59, i64 120, !64, i64 128, !59, i64 136, !60, i64 144, !59, i64 504, !65, i64 512, !59, i64 1304, !67, i64 1312, !60, i64 1336}
!64 = !{!"int", !60, i64 0}
!65 = !{!"_atexit", !59, i64 0, !64, i64 8, !60, i64 16, !66, i64 272}
!66 = !{!"_on_exit_args", !60, i64 0, !60, i64 256, !64, i64 512, !64, i64 516}
!67 = !{!"_glue", !59, i64 0, !64, i64 8, !59, i64 16}
!68 = !DILocation(line: 71, column: 28, scope: !16)
!69 = !DILocation(line: 72, column: 20, scope: !16)
!70 = !DILocation(line: 87, column: 3, scope: !16)
!71 = !DILocation(line: 73, column: 35, scope: !16)
!72 = !DILocation(line: 94, column: 19, scope: !54)
!73 = !{!65, !64, i64 8}
!74 = !DILocation(line: 74, column: 16, scope: !16)
!75 = !DILocation(line: 94, column: 31, scope: !53)
!76 = !DILocation(line: 94, column: 7, scope: !54)
!77 = !DILocation(line: 0, scope: !53)
!78 = !DILocation(line: 98, column: 10, scope: !52)
!79 = !DILocation(line: 75, column: 7, scope: !16)
!80 = !DILocation(line: 101, column: 10, scope: !81)
!81 = distinct !DILexicalBlock(scope: !52, file: !1, line: 101, column: 8)
!82 = !DILocation(line: 101, column: 23, scope: !81)
!83 = !DILocation(line: 101, column: 44, scope: !81)
!84 = !DILocation(line: 101, column: 8, scope: !52)
!85 = !DILocation(line: 106, column: 9, scope: !52)
!86 = !DILocation(line: 76, column: 10, scope: !16)
!87 = !DILocation(line: 107, column: 10, scope: !88)
!88 = distinct !DILexicalBlock(scope: !52, file: !1, line: 107, column: 8)
!89 = !DILocation(line: 107, column: 8, scope: !52)
!90 = !DILocation(line: 108, column: 13, scope: !88)
!91 = !DILocation(line: 108, column: 6, scope: !88)
!92 = !DILocation(line: 110, column: 17, scope: !88)
!93 = !DILocation(line: 113, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !52, file: !1, line: 113, column: 8)
!95 = !DILocation(line: 113, column: 8, scope: !52)
!96 = !DILocation(line: 96, column: 8, scope: !52)
!97 = !DILocation(line: 119, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !52, file: !1, line: 119, column: 8)
!99 = !{!66, !64, i64 512}
!100 = !DILocation(line: 119, column: 33, scope: !98)
!101 = !DILocation(line: 119, column: 38, scope: !98)
!102 = !DILocation(line: 119, column: 8, scope: !52)
!103 = !DILocation(line: 120, column: 6, scope: !98)
!104 = !DILocation(line: 121, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 121, column: 13)
!106 = !{!66, !64, i64 516}
!107 = !DILocation(line: 121, column: 28, scope: !105)
!108 = !DILocation(line: 121, column: 33, scope: !105)
!109 = !DILocation(line: 121, column: 13, scope: !98)
!110 = !DILocation(line: 122, column: 7, scope: !105)
!111 = !DILocation(line: 122, column: 42, scope: !105)
!112 = !DILocation(line: 122, column: 6, scope: !105)
!113 = !DILocation(line: 124, column: 7, scope: !105)
!114 = !DILocation(line: 124, column: 31, scope: !105)
!115 = !DILocation(line: 124, column: 6, scope: !105)
!116 = !DILocation(line: 129, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !52, file: !1, line: 129, column: 8)
!118 = !DILocation(line: 129, column: 12, scope: !117)
!119 = !DILocation(line: 0, scope: !16)
!120 = !DILocation(line: 129, column: 33, scope: !117)
!121 = !DILocation(line: 129, column: 23, scope: !117)
!122 = distinct !{!122, !76, !123}
!123 = !DILocation(line: 131, column: 2, scope: !54)
!124 = !DILocation(line: 165, column: 1, scope: !16)
