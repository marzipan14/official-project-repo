; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsinit.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsinit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @mbsinit(%struct._mbstate_t* readonly) local_unnamed_addr #0 !dbg !9 {
  %2 = icmp eq %struct._mbstate_t* %0, null, !dbg !37
  br i1 %2, label %8, label %3, !dbg !39

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %0, i64 0, i32 0, !dbg !40
  %5 = load i32, i32* %4, align 4, !dbg !40, !tbaa !41
  %6 = icmp eq i32 %5, 0, !dbg !46
  %7 = zext i1 %6 to i32, !dbg !47
  br label %8, !dbg !47

; <label>:8:                                      ; preds = %3, %1
  %9 = phi i32 [ 1, %1 ], [ %7, %3 ], !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  ret i32 %9, !dbg !49
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbsinit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "mbsinit", scope: !1, file: !1, line: 8, type: !10, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !34)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !16, line: 86, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !18, line: 171, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 163, size: 64, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !19, file: !18, line: 165, baseType: !12, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !19, file: !18, line: 170, baseType: !23, size: 32, offset: 32)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !18, line: 166, size: 32, elements: !24)
!24 = !{!25, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !23, file: !18, line: 168, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !27, line: 124, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !23, file: !18, line: 169, baseType: !30, size: 32)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !32)
!31 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !{!35}
!35 = !DILocalVariable(name: "ps", arg: 1, scope: !9, file: !1, line: 8, type: !13)
!36 = !DILocation(line: 8, column: 26, scope: !9)
!37 = !DILocation(line: 10, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !9, file: !1, line: 10, column: 7)
!39 = !DILocation(line: 10, column: 18, scope: !38)
!40 = !DILocation(line: 10, column: 25, scope: !38)
!41 = !{!42, !43, i64 0}
!42 = !{!"", !43, i64 0, !44, i64 4}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !DILocation(line: 10, column: 33, scope: !38)
!47 = !DILocation(line: 10, column: 7, scope: !9)
!48 = !DILocation(line: 0, scope: !38)
!49 = !DILocation(line: 14, column: 1, scope: !9)
