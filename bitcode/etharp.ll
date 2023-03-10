; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/etharp.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/etharp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.etharp_entry = type { %struct.pbuf*, %struct.ip4_addr, %struct.netif*, %struct.eth_addr, i16, i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.eth_addr = type { [6 x i8] }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.etharp_hdr = type { i16, i16, i8, i8, i16, %struct.eth_addr, %struct.ip4_addr_wordaligned, %struct.eth_addr, %struct.ip4_addr_wordaligned }
%struct.ip4_addr_wordaligned = type { [2 x i16] }

@arp_table = internal global [10 x %struct.etharp_entry] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [34 x i8] c"eth_ret != NULL && ip_ret != NULL\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ipaddr != NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"netif != NULL\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"eth_ret != NULL\00", align 1
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@.str.6 = private unnamed_addr constant [10 x i8] c"q != NULL\00", align 1
@ethbroadcast = external dso_local constant %struct.eth_addr, align 1
@etharp_cached_entry = internal unnamed_addr global i8 0, align 1, !dbg !158
@.str.7 = private unnamed_addr constant [14 x i8] c"type overflow\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"no packet queues allowed!\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"netif->hwaddr_len == ETH_HWADDR_LEN\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"arp_table[i].q == NULL\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"arp_table[i].state == ETHARP_STATE_EMPTY\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !160
@uk_pr_crit.__str.15 = internal global [9 x i8] c"etharp.c\00", section ".data_shared", align 1, !dbg !187
@.str.16 = private unnamed_addr constant [48 x i8] c"arp_table[arp_idx].state >= ETHARP_STATE_STABLE\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"check that first pbuf can hold struct etharp_hdr\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"netif->hwaddr_len must be the same as ETH_HWADDR_LEN for etharp!\00", align 1
@ethzero = external dso_local constant %struct.eth_addr, align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @etharp_tmr() local_unnamed_addr #0 !dbg !300 {
  br label %1, !dbg !310

; <label>:1:                                      ; preds = %33, %0
  %2 = phi i64 [ 0, %0 ], [ %34, %33 ]
  %3 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 5, !dbg !311
  %4 = load i8, i8* %3, align 8, !dbg !311, !tbaa !312
  switch i8 %4, label %5 [
    i8 0, label %33
    i8 5, label %33
  ], !dbg !322

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 4, !dbg !324
  %7 = load i16, i16* %6, align 2, !dbg !326, !tbaa !327
  %8 = add i16 %7, 1, !dbg !326
  store i16 %8, i16* %6, align 2, !dbg !326, !tbaa !327
  %9 = icmp ugt i16 %8, 299, !dbg !328
  br i1 %9, label %14, label %10, !dbg !330

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8 %4, 1, !dbg !331
  %12 = icmp ugt i16 %8, 4, !dbg !332
  %13 = and i1 %11, %12, !dbg !333
  br i1 %13, label %14, label %21, !dbg !333

; <label>:14:                                     ; preds = %10, %5
  %15 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 0, !dbg !342
  %16 = load %struct.pbuf*, %struct.pbuf** %15, align 8, !dbg !342, !tbaa !344
  %17 = icmp eq %struct.pbuf* %16, null, !dbg !345
  br i1 %17, label %20, label %18, !dbg !346

; <label>:18:                                     ; preds = %14
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %16) #7, !dbg !347
  store %struct.pbuf* null, %struct.pbuf** %15, align 8, !dbg !349, !tbaa !344
  br label %20, !dbg !350

; <label>:20:                                     ; preds = %14, %18
  store i8 0, i8* %3, align 8, !dbg !351, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br label %33, !dbg !353

; <label>:21:                                     ; preds = %10
  switch i8 %4, label %33 [
    i8 3, label %22
    i8 4, label %23
    i8 1, label %24
  ], !dbg !354

; <label>:22:                                     ; preds = %21
  store i8 4, i8* %3, align 8, !dbg !355, !tbaa !312
  br label %33, !dbg !358

; <label>:23:                                     ; preds = %21
  store i8 2, i8* %3, align 8, !dbg !359, !tbaa !312
  br label %33, !dbg !362

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 2, !dbg !363
  %26 = load %struct.netif*, %struct.netif** %25, align 8, !dbg !363, !tbaa !366
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 1, !dbg !367
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %26, i64 0, i32 19, i64 0, !dbg !388
  %29 = bitcast i8* %28 to %struct.eth_addr*, !dbg !389
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %26, i64 0, i32 1, i32 0, !dbg !390
  %31 = bitcast %union.anon* %30 to %struct.ip4_addr*, !dbg !390
  %32 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %26, %struct.eth_addr* nonnull %29, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %29, %struct.ip4_addr* nonnull %31, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %27, i16 zeroext 1) #7, !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br label %33, !dbg !394

; <label>:33:                                     ; preds = %21, %1, %1, %20, %23, %24, %22
  %34 = add nuw nsw i64 %2, 1, !dbg !395
  %35 = icmp eq i64 %34, 10, !dbg !396
  br i1 %35, label %36, label %1, !dbg !310, !llvm.loop !397

; <label>:36:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  ret void, !dbg !399
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_request(%struct.netif*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !369 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !406
  %4 = bitcast i8* %3 to %struct.eth_addr*, !dbg !407
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !408
  %6 = bitcast %union.anon* %5 to %struct.ip4_addr*, !dbg !408
  %7 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %4, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %4, %struct.ip4_addr* nonnull %6, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* %1, i16 zeroext 1) #7, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  ret i8 %7, !dbg !411
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_add_static_entry(%struct.ip4_addr*, %struct.eth_addr*) local_unnamed_addr #0 !dbg !412 {
  %3 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %0) #7, !dbg !421
  %4 = icmp eq %struct.netif* %3, null, !dbg !423
  br i1 %4, label %7, label %5, !dbg !425

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %3, %struct.ip4_addr* %0, %struct.eth_addr* %1, i8 zeroext 5) #8, !dbg !426
  br label %7, !dbg !427

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ -4, %2 ], !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  ret i8 %8, !dbg !429
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_update_arp_entry(%struct.netif*, %struct.ip4_addr*, %struct.eth_addr*, i8 zeroext) unnamed_addr #0 !dbg !430 {
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !446
  %6 = load i8, i8* %5, align 4, !dbg !446, !tbaa !449
  %7 = icmp eq i8 %6, 6, !dbg !446
  br i1 %7, label %9, label %8, !dbg !452

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !453
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !456
  tail call void @ukplat_terminate(i32 3) #9, !dbg !456
  unreachable, !dbg !456

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip4_addr* %1, null, !dbg !460
  br i1 %10, label %50, label %11, !dbg !460

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !460
  %13 = load i32, i32* %12, align 4, !dbg !460, !tbaa !462
  %14 = icmp eq i32 %13, 0, !dbg !460
  br i1 %14, label %50, label %15, !dbg !463

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %13, %struct.netif* nonnull %0) #7, !dbg !464
  %17 = icmp eq i8 %16, 0, !dbg !464
  br i1 %17, label %18, label %50, !dbg !465

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %12, align 4, !dbg !466, !tbaa !462
  %20 = and i32 %19, 240, !dbg !466
  %21 = icmp eq i32 %20, 224, !dbg !466
  br i1 %21, label %50, label %22, !dbg !467

; <label>:22:                                     ; preds = %18
  %23 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext %3, %struct.netif* nonnull %0) #8, !dbg !468
  %24 = icmp slt i16 %23, 0, !dbg !470
  br i1 %24, label %25, label %27, !dbg !472

; <label>:25:                                     ; preds = %22
  %26 = trunc i16 %23 to i8, !dbg !473
  br label %50, !dbg !475

; <label>:27:                                     ; preds = %22
  %28 = and i8 %3, 4, !dbg !476
  %29 = icmp eq i8 %28, 0, !dbg !476
  %30 = sext i16 %23 to i64, !dbg !478
  %31 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 5, !dbg !478
  br i1 %29, label %32, label %35, !dbg !480

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %31, align 8, !dbg !481, !tbaa !312
  %34 = icmp eq i8 %33, 5, !dbg !482
  br i1 %34, label %50, label %35, !dbg !483

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i8 [ 5, %27 ], [ 2, %32 ]
  store i8 %36, i8* %31, align 8, !dbg !484, !tbaa !312
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 2, !dbg !486
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !487, !tbaa !366
  %38 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 3, i32 0, i64 0, !dbg !488
  %39 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %2, i64 0, i32 0, i64 0, !dbg !488
  %40 = tail call i8* @memcpy(i8* nonnull %38, i8* %39, i64 6) #7, !dbg !488
  %41 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 4, !dbg !489
  store i16 0, i16* %41, align 2, !dbg !490, !tbaa !327
  %42 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 0, !dbg !491
  %43 = load %struct.pbuf*, %struct.pbuf** %42, align 8, !dbg !491, !tbaa !344
  %44 = icmp eq %struct.pbuf* %43, null, !dbg !492
  br i1 %44, label %50, label %45, !dbg !493

; <label>:45:                                     ; preds = %35
  store %struct.pbuf* null, %struct.pbuf** %42, align 8, !dbg !495, !tbaa !344
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !496
  %47 = bitcast i8* %46 to %struct.eth_addr*, !dbg !497
  %48 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %43, %struct.eth_addr* nonnull %47, %struct.eth_addr* %2, i16 zeroext 2048) #7, !dbg !498
  %49 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %43) #7, !dbg !499
  br label %50, !dbg !500

; <label>:50:                                     ; preds = %45, %35, %32, %9, %11, %18, %15, %25
  %51 = phi i8 [ %26, %25 ], [ -16, %15 ], [ -16, %18 ], [ -16, %11 ], [ -16, %9 ], [ -6, %32 ], [ 0, %35 ], [ 0, %45 ], !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !503
  ret i8 %51, !dbg !503
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_remove_static_entry(%struct.ip4_addr* readonly) local_unnamed_addr #0 !dbg !504 {
  %2 = icmp eq %struct.ip4_addr* %0, null
  %3 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0
  %4 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !542, !tbaa !312
  %5 = icmp eq i8 %4, 0, !dbg !544
  br i1 %5, label %6, label %9, !dbg !546

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !542, !tbaa !312
  %8 = icmp eq i8 %7, 0, !dbg !544
  br i1 %8, label %39, label %33, !dbg !547

; <label>:9:                                      ; preds = %1
  br i1 %2, label %14, label %10, !dbg !548

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %12 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %13 = icmp eq i32 %11, %12, !dbg !552
  br i1 %13, label %17, label %14, !dbg !554

; <label>:14:                                     ; preds = %10, %9
  %15 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !542, !tbaa !312
  %16 = icmp eq i8 %15, 0, !dbg !544
  br i1 %16, label %39, label %33, !dbg !546

; <label>:17:                                     ; preds = %164, %152, %136, %119, %102, %85, %68, %51, %35, %10
  %18 = phi i64 [ 0, %10 ], [ 1, %35 ], [ 2, %51 ], [ 3, %68 ], [ 4, %85 ], [ 5, %102 ], [ 6, %119 ], [ 7, %136 ], [ 8, %152 ], [ 9, %164 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  %19 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %18, i32 5, !dbg !557
  %20 = load i8, i8* %19, align 8, !dbg !557, !tbaa !312
  %21 = icmp eq i8 %20, 5, !dbg !559
  br i1 %21, label %22, label %31, !dbg !560

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %18, i32 0, !dbg !563
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !563, !tbaa !344
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !564
  br i1 %25, label %28, label %26, !dbg !565

; <label>:26:                                     ; preds = %22
  %27 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %24) #7, !dbg !566
  store %struct.pbuf* null, %struct.pbuf** %23, align 8, !dbg !567, !tbaa !344
  br label %28, !dbg !568

; <label>:28:                                     ; preds = %22, %26
  store i8 0, i8* %19, align 8, !dbg !569, !tbaa !312
  br label %29, !dbg !570

; <label>:29:                                     ; preds = %164, %160, %156, %28
  %30 = phi i8 [ 0, %28 ], [ -1, %156 ], [ -1, %160 ], [ -1, %164 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br label %31, !dbg !572

; <label>:31:                                     ; preds = %29, %17
  %32 = phi i8 [ -16, %17 ], [ %30, %29 ], !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  ret i8 %32, !dbg !572

; <label>:33:                                     ; preds = %14, %6
  %34 = phi i16 [ 0, %6 ], [ 10, %14 ]
  br i1 %2, label %43, label %35, !dbg !548

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %37 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %38 = icmp eq i32 %36, %37, !dbg !552
  br i1 %38, label %17, label %43, !dbg !554

; <label>:39:                                     ; preds = %14, %6
  %40 = phi i16 [ 0, %6 ], [ 1, %14 ]
  %41 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !542, !tbaa !312
  %42 = icmp eq i8 %41, 0, !dbg !544
  br i1 %42, label %55, label %49, !dbg !547

; <label>:43:                                     ; preds = %33, %35
  %44 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !542, !tbaa !312
  %45 = icmp eq i16 %34, 10, !dbg !573
  %46 = icmp eq i8 %44, 0, !dbg !544
  %47 = and i1 %45, %46, !dbg !546
  br i1 %47, label %55, label %48, !dbg !546

; <label>:48:                                     ; preds = %43
  br i1 %46, label %59, label %49, !dbg !547

; <label>:49:                                     ; preds = %39, %48
  %50 = phi i16 [ %40, %39 ], [ %34, %48 ]
  br i1 %2, label %59, label %51, !dbg !548

; <label>:51:                                     ; preds = %49
  %52 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %53 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %54 = icmp eq i32 %52, %53, !dbg !552
  br i1 %54, label %17, label %59, !dbg !554

; <label>:55:                                     ; preds = %43, %39
  %56 = phi i16 [ %40, %39 ], [ 2, %43 ]
  %57 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !542, !tbaa !312
  %58 = icmp eq i8 %57, 0, !dbg !544
  br i1 %58, label %72, label %66, !dbg !547

; <label>:59:                                     ; preds = %49, %51, %48
  %60 = phi i16 [ %34, %48 ], [ %50, %51 ], [ %50, %49 ]
  %61 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !542, !tbaa !312
  %62 = icmp eq i16 %60, 10, !dbg !573
  %63 = icmp eq i8 %61, 0, !dbg !544
  %64 = and i1 %62, %63, !dbg !546
  br i1 %64, label %72, label %65, !dbg !546

; <label>:65:                                     ; preds = %59
  br i1 %63, label %76, label %66, !dbg !547

; <label>:66:                                     ; preds = %55, %65
  %67 = phi i16 [ %56, %55 ], [ %60, %65 ]
  br i1 %2, label %76, label %68, !dbg !548

; <label>:68:                                     ; preds = %66
  %69 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %70 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %71 = icmp eq i32 %69, %70, !dbg !552
  br i1 %71, label %17, label %76, !dbg !554

; <label>:72:                                     ; preds = %59, %55
  %73 = phi i16 [ %56, %55 ], [ 3, %59 ]
  %74 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !542, !tbaa !312
  %75 = icmp eq i8 %74, 0, !dbg !544
  br i1 %75, label %89, label %83, !dbg !547

; <label>:76:                                     ; preds = %66, %68, %65
  %77 = phi i16 [ %60, %65 ], [ %67, %68 ], [ %67, %66 ]
  %78 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !542, !tbaa !312
  %79 = icmp eq i16 %77, 10, !dbg !573
  %80 = icmp eq i8 %78, 0, !dbg !544
  %81 = and i1 %79, %80, !dbg !546
  br i1 %81, label %89, label %82, !dbg !546

; <label>:82:                                     ; preds = %76
  br i1 %80, label %93, label %83, !dbg !547

; <label>:83:                                     ; preds = %72, %82
  %84 = phi i16 [ %73, %72 ], [ %77, %82 ]
  br i1 %2, label %93, label %85, !dbg !548

; <label>:85:                                     ; preds = %83
  %86 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %87 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %88 = icmp eq i32 %86, %87, !dbg !552
  br i1 %88, label %17, label %93, !dbg !554

; <label>:89:                                     ; preds = %76, %72
  %90 = phi i16 [ %73, %72 ], [ 4, %76 ]
  %91 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !542, !tbaa !312
  %92 = icmp eq i8 %91, 0, !dbg !544
  br i1 %92, label %106, label %100, !dbg !547

; <label>:93:                                     ; preds = %83, %85, %82
  %94 = phi i16 [ %77, %82 ], [ %84, %85 ], [ %84, %83 ]
  %95 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !542, !tbaa !312
  %96 = icmp eq i16 %94, 10, !dbg !573
  %97 = icmp eq i8 %95, 0, !dbg !544
  %98 = and i1 %96, %97, !dbg !546
  br i1 %98, label %106, label %99, !dbg !546

; <label>:99:                                     ; preds = %93
  br i1 %97, label %110, label %100, !dbg !547

; <label>:100:                                    ; preds = %89, %99
  %101 = phi i16 [ %90, %89 ], [ %94, %99 ]
  br i1 %2, label %110, label %102, !dbg !548

; <label>:102:                                    ; preds = %100
  %103 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %104 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %105 = icmp eq i32 %103, %104, !dbg !552
  br i1 %105, label %17, label %110, !dbg !554

; <label>:106:                                    ; preds = %93, %89
  %107 = phi i16 [ %90, %89 ], [ 5, %93 ]
  %108 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !542, !tbaa !312
  %109 = icmp eq i8 %108, 0, !dbg !544
  br i1 %109, label %123, label %117, !dbg !547

; <label>:110:                                    ; preds = %100, %102, %99
  %111 = phi i16 [ %94, %99 ], [ %101, %102 ], [ %101, %100 ]
  %112 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !542, !tbaa !312
  %113 = icmp eq i16 %111, 10, !dbg !573
  %114 = icmp eq i8 %112, 0, !dbg !544
  %115 = and i1 %113, %114, !dbg !546
  br i1 %115, label %123, label %116, !dbg !546

; <label>:116:                                    ; preds = %110
  br i1 %114, label %127, label %117, !dbg !547

; <label>:117:                                    ; preds = %106, %116
  %118 = phi i16 [ %107, %106 ], [ %111, %116 ]
  br i1 %2, label %127, label %119, !dbg !548

; <label>:119:                                    ; preds = %117
  %120 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %121 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %122 = icmp eq i32 %120, %121, !dbg !552
  br i1 %122, label %17, label %127, !dbg !554

; <label>:123:                                    ; preds = %110, %106
  %124 = phi i16 [ %107, %106 ], [ 6, %110 ]
  %125 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !542, !tbaa !312
  %126 = icmp eq i8 %125, 0, !dbg !544
  br i1 %126, label %140, label %134, !dbg !547

; <label>:127:                                    ; preds = %117, %119, %116
  %128 = phi i16 [ %111, %116 ], [ %118, %119 ], [ %118, %117 ]
  %129 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !542, !tbaa !312
  %130 = icmp eq i16 %128, 10, !dbg !573
  %131 = icmp eq i8 %129, 0, !dbg !544
  %132 = and i1 %130, %131, !dbg !546
  br i1 %132, label %140, label %133, !dbg !546

; <label>:133:                                    ; preds = %127
  br i1 %131, label %143, label %134, !dbg !547

; <label>:134:                                    ; preds = %123, %133
  %135 = phi i16 [ %124, %123 ], [ %128, %133 ]
  br i1 %2, label %143, label %136, !dbg !548

; <label>:136:                                    ; preds = %134
  %137 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %138 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %139 = icmp eq i32 %137, %138, !dbg !552
  br i1 %139, label %17, label %143, !dbg !554

; <label>:140:                                    ; preds = %127, %123
  %141 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !542, !tbaa !312
  %142 = icmp eq i8 %141, 0, !dbg !544
  br i1 %142, label %156, label %151, !dbg !547

; <label>:143:                                    ; preds = %134, %136, %133
  %144 = phi i16 [ %128, %133 ], [ %135, %136 ], [ %135, %134 ]
  %145 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !542, !tbaa !312
  %146 = icmp eq i16 %144, 10, !dbg !573
  %147 = icmp eq i8 %145, 0, !dbg !544
  %148 = and i1 %146, %147, !dbg !546
  br i1 %148, label %156, label %149, !dbg !546

; <label>:149:                                    ; preds = %143
  %150 = or i1 %147, %2, !dbg !547
  br i1 %150, label %160, label %152, !dbg !547

; <label>:151:                                    ; preds = %140
  br i1 %2, label %160, label %152, !dbg !548

; <label>:152:                                    ; preds = %149, %151
  %153 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %154 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %155 = icmp eq i32 %153, %154, !dbg !552
  br i1 %155, label %17, label %160, !dbg !554

; <label>:156:                                    ; preds = %143, %140
  %157 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !542, !tbaa !312
  %158 = icmp eq i8 %157, 0, !dbg !544
  %159 = or i1 %158, %2, !dbg !547
  br i1 %159, label %29, label %164, !dbg !547

; <label>:160:                                    ; preds = %149, %151, %152
  %161 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !542, !tbaa !312
  %162 = icmp eq i8 %161, 0, !dbg !544
  %163 = or i1 %162, %2, !dbg !546
  br i1 %163, label %29, label %164, !dbg !546

; <label>:164:                                    ; preds = %156, %160
  %165 = load i32, i32* %3, align 4, !dbg !552, !tbaa !462
  %166 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !552, !tbaa !553
  %167 = icmp eq i32 %165, %166, !dbg !552
  br i1 %167, label %17, label %29, !dbg !554
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* readonly, i8 zeroext, %struct.netif*) unnamed_addr #0 !dbg !512 {
  %4 = icmp eq %struct.ip4_addr* %0, null
  %5 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0
  %6 = icmp eq %struct.netif* %2, null
  br label %7, !dbg !585

