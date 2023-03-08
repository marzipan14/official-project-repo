; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsrchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsrchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsrchr(i32* readonly, i32) local_unnamed_addr #0 !dbg !12 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  %3 = load i32, i32* %0, align 4, !dbg !24, !tbaa !25
  %4 = icmp eq i32 %3, 0, !dbg !23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  br i1 %4, label %5, label %11, !dbg !23

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br label %8, !dbg !29

; <label>:6:                                      ; preds = %11
  %7 = icmp ult i32* %13, %0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %7, label %23, label %8, !dbg !29

; <label>:8:                                      ; preds = %5, %6
  %9 = phi i32* [ %0, %5 ], [ %13, %6 ]
  %10 = icmp eq i32 %1, 0, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %10, label %23, label %16, !dbg !34

; <label>:11:                                     ; preds = %2, %11
  %12 = phi i32* [ %13, %11 ], [ %0, %2 ]
  %13 = getelementptr inbounds i32, i32* %12, i64 1, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  %14 = load i32, i32* %13, align 4, !dbg !24, !tbaa !25
  %15 = icmp eq i32 %14, 0, !dbg !23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !23
  br i1 %15, label %6, label %11, !dbg !23, !llvm.loop !36

; <label>:16:                                     ; preds = %8, %20
  %17 = phi i32* [ %18, %20 ], [ %9, %8 ]
  %18 = getelementptr inbounds i32, i32* %17, i64 -1, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %19 = icmp ult i32* %18, %0, !dbg !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %19, label %23, label %20, !dbg !29, !llvm.loop !38

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %18, align 4, !dbg !40, !tbaa !25
  %22 = icmp eq i32 %21, %1, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %22, label %23, label %16, !dbg !34

; <label>:23:                                     ; preds = %16, %20, %6, %8
  %24 = phi i32* [ %9, %8 ], [ null, %6 ], [ null, %16 ], [ %18, %20 ], !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  ret i32* %24, !dbg !44
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!24 = !DILocation(line: 76, column: 10, scope: !12)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 78, column: 3, scope: !12)
!30 = !DILocation(line: 78, column: 12, scope: !12)
!31 = !DILocation(line: 80, column: 14, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 80, column: 11)
!33 = distinct !DILexicalBlock(scope: !12, file: !1, line: 79, column: 5)
!34 = !DILocation(line: 80, column: 11, scope: !33)
!35 = !DILocation(line: 77, column: 6, scope: !12)
!36 = distinct !{!36, !23, !35}
!37 = !DILocation(line: 85, column: 8, scope: !33)
!38 = distinct !{!38, !29, !39}
!39 = !DILocation(line: 86, column: 5, scope: !12)
!40 = !DILocation(line: 80, column: 11, scope: !32)
!41 = !DILocation(line: 0, scope: !12)
!42 = !DILocation(line: 0, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 81, column: 2)
!44 = !DILocation(line: 88, column: 1, scope: !12)
