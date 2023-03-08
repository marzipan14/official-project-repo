; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/endianconv.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/endianconv.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noredzone nounwind
define dso_local void @memrev16(i8* nocapture) local_unnamed_addr #0 !dbg !7 {
  %2 = load i8, i8* %0, align 1, !dbg !19, !tbaa !20
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !24
  %4 = load i8, i8* %3, align 1, !dbg !24, !tbaa !20
  store i8 %4, i8* %0, align 1, !dbg !25, !tbaa !20
  store i8 %2, i8* %3, align 1, !dbg !26, !tbaa !20
  ret void, !dbg !27
}

; Function Attrs: noredzone nounwind
define dso_local void @memrev32(i8* nocapture) local_unnamed_addr #0 !dbg !28 {
  %2 = load i8, i8* %0, align 1, !dbg !35, !tbaa !20
  %3 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !37
  %4 = load i8, i8* %3, align 1, !dbg !37, !tbaa !20
  store i8 %4, i8* %0, align 1, !dbg !38, !tbaa !20
  store i8 %2, i8* %3, align 1, !dbg !39, !tbaa !20
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !40
  %6 = load i8, i8* %5, align 1, !dbg !40, !tbaa !20
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !41
  %8 = load i8, i8* %7, align 1, !dbg !41, !tbaa !20
  store i8 %8, i8* %5, align 1, !dbg !42, !tbaa !20
  store i8 %6, i8* %7, align 1, !dbg !43, !tbaa !20
  ret void, !dbg !44
}

; Function Attrs: noredzone nounwind
define dso_local void @memrev64(i8* nocapture) local_unnamed_addr #0 !dbg !45 {
  %2 = load i8, i8* %0, align 1, !dbg !52, !tbaa !20
  %3 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !54
  %4 = load i8, i8* %3, align 1, !dbg !54, !tbaa !20
  store i8 %4, i8* %0, align 1, !dbg !55, !tbaa !20
  store i8 %2, i8* %3, align 1, !dbg !56, !tbaa !20
  %5 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !57
  %6 = load i8, i8* %5, align 1, !dbg !57, !tbaa !20
  %7 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !58
  %8 = load i8, i8* %7, align 1, !dbg !58, !tbaa !20
  store i8 %8, i8* %5, align 1, !dbg !59, !tbaa !20
  store i8 %6, i8* %7, align 1, !dbg !60, !tbaa !20
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !61
  %10 = load i8, i8* %9, align 1, !dbg !61, !tbaa !20
  %11 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !62
  %12 = load i8, i8* %11, align 1, !dbg !62, !tbaa !20
  store i8 %12, i8* %9, align 1, !dbg !63, !tbaa !20
  store i8 %10, i8* %11, align 1, !dbg !64, !tbaa !20
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !65
  %14 = load i8, i8* %13, align 1, !dbg !65, !tbaa !20
  %15 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !66
  %16 = load i8, i8* %15, align 1, !dbg !66, !tbaa !20
  store i8 %16, i8* %13, align 1, !dbg !67, !tbaa !20
  store i8 %14, i8* %15, align 1, !dbg !68, !tbaa !20
  ret void, !dbg !69
}

; Function Attrs: noredzone nounwind readnone
define dso_local zeroext i16 @intrev16(i16 zeroext) local_unnamed_addr #1 !dbg !70 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0), !dbg !80
  ret i16 %2, !dbg !81
}

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @intrev32(i32) local_unnamed_addr #1 !dbg !82 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0), !dbg !90
  ret i32 %2, !dbg !91
}

