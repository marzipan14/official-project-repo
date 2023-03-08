; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswxdigit_l.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswxdigit_l.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type opaque

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @iswxdigit_l(i32, %struct.__locale_t* nocapture readnone) local_unnamed_addr #0 !dbg !11 {
  %3 = add i32 %0, -48, !dbg !23
  %4 = icmp ult i32 %3, 10, !dbg !23
  %5 = and i32 %0, -33, !dbg !23
  %6 = add i32 %5, -65, !dbg !23
  %7 = icmp ult i32 %6, 6, !dbg !23
  %8 = or i1 %4, %7, !dbg !23
  %9 = zext i1 %8 to i32, !dbg !23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !24
  ret i32 %9, !dbg !24
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/ctype/iswxdigit_l.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !5, line: 124, baseType: !6)
!5 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 2, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!11 = distinct !DISubprogram(name: "iswxdigit_l", scope: !1, file: !1, line: 5, type: !12, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !4, !15}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !17, line: 9, flags: DIFlagFwdDecl)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/xlocale.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "c", arg: 1, scope: !11, file: !1, line: 5, type: !4)
!20 = !DILocalVariable(name: "locale", arg: 2, scope: !11, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 21, scope: !11)
!22 = !DILocation(line: 5, column: 43, scope: !11)
!23 = !DILocation(line: 7, column: 29, scope: !11)
!24 = !DILocation(line: 7, column: 3, scope: !11)
