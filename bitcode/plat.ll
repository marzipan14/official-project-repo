; ModuleID = '/root/.unikraft/libs/newlib/plat.c'
source_filename = "/root/.unikraft/libs/newlib/plat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @getentropy(i8* nocapture readnone, i64) local_unnamed_addr #0 !dbg !15 {
  %3 = tail call i32* @__errno() #5, !dbg !28
  store i32 88, i32* %3, align 4, !dbg !29, !tbaa !30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  ret i32 -1, !dbg !34
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone noreturn nounwind
define dso_local void @abort() local_unnamed_addr #2 !dbg !35 {
  tail call void @ukplat_terminate(i32 3) #6, !dbg !39
  unreachable, !dbg !39
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn nounwind
define dso_local void @_exit(i32) local_unnamed_addr #2 !dbg !40 {
  tail call void @ukplat_terminate(i32 %0) #6, !dbg !46
  unreachable, !dbg !46
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/plat.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !4, line: 68, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "getentropy", scope: !1, file: !1, line: 41, type: !16, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 58, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DILocalVariable(name: "buf", arg: 1, scope: !15, file: !1, line: 41, type: !19)
!25 = !DILocalVariable(name: "buflen", arg: 2, scope: !15, file: !1, line: 41, type: !20)
!26 = !DILocation(line: 41, column: 22, scope: !15)
!27 = !DILocation(line: 41, column: 43, scope: !15)
!28 = !DILocation(line: 46, column: 2, scope: !15)
!29 = !DILocation(line: 46, column: 8, scope: !15)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 47, column: 2, scope: !15)
!35 = distinct !DISubprogram(name: "abort", scope: !1, file: !1, line: 52, type: !36, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !38)
!36 = !DISubroutineType(types: !37)
!37 = !{null}
!38 = !{}
!39 = !DILocation(line: 54, column: 2, scope: !35)
!40 = distinct !DISubprogram(name: "_exit", scope: !1, file: !1, line: 57, type: !41, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !18}
!43 = !{!44}
!44 = !DILocalVariable(name: "status", arg: 1, scope: !40, file: !1, line: 57, type: !18)
!45 = !DILocation(line: 57, column: 16, scope: !40)
!46 = !DILocation(line: 60, column: 2, scope: !40)
