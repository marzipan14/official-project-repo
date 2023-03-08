; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_count.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_count.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @argz_count(i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  %3 = icmp eq i64 %1, 0, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %3, label %37, label %4, !dbg !29

; <label>:4:                                      ; preds = %2
  %5 = and i64 %1, 1, !dbg !30
  %6 = icmp eq i64 %1, 1, !dbg !30
  br i1 %6, label %24, label %7, !dbg !30

; <label>:7:                                      ; preds = %4
  %8 = sub i64 %1, %5, !dbg !30
  br label %9, !dbg !30

; <label>:9:                                      ; preds = %41, %7
  %10 = phi i64 [ 0, %7 ], [ %43, %41 ]
  %11 = phi i64 [ 0, %7 ], [ %42, %41 ]
  %12 = phi i64 [ %8, %7 ], [ %44, %41 ]
  %13 = getelementptr inbounds i8, i8* %0, i64 %10, !dbg !30
  %14 = load i8, i8* %13, align 1, !dbg !30, !tbaa !33
  %15 = icmp eq i8 %14, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %15, label %16, label %18, !dbg !37

; <label>:16:                                     ; preds = %9
  %17 = add i64 %11, 1, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %18, !dbg !39

; <label>:18:                                     ; preds = %9, %16
  %19 = phi i64 [ %17, %16 ], [ %11, %9 ], !dbg !40
  %20 = or i64 %10, 1, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !30
  %22 = load i8, i8* %21, align 1, !dbg !30, !tbaa !33
  %23 = icmp eq i8 %22, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %23, label %39, label %41, !dbg !37

; <label>:24:                                     ; preds = %41, %4
  %25 = phi i64 [ undef, %4 ], [ %42, %41 ]
  %26 = phi i64 [ 0, %4 ], [ %43, %41 ]
  %27 = phi i64 [ 0, %4 ], [ %42, %41 ]
  %28 = icmp eq i64 %5, 0, !dbg !37
  br i1 %28, label %37, label %29, !dbg !37

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds i8, i8* %0, i64 %26, !dbg !30
  %31 = load i8, i8* %30, align 1, !dbg !30, !tbaa !33
  %32 = icmp eq i8 %31, 0, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %32, label %33, label %35, !dbg !37

; <label>:33:                                     ; preds = %29
  %34 = add i64 %27, 1, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %35, !dbg !39

; <label>:35:                                     ; preds = %33, %29
  %36 = phi i64 [ %34, %33 ], [ %27, %29 ], !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br label %37, !dbg !43

; <label>:37:                                     ; preds = %35, %24, %2
  %38 = phi i64 [ 0, %2 ], [ %25, %24 ], [ %36, %35 ], !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i64 %38, !dbg !43

; <label>:39:                                     ; preds = %18
  %40 = add i64 %19, 1, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %41, !dbg !39

; <label>:41:                                     ; preds = %39, %18
  %42 = phi i64 [ %40, %39 ], [ %19, %18 ], !dbg !40
  %43 = add i64 %10, 2, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  %44 = add i64 %12, -2, !dbg !29
  %45 = icmp eq i64 %44, 0, !dbg !29
  br i1 %45, label %24, label %9, !dbg !29, !llvm.loop !45
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_count.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "argz_count", scope: !1, file: !1, line: 13, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !21}
!17 = !DILocalVariable(name: "argz", arg: 1, scope: !7, file: !1, line: 13, type: !13)
!18 = !DILocalVariable(name: "argz_len", arg: 2, scope: !7, file: !1, line: 13, type: !10)
!19 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 17, type: !20)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "count", scope: !7, file: !1, line: 18, type: !10)
!22 = !DILocation(line: 13, column: 1, scope: !7)
!23 = !DILocation(line: 18, column: 10, scope: !7)
!24 = !DILocation(line: 17, column: 7, scope: !7)
!25 = !DILocation(line: 20, column: 8, scope: !26)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 3)
!27 = !DILocation(line: 20, column: 17, scope: !28)
!28 = distinct !DILexicalBlock(scope: !26, file: !1, line: 20, column: 3)
!29 = !DILocation(line: 20, column: 3, scope: !26)
!30 = !DILocation(line: 22, column: 11, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 22, column: 11)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 21, column: 5)
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 22, column: 19, scope: !31)
!37 = !DILocation(line: 22, column: 11, scope: !32)
!38 = !DILocation(line: 23, column: 14, scope: !31)
!39 = !DILocation(line: 23, column: 9, scope: !31)
!40 = !DILocation(line: 0, scope: !7)
!41 = !DILocation(line: 20, column: 30, scope: !28)
!42 = !DILocation(line: 20, column: 3, scope: !28)
!43 = !DILocation(line: 25, column: 3, scope: !7)
!44 = !DILocation(line: 0, scope: !31)
!45 = distinct !{!45, !29, !46}
!46 = !DILocation(line: 24, column: 5, scope: !26)
