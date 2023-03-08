; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedpolicy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedpolicy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setschedpolicy(%struct.pthread_attr_t_**, i32) local_unnamed_addr #0 !dbg !16 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !48
  %4 = icmp eq i32 %3, 0, !dbg !50
  %5 = icmp eq i32 %1, 0, !dbg !51
  %6 = select i1 %5, i32 0, i32 134, !dbg !53
  %7 = select i1 %4, i32 %6, i32 22, !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  ret i32 %7, !dbg !55
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedpolicy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 88, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "SCHED_OTHER", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "SCHED_FIFO", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "SCHED_RR", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "SCHED_MIN", value: 0, isUnsigned: true)
!11 = !DIEnumerator(name: "SCHED_MAX", value: 2, isUnsigned: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "pthread_attr_setschedpolicy", scope: !1, file: !1, line: 48, type: !17, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !43)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !22, line: 414, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !25, line: 116, size: 320, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27, !29, !31, !36, !37, !41, !42}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !24, file: !25, line: 118, baseType: !28, size: 64)
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !24, file: !25, line: 119, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !24, file: !25, line: 120, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 40, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !35, line: 129, baseType: !28)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !24, file: !25, line: 121, baseType: !19, size: 32, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !24, file: !25, line: 122, baseType: !38, size: 32, offset: 224)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !4, line: 97, size: 32, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !38, file: !4, line: 99, baseType: !19, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !24, file: !25, line: 123, baseType: !19, size: 32, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !24, file: !25, line: 124, baseType: !19, size: 32, offset: 288)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "attr", arg: 1, scope: !16, file: !1, line: 48, type: !20)
!45 = !DILocalVariable(name: "policy", arg: 2, scope: !16, file: !1, line: 48, type: !19)
!46 = !DILocation(line: 48, column: 47, scope: !16)
!47 = !DILocation(line: 48, column: 57, scope: !16)
!48 = !DILocation(line: 50, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !16, file: !1, line: 50, column: 7)
!50 = !DILocation(line: 50, column: 26, scope: !49)
!51 = !DILocation(line: 55, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !16, file: !1, line: 55, column: 7)
!53 = !DILocation(line: 60, column: 3, scope: !16)
!54 = !DILocation(line: 50, column: 7, scope: !16)
!55 = !DILocation(line: 61, column: 1, scope: !16)
