; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_rint.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_rint.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@TWO23 = internal unnamed_addr constant [2 x float] [float 0x4160000000000000, float 0xC160000000000000], align 4, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local float @rintf(float) local_unnamed_addr #0 !dbg !15 {
  %2 = alloca float, align 4
  %3 = bitcast float* %2 to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3), !dbg !55
  %4 = bitcast float %0 to i32, !dbg !57
  %5 = lshr i32 %4, 31, !dbg !59
  %6 = and i32 %4, 2147483647, !dbg !61
  %7 = lshr i32 %6, 23, !dbg !63
  %8 = add nsw i32 %7, -127, !dbg !64
  %9 = icmp ult i32 %6, 1258291200, !dbg !66
  br i1 %9, label %10, label %46, !dbg !67

; <label>:10:                                     ; preds = %1
  %11 = icmp eq i32 %6, 0, !dbg !68
  br i1 %11, label %59, label %12, !dbg !70

; <label>:12:                                     ; preds = %10
  %13 = icmp ult i32 %6, 1065353216, !dbg !71
  br i1 %13, label %14, label %33, !dbg !72

; <label>:14:                                     ; preds = %12
  %15 = and i32 %4, 8388607, !dbg !73
  %16 = and i32 %4, -1048576, !dbg !75
  %17 = sub nsw i32 0, %15, !dbg !76
  %18 = lshr i32 %17, 9, !dbg !77
  %19 = and i32 %18, 4194304, !dbg !78
  %20 = or i32 %19, %16, !dbg !79
  %21 = bitcast i32 %20 to float, !dbg !80
  %22 = zext i32 %5 to i64, !dbg !81
  %23 = getelementptr inbounds [2 x float], [2 x float]* @TWO23, i64 0, i64 %22, !dbg !81
  %24 = load float, float* %23, align 4, !dbg !81, !tbaa !82
  %25 = fadd float %24, %21, !dbg !86
  store volatile float %25, float* %2, align 4, !dbg !87, !tbaa !82
  %26 = load volatile float, float* %2, align 4, !dbg !88, !tbaa !82
  %27 = fsub float %26, %24, !dbg !89
  %28 = bitcast float %27 to i32, !dbg !91
  %29 = and i32 %28, 2147483647, !dbg !92
  %30 = and i32 %4, -2147483648, !dbg !92
  %31 = or i32 %29, %30, !dbg !92
  %32 = bitcast i32 %31 to float, !dbg !92
  br label %59, !dbg !93

; <label>:33:                                     ; preds = %12
  %34 = lshr i32 8388607, %8, !dbg !94
  %35 = and i32 %34, %4, !dbg !97
  %36 = icmp eq i32 %35, 0, !dbg !99
  br i1 %36, label %59, label %37, !dbg !100

; <label>:37:                                     ; preds = %33
  %38 = lshr i32 %34, 1, !dbg !101
  %39 = and i32 %38, %4, !dbg !102
  %40 = icmp eq i32 %39, 0, !dbg !104
  br i1 %40, label %50, label %41, !dbg !105

; <label>:41:                                     ; preds = %37
  %42 = xor i32 %38, -1, !dbg !106
  %43 = and i32 %42, %4, !dbg !107
  %44 = lshr i32 2097152, %8, !dbg !108
  %45 = or i32 %43, %44, !dbg !109
  br label %50, !dbg !110

; <label>:46:                                     ; preds = %1
  %47 = icmp ult i32 %6, 2139095040, !dbg !111
  %48 = fadd float %0, %0, !dbg !114
  %49 = select i1 %47, float %0, float %48, !dbg !115
  br label %59, !dbg !115

