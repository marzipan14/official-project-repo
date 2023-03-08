; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_acosh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_acosh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_acosh(double) local_unnamed_addr #0 !dbg !14 {
  %2 = bitcast double %0 to i64, !dbg !40
  %3 = lshr i64 %2, 32, !dbg !40
  %4 = trunc i64 %3 to i32, !dbg !40
  %5 = trunc i64 %2 to i32, !dbg !40
  %6 = icmp slt i32 %4, 1072693248, !dbg !43
  br i1 %6, label %7, label %10, !dbg !45

; <label>:7:                                      ; preds = %1
  %8 = fsub double %0, %0, !dbg !46
  %9 = fdiv double %8, %8, !dbg !48
  br label %42, !dbg !49

; <label>:10:                                     ; preds = %1
  %11 = icmp sgt i32 %4, 1102053375, !dbg !50
  br i1 %11, label %12, label %19, !dbg !52

; <label>:12:                                     ; preds = %10
  %13 = icmp sgt i32 %4, 2146435071, !dbg !53
  br i1 %13, label %14, label %16, !dbg !56

; <label>:14:                                     ; preds = %12
  %15 = fadd double %0, %0, !dbg !57
  br label %42, !dbg !59

; <label>:16:                                     ; preds = %12
  %17 = tail call double @__ieee754_log(double %0) #3, !dbg !60
  %18 = fadd double %17, 0x3FE62E42FEFA39EF, !dbg !61
  br label %42, !dbg !62

; <label>:19:                                     ; preds = %10
  %20 = add nsw i32 %4, -1072693248, !dbg !63
  %21 = or i32 %20, %5, !dbg !65
  %22 = icmp eq i32 %21, 0, !dbg !66
  br i1 %22, label %42, label %23, !dbg !67

; <label>:23:                                     ; preds = %19
  %24 = icmp sgt i32 %4, 1073741824, !dbg !68
  br i1 %24, label %25, label %34, !dbg !70

; <label>:25:                                     ; preds = %23
  %26 = fmul double %0, %0, !dbg !71
  %27 = fmul double %0, 2.000000e+00, !dbg !74
  %28 = fadd double %26, -1.000000e+00, !dbg !75
  %29 = tail call double @__ieee754_sqrt(double %28) #3, !dbg !76
  %30 = fadd double %29, %0, !dbg !77
  %31 = fdiv double 1.000000e+00, %30, !dbg !78
  %32 = fsub double %27, %31, !dbg !79
  %33 = tail call double @__ieee754_log(double %32) #3, !dbg !80
  br label %42, !dbg !81

; <label>:34:                                     ; preds = %23
  %35 = fadd double %0, -1.000000e+00, !dbg !82
  %36 = fmul double %35, 2.000000e+00, !dbg !84
  %37 = fmul double %35, %35, !dbg !85
  %38 = fadd double %36, %37, !dbg !86
  %39 = tail call double @__ieee754_sqrt(double %38) #3, !dbg !87
  %40 = fadd double %35, %39, !dbg !88
  %41 = tail call double @log1p(double %40) #3, !dbg !89
  br label %42, !dbg !90

; <label>:42:                                     ; preds = %19, %34, %25, %16, %14, %7
  %43 = phi double [ %9, %7 ], [ %15, %14 ], [ %18, %16 ], [ %33, %25 ], [ %41, %34 ], [ 0.000000e+00, %19 ], !dbg !91
  ret double %43, !dbg !92
}

; Function Attrs: noredzone
declare dso_local double @__ieee754_log(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @__ieee754_sqrt(double) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local double @log1p(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_acosh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4604418534313441775, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "ln2", scope: !0, file: !1, line: 39, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 38, type: !6, isLocal: true, isDefinition: true)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "__ieee754_acosh", scope: !1, file: !1, line: 42, type: !15, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7, !7}
!17 = !{!18, !19, !20, !24, !27}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !14, file: !1, line: 42, type: !7)
!19 = !DILocalVariable(name: "t", scope: !14, file: !1, line: 48, type: !7)
!20 = !DILocalVariable(name: "hx", scope: !14, file: !1, line: 49, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "lx", scope: !14, file: !1, line: 50, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !26)
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "ew_u", scope: !28, file: !1, line: 51, type: !29)
!28 = distinct !DILexicalBlock(scope: !14, file: !1, line: 51, column: 2)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !30, line: 278, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !30, line: 270, size: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !31, file: !30, line: 272, baseType: !7, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !31, file: !30, line: 277, baseType: !35, size: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !30, line: 273, size: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !35, file: !30, line: 275, baseType: !25, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !35, file: !30, line: 276, baseType: !25, size: 32, offset: 32)
!39 = !DILocation(line: 42, column: 32, scope: !14)
!40 = !DILocation(line: 51, column: 2, scope: !28)
!41 = !DILocation(line: 49, column: 12, scope: !14)
!42 = !DILocation(line: 50, column: 13, scope: !14)
!43 = !DILocation(line: 52, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !14, file: !1, line: 52, column: 5)
!45 = !DILocation(line: 52, column: 5, scope: !14)
!46 = !DILocation(line: 53, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 52, column: 20)
!48 = !DILocation(line: 53, column: 18, scope: !47)
!49 = !DILocation(line: 53, column: 6, scope: !47)
!50 = !DILocation(line: 54, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 54, column: 12)
!52 = !DILocation(line: 54, column: 12, scope: !44)
!53 = !DILocation(line: 55, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 55, column: 9)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 54, column: 29)
!56 = !DILocation(line: 55, column: 9, scope: !55)
!57 = !DILocation(line: 56, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 55, column: 26)
!59 = !DILocation(line: 56, column: 10, scope: !58)
!60 = !DILocation(line: 58, column: 10, scope: !54)
!61 = !DILocation(line: 58, column: 26, scope: !54)
!62 = !DILocation(line: 58, column: 3, scope: !54)
!63 = !DILocation(line: 59, column: 16, scope: !64)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 59, column: 12)
!65 = !DILocation(line: 59, column: 28, scope: !64)
!66 = !DILocation(line: 59, column: 32, scope: !64)
!67 = !DILocation(line: 59, column: 12, scope: !51)
!68 = !DILocation(line: 61, column: 16, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 61, column: 13)
!70 = !DILocation(line: 61, column: 13, scope: !64)
!71 = !DILocation(line: 62, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 61, column: 30)
!73 = !DILocation(line: 48, column: 9, scope: !14)
!74 = !DILocation(line: 63, column: 30, scope: !72)
!75 = !DILocation(line: 63, column: 56, scope: !72)
!76 = !DILocation(line: 63, column: 40, scope: !72)
!77 = !DILocation(line: 63, column: 39, scope: !72)
!78 = !DILocation(line: 63, column: 36, scope: !72)
!79 = !DILocation(line: 63, column: 32, scope: !72)
!80 = !DILocation(line: 63, column: 13, scope: !72)
!81 = !DILocation(line: 63, column: 6, scope: !72)
!82 = !DILocation(line: 65, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !69, file: !1, line: 64, column: 9)
!84 = !DILocation(line: 66, column: 39, scope: !83)
!85 = !DILocation(line: 66, column: 43, scope: !83)
!86 = !DILocation(line: 66, column: 41, scope: !83)
!87 = !DILocation(line: 66, column: 21, scope: !83)
!88 = !DILocation(line: 66, column: 20, scope: !83)
!89 = !DILocation(line: 66, column: 13, scope: !83)
!90 = !DILocation(line: 66, column: 6, scope: !83)
!91 = !DILocation(line: 0, scope: !83)
!92 = !DILocation(line: 68, column: 1, scope: !14)
