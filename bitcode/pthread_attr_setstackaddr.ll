; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setstackaddr.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setstackaddr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_setstackaddr(%struct.pthread_attr_t_**, i8*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !40
  %4 = icmp eq i32 %3, 0, !dbg !42
  br i1 %4, label %5, label %8, !dbg !43

; <label>:5:                                      ; preds = %2
  %6 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !44, !tbaa !45
  %7 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %6, i64 0, i32 1, !dbg !49
  store i8* %1, i8** %7, align 8, !dbg !50, !tbaa !51
  br label %8, !dbg !56

; <label>:8:                                      ; preds = %2, %5
  %9 = phi i32 [ 0, %5 ], [ 22, %2 ], !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  ret i32 %9, !dbg !58
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_setstackaddr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_attr_setstackaddr", scope: !1, file: !1, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !35)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !21}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !13, line: 414, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pthread_attr_t_", file: !16, line: 116, size: 320, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/implement.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !20, !22, !27, !28, !33, !34}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !15, file: !16, line: 118, baseType: !19, size: 64)
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "stackaddr", scope: !15, file: !16, line: 119, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "stacksize", scope: !15, file: !16, line: 120, baseType: !23, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 40, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !26, line: 129, baseType: !19)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIDerivedType(tag: DW_TAG_member, name: "detachstate", scope: !15, file: !16, line: 121, baseType: !10, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !15, file: !16, line: 122, baseType: !29, size: 32, offset: 224)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !30, line: 97, size: 32, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sched.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !29, file: !30, line: 99, baseType: !10, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "inheritsched", scope: !15, file: !16, line: 123, baseType: !10, size: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "contentionscope", scope: !15, file: !16, line: 124, baseType: !10, size: 32, offset: 288)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "attr", arg: 1, scope: !7, file: !1, line: 48, type: !11)
!37 = !DILocalVariable(name: "stackaddr", arg: 2, scope: !7, file: !1, line: 48, type: !21)
!38 = !DILocation(line: 48, column: 45, scope: !7)
!39 = !DILocation(line: 48, column: 57, scope: !7)
!40 = !DILocation(line: 90, column: 7, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 90, column: 7)
!42 = !DILocation(line: 90, column: 26, scope: !41)
!43 = !DILocation(line: 90, column: 7, scope: !7)
!44 = !DILocation(line: 95, column: 4, scope: !7)
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 95, column: 12, scope: !7)
!50 = !DILocation(line: 95, column: 22, scope: !7)
!51 = !{!52, !46, i64 8}
!52 = !{!"pthread_attr_t_", !53, i64 0, !46, i64 8, !53, i64 16, !54, i64 24, !55, i64 28, !54, i64 32, !54, i64 36}
!53 = !{!"long", !47, i64 0}
!54 = !{!"int", !47, i64 0}
!55 = !{!"sched_param", !54, i64 0}
!56 = !DILocation(line: 96, column: 3, scope: !7)
!57 = !DILocation(line: 0, scope: !7)
!58 = !DILocation(line: 103, column: 1, scope: !7)
