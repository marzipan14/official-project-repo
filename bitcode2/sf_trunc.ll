; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_trunc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_trunc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @truncf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !39
  %3 = and i32 %2, -2147483648, !dbg !41
  %4 = lshr i32 %2, 23, !dbg !43
  %5 = and i32 %4, 255, !dbg !43
  %6 = add nsw i32 %5, -127, !dbg !44
  %7 = icmp ult i32 %5, 150, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %7, label %8, label %17, !dbg !47

; <label>:8:                                      ; preds = %1
  %9 = icmp ult i32 %5, 127, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %9, label %10, label %12, !dbg !49

; <label>:10:                                     ; preds = %8
  %11 = bitcast i32 %3 to float, !dbg !50
  br label %17, !dbg !51

; <label>:12:                                     ; preds = %8
  %13 = ashr i32 -8388608, %6, !dbg !52
  %14 = and i32 %13, %2, !dbg !52
  %15 = or i32 %14, %3, !dbg !52
  %16 = bitcast i32 %15 to float, !dbg !52
  br label %17

; <label>:17:                                     ; preds = %1, %12, %10
  %18 = phi float [ %11, %10 ], [ %16, %12 ], [ %0, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret float %18, !dbg !54
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_trunc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "truncf", scope: !1, file: !1, line: 15, type: !8, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !17, !18, !19, !29, !35}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 15, type: !10)
!13 = !DILocalVariable(name: "signbit", scope: !7, file: !1, line: 21, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !15, line: 77, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 21, type: !14)
!18 = !DILocalVariable(name: "exponent_less_127", scope: !7, file: !1, line: 21, type: !14)
!19 = !DILocalVariable(name: "gf_u", scope: !20, file: !1, line: 23, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !22, line: 347, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 343, size: 32, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 345, baseType: !10, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !23, file: !22, line: 346, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "sf_u", scope: !30, file: !1, line: 36, type: !21)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 36, column: 11)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 34, column: 9)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 33, column: 11)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 32, column: 5)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 7)
!35 = !DILocalVariable(name: "sf_u", scope: !36, file: !1, line: 40, type: !21)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 40, column: 11)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 39, column: 9)
!38 = !DILocation(line: 15, column: 21, scope: !7)
!39 = !DILocation(line: 23, column: 3, scope: !20)
!40 = !DILocation(line: 21, column: 22, scope: !7)
!41 = !DILocation(line: 26, column: 15, scope: !7)
!42 = !DILocation(line: 21, column: 13, scope: !7)
!43 = !DILocation(line: 29, column: 41, scope: !7)
!44 = !DILocation(line: 29, column: 48, scope: !7)
!45 = !DILocation(line: 21, column: 25, scope: !7)
!46 = !DILocation(line: 31, column: 25, scope: !34)
!47 = !DILocation(line: 31, column: 7, scope: !7)
!48 = !DILocation(line: 33, column: 29, scope: !32)
!49 = !DILocation(line: 33, column: 11, scope: !33)
!50 = !DILocation(line: 36, column: 11, scope: !30)
!51 = !DILocation(line: 37, column: 9, scope: !31)
!52 = !DILocation(line: 40, column: 11, scope: !36)
!53 = !DILocation(line: 51, column: 3, scope: !7)
!54 = !DILocation(line: 52, column: 1, scope: !7)
