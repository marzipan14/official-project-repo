; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ip.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ip.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], {}*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }

@ip_addr_any_type = dso_local local_unnamed_addr constant %struct.ip_addr { %union.anon zeroinitializer, i8 46 }, align 4, !dbg !0
@ip_data = common dso_local local_unnamed_addr global %struct.ip_globals zeroinitializer, align 8, !dbg !49

; Function Attrs: noredzone nounwind
define dso_local i8* @ipaddr_ntoa(%struct.ip_addr*) local_unnamed_addr #0 !dbg !219 {
  %2 = icmp eq %struct.ip_addr* %0, null, !dbg !227
  br i1 %2, label %13, label %3, !dbg !229

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !230
  %5 = load i8, i8* %4, align 4, !dbg !230, !tbaa !232
  %6 = icmp eq i8 %5, 6, !dbg !230
  br i1 %6, label %7, label %10, !dbg !236

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, !dbg !237
  %9 = tail call i8* @ip6addr_ntoa(%struct.ip6_addr* nonnull %8) #3, !dbg !239
  br label %13, !dbg !240

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.ip_addr* %0 to %struct.ip4_addr*, !dbg !241
  %12 = tail call i8* @ip4addr_ntoa(%struct.ip4_addr* %11) #3, !dbg !243
  br label %13, !dbg !244

; <label>:13:                                     ; preds = %1, %10, %7
  %14 = phi i8* [ %9, %7 ], [ %12, %10 ], [ null, %1 ], !dbg !245
  ret i8* %14, !dbg !246
}

