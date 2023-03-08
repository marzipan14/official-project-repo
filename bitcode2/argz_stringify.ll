; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @argz_stringify(i8* nocapture, i64, i32) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp ugt i64 %1, 1, !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  br i1 %4, label %5, label %33, !dbg !24

; <label>:5:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  %6 = add i64 %1, -1, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %7 = trunc i32 %2 to i8
  %8 = and i64 %6, 1, !dbg !30
  %9 = icmp eq i64 %1, 2, !dbg !30
  br i1 %9, label %24, label %10, !dbg !30

; <label>:10:                                     ; preds = %5
  %11 = sub i64 %6, %8, !dbg !30
  br label %12, !dbg !30

; <label>:12:                                     ; preds = %35, %10
  %13 = phi i64 [ 0, %10 ], [ %36, %35 ]
  %14 = phi i64 [ %11, %10 ], [ %37, %35 ]
  %15 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !31
  %16 = load i8, i8* %15, align 1, !dbg !31, !tbaa !34
  %17 = icmp eq i8 %16, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %17, label %18, label %19, !dbg !38

; <label>:18:                                     ; preds = %12
  store i8 %7, i8* %15, align 1, !dbg !39, !tbaa !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br label %19, !dbg !40

; <label>:19:                                     ; preds = %12, %18
  %20 = or i64 %13, 1, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !31
  %22 = load i8, i8* %21, align 1, !dbg !31, !tbaa !34
  %23 = icmp eq i8 %22, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %23, label %34, label %35, !dbg !38

; <label>:24:                                     ; preds = %35, %5
  %25 = phi i64 [ 0, %5 ], [ %36, %35 ]
  %26 = icmp eq i64 %8, 0, !dbg !38
  br i1 %26, label %33, label %27, !dbg !38

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds i8, i8* %0, i64 %25, !dbg !31
  %29 = load i8, i8* %28, align 1, !dbg !31, !tbaa !34
  %30 = icmp eq i8 %29, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %30, label %31, label %32, !dbg !38

; <label>:31:                                     ; preds = %27
  store i8 %7, i8* %28, align 1, !dbg !39, !tbaa !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br label %32, !dbg !40

; <label>:32:                                     ; preds = %31, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br label %33, !dbg !43

; <label>:33:                                     ; preds = %32, %24, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret void, !dbg !43

; <label>:34:                                     ; preds = %19
  store i8 %7, i8* %21, align 1, !dbg !39, !tbaa !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br label %35, !dbg !40

; <label>:35:                                     ; preds = %34, %19
  %36 = add i64 %13, 2, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  %37 = add i64 %14, -2, !dbg !30
  %38 = icmp eq i64 %37, 0, !dbg !30
  br i1 %38, label %24, label %12, !dbg !30, !llvm.loop !44
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/argz/argz_stringify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "argz_stringify", scope: !1, file: !1, line: 13, type: !8, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 58, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20}
!17 = !DILocalVariable(name: "argz", arg: 1, scope: !7, file: !1, line: 13, type: !10)
!18 = !DILocalVariable(name: "argz_len", arg: 2, scope: !7, file: !1, line: 13, type: !12)
!19 = !DILocalVariable(name: "sep", arg: 3, scope: !7, file: !1, line: 13, type: !15)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 18, type: !12)
!21 = !DILocation(line: 13, column: 1, scope: !7)
!22 = !DILocation(line: 21, column: 16, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!24 = !DILocation(line: 21, column: 7, scope: !7)
!25 = !DILocation(line: 18, column: 10, scope: !7)
!26 = !DILocation(line: 22, column: 10, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 22, column: 5)
!28 = !DILocation(line: 22, column: 30, scope: !29)
!29 = distinct !DILexicalBlock(scope: !27, file: !1, line: 22, column: 5)
!30 = !DILocation(line: 22, column: 5, scope: !27)
!31 = !DILocation(line: 24, column: 6, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 6)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 23, column: 7)
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 24, column: 14, scope: !32)
!38 = !DILocation(line: 24, column: 6, scope: !33)
!39 = !DILocation(line: 25, column: 12, scope: !32)
!40 = !DILocation(line: 25, column: 4, scope: !32)
!41 = !DILocation(line: 22, column: 36, scope: !29)
!42 = !DILocation(line: 22, column: 5, scope: !29)
!43 = !DILocation(line: 27, column: 1, scope: !7)
!44 = distinct !{!44, !30, !45}
!45 = !DILocation(line: 26, column: 7, scope: !27)