; <label>:7:                                      ; preds = %3, %58
  %8 = phi i64 [ 0, %3 ], [ %66, %58 ]
  %9 = phi i16 [ 0, %3 ], [ %65, %58 ]
  %10 = phi i16 [ 0, %3 ], [ %64, %58 ]
  %11 = phi i16 [ 0, %3 ], [ %63, %58 ]
  %12 = phi i16 [ 10, %3 ], [ %62, %58 ]
  %13 = phi i16 [ 10, %3 ], [ %61, %58 ]
  %14 = phi i16 [ 10, %3 ], [ %60, %58 ]
  %15 = phi i16 [ 10, %3 ], [ %59, %58 ]
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 5, !dbg !586
  %17 = load i8, i8* %16, align 8, !dbg !586, !tbaa !312
  %18 = icmp eq i16 %13, 10, !dbg !588
  %19 = icmp eq i8 %17, 0, !dbg !589
  %20 = and i1 %18, %19, !dbg !590
  %21 = trunc i64 %8 to i16, !dbg !590
  br i1 %20, label %58, label %22, !dbg !590

; <label>:22:                                     ; preds = %7
  br i1 %19, label %58, label %23, !dbg !591

; <label>:23:                                     ; preds = %22
  %24 = icmp eq i8 %17, 1, !dbg !592
  br i1 %4, label %35, label %25, !dbg !595

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %5, align 4, !dbg !596, !tbaa !462
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 1, i32 0, !dbg !596
  %28 = load i32, i32* %27, align 8, !dbg !596, !tbaa !553
  %29 = icmp eq i32 %26, %28, !dbg !596
  br i1 %29, label %30, label %35, !dbg !597

; <label>:30:                                     ; preds = %25
  br i1 %6, label %116, label %31, !dbg !598

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 2, !dbg !599
  %33 = load %struct.netif*, %struct.netif** %32, align 8, !dbg !599, !tbaa !366
  %34 = icmp eq %struct.netif* %33, %2, !dbg !600
  br i1 %34, label %116, label %35, !dbg !601

; <label>:35:                                     ; preds = %23, %31, %25
  br i1 %24, label %36, label %50, !dbg !602

; <label>:36:                                     ; preds = %35
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 0, !dbg !603
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8, !dbg !603, !tbaa !344
  %39 = icmp eq %struct.pbuf* %38, null, !dbg !607
  %40 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !608
  %41 = load i16, i16* %40, align 2, !dbg !608, !tbaa !327
  br i1 %39, label %46, label %42, !dbg !611

; <label>:42:                                     ; preds = %36
  %43 = icmp ult i16 %41, %11, !dbg !612
  %44 = select i1 %43, i16 %12, i16 %21, !dbg !615
  %45 = select i1 %43, i16 %11, i16 %41, !dbg !615
  br label %58, !dbg !615

; <label>:46:                                     ; preds = %36
  %47 = icmp ult i16 %41, %10, !dbg !616
  %48 = select i1 %47, i16 %15, i16 %21, !dbg !617
  %49 = select i1 %47, i16 %10, i16 %41, !dbg !617
  br label %58, !dbg !617

; <label>:50:                                     ; preds = %35
  %51 = icmp ult i8 %17, 5, !dbg !618
  br i1 %51, label %52, label %58, !dbg !622

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !623
  %54 = load i16, i16* %53, align 2, !dbg !623, !tbaa !327
  %55 = icmp ult i16 %54, %9, !dbg !626
  %56 = select i1 %55, i16 %14, i16 %21, !dbg !627
  %57 = select i1 %55, i16 %9, i16 %54, !dbg !627
  br label %58, !dbg !627

; <label>:58:                                     ; preds = %50, %7, %42, %46, %52, %22
  %59 = phi i16 [ %15, %52 ], [ %48, %46 ], [ %15, %42 ], [ %15, %7 ], [ %15, %22 ], [ %15, %50 ]
  %60 = phi i16 [ %56, %52 ], [ %14, %46 ], [ %14, %42 ], [ %14, %7 ], [ %14, %22 ], [ %14, %50 ]
  %61 = phi i16 [ %13, %52 ], [ %13, %46 ], [ %13, %42 ], [ %21, %7 ], [ %13, %22 ], [ %13, %50 ]
  %62 = phi i16 [ %12, %52 ], [ %12, %46 ], [ %44, %42 ], [ %12, %7 ], [ %12, %22 ], [ %12, %50 ]
  %63 = phi i16 [ %11, %52 ], [ %11, %46 ], [ %45, %42 ], [ %11, %7 ], [ %11, %22 ], [ %11, %50 ]
  %64 = phi i16 [ %10, %52 ], [ %49, %46 ], [ %10, %42 ], [ %10, %7 ], [ %10, %22 ], [ %10, %50 ]
  %65 = phi i16 [ %57, %52 ], [ %9, %46 ], [ %9, %42 ], [ %9, %7 ], [ %9, %22 ], [ %9, %50 ]
  %66 = add nuw nsw i64 %8, 1, !dbg !628
  %67 = icmp ult i64 %66, 10, !dbg !629
  br i1 %67, label %7, label %68, !dbg !585, !llvm.loop !630

; <label>:68:                                     ; preds = %58
  %69 = zext i8 %1 to i32, !dbg !632
  %70 = and i32 %69, 2, !dbg !634
  %71 = icmp eq i32 %70, 0, !dbg !635
  br i1 %71, label %72, label %118, !dbg !636

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i16 %61, 10, !dbg !637
  %74 = and i32 %69, 1, !dbg !638
  %75 = icmp eq i32 %74, 0, !dbg !639
  %76 = and i1 %75, %73, !dbg !640
  br i1 %76, label %118, label %77, !dbg !640

; <label>:77:                                     ; preds = %72
  %78 = icmp slt i16 %61, 10, !dbg !641
  br i1 %78, label %101, label %79, !dbg !643

; <label>:79:                                     ; preds = %77
  %80 = icmp slt i16 %60, 10, !dbg !644
  br i1 %80, label %81, label %87, !dbg !647

; <label>:81:                                     ; preds = %79
  %82 = sext i16 %60 to i64, !dbg !648
  %83 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %82, i32 0, !dbg !648
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8, !dbg !648, !tbaa !344
  %85 = icmp eq %struct.pbuf* %84, null, !dbg !648
  br i1 %85, label %91, label %86, !dbg !652

; <label>:86:                                     ; preds = %81
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !653
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !656
  tail call void @ukplat_terminate(i32 3) #9, !dbg !656
  unreachable, !dbg !656

; <label>:87:                                     ; preds = %79
  %88 = icmp slt i16 %59, 10, !dbg !660
  br i1 %88, label %91, label %89, !dbg !662

; <label>:89:                                     ; preds = %87
  %90 = icmp slt i16 %62, 10, !dbg !663
  br i1 %90, label %91, label %118, !dbg !665

; <label>:91:                                     ; preds = %81, %87, %89
  %92 = phi i16 [ %60, %81 ], [ %59, %87 ], [ %62, %89 ], !dbg !666
  %93 = sext i16 %92 to i64, !dbg !668
  %94 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %93, i32 0, !dbg !671
  %95 = load %struct.pbuf*, %struct.pbuf** %94, align 8, !dbg !671, !tbaa !344
  %96 = icmp eq %struct.pbuf* %95, null, !dbg !672
  br i1 %96, label %99, label %97, !dbg !673

; <label>:97:                                     ; preds = %91
  %98 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %95) #7, !dbg !674
  store %struct.pbuf* null, %struct.pbuf** %94, align 8, !dbg !675, !tbaa !344
  br label %99, !dbg !676

; <label>:99:                                     ; preds = %97, %91
  %100 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %93, i32 5, !dbg !677
  store i8 0, i8* %100, align 8, !dbg !678, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %107, !dbg !680

; <label>:101:                                    ; preds = %77
  %102 = sext i16 %61 to i64
  %103 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %102, i32 5
  %104 = load i8, i8* %103, align 8, !dbg !682, !tbaa !312
  %105 = icmp eq i8 %104, 0, !dbg !643
  br i1 %105, label %107, label %106, !dbg !680

; <label>:106:                                    ; preds = %101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !684
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !687
  tail call void @ukplat_terminate(i32 3) #9, !dbg !687
  unreachable, !dbg !687

; <label>:107:                                    ; preds = %99, %101
  %108 = phi i16 [ %92, %99 ], [ %61, %101 ]
  %109 = phi i64 [ %93, %99 ], [ %102, %101 ]
  br i1 %4, label %113, label %110, !dbg !691

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %5, align 4, !dbg !692, !tbaa !462
  %112 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 1, i32 0, !dbg !692
  store i32 %111, i32* %112, align 8, !dbg !692, !tbaa !553
  br label %113, !dbg !695

; <label>:113:                                    ; preds = %107, %110
  %114 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 4, !dbg !696
  store i16 0, i16* %114, align 2, !dbg !697, !tbaa !327
  %115 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 2, !dbg !698
  store %struct.netif* %2, %struct.netif** %115, align 8, !dbg !699, !tbaa !366
  br label %118, !dbg !700

; <label>:116:                                    ; preds = %30, %31
  %117 = trunc i64 %8 to i16, !dbg !590
  br label %118, !dbg !701

; <label>:118:                                    ; preds = %116, %89, %68, %72, %113
  %119 = phi i16 [ %108, %113 ], [ -1, %72 ], [ -1, %68 ], [ -1, %89 ], [ %117, %116 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  ret i16 %119, !dbg !701
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !702 {
  br label %2, !dbg !712

; <label>:2:                                      ; preds = %18, %1
  %3 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %4 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 5, !dbg !713
  %5 = load i8, i8* %4, align 8, !dbg !713, !tbaa !312
  %6 = icmp eq i8 %5, 0, !dbg !715
  br i1 %6, label %18, label %7, !dbg !717

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 2, !dbg !718
  %9 = load %struct.netif*, %struct.netif** %8, align 8, !dbg !718, !tbaa !366
  %10 = icmp eq %struct.netif* %9, %0, !dbg !719
  br i1 %10, label %11, label %18, !dbg !720

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 0, !dbg !724
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !724, !tbaa !344
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !725
  br i1 %14, label %17, label %15, !dbg !726

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %13) #7, !dbg !727
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !728, !tbaa !344
  br label %17, !dbg !729

; <label>:17:                                     ; preds = %11, %15
  store i8 0, i8* %4, align 8, !dbg !730, !tbaa !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  br label %18, !dbg !732

; <label>:18:                                     ; preds = %2, %17, %7
  %19 = add nuw nsw i64 %3, 1, !dbg !733
  %20 = icmp eq i64 %19, 10, !dbg !734
  br i1 %20, label %21, label %2, !dbg !712, !llvm.loop !735

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  ret void, !dbg !737
}

; Function Attrs: noredzone nounwind
define dso_local i64 @etharp_find_addr(%struct.netif* readnone, %struct.ip4_addr* readonly, %struct.eth_addr**, %struct.ip4_addr**) local_unnamed_addr #0 !dbg !738 {
  %5 = icmp ne %struct.eth_addr** %2, null, !dbg !757
  %6 = icmp ne %struct.ip4_addr** %3, null, !dbg !757
  %7 = and i1 %5, %6, !dbg !757
  br i1 %7, label %9, label %8, !dbg !757

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #8, !dbg !760
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !763
  tail call void @ukplat_terminate(i32 3) #9, !dbg !763
  unreachable, !dbg !763

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip4_addr* %1, null
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0
  %12 = icmp eq %struct.netif* %0, null
  %13 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !779, !tbaa !312
  %14 = icmp eq i8 %13, 0, !dbg !781
  %15 = or i1 %14, %10, !dbg !782
  br i1 %15, label %24, label %16, !dbg !782

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %18 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %19 = icmp eq i32 %17, %18, !dbg !783
  br i1 %19, label %20, label %24, !dbg !784

; <label>:20:                                     ; preds = %16
  %21 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 2), align 16, !dbg !785
  %22 = icmp eq %struct.netif* %21, %0, !dbg !786
  %23 = or i1 %12, %22, !dbg !787
  br i1 %23, label %28, label %24, !dbg !787

; <label>:24:                                     ; preds = %20, %9, %16
  %25 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !779, !tbaa !312
  %26 = icmp eq i8 %25, 0, !dbg !781
  %27 = or i1 %26, %10, !dbg !782
  br i1 %27, label %46, label %38, !dbg !782

; <label>:28:                                     ; preds = %138, %126, %114, %102, %90, %78, %66, %54, %42, %20
  %29 = phi i64 [ 0, %20 ], [ 1, %42 ], [ 2, %54 ], [ 3, %66 ], [ 4, %78 ], [ 5, %90 ], [ 6, %102 ], [ 7, %114 ], [ 8, %126 ], [ 9, %138 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  %30 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 5, !dbg !790
  %31 = load i8, i8* %30, align 8, !dbg !790, !tbaa !312
  %32 = icmp ugt i8 %31, 1, !dbg !792
  br i1 %32, label %33, label %36, !dbg !793

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 3, !dbg !794
  store %struct.eth_addr* %34, %struct.eth_addr** %2, align 8, !dbg !796, !tbaa !797
  %35 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 1, !dbg !798
  store %struct.ip4_addr* %35, %struct.ip4_addr** %3, align 8, !dbg !799, !tbaa !797
  br label %36, !dbg !800

; <label>:36:                                     ; preds = %142, %28, %33
  %37 = phi i64 [ %29, %33 ], [ -1, %28 ], [ -1, %142 ], !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  ret i64 %37, !dbg !802

; <label>:38:                                     ; preds = %24
  %39 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %40 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %41 = icmp eq i32 %39, %40, !dbg !783
  br i1 %41, label %42, label %46, !dbg !784

; <label>:42:                                     ; preds = %38
  %43 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 2), align 8, !dbg !785
  %44 = icmp eq %struct.netif* %43, %0, !dbg !786
  %45 = or i1 %12, %44, !dbg !787
  br i1 %45, label %28, label %46, !dbg !787

; <label>:46:                                     ; preds = %42, %38, %24
  %47 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !779, !tbaa !312
  %48 = icmp eq i8 %47, 0, !dbg !781
  %49 = or i1 %48, %10, !dbg !782
  br i1 %49, label %58, label %50, !dbg !782

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %52 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %53 = icmp eq i32 %51, %52, !dbg !783
  br i1 %53, label %54, label %58, !dbg !784

; <label>:54:                                     ; preds = %50
  %55 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 2), align 16, !dbg !785
  %56 = icmp eq %struct.netif* %55, %0, !dbg !786
  %57 = or i1 %12, %56, !dbg !787
  br i1 %57, label %28, label %58, !dbg !787

; <label>:58:                                     ; preds = %54, %50, %46
  %59 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !779, !tbaa !312
  %60 = icmp eq i8 %59, 0, !dbg !781
  %61 = or i1 %60, %10, !dbg !782
  br i1 %61, label %70, label %62, !dbg !782

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %64 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %65 = icmp eq i32 %63, %64, !dbg !783
  br i1 %65, label %66, label %70, !dbg !784

; <label>:66:                                     ; preds = %62
  %67 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 2), align 8, !dbg !785
  %68 = icmp eq %struct.netif* %67, %0, !dbg !786
  %69 = or i1 %12, %68, !dbg !787
  br i1 %69, label %28, label %70, !dbg !787

; <label>:70:                                     ; preds = %66, %62, %58
  %71 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !779, !tbaa !312
  %72 = icmp eq i8 %71, 0, !dbg !781
  %73 = or i1 %72, %10, !dbg !782
  br i1 %73, label %82, label %74, !dbg !782

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %76 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %77 = icmp eq i32 %75, %76, !dbg !783
  br i1 %77, label %78, label %82, !dbg !784

; <label>:78:                                     ; preds = %74
  %79 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 2), align 16, !dbg !785
  %80 = icmp eq %struct.netif* %79, %0, !dbg !786
  %81 = or i1 %12, %80, !dbg !787
  br i1 %81, label %28, label %82, !dbg !787

; <label>:82:                                     ; preds = %78, %74, %70
  %83 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !779, !tbaa !312
  %84 = icmp eq i8 %83, 0, !dbg !781
  %85 = or i1 %84, %10, !dbg !782
  br i1 %85, label %94, label %86, !dbg !782

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %89 = icmp eq i32 %87, %88, !dbg !783
  br i1 %89, label %90, label %94, !dbg !784

; <label>:90:                                     ; preds = %86
  %91 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 2), align 8, !dbg !785
  %92 = icmp eq %struct.netif* %91, %0, !dbg !786
  %93 = or i1 %12, %92, !dbg !787
  br i1 %93, label %28, label %94, !dbg !787

; <label>:94:                                     ; preds = %90, %86, %82
  %95 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !779, !tbaa !312
  %96 = icmp eq i8 %95, 0, !dbg !781
  %97 = or i1 %96, %10, !dbg !782
  br i1 %97, label %106, label %98, !dbg !782

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %100 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %101 = icmp eq i32 %99, %100, !dbg !783
  br i1 %101, label %102, label %106, !dbg !784

; <label>:102:                                    ; preds = %98
  %103 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 2), align 16, !dbg !785
  %104 = icmp eq %struct.netif* %103, %0, !dbg !786
  %105 = or i1 %12, %104, !dbg !787
  br i1 %105, label %28, label %106, !dbg !787

