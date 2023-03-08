; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_getpshared.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_getpshared.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_rwlockattr_t_ = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_rwlockattr_getpshared(%struct.pthread_rwlockattr_t_** readonly, i32*) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp eq %struct.pthread_rwlockattr_t_** %0, null, !dbg !29
  br i1 %3, label %12, label %4, !dbg !31

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_rwlockattr_t_*, %struct.pthread_rwlockattr_t_** %0, align 8, !dbg !32, !tbaa !33
  %6 = icmp ne %struct.pthread_rwlockattr_t_* %5, null, !dbg !37
  %7 = icmp ne i32* %1, null, !dbg !38
  %8 = and i1 %7, %6, !dbg !39
  br i1 %8, label %9, label %12, !dbg !39

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.pthread_rwlockattr_t_, %struct.pthread_rwlockattr_t_* %5, i64 0, i32 0, !dbg !40
  %11 = load i32, i32* %10, align 4, !dbg !40, !tbaa !42
  store i32 %11, i32* %1, align 4, !dbg !45, !tbaa !46
  br label %12, !dbg !48

; <label>:12:                                     ; preds = %4, %2, %9
  %13 = phi i32 [ 0, %9 ], [ 22, %2 ], [ 22, %4 ], !dbg !49
  ret i32 %13, !dbg !51
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_rwlockattr_getpshared.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_rwlockattr_getpshared", scope: !1, file: !1, line: 50, type: !10, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !22}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlockattr_t", file: !16, line: 422, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_rwlockattr_t_", file: !19, line: 270, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !18, file: !19, line: 272, baseType: !12, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!23 = !{!24, !25, !26}
!24 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 50, type: !13)
!25 = !DILocalVariable(name: "pshared", arg: 2, scope: !9, file: !1, line: 51, type: !22)
!26 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 90, type: !12)
!27 = !DILocation(line: 50, column: 61, scope: !9)
!28 = !DILocation(line: 51, column: 37, scope: !9)
!29 = !DILocation(line: 92, column: 13, scope: !30)
!30 = distinct !DILexicalBlock(scope: !9, file: !1, line: 92, column: 7)
!31 = !DILocation(line: 92, column: 21, scope: !30)
!32 = !DILocation(line: 92, column: 24, scope: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 92, column: 30, scope: !30)
!38 = !DILocation(line: 92, column: 51, scope: !30)
!39 = !DILocation(line: 92, column: 39, scope: !30)
!40 = !DILocation(line: 94, column: 27, scope: !41)
!41 = distinct !DILexicalBlock(scope: !30, file: !1, line: 93, column: 5)
!42 = !{!43, !44, i64 0}
!43 = !{!"pthread_rwlockattr_t_", !44, i64 0}
!44 = !{!"int", !35, i64 0}
!45 = !DILocation(line: 94, column: 16, scope: !41)
!46 = !{!44, !44, i64 0}
!47 = !DILocation(line: 90, column: 7, scope: !9)
!48 = !DILocation(line: 96, column: 5, scope: !41)
!49 = !DILocation(line: 0, scope: !50)
!50 = distinct !DILexicalBlock(scope: !30, file: !1, line: 98, column: 5)
!51 = !DILocation(line: 102, column: 3, scope: !9)
