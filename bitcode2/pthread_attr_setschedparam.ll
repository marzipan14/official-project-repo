; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedparam.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedparam.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setschedparam(%struct.pthread_attr_t_**, %struct.sched_param*) local_unnamed_addr #0 !dbg !18 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !52
  %4 = icmp ne i32 %3, 0, !dbg !54
  %5 = icmp eq %struct.sched_param* %1, null, !dbg !55
  %6 = or i1 %5, %4, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %6, label %21, label %7, !dbg !56

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %1, i64 0, i32 0, !dbg !57
  %9 = load i32, i32* %8, align 4, !dbg !57, !tbaa !58
  %10 = tail call i32 @sched_get_priority_min(i32 0) #3, !dbg !64
  %11 = icmp slt i32 %9, %10, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %11, label %21, label %12, !dbg !67

; <label>:12:                                     ; preds = %7
  %13 = tail call i32 @sched_get_priority_max(i32 0) #3, !dbg !68
  %14 = icmp sgt i32 %9, %13, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %14, label %21, label %15, !dbg !70

; <label>:15:                                     ; preds = %12
  %16 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !71, !tbaa !72
  %17 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %16, i64 0, i32 4, !dbg !74
  %18 = bitcast %struct.sched_param* %17 to i8*, !dbg !75
  %19 = bitcast %struct.sched_param* %1 to i8*, !dbg !76
  %20 = tail call i8* @memcpy(i8* nonnull %18, i8* %19, i64 4) #3, !dbg !77
  br label %21, !dbg !78

; <label>:21:                                     ; preds = %7, %12, %2, %15
  %22 = phi i32 [ 0, %15 ], [ 22, %2 ], [ 22, %12 ], [ 22, %7 ], !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  ret i32 %22, !dbg !82
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sched_get_priority_min(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @sched_get_priority_max(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !12)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setschedparam.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 88, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11}
!7 = !DIEnumerator(name: "SCHED_OTHER", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "SCHED_FIFO", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "SCHED_RR", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "SCHED_MIN", value: 0, isUnsigned: true)
!11 = !DIEnumerator(name: "SCHED_MAX", value: 2, isUnsigned: true)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "pthread_attr_setschedparam", scope: !1, file: !1, line: 51, type: !19, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !46)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !44}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !24, line: 414, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !27, line: 116, size: 320, elements: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !{!29, !31, !32, !37, !38, !42, !43}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !26, file: !27, line: 118, baseType: !30, size: 64)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !26, file: !27, line: 119, baseType: !13, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !26, file: !27, line: 120, baseType: !33, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 40, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !36, line: 129, baseType: !30)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !26, file: !27, line: 121, baseType: !21, size: 32, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !26, file: !27, line: 122, baseType: !39, size: 32, offset: 224)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !4, line: 97, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !39, file: !4, line: 99, baseType: !21, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !26, file: !27, line: 123, baseType: !21, size: 32, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !26, file: !27, line: 124, baseType: !21, size: 32, offset: 288)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: "attr", arg: 1, scope: !18, file: !1, line: 51, type: !22)
!48 = !DILocalVariable(name: "param", arg: 2, scope: !18, file: !1, line: 52, type: !44)
!49 = !DILocalVariable(name: "priority", scope: !18, file: !1, line: 54, type: !21)
!50 = !DILocation(line: 51, column: 46, scope: !18)
!51 = !DILocation(line: 52, column: 55, scope: !18)
!52 = !DILocation(line: 56, column: 7, scope: !53)
!53 = distinct !DILexicalBlock(scope: !18, file: !1, line: 56, column: 7)
!54 = !DILocation(line: 56, column: 26, scope: !53)
!55 = !DILocation(line: 56, column: 40, scope: !53)
!56 = !DILocation(line: 56, column: 31, scope: !53)
!57 = !DILocation(line: 61, column: 21, scope: !18)
!58 = !{!59, !60, i64 0}
!59 = !{!"sched_param", !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !DILocation(line: 54, column: 7, scope: !18)
!64 = !DILocation(line: 64, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !18, file: !1, line: 64, column: 7)
!66 = !DILocation(line: 64, column: 16, scope: !65)
!67 = !DILocation(line: 64, column: 55, scope: !65)
!68 = !DILocation(line: 65, column: 18, scope: !65)
!69 = !DILocation(line: 65, column: 16, scope: !65)
!70 = !DILocation(line: 64, column: 7, scope: !18)
!71 = !DILocation(line: 70, column: 13, scope: !18)
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !61, i64 0}
!74 = !DILocation(line: 70, column: 21, scope: !18)
!75 = !DILocation(line: 70, column: 11, scope: !18)
!76 = !DILocation(line: 70, column: 28, scope: !18)
!77 = !DILocation(line: 70, column: 3, scope: !18)
!78 = !DILocation(line: 71, column: 3, scope: !18)
!79 = !DILocation(line: 0, scope: !18)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 5)
!82 = !DILocation(line: 72, column: 1, scope: !18)
