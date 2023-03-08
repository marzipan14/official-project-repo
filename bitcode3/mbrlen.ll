; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbrlen.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbrlen.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

; Function Attrs: noredzone nounwind
define dso_local i64 @mbrlen(i8* noalias, i64, %struct._mbstate_t* noalias) local_unnamed_addr #0 !dbg !7 {
  %4 = tail call i64 @mbrtowc(i32* null, i8* %0, i64 %1, %struct._mbstate_t* %2) #3, !dbg !45
  ret i64 %4, !dbg !46
}

; Function Attrs: noredzone
declare dso_local i64 @mbrtowc(i32*, i8*, i64, %struct._mbstate_t*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/mbrlen.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "mbrlen", scope: !1, file: !1, line: 9, type: !8, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !38)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13, !10, !17}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 58, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !20, line: 86, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !22, line: 171, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 163, size: 64, elements: !24)
!24 = !{!25, !27}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !23, file: !22, line: 165, baseType: !26, size: 32)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !23, file: !22, line: 170, baseType: !28, size: 32, offset: 32)
!28 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !22, line: 166, size: 32, elements: !29)
!29 = !{!30, !33}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !28, file: !22, line: 168, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !11, line: 124, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !28, file: !22, line: 169, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !36)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 4)
!38 = !{!39, !40, !41}
!39 = !DILocalVariable(name: "s", arg: 1, scope: !7, file: !1, line: 9, type: !13)
!40 = !DILocalVariable(name: "n", arg: 2, scope: !7, file: !1, line: 9, type: !10)
!41 = !DILocalVariable(name: "ps", arg: 3, scope: !7, file: !1, line: 9, type: !17)
!42 = !DILocation(line: 9, column: 31, scope: !7)
!43 = !DILocation(line: 9, column: 41, scope: !7)
!44 = !DILocation(line: 9, column: 66, scope: !7)
!45 = !DILocation(line: 21, column: 10, scope: !7)
!46 = !DILocation(line: 21, column: 3, scope: !7)
