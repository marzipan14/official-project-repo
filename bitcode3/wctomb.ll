; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i32 @wctomb(i8*, i32) local_unnamed_addr #0 !dbg !15 {
  %3 = icmp eq i8* %0, null, !dbg !26
  br i1 %3, label %10, label %4, !dbg !28

; <label>:4:                                      ; preds = %2
  %5 = icmp ugt i32 %1, 255, !dbg !29
  br i1 %5, label %6, label %8, !dbg !31

; <label>:6:                                      ; preds = %4
  %7 = tail call i32* @__errno() #3, !dbg !32
  store i32 138, i32* %7, align 4, !dbg !34, !tbaa !35
  br label %10, !dbg !39

; <label>:8:                                      ; preds = %4
  %9 = trunc i32 %1 to i8, !dbg !40
  store i8 %9, i8* %0, align 1, !dbg !41, !tbaa !42
  br label %10, !dbg !43

; <label>:10:                                     ; preds = %2, %8, %6
  %11 = phi i32 [ -1, %6 ], [ 1, %8 ], [ 0, %2 ], !dbg !44
  ret i32 %11, !dbg !45
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wctomb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "wctomb", scope: !1, file: !1, line: 55, type: !16, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !21, line: 83, baseType: !18)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "s", arg: 1, scope: !15, file: !1, line: 55, type: !19)
!24 = !DILocalVariable(name: "wchar", arg: 2, scope: !15, file: !1, line: 55, type: !20)
!25 = !DILocation(line: 55, column: 1, scope: !15)
!26 = !DILocation(line: 66, column: 15, scope: !27)
!27 = distinct !DILexicalBlock(scope: !15, file: !1, line: 66, column: 13)
!28 = !DILocation(line: 66, column: 13, scope: !15)
!29 = !DILocation(line: 70, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !1, line: 70, column: 6)
!31 = !DILocation(line: 70, column: 6, scope: !15)
!32 = !DILocation(line: 71, column: 3, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 70, column: 30)
!34 = !DILocation(line: 71, column: 9, scope: !33)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 72, column: 3, scope: !33)
!40 = !DILocation(line: 75, column: 14, scope: !15)
!41 = !DILocation(line: 75, column: 12, scope: !15)
!42 = !{!37, !37, i64 0}
!43 = !DILocation(line: 76, column: 9, scope: !15)
!44 = !DILocation(line: 0, scope: !15)
!45 = !DILocation(line: 78, column: 1, scope: !15)
