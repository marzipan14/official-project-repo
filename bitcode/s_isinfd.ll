; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_isinfd.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_isinfd.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__isinfd(double) local_unnamed_addr #0 !dbg !12 {
  %2 = bitcast double %0 to i64, !dbg !34
  %3 = lshr i64 %2, 32, !dbg !34
  %4 = trunc i64 %3 to i32, !dbg !34
  %5 = trunc i64 %2 to i32, !dbg !34
  %6 = and i32 %4, 2147483647, !dbg !37
  %7 = sub nsw i32 0, %5, !dbg !38
  %8 = or i32 %5, %7, !dbg !39
  %9 = lshr i32 %8, 31, !dbg !40
  %10 = or i32 %6, %9, !dbg !41
  %11 = sub nsw i32 2146435072, %10, !dbg !42
  %12 = sub nsw i32 0, %11, !dbg !43
  %13 = or i32 %11, %12, !dbg !44
  %14 = lshr i32 %13, 31, !dbg !45
  %15 = xor i32 %14, 1, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i32 %15, !dbg !47
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_isinfd.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !5, line: 79, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "__isinfd", scope: !1, file: !1, line: 12, type: !13, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !15}
!15 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!16 = !{!17, !18, !20, !21}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 12, type: !15)
!18 = !DILocalVariable(name: "hx", scope: !12, file: !1, line: 15, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !5, line: 77, baseType: !7)
!20 = !DILocalVariable(name: "lx", scope: !12, file: !1, line: 15, type: !19)
!21 = !DILocalVariable(name: "ew_u", scope: !22, file: !1, line: 16, type: !23)
!22 = distinct !DILexicalBlock(scope: !12, file: !1, line: 16, column: 2)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !24, line: 278, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 270, size: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !25, file: !24, line: 272, baseType: !15, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !25, file: !24, line: 277, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !25, file: !24, line: 273, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !29, file: !24, line: 275, baseType: !4, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !29, file: !24, line: 276, baseType: !4, size: 32, offset: 32)
!33 = !DILocation(line: 12, column: 1, scope: !12)
!34 = !DILocation(line: 16, column: 2, scope: !22)
!35 = !DILocation(line: 15, column: 12, scope: !12)
!36 = !DILocation(line: 15, column: 15, scope: !12)
!37 = !DILocation(line: 17, column: 5, scope: !12)
!38 = !DILocation(line: 18, column: 25, scope: !12)
!39 = !DILocation(line: 18, column: 23, scope: !12)
!40 = !DILocation(line: 18, column: 30, scope: !12)
!41 = !DILocation(line: 18, column: 5, scope: !12)
!42 = !DILocation(line: 19, column: 18, scope: !12)
!43 = !DILocation(line: 20, column: 36, scope: !12)
!44 = !DILocation(line: 20, column: 34, scope: !12)
!45 = !DILocation(line: 20, column: 41, scope: !12)
!46 = !DILocation(line: 20, column: 11, scope: !12)
!47 = !DILocation(line: 20, column: 2, scope: !12)
