; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/mem.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/mem.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rmem != NULL\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.5 = internal global [6 x i8] c"mem.c\00", section ".data_shared", align 1, !dbg !30

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @mem_init() local_unnamed_addr #0 !dbg !57 {
  ret void, !dbg !61
}

; Function Attrs: noredzone nounwind readnone
define dso_local i8* @mem_trim(i8* readnone returned, i64) local_unnamed_addr #1 !dbg !62 {
  ret i8* %0, !dbg !76
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local i8* @mem_malloc(i64) local_unnamed_addr #3 !dbg !77 {
  %2 = tail call i8* @sys_malloc(i64 %0) #9, !dbg !88
  %3 = icmp eq i8* %2, null, !dbg !90
  br i1 %3, label %4, label %6, !dbg !91

; <label>:4:                                      ; preds = %1
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !92
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #9, !dbg !94
  br label %6, !dbg !95

; <label>:6:                                      ; preds = %1, %4
  ret i8* %2, !dbg !96
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: noredzone
declare dso_local i8* @sys_malloc(i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #6 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !98
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !100
  call void @llvm.va_start(i8* nonnull %3), !dbg !100
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !101
  call void @llvm.va_end(i8* nonnull %3), !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !105
  ret void, !dbg !105
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #7

; Function Attrs: noredzone nounwind
define dso_local void @mem_free(i8*) local_unnamed_addr #3 !dbg !106 {
  %2 = icmp eq i8* %0, null, !dbg !112
  br i1 %2, label %3, label %4, !dbg !115

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !116
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !119
  tail call void @ukplat_terminate(i32 3) #11, !dbg !119
  unreachable, !dbg !119

; <label>:4:                                      ; preds = %1
  tail call void @sys_free(i8* nonnull %0) #9, !dbg !123
  ret void, !dbg !124
}

; Function Attrs: noredzone
declare dso_local void @sys_free(i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i8* @mem_calloc(i64, i64) local_unnamed_addr #3 !dbg !125 {
  %3 = trunc i64 %0 to i32, !dbg !133
  %4 = tail call i8* @sys_calloc(i32 %3, i64 %1) #9, !dbg !134
  ret i8* %4, !dbg !135
}

