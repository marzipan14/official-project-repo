; ModuleID = '/root/.unikraft/libs/pthread-embedded/pthread_atfork.c'
source_filename = "/root/.unikraft/libs/pthread-embedded/pthread_atfork.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_atfork(void ()* nocapture readnone, void ()* nocapture readnone, void ()* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/pthread_atfork.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_atfork", scope: !1, file: !1, line: 26, type: !8, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null}
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(name: "prepare", arg: 1, scope: !7, file: !1, line: 26, type: !11)
!16 = !DILocalVariable(name: "parent", arg: 2, scope: !7, file: !1, line: 27, type: !11)
!17 = !DILocalVariable(name: "child", arg: 3, scope: !7, file: !1, line: 27, type: !11)
!18 = !DILocation(line: 26, column: 27, scope: !7)
!19 = !DILocation(line: 27, column: 9, scope: !7)
!20 = !DILocation(line: 27, column: 31, scope: !7)
!21 = !DILocalVariable(name: "fmt", arg: 1, scope: !22, file: !23, line: 178, type: !26)
!22 = distinct !DISubprogram(name: "uk_pr_warn", scope: !23, file: !23, line: 178, type: !24, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!23 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, null}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!21, !30}
!30 = !DILocalVariable(name: "argp", scope: !22, file: !23, line: 180, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !32, line: 32, baseType: !33)
!32 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 180, baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !43)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 180, size: 192, elements: !36)
!36 = !{!37, !39, !40, !42}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !35, file: !1, line: 180, baseType: !38, size: 32)
!38 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !35, file: !1, line: 180, baseType: !38, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !35, file: !1, line: 180, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !35, file: !1, line: 180, baseType: !41, size: 64, offset: 128)
!43 = !{!44}
!44 = !DISubrange(count: 1)
!45 = !DILocation(line: 178, column: 43, scope: !22, inlinedAt: !46)
!46 = distinct !DILocation(line: 29, column: 2, scope: !7)
!47 = !DILocation(line: 184, column: 1, scope: !22, inlinedAt: !46)
!48 = !DILocation(line: 30, column: 2, scope: !7)
