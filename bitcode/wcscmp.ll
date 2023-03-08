; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @wcscmp(i32* nocapture readonly, i32* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  br label %3, !dbg !19

; <label>:3:                                      ; preds = %9, %2
  %4 = phi i32* [ %0, %2 ], [ %11, %9 ]
  %5 = phi i32* [ %1, %2 ], [ %10, %9 ]
  %6 = load i32, i32* %4, align 4, !dbg !20, !tbaa !21
  %7 = load i32, i32* %5, align 4, !dbg !25, !tbaa !21
  %8 = icmp eq i32 %6, %7, !dbg !26
  br i1 %8, label %9, label %13, !dbg !19

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !27
  %11 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !28
  %12 = icmp eq i32 %6, 0, !dbg !30
  br i1 %12, label %15, label %3, !dbg !31, !llvm.loop !32

; <label>:13:                                     ; preds = %3
  %14 = sub nsw i32 %6, %7, !dbg !34
  br label %15, !dbg !35

; <label>:15:                                     ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ], !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  ret i32 %16, !dbg !37
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcscmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcscmp", scope: !1, file: !1, line: 74, type: !8, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17}
!16 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 74, type: !11)
!17 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 74, type: !11)
!18 = !DILocation(line: 74, column: 1, scope: !7)
!19 = !DILocation(line: 79, column: 3, scope: !7)
!20 = !DILocation(line: 79, column: 10, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 79, column: 17, scope: !7)
!26 = !DILocation(line: 79, column: 14, scope: !7)
!27 = !DILocation(line: 79, column: 20, scope: !7)
!28 = !DILocation(line: 80, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 80, column: 9)
!30 = !DILocation(line: 80, column: 15, scope: !29)
!31 = !DILocation(line: 80, column: 9, scope: !7)
!32 = distinct !{!32, !19, !33}
!33 = !DILocation(line: 81, column: 16, scope: !7)
!34 = !DILocation(line: 82, column: 15, scope: !7)
!35 = !DILocation(line: 82, column: 3, scope: !7)
!36 = !DILocation(line: 0, scope: !7)
!37 = !DILocation(line: 83, column: 1, scope: !7)
