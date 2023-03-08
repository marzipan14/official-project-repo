; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/itoa.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/itoa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @__itoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !9 {
  %4 = add i32 %2, -2, !dbg !23
  %5 = icmp ugt i32 %4, 34, !dbg !23
  br i1 %5, label %6, label %7, !dbg !23

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !25, !tbaa !27
  br label %18, !dbg !30

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 %2, 10, !dbg !31
  %9 = icmp slt i32 %0, 0, !dbg !33
  %10 = and i1 %9, %8, !dbg !34
  br i1 %10, label %11, label %13, !dbg !34

; <label>:11:                                     ; preds = %7
  store i8 45, i8* %1, align 1, !dbg !35, !tbaa !27
  %12 = sub nsw i32 0, %0, !dbg !37
  br label %13, !dbg !39

; <label>:13:                                     ; preds = %7, %11
  %14 = phi i32 [ %12, %11 ], [ %0, %7 ], !dbg !40
  %15 = phi i64 [ 1, %11 ], [ 0, %7 ]
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !41
  %17 = tail call i8* @__utoa(i32 %14, i8* %16, i32 %2) #3, !dbg !42
  br label %18, !dbg !43

; <label>:18:                                     ; preds = %13, %6
  %19 = phi i8* [ null, %6 ], [ %1, %13 ], !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  ret i8* %19, !dbg !45
}

; Function Attrs: noredzone
declare dso_local i8* @__utoa(i32, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @itoa(i32, i8*, i32) local_unnamed_addr #0 !dbg !46 {
  %4 = add i32 %2, -2, !dbg !55
  %5 = icmp ugt i32 %4, 34, !dbg !55
  br i1 %5, label %6, label %7, !dbg !55

; <label>:6:                                      ; preds = %3
  store i8 0, i8* %1, align 1, !dbg !56, !tbaa !27
  br label %18, !dbg !57

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i32 %2, 10, !dbg !58
  %9 = icmp slt i32 %0, 0, !dbg !59
  %10 = and i1 %9, %8, !dbg !60
  br i1 %10, label %11, label %13, !dbg !60

; <label>:11:                                     ; preds = %7
  store i8 45, i8* %1, align 1, !dbg !61, !tbaa !27
  %12 = sub nsw i32 0, %0, !dbg !62
  br label %13, !dbg !64

; <label>:13:                                     ; preds = %11, %7
  %14 = phi i32 [ %12, %11 ], [ %0, %7 ], !dbg !65
  %15 = phi i64 [ 1, %11 ], [ 0, %7 ]
  %16 = getelementptr inbounds i8, i8* %1, i64 %15, !dbg !66
  %17 = tail call i8* @__utoa(i32 %14, i8* %16, i32 %2) #3, !dbg !67
  br label %18, !dbg !68

; <label>:18:                                     ; preds = %6, %13
  %19 = phi i8* [ null, %6 ], [ %1, %13 ], !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !71
  ret i8* %19, !dbg !71
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/itoa.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "__itoa", scope: !1, file: !1, line: 33, type: !10, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !14, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20}
!16 = !DILocalVariable(name: "value", arg: 1, scope: !9, file: !1, line: 33, type: !14)
!17 = !DILocalVariable(name: "str", arg: 2, scope: !9, file: !1, line: 33, type: !12)
!18 = !DILocalVariable(name: "base", arg: 3, scope: !9, file: !1, line: 33, type: !14)
!19 = !DILocalVariable(name: "uvalue", scope: !9, file: !1, line: 38, type: !4)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 39, type: !14)
!21 = !DILocation(line: 33, column: 1, scope: !9)
!22 = !DILocation(line: 39, column: 7, scope: !9)
!23 = !DILocation(line: 42, column: 18, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 42, column: 7)
!25 = !DILocation(line: 44, column: 14, scope: !26)
!26 = distinct !DILexicalBlock(scope: !24, file: !1, line: 43, column: 5)
!27 = !{!28, !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 45, column: 7, scope: !26)
!31 = !DILocation(line: 50, column: 13, scope: !32)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 50, column: 7)
!33 = !DILocation(line: 50, column: 30, scope: !32)
!34 = !DILocation(line: 50, column: 20, scope: !32)
!35 = !DILocation(line: 52, column: 16, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 51, column: 5)
!37 = !DILocation(line: 53, column: 26, scope: !36)
!38 = !DILocation(line: 38, column: 12, scope: !9)
!39 = !DILocation(line: 54, column: 5, scope: !36)
!40 = !DILocation(line: 0, scope: !32)
!41 = !DILocation(line: 58, column: 20, scope: !9)
!42 = !DILocation(line: 58, column: 3, scope: !9)
!43 = !DILocation(line: 59, column: 3, scope: !9)
!44 = !DILocation(line: 0, scope: !9)
!45 = !DILocation(line: 60, column: 1, scope: !9)
!46 = distinct !DISubprogram(name: "itoa", scope: !1, file: !1, line: 63, type: !10, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !47)
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: "value", arg: 1, scope: !46, file: !1, line: 63, type: !14)
!49 = !DILocalVariable(name: "str", arg: 2, scope: !46, file: !1, line: 63, type: !12)
!50 = !DILocalVariable(name: "base", arg: 3, scope: !46, file: !1, line: 63, type: !14)
!51 = !DILocation(line: 63, column: 1, scope: !46)
!52 = !DILocation(line: 33, column: 1, scope: !9, inlinedAt: !53)
!53 = distinct !DILocation(line: 68, column: 10, scope: !46)
!54 = !DILocation(line: 39, column: 7, scope: !9, inlinedAt: !53)
!55 = !DILocation(line: 42, column: 18, scope: !24, inlinedAt: !53)
!56 = !DILocation(line: 44, column: 14, scope: !26, inlinedAt: !53)
!57 = !DILocation(line: 45, column: 7, scope: !26, inlinedAt: !53)
!58 = !DILocation(line: 50, column: 13, scope: !32, inlinedAt: !53)
!59 = !DILocation(line: 50, column: 30, scope: !32, inlinedAt: !53)
!60 = !DILocation(line: 50, column: 20, scope: !32, inlinedAt: !53)
!61 = !DILocation(line: 52, column: 16, scope: !36, inlinedAt: !53)
!62 = !DILocation(line: 53, column: 26, scope: !36, inlinedAt: !53)
!63 = !DILocation(line: 38, column: 12, scope: !9, inlinedAt: !53)
!64 = !DILocation(line: 54, column: 5, scope: !36, inlinedAt: !53)
!65 = !DILocation(line: 0, scope: !32, inlinedAt: !53)
!66 = !DILocation(line: 58, column: 20, scope: !9, inlinedAt: !53)
!67 = !DILocation(line: 58, column: 3, scope: !9, inlinedAt: !53)
!68 = !DILocation(line: 59, column: 3, scope: !9, inlinedAt: !53)
!69 = !DILocation(line: 0, scope: !9, inlinedAt: !53)
!70 = !DILocation(line: 60, column: 1, scope: !9, inlinedAt: !53)
!71 = !DILocation(line: 68, column: 3, scope: !46)
