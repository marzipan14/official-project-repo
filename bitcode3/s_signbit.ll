; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_signbit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_signbit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @__signbitf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !27
  %3 = lshr i32 %2, 31, !dbg !29
  ret i32 %3, !dbg !30
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @__signbitd(double) local_unnamed_addr #0 !dbg !31 {
  %2 = bitcast double %0 to i64, !dbg !50
  %3 = lshr i64 %2, 63, !dbg !51
  %4 = trunc i64 %3 to i32, !dbg !51
  ret i32 %4, !dbg !52
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_signbit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__signbitf", scope: !1, file: !1, line: 42, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!13, !14, !18}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 42, type: !11)
!14 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 44, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "gf_u", scope: !19, file: !1, line: 46, type: !20)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 46, column: 3)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !21, line: 347, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 343, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !22, file: !21, line: 345, baseType: !11, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !22, file: !21, line: 346, baseType: !15, size: 32)
!26 = !DILocation(line: 42, column: 19, scope: !7)
!27 = !DILocation(line: 46, column: 3, scope: !19)
!28 = !DILocation(line: 44, column: 14, scope: !7)
!29 = !DILocation(line: 48, column: 27, scope: !7)
!30 = !DILocation(line: 48, column: 3, scope: !7)
!31 = distinct !DISubprogram(name: "__signbitd", scope: !1, file: !1, line: 52, type: !32, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !35)
!32 = !DISubroutineType(types: !33)
!33 = !{!10, !34}
!34 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: "x", arg: 1, scope: !31, file: !1, line: 52, type: !34)
!37 = !DILocalVariable(name: "msw", scope: !31, file: !1, line: 54, type: !15)
!38 = !DILocalVariable(name: "gh_u", scope: !39, file: !1, line: 56, type: !40)
!39 = distinct !DILexicalBlock(scope: !31, file: !1, line: 56, column: 3)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !21, line: 278, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 270, size: 64, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !41, file: !21, line: 272, baseType: !34, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !41, file: !21, line: 277, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !41, file: !21, line: 273, size: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !45, file: !21, line: 275, baseType: !15, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !45, file: !21, line: 276, baseType: !15, size: 32, offset: 32)
!49 = !DILocation(line: 52, column: 20, scope: !31)
!50 = !DILocation(line: 56, column: 3, scope: !39)
!51 = !DILocation(line: 58, column: 29, scope: !31)
!52 = !DILocation(line: 58, column: 3, scope: !31)
