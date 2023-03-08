; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @wcslen(i32*) local_unnamed_addr #0 !dbg !7 {
  br label %2, !dbg !22

; <label>:2:                                      ; preds = %2, %1
  %3 = phi i32* [ %0, %1 ], [ %6, %2 ], !dbg !23
  %4 = load i32, i32* %3, align 4, !dbg !24, !tbaa !25
  %5 = icmp eq i32 %4, 0, !dbg !22
  %6 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !29
  br i1 %5, label %7, label %2, !dbg !22, !llvm.loop !30

; <label>:7:                                      ; preds = %2
  %8 = ptrtoint i32* %3 to i64, !dbg !31
  %9 = ptrtoint i32* %0 to i64, !dbg !31
  %10 = sub i64 %8, %9, !dbg !31
  %11 = ashr exact i64 %10, 2, !dbg !31
  ret i64 %11, !dbg !32
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcslen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "wcslen", scope: !1, file: !1, line: 62, type: !8, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !11, line: 83, baseType: !16)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "s", arg: 1, scope: !7, file: !1, line: 62, type: !13)
!19 = !DILocalVariable(name: "p", scope: !7, file: !1, line: 65, type: !13)
!20 = !DILocation(line: 62, column: 1, scope: !7)
!21 = !DILocation(line: 65, column: 19, scope: !7)
!22 = !DILocation(line: 68, column: 3, scope: !7)
!23 = !DILocation(line: 0, scope: !7)
!24 = !DILocation(line: 68, column: 10, scope: !7)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 69, column: 6, scope: !7)
!30 = distinct !{!30, !22, !29}
!31 = !DILocation(line: 71, column: 12, scope: !7)
!32 = !DILocation(line: 71, column: 3, scope: !7)
