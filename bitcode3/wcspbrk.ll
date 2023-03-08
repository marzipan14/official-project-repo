; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcspbrk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcspbrk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i32* @wcspbrk(i32* readonly, i32* nocapture readonly) local_unnamed_addr #0 !dbg !12 {
  %3 = load i32, i32* %0, align 4, !dbg !24, !tbaa !25
  %4 = icmp eq i32 %3, 0, !dbg !29
  br i1 %4, label %23, label %5, !dbg !29

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !tbaa !25
  %7 = icmp eq i32 %6, 0
  br label %8, !dbg !29

; <label>:8:                                      ; preds = %5, %19
  %9 = phi i32 [ %3, %5 ], [ %21, %19 ]
  %10 = phi i32* [ %0, %5 ], [ %20, %19 ]
  br i1 %7, label %19, label %14, !dbg !31

; <label>:11:                                     ; preds = %14
  %12 = load i32, i32* %18, align 4, !dbg !33, !tbaa !25
  %13 = icmp eq i32 %12, 0, !dbg !31
  br i1 %13, label %19, label %14, !dbg !31, !llvm.loop !34

; <label>:14:                                     ; preds = %8, %11
  %15 = phi i32 [ %12, %11 ], [ %6, %8 ]
  %16 = phi i32* [ %18, %11 ], [ %1, %8 ]
  %17 = icmp eq i32 %9, %15, !dbg !36
  %18 = getelementptr inbounds i32, i32* %16, i64 1, !dbg !39
  br i1 %17, label %23, label %11, !dbg !40

; <label>:19:                                     ; preds = %11, %8
  %20 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !41
  %21 = load i32, i32* %20, align 4, !dbg !24, !tbaa !25
  %22 = icmp eq i32 %21, 0, !dbg !29
  br i1 %22, label %23, label %8, !dbg !29, !llvm.loop !42

; <label>:23:                                     ; preds = %19, %14, %2
  %24 = phi i32* [ null, %2 ], [ %10, %14 ], [ null, %19 ], !dbg !44
  ret i32* %24, !dbg !45
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcspbrk.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "wcspbrk", scope: !1, file: !1, line: 65, type: !13, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !15, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 65, type: !15)
!19 = !DILocalVariable(name: "set", arg: 2, scope: !12, file: !1, line: 65, type: !15)
!20 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 69, type: !15)
!21 = !DILocalVariable(name: "q", scope: !12, file: !1, line: 70, type: !15)
!22 = !DILocation(line: 65, column: 1, scope: !12)
!23 = !DILocation(line: 69, column: 19, scope: !12)
!24 = !DILocation(line: 73, column: 10, scope: !12)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 73, column: 3, scope: !12)
!30 = !DILocation(line: 70, column: 19, scope: !12)
!31 = !DILocation(line: 76, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !12, file: !1, line: 74, column: 5)
!33 = !DILocation(line: 76, column: 14, scope: !32)
!34 = distinct !{!34, !31, !35}
!35 = !DILocation(line: 84, column: 2, scope: !32)
!36 = !DILocation(line: 78, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 78, column: 8)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 77, column: 2)
!39 = !DILocation(line: 83, column: 5, scope: !38)
!40 = !DILocation(line: 78, column: 8, scope: !38)
!41 = !DILocation(line: 85, column: 8, scope: !32)
!42 = distinct !{!42, !29, !43}
!43 = !DILocation(line: 86, column: 5, scope: !12)
!44 = !DILocation(line: 0, scope: !12)
!45 = !DILocation(line: 88, column: 1, scope: !12)
