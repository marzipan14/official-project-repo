; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setinheritsched.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setinheritsched.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setinheritsched(%struct.pthread_attr_t_**, i32) local_unnamed_addr #0 !dbg !25 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !56
  %4 = icmp ne i32 %3, 0, !dbg !58
  %5 = icmp ugt i32 %1, 1, !dbg !59
  %6 = or i1 %5, %4, !dbg !61
  br i1 %6, label %10, label %7, !dbg !61

; <label>:7:                                      ; preds = %2
  %8 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !62, !tbaa !63
  %9 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %8, i64 0, i32 5, !dbg !67
  store i32 %1, i32* %9, align 8, !dbg !68, !tbaa !69
  br label %10, !dbg !74

; <label>:10:                                     ; preds = %2, %7
  %11 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  ret i32 %11, !dbg !76
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setinheritsched.c", directory: "/root/.unikraft/apps/redis/build")
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
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "pthread_attr_setinheritsched", scope: !1, file: !1, line: 48, type: !26, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !51)
!26 = !DISubroutineType(types: !27)
!27 = !{!5, !28, !5}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !4, line: 414, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !32, line: 116, size: 320, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34, !36, !38, !43, !44, !49, !50}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !31, file: !32, line: 118, baseType: !35, size: 64)
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !31, file: !32, line: 119, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !31, file: !32, line: 120, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 40, baseType: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !42, line: 129, baseType: !35)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !31, file: !32, line: 121, baseType: !5, size: 32, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !31, file: !32, line: 122, baseType: !45, size: 32, offset: 224)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !46, line: 97, size: 32, elements: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !45, file: !46, line: 99, baseType: !5, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !31, file: !32, line: 123, baseType: !5, size: 32, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !31, file: !32, line: 124, baseType: !5, size: 32, offset: 288)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "attr", arg: 1, scope: !25, file: !1, line: 48, type: !28)
!53 = !DILocalVariable(name: "inheritsched", arg: 2, scope: !25, file: !1, line: 48, type: !5)
!54 = !DILocation(line: 48, column: 48, scope: !25)
!55 = !DILocation(line: 48, column: 58, scope: !25)
!56 = !DILocation(line: 50, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !25, file: !1, line: 50, column: 7)
!58 = !DILocation(line: 50, column: 26, scope: !57)
!59 = !DILocation(line: 56, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !25, file: !1, line: 55, column: 7)
!61 = !DILocation(line: 50, column: 7, scope: !25)
!62 = !DILocation(line: 61, column: 4, scope: !25)
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 61, column: 12, scope: !25)
!68 = !DILocation(line: 61, column: 25, scope: !25)
!69 = !{!70, !72, i64 32}
!70 = !{!"pthread_attr_t_", !71, i64 0, !64, i64 8, !71, i64 16, !72, i64 24, !73, i64 28, !72, i64 32, !72, i64 36}
!71 = !{!"long", !65, i64 0}
!72 = !{!"int", !65, i64 0}
!73 = !{!"sched_param", !72, i64 0}
!74 = !DILocation(line: 62, column: 3, scope: !25)
!75 = !DILocation(line: 0, scope: !25)
!76 = !DILocation(line: 63, column: 1, scope: !25)
