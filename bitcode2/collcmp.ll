; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collcmp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collcmp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__collate_range_cmp.s1 = internal global [2 x i8] zeroinitializer, align 1, !dbg !0
@__collate_range_cmp.s2 = internal global [2 x i8] zeroinitializer, align 1, !dbg !10
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__collate_range_cmp(i32, i32) local_unnamed_addr #0 !dbg !2 {
  %3 = and i32 %0, 255, !dbg !26
  %4 = and i32 %1, 255, !dbg !27
  %5 = icmp eq i32 %3, %4, !dbg !28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !30
  br i1 %5, label %13, label %6, !dbg !30

; <label>:6:                                      ; preds = %2
  %7 = trunc i32 %0 to i8, !dbg !31
  store i8 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @__collate_range_cmp.s1, i64 0, i64 0), align 1, !dbg !32, !tbaa !33
  %8 = trunc i32 %1 to i8, !dbg !36
  store i8 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @__collate_range_cmp.s2, i64 0, i64 0), align 1, !dbg !37, !tbaa !33
  %9 = tail call i32 @strcoll(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @__collate_range_cmp.s1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @__collate_range_cmp.s2, i64 0, i64 0)) #3, !dbg !38
  %10 = icmp eq i32 %9, 0, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %11 = sub nsw i32 %3, %4, !dbg !43
  %12 = select i1 %10, i32 %11, i32 %9, !dbg !42
  br label %13, !dbg !42

; <label>:13:                                     ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ], !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  ret i32 %14, !dbg !46
}

; Function Attrs: noredzone
declare dso_local i32 @strcoll(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "s1", scope: !2, file: !3, line: 46, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__collate_range_cmp", scope: !3, file: !3, line: 43, type: !4, isLocal: false, isDefinition: true, scopeLine: 45, isOptimized: true, unit: !7, retainedNodes: !16)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/posix/collcmp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !9)
!8 = !{}
!9 = !{!0, !10}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "s2", scope: !2, file: !3, line: 46, type: !12, isLocal: true, isDefinition: true)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 16, elements: !14)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15}
!15 = !DISubrange(count: 2)
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "c1", arg: 1, scope: !2, file: !3, line: 44, type: !6)
!18 = !DILocalVariable(name: "c2", arg: 2, scope: !2, file: !3, line: 44, type: !6)
!19 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 47, type: !6)
!20 = !{i32 2, !"Dwarf Version", i32 4}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!24 = !DILocation(line: 44, column: 6, scope: !2)
!25 = !DILocation(line: 44, column: 10, scope: !2)
!26 = !DILocation(line: 52, column: 5, scope: !2)
!27 = !DILocation(line: 53, column: 5, scope: !2)
!28 = !DILocation(line: 54, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 6)
!30 = !DILocation(line: 54, column: 6, scope: !2)
!31 = !DILocation(line: 79, column: 10, scope: !2)
!32 = !DILocation(line: 79, column: 8, scope: !2)
!33 = !{!34, !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 80, column: 10, scope: !2)
!37 = !DILocation(line: 80, column: 8, scope: !2)
!38 = !DILocation(line: 81, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !2, file: !3, line: 81, column: 6)
!40 = !DILocation(line: 47, column: 6, scope: !2)
!41 = !DILocation(line: 81, column: 30, scope: !39)
!42 = !DILocation(line: 81, column: 6, scope: !2)
!43 = !DILocation(line: 83, column: 13, scope: !2)
!44 = !DILocation(line: 0, scope: !2)
!45 = !DILocation(line: 0, scope: !29)
!46 = !DILocation(line: 84, column: 1, scope: !2)
