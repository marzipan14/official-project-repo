; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/icmp6.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/icmp6.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.icmp6_hdr = type { i8, i8, i16, i32 }
%struct.icmp6_echo_hdr = type { i8, i8, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local global %struct.ip_globals, align 8
@.str = private unnamed_addr constant [36 x i8] c"icmpv6 packet not a direct response\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.3 = internal global [8 x i8] c"icmp6.c\00", section ".data_shared", align 1, !dbg !157
@.str.4 = private unnamed_addr constant [45 x i8] c"check that first pbuf can hold icmp 6message\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"must provide both source and destination\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !181 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 1), align 2, !dbg !299, !tbaa !300
  %4 = add i16 %3, 1, !dbg !299
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 1), align 2, !dbg !299, !tbaa !300
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !309
  %6 = load i16, i16* %5, align 2, !dbg !309, !tbaa !311
  %7 = icmp ult i16 %6, 8, !dbg !314
  br i1 %7, label %8, label %14, !dbg !315

; <label>:8:                                      ; preds = %2
  %9 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !316
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 5), align 2, !dbg !318, !tbaa !319
  %11 = add i16 %10, 1, !dbg !318
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 5), align 2, !dbg !318, !tbaa !319
  %12 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !320, !tbaa !321
  %13 = add i16 %12, 1, !dbg !320
  store i16 %13, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !320, !tbaa !321
  br label %94, !dbg !322

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !323
  %16 = bitcast i8** %15 to %struct.icmp6_hdr**, !dbg !323
  %17 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %16, align 8, !dbg !323, !tbaa !324
  %18 = icmp eq %struct.netif* %1, null, !dbg !326
  br i1 %18, label %24, label %19, !dbg !326

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !326
  %21 = load i16, i16* %20, align 8, !dbg !326, !tbaa !328
  %22 = and i16 %21, 4096, !dbg !326
  %23 = icmp eq i16 %22, 0, !dbg !326
  br i1 %23, label %35, label %24, !dbg !331

; <label>:24:                                     ; preds = %19, %14
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !332
  %26 = load i16, i16* %25, align 8, !dbg !332, !tbaa !335
  %27 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %0, i8 zeroext 58, i16 zeroext %26, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !336
  %28 = icmp eq i16 %27, 0, !dbg !337
  br i1 %28, label %35, label %29, !dbg !338

; <label>:29:                                     ; preds = %24
  %30 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !339
  %31 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 4), align 2, !dbg !341, !tbaa !342
  %32 = add i16 %31, 1, !dbg !341
  store i16 %32, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 4), align 2, !dbg !341, !tbaa !342
  %33 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !343, !tbaa !321
  %34 = add i16 %33, 1, !dbg !343
  store i16 %34, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !343, !tbaa !321
  br label %94, !dbg !344

; <label>:35:                                     ; preds = %24, %19
  %36 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %17, i64 0, i32 0, !dbg !345
  %37 = load i8, i8* %36, align 1, !dbg !345, !tbaa !346
  switch i8 %37, label %87 [
    i8 -120, label %38
    i8 -121, label %38
    i8 -122, label %38
    i8 -119, label %38
    i8 2, label %38
    i8 -123, label %92
    i8 -126, label %39
    i8 -125, label %39
    i8 -124, label %39
    i8 -128, label %40
  ], !dbg !349

; <label>:38:                                     ; preds = %35, %35, %35, %35, %35
  tail call void @nd6_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #7, !dbg !350
  br label %94, !dbg !352

; <label>:39:                                     ; preds = %35, %35, %35
  tail call void @mld6_input(%struct.pbuf* nonnull %0, %struct.netif* %1) #7, !dbg !353
  br label %94, !dbg !354

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !355, !tbaa !357
  %42 = and i32 %41, 255, !dbg !355
  %43 = icmp eq i32 %42, 255, !dbg !355
  br i1 %43, label %44, label %48, !dbg !358

; <label>:44:                                     ; preds = %40
  %45 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !359
  %46 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !361, !tbaa !321
  %47 = add i16 %46, 1, !dbg !361
  store i16 %47, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !361, !tbaa !321
  br label %94, !dbg !362

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !363
  %50 = load i16, i16* %49, align 8, !dbg !363, !tbaa !335
  %51 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %50, i32 640) #7, !dbg !364
  %52 = icmp eq %struct.pbuf* %51, null, !dbg !366
  br i1 %52, label %53, label %57, !dbg !368

; <label>:53:                                     ; preds = %48
  %54 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !369
  %55 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 6), align 2, !dbg !371, !tbaa !372
  %56 = add i16 %55, 1, !dbg !371
  store i16 %56, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 6), align 2, !dbg !371, !tbaa !372
  br label %94, !dbg !373

; <label>:57:                                     ; preds = %48
  %58 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %51, %struct.pbuf* nonnull %0) #7, !dbg !374
  %59 = icmp eq i8 %58, 0, !dbg !376
  br i1 %59, label %65, label %60, !dbg !377

; <label>:60:                                     ; preds = %57
  %61 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !378
  %62 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %51) #7, !dbg !380
  %63 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 10), align 2, !dbg !381, !tbaa !382
  %64 = add i16 %63, 1, !dbg !381
  store i16 %64, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 10), align 2, !dbg !381, !tbaa !382
  br label %94, !dbg !383

; <label>:65:                                     ; preds = %57
  %66 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %51, i64 0, i32 1, !dbg !384
  %67 = bitcast i8** %66 to %struct.icmp6_echo_hdr**, !dbg !384
  %68 = load %struct.icmp6_echo_hdr*, %struct.icmp6_echo_hdr** %67, align 8, !dbg !384, !tbaa !324
  %69 = getelementptr inbounds %struct.icmp6_echo_hdr, %struct.icmp6_echo_hdr* %68, i64 0, i32 0, !dbg !385
  store i8 -127, i8* %69, align 1, !dbg !386, !tbaa !387
  %70 = getelementptr inbounds %struct.icmp6_echo_hdr, %struct.icmp6_echo_hdr* %68, i64 0, i32 2, !dbg !389
  store i16 0, i16* %70, align 1, !dbg !390, !tbaa !391
  br i1 %18, label %76, label %71, !dbg !392

; <label>:71:                                     ; preds = %65
  %72 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 16, !dbg !392
  %73 = load i16, i16* %72, align 8, !dbg !392, !tbaa !328
  %74 = and i16 %73, 16, !dbg !392
  %75 = icmp eq i16 %74, 0, !dbg !392
  br i1 %75, label %82, label %76, !dbg !394

; <label>:76:                                     ; preds = %71, %65
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %51, i64 0, i32 2, !dbg !395
  %78 = load i16, i16* %77, align 8, !dbg !395, !tbaa !335
  %79 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %51, i8 zeroext 58, i16 zeroext %78, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0), %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0)) #7, !dbg !397
  %80 = load %struct.icmp6_echo_hdr*, %struct.icmp6_echo_hdr** %67, align 8, !dbg !398, !tbaa !324
  %81 = getelementptr inbounds %struct.icmp6_echo_hdr, %struct.icmp6_echo_hdr* %80, i64 0, i32 2, !dbg !399
  store i16 %79, i16* %81, align 1, !dbg !400, !tbaa !391
  br label %82, !dbg !401

; <label>:82:                                     ; preds = %71, %76
  %83 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 0), align 2, !dbg !402, !tbaa !403
  %84 = add i16 %83, 1, !dbg !402
  store i16 %84, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 0), align 2, !dbg !402, !tbaa !403
  %85 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %51, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0), %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* %1) #7, !dbg !404
  %86 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %51) #7, !dbg !405
  br label %92, !dbg !406

; <label>:87:                                     ; preds = %35
  %88 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 8), align 2, !dbg !407, !tbaa !408
  %89 = add i16 %88, 1, !dbg !407
  store i16 %89, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 8), align 2, !dbg !407, !tbaa !408
  %90 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !409, !tbaa !321
  %91 = add i16 %90, 1, !dbg !409
  store i16 %91, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 3), align 2, !dbg !409, !tbaa !321
  br label %92, !dbg !410

