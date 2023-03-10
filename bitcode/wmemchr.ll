; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wmemchr(i32* readonly, i32, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp eq i64 %2, 0, !dbg !26
  br i1 %4, label %14, label %5, !dbg !29

; <label>:5:                                      ; preds = %3, %10
  %6 = phi i64 [ %12, %10 ], [ 0, %3 ]
  %7 = phi i32* [ %11, %10 ], [ %0, %3 ]
  %8 = load i32, i32* %7, align 4, !dbg !30, !tbaa !33
  %9 = icmp eq i32 %8, %1, !dbg !37
  br i1 %9, label %14, label %10, !dbg !38

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !39
  %12 = add nuw i64 %6, 1, !dbg !40
  %13 = icmp ult i64 %12, %2, !dbg !26
  br i1 %13, label %5, label %14, !dbg !29, !llvm.loop !41

; <label>:14:                                     ; preds = %5, %10, %3
  %15 = phi i32* [ null, %3 ], [ null, %10 ], [ %7, %5 ], !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  ret i32* %15, !dbg !44
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemchr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "wmemchr", scope: !1, file: !1, line: 72, type: !13, isLocal: false, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15, !5, !17}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 58, baseType: !18)
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23}
!20 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 72, type: !15)
!21 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !1, line: 72, type: !5)
!22 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !1, line: 72, type: !17)
!23 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 77, type: !17)
!24 = !DILocation(line: 72, column: 1, scope: !12)
!25 = !DILocation(line: 77, column: 10, scope: !12)
!26 = !DILocation(line: 79, column: 17, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 79, column: 3)
!28 = distinct !DILexicalBlock(scope: !12, file: !1, line: 79, column: 3)
!29 = !DILocation(line: 79, column: 3, scope: !28)
!30 = !DILocation(line: 81, column: 11, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 81, column: 11)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 80, column: 5)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 81, column: 14, scope: !31)
!38 = !DILocation(line: 81, column: 11, scope: !32)
!39 = !DILocation(line: 86, column: 8, scope: !32)
!40 = !DILocation(line: 79, column: 23, scope: !27)
!41 = distinct !{!41, !29, !42}
!42 = !DILocation(line: 87, column: 5, scope: !28)
!43 = !DILocation(line: 0, scope: !12)
!44 = !DILocation(line: 89, column: 1, scope: !12)
