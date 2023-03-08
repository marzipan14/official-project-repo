; ModuleID = '/root/.unikraft/libs/newlib/file.c'
source_filename = "/root/.unikraft/libs/newlib/file.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@eventfd._x = internal unnamed_addr global i1 false, align 4, !dbg !0
@errno = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: noredzone nounwind
define dso_local i32 @eventfd(i32, i32) local_unnamed_addr #0 !dbg !2 {
  %3 = load i1, i1* @eventfd._x, align 4
  br i1 %3, label %5, label %4, !dbg !21

; <label>:4:                                      ; preds = %2
  store i1 true, i1* @eventfd._x, align 4
  br label %5, !dbg !23

; <label>:5:                                      ; preds = %2, %4
  store i32 134, i32* @errno, align 4, !dbg !26, !tbaa !27
  ret i32 -1, !dbg !31
}

; Function Attrs: noredzone nounwind readnone
define dso_local noalias i8* @realpath(i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr #1 !dbg !32 {
  ret i8* null, !dbg !46
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "_x", scope: !2, file: !3, line: 85, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "eventfd", scope: !3, file: !3, line: 83, type: !4, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !12)
!3 = !DIFile(filename: "/root/.unikraft/libs/newlib/file.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, globals: !10)
!9 = !{}
!10 = !{!11}
!11 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "initval", arg: 1, scope: !2, file: !3, line: 83, type: !7)
!14 = !DILocalVariable(name: "flags", arg: 2, scope: !2, file: !3, line: 83, type: !6)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = !DILocation(line: 83, column: 26, scope: !2)
!20 = !DILocation(line: 83, column: 39, scope: !2)
!21 = !DILocation(line: 85, column: 2, scope: !22)
!22 = distinct !DILexicalBlock(scope: !2, file: !3, line: 85, column: 2)
!23 = !DILocation(line: 85, column: 2, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !3, line: 85, column: 2)
!25 = distinct !DILexicalBlock(scope: !22, file: !3, line: 85, column: 2)
!26 = !DILocation(line: 86, column: 8, scope: !2)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 87, column: 2, scope: !2)
!32 = distinct !DISubprogram(name: "realpath", scope: !3, file: !3, line: 90, type: !33, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !41)
!33 = !DISubroutineType(types: !34)
!34 = !{!35, !37, !40}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!41 = !{!42, !43}
!42 = !DILocalVariable(name: "file_name", arg: 1, scope: !32, file: !3, line: 90, type: !37)
!43 = !DILocalVariable(name: "resolved_name", arg: 2, scope: !32, file: !3, line: 90, type: !40)
!44 = !DILocation(line: 90, column: 37, scope: !32)
!45 = !DILocation(line: 90, column: 63, scope: !32)
!46 = !DILocation(line: 92, column: 2, scope: !32)