; Function Attrs: noredzone nounwind readnone
define dso_local i64 @intrev64(i64) local_unnamed_addr #1 !dbg !92 {
  %2 = tail call i64 @llvm.bswap.i64(i64 %0), !dbg !100
  ret i64 %2, !dbg !101
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: nounwind readnone speculatable
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/endianconv.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "memrev16", scope: !1, file: !1, line: 49, type: !8, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{!12, !13, !16}
!12 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 49, type: !10)
!13 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 50, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DILocalVariable(name: "t", scope: !7, file: !1, line: 50, type: !15)
!17 = !DILocation(line: 49, column: 21, scope: !7)
!18 = !DILocation(line: 50, column: 20, scope: !7)
!19 = !DILocation(line: 52, column: 9, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 50, column: 27, scope: !7)
!24 = !DILocation(line: 53, column: 12, scope: !7)
!25 = !DILocation(line: 53, column: 10, scope: !7)
!26 = !DILocation(line: 54, column: 10, scope: !7)
!27 = !DILocation(line: 55, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: "memrev32", scope: !1, file: !1, line: 59, type: !8, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !29)
!29 = !{!30, !31, !32}
!30 = !DILocalVariable(name: "p", arg: 1, scope: !28, file: !1, line: 59, type: !10)
!31 = !DILocalVariable(name: "x", scope: !28, file: !1, line: 60, type: !14)
!32 = !DILocalVariable(name: "t", scope: !28, file: !1, line: 60, type: !15)
!33 = !DILocation(line: 59, column: 21, scope: !28)
!34 = !DILocation(line: 60, column: 20, scope: !28)
!35 = !DILocation(line: 62, column: 9, scope: !28)
!36 = !DILocation(line: 60, column: 27, scope: !28)
!37 = !DILocation(line: 63, column: 12, scope: !28)
!38 = !DILocation(line: 63, column: 10, scope: !28)
!39 = !DILocation(line: 64, column: 10, scope: !28)
!40 = !DILocation(line: 65, column: 9, scope: !28)
!41 = !DILocation(line: 66, column: 12, scope: !28)
!42 = !DILocation(line: 66, column: 10, scope: !28)
!43 = !DILocation(line: 67, column: 10, scope: !28)
!44 = !DILocation(line: 68, column: 1, scope: !28)
!45 = distinct !DISubprogram(name: "memrev64", scope: !1, file: !1, line: 72, type: !8, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !46)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: "p", arg: 1, scope: !45, file: !1, line: 72, type: !10)
!48 = !DILocalVariable(name: "x", scope: !45, file: !1, line: 73, type: !14)
!49 = !DILocalVariable(name: "t", scope: !45, file: !1, line: 73, type: !15)
!50 = !DILocation(line: 72, column: 21, scope: !45)
!51 = !DILocation(line: 73, column: 20, scope: !45)
!52 = !DILocation(line: 75, column: 9, scope: !45)
!53 = !DILocation(line: 73, column: 27, scope: !45)
!54 = !DILocation(line: 76, column: 12, scope: !45)
!55 = !DILocation(line: 76, column: 10, scope: !45)
!56 = !DILocation(line: 77, column: 10, scope: !45)
!57 = !DILocation(line: 78, column: 9, scope: !45)
!58 = !DILocation(line: 79, column: 12, scope: !45)
!59 = !DILocation(line: 79, column: 10, scope: !45)
!60 = !DILocation(line: 80, column: 10, scope: !45)
!61 = !DILocation(line: 81, column: 9, scope: !45)
!62 = !DILocation(line: 82, column: 12, scope: !45)
!63 = !DILocation(line: 82, column: 10, scope: !45)
!64 = !DILocation(line: 83, column: 10, scope: !45)
!65 = !DILocation(line: 84, column: 9, scope: !45)
!66 = !DILocation(line: 85, column: 12, scope: !45)
!67 = !DILocation(line: 85, column: 10, scope: !45)
!68 = !DILocation(line: 86, column: 10, scope: !45)
!69 = !DILocation(line: 87, column: 1, scope: !45)
!70 = distinct !DISubprogram(name: "intrev16", scope: !1, file: !1, line: 89, type: !71, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !78)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !73}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !74, line: 36, baseType: !75)
!74 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !76, line: 57, baseType: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!78 = !{!79}
!79 = !DILocalVariable(name: "v", arg: 1, scope: !70, file: !1, line: 89, type: !73)
!80 = !DILocation(line: 89, column: 28, scope: !70)
!81 = !DILocation(line: 91, column: 5, scope: !70)
!82 = distinct !DISubprogram(name: "intrev32", scope: !1, file: !1, line: 94, type: !83, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !88)
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !74, line: 48, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !76, line: 79, baseType: !87)
!87 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!88 = !{!89}
!89 = !DILocalVariable(name: "v", arg: 1, scope: !82, file: !1, line: 94, type: !85)
!90 = !DILocation(line: 94, column: 28, scope: !82)
!91 = !DILocation(line: 96, column: 5, scope: !82)
!92 = distinct !DISubprogram(name: "intrev64", scope: !1, file: !1, line: 99, type: !93, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !98)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !95}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !74, line: 60, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !76, line: 105, baseType: !97)
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DILocalVariable(name: "v", arg: 1, scope: !92, file: !1, line: 99, type: !95)
!100 = !DILocation(line: 99, column: 28, scope: !92)
!101 = !DILocation(line: 101, column: 5, scope: !92)
