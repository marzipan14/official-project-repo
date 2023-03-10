; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_cosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_cosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_coshf(float) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast float %0 to i32, !dbg !38
  %3 = and i32 %2, 2147483647, !dbg !40
  %4 = icmp ult i32 %3, 2139095040, !dbg !41
  br i1 %4, label %7, label %5, !dbg !43

; <label>:5:                                      ; preds = %1
  %6 = fmul float %0, %0, !dbg !44
  br label %41, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %3, 1051816472, !dbg !46
  br i1 %8, label %9, label %19, !dbg !48

; <label>:9:                                      ; preds = %7
  %10 = tail call float @fabsf(float %0) #3, !dbg !49
  %11 = tail call float @expm1f(float %10) #3, !dbg !51
  %12 = fadd float %11, 1.000000e+00, !dbg !53
  %13 = icmp ult i32 %3, 603979776, !dbg !55
  br i1 %13, label %41, label %14, !dbg !57

; <label>:14:                                     ; preds = %9
  %15 = fmul float %11, %11, !dbg !58
  %16 = fadd float %12, %12, !dbg !59
  %17 = fdiv float %15, %16, !dbg !60
  %18 = fadd float %17, 1.000000e+00, !dbg !61
  br label %41, !dbg !62

; <label>:19:                                     ; preds = %7
  %20 = icmp ult i32 %3, 1102053376, !dbg !63
  br i1 %20, label %21, label %27, !dbg !65

; <label>:21:                                     ; preds = %19
  %22 = tail call float @fabsf(float %0) #3, !dbg !66
  %23 = tail call float @__ieee754_expf(float %22) #3, !dbg !68
  %24 = fmul float %23, 5.000000e-01, !dbg !69
  %25 = fdiv float 5.000000e-01, %23, !dbg !70
  %26 = fadd float %24, %25, !dbg !71
  br label %41, !dbg !72

; <label>:27:                                     ; preds = %19
  %28 = icmp ult i32 %3, 1118925336, !dbg !73
  br i1 %28, label %29, label %33, !dbg !75

; <label>:29:                                     ; preds = %27
  %30 = tail call float @fabsf(float %0) #3, !dbg !76
  %31 = tail call float @__ieee754_expf(float %30) #3, !dbg !77
  %32 = fmul float %31, 5.000000e-01, !dbg !78
  br label %41, !dbg !79

; <label>:33:                                     ; preds = %27
  %34 = icmp ult i32 %3, 1119016189, !dbg !80
  br i1 %34, label %35, label %41, !dbg !82

; <label>:35:                                     ; preds = %33
  %36 = tail call float @fabsf(float %0) #3, !dbg !83
  %37 = fmul float %36, 5.000000e-01, !dbg !85
  %38 = tail call float @__ieee754_expf(float %37) #3, !dbg !86
  %39 = fmul float %38, 5.000000e-01, !dbg !87
  %40 = fmul float %38, %39, !dbg !88
  br label %41, !dbg !89

; <label>:41:                                     ; preds = %33, %9, %35, %29, %21, %14, %5
  %42 = phi float [ %18, %14 ], [ %26, %21 ], [ %32, %29 ], [ %40, %35 ], [ %6, %5 ], [ %12, %9 ], [ 0x7FF0000000000000, %33 ], !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  ret float %42, !dbg !91
}

; Function Attrs: noredzone
declare dso_local float @expm1f(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @fabsf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_expf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_cosh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 23, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 1056964608, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "half", scope: !0, file: !1, line: 23, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 1900671690, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 23, type: !6, isLocal: true, isDefinition: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "__ieee754_coshf", scope: !1, file: !1, line: 29, type: !17, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7, !7}
!19 = !{!20, !21, !22, !23, !27}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 29, type: !7)
!21 = !DILocalVariable(name: "t", scope: !16, file: !1, line: 35, type: !7)
!22 = !DILocalVariable(name: "w", scope: !16, file: !1, line: 35, type: !7)
!23 = !DILocalVariable(name: "ix", scope: !16, file: !1, line: 36, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 77, baseType: !26)
!25 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DILocalVariable(name: "gf_u", scope: !28, file: !1, line: 38, type: !29)
!28 = distinct !DILexicalBlock(scope: !16, file: !1, line: 38, column: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !30, line: 347, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !30, line: 343, size: 32, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !31, file: !30, line: 345, baseType: !7, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !31, file: !30, line: 346, baseType: !35, size: 32)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 79, baseType: !36)
!36 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 29, column: 30, scope: !16)
!38 = !DILocation(line: 38, column: 2, scope: !28)
!39 = !DILocation(line: 36, column: 12, scope: !16)
!40 = !DILocation(line: 39, column: 5, scope: !16)
!41 = !DILocation(line: 42, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !16, file: !1, line: 42, column: 5)
!43 = !DILocation(line: 42, column: 5, scope: !16)
!44 = !DILocation(line: 42, column: 39, scope: !42)
!45 = !DILocation(line: 42, column: 31, scope: !42)
!46 = !DILocation(line: 45, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !16, file: !1, line: 45, column: 5)
!48 = !DILocation(line: 45, column: 5, scope: !16)
!49 = !DILocation(line: 46, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 45, column: 20)
!51 = !DILocation(line: 46, column: 10, scope: !50)
!52 = !DILocation(line: 35, column: 8, scope: !16)
!53 = !DILocation(line: 47, column: 13, scope: !50)
!54 = !DILocation(line: 35, column: 10, scope: !16)
!55 = !DILocation(line: 48, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 48, column: 10)
!57 = !DILocation(line: 48, column: 10, scope: !50)
!58 = !DILocation(line: 49, column: 19, scope: !50)
!59 = !DILocation(line: 49, column: 25, scope: !50)
!60 = !DILocation(line: 49, column: 22, scope: !50)
!61 = !DILocation(line: 49, column: 16, scope: !50)
!62 = !DILocation(line: 49, column: 6, scope: !50)
!63 = !DILocation(line: 53, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !16, file: !1, line: 53, column: 6)
!65 = !DILocation(line: 53, column: 6, scope: !16)
!66 = !DILocation(line: 54, column: 22, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 53, column: 23)
!68 = !DILocation(line: 54, column: 7, scope: !67)
!69 = !DILocation(line: 55, column: 14, scope: !67)
!70 = !DILocation(line: 55, column: 21, scope: !67)
!71 = !DILocation(line: 55, column: 16, scope: !67)
!72 = !DILocation(line: 55, column: 3, scope: !67)
!73 = !DILocation(line: 59, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !16, file: !1, line: 59, column: 6)
!75 = !DILocation(line: 59, column: 6, scope: !16)
!76 = !DILocation(line: 60, column: 31, scope: !74)
!77 = !DILocation(line: 60, column: 16, scope: !74)
!78 = !DILocation(line: 60, column: 15, scope: !74)
!79 = !DILocation(line: 60, column: 4, scope: !74)
!80 = !DILocation(line: 63, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !16, file: !1, line: 63, column: 6)
!82 = !DILocation(line: 63, column: 6, scope: !16)
!83 = !DILocation(line: 64, column: 30, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 63, column: 32)
!85 = !DILocation(line: 64, column: 29, scope: !84)
!86 = !DILocation(line: 64, column: 10, scope: !84)
!87 = !DILocation(line: 65, column: 14, scope: !84)
!88 = !DILocation(line: 66, column: 14, scope: !84)
!89 = !DILocation(line: 66, column: 6, scope: !84)
!90 = !DILocation(line: 0, scope: !42)
!91 = !DILocation(line: 71, column: 1, scope: !16)
