; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_is_attr.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_is_attr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @pte_is_attr(%struct.pthread_attr_t_** readonly) local_unnamed_addr #0 !dbg !10 {
  %2 = icmp eq %struct.pthread_attr_t_** %0, null, !dbg !40
  br i1 %2, label %11, label %3, !dbg !41

; <label>:3:                                      ; preds = %1
  %4 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !42, !tbaa !43
  %5 = icmp eq %struct.pthread_attr_t_* %4, null, !dbg !47
  br i1 %5, label %11, label %6, !dbg !48

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %4, i64 0, i32 0, !dbg !49
  %8 = load i64, i64* %7, align 8, !dbg !49, !tbaa !50
  %9 = icmp ne i64 %8, 3300982766, !dbg !55
  %10 = zext i1 %9 to i32, !dbg !48
  br label %11, !dbg !48

; <label>:11:                                     ; preds = %6, %3, %1
  %12 = phi i32 [ 1, %3 ], [ 1, %1 ], [ %10, %6 ]
  ret i32 %12, !dbg !56
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pte_is_attr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "pte_is_attr", scope: !1, file: !1, line: 47, type: !11, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !17, line: 414, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !20, line: 116, size: 320, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !29, !30, !35, !36}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !19, file: !20, line: 118, baseType: !5, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !19, file: !20, line: 119, baseType: !4, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !19, file: !20, line: 120, baseType: !25, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !26, line: 40, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !28, line: 129, baseType: !5)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !19, file: !20, line: 121, baseType: !13, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !19, file: !20, line: 122, baseType: !31, size: 32, offset: 224)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !32, line: 97, size: 32, elements: !33)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !{!34}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !31, file: !32, line: 99, baseType: !13, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !19, file: !20, line: 123, baseType: !13, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !19, file: !20, line: 124, baseType: !13, size: 32, offset: 288)
!37 = !{!38}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !10, file: !1, line: 47, type: !14)
!39 = !DILocation(line: 47, column: 37, scope: !10)
!40 = !DILocation(line: 51, column: 16, scope: !10)
!41 = !DILocation(line: 51, column: 24, scope: !10)
!42 = !DILocation(line: 52, column: 11, scope: !10)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 52, column: 17, scope: !10)
!48 = !DILocation(line: 52, column: 25, scope: !10)
!49 = !DILocation(line: 52, column: 37, scope: !10)
!50 = !{!51, !52, i64 0}
!51 = !{!"pthread_attr_t_", !52, i64 0, !44, i64 8, !52, i64 16, !53, i64 24, !54, i64 28, !53, i64 32, !53, i64 36}
!52 = !{!"long", !45, i64 0}
!53 = !{!"int", !45, i64 0}
!54 = !{!"sched_param", !53, i64 0}
!55 = !DILocation(line: 52, column: 43, scope: !10)
!56 = !DILocation(line: 51, column: 3, scope: !10)