; Function Attrs: noredzone
declare dso_local i8* @sys_calloc(i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !50, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !35)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !20, globals: !29)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/mem.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !13, line: 68, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !23, line: 135, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !25, line: 82, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !27, line: 232, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 6)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!37 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !39, line: 32, baseType: !40)
!39 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !48)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !43)
!43 = !{!44, !45, !46, !47}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !42, file: !10, line: 196, baseType: !14, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !42, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !42, file: !10, line: 196, baseType: !21, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !42, file: !10, line: 196, baseType: !21, size: 64, offset: 128)
!48 = !{!49}
!49 = !DISubrange(count: 1)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 8)
!53 = !{i32 2, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!57 = distinct !DISubprogram(name: "mem_init", scope: !10, file: !10, line: 160, type: !58, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !{}
!61 = !DILocation(line: 162, column: 1, scope: !57)
!62 = distinct !DISubprogram(name: "mem_trim", scope: !10, file: !10, line: 169, type: !63, isLocal: false, isDefinition: true, scopeLine: 170, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !71)
!63 = !DISubroutineType(types: !64)
!64 = !{!21, !21, !65}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_size_t", file: !66, line: 50, baseType: !67)
!66 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/mem.h", directory: "/root/.unikraft/apps/redis/build")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 40, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !70, line: 129, baseType: !28)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !73}
!72 = !DILocalVariable(name: "mem", arg: 1, scope: !62, file: !10, line: 169, type: !21)
!73 = !DILocalVariable(name: "size", arg: 2, scope: !62, file: !10, line: 169, type: !65)
!74 = !DILocation(line: 169, column: 16, scope: !62)
!75 = !DILocation(line: 169, column: 32, scope: !62)
!76 = !DILocation(line: 172, column: 3, scope: !62)
!77 = distinct !DISubprogram(name: "mem_malloc", scope: !10, file: !10, line: 207, type: !78, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{!21, !65}
!80 = !{!81, !82, !83}
!81 = !DILocalVariable(name: "size", arg: 1, scope: !77, file: !10, line: 207, type: !65)
!82 = !DILocalVariable(name: "ret", scope: !77, file: !10, line: 209, type: !21)
!83 = !DILocalVariable(name: "old_level", scope: !84, file: !10, line: 211, type: !28)
!84 = distinct !DILexicalBlock(scope: !85, file: !10, line: 211, column: 5)
!85 = distinct !DILexicalBlock(scope: !86, file: !10, line: 210, column: 20)
!86 = distinct !DILexicalBlock(scope: !77, file: !10, line: 210, column: 7)
!87 = !DILocation(line: 207, column: 23, scope: !77)
!88 = !DILocation(line: 209, column: 15, scope: !77)
!89 = !DILocation(line: 209, column: 9, scope: !77)
!90 = !DILocation(line: 210, column: 11, scope: !86)
!91 = !DILocation(line: 210, column: 7, scope: !77)
!92 = !DILocation(line: 211, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !10, line: 211, column: 5)
!94 = !DILocation(line: 211, column: 5, scope: !84)
!95 = !DILocation(line: 212, column: 3, scope: !85)
!96 = !DILocation(line: 220, column: 3, scope: !77)
!97 = !DILocation(line: 194, column: 43, scope: !2)
!98 = !DILocation(line: 196, column: 2, scope: !2)
!99 = !DILocation(line: 196, column: 10, scope: !2)
!100 = !DILocation(line: 197, column: 2, scope: !2)
!101 = !DILocation(line: 198, column: 2, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 198, column: 2)
!103 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!104 = !DILocation(line: 199, column: 2, scope: !2)
!105 = !DILocation(line: 200, column: 1, scope: !2)
!106 = distinct !DISubprogram(name: "mem_free", scope: !10, file: !10, line: 228, type: !107, isLocal: false, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !109)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !21}
!109 = !{!110}
!110 = !DILocalVariable(name: "rmem", arg: 1, scope: !106, file: !10, line: 228, type: !21)
!111 = !DILocation(line: 228, column: 16, scope: !106)
!112 = !DILocation(line: 230, column: 3, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !10, line: 230, column: 3)
!114 = distinct !DILexicalBlock(scope: !106, file: !10, line: 230, column: 3)
!115 = !DILocation(line: 230, column: 3, scope: !114)
!116 = !DILocation(line: 230, column: 3, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !10, line: 230, column: 3)
!118 = distinct !DILexicalBlock(scope: !113, file: !10, line: 230, column: 3)
!119 = !DILocation(line: 230, column: 3, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !10, line: 230, column: 3)
!121 = distinct !DILexicalBlock(scope: !122, file: !10, line: 230, column: 3)
!122 = distinct !DILexicalBlock(scope: !117, file: !10, line: 230, column: 3)
!123 = !DILocation(line: 236, column: 3, scope: !106)
!124 = !DILocation(line: 237, column: 1, scope: !106)
!125 = distinct !DISubprogram(name: "mem_calloc", scope: !10, file: !10, line: 982, type: !126, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{!21, !65, !65}
!128 = !{!129, !130}
!129 = !DILocalVariable(name: "count", arg: 1, scope: !125, file: !10, line: 982, type: !65)
!130 = !DILocalVariable(name: "size", arg: 2, scope: !125, file: !10, line: 982, type: !65)
!131 = !DILocation(line: 982, column: 23, scope: !125)
!132 = !DILocation(line: 982, column: 41, scope: !125)
!133 = !DILocation(line: 984, column: 26, scope: !125)
!134 = !DILocation(line: 984, column: 10, scope: !125)
!135 = !DILocation(line: 984, column: 3, scope: !125)
