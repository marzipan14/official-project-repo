; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_ilogb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_ilogb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @ilogb(double) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast double %0 to i64, !dbg !34
  %3 = lshr i64 %2, 32, !dbg !34
  %4 = trunc i64 %3 to i32, !dbg !34
  %5 = trunc i64 %2 to i32, !dbg !34
  %6 = and i32 %4, 2147483647, !dbg !37
  %7 = icmp ult i32 %6, 1048576, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %7, label %8, label %31, !dbg !40

; <label>:8:                                      ; preds = %1
  %9 = or i32 %6, %5, !dbg !41
  %10 = icmp eq i32 %9, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %10, label %36, label %11, !dbg !45

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i32 %6, 0, !dbg !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %12, label %13, label %21, !dbg !48

; <label>:13:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !50
  %14 = icmp sgt i32 %5, 0, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %14, label %15, label %36, !dbg !55

; <label>:15:                                     ; preds = %13, %15
  %16 = phi i32 [ %18, %15 ], [ -1043, %13 ]
  %17 = phi i32 [ %19, %15 ], [ %5, %13 ]
  %18 = add nsw i32 %16, -1, !dbg !56
  %19 = shl i32 %17, 1, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  %20 = icmp sgt i32 %19, 0, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  br i1 %20, label %15, label %36, !dbg !55, !llvm.loop !59

; <label>:21:                                     ; preds = %11
  %22 = shl nuw nsw i64 %3, 11, !dbg !61
  %23 = trunc i64 %22 to i32, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  %24 = icmp sgt i32 %23, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %24, label %25, label %36, !dbg !67

; <label>:25:                                     ; preds = %21, %25
  %26 = phi i32 [ %28, %25 ], [ -1022, %21 ]
  %27 = phi i32 [ %29, %25 ], [ %23, %21 ]
  %28 = add nsw i32 %26, -1, !dbg !68
  %29 = shl i32 %27, 1, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  %30 = icmp sgt i32 %29, 0, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %30, label %25, label %36, !dbg !67, !llvm.loop !71

; <label>:31:                                     ; preds = %1
  %32 = icmp ult i32 %6, 2146435072, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %32, label %33, label %36, !dbg !75

; <label>:33:                                     ; preds = %31
  %34 = lshr i32 %6, 20, !dbg !76
  %35 = add nsw i32 %34, -1023, !dbg !77
  br label %36, !dbg !78

; <label>:36:                                     ; preds = %25, %15, %31, %13, %21, %8, %33
  %37 = phi i32 [ %35, %33 ], [ -2147483647, %8 ], [ -1043, %13 ], [ -1022, %21 ], [ 2147483647, %31 ], [ %18, %15 ], [ %28, %25 ], !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  ret i32 %37, !dbg !81
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_ilogb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "ilogb", scope: !1, file: !1, line: 78, type: !8, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !14, !17, !18, !19}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 78, type: !11)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 84, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !10)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DILocalVariable(name: "lx", scope: !7, file: !1, line: 84, type: !15)
!18 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 84, type: !15)
!19 = !DILocalVariable(name: "ew_u", scope: !20, file: !1, line: 86, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 86, column: 2)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !22, line: 278, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 270, size: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 272, baseType: !11, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !23, file: !22, line: 277, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !23, file: !22, line: 273, size: 64, elements: !28)
!28 = !{!29, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !27, file: !22, line: 275, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !31)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !27, file: !22, line: 276, baseType: !30, size: 32, offset: 32)
!33 = !DILocation(line: 78, column: 19, scope: !7)
!34 = !DILocation(line: 86, column: 2, scope: !20)
!35 = !DILocation(line: 84, column: 12, scope: !7)
!36 = !DILocation(line: 84, column: 15, scope: !7)
!37 = !DILocation(line: 87, column: 5, scope: !7)
!38 = !DILocation(line: 88, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 88, column: 5)
!40 = !DILocation(line: 88, column: 5, scope: !7)
!41 = !DILocation(line: 89, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 89, column: 9)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 88, column: 20)
!44 = !DILocation(line: 89, column: 16, scope: !42)
!45 = !DILocation(line: 89, column: 9, scope: !43)
!46 = !DILocation(line: 92, column: 8, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 92, column: 6)
!48 = !DILocation(line: 92, column: 6, scope: !42)
!49 = !DILocation(line: 84, column: 18, scope: !7)
!50 = !DILocation(line: 93, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 93, column: 7)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 92, column: 13)
!53 = !DILocation(line: 93, column: 26, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 93, column: 7)
!55 = !DILocation(line: 93, column: 7, scope: !51)
!56 = !DILocation(line: 93, column: 41, scope: !54)
!57 = !DILocation(line: 93, column: 32, scope: !54)
!58 = !DILocation(line: 93, column: 7, scope: !54)
!59 = distinct !{!59, !55, !60}
!60 = !DILocation(line: 93, column: 43, scope: !51)
!61 = !DILocation(line: 95, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 95, column: 7)
!63 = distinct !DILexicalBlock(scope: !47, file: !1, line: 94, column: 10)
!64 = !DILocation(line: 95, column: 12, scope: !62)
!65 = !DILocation(line: 95, column: 34, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 95, column: 7)
!67 = !DILocation(line: 95, column: 7, scope: !62)
!68 = !DILocation(line: 95, column: 49, scope: !66)
!69 = !DILocation(line: 95, column: 40, scope: !66)
!70 = !DILocation(line: 95, column: 7, scope: !66)
!71 = distinct !{!71, !67, !72}
!72 = !DILocation(line: 95, column: 51, scope: !62)
!73 = !DILocation(line: 99, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !39, file: !1, line: 99, column: 11)
!75 = !DILocation(line: 99, column: 11, scope: !39)
!76 = !DILocation(line: 99, column: 36, scope: !74)
!77 = !DILocation(line: 99, column: 41, scope: !74)
!78 = !DILocation(line: 99, column: 26, scope: !74)
!79 = !DILocation(line: 0, scope: !74)
!80 = !DILocation(line: 0, scope: !42)
!81 = !DILocation(line: 104, column: 1, scope: !7)
