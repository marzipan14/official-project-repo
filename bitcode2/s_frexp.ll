; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_frexp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_frexp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @frexp(double, i32* nocapture) local_unnamed_addr #0 !dbg !12 {
  %3 = bitcast double %0 to i64, !dbg !47
  %4 = lshr i64 %3, 32, !dbg !47
  %5 = trunc i64 %4 to i32, !dbg !47
  %6 = and i32 %5, 2147483647, !dbg !49
  store i32 0, i32* %1, align 4, !dbg !51, !tbaa !52
  %7 = icmp ugt i32 %6, 2146435071, !dbg !56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %7, label %34, label %8, !dbg !58

; <label>:8:                                      ; preds = %2
  %9 = trunc i64 %3 to i32, !dbg !47
  %10 = or i32 %6, %9, !dbg !60
  %11 = icmp eq i32 %10, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %11, label %34, label %12, !dbg !62

; <label>:12:                                     ; preds = %8
  %13 = icmp ult i32 %6, 1048576, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %13, label %14, label %20, !dbg !64

; <label>:14:                                     ; preds = %12
  %15 = fmul double %0, 0x4350000000000000, !dbg !65
  %16 = bitcast double %15 to i64, !dbg !66
  %17 = lshr i64 %16, 32, !dbg !66
  %18 = trunc i64 %17 to i32, !dbg !66
  %19 = and i32 %18, 2147483647, !dbg !67
  store i32 -54, i32* %1, align 4, !dbg !68, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br label %20, !dbg !69

; <label>:20:                                     ; preds = %14, %12
  %21 = phi i64 [ %16, %14 ], [ %3, %12 ], !dbg !70
  %22 = phi i32 [ -54, %14 ], [ 0, %12 ], !dbg !71
  %23 = phi i32 [ %19, %14 ], [ %6, %12 ], !dbg !72
  %24 = phi i64 [ %17, %14 ], [ %4, %12 ], !dbg !73
  %25 = lshr i32 %23, 20, !dbg !74
  %26 = add nsw i32 %25, -1022, !dbg !75
  %27 = add nsw i32 %26, %22, !dbg !71
  store i32 %27, i32* %1, align 4, !dbg !71, !tbaa !52
  %28 = shl nuw i64 %24, 32, !dbg !70
  %29 = and i64 %28, -9218868441522372608, !dbg !70
  %30 = and i64 %21, 4294967295, !dbg !70
  %31 = or i64 %29, %30, !dbg !70
  %32 = or i64 %31, 4602678819172646912, !dbg !70
  %33 = bitcast i64 %32 to double, !dbg !70
  br label %34, !dbg !76

; <label>:34:                                     ; preds = %2, %8, %20
  %35 = phi double [ %33, %20 ], [ %0, %8 ], [ %0, %2 ], !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  ret double %35, !dbg !78
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/s_frexp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 4850376798678024192, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two54", scope: !0, file: !1, line: 88, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "frexp", scope: !1, file: !1, line: 91, type: !13, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !23, !24, !25, !39, !43}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 91, type: !7)
!19 = !DILocalVariable(name: "eptr", arg: 2, scope: !12, file: !1, line: 91, type: !15)
!20 = !DILocalVariable(name: "hx", scope: !12, file: !1, line: 97, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !16)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DILocalVariable(name: "ix", scope: !12, file: !1, line: 97, type: !21)
!24 = !DILocalVariable(name: "lx", scope: !12, file: !1, line: 97, type: !21)
!25 = !DILocalVariable(name: "ew_u", scope: !26, file: !1, line: 98, type: !27)
!26 = distinct !DILexicalBlock(scope: !12, file: !1, line: 98, column: 2)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !28, line: 278, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 270, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !29, file: !28, line: 272, baseType: !7, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !29, file: !28, line: 277, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !28, line: 273, size: 64, elements: !34)
!34 = !{!35, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !33, file: !28, line: 275, baseType: !36, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !37)
!37 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !33, file: !28, line: 276, baseType: !36, size: 32, offset: 32)
!39 = !DILocalVariable(name: "gh_u", scope: !40, file: !1, line: 104, type: !27)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 104, column: 6)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 102, column: 21)
!42 = distinct !DILexicalBlock(scope: !12, file: !1, line: 102, column: 6)
!43 = !DILocalVariable(name: "sh_u", scope: !44, file: !1, line: 110, type: !27)
!44 = distinct !DILexicalBlock(scope: !12, file: !1, line: 110, column: 2)
!45 = !DILocation(line: 91, column: 22, scope: !12)
!46 = !DILocation(line: 91, column: 30, scope: !12)
!47 = !DILocation(line: 98, column: 2, scope: !26)
!48 = !DILocation(line: 97, column: 12, scope: !12)
!49 = !DILocation(line: 99, column: 17, scope: !12)
!50 = !DILocation(line: 97, column: 16, scope: !12)
!51 = !DILocation(line: 100, column: 8, scope: !12)
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 101, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !12, file: !1, line: 101, column: 5)
!58 = !DILocation(line: 101, column: 19, scope: !57)
!59 = !DILocation(line: 97, column: 20, scope: !12)
!60 = !DILocation(line: 101, column: 25, scope: !57)
!61 = !DILocation(line: 101, column: 29, scope: !57)
!62 = !DILocation(line: 101, column: 5, scope: !12)
!63 = !DILocation(line: 102, column: 8, scope: !42)
!64 = !DILocation(line: 102, column: 6, scope: !12)
!65 = !DILocation(line: 103, column: 8, scope: !41)
!66 = !DILocation(line: 104, column: 6, scope: !40)
!67 = !DILocation(line: 105, column: 13, scope: !41)
!68 = !DILocation(line: 106, column: 12, scope: !41)
!69 = !DILocation(line: 107, column: 2, scope: !41)
!70 = !DILocation(line: 110, column: 2, scope: !44)
!71 = !DILocation(line: 108, column: 8, scope: !12)
!72 = !DILocation(line: 0, scope: !12)
!73 = !DILocation(line: 0, scope: !26)
!74 = !DILocation(line: 108, column: 14, scope: !12)
!75 = !DILocation(line: 108, column: 19, scope: !12)
!76 = !DILocation(line: 111, column: 2, scope: !12)
!77 = !DILocation(line: 0, scope: !57)
!78 = !DILocation(line: 112, column: 1, scope: !12)