; <label>:106:                                    ; preds = %102, %98, %94
  %107 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !779, !tbaa !312
  %108 = icmp eq i8 %107, 0, !dbg !781
  %109 = or i1 %108, %10, !dbg !782
  br i1 %109, label %118, label %110, !dbg !782

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %112 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %113 = icmp eq i32 %111, %112, !dbg !783
  br i1 %113, label %114, label %118, !dbg !784

; <label>:114:                                    ; preds = %110
  %115 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 2), align 8, !dbg !785
  %116 = icmp eq %struct.netif* %115, %0, !dbg !786
  %117 = or i1 %12, %116, !dbg !787
  br i1 %117, label %28, label %118, !dbg !787

; <label>:118:                                    ; preds = %114, %110, %106
  %119 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !779, !tbaa !312
  %120 = icmp eq i8 %119, 0, !dbg !781
  %121 = or i1 %120, %10, !dbg !782
  br i1 %121, label %130, label %122, !dbg !782

; <label>:122:                                    ; preds = %118
  %123 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %124 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %125 = icmp eq i32 %123, %124, !dbg !783
  br i1 %125, label %126, label %130, !dbg !784

; <label>:126:                                    ; preds = %122
  %127 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 2), align 16, !dbg !785
  %128 = icmp eq %struct.netif* %127, %0, !dbg !786
  %129 = or i1 %12, %128, !dbg !787
  br i1 %129, label %28, label %130, !dbg !787

; <label>:130:                                    ; preds = %126, %122, %118
  %131 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !779, !tbaa !312
  %132 = icmp eq i8 %131, 0, !dbg !781
  %133 = or i1 %132, %10, !dbg !782
  br i1 %133, label %142, label %134, !dbg !782

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %11, align 4, !dbg !783, !tbaa !462
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !783, !tbaa !553
  %137 = icmp eq i32 %135, %136, !dbg !783
  br i1 %137, label %138, label %142, !dbg !784

; <label>:138:                                    ; preds = %134
  %139 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 2), align 8, !dbg !785
  %140 = icmp eq %struct.netif* %139, %0, !dbg !786
  %141 = or i1 %12, %140, !dbg !787
  br i1 %141, label %28, label %142, !dbg !787

; <label>:142:                                    ; preds = %138, %134, %130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !788
  br label %36
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !162 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !804
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !804
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !806
  call void @llvm.va_start(i8* nonnull %3), !dbg !806
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !807
  call void @llvm.va_end(i8* nonnull %3), !dbg !810
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  ret void, !dbg !811
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i32 @etharp_get_entry(i64, %struct.ip4_addr**, %struct.netif**, %struct.eth_addr**) local_unnamed_addr #0 !dbg !812 {
  %5 = icmp eq %struct.ip4_addr** %1, null, !dbg !827
  br i1 %5, label %6, label %7, !dbg !830

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !831
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !834
  tail call void @ukplat_terminate(i32 3) #9, !dbg !834
  unreachable, !dbg !834

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif** %2, null, !dbg !838
  br i1 %8, label %9, label %10, !dbg !841

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !842
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !845
  tail call void @ukplat_terminate(i32 3) #9, !dbg !845
  unreachable, !dbg !845

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.eth_addr** %3, null, !dbg !849
  br i1 %11, label %12, label %13, !dbg !852

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !853
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !856
  tail call void @ukplat_terminate(i32 3) #9, !dbg !856
  unreachable, !dbg !856

; <label>:13:                                     ; preds = %10
  %14 = icmp ult i64 %0, 10, !dbg !860
  br i1 %14, label %15, label %26, !dbg !862

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 5, !dbg !863
  %17 = load i8, i8* %16, align 8, !dbg !863, !tbaa !312
  %18 = icmp ugt i8 %17, 1, !dbg !864
  br i1 %18, label %19, label %26, !dbg !865

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 1, !dbg !866
  store %struct.ip4_addr* %20, %struct.ip4_addr** %1, align 8, !dbg !868, !tbaa !797
  %21 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 2, !dbg !869
  %22 = bitcast %struct.netif** %21 to i64*, !dbg !869
  %23 = load i64, i64* %22, align 8, !dbg !869, !tbaa !366
  %24 = bitcast %struct.netif** %2 to i64*, !dbg !870
  store i64 %23, i64* %24, align 8, !dbg !870, !tbaa !797
  %25 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 3, !dbg !871
  store %struct.eth_addr* %25, %struct.eth_addr** %3, align 8, !dbg !872, !tbaa !797
  br label %26, !dbg !873

; <label>:26:                                     ; preds = %13, %15, %19
  %27 = phi i32 [ 1, %19 ], [ 0, %15 ], [ 0, %13 ], !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  ret i32 %27, !dbg !876
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !877 {
  %3 = alloca %struct.ip4_addr, align 4
  %4 = alloca %struct.ip4_addr, align 4
  %5 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !889
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6, !dbg !889
  %6 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !889
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !889
  %7 = icmp eq %struct.netif* %1, null, !dbg !890
  br i1 %7, label %8, label %9, !dbg !893

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !894
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !897
  tail call void @ukplat_terminate(i32 3) #9, !dbg !897
  unreachable, !dbg !897

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !901
  %11 = bitcast i8** %10 to %struct.etharp_hdr**, !dbg !901
  %12 = load %struct.etharp_hdr*, %struct.etharp_hdr** %11, align 8, !dbg !901, !tbaa !902
  %13 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 0, !dbg !905
  %14 = load i16, i16* %13, align 1, !dbg !905, !tbaa !907
  %15 = icmp eq i16 %14, 256, !dbg !910
  br i1 %15, label %16, label %28, !dbg !911

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 2, !dbg !912
  %18 = load i8, i8* %17, align 1, !dbg !912, !tbaa !913
  %19 = icmp eq i8 %18, 6, !dbg !914
  br i1 %19, label %20, label %28, !dbg !915

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 3, !dbg !916
  %22 = load i8, i8* %21, align 1, !dbg !916, !tbaa !917
  %23 = icmp eq i8 %22, 4, !dbg !918
  br i1 %23, label %24, label %28, !dbg !919

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 1, !dbg !920
  %26 = load i16, i16* %25, align 1, !dbg !920, !tbaa !921
  %27 = icmp eq i16 %26, 8, !dbg !922
  br i1 %27, label %34, label %28, !dbg !923

; <label>:28:                                     ; preds = %24, %20, %16, %9
  %29 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !924, !tbaa !926
  %30 = add i16 %29, 1, !dbg !924
  store i16 %30, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !924, !tbaa !926
  %31 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !932, !tbaa !933
  %32 = add i16 %31, 1, !dbg !932
  store i16 %32, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !932, !tbaa !933
  %33 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !934
  br label %67, !dbg !935

; <label>:34:                                     ; preds = %24
  %35 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !936, !tbaa !937
  %36 = add i16 %35, 1, !dbg !936
  store i16 %36, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !936, !tbaa !937
  %37 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 6, !dbg !938
  %38 = bitcast %struct.ip4_addr_wordaligned* %37 to i8*, !dbg !938
  %39 = call i8* @memcpy(i8* nonnull %5, i8* nonnull %38, i64 4) #7, !dbg !938
  %40 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 8, !dbg !939
  %41 = bitcast %struct.ip4_addr_wordaligned* %40 to i8*, !dbg !939
  %42 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %41, i64 4) #7, !dbg !939
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, !dbg !940
  %44 = bitcast %union.anon* %43 to %struct.ip4_addr*, !dbg !940
  %45 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0, i32 0, i64 0, !dbg !940
  %46 = load i32, i32* %45, align 8, !dbg !940, !tbaa !942
  %47 = icmp ne i32 %46, 0, !dbg !940
  %48 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !943
  %49 = load i32, i32* %48, align 4, !dbg !943
  %50 = icmp eq i32 %49, %46, !dbg !943
  %51 = and i1 %47, %50, !dbg !945
  %52 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 5, !dbg !946
  %53 = select i1 %51, i8 1, i8 2, !dbg !947
  %54 = call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %1, %struct.ip4_addr* nonnull %3, %struct.eth_addr* nonnull %52, i8 zeroext %53) #8, !dbg !949
  %55 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 4, !dbg !950
  %56 = load i16, i16* %55, align 1, !dbg !950, !tbaa !951
  switch i16 %56, label %62 [
    i16 256, label %57
    i16 512, label %65
  ], !dbg !952

; <label>:57:                                     ; preds = %34
  br i1 %51, label %58, label %65, !dbg !953

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 19, i64 0, !dbg !955
  %60 = bitcast i8* %59 to %struct.eth_addr*, !dbg !958
  %61 = call fastcc signext i8 @etharp_raw(%struct.netif* nonnull %1, %struct.eth_addr* nonnull %60, %struct.eth_addr* nonnull %52, %struct.eth_addr* nonnull %60, %struct.ip4_addr* nonnull %44, %struct.eth_addr* nonnull %52, %struct.ip4_addr* nonnull %3, i16 zeroext 2) #8, !dbg !959
  br label %65, !dbg !960

; <label>:62:                                     ; preds = %34
  %63 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !961, !tbaa !962
  %64 = add i16 %63, 1, !dbg !961
  store i16 %64, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !961, !tbaa !962
  br label %65, !dbg !963

; <label>:65:                                     ; preds = %34, %58, %57, %62
  %66 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !964
  br label %67, !dbg !965

; <label>:67:                                     ; preds = %65, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6, !dbg !965
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  ret void, !dbg !965
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_raw(%struct.netif*, %struct.eth_addr*, %struct.eth_addr*, %struct.eth_addr*, %struct.ip4_addr*, %struct.eth_addr*, %struct.ip4_addr*, i16 zeroext) unnamed_addr #0 !dbg !966 {
  %9 = icmp eq %struct.netif* %0, null, !dbg !991
  br i1 %9, label %10, label %11, !dbg !994

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !995
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !998
  tail call void @ukplat_terminate(i32 3) #9, !dbg !998
  unreachable, !dbg !998

; <label>:11:                                     ; preds = %8
  %12 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext 28, i32 640) #7, !dbg !1002
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !1004
  br i1 %13, label %14, label %17, !dbg !1006

; <label>:14:                                     ; preds = %11
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1007, !tbaa !1009
  %16 = add i16 %15, 1, !dbg !1007
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1007, !tbaa !1009
  br label %55, !dbg !1010

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 3, !dbg !1011
  %19 = load i16, i16* %18, align 2, !dbg !1011, !tbaa !1014
  %20 = icmp ugt i16 %19, 27, !dbg !1011
  br i1 %20, label %22, label %21, !dbg !1015

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1016
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1019
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1019
  unreachable, !dbg !1019

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 1, !dbg !1023
  %24 = bitcast i8** %23 to %struct.etharp_hdr**, !dbg !1023
  %25 = load %struct.etharp_hdr*, %struct.etharp_hdr** %24, align 8, !dbg !1023, !tbaa !902
  %26 = tail call zeroext i16 @lwip_htons(i16 zeroext %7) #7, !dbg !1025
  %27 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 4, !dbg !1026
  store i16 %26, i16* %27, align 1, !dbg !1027, !tbaa !951
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1028
  %29 = load i8, i8* %28, align 4, !dbg !1028, !tbaa !449
  %30 = icmp eq i8 %29, 6, !dbg !1028
  br i1 %30, label %32, label %31, !dbg !1031

; <label>:31:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1032
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1035
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1035
  unreachable, !dbg !1035

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 5, i32 0, i64 0, !dbg !1039
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %3, i64 0, i32 0, i64 0, !dbg !1039
  %35 = tail call i8* @memcpy(i8* nonnull %33, i8* %34, i64 6) #7, !dbg !1039
  %36 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 7, i32 0, i64 0, !dbg !1040
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %5, i64 0, i32 0, i64 0, !dbg !1040
  %38 = tail call i8* @memcpy(i8* nonnull %36, i8* %37, i64 6) #7, !dbg !1040
  %39 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 6, !dbg !1041
  %40 = bitcast %struct.ip4_addr_wordaligned* %39 to i8*, !dbg !1041
  %41 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1041
  %42 = tail call i8* @memcpy(i8* nonnull %40, i8* %41, i64 4) #7, !dbg !1041
  %43 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 8, !dbg !1042
  %44 = bitcast %struct.ip4_addr_wordaligned* %43 to i8*, !dbg !1042
  %45 = bitcast %struct.ip4_addr* %6 to i8*, !dbg !1042
  %46 = tail call i8* @memcpy(i8* nonnull %44, i8* %45, i64 4) #7, !dbg !1042
  %47 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 0, !dbg !1043
  store i16 256, i16* %47, align 1, !dbg !1044, !tbaa !907
  %48 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 1, !dbg !1045
  store i16 8, i16* %48, align 1, !dbg !1046, !tbaa !921
  %49 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 2, !dbg !1047
  store i8 6, i8* %49, align 1, !dbg !1048, !tbaa !913
  %50 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 3, !dbg !1049
  store i8 4, i8* %50, align 1, !dbg !1050, !tbaa !917
  %51 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %12, %struct.eth_addr* %1, %struct.eth_addr* %2, i16 zeroext 2054) #7, !dbg !1051
  %52 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1053, !tbaa !1054
  %53 = add i16 %52, 1, !dbg !1053
  store i16 %53, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1053, !tbaa !1054
  %54 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %12) #7, !dbg !1055
  br label %55, !dbg !1056

; <label>:55:                                     ; preds = %32, %14
  %56 = phi i8 [ -1, %14 ], [ 0, %32 ], !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  ret i8 %56, !dbg !1058
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_output(%struct.netif*, %struct.pbuf*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !1059 {
  %4 = alloca %struct.eth_addr, align 1
  %5 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 0, !dbg !1074
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1074
  %6 = icmp eq %struct.netif* %0, null, !dbg !1076
  br i1 %6, label %7, label %8, !dbg !1079

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1080
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1083
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1083
  unreachable, !dbg !1083

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1087
  br i1 %9, label %10, label %11, !dbg !1090

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1091
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1094
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1094
  unreachable, !dbg !1094

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip4_addr* %2, null, !dbg !1098
  br i1 %12, label %13, label %14, !dbg !1101

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1102
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1105
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1105
  unreachable, !dbg !1105

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !1109
  %16 = load i32, i32* %15, align 4, !dbg !1109, !tbaa !462
  %17 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %16, %struct.netif* nonnull %0) #7, !dbg !1109
  %18 = icmp eq i8 %17, 0, !dbg !1109
  br i1 %18, label %19, label %97, !dbg !1110

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %15, align 4, !dbg !1111, !tbaa !462
  %21 = zext i32 %20 to i64, !dbg !1111
  %22 = and i64 %21, 240, !dbg !1111
  %23 = icmp eq i64 %22, 224, !dbg !1111
  br i1 %23, label %24, label %38, !dbg !1112

; <label>:24:                                     ; preds = %19
  store i8 1, i8* %5, align 1, !dbg !1113, !tbaa !942
  %25 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 1, !dbg !1115
  store i8 0, i8* %25, align 1, !dbg !1116, !tbaa !942
  %26 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 2, !dbg !1117
  store i8 94, i8* %26, align 1, !dbg !1118, !tbaa !942
  %27 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1119
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1119
  %29 = load i8, i8* %28, align 1, !dbg !1119, !tbaa !942
  %30 = and i8 %29, 127, !dbg !1120
  %31 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 3, !dbg !1121
  store i8 %30, i8* %31, align 1, !dbg !1122, !tbaa !942
  %32 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1123
  %33 = load i8, i8* %32, align 2, !dbg !1123, !tbaa !942
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 4, !dbg !1124
  store i8 %33, i8* %34, align 1, !dbg !1125, !tbaa !942
  %35 = getelementptr inbounds i8, i8* %27, i64 3, !dbg !1126
  %36 = load i8, i8* %35, align 1, !dbg !1126, !tbaa !942
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 5, !dbg !1127
  store i8 %36, i8* %37, align 1, !dbg !1128, !tbaa !942
  br label %97

; <label>:38:                                     ; preds = %19
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !1130
  %40 = load i32, i32* %39, align 8, !dbg !1130, !tbaa !942
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1130
  %42 = load i32, i32* %41, align 8, !dbg !1130, !tbaa !942
  %43 = xor i32 %42, %20, !dbg !1130
  %44 = and i32 %43, %40, !dbg !1130
  %45 = icmp eq i32 %44, 0, !dbg !1130
  %46 = and i64 %21, 65535, !dbg !1132
  %47 = icmp eq i64 %46, 65193, !dbg !1132
  %48 = or i1 %47, %45, !dbg !1133
  br i1 %48, label %56, label %49, !dbg !1133

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, !dbg !1134
  %51 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0, i32 0, i64 0, !dbg !1134
  %52 = load i32, i32* %51, align 8, !dbg !1134, !tbaa !942
  %53 = icmp eq i32 %52, 0, !dbg !1134
  br i1 %53, label %102, label %54, !dbg !1139

; <label>:54:                                     ; preds = %49
  %55 = bitcast %union.anon* %50 to %struct.ip4_addr*, !dbg !1134
  br label %56, !dbg !1140

; <label>:56:                                     ; preds = %54, %38
  %57 = phi %struct.ip4_addr* [ %2, %38 ], [ %55, %54 ], !dbg !1141
  %58 = load i8, i8* @etharp_cached_entry, align 1, !dbg !1143, !tbaa !942
  %59 = zext i8 %58 to i64, !dbg !1145
  %60 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 5, !dbg !1146
  %61 = load i8, i8* %60, align 8, !dbg !1146, !tbaa !312
  %62 = icmp ugt i8 %61, 1, !dbg !1147
  br i1 %62, label %63, label %77, !dbg !1148

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 2, !dbg !1149
  %65 = load %struct.netif*, %struct.netif** %64, align 8, !dbg !1149, !tbaa !366
  %66 = icmp eq %struct.netif* %65, %0, !dbg !1150
  br i1 %66, label %67, label %77, !dbg !1151

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0, !dbg !1152
  %69 = load i32, i32* %68, align 4, !dbg !1152, !tbaa !462
  %70 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 1, i32 0, !dbg !1152
  %71 = load i32, i32* %70, align 8, !dbg !1152, !tbaa !553
  %72 = icmp eq i32 %69, %71, !dbg !1152
  br i1 %72, label %73, label %77, !dbg !1153

; <label>:73:                                     ; preds = %67
  %74 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1154, !tbaa !1156
  %75 = add i16 %74, 1, !dbg !1154
  store i16 %75, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1154, !tbaa !1156
  %76 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %58) #8, !dbg !1157
  br label %102, !dbg !1158

; <label>:77:                                     ; preds = %67, %63, %56
  %78 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0
  %79 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !1160, !tbaa !312
  %80 = icmp ugt i8 %79, 1, !dbg !1165
  %81 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 2), align 16, !dbg !1166
  %82 = icmp eq %struct.netif* %81, %0, !dbg !1167
  %83 = and i1 %80, %82, !dbg !1168
  br i1 %83, label %84, label %91, !dbg !1168

; <label>:84:                                     ; preds = %77
  %85 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %86 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %87 = icmp eq i32 %85, %86, !dbg !1169
  br i1 %87, label %88, label %91, !dbg !1170

