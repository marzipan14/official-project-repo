; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_setpshared.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_setpshared.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_rwlockattr_t_ = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_rwlockattr_setpshared(%struct.pthread_rwlockattr_t_** readonly, i32) local_unnamed_addr #0 !dbg !27 {
  %3 = icmp eq %struct.pthread_rwlockattr_t_** %0, null, !dbg !43
  br i1 %3, label %11, label %4, !dbg !45

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_rwlockattr_t_*, %struct.pthread_rwlockattr_t_** %0, align 8, !dbg !46, !tbaa !47
  %6 = icmp ne %struct.pthread_rwlockattr_t_* %5, null, !dbg !51
  %7 = icmp ult i32 %1, 2, !dbg !52
  %8 = and i1 %7, %6, !dbg !53
  br i1 %8, label %9, label %11, !dbg !53

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.pthread_rwlockattr_t_, %struct.pthread_rwlockattr_t_* %5, i64 0, i32 0, !dbg !55
  store i32 %1, i32* %10, align 4, !dbg !57, !tbaa !58
  br label %11, !dbg !61

; <label>:11:                                     ; preds = %2, %4, %9
  %12 = phi i32 [ 0, %9 ], [ 22, %4 ], [ 22, %2 ], !dbg !62
  ret i32 %12, !dbg !64
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_setpshared.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 435, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!8 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!9 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!10 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!11 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!12 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!13 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!14 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!15 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!16 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!17 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!18 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!19 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!20 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !{i32 2, !"Dwarf Version", i32 4}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!27 = distinct !DISubprogram(name: "pthread_rwlockattr_setpshared", scope: !1, file: !1, line: 50, type: !28, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!28 = !DISubroutineType(types: !29)
!29 = !{!5, !30, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlockattr_t", file: !4, line: 422, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_rwlockattr_t_", file: !34, line: 270, size: 32, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !33, file: !34, line: 272, baseType: !5, size: 32)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !27, file: !1, line: 50, type: !30)
!39 = !DILocalVariable(name: "pshared", arg: 2, scope: !27, file: !1, line: 50, type: !5)
!40 = !DILocalVariable(name: "result", scope: !27, file: !1, line: 92, type: !5)
!41 = !DILocation(line: 50, column: 55, scope: !27)
!42 = !DILocation(line: 50, column: 65, scope: !27)
!43 = !DILocation(line: 94, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !27, file: !1, line: 94, column: 7)
!45 = !DILocation(line: 94, column: 21, scope: !44)
!46 = !DILocation(line: 94, column: 24, scope: !44)
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 94, column: 30, scope: !44)
!52 = !DILocation(line: 95, column: 44, scope: !44)
!53 = !DILocation(line: 94, column: 39, scope: !44)
!54 = !DILocation(line: 92, column: 7, scope: !27)
!55 = !DILocation(line: 118, column: 16, scope: !56)
!56 = distinct !DILexicalBlock(scope: !44, file: !1, line: 97, column: 5)
!57 = !DILocation(line: 118, column: 24, scope: !56)
!58 = !{!59, !60, i64 0}
!59 = !{!"pthread_rwlockattr_t_", !60, i64 0}
!60 = !{!"int", !49, i64 0}
!61 = !DILocation(line: 119, column: 5, scope: !56)
!62 = !DILocation(line: 0, scope: !63)
!63 = distinct !DILexicalBlock(scope: !44, file: !1, line: 121, column: 5)
!64 = !DILocation(line: 125, column: 3, scope: !27)
