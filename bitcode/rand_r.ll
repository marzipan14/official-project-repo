; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rand_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rand_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @rand_r(i32* nocapture) local_unnamed_addr #0 !dbg !11 {
  %2 = load i32, i32* %0, align 4, !dbg !20, !tbaa !21
  %3 = icmp eq i32 %2, 0, !dbg !25
  %4 = select i1 %3, i32 305420679, i32 %2, !dbg !27
  %5 = zext i32 %4 to i64, !dbg !27
  %6 = udiv i32 %4, 127773
  %7 = zext i32 %6 to i64
  %8 = mul nsw i64 %7, -127773, !dbg !30
  %9 = add nsw i64 %8, %5, !dbg !30
  %10 = mul nsw i64 %9, 16807, !dbg !31
  %11 = mul nsw i64 %7, -2836, !dbg !32
  %12 = add nsw i64 %10, %11, !dbg !32
  %13 = icmp slt i64 %12, 0, !dbg !33
  %14 = add nsw i64 %12, 2147483647, !dbg !35
  %15 = select i1 %13, i64 %14, i64 %12, !dbg !36
  %16 = trunc i64 %15 to i32, !dbg !37
  store i32 %16, i32* %0, align 4, !dbg !38, !tbaa !21
  %17 = and i32 %16, 2147483647, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  ret i32 %17, !dbg !40
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/rand_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "rand_r", scope: !1, file: !1, line: 25, type: !12, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!6, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "seed", arg: 1, scope: !11, file: !1, line: 25, type: !14)
!17 = !DILocalVariable(name: "k", scope: !11, file: !1, line: 27, type: !4)
!18 = !DILocalVariable(name: "s", scope: !11, file: !1, line: 28, type: !4)
!19 = !DILocation(line: 25, column: 1, scope: !11)
!20 = !DILocation(line: 28, column: 25, scope: !11)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 29, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !11, file: !1, line: 29, column: 13)
!27 = !DILocation(line: 29, column: 13, scope: !11)
!28 = !DILocation(line: 28, column: 14, scope: !11)
!29 = !DILocation(line: 27, column: 14, scope: !11)
!30 = !DILocation(line: 32, column: 24, scope: !11)
!31 = !DILocation(line: 32, column: 19, scope: !11)
!32 = !DILocation(line: 32, column: 38, scope: !11)
!33 = !DILocation(line: 33, column: 15, scope: !34)
!34 = distinct !DILexicalBlock(scope: !11, file: !1, line: 33, column: 13)
!35 = !DILocation(line: 34, column: 13, scope: !34)
!36 = !DILocation(line: 33, column: 13, scope: !11)
!37 = !DILocation(line: 35, column: 19, scope: !11)
!38 = !DILocation(line: 35, column: 17, scope: !11)
!39 = !DILocation(line: 36, column: 16, scope: !11)
!40 = !DILocation(line: 36, column: 9, scope: !11)
