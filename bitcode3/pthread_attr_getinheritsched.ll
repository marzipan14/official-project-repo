; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getinheritsched.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getinheritsched.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getinheritsched(%struct.pthread_attr_t_**, i32*) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !42
  %4 = icmp ne i32 %3, 0, !dbg !44
  %5 = icmp eq i32* %1, null, !dbg !45
  %6 = or i1 %5, %4, !dbg !46
  br i1 %6, label %11, label %7, !dbg !46

; <label>:7:                                      ; preds = %2
  %8 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !47, !tbaa !48
  %9 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %8, i64 0, i32 5, !dbg !52
  %10 = load i32, i32* %9, align 8, !dbg !52, !tbaa !53
  store i32 %10, i32* %1, align 4, !dbg !58, !tbaa !59
  br label %11, !dbg !60

; <label>:11:                                     ; preds = %2, %7
  %12 = phi i32 [ 0, %7 ], [ 22, %2 ], !dbg !61
  ret i32 %12, !dbg !62
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getinheritsched.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "pthread_attr_getinheritsched", scope: !1, file: !1, line: 48, type: !10, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !36}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !15, line: 414, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !18, line: 116, size: 320, elements: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !{!20, !22, !23, !28, !29, !34, !35}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !17, file: !18, line: 118, baseType: !21, size: 64)
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !17, file: !18, line: 119, baseType: !4, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !17, file: !18, line: 120, baseType: !24, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 40, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !27, line: 129, baseType: !21)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !17, file: !18, line: 121, baseType: !12, size: 32, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !17, file: !18, line: 122, baseType: !30, size: 32, offset: 224)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !31, line: 97, size: 32, elements: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !30, file: !31, line: 99, baseType: !12, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !17, file: !18, line: 123, baseType: !12, size: 32, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !17, file: !18, line: 124, baseType: !12, size: 32, offset: 288)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !9, file: !1, line: 48, type: !13)
!39 = !DILocalVariable(name: "inheritsched", arg: 2, scope: !9, file: !1, line: 48, type: !36)
!40 = !DILocation(line: 48, column: 48, scope: !9)
!41 = !DILocation(line: 48, column: 59, scope: !9)
!42 = !DILocation(line: 50, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !9, file: !1, line: 50, column: 7)
!44 = !DILocation(line: 50, column: 26, scope: !43)
!45 = !DILocation(line: 50, column: 47, scope: !43)
!46 = !DILocation(line: 50, column: 31, scope: !43)
!47 = !DILocation(line: 55, column: 20, scope: !9)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 55, column: 28, scope: !9)
!53 = !{!54, !56, i64 32}
!54 = !{!"pthread_attr_t_", !55, i64 0, !49, i64 8, !55, i64 16, !56, i64 24, !57, i64 28, !56, i64 32, !56, i64 36}
!55 = !{!"long", !50, i64 0}
!56 = !{!"int", !50, i64 0}
!57 = !{!"sched_param", !56, i64 0}
!58 = !DILocation(line: 55, column: 17, scope: !9)
!59 = !{!56, !56, i64 0}
!60 = !DILocation(line: 56, column: 3, scope: !9)
!61 = !DILocation(line: 0, scope: !9)
!62 = !DILocation(line: 57, column: 1, scope: !9)
