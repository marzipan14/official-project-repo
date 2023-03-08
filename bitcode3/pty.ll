; ModuleID = '/root/.unikraft/libs/newlib/pty.c'
source_filename = "/root/.unikraft/libs/newlib/pty.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }

; Function Attrs: noredzone nounwind
define dso_local i32 @openpty(i32* nocapture readnone, i32* nocapture readnone, i8* nocapture readnone, %struct.termios* nocapture readnone, %struct.winsize* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  %6 = tail call i32* @__errno() #4, !dbg !57
  store i32 2, i32* %6, align 4, !dbg !58, !tbaa !59
  ret i32 -1, !dbg !63
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @forkpty(i32* nocapture readnone, i8* nocapture readnone, %struct.termios* nocapture readnone, %struct.winsize* nocapture readnone) local_unnamed_addr #0 !dbg !64 {
  %5 = tail call i32* @__errno() #4, !dbg !78
  store i32 2, i32* %5, align 4, !dbg !79, !tbaa !59
  ret i32 -1, !dbg !80
}

; Function Attrs: noredzone nounwind
define dso_local noalias i8* @ptsname(i32) local_unnamed_addr #0 !dbg !81 {
  %2 = tail call i32* @__errno() #4, !dbg !87
  store i32 25, i32* %2, align 4, !dbg !88, !tbaa !59
  ret i8* null, !dbg !89
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ttyname_r(i32, i8* nocapture readnone, i64) local_unnamed_addr #0 !dbg !90 {
  %4 = tail call i32* @__errno() #4, !dbg !103
  store i32 25, i32* %4, align 4, !dbg !104, !tbaa !59
  ret i32 -1, !dbg !105
}

