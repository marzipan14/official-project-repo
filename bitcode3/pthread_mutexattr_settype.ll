; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_settype.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_settype.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutexattr_t_ = type { i32, i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_mutexattr_settype(%struct.pthread_mutexattr_t_** readonly, i32) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp eq %struct.pthread_mutexattr_t_** %0, null, !dbg !29
  br i1 %3, label %11, label %4, !dbg !31

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_mutexattr_t_*, %struct.pthread_mutexattr_t_** %0, align 8, !dbg !32, !tbaa !33
  %6 = icmp ne %struct.pthread_mutexattr_t_* %5, null, !dbg !37
  %7 = icmp ult i32 %1, 3, !dbg !38
  %8 = and i1 %7, %6, !dbg !40
  br i1 %8, label %9, label %11, !dbg !40

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.pthread_mutexattr_t_, %struct.pthread_mutexattr_t_* %5, i64 0, i32 1, !dbg !41
  store i32 %1, i32* %10, align 4, !dbg !43, !tbaa !44
  br label %11, !dbg !47

; <label>:11:                                     ; preds = %4, %2, %9
  %12 = phi i32 [ 0, %9 ], [ 22, %4 ], [ 22, %2 ], !dbg !48
  ret i32 %12, !dbg !50
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_settype.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_mutexattr_settype", scope: !1, file: !1, line: 48, type: !10, isLocal: false, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !15, line: 418, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_mutexattr_t_", file: !18, line: 163, size: 64, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !17, file: !18, line: 165, baseType: !12, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !17, file: !18, line: 166, baseType: !12, size: 32, offset: 32)
!22 = !{!23, !24, !25}
!23 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 48, type: !13)
!24 = !DILocalVariable(name: "kind", arg: 2, scope: !9, file: !1, line: 48, type: !12)
!25 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 127, type: !12)
!26 = !DILocation(line: 48, column: 50, scope: !9)
!27 = !DILocation(line: 48, column: 60, scope: !9)
!28 = !DILocation(line: 127, column: 7, scope: !9)
!29 = !DILocation(line: 129, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 129, column: 7)
!31 = !DILocation(line: 129, column: 21, scope: !30)
!32 = !DILocation(line: 129, column: 24, scope: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 129, column: 30, scope: !30)
!38 = !DILocation(line: 131, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !30, file: !1, line: 130, column: 5)
!40 = !DILocation(line: 129, column: 7, scope: !9)
!41 = !DILocation(line: 136, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 132, column: 9)
!43 = !DILocation(line: 136, column: 25, scope: !42)
!44 = !{!45, !46, i64 4}
!45 = !{!"pthread_mutexattr_t_", !46, i64 0, !46, i64 4}
!46 = !{!"int", !35, i64 0}
!47 = !DILocation(line: 137, column: 11, scope: !42)
!48 = !DILocation(line: 0, scope: !49)
!49 = distinct !DILexicalBlock(scope: !30, file: !1, line: 144, column: 5)
!50 = !DILocation(line: 148, column: 3, scope: !9)
