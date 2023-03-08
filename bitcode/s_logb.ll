; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_logb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_logb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local double @logb(double) local_unnamed_addr #0 !dbg !9 {
  %2 = bitcast double %0 to i64, !dbg !42
  %3 = lshr i64 %2, 32, !dbg !42
  %4 = trunc i64 %3 to i32, !dbg !42
  %5 = trunc i64 %2 to i32, !dbg !42
  %6 = and i32 %4, 2147483647, !dbg !45
  %7 = icmp ult i32 %6, 1048576, !dbg !46
  br i1 %7, label %8, label %41, !dbg !47

; <label>:8:                                      ; preds = %1
  %9 = or i32 %6, %5, !dbg !48
  %10 = icmp eq i32 %9, 0, !dbg !49
  br i1 %10, label %11, label %18, !dbg !50

; <label>:11:                                     ; preds = %8
  %12 = zext i32 %6 to i64, !dbg !51
  %13 = shl nuw nsw i64 %12, 32, !dbg !51
  %14 = and i64 %2, 4294967295, !dbg !51
  %15 = or i64 %13, %14, !dbg !51
  %16 = bitcast i64 %15 to double, !dbg !51
  %17 = fdiv double -1.000000e+00, %16, !dbg !53
  br label %52

; <label>:18:                                     ; preds = %8
  %19 = icmp eq i32 %6, 0, !dbg !54
  br i1 %19, label %20, label %28, !dbg !56

; <label>:20:                                     ; preds = %18
  %21 = icmp sgt i32 %5, 0, !dbg !58
  br i1 %21, label %22, label %38, !dbg !62

; <label>:22:                                     ; preds = %20, %22
  %23 = phi i32 [ %25, %22 ], [ -1043, %20 ]
  %24 = phi i32 [ %26, %22 ], [ %5, %20 ]
  %25 = add nsw i32 %23, -1, !dbg !63
  %26 = shl i32 %24, 1, !dbg !64
  %27 = icmp sgt i32 %26, 0, !dbg !58
  br i1 %27, label %22, label %38, !dbg !62, !llvm.loop !65

; <label>:28:                                     ; preds = %18
  %29 = shl nuw nsw i64 %3, 11, !dbg !67
  %30 = trunc i64 %29 to i32, !dbg !67
  %31 = icmp sgt i32 %30, 0, !dbg !70
  br i1 %31, label %32, label %38, !dbg !72

; <label>:32:                                     ; preds = %28, %32
  %33 = phi i32 [ %36, %32 ], [ %30, %28 ]
  %34 = phi i32 [ %35, %32 ], [ -1022, %28 ]
  %35 = add nsw i32 %34, -1, !dbg !73
  %36 = shl i32 %33, 1, !dbg !74
  %37 = icmp sgt i32 %36, 0, !dbg !70
  br i1 %37, label %32, label %38, !dbg !72, !llvm.loop !75

; <label>:38:                                     ; preds = %32, %22, %28, %20
  %39 = phi i32 [ -1043, %20 ], [ -1022, %28 ], [ %25, %22 ], [ %35, %32 ], !dbg !77
  %40 = sitofp i32 %39 to double, !dbg !78
  br label %52, !dbg !79

; <label>:41:                                     ; preds = %1
  %42 = icmp ult i32 %6, 2146435072, !dbg !80
  br i1 %42, label %43, label %47, !dbg !82

; <label>:43:                                     ; preds = %41
  %44 = lshr i32 %6, 20, !dbg !83
  %45 = add nsw i32 %44, -1023, !dbg !84
  %46 = sitofp i32 %45 to double, !dbg !85
  br label %52, !dbg !86

; <label>:47:                                     ; preds = %41
  %48 = icmp ne i32 %6, 2146435072, !dbg !87
  %49 = icmp ne i32 %5, 0, !dbg !89
  %50 = or i1 %49, %48, !dbg !90
  %51 = select i1 %50, double %0, double 0x7FF0000000000000, !dbg !91
  br label %52, !dbg !91

