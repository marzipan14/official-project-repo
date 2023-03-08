; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_destroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_destroy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_mutexattr_t_ = type { i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_mutexattr_destroy(%struct.pthread_mutexattr_t_**) local_unnamed_addr #0 !dbg !9 {
  %2 = icmp eq %struct.pthread_mutexattr_t_** %0, null, !dbg !30
  br i1 %2, label %8, label %3, !dbg !31

; <label>:3:                                      ; preds = %1
  %4 = load %struct.pthread_mutexattr_t_*, %struct.pthread_mutexattr_t_** %0, align 8, !dbg !32, !tbaa !33
  %5 = icmp eq %struct.pthread_mutexattr_t_* %4, null, !dbg !37
  br i1 %5, label %8, label %6, !dbg !38

; <label>:6:                                      ; preds = %3
  store %struct.pthread_mutexattr_t_* null, %struct.pthread_mutexattr_t_** %0, align 8, !dbg !40, !tbaa !33
  %7 = bitcast %struct.pthread_mutexattr_t_* %4 to i8*, !dbg !41
  tail call void @free(i8* %7) #3, !dbg !42
  br label %8

; <label>:8:                                      ; preds = %1, %3, %6
  %9 = phi i32 [ 0, %6 ], [ 22, %3 ], [ 22, %1 ], !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  ret i32 %9, !dbg !44
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_mutexattr_destroy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_mutexattr_destroy", scope: !1, file: !1, line: 50, type: !10, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
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
!23 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 50, type: !13)
!24 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 76, type: !12)
!25 = !DILocalVariable(name: "ma", scope: !26, file: !1, line: 84, type: !14)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 83, column: 5)
!27 = distinct !DILexicalBlock(scope: !9, file: !1, line: 78, column: 7)
!28 = !DILocation(line: 50, column: 50, scope: !9)
!29 = !DILocation(line: 76, column: 7, scope: !9)
!30 = !DILocation(line: 78, column: 12, scope: !27)
!31 = !DILocation(line: 78, column: 20, scope: !27)
!32 = !DILocation(line: 78, column: 23, scope: !27)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 78, column: 29, scope: !27)
!38 = !DILocation(line: 78, column: 7, scope: !9)
!39 = !DILocation(line: 84, column: 27, scope: !26)
!40 = !DILocation(line: 86, column: 13, scope: !26)
!41 = !DILocation(line: 87, column: 13, scope: !26)
!42 = !DILocation(line: 87, column: 7, scope: !26)
!43 = !DILocation(line: 0, scope: !9)
!44 = !DILocation(line: 90, column: 3, scope: !9)
