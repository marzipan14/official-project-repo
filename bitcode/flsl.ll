; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/flsl.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/flsl.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @flsl(i64) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp eq i64 %0, 0, !dbg !15
  br i1 %2, label %7, label %3, !dbg !17

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @llvm.ctlz.i64(i64 %0, i1 true), !dbg !18, !range !19
  %5 = trunc i64 %4 to i32, !dbg !20
  %6 = sub nsw i32 64, %5, !dbg !20
  br label %7, !dbg !21

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ], !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  ret i32 %8, !dbg !23
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/flsl.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "flsl", scope: !1, file: !1, line: 31, type: !8, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", arg: 1, scope: !7, file: !1, line: 31, type: !11)
!14 = !DILocation(line: 31, column: 11, scope: !7)
!15 = !DILocation(line: 34, column: 8, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 34, column: 6)
!17 = !DILocation(line: 34, column: 6, scope: !7)
!18 = !DILocation(line: 37, column: 33, scope: !7)
!19 = !{i64 0, i64 65}
!20 = !DILocation(line: 37, column: 9, scope: !7)
!21 = !DILocation(line: 37, column: 2, scope: !7)
!22 = !DILocation(line: 0, scope: !7)
!23 = !DILocation(line: 38, column: 1, scope: !7)
