; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbtowc.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbtowc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @mbtowc(i32* noalias, i8* noalias readonly, i64) local_unnamed_addr #0 !dbg !12 {
  %4 = icmp eq i8* %1, null, !dbg !31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !33
  br i1 %4, label %15, label %5, !dbg !33

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %2, 0, !dbg !34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !36
  br i1 %6, label %15, label %7, !dbg !36

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i32* %0, null, !dbg !37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !39
  %9 = load i8, i8* %1, align 1, !dbg !40, !tbaa !41
  br i1 %8, label %12, label %10, !dbg !39

; <label>:10:                                     ; preds = %7
  %11 = sext i8 %9 to i32, !dbg !44
  store i32 %11, i32* %0, align 4, !dbg !45, !tbaa !46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  br label %12, !dbg !48

; <label>:12:                                     ; preds = %7, %10
  %13 = icmp ne i8 %9, 0, !dbg !49
  %14 = zext i1 %13 to i32, !dbg !49
  br label %15, !dbg !50

; <label>:15:                                     ; preds = %5, %3, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %3 ], [ -1, %5 ], !dbg !51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  ret i32 %16, !dbg !53
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbtowc.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !6, line: 83, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!12 = distinct !DISubprogram(name: "mbtowc", scope: !1, file: !1, line: 60, type: !13, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !26)
!13 = !DISubroutineType(types: !14)
!14 = !{!7, !15, !17, !21}
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !24, line: 129, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29}
!27 = !DILocalVariable(name: "pwc", arg: 1, scope: !12, file: !1, line: 60, type: !15)
!28 = !DILocalVariable(name: "s", arg: 2, scope: !12, file: !1, line: 60, type: !17)
!29 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !1, line: 60, type: !21)
!30 = !DILocation(line: 60, column: 1, scope: !12)
!31 = !DILocation(line: 82, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !12, file: !1, line: 82, column: 7)
!33 = !DILocation(line: 82, column: 7, scope: !12)
!34 = !DILocation(line: 84, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !12, file: !1, line: 84, column: 7)
!36 = !DILocation(line: 84, column: 7, scope: !12)
!37 = !DILocation(line: 86, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !12, file: !1, line: 86, column: 7)
!39 = !DILocation(line: 86, column: 7, scope: !12)
!40 = !DILocation(line: 0, scope: !38)
!41 = !{!42, !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 87, column: 12, scope: !38)
!45 = !DILocation(line: 87, column: 10, scope: !38)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !42, i64 0}
!48 = !DILocation(line: 87, column: 5, scope: !38)
!49 = !DILocation(line: 88, column: 14, scope: !12)
!50 = !DILocation(line: 88, column: 3, scope: !12)
!51 = !DILocation(line: 0, scope: !12)
!52 = !DILocation(line: 0, scope: !32)
!53 = !DILocation(line: 90, column: 1, scope: !12)
