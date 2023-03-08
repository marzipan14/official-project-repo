; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fpclassify.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fpclassify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__fpclassifyd(double) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast double %0 to i64, !dbg !32
  %3 = lshr i64 %2, 32, !dbg !32
  %4 = trunc i64 %3 to i32, !dbg !32
  %5 = trunc i64 %2 to i32, !dbg !32
  %6 = icmp eq i32 %5, 0, !dbg !35
  %7 = or i64 %3, %2, !dbg !37
  %8 = trunc i64 %7 to i32, !dbg !37
  %9 = icmp eq i32 %8, 0, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !37
  br i1 %9, label %32, label %10, !dbg !37

; <label>:10:                                     ; preds = %1
  %11 = icmp eq i32 %4, -2147483648, !dbg !38
  %12 = and i1 %6, %11, !dbg !39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br i1 %12, label %32, label %13, !dbg !39

; <label>:13:                                     ; preds = %10
  %14 = add i32 %4, -1048576, !dbg !40
  %15 = icmp ult i32 %14, 2145386496, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  br i1 %15, label %32, label %16, !dbg !40

; <label>:16:                                     ; preds = %13
  %17 = add i32 %4, 2146435072, !dbg !42
  %18 = icmp ult i32 %17, 2145386496, !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  br i1 %18, label %32, label %19, !dbg !42

; <label>:19:                                     ; preds = %16
  %20 = icmp ult i32 %4, 1048576, !dbg !43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  br i1 %20, label %32, label %21, !dbg !45

; <label>:21:                                     ; preds = %19
  %22 = icmp slt i32 %4, 0, !dbg !46
  %23 = icmp ult i32 %4, -2146435072, !dbg !47
  %24 = and i1 %22, %23, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br i1 %24, label %32, label %25, !dbg !48

; <label>:25:                                     ; preds = %21
  %26 = icmp eq i32 %4, 2146435072, !dbg !49
  %27 = and i1 %6, %26, !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !51
  br i1 %27, label %32, label %28, !dbg !51

; <label>:28:                                     ; preds = %25
  %29 = icmp eq i32 %4, -1048576, !dbg !52
  %30 = and i1 %6, %29, !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  %31 = zext i1 %30 to i32, !dbg !53
  br label %32, !dbg !53

; <label>:32:                                     ; preds = %28, %25, %19, %21, %13, %16, %1, %10
  %33 = phi i32 [ 2, %10 ], [ 2, %1 ], [ 4, %16 ], [ 4, %13 ], [ 3, %21 ], [ 3, %19 ], [ 1, %25 ], [ %31, %28 ], !dbg !54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  ret i32 %33, !dbg !56
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/s_fpclassify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__fpclassifyd", scope: !1, file: !1, line: 10, type: !8, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !14, !18, !19}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 10, type: !11)
!14 = !DILocalVariable(name: "msw", scope: !7, file: !1, line: 12, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "lsw", scope: !7, file: !1, line: 12, type: !15)
!19 = !DILocalVariable(name: "ew_u", scope: !20, file: !1, line: 14, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 3)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_double_shape_type", file: !22, line: 278, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 270, size: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !23, file: !22, line: 272, baseType: !11, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !23, file: !22, line: 277, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !23, file: !22, line: 273, size: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "lsw", scope: !27, file: !22, line: 275, baseType: !15, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "msw", scope: !27, file: !22, line: 276, baseType: !15, size: 32, offset: 32)
!31 = !DILocation(line: 10, column: 23, scope: !7)
!32 = !DILocation(line: 14, column: 3, scope: !20)
!33 = !DILocation(line: 12, column: 14, scope: !7)
!34 = !DILocation(line: 12, column: 19, scope: !7)
!35 = !DILocation(line: 16, column: 33, scope: !36)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 16, column: 7)
!37 = !DILocation(line: 16, column: 26, scope: !36)
!38 = !DILocation(line: 17, column: 12, scope: !36)
!39 = !DILocation(line: 17, column: 26, scope: !36)
!40 = !DILocation(line: 19, column: 31, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 19, column: 12)
!42 = !DILocation(line: 20, column: 31, scope: !41)
!43 = !DILocation(line: 22, column: 38, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 22, column: 12)
!45 = !DILocation(line: 22, column: 31, scope: !44)
!46 = !DILocation(line: 23, column: 17, scope: !44)
!47 = !DILocation(line: 23, column: 38, scope: !44)
!48 = !DILocation(line: 23, column: 31, scope: !44)
!49 = !DILocation(line: 26, column: 17, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 26, column: 12)
!51 = !DILocation(line: 26, column: 31, scope: !50)
!52 = !DILocation(line: 27, column: 17, scope: !50)
!53 = !DILocation(line: 27, column: 31, scope: !50)
!54 = !DILocation(line: 0, scope: !50)
!55 = !DILocation(line: 0, scope: !36)
!56 = !DILocation(line: 31, column: 1, scope: !7)
