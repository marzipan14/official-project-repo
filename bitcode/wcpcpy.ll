; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpcpy.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpcpy.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32* @wcpcpy(i32* noalias, i32* noalias nocapture readonly) local_unnamed_addr #0 !dbg !7 {
  br label %3, !dbg !22

; <label>:3:                                      ; preds = %3, %2
  %4 = phi i32* [ %0, %2 ], [ %8, %3 ]
  %5 = phi i32* [ %1, %2 ], [ %6, %3 ]
  %6 = getelementptr inbounds i32, i32* %5, i64 1, !dbg !23
  %7 = load i32, i32* %5, align 4, !dbg !24, !tbaa !25
  %8 = getelementptr inbounds i32, i32* %4, i64 1, !dbg !29
  store i32 %7, i32* %4, align 4, !dbg !30, !tbaa !25
  %9 = icmp eq i32 %7, 0, !dbg !22
  br i1 %9, label %10, label %3, !dbg !22, !llvm.loop !31

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  ret i32* %4, !dbg !33
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcpcpy.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcpcpy", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !14, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !10)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "s1", arg: 1, scope: !7, file: !1, line: 34, type: !14)
!20 = !DILocalVariable(name: "s2", arg: 2, scope: !7, file: !1, line: 34, type: !15)
!21 = !DILocation(line: 34, column: 1, scope: !7)
!22 = !DILocation(line: 38, column: 3, scope: !7)
!23 = !DILocation(line: 38, column: 22, scope: !7)
!24 = !DILocation(line: 38, column: 19, scope: !7)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 38, column: 14, scope: !7)
!30 = !DILocation(line: 38, column: 17, scope: !7)
!31 = distinct !{!31, !22, !32}
!32 = !DILocation(line: 39, column: 5, scope: !7)
!33 = !DILocation(line: 40, column: 3, scope: !7)
