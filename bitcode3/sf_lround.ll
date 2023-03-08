; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_lround.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_lround.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @lroundf(float) local_unnamed_addr #0 !dbg !10 {
  %2 = bitcast float %0 to i32, !dbg !33
  %3 = lshr i32 %2, 23, !dbg !35
  %4 = and i32 %3, 255, !dbg !35
  %5 = add nsw i32 %4, -127, !dbg !36
  %6 = icmp slt i32 %2, 0, !dbg !38
  %7 = select i1 %6, i32 -1, i32 1, !dbg !39
  %8 = and i32 %2, 8388607, !dbg !41
  %9 = or i32 %8, 8388608, !dbg !42
  %10 = icmp ult i32 %4, 190, !dbg !43
  br i1 %10, label %11, label %30, !dbg !45

; <label>:11:                                     ; preds = %1
  %12 = icmp ult i32 %4, 127, !dbg !46
  br i1 %12, label %13, label %17, !dbg !49

; <label>:13:                                     ; preds = %11
  %14 = icmp eq i32 %4, 126, !dbg !50
  %15 = select i1 %14, i32 %7, i32 0, !dbg !51
  %16 = sext i32 %15 to i64, !dbg !51
  br label %36, !dbg !52

; <label>:17:                                     ; preds = %11
  %18 = icmp ugt i32 %4, 149, !dbg !53
  br i1 %18, label %19, label %24, !dbg !55

; <label>:19:                                     ; preds = %17
  %20 = zext i32 %9 to i64, !dbg !56
  %21 = add nsw i32 %4, -150, !dbg !57
  %22 = zext i32 %21 to i64, !dbg !58
  %23 = shl i64 %20, %22, !dbg !58
  br label %32, !dbg !60

; <label>:24:                                     ; preds = %17
  %25 = lshr i32 4194304, %5, !dbg !61
  %26 = add i32 %25, %9, !dbg !63
  %27 = sub nsw i32 150, %4, !dbg !64
  %28 = lshr i32 %26, %27, !dbg !65
  %29 = zext i32 %28 to i64, !dbg !66
  br label %32

; <label>:30:                                     ; preds = %1
  %31 = fptosi float %0 to i64, !dbg !67
  br label %36, !dbg !68

; <label>:32:                                     ; preds = %24, %19
  %33 = phi i64 [ %23, %19 ], [ %29, %24 ], !dbg !69
  %34 = sext i32 %7 to i64, !dbg !70
  %35 = mul nsw i64 %33, %34, !dbg !71
  br label %36, !dbg !72

; <label>:36:                                     ; preds = %32, %30, %13
  %37 = phi i64 [ %16, %13 ], [ %35, %32 ], [ %31, %30 ], !dbg !73
  ret i64 %37, !dbg !74
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_lround.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "lroundf", scope: !1, file: !1, line: 15, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!5, !13}
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15, !16, !19, !22, !23, !24}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 15, type: !13)
!16 = !DILocalVariable(name: "exponent_less_127", scope: !10, file: !1, line: 21, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !18, line: 77, baseType: !4)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DILocalVariable(name: "w", scope: !10, file: !1, line: 22, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !18, line: 79, baseType: !21)
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "result", scope: !10, file: !1, line: 23, type: !5)
!23 = !DILocalVariable(name: "sign", scope: !10, file: !1, line: 24, type: !17)
!24 = !DILocalVariable(name: "gf_u", scope: !25, file: !1, line: 26, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 26, column: 3)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !27, line: 347, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 343, size: 32, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !28, file: !27, line: 345, baseType: !13, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !28, file: !27, line: 346, baseType: !20, size: 32)
!32 = !DILocation(line: 15, column: 25, scope: !10)
!33 = !DILocation(line: 26, column: 3, scope: !25)
!34 = !DILocation(line: 22, column: 14, scope: !10)
!35 = !DILocation(line: 27, column: 41, scope: !10)
!36 = !DILocation(line: 27, column: 48, scope: !10)
!37 = !DILocation(line: 21, column: 13, scope: !10)
!38 = !DILocation(line: 28, column: 27, scope: !10)
!39 = !DILocation(line: 28, column: 10, scope: !10)
!40 = !DILocation(line: 24, column: 13, scope: !10)
!41 = !DILocation(line: 29, column: 5, scope: !10)
!42 = !DILocation(line: 30, column: 5, scope: !10)
!43 = !DILocation(line: 32, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !10, file: !1, line: 32, column: 7)
!45 = !DILocation(line: 32, column: 7, scope: !10)
!46 = !DILocation(line: 34, column: 29, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 34, column: 11)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 33, column: 5)
!49 = !DILocation(line: 34, column: 11, scope: !48)
!50 = !DILocation(line: 35, column: 34, scope: !47)
!51 = !DILocation(line: 35, column: 16, scope: !47)
!52 = !DILocation(line: 35, column: 9, scope: !47)
!53 = !DILocation(line: 36, column: 34, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 36, column: 16)
!55 = !DILocation(line: 36, column: 16, scope: !47)
!56 = !DILocation(line: 37, column: 18, scope: !54)
!57 = !DILocation(line: 37, column: 53, scope: !54)
!58 = !DILocation(line: 37, column: 31, scope: !54)
!59 = !DILocation(line: 23, column: 12, scope: !10)
!60 = !DILocation(line: 37, column: 9, scope: !54)
!61 = !DILocation(line: 40, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 39, column: 9)
!63 = !DILocation(line: 40, column: 13, scope: !62)
!64 = !DILocation(line: 41, column: 29, scope: !62)
!65 = !DILocation(line: 41, column: 22, scope: !62)
!66 = !DILocation(line: 41, column: 20, scope: !62)
!67 = !DILocation(line: 45, column: 14, scope: !44)
!68 = !DILocation(line: 45, column: 7, scope: !44)
!69 = !DILocation(line: 0, scope: !62)
!70 = !DILocation(line: 47, column: 10, scope: !10)
!71 = !DILocation(line: 47, column: 15, scope: !10)
!72 = !DILocation(line: 47, column: 3, scope: !10)
!73 = !DILocation(line: 0, scope: !44)
!74 = !DILocation(line: 48, column: 1, scope: !10)
