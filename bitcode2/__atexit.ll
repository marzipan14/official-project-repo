; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__atexit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__atexit.c"
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
define dso_local i32 @__register_exitproc(i32, void ()*, i8*, i8*) local_unnamed_addr #0 !dbg !16 {
  %5 = load %struct._reent*, %struct._reent** @_global_impure_ptr, align 8, !dbg !51, !tbaa !52
  %6 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 17, !dbg !51
  %7 = load %struct._atexit*, %struct._atexit** %6, align 8, !dbg !51, !tbaa !56
  %8 = icmp eq %struct._atexit* %7, null, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %8, label %9, label %11, !dbg !65

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct._reent, %struct._reent* %5, i64 0, i32 18, !dbg !66
  store %struct._atexit* %10, %struct._atexit** %6, align 8, !dbg !68, !tbaa !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br label %11, !dbg !69

; <label>:11:                                     ; preds = %9, %4
  %12 = phi %struct._atexit* [ %10, %9 ], [ %7, %4 ], !dbg !70
  %13 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 1, !dbg !71
  %14 = load i32, i32* %13, align 8, !dbg !71, !tbaa !73
  %15 = icmp sgt i32 %14, 31, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %15, label %34, label %16, !dbg !75

; <label>:16:                                     ; preds = %11
  %17 = icmp eq i32 %0, 0, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  %18 = sext i32 %14 to i64, !dbg !79
  br i1 %17, label %31, label %19, !dbg !78

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 0, i64 %18, !dbg !81
  store i8* %2, i8** %20, align 8, !dbg !82, !tbaa !52
  %21 = shl i32 1, %14, !dbg !83
  %22 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 2, !dbg !84
  %23 = load i32, i32* %22, align 8, !dbg !85, !tbaa !86
  %24 = or i32 %23, %21, !dbg !85
  store i32 %24, i32* %22, align 8, !dbg !85, !tbaa !86
  %25 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 1, i64 %18, !dbg !87
  store i8* %3, i8** %25, align 8, !dbg !88, !tbaa !52
  %26 = icmp eq i32 %0, 2, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  br i1 %26, label %27, label %31, !dbg !91

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 3, i32 3, !dbg !93
  %29 = load i32, i32* %28, align 4, !dbg !94, !tbaa !95
  %30 = or i32 %29, %21, !dbg !94
  store i32 %30, i32* %28, align 4, !dbg !94, !tbaa !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br label %31, !dbg !96

; <label>:31:                                     ; preds = %16, %19, %27
  %32 = add nsw i32 %14, 1, !dbg !97
  store i32 %32, i32* %13, align 8, !dbg !97, !tbaa !73
  %33 = getelementptr inbounds %struct._atexit, %struct._atexit* %12, i64 0, i32 2, i64 %18, !dbg !98
  store void ()* %1, void ()** %33, align 8, !dbg !99, !tbaa !52
  br label %34, !dbg !100

