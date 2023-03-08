; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gettzinfo.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gettzinfo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@tzinfo = internal global %struct.__tzinfo_struct { i32 1, i32 0, [2 x %struct.__tzrule_struct] [%struct.__tzrule_struct { i8 74, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0 }, %struct.__tzrule_struct { i8 74, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0 }] }, align 8, !dbg !0

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local nonnull %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #0 !dbg !35 {
  ret %struct.__tzinfo_struct* @tzinfo, !dbg !39
}

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tzinfo", scope: !2, file: !3, line: 5, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/gettzinfo.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !7, line: 65, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !7, line: 60, size: 704, elements: !9)
!9 = !{!10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !8, file: !7, line: 62, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !8, file: !7, line: 63, baseType: !11, size: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !8, file: !7, line: 64, baseType: !14, size: 640, offset: 64)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 640, elements: !29)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !7, line: 58, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !7, line: 49, size: 320, elements: !17)
!17 = !{!18, !20, !21, !22, !23, !24, !28}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !16, file: !7, line: 51, baseType: !19, size: 8)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !16, file: !7, line: 52, baseType: !11, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !16, file: !7, line: 53, baseType: !11, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !16, file: !7, line: 54, baseType: !11, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !16, file: !7, line: 55, baseType: !11, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !16, file: !7, line: 56, baseType: !25, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !26, line: 34, baseType: !27)
!26 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !16, file: !7, line: 57, baseType: !27, size: 64, offset: 256)
!29 = !{!30}
!30 = !DISubrange(count: 2)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!35 = distinct !DISubprogram(name: "__gettzinfo", scope: !3, file: !3, line: 12, type: !36, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!36 = !DISubroutineType(types: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!39 = !DILocation(line: 14, column: 3, scope: !35)
