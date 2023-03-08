; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atanh.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atanh.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @__ieee754_atanh(double) local_unnamed_addr #0 !dbg !16 {
  %2 = bitcast double %0 to i64, !dbg !45
  %3 = lshr i64 %2, 32, !dbg !45
  %4 = trunc i64 %3 to i32, !dbg !45
  %5 = trunc i64 %2 to i32, !dbg !45
  %6 = and i32 %4, 2147483647, !dbg !48
  %7 = sub i32 0, %5, !dbg !50
  %8 = or i32 %5, %7, !dbg !52
  %9 = lshr i32 %8, 31, !dbg !53
  %10 = or i32 %6, %9, !dbg !54
  %11 = icmp ugt i32 %10, 1072693248, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %11, label %12, label %15, !dbg !56

; <label>:12:                                     ; preds = %1
  %13 = fsub double %0, %0, !dbg !57
  %14 = fdiv double %13, %13, !dbg !58
  br label %47, !dbg !59

; <label>:15:                                     ; preds = %1
  %16 = icmp eq i32 %6, 1072693248, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %16, label %17, label %19, !dbg !62

; <label>:17:                                     ; preds = %15
  %18 = fdiv double %0, 0.000000e+00, !dbg !63
  br label %47, !dbg !64

; <label>:19:                                     ; preds = %15
  %20 = icmp ult i32 %6, 1043333120, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %20, label %21, label %24, !dbg !67

; <label>:21:                                     ; preds = %19
  %22 = fadd double %0, 1.000000e+300, !dbg !68
  %23 = fcmp ogt double %22, 0.000000e+00, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br i1 %23, label %47, label %24, !dbg !70

; <label>:24:                                     ; preds = %19, %21
  %25 = zext i32 %6 to i64, !dbg !71
  %26 = shl nuw nsw i64 %25, 32, !dbg !71
  %27 = and i64 %2, 4294967295, !dbg !71
  %28 = or i64 %26, %27, !dbg !71
  %29 = bitcast i64 %28 to double, !dbg !71
  %30 = icmp ult i32 %6, 1071644672, !dbg !72
  %31 = fadd double %29, %29, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %30, label %32, label %37, !dbg !75

; <label>:32:                                     ; preds = %24
  %33 = fmul double %31, %29, !dbg !77
  %34 = fsub double 1.000000e+00, %29, !dbg !79
  %35 = fdiv double %33, %34, !dbg !80
  %36 = fadd double %31, %35, !dbg !81
  br label %40, !dbg !82

; <label>:37:                                     ; preds = %24
  %38 = fsub double 1.000000e+00, %29, !dbg !83
  %39 = fdiv double %31, %38, !dbg !84
  br label %40

; <label>:40:                                     ; preds = %37, %32
  %41 = phi double [ %39, %37 ], [ %36, %32 ]
  %42 = tail call double @log1p(double %41) #3, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = fmul double %42, 5.000000e-01, !dbg !74
  %44 = icmp sgt i32 %4, -1, !dbg !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  %45 = fsub double -0.000000e+00, %43, !dbg !89
  %46 = select i1 %44, double %43, double %45, !dbg !88
  br label %47, !dbg !88

; <label>:47:                                     ; preds = %40, %21, %17, %12
  %48 = phi double [ %14, %12 ], [ %18, %17 ], [ %0, %21 ], [ %46, %40 ], !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  ret double %48, !dbg !92
}

