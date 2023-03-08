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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @__call_exitprocs(i32, i8* readnone) local_unnamed_addr #0 !dbg !16 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  %3 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !58, !tbaa !59
  %4 = getelementptr inbounds %struct._reent, %struct._reent* %3, i64 0, i32 17, !dbg !58
  %5 = load %struct._atexit*, %struct._atexit** %4, align 8, !dbg !58, !tbaa !63
  %6 = icmp eq %struct._atexit* %5, null, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %6, label %69, label %7, !dbg !71

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i8* %1, null
  br label %9, !dbg !71

; <label>:9:                                      ; preds = %7, %62
  %10 = phi %struct._atexit* [ %5, %7 ], [ %59, %62 ]
  %11 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 1, !dbg !73
  %12 = load i32, i32* %11, align 8, !dbg !73, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  %13 = icmp sgt i32 %12, 0, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %13, label %14, label %69, !dbg !78

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 3, i32 2
  %16 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 3, i32 3
  %17 = sext i32 %12 to i64, !dbg !78
  br label %18, !dbg !78

; <label>:18:                                     ; preds = %14, %66
  %19 = phi i32 [ %12, %14 ], [ %67, %66 ]
  %20 = phi i64 [ %17, %14 ], [ %22, %66 ]
  %21 = phi i32 [ %12, %14 ], [ %23, %66 ]
  %22 = add nsw i64 %20, -1, !dbg !79
  %23 = add nsw i32 %21, -1, !dbg !79
  %24 = trunc i64 %22 to i32, !dbg !80
  %25 = shl i32 1, %24, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %8, label %30, label %26, !dbg !82

; <label>:26:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  %27 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 3, i32 1, i64 %22, !dbg !85
  %28 = load i8*, i8** %27, align 8, !dbg !85, !tbaa !59
  %29 = icmp eq i8* %28, %1, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %29, label %30, label %64, !dbg !87

; <label>:30:                                     ; preds = %26, %18
  %31 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 2, i64 %22, !dbg !88
  %32 = load void ()*, void ()** %31, align 8, !dbg !88, !tbaa !59
  %33 = icmp eq i32 %21, %19, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %33, label %34, label %35, !dbg !92

; <label>:34:                                     ; preds = %30
  store i32 %23, i32* %11, align 8, !dbg !93, !tbaa !74
  br label %36, !dbg !94

; <label>:35:                                     ; preds = %30
  store void ()* null, void ()** %31, align 8, !dbg !95, !tbaa !59
  br label %36

