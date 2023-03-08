; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/stats.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/stats.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }

@lwip_stats = common dso_local local_unnamed_addr global %struct.stats_ zeroinitializer, align 2, !dbg !0

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @stats_init() local_unnamed_addr #0 !dbg !73 {
  ret void, !dbg !76
}

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!69, !70, !71}
!llvm.ident = !{!72}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lwip_stats", scope: !2, file: !3, line: 50, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/stats.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!0}
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stats_", file: !7, line: 232, size: 2480, elements: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/stats.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !{!9, !31, !32, !33, !34, !35, !36, !37, !48, !49, !50, !51, !68}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !6, file: !7, line: 235, baseType: !10, size: 192)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stats_proto", file: !7, line: 64, size: 192, elements: !11)
!11 = !{!12, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !10, file: !7, line: 65, baseType: !13, size: 16)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !14, line: 127, baseType: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 36, baseType: !17)
!16 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !18, line: 57, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !10, file: !7, line: 66, baseType: !13, size: 16, offset: 16)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !10, file: !7, line: 67, baseType: !13, size: 16, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !10, file: !7, line: 68, baseType: !13, size: 16, offset: 48)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "chkerr", scope: !10, file: !7, line: 69, baseType: !13, size: 16, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "lenerr", scope: !10, file: !7, line: 70, baseType: !13, size: 16, offset: 80)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "memerr", scope: !10, file: !7, line: 71, baseType: !13, size: 16, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rterr", scope: !10, file: !7, line: 72, baseType: !13, size: 16, offset: 112)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "proterr", scope: !10, file: !7, line: 73, baseType: !13, size: 16, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "opterr", scope: !10, file: !7, line: 74, baseType: !13, size: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !10, file: !7, line: 75, baseType: !13, size: 16, offset: 160)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cachehit", scope: !10, file: !7, line: 76, baseType: !13, size: 16, offset: 176)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "etharp", scope: !6, file: !7, line: 239, baseType: !10, size: 192, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ip_frag", scope: !6, file: !7, line: 243, baseType: !10, size: 192, offset: 384)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !6, file: !7, line: 247, baseType: !10, size: 192, offset: 576)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "icmp", scope: !6, file: !7, line: 251, baseType: !10, size: 192, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !6, file: !7, line: 259, baseType: !10, size: 192, offset: 960)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !6, file: !7, line: 263, baseType: !10, size: 192, offset: 1152)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !6, file: !7, line: 275, baseType: !38, size: 144, offset: 1344)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stats_sys", file: !7, line: 117, size: 144, elements: !39)
!39 = !{!40, !46, !47}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !38, file: !7, line: 118, baseType: !41, size: 48)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stats_syselem", file: !7, line: 110, size: 48, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !41, file: !7, line: 111, baseType: !13, size: 16)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !41, file: !7, line: 112, baseType: !13, size: 16, offset: 16)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !41, file: !7, line: 113, baseType: !13, size: 16, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !7, line: 119, baseType: !41, size: 48, offset: 48)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !38, file: !7, line: 120, baseType: !41, size: 48, offset: 96)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !6, file: !7, line: 279, baseType: !10, size: 192, offset: 1488)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6", scope: !6, file: !7, line: 283, baseType: !10, size: 192, offset: 1680)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_frag", scope: !6, file: !7, line: 287, baseType: !10, size: 192, offset: 1872)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mld6", scope: !6, file: !7, line: 291, baseType: !52, size: 224, offset: 2064)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stats_igmp", file: !7, line: 80, size: 224, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !52, file: !7, line: 81, baseType: !13, size: 16)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !52, file: !7, line: 82, baseType: !13, size: 16, offset: 16)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !52, file: !7, line: 83, baseType: !13, size: 16, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "chkerr", scope: !52, file: !7, line: 84, baseType: !13, size: 16, offset: 48)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "lenerr", scope: !52, file: !7, line: 85, baseType: !13, size: 16, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "memerr", scope: !52, file: !7, line: 86, baseType: !13, size: 16, offset: 80)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "proterr", scope: !52, file: !7, line: 87, baseType: !13, size: 16, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "rx_v1", scope: !52, file: !7, line: 88, baseType: !13, size: 16, offset: 112)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "rx_group", scope: !52, file: !7, line: 89, baseType: !13, size: 16, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "rx_general", scope: !52, file: !7, line: 90, baseType: !13, size: 16, offset: 144)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "rx_report", scope: !52, file: !7, line: 91, baseType: !13, size: 16, offset: 160)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "tx_join", scope: !52, file: !7, line: 92, baseType: !13, size: 16, offset: 176)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tx_leave", scope: !52, file: !7, line: 93, baseType: !13, size: 16, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tx_report", scope: !52, file: !7, line: 94, baseType: !13, size: 16, offset: 208)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nd6", scope: !6, file: !7, line: 295, baseType: !10, size: 192, offset: 2288)
!69 = !{i32 2, !"Dwarf Version", i32 4}
!70 = !{i32 2, !"Debug Info Version", i32 3}
!71 = !{i32 1, !"wchar_size", i32 4}
!72 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!73 = distinct !DISubprogram(name: "stats_init", scope: !3, file: !3, line: 53, type: !74, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!74 = !DISubroutineType(types: !75)
!75 = !{null}
!76 = !DILocation(line: 60, column: 1, scope: !73)
