; ModuleID = '/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_open.c'
source_filename = "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_open.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @sem_open(i8* nocapture readnone, i32, i32, i32) local_unnamed_addr #0 !dbg !7 {
  %5 = tail call i32* @__errno() #3, !dbg !30
  store i32 88, i32* %5, align 4, !dbg !31, !tbaa !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  ret i32 -1, !dbg !36
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/sem_open.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "sem_open", scope: !1, file: !1, line: 56, type: !8, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !21)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !10, !14, !20}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !15, line: 205, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !17, line: 88, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 79, baseType: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "name", arg: 1, scope: !7, file: !1, line: 56, type: !11)
!23 = !DILocalVariable(name: "oflag", arg: 2, scope: !7, file: !1, line: 56, type: !10)
!24 = !DILocalVariable(name: "mode", arg: 3, scope: !7, file: !1, line: 56, type: !14)
!25 = !DILocalVariable(name: "value", arg: 4, scope: !7, file: !1, line: 56, type: !20)
!26 = !DILocation(line: 56, column: 23, scope: !7)
!27 = !DILocation(line: 56, column: 33, scope: !7)
!28 = !DILocation(line: 56, column: 47, scope: !7)
!29 = !DILocation(line: 56, column: 66, scope: !7)
!30 = !DILocation(line: 58, column: 3, scope: !7)
!31 = !DILocation(line: 58, column: 9, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 59, column: 3, scope: !7)
