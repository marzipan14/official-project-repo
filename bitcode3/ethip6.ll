; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ethip6.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ethip6.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, {}*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip4_addr = type { i32 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.eth_addr = type { [6 x i8] }

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ethip6_output(%struct.netif*, %struct.pbuf*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !76 {
  %4 = alloca %struct.eth_addr, align 1
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 0, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %6) #4, !dbg !202
  %7 = bitcast i8** %5 to i8*, !dbg !203
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4, !dbg !203
  %8 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !204
  %9 = load i32, i32* %8, align 4, !dbg !204, !tbaa !206
  %10 = and i32 %9, 255, !dbg !204
  %11 = icmp eq i32 %10, 255, !dbg !204
  br i1 %11, label %12, label %30, !dbg !210

; <label>:12:                                     ; preds = %3
  store i8 51, i8* %6, align 1, !dbg !211, !tbaa !213
  %13 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 1, !dbg !214
  store i8 51, i8* %13, align 1, !dbg !215, !tbaa !213
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !216
  %15 = bitcast i32* %14 to i8*, !dbg !217
  %16 = load i8, i8* %15, align 4, !dbg !217, !tbaa !213
  %17 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 2, !dbg !218
  store i8 %16, i8* %17, align 1, !dbg !219, !tbaa !213
  %18 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !220
  %19 = load i8, i8* %18, align 1, !dbg !220, !tbaa !213
  %20 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 3, !dbg !221
  store i8 %19, i8* %20, align 1, !dbg !222, !tbaa !213
  %21 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !223
  %22 = load i8, i8* %21, align 2, !dbg !223, !tbaa !213
  %23 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 4, !dbg !224
  store i8 %22, i8* %23, align 1, !dbg !225, !tbaa !213
  %24 = getelementptr inbounds i8, i8* %15, i64 3, !dbg !226
  %25 = load i8, i8* %24, align 1, !dbg !226, !tbaa !213
  %26 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 5, !dbg !227
  store i8 %25, i8* %26, align 1, !dbg !228, !tbaa !213
  %27 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !229
  %28 = bitcast i8* %27 to %struct.eth_addr*, !dbg !230
  %29 = call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* %1, %struct.eth_addr* nonnull %28, %struct.eth_addr* nonnull %4, i16 zeroext -31011) #5, !dbg !232
  br label %41, !dbg !233

; <label>:30:                                     ; preds = %3
  %31 = call signext i8 @nd6_get_next_hop_addr_or_queue(%struct.netif* %0, %struct.pbuf* %1, %struct.ip6_addr* nonnull %2, i8** nonnull %5) #5, !dbg !235
  %32 = icmp eq i8 %31, 0, !dbg !237
  br i1 %32, label %33, label %41, !dbg !239

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %5, align 8, !dbg !240, !tbaa !242
  %35 = icmp eq i8* %34, null, !dbg !244
  br i1 %35, label %41, label %36, !dbg !245

; <label>:36:                                     ; preds = %33
  %37 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %34, i64 6) #5, !dbg !246
  %38 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !247
  %39 = bitcast i8* %38 to %struct.eth_addr*, !dbg !248
  %40 = call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* %1, %struct.eth_addr* nonnull %39, %struct.eth_addr* nonnull %4, i16 zeroext -31011) #5, !dbg !249
  br label %41, !dbg !250

