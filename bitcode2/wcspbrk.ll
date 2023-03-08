; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcspbrk.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcspbrk.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcspbrk(i32* readonly, i32* nocapture readonly) local_unnamed_addr #0 !dbg !12 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %3 = load i32, i32* %0, align 4, !dbg !25, !tbaa !26
  %4 = icmp eq i32 %3, 0, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %4, label %24, label %5, !dbg !24

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* %1, align 4, !tbaa !26
  %7 = icmp eq i32 %6, 0
  br label %8, !dbg !24

; <label>:8:                                      ; preds = %5, %20
  %9 = phi i32 [ %3, %5 ], [ %22, %20 ]
  %10 = phi i32* [ %0, %5 ], [ %21, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %7, label %20, label %11, !dbg !33

; <label>:11:                                     ; preds = %8, %16
  %12 = phi i32 [ %18, %16 ], [ %6, %8 ]
  %13 = phi i32* [ %17, %16 ], [ %1, %8 ]
  %14 = icmp eq i32 %9, %12, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %14, label %15, label %16, !dbg !37

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br label %24, !dbg !38

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i32, i32* %13, i64 1, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  %18 = load i32, i32* %17, align 4, !dbg !41, !tbaa !26
  %19 = icmp eq i32 %18, 0, !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %19, label %20, label %11, !dbg !33, !llvm.loop !42

; <label>:20:                                     ; preds = %16, %8
  %21 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %22 = load i32, i32* %21, align 4, !dbg !25, !tbaa !26
  %23 = icmp eq i32 %22, 0, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %23, label %24, label %8, !dbg !24, !llvm.loop !45

; <label>:24:                                     ; preds = %20, %2, %15
  %25 = phi i32* [ %10, %15 ], [ null, %2 ], [ null, %20 ], !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32* %25, !dbg !48
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!24 = !DILocation(line: 73, column: 3, scope: !12)
!25 = !DILocation(line: 73, column: 10, scope: !12)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 0, scope: !31)
!31 = distinct !DILexicalBlock(scope: !12, file: !1, line: 74, column: 5)
!32 = !DILocation(line: 70, column: 19, scope: !12)
!33 = !DILocation(line: 76, column: 7, scope: !31)
!34 = !DILocation(line: 78, column: 11, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 78, column: 8)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 77, column: 2)
!37 = !DILocation(line: 78, column: 8, scope: !36)
!38 = !DILocation(line: 81, column: 8, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 79, column: 6)
!40 = !DILocation(line: 83, column: 5, scope: !36)
!41 = !DILocation(line: 76, column: 14, scope: !31)
!42 = distinct !{!42, !33, !43}
!43 = !DILocation(line: 84, column: 2, scope: !31)
!44 = !DILocation(line: 85, column: 8, scope: !31)
!45 = distinct !{!45, !24, !46}
!46 = !DILocation(line: 86, column: 5, scope: !12)
!47 = !DILocation(line: 0, scope: !12)
!48 = !DILocation(line: 88, column: 1, scope: !12)
