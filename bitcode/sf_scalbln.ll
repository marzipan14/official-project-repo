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
  %6 = trunc i32 %4 to i8, !dbg !56
  switch i8 %6, label %18 [
    i8 0, label %7
    i8 -1, label %16
  ], !dbg !56

; <label>:7:                                      ; preds = %2
  %8 = and i32 %3, 2147483647, !dbg !57
  %9 = icmp eq i32 %8, 0, !dbg !59
  br i1 %9, label %54, label %10, !dbg !60

; <label>:10:                                     ; preds = %7
  %11 = fmul float %0, 0x4180000000000000, !dbg !61
  %12 = bitcast float %11 to i32, !dbg !62
  %13 = lshr i32 %12, 23, !dbg !63
  %14 = and i32 %13, 255, !dbg !63
  %15 = add nsw i32 %14, -25, !dbg !64
  br label %18, !dbg !65

; <label>:16:                                     ; preds = %2
  %17 = fadd float %0, %0, !dbg !66
  br label %54, !dbg !68

; <label>:18:                                     ; preds = %2, %10
  %19 = phi float [ %11, %10 ], [ %0, %2 ]
  %20 = phi i32 [ %15, %10 ], [ %5, %2 ]
  %21 = phi i32 [ %12, %10 ], [ %3, %2 ]
  %22 = trunc i64 %1 to i32, !dbg !69
  %23 = add i32 %20, %22, !dbg !69
  %24 = icmp sgt i64 %1, 50000, !dbg !70
  %25 = icmp sgt i32 %23, 254, !dbg !72
  %26 = or i1 %24, %25, !dbg !73
  br i1 %26, label %27, label %30, !dbg !73

; <label>:27:                                     ; preds = %18
  %28 = tail call float @copysignf(float 0x46293E5940000000, float %19) #3, !dbg !74
  %29 = fmul float %28, 0x46293E5940000000, !dbg !75
  br label %54, !dbg !76

; <label>:30:                                     ; preds = %18
  %31 = icmp slt i64 %1, -50000, !dbg !77
  br i1 %31, label %32, label %35, !dbg !79

; <label>:32:                                     ; preds = %30
  %33 = tail call float @copysignf(float 0x39B4484C00000000, float %19) #3, !dbg !80
  %34 = fmul float %33, 0x39B4484C00000000, !dbg !81
  br label %54, !dbg !82

; <label>:35:                                     ; preds = %30
  %36 = icmp sgt i32 %23, 0, !dbg !83
  br i1 %36, label %37, label %42, !dbg !84

; <label>:37:                                     ; preds = %35
  %38 = and i32 %21, -2139095041, !dbg !85
  %39 = shl i32 %23, 23, !dbg !85
  %40 = or i32 %38, %39, !dbg !85
  %41 = bitcast i32 %40 to float, !dbg !85
  br label %54, !dbg !86

; <label>:42:                                     ; preds = %35
  %43 = icmp slt i32 %23, -24, !dbg !87
  br i1 %43, label %44, label %47, !dbg !89

; <label>:44:                                     ; preds = %42
  %45 = tail call float @copysignf(float 0x39B4484C00000000, float %19) #3, !dbg !90
  %46 = fmul float %45, 0x39B4484C00000000, !dbg !91
  br label %54, !dbg !92

; <label>:47:                                     ; preds = %42
  %48 = and i32 %21, -2139095041, !dbg !93
  %49 = shl i32 %23, 23, !dbg !93
  %50 = add i32 %49, 209715200, !dbg !93
  %51 = or i32 %50, %48, !dbg !93
  %52 = bitcast i32 %51 to float, !dbg !93
  %53 = fmul float %52, 0x3E60000000000000, !dbg !94
  br label %54, !dbg !95

; <label>:54:                                     ; preds = %7, %47, %44, %37, %32, %27, %16
  %55 = phi float [ %17, %16 ], [ %29, %27 ], [ %34, %32 ], [ %41, %37 ], [ %46, %44 ], [ %53, %47 ], [ %0, %7 ], !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  ret float %55, !dbg !97
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
!56 = !DILocation(line: 38, column: 13, scope: !18)
!57 = !DILocation(line: 39, column: 20, scope: !58)
!58 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 17)
!59 = !DILocation(line: 39, column: 32, scope: !58)
!60 = !DILocation(line: 39, column: 17, scope: !42)
!61 = !DILocation(line: 40, column: 8, scope: !42)
!62 = !DILocation(line: 41, column: 6, scope: !41)
!63 = !DILocation(line: 42, column: 26, scope: !42)
!64 = !DILocation(line: 42, column: 32, scope: !42)
!65 = !DILocation(line: 44, column: 13, scope: !18)
!66 = !DILocation(line: 44, column: 30, scope: !67)
!67 = distinct !DILexicalBlock(scope: !18, file: !1, line: 44, column: 13)
!68 = !DILocation(line: 44, column: 22, scope: !67)
!69 = !DILocation(line: 45, column: 13, scope: !18)
!70 = !DILocation(line: 46, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !18, file: !1, line: 46, column: 13)
!72 = !DILocation(line: 46, column: 27, scope: !71)
!73 = !DILocation(line: 46, column: 22, scope: !71)
!74 = !DILocation(line: 47, column: 16, scope: !71)
!75 = !DILocation(line: 47, column: 15, scope: !71)
!76 = !DILocation(line: 47, column: 4, scope: !71)
!77 = !DILocation(line: 48, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !18, file: !1, line: 48, column: 6)
!79 = !DILocation(line: 48, column: 6, scope: !18)
!80 = !DILocation(line: 49, column: 16, scope: !78)
!81 = !DILocation(line: 49, column: 15, scope: !78)
!82 = !DILocation(line: 49, column: 4, scope: !78)
!83 = !DILocation(line: 50, column: 15, scope: !47)
!84 = !DILocation(line: 50, column: 13, scope: !18)
!85 = !DILocation(line: 51, column: 7, scope: !45)
!86 = !DILocation(line: 51, column: 50, scope: !46)
!87 = !DILocation(line: 52, column: 15, scope: !88)
!88 = distinct !DILexicalBlock(scope: !18, file: !1, line: 52, column: 13)
!89 = !DILocation(line: 52, column: 13, scope: !18)
!90 = !DILocation(line: 53, column: 18, scope: !88)
!91 = !DILocation(line: 53, column: 17, scope: !88)
!92 = !DILocation(line: 53, column: 6, scope: !88)
!93 = !DILocation(line: 55, column: 2, scope: !49)
!94 = !DILocation(line: 56, column: 17, scope: !18)
!95 = !DILocation(line: 56, column: 9, scope: !18)
!96 = !DILocation(line: 0, scope: !18)
!97 = !DILocation(line: 57, column: 1, scope: !18)
