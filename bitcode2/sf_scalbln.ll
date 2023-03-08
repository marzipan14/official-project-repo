; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbln.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbln.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @scalblnf(float, i64) local_unnamed_addr #0 !dbg !18 {
  %3 = bitcast float %0 to i32, !dbg !52
  %4 = lshr i32 %3, 23, !dbg !54
  %5 = and i32 %4, 255, !dbg !54
  %6 = icmp eq i32 %5, 0, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %6, label %7, label %16, !dbg !57

; <label>:7:                                      ; preds = %2
  %8 = and i32 %3, 2147483647, !dbg !58
  %9 = icmp eq i32 %8, 0, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %9, label %56, label %10, !dbg !61

; <label>:10:                                     ; preds = %7
  %11 = fmul float %0, 0x4180000000000000, !dbg !62
  %12 = bitcast float %11 to i32, !dbg !63
  %13 = lshr i32 %12, 23, !dbg !64
  %14 = and i32 %13, 255, !dbg !64
  %15 = add nsw i32 %14, -25, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br label %20, !dbg !67

; <label>:16:                                     ; preds = %2
  %17 = icmp eq i32 %5, 255, !dbg !68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %17, label %18, label %20, !dbg !67

; <label>:18:                                     ; preds = %16
  %19 = fadd float %0, %0, !dbg !70
  br label %56, !dbg !71

; <label>:20:                                     ; preds = %10, %16
  %21 = phi float [ %11, %10 ], [ %0, %16 ]
  %22 = phi i32 [ %15, %10 ], [ %5, %16 ]
  %23 = phi i32 [ %12, %10 ], [ %3, %16 ]
  %24 = trunc i64 %1 to i32, !dbg !72
  %25 = add i32 %22, %24, !dbg !72
  %26 = icmp sgt i64 %1, 50000, !dbg !73
  %27 = icmp sgt i32 %25, 254, !dbg !75
  %28 = or i1 %26, %27, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %28, label %29, label %32, !dbg !76

; <label>:29:                                     ; preds = %20
  %30 = tail call float @copysignf(float 0x46293E5940000000, float %21) #3, !dbg !77
  %31 = fmul float %30, 0x46293E5940000000, !dbg !78
  br label %56, !dbg !79

; <label>:32:                                     ; preds = %20
  %33 = icmp slt i64 %1, -50000, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %33, label %34, label %37, !dbg !82

; <label>:34:                                     ; preds = %32
  %35 = tail call float @copysignf(float 0x39B4484C00000000, float %21) #3, !dbg !83
  %36 = fmul float %35, 0x39B4484C00000000, !dbg !84
  br label %56, !dbg !85

; <label>:37:                                     ; preds = %32
  %38 = icmp sgt i32 %25, 0, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !87
  br i1 %38, label %39, label %44, !dbg !87

; <label>:39:                                     ; preds = %37
  %40 = and i32 %23, -2139095041, !dbg !88
  %41 = shl i32 %25, 23, !dbg !88
  %42 = or i32 %40, %41, !dbg !88
  %43 = bitcast i32 %42 to float, !dbg !88
  br label %56, !dbg !89

; <label>:44:                                     ; preds = %37
  %45 = icmp slt i32 %25, -24, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %45, label %46, label %49, !dbg !92

; <label>:46:                                     ; preds = %44
  %47 = tail call float @copysignf(float 0x39B4484C00000000, float %21) #3, !dbg !93
  %48 = fmul float %47, 0x39B4484C00000000, !dbg !94
  br label %56, !dbg !95

; <label>:49:                                     ; preds = %44
  %50 = and i32 %23, -2139095041, !dbg !96
  %51 = shl i32 %25, 23, !dbg !96
  %52 = add i32 %51, 209715200, !dbg !96
  %53 = or i32 %52, %50, !dbg !96
  %54 = bitcast i32 %53 to float, !dbg !96
  %55 = fmul float %54, 0x3E60000000000000, !dbg !97
  br label %56, !dbg !98

