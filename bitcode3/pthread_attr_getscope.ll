; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getscope.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getscope.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getscope(%struct.pthread_attr_t_** nocapture readonly, i32* nocapture) local_unnamed_addr #0 !dbg !7 {
  %3 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !42, !tbaa !43
  %4 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %3, i64 0, i32 6, !dbg !47
  %5 = load i32, i32* %4, align 4, !dbg !47, !tbaa !48
  store i32 %5, i32* %1, align 4, !dbg !53, !tbaa !54
  ret i32 0, !dbg !55
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getscope.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_attr_getscope", scope: !1, file: !1, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !36}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !14, line: 414, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !17, line: 116, size: 320, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !21, !23, !28, !29, !34, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !16, file: !17, line: 118, baseType: !20, size: 64)
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !16, file: !17, line: 119, baseType: !22, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !16, file: !17, line: 120, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 40, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !27, line: 129, baseType: !20)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !16, file: !17, line: 121, baseType: !10, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !16, file: !17, line: 122, baseType: !30, size: 32, offset: 224)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !31, line: 97, size: 32, elements: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !30, file: !31, line: 99, baseType: !10, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !16, file: !17, line: 123, baseType: !10, size: 32, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !16, file: !17, line: 124, baseType: !10, size: 32, offset: 288)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !7, file: !1, line: 48, type: !11)
!39 = !DILocalVariable(name: "contentionscope", arg: 2, scope: !7, file: !1, line: 48, type: !36)
!40 = !DILocation(line: 48, column: 47, scope: !7)
!41 = !DILocation(line: 48, column: 58, scope: !7)
!42 = !DILocation(line: 51, column: 23, scope: !7)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 51, column: 31, scope: !7)
!48 = !{!49, !51, i64 36}
!49 = !{!"pthread_attr_t_", !50, i64 0, !44, i64 8, !50, i64 16, !51, i64 24, !52, i64 28, !51, i64 32, !51, i64 36}
!50 = !{!"long", !45, i64 0}
!51 = !{!"int", !45, i64 0}
!52 = !{!"sched_param", !51, i64 0}
!53 = !DILocation(line: 51, column: 20, scope: !7)
!54 = !{!51, !51, i64 0}
!55 = !DILocation(line: 52, column: 3, scope: !7)
