; ModuleID = '/root/.unikraft/libs/pthread-embedded/pthread_condattr.c'
source_filename = "/root/.unikraft/libs/pthread-embedded/pthread_condattr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_condattr_t_ = type { i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_condattr_getclock(%struct.pthread_condattr_t_** noalias nocapture readonly, i32* noalias nocapture) local_unnamed_addr #0 !dbg !7 {
  %3 = load %struct.pthread_condattr_t_*, %struct.pthread_condattr_t_** %0, align 8, !dbg !31, !tbaa !32
  %4 = getelementptr inbounds %struct.pthread_condattr_t_, %struct.pthread_condattr_t_* %3, i64 0, i32 0, !dbg !36
  %5 = load i32, i32* %4, align 4, !dbg !36, !tbaa !37
  %6 = and i32 %5, 2147483647, !dbg !40
  store i32 %6, i32* %1, align 4, !dbg !41, !tbaa !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !43
  ret i32 0, !dbg !43
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_condattr_setclock(%struct.pthread_condattr_t_** nocapture readonly, i32) local_unnamed_addr #0 !dbg !44 {
  %3 = icmp slt i32 %1, 0, !dbg !53
  %4 = and i32 %1, -2, !dbg !55
  %5 = icmp eq i32 %4, 2, !dbg !55
  %6 = or i1 %3, %5, !dbg !56
  br i1 %6, label %13, label %7, !dbg !56

; <label>:7:                                      ; preds = %2
  %8 = load %struct.pthread_condattr_t_*, %struct.pthread_condattr_t_** %0, align 8, !dbg !57, !tbaa !32
  %9 = getelementptr inbounds %struct.pthread_condattr_t_, %struct.pthread_condattr_t_* %8, i64 0, i32 0, !dbg !58
  %10 = load i32, i32* %9, align 4, !dbg !59, !tbaa !37
  %11 = and i32 %10, -2147483648, !dbg !59
  %12 = or i32 %11, %1, !dbg !60
  store i32 %12, i32* %9, align 4, !dbg !60, !tbaa !37
  br label %13, !dbg !61

; <label>:13:                                     ; preds = %2, %7
  %14 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  ret i32 %14, !dbg !63
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/pthread_condattr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_condattr_getclock", scope: !1, file: !1, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !24}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !15, line: 420, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_condattr_t_", file: !18, line: 251, size: 64, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !23}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !17, file: !18, line: 253, baseType: !21, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !22, line: 65, baseType: !10)
!22 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_member, name: "pshared", scope: !17, file: !18, line: 254, baseType: !10, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!26 = !{!27, !28}
!27 = !DILocalVariable(name: "attr", arg: 1, scope: !7, file: !1, line: 28, type: !11)
!28 = !DILocalVariable(name: "clock_id", arg: 2, scope: !7, file: !1, line: 29, type: !24)
!29 = !DILocation(line: 28, column: 68, scope: !7)
!30 = !DILocation(line: 29, column: 25, scope: !7)
!31 = !DILocation(line: 31, column: 15, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 31, column: 23, scope: !7)
!37 = !{!38, !39, i64 0}
!38 = !{!"pthread_condattr_t_", !39, i64 0, !39, i64 4}
!39 = !{!"int", !34, i64 0}
!40 = !DILocation(line: 31, column: 29, scope: !7)
!41 = !DILocation(line: 31, column: 12, scope: !7)
!42 = !{!39, !39, i64 0}
!43 = !DILocation(line: 32, column: 2, scope: !7)
!44 = distinct !DISubprogram(name: "pthread_condattr_setclock", scope: !1, file: !1, line: 35, type: !45, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !48)
!45 = !DISubroutineType(types: !46)
!46 = !{!10, !47, !21}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!48 = !{!49, !50}
!49 = !DILocalVariable(name: "attr", arg: 1, scope: !44, file: !1, line: 35, type: !47)
!50 = !DILocalVariable(name: "clock_id", arg: 2, scope: !44, file: !1, line: 35, type: !21)
!51 = !DILocation(line: 35, column: 51, scope: !44)
!52 = !DILocation(line: 35, column: 67, scope: !44)
!53 = !DILocation(line: 37, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !44, file: !1, line: 37, column: 6)
!55 = !DILocation(line: 37, column: 34, scope: !54)
!56 = !DILocation(line: 37, column: 19, scope: !54)
!57 = !DILocation(line: 39, column: 3, scope: !44)
!58 = !DILocation(line: 39, column: 11, scope: !44)
!59 = !DILocation(line: 39, column: 17, scope: !44)
!60 = !DILocation(line: 40, column: 17, scope: !44)
!61 = !DILocation(line: 41, column: 2, scope: !44)
!62 = !DILocation(line: 0, scope: !44)
!63 = !DILocation(line: 42, column: 1, scope: !44)
