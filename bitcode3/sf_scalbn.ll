; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbn.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbn.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @scalbnf(float, i32) local_unnamed_addr #0 !dbg !18 {
  %3 = bitcast float %0 to i32, !dbg !52
  %4 = and i32 %3, 2147483647, !dbg !54
  %5 = lshr i32 %4, 23, !dbg !56
  %6 = icmp eq i32 %4, 0, !dbg !58
  br i1 %6, label %55, label %7, !dbg !60

; <label>:7:                                      ; preds = %2
  %8 = icmp ult i32 %4, 2139095040, !dbg !61
  br i1 %8, label %11, label %9, !dbg !63

; <label>:9:                                      ; preds = %7
  %10 = fadd float %0, %0, !dbg !64
  br label %55, !dbg !65

; <label>:11:                                     ; preds = %7
  %12 = icmp ult i32 %4, 8388608, !dbg !66
  br i1 %12, label %13, label %22, !dbg !67

; <label>:13:                                     ; preds = %11
  %14 = fmul float %0, 0x4180000000000000, !dbg !68
  %15 = bitcast float %14 to i32, !dbg !69
  %16 = lshr i32 %15, 23, !dbg !70
  %17 = and i32 %16, 255, !dbg !70
  %18 = add nsw i32 %17, -25, !dbg !71
  %19 = icmp slt i32 %1, -50000, !dbg !72
  br i1 %19, label %20, label %22, !dbg !74

; <label>:20:                                     ; preds = %13
  %21 = fmul float %14, 0x39B4484C00000000, !dbg !75
  br label %55, !dbg !76

; <label>:22:                                     ; preds = %13, %11
  %23 = phi i32 [ %15, %13 ], [ %3, %11 ], !dbg !77
  %24 = phi i32 [ %18, %13 ], [ %5, %11 ], !dbg !78
  %25 = phi float [ %14, %13 ], [ %0, %11 ]
  %26 = add nsw i32 %24, %1, !dbg !79
  %27 = icmp sgt i32 %26, 254, !dbg !80
  br i1 %27, label %28, label %31, !dbg !82

; <label>:28:                                     ; preds = %22
  %29 = tail call float @copysignf(float 0x46293E5940000000, float %25) #3, !dbg !83
  %30 = fmul float %29, 0x46293E5940000000, !dbg !84
  br label %55, !dbg !85

; <label>:31:                                     ; preds = %22
  %32 = icmp sgt i32 %26, 0, !dbg !86
  br i1 %32, label %33, label %38, !dbg !87

; <label>:33:                                     ; preds = %31
  %34 = and i32 %23, -2139095041, !dbg !88
  %35 = shl i32 %26, 23, !dbg !88
  %36 = or i32 %35, %34, !dbg !88
  %37 = bitcast i32 %36 to float, !dbg !88
  br label %55, !dbg !89

; <label>:38:                                     ; preds = %31
  %39 = icmp slt i32 %26, -22, !dbg !90
  br i1 %39, label %40, label %48, !dbg !92

; <label>:40:                                     ; preds = %38
  %41 = icmp sgt i32 %1, 50000, !dbg !93
  br i1 %41, label %42, label %45, !dbg !96

; <label>:42:                                     ; preds = %40
  %43 = tail call float @copysignf(float 0x46293E5940000000, float %25) #3, !dbg !97
  %44 = fmul float %43, 0x46293E5940000000, !dbg !98
  br label %55, !dbg !99

; <label>:45:                                     ; preds = %40
  %46 = tail call float @copysignf(float 0x39B4484C00000000, float %25) #3, !dbg !100
  %47 = fmul float %46, 0x39B4484C00000000, !dbg !101
  br label %55, !dbg !102

; <label>:48:                                     ; preds = %38
  %49 = and i32 %23, -2139095041, !dbg !103
  %50 = shl i32 %26, 23, !dbg !103
  %51 = add i32 %50, 209715200, !dbg !103
  %52 = or i32 %51, %49, !dbg !103
  %53 = bitcast i32 %52 to float, !dbg !103
  %54 = fmul float %53, 0x3E60000000000000, !dbg !104
  br label %55, !dbg !105

; <label>:55:                                     ; preds = %2, %48, %45, %42, %33, %28, %20, %9
  %56 = phi float [ %21, %20 ], [ %30, %28 ], [ %37, %33 ], [ %44, %42 ], [ %47, %45 ], [ %54, %48 ], [ %10, %9 ], [ %0, %2 ], !dbg !106
  ret float %56, !dbg !107
}

