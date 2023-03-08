; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @wmemcmp(i32* nocapture readonly, i32* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp eq i64 %2, 0, !dbg !24
  br i1 %4, label %20, label %5, !dbg !27

; <label>:5:                                      ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ 0, %3 ]
  %7 = phi i32* [ %17, %15 ], [ %1, %3 ]
  %8 = phi i32* [ %16, %15 ], [ %0, %3 ]
  %9 = load i32, i32* %8, align 4, !dbg !28, !tbaa !31
  %10 = load i32, i32* %7, align 4, !dbg !35, !tbaa !31
  %11 = icmp eq i32 %9, %10, !dbg !36
  br i1 %11, label %15, label %12, !dbg !37

; <label>:12:                                     ; preds = %5
  %13 = icmp sgt i32 %9, %10, !dbg !38
  %14 = select i1 %13, i32 1, i32 -1, !dbg !40
  br label %20, !dbg !41

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !42
  %17 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !43
  %18 = add nuw i64 %6, 1, !dbg !44
  %19 = icmp ult i64 %18, %2, !dbg !24
  br i1 %19, label %5, label %20, !dbg !27, !llvm.loop !45

; <label>:20:                                     ; preds = %15, %3, %12
  %21 = phi i32 [ %14, %12 ], [ 0, %3 ], [ 0, %15 ], !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32 %21, !dbg !48
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wmemcmp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wmemcmp", scope: !1, file: !1, line: 71, type: !8, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !15}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !14, line: 83, baseType: !10)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 58, baseType: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21}
!18 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 71, type: !11)
!19 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 71, type: !11)
!20 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 71, type: !15)
!21 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 76, type: !15)
!22 = !DILocation(line: 71, column: 1, scope: !7)
!23 = !DILocation(line: 76, column: 10, scope: !7)
!24 = !DILocation(line: 78, column: 17, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 78, column: 3)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 78, column: 3)
!27 = !DILocation(line: 78, column: 3, scope: !26)
!28 = !DILocation(line: 80, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 80, column: 11)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 79, column: 5)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 80, column: 18, scope: !29)
!36 = !DILocation(line: 80, column: 15, scope: !29)
!37 = !DILocation(line: 80, column: 11, scope: !30)
!38 = !DILocation(line: 83, column: 15, scope: !39)
!39 = distinct !DILexicalBlock(scope: !29, file: !1, line: 81, column: 2)
!40 = !DILocation(line: 83, column: 11, scope: !39)
!41 = !DILocation(line: 83, column: 4, scope: !39)
!42 = !DILocation(line: 85, column: 9, scope: !30)
!43 = !DILocation(line: 86, column: 9, scope: !30)
!44 = !DILocation(line: 78, column: 23, scope: !25)
!45 = distinct !{!45, !27, !46}
!46 = !DILocation(line: 87, column: 5, scope: !26)
!47 = !DILocation(line: 0, scope: !7)
!48 = !DILocation(line: 89, column: 1, scope: !7)