; Function Attrs: noredzone
declare dso_local double @log1p(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/e_atanh.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !8, !10}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 0, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "zero", scope: !0, file: !1, line: 44, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression(DW_OP_constu, 9094988921128908188, DW_OP_stack_value))
!9 = distinct !DIGlobalVariable(name: "huge", scope: !0, file: !1, line: 38, type: !6, isLocal: true, isDefinition: true)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression(DW_OP_constu, 4607182418800017408, DW_OP_stack_value))
!11 = distinct !DIGlobalVariable(name: "one", scope: !0, file: !1, line: 38, type: !6, isLocal: true, isDefinition: true)
!12 = !{i32 2, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!16 = distinct !DISubprogram(name: "__ieee754_atanh", scope: !1, file: !1, line: 50, type: !17, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!7, !7}
!19 = !{!20, !21, !22, !26, !27, !30, !42}
!20 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !1, line: 50, type: !7)
!21 = !DILocalVariable(name: "t", scope: !16, file: !1, line: 56, type: !7)
!22 = !DILocalVariable(name: "hx", scope: !16, file: !1, line: 57, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !24, line: 77, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "ix", scope: !16, file: !1, line: 57, type: !23)
!27 = !DILocalVariable(name: "lx", scope: !16, file: !1, line: 58, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 79, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DILocalVariable(name: "ew_u", scope: !31, file: !1, line: 59, type: !32)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 59, column: 2)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !33, line: 278, baseType: !34)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 270, size: 64, elements: !35)
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !34, file: !33, line: 272, baseType: !7, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !34, file: !33, line: 277, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !33, line: 273, size: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !38, file: !33, line: 275, baseType: !28, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !38, file: !33, line: 276, baseType: !28, size: 32, offset: 32)
!42 = !DILocalVariable(name: "sh_u", scope: !43, file: !1, line: 66, type: !32)
!43 = distinct !DILexicalBlock(scope: !16, file: !1, line: 66, column: 2)
!44 = !DILocation(line: 50, column: 32, scope: !16)
!45 = !DILocation(line: 59, column: 2, scope: !31)
!46 = !DILocation(line: 57, column: 12, scope: !16)
!47 = !DILocation(line: 58, column: 13, scope: !16)
!48 = !DILocation(line: 60, column: 9, scope: !16)
!49 = !DILocation(line: 57, column: 15, scope: !16)
!50 = !DILocation(line: 61, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !16, file: !1, line: 61, column: 6)
!52 = !DILocation(line: 61, column: 14, scope: !51)
!53 = !DILocation(line: 61, column: 21, scope: !51)
!54 = !DILocation(line: 61, column: 9, scope: !51)
!55 = !DILocation(line: 61, column: 27, scope: !51)
!56 = !DILocation(line: 61, column: 6, scope: !16)
!57 = !DILocation(line: 62, column: 15, scope: !51)
!58 = !DILocation(line: 62, column: 18, scope: !51)
!59 = !DILocation(line: 62, column: 6, scope: !51)
!60 = !DILocation(line: 63, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !16, file: !1, line: 63, column: 5)
!62 = !DILocation(line: 63, column: 5, scope: !16)
!63 = !DILocation(line: 64, column: 14, scope: !61)
!64 = !DILocation(line: 64, column: 6, scope: !61)
!65 = !DILocation(line: 65, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !16, file: !1, line: 65, column: 5)
!67 = !DILocation(line: 65, column: 18, scope: !66)
!68 = !DILocation(line: 65, column: 25, scope: !66)
!69 = !DILocation(line: 65, column: 28, scope: !66)
!70 = !DILocation(line: 65, column: 5, scope: !16)
!71 = !DILocation(line: 66, column: 2, scope: !43)
!72 = !DILocation(line: 67, column: 7, scope: !73)
!73 = distinct !DILexicalBlock(scope: !16, file: !1, line: 67, column: 5)
!74 = !DILocation(line: 0, scope: !73)
!75 = !DILocation(line: 67, column: 5, scope: !16)
!76 = !DILocation(line: 56, column: 9, scope: !16)
!77 = !DILocation(line: 69, column: 23, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 67, column: 20)
!79 = !DILocation(line: 69, column: 30, scope: !78)
!80 = !DILocation(line: 69, column: 25, scope: !78)
!81 = !DILocation(line: 69, column: 21, scope: !78)
!82 = !DILocation(line: 70, column: 2, scope: !78)
!83 = !DILocation(line: 71, column: 30, scope: !73)
!84 = !DILocation(line: 71, column: 25, scope: !73)
!85 = !DILocation(line: 0, scope: !78)
!86 = !DILocation(line: 72, column: 7, scope: !87)
!87 = distinct !DILexicalBlock(scope: !16, file: !1, line: 72, column: 5)
!88 = !DILocation(line: 72, column: 5, scope: !16)
!89 = !DILocation(line: 72, column: 34, scope: !87)
!90 = !DILocation(line: 0, scope: !87)
!91 = !DILocation(line: 0, scope: !51)
!92 = !DILocation(line: 73, column: 1, scope: !16)
