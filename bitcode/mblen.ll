; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mblen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mblen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @mblen(i8* readonly, i64) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp eq i8* %0, null, !dbg !25
  br i1 %3, label %10, label %4, !dbg !27

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %0, align 1, !dbg !28, !tbaa !29
  %6 = icmp eq i8 %5, 0, !dbg !32
  br i1 %6, label %10, label %7, !dbg !33

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i64 %1, 0, !dbg !34
  %9 = select i1 %8, i32 -1, i32 1, !dbg !36
  br label %10, !dbg !36

; <label>:10:                                     ; preds = %7, %2, %4
  %11 = phi i32 [ 0, %4 ], [ 0, %2 ], [ %9, %7 ], !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  ret i32 %11, !dbg !38
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mblen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "mblen", scope: !1, file: !1, line: 52, type: !10, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !16}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 40, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !19, line: 129, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!22, !23}
!22 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !1, line: 52, type: !13)
!23 = !DILocalVariable(name: "n", arg: 2, scope: !9, file: !1, line: 52, type: !16)
!24 = !DILocation(line: 52, column: 1, scope: !9)
!25 = !DILocation(line: 73, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 73, column: 7)
!27 = !DILocation(line: 73, column: 17, scope: !26)
!28 = !DILocation(line: 73, column: 20, scope: !26)
!29 = !{!30, !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 73, column: 23, scope: !26)
!33 = !DILocation(line: 73, column: 7, scope: !9)
!34 = !DILocation(line: 75, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 75, column: 7)
!36 = !DILocation(line: 76, column: 5, scope: !35)
!37 = !DILocation(line: 0, scope: !9)
!38 = !DILocation(line: 79, column: 1, scope: !9)