; <label>:88:                                     ; preds = %184, %174, %164, %154, %144, %134, %124, %114, %104, %84
  %89 = phi i8 [ 0, %84 ], [ 1, %104 ], [ 2, %114 ], [ 3, %124 ], [ 4, %134 ], [ 5, %144 ], [ 6, %154 ], [ 7, %164 ], [ 8, %174 ], [ 9, %184 ]
  store i8 %89, i8* @etharp_cached_entry, align 1, !dbg !1171, !tbaa !942
  %90 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %89) #8, !dbg !1173
  br label %102, !dbg !1174

; <label>:91:                                     ; preds = %77, %84
  %92 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !1160, !tbaa !312
  %93 = icmp ugt i8 %92, 1, !dbg !1165
  %94 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 2), align 8, !dbg !1166
  %95 = icmp eq %struct.netif* %94, %0, !dbg !1167
  %96 = and i1 %93, %95, !dbg !1168
  br i1 %96, label %104, label %108, !dbg !1168

; <label>:97:                                     ; preds = %14, %24
  %98 = phi %struct.eth_addr* [ %4, %24 ], [ @ethbroadcast, %14 ], !dbg !1175
  %99 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1176
  %100 = bitcast i8* %99 to %struct.eth_addr*, !dbg !1177
  %101 = call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, %struct.eth_addr* nonnull %100, %struct.eth_addr* nonnull %98, i16 zeroext 2048) #7, !dbg !1178
  br label %102, !dbg !1179

; <label>:102:                                    ; preds = %73, %88, %188, %49, %97
  %103 = phi i8 [ %101, %97 ], [ %76, %73 ], [ %90, %88 ], [ %189, %188 ], [ -4, %49 ], !dbg !1180
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  ret i8 %103, !dbg !1181

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %106 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %107 = icmp eq i32 %105, %106, !dbg !1169
  br i1 %107, label %88, label %108, !dbg !1170

; <label>:108:                                    ; preds = %104, %91
  %109 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !1160, !tbaa !312
  %110 = icmp ugt i8 %109, 1, !dbg !1165
  %111 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 2), align 16, !dbg !1166
  %112 = icmp eq %struct.netif* %111, %0, !dbg !1167
  %113 = and i1 %110, %112, !dbg !1168
  br i1 %113, label %114, label %118, !dbg !1168

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %116 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %117 = icmp eq i32 %115, %116, !dbg !1169
  br i1 %117, label %88, label %118, !dbg !1170

; <label>:118:                                    ; preds = %114, %108
  %119 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !1160, !tbaa !312
  %120 = icmp ugt i8 %119, 1, !dbg !1165
  %121 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 2), align 8, !dbg !1166
  %122 = icmp eq %struct.netif* %121, %0, !dbg !1167
  %123 = and i1 %120, %122, !dbg !1168
  br i1 %123, label %124, label %128, !dbg !1168

; <label>:124:                                    ; preds = %118
  %125 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %126 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %127 = icmp eq i32 %125, %126, !dbg !1169
  br i1 %127, label %88, label %128, !dbg !1170

; <label>:128:                                    ; preds = %124, %118
  %129 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !1160, !tbaa !312
  %130 = icmp ugt i8 %129, 1, !dbg !1165
  %131 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 2), align 16, !dbg !1166
  %132 = icmp eq %struct.netif* %131, %0, !dbg !1167
  %133 = and i1 %130, %132, !dbg !1168
  br i1 %133, label %134, label %138, !dbg !1168

; <label>:134:                                    ; preds = %128
  %135 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %137 = icmp eq i32 %135, %136, !dbg !1169
  br i1 %137, label %88, label %138, !dbg !1170

; <label>:138:                                    ; preds = %134, %128
  %139 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !1160, !tbaa !312
  %140 = icmp ugt i8 %139, 1, !dbg !1165
  %141 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 2), align 8, !dbg !1166
  %142 = icmp eq %struct.netif* %141, %0, !dbg !1167
  %143 = and i1 %140, %142, !dbg !1168
  br i1 %143, label %144, label %148, !dbg !1168

; <label>:144:                                    ; preds = %138
  %145 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %146 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %147 = icmp eq i32 %145, %146, !dbg !1169
  br i1 %147, label %88, label %148, !dbg !1170

; <label>:148:                                    ; preds = %144, %138
  %149 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !1160, !tbaa !312
  %150 = icmp ugt i8 %149, 1, !dbg !1165
  %151 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 2), align 16, !dbg !1166
  %152 = icmp eq %struct.netif* %151, %0, !dbg !1167
  %153 = and i1 %150, %152, !dbg !1168
  br i1 %153, label %154, label %158, !dbg !1168

; <label>:154:                                    ; preds = %148
  %155 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %156 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %157 = icmp eq i32 %155, %156, !dbg !1169
  br i1 %157, label %88, label %158, !dbg !1170

; <label>:158:                                    ; preds = %154, %148
  %159 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !1160, !tbaa !312
  %160 = icmp ugt i8 %159, 1, !dbg !1165
  %161 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 2), align 8, !dbg !1166
  %162 = icmp eq %struct.netif* %161, %0, !dbg !1167
  %163 = and i1 %160, %162, !dbg !1168
  br i1 %163, label %164, label %168, !dbg !1168

; <label>:164:                                    ; preds = %158
  %165 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %166 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %167 = icmp eq i32 %165, %166, !dbg !1169
  br i1 %167, label %88, label %168, !dbg !1170

; <label>:168:                                    ; preds = %164, %158
  %169 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !1160, !tbaa !312
  %170 = icmp ugt i8 %169, 1, !dbg !1165
  %171 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 2), align 16, !dbg !1166
  %172 = icmp eq %struct.netif* %171, %0, !dbg !1167
  %173 = and i1 %170, %172, !dbg !1168
  br i1 %173, label %174, label %178, !dbg !1168

; <label>:174:                                    ; preds = %168
  %175 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %176 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %177 = icmp eq i32 %175, %176, !dbg !1169
  br i1 %177, label %88, label %178, !dbg !1170

; <label>:178:                                    ; preds = %174, %168
  %179 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !1160, !tbaa !312
  %180 = icmp ugt i8 %179, 1, !dbg !1165
  %181 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 2), align 8, !dbg !1166
  %182 = icmp eq %struct.netif* %181, %0, !dbg !1167
  %183 = and i1 %180, %182, !dbg !1168
  br i1 %183, label %184, label %188, !dbg !1168

; <label>:184:                                    ; preds = %178
  %185 = load i32, i32* %78, align 4, !dbg !1169, !tbaa !462
  %186 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !1169, !tbaa !553
  %187 = icmp eq i32 %185, %186, !dbg !1169
  br i1 %187, label %88, label %188, !dbg !1170

; <label>:188:                                    ; preds = %184, %178
  %189 = tail call signext i8 @etharp_query(%struct.netif* nonnull %0, %struct.ip4_addr* %57, %struct.pbuf* nonnull %1) #8, !dbg !1182
  br label %102, !dbg !1183
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_output_to_arp_index(%struct.netif*, %struct.pbuf*, i8 zeroext) unnamed_addr #0 !dbg !1184 {
  %4 = zext i8 %2 to i64, !dbg !1194
  %5 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 5, !dbg !1194
  %6 = load i8, i8* %5, align 8, !dbg !1194, !tbaa !312
  %7 = icmp ugt i8 %6, 1, !dbg !1194
  br i1 %7, label %9, label %8, !dbg !1197

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1198
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1201
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1201
  unreachable, !dbg !1201

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8 %6, 2, !dbg !1205
  br i1 %10, label %11, label %36, !dbg !1207

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 4, !dbg !1208
  %13 = load i16, i16* %12, align 2, !dbg !1208, !tbaa !327
  %14 = icmp ugt i16 %13, 284, !dbg !1211
  br i1 %14, label %15, label %24, !dbg !1212

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1213
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1223
  %18 = bitcast i8* %17 to %struct.eth_addr*, !dbg !1224
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1225
  %20 = bitcast %union.anon* %19 to %struct.ip4_addr*, !dbg !1225
  %21 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %18, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %18, %struct.ip4_addr* nonnull %20, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %16, i16 zeroext 1) #7, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  %22 = icmp eq i8 %21, 0, !dbg !1229
  br i1 %22, label %23, label %36, !dbg !1230

; <label>:23:                                     ; preds = %15
  store i8 3, i8* %5, align 8, !dbg !1231, !tbaa !312
  br label %36, !dbg !1233

; <label>:24:                                     ; preds = %11
  %25 = icmp ugt i16 %13, 269, !dbg !1234
  br i1 %25, label %26, label %36, !dbg !1236

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1237
  %28 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1240
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1245
  %30 = bitcast i8* %29 to %struct.eth_addr*, !dbg !1246
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1247
  %32 = bitcast %union.anon* %31 to %struct.ip4_addr*, !dbg !1247
  %33 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %30, %struct.eth_addr* nonnull %28, %struct.eth_addr* nonnull %30, %struct.ip4_addr* nonnull %32, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %27, i16 zeroext 1) #7, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  %34 = icmp eq i8 %33, 0, !dbg !1250
  br i1 %34, label %35, label %36, !dbg !1251

; <label>:35:                                     ; preds = %26
  store i8 3, i8* %5, align 8, !dbg !1252, !tbaa !312
  br label %36, !dbg !1254

; <label>:36:                                     ; preds = %23, %15, %26, %35, %24, %9
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1255
  %38 = bitcast i8* %37 to %struct.eth_addr*, !dbg !1256
  %39 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1257
  %40 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* %1, %struct.eth_addr* nonnull %38, %struct.eth_addr* nonnull %39, i16 zeroext 2048) #7, !dbg !1258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  ret i8 %40, !dbg !1259
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_query(%struct.netif*, %struct.ip4_addr*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1260 {
  %4 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1280
  %5 = bitcast i8* %4 to %struct.eth_addr*, !dbg !1281
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !1285
  %7 = load i32, i32* %6, align 4, !dbg !1285, !tbaa !462
  %8 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %7, %struct.netif* %0) #7, !dbg !1285
  %9 = icmp eq i8 %8, 0, !dbg !1285
  br i1 %9, label %10, label %96, !dbg !1287

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %6, align 4, !dbg !1288, !tbaa !462
  %12 = and i32 %11, 240, !dbg !1288
  %13 = icmp eq i32 %12, 224, !dbg !1288
  %14 = icmp eq i32 %11, 0, !dbg !1289
  %15 = or i1 %14, %13, !dbg !1290
  br i1 %15, label %96, label %16, !dbg !1290

; <label>:16:                                     ; preds = %10
  %17 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext 1, %struct.netif* %0) #8, !dbg !1291
  %18 = icmp slt i16 %17, 0, !dbg !1293
  br i1 %18, label %19, label %26, !dbg !1295

; <label>:19:                                     ; preds = %16
  %20 = icmp eq %struct.pbuf* %2, null, !dbg !1296
  br i1 %20, label %24, label %21, !dbg !1299

; <label>:21:                                     ; preds = %19
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1300, !tbaa !1009
  %23 = add i16 %22, 1, !dbg !1300
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1300, !tbaa !1009
  br label %24, !dbg !1302

; <label>:24:                                     ; preds = %19, %21
  %25 = trunc i16 %17 to i8, !dbg !1303
  br label %96, !dbg !1304

; <label>:26:                                     ; preds = %16
  %27 = icmp ult i16 %17, 127, !dbg !1305
  br i1 %27, label %29, label %28, !dbg !1308

; <label>:28:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1309
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1312
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1312
  unreachable, !dbg !1312

; <label>:29:                                     ; preds = %26
  %30 = trunc i16 %17 to i8, !dbg !1316
  %31 = and i16 %17, 255, !dbg !1318
  %32 = zext i16 %31 to i64, !dbg !1318
  %33 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 5, !dbg !1320
  %34 = load i8, i8* %33, align 8, !dbg !1320, !tbaa !312
  %35 = icmp eq i8 %34, 0, !dbg !1321
  br i1 %35, label %36, label %39, !dbg !1322

; <label>:36:                                     ; preds = %29
  store i8 1, i8* %33, align 8, !dbg !1323, !tbaa !312
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 2, !dbg !1325
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !1326, !tbaa !366
  %38 = icmp eq %struct.pbuf* %2, null, !dbg !1327
  br label %41, !dbg !1329

; <label>:39:                                     ; preds = %29
  %40 = icmp eq %struct.pbuf* %2, null, !dbg !1327
  br i1 %40, label %41, label %48, !dbg !1329

; <label>:41:                                     ; preds = %36, %39
  %42 = phi i1 [ %38, %36 ], [ true, %39 ]
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1338
  %44 = bitcast %union.anon* %43 to %struct.ip4_addr*, !dbg !1338
  %45 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %5, %struct.ip4_addr* nonnull %44, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %1, i16 zeroext 1) #7, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %42, label %96, label %46, !dbg !1342

; <label>:46:                                     ; preds = %41
  %47 = load i8, i8* %33, align 8, !dbg !1343, !tbaa !312
  br label %48, !dbg !1342

; <label>:48:                                     ; preds = %46, %39
  %49 = phi i8 [ %47, %46 ], [ %34, %39 ], !dbg !1343
  %50 = phi i8 [ %45, %46 ], [ -1, %39 ]
  %51 = icmp ugt i8 %49, 1, !dbg !1344
  br i1 %51, label %52, label %55, !dbg !1345

; <label>:52:                                     ; preds = %48
  store i8 %30, i8* @etharp_cached_entry, align 1, !dbg !1346, !tbaa !942
  %53 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 3, !dbg !1348
  %54 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* nonnull %2, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull %53, i16 zeroext 2048) #7, !dbg !1349
  br label %96, !dbg !1350

; <label>:55:                                     ; preds = %48
  %56 = icmp eq i8 %49, 1, !dbg !1351
  br i1 %56, label %57, label %96, !dbg !1352

; <label>:57:                                     ; preds = %55
  %58 = icmp eq %struct.pbuf* %2, null, !dbg !1354
  br i1 %58, label %82, label %59, !dbg !1354

; <label>:59:                                     ; preds = %57, %76
  %60 = phi %struct.pbuf* [ %78, %76 ], [ %2, %57 ]
  %61 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 3, !dbg !1355
  %62 = load i16, i16* %61, align 2, !dbg !1355, !tbaa !1014
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 2, !dbg !1355
  %64 = load i16, i16* %63, align 8, !dbg !1355, !tbaa !1359
  %65 = icmp eq i16 %62, %64, !dbg !1355
  br i1 %65, label %66, label %71, !dbg !1355

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 0, !dbg !1355
  %68 = load %struct.pbuf*, %struct.pbuf** %67, align 8, !dbg !1355, !tbaa !1360
  %69 = icmp eq %struct.pbuf* %68, null, !dbg !1355
  br i1 %69, label %71, label %70, !dbg !1361

; <label>:70:                                     ; preds = %66
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1362
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1365
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1365
  unreachable, !dbg !1365

; <label>:71:                                     ; preds = %59, %66
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 4, !dbg !1369
  %73 = load i8, i8* %72, align 4, !dbg !1369, !tbaa !1371
  %74 = and i8 %73, 64, !dbg !1369
  %75 = icmp eq i8 %74, 0, !dbg !1369
  br i1 %75, label %76, label %80, !dbg !1372

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 0, !dbg !1373
  %78 = load %struct.pbuf*, %struct.pbuf** %77, align 8, !dbg !1373, !tbaa !1360
  %79 = icmp eq %struct.pbuf* %78, null, !dbg !1354
  br i1 %79, label %82, label %59, !dbg !1354, !llvm.loop !1374

; <label>:80:                                     ; preds = %71
  %81 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %2) #7, !dbg !1376
  br label %83, !dbg !1379

; <label>:82:                                     ; preds = %76, %57
  tail call void @pbuf_ref(%struct.pbuf* nonnull %2) #7, !dbg !1380
  br label %83

; <label>:83:                                     ; preds = %82, %80
  %84 = phi %struct.pbuf* [ %81, %80 ], [ %2, %82 ], !dbg !1382
  %85 = icmp eq %struct.pbuf* %84, null, !dbg !1383
  br i1 %85, label %93, label %86, !dbg !1385

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 0, !dbg !1386
  %88 = load %struct.pbuf*, %struct.pbuf** %87, align 8, !dbg !1386, !tbaa !344
  %89 = icmp eq %struct.pbuf* %88, null, !dbg !1389
  br i1 %89, label %92, label %90, !dbg !1390

; <label>:90:                                     ; preds = %86
  %91 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %88) #7, !dbg !1391
  br label %92, !dbg !1393

; <label>:92:                                     ; preds = %86, %90
  store %struct.pbuf* %84, %struct.pbuf** %87, align 8, !dbg !1394, !tbaa !344
  br label %96, !dbg !1395

; <label>:93:                                     ; preds = %83
  %94 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1396, !tbaa !1009
  %95 = add i16 %94, 1, !dbg !1396
  store i16 %95, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1396, !tbaa !1009
  br label %96

; <label>:96:                                     ; preds = %52, %55, %93, %92, %41, %10, %3, %24
  %97 = phi i8 [ %25, %24 ], [ -16, %3 ], [ -16, %10 ], [ %45, %41 ], [ %54, %52 ], [ %50, %55 ], [ 0, %92 ], [ -1, %93 ], !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  ret i8 %97, !dbg !1399
}

