; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #0 !dbg !14 {
  %2 = bitcast float %0 to i32, !dbg !44
  %3 = and i32 %2, 2147483647, !dbg !46
  %4 = icmp ult i32 %3, 2139095040, !dbg !48
  br i1 %4, label %8, label %5, !dbg !50

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !51
  %7 = fadd float %6, %0, !dbg !52
  br label %70, !dbg !53

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %3, 0, !dbg !54
  br i1 %9, label %70, label %10, !dbg !56

; <label>:10:                                     ; preds = %8
  %11 = icmp slt i32 %2, 0, !dbg !57
  br i1 %11, label %12, label %15, !dbg !59

; <label>:12:                                     ; preds = %10
  %13 = fsub float %0, %0, !dbg !60
  %14 = fdiv float %13, %13, !dbg !61
  br label %70, !dbg !62

; <label>:15:                                     ; preds = %10
  %16 = lshr i32 %2, 23
  %17 = icmp ult i32 %3, 8388608, !dbg !64
  br i1 %17, label %18, label %33, !dbg !66

; <label>:18:                                     ; preds = %15
  %19 = and i32 %2, 8388608, !dbg !68
  %20 = icmp eq i32 %19, 0, !dbg !72
  br i1 %20, label %21, label %28, !dbg !73

; <label>:21:                                     ; preds = %18, %21
  %22 = phi i32 [ %25, %21 ], [ 0, %18 ]
  %23 = phi i32 [ %24, %21 ], [ %2, %18 ]
  %24 = shl i32 %23, 1, !dbg !74
  %25 = add nuw nsw i32 %22, 1, !dbg !75
  %26 = and i32 %23, 4194304, !dbg !68
  %27 = icmp eq i32 %26, 0, !dbg !72
  br i1 %27, label %21, label %28, !dbg !73, !llvm.loop !76

; <label>:28:                                     ; preds = %21, %18
  %29 = phi i32 [ %2, %18 ], [ %24, %21 ], !dbg !78
  %30 = phi i32 [ 0, %18 ], [ %25, %21 ], !dbg !78
  %31 = add nuw nsw i32 %16, 1, !dbg !79
  %32 = sub i32 %31, %30, !dbg !80
  br label %33, !dbg !81

; <label>:33:                                     ; preds = %28, %15
  %34 = phi i32 [ %29, %28 ], [ %2, %15 ], !dbg !44
  %35 = phi i32 [ %32, %28 ], [ %16, %15 ], !dbg !82
  %36 = add nsw i32 %35, -127, !dbg !83
  %37 = and i32 %34, 8388607, !dbg !84
  %38 = or i32 %37, 8388608, !dbg !85
  %39 = and i32 %36, 1, !dbg !86
  %40 = shl nuw nsw i32 %38, %39, !dbg !88
  br label %41, !dbg !92

; <label>:41:                                     ; preds = %80, %33
  %42 = phi i32 [ %40, %33 ], [ %81, %80 ]
  %43 = phi i32 [ 16777216, %33 ], [ %84, %80 ]
  %44 = phi i32 [ 0, %33 ], [ %83, %80 ]
  %45 = phi i32 [ 0, %33 ], [ %82, %80 ]
  %46 = shl nsw i32 %42, 1, !dbg !93
  %47 = add i32 %43, %45, !dbg !95
  %48 = icmp slt i32 %46, %47, !dbg !97
  br i1 %48, label %53, label %49, !dbg !99

; <label>:49:                                     ; preds = %41
  %50 = add i32 %47, %43, !dbg !100
  %51 = sub nsw i32 %46, %47, !dbg !102
  %52 = add i32 %43, %44, !dbg !103
  br label %53, !dbg !104

; <label>:53:                                     ; preds = %41, %49
  %54 = phi i32 [ %51, %49 ], [ %46, %41 ], !dbg !82
  %55 = phi i32 [ %50, %49 ], [ %45, %41 ], !dbg !82
  %56 = phi i32 [ %52, %49 ], [ %44, %41 ], !dbg !82
  %57 = lshr i32 %43, 1, !dbg !105
  %58 = icmp eq i32 %57, 0, !dbg !106
  br i1 %58, label %59, label %72, !dbg !92, !llvm.loop !107

