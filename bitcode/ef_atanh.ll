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
  br i1 %4, label %5, label %8, !dbg !47

; <label>:5:                                      ; preds = %1
  %6 = fsub float %0, %0, !dbg !48
  %7 = fdiv float %6, %6, !dbg !49
  br label %36, !dbg !50

; <label>:8:                                      ; preds = %1
  %9 = icmp eq i32 %3, 1065353216, !dbg !51
  br i1 %9, label %10, label %12, !dbg !53

; <label>:10:                                     ; preds = %8
  %11 = fdiv float %0, 0.000000e+00, !dbg !54
  br label %36, !dbg !55

; <label>:12:                                     ; preds = %8
  %13 = icmp ult i32 %3, 830472192, !dbg !56
  %14 = fadd float %0, 0x46293E5940000000, !dbg !58
  %15 = fcmp ogt float %14, 0.000000e+00, !dbg !59
  %16 = and i1 %15, %13, !dbg !60
  br i1 %16, label %36, label %17, !dbg !60

; <label>:17:                                     ; preds = %12
  %18 = bitcast i32 %3 to float, !dbg !61
  %19 = icmp ult i32 %3, 1056964608, !dbg !62
  %20 = fadd float %18, %18, !dbg !64
  br i1 %19, label %21, label %26, !dbg !65

; <label>:21:                                     ; preds = %17
  %22 = fmul float %20, %18, !dbg !67
  %23 = fsub float 1.000000e+00, %18, !dbg !69
  %24 = fdiv float %22, %23, !dbg !70
  %25 = fadd float %20, %24, !dbg !71
  br label %29, !dbg !72

; <label>:26:                                     ; preds = %17
  %27 = fsub float 1.000000e+00, %18, !dbg !73
  %28 = fdiv float %20, %27, !dbg !74
  br label %29

; <label>:29:                                     ; preds = %26, %21
  %30 = phi float [ %28, %26 ], [ %25, %21 ]
  %31 = tail call float @log1pf(float %30) #3, !dbg !75
  %32 = fmul float %31, 5.000000e-01, !dbg !64
  %33 = icmp sgt i32 %2, -1, !dbg !76
  %34 = fsub float -0.000000e+00, %32, !dbg !78
  %35 = select i1 %33, float %32, float %34, !dbg !79
  br label %36, !dbg !79

; <label>:36:                                     ; preds = %29, %12, %10, %5
  %37 = phi float [ %7, %5 ], [ %11, %10 ], [ %0, %12 ], [ %35, %29 ], !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  ret float %37, !dbg !81
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
!58 = !DILocation(line: 46, column: 25, scope: !57)
!59 = !DILocation(line: 46, column: 28, scope: !57)
!60 = !DILocation(line: 46, column: 18, scope: !57)
!61 = !DILocation(line: 47, column: 2, scope: !39)
!62 = !DILocation(line: 48, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !17, file: !1, line: 48, column: 5)
!64 = !DILocation(line: 0, scope: !63)
!65 = !DILocation(line: 48, column: 5, scope: !17)
!66 = !DILocation(line: 38, column: 8, scope: !17)
!67 = !DILocation(line: 50, column: 31, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 48, column: 20)
!69 = !DILocation(line: 50, column: 38, scope: !68)
!70 = !DILocation(line: 50, column: 33, scope: !68)
!71 = !DILocation(line: 50, column: 29, scope: !68)
!72 = !DILocation(line: 51, column: 2, scope: !68)
!73 = !DILocation(line: 52, column: 38, scope: !63)
!74 = !DILocation(line: 52, column: 33, scope: !63)
!75 = !DILocation(line: 0, scope: !68)
!76 = !DILocation(line: 53, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !17, file: !1, line: 53, column: 5)
!78 = !DILocation(line: 53, column: 34, scope: !77)
!79 = !DILocation(line: 53, column: 5, scope: !17)
!80 = !DILocation(line: 0, scope: !77)
!81 = !DILocation(line: 54, column: 1, scope: !17)
