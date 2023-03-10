; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcschr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcschr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcschr(i32* readonly, i32) local_unnamed_addr #0 !dbg !12 {
  br label %3, !dbg !23

; <label>:3:                                      ; preds = %7, %2
  %4 = phi i32* [ %0, %2 ], [ %8, %7 ], !dbg !24
  %5 = load i32, i32* %4, align 4, !dbg !25, !tbaa !28
  %6 = icmp eq i32 %5, %1, !dbg !32
  br i1 %6, label %10, label %7, !dbg !33

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !34
  %9 = icmp eq i32 %5, 0, !dbg !35
  br i1 %9, label %10, label %3, !dbg !35, !llvm.loop !36

; <label>:10:                                     ; preds = %7, %3
  %11 = phi i32* [ %4, %3 ], [ null, %7 ], !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  ret i32* %11, !dbg !38
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcschr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "wcschr", scope: !1, file: !1, line: 66, type: !13, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15, !5}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 66, type: !15)
!19 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !1, line: 66, type: !5)
!20 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 70, type: !15)
!21 = !DILocation(line: 66, column: 1, scope: !12)
!22 = !DILocation(line: 70, column: 19, scope: !12)
!23 = !DILocation(line: 73, column: 3, scope: !12)
!24 = !DILocation(line: 0, scope: !12)
!25 = !DILocation(line: 75, column: 11, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 75, column: 11)
!27 = distinct !DILexicalBlock(scope: !12, file: !1, line: 74, column: 5)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 75, column: 14, scope: !26)
!33 = !DILocation(line: 75, column: 11, scope: !27)
!34 = !DILocation(line: 80, column: 16, scope: !12)
!35 = !DILocation(line: 80, column: 5, scope: !27)
!36 = distinct !{!36, !23, !37}
!37 = !DILocation(line: 80, column: 18, scope: !12)
!38 = !DILocation(line: 82, column: 1, scope: !12)
