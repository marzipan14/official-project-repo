; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getstacksize.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getstacksize.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pthread_attr_t_ = type { i64, i8*, i64, i32, %struct.sched_param, i32, i32 }
%struct.sched_param = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @pthread_attr_getstacksize(%struct.pthread_attr_t_**, i64* nocapture) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 @pte_is_attr(%struct.pthread_attr_t_** %0) #3, !dbg !42
  %4 = icmp eq i32 %3, 0, !dbg !44
  br i1 %4, label %5, label %9, !dbg !45

; <label>:5:                                      ; preds = %2
  %6 = load %struct.pthread_attr_t_*, %struct.pthread_attr_t_** %0, align 8, !dbg !46, !tbaa !47
  %7 = getelementptr inbounds %struct.pthread_attr_t_, %struct.pthread_attr_t_* %6, i64 0, i32 2, !dbg !51
  %8 = load i64, i64* %7, align 8, !dbg !51, !tbaa !52
  store i64 %8, i64* %1, align 8, !dbg !57, !tbaa !58
  br label %9, !dbg !59

; <label>:9:                                      ; preds = %2, %5
  %10 = phi i32 [ 0, %5 ], [ 22, %2 ], !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  ret i32 %10, !dbg !61
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread_attr_getstacksize.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "pthread_attr_getstacksize", scope: !1, file: !1, line: 48, type: !8, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
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
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!37 = !{!38, !39}
!38 = !DILocalVariable(name: "attr", arg: 1, scope: !7, file: !1, line: 48, type: !11)
!39 = !DILocalVariable(name: "stacksize", arg: 2, scope: !7, file: !1, line: 48, type: !36)
!40 = !DILocation(line: 48, column: 51, scope: !7)
!41 = !DILocation(line: 48, column: 66, scope: !7)
!42 = !DILocation(line: 87, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 87, column: 7)
!44 = !DILocation(line: 87, column: 26, scope: !43)
!45 = !DILocation(line: 87, column: 7, scope: !7)
!46 = !DILocation(line: 93, column: 17, scope: !7)
!47 = !{!48, !48, i64 0}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 93, column: 25, scope: !7)
!52 = !{!53, !54, i64 16}
!53 = !{!"pthread_attr_t_", !54, i64 0, !48, i64 8, !54, i64 16, !55, i64 24, !56, i64 28, !55, i64 32, !55, i64 36}
!54 = !{!"long", !49, i64 0}
!55 = !{!"int", !49, i64 0}
!56 = !{!"sched_param", !55, i64 0}
!57 = !DILocation(line: 93, column: 14, scope: !7)
!58 = !{!54, !54, i64 0}
!59 = !DILocation(line: 94, column: 3, scope: !7)
!60 = !DILocation(line: 0, scope: !7)
!61 = !DILocation(line: 102, column: 1, scope: !7)