; <label>:92:                                     ; preds = %87, %82, %35
  %93 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !411
  br label %94, !dbg !412

; <label>:94:                                     ; preds = %92, %60, %53, %44, %39, %38, %29, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  ret void, !dbg !412
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip6_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @nd6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @mld6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_copy(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_dest_unreach(%struct.pbuf* nocapture readonly, i32) local_unnamed_addr #0 !dbg !413 {
  %3 = trunc i32 %1 to i8, !dbg !421
  %4 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !440, !tbaa !441
  %5 = icmp eq %struct.netif* %4, null, !dbg !444
  br i1 %5, label %6, label %7, !dbg !447

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #7, !dbg !448
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !451
  tail call void @ukplat_terminate(i32 3) #8, !dbg !451
  unreachable, !dbg !451

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %4, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0)) #7, !dbg !455
  %9 = icmp eq %struct.ip_addr* %8, null, !dbg !456
  br i1 %9, label %10, label %13, !dbg !458

; <label>:10:                                     ; preds = %7
  %11 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !459, !tbaa !461
  %12 = add i16 %11, 1, !dbg !459
  store i16 %12, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !459, !tbaa !461
  br label %15, !dbg !462

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, !dbg !455
  tail call fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* %0, i8 zeroext %3, i32 0, i8 zeroext 1, %struct.ip6_addr* nonnull %14, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %struct.netif* nonnull %4) #7, !dbg !464
  br label %15, !dbg !465

; <label>:15:                                     ; preds = %10, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  ret void, !dbg !466
}

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_packet_too_big(%struct.pbuf* nocapture readonly, i32) local_unnamed_addr #0 !dbg !467 {
  %3 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !480, !tbaa !441
  %4 = icmp eq %struct.netif* %3, null, !dbg !482
  br i1 %4, label %5, label %6, !dbg !483

; <label>:5:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #7, !dbg !484
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !485
  tail call void @ukplat_terminate(i32 3) #8, !dbg !485
  unreachable, !dbg !485

; <label>:6:                                      ; preds = %2
  %7 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %3, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0)) #7, !dbg !486
  %8 = icmp eq %struct.ip_addr* %7, null, !dbg !487
  br i1 %8, label %9, label %12, !dbg !488

; <label>:9:                                      ; preds = %6
  %10 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !489, !tbaa !461
  %11 = add i16 %10, 1, !dbg !489
  store i16 %11, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !489, !tbaa !461
  br label %14, !dbg !490

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, !dbg !486
  tail call fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* %0, i8 zeroext 0, i32 %1, i8 zeroext 2, %struct.ip6_addr* nonnull %13, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %struct.netif* nonnull %3) #7, !dbg !492
  br label %14, !dbg !493

; <label>:14:                                     ; preds = %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  ret void, !dbg !494
}

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_time_exceeded(%struct.pbuf* nocapture readonly, i32) local_unnamed_addr #0 !dbg !495 {
  %3 = trunc i32 %1 to i8, !dbg !503
  %4 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !509, !tbaa !441
  %5 = icmp eq %struct.netif* %4, null, !dbg !511
  br i1 %5, label %6, label %7, !dbg !512

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #7, !dbg !513
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !514
  tail call void @ukplat_terminate(i32 3) #8, !dbg !514
  unreachable, !dbg !514

; <label>:7:                                      ; preds = %2
  %8 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %4, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0)) #7, !dbg !515
  %9 = icmp eq %struct.ip_addr* %8, null, !dbg !516
  br i1 %9, label %10, label %13, !dbg !517

; <label>:10:                                     ; preds = %7
  %11 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !518, !tbaa !461
  %12 = add i16 %11, 1, !dbg !518
  store i16 %12, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !518, !tbaa !461
  br label %15, !dbg !519

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %8, i64 0, i32 0, i32 0, !dbg !515
  tail call fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* %0, i8 zeroext %3, i32 0, i8 zeroext 3, %struct.ip6_addr* nonnull %14, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %struct.netif* nonnull %4) #7, !dbg !521
  br label %15, !dbg !522

; <label>:15:                                     ; preds = %10, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_time_exceeded_with_addrs(%struct.pbuf* nocapture readonly, i32, %struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !524 {
  %5 = trunc i32 %1 to i8, !dbg !536
  %6 = icmp eq %struct.ip6_addr* %2, null, !dbg !557
  br i1 %6, label %7, label %8, !dbg !560

; <label>:7:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !561
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !564
  tail call void @ukplat_terminate(i32 3) #8, !dbg !564
  unreachable, !dbg !564

; <label>:8:                                      ; preds = %4
  %9 = icmp eq %struct.ip6_addr* %3, null, !dbg !568
  br i1 %9, label %10, label %11, !dbg !571

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !572
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !575
  tail call void @ukplat_terminate(i32 3) #8, !dbg !575
  unreachable, !dbg !575

; <label>:11:                                     ; preds = %8
  %12 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %3, %struct.ip6_addr* nonnull %2) #7, !dbg !581
  %13 = icmp eq %struct.netif* %12, null, !dbg !583
  br i1 %13, label %14, label %17, !dbg !585

; <label>:14:                                     ; preds = %11
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !586, !tbaa !461
  %16 = add i16 %15, 1, !dbg !586
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !586, !tbaa !461
  br label %18, !dbg !588

; <label>:17:                                     ; preds = %11
  tail call fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* %0, i8 zeroext %5, i32 0, i8 zeroext 3, %struct.ip6_addr* nonnull %3, %struct.ip6_addr* nonnull %2, %struct.netif* nonnull %12) #7, !dbg !589
  br label %18, !dbg !590

; <label>:18:                                     ; preds = %14, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  ret void, !dbg !591
}

; Function Attrs: noredzone nounwind
define dso_local void @icmp6_param_problem(%struct.pbuf* nocapture readonly, i32, i8*) local_unnamed_addr #0 !dbg !592 {
  %4 = load i64, i64* bitcast (%struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3) to i64*), align 8, !dbg !605, !tbaa !606
  %5 = ptrtoint i8* %2 to i64, !dbg !607
  %6 = sub i64 %5, %4, !dbg !607
  %7 = trunc i64 %6 to i32, !dbg !608
  %8 = trunc i32 %1 to i8, !dbg !610
  %9 = load %struct.netif*, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !616, !tbaa !441
  %10 = icmp eq %struct.netif* %9, null, !dbg !618
  br i1 %10, label %11, label %12, !dbg !619

; <label>:11:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0)) #7, !dbg !620
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !621
  tail call void @ukplat_terminate(i32 3) #8, !dbg !621
  unreachable, !dbg !621

; <label>:12:                                     ; preds = %3
  %13 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %9, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0)) #7, !dbg !622
  %14 = icmp eq %struct.ip_addr* %13, null, !dbg !623
  br i1 %14, label %15, label %18, !dbg !624

; <label>:15:                                     ; preds = %12
  %16 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !625, !tbaa !461
  %17 = add i16 %16, 1, !dbg !625
  store i16 %17, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 7), align 2, !dbg !625, !tbaa !461
  br label %20, !dbg !626

; <label>:18:                                     ; preds = %12
  %19 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %13, i64 0, i32 0, i32 0, !dbg !622
  tail call fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* %0, i8 zeroext %8, i32 %7, i8 zeroext 4, %struct.ip6_addr* nonnull %19, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0), %struct.netif* nonnull %9) #7, !dbg !628
  br label %20, !dbg !629

; <label>:20:                                     ; preds = %15, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret void, !dbg !630
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !632
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !632
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !634
  call void @llvm.va_start(i8* nonnull %3), !dbg !634
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str.3, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !635
  call void @llvm.va_end(i8* nonnull %3), !dbg !638
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  ret void, !dbg !639
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @icmp6_send_response_with_addrs_and_netif(%struct.pbuf* nocapture readonly, i8 zeroext, i32, i8 zeroext, %struct.ip6_addr*, %struct.ip6_addr*, %struct.netif*) unnamed_addr #0 !dbg !640 {
  %8 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext 56, i32 640) #7, !dbg !660
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !662
  br i1 %9, label %10, label %13, !dbg !664