; <label>:59:                                     ; preds = %53
  %60 = lshr i32 %36, 1, !dbg !109
  %61 = icmp eq i32 %54, 0, !dbg !110
  %62 = and i32 %56, 1, !dbg !113
  %63 = select i1 %61, i32 0, i32 %62, !dbg !118
  %64 = add nsw i32 %63, %56, !dbg !118
  %65 = ashr i32 %64, 1, !dbg !119
  %66 = shl i32 %60, 23, !dbg !120
  %67 = add i32 %66, 1056964608, !dbg !121
  %68 = add i32 %67, %65, !dbg !122
  %69 = bitcast i32 %68 to float, !dbg !123
  br label %70, !dbg !124

; <label>:70:                                     ; preds = %8, %59, %12, %5
  %71 = phi float [ %14, %12 ], [ %69, %59 ], [ %7, %5 ], [ %0, %8 ], !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  ret float %71, !dbg !126

; <label>:72:                                     ; preds = %53
  %73 = shl nsw i32 %54, 1, !dbg !93
  %74 = add i32 %57, %55, !dbg !95
  %75 = icmp slt i32 %73, %74, !dbg !97
  br i1 %75, label %80, label %76, !dbg !99

; <label>:76:                                     ; preds = %72
  %77 = add i32 %74, %57, !dbg !100
  %78 = sub nsw i32 %73, %74, !dbg !102
  %79 = add i32 %57, %56, !dbg !103
  br label %80, !dbg !104

