; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlwr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlwr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local i8* @strlwr(i8* returned) local_unnamed_addr #0 !dbg !11 {
  %2 = load i8, i8* %0, align 1, !dbg !26, !tbaa !27
  %3 = icmp eq i8 %2, 0, !dbg !30
  br i1 %3, label %19, label %4, !dbg !31

; <label>:4:                                      ; preds = %1, %4
  %5 = phi i8 [ %17, %4 ], [ %2, %1 ]
  %6 = phi i8* [ %16, %4 ], [ %0, %1 ]
  %7 = tail call i8* @__locale_ctype_ptr() #3, !dbg !32
  %8 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !32
  %9 = zext i8 %5 to i64, !dbg !32
  %10 = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !32
  %11 = load i8, i8* %10, align 1, !dbg !32, !tbaa !27
  %12 = and i8 %11, 3, !dbg !32
  %13 = icmp eq i8 %12, 1, !dbg !32
  %14 = add i8 %5, 32, !dbg !32
  %15 = select i1 %13, i8 %14, i8 %5, !dbg !32
  store i8 %15, i8* %6, align 1, !dbg !33, !tbaa !27
  %16 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !34
  %17 = load i8, i8* %16, align 1, !dbg !26, !tbaa !27
  %18 = icmp eq i8 %17, 0, !dbg !30
  br i1 %18, label %19, label %4, !dbg !31, !llvm.loop !35

; <label>:19:                                     ; preds = %4, %1
  ret i8* %0, !dbg !37
}

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strlwr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "strlwr", scope: !1, file: !1, line: 37, type: !12, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !1, line: 37, type: !14)
!18 = !DILocalVariable(name: "ucs", scope: !11, file: !1, line: 40, type: !4)
!19 = !DILocalVariable(name: "__x", scope: !20, file: !1, line: 43, type: !5)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 43, column: 14)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 42, column: 5)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 3)
!23 = distinct !DILexicalBlock(scope: !11, file: !1, line: 41, column: 3)
!24 = !DILocation(line: 37, column: 1, scope: !11)
!25 = !DILocation(line: 40, column: 18, scope: !11)
!26 = !DILocation(line: 41, column: 11, scope: !22)
!27 = !{!28, !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 41, column: 16, scope: !22)
!31 = !DILocation(line: 41, column: 3, scope: !23)
!32 = !DILocation(line: 43, column: 14, scope: !20)
!33 = !DILocation(line: 43, column: 12, scope: !21)
!34 = !DILocation(line: 41, column: 28, scope: !22)
!35 = distinct !{!35, !31, !36}
!36 = !DILocation(line: 44, column: 5, scope: !23)
!37 = !DILocation(line: 45, column: 3, scope: !11)
