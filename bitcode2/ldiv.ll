; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldiv.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldiv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local { i64, i64 } @ldiv(i64, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = sdiv i64 %0, %1, !dbg !22
  %4 = srem i64 %0, %1, !dbg !24
  %5 = icmp sgt i64 %0, -1, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br i1 %5, label %6, label %11, !dbg !27

; <label>:6:                                      ; preds = %2
  %7 = icmp slt i64 %4, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %7, label %8, label %16, !dbg !29

; <label>:8:                                      ; preds = %6
  %9 = add nsw i64 %3, 1, !dbg !30
  %10 = sub nsw i64 %4, %1, !dbg !32
  br label %16, !dbg !33

; <label>:11:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  %12 = icmp sgt i64 %4, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %12, label %13, label %19, !dbg !37

; <label>:13:                                     ; preds = %11
  %14 = add nsw i64 %3, -1, !dbg !38
  %15 = add nsw i64 %4, %1, !dbg !40
  br label %16, !dbg !41

; <label>:16:                                     ; preds = %6, %8, %13
  %17 = phi i64 [ %14, %13 ], [ %9, %8 ], [ %3, %6 ]
  %18 = phi i64 [ %15, %13 ], [ %10, %8 ], [ %4, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br label %19, !dbg !43

; <label>:19:                                     ; preds = %16, %11
  %20 = phi i64 [ %3, %11 ], [ %17, %16 ], !dbg !44
  %21 = phi i64 [ %4, %11 ], [ %18, %16 ], !dbg !44
  %22 = insertvalue { i64, i64 } undef, i64 %20, 0, !dbg !43
  %23 = insertvalue { i64, i64 } %22, i64 %21, 1, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret { i64, i64 } %23, !dbg !43
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldiv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "ldiv", scope: !1, file: !1, line: 90, type: !8, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !11, line: 45, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdlib.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 41, size: 128, elements: !13)
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !12, file: !11, line: 43, baseType: !15, size: 64)
!15 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !12, file: !11, line: 44, baseType: !15, size: 64, offset: 64)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 90, type: !15)
!19 = !DILocalVariable(name: "denom", arg: 2, scope: !7, file: !1, line: 90, type: !15)
!20 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 94, type: !10)
!21 = !DILocation(line: 90, column: 1, scope: !7)
!22 = !DILocation(line: 98, column: 15, scope: !7)
!23 = !DILocation(line: 94, column: 9, scope: !7)
!24 = !DILocation(line: 99, column: 14, scope: !7)
!25 = !DILocation(line: 100, column: 10, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 100, column: 6)
!27 = !DILocation(line: 100, column: 15, scope: !26)
!28 = !DILocation(line: 100, column: 24, scope: !26)
!29 = !DILocation(line: 100, column: 6, scope: !7)
!30 = !DILocation(line: 101, column: 3, scope: !31)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 100, column: 29)
!32 = !DILocation(line: 102, column: 9, scope: !31)
!33 = !DILocation(line: 103, column: 2, scope: !31)
!34 = !DILocation(line: 104, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 104, column: 11)
!36 = !DILocation(line: 104, column: 28, scope: !35)
!37 = !DILocation(line: 104, column: 11, scope: !26)
!38 = !DILocation(line: 105, column: 3, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 104, column: 33)
!40 = !DILocation(line: 106, column: 9, scope: !39)
!41 = !DILocation(line: 107, column: 2, scope: !39)
!42 = !DILocation(line: 0, scope: !31)
!43 = !DILocation(line: 108, column: 2, scope: !7)
!44 = !DILocation(line: 0, scope: !7)
