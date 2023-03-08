; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_destroy.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_destroy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_destroy(%struct.pthread_attr_t_**) local_unnamed_addr #0 !dbg !7 {
  %2 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !38
  %3 = icmp eq i32 %2, 0, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  br i1 %3, label %4, label %8, !dbg !41

; <label>:4:                                      ; preds = %1
  %5 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !42, !tbaa !43
  %6 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %5, i64 0, i32 0, !dbg !47
  store i64 0, i64* %6, align 8, !dbg !48, !tbaa !49
  %7 = bitcast %struct.pthread_attr_t_* %5 to i8*, !dbg !54
  tail call void @free(i8* %7) #3, !dbg !55
  store %struct.pthread_attr_t_* null, %struct.pthread_attr_t_** %0, align 8, !dbg !56, !tbaa !43
  br label %8, !dbg !57

; <label>:8:                                      ; preds = %1, %4
  %9 = phi i32 [ 0, %4 ], [ 22, %1 ], !dbg !58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  ret i32 %9, !dbg !61
}

; Function Attrs: noredzone
declare dso_local i32 @pte_is_attr(%struct.pthread_attr_t_**) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_destroy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_attr_destroy", scope: !1, file: !1, line: 50, type: !8, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !35)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
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
!35 = !{!36}
!36 = !DILocalVariable(name: "attr", arg: 1, scope: !7, file: !1, line: 50, type: !11)
!37 = !DILocation(line: 50, column: 40, scope: !7)
!38 = !DILocation(line: 74, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 74, column: 7)
!40 = !DILocation(line: 74, column: 26, scope: !39)
!41 = !DILocation(line: 74, column: 7, scope: !7)
!42 = !DILocation(line: 82, column: 4, scope: !7)
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 82, column: 12, scope: !7)
!48 = !DILocation(line: 82, column: 18, scope: !7)
!49 = !{!50, !51, i64 0}
!50 = !{!"pthread_attr_t_", !51, i64 0, !44, i64 8, !51, i64 16, !52, i64 24, !53, i64 28, !52, i64 32, !52, i64 36}
!51 = !{!"long", !45, i64 0}
!52 = !{!"int", !45, i64 0}
!53 = !{!"sched_param", !52, i64 0}
!54 = !DILocation(line: 83, column: 9, scope: !7)
!55 = !DILocation(line: 83, column: 3, scope: !7)
!56 = !DILocation(line: 84, column: 9, scope: !7)
!57 = !DILocation(line: 86, column: 3, scope: !7)
!58 = !DILocation(line: 0, scope: !7)
!59 = !DILocation(line: 0, scope: !60)
!60 = distinct !DILexicalBlock(scope: !39, file: !1, line: 75, column: 5)
!61 = !DILocation(line: 87, column: 1, scope: !7)
