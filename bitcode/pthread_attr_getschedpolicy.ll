; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedpolicy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedpolicy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getschedpolicy(%struct.pthread_attr_t_**, i32*) local_unnamed_addr #0 !dbg !20 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !50
  %4 = icmp eq i32 %3, 0, !dbg !52
  %5 = icmp ugt i32* %1, inttoptr (i64 2 to i32*), !dbg !53
  %6 = and i1 %5, %4, !dbg !55
  br i1 %6, label %7, label %8, !dbg !55

; <label>:7:                                      ; preds = %2
  store i32 0, i32* %1, align 4, !dbg !56, !tbaa !57
  br label %8, !dbg !61

; <label>:8:                                      ; preds = %2, %7
  %9 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  ret i32 %9, !dbg !63
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedpolicy.c", directory: "/root/.unikraft/apps/redis/build")
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
!12 = !{!13, !14}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!20 = distinct !DISubprogram(name: "pthread_attr_getschedpolicy", scope: !1, file: !1, line: 48, type: !21, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !45)
!21 = !DISubroutineType(types: !22)
!22 = !{!15, !23, !14}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !25, line: 414, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !28, line: 116, size: 320, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !32, !33, !38, !39, !43, !44}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !27, file: !28, line: 118, baseType: !31, size: 64)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !27, file: !28, line: 119, baseType: !13, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !27, file: !28, line: 120, baseType: !34, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 40, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !37, line: 129, baseType: !31)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !27, file: !28, line: 121, baseType: !15, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !27, file: !28, line: 122, baseType: !40, size: 32, offset: 224)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !4, line: 97, size: 32, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !40, file: !4, line: 99, baseType: !15, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !27, file: !28, line: 123, baseType: !15, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !27, file: !28, line: 124, baseType: !15, size: 32, offset: 288)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "attr", arg: 1, scope: !20, file: !1, line: 48, type: !23)
!47 = !DILocalVariable(name: "policy", arg: 2, scope: !20, file: !1, line: 48, type: !14)
!48 = !DILocation(line: 48, column: 47, scope: !20)
!49 = !DILocation(line: 48, column: 58, scope: !20)
!50 = !DILocation(line: 50, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !20, file: !1, line: 50, column: 7)
!52 = !DILocation(line: 50, column: 26, scope: !51)
!53 = !DILocation(line: 59, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !20, file: !1, line: 59, column: 7)
!55 = !DILocation(line: 50, column: 31, scope: !51)
!56 = !DILocation(line: 64, column: 11, scope: !20)
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 66, column: 3, scope: !20)
!62 = !DILocation(line: 0, scope: !20)
!63 = !DILocation(line: 67, column: 1, scope: !20)
