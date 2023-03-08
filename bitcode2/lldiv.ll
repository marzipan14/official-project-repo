; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lldiv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lldiv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local { i64, i64 } @lldiv(i64, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = sdiv i64 %0, %1, !dbg !22
  %4 = srem i64 %0, %1, !dbg !24
  %5 = icmp sgt i64 %0, -1, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br i1 %5, label %6, label %11, !dbg !27

; <label>:6:                                      ; preds = %2
  %7 = icmp slt i64 %4, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %7, label %8, label %11, !dbg !29

; <label>:8:                                      ; preds = %6
  %9 = add nsw i64 %3, 1, !dbg !30
  %10 = sub nsw i64 %4, %1, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br label %11, !dbg !33

; <label>:11:                                     ; preds = %8, %6, %2
  %12 = phi i64 [ %9, %8 ], [ %3, %6 ], [ %3, %2 ], !dbg !34
  %13 = phi i64 [ %10, %8 ], [ %4, %6 ], [ %4, %2 ], !dbg !34
  %14 = insertvalue { i64, i64 } undef, i64 %12, 0, !dbg !35
  %15 = insertvalue { i64, i64 } %14, i64 %13, 1, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret { i64, i64 } %15, !dbg !35
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/lldiv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "lldiv", scope: !1, file: !1, line: 102, type: !8, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !11, line: 52, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdlib.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 48, size: 128, elements: !13)
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !12, file: !11, line: 50, baseType: !15, size: 64)
!15 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !12, file: !11, line: 51, baseType: !15, size: 64, offset: 64)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "numer", arg: 1, scope: !7, file: !1, line: 102, type: !15)
!19 = !DILocalVariable(name: "denom", arg: 2, scope: !7, file: !1, line: 102, type: !15)
!20 = !DILocalVariable(name: "retval", scope: !7, file: !1, line: 105, type: !10)
!21 = !DILocation(line: 102, column: 1, scope: !7)
!22 = !DILocation(line: 107, column: 22, scope: !7)
!23 = !DILocation(line: 105, column: 10, scope: !7)
!24 = !DILocation(line: 108, column: 21, scope: !7)
!25 = !DILocation(line: 109, column: 12, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 109, column: 6)
!27 = !DILocation(line: 109, column: 17, scope: !26)
!28 = !DILocation(line: 109, column: 31, scope: !26)
!29 = !DILocation(line: 109, column: 6, scope: !7)
!30 = !DILocation(line: 110, column: 14, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 109, column: 36)
!32 = !DILocation(line: 111, column: 14, scope: !31)
!33 = !DILocation(line: 112, column: 2, scope: !31)
!34 = !DILocation(line: 0, scope: !7)
!35 = !DILocation(line: 113, column: 2, scope: !7)
