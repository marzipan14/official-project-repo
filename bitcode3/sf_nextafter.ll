; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @nextafterf(float, float) local_unnamed_addr #0 !dbg !7 {
  %3 = bitcast float %0 to i32, !dbg !47
  %4 = bitcast float %1 to i32, !dbg !49
  %5 = and i32 %3, 2147483647, !dbg !51
  %6 = icmp ugt i32 %5, 2139095040, !dbg !53
  %7 = and i32 %4, 2147483647, !dbg !55
  %8 = icmp ugt i32 %7, 2139095040, !dbg !56
  %9 = or i1 %6, %8, !dbg !57
  br i1 %9, label %10, label %12, !dbg !57

; <label>:10:                                     ; preds = %2
  %11 = fadd float %0, %1, !dbg !58
  br label %46, !dbg !59

; <label>:12:                                     ; preds = %2
  %13 = fcmp oeq float %0, %1, !dbg !60
  br i1 %13, label %46, label %14, !dbg !62

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %5, 0, !dbg !63
  br i1 %15, label %16, label %23, !dbg !64

; <label>:16:                                     ; preds = %14
  %17 = and i32 %4, -2147483648, !dbg !65
  %18 = or i32 %17, 1, !dbg !65
  %19 = bitcast i32 %18 to float, !dbg !65
  %20 = fmul float %19, %19, !dbg !66
  %21 = fcmp oeq float %20, %19, !dbg !67
  %22 = select i1 %21, float %20, float %19, !dbg !69
  br label %46, !dbg !69

; <label>:23:                                     ; preds = %14
  %24 = icmp sgt i32 %3, -1, !dbg !70
  br i1 %24, label %25, label %27, !dbg !72

; <label>:25:                                     ; preds = %23
  %26 = icmp sgt i32 %3, %4, !dbg !73
  br label %31, !dbg !76

; <label>:27:                                     ; preds = %23
  %28 = icmp sgt i32 %4, -1, !dbg !78
  %29 = icmp sgt i32 %3, %4, !dbg !81
  %30 = or i1 %28, %29, !dbg !82
  br label %31, !dbg !83

; <label>:31:                                     ; preds = %27, %25
  %32 = phi i1 [ %30, %27 ], [ %26, %25 ]
  %33 = select i1 %32, i32 -1, i32 1, !dbg !85
  %34 = add nsw i32 %33, %3, !dbg !86
  %35 = and i32 %34, 2139095040, !dbg !88
  %36 = trunc i32 %35 to i31, !dbg !89
  switch i31 %36, label %44 [
    i31 -8388608, label %37
    i31 0, label %39
  ], !dbg !89

; <label>:37:                                     ; preds = %31
  %38 = fadd float %0, %0, !dbg !90
  br label %46, !dbg !92

; <label>:39:                                     ; preds = %31
  %40 = fmul float %0, %0, !dbg !93
  %41 = fcmp une float %40, %0, !dbg !94
  br i1 %41, label %42, label %44, !dbg !95

; <label>:42:                                     ; preds = %39
  %43 = bitcast i32 %34 to float, !dbg !96
  br label %46, !dbg !97

; <label>:44:                                     ; preds = %31, %39
  %45 = bitcast i32 %34 to float, !dbg !98
  br label %46, !dbg !99

