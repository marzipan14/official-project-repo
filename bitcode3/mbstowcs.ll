; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i64 @mbstowcs(i32* noalias nocapture, i8* noalias nocapture readonly, i64) local_unnamed_addr #0 !dbg !11 {
  %4 = icmp eq i64 %2, 0, !dbg !29
  br i1 %4, label %19, label %5, !dbg !31

; <label>:5:                                      ; preds = %3, %13
  %6 = phi i32* [ %14, %13 ], [ %0, %3 ]
  %7 = phi i8* [ %15, %13 ], [ %1, %3 ]
  %8 = phi i64 [ %17, %13 ], [ %2, %3 ]
  %9 = phi i32 [ %16, %13 ], [ 0, %3 ], !dbg !32
  %10 = load i8, i8* %7, align 1, !dbg !35, !tbaa !37
  %11 = sext i8 %10 to i32, !dbg !40
  store i32 %11, i32* %6, align 4, !dbg !41, !tbaa !42
  %12 = icmp eq i8 %10, 0, !dbg !44
  br i1 %12, label %19, label %13, !dbg !45

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds i32, i32* %6, i64 1, !dbg !46
  %15 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !47
  %16 = add nuw nsw i32 %9, 1, !dbg !48
  %17 = add i64 %8, -1, !dbg !49
  %18 = icmp eq i64 %17, 0, !dbg !50
  br i1 %18, label %19, label %5, !dbg !51, !llvm.loop !52

; <label>:19:                                     ; preds = %13, %5, %3
  %20 = phi i32 [ 0, %3 ], [ %16, %13 ], [ %9, %5 ], !dbg !55
  %21 = sext i32 %20 to i64, !dbg !56
  ret i64 %21, !dbg !57
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbstowcs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !5, line: 83, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "mbstowcs", scope: !1, file: !1, line: 57, type: !12, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !16, !18, !14}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !15)
!15 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{!23, !24, !25, !26}
!23 = !DILocalVariable(name: "pwcs", arg: 1, scope: !11, file: !1, line: 57, type: !16)
!24 = !DILocalVariable(name: "s", arg: 2, scope: !11, file: !1, line: 57, type: !18)
!25 = !DILocalVariable(name: "n", arg: 3, scope: !11, file: !1, line: 57, type: !14)
!26 = !DILocalVariable(name: "count", scope: !11, file: !1, line: 69, type: !6)
!27 = !DILocation(line: 57, column: 1, scope: !11)
!28 = !DILocation(line: 69, column: 7, scope: !11)
!29 = !DILocation(line: 71, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !11, file: !1, line: 71, column: 7)
!31 = !DILocation(line: 71, column: 7, scope: !11)
!32 = !DILocation(line: 0, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 72, column: 8)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 71, column: 15)
!35 = !DILocation(line: 73, column: 32, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 73, column: 11)
!37 = !{!38, !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 73, column: 22, scope: !36)
!41 = !DILocation(line: 73, column: 20, scope: !36)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !38, i64 0}
!44 = !DILocation(line: 73, column: 38, scope: !36)
!45 = !DILocation(line: 73, column: 11, scope: !33)
!46 = !DILocation(line: 73, column: 17, scope: !36)
!47 = !DILocation(line: 73, column: 34, scope: !36)
!48 = !DILocation(line: 75, column: 12, scope: !33)
!49 = !DILocation(line: 76, column: 14, scope: !34)
!50 = !DILocation(line: 76, column: 18, scope: !34)
!51 = !DILocation(line: 76, column: 5, scope: !33)
!52 = distinct !{!52, !53, !54}
!53 = !DILocation(line: 72, column: 5, scope: !34)
!54 = !DILocation(line: 76, column: 22, scope: !34)
!55 = !DILocation(line: 0, scope: !11)
!56 = !DILocation(line: 79, column: 10, scope: !11)
!57 = !DILocation(line: 79, column: 3, scope: !11)
