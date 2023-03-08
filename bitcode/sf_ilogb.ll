; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_ilogb.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_ilogb.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @ilogbf(float) local_unnamed_addr #0 !dbg !7 {
  %2 = bitcast float %0 to i32, !dbg !29
  %3 = and i32 %2, 2147483647, !dbg !31
  %4 = icmp eq i32 %3, 0, !dbg !32
  br i1 %4, label %21, label %5, !dbg !34

; <label>:5:                                      ; preds = %1
  %6 = icmp ult i32 %3, 8388608, !dbg !35
  br i1 %6, label %7, label %16, !dbg !37

; <label>:7:                                      ; preds = %5
  %8 = shl i32 %2, 8, !dbg !39
  %9 = icmp sgt i32 %8, 0, !dbg !42
  br i1 %9, label %10, label %21, !dbg !44

; <label>:10:                                     ; preds = %7, %10
  %11 = phi i32 [ %13, %10 ], [ -126, %7 ]
  %12 = phi i32 [ %14, %10 ], [ %8, %7 ]
  %13 = add nsw i32 %11, -1, !dbg !45
  %14 = shl i32 %12, 1, !dbg !46
  %15 = icmp sgt i32 %14, 0, !dbg !42
  br i1 %15, label %10, label %21, !dbg !44, !llvm.loop !47

; <label>:16:                                     ; preds = %5
  %17 = icmp ult i32 %3, 2139095040, !dbg !49
  br i1 %17, label %18, label %21, !dbg !51

; <label>:18:                                     ; preds = %16
  %19 = lshr i32 %3, 23, !dbg !52
  %20 = add nsw i32 %19, -127, !dbg !53
  br label %21, !dbg !54

; <label>:21:                                     ; preds = %10, %7, %16, %1, %18
  %22 = phi i32 [ %20, %18 ], [ -2147483647, %1 ], [ 2147483647, %16 ], [ -126, %7 ], [ %13, %10 ], !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  ret i32 %22, !dbg !56
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/sf_ilogb.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "ilogbf", scope: !1, file: !1, line: 20, type: !8, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!12 = !{!13, !14, !17, !18}
!13 = !DILocalVariable(name: "x", arg: 1, scope: !7, file: !1, line: 20, type: !11)
!14 = !DILocalVariable(name: "hx", scope: !7, file: !1, line: 26, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !16, line: 77, baseType: !10)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DILocalVariable(name: "ix", scope: !7, file: !1, line: 26, type: !15)
!18 = !DILocalVariable(name: "gf_u", scope: !19, file: !1, line: 28, type: !20)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 2)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ieee_float_shape_type", file: !21, line: 347, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libm/common/fdlibm.h", directory: "/root/.unikraft/apps/redis/build")
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 343, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !22, file: !21, line: 345, baseType: !11, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !22, file: !21, line: 346, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 79, baseType: !27)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DILocation(line: 20, column: 19, scope: !7)
!29 = !DILocation(line: 28, column: 2, scope: !19)
!30 = !DILocation(line: 26, column: 12, scope: !7)
!31 = !DILocation(line: 29, column: 5, scope: !7)
!32 = !DILocation(line: 30, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 5)
!34 = !DILocation(line: 30, column: 5, scope: !7)
!35 = !DILocation(line: 32, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 32, column: 5)
!37 = !DILocation(line: 32, column: 5, scope: !7)
!38 = !DILocation(line: 26, column: 15, scope: !7)
!39 = !DILocation(line: 33, column: 23, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 33, column: 6)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 32, column: 33)
!42 = !DILocation(line: 33, column: 31, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 33, column: 6)
!44 = !DILocation(line: 33, column: 6, scope: !40)
!45 = !DILocation(line: 33, column: 46, scope: !43)
!46 = !DILocation(line: 33, column: 37, scope: !43)
!47 = distinct !{!47, !44, !48}
!48 = !DILocation(line: 33, column: 48, scope: !40)
!49 = !DILocation(line: 39, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !36, file: !1, line: 39, column: 11)
!51 = !DILocation(line: 39, column: 11, scope: !36)
!52 = !DILocation(line: 40, column: 17, scope: !50)
!53 = !DILocation(line: 40, column: 22, scope: !50)
!54 = !DILocation(line: 40, column: 7, scope: !50)
!55 = !DILocation(line: 0, scope: !50)
!56 = !DILocation(line: 41, column: 1, scope: !7)
