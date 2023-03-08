; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedparam.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedparam.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getschedparam(%struct.pthread_attr_t_**, %struct.sched_param*) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !43
  %4 = icmp ne i32 %3, 0, !dbg !45
  %5 = icmp eq %struct.sched_param* %1, null, !dbg !46
  %6 = or i1 %5, %4, !dbg !47
  br i1 %6, label %13, label %7, !dbg !47

; <label>:7:                                      ; preds = %2
  %8 = bitcast %struct.sched_param* %1 to i8*, !dbg !48
  %9 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !49, !tbaa !50
  %10 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %9, i64 0, i32 4, !dbg !54
  %11 = bitcast %struct.sched_param* %10 to i8*, !dbg !55
  %12 = tail call i8* @memcpy(i8* %8, i8* nonnull %11, i64 4) #3, !dbg !56
  br label %13, !dbg !57

; <label>:13:                                     ; preds = %2, %7
  %14 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !58
  ret i32 %14, !dbg !59
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getschedparam.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_attr_getschedparam", scope: !1, file: !1, line: 51, type: !10, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !38)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !37}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !16, line: 414, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !19, line: 116, size: 320, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !23, !24, !29, !30, !35, !36}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !18, file: !19, line: 118, baseType: !22, size: 64)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !18, file: !19, line: 119, baseType: !4, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !18, file: !19, line: 120, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !28, line: 129, baseType: !22)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !18, file: !19, line: 121, baseType: !12, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !18, file: !19, line: 122, baseType: !31, size: 32, offset: 224)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !32, line: 97, size: 32, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !31, file: !32, line: 99, baseType: !12, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !18, file: !19, line: 123, baseType: !12, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !18, file: !19, line: 124, baseType: !12, size: 32, offset: 288)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!38 = !{!39, !40}
!39 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 51, type: !13)
!40 = !DILocalVariable(name: "param", arg: 2, scope: !9, file: !1, line: 52, type: !37)
!41 = !DILocation(line: 51, column: 52, scope: !9)
!42 = !DILocation(line: 52, column: 49, scope: !9)
!43 = !DILocation(line: 54, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !9, file: !1, line: 54, column: 7)
!45 = !DILocation(line: 54, column: 26, scope: !44)
!46 = !DILocation(line: 54, column: 40, scope: !44)
!47 = !DILocation(line: 54, column: 31, scope: !44)
!48 = !DILocation(line: 59, column: 11, scope: !9)
!49 = !DILocation(line: 59, column: 20, scope: !9)
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C/C++ TBAA"}
!54 = !DILocation(line: 59, column: 28, scope: !9)
!55 = !DILocation(line: 59, column: 18, scope: !9)
!56 = !DILocation(line: 59, column: 3, scope: !9)
!57 = !DILocation(line: 60, column: 3, scope: !9)
!58 = !DILocation(line: 0, scope: !9)
!59 = !DILocation(line: 61, column: 1, scope: !9)
