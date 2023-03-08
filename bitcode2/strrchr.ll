; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strrchr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strrchr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strrchr(i8*, i32) local_unnamed_addr #0 !dbg !10 {
  %3 = icmp eq i32 %1, 0, !dbg !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  %4 = tail call i8* @strchr(i8* %0, i32 %1) #3, !dbg !25
  br i1 %3, label %12, label %5, !dbg !24

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %4, null, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br i1 %6, label %13, label %7, !dbg !27

; <label>:7:                                      ; preds = %5, %7
  %8 = phi i8* [ %10, %7 ], [ %4, %5 ]
  %9 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  %10 = tail call i8* @strchr(i8* nonnull %9, i32 %1) #3, !dbg !30
  %11 = icmp eq i8* %10, null, !dbg !27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !27
  br i1 %11, label %13, label %7, !dbg !27, !llvm.loop !31

; <label>:12:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %13

; <label>:13:                                     ; preds = %7, %5, %12
  %14 = phi i8* [ %4, %12 ], [ null, %5 ], [ %8, %7 ], !dbg !33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i8* %14, !dbg !35
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strrchr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "strrchr", scope: !1, file: !1, line: 39, type: !11, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !13, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "s", arg: 1, scope: !10, file: !1, line: 39, type: !13)
!18 = !DILocalVariable(name: "i", arg: 2, scope: !10, file: !1, line: 39, type: !15)
!19 = !DILocalVariable(name: "last", scope: !10, file: !1, line: 43, type: !13)
!20 = !DILocation(line: 39, column: 1, scope: !10)
!21 = !DILocation(line: 43, column: 16, scope: !10)
!22 = !DILocation(line: 45, column: 7, scope: !23)
!23 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 7)
!24 = !DILocation(line: 45, column: 7, scope: !10)
!25 = !DILocation(line: 0, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 46, column: 5)
!27 = !DILocation(line: 47, column: 7, scope: !26)
!28 = !DILocation(line: 50, column: 5, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 48, column: 2)
!30 = !DILocation(line: 47, column: 17, scope: !26)
!31 = distinct !{!31, !27, !32}
!32 = !DILocation(line: 51, column: 2, scope: !26)
!33 = !DILocation(line: 0, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !1, line: 54, column: 5)
!35 = !DILocation(line: 58, column: 3, scope: !10)
