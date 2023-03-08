; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_next.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_next.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @argz_next(i8* readnone, i64, i8* readonly) local_unnamed_addr #0 !dbg !10 {
  %4 = icmp eq i8* %2, null, !dbg !25
  br i1 %4, label %14, label %5, !dbg !27

; <label>:5:                                      ; preds = %3, %5
  %6 = phi i8* [ %9, %5 ], [ %2, %3 ]
  %7 = load i8, i8* %6, align 1, !dbg !28, !tbaa !30
  %8 = icmp eq i8 %7, 0, !dbg !33
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !34
  br i1 %8, label %10, label %5, !dbg !35, !llvm.loop !36

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !38
  %12 = icmp ult i8* %9, %11, !dbg !40
  %13 = select i1 %12, i8* %9, i8* null, !dbg !41
  br label %17, !dbg !41

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i64 %1, 0, !dbg !42
  %16 = select i1 %15, i8* null, i8* %0, !dbg !45
  br label %17, !dbg !45

; <label>:17:                                     ; preds = %14, %10
  %18 = phi i8* [ %13, %10 ], [ %16, %14 ], !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i8* %18, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_next.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "argz_next", scope: !1, file: !1, line: 14, type: !11, isLocal: false, isDefinition: true, scopeLine: 18, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4, !13, !18}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 40, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !16, line: 129, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(name: "argz", arg: 1, scope: !10, file: !1, line: 14, type: !4)
!22 = !DILocalVariable(name: "argz_len", arg: 2, scope: !10, file: !1, line: 14, type: !13)
!23 = !DILocalVariable(name: "entry", arg: 3, scope: !10, file: !1, line: 14, type: !18)
!24 = !DILocation(line: 14, column: 1, scope: !10)
!25 = !DILocation(line: 19, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !10, file: !1, line: 19, column: 7)
!27 = !DILocation(line: 19, column: 7, scope: !10)
!28 = !DILocation(line: 21, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 20, column: 5)
!30 = !{!31, !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 21, column: 20, scope: !29)
!34 = !DILocation(line: 0, scope: !29)
!35 = !DILocation(line: 21, column: 7, scope: !29)
!36 = distinct !{!36, !35, !37}
!37 = !DILocation(line: 22, column: 14, scope: !29)
!38 = !DILocation(line: 25, column: 25, scope: !39)
!39 = distinct !DILexicalBlock(scope: !29, file: !1, line: 25, column: 11)
!40 = !DILocation(line: 25, column: 17, scope: !39)
!41 = !DILocation(line: 28, column: 9, scope: !39)
!42 = !DILocation(line: 32, column: 20, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 32, column: 11)
!44 = distinct !DILexicalBlock(scope: !26, file: !1, line: 31, column: 5)
!45 = !DILocation(line: 35, column: 9, scope: !43)
!46 = !DILocation(line: 0, scope: !43)
!47 = !DILocation(line: 37, column: 1, scope: !10)
