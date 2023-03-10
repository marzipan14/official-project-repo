; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @wcsnlen(i32*, i64) local_unnamed_addr #0 !dbg !11 {
  %3 = load i32, i32* %0, align 4, !dbg !24, !tbaa !25
  %4 = icmp eq i32 %3, 0, !dbg !24
  %5 = icmp ne i64 %1, 0, !dbg !29
  %6 = xor i1 %4, true, !dbg !30
  %7 = and i1 %5, %6, !dbg !30
  br i1 %7, label %8, label %21, !dbg !31

; <label>:8:                                      ; preds = %2, %8
  %9 = phi i1 [ %17, %8 ], [ %4, %2 ]
  %10 = phi i32* [ %15, %8 ], [ %0, %2 ]
  %11 = phi i64 [ %14, %8 ], [ %1, %2 ]
  %12 = xor i1 %9, true, !dbg !30
  %13 = sext i1 %12 to i64, !dbg !30
  %14 = add i64 %11, %13, !dbg !30
  %15 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !32
  %16 = load i32, i32* %15, align 4, !dbg !24, !tbaa !25
  %17 = icmp eq i32 %16, 0, !dbg !24
  %18 = icmp ne i64 %14, 0, !dbg !29
  %19 = xor i1 %17, true, !dbg !30
  %20 = and i1 %18, %19, !dbg !30
  br i1 %20, label %8, label %21, !dbg !31, !llvm.loop !33

; <label>:21:                                     ; preds = %8, %2
  %22 = phi i32* [ %0, %2 ], [ %15, %8 ], !dbg !34
  %23 = ptrtoint i32* %22 to i64, !dbg !35
  %24 = ptrtoint i32* %0 to i64, !dbg !35
  %25 = sub i64 %23, %24, !dbg !35
  %26 = ashr exact i64 %25, 2, !dbg !35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  ret i64 %26, !dbg !36
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/wcsnlen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 58, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "wcsnlen", scope: !1, file: !1, line: 61, type: !12, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!4, !14, !4}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !5, line: 83, baseType: !17)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19, !20, !21}
!19 = !DILocalVariable(name: "s", arg: 1, scope: !11, file: !1, line: 61, type: !14)
!20 = !DILocalVariable(name: "maxlen", arg: 2, scope: !11, file: !1, line: 61, type: !4)
!21 = !DILocalVariable(name: "p", scope: !11, file: !1, line: 65, type: !14)
!22 = !DILocation(line: 61, column: 1, scope: !11)
!23 = !DILocation(line: 65, column: 19, scope: !11)
!24 = !DILocation(line: 68, column: 10, scope: !11)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 68, column: 25, scope: !11)
!30 = !DILocation(line: 68, column: 13, scope: !11)
!31 = !DILocation(line: 68, column: 3, scope: !11)
!32 = !DILocation(line: 69, column: 6, scope: !11)
!33 = distinct !{!33, !31, !32}
!34 = !DILocation(line: 0, scope: !11)
!35 = !DILocation(line: 71, column: 21, scope: !11)
!36 = !DILocation(line: 71, column: 3, scope: !11)
