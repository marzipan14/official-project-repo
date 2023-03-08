; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__fpclassifyf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !27
  %3 = or i32 %2, -2147483648, !dbg !29
  %4 = icmp eq i32 %3, -2147483648, !dbg !29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !29
  br i1 %4, label %5, label %6, !dbg !29

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !31
  br label %23, !dbg !31

; <label>:6:                                      ; preds = %1
  %7 = add i32 %2, -8388608, !dbg !32
  %8 = icmp ult i32 %7, 2130706432, !dbg !32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !32
  br i1 %8, label %12, label %9, !dbg !32

; <label>:9:                                      ; preds = %6
  %10 = add i32 %2, 2139095040, !dbg !34
  %11 = icmp ult i32 %10, 2130706432, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !34
  br i1 %11, label %12, label %13, !dbg !34

; <label>:12:                                     ; preds = %9, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  br label %23, !dbg !35

; <label>:13:                                     ; preds = %9
  %14 = add i32 %2, -1, !dbg !36
  %15 = icmp ult i32 %14, 8388607, !dbg !36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %15, label %19, label %16, !dbg !36

; <label>:16:                                     ; preds = %13
  %17 = add i32 %2, 2147483647, !dbg !38
  %18 = icmp ult i32 %17, 8388607, !dbg !38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !38
  br i1 %18, label %19, label %20, !dbg !38

; <label>:19:                                     ; preds = %16, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  br label %23, !dbg !39

; <label>:20:                                     ; preds = %16
  %21 = icmp eq i32 %3, -8388608, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  %22 = zext i1 %21 to i32, !dbg !43
  br label %23, !dbg !43

; <label>:23:                                     ; preds = %20, %19, %12, %5
  %24 = phi i32 [ 2, %5 ], [ 4, %12 ], [ 3, %19 ], [ %22, %20 ], !dbg !42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !44
  ret i32 %24, !dbg !44
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_fpclassify.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "__fpclassifyf", scope: !1, file: !1, line: 10, type: !8, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!13, !14, !18}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 10, type: !11)
!14 = !DILocalVariable(name: "w", scope: !7, file: !1, line: 12, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DILocalVariable(name: "gf_u", scope: !19, file: !1, line: 14, type: !20)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 14, column: 3)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !21, line: 347, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 343, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !22, file: !21, line: 345, baseType: !11, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !22, file: !21, line: 346, baseType: !15, size: 32)
!26 = !DILocation(line: 10, column: 22, scope: !7)
!27 = !DILocation(line: 14, column: 3, scope: !19)
!28 = !DILocation(line: 12, column: 14, scope: !7)
!29 = !DILocation(line: 16, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 16, column: 7)
!31 = !DILocation(line: 17, column: 5, scope: !30)
!32 = !DILocation(line: 18, column: 29, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 18, column: 12)
!34 = !DILocation(line: 19, column: 29, scope: !33)
!35 = !DILocation(line: 20, column: 5, scope: !33)
!36 = !DILocation(line: 21, column: 29, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 21, column: 12)
!38 = !DILocation(line: 22, column: 29, scope: !37)
!39 = !DILocation(line: 23, column: 5, scope: !37)
!40 = !DILocation(line: 24, column: 28, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 24, column: 12)
!42 = !DILocation(line: 0, scope: !41)
!43 = !DILocation(line: 25, column: 5, scope: !41)
!44 = !DILocation(line: 28, column: 1, scope: !7)
