; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_logb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_logb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind readnone
define dso_local float @logbf(float) local_unnamed_addr #0 !dbg !9 {
  %2 = bitcast float %0 to i32, !dbg !35
  %3 = and i32 %2, 2147483647, !dbg !37
  %4 = icmp eq i32 %3, 0, !dbg !38
  br i1 %4, label %26, label %5, !dbg !39

; <label>:5:                                      ; preds = %1
  %6 = icmp ult i32 %3, 8388608, !dbg !40
  br i1 %6, label %7, label %18, !dbg !42

; <label>:7:                                      ; preds = %5
  %8 = shl i32 %2, 8, !dbg !44
  %9 = icmp sgt i32 %8, 0, !dbg !47
  br i1 %9, label %10, label %26, !dbg !49

; <label>:10:                                     ; preds = %7, %10
  %11 = phi i32 [ %14, %10 ], [ %8, %7 ]
  %12 = phi i32 [ %13, %10 ], [ -126, %7 ]
  %13 = add nsw i32 %12, -1, !dbg !50
  %14 = shl i32 %11, 1, !dbg !51
  %15 = icmp sgt i32 %14, 0, !dbg !47
  br i1 %15, label %10, label %16, !dbg !49, !llvm.loop !52

; <label>:16:                                     ; preds = %10
  %17 = sitofp i32 %13 to float, !dbg !54
  br label %26, !dbg !54

; <label>:18:                                     ; preds = %5
  %19 = icmp eq i32 %3, 2139095040, !dbg !55
  br i1 %19, label %26, label %20, !dbg !57

; <label>:20:                                     ; preds = %18
  %21 = icmp ugt i32 %3, 2139095040, !dbg !58
  br i1 %21, label %26, label %22, !dbg !60

; <label>:22:                                     ; preds = %20
  %23 = lshr i32 %3, 23, !dbg !61
  %24 = add nsw i32 %23, -127, !dbg !62
  %25 = sitofp i32 %24 to float, !dbg !63
  br label %26, !dbg !64

; <label>:26:                                     ; preds = %7, %16, %1, %20, %18, %22
  %27 = phi float [ %25, %22 ], [ 0x7FF0000000000000, %18 ], [ %0, %20 ], [ 0xFFF0000000000000, %1 ], [ -1.260000e+02, %7 ], [ %17, %16 ], !dbg !65
  ret float %27, !dbg !66
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_logb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "logbf", scope: !1, file: !1, line: 25, type: !10, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !4}
!12 = !{!13, !14, !18, !19, !29, !32}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !9, file: !1, line: 25, type: !4)
!14 = !DILocalVariable(name: "hx", scope: !9, file: !1, line: 31, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "ix", scope: !9, file: !1, line: 31, type: !15)
!19 = !DILocalVariable(name: "gf_u", scope: !20, file: !1, line: 33, type: !21)
!20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 2)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !22, line: 347, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 343, size: 32, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 345, baseType: !4, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !23, file: !22, line: 346, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "xx", scope: !30, file: !1, line: 36, type: !4)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 35, column: 29)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 35, column: 5)
!32 = !DILocalVariable(name: "sf_u", scope: !33, file: !1, line: 38, type: !21)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 3)
!34 = !DILocation(line: 25, column: 13, scope: !9)
!35 = !DILocation(line: 33, column: 2, scope: !20)
!36 = !DILocation(line: 31, column: 12, scope: !9)
!37 = !DILocation(line: 34, column: 5, scope: !9)
!38 = !DILocation(line: 35, column: 5, scope: !31)
!39 = !DILocation(line: 35, column: 5, scope: !9)
!40 = !DILocation(line: 41, column: 5, scope: !41)
!41 = distinct !DILexicalBlock(scope: !9, file: !1, line: 41, column: 5)
!42 = !DILocation(line: 41, column: 5, scope: !9)
!43 = !DILocation(line: 31, column: 15, scope: !9)
!44 = !DILocation(line: 42, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 42, column: 6)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 41, column: 33)
!47 = !DILocation(line: 42, column: 31, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 42, column: 6)
!49 = !DILocation(line: 42, column: 6, scope: !45)
!50 = !DILocation(line: 42, column: 46, scope: !48)
!51 = !DILocation(line: 42, column: 37, scope: !48)
!52 = distinct !{!52, !49, !53}
!53 = !DILocation(line: 42, column: 48, scope: !45)
!54 = !DILocation(line: 43, column: 13, scope: !46)
!55 = !DILocation(line: 45, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !41, file: !1, line: 45, column: 11)
!57 = !DILocation(line: 45, column: 11, scope: !41)
!58 = !DILocation(line: 46, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 46, column: 11)
!60 = !DILocation(line: 46, column: 11, scope: !56)
!61 = !DILocation(line: 47, column: 26, scope: !59)
!62 = !DILocation(line: 47, column: 31, scope: !59)
!63 = !DILocation(line: 47, column: 14, scope: !59)
!64 = !DILocation(line: 47, column: 7, scope: !59)
!65 = !DILocation(line: 0, scope: !59)
!66 = !DILocation(line: 48, column: 1, scope: !9)
