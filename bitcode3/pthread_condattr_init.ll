; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_condattr_t_ = type { i32, i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_condattr_init(%struct.pthread_condattr_t_** nocapture) local_unnamed_addr #0 !dbg !20 {
  %2 = tail call i8* @calloc(i64 1, i64 8) #3, !dbg !30
  %3 = icmp eq i8* %2, null, !dbg !32
  %4 = select i1 %3, i32 12, i32 0, !dbg !34
  %5 = bitcast %struct.pthread_condattr_t_** %0 to i8**, !dbg !35
  store i8* %2, i8** %5, align 8, !dbg !35, !tbaa !36
  ret i32 %4, !dbg !40
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !15}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !5, line: 420, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_condattr_t_", file: !8, line: 251, size: 64, elements: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !{!10, !14}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !7, file: !8, line: 253, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !12, line: 65, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !7, file: !8, line: 254, baseType: !13, size: 32, offset: 32)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "pthread_condattr_init", scope: !1, file: !1, line: 51, type: !21, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!13, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!24 = !{!25, !26, !27}
!25 = !DILocalVariable(name: "attr", arg: 1, scope: !20, file: !1, line: 51, type: !23)
!26 = !DILocalVariable(name: "attr_result", scope: !20, file: !1, line: 81, type: !4)
!27 = !DILocalVariable(name: "result", scope: !20, file: !1, line: 82, type: !13)
!28 = !DILocation(line: 51, column: 45, scope: !20)
!29 = !DILocation(line: 82, column: 7, scope: !20)
!30 = !DILocation(line: 84, column: 38, scope: !20)
!31 = !DILocation(line: 81, column: 22, scope: !20)
!32 = !DILocation(line: 86, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !20, file: !1, line: 86, column: 7)
!34 = !DILocation(line: 86, column: 7, scope: !20)
!35 = !DILocation(line: 91, column: 9, scope: !20)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 93, column: 3, scope: !20)