; <label>:46:                                     ; preds = %16, %12, %44, %42, %37, %10
  %47 = phi float [ %11, %10 ], [ %38, %37 ], [ %43, %42 ], [ %45, %44 ], [ %0, %12 ], [ %22, %16 ], !dbg !100
  ret float %47, !dbg !101
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_nextafter.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "nextafterf", scope: !1, file: !1, line: 19, type: !8, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10}
!10 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!11 = !{!12, !13, !14, !18, !19, !20, !21, !31, !33, !37, !43}
!12 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 19, type: !10)
!13 = !DILocalVariable(name: "y", arg: 2, scope: !7, file: !1, line: 19, type: !10)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 25, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "hy", scope: !7, file: !1, line: 25, type: !15)
!19 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 25, type: !15)
!20 = !DILocalVariable(name: "iy", scope: !7, file: !1, line: 25, type: !15)
!21 = !DILocalVariable(name: "gf_u", scope: !22, file: !1, line: 27, type: !23)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 2)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !24, line: 347, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 343, size: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !25, file: !24, line: 345, baseType: !10, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !25, file: !24, line: 346, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !30)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "gf_u", scope: !32, file: !1, line: 28, type: !23)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 2)
!33 = !DILocalVariable(name: "sf_u", scope: !34, file: !1, line: 37, type: !23)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 37, column: 6)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 36, column: 28)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 36, column: 5)
!37 = !DILocalVariable(name: "sf_u", scope: !38, file: !1, line: 59, type: !23)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 59, column: 10)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 58, column: 15)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 58, column: 9)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 56, column: 20)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 5)
!43 = !DILocalVariable(name: "sf_u", scope: !44, file: !1, line: 63, type: !23)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 2)
!45 = !DILocation(line: 19, column: 25, scope: !7)
!46 = !DILocation(line: 19, column: 34, scope: !7)
!47 = !DILocation(line: 27, column: 2, scope: !22)
!48 = !DILocation(line: 25, column: 12, scope: !7)
!49 = !DILocation(line: 28, column: 2, scope: !32)
!50 = !DILocation(line: 25, column: 15, scope: !7)
!51 = !DILocation(line: 29, column: 9, scope: !7)
!52 = !DILocation(line: 25, column: 18, scope: !7)
!53 = !DILocation(line: 32, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 5)
!55 = !DILocation(line: 30, column: 9, scope: !7)
!56 = !DILocation(line: 33, column: 5, scope: !54)
!57 = !DILocation(line: 32, column: 26, scope: !54)
!58 = !DILocation(line: 34, column: 13, scope: !54)
!59 = !DILocation(line: 34, column: 5, scope: !54)
!60 = !DILocation(line: 35, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 5)
!62 = !DILocation(line: 35, column: 5, scope: !7)
!63 = !DILocation(line: 36, column: 5, scope: !36)
!64 = !DILocation(line: 36, column: 5, scope: !7)
!65 = !DILocation(line: 37, column: 6, scope: !34)
!66 = !DILocation(line: 38, column: 11, scope: !35)
!67 = !DILocation(line: 39, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !35, file: !1, line: 39, column: 9)
!69 = !DILocation(line: 39, column: 15, scope: !68)
!70 = !DILocation(line: 41, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !7, file: !1, line: 41, column: 5)
!72 = !DILocation(line: 41, column: 5, scope: !7)
!73 = !DILocation(line: 42, column: 11, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 42, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 41, column: 12)
!76 = !DILocation(line: 44, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 42, column: 16)
!78 = !DILocation(line: 48, column: 11, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 48, column: 9)
!80 = distinct !DILexicalBlock(scope: !71, file: !1, line: 47, column: 9)
!81 = !DILocation(line: 48, column: 18, scope: !79)
!82 = !DILocation(line: 48, column: 14, scope: !79)
!83 = !DILocation(line: 50, column: 6, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 48, column: 22)
!85 = !DILocation(line: 0, scope: !77)
!86 = !DILocation(line: 0, scope: !87)
!87 = distinct !DILexicalBlock(scope: !74, file: !1, line: 44, column: 13)
!88 = !DILocation(line: 54, column: 9, scope: !7)
!89 = !DILocation(line: 55, column: 5, scope: !7)
!90 = !DILocation(line: 55, column: 31, scope: !91)
!91 = distinct !DILexicalBlock(scope: !7, file: !1, line: 55, column: 5)
!92 = !DILocation(line: 55, column: 23, scope: !91)
!93 = !DILocation(line: 57, column: 11, scope: !41)
!94 = !DILocation(line: 58, column: 10, scope: !40)
!95 = !DILocation(line: 58, column: 9, scope: !41)
!96 = !DILocation(line: 59, column: 10, scope: !38)
!97 = !DILocation(line: 60, column: 3, scope: !39)
!98 = !DILocation(line: 63, column: 2, scope: !44)
!99 = !DILocation(line: 64, column: 2, scope: !7)
!100 = !DILocation(line: 0, scope: !7)
!101 = !DILocation(line: 65, column: 1, scope: !7)
