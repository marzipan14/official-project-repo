; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcwidth.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcwidth.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @__wcwidth(i32) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call i32 @iswprint(i32 %0) #3, !dbg !18
  %3 = icmp eq i32 %2, 0, !dbg !18
  br i1 %3, label %4, label %10, !dbg !20

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #3, !dbg !21
  %6 = icmp eq i32 %5, 0, !dbg !21
  %7 = icmp ne i32 %0, 0, !dbg !23
  %8 = and i1 %7, %6, !dbg !24
  %9 = sext i1 %8 to i32, !dbg !24
  br label %10, !dbg !24

; <label>:10:                                     ; preds = %4, %1
  %11 = phi i32 [ 1, %1 ], [ %9, %4 ], !dbg !25
  ret i32 %11, !dbg !26
}

; Function Attrs: noredzone
declare dso_local i32 @iswprint(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswcntrl(i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @wcwidth(i32) local_unnamed_addr #0 !dbg !27 {
  %2 = tail call i32 @iswprint(i32 %0) #3, !dbg !39
  %3 = icmp eq i32 %2, 0, !dbg !39
  br i1 %3, label %4, label %10, !dbg !40

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @iswcntrl(i32 %0) #3, !dbg !41
  %6 = icmp eq i32 %5, 0, !dbg !41
  %7 = icmp ne i32 %0, 0, !dbg !42
  %8 = and i1 %7, %6, !dbg !43
  %9 = sext i1 %8 to i32, !dbg !43
  br label %10, !dbg !43

; <label>:10:                                     ; preds = %1, %4
  %11 = phi i32 [ 1, %1 ], [ %9, %4 ], !dbg !44
  ret i32 %11, !dbg !45
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcwidth.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__wcwidth", scope: !1, file: !1, line: 171, type: !8, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !13, line: 124, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16}
!16 = !DILocalVariable(name: "ucs", arg: 1, scope: !7, file: !1, line: 171, type: !11)
!17 = !DILocation(line: 171, column: 1, scope: !7)
!18 = !DILocation(line: 328, column: 7, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 328, column: 7)
!20 = !DILocation(line: 328, column: 7, scope: !7)
!21 = !DILocation(line: 330, column: 7, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 330, column: 7)
!23 = !DILocation(line: 330, column: 29, scope: !22)
!24 = !DILocation(line: 331, column: 5, scope: !22)
!25 = !DILocation(line: 0, scope: !7)
!26 = !DILocation(line: 334, column: 1, scope: !7)
!27 = distinct !DISubprogram(name: "wcwidth", scope: !1, file: !1, line: 337, type: !28, isLocal: false, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{!10, !30}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 83, baseType: !10)
!32 = !{!33, !34}
!33 = !DILocalVariable(name: "wc", arg: 1, scope: !27, file: !1, line: 337, type: !30)
!34 = !DILocalVariable(name: "wi", scope: !27, file: !1, line: 340, type: !12)
!35 = !DILocation(line: 337, column: 1, scope: !27)
!36 = !DILocation(line: 340, column: 10, scope: !27)
!37 = !DILocation(line: 171, column: 1, scope: !7, inlinedAt: !38)
!38 = distinct !DILocation(line: 345, column: 10, scope: !27)
!39 = !DILocation(line: 328, column: 7, scope: !19, inlinedAt: !38)
!40 = !DILocation(line: 328, column: 7, scope: !7, inlinedAt: !38)
!41 = !DILocation(line: 330, column: 7, scope: !22, inlinedAt: !38)
!42 = !DILocation(line: 330, column: 29, scope: !22, inlinedAt: !38)
!43 = !DILocation(line: 331, column: 5, scope: !22, inlinedAt: !38)
!44 = !DILocation(line: 0, scope: !7, inlinedAt: !38)
!45 = !DILocation(line: 345, column: 3, scope: !27)
