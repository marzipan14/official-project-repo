; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_init.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_init.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutexattr_t_ = type { i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_mutexattr_init(%struct.pthread_mutexattr_t_** nocapture) local_unnamed_addr #0 !dbg !46 {
  %2 = tail call i8* @calloc(i64 1, i64 8) #3, !dbg !56
  %3 = icmp eq i8* %2, null, !dbg !58
  br i1 %3, label %8, label %4, !dbg !60

; <label>:4:                                      ; preds = %1
  %5 = bitcast i8* %2 to i32*, !dbg !61
  store i32 0, i32* %5, align 4, !dbg !63, !tbaa !64
  %6 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !69
  %7 = bitcast i8* %6 to i32*, !dbg !69
  store i32 0, i32* %7, align 4, !dbg !70, !tbaa !71
  br label %8

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 12, %1 ], !dbg !72
  %10 = bitcast %struct.pthread_mutexattr_t_** %0 to i8**, !dbg !73
  store i8* %2, i8** %10, align 8, !dbg !73, !tbaa !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  ret i32 %9, !dbg !76
}

; Function Attrs: noredzone
declare dso_local i8* @calloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !33)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_init.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !21}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 539, baseType: !22, size: 32, elements: !23)
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32}
!24 = !DIEnumerator(name: "PTHREAD_MUTEX_FAST_NP", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE_NP", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK_NP", value: 2, isUnsigned: true)
!27 = !DIEnumerator(name: "PTHREAD_MUTEX_TIMED_NP", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "PTHREAD_MUTEX_ADAPTIVE_NP", value: 0, isUnsigned: true)
!29 = !DIEnumerator(name: "PTHREAD_MUTEX_NORMAL", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "PTHREAD_MUTEX_RECURSIVE", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "PTHREAD_MUTEX_ERRORCHECK", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "PTHREAD_MUTEX_DEFAULT", value: 0, isUnsigned: true)
!33 = !{!34, !41}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !4, line: 418, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutexattr_t_", file: !37, line: 163, size: 64, elements: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !36, file: !37, line: 165, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !36, file: !37, line: 166, baseType: !5, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!46 = distinct !DISubprogram(name: "pthread_mutexattr_init", scope: !1, file: !1, line: 50, type: !47, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !50)
!47 = !DISubroutineType(types: !48)
!48 = !{!5, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "attr", arg: 1, scope: !46, file: !1, line: 50, type: !49)
!52 = !DILocalVariable(name: "result", scope: !46, file: !1, line: 76, type: !5)
!53 = !DILocalVariable(name: "ma", scope: !46, file: !1, line: 77, type: !34)
!54 = !DILocation(line: 50, column: 47, scope: !46)
!55 = !DILocation(line: 76, column: 7, scope: !46)
!56 = !DILocation(line: 79, column: 30, scope: !46)
!57 = !DILocation(line: 77, column: 23, scope: !46)
!58 = !DILocation(line: 81, column: 10, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 81, column: 7)
!60 = !DILocation(line: 81, column: 7, scope: !46)
!61 = !DILocation(line: 87, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 86, column: 5)
!63 = !DILocation(line: 87, column: 19, scope: !62)
!64 = !{!65, !66, i64 0}
!65 = !{!"pthread_mutexattr_t_", !66, i64 0, !66, i64 4}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 88, column: 11, scope: !62)
!70 = !DILocation(line: 88, column: 16, scope: !62)
!71 = !{!65, !66, i64 4}
!72 = !DILocation(line: 0, scope: !46)
!73 = !DILocation(line: 91, column: 9, scope: !46)
!74 = !{!75, !75, i64 0}
!75 = !{!"any pointer", !67, i64 0}
!76 = !DILocation(line: 93, column: 3, scope: !46)
