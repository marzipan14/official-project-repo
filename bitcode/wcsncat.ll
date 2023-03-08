; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncat.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcsncat(i32* noalias returned, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  br label %4, !dbg !29

; <label>:4:                                      ; preds = %4, %3
  %5 = phi i32* [ %0, %3 ], [ %8, %4 ], !dbg !30
  %6 = load i32, i32* %5, align 4, !dbg !31, !tbaa !32
  %7 = icmp eq i32 %6, 0, !dbg !29
  %8 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !36
  br i1 %7, label %9, label %4, !dbg !29, !llvm.loop !37

; <label>:9:                                      ; preds = %4
  %10 = load i32, i32* %1, align 4, !dbg !40, !tbaa !32
  %11 = icmp ne i32 %10, 0, !dbg !40
  %12 = icmp ne i64 %2, 0, !dbg !41
  %13 = and i1 %12, %11, !dbg !41
  br i1 %13, label %14, label %26, !dbg !42

; <label>:14:                                     ; preds = %9, %14
  %15 = phi i32 [ %22, %14 ], [ %10, %9 ]
  %16 = phi i32* [ %19, %14 ], [ %1, %9 ]
  %17 = phi i32* [ %20, %14 ], [ %5, %9 ]
  %18 = phi i64 [ %21, %14 ], [ %2, %9 ]
  %19 = getelementptr inbounds i32, i32* %16, i64 1, !dbg !43
  %20 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !45
  store i32 %15, i32* %17, align 4, !dbg !46, !tbaa !32
  %21 = add i64 %18, -1, !dbg !47
  %22 = load i32, i32* %19, align 4, !dbg !40, !tbaa !32
  %23 = icmp ne i32 %22, 0, !dbg !40
  %24 = icmp ne i64 %21, 0, !dbg !41
  %25 = and i1 %24, %23, !dbg !41
  br i1 %25, label %14, label %26, !dbg !42, !llvm.loop !48

; <label>:26:                                     ; preds = %14, %9
  %27 = phi i32* [ %5, %9 ], [ %20, %14 ], !dbg !50
  store i32 0, i32* %27, align 4, !dbg !51, !tbaa !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  ret i32* %0, !dbg !52
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsncat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcsncat", scope: !1, file: !1, line: 71, type: !8, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !15, !18}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 58, baseType: !19)
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 71, type: !14)
!22 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 71, type: !15)
!23 = !DILocalVariable(name: "n", arg: 3, scope: !7, file: !1, line: 71, type: !18)
!24 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 76, type: !10)
!25 = !DILocalVariable(name: "q", scope: !7, file: !1, line: 77, type: !10)
!26 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 78, type: !16)
!27 = !DILocation(line: 71, column: 1, scope: !7)
!28 = !DILocation(line: 76, column: 12, scope: !7)
!29 = !DILocation(line: 81, column: 3, scope: !7)
!30 = !DILocation(line: 0, scope: !7)
!31 = !DILocation(line: 81, column: 10, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 82, column: 6, scope: !7)
!37 = distinct !{!37, !29, !36}
!38 = !DILocation(line: 78, column: 19, scope: !7)
!39 = !DILocation(line: 77, column: 12, scope: !7)
!40 = !DILocation(line: 85, column: 10, scope: !7)
!41 = !DILocation(line: 85, column: 13, scope: !7)
!42 = !DILocation(line: 85, column: 3, scope: !7)
!43 = !DILocation(line: 87, column: 16, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 86, column: 5)
!45 = !DILocation(line: 87, column: 9, scope: !44)
!46 = !DILocation(line: 87, column: 12, scope: !44)
!47 = !DILocation(line: 88, column: 8, scope: !44)
!48 = distinct !{!48, !42, !49}
!49 = !DILocation(line: 89, column: 5, scope: !7)
!50 = !DILocation(line: 0, scope: !44)
!51 = !DILocation(line: 90, column: 6, scope: !7)
!52 = !DILocation(line: 91, column: 3, scope: !7)
