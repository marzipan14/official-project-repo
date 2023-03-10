; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_frexp.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_frexp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local float @frexpf(float, i32* nocapture) local_unnamed_addr #0 !dbg !12 {
  %3 = bitcast float %0 to i32, !dbg !42
  %4 = and i32 %3, 2147483647, !dbg !44
  store i32 0, i32* %1, align 4, !dbg !46, !tbaa !47
  %5 = add nsw i32 %4, -1, !dbg !51
  %6 = icmp ugt i32 %5, 2139095038, !dbg !51
  br i1 %6, label %23, label %7, !dbg !51

; <label>:7:                                      ; preds = %2
  %8 = icmp ult i32 %4, 8388608, !dbg !53
  br i1 %8, label %9, label %13, !dbg !54

; <label>:9:                                      ; preds = %7
  %10 = fmul float %0, 0x4180000000000000, !dbg !55
  %11 = bitcast float %10 to i32, !dbg !56
  %12 = and i32 %11, 2147483647, !dbg !57
  store i32 -25, i32* %1, align 4, !dbg !58, !tbaa !47
  br label %13, !dbg !59

; <label>:13:                                     ; preds = %9, %7
  %14 = phi i32 [ -25, %9 ], [ 0, %7 ], !dbg !60
  %15 = phi i32 [ %12, %9 ], [ %4, %7 ], !dbg !61
  %16 = phi i32 [ %11, %9 ], [ %3, %7 ], !dbg !62
  %17 = lshr i32 %15, 23, !dbg !63
  %18 = add nsw i32 %17, -126, !dbg !64
  %19 = add nsw i32 %18, %14, !dbg !60
  store i32 %19, i32* %1, align 4, !dbg !60, !tbaa !47
  %20 = and i32 %16, -2139095041, !dbg !65
  %21 = or i32 %20, 1056964608, !dbg !66
  %22 = bitcast i32 %21 to float, !dbg !67
  br label %23, !dbg !68

; <label>:23:                                     ; preds = %2, %13
  %24 = phi float [ %22, %13 ], [ %0, %2 ], !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  ret float %24, !dbg !69
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/math/sf_frexp.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression(DW_OP_constu, 1275068416, DW_OP_stack_value))
!5 = distinct !DIGlobalVariable(name: "two25", scope: !0, file: !1, line: 23, type: !6, isLocal: true, isDefinition: true)
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "frexpf", scope: !1, file: !1, line: 26, type: !13, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !7, !15}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !23, !24, !34, !38}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 26, type: !7)
!19 = !DILocalVariable(name: "eptr", arg: 2, scope: !12, file: !1, line: 26, type: !15)
!20 = !DILocalVariable(name: "hx", scope: !12, file: !1, line: 32, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !22, line: 77, baseType: !16)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DILocalVariable(name: "ix", scope: !12, file: !1, line: 32, type: !21)
!24 = !DILocalVariable(name: "gf_u", scope: !25, file: !1, line: 33, type: !26)
!25 = distinct !DILexicalBlock(scope: !12, file: !1, line: 33, column: 2)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !27, line: 347, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !27, line: 343, size: 32, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !28, file: !27, line: 345, baseType: !7, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !28, file: !27, line: 346, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !22, line: 79, baseType: !33)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DILocalVariable(name: "gf_u", scope: !35, file: !1, line: 39, type: !26)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 39, column: 6)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 37, column: 34)
!37 = distinct !DILexicalBlock(scope: !12, file: !1, line: 37, column: 6)
!38 = !DILocalVariable(name: "sf_u", scope: !39, file: !1, line: 45, type: !26)
!39 = distinct !DILexicalBlock(scope: !12, file: !1, line: 45, column: 2)
!40 = !DILocation(line: 26, column: 21, scope: !12)
!41 = !DILocation(line: 26, column: 29, scope: !12)
!42 = !DILocation(line: 33, column: 2, scope: !25)
!43 = !DILocation(line: 32, column: 12, scope: !12)
!44 = !DILocation(line: 34, column: 17, scope: !12)
!45 = !DILocation(line: 32, column: 16, scope: !12)
!46 = !DILocation(line: 35, column: 8, scope: !12)
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !DILocation(line: 36, column: 29, scope: !52)
!52 = distinct !DILexicalBlock(scope: !12, file: !1, line: 36, column: 5)
!53 = !DILocation(line: 37, column: 6, scope: !37)
!54 = !DILocation(line: 37, column: 6, scope: !12)
!55 = !DILocation(line: 38, column: 8, scope: !36)
!56 = !DILocation(line: 39, column: 6, scope: !35)
!57 = !DILocation(line: 40, column: 13, scope: !36)
!58 = !DILocation(line: 41, column: 12, scope: !36)
!59 = !DILocation(line: 42, column: 2, scope: !36)
!60 = !DILocation(line: 43, column: 8, scope: !12)
!61 = !DILocation(line: 0, scope: !12)
!62 = !DILocation(line: 0, scope: !25)
!63 = !DILocation(line: 43, column: 14, scope: !12)
!64 = !DILocation(line: 43, column: 19, scope: !12)
!65 = !DILocation(line: 44, column: 10, scope: !12)
!66 = !DILocation(line: 44, column: 22, scope: !12)
!67 = !DILocation(line: 45, column: 2, scope: !39)
!68 = !DILocation(line: 46, column: 2, scope: !12)
!69 = !DILocation(line: 47, column: 1, scope: !12)