; <label>:80:                                     ; preds = %76, %72
  %81 = phi i32 [ %78, %76 ], [ %73, %72 ], !dbg !82
  %82 = phi i32 [ %77, %76 ], [ %55, %72 ], !dbg !82
  %83 = phi i32 [ %79, %76 ], [ %56, %72 ], !dbg !82
  %84 = lshr i32 %43, 2, !dbg !105
  br label %41
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_sqrt.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "__ieee754_sqrtf", scope: !1, file: !1, line: 25, type: !15, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7, !7}
!17 = !{!18, !19, !20, !24, !25, !28, !29, !30, !31, !32, !33, !41}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !1, line: 25, type: !7)
!19 = !DILocalVariable(name: "z", scope: !14, file: !1, line: 31, type: !7)
!20 = !DILocalVariable(name: "r", scope: !14, file: !1, line: 32, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "hx", scope: !14, file: !1, line: 32, type: !21)
!25 = !DILocalVariable(name: "ix", scope: !14, file: !1, line: 33, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !27)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "s", scope: !14, file: !1, line: 33, type: !26)
!29 = !DILocalVariable(name: "q", scope: !14, file: !1, line: 33, type: !26)
!30 = !DILocalVariable(name: "m", scope: !14, file: !1, line: 33, type: !26)
!31 = !DILocalVariable(name: "t", scope: !14, file: !1, line: 33, type: !26)
!32 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 33, type: !26)
!33 = !DILocalVariable(name: "gf_u", scope: !34, file: !1, line: 35, type: !35)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 35, column: 2)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !36, line: 347, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !36, line: 343, size: 32, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !37, file: !36, line: 345, baseType: !7, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !37, file: !36, line: 346, baseType: !21, size: 32)
!41 = !DILocalVariable(name: "sf_u", scope: !42, file: !1, line: 87, type: !35)
!42 = distinct !DILexicalBlock(scope: !14, file: !1, line: 87, column: 2)
!43 = !DILocation(line: 25, column: 30, scope: !14)
!44 = !DILocation(line: 35, column: 2, scope: !34)
!45 = !DILocation(line: 33, column: 12, scope: !14)
!46 = !DILocation(line: 36, column: 9, scope: !14)
!47 = !DILocation(line: 32, column: 15, scope: !14)
!48 = !DILocation(line: 39, column: 6, scope: !49)
!49 = distinct !DILexicalBlock(scope: !14, file: !1, line: 39, column: 5)
!50 = !DILocation(line: 39, column: 5, scope: !14)
!51 = !DILocation(line: 40, column: 14, scope: !49)
!52 = !DILocation(line: 40, column: 16, scope: !49)
!53 = !DILocation(line: 40, column: 6, scope: !49)
!54 = !DILocation(line: 43, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !14, file: !1, line: 43, column: 5)
!56 = !DILocation(line: 43, column: 5, scope: !14)
!57 = !DILocation(line: 44, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !14, file: !1, line: 44, column: 5)
!59 = !DILocation(line: 44, column: 5, scope: !14)
!60 = !DILocation(line: 44, column: 20, scope: !58)
!61 = !DILocation(line: 44, column: 23, scope: !58)
!62 = !DILocation(line: 44, column: 11, scope: !58)
!63 = !DILocation(line: 33, column: 19, scope: !14)
!64 = !DILocation(line: 48, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !14, file: !1, line: 48, column: 5)
!66 = !DILocation(line: 48, column: 5, scope: !14)
!67 = !DILocation(line: 33, column: 23, scope: !14)
!68 = !DILocation(line: 49, column: 17, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 49, column: 6)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 49, column: 6)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 48, column: 33)
!72 = !DILocation(line: 49, column: 30, scope: !69)
!73 = !DILocation(line: 49, column: 6, scope: !70)
!74 = !DILocation(line: 49, column: 41, scope: !69)
!75 = !DILocation(line: 49, column: 35, scope: !69)
!76 = distinct !{!76, !73, !77}
!77 = !DILocation(line: 49, column: 44, scope: !70)
!78 = !DILocation(line: 0, scope: !69)
!79 = !DILocation(line: 50, column: 12, scope: !71)
!80 = !DILocation(line: 50, column: 8, scope: !71)
!81 = !DILocation(line: 51, column: 2, scope: !71)
!82 = !DILocation(line: 0, scope: !14)
!83 = !DILocation(line: 52, column: 4, scope: !14)
!84 = !DILocation(line: 53, column: 10, scope: !14)
!85 = !DILocation(line: 53, column: 23, scope: !14)
!86 = !DILocation(line: 54, column: 6, scope: !87)
!87 = distinct !DILexicalBlock(scope: !14, file: !1, line: 54, column: 5)
!88 = !DILocation(line: 54, column: 5, scope: !14)
!89 = !DILocation(line: 33, column: 15, scope: !14)
!90 = !DILocation(line: 33, column: 17, scope: !14)
!91 = !DILocation(line: 32, column: 13, scope: !14)
!92 = !DILocation(line: 63, column: 2, scope: !14)
!93 = !DILocation(line: 0, scope: !94)
!94 = distinct !DILexicalBlock(scope: !14, file: !1, line: 63, column: 14)
!95 = !DILocation(line: 64, column: 11, scope: !94)
!96 = !DILocation(line: 33, column: 21, scope: !14)
!97 = !DILocation(line: 65, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 65, column: 9)
!99 = !DILocation(line: 65, column: 9, scope: !94)
!100 = !DILocation(line: 66, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 65, column: 16)
!102 = !DILocation(line: 67, column: 7, scope: !101)
!103 = !DILocation(line: 68, column: 7, scope: !101)
!104 = !DILocation(line: 69, column: 6, scope: !101)
!105 = !DILocation(line: 71, column: 7, scope: !94)
!106 = !DILocation(line: 63, column: 9, scope: !14)
!107 = distinct !{!107, !92, !108}
!108 = !DILocation(line: 72, column: 2, scope: !14)
!109 = !DILocation(line: 56, column: 4, scope: !14)
!110 = !DILocation(line: 75, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !14, file: !1, line: 75, column: 5)
!112 = !DILocation(line: 31, column: 8, scope: !14)
!113 = !DILocation(line: 82, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 79, column: 7)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 77, column: 18)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 77, column: 10)
!117 = distinct !DILexicalBlock(scope: !111, file: !1, line: 75, column: 12)
!118 = !DILocation(line: 75, column: 5, scope: !14)
!119 = !DILocation(line: 85, column: 9, scope: !14)
!120 = !DILocation(line: 86, column: 11, scope: !14)
!121 = !DILocation(line: 85, column: 13, scope: !14)
!122 = !DILocation(line: 86, column: 5, scope: !14)
!123 = !DILocation(line: 87, column: 2, scope: !42)
!124 = !DILocation(line: 88, column: 2, scope: !14)
!125 = !DILocation(line: 0, scope: !49)
!126 = !DILocation(line: 89, column: 1, scope: !14)
