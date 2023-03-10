; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcstombs(i8* noalias nocapture, i32* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !9 {
  %4 = icmp eq i64 %2, 0, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br i1 %4, label %20, label %5, !dbg !31

; <label>:5:                                      ; preds = %3, %14
  %6 = phi i8* [ %15, %14 ], [ %0, %3 ]
  %7 = phi i32* [ %16, %14 ], [ %1, %3 ]
  %8 = phi i64 [ %18, %14 ], [ %2, %3 ]
  %9 = phi i32 [ %17, %14 ], [ 0, %3 ], !dbg !32
  %10 = load i32, i32* %7, align 4, !dbg !35, !tbaa !37
  %11 = trunc i32 %10 to i8, !dbg !41
  store i8 %11, i8* %6, align 1, !dbg !42, !tbaa !43
  %12 = and i32 %10, 255, !dbg !44
  %13 = icmp eq i32 %12, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %13, label %20, label %14, !dbg !45

; <label>:14:                                     ; preds = %5
  %15 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !46
  %16 = getelementptr inbounds i32, i32* %7, i64 1, !dbg !47
  %17 = add nuw nsw i32 %9, 1, !dbg !48
  %18 = add i64 %8, -1, !dbg !49
  %19 = icmp eq i64 %18, 0, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %19, label %20, label %5, !dbg !51, !llvm.loop !52

; <label>:20:                                     ; preds = %14, %5, %3
  %21 = phi i32 [ 0, %3 ], [ %17, %14 ], [ %9, %5 ], !dbg !55
  %22 = sext i32 %21 to i64, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  ret i64 %22, !dbg !57
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcstombs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "wcstombs", scope: !1, file: !1, line: 58, type: !10, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !15, !17, !12}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !13, line: 83, baseType: !21)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26}
!23 = !DILocalVariable(name: "s", arg: 1, scope: !9, file: !1, line: 58, type: !15)
!24 = !DILocalVariable(name: "pwcs", arg: 2, scope: !9, file: !1, line: 58, type: !17)
!25 = !DILocalVariable(name: "n", arg: 3, scope: !9, file: !1, line: 58, type: !12)
!26 = !DILocalVariable(name: "count", scope: !9, file: !1, line: 69, type: !21)
!27 = !DILocation(line: 58, column: 1, scope: !9)
!28 = !DILocation(line: 69, column: 7, scope: !9)
!29 = !DILocation(line: 71, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 71, column: 7)
!31 = !DILocation(line: 71, column: 7, scope: !9)
!32 = !DILocation(line: 0, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 72, column: 8)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 71, column: 15)
!35 = !DILocation(line: 73, column: 26, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 73, column: 11)
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 73, column: 19, scope: !36)
!42 = !DILocation(line: 73, column: 17, scope: !36)
!43 = !{!39, !39, i64 0}
!44 = !DILocation(line: 73, column: 35, scope: !36)
!45 = !DILocation(line: 73, column: 11, scope: !33)
!46 = !DILocation(line: 73, column: 14, scope: !36)
!47 = !DILocation(line: 73, column: 31, scope: !36)
!48 = !DILocation(line: 75, column: 12, scope: !33)
!49 = !DILocation(line: 76, column: 14, scope: !34)
!50 = !DILocation(line: 76, column: 18, scope: !34)
!51 = !DILocation(line: 76, column: 5, scope: !33)
!52 = distinct !{!52, !53, !54}
!53 = !DILocation(line: 72, column: 5, scope: !34)
!54 = !DILocation(line: 76, column: 22, scope: !34)
!55 = !DILocation(line: 0, scope: !9)
!56 = !DILocation(line: 79, column: 10, scope: !9)
!57 = !DILocation(line: 79, column: 3, scope: !9)
