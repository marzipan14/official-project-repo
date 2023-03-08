; ModuleID = '/root/.unikraft/libs/lwip/sendfile.c'
source_filename = "/root/.unikraft/libs/lwip/sendfile.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@sendfile._x = internal unnamed_addr global i1 false, align 4, !dbg !0

; Function Attrs: noredzone nounwind
define dso_local i64 @sendfile(i32, i32, i64* nocapture readnone, i64) local_unnamed_addr #0 !dbg !2 {
  %5 = load i1, i1* @sendfile._x, align 4
  br i1 %5, label %7, label %6, !dbg !36

; <label>:6:                                      ; preds = %4
  store i1 true, i1* @sendfile._x, align 4
  br label %7, !dbg !38

; <label>:7:                                      ; preds = %4, %6
  ret i64 0, !dbg !41
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "_x", scope: !2, file: !3, line: 40, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "sendfile", scope: !3, file: !3, line: 38, type: !4, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !19, retainedNodes: !23)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/sendfile.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !11, !11, !12, !16}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !7, line: 200, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !9, line: 145, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !7, line: 173, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !9, line: 100, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !9, line: 44, baseType: !10)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 58, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, globals: !21)
!20 = !{}
!21 = !{!22}
!22 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!23 = !{!24, !25, !26, !27}
!24 = !DILocalVariable(name: "out_fd", arg: 1, scope: !2, file: !3, line: 38, type: !11)
!25 = !DILocalVariable(name: "in_fd", arg: 2, scope: !2, file: !3, line: 38, type: !11)
!26 = !DILocalVariable(name: "_offset", arg: 3, scope: !2, file: !3, line: 38, type: !12)
!27 = !DILocalVariable(name: "count", arg: 4, scope: !2, file: !3, line: 38, type: !16)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = !DILocation(line: 38, column: 22, scope: !2)
!33 = !DILocation(line: 38, column: 34, scope: !2)
!34 = !DILocation(line: 38, column: 48, scope: !2)
!35 = !DILocation(line: 38, column: 64, scope: !2)
!36 = !DILocation(line: 40, column: 2, scope: !37)
!37 = distinct !DILexicalBlock(scope: !2, file: !3, line: 40, column: 2)
!38 = !DILocation(line: 40, column: 2, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 40, column: 2)
!40 = distinct !DILexicalBlock(scope: !37, file: !3, line: 40, column: 2)
!41 = !DILocation(line: 41, column: 2, scope: !2)
