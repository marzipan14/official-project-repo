; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_round.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_round.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @roundf(float) local_unnamed_addr #0 !dbg !12 {
  %2 = bitcast float %0 to i32, !dbg !36
  %3 = lshr i32 %2, 23, !dbg !38
  %4 = and i32 %3, 255, !dbg !38
  %5 = add nsw i32 %4, -127, !dbg !39
  %6 = icmp ult i32 %4, 150, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %6, label %7, label %24, !dbg !42

; <label>:7:                                      ; preds = %1
  %8 = icmp ult i32 %4, 127, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  br i1 %8, label %9, label %14, !dbg !44

; <label>:9:                                      ; preds = %7
  %10 = and i32 %2, -2147483648, !dbg !45
  %11 = icmp eq i32 %5, -1, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br i1 %11, label %12, label %30, !dbg !49

; <label>:12:                                     ; preds = %9
  %13 = or i32 %10, 1065353216, !dbg !50
  br label %28, !dbg !51

; <label>:14:                                     ; preds = %7
  %15 = lshr i32 8388607, %5, !dbg !52
  %16 = and i32 %15, %2, !dbg !54
  %17 = icmp eq i32 %16, 0, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !57
  br i1 %17, label %23, label %18, !dbg !57

; <label>:18:                                     ; preds = %14
  %19 = lshr i32 4194304, %5, !dbg !58
  %20 = add i32 %19, %2, !dbg !59
  %21 = ashr i32 -8388608, %5, !dbg !60
  %22 = and i32 %20, %21, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br label %28

; <label>:23:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !63
  br label %33

; <label>:24:                                     ; preds = %1
  %25 = icmp eq i32 %5, 128, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  %26 = fadd float %0, %0, !dbg !68
  %27 = select i1 %25, float %26, float %0, !dbg !67
  br label %33, !dbg !67

; <label>:28:                                     ; preds = %12, %18
  %29 = phi i32 [ %22, %18 ], [ %13, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %30, !dbg !69

; <label>:30:                                     ; preds = %28, %9
  %31 = phi i32 [ %10, %9 ], [ %29, %28 ], !dbg !70
  %32 = bitcast i32 %31 to float, !dbg !69
  br label %33, !dbg !71

; <label>:33:                                     ; preds = %24, %23, %30
  %34 = phi float [ %32, %30 ], [ %0, %23 ], [ %27, %24 ], !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  ret float %34, !dbg !73
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_round.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !6, line: 79, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "roundf", scope: !1, file: !1, line: 15, type: !13, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !{!17, !18, !19, !20, !28, !33}
!17 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 15, type: !15)
!18 = !DILocalVariable(name: "w", scope: !12, file: !1, line: 21, type: !5)
!19 = !DILocalVariable(name: "exponent_less_127", scope: !12, file: !1, line: 23, type: !4)
!20 = !DILocalVariable(name: "gf_u", scope: !21, file: !1, line: 25, type: !22)
!21 = distinct !DILexicalBlock(scope: !12, file: !1, line: 25, column: 3)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !23, line: 347, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 343, size: 32, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !24, file: !23, line: 345, baseType: !15, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !24, file: !23, line: 346, baseType: !5, size: 32)
!28 = !DILocalVariable(name: "exponent_mask", scope: !29, file: !1, line: 41, type: !7)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 40, column: 9)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 32, column: 11)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 31, column: 5)
!32 = distinct !DILexicalBlock(scope: !12, file: !1, line: 30, column: 7)
!33 = !DILocalVariable(name: "sf_u", scope: !34, file: !1, line: 58, type: !22)
!34 = distinct !DILexicalBlock(scope: !12, file: !1, line: 58, column: 3)
!35 = !DILocation(line: 15, column: 21, scope: !12)
!36 = !DILocation(line: 25, column: 3, scope: !21)
!37 = !DILocation(line: 21, column: 14, scope: !12)
!38 = !DILocation(line: 28, column: 46, scope: !12)
!39 = !DILocation(line: 28, column: 53, scope: !12)
!40 = !DILocation(line: 23, column: 7, scope: !12)
!41 = !DILocation(line: 30, column: 25, scope: !32)
!42 = !DILocation(line: 30, column: 7, scope: !12)
!43 = !DILocation(line: 32, column: 29, scope: !30)
!44 = !DILocation(line: 32, column: 11, scope: !31)
!45 = !DILocation(line: 34, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !30, file: !1, line: 33, column: 9)
!47 = !DILocation(line: 35, column: 33, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !1, line: 35, column: 15)
!49 = !DILocation(line: 35, column: 15, scope: !46)
!50 = !DILocation(line: 37, column: 15, scope: !48)
!51 = !DILocation(line: 37, column: 13, scope: !48)
!52 = !DILocation(line: 41, column: 51, scope: !29)
!53 = !DILocation(line: 41, column: 24, scope: !29)
!54 = !DILocation(line: 42, column: 18, scope: !55)
!55 = distinct !DILexicalBlock(scope: !29, file: !1, line: 42, column: 15)
!56 = !DILocation(line: 42, column: 35, scope: !55)
!57 = !DILocation(line: 42, column: 15, scope: !29)
!58 = !DILocation(line: 46, column: 27, scope: !29)
!59 = !DILocation(line: 46, column: 13, scope: !29)
!60 = !DILocation(line: 47, column: 16, scope: !29)
!61 = !DILocation(line: 47, column: 13, scope: !29)
!62 = !DILocation(line: 48, column: 9, scope: !30)
!63 = !DILocation(line: 44, column: 13, scope: !55)
!64 = !DILocation(line: 52, column: 29, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 52, column: 11)
!66 = distinct !DILexicalBlock(scope: !32, file: !1, line: 51, column: 5)
!67 = !DILocation(line: 52, column: 11, scope: !66)
!68 = !DILocation(line: 54, column: 18, scope: !65)
!69 = !DILocation(line: 58, column: 3, scope: !34)
!70 = !DILocation(line: 0, scope: !21)
!71 = !DILocation(line: 59, column: 3, scope: !12)
!72 = !DILocation(line: 0, scope: !65)
!73 = !DILocation(line: 60, column: 1, scope: !12)
