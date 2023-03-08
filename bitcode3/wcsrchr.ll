; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsrchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsrchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i32* @wcsrchr(i32* readonly, i32) local_unnamed_addr #0 !dbg !12 {
  br label %3, !dbg !23

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32* [ %0, %2 ], [ %7, %3 ], !dbg !24
  %5 = load i32, i32* %4, align 4, !dbg !25, !tbaa !26
  %6 = icmp eq i32 %5, 0, !dbg !23
  %7 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !30
  br i1 %6, label %8, label %3, !dbg !23, !llvm.loop !31

; <label>:8:                                      ; preds = %3
  %9 = icmp ult i32* %4, %0, !dbg !32
  br i1 %9, label %19, label %10, !dbg !33

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i32 %1, 0, !dbg !34
  br i1 %11, label %19, label %12, !dbg !37

; <label>:12:                                     ; preds = %10, %16
  %13 = phi i32* [ %14, %16 ], [ %4, %10 ]
  %14 = getelementptr inbounds i32, i32* %13, i64 -1, !dbg !38
  %15 = icmp ult i32* %14, %0, !dbg !32
  br i1 %15, label %19, label %16, !dbg !33, !llvm.loop !39

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %14, align 4, !dbg !41, !tbaa !26
  %18 = icmp eq i32 %17, %1, !dbg !34
  br i1 %18, label %19, label %12, !dbg !37

; <label>:19:                                     ; preds = %12, %16, %10, %8
  %20 = phi i32* [ null, %8 ], [ %4, %10 ], [ %14, %16 ], [ null, %12 ], !dbg !24
  ret i32* %20, !dbg !42
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsrchr.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "wcsrchr", scope: !1, file: !1, line: 69, type: !13, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15, !5}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 69, type: !15)
!19 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !1, line: 69, type: !5)
!20 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 73, type: !15)
!21 = !DILocation(line: 69, column: 1, scope: !12)
!22 = !DILocation(line: 73, column: 19, scope: !12)
!23 = !DILocation(line: 76, column: 3, scope: !12)
!24 = !DILocation(line: 0, scope: !12)
!25 = !DILocation(line: 76, column: 10, scope: !12)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 77, column: 6, scope: !12)
!31 = distinct !{!31, !23, !30}
!32 = !DILocation(line: 78, column: 12, scope: !12)
!33 = !DILocation(line: 78, column: 3, scope: !12)
!34 = !DILocation(line: 80, column: 14, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 80, column: 11)
!36 = distinct !DILexicalBlock(scope: !12, file: !1, line: 79, column: 5)
!37 = !DILocation(line: 80, column: 11, scope: !36)
!38 = !DILocation(line: 85, column: 8, scope: !36)
!39 = distinct !{!39, !33, !40}
!40 = !DILocation(line: 86, column: 5, scope: !12)
!41 = !DILocation(line: 80, column: 11, scope: !35)
!42 = !DILocation(line: 88, column: 1, scope: !12)
