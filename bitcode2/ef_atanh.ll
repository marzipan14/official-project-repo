; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_atanhf(float) local_unnamed_addr #0 !dbg !17 {
  %2 = bitcast float %0 to i32, !dbg !41
  %3 = and i32 %2, 2147483647, !dbg !43
  %4 = icmp ugt i32 %3, 1065353216, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  br i1 %4, label %5, label %8, !dbg !47

; <label>:5:                                      ; preds = %1
  %6 = fsub float %0, %0, !dbg !48
  %7 = fdiv float %6, %6, !dbg !49
  br label %41, !dbg !50

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %3, 1065353216, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br i1 %9, label %10, label %12, !dbg !53

; <label>:10:                                     ; preds = %8
  %11 = fdiv float %0, 0.000000e+00, !dbg !54
  br label %41, !dbg !55

; <label>:12:                                     ; preds = %8
  %13 = icmp ult i32 %3, 830472192, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %13, label %14, label %20, !dbg !58

; <label>:14:                                     ; preds = %12
  %15 = fadd float %0, 0x46293E5940000000, !dbg !59
  %16 = fcmp ogt float %15, 0.000000e+00, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  br i1 %16, label %41, label %17, !dbg !61

; <label>:17:                                     ; preds = %14
  %18 = bitcast i32 %3 to float, !dbg !62
  %19 = fadd float %18, %18, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br label %24, !dbg !65

; <label>:20:                                     ; preds = %12
  %21 = bitcast i32 %3 to float, !dbg !62
  %22 = icmp ult i32 %3, 1056964608, !dbg !66
  %23 = fadd float %21, %21, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %22, label %24, label %31, !dbg !65

; <label>:24:                                     ; preds = %17, %20
  %25 = phi float [ %19, %17 ], [ %23, %20 ]
  %26 = phi float [ %18, %17 ], [ %21, %20 ]
  %27 = fmul float %25, %26, !dbg !68
  %28 = fsub float 1.000000e+00, %26, !dbg !70
  %29 = fdiv float %27, %28, !dbg !71
  %30 = fadd float %25, %29, !dbg !72
  br label %34, !dbg !73

; <label>:31:                                     ; preds = %20
  %32 = fsub float 1.000000e+00, %21, !dbg !74
  %33 = fdiv float %23, %32, !dbg !75
  br label %34

; <label>:34:                                     ; preds = %31, %24
  %35 = phi float [ %33, %31 ], [ %30, %24 ]
  %36 = tail call float @log1pf(float %35) #3, !dbg !76
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = fmul float %36, 5.000000e-01, !dbg !63
  %38 = icmp sgt i32 %2, -1, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  %39 = fsub float -0.000000e+00, %37, !dbg !80
  %40 = select i1 %38, float %37, float %39, !dbg !79
  br label %41, !dbg !79

; <label>:41:                                     ; preds = %34, %14, %10, %5
  %42 = phi float [ %7, %5 ], [ %11, %10 ], [ %0, %14 ], [ %40, %34 ], !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  ret float %42, !dbg !83
}

; Function Attrs: noredzone
declare dso_local float @log1pf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_atanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9, !11}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 26, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 20, type: !8, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!12 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 20, type: !8, isLocal: true, isDefinition: true)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "__ieee754_atanhf", scope: !1, file: !1, line: 32, type: !18, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{!4, !4}
!20 = !{!21, !22, !23, !27, !28, !38}
!21 = !DILocalVariable(name: "x", arg: 1, scope: !17, file: !1, line: 32, type: !4)
!22 = !DILocalVariable(name: "t", scope: !17, file: !1, line: 38, type: !4)
!23 = !DILocalVariable(name: "hx", scope: !17, file: !1, line: 39, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "ix", scope: !17, file: !1, line: 39, type: !24)
!28 = !DILocalVariable(name: "gf_u", scope: !29, file: !1, line: 40, type: !30)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 40, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !31, line: 347, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 343, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 345, baseType: !4, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !32, file: !31, line: 346, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "sf_u", scope: !39, file: !1, line: 47, type: !30)
!39 = distinct !DILexicalBlock(scope: !17, file: !1, line: 47, column: 2)
!40 = !DILocation(line: 32, column: 31, scope: !17)
!41 = !DILocation(line: 40, column: 2, scope: !29)
!42 = !DILocation(line: 39, column: 12, scope: !17)
!43 = !DILocation(line: 41, column: 9, scope: !17)
!44 = !DILocation(line: 39, column: 15, scope: !17)
!45 = !DILocation(line: 42, column: 8, scope: !46)
!46 = distinct !DILexicalBlock(scope: !17, file: !1, line: 42, column: 6)
!47 = !DILocation(line: 42, column: 6, scope: !17)
!48 = !DILocation(line: 43, column: 15, scope: !46)
!49 = !DILocation(line: 43, column: 18, scope: !46)
!50 = !DILocation(line: 43, column: 6, scope: !46)
!51 = !DILocation(line: 44, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !17, file: !1, line: 44, column: 5)
!53 = !DILocation(line: 44, column: 5, scope: !17)
!54 = !DILocation(line: 45, column: 14, scope: !52)
!55 = !DILocation(line: 45, column: 6, scope: !52)
!56 = !DILocation(line: 46, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !17, file: !1, line: 46, column: 5)
!58 = !DILocation(line: 46, column: 18, scope: !57)
!59 = !DILocation(line: 46, column: 25, scope: !57)
!60 = !DILocation(line: 46, column: 28, scope: !57)
!61 = !DILocation(line: 46, column: 5, scope: !17)
!62 = !DILocation(line: 47, column: 2, scope: !39)
!63 = !DILocation(line: 0, scope: !64)
!64 = distinct !DILexicalBlock(scope: !17, file: !1, line: 48, column: 5)
!65 = !DILocation(line: 48, column: 5, scope: !17)
!66 = !DILocation(line: 48, column: 7, scope: !64)
!67 = !DILocation(line: 38, column: 8, scope: !17)
!68 = !DILocation(line: 50, column: 31, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 48, column: 20)
!70 = !DILocation(line: 50, column: 38, scope: !69)
!71 = !DILocation(line: 50, column: 33, scope: !69)
!72 = !DILocation(line: 50, column: 29, scope: !69)
!73 = !DILocation(line: 51, column: 2, scope: !69)
!74 = !DILocation(line: 52, column: 38, scope: !64)
!75 = !DILocation(line: 52, column: 33, scope: !64)
!76 = !DILocation(line: 0, scope: !69)
!77 = !DILocation(line: 53, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !17, file: !1, line: 53, column: 5)
!79 = !DILocation(line: 53, column: 5, scope: !17)
!80 = !DILocation(line: 53, column: 34, scope: !78)
!81 = !DILocation(line: 0, scope: !78)
!82 = !DILocation(line: 0, scope: !46)
!83 = !DILocation(line: 54, column: 1, scope: !17)