; <label>:50:                                     ; preds = %37, %41
  %51 = phi i32 [ %45, %41 ], [ %4, %37 ], !dbg !116
  %52 = bitcast i32 %51 to float, !dbg !117
  %53 = zext i32 %5 to i64, !dbg !118
  %54 = getelementptr inbounds [2 x float], [2 x float]* @TWO23, i64 0, i64 %53, !dbg !118
  %55 = load float, float* %54, align 4, !dbg !118, !tbaa !82
  %56 = fadd float %55, %52, !dbg !119
  store volatile float %56, float* %2, align 4, !dbg !120, !tbaa !82
  %57 = load volatile float, float* %2, align 4, !dbg !121, !tbaa !82
  %58 = fsub float %57, %55, !dbg !122
  br label %59, !dbg !123

; <label>:59:                                     ; preds = %46, %33, %10, %50, %14
  %60 = phi float [ %32, %14 ], [ %58, %50 ], [ %0, %10 ], [ %0, %33 ], [ %49, %46 ], !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3), !dbg !125
  ret float %60, !dbg !125
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWO23", scope: !2, file: !3, line: 23, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_rint.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !9)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!9 = !{!10}
!10 = !DISubrange(count: 2)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "rintf", scope: !3, file: !3, line: 29, type: !16, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!8, !8}
!18 = !{!19, !20, !24, !25, !26, !29, !30, !31, !32, !34, !42, !48, !50, !52}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !3, line: 29, type: !8)
!20 = !DILocalVariable(name: "i0", scope: !15, file: !3, line: 35, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "j0", scope: !15, file: !3, line: 35, type: !21)
!25 = !DILocalVariable(name: "sx", scope: !15, file: !3, line: 35, type: !21)
!26 = !DILocalVariable(name: "i", scope: !15, file: !3, line: 36, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "i1", scope: !15, file: !3, line: 36, type: !27)
!30 = !DILocalVariable(name: "ix", scope: !15, file: !3, line: 36, type: !27)
!31 = !DILocalVariable(name: "t", scope: !15, file: !3, line: 37, type: !8)
!32 = !DILocalVariable(name: "w", scope: !15, file: !3, line: 38, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!34 = !DILocalVariable(name: "gf_u", scope: !35, file: !3, line: 39, type: !36)
!35 = distinct !DILexicalBlock(scope: !15, file: !3, line: 39, column: 2)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !37, line: 347, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !37, line: 343, size: 32, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !38, file: !37, line: 345, baseType: !8, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !38, file: !37, line: 346, baseType: !27, size: 32)
!42 = !DILocalVariable(name: "sf_u", scope: !43, file: !3, line: 50, type: !36)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 50, column: 3)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 46, column: 15)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 46, column: 9)
!46 = distinct !DILexicalBlock(scope: !47, file: !3, line: 43, column: 12)
!47 = distinct !DILexicalBlock(scope: !15, file: !3, line: 43, column: 5)
!48 = !DILocalVariable(name: "gf_u", scope: !49, file: !3, line: 53, type: !36)
!49 = distinct !DILexicalBlock(scope: !44, file: !3, line: 53, column: 3)
!50 = !DILocalVariable(name: "sf_u", scope: !51, file: !3, line: 54, type: !36)
!51 = distinct !DILexicalBlock(scope: !44, file: !3, line: 54, column: 3)
!52 = !DILocalVariable(name: "sf_u", scope: !53, file: !3, line: 67, type: !36)
!53 = distinct !DILexicalBlock(scope: !15, file: !3, line: 67, column: 2)
!54 = !DILocation(line: 29, column: 20, scope: !15)
!55 = !DILocation(line: 38, column: 2, scope: !15)
!56 = !DILocation(line: 38, column: 17, scope: !15)
!57 = !DILocation(line: 39, column: 2, scope: !35)
!58 = !DILocation(line: 35, column: 12, scope: !15)
!59 = !DILocation(line: 40, column: 10, scope: !15)
!60 = !DILocation(line: 35, column: 18, scope: !15)
!61 = !DILocation(line: 41, column: 10, scope: !15)
!62 = !DILocation(line: 36, column: 18, scope: !15)
!63 = !DILocation(line: 42, column: 10, scope: !15)
!64 = !DILocation(line: 42, column: 15, scope: !15)
!65 = !DILocation(line: 35, column: 15, scope: !15)
!66 = !DILocation(line: 43, column: 7, scope: !47)
!67 = !DILocation(line: 43, column: 5, scope: !15)
!68 = !DILocation(line: 44, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !46, file: !3, line: 44, column: 9)
!70 = !DILocation(line: 44, column: 9, scope: !46)
!71 = !DILocation(line: 46, column: 11, scope: !45)
!72 = !DILocation(line: 46, column: 9, scope: !46)
!73 = !DILocation(line: 47, column: 11, scope: !44)
!74 = !DILocation(line: 36, column: 15, scope: !15)
!75 = !DILocation(line: 48, column: 6, scope: !44)
!76 = !DILocation(line: 49, column: 14, scope: !44)
!77 = !DILocation(line: 49, column: 18, scope: !44)
!78 = !DILocation(line: 49, column: 22, scope: !44)
!79 = !DILocation(line: 49, column: 6, scope: !44)
!80 = !DILocation(line: 50, column: 3, scope: !43)
!81 = !DILocation(line: 51, column: 14, scope: !44)
!82 = !{!83, !83, i64 0}
!83 = !{!"float", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DILocation(line: 51, column: 23, scope: !44)
!87 = !DILocation(line: 51, column: 12, scope: !44)
!88 = !DILocation(line: 52, column: 15, scope: !44)
!89 = !DILocation(line: 52, column: 16, scope: !44)
!90 = !DILocation(line: 37, column: 8, scope: !15)
!91 = !DILocation(line: 53, column: 3, scope: !49)
!92 = !DILocation(line: 54, column: 3, scope: !51)
!93 = !DILocation(line: 55, column: 10, scope: !44)
!94 = !DILocation(line: 57, column: 19, scope: !95)
!95 = distinct !DILexicalBlock(scope: !45, file: !3, line: 56, column: 13)
!96 = !DILocation(line: 36, column: 13, scope: !15)
!97 = !DILocation(line: 58, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !3, line: 58, column: 6)
!99 = !DILocation(line: 58, column: 12, scope: !98)
!100 = !DILocation(line: 58, column: 6, scope: !95)
!101 = !DILocation(line: 59, column: 4, scope: !95)
!102 = !DILocation(line: 60, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !3, line: 60, column: 6)
!104 = !DILocation(line: 60, column: 12, scope: !103)
!105 = !DILocation(line: 60, column: 6, scope: !95)
!106 = !DILocation(line: 60, column: 27, scope: !103)
!107 = !DILocation(line: 60, column: 25, scope: !103)
!108 = !DILocation(line: 60, column: 43, scope: !103)
!109 = !DILocation(line: 60, column: 31, scope: !103)
!110 = !DILocation(line: 60, column: 17, scope: !103)
!111 = !DILocation(line: 63, column: 10, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 63, column: 9)
!113 = distinct !DILexicalBlock(scope: !47, file: !3, line: 62, column: 9)
!114 = !DILocation(line: 63, column: 43, scope: !112)
!115 = !DILocation(line: 63, column: 9, scope: !113)
!116 = !DILocation(line: 0, scope: !35)
!117 = !DILocation(line: 67, column: 2, scope: !53)
!118 = !DILocation(line: 68, column: 6, scope: !15)
!119 = !DILocation(line: 68, column: 15, scope: !15)
!120 = !DILocation(line: 68, column: 4, scope: !15)
!121 = !DILocation(line: 69, column: 9, scope: !15)
!122 = !DILocation(line: 69, column: 10, scope: !15)
!123 = !DILocation(line: 69, column: 2, scope: !15)
!124 = !DILocation(line: 0, scope: !112)
!125 = !DILocation(line: 70, column: 1, scope: !15)