; <label>:34:                                     ; preds = %11, %31
  %35 = phi i32 [ 0, %31 ], [ -1, %11 ], !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !103
  ret i32 %35, !dbg !103
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !10)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/__atexit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__atexit_types", file: !4, line: 5, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/atexit.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "__et_atexit", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "__et_onexit", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "__et_cxa", value: 2, isUnsigned: true)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "__register_exitproc", scope: !1, file: !1, line: 66, type: !17, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !19, !20, !11, !11}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{!24, !25, !26, !27, !28, !41}
!24 = !DILocalVariable(name: "type", arg: 1, scope: !16, file: !1, line: 66, type: !19)
!25 = !DILocalVariable(name: "fn", arg: 2, scope: !16, file: !1, line: 66, type: !20)
!26 = !DILocalVariable(name: "arg", arg: 3, scope: !16, file: !1, line: 66, type: !11)
!27 = !DILocalVariable(name: "d", arg: 4, scope: !16, file: !1, line: 66, type: !11)
!28 = !DILocalVariable(name: "args", scope: !16, file: !1, line: 73, type: !29)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !31, line: 74, size: 4160, elements: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33, !37, !38, !40}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !30, file: !31, line: 75, baseType: !34, size: 2048)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !30, file: !31, line: 76, baseType: !34, size: 2048, offset: 2048)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !30, file: !31, line: 78, baseType: !39, size: 32, offset: 4096)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !31, line: 25, baseType: !5)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !30, file: !31, line: 81, baseType: !39, size: 32, offset: 4128)
!41 = !DILocalVariable(name: "p", scope: !16, file: !1, line: 74, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !31, line: 93, size: 6336, elements: !44)
!44 = !{!45, !46, !47, !49}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !43, file: !31, line: 94, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !43, file: !31, line: 95, baseType: !19, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !43, file: !31, line: 97, baseType: !48, size: 2048, offset: 128)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !35)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !43, file: !31, line: 98, baseType: !30, size: 4160, offset: 2176)
!50 = !DILocation(line: 66, column: 1, scope: !16)
!51 = !DILocation(line: 80, column: 7, scope: !16)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !53, i64 504}
!57 = !{!"_reent", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !58, i64 32, !54, i64 36, !58, i64 64, !53, i64 72, !58, i64 80, !53, i64 88, !53, i64 96, !58, i64 104, !53, i64 112, !53, i64 120, !58, i64 128, !53, i64 136, !54, i64 144, !53, i64 504, !59, i64 512, !53, i64 1304, !61, i64 1312, !54, i64 1336}
!58 = !{!"int", !54, i64 0}
!59 = !{!"_atexit", !53, i64 0, !58, i64 8, !54, i64 16, !60, i64 272}
!60 = !{!"_on_exit_args", !54, i64 0, !54, i64 256, !58, i64 512, !58, i64 516}
!61 = !{!"_glue", !53, i64 0, !58, i64 8, !53, i64 16}
!62 = !DILocation(line: 74, column: 28, scope: !16)
!63 = !DILocation(line: 81, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !16, file: !1, line: 81, column: 7)
!65 = !DILocation(line: 81, column: 7, scope: !16)
!66 = !DILocation(line: 83, column: 28, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 82, column: 5)
!68 = !DILocation(line: 83, column: 22, scope: !67)
!69 = !DILocation(line: 89, column: 5, scope: !67)
!70 = !DILocation(line: 0, scope: !16)
!71 = !DILocation(line: 90, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !16, file: !1, line: 90, column: 7)
!73 = !{!59, !58, i64 8}
!74 = !DILocation(line: 90, column: 15, scope: !72)
!75 = !DILocation(line: 90, column: 7, scope: !16)
!76 = !DILocation(line: 128, column: 12, scope: !77)
!77 = distinct !DILexicalBlock(scope: !16, file: !1, line: 128, column: 7)
!78 = !DILocation(line: 128, column: 7, scope: !16)
!79 = !DILocation(line: 0, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 129, column: 5)
!81 = !DILocation(line: 158, column: 7, scope: !80)
!82 = !DILocation(line: 158, column: 30, scope: !80)
!83 = !DILocation(line: 159, column: 28, scope: !80)
!84 = !DILocation(line: 159, column: 13, scope: !80)
!85 = !DILocation(line: 159, column: 22, scope: !80)
!86 = !{!60, !58, i64 512}
!87 = !DILocation(line: 160, column: 7, scope: !80)
!88 = !DILocation(line: 160, column: 34, scope: !80)
!89 = !DILocation(line: 161, column: 16, scope: !90)
!90 = distinct !DILexicalBlock(scope: !80, file: !1, line: 161, column: 11)
!91 = !DILocation(line: 161, column: 11, scope: !80)
!92 = !DILocation(line: 73, column: 26, scope: !16)
!93 = !DILocation(line: 162, column: 8, scope: !90)
!94 = !DILocation(line: 162, column: 16, scope: !90)
!95 = !{!60, !58, i64 516}
!96 = !DILocation(line: 162, column: 2, scope: !90)
!97 = !DILocation(line: 164, column: 18, scope: !16)
!98 = !DILocation(line: 164, column: 3, scope: !16)
!99 = !DILocation(line: 164, column: 22, scope: !16)
!100 = !DILocation(line: 168, column: 3, scope: !16)
!101 = !DILocation(line: 0, scope: !102)
!102 = distinct !DILexicalBlock(scope: !72, file: !1, line: 91, column: 5)
!103 = !DILocation(line: 169, column: 1, scope: !16)
