; ModuleID = '/root/.unikraft/libs/newlib/musl-imported/src/termios/tcsetattr.c'
source_filename = "/root/.unikraft/libs/newlib/musl-imported/src/termios/tcsetattr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @tcsetattr(i32, i32, %struct.termios*) local_unnamed_addr #0 !dbg !7 {
  %4 = icmp ugt i32 %1, 2, !dbg !40
  br i1 %4, label %5, label %7, !dbg !40

; <label>:5:                                      ; preds = %3
  %6 = tail call i32* @__errno() #3, !dbg !42
  store i32 22, i32* %6, align 4, !dbg !44, !tbaa !45
  br label %10, !dbg !49

; <label>:7:                                      ; preds = %3
  %8 = add nsw i32 %1, 21506, !dbg !50
  %9 = tail call i32 (i32, i32, ...) @ioctl(i32 %0, i32 %8, %struct.termios* %2) #3, !dbg !51
  br label %10, !dbg !52

; <label>:10:                                     ; preds = %7, %5
  %11 = phi i32 [ -1, %5 ], [ %9, %7 ], !dbg !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret i32 %11, !dbg !54
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

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
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/src/termios/tcsetattr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "tcsetattr", scope: !1, file: !1, line: 29, type: !8, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !33)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termios", file: !14, line: 27, size: 480, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/arch/generic/bits/termios.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !20, !21, !22, !23, !26, !30, !32}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !13, file: !14, line: 28, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !18, line: 36, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/termios.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !13, file: !14, line: 29, baseType: !17, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !13, file: !14, line: 30, baseType: !17, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !13, file: !14, line: 31, baseType: !17, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !13, file: !14, line: 32, baseType: !24, size: 8, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !18, line: 34, baseType: !25)
!25 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !13, file: !14, line: 33, baseType: !27, size: 256, offset: 136)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 256, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ispeed", scope: !13, file: !14, line: 34, baseType: !31, size: 32, offset: 416)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !18, line: 35, baseType: !19)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__c_ospeed", scope: !13, file: !14, line: 35, baseType: !31, size: 32, offset: 448)
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(name: "fd", arg: 1, scope: !7, file: !1, line: 29, type: !10)
!35 = !DILocalVariable(name: "act", arg: 2, scope: !7, file: !1, line: 29, type: !10)
!36 = !DILocalVariable(name: "tio", arg: 3, scope: !7, file: !1, line: 29, type: !11)
!37 = !DILocation(line: 29, column: 19, scope: !7)
!38 = !DILocation(line: 29, column: 27, scope: !7)
!39 = !DILocation(line: 29, column: 54, scope: !7)
!40 = !DILocation(line: 31, column: 14, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 6)
!42 = !DILocation(line: 32, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !41, file: !1, line: 31, column: 26)
!44 = !DILocation(line: 32, column: 9, scope: !43)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !DILocation(line: 33, column: 3, scope: !43)
!50 = !DILocation(line: 35, column: 25, scope: !7)
!51 = !DILocation(line: 35, column: 9, scope: !7)
!52 = !DILocation(line: 35, column: 2, scope: !7)
!53 = !DILocation(line: 0, scope: !7)
!54 = !DILocation(line: 36, column: 1, scope: !7)
