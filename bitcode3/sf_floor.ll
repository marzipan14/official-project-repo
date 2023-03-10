; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @floorf(float) local_unnamed_addr #0 !dbg !13 {
  %2 = bitcast float %0 to i32, !dbg !38
  %3 = and i32 %2, 2147483647, !dbg !40
  %4 = lshr i32 %3, 23, !dbg !42
  %5 = add nsw i32 %4, -127, !dbg !43
  %6 = icmp ult i32 %3, 1258291200, !dbg !45
  br i1 %6, label %7, label %31, !dbg !47

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %3, 1065353216, !dbg !48
  br i1 %8, label %9, label %17, !dbg !51

; <label>:9:                                      ; preds = %7
  %10 = fadd float %0, 0x46293E5940000000, !dbg !52
  %11 = fcmp ogt float %10, 0.000000e+00, !dbg !55
  br i1 %11, label %12, label %35, !dbg !56

; <label>:12:                                     ; preds = %9
  %13 = icmp sgt i32 %2, -1, !dbg !57
  br i1 %13, label %35, label %14, !dbg !60

; <label>:14:                                     ; preds = %12
  %15 = icmp eq i32 %3, 0, !dbg !61
  %16 = select i1 %15, i32 %2, i32 -1082130432, !dbg !63
  br label %35, !dbg !63

; <label>:17:                                     ; preds = %7
  %18 = lshr i32 8388607, %5, !dbg !64
  %19 = and i32 %18, %2, !dbg !67
  %20 = icmp eq i32 %19, 0, !dbg !69
  br i1 %20, label %38, label %21, !dbg !70

; <label>:21:                                     ; preds = %17
  %22 = fadd float %0, 0x46293E5940000000, !dbg !71
  %23 = fcmp ogt float %22, 0.000000e+00, !dbg !73
  br i1 %23, label %24, label %35, !dbg !74

; <label>:24:                                     ; preds = %21
  %25 = icmp slt i32 %2, 0, !dbg !75
  %26 = lshr i32 8388608, %5, !dbg !78
  %27 = select i1 %25, i32 %26, i32 0, !dbg !79
  %28 = add nsw i32 %27, %2, !dbg !79
  %29 = ashr i32 -8388608, %5, !dbg !80
  %30 = and i32 %28, %29, !dbg !81
  br label %35, !dbg !82

; <label>:31:                                     ; preds = %1
  %32 = icmp ult i32 %3, 2139095040, !dbg !83
  %33 = fadd float %0, %0, !dbg !86
  %34 = select i1 %32, float %0, float %33, !dbg !87
  ret float %34, !dbg !87

; <label>:35:                                     ; preds = %14, %12, %21, %24, %9
  %36 = phi i32 [ %2, %9 ], [ %30, %24 ], [ %2, %21 ], [ 0, %12 ], [ %16, %14 ], !dbg !88
  %37 = bitcast i32 %36 to float, !dbg !89
  br label %38, !dbg !90

; <label>:38:                                     ; preds = %17, %35
  %39 = phi float [ %37, %35 ], [ %0, %17 ], !dbg !91
  ret float %39, !dbg !92
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_floor.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 28, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !{i32 2, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!13 = distinct !DISubprogram(name: "floorf", scope: !1, file: !1, line: 34, type: !14, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4}
!16 = !{!17, !18, !22, !23, !26, !27, !35}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !13, file: !1, line: 34, type: !4)
!18 = !DILocalVariable(name: "i0", scope: !13, file: !1, line: 40, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 77, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "j0", scope: !13, file: !1, line: 40, type: !19)
!23 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 41, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 79, baseType: !25)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "ix", scope: !13, file: !1, line: 41, type: !24)
!27 = !DILocalVariable(name: "gf_u", scope: !28, file: !1, line: 42, type: !29)
!28 = distinct !DILexicalBlock(scope: !13, file: !1, line: 42, column: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !30, line: 347, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !30, line: 343, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !31, file: !30, line: 345, baseType: !4, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !31, file: !30, line: 346, baseType: !24, size: 32)
!35 = !DILocalVariable(name: "sf_u", scope: !36, file: !1, line: 64, type: !29)
!36 = distinct !DILexicalBlock(scope: !13, file: !1, line: 64, column: 2)
!37 = !DILocation(line: 34, column: 21, scope: !13)
!38 = !DILocation(line: 42, column: 2, scope: !28)
!39 = !DILocation(line: 40, column: 12, scope: !13)
!40 = !DILocation(line: 43, column: 10, scope: !13)
!41 = !DILocation(line: 41, column: 15, scope: !13)
!42 = !DILocation(line: 44, column: 10, scope: !13)
!43 = !DILocation(line: 44, column: 15, scope: !13)
!44 = !DILocation(line: 40, column: 15, scope: !13)
!45 = !DILocation(line: 45, column: 7, scope: !46)
!46 = distinct !DILexicalBlock(scope: !13, file: !1, line: 45, column: 5)
!47 = !DILocation(line: 45, column: 5, scope: !13)
!48 = !DILocation(line: 46, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 46, column: 9)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 45, column: 12)
!51 = !DILocation(line: 46, column: 9, scope: !50)
!52 = !DILocation(line: 47, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 6)
!54 = distinct !DILexicalBlock(scope: !49, file: !1, line: 46, column: 15)
!55 = !DILocation(line: 47, column: 12, scope: !53)
!56 = !DILocation(line: 47, column: 6, scope: !54)
!57 = !DILocation(line: 48, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 48, column: 10)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 47, column: 25)
!60 = !DILocation(line: 48, column: 10, scope: !59)
!61 = !DILocation(line: 49, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 49, column: 15)
!63 = !DILocation(line: 49, column: 15, scope: !58)
!64 = !DILocation(line: 53, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !49, file: !1, line: 52, column: 13)
!66 = !DILocation(line: 41, column: 13, scope: !13)
!67 = !DILocation(line: 54, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 54, column: 6)
!69 = !DILocation(line: 54, column: 12, scope: !68)
!70 = !DILocation(line: 54, column: 6, scope: !65)
!71 = !DILocation(line: 55, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 55, column: 6)
!73 = !DILocation(line: 55, column: 12, scope: !72)
!74 = !DILocation(line: 55, column: 6, scope: !65)
!75 = !DILocation(line: 56, column: 12, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 56, column: 10)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 55, column: 25)
!78 = !DILocation(line: 56, column: 34, scope: !76)
!79 = !DILocation(line: 56, column: 10, scope: !77)
!80 = !DILocation(line: 57, column: 14, scope: !77)
!81 = !DILocation(line: 57, column: 10, scope: !77)
!82 = !DILocation(line: 58, column: 3, scope: !77)
!83 = !DILocation(line: 61, column: 10, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 61, column: 9)
!85 = distinct !DILexicalBlock(scope: !46, file: !1, line: 60, column: 9)
!86 = !DILocation(line: 61, column: 43, scope: !84)
!87 = !DILocation(line: 61, column: 9, scope: !85)
!88 = !DILocation(line: 0, scope: !28)
!89 = !DILocation(line: 64, column: 2, scope: !36)
!90 = !DILocation(line: 65, column: 2, scope: !13)
!91 = !DILocation(line: 0, scope: !84)
!92 = !DILocation(line: 66, column: 1, scope: !13)