; <label>:10:                                     ; preds = %7
  %11 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 6), align 2, !dbg !665, !tbaa !372
  %12 = add i16 %11, 1, !dbg !665
  store i16 %12, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 6), align 2, !dbg !665, !tbaa !372
  br label %47, !dbg !667

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 3, !dbg !668
  %15 = load i16, i16* %14, align 2, !dbg !668, !tbaa !311
  %16 = icmp ugt i16 %15, 55, !dbg !668
  br i1 %16, label %18, label %17, !dbg !671

; <label>:17:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !672
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !675
  tail call void @ukplat_terminate(i32 3) #8, !dbg !675
  unreachable, !dbg !675

; <label>:18:                                     ; preds = %13
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 1, !dbg !679
  %20 = bitcast i8** %19 to %struct.icmp6_hdr**, !dbg !679
  %21 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %20, align 8, !dbg !679, !tbaa !324
  %22 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %21, i64 0, i32 0, !dbg !681
  store i8 %3, i8* %22, align 1, !dbg !682, !tbaa !346
  %23 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %21, i64 0, i32 1, !dbg !683
  store i8 %1, i8* %23, align 1, !dbg !684, !tbaa !685
  %24 = tail call i32 @lwip_htonl(i32 %2) #7, !dbg !686
  %25 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %21, i64 0, i32 3, !dbg !687
  store i32 %24, i32* %25, align 1, !dbg !688, !tbaa !689
  %26 = load i8*, i8** %19, align 8, !dbg !690, !tbaa !324
  %27 = getelementptr inbounds i8, i8* %26, i64 8, !dbg !690
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !690
  %29 = load i8*, i8** %28, align 8, !dbg !690, !tbaa !324
  %30 = tail call i8* @memcpy(i8* nonnull %27, i8* %29, i64 48) #7, !dbg !690
  %31 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %21, i64 0, i32 2, !dbg !691
  store i16 0, i16* %31, align 1, !dbg !692, !tbaa !693
  %32 = icmp eq %struct.netif* %6, null, !dbg !694
  br i1 %32, label %38, label %33, !dbg !694

; <label>:33:                                     ; preds = %18
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 16, !dbg !694
  %35 = load i16, i16* %34, align 8, !dbg !694, !tbaa !328
  %36 = and i16 %35, 16, !dbg !694
  %37 = icmp eq i16 %36, 0, !dbg !694
  br i1 %37, label %42, label %38, !dbg !696

; <label>:38:                                     ; preds = %33, %18
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %8, i64 0, i32 2, !dbg !697
  %40 = load i16, i16* %39, align 8, !dbg !697, !tbaa !335
  %41 = tail call zeroext i16 @ip6_chksum_pseudo(%struct.pbuf* nonnull %8, i8 zeroext 58, i16 zeroext %40, %struct.ip6_addr* %4, %struct.ip6_addr* %5) #7, !dbg !699
  store i16 %41, i16* %31, align 1, !dbg !700, !tbaa !693
  br label %42, !dbg !701

; <label>:42:                                     ; preds = %33, %38
  %43 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 0), align 2, !dbg !702, !tbaa !403
  %44 = add i16 %43, 1, !dbg !702
  store i16 %44, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 9, i32 0), align 2, !dbg !702, !tbaa !403
  %45 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %8, %struct.ip6_addr* %4, %struct.ip6_addr* %5, i8 zeroext -1, i8 zeroext 0, i8 zeroext 58, %struct.netif* %6) #7, !dbg !703
  %46 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %8) #7, !dbg !704
  br label %47, !dbg !705

; <label>:47:                                     ; preds = %42, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  ret void, !dbg !705
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }

