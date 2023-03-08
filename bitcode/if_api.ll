; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/if_api.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/if_api.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @lwip_if_indextoname(i32, i8* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32* @__errno() #3, !dbg !18
  store i32 6, i32* %3, align 4, !dbg !18, !tbaa !22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  ret i8* null, !dbg !26
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @lwip_if_nametoindex(i8* nocapture readnone) local_unnamed_addr #0 !dbg !27 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  ret i32 0, !dbg !35
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/if_api.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "lwip_if_indextoname", scope: !1, file: !1, line: 61, type: !8, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !12, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "ifindex", arg: 1, scope: !7, file: !1, line: 61, type: !12)
!15 = !DILocalVariable(name: "ifname", arg: 2, scope: !7, file: !1, line: 61, type: !10)
!16 = !DILocation(line: 61, column: 34, scope: !7)
!17 = !DILocation(line: 61, column: 49, scope: !7)
!18 = !DILocation(line: 74, column: 3, scope: !19)
!19 = distinct !DILexicalBlock(scope: !20, file: !1, line: 74, column: 3)
!20 = distinct !DILexicalBlock(scope: !21, file: !1, line: 74, column: 3)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 74, column: 3)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 75, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: "lwip_if_nametoindex", scope: !1, file: !1, line: 86, type: !28, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{!12, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!32 = !{!33}
!33 = !DILocalVariable(name: "ifname", arg: 1, scope: !27, file: !1, line: 86, type: !30)
!34 = !DILocation(line: 86, column: 33, scope: !27)
!35 = !DILocation(line: 99, column: 3, scope: !27)
