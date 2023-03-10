; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/div.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/div.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @div(i32, i32) local_unnamed_addr #0 !dbg !7 {
  %3 = sdiv i32 %0, %1, !dbg !22
  %4 = srem i32 %0, %1, !dbg !24
  %5 = icmp sgt i32 %0, -1, !dbg !25
  %6 = icmp slt i32 %4, 0, !dbg !27
  %7 = and i1 %5, %6, !dbg !28
  br i1 %7, label %8, label %11, !dbg !28

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %3, 1, !dbg !29
  %10 = sub nsw i32 %4, %1, !dbg !31
  br label %18, !dbg !32

; <label>:11:                                     ; preds = %2
  %12 = icmp slt i32 %0, 0, !dbg !33
  %13 = icmp sgt i32 %4, 0, !dbg !35
  %14 = and i1 %12, %13, !dbg !36
  br i1 %14, label %15, label %18, !dbg !36

; <label>:15:                                     ; preds = %11
  %16 = add nsw i32 %3, -1, !dbg !37
  %17 = add nsw i32 %4, %1, !dbg !39
  br label %18, !dbg !40

; <label>:18:                                     ; preds = %11, %15, %8
  %19 = phi i32 [ %9, %8 ], [ %16, %15 ], [ %3, %11 ], !dbg !41
  %20 = phi i32 [ %10, %8 ], [ %17, %15 ], [ %4, %11 ], !dbg !41
  %21 = zext i32 %20 to i64, !dbg !42
  %22 = shl nuw i64 %21, 32, !dbg !42
  %23 = zext i32 %19 to i64, !dbg !42
  %24 = or i64 %22, %23, !dbg !42
  ret i64 %24, !dbg !42
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/div.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "div", scope: !1, file: !1, line: 89, type: !8, isLocal: false, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !11, line: 39, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdlib.h", directory: "/root/.unikraft/apps/redis/build")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 35, size: 64, elements: !13)
!13 = !{!14, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !12, file: !11, line: 37, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !12, file: !11, line: 38, baseType: !15, size: 32, offset: 32)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "num", arg: 1, scope: !7, file: !1, line: 89, type: !15)
!19 = !DILocalVariable(name: "denom", arg: 2, scope: !7, file: !1, line: 89, type: !15)
!20 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 93, type: !10)
!21 = !DILocation(line: 89, column: 1, scope: !7)
!22 = !DILocation(line: 95, column: 15, scope: !7)
!23 = !DILocation(line: 93, column: 8, scope: !7)
!24 = !DILocation(line: 96, column: 14, scope: !7)
!25 = !DILocation(line: 123, column: 10, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 123, column: 6)
!27 = !DILocation(line: 123, column: 24, scope: !26)
!28 = !DILocation(line: 123, column: 15, scope: !26)
!29 = !DILocation(line: 124, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 123, column: 29)
!31 = !DILocation(line: 125, column: 9, scope: !30)
!32 = !DILocation(line: 126, column: 2, scope: !30)
!33 = !DILocation(line: 127, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 127, column: 11)
!35 = !DILocation(line: 127, column: 28, scope: !34)
!36 = !DILocation(line: 127, column: 19, scope: !34)
!37 = !DILocation(line: 128, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 127, column: 33)
!39 = !DILocation(line: 129, column: 9, scope: !38)
!40 = !DILocation(line: 130, column: 2, scope: !38)
!41 = !DILocation(line: 0, scope: !7)
!42 = !DILocation(line: 131, column: 2, scope: !7)
