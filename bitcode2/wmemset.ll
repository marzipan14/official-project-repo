; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wmemset(i32* returned, i32, i64) local_unnamed_addr #0 !dbg !12 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  %4 = icmp eq i64 %2, 0, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %4, label %29, label %5, !dbg !30

; <label>:5:                                      ; preds = %3
  %6 = add i64 %2, -1, !dbg !31
  %7 = and i64 %2, 3, !dbg !31
  %8 = icmp ult i64 %6, 3, !dbg !31
  br i1 %8, label %20, label %9, !dbg !31

; <label>:9:                                      ; preds = %5
  %10 = sub i64 %2, %7, !dbg !31
  br label %11, !dbg !31

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i32* [ %0, %9 ], [ %17, %11 ]
  %13 = phi i64 [ %10, %9 ], [ %18, %11 ]
  store i32 %1, i32* %12, align 4, !dbg !31, !tbaa !33
  %14 = getelementptr inbounds i32, i32* %12, i64 1, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  store i32 %1, i32* %14, align 4, !dbg !31, !tbaa !33
  %15 = getelementptr inbounds i32, i32* %12, i64 2, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  store i32 %1, i32* %15, align 4, !dbg !31, !tbaa !33
  %16 = getelementptr inbounds i32, i32* %12, i64 3, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  store i32 %1, i32* %16, align 4, !dbg !31, !tbaa !33
  %17 = getelementptr inbounds i32, i32* %12, i64 4, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %18 = add i64 %13, -4, !dbg !30
  %19 = icmp eq i64 %18, 0, !dbg !30
  br i1 %19, label %20, label %11, !dbg !30, !llvm.loop !39

; <label>:20:                                     ; preds = %11, %5
  %21 = phi i32* [ %0, %5 ], [ %17, %11 ]
  %22 = icmp eq i64 %7, 0, !dbg !30
  br i1 %22, label %29, label %23, !dbg !30

; <label>:23:                                     ; preds = %20, %23
  %24 = phi i32* [ %26, %23 ], [ %21, %20 ]
  %25 = phi i64 [ %27, %23 ], [ %7, %20 ]
  store i32 %1, i32* %24, align 4, !dbg !31, !tbaa !33
  %26 = getelementptr inbounds i32, i32* %24, i64 1, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %27 = add i64 %25, -1, !dbg !30
  %28 = icmp eq i64 %27, 0, !dbg !30
  br i1 %28, label %29, label %23, !dbg !30, !llvm.loop !41

; <label>:29:                                     ; preds = %20, %23, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i32* %0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemset.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = distinct !DISubprogram(name: "wmemset", scope: !1, file: !1, line: 68, type: !13, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!4, !4, !5, !15}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 58, baseType: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !12, file: !1, line: 68, type: !4)
!19 = !DILocalVariable(name: "c", arg: 2, scope: !12, file: !1, line: 68, type: !5)
!20 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !1, line: 68, type: !15)
!21 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 73, type: !15)
!22 = !DILocalVariable(name: "p", scope: !12, file: !1, line: 74, type: !4)
!23 = !DILocation(line: 68, column: 1, scope: !12)
!24 = !DILocation(line: 74, column: 11, scope: !12)
!25 = !DILocation(line: 73, column: 9, scope: !12)
!26 = !DILocation(line: 77, column: 7, scope: !27)
!27 = distinct !DILexicalBlock(scope: !12, file: !1, line: 77, column: 2)
!28 = !DILocation(line: 77, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !1, line: 77, column: 2)
!30 = !DILocation(line: 77, column: 2, scope: !27)
!31 = !DILocation(line: 78, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 77, column: 26)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 79, column: 4, scope: !32)
!38 = !DILocation(line: 77, column: 2, scope: !29)
!39 = distinct !{!39, !30, !40}
!40 = !DILocation(line: 80, column: 2, scope: !27)
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !DILocation(line: 81, column: 2, scope: !12)
