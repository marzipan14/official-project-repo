; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @__fpclassifyf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !27
  %3 = or i32 %2, -2147483648, !dbg !29
  %4 = icmp eq i32 %3, -2147483648, !dbg !29
  br i1 %4, label %15, label %5, !dbg !29

; <label>:5:                                      ; preds = %1
  %6 = and i32 %2, 2147483647, !dbg !31
  %7 = add nsw i32 %6, -8388608, !dbg !31
  %8 = icmp ult i32 %7, 2130706432, !dbg !31
  br i1 %8, label %15, label %9, !dbg !31

; <label>:9:                                      ; preds = %5
  %10 = add nsw i32 %6, -1, !dbg !33
  %11 = icmp ult i32 %10, 8388607, !dbg !33
  br i1 %11, label %15, label %12, !dbg !33

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i32 %3, -8388608, !dbg !35
  %14 = zext i1 %13 to i32, !dbg !37
  br label %15, !dbg !37

; <label>:15:                                     ; preds = %12, %9, %5, %1
  %16 = phi i32 [ 2, %1 ], [ 4, %5 ], [ 3, %9 ], [ %14, %12 ], !dbg !38
  ret i32 %16, !dbg !39
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__fpclassifyf", scope: !1, file: !1, line: 10, type: !8, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!13, !14, !18}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 10, type: !11)
!14 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 12, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "gf_u", scope: !19, file: !1, line: 14, type: !20)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 3)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !21, line: 347, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 343, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !22, file: !21, line: 345, baseType: !11, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !22, file: !21, line: 346, baseType: !15, size: 32)
!26 = !DILocation(line: 10, column: 22, scope: !7)
!27 = !DILocation(line: 14, column: 3, scope: !19)
!28 = !DILocation(line: 12, column: 14, scope: !7)
!29 = !DILocation(line: 16, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 16, column: 7)
!31 = !DILocation(line: 18, column: 29, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 18, column: 12)
!33 = !DILocation(line: 21, column: 29, scope: !34)
!34 = distinct !DILexicalBlock(scope: !32, file: !1, line: 21, column: 12)
!35 = !DILocation(line: 24, column: 28, scope: !36)
!36 = distinct !DILexicalBlock(scope: !34, file: !1, line: 24, column: 12)
!37 = !DILocation(line: 25, column: 5, scope: !36)
!38 = !DILocation(line: 0, scope: !36)
!39 = !DILocation(line: 28, column: 1, scope: !7)
