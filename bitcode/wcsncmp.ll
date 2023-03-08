; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @wcsncmp(i32* nocapture readonly, i32* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !22
  br i1 %4, label %21, label %5, !dbg !24

; <label>:5:                                      ; preds = %3, %17
  %6 = phi i32* [ %18, %17 ], [ %0, %3 ]
  %7 = phi i32* [ %10, %17 ], [ %1, %3 ]
  %8 = phi i64 [ %19, %17 ], [ %2, %3 ]
  %9 = load i32, i32* %6, align 4, !dbg !25, !tbaa !28
  %10 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !32
  %11 = load i32, i32* %7, align 4, !dbg !33, !tbaa !28
  %12 = icmp eq i32 %9, %11, !dbg !34
  br i1 %12, label %15, label %13, !dbg !35

; <label>:13:                                     ; preds = %5
  %14 = sub nsw i32 %9, %11, !dbg !36
  br label %21, !dbg !38

; <label>:15:                                     ; preds = %5
  %16 = icmp eq i32 %9, 0, !dbg !39
  br i1 %16, label %21, label %17, !dbg !41

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !42
  %19 = add i64 %8, -1, !dbg !43
  %20 = icmp eq i64 %19, 0, !dbg !44
  br i1 %20, label %21, label %5, !dbg !45, !llvm.loop !46

; <label>:21:                                     ; preds = %15, %17, %3, %13
  %22 = phi i32 [ %14, %13 ], [ 0, %3 ], [ 0, %17 ], [ 0, %15 ], !dbg !49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  ret i32 %22, !dbg !50
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcsncmp", scope: !1, file: !1, line: 72, type: !8, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !15}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 58, baseType: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 72, type: !11)
!19 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 72, type: !11)
!20 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 72, type: !15)
!21 = !DILocation(line: 72, column: 1, scope: !7)
!22 = !DILocation(line: 78, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 78, column: 7)
!24 = !DILocation(line: 78, column: 7, scope: !7)
!25 = !DILocation(line: 82, column: 11, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 82, column: 11)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 81, column: 5)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 82, column: 21, scope: !26)
!33 = !DILocation(line: 82, column: 18, scope: !26)
!34 = !DILocation(line: 82, column: 15, scope: !26)
!35 = !DILocation(line: 82, column: 11, scope: !27)
!36 = !DILocation(line: 84, column: 16, scope: !37)
!37 = distinct !DILexicalBlock(scope: !26, file: !1, line: 83, column: 2)
!38 = !DILocation(line: 84, column: 4, scope: !37)
!39 = !DILocation(line: 86, column: 17, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !1, line: 86, column: 11)
!41 = !DILocation(line: 86, column: 11, scope: !27)
!42 = !DILocation(line: 86, column: 14, scope: !40)
!43 = !DILocation(line: 89, column: 10, scope: !7)
!44 = !DILocation(line: 89, column: 14, scope: !7)
!45 = !DILocation(line: 88, column: 5, scope: !27)
!46 = distinct !{!46, !47, !48}
!47 = !DILocation(line: 80, column: 3, scope: !7)
!48 = !DILocation(line: 89, column: 18, scope: !7)
!49 = !DILocation(line: 0, scope: !7)
!50 = !DILocation(line: 91, column: 1, scope: !7)