; <label>:56:                                     ; preds = %7, %49, %46, %39, %34, %29, %18
  %57 = phi float [ %19, %18 ], [ %31, %29 ], [ %36, %34 ], [ %43, %39 ], [ %48, %46 ], [ %55, %49 ], [ %0, %7 ], !dbg !99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  ret float %57, !dbg !101
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
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_scalbln.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10, !12}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two25", scope: !0, file: !1, line: 23, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 25, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 26, type: !6, isLocal: true, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression(DW_OP_constu, 855638016, DW_OP_stack_value))
!13 = distinct !DIGlobalVariable(name: "twom25", scope: !0, file: !1, line: 24, type: !6, isLocal: true, isDefinition: true)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "scalblnf", scope: !1, file: !1, line: 29, type: !19, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!7, !7, !21}
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !29, !30, !40, !44, !48}
!23 = !DILocalVariable(name: "x", arg: 1, scope: !18, file: !1, line: 29, type: !7)
!24 = !DILocalVariable(name: "n", arg: 2, scope: !18, file: !1, line: 29, type: !21)
!25 = !DILocalVariable(name: "k", scope: !18, file: !1, line: 35, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !27, line: 77, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DILocalVariable(name: "ix", scope: !18, file: !1, line: 35, type: !26)
!30 = !DILocalVariable(name: "gf_u", scope: !31, file: !1, line: 36, type: !32)
!31 = distinct !DILexicalBlock(scope: !18, file: !1, line: 36, column: 2)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !33, line: 347, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 343, size: 32, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !33, line: 345, baseType: !7, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !34, file: !33, line: 346, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !27, line: 79, baseType: !39)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DILocalVariable(name: "gf_u", scope: !41, file: !1, line: 41, type: !32)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 41, column: 6)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 38, column: 19)
!43 = distinct !DILexicalBlock(scope: !18, file: !1, line: 38, column: 13)
!44 = !DILocalVariable(name: "sf_u", scope: !45, file: !1, line: 51, type: !32)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 51, column: 7)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 51, column: 6)
!47 = distinct !DILexicalBlock(scope: !18, file: !1, line: 50, column: 13)
!48 = !DILocalVariable(name: "sf_u", scope: !49, file: !1, line: 55, type: !32)
!49 = distinct !DILexicalBlock(scope: !18, file: !1, line: 55, column: 2)
!50 = !DILocation(line: 29, column: 24, scope: !18)
!51 = !DILocation(line: 29, column: 36, scope: !18)
!52 = !DILocation(line: 36, column: 2, scope: !31)
!53 = !DILocation(line: 35, column: 14, scope: !18)
!54 = !DILocation(line: 37, column: 28, scope: !18)
!55 = !DILocation(line: 35, column: 12, scope: !18)
!56 = !DILocation(line: 38, column: 14, scope: !43)
!57 = !DILocation(line: 38, column: 13, scope: !18)
!58 = !DILocation(line: 39, column: 20, scope: !59)
!59 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 17)
!60 = !DILocation(line: 39, column: 32, scope: !59)
!61 = !DILocation(line: 39, column: 17, scope: !42)
!62 = !DILocation(line: 40, column: 8, scope: !42)
!63 = !DILocation(line: 41, column: 6, scope: !41)
!64 = !DILocation(line: 42, column: 26, scope: !42)
!65 = !DILocation(line: 42, column: 32, scope: !42)
!66 = !DILocation(line: 43, column: 6, scope: !42)
!67 = !DILocation(line: 44, column: 13, scope: !18)
!68 = !DILocation(line: 44, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !18, file: !1, line: 44, column: 13)
!70 = !DILocation(line: 44, column: 30, scope: !69)
!71 = !DILocation(line: 44, column: 22, scope: !69)
!72 = !DILocation(line: 45, column: 13, scope: !18)
!73 = !DILocation(line: 46, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !18, file: !1, line: 46, column: 13)
!75 = !DILocation(line: 46, column: 27, scope: !74)
!76 = !DILocation(line: 46, column: 22, scope: !74)
!77 = !DILocation(line: 47, column: 16, scope: !74)
!78 = !DILocation(line: 47, column: 15, scope: !74)
!79 = !DILocation(line: 47, column: 4, scope: !74)
!80 = !DILocation(line: 48, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !1, line: 48, column: 6)
!82 = !DILocation(line: 48, column: 6, scope: !18)
!83 = !DILocation(line: 49, column: 16, scope: !81)
!84 = !DILocation(line: 49, column: 15, scope: !81)
!85 = !DILocation(line: 49, column: 4, scope: !81)
!86 = !DILocation(line: 50, column: 15, scope: !47)
!87 = !DILocation(line: 50, column: 13, scope: !18)
!88 = !DILocation(line: 51, column: 7, scope: !45)
!89 = !DILocation(line: 51, column: 50, scope: !46)
!90 = !DILocation(line: 52, column: 15, scope: !91)
!91 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 13)
!92 = !DILocation(line: 52, column: 13, scope: !18)
!93 = !DILocation(line: 53, column: 18, scope: !91)
!94 = !DILocation(line: 53, column: 17, scope: !91)
!95 = !DILocation(line: 53, column: 6, scope: !91)
!96 = !DILocation(line: 55, column: 2, scope: !49)
!97 = !DILocation(line: 56, column: 17, scope: !18)
!98 = !DILocation(line: 56, column: 9, scope: !18)
!99 = !DILocation(line: 0, scope: !18)
!100 = !DILocation(line: 0, scope: !59)
!101 = !DILocation(line: 57, column: 1, scope: !18)
