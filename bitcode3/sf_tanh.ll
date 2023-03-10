; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @tanhf(float) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast float %0 to i32, !dbg !39
  %3 = and i32 %2, 2147483647, !dbg !41
  %4 = icmp ult i32 %3, 2139095040, !dbg !43
  br i1 %4, label %12, label %5, !dbg !45

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %2, -1, !dbg !46
  %7 = fdiv float 1.000000e+00, %0, !dbg !49
  br i1 %6, label %8, label %10, !dbg !50

; <label>:8:                                      ; preds = %5
  %9 = fadd float %7, 1.000000e+00, !dbg !51
  br label %39, !dbg !52

; <label>:10:                                     ; preds = %5
  %11 = fadd float %7, -1.000000e+00, !dbg !53
  br label %39, !dbg !54

; <label>:12:                                     ; preds = %1
  %13 = icmp ult i32 %3, 1102053376, !dbg !55
  br i1 %13, label %14, label %34, !dbg !57

; <label>:14:                                     ; preds = %12
  %15 = icmp ult i32 %3, 603979776, !dbg !58
  br i1 %15, label %16, label %19, !dbg !61

; <label>:16:                                     ; preds = %14
  %17 = fadd float %0, 1.000000e+00, !dbg !62
  %18 = fmul float %17, %0, !dbg !63
  br label %39, !dbg !64

; <label>:19:                                     ; preds = %14
  %20 = icmp ugt i32 %3, 1065353215, !dbg !65
  %21 = tail call float @fabsf(float %0) #3, !dbg !67
  br i1 %20, label %22, label %28, !dbg !69

; <label>:22:                                     ; preds = %19
  %23 = fmul float %21, 2.000000e+00, !dbg !70
  %24 = tail call float @expm1f(float %23) #3, !dbg !72
  %25 = fadd float %24, 2.000000e+00, !dbg !74
  %26 = fdiv float 2.000000e+00, %25, !dbg !75
  %27 = fsub float 1.000000e+00, %26, !dbg !76
  br label %34, !dbg !78

; <label>:28:                                     ; preds = %19
  %29 = fmul float %21, -2.000000e+00, !dbg !79
  %30 = tail call float @expm1f(float %29) #3, !dbg !80
  %31 = fsub float -0.000000e+00, %30, !dbg !81
  %32 = fadd float %30, 2.000000e+00, !dbg !82
  %33 = fdiv float %31, %32, !dbg !83
  br label %34

; <label>:34:                                     ; preds = %12, %22, %28
  %35 = phi float [ %27, %22 ], [ %33, %28 ], [ 1.000000e+00, %12 ], !dbg !84
  %36 = icmp sgt i32 %2, -1, !dbg !86
  %37 = fsub float -0.000000e+00, %35, !dbg !87
  %38 = select i1 %36, float %35, float %37, !dbg !88
  br label %39, !dbg !89

; <label>:39:                                     ; preds = %34, %16, %10, %8
  %40 = phi float [ %18, %16 ], [ %38, %34 ], [ %9, %8 ], [ %11, %10 ], !dbg !49
  ret float %40, !dbg !90
}

; Function Attrs: noredzone
declare dso_local float @expm1f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_tanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1073741824, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "two", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 228737632, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "tiny", scope: !0, file: !1, line: 19, type: !6, isLocal: true, isDefinition: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "tanhf", scope: !1, file: !1, line: 25, type: !17, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7, !7}
!19 = !{!20, !21, !22, !23, !27, !28}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 25, type: !7)
!21 = !DILocalVariable(name: "t", scope: !16, file: !1, line: 31, type: !7)
!22 = !DILocalVariable(name: "z", scope: !16, file: !1, line: 31, type: !7)
!23 = !DILocalVariable(name: "jx", scope: !16, file: !1, line: 32, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "ix", scope: !16, file: !1, line: 32, type: !24)
!28 = !DILocalVariable(name: "gf_u", scope: !29, file: !1, line: 34, type: !30)
!29 = distinct !DILexicalBlock(scope: !16, file: !1, line: 34, column: 2)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !31, line: 347, baseType: !32)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !31, line: 343, size: 32, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !32, file: !31, line: 345, baseType: !7, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !32, file: !31, line: 346, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 25, column: 20, scope: !16)
!39 = !DILocation(line: 34, column: 2, scope: !29)
!40 = !DILocation(line: 32, column: 12, scope: !16)
!41 = !DILocation(line: 35, column: 9, scope: !16)
!42 = !DILocation(line: 32, column: 15, scope: !16)
!43 = !DILocation(line: 38, column: 6, scope: !44)
!44 = distinct !DILexicalBlock(scope: !16, file: !1, line: 38, column: 5)
!45 = !DILocation(line: 38, column: 5, scope: !16)
!46 = !DILocation(line: 39, column: 12, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 39, column: 10)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 38, column: 31)
!49 = !DILocation(line: 0, scope: !47)
!50 = !DILocation(line: 39, column: 10, scope: !48)
!51 = !DILocation(line: 39, column: 29, scope: !47)
!52 = !DILocation(line: 39, column: 17, scope: !47)
!53 = !DILocation(line: 40, column: 29, scope: !47)
!54 = !DILocation(line: 40, column: 17, scope: !47)
!55 = !DILocation(line: 44, column: 9, scope: !56)
!56 = distinct !DILexicalBlock(scope: !16, file: !1, line: 44, column: 6)
!57 = !DILocation(line: 44, column: 6, scope: !16)
!58 = !DILocation(line: 45, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 45, column: 10)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 44, column: 23)
!61 = !DILocation(line: 45, column: 10, scope: !60)
!62 = !DILocation(line: 46, column: 16, scope: !59)
!63 = !DILocation(line: 46, column: 11, scope: !59)
!64 = !DILocation(line: 46, column: 3, scope: !59)
!65 = !DILocation(line: 47, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 47, column: 10)
!67 = !DILocation(line: 0, scope: !68)
!68 = distinct !DILexicalBlock(scope: !66, file: !1, line: 50, column: 13)
!69 = !DILocation(line: 47, column: 10, scope: !60)
!70 = !DILocation(line: 48, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 47, column: 26)
!72 = !DILocation(line: 48, column: 7, scope: !71)
!73 = !DILocation(line: 31, column: 8, scope: !16)
!74 = !DILocation(line: 49, column: 19, scope: !71)
!75 = !DILocation(line: 49, column: 16, scope: !71)
!76 = !DILocation(line: 49, column: 11, scope: !71)
!77 = !DILocation(line: 31, column: 10, scope: !16)
!78 = !DILocation(line: 50, column: 6, scope: !71)
!79 = !DILocation(line: 51, column: 25, scope: !68)
!80 = !DILocation(line: 51, column: 14, scope: !68)
!81 = !DILocation(line: 52, column: 13, scope: !68)
!82 = !DILocation(line: 52, column: 18, scope: !68)
!83 = !DILocation(line: 52, column: 15, scope: !68)
!84 = !DILocation(line: 0, scope: !85)
!85 = distinct !DILexicalBlock(scope: !56, file: !1, line: 55, column: 9)
!86 = !DILocation(line: 58, column: 12, scope: !16)
!87 = !DILocation(line: 58, column: 21, scope: !16)
!88 = !DILocation(line: 58, column: 9, scope: !16)
!89 = !DILocation(line: 58, column: 2, scope: !16)
!90 = !DILocation(line: 59, column: 1, scope: !16)
