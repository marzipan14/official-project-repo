; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_getpshared.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_getpshared.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_condattr_t_ = type { i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_condattr_getpshared(%struct.pthread_condattr_t_** readonly, i32*) local_unnamed_addr #0 !dbg !9 {
  %3 = icmp eq %struct.pthread_condattr_t_** %0, null, !dbg !32
  br i1 %3, label %12, label %4, !dbg !34

; <label>:4:                                      ; preds = %2
  %5 = load %struct.pthread_condattr_t_*, %struct.pthread_condattr_t_** %0, align 8, !dbg !35, !tbaa !36
  %6 = icmp ne %struct.pthread_condattr_t_* %5, null, !dbg !40
  %7 = icmp ne i32* %1, null, !dbg !41
  %8 = and i1 %7, %6, !dbg !42
  br i1 %8, label %9, label %12, !dbg !42

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.pthread_condattr_t_, %struct.pthread_condattr_t_* %5, i64 0, i32 1, !dbg !43
  %11 = load i32, i32* %10, align 4, !dbg !43, !tbaa !45
  store i32 %11, i32* %1, align 4, !dbg !48, !tbaa !49
  br label %12, !dbg !51

; <label>:12:                                     ; preds = %4, %2, %9
  %13 = phi i32 [ 0, %9 ], [ 22, %2 ], [ 22, %4 ], !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i32 %13, !dbg !54
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_condattr_getpshared.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_condattr_getpshared", scope: !1, file: !1, line: 49, type: !10, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !25}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !16, line: 420, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_condattr_t_", file: !19, line: 251, size: 64, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !24}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !18, file: !19, line: 253, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !23, line: 65, baseType: !12)
!23 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !18, file: !19, line: 254, baseType: !12, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 49, type: !13)
!28 = !DILocalVariable(name: "pshared", arg: 2, scope: !9, file: !1, line: 49, type: !25)
!29 = !DILocalVariable(name: "result", scope: !9, file: !1, line: 89, type: !12)
!30 = !DILocation(line: 49, column: 57, scope: !9)
!31 = !DILocation(line: 49, column: 68, scope: !9)
!32 = !DILocation(line: 91, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 91, column: 7)
!34 = !DILocation(line: 91, column: 21, scope: !33)
!35 = !DILocation(line: 91, column: 24, scope: !33)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 91, column: 30, scope: !33)
!41 = !DILocation(line: 91, column: 51, scope: !33)
!42 = !DILocation(line: 91, column: 39, scope: !33)
!43 = !DILocation(line: 93, column: 27, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 92, column: 5)
!45 = !{!46, !47, i64 4}
!46 = !{!"pthread_condattr_t_", !47, i64 0, !47, i64 4}
!47 = !{!"int", !38, i64 0}
!48 = !DILocation(line: 93, column: 16, scope: !44)
!49 = !{!47, !47, i64 0}
!50 = !DILocation(line: 89, column: 7, scope: !9)
!51 = !DILocation(line: 95, column: 5, scope: !44)
!52 = !DILocation(line: 0, scope: !53)
!53 = distinct !DILexicalBlock(scope: !33, file: !1, line: 97, column: 5)
!54 = !DILocation(line: 101, column: 3, scope: !9)
