; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/err.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/err.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@err_to_errno_table = internal unnamed_addr constant [17 x i32] [i32 0, i32 12, i32 105, i32 11, i32 118, i32 119, i32 22, i32 11, i32 112, i32 120, i32 127, i32 128, i32 -1, i32 113, i32 104, i32 128, i32 5], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @err_to_errno(i8 signext) local_unnamed_addr #0 !dbg !25 {
  %2 = add i8 %0, 16, !dbg !31
  %3 = icmp ugt i8 %2, 16, !dbg !31
  br i1 %3, label %9, label %4, !dbg !31

; <label>:4:                                      ; preds = %1
  %5 = sext i8 %0 to i64, !dbg !33
  %6 = sub nsw i64 0, %5, !dbg !34
  %7 = getelementptr inbounds [17 x i32], [17 x i32]* @err_to_errno_table, i64 0, i64 %6, !dbg !35
  %8 = load i32, i32* %7, align 4, !dbg !35, !tbaa !36
  br label %9, !dbg !40

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ 5, %1 ], !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !42
  ret i32 %10, !dbg !42
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "err_to_errno_table", scope: !2, file: !3, line: 48, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/err.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !7, line: 96, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !9, line: 126, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !11, line: 20, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !13, line: 41, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!15 = !{!0}
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 544, elements: !19)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20}
!20 = !DISubrange(count: 17)
!21 = !{i32 2, !"Dwarf Version", i32 4}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!25 = distinct !DISubprogram(name: "err_to_errno", scope: !3, file: !3, line: 69, type: !26, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!18, !6}
!28 = !{!29}
!29 = !DILocalVariable(name: "err", arg: 1, scope: !25, file: !3, line: 69, type: !6)
!30 = !DILocation(line: 69, column: 20, scope: !25)
!31 = !DILocation(line: 71, column: 17, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !3, line: 71, column: 7)
!33 = !DILocation(line: 71, column: 8, scope: !32)
!34 = !DILocation(line: 71, column: 21, scope: !32)
!35 = !DILocation(line: 74, column: 10, scope: !25)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 74, column: 3, scope: !25)
!41 = !DILocation(line: 0, scope: !25)
!42 = !DILocation(line: 75, column: 1, scope: !25)
