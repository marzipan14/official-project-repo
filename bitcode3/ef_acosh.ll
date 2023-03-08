; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_acosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_acosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local float @__ieee754_acoshf(float) local_unnamed_addr #0 !dbg !15 {
  %2 = bitcast float %0 to i32, !dbg !36
  %3 = icmp slt i32 %2, 1065353216, !dbg !38
  br i1 %3, label %4, label %7, !dbg !40

; <label>:4:                                      ; preds = %1
  %5 = fsub float %0, %0, !dbg !41
  %6 = fdiv float %5, %5, !dbg !43
  br label %37, !dbg !44

; <label>:7:                                      ; preds = %1
  %8 = icmp sgt i32 %2, 1300234239, !dbg !45
  br i1 %8, label %9, label %16, !dbg !47

; <label>:9:                                      ; preds = %7
  %10 = icmp slt i32 %2, 2139095040, !dbg !48
  br i1 %10, label %13, label %11, !dbg !51

; <label>:11:                                     ; preds = %9
  %12 = fadd float %0, %0, !dbg !52
  br label %37, !dbg !54

; <label>:13:                                     ; preds = %9
  %14 = tail call float @__ieee754_logf(float %0) #3, !dbg !55
  %15 = fadd float %14, 0x3FE62E4300000000, !dbg !56
  br label %37, !dbg !57

; <label>:16:                                     ; preds = %7
  %17 = icmp eq i32 %2, 1065353216, !dbg !58
  br i1 %17, label %37, label %18, !dbg !60

; <label>:18:                                     ; preds = %16
  %19 = icmp sgt i32 %2, 1073741824, !dbg !61
  br i1 %19, label %20, label %29, !dbg !63

; <label>:20:                                     ; preds = %18
  %21 = fmul float %0, %0, !dbg !64
  %22 = fmul float %0, 2.000000e+00, !dbg !67
  %23 = fadd float %21, -1.000000e+00, !dbg !68
  %24 = tail call float @__ieee754_sqrtf(float %23) #3, !dbg !69
  %25 = fadd float %24, %0, !dbg !70
  %26 = fdiv float 1.000000e+00, %25, !dbg !71
  %27 = fsub float %22, %26, !dbg !72
  %28 = tail call float @__ieee754_logf(float %27) #3, !dbg !73
  br label %37, !dbg !74

; <label>:29:                                     ; preds = %18
  %30 = fadd float %0, -1.000000e+00, !dbg !75
  %31 = fmul float %30, 2.000000e+00, !dbg !77
  %32 = fmul float %30, %30, !dbg !78
  %33 = fadd float %31, %32, !dbg !79
  %34 = tail call float @__ieee754_sqrtf(float %33) #3, !dbg !80
  %35 = fadd float %30, %34, !dbg !81
  %36 = tail call float @log1pf(float %35) #3, !dbg !82
  br label %37, !dbg !83

; <label>:37:                                     ; preds = %16, %29, %20, %13, %11, %4
  %38 = phi float [ %6, %4 ], [ %15, %13 ], [ %12, %11 ], [ %28, %20 ], [ %36, %29 ], [ 0.000000e+00, %16 ], !dbg !84
  ret float %38, !dbg !85
}

; Function Attrs: noredzone
declare dso_local float @__ieee754_logf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @__ieee754_sqrtf(float) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local float @log1pf(float) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, globals: !5)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/ef_acosh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{!6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression(DW_OP_constu, 1060205080, DW_OP_stack_value))
!7 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !1, line: 25, type: !8, isLocal: true, isDefinition: true)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression(DW_OP_constu, 1065353216, DW_OP_stack_value))
!10 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 24, type: !8, isLocal: true, isDefinition: true)
!11 = !{i32 2, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!15 = distinct !DISubprogram(name: "__ieee754_acoshf", scope: !1, file: !1, line: 28, type: !16, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !4}
!18 = !{!19, !20, !21, !25}
!19 = !DILocalVariable(name: "x", arg: 1, scope: !15, file: !1, line: 28, type: !4)
!20 = !DILocalVariable(name: "t", scope: !15, file: !1, line: 34, type: !4)
!21 = !DILocalVariable(name: "hx", scope: !15, file: !1, line: 35, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !23, line: 77, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DILocalVariable(name: "gf_u", scope: !26, file: !1, line: 36, type: !27)
!26 = distinct !DILexicalBlock(scope: !15, file: !1, line: 36, column: 2)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !28, line: 347, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 343, size: 32, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !28, line: 345, baseType: !4, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !29, file: !28, line: 346, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 79, baseType: !34)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 28, column: 31, scope: !15)
!36 = !DILocation(line: 36, column: 2, scope: !26)
!37 = !DILocation(line: 35, column: 12, scope: !15)
!38 = !DILocation(line: 37, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !15, file: !1, line: 37, column: 5)
!40 = !DILocation(line: 37, column: 5, scope: !15)
!41 = !DILocation(line: 38, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 37, column: 20)
!43 = !DILocation(line: 38, column: 18, scope: !42)
!44 = !DILocation(line: 38, column: 6, scope: !42)
!45 = !DILocation(line: 39, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !39, file: !1, line: 39, column: 12)
!47 = !DILocation(line: 39, column: 12, scope: !39)
!48 = !DILocation(line: 40, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 40, column: 9)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 39, column: 29)
!51 = !DILocation(line: 40, column: 9, scope: !50)
!52 = !DILocation(line: 41, column: 18, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 40, column: 35)
!54 = !DILocation(line: 41, column: 10, scope: !53)
!55 = !DILocation(line: 43, column: 10, scope: !49)
!56 = !DILocation(line: 43, column: 27, scope: !49)
!57 = !DILocation(line: 43, column: 3, scope: !49)
!58 = !DILocation(line: 44, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !46, file: !1, line: 44, column: 13)
!60 = !DILocation(line: 44, column: 13, scope: !46)
!61 = !DILocation(line: 46, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 46, column: 13)
!63 = !DILocation(line: 46, column: 13, scope: !59)
!64 = !DILocation(line: 47, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 46, column: 30)
!66 = !DILocation(line: 34, column: 8, scope: !15)
!67 = !DILocation(line: 48, column: 38, scope: !65)
!68 = !DILocation(line: 48, column: 65, scope: !65)
!69 = !DILocation(line: 48, column: 48, scope: !65)
!70 = !DILocation(line: 48, column: 47, scope: !65)
!71 = !DILocation(line: 48, column: 44, scope: !65)
!72 = !DILocation(line: 48, column: 40, scope: !65)
!73 = !DILocation(line: 48, column: 13, scope: !65)
!74 = !DILocation(line: 48, column: 6, scope: !65)
!75 = !DILocation(line: 50, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !62, file: !1, line: 49, column: 9)
!77 = !DILocation(line: 51, column: 48, scope: !76)
!78 = !DILocation(line: 51, column: 52, scope: !76)
!79 = !DILocation(line: 51, column: 50, scope: !76)
!80 = !DILocation(line: 51, column: 22, scope: !76)
!81 = !DILocation(line: 51, column: 21, scope: !76)
!82 = !DILocation(line: 51, column: 13, scope: !76)
!83 = !DILocation(line: 51, column: 6, scope: !76)
!84 = !DILocation(line: 0, scope: !76)
!85 = !DILocation(line: 53, column: 1, scope: !15)