; Function Attrs: noredzone
declare dso_local signext i8 @ethernet_output(%struct.netif*, %struct.pbuf*, %struct.eth_addr*, %struct.eth_addr*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_clone(i32, i32, %struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!296, !297, !298}
!llvm.ident = !{!299}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arp_table", scope: !2, file: !3, line: 105, type: !192, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !157)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv4/etharp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !14, !19, !40, !47, !51, !70, !75, !83}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "etharp_state", file: !3, line: 79, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13}
!8 = !DIEnumerator(name: "ETHARP_STATE_EMPTY", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "ETHARP_STATE_PENDING", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "ETHARP_STATE_STABLE", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "ETHARP_STATE_STABLE_REREQUESTING_1", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "ETHARP_STATE_STABLE_REREQUESTING_2", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "ETHARP_STATE_STATIC", value: 5, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !15, line: 156, baseType: !6, size: 32, elements: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !{!17, !18}
!17 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 53, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!23 = !DIEnumerator(name: "ERR_OK", value: 0)
!24 = !DIEnumerator(name: "ERR_MEM", value: -1)
!25 = !DIEnumerator(name: "ERR_BUF", value: -2)
!26 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!27 = !DIEnumerator(name: "ERR_RTE", value: -4)
!28 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!29 = !DIEnumerator(name: "ERR_VAL", value: -6)
!30 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!31 = !DIEnumerator(name: "ERR_USE", value: -8)
!32 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!33 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!34 = !DIEnumerator(name: "ERR_CONN", value: -11)
!35 = !DIEnumerator(name: "ERR_IF", value: -12)
!36 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!37 = !DIEnumerator(name: "ERR_RST", value: -14)
!38 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!39 = !DIEnumerator(name: "ERR_ARG", value: -16)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !41, line: 68, baseType: !6, size: 32, elements: !42)
!41 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_iana_hwtype", file: !48, line: 52, baseType: !6, size: 32, elements: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/iana.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !{!50}
!50 = !DIEnumerator(name: "LWIP_IANA_HWTYPE_ETHERNET", value: 1, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ieee_eth_type", file: !52, line: 52, baseType: !6, size: 32, elements: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ieee.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!54 = !DIEnumerator(name: "ETHTYPE_IP", value: 2048, isUnsigned: true)
!55 = !DIEnumerator(name: "ETHTYPE_ARP", value: 2054, isUnsigned: true)
!56 = !DIEnumerator(name: "ETHTYPE_WOL", value: 2114, isUnsigned: true)
!57 = !DIEnumerator(name: "ETHTYPE_RARP", value: 32821, isUnsigned: true)
!58 = !DIEnumerator(name: "ETHTYPE_VLAN", value: 33024, isUnsigned: true)
!59 = !DIEnumerator(name: "ETHTYPE_IPV6", value: 34525, isUnsigned: true)
!60 = !DIEnumerator(name: "ETHTYPE_PPPOEDISC", value: 34915, isUnsigned: true)
!61 = !DIEnumerator(name: "ETHTYPE_PPPOE", value: 34916, isUnsigned: true)
!62 = !DIEnumerator(name: "ETHTYPE_JUMBO", value: 34928, isUnsigned: true)
!63 = !DIEnumerator(name: "ETHTYPE_PROFINET", value: 34962, isUnsigned: true)
!64 = !DIEnumerator(name: "ETHTYPE_ETHERCAT", value: 34980, isUnsigned: true)
!65 = !DIEnumerator(name: "ETHTYPE_LLDP", value: 35020, isUnsigned: true)
!66 = !DIEnumerator(name: "ETHTYPE_SERCOS", value: 35021, isUnsigned: true)
!67 = !DIEnumerator(name: "ETHTYPE_MRP", value: 35043, isUnsigned: true)
!68 = !DIEnumerator(name: "ETHTYPE_PTP", value: 35063, isUnsigned: true)
!69 = !DIEnumerator(name: "ETHTYPE_QINQ", value: 37120, isUnsigned: true)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "etharp_opcode", file: !71, line: 105, baseType: !6, size: 32, elements: !72)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/etharp.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !{!73, !74}
!73 = !DIEnumerator(name: "ARP_REQUEST", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "ARP_REPLY", value: 2, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 89, baseType: !6, size: 32, elements: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!79 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!80 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!81 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 145, baseType: !6, size: 32, elements: !84)
!84 = !{!85, !86, !87, !88}
!85 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!86 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!87 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!88 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!89 = !{!90, !91, !99, !103, !132, !139, !109, !142, !143, !145, !147, !152, !153}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !20, line: 96, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !93, line: 126, baseType: !94)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !95, line: 20, baseType: !96)
!95 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !97, line: 41, baseType: !98)
!97 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "etharp_hdr", file: !71, line: 86, size: 224, elements: !101)
!101 = !{!102, !107, !108, !113, !114, !115, !123, !130, !131}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "hwtype", scope: !100, file: !71, line: 87, baseType: !103, size: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !93, line: 127, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !95, line: 36, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !97, line: 57, baseType: !106)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !100, file: !71, line: 88, baseType: !103, size: 16, offset: 16)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "hwlen", scope: !100, file: !71, line: 89, baseType: !109, size: 8, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !93, line: 125, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !95, line: 24, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !97, line: 43, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "protolen", scope: !100, file: !71, line: 90, baseType: !109, size: 8, offset: 40)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !100, file: !71, line: 91, baseType: !103, size: 16, offset: 48)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "shwaddr", scope: !100, file: !71, line: 92, baseType: !116, size: 48, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eth_addr", file: !117, line: 60, size: 48, elements: !118)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ethernet.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !116, file: !117, line: 61, baseType: !120, size: 48)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 6)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sipaddr", scope: !100, file: !71, line: 93, baseType: !124, size: 32, offset: 112)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr_wordaligned", file: !71, line: 59, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "addrw", scope: !124, file: !71, line: 60, baseType: !127, size: 32)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 2)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dhwaddr", scope: !100, file: !71, line: 94, baseType: !116, size: 48, offset: 144)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dipaddr", scope: !100, file: !71, line: 95, baseType: !124, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !135, line: 57, baseType: !136)
!135 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !135, line: 51, size: 32, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !136, file: !135, line: 52, baseType: !139, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !93, line: 129, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !95, line: 48, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !97, line: 79, baseType: !6)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 40, baseType: !149)
!148 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !150, line: 129, baseType: !151)
!150 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!151 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_addr_idx_t", file: !15, line: 244, baseType: !109)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !93, line: 128, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !95, line: 32, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !97, line: 55, baseType: !156)
!156 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!157 = !{!0, !158, !160, !187}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "etharp_cached_entry", scope: !2, file: !3, line: 108, type: !152, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__str", scope: !162, file: !163, line: 198, type: !184, isLocal: true, isDefinition: true)
!162 = distinct !DISubprogram(name: "uk_pr_crit", scope: !163, file: !163, line: 194, type: !164, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!163 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166, null}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !{!170, !171}
!170 = !DILocalVariable(name: "fmt", arg: 1, scope: !162, file: !163, line: 194, type: !166)
!171 = !DILocalVariable(name: "argp", scope: !162, file: !163, line: 196, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 32, baseType: !174)
!173 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !175)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 192, elements: !182)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !177)
!177 = !{!178, !179, !180, !181}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !176, file: !3, line: 196, baseType: !6, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !176, file: !3, line: 196, baseType: !6, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !176, file: !3, line: 196, baseType: !90, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !176, file: !3, line: 196, baseType: !90, size: 64, offset: 128)
!182 = !{!183}
!183 = !DISubrange(count: 1)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 8)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "__str", scope: !162, file: !163, line: 198, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 72, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 9)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 3200, elements: !294)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "etharp_entry", file: !3, line: 90, size: 320, elements: !194)
!194 = !{!195, !207, !208, !291, !292, !293}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !193, file: !3, line: 96, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !76, line: 186, size: 192, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !76, line: 188, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !197, file: !76, line: 191, baseType: !90, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !197, file: !76, line: 200, baseType: !103, size: 16, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !197, file: !76, line: 203, baseType: !103, size: 16, offset: 144)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !197, file: !76, line: 208, baseType: !109, size: 8, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !76, line: 211, baseType: !109, size: 8, offset: 168)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !197, file: !76, line: 218, baseType: !109, size: 8, offset: 176)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !197, file: !76, line: 221, baseType: !109, size: 8, offset: 184)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !193, file: !3, line: 98, baseType: !134, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "netif", scope: !193, file: !3, line: 99, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !15, line: 260, size: 2240, elements: !211)
!211 = !{!212, !213, !233, !234, !235, !239, !241, !243, !244, !249, !254, !259, !266, !271, !272, !273, !275, !276, !277, !278, !279, !280, !281, !283, !284, !285, !286}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !15, line: 263, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !210, file: !15, line: 268, baseType: !214, size: 192, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !215, line: 76, baseType: !216)
!215 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !215, line: 69, size: 192, elements: !217)
!217 = !{!218, !232}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !216, file: !215, line: 73, baseType: !219, size: 160)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !216, file: !215, line: 70, size: 160, elements: !220)
!220 = !{!221, !231}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !219, file: !215, line: 71, baseType: !222, size: 160)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !223, line: 67, baseType: !224)
!223 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !223, line: 59, size: 160, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !224, file: !223, line: 60, baseType: !227, size: 128)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !224, file: !223, line: 62, baseType: !109, size: 8, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !219, file: !215, line: 72, baseType: !134, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !216, file: !215, line: 75, baseType: !109, size: 8, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !210, file: !15, line: 269, baseType: !214, size: 192, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !210, file: !15, line: 270, baseType: !214, size: 192, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !210, file: !15, line: 274, baseType: !236, size: 576, offset: 640)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 576, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 3)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !210, file: !15, line: 277, baseType: !240, size: 24, offset: 1216)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, elements: !237)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !210, file: !15, line: 282, baseType: !242, size: 96, offset: 1248)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 96, elements: !237)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !210, file: !15, line: 283, baseType: !242, size: 96, offset: 1344)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !210, file: !15, line: 288, baseType: !245, size: 64, offset: 1472)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !15, line: 178, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!91, !196, !209}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !210, file: !15, line: 294, baseType: !250, size: 64, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !15, line: 189, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!91, !209, !196, !132}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !210, file: !15, line: 299, baseType: !255, size: 64, offset: 1600)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !15, line: 212, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!91, !209, !196}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !210, file: !15, line: 305, baseType: !260, size: 64, offset: 1664)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !15, line: 202, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!91, !209, !196, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !210, file: !15, line: 310, baseType: !267, size: 64, offset: 1728)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !15, line: 214, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !209}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !210, file: !15, line: 319, baseType: !267, size: 64, offset: 1792)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !15, line: 323, baseType: !90, size: 64, offset: 1856)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !210, file: !15, line: 325, baseType: !274, size: 64, offset: 1920)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 64, elements: !182)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !210, file: !15, line: 332, baseType: !103, size: 16, offset: 1984)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !210, file: !15, line: 335, baseType: !103, size: 16, offset: 2000)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !210, file: !15, line: 338, baseType: !103, size: 16, offset: 2016)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !210, file: !15, line: 341, baseType: !120, size: 48, offset: 2032)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !210, file: !15, line: 343, baseType: !109, size: 8, offset: 2080)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !15, line: 345, baseType: !109, size: 8, offset: 2088)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !15, line: 347, baseType: !282, size: 16, offset: 2096)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 16, elements: !128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !210, file: !15, line: 350, baseType: !109, size: 8, offset: 2112)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !210, file: !15, line: 353, baseType: !109, size: 8, offset: 2120)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !210, file: !15, line: 357, baseType: !109, size: 8, offset: 2128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !210, file: !15, line: 377, baseType: !287, size: 64, offset: 2176)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !15, line: 222, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!91, !209, !264, !14}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ethaddr", scope: !193, file: !3, line: 100, baseType: !116, size: 48, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !193, file: !3, line: 101, baseType: !103, size: 16, offset: 240)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !193, file: !3, line: 102, baseType: !109, size: 8, offset: 256)
!294 = !{!295}
!295 = !DISubrange(count: 10)
!296 = !{i32 2, !"Dwarf Version", i32 4}
!297 = !{i32 2, !"Debug Info Version", i32 3}
!298 = !{i32 1, !"wchar_size", i32 4}
!299 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!300 = distinct !DISubprogram(name: "etharp_tmr", scope: !3, file: !3, line: 197, type: !301, isLocal: false, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null}
!303 = !{!304, !305}
!304 = !DILocalVariable(name: "i", scope: !300, file: !3, line: 199, type: !21)
!305 = !DILocalVariable(name: "state", scope: !306, file: !3, line: 204, type: !109)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 203, column: 40)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 203, column: 3)
!308 = distinct !DILexicalBlock(scope: !300, file: !3, line: 203, column: 3)
!309 = !DILocation(line: 199, column: 7, scope: !300)
!310 = !DILocation(line: 203, column: 3, scope: !308)
!311 = !DILocation(line: 204, column: 31, scope: !306)
!312 = !{!313, !315, i64 32}
!313 = !{!"etharp_entry", !314, i64 0, !317, i64 8, !314, i64 16, !319, i64 24, !320, i64 30, !315, i64 32}
!314 = !{!"any pointer", !315, i64 0}
!315 = !{!"omnipotent char", !316, i64 0}
!316 = !{!"Simple C/C++ TBAA"}
!317 = !{!"ip4_addr", !318, i64 0}
!318 = !{!"int", !315, i64 0}
!319 = !{!"eth_addr", !315, i64 0}
!320 = !{!"short", !315, i64 0}
!321 = !DILocation(line: 204, column: 10, scope: !306)
!322 = !DILocation(line: 207, column: 9, scope: !323)
!323 = distinct !DILexicalBlock(scope: !306, file: !3, line: 205, column: 9)
!324 = !DILocation(line: 210, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !3, line: 209, column: 10)
!326 = !DILocation(line: 210, column: 25, scope: !325)
!327 = !{!313, !320, i64 30}
!328 = !DILocation(line: 211, column: 31, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 211, column: 11)
!330 = !DILocation(line: 211, column: 46, scope: !329)
!331 = !DILocation(line: 212, column: 32, scope: !329)
!332 = !DILocation(line: 213, column: 32, scope: !329)
!333 = !DILocation(line: 212, column: 58, scope: !329)
!334 = !DILocalVariable(name: "i", arg: 1, scope: !335, file: !3, line: 168, type: !21)
!335 = distinct !DISubprogram(name: "etharp_free_entry", scope: !3, file: !3, line: 168, type: !336, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !21}
!338 = !{!334}
!339 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !340)
!340 = distinct !DILocation(line: 218, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !329, file: !3, line: 213, column: 53)
!342 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !340)
!343 = distinct !DILexicalBlock(scope: !335, file: !3, line: 173, column: 7)
!344 = !{!313, !314, i64 0}
!345 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !340)
!346 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !340)
!347 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !340)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 173, column: 31)
!349 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !340)
!350 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !340)
!351 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !340)
!352 = !DILocation(line: 188, column: 1, scope: !335, inlinedAt: !340)
!353 = !DILocation(line: 219, column: 7, scope: !341)
!354 = !DILocation(line: 219, column: 18, scope: !329)
!355 = !DILocation(line: 221, column: 28, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 219, column: 76)
!357 = distinct !DILexicalBlock(scope: !329, file: !3, line: 219, column: 18)
!358 = !DILocation(line: 222, column: 7, scope: !356)
!359 = !DILocation(line: 225, column: 28, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 222, column: 76)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 222, column: 18)
!362 = !DILocation(line: 226, column: 7, scope: !360)
!363 = !DILocation(line: 228, column: 37, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 226, column: 62)
!365 = distinct !DILexicalBlock(scope: !361, file: !3, line: 226, column: 18)
!366 = !{!313, !314, i64 16}
!367 = !DILocation(line: 228, column: 58, scope: !364)
!368 = !DILocalVariable(name: "netif", arg: 1, scope: !369, file: !3, line: 1198, type: !209)
!369 = distinct !DISubprogram(name: "etharp_request", scope: !3, file: !3, line: 1198, type: !370, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!91, !209, !132}
!372 = !{!368, !373}
!373 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !369, file: !3, line: 1198, type: !132)
!374 = !DILocation(line: 1198, column: 30, scope: !369, inlinedAt: !375)
!375 = distinct !DILocation(line: 228, column: 9, scope: !364)
!376 = !DILocation(line: 1198, column: 55, scope: !369, inlinedAt: !375)
!377 = !DILocalVariable(name: "netif", arg: 1, scope: !378, file: !3, line: 1181, type: !209)
!378 = distinct !DISubprogram(name: "etharp_request_dst", scope: !3, file: !3, line: 1181, type: !379, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!91, !209, !132, !143}
!381 = !{!377, !382, !383}
!382 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !378, file: !3, line: 1181, type: !132)
!383 = !DILocalVariable(name: "hw_dst_addr", arg: 3, scope: !378, file: !3, line: 1181, type: !143)
!384 = !DILocation(line: 1181, column: 34, scope: !378, inlinedAt: !385)
!385 = distinct !DILocation(line: 1201, column: 10, scope: !369, inlinedAt: !375)
!386 = !DILocation(line: 1181, column: 59, scope: !378, inlinedAt: !385)
!387 = !DILocation(line: 1181, column: 90, scope: !378, inlinedAt: !385)
!388 = !DILocation(line: 1183, column: 47, scope: !378, inlinedAt: !385)
!389 = !DILocation(line: 1183, column: 28, scope: !378, inlinedAt: !385)
!390 = !DILocation(line: 1184, column: 55, scope: !378, inlinedAt: !385)
!391 = !DILocation(line: 1183, column: 10, scope: !378, inlinedAt: !385)
!392 = !DILocation(line: 1183, column: 3, scope: !378, inlinedAt: !385)
!393 = !DILocation(line: 1201, column: 3, scope: !369, inlinedAt: !375)
!394 = !DILocation(line: 229, column: 7, scope: !364)
!395 = !DILocation(line: 203, column: 35, scope: !307)
!396 = !DILocation(line: 203, column: 17, scope: !307)
!397 = distinct !{!397, !310, !398}
!398 = !DILocation(line: 231, column: 3, scope: !308)
!399 = !DILocation(line: 232, column: 1, scope: !300)
!400 = !DILocation(line: 1198, column: 30, scope: !369)
!401 = !DILocation(line: 1198, column: 55, scope: !369)
!402 = !DILocation(line: 1181, column: 34, scope: !378, inlinedAt: !403)
!403 = distinct !DILocation(line: 1201, column: 10, scope: !369)
!404 = !DILocation(line: 1181, column: 59, scope: !378, inlinedAt: !403)
!405 = !DILocation(line: 1181, column: 90, scope: !378, inlinedAt: !403)
!406 = !DILocation(line: 1183, column: 47, scope: !378, inlinedAt: !403)
!407 = !DILocation(line: 1183, column: 28, scope: !378, inlinedAt: !403)
!408 = !DILocation(line: 1184, column: 55, scope: !378, inlinedAt: !403)
!409 = !DILocation(line: 1183, column: 10, scope: !378, inlinedAt: !403)
!410 = !DILocation(line: 1183, column: 3, scope: !378, inlinedAt: !403)
!411 = !DILocation(line: 1201, column: 3, scope: !369)
!412 = distinct !DISubprogram(name: "etharp_add_static_entry", scope: !3, file: !3, line: 503, type: !413, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !415)
!413 = !DISubroutineType(types: !414)
!414 = !{!91, !132, !142}
!415 = !{!416, !417, !418}
!416 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !412, file: !3, line: 503, type: !132)
!417 = !DILocalVariable(name: "ethaddr", arg: 2, scope: !412, file: !3, line: 503, type: !142)
!418 = !DILocalVariable(name: "netif", scope: !412, file: !3, line: 505, type: !209)
!419 = !DILocation(line: 503, column: 43, scope: !412)
!420 = !DILocation(line: 503, column: 68, scope: !412)
!421 = !DILocation(line: 512, column: 11, scope: !412)
!422 = !DILocation(line: 505, column: 17, scope: !412)
!423 = !DILocation(line: 513, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !412, file: !3, line: 513, column: 7)
!425 = !DILocation(line: 513, column: 7, scope: !412)
!426 = !DILocation(line: 517, column: 10, scope: !412)
!427 = !DILocation(line: 517, column: 3, scope: !412)
!428 = !DILocation(line: 0, scope: !412)
!429 = !DILocation(line: 518, column: 1, scope: !412)
!430 = distinct !DISubprogram(name: "etharp_update_arp_entry", scope: !3, file: !3, line: 422, type: !431, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!91, !209, !132, !142, !109}
!433 = !{!434, !435, !436, !437, !438, !439}
!434 = !DILocalVariable(name: "netif", arg: 1, scope: !430, file: !3, line: 422, type: !209)
!435 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !430, file: !3, line: 422, type: !132)
!436 = !DILocalVariable(name: "ethaddr", arg: 3, scope: !430, file: !3, line: 422, type: !142)
!437 = !DILocalVariable(name: "flags", arg: 4, scope: !430, file: !3, line: 422, type: !109)
!438 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 424, type: !153)
!439 = !DILocalVariable(name: "p", scope: !440, file: !3, line: 482, type: !196)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 481, column: 31)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 481, column: 7)
!442 = !DILocation(line: 422, column: 39, scope: !430)
!443 = !DILocation(line: 422, column: 64, scope: !430)
!444 = !DILocation(line: 422, column: 89, scope: !430)
!445 = !DILocation(line: 422, column: 103, scope: !430)
!446 = !DILocation(line: 425, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 425, column: 3)
!448 = distinct !DILexicalBlock(scope: !430, file: !3, line: 425, column: 3)
!449 = !{!450, !315, i64 260}
!450 = !{!"netif", !314, i64 0, !451, i64 8, !451, i64 32, !451, i64 56, !315, i64 80, !315, i64 152, !315, i64 156, !315, i64 168, !314, i64 184, !314, i64 192, !314, i64 200, !314, i64 208, !314, i64 216, !314, i64 224, !314, i64 232, !315, i64 240, !320, i64 248, !320, i64 250, !320, i64 252, !315, i64 254, !315, i64 260, !315, i64 261, !315, i64 262, !315, i64 264, !315, i64 265, !315, i64 266, !314, i64 272}
!451 = !{!"ip_addr", !315, i64 0, !315, i64 20}
!452 = !DILocation(line: 425, column: 3, scope: !448)
!453 = !DILocation(line: 425, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 425, column: 3)
!455 = distinct !DILexicalBlock(scope: !447, file: !3, line: 425, column: 3)
!456 = !DILocation(line: 425, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 425, column: 3)
!458 = distinct !DILexicalBlock(scope: !459, file: !3, line: 425, column: 3)
!459 = distinct !DILexicalBlock(scope: !454, file: !3, line: 425, column: 3)
!460 = !DILocation(line: 431, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !430, file: !3, line: 431, column: 7)
!462 = !{!317, !318, i64 0}
!463 = !DILocation(line: 431, column: 30, scope: !461)
!464 = !DILocation(line: 432, column: 7, scope: !461)
!465 = !DILocation(line: 432, column: 43, scope: !461)
!466 = !DILocation(line: 433, column: 7, scope: !461)
!467 = !DILocation(line: 431, column: 7, scope: !430)
!468 = !DILocation(line: 438, column: 7, scope: !430)
!469 = !DILocation(line: 424, column: 9, scope: !430)
!470 = !DILocation(line: 440, column: 9, scope: !471)
!471 = distinct !DILexicalBlock(scope: !430, file: !3, line: 440, column: 7)
!472 = !DILocation(line: 440, column: 7, scope: !430)
!473 = !DILocation(line: 441, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !3, line: 440, column: 14)
!475 = !DILocation(line: 441, column: 5, scope: !474)
!476 = !DILocation(line: 445, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !430, file: !3, line: 445, column: 7)
!478 = !DILocation(line: 0, scope: !479)
!479 = distinct !DILexicalBlock(scope: !477, file: !3, line: 448, column: 14)
!480 = !DILocation(line: 445, column: 7, scope: !430)
!481 = !DILocation(line: 448, column: 27, scope: !479)
!482 = !DILocation(line: 448, column: 33, scope: !479)
!483 = !DILocation(line: 448, column: 14, scope: !477)
!484 = !DILocation(line: 0, scope: !485)
!485 = distinct !DILexicalBlock(scope: !477, file: !3, line: 445, column: 41)
!486 = !DILocation(line: 459, column: 16, scope: !430)
!487 = !DILocation(line: 459, column: 22, scope: !430)
!488 = !DILocation(line: 465, column: 3, scope: !430)
!489 = !DILocation(line: 467, column: 16, scope: !430)
!490 = !DILocation(line: 467, column: 22, scope: !430)
!491 = !DILocation(line: 481, column: 20, scope: !441)
!492 = !DILocation(line: 481, column: 22, scope: !441)
!493 = !DILocation(line: 481, column: 7, scope: !430)
!494 = !DILocation(line: 482, column: 18, scope: !440)
!495 = !DILocation(line: 483, column: 20, scope: !440)
!496 = !DILocation(line: 486, column: 50, scope: !440)
!497 = !DILocation(line: 486, column: 31, scope: !440)
!498 = !DILocation(line: 486, column: 5, scope: !440)
!499 = !DILocation(line: 488, column: 5, scope: !440)
!500 = !DILocation(line: 489, column: 3, scope: !440)
!501 = !DILocation(line: 0, scope: !502)
!502 = distinct !DILexicalBlock(scope: !479, file: !3, line: 448, column: 57)
!503 = !DILocation(line: 491, column: 1, scope: !430)
!504 = distinct !DISubprogram(name: "etharp_remove_static_entry", scope: !3, file: !3, line: 529, type: !505, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!91, !132}
!507 = !{!508, !509}
!508 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !504, file: !3, line: 529, type: !132)
!509 = !DILocalVariable(name: "i", scope: !504, file: !3, line: 531, type: !153)
!510 = !DILocation(line: 529, column: 46, scope: !504)
!511 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !512, file: !3, line: 256, type: !132)
!512 = distinct !DISubprogram(name: "etharp_find_entry", scope: !3, file: !3, line: 256, type: !513, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!153, !132, !109, !209}
!515 = !{!511, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!516 = !DILocalVariable(name: "flags", arg: 2, scope: !512, file: !3, line: 256, type: !109)
!517 = !DILocalVariable(name: "netif", arg: 3, scope: !512, file: !3, line: 256, type: !209)
!518 = !DILocalVariable(name: "old_pending", scope: !512, file: !3, line: 258, type: !153)
!519 = !DILocalVariable(name: "old_stable", scope: !512, file: !3, line: 258, type: !153)
!520 = !DILocalVariable(name: "empty", scope: !512, file: !3, line: 259, type: !153)
!521 = !DILocalVariable(name: "i", scope: !512, file: !3, line: 260, type: !153)
!522 = !DILocalVariable(name: "old_queue", scope: !512, file: !3, line: 262, type: !153)
!523 = !DILocalVariable(name: "age_queue", scope: !512, file: !3, line: 264, type: !103)
!524 = !DILocalVariable(name: "age_pending", scope: !512, file: !3, line: 264, type: !103)
!525 = !DILocalVariable(name: "age_stable", scope: !512, file: !3, line: 264, type: !103)
!526 = !DILocalVariable(name: "state", scope: !527, file: !3, line: 284, type: !109)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 283, column: 40)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 283, column: 3)
!529 = distinct !DILexicalBlock(scope: !512, file: !3, line: 283, column: 3)
!530 = !DILocation(line: 256, column: 37, scope: !512, inlinedAt: !531)
!531 = distinct !DILocation(line: 537, column: 7, scope: !504)
!532 = !DILocation(line: 256, column: 50, scope: !512, inlinedAt: !531)
!533 = !DILocation(line: 256, column: 71, scope: !512, inlinedAt: !531)
!534 = !DILocation(line: 258, column: 9, scope: !512, inlinedAt: !531)
!535 = !DILocation(line: 258, column: 39, scope: !512, inlinedAt: !531)
!536 = !DILocation(line: 259, column: 9, scope: !512, inlinedAt: !531)
!537 = !DILocation(line: 260, column: 9, scope: !512, inlinedAt: !531)
!538 = !DILocation(line: 262, column: 9, scope: !512, inlinedAt: !531)
!539 = !DILocation(line: 264, column: 9, scope: !512, inlinedAt: !531)
!540 = !DILocation(line: 264, column: 24, scope: !512, inlinedAt: !531)
!541 = !DILocation(line: 264, column: 41, scope: !512, inlinedAt: !531)
!542 = !DILocation(line: 284, column: 31, scope: !527, inlinedAt: !531)
!543 = !DILocation(line: 284, column: 10, scope: !527, inlinedAt: !531)
!544 = !DILocation(line: 286, column: 45, scope: !545, inlinedAt: !531)
!545 = distinct !DILexicalBlock(scope: !527, file: !3, line: 286, column: 9)
!546 = !DILocation(line: 286, column: 35, scope: !545, inlinedAt: !531)
!547 = !DILocation(line: 290, column: 16, scope: !545, inlinedAt: !531)
!548 = !DILocation(line: 294, column: 18, scope: !549, inlinedAt: !531)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 294, column: 11)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 290, column: 45)
!551 = distinct !DILexicalBlock(scope: !545, file: !3, line: 290, column: 16)
!552 = !DILocation(line: 294, column: 21, scope: !549, inlinedAt: !531)
!553 = !{!313, !318, i64 8}
!554 = !DILocation(line: 296, column: 11, scope: !549, inlinedAt: !531)
!555 = !DILocation(line: 401, column: 1, scope: !512, inlinedAt: !531)
!556 = !DILocation(line: 531, column: 9, scope: !504)
!557 = !DILocation(line: 543, column: 20, scope: !558)
!558 = distinct !DILexicalBlock(scope: !504, file: !3, line: 543, column: 7)
!559 = !DILocation(line: 543, column: 26, scope: !558)
!560 = !DILocation(line: 543, column: 7, scope: !504)
!561 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !562)
!562 = distinct !DILocation(line: 548, column: 3, scope: !504)
!563 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !562)
!564 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !562)
!565 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !562)
!566 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !562)
!567 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !562)
!568 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !562)
!569 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !562)
!570 = !DILocation(line: 549, column: 3, scope: !504)
!571 = !DILocation(line: 0, scope: !504)
!572 = !DILocation(line: 550, column: 1, scope: !504)
!573 = !DILocation(line: 286, column: 16, scope: !545, inlinedAt: !531)
!574 = !DILocation(line: 256, column: 37, scope: !512)
!575 = !DILocation(line: 256, column: 50, scope: !512)
!576 = !DILocation(line: 256, column: 71, scope: !512)
!577 = !DILocation(line: 258, column: 9, scope: !512)
!578 = !DILocation(line: 258, column: 39, scope: !512)
!579 = !DILocation(line: 259, column: 9, scope: !512)
!580 = !DILocation(line: 260, column: 9, scope: !512)
!581 = !DILocation(line: 262, column: 9, scope: !512)
!582 = !DILocation(line: 264, column: 9, scope: !512)
!583 = !DILocation(line: 264, column: 24, scope: !512)
!584 = !DILocation(line: 264, column: 41, scope: !512)
!585 = !DILocation(line: 283, column: 3, scope: !529)
!586 = !DILocation(line: 284, column: 31, scope: !527)
!587 = !DILocation(line: 284, column: 10, scope: !527)
!588 = !DILocation(line: 286, column: 16, scope: !545)
!589 = !DILocation(line: 286, column: 45, scope: !545)
!590 = !DILocation(line: 286, column: 35, scope: !545)
!591 = !DILocation(line: 290, column: 16, scope: !545)
!592 = !DILocation(line: 291, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 291, column: 7)
!594 = distinct !DILexicalBlock(scope: !550, file: !3, line: 291, column: 7)
!595 = !DILocation(line: 294, column: 18, scope: !549)
!596 = !DILocation(line: 294, column: 21, scope: !549)
!597 = !DILocation(line: 296, column: 11, scope: !549)
!598 = !DILocation(line: 296, column: 31, scope: !549)
!599 = !DILocation(line: 296, column: 57, scope: !549)
!600 = !DILocation(line: 296, column: 41, scope: !549)
!601 = !DILocation(line: 294, column: 11, scope: !550)
!602 = !DILocation(line: 304, column: 11, scope: !550)
!603 = !DILocation(line: 306, column: 26, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 306, column: 13)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 304, column: 42)
!606 = distinct !DILexicalBlock(scope: !550, file: !3, line: 304, column: 11)
!607 = !DILocation(line: 306, column: 28, scope: !604)
!608 = !DILocation(line: 0, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 314, column: 15)
!610 = distinct !DILexicalBlock(scope: !604, file: !3, line: 313, column: 9)
!611 = !DILocation(line: 306, column: 13, scope: !605)
!612 = !DILocation(line: 307, column: 34, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 307, column: 15)
!614 = distinct !DILexicalBlock(scope: !604, file: !3, line: 306, column: 37)
!615 = !DILocation(line: 307, column: 15, scope: !614)
!616 = !DILocation(line: 314, column: 34, scope: !609)
!617 = !DILocation(line: 314, column: 15, scope: !610)
!618 = !DILocation(line: 323, column: 19, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 323, column: 13)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 320, column: 48)
!621 = distinct !DILexicalBlock(scope: !606, file: !3, line: 320, column: 18)
!622 = !DILocation(line: 320, column: 18, scope: !606)
!623 = !DILocation(line: 327, column: 28, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 327, column: 15)
!625 = distinct !DILexicalBlock(scope: !619, file: !3, line: 325, column: 9)
!626 = !DILocation(line: 327, column: 34, scope: !624)
!627 = !DILocation(line: 327, column: 15, scope: !625)
!628 = !DILocation(line: 283, column: 35, scope: !528)
!629 = !DILocation(line: 283, column: 17, scope: !528)
!630 = distinct !{!630, !585, !631}
!631 = !DILocation(line: 334, column: 3, scope: !529)
!632 = !DILocation(line: 338, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !512, file: !3, line: 338, column: 7)
!634 = !DILocation(line: 338, column: 15, scope: !633)
!635 = !DILocation(line: 338, column: 40, scope: !633)
!636 = !DILocation(line: 338, column: 46, scope: !633)
!637 = !DILocation(line: 340, column: 15, scope: !633)
!638 = !DILocation(line: 340, column: 45, scope: !633)
!639 = !DILocation(line: 340, column: 69, scope: !633)
!640 = !DILocation(line: 340, column: 34, scope: !633)
!641 = !DILocation(line: 355, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !512, file: !3, line: 355, column: 7)
!643 = !DILocation(line: 355, column: 7, scope: !512)
!644 = !DILocation(line: 360, column: 20, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 360, column: 9)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 358, column: 10)
!647 = !DILocation(line: 360, column: 9, scope: !646)
!648 = !DILocation(line: 365, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 365, column: 7)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 365, column: 7)
!651 = distinct !DILexicalBlock(scope: !645, file: !3, line: 360, column: 38)
!652 = !DILocation(line: 365, column: 7, scope: !650)
!653 = !DILocation(line: 365, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 365, column: 7)
!655 = distinct !DILexicalBlock(scope: !649, file: !3, line: 365, column: 7)
!656 = !DILocation(line: 365, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 365, column: 7)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 365, column: 7)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 365, column: 7)
!660 = !DILocation(line: 367, column: 28, scope: !661)
!661 = distinct !DILexicalBlock(scope: !645, file: !3, line: 367, column: 16)
!662 = !DILocation(line: 367, column: 16, scope: !645)
!663 = !DILocation(line: 372, column: 26, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 372, column: 16)
!665 = !DILocation(line: 372, column: 16, scope: !661)
!666 = !DILocation(line: 0, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !3, line: 372, column: 44)
!668 = !DILocation(line: 173, column: 7, scope: !343, inlinedAt: !669)
!669 = distinct !DILocation(line: 384, column: 5, scope: !646)
!670 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !669)
!671 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !669)
!672 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !669)
!673 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !669)
!674 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !669)
!675 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !669)
!676 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !669)
!677 = !DILocation(line: 180, column: 16, scope: !335, inlinedAt: !669)
!678 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !669)
!679 = !DILocation(line: 188, column: 1, scope: !335, inlinedAt: !669)
!680 = !DILocation(line: 388, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !512, file: !3, line: 388, column: 3)
!682 = !DILocation(line: 388, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !3, line: 388, column: 3)
!684 = !DILocation(line: 388, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 388, column: 3)
!686 = distinct !DILexicalBlock(scope: !683, file: !3, line: 388, column: 3)
!687 = !DILocation(line: 388, column: 3, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 388, column: 3)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 388, column: 3)
!690 = distinct !DILexicalBlock(scope: !685, file: !3, line: 388, column: 3)
!691 = !DILocation(line: 392, column: 7, scope: !512)
!692 = !DILocation(line: 394, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 392, column: 23)
!694 = distinct !DILexicalBlock(scope: !512, file: !3, line: 392, column: 7)
!695 = !DILocation(line: 395, column: 3, scope: !693)
!696 = !DILocation(line: 396, column: 16, scope: !512)
!697 = !DILocation(line: 396, column: 22, scope: !512)
!698 = !DILocation(line: 398, column: 16, scope: !512)
!699 = !DILocation(line: 398, column: 22, scope: !512)
!700 = !DILocation(line: 400, column: 3, scope: !512)
!701 = !DILocation(line: 401, column: 1, scope: !512)
!702 = distinct !DISubprogram(name: "etharp_cleanup_netif", scope: !3, file: !3, line: 559, type: !269, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !703)
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(name: "netif", arg: 1, scope: !702, file: !3, line: 559, type: !209)
!705 = !DILocalVariable(name: "i", scope: !702, file: !3, line: 561, type: !21)
!706 = !DILocalVariable(name: "state", scope: !707, file: !3, line: 564, type: !109)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 563, column: 40)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 563, column: 3)
!709 = distinct !DILexicalBlock(scope: !702, file: !3, line: 563, column: 3)
!710 = !DILocation(line: 559, column: 36, scope: !702)
!711 = !DILocation(line: 561, column: 7, scope: !702)
!712 = !DILocation(line: 563, column: 3, scope: !709)
!713 = !DILocation(line: 564, column: 31, scope: !707)
!714 = !DILocation(line: 564, column: 10, scope: !707)
!715 = !DILocation(line: 565, column: 16, scope: !716)
!716 = distinct !DILexicalBlock(scope: !707, file: !3, line: 565, column: 9)
!717 = !DILocation(line: 565, column: 39, scope: !716)
!718 = !DILocation(line: 565, column: 56, scope: !716)
!719 = !DILocation(line: 565, column: 62, scope: !716)
!720 = !DILocation(line: 565, column: 9, scope: !707)
!721 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !722)
!722 = distinct !DILocation(line: 566, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !716, file: !3, line: 565, column: 73)
!724 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !722)
!725 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !722)
!726 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !722)
!727 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !722)
!728 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !722)
!729 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !722)
!730 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !722)
!731 = !DILocation(line: 188, column: 1, scope: !335, inlinedAt: !722)
!732 = !DILocation(line: 567, column: 5, scope: !723)
!733 = !DILocation(line: 563, column: 35, scope: !708)
!734 = !DILocation(line: 563, column: 17, scope: !708)
!735 = distinct !{!735, !712, !736}
!736 = !DILocation(line: 568, column: 3, scope: !709)
!737 = !DILocation(line: 569, column: 1, scope: !702)
!738 = distinct !DISubprogram(name: "etharp_find_addr", scope: !3, file: !3, line: 583, type: !739, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!739 = !DISubroutineType(types: !740)
!740 = !{!741, !209, !132, !745, !746}
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !742, line: 200, baseType: !743)
!742 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !150, line: 145, baseType: !744)
!744 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!747 = !{!748, !749, !750, !751, !752}
!748 = !DILocalVariable(name: "netif", arg: 1, scope: !738, file: !3, line: 583, type: !209)
!749 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !738, file: !3, line: 583, type: !132)
!750 = !DILocalVariable(name: "eth_ret", arg: 3, scope: !738, file: !3, line: 584, type: !745)
!751 = !DILocalVariable(name: "ip_ret", arg: 4, scope: !738, file: !3, line: 584, type: !746)
!752 = !DILocalVariable(name: "i", scope: !738, file: !3, line: 586, type: !153)
!753 = !DILocation(line: 583, column: 32, scope: !738)
!754 = !DILocation(line: 583, column: 57, scope: !738)
!755 = !DILocation(line: 584, column: 36, scope: !738)
!756 = !DILocation(line: 584, column: 64, scope: !738)
!757 = !DILocation(line: 588, column: 3, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 588, column: 3)
!759 = distinct !DILexicalBlock(scope: !738, file: !3, line: 588, column: 3)
!760 = !DILocation(line: 588, column: 3, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 588, column: 3)
!762 = distinct !DILexicalBlock(scope: !758, file: !3, line: 588, column: 3)
!763 = !DILocation(line: 588, column: 3, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 588, column: 3)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 588, column: 3)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 588, column: 3)
!767 = !DILocation(line: 256, column: 37, scope: !512, inlinedAt: !768)
!768 = distinct !DILocation(line: 593, column: 7, scope: !738)
!769 = !DILocation(line: 256, column: 50, scope: !512, inlinedAt: !768)
!770 = !DILocation(line: 256, column: 71, scope: !512, inlinedAt: !768)
!771 = !DILocation(line: 258, column: 9, scope: !512, inlinedAt: !768)
!772 = !DILocation(line: 258, column: 39, scope: !512, inlinedAt: !768)
!773 = !DILocation(line: 259, column: 9, scope: !512, inlinedAt: !768)
!774 = !DILocation(line: 260, column: 9, scope: !512, inlinedAt: !768)
!775 = !DILocation(line: 262, column: 9, scope: !512, inlinedAt: !768)
!776 = !DILocation(line: 264, column: 9, scope: !512, inlinedAt: !768)
!777 = !DILocation(line: 264, column: 24, scope: !512, inlinedAt: !768)
!778 = !DILocation(line: 264, column: 41, scope: !512, inlinedAt: !768)
!779 = !DILocation(line: 284, column: 31, scope: !527, inlinedAt: !768)
!780 = !DILocation(line: 284, column: 10, scope: !527, inlinedAt: !768)
!781 = !DILocation(line: 286, column: 45, scope: !545, inlinedAt: !768)
!782 = !DILocation(line: 286, column: 35, scope: !545, inlinedAt: !768)
!783 = !DILocation(line: 294, column: 21, scope: !549, inlinedAt: !768)
!784 = !DILocation(line: 296, column: 11, scope: !549, inlinedAt: !768)
!785 = !DILocation(line: 296, column: 57, scope: !549, inlinedAt: !768)
!786 = !DILocation(line: 296, column: 41, scope: !549, inlinedAt: !768)
!787 = !DILocation(line: 296, column: 31, scope: !549, inlinedAt: !768)
!788 = !DILocation(line: 401, column: 1, scope: !512, inlinedAt: !768)
!789 = !DILocation(line: 586, column: 9, scope: !738)
!790 = !DILocation(line: 594, column: 33, scope: !791)
!791 = distinct !DILexicalBlock(scope: !738, file: !3, line: 594, column: 7)
!792 = !DILocation(line: 594, column: 39, scope: !791)
!793 = !DILocation(line: 594, column: 7, scope: !738)
!794 = !DILocation(line: 595, column: 30, scope: !795)
!795 = distinct !DILexicalBlock(scope: !791, file: !3, line: 594, column: 64)
!796 = !DILocation(line: 595, column: 14, scope: !795)
!797 = !{!314, !314, i64 0}
!798 = !DILocation(line: 596, column: 29, scope: !795)
!799 = !DILocation(line: 596, column: 13, scope: !795)
!800 = !DILocation(line: 597, column: 5, scope: !795)
!801 = !DILocation(line: 0, scope: !738)
!802 = !DILocation(line: 600, column: 1, scope: !738)
!803 = !DILocation(line: 194, column: 43, scope: !162)
!804 = !DILocation(line: 196, column: 2, scope: !162)
!805 = !DILocation(line: 196, column: 10, scope: !162)
!806 = !DILocation(line: 197, column: 2, scope: !162)
!807 = !DILocation(line: 198, column: 2, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !163, line: 198, column: 2)
!809 = distinct !DILexicalBlock(scope: !162, file: !163, line: 198, column: 2)
!810 = !DILocation(line: 199, column: 2, scope: !162)
!811 = !DILocation(line: 200, column: 1, scope: !162)
!812 = distinct !DISubprogram(name: "etharp_get_entry", scope: !3, file: !3, line: 612, type: !813, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !818)
!813 = !DISubroutineType(types: !814)
!814 = !{!21, !147, !815, !817, !745}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(name: "i", arg: 1, scope: !812, file: !3, line: 612, type: !147)
!820 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !812, file: !3, line: 612, type: !815)
!821 = !DILocalVariable(name: "netif", arg: 3, scope: !812, file: !3, line: 612, type: !817)
!822 = !DILocalVariable(name: "eth_ret", arg: 4, scope: !812, file: !3, line: 612, type: !745)
!823 = !DILocation(line: 612, column: 25, scope: !812)
!824 = !DILocation(line: 612, column: 41, scope: !812)
!825 = !DILocation(line: 612, column: 64, scope: !812)
!826 = !DILocation(line: 612, column: 89, scope: !812)
!827 = !DILocation(line: 614, column: 3, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 614, column: 3)
!829 = distinct !DILexicalBlock(scope: !812, file: !3, line: 614, column: 3)
!830 = !DILocation(line: 614, column: 3, scope: !829)
!831 = !DILocation(line: 614, column: 3, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 614, column: 3)
!833 = distinct !DILexicalBlock(scope: !828, file: !3, line: 614, column: 3)
!834 = !DILocation(line: 614, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 614, column: 3)
!836 = distinct !DILexicalBlock(scope: !837, file: !3, line: 614, column: 3)
!837 = distinct !DILexicalBlock(scope: !832, file: !3, line: 614, column: 3)
!838 = !DILocation(line: 615, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 615, column: 3)
!840 = distinct !DILexicalBlock(scope: !812, file: !3, line: 615, column: 3)
!841 = !DILocation(line: 615, column: 3, scope: !840)
!842 = !DILocation(line: 615, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 615, column: 3)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 615, column: 3)
!845 = !DILocation(line: 615, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 615, column: 3)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 615, column: 3)
!848 = distinct !DILexicalBlock(scope: !843, file: !3, line: 615, column: 3)
!849 = !DILocation(line: 616, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 616, column: 3)
!851 = distinct !DILexicalBlock(scope: !812, file: !3, line: 616, column: 3)
!852 = !DILocation(line: 616, column: 3, scope: !851)
!853 = !DILocation(line: 616, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 616, column: 3)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 616, column: 3)
!856 = !DILocation(line: 616, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 616, column: 3)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 616, column: 3)
!859 = distinct !DILexicalBlock(scope: !854, file: !3, line: 616, column: 3)
!860 = !DILocation(line: 618, column: 10, scope: !861)
!861 = distinct !DILexicalBlock(scope: !812, file: !3, line: 618, column: 7)
!862 = !DILocation(line: 618, column: 28, scope: !861)
!863 = !DILocation(line: 618, column: 45, scope: !861)
!864 = !DILocation(line: 618, column: 51, scope: !861)
!865 = !DILocation(line: 618, column: 7, scope: !812)
!866 = !DILocation(line: 619, column: 30, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !3, line: 618, column: 76)
!868 = !DILocation(line: 619, column: 14, scope: !867)
!869 = !DILocation(line: 620, column: 29, scope: !867)
!870 = !DILocation(line: 620, column: 14, scope: !867)
!871 = !DILocation(line: 621, column: 30, scope: !867)
!872 = !DILocation(line: 621, column: 14, scope: !867)
!873 = !DILocation(line: 622, column: 5, scope: !867)
!874 = !DILocation(line: 0, scope: !875)
!875 = distinct !DILexicalBlock(scope: !861, file: !3, line: 623, column: 10)
!876 = !DILocation(line: 626, column: 1, scope: !812)
!877 = distinct !DISubprogram(name: "etharp_input", scope: !3, file: !3, line: 641, type: !878, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !196, !209}
!880 = !{!881, !882, !883, !884, !885, !886}
!881 = !DILocalVariable(name: "p", arg: 1, scope: !877, file: !3, line: 641, type: !196)
!882 = !DILocalVariable(name: "netif", arg: 2, scope: !877, file: !3, line: 641, type: !209)
!883 = !DILocalVariable(name: "hdr", scope: !877, file: !3, line: 643, type: !99)
!884 = !DILocalVariable(name: "sipaddr", scope: !877, file: !3, line: 645, type: !134)
!885 = !DILocalVariable(name: "dipaddr", scope: !877, file: !3, line: 645, type: !134)
!886 = !DILocalVariable(name: "for_us", scope: !877, file: !3, line: 646, type: !109)
!887 = !DILocation(line: 641, column: 27, scope: !877)
!888 = !DILocation(line: 641, column: 44, scope: !877)
!889 = !DILocation(line: 645, column: 3, scope: !877)
!890 = !DILocation(line: 650, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 650, column: 3)
!892 = distinct !DILexicalBlock(scope: !877, file: !3, line: 650, column: 3)
!893 = !DILocation(line: 650, column: 3, scope: !892)
!894 = !DILocation(line: 650, column: 3, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 650, column: 3)
!896 = distinct !DILexicalBlock(scope: !891, file: !3, line: 650, column: 3)
!897 = !DILocation(line: 650, column: 3, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 650, column: 3)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 650, column: 3)
!900 = distinct !DILexicalBlock(scope: !895, file: !3, line: 650, column: 3)
!901 = !DILocation(line: 652, column: 33, scope: !877)
!902 = !{!903, !314, i64 8}
!903 = !{!"pbuf", !314, i64 0, !314, i64 8, !320, i64 16, !320, i64 18, !315, i64 20, !315, i64 21, !315, i64 22, !315, i64 23}
!904 = !DILocation(line: 643, column: 22, scope: !877)
!905 = !DILocation(line: 655, column: 13, scope: !906)
!906 = distinct !DILexicalBlock(scope: !877, file: !3, line: 655, column: 7)
!907 = !{!908, !320, i64 0}
!908 = !{!"etharp_hdr", !320, i64 0, !320, i64 2, !315, i64 4, !315, i64 5, !320, i64 6, !319, i64 8, !909, i64 14, !319, i64 18, !909, i64 24}
!909 = !{!"ip4_addr_wordaligned", !315, i64 0}
!910 = !DILocation(line: 655, column: 20, scope: !906)
!911 = !DILocation(line: 655, column: 60, scope: !906)
!912 = !DILocation(line: 656, column: 13, scope: !906)
!913 = !{!908, !315, i64 4}
!914 = !DILocation(line: 656, column: 19, scope: !906)
!915 = !DILocation(line: 656, column: 38, scope: !906)
!916 = !DILocation(line: 657, column: 13, scope: !906)
!917 = !{!908, !315, i64 5}
!918 = !DILocation(line: 657, column: 22, scope: !906)
!919 = !DILocation(line: 657, column: 45, scope: !906)
!920 = !DILocation(line: 658, column: 13, scope: !906)
!921 = !{!908, !320, i64 2}
!922 = !DILocation(line: 658, column: 19, scope: !906)
!923 = !DILocation(line: 655, column: 7, scope: !877)
!924 = !DILocation(line: 662, column: 5, scope: !925)
!925 = distinct !DILexicalBlock(scope: !906, file: !3, line: 658, column: 46)
!926 = !{!927, !320, i64 40}
!927 = !{!"stats_", !928, i64 0, !928, i64 24, !928, i64 48, !928, i64 72, !928, i64 96, !928, i64 120, !928, i64 144, !929, i64 168, !928, i64 186, !928, i64 210, !928, i64 234, !931, i64 258, !928, i64 286}
!928 = !{!"stats_proto", !320, i64 0, !320, i64 2, !320, i64 4, !320, i64 6, !320, i64 8, !320, i64 10, !320, i64 12, !320, i64 14, !320, i64 16, !320, i64 18, !320, i64 20, !320, i64 22}
!929 = !{!"stats_sys", !930, i64 0, !930, i64 6, !930, i64 12}
!930 = !{!"stats_syselem", !320, i64 0, !320, i64 2, !320, i64 4}
!931 = !{!"stats_igmp", !320, i64 0, !320, i64 2, !320, i64 4, !320, i64 6, !320, i64 8, !320, i64 10, !320, i64 12, !320, i64 14, !320, i64 16, !320, i64 18, !320, i64 20, !320, i64 22, !320, i64 24, !320, i64 26}
!932 = !DILocation(line: 663, column: 5, scope: !925)
!933 = !{!927, !320, i64 30}
!934 = !DILocation(line: 664, column: 5, scope: !925)
!935 = !DILocation(line: 665, column: 5, scope: !925)
!936 = !DILocation(line: 667, column: 3, scope: !877)
!937 = !{!927, !320, i64 26}
!938 = !DILocation(line: 678, column: 3, scope: !877)
!939 = !DILocation(line: 679, column: 3, scope: !877)
!940 = !DILocation(line: 682, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !877, file: !3, line: 682, column: 7)
!942 = !{!315, !315, i64 0}
!943 = !DILocation(line: 686, column: 20, scope: !944)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 684, column: 10)
!945 = !DILocation(line: 682, column: 7, scope: !877)
!946 = !DILocation(line: 694, column: 51, scope: !877)
!947 = !DILocation(line: 695, column: 27, scope: !877)
!948 = !DILocation(line: 645, column: 14, scope: !877)
!949 = !DILocation(line: 694, column: 3, scope: !877)
!950 = !DILocation(line: 698, column: 16, scope: !877)
!951 = !{!908, !320, i64 6}
!952 = !DILocation(line: 698, column: 3, scope: !877)
!953 = !DILocation(line: 707, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !877, file: !3, line: 698, column: 24)
!955 = !DILocation(line: 710, column: 39, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !3, line: 707, column: 19)
!957 = distinct !DILexicalBlock(scope: !954, file: !3, line: 707, column: 11)
!958 = !DILocation(line: 710, column: 20, scope: !956)
!959 = !DILocation(line: 709, column: 9, scope: !956)
!960 = !DILocation(line: 715, column: 7, scope: !956)
!961 = !DILocation(line: 737, column: 7, scope: !954)
!962 = !{!927, !320, i64 44}
!963 = !DILocation(line: 738, column: 7, scope: !954)
!964 = !DILocation(line: 741, column: 3, scope: !877)
!965 = !DILocation(line: 742, column: 1, scope: !877)
!966 = distinct !DISubprogram(name: "etharp_raw", scope: !3, file: !3, line: 1101, type: !967, isLocal: true, isDefinition: true, scopeLine: 1106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !970)
!967 = !DISubroutineType(types: !968)
!968 = !{!91, !209, !143, !143, !143, !132, !143, !132, !969}
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981}
!971 = !DILocalVariable(name: "netif", arg: 1, scope: !966, file: !3, line: 1101, type: !209)
!972 = !DILocalVariable(name: "ethsrc_addr", arg: 2, scope: !966, file: !3, line: 1101, type: !143)
!973 = !DILocalVariable(name: "ethdst_addr", arg: 3, scope: !966, file: !3, line: 1102, type: !143)
!974 = !DILocalVariable(name: "hwsrc_addr", arg: 4, scope: !966, file: !3, line: 1103, type: !143)
!975 = !DILocalVariable(name: "ipsrc_addr", arg: 5, scope: !966, file: !3, line: 1103, type: !132)
!976 = !DILocalVariable(name: "hwdst_addr", arg: 6, scope: !966, file: !3, line: 1104, type: !143)
!977 = !DILocalVariable(name: "ipdst_addr", arg: 7, scope: !966, file: !3, line: 1104, type: !132)
!978 = !DILocalVariable(name: "opcode", arg: 8, scope: !966, file: !3, line: 1105, type: !969)
!979 = !DILocalVariable(name: "p", scope: !966, file: !3, line: 1107, type: !196)
!980 = !DILocalVariable(name: "result", scope: !966, file: !3, line: 1108, type: !91)
!981 = !DILocalVariable(name: "hdr", scope: !966, file: !3, line: 1109, type: !99)
!982 = !DILocation(line: 1101, column: 26, scope: !966)
!983 = !DILocation(line: 1101, column: 56, scope: !966)
!984 = !DILocation(line: 1102, column: 35, scope: !966)
!985 = !DILocation(line: 1103, column: 35, scope: !966)
!986 = !DILocation(line: 1103, column: 65, scope: !966)
!987 = !DILocation(line: 1104, column: 35, scope: !966)
!988 = !DILocation(line: 1104, column: 65, scope: !966)
!989 = !DILocation(line: 1105, column: 24, scope: !966)
!990 = !DILocation(line: 1108, column: 9, scope: !966)
!991 = !DILocation(line: 1111, column: 3, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 1111, column: 3)
!993 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1111, column: 3)
!994 = !DILocation(line: 1111, column: 3, scope: !993)
!995 = !DILocation(line: 1111, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 1111, column: 3)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 1111, column: 3)
!998 = !DILocation(line: 1111, column: 3, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 1111, column: 3)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 1111, column: 3)
!1001 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1111, column: 3)
!1002 = !DILocation(line: 1114, column: 7, scope: !966)
!1003 = !DILocation(line: 1107, column: 16, scope: !966)
!1004 = !DILocation(line: 1116, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1116, column: 7)
!1006 = !DILocation(line: 1116, column: 7, scope: !966)
!1007 = !DILocation(line: 1119, column: 5, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 1116, column: 18)
!1009 = !{!927, !320, i64 36}
!1010 = !DILocation(line: 1120, column: 5, scope: !1008)
!1011 = !DILocation(line: 1122, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1122, column: 3)
!1013 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1122, column: 3)
!1014 = !{!903, !320, i64 18}
!1015 = !DILocation(line: 1122, column: 3, scope: !1013)
!1016 = !DILocation(line: 1122, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 1122, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1122, column: 3)
!1019 = !DILocation(line: 1122, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1122, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 1122, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1122, column: 3)
!1023 = !DILocation(line: 1125, column: 33, scope: !966)
!1024 = !DILocation(line: 1109, column: 22, scope: !966)
!1025 = !DILocation(line: 1127, column: 17, scope: !966)
!1026 = !DILocation(line: 1127, column: 8, scope: !966)
!1027 = !DILocation(line: 1127, column: 15, scope: !966)
!1028 = !DILocation(line: 1129, column: 3, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 1129, column: 3)
!1030 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1129, column: 3)
!1031 = !DILocation(line: 1129, column: 3, scope: !1030)
!1032 = !DILocation(line: 1129, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1129, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1129, column: 3)
!1035 = !DILocation(line: 1129, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1129, column: 3)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1129, column: 3)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1129, column: 3)
!1039 = !DILocation(line: 1133, column: 3, scope: !966)
!1040 = !DILocation(line: 1134, column: 3, scope: !966)
!1041 = !DILocation(line: 1137, column: 3, scope: !966)
!1042 = !DILocation(line: 1138, column: 3, scope: !966)
!1043 = !DILocation(line: 1140, column: 8, scope: !966)
!1044 = !DILocation(line: 1140, column: 15, scope: !966)
!1045 = !DILocation(line: 1141, column: 8, scope: !966)
!1046 = !DILocation(line: 1141, column: 14, scope: !966)
!1047 = !DILocation(line: 1143, column: 8, scope: !966)
!1048 = !DILocation(line: 1143, column: 14, scope: !966)
!1049 = !DILocation(line: 1144, column: 8, scope: !966)
!1050 = !DILocation(line: 1144, column: 17, scope: !966)
!1051 = !DILocation(line: 1156, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1155, column: 3)
!1053 = !DILocation(line: 1159, column: 3, scope: !966)
!1054 = !{!927, !320, i64 24}
!1055 = !DILocation(line: 1161, column: 3, scope: !966)
!1056 = !DILocation(line: 1165, column: 3, scope: !966)
!1057 = !DILocation(line: 0, scope: !966)
!1058 = !DILocation(line: 1166, column: 1, scope: !966)
!1059 = distinct !DISubprogram(name: "etharp_output", scope: !3, file: !3, line: 791, type: !252, isLocal: false, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067}
!1061 = !DILocalVariable(name: "netif", arg: 1, scope: !1059, file: !3, line: 791, type: !209)
!1062 = !DILocalVariable(name: "q", arg: 2, scope: !1059, file: !3, line: 791, type: !196)
!1063 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !1059, file: !3, line: 791, type: !132)
!1064 = !DILocalVariable(name: "dest", scope: !1059, file: !3, line: 793, type: !143)
!1065 = !DILocalVariable(name: "mcastaddr", scope: !1059, file: !3, line: 794, type: !116)
!1066 = !DILocalVariable(name: "dst_addr", scope: !1059, file: !3, line: 795, type: !132)
!1067 = !DILocalVariable(name: "i", scope: !1068, file: !3, line: 822, type: !152)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 821, column: 10)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 810, column: 14)
!1070 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 806, column: 7)
!1071 = !DILocation(line: 791, column: 29, scope: !1059)
!1072 = !DILocation(line: 791, column: 49, scope: !1059)
!1073 = !DILocation(line: 791, column: 70, scope: !1059)
!1074 = !DILocation(line: 794, column: 3, scope: !1059)
!1075 = !DILocation(line: 795, column: 21, scope: !1059)
!1076 = !DILocation(line: 798, column: 3, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 798, column: 3)
!1078 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 798, column: 3)
!1079 = !DILocation(line: 798, column: 3, scope: !1078)
!1080 = !DILocation(line: 798, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 798, column: 3)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 798, column: 3)
!1083 = !DILocation(line: 798, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 798, column: 3)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 798, column: 3)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 798, column: 3)
!1087 = !DILocation(line: 799, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 799, column: 3)
!1089 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 799, column: 3)
!1090 = !DILocation(line: 799, column: 3, scope: !1089)
!1091 = !DILocation(line: 799, column: 3, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 799, column: 3)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 799, column: 3)
!1094 = !DILocation(line: 799, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 799, column: 3)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 799, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 799, column: 3)
!1098 = !DILocation(line: 800, column: 3, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 800, column: 3)
!1100 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 800, column: 3)
!1101 = !DILocation(line: 800, column: 3, scope: !1100)
!1102 = !DILocation(line: 800, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 800, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 800, column: 3)
!1105 = !DILocation(line: 800, column: 3, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 800, column: 3)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 800, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 800, column: 3)
!1109 = !DILocation(line: 806, column: 7, scope: !1070)
!1110 = !DILocation(line: 806, column: 7, scope: !1059)
!1111 = !DILocation(line: 810, column: 14, scope: !1069)
!1112 = !DILocation(line: 810, column: 14, scope: !1070)
!1113 = !DILocation(line: 812, column: 23, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 810, column: 44)
!1115 = !DILocation(line: 813, column: 5, scope: !1114)
!1116 = !DILocation(line: 813, column: 23, scope: !1114)
!1117 = !DILocation(line: 814, column: 5, scope: !1114)
!1118 = !DILocation(line: 814, column: 23, scope: !1114)
!1119 = !DILocation(line: 815, column: 25, scope: !1114)
!1120 = !DILocation(line: 815, column: 43, scope: !1114)
!1121 = !DILocation(line: 815, column: 5, scope: !1114)
!1122 = !DILocation(line: 815, column: 23, scope: !1114)
!1123 = !DILocation(line: 816, column: 25, scope: !1114)
!1124 = !DILocation(line: 816, column: 5, scope: !1114)
!1125 = !DILocation(line: 816, column: 23, scope: !1114)
!1126 = !DILocation(line: 817, column: 25, scope: !1114)
!1127 = !DILocation(line: 817, column: 5, scope: !1114)
!1128 = !DILocation(line: 817, column: 23, scope: !1114)
!1129 = !DILocation(line: 793, column: 26, scope: !1059)
!1130 = !DILocation(line: 825, column: 10, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 825, column: 9)
!1132 = !DILocation(line: 826, column: 10, scope: !1131)
!1133 = !DILocation(line: 825, column: 83, scope: !1131)
!1134 = !DILocation(line: 844, column: 16, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 844, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 842, column: 9)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 835, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 826, column: 40)
!1139 = !DILocation(line: 844, column: 15, scope: !1136)
!1140 = !DILocation(line: 854, column: 5, scope: !1138)
!1141 = !DILocation(line: 0, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 844, column: 58)
!1143 = !DILocation(line: 861, column: 24, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 861, column: 13)
!1145 = !DILocation(line: 861, column: 14, scope: !1144)
!1146 = !DILocation(line: 861, column: 45, scope: !1144)
!1147 = !DILocation(line: 861, column: 51, scope: !1144)
!1148 = !DILocation(line: 861, column: 75, scope: !1144)
!1149 = !DILocation(line: 863, column: 45, scope: !1144)
!1150 = !DILocation(line: 863, column: 51, scope: !1144)
!1151 = !DILocation(line: 863, column: 61, scope: !1144)
!1152 = !DILocation(line: 865, column: 14, scope: !1144)
!1153 = !DILocation(line: 861, column: 13, scope: !1068)
!1154 = !DILocation(line: 867, column: 11, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 865, column: 79)
!1156 = !{!927, !320, i64 46}
!1157 = !DILocation(line: 868, column: 18, scope: !1155)
!1158 = !DILocation(line: 868, column: 11, scope: !1155)
!1159 = !DILocation(line: 822, column: 22, scope: !1068)
!1160 = !DILocation(line: 878, column: 25, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 878, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 877, column: 42)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 877, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 877, column: 5)
!1165 = !DILocation(line: 878, column: 31, scope: !1161)
!1166 = !DILocation(line: 880, column: 25, scope: !1161)
!1167 = !DILocation(line: 880, column: 31, scope: !1161)
!1168 = !DILocation(line: 878, column: 55, scope: !1161)
!1169 = !DILocation(line: 882, column: 12, scope: !1161)
!1170 = !DILocation(line: 878, column: 11, scope: !1162)
!1171 = !DILocation(line: 884, column: 9, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 882, column: 59)
!1173 = !DILocation(line: 885, column: 16, scope: !1172)
!1174 = !DILocation(line: 885, column: 9, scope: !1172)
!1175 = !DILocation(line: 0, scope: !1114)
!1176 = !DILocation(line: 896, column: 55, scope: !1059)
!1177 = !DILocation(line: 896, column: 36, scope: !1059)
!1178 = !DILocation(line: 896, column: 10, scope: !1059)
!1179 = !DILocation(line: 896, column: 3, scope: !1059)
!1180 = !DILocation(line: 0, scope: !1155)
!1181 = !DILocation(line: 897, column: 1, scope: !1059)
!1182 = !DILocation(line: 890, column: 12, scope: !1068)
!1183 = !DILocation(line: 890, column: 5, scope: !1068)
!1184 = distinct !DISubprogram(name: "etharp_output_to_arp_index", scope: !3, file: !3, line: 748, type: !1185, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1187)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!91, !209, !196, !152}
!1187 = !{!1188, !1189, !1190}
!1188 = !DILocalVariable(name: "netif", arg: 1, scope: !1184, file: !3, line: 748, type: !209)
!1189 = !DILocalVariable(name: "q", arg: 2, scope: !1184, file: !3, line: 748, type: !196)
!1190 = !DILocalVariable(name: "arp_idx", arg: 3, scope: !1184, file: !3, line: 748, type: !152)
!1191 = !DILocation(line: 748, column: 42, scope: !1184)
!1192 = !DILocation(line: 748, column: 62, scope: !1184)
!1193 = !DILocation(line: 748, column: 82, scope: !1184)
!1194 = !DILocation(line: 750, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 750, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 750, column: 3)
!1197 = !DILocation(line: 750, column: 3, scope: !1196)
!1198 = !DILocation(line: 750, column: 3, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 750, column: 3)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 750, column: 3)
!1201 = !DILocation(line: 750, column: 3, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 750, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 750, column: 3)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 750, column: 3)
!1205 = !DILocation(line: 755, column: 32, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 755, column: 7)
!1207 = !DILocation(line: 755, column: 7, scope: !1184)
!1208 = !DILocation(line: 756, column: 28, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 756, column: 9)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 755, column: 56)
!1211 = !DILocation(line: 756, column: 34, scope: !1209)
!1212 = !DILocation(line: 756, column: 9, scope: !1210)
!1213 = !DILocation(line: 758, column: 53, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 758, column: 11)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 756, column: 71)
!1216 = !DILocation(line: 1198, column: 30, scope: !369, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 758, column: 11, scope: !1214)
!1218 = !DILocation(line: 1198, column: 55, scope: !369, inlinedAt: !1217)
!1219 = !DILocation(line: 1181, column: 34, scope: !378, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 1201, column: 10, scope: !369, inlinedAt: !1217)
!1221 = !DILocation(line: 1181, column: 59, scope: !378, inlinedAt: !1220)
!1222 = !DILocation(line: 1181, column: 90, scope: !378, inlinedAt: !1220)
!1223 = !DILocation(line: 1183, column: 47, scope: !378, inlinedAt: !1220)
!1224 = !DILocation(line: 1183, column: 28, scope: !378, inlinedAt: !1220)
!1225 = !DILocation(line: 1184, column: 55, scope: !378, inlinedAt: !1220)
!1226 = !DILocation(line: 1183, column: 10, scope: !378, inlinedAt: !1220)
!1227 = !DILocation(line: 1183, column: 3, scope: !378, inlinedAt: !1220)
!1228 = !DILocation(line: 1201, column: 3, scope: !369, inlinedAt: !1217)
!1229 = !DILocation(line: 758, column: 61, scope: !1214)
!1230 = !DILocation(line: 758, column: 11, scope: !1215)
!1231 = !DILocation(line: 759, column: 34, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 758, column: 72)
!1233 = !DILocation(line: 760, column: 7, scope: !1232)
!1234 = !DILocation(line: 761, column: 41, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 761, column: 16)
!1236 = !DILocation(line: 761, column: 16, scope: !1209)
!1237 = !DILocation(line: 763, column: 57, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 763, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 761, column: 76)
!1240 = !DILocation(line: 763, column: 85, scope: !1238)
!1241 = !DILocation(line: 1181, column: 34, scope: !378, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 763, column: 11, scope: !1238)
!1243 = !DILocation(line: 1181, column: 59, scope: !378, inlinedAt: !1242)
!1244 = !DILocation(line: 1181, column: 90, scope: !378, inlinedAt: !1242)
!1245 = !DILocation(line: 1183, column: 47, scope: !378, inlinedAt: !1242)
!1246 = !DILocation(line: 1183, column: 28, scope: !378, inlinedAt: !1242)
!1247 = !DILocation(line: 1184, column: 55, scope: !378, inlinedAt: !1242)
!1248 = !DILocation(line: 1183, column: 10, scope: !378, inlinedAt: !1242)
!1249 = !DILocation(line: 1183, column: 3, scope: !378, inlinedAt: !1242)
!1250 = !DILocation(line: 763, column: 94, scope: !1238)
!1251 = !DILocation(line: 763, column: 11, scope: !1239)
!1252 = !DILocation(line: 764, column: 34, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 763, column: 105)
!1254 = !DILocation(line: 765, column: 7, scope: !1253)
!1255 = !DILocation(line: 769, column: 55, scope: !1184)
!1256 = !DILocation(line: 769, column: 36, scope: !1184)
!1257 = !DILocation(line: 769, column: 92, scope: !1184)
!1258 = !DILocation(line: 769, column: 10, scope: !1184)
!1259 = !DILocation(line: 769, column: 3, scope: !1184)
!1260 = distinct !DISubprogram(name: "etharp_query", scope: !3, file: !3, line: 933, type: !1261, isLocal: false, isDefinition: true, scopeLine: 934, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!91, !209, !132, !196}
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1276}
!1264 = !DILocalVariable(name: "netif", arg: 1, scope: !1260, file: !3, line: 933, type: !209)
!1265 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1260, file: !3, line: 933, type: !132)
!1266 = !DILocalVariable(name: "q", arg: 3, scope: !1260, file: !3, line: 933, type: !196)
!1267 = !DILocalVariable(name: "srcaddr", scope: !1260, file: !3, line: 935, type: !142)
!1268 = !DILocalVariable(name: "result", scope: !1260, file: !3, line: 936, type: !91)
!1269 = !DILocalVariable(name: "is_new_entry", scope: !1260, file: !3, line: 937, type: !21)
!1270 = !DILocalVariable(name: "i_err", scope: !1260, file: !3, line: 938, type: !153)
!1271 = !DILocalVariable(name: "i", scope: !1260, file: !3, line: 939, type: !152)
!1272 = !DILocalVariable(name: "p", scope: !1273, file: !3, line: 1003, type: !196)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1001, column: 58)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1001, column: 14)
!1275 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 995, column: 7)
!1276 = !DILocalVariable(name: "copy_needed", scope: !1273, file: !3, line: 1004, type: !21)
!1277 = !DILocation(line: 933, column: 28, scope: !1260)
!1278 = !DILocation(line: 933, column: 53, scope: !1260)
!1279 = !DILocation(line: 933, column: 74, scope: !1260)
!1280 = !DILocation(line: 935, column: 49, scope: !1260)
!1281 = !DILocation(line: 935, column: 30, scope: !1260)
!1282 = !DILocation(line: 935, column: 20, scope: !1260)
!1283 = !DILocation(line: 936, column: 9, scope: !1260)
!1284 = !DILocation(line: 937, column: 7, scope: !1260)
!1285 = !DILocation(line: 942, column: 7, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 942, column: 7)
!1287 = !DILocation(line: 942, column: 43, scope: !1286)
!1288 = !DILocation(line: 943, column: 7, scope: !1286)
!1289 = !DILocation(line: 944, column: 7, scope: !1286)
!1290 = !DILocation(line: 943, column: 36, scope: !1286)
!1291 = !DILocation(line: 950, column: 11, scope: !1260)
!1292 = !DILocation(line: 938, column: 9, scope: !1260)
!1293 = !DILocation(line: 953, column: 13, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 953, column: 7)
!1295 = !DILocation(line: 953, column: 7, scope: !1260)
!1296 = !DILocation(line: 955, column: 9, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 955, column: 9)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 953, column: 18)
!1299 = !DILocation(line: 955, column: 9, scope: !1298)
!1300 = !DILocation(line: 957, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 955, column: 12)
!1302 = !DILocation(line: 958, column: 5, scope: !1301)
!1303 = !DILocation(line: 959, column: 12, scope: !1298)
!1304 = !DILocation(line: 959, column: 5, scope: !1298)
!1305 = !DILocation(line: 961, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 961, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 961, column: 3)
!1308 = !DILocation(line: 961, column: 3, scope: !1307)
!1309 = !DILocation(line: 961, column: 3, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 961, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 961, column: 3)
!1312 = !DILocation(line: 961, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 961, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 961, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 961, column: 3)
!1316 = !DILocation(line: 962, column: 7, scope: !1260)
!1317 = !DILocation(line: 939, column: 20, scope: !1260)
!1318 = !DILocation(line: 965, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 965, column: 7)
!1320 = !DILocation(line: 965, column: 20, scope: !1319)
!1321 = !DILocation(line: 965, column: 26, scope: !1319)
!1322 = !DILocation(line: 965, column: 7, scope: !1260)
!1323 = !DILocation(line: 967, column: 24, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 965, column: 49)
!1325 = !DILocation(line: 969, column: 18, scope: !1324)
!1326 = !DILocation(line: 969, column: 24, scope: !1324)
!1327 = !DILocation(line: 978, column: 26, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 978, column: 7)
!1329 = !DILocation(line: 978, column: 20, scope: !1328)
!1330 = !DILocation(line: 1198, column: 30, scope: !369, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 980, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 978, column: 36)
!1333 = !DILocation(line: 1198, column: 55, scope: !369, inlinedAt: !1331)
!1334 = !DILocation(line: 1181, column: 34, scope: !378, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 1201, column: 10, scope: !369, inlinedAt: !1331)
!1336 = !DILocation(line: 1181, column: 59, scope: !378, inlinedAt: !1335)
!1337 = !DILocation(line: 1181, column: 90, scope: !378, inlinedAt: !1335)
!1338 = !DILocation(line: 1184, column: 55, scope: !378, inlinedAt: !1335)
!1339 = !DILocation(line: 1183, column: 10, scope: !378, inlinedAt: !1335)
!1340 = !DILocation(line: 1183, column: 3, scope: !378, inlinedAt: !1335)
!1341 = !DILocation(line: 1201, column: 3, scope: !369, inlinedAt: !1331)
!1342 = !DILocation(line: 987, column: 9, scope: !1332)
!1343 = !DILocation(line: 995, column: 20, scope: !1275)
!1344 = !DILocation(line: 995, column: 26, scope: !1275)
!1345 = !DILocation(line: 995, column: 7, scope: !1260)
!1346 = !DILocation(line: 997, column: 5, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 995, column: 50)
!1348 = !DILocation(line: 999, column: 64, scope: !1347)
!1349 = !DILocation(line: 999, column: 14, scope: !1347)
!1350 = !DILocation(line: 1001, column: 3, scope: !1347)
!1351 = !DILocation(line: 1001, column: 33, scope: !1274)
!1352 = !DILocation(line: 1001, column: 14, scope: !1275)
!1353 = !DILocation(line: 1003, column: 18, scope: !1273)
!1354 = !DILocation(line: 1008, column: 5, scope: !1273)
!1355 = !DILocation(line: 1009, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 1009, column: 7)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1009, column: 7)
!1358 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1008, column: 15)
!1359 = !{!903, !320, i64 16}
!1360 = !{!903, !314, i64 0}
!1361 = !DILocation(line: 1009, column: 7, scope: !1357)
!1362 = !DILocation(line: 1009, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1009, column: 7)
!1364 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1009, column: 7)
!1365 = !DILocation(line: 1009, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1009, column: 7)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1009, column: 7)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1009, column: 7)
!1369 = !DILocation(line: 1010, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 1010, column: 11)
!1371 = !{!903, !315, i64 20}
!1372 = !DILocation(line: 1010, column: 11, scope: !1358)
!1373 = !DILocation(line: 1014, column: 14, scope: !1358)
!1374 = distinct !{!1374, !1354, !1375}
!1375 = !DILocation(line: 1015, column: 5, scope: !1273)
!1376 = !DILocation(line: 1018, column: 11, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1016, column: 22)
!1378 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1016, column: 9)
!1379 = !DILocation(line: 1019, column: 5, scope: !1377)
!1380 = !DILocation(line: 1022, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1019, column: 12)
!1382 = !DILocation(line: 0, scope: !1381)
!1383 = !DILocation(line: 1025, column: 11, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 1025, column: 9)
!1385 = !DILocation(line: 1025, column: 9, scope: !1273)
!1386 = !DILocation(line: 1068, column: 24, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1068, column: 11)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1025, column: 20)
!1389 = !DILocation(line: 1068, column: 26, scope: !1387)
!1390 = !DILocation(line: 1068, column: 11, scope: !1388)
!1391 = !DILocation(line: 1070, column: 9, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1068, column: 35)
!1393 = !DILocation(line: 1071, column: 7, scope: !1392)
!1394 = !DILocation(line: 1072, column: 22, scope: !1388)
!1395 = !DILocation(line: 1076, column: 5, scope: !1388)
!1396 = !DILocation(line: 1077, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1076, column: 12)
!1398 = !DILocation(line: 0, scope: !1260)
!1399 = !DILocation(line: 1083, column: 1, scope: !1260)
