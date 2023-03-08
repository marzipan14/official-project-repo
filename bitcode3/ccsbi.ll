; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/ccs/ccsbi.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/ccs/ccsbi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iconv_ccs_t = type { i16, i8*, i16, i32, i16*, i32, i16* }

@_iconv_ccs = dso_local local_unnamed_addr global [1 x %struct.iconv_ccs_t*] zeroinitializer, align 8, !dbg !0

!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_iconv_ccs", scope: !2, file: !3, line: 12, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/ccs/ccsbi.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !29)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_ccs_t", file: !10, line: 140, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/ccs/ccs.h", directory: "/root/.unikraft/apps/redis/build")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 131, size: 384, elements: !12)
!12 = !{!13, !17, !21, !22, !24, !27, !28}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ver", scope: !11, file: !10, line: 133, baseType: !14, size: 16)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !10, line: 134, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !11, file: !10, line: 135, baseType: !14, size: 16, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "from_ucs_type", scope: !11, file: !10, line: 136, baseType: !23, size: 32, offset: 160)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "from_ucs", scope: !11, file: !10, line: 137, baseType: !25, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "to_ucs_type", scope: !11, file: !10, line: 138, baseType: !23, size: 32, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "to_ucs", scope: !11, file: !10, line: 139, baseType: !25, size: 64, offset: 320)
!29 = !{!30}
!30 = !DISubrange(count: 1)
!31 = !{i32 2, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
