; ModuleID = '/root/.unikraft/libs/newlib/link.c'
source_filename = "/root/.unikraft/libs/newlib/link.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dl_phdr_info = type { i64, i8*, %struct.Elf64_Phdr*, i16, i64, i64, i64, i8* }
%struct.Elf64_Phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noredzone nounwind readnone
define dso_local i32 @dl_iterate_phdr(i32 (%struct.dl_phdr_info*, i64, i8*)* nocapture readnone, i8* nocapture readnone) local_unnamed_addr #0 !dbg !7 {
  ret i32 0, !dbg !68
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "/root/.unikraft/libs/newlib/link.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!7 = distinct !DISubprogram(name: "dl_iterate_phdr", scope: !1, file: !1, line: 39, type: !8, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !63)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !62}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{!10, !14, !59, !62}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dl_phdr_info", file: !16, line: 21, size: 512, elements: !17)
!16 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/link.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !{!18, !26, !30, !50, !55, !57, !58, !61}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_addr", scope: !15, file: !16, line: 22, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !20, line: 49, baseType: !21)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/elf.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 60, baseType: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 105, baseType: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_name", scope: !15, file: !16, line: 23, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_phdr", scope: !15, file: !16, line: 24, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Phdr", file: !20, line: 613, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 604, size: 448, elements: !35)
!35 = !{!36, !41, !42, !44, !45, !46, !48, !49}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "p_type", scope: !34, file: !20, line: 605, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !20, line: 40, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 48, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 79, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !34, file: !20, line: 606, baseType: !37, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "p_offset", scope: !34, file: !20, line: 607, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Off", file: !20, line: 52, baseType: !21)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "p_vaddr", scope: !34, file: !20, line: 608, baseType: !19, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "p_paddr", scope: !34, file: !20, line: 609, baseType: !19, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "p_filesz", scope: !34, file: !20, line: 610, baseType: !47, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !20, line: 45, baseType: !21)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "p_memsz", scope: !34, file: !20, line: 611, baseType: !47, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p_align", scope: !34, file: !20, line: 612, baseType: !47, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_phnum", scope: !15, file: !16, line: 25, baseType: !51, size: 16, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !20, line: 36, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !22, line: 36, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !24, line: 57, baseType: !54)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_adds", scope: !15, file: !16, line: 26, baseType: !56, size: 64, offset: 256)
!56 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_subs", scope: !15, file: !16, line: 27, baseType: !56, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_tls_modid", scope: !15, file: !16, line: 28, baseType: !59, size: 64, offset: 384)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 58, baseType: !25)
!60 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dlpi_tls_data", scope: !15, file: !16, line: 29, baseType: !62, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: "callback", arg: 1, scope: !7, file: !1, line: 40, type: !11)
!65 = !DILocalVariable(name: "data", arg: 2, scope: !7, file: !1, line: 42, type: !62)
!66 = !DILocation(line: 40, column: 9, scope: !7)
!67 = !DILocation(line: 42, column: 9, scope: !7)
!68 = !DILocation(line: 44, column: 2, scope: !7)
