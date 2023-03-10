; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @strspn(i8*, i8* nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  %3 = load i8, i8* %0, align 1, !dbg !25, !tbaa !26
  %4 = icmp eq i8 %3, 0, !dbg !29
  br i1 %4, label %23, label %5, !dbg !29

; <label>:5:                                      ; preds = %2
  %6 = load i8, i8* %1, align 1, !tbaa !26
  %7 = icmp eq i8 %6, 0
  br label %8, !dbg !29

; <label>:8:                                      ; preds = %5, %19
  %9 = phi i8 [ %3, %5 ], [ %21, %19 ]
  %10 = phi i8* [ %0, %5 ], [ %20, %19 ]
  br i1 %7, label %23, label %14, !dbg !31

; <label>:11:                                     ; preds = %14
  %12 = load i8, i8* %18, align 1, !dbg !34, !tbaa !26
  %13 = icmp eq i8 %12, 0, !dbg !31
  br i1 %13, label %23, label %14, !dbg !31, !llvm.loop !36

; <label>:14:                                     ; preds = %8, %11
  %15 = phi i8 [ %12, %11 ], [ %6, %8 ]
  %16 = phi i8* [ %18, %11 ], [ %1, %8 ]
  %17 = icmp eq i8 %9, %15, !dbg !38
  %18 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !41
  br i1 %17, label %19, label %11, !dbg !42

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !43
  %21 = load i8, i8* %20, align 1, !dbg !25, !tbaa !26
  %22 = icmp eq i8 %21, 0, !dbg !29
  br i1 %22, label %23, label %8, !dbg !29, !llvm.loop !44

; <label>:23:                                     ; preds = %19, %8, %11, %2
  %24 = phi i8* [ %0, %2 ], [ %10, %11 ], [ %0, %8 ], [ %20, %19 ]
  %25 = ptrtoint i8* %24 to i64, !dbg !46
  %26 = ptrtoint i8* %0 to i64, !dbg !46
  %27 = sub i64 %25, %26, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i64 %27, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strspn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "strspn", scope: !1, file: !1, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !15, !15}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20, !21, !22}
!19 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 39, type: !15)
!20 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 39, type: !15)
!21 = !DILocalVariable(name: "s", scope: !7, file: !1, line: 43, type: !15)
!22 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 44, type: !15)
!23 = !DILocation(line: 39, column: 1, scope: !7)
!24 = !DILocation(line: 43, column: 16, scope: !7)
!25 = !DILocation(line: 46, column: 10, scope: !7)
!26 = !{!27, !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 46, column: 3, scope: !7)
!30 = !DILocation(line: 44, column: 16, scope: !7)
!31 = !DILocation(line: 48, column: 7, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 48, column: 7)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 47, column: 5)
!34 = !DILocation(line: 48, column: 20, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 48, column: 7)
!36 = distinct !{!36, !31, !37}
!37 = !DILocation(line: 52, column: 2, scope: !32)
!38 = !DILocation(line: 50, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 50, column: 8)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 49, column: 2)
!41 = !DILocation(line: 48, column: 25, scope: !35)
!42 = !DILocation(line: 50, column: 8, scope: !40)
!43 = !DILocation(line: 55, column: 9, scope: !33)
!44 = distinct !{!44, !29, !45}
!45 = !DILocation(line: 56, column: 5, scope: !7)
!46 = !DILocation(line: 58, column: 13, scope: !7)
!47 = !DILocation(line: 58, column: 3, scope: !7)
