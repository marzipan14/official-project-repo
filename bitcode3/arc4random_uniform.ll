; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random_uniform.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random_uniform.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @arc4random_uniform(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = icmp ult i32 %0, 2, !dbg !20
  br i1 %2, label %11, label %3, !dbg !22

; <label>:3:                                      ; preds = %1
  %4 = sub i32 0, %0, !dbg !23
  %5 = urem i32 %4, %0, !dbg !24
  br label %6, !dbg !26

; <label>:6:                                      ; preds = %6, %3
  %7 = tail call i32 @arc4random() #3, !dbg !27
  %8 = icmp ult i32 %7, %5, !dbg !32
  br i1 %8, label %6, label %9, !dbg !34, !llvm.loop !35

; <label>:9:                                      ; preds = %6
  %10 = urem i32 %7, %0, !dbg !38
  br label %11, !dbg !39

; <label>:11:                                     ; preds = %1, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %1 ], !dbg !40
  ret i32 %12, !dbg !41
}

; Function Attrs: noredzone
declare dso_local i32 @arc4random() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/arc4random_uniform.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "arc4random_uniform", scope: !1, file: !1, line: 33, type: !8, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !11, line: 79, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 48, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "upper_bound", arg: 1, scope: !7, file: !1, line: 33, type: !13)
!17 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 35, type: !13)
!18 = !DILocalVariable(name: "min", scope: !7, file: !1, line: 35, type: !13)
!19 = !DILocation(line: 33, column: 29, scope: !7)
!20 = !DILocation(line: 37, column: 18, scope: !21)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 6)
!22 = !DILocation(line: 37, column: 6, scope: !7)
!23 = !DILocation(line: 41, column: 8, scope: !7)
!24 = !DILocation(line: 41, column: 21, scope: !7)
!25 = !DILocation(line: 35, column: 14, scope: !7)
!26 = !DILocation(line: 49, column: 2, scope: !7)
!27 = !DILocation(line: 50, column: 7, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 49, column: 11)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 49, column: 2)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 2)
!31 = !DILocation(line: 35, column: 11, scope: !7)
!32 = !DILocation(line: 51, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 51, column: 7)
!34 = !DILocation(line: 51, column: 7, scope: !28)
!35 = distinct !{!35, !36, !37}
!36 = !DILocation(line: 49, column: 2, scope: !30)
!37 = !DILocation(line: 53, column: 2, scope: !30)
!38 = !DILocation(line: 55, column: 11, scope: !7)
!39 = !DILocation(line: 55, column: 2, scope: !7)
!40 = !DILocation(line: 0, scope: !7)
!41 = !DILocation(line: 56, column: 1, scope: !7)
