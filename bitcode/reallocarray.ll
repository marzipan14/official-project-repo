; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/reallocarray.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/reallocarray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind allocsize(2)
define dso_local i8* @reallocarray(i8*, i64, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = or i64 %2, %1, !dbg !22
  %5 = icmp ugt i64 %4, 4294967295, !dbg !22
  %6 = icmp ne i64 %1, 0, !dbg !24
  %7 = and i1 %6, %5, !dbg !22
  br i1 %7, label %8, label %13, !dbg !22

; <label>:8:                                      ; preds = %3
  %9 = udiv i64 -1, %1, !dbg !25
  %10 = icmp ult i64 %9, %2, !dbg !26
  br i1 %10, label %11, label %13, !dbg !27

; <label>:11:                                     ; preds = %8
  %12 = tail call i32* @__errno() #3, !dbg !28
  store i32 12, i32* %12, align 4, !dbg !30, !tbaa !31
  br label %16, !dbg !35

; <label>:13:                                     ; preds = %3, %8
  %14 = mul i64 %2, %1, !dbg !36
  %15 = tail call i8* @realloc(i8* %0, i64 %14) #3, !dbg !37
  br label %16, !dbg !38

; <label>:16:                                     ; preds = %13, %11
  %17 = phi i8* [ null, %11 ], [ %15, %13 ], !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  ret i8* %17, !dbg !40
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind allocsize(2) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/reallocarray.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "reallocarray", scope: !1, file: !1, line: 33, type: !13, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !4, !4}
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(name: "optr", arg: 1, scope: !12, file: !1, line: 33, type: !7)
!17 = !DILocalVariable(name: "nmemb", arg: 2, scope: !12, file: !1, line: 33, type: !4)
!18 = !DILocalVariable(name: "size", arg: 3, scope: !12, file: !1, line: 33, type: !4)
!19 = !DILocation(line: 33, column: 20, scope: !12)
!20 = !DILocation(line: 33, column: 33, scope: !12)
!21 = !DILocation(line: 33, column: 47, scope: !12)
!22 = !DILocation(line: 36, column: 32, scope: !23)
!23 = distinct !DILexicalBlock(scope: !12, file: !1, line: 36, column: 6)
!24 = !DILocation(line: 37, column: 12, scope: !23)
!25 = !DILocation(line: 37, column: 28, scope: !23)
!26 = !DILocation(line: 37, column: 36, scope: !23)
!27 = !DILocation(line: 36, column: 6, scope: !12)
!28 = !DILocation(line: 38, column: 3, scope: !29)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 37, column: 44)
!30 = !DILocation(line: 38, column: 9, scope: !29)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 39, column: 3, scope: !29)
!36 = !DILocation(line: 41, column: 29, scope: !12)
!37 = !DILocation(line: 41, column: 10, scope: !12)
!38 = !DILocation(line: 41, column: 2, scope: !12)
!39 = !DILocation(line: 0, scope: !12)
!40 = !DILocation(line: 42, column: 1, scope: !12)