; <label>:52:                                     ; preds = %47, %43, %38, %11
  %53 = phi double [ %17, %11 ], [ %40, %38 ], [ %46, %43 ], [ %51, %47 ], !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  ret double %53, !dbg !93
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_logb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "logb", scope: !1, file: !1, line: 80, type: !10, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !{!13, !14, !18, !19, !20, !34, !39}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 80, type: !4)
!14 = !DILocalVariable(name: "hx", scope: !9, file: !1, line: 86, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "lx", scope: !9, file: !1, line: 86, type: !15)
!19 = !DILocalVariable(name: "ix", scope: !9, file: !1, line: 86, type: !15)
!20 = !DILocalVariable(name: "ew_u", scope: !21, file: !1, line: 88, type: !22)
!21 = distinct !DILexicalBlock(scope: !9, file: !1, line: 88, column: 2)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !23, line: 278, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!24 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !23, line: 270, size: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !24, file: !23, line: 272, baseType: !4, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !24, file: !23, line: 277, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !23, line: 273, size: 64, elements: !29)
!29 = !{!30, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !28, file: !23, line: 275, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !28, file: !23, line: 276, baseType: !31, size: 32, offset: 32)
!34 = !DILocalVariable(name: "xx", scope: !35, file: !1, line: 92, type: !4)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 91, column: 22)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 91, column: 9)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 90, column: 20)
!38 = distinct !DILexicalBlock(scope: !9, file: !1, line: 90, column: 5)
!39 = !DILocalVariable(name: "iw_u", scope: !40, file: !1, line: 94, type: !22)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 94, column: 3)
!41 = !DILocation(line: 80, column: 13, scope: !9)
!42 = !DILocation(line: 88, column: 2, scope: !21)
!43 = !DILocation(line: 86, column: 12, scope: !9)
!44 = !DILocation(line: 86, column: 15, scope: !9)
!45 = !DILocation(line: 89, column: 5, scope: !9)
!46 = !DILocation(line: 90, column: 7, scope: !38)
!47 = !DILocation(line: 90, column: 5, scope: !9)
!48 = !DILocation(line: 91, column: 12, scope: !36)
!49 = !DILocation(line: 91, column: 16, scope: !36)
!50 = !DILocation(line: 91, column: 9, scope: !37)
!51 = !DILocation(line: 94, column: 3, scope: !40)
!52 = !DILocation(line: 92, column: 11, scope: !35)
!53 = !DILocation(line: 95, column: 13, scope: !35)
!54 = !DILocation(line: 98, column: 8, scope: !55)
!55 = distinct !DILexicalBlock(scope: !36, file: !1, line: 98, column: 6)
!56 = !DILocation(line: 98, column: 6, scope: !36)
!57 = !DILocation(line: 86, column: 18, scope: !9)
!58 = !DILocation(line: 99, column: 26, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 99, column: 7)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 99, column: 7)
!61 = distinct !DILexicalBlock(scope: !55, file: !1, line: 98, column: 13)
!62 = !DILocation(line: 99, column: 7, scope: !60)
!63 = !DILocation(line: 99, column: 41, scope: !59)
!64 = !DILocation(line: 99, column: 32, scope: !59)
!65 = distinct !{!65, !62, !66}
!66 = !DILocation(line: 99, column: 43, scope: !60)
!67 = !DILocation(line: 101, column: 25, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 101, column: 7)
!69 = distinct !DILexicalBlock(scope: !55, file: !1, line: 100, column: 10)
!70 = !DILocation(line: 101, column: 34, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 101, column: 7)
!72 = !DILocation(line: 101, column: 7, scope: !68)
!73 = !DILocation(line: 101, column: 49, scope: !71)
!74 = !DILocation(line: 101, column: 40, scope: !71)
!75 = distinct !{!75, !72, !76}
!76 = !DILocation(line: 101, column: 51, scope: !68)
!77 = !DILocation(line: 0, scope: !68)
!78 = !DILocation(line: 103, column: 13, scope: !37)
!79 = !DILocation(line: 103, column: 6, scope: !37)
!80 = !DILocation(line: 105, column: 13, scope: !81)
!81 = distinct !DILexicalBlock(scope: !38, file: !1, line: 105, column: 11)
!82 = !DILocation(line: 105, column: 11, scope: !38)
!83 = !DILocation(line: 105, column: 36, scope: !81)
!84 = !DILocation(line: 105, column: 41, scope: !81)
!85 = !DILocation(line: 105, column: 33, scope: !81)
!86 = !DILocation(line: 105, column: 26, scope: !81)
!87 = !DILocation(line: 106, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !81, file: !1, line: 106, column: 11)
!89 = !DILocation(line: 106, column: 28, scope: !88)
!90 = !DILocation(line: 106, column: 25, scope: !88)
!91 = !DILocation(line: 106, column: 33, scope: !88)
!92 = !DILocation(line: 0, scope: !88)
!93 = !DILocation(line: 108, column: 1, scope: !9)
