; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_setpshared.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_setpshared.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_condattr_t_ = type { i32, i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_condattr_setpshared(%struct.pthread_condattr_t_** readonly, i32) local_unnamed_addr #0 !dbg !27 {
  %3 = icmp eq %struct.pthread_condattr_t_** %0, null, !dbg !46
  br i1 %3, label %11, label %4, !dbg !48

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_condattr_t_*, %struct.pthread_condattr_t_** %0, align 8, !dbg !49, !tbaa !50
  %6 = icmp ne %struct.pthread_condattr_t_* %5, null, !dbg !54
  %7 = icmp ult i32 %1, 2, !dbg !55
  %8 = and i1 %7, %6, !dbg !56
  br i1 %8, label %9, label %11, !dbg !56

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.pthread_condattr_t_, %struct.pthread_condattr_t_* %5, i64 0, i32 1, !dbg !58
  store i32 %1, i32* %10, align 4, !dbg !60, !tbaa !61
  br label %11, !dbg !64

; <label>:11:                                     ; preds = %2, %4, %9
  %12 = phi i32 [ 0, %9 ], [ 22, %4 ], [ 22, %2 ], !dbg !65
  ret i32 %12, !dbg !67
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_setpshared.c", directory: "/root/.unikraft/apps/redis/build")
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
!27 = distinct !DISubprogram(name: "pthread_condattr_setpshared", scope: !1, file: !1, line: 49, type: !28, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !40)
!28 = !DISubroutineType(types: !29)
!29 = !{!5, !30, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !4, line: 420, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_condattr_t_", file: !34, line: 251, size: 64, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !33, file: !34, line: 253, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !38, line: 65, baseType: !5)
!38 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !33, file: !34, line: 254, baseType: !5, size: 32, offset: 32)
!40 = !{!41, !42, !43}
!41 = !DILocalVariable(name: "attr", arg: 1, scope: !27, file: !1, line: 49, type: !30)
!42 = !DILocalVariable(name: "pshared", arg: 2, scope: !27, file: !1, line: 49, type: !5)
!43 = !DILocalVariable(name: "result", scope: !27, file: !1, line: 91, type: !5)
!44 = !DILocation(line: 49, column: 51, scope: !27)
!45 = !DILocation(line: 49, column: 61, scope: !27)
!46 = !DILocation(line: 93, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !27, file: !1, line: 93, column: 7)
!48 = !DILocation(line: 93, column: 21, scope: !47)
!49 = !DILocation(line: 93, column: 24, scope: !47)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 93, column: 30, scope: !47)
!55 = !DILocation(line: 95, column: 11, scope: !47)
!56 = !DILocation(line: 94, column: 7, scope: !47)
!57 = !DILocation(line: 91, column: 7, scope: !27)
!58 = !DILocation(line: 114, column: 16, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 96, column: 5)
!60 = !DILocation(line: 114, column: 24, scope: !59)
!61 = !{!62, !63, i64 4}
!62 = !{!"pthread_condattr_t_", !63, i64 0, !63, i64 4}
!63 = !{!"int", !52, i64 0}
!64 = !DILocation(line: 115, column: 5, scope: !59)
!65 = !DILocation(line: 0, scope: !66)
!66 = distinct !DILexicalBlock(scope: !47, file: !1, line: 117, column: 5)
!67 = !DILocation(line: 121, column: 3, scope: !27)