; <label>:36:                                     ; preds = %35, %34
  %37 = phi i32 [ %19, %35 ], [ %23, %34 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = icmp eq void ()* %32, null, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %38, label %66, label %39, !dbg !98

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %15, align 8, !dbg !102, !tbaa !103
  %41 = and i32 %40, %25, !dbg !104
  %42 = icmp eq i32 %41, 0, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !106
  br i1 %42, label %43, label %44, !dbg !106

; <label>:43:                                     ; preds = %39
  tail call void %32() #2, !dbg !107
  br label %56, !dbg !107

; <label>:44:                                     ; preds = %39
  %45 = load i32, i32* %16, align 4, !dbg !108, !tbaa !110
  %46 = and i32 %45, %25, !dbg !111
  %47 = icmp eq i32 %46, 0, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %47, label %48, label %52, !dbg !113

; <label>:48:                                     ; preds = %44
  %49 = bitcast void ()* %32 to void (i32, i8*)*, !dbg !114
  %50 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 3, i32 0, i64 %22, !dbg !115
  %51 = load i8*, i8** %50, align 8, !dbg !115, !tbaa !59
  tail call void %49(i32 %0, i8* %51) #2, !dbg !116
  br label %56, !dbg !116

; <label>:52:                                     ; preds = %44
  %53 = bitcast void ()* %32 to void (i8*)*, !dbg !117
  %54 = getelementptr inbounds %struct._atexit, %struct._atexit* %10, i64 0, i32 3, i32 0, i64 %22, !dbg !118
  %55 = load i8*, i8** %54, align 8, !dbg !118, !tbaa !59
  tail call void %53(i8* %55) #2, !dbg !119
  br label %56

; <label>:56:                                     ; preds = %48, %52, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %57 = load i32, i32* %11, align 8, !dbg !120, !tbaa !74
  %58 = icmp eq i32 %37, %57, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  %59 = load %struct._atexit*, %struct._atexit** %4, align 8, !dbg !124, !tbaa !59
  br i1 %58, label %60, label %62, !dbg !123

; <label>:60:                                     ; preds = %56
  %61 = icmp eq %struct._atexit* %59, %10, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %61, label %64, label %62, !dbg !126

; <label>:62:                                     ; preds = %60, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %63 = icmp eq %struct._atexit* %59, null, !dbg !71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  br i1 %63, label %69, label %9, !dbg !71

; <label>:64:                                     ; preds = %60, %26
  %65 = phi i32 [ %19, %26 ], [ %37, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br label %66

; <label>:66:                                     ; preds = %64, %36
  %67 = phi i32 [ %37, %36 ], [ %65, %64 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  %68 = icmp sgt i64 %20, 1, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %68, label %18, label %69, !dbg !78, !llvm.loop !130

; <label>:69:                                     ; preds = %62, %9, %66, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  ret void, !dbg !132
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
!57 = !DILocation(line: 80, column: 3, scope: !16)
!58 = !DILocation(line: 85, column: 7, scope: !16)
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!64, !60, i64 504}
!64 = !{!"_reent", !65, i64 0, !60, i64 8, !60, i64 16, !60, i64 24, !65, i64 32, !61, i64 36, !65, i64 64, !60, i64 72, !65, i64 80, !60, i64 88, !60, i64 96, !65, i64 104, !60, i64 112, !60, i64 120, !65, i64 128, !60, i64 136, !61, i64 144, !60, i64 504, !66, i64 512, !60, i64 1304, !68, i64 1312, !61, i64 1336}
!65 = !{!"int", !61, i64 0}
!66 = !{!"_atexit", !60, i64 0, !65, i64 8, !61, i64 16, !67, i64 272}
!67 = !{!"_on_exit_args", !61, i64 0, !61, i64 256, !65, i64 512, !65, i64 516}
!68 = !{!"_glue", !60, i64 0, !65, i64 8, !60, i64 16}
!69 = !DILocation(line: 71, column: 28, scope: !16)
!70 = !DILocation(line: 72, column: 20, scope: !16)
!71 = !DILocation(line: 87, column: 3, scope: !16)
!72 = !DILocation(line: 73, column: 35, scope: !16)
!73 = !DILocation(line: 94, column: 19, scope: !54)
!74 = !{!66, !65, i64 8}
!75 = !DILocation(line: 74, column: 16, scope: !16)
!76 = !DILocation(line: 94, column: 12, scope: !54)
!77 = !DILocation(line: 94, column: 31, scope: !53)
!78 = !DILocation(line: 94, column: 7, scope: !54)
!79 = !DILocation(line: 0, scope: !53)
!80 = !DILocation(line: 98, column: 10, scope: !52)
!81 = !DILocation(line: 75, column: 7, scope: !16)
!82 = !DILocation(line: 101, column: 10, scope: !83)
!83 = distinct !DILexicalBlock(scope: !52, file: !1, line: 101, column: 8)
!84 = !DILocation(line: 101, column: 20, scope: !83)
!85 = !DILocation(line: 101, column: 23, scope: !83)
!86 = !DILocation(line: 101, column: 44, scope: !83)
!87 = !DILocation(line: 101, column: 8, scope: !52)
!88 = !DILocation(line: 106, column: 9, scope: !52)
!89 = !DILocation(line: 76, column: 10, scope: !16)
!90 = !DILocation(line: 107, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !52, file: !1, line: 107, column: 8)
!92 = !DILocation(line: 107, column: 8, scope: !52)
!93 = !DILocation(line: 108, column: 13, scope: !91)
!94 = !DILocation(line: 108, column: 6, scope: !91)
!95 = !DILocation(line: 110, column: 17, scope: !91)
!96 = !DILocation(line: 113, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !52, file: !1, line: 113, column: 8)
!98 = !DILocation(line: 113, column: 8, scope: !52)
!99 = !DILocation(line: 0, scope: !100)
!100 = distinct !DILexicalBlock(scope: !52, file: !1, line: 119, column: 8)
!101 = !DILocation(line: 96, column: 8, scope: !52)
!102 = !DILocation(line: 119, column: 24, scope: !100)
!103 = !{!67, !65, i64 512}
!104 = !DILocation(line: 119, column: 33, scope: !100)
!105 = !DILocation(line: 119, column: 38, scope: !100)
!106 = !DILocation(line: 119, column: 8, scope: !52)
!107 = !DILocation(line: 120, column: 6, scope: !100)
!108 = !DILocation(line: 121, column: 20, scope: !109)
!109 = distinct !DILexicalBlock(scope: !100, file: !1, line: 121, column: 13)
!110 = !{!67, !65, i64 516}
!111 = !DILocation(line: 121, column: 28, scope: !109)
!112 = !DILocation(line: 121, column: 33, scope: !109)
!113 = !DILocation(line: 121, column: 13, scope: !100)
!114 = !DILocation(line: 122, column: 7, scope: !109)
!115 = !DILocation(line: 122, column: 42, scope: !109)
!116 = !DILocation(line: 122, column: 6, scope: !109)
!117 = !DILocation(line: 124, column: 7, scope: !109)
!118 = !DILocation(line: 124, column: 31, scope: !109)
!119 = !DILocation(line: 124, column: 6, scope: !109)
!120 = !DILocation(line: 129, column: 18, scope: !121)
!121 = distinct !DILexicalBlock(scope: !52, file: !1, line: 129, column: 8)
!122 = !DILocation(line: 129, column: 12, scope: !121)
!123 = !DILocation(line: 129, column: 23, scope: !121)
!124 = !DILocation(line: 0, scope: !16)
!125 = !DILocation(line: 129, column: 33, scope: !121)
!126 = !DILocation(line: 129, column: 8, scope: !52)
!127 = !DILocation(line: 130, column: 6, scope: !121)
!128 = !DILocation(line: 0, scope: !83)
!129 = !DILocation(line: 94, column: 7, scope: !53)
!130 = distinct !{!130, !78, !131}
!131 = !DILocation(line: 131, column: 2, scope: !54)
!132 = !DILocation(line: 165, column: 1, scope: !16)
