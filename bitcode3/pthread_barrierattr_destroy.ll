; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_barrierattr_destroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_barrierattr_destroy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_barrierattr_t_ = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_barrierattr_destroy(%struct.pthread_barrierattr_t_**) local_unnamed_addr #0 !dbg !9 {
  %2 = icmp eq %struct.pthread_barrierattr_t_** %0, null, !dbg !29
  br i1 %2, label %8, label %3, !dbg !30

; <label>:3:                                      ; preds = %1
  %4 = load %struct.pthread_barrierattr_t_*, %struct.pthread_barrierattr_t_** %0, align 8, !dbg !31, !tbaa !32
  %5 = icmp eq %struct.pthread_barrierattr_t_* %4, null, !dbg !36
  br i1 %5, label %8, label %6, !dbg !37

; <label>:6:                                      ; preds = %3
  store %struct.pthread_barrierattr_t_* null, %struct.pthread_barrierattr_t_** %0, align 8, !dbg !39, !tbaa !32
  %7 = bitcast %struct.pthread_barrierattr_t_* %4 to i8*, !dbg !40
  tail call void @free(i8* %7) #3, !dbg !41
  br label %8

; <label>:8:                                      ; preds = %1, %3, %6
  %9 = phi i32 [ 0, %6 ], [ 22, %3 ], [ 22, %1 ], !dbg !42
  ret i32 %9, !dbg !43
}

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_barrierattr_destroy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_barrierattr_destroy", scope: !1, file: !1, line: 50, type: !10, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_barrierattr_t", file: !15, line: 425, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_barrierattr_t_", file: !18, line: 209, size: 32, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !17, file: !18, line: 211, baseType: !12, size: 32)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 50, type: !13)
!23 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 76, type: !12)
!24 = !DILocalVariable(name: "ba", scope: !25, file: !1, line: 84, type: !14)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 83, column: 5)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 78, column: 7)
!27 = !DILocation(line: 50, column: 54, scope: !9)
!28 = !DILocation(line: 76, column: 7, scope: !9)
!29 = !DILocation(line: 78, column: 12, scope: !26)
!30 = !DILocation(line: 78, column: 20, scope: !26)
!31 = !DILocation(line: 78, column: 23, scope: !26)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 78, column: 29, scope: !26)
!37 = !DILocation(line: 78, column: 7, scope: !9)
!38 = !DILocation(line: 84, column: 29, scope: !25)
!39 = !DILocation(line: 86, column: 13, scope: !25)
!40 = !DILocation(line: 87, column: 13, scope: !25)
!41 = !DILocation(line: 87, column: 7, scope: !25)
!42 = !DILocation(line: 0, scope: !9)
!43 = !DILocation(line: 90, column: 3, scope: !9)