!llvm.module.flags = !{!177, !178, !179}
!llvm.ident = !{!180}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !159, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !162)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !104, globals: !156)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/icmp6.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !18, !26, !32, !53, !79, !88, !92, !97}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !13, line: 156, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 89, baseType: !14, size: 32, elements: !20)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!22 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!23 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 145, baseType: !14, size: 32, elements: !27)
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!29 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!30 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!31 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 53, baseType: !34, size: 32, elements: !35)
!33 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!36 = !DIEnumerator(name: "ERR_OK", value: 0)
!37 = !DIEnumerator(name: "ERR_MEM", value: -1)
!38 = !DIEnumerator(name: "ERR_BUF", value: -2)
!39 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!40 = !DIEnumerator(name: "ERR_RTE", value: -4)
!41 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!42 = !DIEnumerator(name: "ERR_VAL", value: -6)
!43 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!44 = !DIEnumerator(name: "ERR_USE", value: -8)
!45 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!46 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!47 = !DIEnumerator(name: "ERR_CONN", value: -11)
!48 = !DIEnumerator(name: "ERR_IF", value: -12)
!49 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!50 = !DIEnumerator(name: "ERR_RST", value: -14)
!51 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!52 = !DIEnumerator(name: "ERR_ARG", value: -16)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_type", file: !54, line: 47, baseType: !14, size: 32, elements: !55)
!54 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!56 = !DIEnumerator(name: "ICMP6_TYPE_DUR", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "ICMP6_TYPE_PTB", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "ICMP6_TYPE_TE", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "ICMP6_TYPE_PP", value: 4, isUnsigned: true)
!60 = !DIEnumerator(name: "ICMP6_TYPE_PE1", value: 100, isUnsigned: true)
!61 = !DIEnumerator(name: "ICMP6_TYPE_PE2", value: 101, isUnsigned: true)
!62 = !DIEnumerator(name: "ICMP6_TYPE_RSV_ERR", value: 127, isUnsigned: true)
!63 = !DIEnumerator(name: "ICMP6_TYPE_EREQ", value: 128, isUnsigned: true)
!64 = !DIEnumerator(name: "ICMP6_TYPE_EREP", value: 129, isUnsigned: true)
!65 = !DIEnumerator(name: "ICMP6_TYPE_MLQ", value: 130, isUnsigned: true)
!66 = !DIEnumerator(name: "ICMP6_TYPE_MLR", value: 131, isUnsigned: true)
!67 = !DIEnumerator(name: "ICMP6_TYPE_MLD", value: 132, isUnsigned: true)
!68 = !DIEnumerator(name: "ICMP6_TYPE_RS", value: 133, isUnsigned: true)
!69 = !DIEnumerator(name: "ICMP6_TYPE_RA", value: 134, isUnsigned: true)
!70 = !DIEnumerator(name: "ICMP6_TYPE_NS", value: 135, isUnsigned: true)
!71 = !DIEnumerator(name: "ICMP6_TYPE_NA", value: 136, isUnsigned: true)
!72 = !DIEnumerator(name: "ICMP6_TYPE_RD", value: 137, isUnsigned: true)
!73 = !DIEnumerator(name: "ICMP6_TYPE_MRA", value: 151, isUnsigned: true)
!74 = !DIEnumerator(name: "ICMP6_TYPE_MRS", value: 152, isUnsigned: true)
!75 = !DIEnumerator(name: "ICMP6_TYPE_MRT", value: 153, isUnsigned: true)
!76 = !DIEnumerator(name: "ICMP6_TYPE_PE3", value: 200, isUnsigned: true)
!77 = !DIEnumerator(name: "ICMP6_TYPE_PE4", value: 201, isUnsigned: true)
!78 = !DIEnumerator(name: "ICMP6_TYPE_RSV_INF", value: 255, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_dur_code", file: !54, line: 98, baseType: !14, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87}
!81 = !DIEnumerator(name: "ICMP6_DUR_NO_ROUTE", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "ICMP6_DUR_PROHIBITED", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "ICMP6_DUR_SCOPE", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "ICMP6_DUR_ADDRESS", value: 3, isUnsigned: true)
!85 = !DIEnumerator(name: "ICMP6_DUR_PORT", value: 4, isUnsigned: true)
!86 = !DIEnumerator(name: "ICMP6_DUR_POLICY", value: 5, isUnsigned: true)
!87 = !DIEnumerator(name: "ICMP6_DUR_REJECT_ROUTE", value: 6, isUnsigned: true)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_te_code", file: !54, line: 116, baseType: !14, size: 32, elements: !89)
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "ICMP6_TE_HL", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "ICMP6_TE_FRAG", value: 1, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_pp_code", file: !54, line: 124, baseType: !14, size: 32, elements: !93)
!93 = !{!94, !95, !96}
!94 = !DIEnumerator(name: "ICMP6_PP_FIELD", value: 0, isUnsigned: true)
!95 = !DIEnumerator(name: "ICMP6_PP_HEADER", value: 1, isUnsigned: true)
!96 = !DIEnumerator(name: "ICMP6_PP_OPTION", value: 2, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !98, line: 68, baseType: !14, size: 32, elements: !99)
!98 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!104 = !{!105, !126, !123, !127, !135, !137, !155}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6_hdr", file: !54, line: 138, size: 64, elements: !107)
!107 = !{!108, !116, !117, !122}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !54, line: 139, baseType: !109, size: 8)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !110, line: 125, baseType: !111)
!110 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !112, line: 24, baseType: !113)
!112 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !114, line: 43, baseType: !115)
!114 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !106, file: !54, line: 140, baseType: !109, size: 8, offset: 8)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !106, file: !54, line: 141, baseType: !118, size: 16, offset: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !110, line: 127, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !112, line: 36, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !114, line: 57, baseType: !121)
!121 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !106, file: !54, line: 142, baseType: !123, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !110, line: 129, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !112, line: 48, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !114, line: 79, baseType: !14)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6_echo_hdr", file: !54, line: 154, size: 64, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !54, line: 155, baseType: !109, size: 8)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !128, file: !54, line: 156, baseType: !109, size: 8, offset: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !128, file: !54, line: 157, baseType: !118, size: 16, offset: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !128, file: !54, line: 158, baseType: !118, size: 16, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !128, file: !54, line: 159, baseType: !118, size: 16, offset: 48)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !140, line: 80, size: 320, elements: !141)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !{!142, !143, !144, !145, !146, !154}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !139, file: !140, line: 82, baseType: !123, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !139, file: !140, line: 84, baseType: !118, size: 16, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !139, file: !140, line: 86, baseType: !109, size: 8, offset: 48)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !139, file: !140, line: 88, baseType: !109, size: 8, offset: 56)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !139, file: !140, line: 90, baseType: !147, size: 128, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !140, line: 60, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !140, line: 53, size: 128, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !148, file: !140, line: 54, baseType: !151, size: 128)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 4)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !139, file: !140, line: 91, baseType: !147, size: 128, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!156 = !{!0, !157}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !{!163, !164}
!163 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!164 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !166, line: 32, baseType: !167)
!166 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 192, elements: !175)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !170)
!170 = !{!171, !172, !173, !174}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !169, file: !10, line: 196, baseType: !14, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !169, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !169, file: !10, line: 196, baseType: !126, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !169, file: !10, line: 196, baseType: !126, size: 64, offset: 128)
!175 = !{!176}
!176 = !DISubrange(count: 1)
!177 = !{i32 2, !"Dwarf Version", i32 4}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{i32 1, !"wchar_size", i32 4}
!180 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!181 = distinct !DISubprogram(name: "icmp6_input", scope: !10, file: !10, line: 83, type: !182, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !291)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184, !195}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !19, line: 186, size: 192, elements: !186)
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !19, line: 188, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !185, file: !19, line: 191, baseType: !126, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !185, file: !19, line: 200, baseType: !118, size: 16, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !185, file: !19, line: 203, baseType: !118, size: 16, offset: 144)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !185, file: !19, line: 208, baseType: !109, size: 8, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !19, line: 211, baseType: !109, size: 8, offset: 168)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !185, file: !19, line: 218, baseType: !109, size: 8, offset: 176)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !185, file: !19, line: 221, baseType: !109, size: 8, offset: 184)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !13, line: 260, size: 2240, elements: !197)
!197 = !{!198, !199, !221, !222, !223, !227, !229, !231, !232, !242, !249, !254, !261, !266, !267, !268, !270, !271, !272, !273, !277, !278, !279, !283, !284, !285, !286}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !13, line: 263, baseType: !195, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !196, file: !13, line: 268, baseType: !200, size: 192, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !201, line: 76, baseType: !202)
!201 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !201, line: 69, size: 192, elements: !203)
!203 = !{!204, !220}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !202, file: !201, line: 73, baseType: !205, size: 160)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 70, size: 160, elements: !206)
!206 = !{!207, !214}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !205, file: !201, line: 71, baseType: !208, size: 160)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !209, line: 67, baseType: !210)
!209 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !209, line: 59, size: 160, elements: !211)
!211 = !{!212, !213}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !210, file: !209, line: 60, baseType: !151, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !210, file: !209, line: 62, baseType: !109, size: 8, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !205, file: !201, line: 72, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !216, line: 57, baseType: !217)
!216 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !216, line: 51, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !217, file: !216, line: 52, baseType: !123, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !201, line: 75, baseType: !109, size: 8, offset: 160)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !196, file: !13, line: 269, baseType: !200, size: 192, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !196, file: !13, line: 270, baseType: !200, size: 192, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !196, file: !13, line: 274, baseType: !224, size: 576, offset: 640)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 576, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 3)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !196, file: !13, line: 277, baseType: !228, size: 24, offset: 1216)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, elements: !225)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !196, file: !13, line: 282, baseType: !230, size: 96, offset: 1248)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !225)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !196, file: !13, line: 283, baseType: !230, size: 96, offset: 1344)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !196, file: !13, line: 288, baseType: !233, size: 64, offset: 1472)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !13, line: 178, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !184, !195}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !33, line: 96, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !110, line: 126, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !112, line: 20, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !114, line: 41, baseType: !241)
!241 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !196, file: !13, line: 294, baseType: !243, size: 64, offset: 1536)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !13, line: 189, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!237, !195, !184, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !196, file: !13, line: 299, baseType: !250, size: 64, offset: 1600)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !13, line: 212, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!237, !195, !184}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !196, file: !13, line: 305, baseType: !255, size: 64, offset: 1664)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !13, line: 202, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!237, !195, !184, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !196, file: !13, line: 310, baseType: !262, size: 64, offset: 1728)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !13, line: 214, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !195}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !196, file: !13, line: 319, baseType: !262, size: 64, offset: 1792)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !196, file: !13, line: 323, baseType: !126, size: 64, offset: 1856)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !196, file: !13, line: 325, baseType: !269, size: 64, offset: 1920)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !175)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !196, file: !13, line: 332, baseType: !118, size: 16, offset: 1984)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !196, file: !13, line: 335, baseType: !118, size: 16, offset: 2000)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !196, file: !13, line: 338, baseType: !118, size: 16, offset: 2016)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !196, file: !13, line: 341, baseType: !274, size: 48, offset: 2032)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 6)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !196, file: !13, line: 343, baseType: !109, size: 8, offset: 2080)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !13, line: 345, baseType: !109, size: 8, offset: 2088)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !13, line: 347, baseType: !280, size: 16, offset: 2096)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 2)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !196, file: !13, line: 350, baseType: !109, size: 8, offset: 2112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !196, file: !13, line: 353, baseType: !109, size: 8, offset: 2120)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !196, file: !13, line: 357, baseType: !109, size: 8, offset: 2128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !196, file: !13, line: 377, baseType: !287, size: 64, offset: 2176)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !13, line: 222, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!237, !195, !259, !12}
!291 = !{!292, !293, !294, !295, !296}
!292 = !DILocalVariable(name: "p", arg: 1, scope: !181, file: !10, line: 83, type: !184)
!293 = !DILocalVariable(name: "inp", arg: 2, scope: !181, file: !10, line: 83, type: !195)
!294 = !DILocalVariable(name: "icmp6hdr", scope: !181, file: !10, line: 85, type: !105)
!295 = !DILocalVariable(name: "r", scope: !181, file: !10, line: 86, type: !184)
!296 = !DILocalVariable(name: "reply_src", scope: !181, file: !10, line: 87, type: !259)
!297 = !DILocation(line: 83, column: 26, scope: !181)
!298 = !DILocation(line: 83, column: 43, scope: !181)
!299 = !DILocation(line: 89, column: 3, scope: !181)
!300 = !{!301, !303, i64 212}
!301 = !{!"stats_", !302, i64 0, !302, i64 24, !302, i64 48, !302, i64 72, !302, i64 96, !302, i64 120, !302, i64 144, !306, i64 168, !302, i64 186, !302, i64 210, !302, i64 234, !308, i64 258, !302, i64 286}
!302 = !{!"stats_proto", !303, i64 0, !303, i64 2, !303, i64 4, !303, i64 6, !303, i64 8, !303, i64 10, !303, i64 12, !303, i64 14, !303, i64 16, !303, i64 18, !303, i64 20, !303, i64 22}
!303 = !{!"short", !304, i64 0}
!304 = !{!"omnipotent char", !305, i64 0}
!305 = !{!"Simple C/C++ TBAA"}
!306 = !{!"stats_sys", !307, i64 0, !307, i64 6, !307, i64 12}
!307 = !{!"stats_syselem", !303, i64 0, !303, i64 2, !303, i64 4}
!308 = !{!"stats_igmp", !303, i64 0, !303, i64 2, !303, i64 4, !303, i64 6, !303, i64 8, !303, i64 10, !303, i64 12, !303, i64 14, !303, i64 16, !303, i64 18, !303, i64 20, !303, i64 22, !303, i64 24, !303, i64 26}
!309 = !DILocation(line: 92, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !181, file: !10, line: 92, column: 7)
!311 = !{!312, !303, i64 18}
!312 = !{!"pbuf", !313, i64 0, !313, i64 8, !303, i64 16, !303, i64 18, !304, i64 20, !304, i64 21, !304, i64 22, !304, i64 23}
!313 = !{!"any pointer", !304, i64 0}
!314 = !DILocation(line: 92, column: 14, scope: !310)
!315 = !DILocation(line: 92, column: 7, scope: !181)
!316 = !DILocation(line: 94, column: 5, scope: !317)
!317 = distinct !DILexicalBlock(scope: !310, file: !10, line: 92, column: 42)
!318 = !DILocation(line: 95, column: 5, scope: !317)
!319 = !{!301, !303, i64 220}
!320 = !DILocation(line: 96, column: 5, scope: !317)
!321 = !{!301, !303, i64 216}
!322 = !DILocation(line: 97, column: 5, scope: !317)
!323 = !DILocation(line: 100, column: 37, scope: !181)
!324 = !{!312, !313, i64 8}
!325 = !DILocation(line: 85, column: 21, scope: !181)
!326 = !DILocation(line: 103, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !181, file: !10, line: 103, column: 3)
!328 = !{!329, !303, i64 248}
!329 = !{!"netif", !313, i64 0, !330, i64 8, !330, i64 32, !330, i64 56, !304, i64 80, !304, i64 152, !304, i64 156, !304, i64 168, !313, i64 184, !313, i64 192, !313, i64 200, !313, i64 208, !313, i64 216, !313, i64 224, !313, i64 232, !304, i64 240, !303, i64 248, !303, i64 250, !303, i64 252, !304, i64 254, !304, i64 260, !304, i64 261, !304, i64 262, !304, i64 264, !304, i64 265, !304, i64 266, !313, i64 272}
!330 = !{!"ip_addr", !304, i64 0, !304, i64 20}
!331 = !DILocation(line: 103, column: 3, scope: !181)
!332 = !DILocation(line: 104, column: 50, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !10, line: 104, column: 9)
!334 = distinct !DILexicalBlock(scope: !327, file: !10, line: 103, column: 63)
!335 = !{!312, !303, i64 16}
!336 = !DILocation(line: 104, column: 9, scope: !333)
!337 = !DILocation(line: 105, column: 52, scope: !333)
!338 = !DILocation(line: 104, column: 9, scope: !334)
!339 = !DILocation(line: 107, column: 7, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !10, line: 105, column: 58)
!341 = !DILocation(line: 108, column: 7, scope: !340)
!342 = !{!301, !303, i64 218}
!343 = !DILocation(line: 109, column: 7, scope: !340)
!344 = !DILocation(line: 110, column: 7, scope: !340)
!345 = !DILocation(line: 115, column: 21, scope: !181)
!346 = !{!347, !304, i64 0}
!347 = !{!"icmp6_hdr", !304, i64 0, !304, i64 1, !303, i64 2, !348, i64 4}
!348 = !{!"int", !304, i64 0}
!349 = !DILocation(line: 115, column: 3, scope: !181)
!350 = !DILocation(line: 121, column: 5, scope: !351)
!351 = distinct !DILexicalBlock(scope: !181, file: !10, line: 115, column: 27)
!352 = !DILocation(line: 122, column: 5, scope: !351)
!353 = !DILocation(line: 132, column: 5, scope: !351)
!354 = !DILocation(line: 133, column: 5, scope: !351)
!355 = !DILocation(line: 138, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !10, line: 138, column: 9)
!357 = !{!304, !304, i64 0}
!358 = !DILocation(line: 138, column: 9, scope: !351)
!359 = !DILocation(line: 140, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !10, line: 138, column: 56)
!361 = !DILocation(line: 141, column: 7, scope: !360)
!362 = !DILocation(line: 142, column: 7, scope: !360)
!363 = !DILocation(line: 147, column: 32, scope: !351)
!364 = !DILocation(line: 147, column: 9, scope: !351)
!365 = !DILocation(line: 86, column: 16, scope: !181)
!366 = !DILocation(line: 148, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !351, file: !10, line: 148, column: 9)
!368 = !DILocation(line: 148, column: 9, scope: !351)
!369 = !DILocation(line: 150, column: 7, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !10, line: 148, column: 20)
!371 = !DILocation(line: 151, column: 7, scope: !370)
!372 = !{!301, !303, i64 222}
!373 = !DILocation(line: 152, column: 7, scope: !370)
!374 = !DILocation(line: 156, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !351, file: !10, line: 156, column: 9)
!376 = !DILocation(line: 156, column: 25, scope: !375)
!377 = !DILocation(line: 156, column: 9, scope: !351)
!378 = !DILocation(line: 158, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !10, line: 156, column: 36)
!380 = !DILocation(line: 159, column: 7, scope: !379)
!381 = !DILocation(line: 160, column: 7, scope: !379)
!382 = !{!301, !303, i64 230}
!383 = !DILocation(line: 161, column: 7, scope: !379)
!384 = !DILocation(line: 183, column: 35, scope: !351)
!385 = !DILocation(line: 183, column: 46, scope: !351)
!386 = !DILocation(line: 183, column: 51, scope: !351)
!387 = !{!388, !304, i64 0}
!388 = !{!"icmp6_echo_hdr", !304, i64 0, !304, i64 1, !303, i64 2, !303, i64 4, !303, i64 6}
!389 = !DILocation(line: 184, column: 46, scope: !351)
!390 = !DILocation(line: 184, column: 53, scope: !351)
!391 = !{!388, !303, i64 2}
!392 = !DILocation(line: 186, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !351, file: !10, line: 186, column: 5)
!394 = !DILocation(line: 186, column: 5, scope: !351)
!395 = !DILocation(line: 188, column: 31, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !10, line: 186, column: 63)
!397 = !DILocation(line: 187, column: 57, scope: !396)
!398 = !DILocation(line: 187, column: 37, scope: !396)
!399 = !DILocation(line: 187, column: 48, scope: !396)
!400 = !DILocation(line: 187, column: 55, scope: !396)
!401 = !DILocation(line: 189, column: 5, scope: !396)
!402 = !DILocation(line: 193, column: 5, scope: !351)
!403 = !{!301, !303, i64 210}
!404 = !DILocation(line: 194, column: 5, scope: !351)
!405 = !DILocation(line: 196, column: 5, scope: !351)
!406 = !DILocation(line: 198, column: 5, scope: !351)
!407 = !DILocation(line: 200, column: 5, scope: !351)
!408 = !{!301, !303, i64 226}
!409 = !DILocation(line: 201, column: 5, scope: !351)
!410 = !DILocation(line: 202, column: 5, scope: !351)
!411 = !DILocation(line: 205, column: 3, scope: !181)
!412 = !DILocation(line: 206, column: 1, scope: !181)
!413 = distinct !DISubprogram(name: "icmp6_dest_unreach", scope: !10, file: !10, line: 220, type: !414, isLocal: false, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !184, !79}
!416 = !{!417, !418}
!417 = !DILocalVariable(name: "p", arg: 1, scope: !413, file: !10, line: 220, type: !184)
!418 = !DILocalVariable(name: "c", arg: 2, scope: !413, file: !10, line: 220, type: !79)
!419 = !DILocation(line: 220, column: 33, scope: !413)
!420 = !DILocation(line: 220, column: 56, scope: !413)
!421 = !DILocation(line: 222, column: 26, scope: !413)
!422 = !DILocalVariable(name: "p", arg: 1, scope: !423, file: !10, line: 309, type: !184)
!423 = distinct !DISubprogram(name: "icmp6_send_response", scope: !10, file: !10, line: 309, type: !424, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !184, !109, !123, !109}
!426 = !{!422, !427, !428, !429, !430, !433, !434}
!427 = !DILocalVariable(name: "code", arg: 2, scope: !423, file: !10, line: 309, type: !109)
!428 = !DILocalVariable(name: "data", arg: 3, scope: !423, file: !10, line: 309, type: !123)
!429 = !DILocalVariable(name: "type", arg: 4, scope: !423, file: !10, line: 309, type: !109)
!430 = !DILocalVariable(name: "reply_src", scope: !423, file: !10, line: 311, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!433 = !DILocalVariable(name: "reply_dest", scope: !423, file: !10, line: 311, type: !431)
!434 = !DILocalVariable(name: "netif", scope: !423, file: !10, line: 312, type: !195)
!435 = !DILocation(line: 309, column: 34, scope: !423, inlinedAt: !436)
!436 = distinct !DILocation(line: 222, column: 3, scope: !413)
!437 = !DILocation(line: 309, column: 42, scope: !423, inlinedAt: !436)
!438 = !DILocation(line: 309, column: 54, scope: !423, inlinedAt: !436)
!439 = !DILocation(line: 309, column: 65, scope: !423, inlinedAt: !436)
!440 = !DILocation(line: 312, column: 25, scope: !423, inlinedAt: !436)
!441 = !{!442, !313, i64 0}
!442 = !{!"ip_globals", !313, i64 0, !313, i64 8, !313, i64 16, !313, i64 24, !303, i64 32, !330, i64 36, !330, i64 60}
!443 = !DILocation(line: 312, column: 17, scope: !423, inlinedAt: !436)
!444 = !DILocation(line: 314, column: 3, scope: !445, inlinedAt: !436)
!445 = distinct !DILexicalBlock(scope: !446, file: !10, line: 314, column: 3)
!446 = distinct !DILexicalBlock(scope: !423, file: !10, line: 314, column: 3)
!447 = !DILocation(line: 314, column: 3, scope: !446, inlinedAt: !436)
!448 = !DILocation(line: 314, column: 3, scope: !449, inlinedAt: !436)
!449 = distinct !DILexicalBlock(scope: !450, file: !10, line: 314, column: 3)
!450 = distinct !DILexicalBlock(scope: !445, file: !10, line: 314, column: 3)
!451 = !DILocation(line: 314, column: 3, scope: !452, inlinedAt: !436)
!452 = distinct !DILexicalBlock(scope: !453, file: !10, line: 314, column: 3)
!453 = distinct !DILexicalBlock(scope: !454, file: !10, line: 314, column: 3)
!454 = distinct !DILexicalBlock(scope: !449, file: !10, line: 314, column: 3)
!455 = !DILocation(line: 318, column: 15, scope: !423, inlinedAt: !436)
!456 = !DILocation(line: 319, column: 17, scope: !457, inlinedAt: !436)
!457 = distinct !DILexicalBlock(scope: !423, file: !10, line: 319, column: 7)
!458 = !DILocation(line: 319, column: 7, scope: !423, inlinedAt: !436)
!459 = !DILocation(line: 320, column: 5, scope: !460, inlinedAt: !436)
!460 = distinct !DILexicalBlock(scope: !457, file: !10, line: 319, column: 26)
!461 = !{!301, !303, i64 224}
!462 = !DILocation(line: 321, column: 5, scope: !460, inlinedAt: !436)
!463 = !DILocation(line: 311, column: 26, scope: !423, inlinedAt: !436)
!464 = !DILocation(line: 323, column: 3, scope: !423, inlinedAt: !436)
!465 = !DILocation(line: 324, column: 1, scope: !423, inlinedAt: !436)
!466 = !DILocation(line: 223, column: 1, scope: !413)
!467 = distinct !DISubprogram(name: "icmp6_packet_too_big", scope: !10, file: !10, line: 236, type: !468, isLocal: false, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !184, !123}
!470 = !{!471, !472}
!471 = !DILocalVariable(name: "p", arg: 1, scope: !467, file: !10, line: 236, type: !184)
!472 = !DILocalVariable(name: "mtu", arg: 2, scope: !467, file: !10, line: 236, type: !123)
!473 = !DILocation(line: 236, column: 35, scope: !467)
!474 = !DILocation(line: 236, column: 44, scope: !467)
!475 = !DILocation(line: 309, column: 34, scope: !423, inlinedAt: !476)
!476 = distinct !DILocation(line: 238, column: 3, scope: !467)
!477 = !DILocation(line: 309, column: 42, scope: !423, inlinedAt: !476)
!478 = !DILocation(line: 309, column: 54, scope: !423, inlinedAt: !476)
!479 = !DILocation(line: 309, column: 65, scope: !423, inlinedAt: !476)
!480 = !DILocation(line: 312, column: 25, scope: !423, inlinedAt: !476)
!481 = !DILocation(line: 312, column: 17, scope: !423, inlinedAt: !476)
!482 = !DILocation(line: 314, column: 3, scope: !445, inlinedAt: !476)
!483 = !DILocation(line: 314, column: 3, scope: !446, inlinedAt: !476)
!484 = !DILocation(line: 314, column: 3, scope: !449, inlinedAt: !476)
!485 = !DILocation(line: 314, column: 3, scope: !452, inlinedAt: !476)
!486 = !DILocation(line: 318, column: 15, scope: !423, inlinedAt: !476)
!487 = !DILocation(line: 319, column: 17, scope: !457, inlinedAt: !476)
!488 = !DILocation(line: 319, column: 7, scope: !423, inlinedAt: !476)
!489 = !DILocation(line: 320, column: 5, scope: !460, inlinedAt: !476)
!490 = !DILocation(line: 321, column: 5, scope: !460, inlinedAt: !476)
!491 = !DILocation(line: 311, column: 26, scope: !423, inlinedAt: !476)
!492 = !DILocation(line: 323, column: 3, scope: !423, inlinedAt: !476)
!493 = !DILocation(line: 324, column: 1, scope: !423, inlinedAt: !476)
!494 = !DILocation(line: 239, column: 1, scope: !467)
!495 = distinct !DISubprogram(name: "icmp6_time_exceeded", scope: !10, file: !10, line: 252, type: !496, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !184, !88}
!498 = !{!499, !500}
!499 = !DILocalVariable(name: "p", arg: 1, scope: !495, file: !10, line: 252, type: !184)
!500 = !DILocalVariable(name: "c", arg: 2, scope: !495, file: !10, line: 252, type: !88)
!501 = !DILocation(line: 252, column: 34, scope: !495)
!502 = !DILocation(line: 252, column: 56, scope: !495)
!503 = !DILocation(line: 254, column: 26, scope: !495)
!504 = !DILocation(line: 309, column: 34, scope: !423, inlinedAt: !505)
!505 = distinct !DILocation(line: 254, column: 3, scope: !495)
!506 = !DILocation(line: 309, column: 42, scope: !423, inlinedAt: !505)
!507 = !DILocation(line: 309, column: 54, scope: !423, inlinedAt: !505)
!508 = !DILocation(line: 309, column: 65, scope: !423, inlinedAt: !505)
!509 = !DILocation(line: 312, column: 25, scope: !423, inlinedAt: !505)
!510 = !DILocation(line: 312, column: 17, scope: !423, inlinedAt: !505)
!511 = !DILocation(line: 314, column: 3, scope: !445, inlinedAt: !505)
!512 = !DILocation(line: 314, column: 3, scope: !446, inlinedAt: !505)
!513 = !DILocation(line: 314, column: 3, scope: !449, inlinedAt: !505)
!514 = !DILocation(line: 314, column: 3, scope: !452, inlinedAt: !505)
!515 = !DILocation(line: 318, column: 15, scope: !423, inlinedAt: !505)
!516 = !DILocation(line: 319, column: 17, scope: !457, inlinedAt: !505)
!517 = !DILocation(line: 319, column: 7, scope: !423, inlinedAt: !505)
!518 = !DILocation(line: 320, column: 5, scope: !460, inlinedAt: !505)
!519 = !DILocation(line: 321, column: 5, scope: !460, inlinedAt: !505)
!520 = !DILocation(line: 311, column: 26, scope: !423, inlinedAt: !505)
!521 = !DILocation(line: 323, column: 3, scope: !423, inlinedAt: !505)
!522 = !DILocation(line: 324, column: 1, scope: !423, inlinedAt: !505)
!523 = !DILocation(line: 255, column: 1, scope: !495)
!524 = distinct !DISubprogram(name: "icmp6_time_exceeded_with_addrs", scope: !10, file: !10, line: 273, type: !525, isLocal: false, isDefinition: true, scopeLine: 275, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !184, !88, !259, !259}
!527 = !{!528, !529, !530, !531}
!528 = !DILocalVariable(name: "p", arg: 1, scope: !524, file: !10, line: 273, type: !184)
!529 = !DILocalVariable(name: "c", arg: 2, scope: !524, file: !10, line: 273, type: !88)
!530 = !DILocalVariable(name: "src_addr", arg: 3, scope: !524, file: !10, line: 274, type: !259)
!531 = !DILocalVariable(name: "dest_addr", arg: 4, scope: !524, file: !10, line: 274, type: !259)
!532 = !DILocation(line: 273, column: 45, scope: !524)
!533 = !DILocation(line: 273, column: 67, scope: !524)
!534 = !DILocation(line: 274, column: 23, scope: !524)
!535 = !DILocation(line: 274, column: 51, scope: !524)
!536 = !DILocation(line: 276, column: 37, scope: !524)
!537 = !DILocalVariable(name: "p", arg: 1, scope: !538, file: !10, line: 346, type: !184)
!538 = distinct !DISubprogram(name: "icmp6_send_response_with_addrs", scope: !10, file: !10, line: 346, type: !539, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !541)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !184, !109, !123, !109, !259, !259}
!541 = !{!537, !542, !543, !544, !545, !546, !547, !548, !549}
!542 = !DILocalVariable(name: "code", arg: 2, scope: !538, file: !10, line: 346, type: !109)
!543 = !DILocalVariable(name: "data", arg: 3, scope: !538, file: !10, line: 346, type: !123)
!544 = !DILocalVariable(name: "type", arg: 4, scope: !538, file: !10, line: 346, type: !109)
!545 = !DILocalVariable(name: "src_addr", arg: 5, scope: !538, file: !10, line: 347, type: !259)
!546 = !DILocalVariable(name: "dest_addr", arg: 6, scope: !538, file: !10, line: 347, type: !259)
!547 = !DILocalVariable(name: "reply_src", scope: !538, file: !10, line: 349, type: !431)
!548 = !DILocalVariable(name: "reply_dest", scope: !538, file: !10, line: 349, type: !431)
!549 = !DILocalVariable(name: "netif", scope: !538, file: !10, line: 350, type: !195)
!550 = !DILocation(line: 346, column: 45, scope: !538, inlinedAt: !551)
!551 = distinct !DILocation(line: 276, column: 3, scope: !524)
!552 = !DILocation(line: 346, column: 53, scope: !538, inlinedAt: !551)
!553 = !DILocation(line: 346, column: 65, scope: !538, inlinedAt: !551)
!554 = !DILocation(line: 346, column: 76, scope: !538, inlinedAt: !551)
!555 = !DILocation(line: 347, column: 23, scope: !538, inlinedAt: !551)
!556 = !DILocation(line: 347, column: 51, scope: !538, inlinedAt: !551)
!557 = !DILocation(line: 353, column: 3, scope: !558, inlinedAt: !551)
!558 = distinct !DILexicalBlock(scope: !559, file: !10, line: 353, column: 3)
!559 = distinct !DILexicalBlock(scope: !538, file: !10, line: 353, column: 3)
!560 = !DILocation(line: 353, column: 3, scope: !559, inlinedAt: !551)
!561 = !DILocation(line: 353, column: 3, scope: !562, inlinedAt: !551)
!562 = distinct !DILexicalBlock(scope: !563, file: !10, line: 353, column: 3)
!563 = distinct !DILexicalBlock(scope: !558, file: !10, line: 353, column: 3)
!564 = !DILocation(line: 353, column: 3, scope: !565, inlinedAt: !551)
!565 = distinct !DILexicalBlock(scope: !566, file: !10, line: 353, column: 3)
!566 = distinct !DILexicalBlock(scope: !567, file: !10, line: 353, column: 3)
!567 = distinct !DILexicalBlock(scope: !562, file: !10, line: 353, column: 3)
!568 = !DILocation(line: 354, column: 3, scope: !569, inlinedAt: !551)
!569 = distinct !DILexicalBlock(scope: !570, file: !10, line: 354, column: 3)
!570 = distinct !DILexicalBlock(scope: !538, file: !10, line: 354, column: 3)
!571 = !DILocation(line: 354, column: 3, scope: !570, inlinedAt: !551)
!572 = !DILocation(line: 354, column: 3, scope: !573, inlinedAt: !551)
!573 = distinct !DILexicalBlock(scope: !574, file: !10, line: 354, column: 3)
!574 = distinct !DILexicalBlock(scope: !569, file: !10, line: 354, column: 3)
!575 = !DILocation(line: 354, column: 3, scope: !576, inlinedAt: !551)
!576 = distinct !DILexicalBlock(scope: !577, file: !10, line: 354, column: 3)
!577 = distinct !DILexicalBlock(scope: !578, file: !10, line: 354, column: 3)
!578 = distinct !DILexicalBlock(scope: !573, file: !10, line: 354, column: 3)
!579 = !DILocation(line: 349, column: 38, scope: !538, inlinedAt: !551)
!580 = !DILocation(line: 349, column: 26, scope: !538, inlinedAt: !551)
!581 = !DILocation(line: 363, column: 11, scope: !538, inlinedAt: !551)
!582 = !DILocation(line: 350, column: 17, scope: !538, inlinedAt: !551)
!583 = !DILocation(line: 364, column: 13, scope: !584, inlinedAt: !551)
!584 = distinct !DILexicalBlock(scope: !538, file: !10, line: 364, column: 7)
!585 = !DILocation(line: 364, column: 7, scope: !538, inlinedAt: !551)
!586 = !DILocation(line: 365, column: 5, scope: !587, inlinedAt: !551)
!587 = distinct !DILexicalBlock(scope: !584, file: !10, line: 364, column: 22)
!588 = !DILocation(line: 366, column: 5, scope: !587, inlinedAt: !551)
!589 = !DILocation(line: 368, column: 3, scope: !538, inlinedAt: !551)
!590 = !DILocation(line: 370, column: 1, scope: !538, inlinedAt: !551)
!591 = !DILocation(line: 277, column: 1, scope: !524)
!592 = distinct !DISubprogram(name: "icmp6_param_problem", scope: !10, file: !10, line: 292, type: !593, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !597)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !184, !92, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!597 = !{!598, !599, !600, !601}
!598 = !DILocalVariable(name: "p", arg: 1, scope: !592, file: !10, line: 292, type: !184)
!599 = !DILocalVariable(name: "c", arg: 2, scope: !592, file: !10, line: 292, type: !92)
!600 = !DILocalVariable(name: "pointer", arg: 3, scope: !592, file: !10, line: 292, type: !595)
!601 = !DILocalVariable(name: "pointer_u32", scope: !592, file: !10, line: 294, type: !123)
!602 = !DILocation(line: 292, column: 34, scope: !592)
!603 = !DILocation(line: 292, column: 56, scope: !592)
!604 = !DILocation(line: 292, column: 71, scope: !592)
!605 = !DILocation(line: 294, column: 69, scope: !592)
!606 = !{!442, !313, i64 24}
!607 = !DILocation(line: 294, column: 53, scope: !592)
!608 = !DILocation(line: 294, column: 23, scope: !592)
!609 = !DILocation(line: 294, column: 9, scope: !592)
!610 = !DILocation(line: 295, column: 26, scope: !592)
!611 = !DILocation(line: 309, column: 34, scope: !423, inlinedAt: !612)
!612 = distinct !DILocation(line: 295, column: 3, scope: !592)
!613 = !DILocation(line: 309, column: 42, scope: !423, inlinedAt: !612)
!614 = !DILocation(line: 309, column: 54, scope: !423, inlinedAt: !612)
!615 = !DILocation(line: 309, column: 65, scope: !423, inlinedAt: !612)
!616 = !DILocation(line: 312, column: 25, scope: !423, inlinedAt: !612)
!617 = !DILocation(line: 312, column: 17, scope: !423, inlinedAt: !612)
!618 = !DILocation(line: 314, column: 3, scope: !445, inlinedAt: !612)
!619 = !DILocation(line: 314, column: 3, scope: !446, inlinedAt: !612)
!620 = !DILocation(line: 314, column: 3, scope: !449, inlinedAt: !612)
!621 = !DILocation(line: 314, column: 3, scope: !452, inlinedAt: !612)
!622 = !DILocation(line: 318, column: 15, scope: !423, inlinedAt: !612)
!623 = !DILocation(line: 319, column: 17, scope: !457, inlinedAt: !612)
!624 = !DILocation(line: 319, column: 7, scope: !423, inlinedAt: !612)
!625 = !DILocation(line: 320, column: 5, scope: !460, inlinedAt: !612)
!626 = !DILocation(line: 321, column: 5, scope: !460, inlinedAt: !612)
!627 = !DILocation(line: 311, column: 26, scope: !423, inlinedAt: !612)
!628 = !DILocation(line: 323, column: 3, scope: !423, inlinedAt: !612)
!629 = !DILocation(line: 324, column: 1, scope: !423, inlinedAt: !612)
!630 = !DILocation(line: 296, column: 1, scope: !592)
!631 = !DILocation(line: 194, column: 43, scope: !2)
!632 = !DILocation(line: 196, column: 2, scope: !2)
!633 = !DILocation(line: 196, column: 10, scope: !2)
!634 = !DILocation(line: 197, column: 2, scope: !2)
!635 = !DILocation(line: 198, column: 2, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 198, column: 2)
!637 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!638 = !DILocation(line: 199, column: 2, scope: !2)
!639 = !DILocation(line: 200, column: 1, scope: !2)
!640 = distinct !DISubprogram(name: "icmp6_send_response_with_addrs_and_netif", scope: !10, file: !10, line: 385, type: !641, isLocal: true, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !184, !109, !123, !109, !259, !259, !195}
!643 = !{!644, !645, !646, !647, !648, !649, !650, !651, !652}
!644 = !DILocalVariable(name: "p", arg: 1, scope: !640, file: !10, line: 385, type: !184)
!645 = !DILocalVariable(name: "code", arg: 2, scope: !640, file: !10, line: 385, type: !109)
!646 = !DILocalVariable(name: "data", arg: 3, scope: !640, file: !10, line: 385, type: !123)
!647 = !DILocalVariable(name: "type", arg: 4, scope: !640, file: !10, line: 385, type: !109)
!648 = !DILocalVariable(name: "reply_src", arg: 5, scope: !640, file: !10, line: 386, type: !259)
!649 = !DILocalVariable(name: "reply_dest", arg: 6, scope: !640, file: !10, line: 386, type: !259)
!650 = !DILocalVariable(name: "netif", arg: 7, scope: !640, file: !10, line: 386, type: !195)
!651 = !DILocalVariable(name: "q", scope: !640, file: !10, line: 388, type: !184)
!652 = !DILocalVariable(name: "icmp6hdr", scope: !640, file: !10, line: 389, type: !105)
!653 = !DILocation(line: 385, column: 55, scope: !640)
!654 = !DILocation(line: 385, column: 63, scope: !640)
!655 = !DILocation(line: 385, column: 75, scope: !640)
!656 = !DILocation(line: 385, column: 86, scope: !640)
!657 = !DILocation(line: 386, column: 23, scope: !640)
!658 = !DILocation(line: 386, column: 52, scope: !640)
!659 = !DILocation(line: 386, column: 78, scope: !640)
!660 = !DILocation(line: 392, column: 7, scope: !640)
!661 = !DILocation(line: 388, column: 16, scope: !640)
!662 = !DILocation(line: 394, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !640, file: !10, line: 394, column: 7)
!664 = !DILocation(line: 394, column: 7, scope: !640)
!665 = !DILocation(line: 396, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !10, line: 394, column: 18)
!667 = !DILocation(line: 397, column: 5, scope: !666)
!668 = !DILocation(line: 399, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !10, line: 399, column: 3)
!670 = distinct !DILexicalBlock(scope: !640, file: !10, line: 399, column: 3)
!671 = !DILocation(line: 399, column: 3, scope: !670)
!672 = !DILocation(line: 399, column: 3, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !10, line: 399, column: 3)
!674 = distinct !DILexicalBlock(scope: !669, file: !10, line: 399, column: 3)
!675 = !DILocation(line: 399, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !10, line: 399, column: 3)
!677 = distinct !DILexicalBlock(scope: !678, file: !10, line: 399, column: 3)
!678 = distinct !DILexicalBlock(scope: !673, file: !10, line: 399, column: 3)
!679 = !DILocation(line: 402, column: 37, scope: !640)
!680 = !DILocation(line: 389, column: 21, scope: !640)
!681 = !DILocation(line: 403, column: 13, scope: !640)
!682 = !DILocation(line: 403, column: 18, scope: !640)
!683 = !DILocation(line: 404, column: 13, scope: !640)
!684 = !DILocation(line: 404, column: 18, scope: !640)
!685 = !{!347, !304, i64 1}
!686 = !DILocation(line: 405, column: 20, scope: !640)
!687 = !DILocation(line: 405, column: 13, scope: !640)
!688 = !DILocation(line: 405, column: 18, scope: !640)
!689 = !{!347, !348, i64 4}
!690 = !DILocation(line: 408, column: 3, scope: !640)
!691 = !DILocation(line: 412, column: 13, scope: !640)
!692 = !DILocation(line: 412, column: 20, scope: !640)
!693 = !{!347, !303, i64 2}
!694 = !DILocation(line: 414, column: 3, scope: !695)
!695 = distinct !DILexicalBlock(scope: !640, file: !10, line: 414, column: 3)
!696 = !DILocation(line: 414, column: 3, scope: !640)
!697 = !DILocation(line: 415, column: 65, scope: !698)
!698 = distinct !DILexicalBlock(scope: !695, file: !10, line: 414, column: 63)
!699 = !DILocation(line: 415, column: 24, scope: !698)
!700 = !DILocation(line: 415, column: 22, scope: !698)
!701 = !DILocation(line: 417, column: 3, scope: !698)
!702 = !DILocation(line: 420, column: 3, scope: !640)
!703 = !DILocation(line: 421, column: 3, scope: !640)
!704 = !DILocation(line: 422, column: 3, scope: !640)
!705 = !DILocation(line: 423, column: 1, scope: !640)
