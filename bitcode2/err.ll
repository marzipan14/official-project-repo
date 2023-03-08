; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/err.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/api/err.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@err_to_errno_table = internal unnamed_addr constant [17 x i32] [i32 0, i32 12, i32 105, i32 11, i32 118, i32 119, i32 22, i32 11, i32 112, i32 120, i32 127, i32 128, i32 -1, i32 113, i32 104, i32 128, i32 5], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @err_to_errno(i8 signext) local_unnamed_addr #0 !dbg !25 {
  %2 = icmp sgt i8 %0, 0, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %2, label %10, label %3, !dbg !33

; <label>:3:                                      ; preds = %1
  %4 = icmp slt i8 %0, -16, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !35
  br i1 %4, label %10, label %5, !dbg !35

; <label>:5:                                      ; preds = %3
  %6 = sext i8 %0 to i64, !dbg !36
  %7 = sub nsw i64 0, %6, !dbg !37
  %8 = getelementptr inbounds [17 x i32], [17 x i32]* @err_to_errno_table, i64 0, i64 %7, !dbg !38
  %9 = load i32, i32* %8, align 4, !dbg !38, !tbaa !39
  br label %10, !dbg !43

; <label>:10:                                     ; preds = %1, %3, %5
  %11 = phi i32 [ %9, %5 ], [ 5, %3 ], [ 5, %1 ], !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !47
  ret i32 %11, !dbg !47
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
!31 = !DILocation(line: 71, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !3, line: 71, column: 7)
!33 = !DILocation(line: 71, column: 17, scope: !32)
!34 = !DILocation(line: 71, column: 26, scope: !32)
!35 = !DILocation(line: 71, column: 7, scope: !25)
!36 = !DILocation(line: 71, column: 8, scope: !32)
!37 = !DILocation(line: 71, column: 21, scope: !32)
!38 = !DILocation(line: 74, column: 10, scope: !25)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 74, column: 3, scope: !25)
!44 = !DILocation(line: 0, scope: !25)
!45 = !DILocation(line: 0, scope: !46)
!46 = distinct !DILexicalBlock(scope: !32, file: !3, line: 71, column: 73)
!47 = !DILocation(line: 75, column: 1, scope: !25)