; Function Attrs: noredzone
declare dso_local i8* @ip6addr_ntoa(%struct.ip6_addr*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @ip4addr_ntoa(%struct.ip4_addr*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @ipaddr_ntoa_r(%struct.ip_addr*, i8*, i32) local_unnamed_addr #0 !dbg !247 {
  %4 = icmp eq %struct.ip_addr* %0, null, !dbg !257
  br i1 %4, label %15, label %5, !dbg !259

; <label>:5:                                      ; preds = %3
  %6 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !260
  %7 = load i8, i8* %6, align 4, !dbg !260, !tbaa !232
  %8 = icmp eq i8 %7, 6, !dbg !260
  br i1 %8, label %9, label %12, !dbg !262

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, !dbg !263
  %11 = tail call i8* @ip6addr_ntoa_r(%struct.ip6_addr* nonnull %10, i8* %1, i32 %2) #3, !dbg !265
  br label %15, !dbg !266

; <label>:12:                                     ; preds = %5
  %13 = bitcast %struct.ip_addr* %0 to %struct.ip4_addr*, !dbg !267
  %14 = tail call i8* @ip4addr_ntoa_r(%struct.ip4_addr* %13, i8* %1, i32 %2) #3, !dbg !269
  br label %15, !dbg !270

; <label>:15:                                     ; preds = %3, %12, %9
  %16 = phi i8* [ %11, %9 ], [ %14, %12 ], [ null, %3 ], !dbg !271
  ret i8* %16, !dbg !272
}

; Function Attrs: noredzone
declare dso_local i8* @ip6addr_ntoa_r(%struct.ip6_addr*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @ip4addr_ntoa_r(%struct.ip4_addr*, i8*, i32) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !273 {
  %3 = icmp eq i8* %0, null, !dbg !287
  br i1 %3, label %23, label %4, !dbg !288

; <label>:4:                                      ; preds = %2, %14
  %5 = phi i8* [ %15, %14 ], [ %0, %2 ], !dbg !289
  %6 = load i8, i8* %5, align 1, !dbg !293, !tbaa !294
  switch i8 %6, label %14 [
    i8 0, label %16
    i8 58, label %7
    i8 46, label %16
  ], !dbg !295

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.ip_addr* %1, null, !dbg !296
  br i1 %8, label %11, label %9, !dbg !301

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !302
  store i8 6, i8* %10, align 4, !dbg !302, !tbaa !232
  br label %11, !dbg !305

; <label>:11:                                     ; preds = %7, %9
  %12 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, !dbg !306
  %13 = tail call i32 @ip6addr_aton(i8* nonnull %0, %struct.ip6_addr* %12) #3, !dbg !307
  br label %23, !dbg !308

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !309
  br label %4, !dbg !310, !llvm.loop !311

; <label>:16:                                     ; preds = %4, %4
  %17 = icmp eq %struct.ip_addr* %1, null, !dbg !313
  br i1 %17, label %20, label %18, !dbg !315

; <label>:18:                                     ; preds = %16
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !316
  store i8 0, i8* %19, align 4, !dbg !316, !tbaa !232
  br label %20, !dbg !319

; <label>:20:                                     ; preds = %16, %18
  %21 = bitcast %struct.ip_addr* %1 to %struct.ip4_addr*, !dbg !320
  %22 = tail call i32 @ip4addr_aton(i8* nonnull %0, %struct.ip4_addr* %21) #3, !dbg !321
  br label %23, !dbg !322

; <label>:23:                                     ; preds = %2, %11, %20
  %24 = phi i32 [ %13, %11 ], [ %22, %20 ], [ 0, %2 ], !dbg !323
  ret i32 %24, !dbg !324
}

; Function Attrs: noredzone
declare dso_local i32 @ip6addr_aton(i8*, %struct.ip6_addr*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @ip4addr_aton(i8*, %struct.ip4_addr*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !325 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !331
  br i1 %3, label %14, label %4, !dbg !333

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !334
  %6 = load i8*, i8** %5, align 8, !dbg !334, !tbaa !337
  %7 = load i8, i8* %6, align 1, !dbg !334, !tbaa !294
  %8 = and i8 %7, -16, !dbg !341
  %9 = icmp eq i8 %8, 96, !dbg !341
  br i1 %9, label %10, label %12, !dbg !342

; <label>:10:                                     ; preds = %4
  %11 = tail call signext i8 @ip6_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #3, !dbg !343
  br label %14, !dbg !345

; <label>:12:                                     ; preds = %4
  %13 = tail call signext i8 @ip4_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #3, !dbg !346
  br label %14, !dbg !347

; <label>:14:                                     ; preds = %2, %12, %10
  %15 = phi i8 [ %11, %10 ], [ %13, %12 ], [ -6, %2 ], !dbg !348
  ret i8 %15, !dbg !349
}

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local signext i8 @ip4_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!215, !216, !217}
!llvm.ident = !{!218}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ip_addr_any_type", scope: !2, file: !3, line: 68, type: !214, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !38, globals: !48)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ip.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !6, line: 54, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!11 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !13, line: 156, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !18, line: 53, baseType: !19, size: 32, elements: !20)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!21 = !DIEnumerator(name: "ERR_OK", value: 0)
!22 = !DIEnumerator(name: "ERR_MEM", value: -1)
!23 = !DIEnumerator(name: "ERR_BUF", value: -2)
!24 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!25 = !DIEnumerator(name: "ERR_RTE", value: -4)
!26 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!27 = !DIEnumerator(name: "ERR_VAL", value: -6)
!28 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!29 = !DIEnumerator(name: "ERR_USE", value: -8)
!30 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!31 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!32 = !DIEnumerator(name: "ERR_CONN", value: -11)
!33 = !DIEnumerator(name: "ERR_IF", value: -12)
!34 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!35 = !DIEnumerator(name: "ERR_RST", value: -14)
!36 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!37 = !DIEnumerator(name: "ERR_ARG", value: -16)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !42, line: 125, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !44, line: 24, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !46, line: 43, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !{!0, !49}
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "ip_data", scope: !2, file: !3, line: 64, type: !51, isLocal: false, isDefinition: true)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_globals", file: !52, line: 107, size: 704, elements: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54, !175, !176, !196, !211, !212, !213}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "current_netif", scope: !51, file: !52, line: 110, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !13, line: 260, size: 2240, elements: !57)
!57 = !{!58, !59, !86, !87, !88, !92, !94, !96, !97, !123, !130, !135, !142, !147, !148, !149, !153, !154, !155, !156, !160, !161, !162, !167, !168, !169, !170}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !56, file: !13, line: 263, baseType: !55, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !56, file: !13, line: 268, baseType: !60, size: 192, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !6, line: 76, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !6, line: 69, size: 192, elements: !62)
!62 = !{!63, !85}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !61, file: !6, line: 73, baseType: !64, size: 160)
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !61, file: !6, line: 70, size: 160, elements: !65)
!65 = !{!66, !79}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !64, file: !6, line: 71, baseType: !67, size: 160)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !68, line: 67, baseType: !69)
!68 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !68, line: 59, size: 160, elements: !70)
!70 = !{!71, !78}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !69, file: !68, line: 60, baseType: !72, size: 128)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !42, line: 129, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !44, line: 48, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !46, line: 79, baseType: !7)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !69, file: !68, line: 62, baseType: !41, size: 8, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !64, file: !6, line: 72, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !81, line: 57, baseType: !82)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !81, line: 51, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !82, file: !81, line: 52, baseType: !73, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !6, line: 75, baseType: !41, size: 8, offset: 160)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !56, file: !13, line: 269, baseType: !60, size: 192, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !56, file: !13, line: 270, baseType: !60, size: 192, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !56, file: !13, line: 274, baseType: !89, size: 576, offset: 640)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 576, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 3)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !56, file: !13, line: 277, baseType: !93, size: 24, offset: 1216)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 24, elements: !90)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !56, file: !13, line: 282, baseType: !95, size: 96, offset: 1248)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 96, elements: !90)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !56, file: !13, line: 283, baseType: !95, size: 96, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !56, file: !13, line: 288, baseType: !98, size: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !13, line: 178, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !107, !55}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !18, line: 96, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !42, line: 126, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !44, line: 20, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !46, line: 41, baseType: !106)
!106 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !109, line: 186, size: 192, elements: !110)
!109 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!110 = !{!111, !112, !113, !118, !119, !120, !121, !122}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !108, file: !109, line: 188, baseType: !107, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !108, file: !109, line: 191, baseType: !39, size: 64, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !108, file: !109, line: 200, baseType: !114, size: 16, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !42, line: 127, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !44, line: 36, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !46, line: 57, baseType: !117)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !109, line: 203, baseType: !114, size: 16, offset: 144)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !108, file: !109, line: 208, baseType: !41, size: 8, offset: 160)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !109, line: 211, baseType: !41, size: 8, offset: 168)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !108, file: !109, line: 218, baseType: !41, size: 8, offset: 176)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !108, file: !109, line: 221, baseType: !41, size: 8, offset: 184)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !56, file: !13, line: 294, baseType: !124, size: 64, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !13, line: 189, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!102, !55, !107, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !56, file: !13, line: 299, baseType: !131, size: 64, offset: 1600)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !13, line: 212, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!102, !55, !107}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !56, file: !13, line: 305, baseType: !136, size: 64, offset: 1664)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !13, line: 202, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!102, !55, !107, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !56, file: !13, line: 310, baseType: !143, size: 64, offset: 1728)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !13, line: 214, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !55}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !56, file: !13, line: 319, baseType: !143, size: 64, offset: 1792)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !56, file: !13, line: 323, baseType: !39, size: 64, offset: 1856)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !56, file: !13, line: 325, baseType: !150, size: 64, offset: 1920)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 1)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !56, file: !13, line: 332, baseType: !114, size: 16, offset: 1984)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !56, file: !13, line: 335, baseType: !114, size: 16, offset: 2000)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !56, file: !13, line: 338, baseType: !114, size: 16, offset: 2016)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !56, file: !13, line: 341, baseType: !157, size: 48, offset: 2032)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 48, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 6)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !56, file: !13, line: 343, baseType: !41, size: 8, offset: 2080)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !56, file: !13, line: 345, baseType: !41, size: 8, offset: 2088)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !13, line: 347, baseType: !163, size: 16, offset: 2096)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 16, elements: !165)
!164 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!165 = !{!166}
!166 = !DISubrange(count: 2)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !56, file: !13, line: 350, baseType: !41, size: 8, offset: 2112)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !56, file: !13, line: 353, baseType: !41, size: 8, offset: 2120)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !56, file: !13, line: 357, baseType: !41, size: 8, offset: 2128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !56, file: !13, line: 377, baseType: !171, size: 64, offset: 2176)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !13, line: 222, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!102, !55, !140, !12}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "current_input_netif", scope: !51, file: !52, line: 112, baseType: !55, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "current_ip4_header", scope: !51, file: !52, line: 115, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_hdr", file: !180, line: 73, size: 160, elements: !181)
!180 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip4.h", directory: "/root/.unikraft/apps/redis/build")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !195}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_v_hl", scope: !179, file: !180, line: 75, baseType: !41, size: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_tos", scope: !179, file: !180, line: 77, baseType: !41, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_len", scope: !179, file: !180, line: 79, baseType: !114, size: 16, offset: 16)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_id", scope: !179, file: !180, line: 81, baseType: !114, size: 16, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !179, file: !180, line: 83, baseType: !114, size: 16, offset: 48)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_ttl", scope: !179, file: !180, line: 89, baseType: !41, size: 8, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_proto", scope: !179, file: !180, line: 91, baseType: !41, size: 8, offset: 72)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_chksum", scope: !179, file: !180, line: 93, baseType: !114, size: 16, offset: 80)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !179, file: !180, line: 95, baseType: !191, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_p_t", file: !180, line: 61, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr_packed", file: !180, line: 53, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !192, file: !180, line: 54, baseType: !73, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !179, file: !180, line: 96, baseType: !191, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "current_ip6_header", scope: !51, file: !52, line: 119, baseType: !197, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !199, line: 80, size: 320, elements: !200)
!199 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!200 = !{!201, !202, !203, !204, !205, !210}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !198, file: !199, line: 82, baseType: !73, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !198, file: !199, line: 84, baseType: !114, size: 16, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !198, file: !199, line: 86, baseType: !41, size: 8, offset: 48)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !198, file: !199, line: 88, baseType: !41, size: 8, offset: 56)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !198, file: !199, line: 90, baseType: !206, size: 128, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !199, line: 60, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !199, line: 53, size: 128, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !207, file: !199, line: 54, baseType: !72, size: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !198, file: !199, line: 91, baseType: !206, size: 128, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "current_ip_header_tot_len", scope: !51, file: !52, line: 122, baseType: !114, size: 16, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "current_iphdr_src", scope: !51, file: !52, line: 124, baseType: !60, size: 192, offset: 288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "current_iphdr_dest", scope: !51, file: !52, line: 126, baseType: !60, size: 192, offset: 480)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!215 = !{i32 2, !"Dwarf Version", i32 4}
!216 = !{i32 2, !"Debug Info Version", i32 3}
!217 = !{i32 1, !"wchar_size", i32 4}
!218 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!219 = distinct !DISubprogram(name: "ipaddr_ntoa", scope: !3, file: !3, line: 79, type: !220, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !224)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!224 = !{!225}
!225 = !DILocalVariable(name: "addr", arg: 1, scope: !219, file: !3, line: 79, type: !223)
!226 = !DILocation(line: 79, column: 36, scope: !219)
!227 = !DILocation(line: 81, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !219, file: !3, line: 81, column: 7)
!229 = !DILocation(line: 81, column: 7, scope: !219)
!230 = !DILocation(line: 84, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !219, file: !3, line: 84, column: 7)
!232 = !{!233, !234, i64 20}
!233 = !{!"ip_addr", !234, i64 0, !234, i64 20}
!234 = !{!"omnipotent char", !235, i64 0}
!235 = !{!"Simple C/C++ TBAA"}
!236 = !DILocation(line: 84, column: 7, scope: !219)
!237 = !DILocation(line: 85, column: 25, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 84, column: 23)
!239 = !DILocation(line: 85, column: 12, scope: !238)
!240 = !DILocation(line: 85, column: 5, scope: !238)
!241 = !DILocation(line: 87, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !231, file: !3, line: 86, column: 10)
!243 = !DILocation(line: 87, column: 12, scope: !242)
!244 = !DILocation(line: 87, column: 5, scope: !242)
!245 = !DILocation(line: 0, scope: !242)
!246 = !DILocation(line: 89, column: 1, scope: !219)
!247 = distinct !DISubprogram(name: "ipaddr_ntoa_r", scope: !3, file: !3, line: 101, type: !248, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!222, !223, !222, !19}
!250 = !{!251, !252, !253}
!251 = !DILocalVariable(name: "addr", arg: 1, scope: !247, file: !3, line: 101, type: !223)
!252 = !DILocalVariable(name: "buf", arg: 2, scope: !247, file: !3, line: 101, type: !222)
!253 = !DILocalVariable(name: "buflen", arg: 3, scope: !247, file: !3, line: 101, type: !19)
!254 = !DILocation(line: 101, column: 38, scope: !247)
!255 = !DILocation(line: 101, column: 50, scope: !247)
!256 = !DILocation(line: 101, column: 59, scope: !247)
!257 = !DILocation(line: 103, column: 12, scope: !258)
!258 = distinct !DILexicalBlock(scope: !247, file: !3, line: 103, column: 7)
!259 = !DILocation(line: 103, column: 7, scope: !247)
!260 = !DILocation(line: 106, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !247, file: !3, line: 106, column: 7)
!262 = !DILocation(line: 106, column: 7, scope: !247)
!263 = !DILocation(line: 107, column: 27, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !3, line: 106, column: 23)
!265 = !DILocation(line: 107, column: 12, scope: !264)
!266 = !DILocation(line: 107, column: 5, scope: !264)
!267 = !DILocation(line: 109, column: 27, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !3, line: 108, column: 10)
!269 = !DILocation(line: 109, column: 12, scope: !268)
!270 = !DILocation(line: 109, column: 5, scope: !268)
!271 = !DILocation(line: 0, scope: !268)
!272 = !DILocation(line: 111, column: 1, scope: !247)
!273 = distinct !DISubprogram(name: "ipaddr_aton", scope: !3, file: !3, line: 123, type: !274, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !279)
!274 = !DISubroutineType(types: !275)
!275 = !{!19, !276, !278}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!279 = !{!280, !281, !282}
!280 = !DILocalVariable(name: "cp", arg: 1, scope: !273, file: !3, line: 123, type: !276)
!281 = !DILocalVariable(name: "addr", arg: 2, scope: !273, file: !3, line: 123, type: !278)
!282 = !DILocalVariable(name: "c", scope: !283, file: !3, line: 126, type: !276)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 125, column: 19)
!284 = distinct !DILexicalBlock(scope: !273, file: !3, line: 125, column: 7)
!285 = !DILocation(line: 123, column: 25, scope: !273)
!286 = !DILocation(line: 123, column: 40, scope: !273)
!287 = !DILocation(line: 125, column: 10, scope: !284)
!288 = !DILocation(line: 125, column: 7, scope: !273)
!289 = !DILocation(line: 0, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 127, column: 5)
!291 = distinct !DILexicalBlock(scope: !283, file: !3, line: 127, column: 5)
!292 = !DILocation(line: 126, column: 17, scope: !283)
!293 = !DILocation(line: 127, column: 18, scope: !290)
!294 = !{!234, !234, i64 0}
!295 = !DILocation(line: 127, column: 5, scope: !291)
!296 = !DILocation(line: 130, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 130, column: 13)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 128, column: 22)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 128, column: 11)
!300 = distinct !DILexicalBlock(scope: !290, file: !3, line: 127, column: 32)
!301 = !DILocation(line: 130, column: 13, scope: !298)
!302 = !DILocation(line: 131, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 131, column: 11)
!304 = distinct !DILexicalBlock(scope: !297, file: !3, line: 130, column: 19)
!305 = !DILocation(line: 132, column: 9, scope: !304)
!306 = !DILocation(line: 133, column: 33, scope: !298)
!307 = !DILocation(line: 133, column: 16, scope: !298)
!308 = !DILocation(line: 133, column: 9, scope: !298)
!309 = !DILocation(line: 127, column: 28, scope: !290)
!310 = !DILocation(line: 127, column: 5, scope: !290)
!311 = distinct !{!311, !295, !312}
!312 = !DILocation(line: 138, column: 5, scope: !291)
!313 = !DILocation(line: 140, column: 9, scope: !314)
!314 = distinct !DILexicalBlock(scope: !283, file: !3, line: 140, column: 9)
!315 = !DILocation(line: 140, column: 9, scope: !283)
!316 = !DILocation(line: 141, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 141, column: 7)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 140, column: 15)
!319 = !DILocation(line: 142, column: 5, scope: !318)
!320 = !DILocation(line: 143, column: 29, scope: !283)
!321 = !DILocation(line: 143, column: 12, scope: !283)
!322 = !DILocation(line: 143, column: 5, scope: !283)
!323 = !DILocation(line: 0, scope: !273)
!324 = !DILocation(line: 146, column: 1, scope: !273)
!325 = distinct !DISubprogram(name: "ip_input", scope: !3, file: !3, line: 154, type: !100, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !326)
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "p", arg: 1, scope: !325, file: !3, line: 154, type: !107)
!328 = !DILocalVariable(name: "inp", arg: 2, scope: !325, file: !3, line: 154, type: !55)
!329 = !DILocation(line: 154, column: 23, scope: !325)
!330 = !DILocation(line: 154, column: 40, scope: !325)
!331 = !DILocation(line: 156, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !3, line: 156, column: 7)
!333 = !DILocation(line: 156, column: 7, scope: !325)
!334 = !DILocation(line: 157, column: 9, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 157, column: 9)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 156, column: 18)
!337 = !{!338, !339, i64 8}
!338 = !{!"pbuf", !339, i64 0, !339, i64 8, !340, i64 16, !340, i64 18, !234, i64 20, !234, i64 21, !234, i64 22, !234, i64 23}
!339 = !{!"any pointer", !234, i64 0}
!340 = !{!"short", !234, i64 0}
!341 = !DILocation(line: 157, column: 40, scope: !335)
!342 = !DILocation(line: 157, column: 9, scope: !336)
!343 = !DILocation(line: 158, column: 14, scope: !344)
!344 = distinct !DILexicalBlock(scope: !335, file: !3, line: 157, column: 46)
!345 = !DILocation(line: 158, column: 7, scope: !344)
!346 = !DILocation(line: 160, column: 12, scope: !336)
!347 = !DILocation(line: 160, column: 5, scope: !336)
!348 = !DILocation(line: 0, scope: !325)
!349 = !DILocation(line: 163, column: 1, scope: !325)
