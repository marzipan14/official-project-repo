; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getdetachstate.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getdetachstate.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getdetachstate(%struct.pthread_attr_t_**, i32*) local_unnamed_addr #0 !dbg !27 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !59
  %4 = icmp ne i32 %3, 0, !dbg !61
  %5 = icmp eq i32* %1, null, !dbg !62
  %6 = or i1 %5, %4, !dbg !63
  br i1 %6, label %11, label %7, !dbg !63

; <label>:7:                                      ; preds = %2
  %8 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !64, !tbaa !65
  %9 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %8, i64 0, i32 3, !dbg !69
  %10 = load i32, i32* %9, align 8, !dbg !69, !tbaa !70
  br label %11, !dbg !75

; <label>:11:                                     ; preds = %2, %7
  %12 = phi i32 [ %10, %7 ], [ 1, %2 ]
  %13 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !76
  store i32 %12, i32* %1, align 4, !dbg !77, !tbaa !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  ret i32 %13, !dbg !80
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getdetachstate.c", directory: "/root/.unikraft/apps/redis/build")
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
!27 = distinct !DISubprogram(name: "pthread_attr_getdetachstate", scope: !1, file: !1, line: 48, type: !28, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !54)
!28 = !DISubroutineType(types: !29)
!29 = !{!5, !30, !53}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !4, line: 414, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !35, line: 116, size: 320, elements: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !{!37, !39, !40, !45, !46, !51, !52}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !34, file: !35, line: 118, baseType: !38, size: 64)
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !34, file: !35, line: 119, baseType: !22, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !34, file: !35, line: 120, baseType: !41, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 40, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !44, line: 129, baseType: !38)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !34, file: !35, line: 121, baseType: !5, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !34, file: !35, line: 122, baseType: !47, size: 32, offset: 224)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !48, line: 97, size: 32, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !47, file: !48, line: 99, baseType: !5, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !34, file: !35, line: 123, baseType: !5, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !34, file: !35, line: 124, baseType: !5, size: 32, offset: 288)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!54 = !{!55, !56}
!55 = !DILocalVariable(name: "attr", arg: 1, scope: !27, file: !1, line: 48, type: !30)
!56 = !DILocalVariable(name: "detachstate", arg: 2, scope: !27, file: !1, line: 48, type: !53)
!57 = !DILocation(line: 48, column: 53, scope: !27)
!58 = !DILocation(line: 48, column: 64, scope: !27)
!59 = !DILocation(line: 85, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !27, file: !1, line: 85, column: 7)
!61 = !DILocation(line: 85, column: 26, scope: !60)
!62 = !DILocation(line: 85, column: 46, scope: !60)
!63 = !DILocation(line: 85, column: 31, scope: !60)
!64 = !DILocation(line: 91, column: 19, scope: !27)
!65 = !{!66, !66, i64 0}
!66 = !{!"any pointer", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 91, column: 27, scope: !27)
!70 = !{!71, !73, i64 24}
!71 = !{!"pthread_attr_t_", !72, i64 0, !66, i64 8, !72, i64 16, !73, i64 24, !74, i64 28, !73, i64 32, !73, i64 36}
!72 = !{!"long", !67, i64 0}
!73 = !{!"int", !67, i64 0}
!74 = !{!"sched_param", !73, i64 0}
!75 = !DILocation(line: 92, column: 3, scope: !27)
!76 = !DILocation(line: 0, scope: !27)
!77 = !DILocation(line: 0, scope: !78)
!78 = distinct !DILexicalBlock(scope: !60, file: !1, line: 86, column: 5)
!79 = !{!73, !73, i64 0}
!80 = !DILocation(line: 93, column: 1, scope: !27)