; Function Attrs: noredzone nounwind readnone
define dso_local void @cfmakeraw(%struct.termios* nocapture) local_unnamed_addr #2 !dbg !106 {
  ret void, !dbg !113
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/pty.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "openpty", scope: !1, file: !1, line: 43, type: !8, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !46)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !12, !14, !36}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !17, line: 27, size: 480, elements: !18)
!17 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/arch/generic/bits/termios.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !{!19, !23, !24, !25, !26, !29, !33, !35}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !16, file: !17, line: 28, baseType: !20, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !21, line: 36, baseType: !22)
!21 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/termios.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !16, file: !17, line: 29, baseType: !20, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !16, file: !17, line: 30, baseType: !20, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !16, file: !17, line: 31, baseType: !20, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !16, file: !17, line: 32, baseType: !27, size: 8, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !21, line: 34, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !16, file: !17, line: 33, baseType: !30, size: 256, offset: 136)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ispeed", scope: !16, file: !17, line: 34, baseType: !34, size: 32, offset: 416)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !21, line: 35, baseType: !22)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ospeed", scope: !16, file: !17, line: 35, baseType: !34, size: 32, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !39, line: 73, size: 64, elements: !40)
!39 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/sys/ioctl.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !43, !44, !45}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !38, file: !39, line: 74, baseType: !42, size: 16)
!42 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !38, file: !39, line: 75, baseType: !42, size: 16, offset: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !38, file: !39, line: 76, baseType: !42, size: 16, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !38, file: !39, line: 77, baseType: !42, size: 16, offset: 48)
!46 = !{!47, !48, !49, !50, !51}
!47 = !DILocalVariable(name: "amaster", arg: 1, scope: !7, file: !1, line: 43, type: !11)
!48 = !DILocalVariable(name: "aslave", arg: 2, scope: !7, file: !1, line: 43, type: !11)
!49 = !DILocalVariable(name: "name", arg: 3, scope: !7, file: !1, line: 43, type: !12)
!50 = !DILocalVariable(name: "termp", arg: 4, scope: !7, file: !1, line: 44, type: !14)
!51 = !DILocalVariable(name: "winp", arg: 5, scope: !7, file: !1, line: 45, type: !36)
!52 = !DILocation(line: 43, column: 18, scope: !7)
!53 = !DILocation(line: 43, column: 41, scope: !7)
!54 = !DILocation(line: 43, column: 64, scope: !7)
!55 = !DILocation(line: 44, column: 25, scope: !7)
!56 = !DILocation(line: 45, column: 25, scope: !7)
!57 = !DILocation(line: 47, column: 2, scope: !7)
!58 = !DILocation(line: 47, column: 8, scope: !7)
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !DILocation(line: 48, column: 2, scope: !7)
!64 = distinct !DISubprogram(name: "forkpty", scope: !1, file: !1, line: 51, type: !65, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !69)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !11, !12, !14, !36}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !68, line: 12, baseType: !10)
!68 = !DIFile(filename: "/root/.unikraft/libs/pthread-embedded/include/pte_types.h", directory: "/root/.unikraft/apps/redis/build")
!69 = !{!70, !71, !72, !73}
!70 = !DILocalVariable(name: "amaster", arg: 1, scope: !64, file: !1, line: 51, type: !11)
!71 = !DILocalVariable(name: "name", arg: 2, scope: !64, file: !1, line: 51, type: !12)
!72 = !DILocalVariable(name: "termp", arg: 3, scope: !64, file: !1, line: 52, type: !14)
!73 = !DILocalVariable(name: "winp", arg: 4, scope: !64, file: !1, line: 53, type: !36)
!74 = !DILocation(line: 51, column: 20, scope: !64)
!75 = !DILocation(line: 51, column: 44, scope: !64)
!76 = !DILocation(line: 52, column: 25, scope: !64)
!77 = !DILocation(line: 53, column: 25, scope: !64)
!78 = !DILocation(line: 55, column: 2, scope: !64)
!79 = !DILocation(line: 55, column: 8, scope: !64)
!80 = !DILocation(line: 56, column: 2, scope: !64)
!81 = distinct !DISubprogram(name: "ptsname", scope: !1, file: !1, line: 59, type: !82, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{!12, !10}
!84 = !{!85}
!85 = !DILocalVariable(name: "fd", arg: 1, scope: !81, file: !1, line: 59, type: !10)
!86 = !DILocation(line: 59, column: 19, scope: !81)
!87 = !DILocation(line: 61, column: 2, scope: !81)
!88 = !DILocation(line: 61, column: 8, scope: !81)
!89 = !DILocation(line: 62, column: 2, scope: !81)
!90 = distinct !DISubprogram(name: "ttyname_r", scope: !1, file: !1, line: 65, type: !91, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!91 = !DISubroutineType(types: !92)
!92 = !{!10, !10, !12, !93}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 58, baseType: !95)
!94 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!97, !98, !99}
!97 = !DILocalVariable(name: "fd", arg: 1, scope: !90, file: !1, line: 65, type: !10)
!98 = !DILocalVariable(name: "buf", arg: 2, scope: !90, file: !1, line: 65, type: !12)
!99 = !DILocalVariable(name: "buflen", arg: 3, scope: !90, file: !1, line: 65, type: !93)
!100 = !DILocation(line: 65, column: 19, scope: !90)
!101 = !DILocation(line: 65, column: 38, scope: !90)
!102 = !DILocation(line: 65, column: 59, scope: !90)
!103 = !DILocation(line: 67, column: 2, scope: !90)
!104 = !DILocation(line: 67, column: 8, scope: !90)
!105 = !DILocation(line: 68, column: 2, scope: !90)
!106 = distinct !DISubprogram(name: "cfmakeraw", scope: !1, file: !1, line: 71, type: !107, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !110)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!110 = !{!111}
!111 = !DILocalVariable(name: "termios_p", arg: 1, scope: !106, file: !1, line: 71, type: !109)
!112 = !DILocation(line: 71, column: 32, scope: !106)
!113 = !DILocation(line: 74, column: 1, scope: !106)
