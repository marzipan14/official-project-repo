; ModuleID = '/root/.unikraft/libs/newlib/file.c'
source_filename = "/root/.unikraft/libs/newlib/file.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@eventfd._x = internal unnamed_addr global i1 false, align 4, !dbg !0
@errno = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @eventfd(i32, i32) local_unnamed_addr #0 !dbg !2 {
  %3 = load i1, i1* @eventfd._x, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !21
  br i1 %3, label %5, label %4, !dbg !21

; <label>:4:                                      ; preds = %2
  store i1 true, i1* @eventfd._x, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br label %5, !dbg !51

; <label>:5:                                      ; preds = %2, %4
  store i32 134, i32* @errno, align 4, !dbg !52, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  ret i32 -1, !dbg !57
}

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @realpath(i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr #0 !dbg !58 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  ret i8* null, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

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
!23 = !DILocalVariable(name: "fmt", arg: 1, scope: !24, file: !25, line: 178, type: !28)
!24 = distinct !DISubprogram(name: "uk_pr_warn", scope: !25, file: !25, line: 178, type: !26, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !31)
!25 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, null}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !{!23, !32}
!32 = !DILocalVariable(name: "argp", scope: !24, file: !25, line: 180, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !34, line: 32, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 180, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 192, elements: !44)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 180, size: 192, elements: !38)
!38 = !{!39, !40, !41, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !37, file: !3, line: 180, baseType: !7, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !37, file: !3, line: 180, baseType: !7, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !37, file: !3, line: 180, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !37, file: !3, line: 180, baseType: !42, size: 64, offset: 128)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DILocation(line: 178, column: 43, scope: !24, inlinedAt: !47)
!47 = distinct !DILocation(line: 85, column: 2, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !3, line: 85, column: 2)
!49 = distinct !DILexicalBlock(scope: !22, file: !3, line: 85, column: 2)
!50 = !DILocation(line: 184, column: 1, scope: !24, inlinedAt: !47)
!51 = !DILocation(line: 85, column: 2, scope: !48)
!52 = !DILocation(line: 86, column: 8, scope: !2)
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 87, column: 2, scope: !2)
!58 = distinct !DISubprogram(name: "realpath", scope: !3, file: !3, line: 90, type: !59, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !62, !63}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "file_name", arg: 1, scope: !58, file: !3, line: 90, type: !62)
!66 = !DILocalVariable(name: "resolved_name", arg: 2, scope: !58, file: !3, line: 90, type: !63)
!67 = !DILocation(line: 90, column: 37, scope: !58)
!68 = !DILocation(line: 90, column: 63, scope: !58)
!69 = !DILocation(line: 92, column: 2, scope: !58)
