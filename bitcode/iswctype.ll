; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswctype.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswctype.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @iswctype(i32, i32) local_unnamed_addr #0 !dbg !7 {
  switch i32 %1, label %27 [
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
    i32 4, label %9
    i32 5, label %11
    i32 6, label %13
    i32 7, label %15
    i32 8, label %17
    i32 9, label %19
    i32 10, label %21
    i32 11, label %23
    i32 12, label %25
  ], !dbg !20

; <label>:3:                                      ; preds = %2
  %4 = tail call i32 @iswalnum(i32 %0) #3, !dbg !21
  br label %27, !dbg !23

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @iswalpha(i32 %0) #3, !dbg !24
  br label %27, !dbg !25

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @iswblank(i32 %0) #3, !dbg !26
  br label %27, !dbg !27

; <label>:9:                                      ; preds = %2
  %10 = tail call i32 @iswcntrl(i32 %0) #3, !dbg !28
  br label %27, !dbg !29

; <label>:11:                                     ; preds = %2
  %12 = tail call i32 @iswdigit(i32 %0) #3, !dbg !30
  br label %27, !dbg !31

; <label>:13:                                     ; preds = %2
  %14 = tail call i32 @iswgraph(i32 %0) #3, !dbg !32
  br label %27, !dbg !33

; <label>:15:                                     ; preds = %2
  %16 = tail call i32 @iswlower(i32 %0) #3, !dbg !34
  br label %27, !dbg !35

; <label>:17:                                     ; preds = %2
  %18 = tail call i32 @iswprint(i32 %0) #3, !dbg !36
  br label %27, !dbg !37

; <label>:19:                                     ; preds = %2
  %20 = tail call i32 @iswpunct(i32 %0) #3, !dbg !38
  br label %27, !dbg !39

; <label>:21:                                     ; preds = %2
  %22 = tail call i32 @iswspace(i32 %0) #3, !dbg !40
  br label %27, !dbg !41

; <label>:23:                                     ; preds = %2
  %24 = tail call i32 @iswupper(i32 %0) #3, !dbg !42
  br label %27, !dbg !43

; <label>:25:                                     ; preds = %2
  %26 = tail call i32 @iswxdigit(i32 %0) #3, !dbg !44
  br label %27, !dbg !45

; <label>:27:                                     ; preds = %2, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5, %3
  %28 = phi i32 [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ 0, %2 ], !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i32 %28, !dbg !47
}

; Function Attrs: noredzone
declare dso_local i32 @iswalnum(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswalpha(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswblank(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswcntrl(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswdigit(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswgraph(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswlower(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswprint(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswpunct(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswspace(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswupper(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @iswxdigit(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswctype.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "iswctype", scope: !1, file: !1, line: 47, type: !8, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !14}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !12, line: 124, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !15, line: 22, baseType: !10)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wctype.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "c", arg: 1, scope: !7, file: !1, line: 47, type: !11)
!18 = !DILocalVariable(name: "desc", arg: 2, scope: !7, file: !1, line: 47, type: !14)
!19 = !DILocation(line: 47, column: 1, scope: !7)
!20 = !DILocation(line: 49, column: 3, scope: !7)
!21 = !DILocation(line: 52, column: 14, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 5)
!23 = !DILocation(line: 52, column: 7, scope: !22)
!24 = !DILocation(line: 54, column: 14, scope: !22)
!25 = !DILocation(line: 54, column: 7, scope: !22)
!26 = !DILocation(line: 56, column: 14, scope: !22)
!27 = !DILocation(line: 56, column: 7, scope: !22)
!28 = !DILocation(line: 58, column: 14, scope: !22)
!29 = !DILocation(line: 58, column: 7, scope: !22)
!30 = !DILocation(line: 60, column: 14, scope: !22)
!31 = !DILocation(line: 60, column: 7, scope: !22)
!32 = !DILocation(line: 62, column: 14, scope: !22)
!33 = !DILocation(line: 62, column: 7, scope: !22)
!34 = !DILocation(line: 64, column: 14, scope: !22)
!35 = !DILocation(line: 64, column: 7, scope: !22)
!36 = !DILocation(line: 66, column: 14, scope: !22)
!37 = !DILocation(line: 66, column: 7, scope: !22)
!38 = !DILocation(line: 68, column: 14, scope: !22)
!39 = !DILocation(line: 68, column: 7, scope: !22)
!40 = !DILocation(line: 70, column: 14, scope: !22)
!41 = !DILocation(line: 70, column: 7, scope: !22)
!42 = !DILocation(line: 72, column: 14, scope: !22)
!43 = !DILocation(line: 72, column: 7, scope: !22)
!44 = !DILocation(line: 74, column: 14, scope: !22)
!45 = !DILocation(line: 74, column: 7, scope: !22)
!46 = !DILocation(line: 0, scope: !22)
!47 = !DILocation(line: 81, column: 1, scope: !7)
