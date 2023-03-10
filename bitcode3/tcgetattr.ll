; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/termios/tcgetattr.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/termios/tcgetattr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

; Function Attrs: noredzone nounwind
define dso_local i32 @tcgetattr(i32, %struct.termios*) local_unnamed_addr #0 !dbg !7 {
  %3 = tail call i32 (i32, i32, ...) @ioctl(i32 %0, i32 21505, %struct.termios* %1) #3, !dbg !37
  %4 = icmp ne i32 %3, 0, !dbg !37
  %5 = sext i1 %4 to i32, !dbg !39
  ret i32 %5, !dbg !40
}

; Function Attrs: noredzone
declare dso_local i32 @ioctl(i32, i32, ...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/termios/tcgetattr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "tcgetattr", scope: !1, file: !1, line: 28, type: !8, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !32)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !13, line: 27, size: 480, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/arch/generic/bits/termios.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !19, !20, !21, !22, !25, !29, !31}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !12, file: !13, line: 28, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !17, line: 36, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/termios.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !12, file: !13, line: 29, baseType: !16, size: 32, offset: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !12, file: !13, line: 30, baseType: !16, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !12, file: !13, line: 31, baseType: !16, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !12, file: !13, line: 32, baseType: !23, size: 8, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !17, line: 34, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !12, file: !13, line: 33, baseType: !26, size: 256, offset: 136)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 256, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ispeed", scope: !12, file: !13, line: 34, baseType: !30, size: 32, offset: 416)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !17, line: 35, baseType: !18)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ospeed", scope: !12, file: !13, line: 35, baseType: !30, size: 32, offset: 448)
!32 = !{!33, !34}
!33 = !DILocalVariable(name: "fd", arg: 1, scope: !7, file: !1, line: 28, type: !10)
!34 = !DILocalVariable(name: "tio", arg: 2, scope: !7, file: !1, line: 28, type: !11)
!35 = !DILocation(line: 28, column: 19, scope: !7)
!36 = !DILocation(line: 28, column: 39, scope: !7)
!37 = !DILocation(line: 30, column: 6, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 6)
!39 = !DILocation(line: 32, column: 2, scope: !7)
!40 = !DILocation(line: 33, column: 1, scope: !7)
