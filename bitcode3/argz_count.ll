; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_count.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_count.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @argz_count(i8* nocapture readonly, i64) local_unnamed_addr #0 !dbg !7 {
  %3 = icmp eq i64 %1, 0, !dbg !25
  br i1 %3, label %57, label %4, !dbg !28

; <label>:4:                                      ; preds = %2
  %5 = add i64 %1, -1, !dbg !29
  %6 = and i64 %1, 3, !dbg !29
  %7 = icmp ult i64 %5, 3, !dbg !29
  br i1 %7, label %40, label %8, !dbg !29

; <label>:8:                                      ; preds = %4
  %9 = sub i64 %1, %6, !dbg !29
  br label %10, !dbg !29

; <label>:10:                                     ; preds = %10, %8
  %11 = phi i64 [ 0, %8 ], [ %37, %10 ]
  %12 = phi i64 [ 0, %8 ], [ %36, %10 ]
  %13 = phi i64 [ %9, %8 ], [ %38, %10 ]
  %14 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !29
  %15 = load i8, i8* %14, align 1, !dbg !29, !tbaa !32
  %16 = icmp eq i8 %15, 0, !dbg !35
  %17 = zext i1 %16 to i64, !dbg !36
  %18 = add i64 %12, %17, !dbg !36
  %19 = or i64 %11, 1, !dbg !37
  %20 = getelementptr inbounds i8, i8* %0, i64 %19, !dbg !29
  %21 = load i8, i8* %20, align 1, !dbg !29, !tbaa !32
  %22 = icmp eq i8 %21, 0, !dbg !35
  %23 = zext i1 %22 to i64, !dbg !36
  %24 = add i64 %18, %23, !dbg !36
  %25 = or i64 %11, 2, !dbg !37
  %26 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !29
  %27 = load i8, i8* %26, align 1, !dbg !29, !tbaa !32
  %28 = icmp eq i8 %27, 0, !dbg !35
  %29 = zext i1 %28 to i64, !dbg !36
  %30 = add i64 %24, %29, !dbg !36
  %31 = or i64 %11, 3, !dbg !37
  %32 = getelementptr inbounds i8, i8* %0, i64 %31, !dbg !29
  %33 = load i8, i8* %32, align 1, !dbg !29, !tbaa !32
  %34 = icmp eq i8 %33, 0, !dbg !35
  %35 = zext i1 %34 to i64, !dbg !36
  %36 = add i64 %30, %35, !dbg !36
  %37 = add i64 %11, 4, !dbg !37
  %38 = add i64 %13, -4, !dbg !28
  %39 = icmp eq i64 %38, 0, !dbg !28
  br i1 %39, label %40, label %10, !dbg !28, !llvm.loop !38

; <label>:40:                                     ; preds = %10, %4
  %41 = phi i64 [ undef, %4 ], [ %36, %10 ]
  %42 = phi i64 [ 0, %4 ], [ %37, %10 ]
  %43 = phi i64 [ 0, %4 ], [ %36, %10 ]
  %44 = icmp eq i64 %6, 0, !dbg !28
  br i1 %44, label %57, label %45, !dbg !28

; <label>:45:                                     ; preds = %40, %45
  %46 = phi i64 [ %54, %45 ], [ %42, %40 ]
  %47 = phi i64 [ %53, %45 ], [ %43, %40 ]
  %48 = phi i64 [ %55, %45 ], [ %6, %40 ]
  %49 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !29
  %50 = load i8, i8* %49, align 1, !dbg !29, !tbaa !32
  %51 = icmp eq i8 %50, 0, !dbg !35
  %52 = zext i1 %51 to i64, !dbg !36
  %53 = add i64 %47, %52, !dbg !36
  %54 = add nuw i64 %46, 1, !dbg !37
  %55 = add i64 %48, -1, !dbg !28
  %56 = icmp eq i64 %55, 0, !dbg !28
  br i1 %56, label %57, label %45, !dbg !28, !llvm.loop !40

; <label>:57:                                     ; preds = %40, %45, %2
  %58 = phi i64 [ 0, %2 ], [ %41, %40 ], [ %53, %45 ], !dbg !42
  ret i64 %58, !dbg !43
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!25 = !DILocation(line: 20, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 20, column: 3)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 3)
!28 = !DILocation(line: 20, column: 3, scope: !27)
!29 = !DILocation(line: 22, column: 11, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 22, column: 11)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 21, column: 5)
!32 = !{!33, !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 22, column: 19, scope: !30)
!36 = !DILocation(line: 22, column: 11, scope: !31)
!37 = !DILocation(line: 20, column: 30, scope: !26)
!38 = distinct !{!38, !28, !39}
!39 = !DILocation(line: 24, column: 5, scope: !27)
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !DILocation(line: 0, scope: !30)
!43 = !DILocation(line: 25, column: 3, scope: !7)