; <label>:41:                                     ; preds = %33, %30, %36, %12
  %42 = phi i8 [ %29, %12 ], [ %40, %36 ], [ %31, %30 ], [ 0, %33 ], !dbg !251
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4, !dbg !252
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %6) #4, !dbg !252
  ret i8 %42, !dbg !252
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_output(%struct.netif*, %struct.pbuf*, %struct.eth_addr*, %struct.eth_addr*, i16 zeroext) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local signext i8 @nd6_get_next_hop_addr_or_queue(%struct.netif*, %struct.pbuf*, %struct.ip6_addr*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!72, !73, !74}
!llvm.ident = !{!75}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !49)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ethip6.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3, !9, !28}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !4, line: 156, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ieee_eth_type", file: !10, line: 52, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ieee.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!12 = !DIEnumerator(name: "ETHTYPE_IP", value: 2048, isUnsigned: true)
!13 = !DIEnumerator(name: "ETHTYPE_ARP", value: 2054, isUnsigned: true)
!14 = !DIEnumerator(name: "ETHTYPE_WOL", value: 2114, isUnsigned: true)
!15 = !DIEnumerator(name: "ETHTYPE_RARP", value: 32821, isUnsigned: true)
!16 = !DIEnumerator(name: "ETHTYPE_VLAN", value: 33024, isUnsigned: true)
!17 = !DIEnumerator(name: "ETHTYPE_IPV6", value: 34525, isUnsigned: true)
!18 = !DIEnumerator(name: "ETHTYPE_PPPOEDISC", value: 34915, isUnsigned: true)
!19 = !DIEnumerator(name: "ETHTYPE_PPPOE", value: 34916, isUnsigned: true)
!20 = !DIEnumerator(name: "ETHTYPE_JUMBO", value: 34928, isUnsigned: true)
!21 = !DIEnumerator(name: "ETHTYPE_PROFINET", value: 34962, isUnsigned: true)
!22 = !DIEnumerator(name: "ETHTYPE_ETHERCAT", value: 34980, isUnsigned: true)
!23 = !DIEnumerator(name: "ETHTYPE_LLDP", value: 35020, isUnsigned: true)
!24 = !DIEnumerator(name: "ETHTYPE_SERCOS", value: 35021, isUnsigned: true)
!25 = !DIEnumerator(name: "ETHTYPE_MRP", value: 35043, isUnsigned: true)
!26 = !DIEnumerator(name: "ETHTYPE_PTP", value: 35063, isUnsigned: true)
!27 = !DIEnumerator(name: "ETHTYPE_QINQ", value: 37120, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 53, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!32 = !DIEnumerator(name: "ERR_OK", value: 0)
!33 = !DIEnumerator(name: "ERR_MEM", value: -1)
!34 = !DIEnumerator(name: "ERR_BUF", value: -2)
!35 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!36 = !DIEnumerator(name: "ERR_RTE", value: -4)
!37 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!38 = !DIEnumerator(name: "ERR_VAL", value: -6)
!39 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!40 = !DIEnumerator(name: "ERR_USE", value: -8)
!41 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!42 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!43 = !DIEnumerator(name: "ERR_CONN", value: -11)
!44 = !DIEnumerator(name: "ERR_IF", value: -12)
!45 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!46 = !DIEnumerator(name: "ERR_RST", value: -14)
!47 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!48 = !DIEnumerator(name: "ERR_ARG", value: -16)
!49 = !{!50, !56, !62, !71}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !51, line: 129, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !53, line: 48, baseType: !54)
!53 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !55, line: 79, baseType: !5)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !51, line: 125, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !53, line: 24, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !55, line: 43, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eth_addr", file: !65, line: 60, size: 48, elements: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ethernet.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !64, file: !65, line: 61, baseType: !68, size: 48)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 48, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 6)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !{i32 2, !"Dwarf Version", i32 4}
!73 = !{i32 2, !"Debug Info Version", i32 3}
!74 = !{i32 1, !"wchar_size", i32 4}
!75 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!76 = distinct !DISubprogram(name: "ethip6_output", scope: !1, file: !1, line: 79, type: !77, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !192)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !84, !129, !190}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !29, line: 96, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !51, line: 126, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !53, line: 20, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !55, line: 41, baseType: !83)
!83 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !4, line: 260, size: 2240, elements: !86)
!86 = !{!87, !88, !113, !114, !115, !119, !121, !123, !124, !145, !152, !157, !160, !165, !166, !167, !171, !172, !173, !174, !175, !176, !177, !182, !183, !184, !185}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !4, line: 263, baseType: !84, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !85, file: !4, line: 268, baseType: !89, size: 192, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !90, line: 76, baseType: !91)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !90, line: 69, size: 192, elements: !92)
!92 = !{!93, !112}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !91, file: !90, line: 73, baseType: !94, size: 160)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !90, line: 70, size: 160, elements: !95)
!95 = !{!96, !106}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !94, file: !90, line: 71, baseType: !97, size: 160)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !98, line: 67, baseType: !99)
!98 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !98, line: 59, size: 160, elements: !100)
!100 = !{!101, !105}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !99, file: !98, line: 60, baseType: !102, size: 128)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 4)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !99, file: !98, line: 62, baseType: !58, size: 8, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !94, file: !90, line: 72, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !108, line: 57, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !108, line: 51, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !109, file: !108, line: 52, baseType: !50, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !90, line: 75, baseType: !58, size: 8, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !85, file: !4, line: 269, baseType: !89, size: 192, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !85, file: !4, line: 270, baseType: !89, size: 192, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !85, file: !4, line: 274, baseType: !116, size: 576, offset: 640)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 576, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 3)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !85, file: !4, line: 277, baseType: !120, size: 24, offset: 1216)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 24, elements: !117)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !85, file: !4, line: 282, baseType: !122, size: 96, offset: 1248)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 96, elements: !117)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !85, file: !4, line: 283, baseType: !122, size: 96, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !85, file: !4, line: 288, baseType: !125, size: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !4, line: 178, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!79, !129, !84}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !131, line: 186, size: 192, elements: !132)
!131 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!132 = !{!133, !134, !135, !140, !141, !142, !143, !144}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !130, file: !131, line: 188, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !130, file: !131, line: 191, baseType: !71, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !130, file: !131, line: 200, baseType: !136, size: 16, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !51, line: 127, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !53, line: 36, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !55, line: 57, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !130, file: !131, line: 203, baseType: !136, size: 16, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !130, file: !131, line: 208, baseType: !58, size: 8, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !131, line: 211, baseType: !58, size: 8, offset: 168)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !130, file: !131, line: 218, baseType: !58, size: 8, offset: 176)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !130, file: !131, line: 221, baseType: !58, size: 8, offset: 184)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !85, file: !4, line: 294, baseType: !146, size: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !4, line: 189, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!79, !84, !129, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !85, file: !4, line: 299, baseType: !153, size: 64, offset: 1600)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !4, line: 212, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!79, !84, !129}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !85, file: !4, line: 305, baseType: !158, size: 64, offset: 1664)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !4, line: 202, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !85, file: !4, line: 310, baseType: !161, size: 64, offset: 1728)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !4, line: 214, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !84}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !85, file: !4, line: 319, baseType: !161, size: 64, offset: 1792)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !85, file: !4, line: 323, baseType: !71, size: 64, offset: 1856)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !85, file: !4, line: 325, baseType: !168, size: 64, offset: 1920)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 1)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !85, file: !4, line: 332, baseType: !136, size: 16, offset: 1984)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !85, file: !4, line: 335, baseType: !136, size: 16, offset: 2000)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !85, file: !4, line: 338, baseType: !136, size: 16, offset: 2016)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !85, file: !4, line: 341, baseType: !68, size: 48, offset: 2032)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !85, file: !4, line: 343, baseType: !58, size: 8, offset: 2080)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !4, line: 345, baseType: !58, size: 8, offset: 2088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !4, line: 347, baseType: !178, size: 16, offset: 2096)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 16, elements: !180)
!179 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!180 = !{!181}
!181 = !DISubrange(count: 2)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !85, file: !4, line: 350, baseType: !58, size: 8, offset: 2112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !85, file: !4, line: 353, baseType: !58, size: 8, offset: 2120)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !85, file: !4, line: 357, baseType: !58, size: 8, offset: 2128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !85, file: !4, line: 377, baseType: !186, size: 64, offset: 2176)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !4, line: 222, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!79, !84, !190, !3}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DILocalVariable(name: "netif", arg: 1, scope: !76, file: !1, line: 79, type: !84)
!194 = !DILocalVariable(name: "q", arg: 2, scope: !76, file: !1, line: 79, type: !129)
!195 = !DILocalVariable(name: "ip6addr", arg: 3, scope: !76, file: !1, line: 79, type: !190)
!196 = !DILocalVariable(name: "dest", scope: !76, file: !1, line: 81, type: !64)
!197 = !DILocalVariable(name: "hwaddr", scope: !76, file: !1, line: 82, type: !56)
!198 = !DILocalVariable(name: "result", scope: !76, file: !1, line: 83, type: !79)
!199 = !DILocation(line: 79, column: 29, scope: !76)
!200 = !DILocation(line: 79, column: 49, scope: !76)
!201 = !DILocation(line: 79, column: 70, scope: !76)
!202 = !DILocation(line: 81, column: 3, scope: !76)
!203 = !DILocation(line: 82, column: 3, scope: !76)
!204 = !DILocation(line: 91, column: 7, scope: !205)
!205 = distinct !DILexicalBlock(scope: !76, file: !1, line: 91, column: 7)
!206 = !{!207, !207, i64 0}
!207 = !{!"int", !208, i64 0}
!208 = !{!"omnipotent char", !209, i64 0}
!209 = !{!"Simple C/C++ TBAA"}
!210 = !DILocation(line: 91, column: 7, scope: !76)
!211 = !DILocation(line: 93, column: 18, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !1, line: 91, column: 38)
!213 = !{!208, !208, i64 0}
!214 = !DILocation(line: 94, column: 5, scope: !212)
!215 = !DILocation(line: 94, column: 18, scope: !212)
!216 = !DILocation(line: 95, column: 38, scope: !212)
!217 = !DILocation(line: 95, column: 20, scope: !212)
!218 = !DILocation(line: 95, column: 5, scope: !212)
!219 = !DILocation(line: 95, column: 18, scope: !212)
!220 = !DILocation(line: 96, column: 20, scope: !212)
!221 = !DILocation(line: 96, column: 5, scope: !212)
!222 = !DILocation(line: 96, column: 18, scope: !212)
!223 = !DILocation(line: 97, column: 20, scope: !212)
!224 = !DILocation(line: 97, column: 5, scope: !212)
!225 = !DILocation(line: 97, column: 18, scope: !212)
!226 = !DILocation(line: 98, column: 20, scope: !212)
!227 = !DILocation(line: 98, column: 5, scope: !212)
!228 = !DILocation(line: 98, column: 18, scope: !212)
!229 = !DILocation(line: 101, column: 62, scope: !212)
!230 = !DILocation(line: 101, column: 38, scope: !212)
!231 = !DILocation(line: 81, column: 19, scope: !76)
!232 = !DILocation(line: 101, column: 12, scope: !212)
!233 = !DILocation(line: 101, column: 5, scope: !212)
!234 = !DILocation(line: 82, column: 15, scope: !76)
!235 = !DILocation(line: 108, column: 12, scope: !76)
!236 = !DILocation(line: 83, column: 9, scope: !76)
!237 = !DILocation(line: 109, column: 14, scope: !238)
!238 = distinct !DILexicalBlock(scope: !76, file: !1, line: 109, column: 7)
!239 = !DILocation(line: 109, column: 7, scope: !76)
!240 = !DILocation(line: 114, column: 7, scope: !241)
!241 = distinct !DILexicalBlock(scope: !76, file: !1, line: 114, column: 7)
!242 = !{!243, !243, i64 0}
!243 = !{!"any pointer", !208, i64 0}
!244 = !DILocation(line: 114, column: 14, scope: !241)
!245 = !DILocation(line: 114, column: 7, scope: !76)
!246 = !DILocation(line: 119, column: 3, scope: !76)
!247 = !DILocation(line: 120, column: 60, scope: !76)
!248 = !DILocation(line: 120, column: 36, scope: !76)
!249 = !DILocation(line: 120, column: 10, scope: !76)
!250 = !DILocation(line: 120, column: 3, scope: !76)
!251 = !DILocation(line: 0, scope: !76)
!252 = !DILocation(line: 121, column: 1, scope: !76)
