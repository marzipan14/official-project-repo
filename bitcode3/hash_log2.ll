; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_log2.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_log2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @__log2(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp ugt i32 %0, 1, !dbg !20
  br i1 %2, label %3, label %9, !dbg !23

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %6, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %6 = shl i32 %4, 1, !dbg !24
  %7 = add i32 %5, 1, !dbg !25
  %8 = icmp ult i32 %6, %0, !dbg !20
  br i1 %8, label %3, label %9, !dbg !23, !llvm.loop !26

; <label>:9:                                      ; preds = %3, %1
  %10 = phi i32 [ 0, %1 ], [ %7, %3 ], !dbg !28
  ret i32 %10, !dbg !29
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/search/hash_log2.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__log2", scope: !1, file: !1, line: 47, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, isOptimized: true, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 79, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16}
!14 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 48, type: !10)
!15 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 50, type: !10)
!16 = !DILocalVariable(name: "limit", scope: !7, file: !1, line: 50, type: !10)
!17 = !DILocation(line: 48, column: 13, scope: !7)
!18 = !DILocation(line: 50, column: 16, scope: !7)
!19 = !DILocation(line: 50, column: 13, scope: !7)
!20 = !DILocation(line: 53, column: 20, scope: !21)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 53, column: 2)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 2)
!23 = !DILocation(line: 53, column: 2, scope: !22)
!24 = !DILocation(line: 53, column: 41, scope: !21)
!25 = !DILocation(line: 53, column: 48, scope: !21)
!26 = distinct !{!26, !23, !27}
!27 = !DILocation(line: 53, column: 51, scope: !22)
!28 = !DILocation(line: 0, scope: !21)
!29 = !DILocation(line: 54, column: 2, scope: !7)