; Function Attrs: noredzone
declare dso_local float @copysignf(float, float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbn.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two25", scope: !0, file: !1, line: 31, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 34, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 33, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 855638016, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "twom25", scope: !0, file: !1, line: 32, type: !6, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "scalbnf", scope: !1, file: !1, line: 37, type: !19, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !7, !21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !28, !29, !32, !40, !44, !48}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 37, type: !7)
!24 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !1, line: 37, type: !21)
!25 = !DILocalVariable(name: "k", scope: !18, file: !1, line: 43, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 77, baseType: !21)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DILocalVariable(name: "ix", scope: !18, file: !1, line: 43, type: !26)
!29 = !DILocalVariable(name: "hx", scope: !18, file: !1, line: 44, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 79, baseType: !31)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DILocalVariable(name: "gf_u", scope: !33, file: !1, line: 46, type: !34)
!33 = distinct !DILexicalBlock(scope: !18, file: !1, line: 46, column: 2)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !35, line: 347, baseType: !36)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!36 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !35, line: 343, size: 32, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !36, file: !35, line: 345, baseType: !7, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !36, file: !35, line: 346, baseType: !30, size: 32)
!40 = !DILocalVariable(name: "gf_u", scope: !41, file: !1, line: 55, type: !34)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 55, column: 6)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 53, column: 41)
!43 = distinct !DILexicalBlock(scope: !18, file: !1, line: 53, column: 13)
!44 = !DILocalVariable(name: "sf_u", scope: !45, file: !1, line: 62, type: !34)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 62, column: 7)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 62, column: 6)
!47 = distinct !DILexicalBlock(scope: !18, file: !1, line: 61, column: 13)
!48 = !DILocalVariable(name: "sf_u", scope: !49, file: !1, line: 69, type: !34)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 69, column: 2)
!50 = !DILocation(line: 37, column: 23, scope: !18)
!51 = !DILocation(line: 37, column: 30, scope: !18)
!52 = !DILocation(line: 46, column: 2, scope: !33)
!53 = !DILocation(line: 43, column: 15, scope: !18)
!54 = !DILocation(line: 47, column: 9, scope: !18)
!55 = !DILocation(line: 44, column: 13, scope: !18)
!56 = !DILocation(line: 48, column: 15, scope: !18)
!57 = !DILocation(line: 43, column: 13, scope: !18)
!58 = !DILocation(line: 49, column: 6, scope: !59)
!59 = distinct !DILexicalBlock(scope: !18, file: !1, line: 49, column: 6)
!60 = !DILocation(line: 49, column: 6, scope: !18)
!61 = !DILocation(line: 51, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !18, file: !1, line: 51, column: 13)
!63 = !DILocation(line: 51, column: 13, scope: !18)
!64 = !DILocation(line: 52, column: 14, scope: !62)
!65 = !DILocation(line: 52, column: 6, scope: !62)
!66 = !DILocation(line: 53, column: 13, scope: !43)
!67 = !DILocation(line: 53, column: 13, scope: !18)
!68 = !DILocation(line: 54, column: 8, scope: !42)
!69 = !DILocation(line: 55, column: 6, scope: !41)
!70 = !DILocation(line: 56, column: 26, scope: !42)
!71 = !DILocation(line: 56, column: 32, scope: !42)
!72 = !DILocation(line: 57, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 17)
!74 = !DILocation(line: 57, column: 17, scope: !42)
!75 = !DILocation(line: 57, column: 39, scope: !73)
!76 = !DILocation(line: 57, column: 28, scope: !73)
!77 = !DILocation(line: 0, scope: !33)
!78 = !DILocation(line: 0, scope: !18)
!79 = !DILocation(line: 59, column: 14, scope: !18)
!80 = !DILocation(line: 60, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !1, line: 60, column: 13)
!82 = !DILocation(line: 60, column: 13, scope: !18)
!83 = !DILocation(line: 60, column: 46, scope: !81)
!84 = !DILocation(line: 60, column: 45, scope: !81)
!85 = !DILocation(line: 60, column: 34, scope: !81)
!86 = !DILocation(line: 61, column: 15, scope: !47)
!87 = !DILocation(line: 61, column: 13, scope: !18)
!88 = !DILocation(line: 62, column: 7, scope: !45)
!89 = !DILocation(line: 62, column: 50, scope: !46)
!90 = !DILocation(line: 63, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !18, file: !1, line: 63, column: 13)
!92 = !DILocation(line: 63, column: 13, scope: !18)
!93 = !DILocation(line: 64, column: 19, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 64, column: 17)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 63, column: 35)
!96 = !DILocation(line: 64, column: 17, scope: !95)
!97 = !DILocation(line: 65, column: 15, scope: !94)
!98 = !DILocation(line: 65, column: 14, scope: !94)
!99 = !DILocation(line: 65, column: 3, scope: !94)
!100 = !DILocation(line: 66, column: 23, scope: !94)
!101 = !DILocation(line: 66, column: 22, scope: !94)
!102 = !DILocation(line: 66, column: 11, scope: !94)
!103 = !DILocation(line: 69, column: 2, scope: !49)
!104 = !DILocation(line: 70, column: 17, scope: !18)
!105 = !DILocation(line: 70, column: 9, scope: !18)
!106 = !DILocation(line: 0, scope: !62)
!107 = !DILocation(line: 71, column: 1, scope: !18)
