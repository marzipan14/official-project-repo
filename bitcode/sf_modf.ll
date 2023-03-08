; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_modf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_modf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @modff(float, float* nocapture) local_unnamed_addr #0 !dbg !12 {
  %3 = bitcast float %0 to i32, !dbg !60
  %4 = lshr i32 %3, 23, !dbg !62
  %5 = and i32 %4, 255, !dbg !63
  %6 = add nsw i32 %5, -127, !dbg !64
  %7 = icmp ult i32 %5, 150, !dbg !66
  br i1 %7, label %8, label %26, !dbg !67

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i32 %5, 127, !dbg !68
  br i1 %9, label %10, label %13, !dbg !69

; <label>:10:                                     ; preds = %8
  %11 = and i32 %3, -2147483648, !dbg !70
  %12 = bitcast float* %1 to i32*, !dbg !70
  store i32 %11, i32* %12, align 4, !dbg !70, !tbaa !71
  br label %29, !dbg !75

; <label>:13:                                     ; preds = %8
  %14 = lshr i32 8388607, %6, !dbg !76
  %15 = and i32 %14, %3, !dbg !78
  %16 = icmp eq i32 %15, 0, !dbg !79
  br i1 %16, label %17, label %20, !dbg !80

; <label>:17:                                     ; preds = %13
  store float %0, float* %1, align 4, !dbg !81, !tbaa !71
  %18 = and i32 %3, -2147483648, !dbg !83
  %19 = bitcast i32 %18 to float, !dbg !83
  br label %29

; <label>:20:                                     ; preds = %13
  %21 = ashr i32 -8388608, %6, !dbg !84
  %22 = and i32 %21, %3, !dbg !84
  %23 = bitcast i32 %22 to float, !dbg !84
  %24 = bitcast float* %1 to i32*, !dbg !84
  store i32 %22, i32* %24, align 4, !dbg !84, !tbaa !71
  %25 = fsub float %0, %23, !dbg !85
  br label %29, !dbg !86

; <label>:26:                                     ; preds = %2
  store float %0, float* %1, align 4, !dbg !87, !tbaa !71
  %27 = and i32 %3, -2147483648, !dbg !89
  %28 = bitcast i32 %27 to float, !dbg !89
  br label %29

; <label>:29:                                     ; preds = %26, %20, %17, %10
  %30 = phi float [ %0, %10 ], [ %19, %17 ], [ %25, %20 ], [ %28, %26 ], !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  ret float %30, !dbg !91
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_modf.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "modff", scope: !1, file: !1, line: 25, type: !13, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!16 = !{!17, !18, !19, !23, !24, !27, !35, !41, !45, !47, !49, !52, !54, !56}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 25, type: !7)
!18 = !DILocalVariable(name: "iptr", arg: 2, scope: !12, file: !1, line: 25, type: !15)
!19 = !DILocalVariable(name: "i0", scope: !12, file: !1, line: 31, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !21, line: 77, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DILocalVariable(name: "j0", scope: !12, file: !1, line: 31, type: !20)
!24 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 32, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !21, line: 79, baseType: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "gf_u", scope: !28, file: !1, line: 33, type: !29)
!28 = distinct !DILexicalBlock(scope: !12, file: !1, line: 33, column: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !30, line: 347, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !30, line: 343, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !31, file: !30, line: 345, baseType: !7, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !31, file: !30, line: 346, baseType: !25, size: 32)
!35 = !DILocalVariable(name: "sf_u", scope: !36, file: !1, line: 37, type: !29)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 37, column: 10)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 36, column: 15)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 36, column: 9)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 35, column: 12)
!40 = distinct !DILexicalBlock(scope: !12, file: !1, line: 35, column: 5)
!41 = !DILocalVariable(name: "ix", scope: !42, file: !1, line: 42, type: !25)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 41, column: 17)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 41, column: 6)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 39, column: 13)
!45 = !DILocalVariable(name: "gf_u", scope: !46, file: !1, line: 44, type: !29)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 44, column: 7)
!47 = !DILocalVariable(name: "sf_u", scope: !48, file: !1, line: 45, type: !29)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 45, column: 7)
!49 = !DILocalVariable(name: "sf_u", scope: !50, file: !1, line: 48, type: !29)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 48, column: 7)
!51 = distinct !DILexicalBlock(scope: !43, file: !1, line: 47, column: 10)
!52 = !DILocalVariable(name: "ix", scope: !53, file: !1, line: 53, type: !25)
!53 = distinct !DILexicalBlock(scope: !40, file: !1, line: 52, column: 9)
!54 = !DILocalVariable(name: "gf_u", scope: !55, file: !1, line: 55, type: !29)
!55 = distinct !DILexicalBlock(scope: !53, file: !1, line: 55, column: 6)
!56 = !DILocalVariable(name: "sf_u", scope: !57, file: !1, line: 56, type: !29)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 56, column: 6)
!58 = !DILocation(line: 25, column: 20, scope: !12)
!59 = !DILocation(line: 25, column: 30, scope: !12)
!60 = !DILocation(line: 33, column: 2, scope: !28)
!61 = !DILocation(line: 31, column: 12, scope: !12)
!62 = !DILocation(line: 34, column: 11, scope: !12)
!63 = !DILocation(line: 34, column: 16, scope: !12)
!64 = !DILocation(line: 34, column: 22, scope: !12)
!65 = !DILocation(line: 31, column: 15, scope: !12)
!66 = !DILocation(line: 35, column: 7, scope: !40)
!67 = !DILocation(line: 35, column: 5, scope: !12)
!68 = !DILocation(line: 36, column: 11, scope: !38)
!69 = !DILocation(line: 36, column: 9, scope: !39)
!70 = !DILocation(line: 37, column: 10, scope: !36)
!71 = !{!72, !72, i64 0}
!72 = !{!"float", !73, i64 0}
!73 = !{!"omnipotent char", !74, i64 0}
!74 = !{!"Simple C/C++ TBAA"}
!75 = !DILocation(line: 38, column: 3, scope: !37)
!76 = !DILocation(line: 40, column: 19, scope: !44)
!77 = !DILocation(line: 32, column: 13, scope: !12)
!78 = !DILocation(line: 41, column: 9, scope: !43)
!79 = !DILocation(line: 41, column: 12, scope: !43)
!80 = !DILocation(line: 41, column: 6, scope: !44)
!81 = !DILocation(line: 43, column: 13, scope: !42)
!82 = !DILocation(line: 42, column: 18, scope: !42)
!83 = !DILocation(line: 45, column: 7, scope: !48)
!84 = !DILocation(line: 48, column: 7, scope: !50)
!85 = !DILocation(line: 49, column: 16, scope: !51)
!86 = !DILocation(line: 49, column: 7, scope: !51)
!87 = !DILocation(line: 54, column: 12, scope: !53)
!88 = !DILocation(line: 53, column: 17, scope: !53)
!89 = !DILocation(line: 56, column: 6, scope: !57)
!90 = !DILocation(line: 0, scope: !53)
!91 = !DILocation(line: 59, column: 1, scope: !12)
