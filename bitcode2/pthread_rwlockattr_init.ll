; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_rwlockattr_t_ = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_rwlockattr_init(%struct.pthread_rwlockattr_t_** nocapture) local_unnamed_addr #0 !dbg !33 {
  %2 = tail call i8* @calloc(i64 1, i64 4) #3, !dbg !43
  %3 = icmp eq i8* %2, null, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %3, label %6, label %4, !dbg !47

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to i32*, !dbg !48
  store i32 0, i32* %5, align 4, !dbg !50, !tbaa !51
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 0, %4 ], [ 12, %1 ], !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %8 = bitcast %struct.pthread_rwlockattr_t_** %0 to i8**, !dbg !57
  store i8* %2, i8** %8, align 8, !dbg !57, !tbaa !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  ret i32 %7, !dbg !60
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_init.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{!22, !28}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlockattr_t", file: !4, line: 422, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_rwlockattr_t_", file: !25, line: 270, size: 32, elements: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !24, file: !25, line: 272, baseType: !5, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!33 = distinct !DISubprogram(name: "pthread_rwlockattr_init", scope: !1, file: !1, line: 51, type: !34, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!34 = !DISubroutineType(types: !35)
!35 = !{!5, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !33, file: !1, line: 51, type: !36)
!39 = !DILocalVariable(name: "result", scope: !33, file: !1, line: 74, type: !5)
!40 = !DILocalVariable(name: "rwa", scope: !33, file: !1, line: 75, type: !22)
!41 = !DILocation(line: 51, column: 49, scope: !33)
!42 = !DILocation(line: 74, column: 7, scope: !33)
!43 = !DILocation(line: 77, column: 32, scope: !33)
!44 = !DILocation(line: 75, column: 24, scope: !33)
!45 = !DILocation(line: 79, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 79, column: 7)
!47 = !DILocation(line: 79, column: 7, scope: !33)
!48 = !DILocation(line: 85, column: 12, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 84, column: 5)
!50 = !DILocation(line: 85, column: 20, scope: !49)
!51 = !{!52, !53, i64 0}
!52 = !{!"pthread_rwlockattr_t_", !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 0, scope: !33)
!57 = !DILocation(line: 88, column: 9, scope: !33)
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !54, i64 0}
!60 = !DILocation(line: 90, column: 3, scope: !33)
