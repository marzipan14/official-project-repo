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
  br label %33, !dbg !352

; <label>:21:                                     ; preds = %10
  switch i8 %4, label %33 [
    i8 3, label %22
    i8 4, label %23
    i8 1, label %24
  ], !dbg !353

; <label>:22:                                     ; preds = %21
  store i8 4, i8* %3, align 8, !dbg !354, !tbaa !312
  br label %33, !dbg !357

; <label>:23:                                     ; preds = %21
  store i8 2, i8* %3, align 8, !dbg !358, !tbaa !312
  br label %33, !dbg !361

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 2, !dbg !362
  %26 = load %struct.netif*, %struct.netif** %25, align 8, !dbg !362, !tbaa !365
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 1, !dbg !366
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %26, i64 0, i32 19, i64 0, !dbg !387
  %29 = bitcast i8* %28 to %struct.eth_addr*, !dbg !388
  %30 = getelementptr inbounds %struct.netif, %struct.netif* %26, i64 0, i32 1, i32 0, !dbg !389
  %31 = bitcast %union.anon* %30 to %struct.ip4_addr*, !dbg !389
  %32 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %26, %struct.eth_addr* nonnull %29, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %29, %struct.ip4_addr* nonnull %31, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %27, i16 zeroext 1) #7, !dbg !390
  br label %33, !dbg !391

; <label>:33:                                     ; preds = %21, %1, %1, %20, %23, %24, %22
  %34 = add nuw nsw i64 %2, 1, !dbg !392
  %35 = icmp eq i64 %34, 10, !dbg !393
  br i1 %35, label %36, label %1, !dbg !310, !llvm.loop !394

; <label>:36:                                     ; preds = %33
  ret void, !dbg !396
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_request(%struct.netif*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !368 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !403
  %4 = bitcast i8* %3 to %struct.eth_addr*, !dbg !404
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !405
  %6 = bitcast %union.anon* %5 to %struct.ip4_addr*, !dbg !405
  %7 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %4, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %4, %struct.ip4_addr* nonnull %6, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* %1, i16 zeroext 1) #7, !dbg !406
  ret i8 %7, !dbg !407
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_add_static_entry(%struct.ip4_addr*, %struct.eth_addr*) local_unnamed_addr #0 !dbg !408 {
  %3 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %0) #7, !dbg !417
  %4 = icmp eq %struct.netif* %3, null, !dbg !419
  br i1 %4, label %7, label %5, !dbg !421

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %3, %struct.ip4_addr* %0, %struct.eth_addr* %1, i8 zeroext 5) #8, !dbg !422
  br label %7, !dbg !423

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ -4, %2 ], !dbg !424
  ret i8 %8, !dbg !425
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_update_arp_entry(%struct.netif*, %struct.ip4_addr*, %struct.eth_addr*, i8 zeroext) unnamed_addr #0 !dbg !426 {
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !442
  %6 = load i8, i8* %5, align 4, !dbg !442, !tbaa !445
  %7 = icmp eq i8 %6, 6, !dbg !442
  br i1 %7, label %9, label %8, !dbg !448

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !449
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !452
  tail call void @ukplat_terminate(i32 3) #9, !dbg !452
  unreachable, !dbg !452

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip4_addr* %1, null, !dbg !456
  br i1 %10, label %50, label %11, !dbg !456

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !456
  %13 = load i32, i32* %12, align 4, !dbg !456, !tbaa !458
  %14 = icmp eq i32 %13, 0, !dbg !456
  br i1 %14, label %50, label %15, !dbg !459

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %13, %struct.netif* nonnull %0) #7, !dbg !460
  %17 = icmp eq i8 %16, 0, !dbg !460
  br i1 %17, label %18, label %50, !dbg !461

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %12, align 4, !dbg !462, !tbaa !458
  %20 = and i32 %19, 240, !dbg !462
  %21 = icmp eq i32 %20, 224, !dbg !462
  br i1 %21, label %50, label %22, !dbg !463

; <label>:22:                                     ; preds = %18
  %23 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext %3, %struct.netif* nonnull %0) #8, !dbg !464
  %24 = icmp slt i16 %23, 0, !dbg !466
  br i1 %24, label %25, label %27, !dbg !468

; <label>:25:                                     ; preds = %22
  %26 = trunc i16 %23 to i8, !dbg !469
  br label %50, !dbg !471

; <label>:27:                                     ; preds = %22
  %28 = and i8 %3, 4, !dbg !472
  %29 = icmp eq i8 %28, 0, !dbg !472
  %30 = sext i16 %23 to i64, !dbg !474
  %31 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 5, !dbg !474
  br i1 %29, label %32, label %35, !dbg !476

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %31, align 8, !dbg !477, !tbaa !312
  %34 = icmp eq i8 %33, 5, !dbg !478
  br i1 %34, label %50, label %35, !dbg !479

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i8 [ 5, %27 ], [ 2, %32 ]
  store i8 %36, i8* %31, align 8, !dbg !480, !tbaa !312
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 2, !dbg !482
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !483, !tbaa !365
  %38 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 3, i32 0, i64 0, !dbg !484
  %39 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %2, i64 0, i32 0, i64 0, !dbg !484
  %40 = tail call i8* @memcpy(i8* nonnull %38, i8* %39, i64 6) #7, !dbg !484
  %41 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 4, !dbg !485
  store i16 0, i16* %41, align 2, !dbg !486, !tbaa !327
  %42 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 0, !dbg !487
  %43 = load %struct.pbuf*, %struct.pbuf** %42, align 8, !dbg !487, !tbaa !344
  %44 = icmp eq %struct.pbuf* %43, null, !dbg !488
  br i1 %44, label %50, label %45, !dbg !489

; <label>:45:                                     ; preds = %35
  store %struct.pbuf* null, %struct.pbuf** %42, align 8, !dbg !491, !tbaa !344
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !492
  %47 = bitcast i8* %46 to %struct.eth_addr*, !dbg !493
  %48 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %43, %struct.eth_addr* nonnull %47, %struct.eth_addr* %2, i16 zeroext 2048) #7, !dbg !494
  %49 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %43) #7, !dbg !495
  br label %50, !dbg !496

; <label>:50:                                     ; preds = %45, %35, %32, %9, %11, %18, %15, %25
  %51 = phi i8 [ %26, %25 ], [ -16, %15 ], [ -16, %18 ], [ -16, %11 ], [ -16, %9 ], [ -6, %32 ], [ 0, %35 ], [ 0, %45 ], !dbg !497
  ret i8 %51, !dbg !499
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_remove_static_entry(%struct.ip4_addr* readonly) local_unnamed_addr #0 !dbg !500 {
  %2 = icmp eq %struct.ip4_addr* %0, null
  %3 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0
  %4 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !538, !tbaa !312
  %5 = icmp eq i8 %4, 0, !dbg !540
  br i1 %5, label %6, label %9, !dbg !542

; <label>:6:                                      ; preds = %1
  %7 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !538, !tbaa !312
  %8 = icmp eq i8 %7, 0, !dbg !540
  br i1 %8, label %37, label %31, !dbg !543

; <label>:9:                                      ; preds = %1
  br i1 %2, label %14, label %10, !dbg !544

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %12 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %13 = icmp eq i32 %11, %12, !dbg !548
  br i1 %13, label %17, label %14, !dbg !550

; <label>:14:                                     ; preds = %10, %9
  %15 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !538, !tbaa !312
  %16 = icmp eq i8 %15, 0, !dbg !540
  br i1 %16, label %37, label %31, !dbg !542

; <label>:17:                                     ; preds = %162, %150, %134, %117, %100, %83, %66, %49, %33, %10
  %18 = phi i64 [ 0, %10 ], [ 1, %33 ], [ 2, %49 ], [ 3, %66 ], [ 4, %83 ], [ 5, %100 ], [ 6, %117 ], [ 7, %134 ], [ 8, %150 ], [ 9, %162 ]
  %19 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %18, i32 5, !dbg !552
  %20 = load i8, i8* %19, align 8, !dbg !552, !tbaa !312
  %21 = icmp eq i8 %20, 5, !dbg !554
  br i1 %21, label %22, label %29, !dbg !555

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %18, i32 0, !dbg !558
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !558, !tbaa !344
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !559
  br i1 %25, label %28, label %26, !dbg !560

; <label>:26:                                     ; preds = %22
  %27 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %24) #7, !dbg !561
  store %struct.pbuf* null, %struct.pbuf** %23, align 8, !dbg !562, !tbaa !344
  br label %28, !dbg !563

; <label>:28:                                     ; preds = %22, %26
  store i8 0, i8* %19, align 8, !dbg !564, !tbaa !312
  br label %29, !dbg !565

; <label>:29:                                     ; preds = %154, %158, %162, %17, %28
  %30 = phi i8 [ 0, %28 ], [ -16, %17 ], [ -1, %154 ], [ -1, %158 ], [ -1, %162 ], !dbg !566
  ret i8 %30, !dbg !567

; <label>:31:                                     ; preds = %14, %6
  %32 = phi i16 [ 0, %6 ], [ 10, %14 ]
  br i1 %2, label %41, label %33, !dbg !544

; <label>:33:                                     ; preds = %31
  %34 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %35 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %36 = icmp eq i32 %34, %35, !dbg !548
  br i1 %36, label %17, label %41, !dbg !550

; <label>:37:                                     ; preds = %14, %6
  %38 = phi i16 [ 0, %6 ], [ 1, %14 ]
  %39 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !538, !tbaa !312
  %40 = icmp eq i8 %39, 0, !dbg !540
  br i1 %40, label %53, label %47, !dbg !543

; <label>:41:                                     ; preds = %31, %33
  %42 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !538, !tbaa !312
  %43 = icmp eq i16 %32, 10, !dbg !568
  %44 = icmp eq i8 %42, 0, !dbg !540
  %45 = and i1 %43, %44, !dbg !542
  br i1 %45, label %53, label %46, !dbg !542

; <label>:46:                                     ; preds = %41
  br i1 %44, label %57, label %47, !dbg !543

; <label>:47:                                     ; preds = %37, %46
  %48 = phi i16 [ %38, %37 ], [ %32, %46 ]
  br i1 %2, label %57, label %49, !dbg !544

; <label>:49:                                     ; preds = %47
  %50 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %51 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %52 = icmp eq i32 %50, %51, !dbg !548
  br i1 %52, label %17, label %57, !dbg !550

; <label>:53:                                     ; preds = %41, %37
  %54 = phi i16 [ %38, %37 ], [ 2, %41 ]
  %55 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !538, !tbaa !312
  %56 = icmp eq i8 %55, 0, !dbg !540
  br i1 %56, label %70, label %64, !dbg !543

; <label>:57:                                     ; preds = %47, %49, %46
  %58 = phi i16 [ %32, %46 ], [ %48, %49 ], [ %48, %47 ]
  %59 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !538, !tbaa !312
  %60 = icmp eq i16 %58, 10, !dbg !568
  %61 = icmp eq i8 %59, 0, !dbg !540
  %62 = and i1 %60, %61, !dbg !542
  br i1 %62, label %70, label %63, !dbg !542

; <label>:63:                                     ; preds = %57
  br i1 %61, label %74, label %64, !dbg !543

; <label>:64:                                     ; preds = %53, %63
  %65 = phi i16 [ %54, %53 ], [ %58, %63 ]
  br i1 %2, label %74, label %66, !dbg !544

; <label>:66:                                     ; preds = %64
  %67 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %68 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %69 = icmp eq i32 %67, %68, !dbg !548
  br i1 %69, label %17, label %74, !dbg !550

; <label>:70:                                     ; preds = %57, %53
  %71 = phi i16 [ %54, %53 ], [ 3, %57 ]
  %72 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !538, !tbaa !312
  %73 = icmp eq i8 %72, 0, !dbg !540
  br i1 %73, label %87, label %81, !dbg !543

; <label>:74:                                     ; preds = %64, %66, %63
  %75 = phi i16 [ %58, %63 ], [ %65, %66 ], [ %65, %64 ]
  %76 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !538, !tbaa !312
  %77 = icmp eq i16 %75, 10, !dbg !568
  %78 = icmp eq i8 %76, 0, !dbg !540
  %79 = and i1 %77, %78, !dbg !542
  br i1 %79, label %87, label %80, !dbg !542

; <label>:80:                                     ; preds = %74
  br i1 %78, label %91, label %81, !dbg !543

; <label>:81:                                     ; preds = %70, %80
  %82 = phi i16 [ %71, %70 ], [ %75, %80 ]
  br i1 %2, label %91, label %83, !dbg !544

; <label>:83:                                     ; preds = %81
  %84 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %85 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %86 = icmp eq i32 %84, %85, !dbg !548
  br i1 %86, label %17, label %91, !dbg !550

; <label>:87:                                     ; preds = %74, %70
  %88 = phi i16 [ %71, %70 ], [ 4, %74 ]
  %89 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !538, !tbaa !312
  %90 = icmp eq i8 %89, 0, !dbg !540
  br i1 %90, label %104, label %98, !dbg !543

; <label>:91:                                     ; preds = %81, %83, %80
  %92 = phi i16 [ %75, %80 ], [ %82, %83 ], [ %82, %81 ]
  %93 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !538, !tbaa !312
  %94 = icmp eq i16 %92, 10, !dbg !568
  %95 = icmp eq i8 %93, 0, !dbg !540
  %96 = and i1 %94, %95, !dbg !542
  br i1 %96, label %104, label %97, !dbg !542

; <label>:97:                                     ; preds = %91
  br i1 %95, label %108, label %98, !dbg !543

; <label>:98:                                     ; preds = %87, %97
  %99 = phi i16 [ %88, %87 ], [ %92, %97 ]
  br i1 %2, label %108, label %100, !dbg !544

; <label>:100:                                    ; preds = %98
  %101 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %102 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %103 = icmp eq i32 %101, %102, !dbg !548
  br i1 %103, label %17, label %108, !dbg !550

; <label>:104:                                    ; preds = %91, %87
  %105 = phi i16 [ %88, %87 ], [ 5, %91 ]
  %106 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !538, !tbaa !312
  %107 = icmp eq i8 %106, 0, !dbg !540
  br i1 %107, label %121, label %115, !dbg !543

; <label>:108:                                    ; preds = %98, %100, %97
  %109 = phi i16 [ %92, %97 ], [ %99, %100 ], [ %99, %98 ]
  %110 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !538, !tbaa !312
  %111 = icmp eq i16 %109, 10, !dbg !568
  %112 = icmp eq i8 %110, 0, !dbg !540
  %113 = and i1 %111, %112, !dbg !542
  br i1 %113, label %121, label %114, !dbg !542

; <label>:114:                                    ; preds = %108
  br i1 %112, label %125, label %115, !dbg !543

; <label>:115:                                    ; preds = %104, %114
  %116 = phi i16 [ %105, %104 ], [ %109, %114 ]
  br i1 %2, label %125, label %117, !dbg !544

; <label>:117:                                    ; preds = %115
  %118 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %119 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %120 = icmp eq i32 %118, %119, !dbg !548
  br i1 %120, label %17, label %125, !dbg !550

; <label>:121:                                    ; preds = %108, %104
  %122 = phi i16 [ %105, %104 ], [ 6, %108 ]
  %123 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !538, !tbaa !312
  %124 = icmp eq i8 %123, 0, !dbg !540
  br i1 %124, label %138, label %132, !dbg !543

; <label>:125:                                    ; preds = %115, %117, %114
  %126 = phi i16 [ %109, %114 ], [ %116, %117 ], [ %116, %115 ]
  %127 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !538, !tbaa !312
  %128 = icmp eq i16 %126, 10, !dbg !568
  %129 = icmp eq i8 %127, 0, !dbg !540
  %130 = and i1 %128, %129, !dbg !542
  br i1 %130, label %138, label %131, !dbg !542

; <label>:131:                                    ; preds = %125
  br i1 %129, label %141, label %132, !dbg !543

; <label>:132:                                    ; preds = %121, %131
  %133 = phi i16 [ %122, %121 ], [ %126, %131 ]
  br i1 %2, label %141, label %134, !dbg !544

; <label>:134:                                    ; preds = %132
  %135 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %137 = icmp eq i32 %135, %136, !dbg !548
  br i1 %137, label %17, label %141, !dbg !550

; <label>:138:                                    ; preds = %125, %121
  %139 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !538, !tbaa !312
  %140 = icmp eq i8 %139, 0, !dbg !540
  br i1 %140, label %154, label %149, !dbg !543

; <label>:141:                                    ; preds = %132, %134, %131
  %142 = phi i16 [ %126, %131 ], [ %133, %134 ], [ %133, %132 ]
  %143 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !538, !tbaa !312
  %144 = icmp eq i16 %142, 10, !dbg !568
  %145 = icmp eq i8 %143, 0, !dbg !540
  %146 = and i1 %144, %145, !dbg !542
  br i1 %146, label %154, label %147, !dbg !542

; <label>:147:                                    ; preds = %141
  %148 = or i1 %145, %2, !dbg !543
  br i1 %148, label %158, label %150, !dbg !543

; <label>:149:                                    ; preds = %138
  br i1 %2, label %158, label %150, !dbg !544

; <label>:150:                                    ; preds = %147, %149
  %151 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %152 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %153 = icmp eq i32 %151, %152, !dbg !548
  br i1 %153, label %17, label %158, !dbg !550

; <label>:154:                                    ; preds = %141, %138
  %155 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !538, !tbaa !312
  %156 = icmp eq i8 %155, 0, !dbg !540
  %157 = or i1 %156, %2, !dbg !543
  br i1 %157, label %29, label %162, !dbg !543

; <label>:158:                                    ; preds = %147, %149, %150
  %159 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !538, !tbaa !312
  %160 = icmp eq i8 %159, 0, !dbg !540
  %161 = or i1 %160, %2, !dbg !542
  br i1 %161, label %29, label %162, !dbg !542

; <label>:162:                                    ; preds = %154, %158
  %163 = load i32, i32* %3, align 4, !dbg !548, !tbaa !458
  %164 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !548, !tbaa !549
  %165 = icmp eq i32 %163, %164, !dbg !548
  br i1 %165, label %17, label %29, !dbg !550
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* readonly, i8 zeroext, %struct.netif*) unnamed_addr #0 !dbg !508 {
  %4 = icmp eq %struct.ip4_addr* %0, null
  %5 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0
  %6 = icmp eq %struct.netif* %2, null
  br label %7, !dbg !580

; <label>:7:                                      ; preds = %3, %58
  %8 = phi i64 [ 0, %3 ], [ %66, %58 ]
  %9 = phi i16 [ 0, %3 ], [ %65, %58 ]
  %10 = phi i16 [ 0, %3 ], [ %64, %58 ]
  %11 = phi i16 [ 0, %3 ], [ %63, %58 ]
  %12 = phi i16 [ 10, %3 ], [ %62, %58 ]
  %13 = phi i16 [ 10, %3 ], [ %61, %58 ]
  %14 = phi i16 [ 10, %3 ], [ %60, %58 ]
  %15 = phi i16 [ 10, %3 ], [ %59, %58 ]
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 5, !dbg !581
  %17 = load i8, i8* %16, align 8, !dbg !581, !tbaa !312
  %18 = icmp eq i16 %13, 10, !dbg !583
  %19 = icmp eq i8 %17, 0, !dbg !584
  %20 = and i1 %18, %19, !dbg !585
  %21 = trunc i64 %8 to i16, !dbg !585
  br i1 %20, label %58, label %22, !dbg !585

; <label>:22:                                     ; preds = %7
  br i1 %19, label %58, label %23, !dbg !586

; <label>:23:                                     ; preds = %22
  %24 = icmp eq i8 %17, 1, !dbg !587
  br i1 %4, label %35, label %25, !dbg !590

; <label>:25:                                     ; preds = %23
  %26 = load i32, i32* %5, align 4, !dbg !591, !tbaa !458
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 1, i32 0, !dbg !591
  %28 = load i32, i32* %27, align 8, !dbg !591, !tbaa !549
  %29 = icmp eq i32 %26, %28, !dbg !591
  br i1 %29, label %30, label %35, !dbg !592

; <label>:30:                                     ; preds = %25
  br i1 %6, label %116, label %31, !dbg !593

; <label>:31:                                     ; preds = %30
  %32 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 2, !dbg !594
  %33 = load %struct.netif*, %struct.netif** %32, align 8, !dbg !594, !tbaa !365
  %34 = icmp eq %struct.netif* %33, %2, !dbg !595
  br i1 %34, label %116, label %35, !dbg !596

; <label>:35:                                     ; preds = %23, %31, %25
  br i1 %24, label %36, label %50, !dbg !597

; <label>:36:                                     ; preds = %35
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 0, !dbg !598
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8, !dbg !598, !tbaa !344
  %39 = icmp eq %struct.pbuf* %38, null, !dbg !602
  %40 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !603
  %41 = load i16, i16* %40, align 2, !dbg !603, !tbaa !327
  br i1 %39, label %46, label %42, !dbg !606

; <label>:42:                                     ; preds = %36
  %43 = icmp ult i16 %41, %11, !dbg !607
  %44 = select i1 %43, i16 %12, i16 %21, !dbg !610
  %45 = select i1 %43, i16 %11, i16 %41, !dbg !610
  br label %58, !dbg !610

; <label>:46:                                     ; preds = %36
  %47 = icmp ult i16 %41, %10, !dbg !611
  %48 = select i1 %47, i16 %15, i16 %21, !dbg !612
  %49 = select i1 %47, i16 %10, i16 %41, !dbg !612
  br label %58, !dbg !612

; <label>:50:                                     ; preds = %35
  %51 = icmp ult i8 %17, 5, !dbg !613
  br i1 %51, label %52, label %58, !dbg !617

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !618
  %54 = load i16, i16* %53, align 2, !dbg !618, !tbaa !327
  %55 = icmp ult i16 %54, %9, !dbg !621
  %56 = select i1 %55, i16 %14, i16 %21, !dbg !622
  %57 = select i1 %55, i16 %9, i16 %54, !dbg !622
  br label %58, !dbg !622

; <label>:58:                                     ; preds = %50, %7, %42, %46, %52, %22
  %59 = phi i16 [ %15, %52 ], [ %48, %46 ], [ %15, %42 ], [ %15, %7 ], [ %15, %22 ], [ %15, %50 ]
  %60 = phi i16 [ %56, %52 ], [ %14, %46 ], [ %14, %42 ], [ %14, %7 ], [ %14, %22 ], [ %14, %50 ]
  %61 = phi i16 [ %13, %52 ], [ %13, %46 ], [ %13, %42 ], [ %21, %7 ], [ %13, %22 ], [ %13, %50 ]
  %62 = phi i16 [ %12, %52 ], [ %12, %46 ], [ %44, %42 ], [ %12, %7 ], [ %12, %22 ], [ %12, %50 ]
  %63 = phi i16 [ %11, %52 ], [ %11, %46 ], [ %45, %42 ], [ %11, %7 ], [ %11, %22 ], [ %11, %50 ]
  %64 = phi i16 [ %10, %52 ], [ %49, %46 ], [ %10, %42 ], [ %10, %7 ], [ %10, %22 ], [ %10, %50 ]
  %65 = phi i16 [ %57, %52 ], [ %9, %46 ], [ %9, %42 ], [ %9, %7 ], [ %9, %22 ], [ %9, %50 ]
  %66 = add nuw nsw i64 %8, 1, !dbg !623
  %67 = icmp ult i64 %66, 10, !dbg !624
  br i1 %67, label %7, label %68, !dbg !580, !llvm.loop !625

; <label>:68:                                     ; preds = %58
  %69 = zext i8 %1 to i32, !dbg !627
  %70 = and i32 %69, 2, !dbg !629
  %71 = icmp eq i32 %70, 0, !dbg !630
  br i1 %71, label %72, label %118, !dbg !631

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i16 %61, 10, !dbg !632
  %74 = and i32 %69, 1, !dbg !633
  %75 = icmp eq i32 %74, 0, !dbg !634
  %76 = and i1 %75, %73, !dbg !635
  br i1 %76, label %118, label %77, !dbg !635

; <label>:77:                                     ; preds = %72
  %78 = icmp slt i16 %61, 10, !dbg !636
  br i1 %78, label %101, label %79, !dbg !638

; <label>:79:                                     ; preds = %77
  %80 = icmp slt i16 %60, 10, !dbg !639
  br i1 %80, label %81, label %87, !dbg !642

; <label>:81:                                     ; preds = %79
  %82 = sext i16 %60 to i64, !dbg !643
  %83 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %82, i32 0, !dbg !643
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8, !dbg !643, !tbaa !344
  %85 = icmp eq %struct.pbuf* %84, null, !dbg !643
  br i1 %85, label %91, label %86, !dbg !647

; <label>:86:                                     ; preds = %81
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !648
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !651
  tail call void @ukplat_terminate(i32 3) #9, !dbg !651
  unreachable, !dbg !651

; <label>:87:                                     ; preds = %79
  %88 = icmp slt i16 %59, 10, !dbg !655
  br i1 %88, label %91, label %89, !dbg !657

; <label>:89:                                     ; preds = %87
  %90 = icmp slt i16 %62, 10, !dbg !658
  br i1 %90, label %91, label %118, !dbg !660

; <label>:91:                                     ; preds = %81, %87, %89
  %92 = phi i16 [ %60, %81 ], [ %59, %87 ], [ %62, %89 ], !dbg !661
  %93 = sext i16 %92 to i64, !dbg !663
  %94 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %93, i32 0, !dbg !666
  %95 = load %struct.pbuf*, %struct.pbuf** %94, align 8, !dbg !666, !tbaa !344
  %96 = icmp eq %struct.pbuf* %95, null, !dbg !667
  br i1 %96, label %99, label %97, !dbg !668

; <label>:97:                                     ; preds = %91
  %98 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %95) #7, !dbg !669
  store %struct.pbuf* null, %struct.pbuf** %94, align 8, !dbg !670, !tbaa !344
  br label %99, !dbg !671

; <label>:99:                                     ; preds = %97, %91
  %100 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %93, i32 5, !dbg !672
  store i8 0, i8* %100, align 8, !dbg !673, !tbaa !312
  br label %107, !dbg !674

; <label>:101:                                    ; preds = %77
  %102 = sext i16 %61 to i64
  %103 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %102, i32 5
  %104 = load i8, i8* %103, align 8, !dbg !676, !tbaa !312
  %105 = icmp eq i8 %104, 0, !dbg !638
  br i1 %105, label %107, label %106, !dbg !674

; <label>:106:                                    ; preds = %101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !678
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !681
  tail call void @ukplat_terminate(i32 3) #9, !dbg !681
  unreachable, !dbg !681

; <label>:107:                                    ; preds = %99, %101
  %108 = phi i16 [ %92, %99 ], [ %61, %101 ]
  %109 = phi i64 [ %93, %99 ], [ %102, %101 ]
  br i1 %4, label %113, label %110, !dbg !685

; <label>:110:                                    ; preds = %107
  %111 = load i32, i32* %5, align 4, !dbg !686, !tbaa !458
  %112 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 1, i32 0, !dbg !686
  store i32 %111, i32* %112, align 8, !dbg !686, !tbaa !549
  br label %113, !dbg !689

; <label>:113:                                    ; preds = %107, %110
  %114 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 4, !dbg !690
  store i16 0, i16* %114, align 2, !dbg !691, !tbaa !327
  %115 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %109, i32 2, !dbg !692
  store %struct.netif* %2, %struct.netif** %115, align 8, !dbg !693, !tbaa !365
  br label %118, !dbg !694

; <label>:116:                                    ; preds = %30, %31
  %117 = trunc i64 %8 to i16, !dbg !585
  br label %118, !dbg !695

; <label>:118:                                    ; preds = %116, %89, %68, %72, %113
  %119 = phi i16 [ %108, %113 ], [ -1, %72 ], [ -1, %68 ], [ -1, %89 ], [ %117, %116 ]
  ret i16 %119, !dbg !695
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !696 {
  br label %2, !dbg !706

; <label>:2:                                      ; preds = %18, %1
  %3 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %4 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 5, !dbg !707
  %5 = load i8, i8* %4, align 8, !dbg !707, !tbaa !312
  %6 = icmp eq i8 %5, 0, !dbg !709
  br i1 %6, label %18, label %7, !dbg !711

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 2, !dbg !712
  %9 = load %struct.netif*, %struct.netif** %8, align 8, !dbg !712, !tbaa !365
  %10 = icmp eq %struct.netif* %9, %0, !dbg !713
  br i1 %10, label %11, label %18, !dbg !714

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 0, !dbg !718
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !718, !tbaa !344
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !719
  br i1 %14, label %17, label %15, !dbg !720

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %13) #7, !dbg !721
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !722, !tbaa !344
  br label %17, !dbg !723

; <label>:17:                                     ; preds = %11, %15
  store i8 0, i8* %4, align 8, !dbg !724, !tbaa !312
  br label %18, !dbg !725

; <label>:18:                                     ; preds = %2, %17, %7
  %19 = add nuw nsw i64 %3, 1, !dbg !726
  %20 = icmp eq i64 %19, 10, !dbg !727
  br i1 %20, label %21, label %2, !dbg !706, !llvm.loop !728

; <label>:21:                                     ; preds = %18
  ret void, !dbg !730
}

; Function Attrs: noredzone nounwind
define dso_local i64 @etharp_find_addr(%struct.netif* readnone, %struct.ip4_addr* readonly, %struct.eth_addr**, %struct.ip4_addr**) local_unnamed_addr #0 !dbg !731 {
  %5 = icmp ne %struct.eth_addr** %2, null, !dbg !750
  %6 = icmp ne %struct.ip4_addr** %3, null, !dbg !750
  %7 = and i1 %5, %6, !dbg !750
  br i1 %7, label %9, label %8, !dbg !750

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #8, !dbg !753
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !756
  tail call void @ukplat_terminate(i32 3) #9, !dbg !756
  unreachable, !dbg !756

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip4_addr* %1, null
  %11 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0
  %12 = icmp eq %struct.netif* %0, null
  %13 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !772, !tbaa !312
  %14 = icmp eq i8 %13, 0, !dbg !774
  %15 = or i1 %14, %10, !dbg !775
  br i1 %15, label %24, label %16, !dbg !775

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %18 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %19 = icmp eq i32 %17, %18, !dbg !776
  br i1 %19, label %20, label %24, !dbg !777

; <label>:20:                                     ; preds = %16
  %21 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 2), align 16, !dbg !778
  %22 = icmp eq %struct.netif* %21, %0, !dbg !779
  %23 = or i1 %12, %22, !dbg !780
  br i1 %23, label %28, label %24, !dbg !780

; <label>:24:                                     ; preds = %20, %9, %16
  %25 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !772, !tbaa !312
  %26 = icmp eq i8 %25, 0, !dbg !774
  %27 = or i1 %26, %10, !dbg !775
  br i1 %27, label %46, label %38, !dbg !775

; <label>:28:                                     ; preds = %138, %126, %114, %102, %90, %78, %66, %54, %42, %20
  %29 = phi i64 [ 0, %20 ], [ 1, %42 ], [ 2, %54 ], [ 3, %66 ], [ 4, %78 ], [ 5, %90 ], [ 6, %102 ], [ 7, %114 ], [ 8, %126 ], [ 9, %138 ]
  %30 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 5, !dbg !781
  %31 = load i8, i8* %30, align 8, !dbg !781, !tbaa !312
  %32 = icmp ugt i8 %31, 1, !dbg !783
  br i1 %32, label %33, label %36, !dbg !784

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 3, !dbg !785
  store %struct.eth_addr* %34, %struct.eth_addr** %2, align 8, !dbg !787, !tbaa !788
  %35 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %29, i32 1, !dbg !789
  store %struct.ip4_addr* %35, %struct.ip4_addr** %3, align 8, !dbg !790, !tbaa !788
  br label %36, !dbg !791

; <label>:36:                                     ; preds = %130, %134, %138, %28, %33
  %37 = phi i64 [ %29, %33 ], [ -1, %28 ], [ -1, %138 ], [ -1, %134 ], [ -1, %130 ], !dbg !792
  ret i64 %37, !dbg !793

; <label>:38:                                     ; preds = %24
  %39 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %40 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %41 = icmp eq i32 %39, %40, !dbg !776
  br i1 %41, label %42, label %46, !dbg !777

; <label>:42:                                     ; preds = %38
  %43 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 2), align 8, !dbg !778
  %44 = icmp eq %struct.netif* %43, %0, !dbg !779
  %45 = or i1 %12, %44, !dbg !780
  br i1 %45, label %28, label %46, !dbg !780

; <label>:46:                                     ; preds = %42, %38, %24
  %47 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !772, !tbaa !312
  %48 = icmp eq i8 %47, 0, !dbg !774
  %49 = or i1 %48, %10, !dbg !775
  br i1 %49, label %58, label %50, !dbg !775

; <label>:50:                                     ; preds = %46
  %51 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %52 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %53 = icmp eq i32 %51, %52, !dbg !776
  br i1 %53, label %54, label %58, !dbg !777

; <label>:54:                                     ; preds = %50
  %55 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 2), align 16, !dbg !778
  %56 = icmp eq %struct.netif* %55, %0, !dbg !779
  %57 = or i1 %12, %56, !dbg !780
  br i1 %57, label %28, label %58, !dbg !780

; <label>:58:                                     ; preds = %54, %50, %46
  %59 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !772, !tbaa !312
  %60 = icmp eq i8 %59, 0, !dbg !774
  %61 = or i1 %60, %10, !dbg !775
  br i1 %61, label %70, label %62, !dbg !775

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %64 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %65 = icmp eq i32 %63, %64, !dbg !776
  br i1 %65, label %66, label %70, !dbg !777

; <label>:66:                                     ; preds = %62
  %67 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 2), align 8, !dbg !778
  %68 = icmp eq %struct.netif* %67, %0, !dbg !779
  %69 = or i1 %12, %68, !dbg !780
  br i1 %69, label %28, label %70, !dbg !780

; <label>:70:                                     ; preds = %66, %62, %58
  %71 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !772, !tbaa !312
  %72 = icmp eq i8 %71, 0, !dbg !774
  %73 = or i1 %72, %10, !dbg !775
  br i1 %73, label %82, label %74, !dbg !775

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %76 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %77 = icmp eq i32 %75, %76, !dbg !776
  br i1 %77, label %78, label %82, !dbg !777

; <label>:78:                                     ; preds = %74
  %79 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 2), align 16, !dbg !778
  %80 = icmp eq %struct.netif* %79, %0, !dbg !779
  %81 = or i1 %12, %80, !dbg !780
  br i1 %81, label %28, label %82, !dbg !780

; <label>:82:                                     ; preds = %78, %74, %70
  %83 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !772, !tbaa !312
  %84 = icmp eq i8 %83, 0, !dbg !774
  %85 = or i1 %84, %10, !dbg !775
  br i1 %85, label %94, label %86, !dbg !775

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %88 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %89 = icmp eq i32 %87, %88, !dbg !776
  br i1 %89, label %90, label %94, !dbg !777

; <label>:90:                                     ; preds = %86
  %91 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 2), align 8, !dbg !778
  %92 = icmp eq %struct.netif* %91, %0, !dbg !779
  %93 = or i1 %12, %92, !dbg !780
  br i1 %93, label %28, label %94, !dbg !780

; <label>:94:                                     ; preds = %90, %86, %82
  %95 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !772, !tbaa !312
  %96 = icmp eq i8 %95, 0, !dbg !774
  %97 = or i1 %96, %10, !dbg !775
  br i1 %97, label %106, label %98, !dbg !775

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %100 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %101 = icmp eq i32 %99, %100, !dbg !776
  br i1 %101, label %102, label %106, !dbg !777

; <label>:102:                                    ; preds = %98
  %103 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 2), align 16, !dbg !778
  %104 = icmp eq %struct.netif* %103, %0, !dbg !779
  %105 = or i1 %12, %104, !dbg !780
  br i1 %105, label %28, label %106, !dbg !780

; <label>:106:                                    ; preds = %102, %98, %94
  %107 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !772, !tbaa !312
  %108 = icmp eq i8 %107, 0, !dbg !774
  %109 = or i1 %108, %10, !dbg !775
  br i1 %109, label %118, label %110, !dbg !775

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %112 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %113 = icmp eq i32 %111, %112, !dbg !776
  br i1 %113, label %114, label %118, !dbg !777

; <label>:114:                                    ; preds = %110
  %115 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 2), align 8, !dbg !778
  %116 = icmp eq %struct.netif* %115, %0, !dbg !779
  %117 = or i1 %12, %116, !dbg !780
  br i1 %117, label %28, label %118, !dbg !780

; <label>:118:                                    ; preds = %114, %110, %106
  %119 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !772, !tbaa !312
  %120 = icmp eq i8 %119, 0, !dbg !774
  %121 = or i1 %120, %10, !dbg !775
  br i1 %121, label %130, label %122, !dbg !775

; <label>:122:                                    ; preds = %118
  %123 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %124 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %125 = icmp eq i32 %123, %124, !dbg !776
  br i1 %125, label %126, label %130, !dbg !777

; <label>:126:                                    ; preds = %122
  %127 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 2), align 16, !dbg !778
  %128 = icmp eq %struct.netif* %127, %0, !dbg !779
  %129 = or i1 %12, %128, !dbg !780
  br i1 %129, label %28, label %130, !dbg !780

; <label>:130:                                    ; preds = %126, %122, %118
  %131 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !772, !tbaa !312
  %132 = icmp eq i8 %131, 0, !dbg !774
  %133 = or i1 %132, %10, !dbg !775
  br i1 %133, label %36, label %134, !dbg !775

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* %11, align 4, !dbg !776, !tbaa !458
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !776, !tbaa !549
  %137 = icmp eq i32 %135, %136, !dbg !776
  br i1 %137, label %138, label %36, !dbg !777

; <label>:138:                                    ; preds = %134
  %139 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 2), align 8, !dbg !778
  %140 = icmp eq %struct.netif* %139, %0, !dbg !779
  %141 = or i1 %12, %140, !dbg !780
  br i1 %141, label %28, label %36, !dbg !780
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !162 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !795
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !797
  call void @llvm.va_start(i8* nonnull %3), !dbg !797
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !798
  call void @llvm.va_end(i8* nonnull %3), !dbg !801
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !802
  ret void, !dbg !802
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i32 @etharp_get_entry(i64, %struct.ip4_addr**, %struct.netif**, %struct.eth_addr**) local_unnamed_addr #0 !dbg !803 {
  %5 = icmp eq %struct.ip4_addr** %1, null, !dbg !818
  br i1 %5, label %6, label %7, !dbg !821

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !822
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !825
  tail call void @ukplat_terminate(i32 3) #9, !dbg !825
  unreachable, !dbg !825

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif** %2, null, !dbg !829
  br i1 %8, label %9, label %10, !dbg !832

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !833
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !836
  tail call void @ukplat_terminate(i32 3) #9, !dbg !836
  unreachable, !dbg !836

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.eth_addr** %3, null, !dbg !840
  br i1 %11, label %12, label %13, !dbg !843

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !844
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !847
  tail call void @ukplat_terminate(i32 3) #9, !dbg !847
  unreachable, !dbg !847

; <label>:13:                                     ; preds = %10
  %14 = icmp ult i64 %0, 10, !dbg !851
  br i1 %14, label %15, label %26, !dbg !853

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 5, !dbg !854
  %17 = load i8, i8* %16, align 8, !dbg !854, !tbaa !312
  %18 = icmp ugt i8 %17, 1, !dbg !855
  br i1 %18, label %19, label %26, !dbg !856

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 1, !dbg !857
  store %struct.ip4_addr* %20, %struct.ip4_addr** %1, align 8, !dbg !859, !tbaa !788
  %21 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 2, !dbg !860
  %22 = bitcast %struct.netif** %21 to i64*, !dbg !860
  %23 = load i64, i64* %22, align 8, !dbg !860, !tbaa !365
  %24 = bitcast %struct.netif** %2 to i64*, !dbg !861
  store i64 %23, i64* %24, align 8, !dbg !861, !tbaa !788
  %25 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 3, !dbg !862
  store %struct.eth_addr* %25, %struct.eth_addr** %3, align 8, !dbg !863, !tbaa !788
  br label %26, !dbg !864

; <label>:26:                                     ; preds = %13, %15, %19
  %27 = phi i32 [ 1, %19 ], [ 0, %15 ], [ 0, %13 ], !dbg !865
  ret i32 %27, !dbg !867
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !868 {
  %3 = alloca %struct.ip4_addr, align 4
  %4 = alloca %struct.ip4_addr, align 4
  %5 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6, !dbg !880
  %6 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !880
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !880
  %7 = icmp eq %struct.netif* %1, null, !dbg !881
  br i1 %7, label %8, label %9, !dbg !884

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !885
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !888
  tail call void @ukplat_terminate(i32 3) #9, !dbg !888
  unreachable, !dbg !888

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !892
  %11 = bitcast i8** %10 to %struct.etharp_hdr**, !dbg !892
  %12 = load %struct.etharp_hdr*, %struct.etharp_hdr** %11, align 8, !dbg !892, !tbaa !893
  %13 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 0, !dbg !896
  %14 = load i16, i16* %13, align 1, !dbg !896, !tbaa !898
  %15 = icmp eq i16 %14, 256, !dbg !901
  br i1 %15, label %16, label %28, !dbg !902

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 2, !dbg !903
  %18 = load i8, i8* %17, align 1, !dbg !903, !tbaa !904
  %19 = icmp eq i8 %18, 6, !dbg !905
  br i1 %19, label %20, label %28, !dbg !906

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 3, !dbg !907
  %22 = load i8, i8* %21, align 1, !dbg !907, !tbaa !908
  %23 = icmp eq i8 %22, 4, !dbg !909
  br i1 %23, label %24, label %28, !dbg !910

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 1, !dbg !911
  %26 = load i16, i16* %25, align 1, !dbg !911, !tbaa !912
  %27 = icmp eq i16 %26, 8, !dbg !913
  br i1 %27, label %34, label %28, !dbg !914

; <label>:28:                                     ; preds = %24, %20, %16, %9
  %29 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !915, !tbaa !917
  %30 = add i16 %29, 1, !dbg !915
  store i16 %30, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !915, !tbaa !917
  %31 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !923, !tbaa !924
  %32 = add i16 %31, 1, !dbg !923
  store i16 %32, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !923, !tbaa !924
  %33 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !925
  br label %67, !dbg !926

; <label>:34:                                     ; preds = %24
  %35 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !927, !tbaa !928
  %36 = add i16 %35, 1, !dbg !927
  store i16 %36, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !927, !tbaa !928
  %37 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 6, !dbg !929
  %38 = bitcast %struct.ip4_addr_wordaligned* %37 to i8*, !dbg !929
  %39 = call i8* @memcpy(i8* nonnull %5, i8* nonnull %38, i64 4) #7, !dbg !929
  %40 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 8, !dbg !930
  %41 = bitcast %struct.ip4_addr_wordaligned* %40 to i8*, !dbg !930
  %42 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %41, i64 4) #7, !dbg !930
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, !dbg !931
  %44 = bitcast %union.anon* %43 to %struct.ip4_addr*, !dbg !931
  %45 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0, i32 0, i64 0, !dbg !931
  %46 = load i32, i32* %45, align 8, !dbg !931, !tbaa !933
  %47 = icmp ne i32 %46, 0, !dbg !931
  %48 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !934
  %49 = load i32, i32* %48, align 4, !dbg !934
  %50 = icmp eq i32 %49, %46, !dbg !934
  %51 = and i1 %47, %50, !dbg !936
  %52 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 5, !dbg !937
  %53 = select i1 %51, i8 1, i8 2, !dbg !938
  %54 = call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %1, %struct.ip4_addr* nonnull %3, %struct.eth_addr* nonnull %52, i8 zeroext %53) #8, !dbg !940
  %55 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 4, !dbg !941
  %56 = load i16, i16* %55, align 1, !dbg !941, !tbaa !942
  switch i16 %56, label %62 [
    i16 256, label %57
    i16 512, label %65
  ], !dbg !943

; <label>:57:                                     ; preds = %34
  br i1 %51, label %58, label %65, !dbg !944

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 19, i64 0, !dbg !946
  %60 = bitcast i8* %59 to %struct.eth_addr*, !dbg !949
  %61 = call fastcc signext i8 @etharp_raw(%struct.netif* nonnull %1, %struct.eth_addr* nonnull %60, %struct.eth_addr* nonnull %52, %struct.eth_addr* nonnull %60, %struct.ip4_addr* nonnull %44, %struct.eth_addr* nonnull %52, %struct.ip4_addr* nonnull %3, i16 zeroext 2) #8, !dbg !950
  br label %65, !dbg !951

; <label>:62:                                     ; preds = %34
  %63 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !952, !tbaa !953
  %64 = add i16 %63, 1, !dbg !952
  store i16 %64, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !952, !tbaa !953
  br label %65, !dbg !954

; <label>:65:                                     ; preds = %34, %58, %57, %62
  %66 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !955
  br label %67, !dbg !956

; <label>:67:                                     ; preds = %65, %28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6, !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6, !dbg !956
  ret void, !dbg !956
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_raw(%struct.netif*, %struct.eth_addr*, %struct.eth_addr*, %struct.eth_addr*, %struct.ip4_addr*, %struct.eth_addr*, %struct.ip4_addr*, i16 zeroext) unnamed_addr #0 !dbg !957 {
  %9 = icmp eq %struct.netif* %0, null, !dbg !982
  br i1 %9, label %10, label %11, !dbg !985

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !986
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !989
  tail call void @ukplat_terminate(i32 3) #9, !dbg !989
  unreachable, !dbg !989

; <label>:11:                                     ; preds = %8
  %12 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext 28, i32 640) #7, !dbg !993
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !995
  br i1 %13, label %14, label %17, !dbg !997

; <label>:14:                                     ; preds = %11
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !998, !tbaa !1000
  %16 = add i16 %15, 1, !dbg !998
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !998, !tbaa !1000
  br label %55, !dbg !1001

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 3, !dbg !1002
  %19 = load i16, i16* %18, align 2, !dbg !1002, !tbaa !1005
  %20 = icmp ugt i16 %19, 27, !dbg !1002
  br i1 %20, label %22, label %21, !dbg !1006

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1007
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1010
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1010
  unreachable, !dbg !1010

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 1, !dbg !1014
  %24 = bitcast i8** %23 to %struct.etharp_hdr**, !dbg !1014
  %25 = load %struct.etharp_hdr*, %struct.etharp_hdr** %24, align 8, !dbg !1014, !tbaa !893
  %26 = tail call zeroext i16 @lwip_htons(i16 zeroext %7) #7, !dbg !1016
  %27 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 4, !dbg !1017
  store i16 %26, i16* %27, align 1, !dbg !1018, !tbaa !942
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1019
  %29 = load i8, i8* %28, align 4, !dbg !1019, !tbaa !445
  %30 = icmp eq i8 %29, 6, !dbg !1019
  br i1 %30, label %32, label %31, !dbg !1022

; <label>:31:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1023
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1026
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1026
  unreachable, !dbg !1026

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 5, i32 0, i64 0, !dbg !1030
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %3, i64 0, i32 0, i64 0, !dbg !1030
  %35 = tail call i8* @memcpy(i8* nonnull %33, i8* %34, i64 6) #7, !dbg !1030
  %36 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 7, i32 0, i64 0, !dbg !1031
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %5, i64 0, i32 0, i64 0, !dbg !1031
  %38 = tail call i8* @memcpy(i8* nonnull %36, i8* %37, i64 6) #7, !dbg !1031
  %39 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 6, !dbg !1032
  %40 = bitcast %struct.ip4_addr_wordaligned* %39 to i8*, !dbg !1032
  %41 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1032
  %42 = tail call i8* @memcpy(i8* nonnull %40, i8* %41, i64 4) #7, !dbg !1032
  %43 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 8, !dbg !1033
  %44 = bitcast %struct.ip4_addr_wordaligned* %43 to i8*, !dbg !1033
  %45 = bitcast %struct.ip4_addr* %6 to i8*, !dbg !1033
  %46 = tail call i8* @memcpy(i8* nonnull %44, i8* %45, i64 4) #7, !dbg !1033
  %47 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 0, !dbg !1034
  store i16 256, i16* %47, align 1, !dbg !1035, !tbaa !898
  %48 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 1, !dbg !1036
  store i16 8, i16* %48, align 1, !dbg !1037, !tbaa !912
  %49 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 2, !dbg !1038
  store i8 6, i8* %49, align 1, !dbg !1039, !tbaa !904
  %50 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 3, !dbg !1040
  store i8 4, i8* %50, align 1, !dbg !1041, !tbaa !908
  %51 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %12, %struct.eth_addr* %1, %struct.eth_addr* %2, i16 zeroext 2054) #7, !dbg !1042
  %52 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1044, !tbaa !1045
  %53 = add i16 %52, 1, !dbg !1044
  store i16 %53, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1044, !tbaa !1045
  %54 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %12) #7, !dbg !1046
  br label %55, !dbg !1047

; <label>:55:                                     ; preds = %32, %14
  %56 = phi i8 [ -1, %14 ], [ 0, %32 ], !dbg !1048
  ret i8 %56, !dbg !1049
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_output(%struct.netif*, %struct.pbuf*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !1050 {
  %4 = alloca %struct.eth_addr, align 1
  %5 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 0, !dbg !1065
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1065
  %6 = icmp eq %struct.netif* %0, null, !dbg !1067
  br i1 %6, label %7, label %8, !dbg !1070

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1071
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1074
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1074
  unreachable, !dbg !1074

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1078
  br i1 %9, label %10, label %11, !dbg !1081

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1082
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1085
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1085
  unreachable, !dbg !1085

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip4_addr* %2, null, !dbg !1089
  br i1 %12, label %13, label %14, !dbg !1092

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1093
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1096
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1096
  unreachable, !dbg !1096

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !1100
  %16 = load i32, i32* %15, align 4, !dbg !1100, !tbaa !458
  %17 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %16, %struct.netif* nonnull %0) #7, !dbg !1100
  %18 = icmp eq i8 %17, 0, !dbg !1100
  br i1 %18, label %19, label %97, !dbg !1101

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %15, align 4, !dbg !1102, !tbaa !458
  %21 = zext i32 %20 to i64, !dbg !1102
  %22 = and i64 %21, 240, !dbg !1102
  %23 = icmp eq i64 %22, 224, !dbg !1102
  br i1 %23, label %24, label %38, !dbg !1103

; <label>:24:                                     ; preds = %19
  store i8 1, i8* %5, align 1, !dbg !1104, !tbaa !933
  %25 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 1, !dbg !1106
  store i8 0, i8* %25, align 1, !dbg !1107, !tbaa !933
  %26 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 2, !dbg !1108
  store i8 94, i8* %26, align 1, !dbg !1109, !tbaa !933
  %27 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1110
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1110
  %29 = load i8, i8* %28, align 1, !dbg !1110, !tbaa !933
  %30 = and i8 %29, 127, !dbg !1111
  %31 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 3, !dbg !1112
  store i8 %30, i8* %31, align 1, !dbg !1113, !tbaa !933
  %32 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1114
  %33 = load i8, i8* %32, align 2, !dbg !1114, !tbaa !933
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 4, !dbg !1115
  store i8 %33, i8* %34, align 1, !dbg !1116, !tbaa !933
  %35 = getelementptr inbounds i8, i8* %27, i64 3, !dbg !1117
  %36 = load i8, i8* %35, align 1, !dbg !1117, !tbaa !933
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 5, !dbg !1118
  store i8 %36, i8* %37, align 1, !dbg !1119, !tbaa !933
  br label %97

; <label>:38:                                     ; preds = %19
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !1121
  %40 = load i32, i32* %39, align 8, !dbg !1121, !tbaa !933
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1121
  %42 = load i32, i32* %41, align 8, !dbg !1121, !tbaa !933
  %43 = xor i32 %42, %20, !dbg !1121
  %44 = and i32 %43, %40, !dbg !1121
  %45 = icmp eq i32 %44, 0, !dbg !1121
  %46 = and i64 %21, 65535, !dbg !1123
  %47 = icmp eq i64 %46, 65193, !dbg !1123
  %48 = or i1 %47, %45, !dbg !1124
  br i1 %48, label %56, label %49, !dbg !1124

; <label>:49:                                     ; preds = %38
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, !dbg !1125
  %51 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0, i32 0, i64 0, !dbg !1125
  %52 = load i32, i32* %51, align 8, !dbg !1125, !tbaa !933
  %53 = icmp eq i32 %52, 0, !dbg !1125
  br i1 %53, label %102, label %54, !dbg !1130

; <label>:54:                                     ; preds = %49
  %55 = bitcast %union.anon* %50 to %struct.ip4_addr*, !dbg !1125
  br label %56, !dbg !1131

; <label>:56:                                     ; preds = %54, %38
  %57 = phi %struct.ip4_addr* [ %2, %38 ], [ %55, %54 ], !dbg !1132
  %58 = load i8, i8* @etharp_cached_entry, align 1, !dbg !1134, !tbaa !933
  %59 = zext i8 %58 to i64, !dbg !1136
  %60 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 5, !dbg !1137
  %61 = load i8, i8* %60, align 8, !dbg !1137, !tbaa !312
  %62 = icmp ugt i8 %61, 1, !dbg !1138
  br i1 %62, label %63, label %77, !dbg !1139

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 2, !dbg !1140
  %65 = load %struct.netif*, %struct.netif** %64, align 8, !dbg !1140, !tbaa !365
  %66 = icmp eq %struct.netif* %65, %0, !dbg !1141
  br i1 %66, label %67, label %77, !dbg !1142

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0, !dbg !1143
  %69 = load i32, i32* %68, align 4, !dbg !1143, !tbaa !458
  %70 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 1, i32 0, !dbg !1143
  %71 = load i32, i32* %70, align 8, !dbg !1143, !tbaa !549
  %72 = icmp eq i32 %69, %71, !dbg !1143
  br i1 %72, label %73, label %77, !dbg !1144

; <label>:73:                                     ; preds = %67
  %74 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1145, !tbaa !1147
  %75 = add i16 %74, 1, !dbg !1145
  store i16 %75, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1145, !tbaa !1147
  %76 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %58) #8, !dbg !1148
  br label %102, !dbg !1149

; <label>:77:                                     ; preds = %67, %63, %56
  %78 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0
  %79 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 5), align 16, !dbg !1151, !tbaa !312
  %80 = icmp ugt i8 %79, 1, !dbg !1156
  %81 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 2), align 16, !dbg !1157
  %82 = icmp eq %struct.netif* %81, %0, !dbg !1158
  %83 = and i1 %80, %82, !dbg !1159
  br i1 %83, label %84, label %91, !dbg !1159

; <label>:84:                                     ; preds = %77
  %85 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %86 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 0, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %87 = icmp eq i32 %85, %86, !dbg !1160
  br i1 %87, label %88, label %91, !dbg !1161

; <label>:88:                                     ; preds = %184, %174, %164, %154, %144, %134, %124, %114, %104, %84
  %89 = phi i8 [ 0, %84 ], [ 1, %104 ], [ 2, %114 ], [ 3, %124 ], [ 4, %134 ], [ 5, %144 ], [ 6, %154 ], [ 7, %164 ], [ 8, %174 ], [ 9, %184 ]
  store i8 %89, i8* @etharp_cached_entry, align 1, !dbg !1162, !tbaa !933
  %90 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %89) #8, !dbg !1164
  br label %102, !dbg !1165

; <label>:91:                                     ; preds = %77, %84
  %92 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 5), align 8, !dbg !1151, !tbaa !312
  %93 = icmp ugt i8 %92, 1, !dbg !1156
  %94 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 2), align 8, !dbg !1157
  %95 = icmp eq %struct.netif* %94, %0, !dbg !1158
  %96 = and i1 %93, %95, !dbg !1159
  br i1 %96, label %104, label %108, !dbg !1159

; <label>:97:                                     ; preds = %14, %24
  %98 = phi %struct.eth_addr* [ %4, %24 ], [ @ethbroadcast, %14 ], !dbg !1166
  %99 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1167
  %100 = bitcast i8* %99 to %struct.eth_addr*, !dbg !1168
  %101 = call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, %struct.eth_addr* nonnull %100, %struct.eth_addr* nonnull %98, i16 zeroext 2048) #7, !dbg !1169
  br label %102, !dbg !1170

; <label>:102:                                    ; preds = %73, %88, %188, %49, %97
  %103 = phi i8 [ %101, %97 ], [ %76, %73 ], [ %90, %88 ], [ %189, %188 ], [ -4, %49 ], !dbg !1171
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1172
  ret i8 %103, !dbg !1172

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %106 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 1, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %107 = icmp eq i32 %105, %106, !dbg !1160
  br i1 %107, label %88, label %108, !dbg !1161

; <label>:108:                                    ; preds = %104, %91
  %109 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 5), align 16, !dbg !1151, !tbaa !312
  %110 = icmp ugt i8 %109, 1, !dbg !1156
  %111 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 2), align 16, !dbg !1157
  %112 = icmp eq %struct.netif* %111, %0, !dbg !1158
  %113 = and i1 %110, %112, !dbg !1159
  br i1 %113, label %114, label %118, !dbg !1159

; <label>:114:                                    ; preds = %108
  %115 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %116 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 2, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %117 = icmp eq i32 %115, %116, !dbg !1160
  br i1 %117, label %88, label %118, !dbg !1161

; <label>:118:                                    ; preds = %114, %108
  %119 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 5), align 8, !dbg !1151, !tbaa !312
  %120 = icmp ugt i8 %119, 1, !dbg !1156
  %121 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 2), align 8, !dbg !1157
  %122 = icmp eq %struct.netif* %121, %0, !dbg !1158
  %123 = and i1 %120, %122, !dbg !1159
  br i1 %123, label %124, label %128, !dbg !1159

; <label>:124:                                    ; preds = %118
  %125 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %126 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 3, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %127 = icmp eq i32 %125, %126, !dbg !1160
  br i1 %127, label %88, label %128, !dbg !1161

; <label>:128:                                    ; preds = %124, %118
  %129 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 5), align 16, !dbg !1151, !tbaa !312
  %130 = icmp ugt i8 %129, 1, !dbg !1156
  %131 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 2), align 16, !dbg !1157
  %132 = icmp eq %struct.netif* %131, %0, !dbg !1158
  %133 = and i1 %130, %132, !dbg !1159
  br i1 %133, label %134, label %138, !dbg !1159

; <label>:134:                                    ; preds = %128
  %135 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %136 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 4, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %137 = icmp eq i32 %135, %136, !dbg !1160
  br i1 %137, label %88, label %138, !dbg !1161

; <label>:138:                                    ; preds = %134, %128
  %139 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 5), align 8, !dbg !1151, !tbaa !312
  %140 = icmp ugt i8 %139, 1, !dbg !1156
  %141 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 2), align 8, !dbg !1157
  %142 = icmp eq %struct.netif* %141, %0, !dbg !1158
  %143 = and i1 %140, %142, !dbg !1159
  br i1 %143, label %144, label %148, !dbg !1159

; <label>:144:                                    ; preds = %138
  %145 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %146 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 5, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %147 = icmp eq i32 %145, %146, !dbg !1160
  br i1 %147, label %88, label %148, !dbg !1161

; <label>:148:                                    ; preds = %144, %138
  %149 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 5), align 16, !dbg !1151, !tbaa !312
  %150 = icmp ugt i8 %149, 1, !dbg !1156
  %151 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 2), align 16, !dbg !1157
  %152 = icmp eq %struct.netif* %151, %0, !dbg !1158
  %153 = and i1 %150, %152, !dbg !1159
  br i1 %153, label %154, label %158, !dbg !1159

; <label>:154:                                    ; preds = %148
  %155 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %156 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 6, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %157 = icmp eq i32 %155, %156, !dbg !1160
  br i1 %157, label %88, label %158, !dbg !1161

; <label>:158:                                    ; preds = %154, %148
  %159 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 5), align 8, !dbg !1151, !tbaa !312
  %160 = icmp ugt i8 %159, 1, !dbg !1156
  %161 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 2), align 8, !dbg !1157
  %162 = icmp eq %struct.netif* %161, %0, !dbg !1158
  %163 = and i1 %160, %162, !dbg !1159
  br i1 %163, label %164, label %168, !dbg !1159

; <label>:164:                                    ; preds = %158
  %165 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %166 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 7, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %167 = icmp eq i32 %165, %166, !dbg !1160
  br i1 %167, label %88, label %168, !dbg !1161

; <label>:168:                                    ; preds = %164, %158
  %169 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 5), align 16, !dbg !1151, !tbaa !312
  %170 = icmp ugt i8 %169, 1, !dbg !1156
  %171 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 2), align 16, !dbg !1157
  %172 = icmp eq %struct.netif* %171, %0, !dbg !1158
  %173 = and i1 %170, %172, !dbg !1159
  br i1 %173, label %174, label %178, !dbg !1159

; <label>:174:                                    ; preds = %168
  %175 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %176 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 8, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %177 = icmp eq i32 %175, %176, !dbg !1160
  br i1 %177, label %88, label %178, !dbg !1161

; <label>:178:                                    ; preds = %174, %168
  %179 = load i8, i8* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 5), align 8, !dbg !1151, !tbaa !312
  %180 = icmp ugt i8 %179, 1, !dbg !1156
  %181 = load %struct.netif*, %struct.netif** getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 2), align 8, !dbg !1157
  %182 = icmp eq %struct.netif* %181, %0, !dbg !1158
  %183 = and i1 %180, %182, !dbg !1159
  br i1 %183, label %184, label %188, !dbg !1159

; <label>:184:                                    ; preds = %178
  %185 = load i32, i32* %78, align 4, !dbg !1160, !tbaa !458
  %186 = load i32, i32* getelementptr inbounds ([10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 9, i32 1, i32 0), align 8, !dbg !1160, !tbaa !549
  %187 = icmp eq i32 %185, %186, !dbg !1160
  br i1 %187, label %88, label %188, !dbg !1161

; <label>:188:                                    ; preds = %184, %178
  %189 = tail call signext i8 @etharp_query(%struct.netif* nonnull %0, %struct.ip4_addr* %57, %struct.pbuf* nonnull %1) #8, !dbg !1173
  br label %102, !dbg !1174
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_output_to_arp_index(%struct.netif*, %struct.pbuf*, i8 zeroext) unnamed_addr #0 !dbg !1175 {
  %4 = zext i8 %2 to i64, !dbg !1185
  %5 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 5, !dbg !1185
  %6 = load i8, i8* %5, align 8, !dbg !1185, !tbaa !312
  %7 = icmp ugt i8 %6, 1, !dbg !1185
  br i1 %7, label %9, label %8, !dbg !1188

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1189
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1192
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1192
  unreachable, !dbg !1192

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8 %6, 2, !dbg !1196
  br i1 %10, label %11, label %36, !dbg !1198

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 4, !dbg !1199
  %13 = load i16, i16* %12, align 2, !dbg !1199, !tbaa !327
  %14 = icmp ugt i16 %13, 284, !dbg !1202
  br i1 %14, label %15, label %24, !dbg !1203

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1204
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1214
  %18 = bitcast i8* %17 to %struct.eth_addr*, !dbg !1215
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1216
  %20 = bitcast %union.anon* %19 to %struct.ip4_addr*, !dbg !1216
  %21 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %18, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %18, %struct.ip4_addr* nonnull %20, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %16, i16 zeroext 1) #7, !dbg !1217
  %22 = icmp eq i8 %21, 0, !dbg !1218
  br i1 %22, label %23, label %36, !dbg !1219

; <label>:23:                                     ; preds = %15
  store i8 3, i8* %5, align 8, !dbg !1220, !tbaa !312
  br label %36, !dbg !1222

; <label>:24:                                     ; preds = %11
  %25 = icmp ugt i16 %13, 269, !dbg !1223
  br i1 %25, label %26, label %36, !dbg !1225

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1226
  %28 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1229
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1234
  %30 = bitcast i8* %29 to %struct.eth_addr*, !dbg !1235
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1236
  %32 = bitcast %union.anon* %31 to %struct.ip4_addr*, !dbg !1236
  %33 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %30, %struct.eth_addr* nonnull %28, %struct.eth_addr* nonnull %30, %struct.ip4_addr* nonnull %32, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %27, i16 zeroext 1) #7, !dbg !1237
  %34 = icmp eq i8 %33, 0, !dbg !1238
  br i1 %34, label %35, label %36, !dbg !1239

; <label>:35:                                     ; preds = %26
  store i8 3, i8* %5, align 8, !dbg !1240, !tbaa !312
  br label %36, !dbg !1242

; <label>:36:                                     ; preds = %23, %15, %26, %35, %24, %9
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1243
  %38 = bitcast i8* %37 to %struct.eth_addr*, !dbg !1244
  %39 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1245
  %40 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* %1, %struct.eth_addr* nonnull %38, %struct.eth_addr* nonnull %39, i16 zeroext 2048) #7, !dbg !1246
  ret i8 %40, !dbg !1247
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_query(%struct.netif*, %struct.ip4_addr*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1248 {
  %4 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1268
  %5 = bitcast i8* %4 to %struct.eth_addr*, !dbg !1269
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !1273
  %7 = load i32, i32* %6, align 4, !dbg !1273, !tbaa !458
  %8 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %7, %struct.netif* %0) #7, !dbg !1273
  %9 = icmp eq i8 %8, 0, !dbg !1273
  br i1 %9, label %10, label %96, !dbg !1275

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %6, align 4, !dbg !1276, !tbaa !458
  %12 = and i32 %11, 240, !dbg !1276
  %13 = icmp eq i32 %12, 224, !dbg !1276
  %14 = icmp eq i32 %11, 0, !dbg !1277
  %15 = or i1 %14, %13, !dbg !1278
  br i1 %15, label %96, label %16, !dbg !1278

; <label>:16:                                     ; preds = %10
  %17 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext 1, %struct.netif* %0) #8, !dbg !1279
  %18 = icmp slt i16 %17, 0, !dbg !1281
  br i1 %18, label %19, label %26, !dbg !1283

; <label>:19:                                     ; preds = %16
  %20 = icmp eq %struct.pbuf* %2, null, !dbg !1284
  br i1 %20, label %24, label %21, !dbg !1287

; <label>:21:                                     ; preds = %19
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1288, !tbaa !1000
  %23 = add i16 %22, 1, !dbg !1288
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1288, !tbaa !1000
  br label %24, !dbg !1290

; <label>:24:                                     ; preds = %19, %21
  %25 = trunc i16 %17 to i8, !dbg !1291
  br label %96, !dbg !1292

; <label>:26:                                     ; preds = %16
  %27 = icmp ult i16 %17, 127, !dbg !1293
  br i1 %27, label %29, label %28, !dbg !1296

; <label>:28:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1297
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1300
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1300
  unreachable, !dbg !1300

; <label>:29:                                     ; preds = %26
  %30 = trunc i16 %17 to i8, !dbg !1304
  %31 = and i16 %17, 255, !dbg !1306
  %32 = zext i16 %31 to i64, !dbg !1306
  %33 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 5, !dbg !1308
  %34 = load i8, i8* %33, align 8, !dbg !1308, !tbaa !312
  %35 = icmp eq i8 %34, 0, !dbg !1309
  br i1 %35, label %36, label %44, !dbg !1310

; <label>:36:                                     ; preds = %29
  store i8 1, i8* %33, align 8, !dbg !1311, !tbaa !312
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 2, !dbg !1313
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !1314, !tbaa !365
  %38 = icmp eq %struct.pbuf* %2, null, !dbg !1315
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1325
  %40 = bitcast %union.anon* %39 to %struct.ip4_addr*, !dbg !1325
  %41 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %5, %struct.ip4_addr* nonnull %40, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %1, i16 zeroext 1) #7, !dbg !1326
  br i1 %38, label %96, label %42, !dbg !1327

; <label>:42:                                     ; preds = %36
  %43 = load i8, i8* %33, align 8, !dbg !1328, !tbaa !312
  br label %50, !dbg !1327

; <label>:44:                                     ; preds = %29
  %45 = icmp eq %struct.pbuf* %2, null, !dbg !1315
  br i1 %45, label %46, label %50, !dbg !1329

; <label>:46:                                     ; preds = %44
  %47 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1325
  %48 = bitcast %union.anon* %47 to %struct.ip4_addr*, !dbg !1325
  %49 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %5, %struct.ip4_addr* nonnull %48, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %1, i16 zeroext 1) #7, !dbg !1326
  br label %96, !dbg !1327

; <label>:50:                                     ; preds = %42, %44
  %51 = phi i8 [ %43, %42 ], [ %34, %44 ], !dbg !1328
  %52 = phi i8 [ %41, %42 ], [ -1, %44 ]
  %53 = icmp ugt i8 %51, 1, !dbg !1330
  br i1 %53, label %54, label %57, !dbg !1331

; <label>:54:                                     ; preds = %50
  store i8 %30, i8* @etharp_cached_entry, align 1, !dbg !1332, !tbaa !933
  %55 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 3, !dbg !1334
  %56 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* nonnull %2, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull %55, i16 zeroext 2048) #7, !dbg !1335
  br label %96, !dbg !1336

; <label>:57:                                     ; preds = %50
  %58 = icmp eq i8 %51, 1, !dbg !1337
  br i1 %58, label %59, label %96, !dbg !1338

; <label>:59:                                     ; preds = %57, %76
  %60 = phi %struct.pbuf* [ %78, %76 ], [ %2, %57 ]
  %61 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 3, !dbg !1340
  %62 = load i16, i16* %61, align 2, !dbg !1340, !tbaa !1005
  %63 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 2, !dbg !1340
  %64 = load i16, i16* %63, align 8, !dbg !1340, !tbaa !1344
  %65 = icmp eq i16 %62, %64, !dbg !1340
  br i1 %65, label %66, label %71, !dbg !1340

; <label>:66:                                     ; preds = %59
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 0, !dbg !1340
  %68 = load %struct.pbuf*, %struct.pbuf** %67, align 8, !dbg !1340, !tbaa !1345
  %69 = icmp eq %struct.pbuf* %68, null, !dbg !1340
  br i1 %69, label %71, label %70, !dbg !1346

; <label>:70:                                     ; preds = %66
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1347
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1350
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1350
  unreachable, !dbg !1350

; <label>:71:                                     ; preds = %59, %66
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 4, !dbg !1354
  %73 = load i8, i8* %72, align 4, !dbg !1354, !tbaa !1356
  %74 = and i8 %73, 64, !dbg !1354
  %75 = icmp eq i8 %74, 0, !dbg !1354
  br i1 %75, label %76, label %80, !dbg !1357

; <label>:76:                                     ; preds = %71
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %60, i64 0, i32 0, !dbg !1358
  %78 = load %struct.pbuf*, %struct.pbuf** %77, align 8, !dbg !1358, !tbaa !1345
  %79 = icmp eq %struct.pbuf* %78, null, !dbg !1359
  br i1 %79, label %82, label %59, !dbg !1359, !llvm.loop !1360

; <label>:80:                                     ; preds = %71
  %81 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %2) #7, !dbg !1362
  br label %83, !dbg !1365

; <label>:82:                                     ; preds = %76
  tail call void @pbuf_ref(%struct.pbuf* nonnull %2) #7, !dbg !1366
  br label %83

; <label>:83:                                     ; preds = %82, %80
  %84 = phi %struct.pbuf* [ %81, %80 ], [ %2, %82 ], !dbg !1368
  %85 = icmp eq %struct.pbuf* %84, null, !dbg !1369
  br i1 %85, label %93, label %86, !dbg !1371

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 0, !dbg !1372
  %88 = load %struct.pbuf*, %struct.pbuf** %87, align 8, !dbg !1372, !tbaa !344
  %89 = icmp eq %struct.pbuf* %88, null, !dbg !1375
  br i1 %89, label %92, label %90, !dbg !1376

; <label>:90:                                     ; preds = %86
  %91 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %88) #7, !dbg !1377
  br label %92, !dbg !1379

; <label>:92:                                     ; preds = %86, %90
  store %struct.pbuf* %84, %struct.pbuf** %87, align 8, !dbg !1380, !tbaa !344
  br label %96, !dbg !1381

; <label>:93:                                     ; preds = %83
  %94 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1382, !tbaa !1000
  %95 = add i16 %94, 1, !dbg !1382
  store i16 %95, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1382, !tbaa !1000
  br label %96

; <label>:96:                                     ; preds = %46, %36, %54, %57, %93, %92, %10, %3, %24
  %97 = phi i8 [ %25, %24 ], [ -16, %3 ], [ -16, %10 ], [ %49, %46 ], [ %56, %54 ], [ %52, %57 ], [ 0, %92 ], [ -1, %93 ], [ %41, %36 ], !dbg !1384
  ret i8 %97, !dbg !1385
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
!352 = !DILocation(line: 219, column: 7, scope: !341)
!353 = !DILocation(line: 219, column: 18, scope: !329)
!354 = !DILocation(line: 221, column: 28, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 219, column: 76)
!356 = distinct !DILexicalBlock(scope: !329, file: !3, line: 219, column: 18)
!357 = !DILocation(line: 222, column: 7, scope: !355)
!358 = !DILocation(line: 225, column: 28, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 222, column: 76)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 222, column: 18)
!361 = !DILocation(line: 226, column: 7, scope: !359)
!362 = !DILocation(line: 228, column: 37, scope: !363)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 226, column: 62)
!364 = distinct !DILexicalBlock(scope: !360, file: !3, line: 226, column: 18)
!365 = !{!313, !314, i64 16}
!366 = !DILocation(line: 228, column: 58, scope: !363)
!367 = !DILocalVariable(name: "netif", arg: 1, scope: !368, file: !3, line: 1198, type: !209)
!368 = distinct !DISubprogram(name: "etharp_request", scope: !3, file: !3, line: 1198, type: !369, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!91, !209, !132}
!371 = !{!367, !372}
!372 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !368, file: !3, line: 1198, type: !132)
!373 = !DILocation(line: 1198, column: 30, scope: !368, inlinedAt: !374)
!374 = distinct !DILocation(line: 228, column: 9, scope: !363)
!375 = !DILocation(line: 1198, column: 55, scope: !368, inlinedAt: !374)
!376 = !DILocalVariable(name: "netif", arg: 1, scope: !377, file: !3, line: 1181, type: !209)
!377 = distinct !DISubprogram(name: "etharp_request_dst", scope: !3, file: !3, line: 1181, type: !378, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!91, !209, !132, !143}
!380 = !{!376, !381, !382}
!381 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !377, file: !3, line: 1181, type: !132)
!382 = !DILocalVariable(name: "hw_dst_addr", arg: 3, scope: !377, file: !3, line: 1181, type: !143)
!383 = !DILocation(line: 1181, column: 34, scope: !377, inlinedAt: !384)
!384 = distinct !DILocation(line: 1201, column: 10, scope: !368, inlinedAt: !374)
!385 = !DILocation(line: 1181, column: 59, scope: !377, inlinedAt: !384)
!386 = !DILocation(line: 1181, column: 90, scope: !377, inlinedAt: !384)
!387 = !DILocation(line: 1183, column: 47, scope: !377, inlinedAt: !384)
!388 = !DILocation(line: 1183, column: 28, scope: !377, inlinedAt: !384)
!389 = !DILocation(line: 1184, column: 55, scope: !377, inlinedAt: !384)
!390 = !DILocation(line: 1183, column: 10, scope: !377, inlinedAt: !384)
!391 = !DILocation(line: 229, column: 7, scope: !363)
!392 = !DILocation(line: 203, column: 35, scope: !307)
!393 = !DILocation(line: 203, column: 17, scope: !307)
!394 = distinct !{!394, !310, !395}
!395 = !DILocation(line: 231, column: 3, scope: !308)
!396 = !DILocation(line: 232, column: 1, scope: !300)
!397 = !DILocation(line: 1198, column: 30, scope: !368)
!398 = !DILocation(line: 1198, column: 55, scope: !368)
!399 = !DILocation(line: 1181, column: 34, scope: !377, inlinedAt: !400)
!400 = distinct !DILocation(line: 1201, column: 10, scope: !368)
!401 = !DILocation(line: 1181, column: 59, scope: !377, inlinedAt: !400)
!402 = !DILocation(line: 1181, column: 90, scope: !377, inlinedAt: !400)
!403 = !DILocation(line: 1183, column: 47, scope: !377, inlinedAt: !400)
!404 = !DILocation(line: 1183, column: 28, scope: !377, inlinedAt: !400)
!405 = !DILocation(line: 1184, column: 55, scope: !377, inlinedAt: !400)
!406 = !DILocation(line: 1183, column: 10, scope: !377, inlinedAt: !400)
!407 = !DILocation(line: 1201, column: 3, scope: !368)
!408 = distinct !DISubprogram(name: "etharp_add_static_entry", scope: !3, file: !3, line: 503, type: !409, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !411)
!409 = !DISubroutineType(types: !410)
!410 = !{!91, !132, !142}
!411 = !{!412, !413, !414}
!412 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !408, file: !3, line: 503, type: !132)
!413 = !DILocalVariable(name: "ethaddr", arg: 2, scope: !408, file: !3, line: 503, type: !142)
!414 = !DILocalVariable(name: "netif", scope: !408, file: !3, line: 505, type: !209)
!415 = !DILocation(line: 503, column: 43, scope: !408)
!416 = !DILocation(line: 503, column: 68, scope: !408)
!417 = !DILocation(line: 512, column: 11, scope: !408)
!418 = !DILocation(line: 505, column: 17, scope: !408)
!419 = !DILocation(line: 513, column: 13, scope: !420)
!420 = distinct !DILexicalBlock(scope: !408, file: !3, line: 513, column: 7)
!421 = !DILocation(line: 513, column: 7, scope: !408)
!422 = !DILocation(line: 517, column: 10, scope: !408)
!423 = !DILocation(line: 517, column: 3, scope: !408)
!424 = !DILocation(line: 0, scope: !408)
!425 = !DILocation(line: 518, column: 1, scope: !408)
!426 = distinct !DISubprogram(name: "etharp_update_arp_entry", scope: !3, file: !3, line: 422, type: !427, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!91, !209, !132, !142, !109}
!429 = !{!430, !431, !432, !433, !434, !435}
!430 = !DILocalVariable(name: "netif", arg: 1, scope: !426, file: !3, line: 422, type: !209)
!431 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !426, file: !3, line: 422, type: !132)
!432 = !DILocalVariable(name: "ethaddr", arg: 3, scope: !426, file: !3, line: 422, type: !142)
!433 = !DILocalVariable(name: "flags", arg: 4, scope: !426, file: !3, line: 422, type: !109)
!434 = !DILocalVariable(name: "i", scope: !426, file: !3, line: 424, type: !153)
!435 = !DILocalVariable(name: "p", scope: !436, file: !3, line: 482, type: !196)
!436 = distinct !DILexicalBlock(scope: !437, file: !3, line: 481, column: 31)
!437 = distinct !DILexicalBlock(scope: !426, file: !3, line: 481, column: 7)
!438 = !DILocation(line: 422, column: 39, scope: !426)
!439 = !DILocation(line: 422, column: 64, scope: !426)
!440 = !DILocation(line: 422, column: 89, scope: !426)
!441 = !DILocation(line: 422, column: 103, scope: !426)
!442 = !DILocation(line: 425, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 425, column: 3)
!444 = distinct !DILexicalBlock(scope: !426, file: !3, line: 425, column: 3)
!445 = !{!446, !315, i64 260}
!446 = !{!"netif", !314, i64 0, !447, i64 8, !447, i64 32, !447, i64 56, !315, i64 80, !315, i64 152, !315, i64 156, !315, i64 168, !314, i64 184, !314, i64 192, !314, i64 200, !314, i64 208, !314, i64 216, !314, i64 224, !314, i64 232, !315, i64 240, !320, i64 248, !320, i64 250, !320, i64 252, !315, i64 254, !315, i64 260, !315, i64 261, !315, i64 262, !315, i64 264, !315, i64 265, !315, i64 266, !314, i64 272}
!447 = !{!"ip_addr", !315, i64 0, !315, i64 20}
!448 = !DILocation(line: 425, column: 3, scope: !444)
!449 = !DILocation(line: 425, column: 3, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 425, column: 3)
!451 = distinct !DILexicalBlock(scope: !443, file: !3, line: 425, column: 3)
!452 = !DILocation(line: 425, column: 3, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 425, column: 3)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 425, column: 3)
!455 = distinct !DILexicalBlock(scope: !450, file: !3, line: 425, column: 3)
!456 = !DILocation(line: 431, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !426, file: !3, line: 431, column: 7)
!458 = !{!317, !318, i64 0}
!459 = !DILocation(line: 431, column: 30, scope: !457)
!460 = !DILocation(line: 432, column: 7, scope: !457)
!461 = !DILocation(line: 432, column: 43, scope: !457)
!462 = !DILocation(line: 433, column: 7, scope: !457)
!463 = !DILocation(line: 431, column: 7, scope: !426)
!464 = !DILocation(line: 438, column: 7, scope: !426)
!465 = !DILocation(line: 424, column: 9, scope: !426)
!466 = !DILocation(line: 440, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !426, file: !3, line: 440, column: 7)
!468 = !DILocation(line: 440, column: 7, scope: !426)
!469 = !DILocation(line: 441, column: 12, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !3, line: 440, column: 14)
!471 = !DILocation(line: 441, column: 5, scope: !470)
!472 = !DILocation(line: 445, column: 13, scope: !473)
!473 = distinct !DILexicalBlock(scope: !426, file: !3, line: 445, column: 7)
!474 = !DILocation(line: 0, scope: !475)
!475 = distinct !DILexicalBlock(scope: !473, file: !3, line: 448, column: 14)
!476 = !DILocation(line: 445, column: 7, scope: !426)
!477 = !DILocation(line: 448, column: 27, scope: !475)
!478 = !DILocation(line: 448, column: 33, scope: !475)
!479 = !DILocation(line: 448, column: 14, scope: !473)
!480 = !DILocation(line: 0, scope: !481)
!481 = distinct !DILexicalBlock(scope: !473, file: !3, line: 445, column: 41)
!482 = !DILocation(line: 459, column: 16, scope: !426)
!483 = !DILocation(line: 459, column: 22, scope: !426)
!484 = !DILocation(line: 465, column: 3, scope: !426)
!485 = !DILocation(line: 467, column: 16, scope: !426)
!486 = !DILocation(line: 467, column: 22, scope: !426)
!487 = !DILocation(line: 481, column: 20, scope: !437)
!488 = !DILocation(line: 481, column: 22, scope: !437)
!489 = !DILocation(line: 481, column: 7, scope: !426)
!490 = !DILocation(line: 482, column: 18, scope: !436)
!491 = !DILocation(line: 483, column: 20, scope: !436)
!492 = !DILocation(line: 486, column: 50, scope: !436)
!493 = !DILocation(line: 486, column: 31, scope: !436)
!494 = !DILocation(line: 486, column: 5, scope: !436)
!495 = !DILocation(line: 488, column: 5, scope: !436)
!496 = !DILocation(line: 489, column: 3, scope: !436)
!497 = !DILocation(line: 0, scope: !498)
!498 = distinct !DILexicalBlock(scope: !475, file: !3, line: 448, column: 57)
!499 = !DILocation(line: 491, column: 1, scope: !426)
!500 = distinct !DISubprogram(name: "etharp_remove_static_entry", scope: !3, file: !3, line: 529, type: !501, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{!91, !132}
!503 = !{!504, !505}
!504 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !500, file: !3, line: 529, type: !132)
!505 = !DILocalVariable(name: "i", scope: !500, file: !3, line: 531, type: !153)
!506 = !DILocation(line: 529, column: 46, scope: !500)
!507 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !508, file: !3, line: 256, type: !132)
!508 = distinct !DISubprogram(name: "etharp_find_entry", scope: !3, file: !3, line: 256, type: !509, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!153, !132, !109, !209}
!511 = !{!507, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!512 = !DILocalVariable(name: "flags", arg: 2, scope: !508, file: !3, line: 256, type: !109)
!513 = !DILocalVariable(name: "netif", arg: 3, scope: !508, file: !3, line: 256, type: !209)
!514 = !DILocalVariable(name: "old_pending", scope: !508, file: !3, line: 258, type: !153)
!515 = !DILocalVariable(name: "old_stable", scope: !508, file: !3, line: 258, type: !153)
!516 = !DILocalVariable(name: "empty", scope: !508, file: !3, line: 259, type: !153)
!517 = !DILocalVariable(name: "i", scope: !508, file: !3, line: 260, type: !153)
!518 = !DILocalVariable(name: "old_queue", scope: !508, file: !3, line: 262, type: !153)
!519 = !DILocalVariable(name: "age_queue", scope: !508, file: !3, line: 264, type: !103)
!520 = !DILocalVariable(name: "age_pending", scope: !508, file: !3, line: 264, type: !103)
!521 = !DILocalVariable(name: "age_stable", scope: !508, file: !3, line: 264, type: !103)
!522 = !DILocalVariable(name: "state", scope: !523, file: !3, line: 284, type: !109)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 283, column: 40)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 283, column: 3)
!525 = distinct !DILexicalBlock(scope: !508, file: !3, line: 283, column: 3)
!526 = !DILocation(line: 256, column: 37, scope: !508, inlinedAt: !527)
!527 = distinct !DILocation(line: 537, column: 7, scope: !500)
!528 = !DILocation(line: 256, column: 50, scope: !508, inlinedAt: !527)
!529 = !DILocation(line: 256, column: 71, scope: !508, inlinedAt: !527)
!530 = !DILocation(line: 258, column: 9, scope: !508, inlinedAt: !527)
!531 = !DILocation(line: 258, column: 39, scope: !508, inlinedAt: !527)
!532 = !DILocation(line: 259, column: 9, scope: !508, inlinedAt: !527)
!533 = !DILocation(line: 260, column: 9, scope: !508, inlinedAt: !527)
!534 = !DILocation(line: 262, column: 9, scope: !508, inlinedAt: !527)
!535 = !DILocation(line: 264, column: 9, scope: !508, inlinedAt: !527)
!536 = !DILocation(line: 264, column: 24, scope: !508, inlinedAt: !527)
!537 = !DILocation(line: 264, column: 41, scope: !508, inlinedAt: !527)
!538 = !DILocation(line: 284, column: 31, scope: !523, inlinedAt: !527)
!539 = !DILocation(line: 284, column: 10, scope: !523, inlinedAt: !527)
!540 = !DILocation(line: 286, column: 45, scope: !541, inlinedAt: !527)
!541 = distinct !DILexicalBlock(scope: !523, file: !3, line: 286, column: 9)
!542 = !DILocation(line: 286, column: 35, scope: !541, inlinedAt: !527)
!543 = !DILocation(line: 290, column: 16, scope: !541, inlinedAt: !527)
!544 = !DILocation(line: 294, column: 18, scope: !545, inlinedAt: !527)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 294, column: 11)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 290, column: 45)
!547 = distinct !DILexicalBlock(scope: !541, file: !3, line: 290, column: 16)
!548 = !DILocation(line: 294, column: 21, scope: !545, inlinedAt: !527)
!549 = !{!313, !318, i64 8}
!550 = !DILocation(line: 296, column: 11, scope: !545, inlinedAt: !527)
!551 = !DILocation(line: 531, column: 9, scope: !500)
!552 = !DILocation(line: 543, column: 20, scope: !553)
!553 = distinct !DILexicalBlock(scope: !500, file: !3, line: 543, column: 7)
!554 = !DILocation(line: 543, column: 26, scope: !553)
!555 = !DILocation(line: 543, column: 7, scope: !500)
!556 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !557)
!557 = distinct !DILocation(line: 548, column: 3, scope: !500)
!558 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !557)
!559 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !557)
!560 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !557)
!561 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !557)
!562 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !557)
!563 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !557)
!564 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !557)
!565 = !DILocation(line: 549, column: 3, scope: !500)
!566 = !DILocation(line: 0, scope: !500)
!567 = !DILocation(line: 550, column: 1, scope: !500)
!568 = !DILocation(line: 286, column: 16, scope: !541, inlinedAt: !527)
!569 = !DILocation(line: 256, column: 37, scope: !508)
!570 = !DILocation(line: 256, column: 50, scope: !508)
!571 = !DILocation(line: 256, column: 71, scope: !508)
!572 = !DILocation(line: 258, column: 9, scope: !508)
!573 = !DILocation(line: 258, column: 39, scope: !508)
!574 = !DILocation(line: 259, column: 9, scope: !508)
!575 = !DILocation(line: 260, column: 9, scope: !508)
!576 = !DILocation(line: 262, column: 9, scope: !508)
!577 = !DILocation(line: 264, column: 9, scope: !508)
!578 = !DILocation(line: 264, column: 24, scope: !508)
!579 = !DILocation(line: 264, column: 41, scope: !508)
!580 = !DILocation(line: 283, column: 3, scope: !525)
!581 = !DILocation(line: 284, column: 31, scope: !523)
!582 = !DILocation(line: 284, column: 10, scope: !523)
!583 = !DILocation(line: 286, column: 16, scope: !541)
!584 = !DILocation(line: 286, column: 45, scope: !541)
!585 = !DILocation(line: 286, column: 35, scope: !541)
!586 = !DILocation(line: 290, column: 16, scope: !541)
!587 = !DILocation(line: 291, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 291, column: 7)
!589 = distinct !DILexicalBlock(scope: !546, file: !3, line: 291, column: 7)
!590 = !DILocation(line: 294, column: 18, scope: !545)
!591 = !DILocation(line: 294, column: 21, scope: !545)
!592 = !DILocation(line: 296, column: 11, scope: !545)
!593 = !DILocation(line: 296, column: 31, scope: !545)
!594 = !DILocation(line: 296, column: 57, scope: !545)
!595 = !DILocation(line: 296, column: 41, scope: !545)
!596 = !DILocation(line: 294, column: 11, scope: !546)
!597 = !DILocation(line: 304, column: 11, scope: !546)
!598 = !DILocation(line: 306, column: 26, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 306, column: 13)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 304, column: 42)
!601 = distinct !DILexicalBlock(scope: !546, file: !3, line: 304, column: 11)
!602 = !DILocation(line: 306, column: 28, scope: !599)
!603 = !DILocation(line: 0, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 314, column: 15)
!605 = distinct !DILexicalBlock(scope: !599, file: !3, line: 313, column: 9)
!606 = !DILocation(line: 306, column: 13, scope: !600)
!607 = !DILocation(line: 307, column: 34, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 307, column: 15)
!609 = distinct !DILexicalBlock(scope: !599, file: !3, line: 306, column: 37)
!610 = !DILocation(line: 307, column: 15, scope: !609)
!611 = !DILocation(line: 314, column: 34, scope: !604)
!612 = !DILocation(line: 314, column: 15, scope: !605)
!613 = !DILocation(line: 323, column: 19, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 323, column: 13)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 320, column: 48)
!616 = distinct !DILexicalBlock(scope: !601, file: !3, line: 320, column: 18)
!617 = !DILocation(line: 320, column: 18, scope: !601)
!618 = !DILocation(line: 327, column: 28, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 327, column: 15)
!620 = distinct !DILexicalBlock(scope: !614, file: !3, line: 325, column: 9)
!621 = !DILocation(line: 327, column: 34, scope: !619)
!622 = !DILocation(line: 327, column: 15, scope: !620)
!623 = !DILocation(line: 283, column: 35, scope: !524)
!624 = !DILocation(line: 283, column: 17, scope: !524)
!625 = distinct !{!625, !580, !626}
!626 = !DILocation(line: 334, column: 3, scope: !525)
!627 = !DILocation(line: 338, column: 9, scope: !628)
!628 = distinct !DILexicalBlock(scope: !508, file: !3, line: 338, column: 7)
!629 = !DILocation(line: 338, column: 15, scope: !628)
!630 = !DILocation(line: 338, column: 40, scope: !628)
!631 = !DILocation(line: 338, column: 46, scope: !628)
!632 = !DILocation(line: 340, column: 15, scope: !628)
!633 = !DILocation(line: 340, column: 45, scope: !628)
!634 = !DILocation(line: 340, column: 69, scope: !628)
!635 = !DILocation(line: 340, column: 34, scope: !628)
!636 = !DILocation(line: 355, column: 13, scope: !637)
!637 = distinct !DILexicalBlock(scope: !508, file: !3, line: 355, column: 7)
!638 = !DILocation(line: 355, column: 7, scope: !508)
!639 = !DILocation(line: 360, column: 20, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 360, column: 9)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 358, column: 10)
!642 = !DILocation(line: 360, column: 9, scope: !641)
!643 = !DILocation(line: 365, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 365, column: 7)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 365, column: 7)
!646 = distinct !DILexicalBlock(scope: !640, file: !3, line: 360, column: 38)
!647 = !DILocation(line: 365, column: 7, scope: !645)
!648 = !DILocation(line: 365, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 365, column: 7)
!650 = distinct !DILexicalBlock(scope: !644, file: !3, line: 365, column: 7)
!651 = !DILocation(line: 365, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 365, column: 7)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 365, column: 7)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 365, column: 7)
!655 = !DILocation(line: 367, column: 28, scope: !656)
!656 = distinct !DILexicalBlock(scope: !640, file: !3, line: 367, column: 16)
!657 = !DILocation(line: 367, column: 16, scope: !640)
!658 = !DILocation(line: 372, column: 26, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 372, column: 16)
!660 = !DILocation(line: 372, column: 16, scope: !656)
!661 = !DILocation(line: 0, scope: !662)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 372, column: 44)
!663 = !DILocation(line: 173, column: 7, scope: !343, inlinedAt: !664)
!664 = distinct !DILocation(line: 384, column: 5, scope: !641)
!665 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !664)
!666 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !664)
!667 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !664)
!668 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !664)
!669 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !664)
!670 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !664)
!671 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !664)
!672 = !DILocation(line: 180, column: 16, scope: !335, inlinedAt: !664)
!673 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !664)
!674 = !DILocation(line: 388, column: 3, scope: !675)
!675 = distinct !DILexicalBlock(scope: !508, file: !3, line: 388, column: 3)
!676 = !DILocation(line: 388, column: 3, scope: !677)
!677 = distinct !DILexicalBlock(scope: !675, file: !3, line: 388, column: 3)
!678 = !DILocation(line: 388, column: 3, scope: !679)
!679 = distinct !DILexicalBlock(scope: !680, file: !3, line: 388, column: 3)
!680 = distinct !DILexicalBlock(scope: !677, file: !3, line: 388, column: 3)
!681 = !DILocation(line: 388, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 388, column: 3)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 388, column: 3)
!684 = distinct !DILexicalBlock(scope: !679, file: !3, line: 388, column: 3)
!685 = !DILocation(line: 392, column: 7, scope: !508)
!686 = !DILocation(line: 394, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 392, column: 23)
!688 = distinct !DILexicalBlock(scope: !508, file: !3, line: 392, column: 7)
!689 = !DILocation(line: 395, column: 3, scope: !687)
!690 = !DILocation(line: 396, column: 16, scope: !508)
!691 = !DILocation(line: 396, column: 22, scope: !508)
!692 = !DILocation(line: 398, column: 16, scope: !508)
!693 = !DILocation(line: 398, column: 22, scope: !508)
!694 = !DILocation(line: 400, column: 3, scope: !508)
!695 = !DILocation(line: 401, column: 1, scope: !508)
!696 = distinct !DISubprogram(name: "etharp_cleanup_netif", scope: !3, file: !3, line: 559, type: !269, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !697)
!697 = !{!698, !699, !700}
!698 = !DILocalVariable(name: "netif", arg: 1, scope: !696, file: !3, line: 559, type: !209)
!699 = !DILocalVariable(name: "i", scope: !696, file: !3, line: 561, type: !21)
!700 = !DILocalVariable(name: "state", scope: !701, file: !3, line: 564, type: !109)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 563, column: 40)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 563, column: 3)
!703 = distinct !DILexicalBlock(scope: !696, file: !3, line: 563, column: 3)
!704 = !DILocation(line: 559, column: 36, scope: !696)
!705 = !DILocation(line: 561, column: 7, scope: !696)
!706 = !DILocation(line: 563, column: 3, scope: !703)
!707 = !DILocation(line: 564, column: 31, scope: !701)
!708 = !DILocation(line: 564, column: 10, scope: !701)
!709 = !DILocation(line: 565, column: 16, scope: !710)
!710 = distinct !DILexicalBlock(scope: !701, file: !3, line: 565, column: 9)
!711 = !DILocation(line: 565, column: 39, scope: !710)
!712 = !DILocation(line: 565, column: 56, scope: !710)
!713 = !DILocation(line: 565, column: 62, scope: !710)
!714 = !DILocation(line: 565, column: 9, scope: !701)
!715 = !DILocation(line: 168, column: 23, scope: !335, inlinedAt: !716)
!716 = distinct !DILocation(line: 566, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !710, file: !3, line: 565, column: 73)
!718 = !DILocation(line: 173, column: 20, scope: !343, inlinedAt: !716)
!719 = !DILocation(line: 173, column: 22, scope: !343, inlinedAt: !716)
!720 = !DILocation(line: 173, column: 7, scope: !335, inlinedAt: !716)
!721 = !DILocation(line: 176, column: 5, scope: !348, inlinedAt: !716)
!722 = !DILocation(line: 177, column: 20, scope: !348, inlinedAt: !716)
!723 = !DILocation(line: 178, column: 3, scope: !348, inlinedAt: !716)
!724 = !DILocation(line: 180, column: 22, scope: !335, inlinedAt: !716)
!725 = !DILocation(line: 567, column: 5, scope: !717)
!726 = !DILocation(line: 563, column: 35, scope: !702)
!727 = !DILocation(line: 563, column: 17, scope: !702)
!728 = distinct !{!728, !706, !729}
!729 = !DILocation(line: 568, column: 3, scope: !703)
!730 = !DILocation(line: 569, column: 1, scope: !696)
!731 = distinct !DISubprogram(name: "etharp_find_addr", scope: !3, file: !3, line: 583, type: !732, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !740)
!732 = !DISubroutineType(types: !733)
!733 = !{!734, !209, !132, !738, !739}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !735, line: 200, baseType: !736)
!735 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !150, line: 145, baseType: !737)
!737 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!740 = !{!741, !742, !743, !744, !745}
!741 = !DILocalVariable(name: "netif", arg: 1, scope: !731, file: !3, line: 583, type: !209)
!742 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !731, file: !3, line: 583, type: !132)
!743 = !DILocalVariable(name: "eth_ret", arg: 3, scope: !731, file: !3, line: 584, type: !738)
!744 = !DILocalVariable(name: "ip_ret", arg: 4, scope: !731, file: !3, line: 584, type: !739)
!745 = !DILocalVariable(name: "i", scope: !731, file: !3, line: 586, type: !153)
!746 = !DILocation(line: 583, column: 32, scope: !731)
!747 = !DILocation(line: 583, column: 57, scope: !731)
!748 = !DILocation(line: 584, column: 36, scope: !731)
!749 = !DILocation(line: 584, column: 64, scope: !731)
!750 = !DILocation(line: 588, column: 3, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 588, column: 3)
!752 = distinct !DILexicalBlock(scope: !731, file: !3, line: 588, column: 3)
!753 = !DILocation(line: 588, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 588, column: 3)
!755 = distinct !DILexicalBlock(scope: !751, file: !3, line: 588, column: 3)
!756 = !DILocation(line: 588, column: 3, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 588, column: 3)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 588, column: 3)
!759 = distinct !DILexicalBlock(scope: !754, file: !3, line: 588, column: 3)
!760 = !DILocation(line: 256, column: 37, scope: !508, inlinedAt: !761)
!761 = distinct !DILocation(line: 593, column: 7, scope: !731)
!762 = !DILocation(line: 256, column: 50, scope: !508, inlinedAt: !761)
!763 = !DILocation(line: 256, column: 71, scope: !508, inlinedAt: !761)
!764 = !DILocation(line: 258, column: 9, scope: !508, inlinedAt: !761)
!765 = !DILocation(line: 258, column: 39, scope: !508, inlinedAt: !761)
!766 = !DILocation(line: 259, column: 9, scope: !508, inlinedAt: !761)
!767 = !DILocation(line: 260, column: 9, scope: !508, inlinedAt: !761)
!768 = !DILocation(line: 262, column: 9, scope: !508, inlinedAt: !761)
!769 = !DILocation(line: 264, column: 9, scope: !508, inlinedAt: !761)
!770 = !DILocation(line: 264, column: 24, scope: !508, inlinedAt: !761)
!771 = !DILocation(line: 264, column: 41, scope: !508, inlinedAt: !761)
!772 = !DILocation(line: 284, column: 31, scope: !523, inlinedAt: !761)
!773 = !DILocation(line: 284, column: 10, scope: !523, inlinedAt: !761)
!774 = !DILocation(line: 286, column: 45, scope: !541, inlinedAt: !761)
!775 = !DILocation(line: 286, column: 35, scope: !541, inlinedAt: !761)
!776 = !DILocation(line: 294, column: 21, scope: !545, inlinedAt: !761)
!777 = !DILocation(line: 296, column: 11, scope: !545, inlinedAt: !761)
!778 = !DILocation(line: 296, column: 57, scope: !545, inlinedAt: !761)
!779 = !DILocation(line: 296, column: 41, scope: !545, inlinedAt: !761)
!780 = !DILocation(line: 296, column: 31, scope: !545, inlinedAt: !761)
!781 = !DILocation(line: 594, column: 33, scope: !782)
!782 = distinct !DILexicalBlock(scope: !731, file: !3, line: 594, column: 7)
!783 = !DILocation(line: 594, column: 39, scope: !782)
!784 = !DILocation(line: 594, column: 7, scope: !731)
!785 = !DILocation(line: 595, column: 30, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !3, line: 594, column: 64)
!787 = !DILocation(line: 595, column: 14, scope: !786)
!788 = !{!314, !314, i64 0}
!789 = !DILocation(line: 596, column: 29, scope: !786)
!790 = !DILocation(line: 596, column: 13, scope: !786)
!791 = !DILocation(line: 597, column: 5, scope: !786)
!792 = !DILocation(line: 0, scope: !731)
!793 = !DILocation(line: 600, column: 1, scope: !731)
!794 = !DILocation(line: 194, column: 43, scope: !162)
!795 = !DILocation(line: 196, column: 2, scope: !162)
!796 = !DILocation(line: 196, column: 10, scope: !162)
!797 = !DILocation(line: 197, column: 2, scope: !162)
!798 = !DILocation(line: 198, column: 2, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !163, line: 198, column: 2)
!800 = distinct !DILexicalBlock(scope: !162, file: !163, line: 198, column: 2)
!801 = !DILocation(line: 199, column: 2, scope: !162)
!802 = !DILocation(line: 200, column: 1, scope: !162)
!803 = distinct !DISubprogram(name: "etharp_get_entry", scope: !3, file: !3, line: 612, type: !804, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !809)
!804 = !DISubroutineType(types: !805)
!805 = !{!21, !147, !806, !808, !738}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!809 = !{!810, !811, !812, !813}
!810 = !DILocalVariable(name: "i", arg: 1, scope: !803, file: !3, line: 612, type: !147)
!811 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !803, file: !3, line: 612, type: !806)
!812 = !DILocalVariable(name: "netif", arg: 3, scope: !803, file: !3, line: 612, type: !808)
!813 = !DILocalVariable(name: "eth_ret", arg: 4, scope: !803, file: !3, line: 612, type: !738)
!814 = !DILocation(line: 612, column: 25, scope: !803)
!815 = !DILocation(line: 612, column: 41, scope: !803)
!816 = !DILocation(line: 612, column: 64, scope: !803)
!817 = !DILocation(line: 612, column: 89, scope: !803)
!818 = !DILocation(line: 614, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 614, column: 3)
!820 = distinct !DILexicalBlock(scope: !803, file: !3, line: 614, column: 3)
!821 = !DILocation(line: 614, column: 3, scope: !820)
!822 = !DILocation(line: 614, column: 3, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 614, column: 3)
!824 = distinct !DILexicalBlock(scope: !819, file: !3, line: 614, column: 3)
!825 = !DILocation(line: 614, column: 3, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 614, column: 3)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 614, column: 3)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 614, column: 3)
!829 = !DILocation(line: 615, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 615, column: 3)
!831 = distinct !DILexicalBlock(scope: !803, file: !3, line: 615, column: 3)
!832 = !DILocation(line: 615, column: 3, scope: !831)
!833 = !DILocation(line: 615, column: 3, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 615, column: 3)
!835 = distinct !DILexicalBlock(scope: !830, file: !3, line: 615, column: 3)
!836 = !DILocation(line: 615, column: 3, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 615, column: 3)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 615, column: 3)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 615, column: 3)
!840 = !DILocation(line: 616, column: 3, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 616, column: 3)
!842 = distinct !DILexicalBlock(scope: !803, file: !3, line: 616, column: 3)
!843 = !DILocation(line: 616, column: 3, scope: !842)
!844 = !DILocation(line: 616, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 616, column: 3)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 616, column: 3)
!847 = !DILocation(line: 616, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 616, column: 3)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 616, column: 3)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 616, column: 3)
!851 = !DILocation(line: 618, column: 10, scope: !852)
!852 = distinct !DILexicalBlock(scope: !803, file: !3, line: 618, column: 7)
!853 = !DILocation(line: 618, column: 28, scope: !852)
!854 = !DILocation(line: 618, column: 45, scope: !852)
!855 = !DILocation(line: 618, column: 51, scope: !852)
!856 = !DILocation(line: 618, column: 7, scope: !803)
!857 = !DILocation(line: 619, column: 30, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !3, line: 618, column: 76)
!859 = !DILocation(line: 619, column: 14, scope: !858)
!860 = !DILocation(line: 620, column: 29, scope: !858)
!861 = !DILocation(line: 620, column: 14, scope: !858)
!862 = !DILocation(line: 621, column: 30, scope: !858)
!863 = !DILocation(line: 621, column: 14, scope: !858)
!864 = !DILocation(line: 622, column: 5, scope: !858)
!865 = !DILocation(line: 0, scope: !866)
!866 = distinct !DILexicalBlock(scope: !852, file: !3, line: 623, column: 10)
!867 = !DILocation(line: 626, column: 1, scope: !803)
!868 = distinct !DISubprogram(name: "etharp_input", scope: !3, file: !3, line: 641, type: !869, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !196, !209}
!871 = !{!872, !873, !874, !875, !876, !877}
!872 = !DILocalVariable(name: "p", arg: 1, scope: !868, file: !3, line: 641, type: !196)
!873 = !DILocalVariable(name: "netif", arg: 2, scope: !868, file: !3, line: 641, type: !209)
!874 = !DILocalVariable(name: "hdr", scope: !868, file: !3, line: 643, type: !99)
!875 = !DILocalVariable(name: "sipaddr", scope: !868, file: !3, line: 645, type: !134)
!876 = !DILocalVariable(name: "dipaddr", scope: !868, file: !3, line: 645, type: !134)
!877 = !DILocalVariable(name: "for_us", scope: !868, file: !3, line: 646, type: !109)
!878 = !DILocation(line: 641, column: 27, scope: !868)
!879 = !DILocation(line: 641, column: 44, scope: !868)
!880 = !DILocation(line: 645, column: 3, scope: !868)
!881 = !DILocation(line: 650, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 650, column: 3)
!883 = distinct !DILexicalBlock(scope: !868, file: !3, line: 650, column: 3)
!884 = !DILocation(line: 650, column: 3, scope: !883)
!885 = !DILocation(line: 650, column: 3, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 650, column: 3)
!887 = distinct !DILexicalBlock(scope: !882, file: !3, line: 650, column: 3)
!888 = !DILocation(line: 650, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 650, column: 3)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 650, column: 3)
!891 = distinct !DILexicalBlock(scope: !886, file: !3, line: 650, column: 3)
!892 = !DILocation(line: 652, column: 33, scope: !868)
!893 = !{!894, !314, i64 8}
!894 = !{!"pbuf", !314, i64 0, !314, i64 8, !320, i64 16, !320, i64 18, !315, i64 20, !315, i64 21, !315, i64 22, !315, i64 23}
!895 = !DILocation(line: 643, column: 22, scope: !868)
!896 = !DILocation(line: 655, column: 13, scope: !897)
!897 = distinct !DILexicalBlock(scope: !868, file: !3, line: 655, column: 7)
!898 = !{!899, !320, i64 0}
!899 = !{!"etharp_hdr", !320, i64 0, !320, i64 2, !315, i64 4, !315, i64 5, !320, i64 6, !319, i64 8, !900, i64 14, !319, i64 18, !900, i64 24}
!900 = !{!"ip4_addr_wordaligned", !315, i64 0}
!901 = !DILocation(line: 655, column: 20, scope: !897)
!902 = !DILocation(line: 655, column: 60, scope: !897)
!903 = !DILocation(line: 656, column: 13, scope: !897)
!904 = !{!899, !315, i64 4}
!905 = !DILocation(line: 656, column: 19, scope: !897)
!906 = !DILocation(line: 656, column: 38, scope: !897)
!907 = !DILocation(line: 657, column: 13, scope: !897)
!908 = !{!899, !315, i64 5}
!909 = !DILocation(line: 657, column: 22, scope: !897)
!910 = !DILocation(line: 657, column: 45, scope: !897)
!911 = !DILocation(line: 658, column: 13, scope: !897)
!912 = !{!899, !320, i64 2}
!913 = !DILocation(line: 658, column: 19, scope: !897)
!914 = !DILocation(line: 655, column: 7, scope: !868)
!915 = !DILocation(line: 662, column: 5, scope: !916)
!916 = distinct !DILexicalBlock(scope: !897, file: !3, line: 658, column: 46)
!917 = !{!918, !320, i64 40}
!918 = !{!"stats_", !919, i64 0, !919, i64 24, !919, i64 48, !919, i64 72, !919, i64 96, !919, i64 120, !919, i64 144, !920, i64 168, !919, i64 186, !919, i64 210, !919, i64 234, !922, i64 258, !919, i64 286}
!919 = !{!"stats_proto", !320, i64 0, !320, i64 2, !320, i64 4, !320, i64 6, !320, i64 8, !320, i64 10, !320, i64 12, !320, i64 14, !320, i64 16, !320, i64 18, !320, i64 20, !320, i64 22}
!920 = !{!"stats_sys", !921, i64 0, !921, i64 6, !921, i64 12}
!921 = !{!"stats_syselem", !320, i64 0, !320, i64 2, !320, i64 4}
!922 = !{!"stats_igmp", !320, i64 0, !320, i64 2, !320, i64 4, !320, i64 6, !320, i64 8, !320, i64 10, !320, i64 12, !320, i64 14, !320, i64 16, !320, i64 18, !320, i64 20, !320, i64 22, !320, i64 24, !320, i64 26}
!923 = !DILocation(line: 663, column: 5, scope: !916)
!924 = !{!918, !320, i64 30}
!925 = !DILocation(line: 664, column: 5, scope: !916)
!926 = !DILocation(line: 665, column: 5, scope: !916)
!927 = !DILocation(line: 667, column: 3, scope: !868)
!928 = !{!918, !320, i64 26}
!929 = !DILocation(line: 678, column: 3, scope: !868)
!930 = !DILocation(line: 679, column: 3, scope: !868)
!931 = !DILocation(line: 682, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !868, file: !3, line: 682, column: 7)
!933 = !{!315, !315, i64 0}
!934 = !DILocation(line: 686, column: 20, scope: !935)
!935 = distinct !DILexicalBlock(scope: !932, file: !3, line: 684, column: 10)
!936 = !DILocation(line: 682, column: 7, scope: !868)
!937 = !DILocation(line: 694, column: 51, scope: !868)
!938 = !DILocation(line: 695, column: 27, scope: !868)
!939 = !DILocation(line: 645, column: 14, scope: !868)
!940 = !DILocation(line: 694, column: 3, scope: !868)
!941 = !DILocation(line: 698, column: 16, scope: !868)
!942 = !{!899, !320, i64 6}
!943 = !DILocation(line: 698, column: 3, scope: !868)
!944 = !DILocation(line: 707, column: 11, scope: !945)
!945 = distinct !DILexicalBlock(scope: !868, file: !3, line: 698, column: 24)
!946 = !DILocation(line: 710, column: 39, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 707, column: 19)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 707, column: 11)
!949 = !DILocation(line: 710, column: 20, scope: !947)
!950 = !DILocation(line: 709, column: 9, scope: !947)
!951 = !DILocation(line: 715, column: 7, scope: !947)
!952 = !DILocation(line: 737, column: 7, scope: !945)
!953 = !{!918, !320, i64 44}
!954 = !DILocation(line: 738, column: 7, scope: !945)
!955 = !DILocation(line: 741, column: 3, scope: !868)
!956 = !DILocation(line: 742, column: 1, scope: !868)
!957 = distinct !DISubprogram(name: "etharp_raw", scope: !3, file: !3, line: 1101, type: !958, isLocal: true, isDefinition: true, scopeLine: 1106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !961)
!958 = !DISubroutineType(types: !959)
!959 = !{!91, !209, !143, !143, !143, !132, !143, !132, !960}
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!961 = !{!962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972}
!962 = !DILocalVariable(name: "netif", arg: 1, scope: !957, file: !3, line: 1101, type: !209)
!963 = !DILocalVariable(name: "ethsrc_addr", arg: 2, scope: !957, file: !3, line: 1101, type: !143)
!964 = !DILocalVariable(name: "ethdst_addr", arg: 3, scope: !957, file: !3, line: 1102, type: !143)
!965 = !DILocalVariable(name: "hwsrc_addr", arg: 4, scope: !957, file: !3, line: 1103, type: !143)
!966 = !DILocalVariable(name: "ipsrc_addr", arg: 5, scope: !957, file: !3, line: 1103, type: !132)
!967 = !DILocalVariable(name: "hwdst_addr", arg: 6, scope: !957, file: !3, line: 1104, type: !143)
!968 = !DILocalVariable(name: "ipdst_addr", arg: 7, scope: !957, file: !3, line: 1104, type: !132)
!969 = !DILocalVariable(name: "opcode", arg: 8, scope: !957, file: !3, line: 1105, type: !960)
!970 = !DILocalVariable(name: "p", scope: !957, file: !3, line: 1107, type: !196)
!971 = !DILocalVariable(name: "result", scope: !957, file: !3, line: 1108, type: !91)
!972 = !DILocalVariable(name: "hdr", scope: !957, file: !3, line: 1109, type: !99)
!973 = !DILocation(line: 1101, column: 26, scope: !957)
!974 = !DILocation(line: 1101, column: 56, scope: !957)
!975 = !DILocation(line: 1102, column: 35, scope: !957)
!976 = !DILocation(line: 1103, column: 35, scope: !957)
!977 = !DILocation(line: 1103, column: 65, scope: !957)
!978 = !DILocation(line: 1104, column: 35, scope: !957)
!979 = !DILocation(line: 1104, column: 65, scope: !957)
!980 = !DILocation(line: 1105, column: 24, scope: !957)
!981 = !DILocation(line: 1108, column: 9, scope: !957)
!982 = !DILocation(line: 1111, column: 3, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1111, column: 3)
!984 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1111, column: 3)
!985 = !DILocation(line: 1111, column: 3, scope: !984)
!986 = !DILocation(line: 1111, column: 3, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1111, column: 3)
!988 = distinct !DILexicalBlock(scope: !983, file: !3, line: 1111, column: 3)
!989 = !DILocation(line: 1111, column: 3, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 1111, column: 3)
!991 = distinct !DILexicalBlock(scope: !992, file: !3, line: 1111, column: 3)
!992 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1111, column: 3)
!993 = !DILocation(line: 1114, column: 7, scope: !957)
!994 = !DILocation(line: 1107, column: 16, scope: !957)
!995 = !DILocation(line: 1116, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1116, column: 7)
!997 = !DILocation(line: 1116, column: 7, scope: !957)
!998 = !DILocation(line: 1119, column: 5, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1116, column: 18)
!1000 = !{!918, !320, i64 36}
!1001 = !DILocation(line: 1120, column: 5, scope: !999)
!1002 = !DILocation(line: 1122, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 1122, column: 3)
!1004 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1122, column: 3)
!1005 = !{!894, !320, i64 18}
!1006 = !DILocation(line: 1122, column: 3, scope: !1004)
!1007 = !DILocation(line: 1122, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1122, column: 3)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1122, column: 3)
!1010 = !DILocation(line: 1122, column: 3, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1122, column: 3)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1122, column: 3)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1122, column: 3)
!1014 = !DILocation(line: 1125, column: 33, scope: !957)
!1015 = !DILocation(line: 1109, column: 22, scope: !957)
!1016 = !DILocation(line: 1127, column: 17, scope: !957)
!1017 = !DILocation(line: 1127, column: 8, scope: !957)
!1018 = !DILocation(line: 1127, column: 15, scope: !957)
!1019 = !DILocation(line: 1129, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1129, column: 3)
!1021 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1129, column: 3)
!1022 = !DILocation(line: 1129, column: 3, scope: !1021)
!1023 = !DILocation(line: 1129, column: 3, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 1129, column: 3)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1129, column: 3)
!1026 = !DILocation(line: 1129, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1129, column: 3)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1129, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1129, column: 3)
!1030 = !DILocation(line: 1133, column: 3, scope: !957)
!1031 = !DILocation(line: 1134, column: 3, scope: !957)
!1032 = !DILocation(line: 1137, column: 3, scope: !957)
!1033 = !DILocation(line: 1138, column: 3, scope: !957)
!1034 = !DILocation(line: 1140, column: 8, scope: !957)
!1035 = !DILocation(line: 1140, column: 15, scope: !957)
!1036 = !DILocation(line: 1141, column: 8, scope: !957)
!1037 = !DILocation(line: 1141, column: 14, scope: !957)
!1038 = !DILocation(line: 1143, column: 8, scope: !957)
!1039 = !DILocation(line: 1143, column: 14, scope: !957)
!1040 = !DILocation(line: 1144, column: 8, scope: !957)
!1041 = !DILocation(line: 1144, column: 17, scope: !957)
!1042 = !DILocation(line: 1156, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1155, column: 3)
!1044 = !DILocation(line: 1159, column: 3, scope: !957)
!1045 = !{!918, !320, i64 24}
!1046 = !DILocation(line: 1161, column: 3, scope: !957)
!1047 = !DILocation(line: 1165, column: 3, scope: !957)
!1048 = !DILocation(line: 0, scope: !957)
!1049 = !DILocation(line: 1166, column: 1, scope: !957)
!1050 = distinct !DISubprogram(name: "etharp_output", scope: !3, file: !3, line: 791, type: !252, isLocal: false, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058}
!1052 = !DILocalVariable(name: "netif", arg: 1, scope: !1050, file: !3, line: 791, type: !209)
!1053 = !DILocalVariable(name: "q", arg: 2, scope: !1050, file: !3, line: 791, type: !196)
!1054 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !1050, file: !3, line: 791, type: !132)
!1055 = !DILocalVariable(name: "dest", scope: !1050, file: !3, line: 793, type: !143)
!1056 = !DILocalVariable(name: "mcastaddr", scope: !1050, file: !3, line: 794, type: !116)
!1057 = !DILocalVariable(name: "dst_addr", scope: !1050, file: !3, line: 795, type: !132)
!1058 = !DILocalVariable(name: "i", scope: !1059, file: !3, line: 822, type: !152)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 821, column: 10)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 810, column: 14)
!1061 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 806, column: 7)
!1062 = !DILocation(line: 791, column: 29, scope: !1050)
!1063 = !DILocation(line: 791, column: 49, scope: !1050)
!1064 = !DILocation(line: 791, column: 70, scope: !1050)
!1065 = !DILocation(line: 794, column: 3, scope: !1050)
!1066 = !DILocation(line: 795, column: 21, scope: !1050)
!1067 = !DILocation(line: 798, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 798, column: 3)
!1069 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 798, column: 3)
!1070 = !DILocation(line: 798, column: 3, scope: !1069)
!1071 = !DILocation(line: 798, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 798, column: 3)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 798, column: 3)
!1074 = !DILocation(line: 798, column: 3, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 798, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 798, column: 3)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 798, column: 3)
!1078 = !DILocation(line: 799, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 799, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 799, column: 3)
!1081 = !DILocation(line: 799, column: 3, scope: !1080)
!1082 = !DILocation(line: 799, column: 3, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 799, column: 3)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 799, column: 3)
!1085 = !DILocation(line: 799, column: 3, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 799, column: 3)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 799, column: 3)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 799, column: 3)
!1089 = !DILocation(line: 800, column: 3, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 800, column: 3)
!1091 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 800, column: 3)
!1092 = !DILocation(line: 800, column: 3, scope: !1091)
!1093 = !DILocation(line: 800, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 800, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 800, column: 3)
!1096 = !DILocation(line: 800, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 800, column: 3)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 800, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 800, column: 3)
!1100 = !DILocation(line: 806, column: 7, scope: !1061)
!1101 = !DILocation(line: 806, column: 7, scope: !1050)
!1102 = !DILocation(line: 810, column: 14, scope: !1060)
!1103 = !DILocation(line: 810, column: 14, scope: !1061)
!1104 = !DILocation(line: 812, column: 23, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 810, column: 44)
!1106 = !DILocation(line: 813, column: 5, scope: !1105)
!1107 = !DILocation(line: 813, column: 23, scope: !1105)
!1108 = !DILocation(line: 814, column: 5, scope: !1105)
!1109 = !DILocation(line: 814, column: 23, scope: !1105)
!1110 = !DILocation(line: 815, column: 25, scope: !1105)
!1111 = !DILocation(line: 815, column: 43, scope: !1105)
!1112 = !DILocation(line: 815, column: 5, scope: !1105)
!1113 = !DILocation(line: 815, column: 23, scope: !1105)
!1114 = !DILocation(line: 816, column: 25, scope: !1105)
!1115 = !DILocation(line: 816, column: 5, scope: !1105)
!1116 = !DILocation(line: 816, column: 23, scope: !1105)
!1117 = !DILocation(line: 817, column: 25, scope: !1105)
!1118 = !DILocation(line: 817, column: 5, scope: !1105)
!1119 = !DILocation(line: 817, column: 23, scope: !1105)
!1120 = !DILocation(line: 793, column: 26, scope: !1050)
!1121 = !DILocation(line: 825, column: 10, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 825, column: 9)
!1123 = !DILocation(line: 826, column: 10, scope: !1122)
!1124 = !DILocation(line: 825, column: 83, scope: !1122)
!1125 = !DILocation(line: 844, column: 16, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 844, column: 15)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 842, column: 9)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 835, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 826, column: 40)
!1130 = !DILocation(line: 844, column: 15, scope: !1127)
!1131 = !DILocation(line: 854, column: 5, scope: !1129)
!1132 = !DILocation(line: 0, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 844, column: 58)
!1134 = !DILocation(line: 861, column: 24, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 861, column: 13)
!1136 = !DILocation(line: 861, column: 14, scope: !1135)
!1137 = !DILocation(line: 861, column: 45, scope: !1135)
!1138 = !DILocation(line: 861, column: 51, scope: !1135)
!1139 = !DILocation(line: 861, column: 75, scope: !1135)
!1140 = !DILocation(line: 863, column: 45, scope: !1135)
!1141 = !DILocation(line: 863, column: 51, scope: !1135)
!1142 = !DILocation(line: 863, column: 61, scope: !1135)
!1143 = !DILocation(line: 865, column: 14, scope: !1135)
!1144 = !DILocation(line: 861, column: 13, scope: !1059)
!1145 = !DILocation(line: 867, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 865, column: 79)
!1147 = !{!918, !320, i64 46}
!1148 = !DILocation(line: 868, column: 18, scope: !1146)
!1149 = !DILocation(line: 868, column: 11, scope: !1146)
!1150 = !DILocation(line: 822, column: 22, scope: !1059)
!1151 = !DILocation(line: 878, column: 25, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 878, column: 11)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 877, column: 42)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 877, column: 5)
!1155 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 877, column: 5)
!1156 = !DILocation(line: 878, column: 31, scope: !1152)
!1157 = !DILocation(line: 880, column: 25, scope: !1152)
!1158 = !DILocation(line: 880, column: 31, scope: !1152)
!1159 = !DILocation(line: 878, column: 55, scope: !1152)
!1160 = !DILocation(line: 882, column: 12, scope: !1152)
!1161 = !DILocation(line: 878, column: 11, scope: !1153)
!1162 = !DILocation(line: 884, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 882, column: 59)
!1164 = !DILocation(line: 885, column: 16, scope: !1163)
!1165 = !DILocation(line: 885, column: 9, scope: !1163)
!1166 = !DILocation(line: 0, scope: !1105)
!1167 = !DILocation(line: 896, column: 55, scope: !1050)
!1168 = !DILocation(line: 896, column: 36, scope: !1050)
!1169 = !DILocation(line: 896, column: 10, scope: !1050)
!1170 = !DILocation(line: 896, column: 3, scope: !1050)
!1171 = !DILocation(line: 0, scope: !1146)
!1172 = !DILocation(line: 897, column: 1, scope: !1050)
!1173 = !DILocation(line: 890, column: 12, scope: !1059)
!1174 = !DILocation(line: 890, column: 5, scope: !1059)
!1175 = distinct !DISubprogram(name: "etharp_output_to_arp_index", scope: !3, file: !3, line: 748, type: !1176, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!91, !209, !196, !152}
!1178 = !{!1179, !1180, !1181}
!1179 = !DILocalVariable(name: "netif", arg: 1, scope: !1175, file: !3, line: 748, type: !209)
!1180 = !DILocalVariable(name: "q", arg: 2, scope: !1175, file: !3, line: 748, type: !196)
!1181 = !DILocalVariable(name: "arp_idx", arg: 3, scope: !1175, file: !3, line: 748, type: !152)
!1182 = !DILocation(line: 748, column: 42, scope: !1175)
!1183 = !DILocation(line: 748, column: 62, scope: !1175)
!1184 = !DILocation(line: 748, column: 82, scope: !1175)
!1185 = !DILocation(line: 750, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 750, column: 3)
!1187 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 750, column: 3)
!1188 = !DILocation(line: 750, column: 3, scope: !1187)
!1189 = !DILocation(line: 750, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 750, column: 3)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 750, column: 3)
!1192 = !DILocation(line: 750, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 750, column: 3)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 750, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 750, column: 3)
!1196 = !DILocation(line: 755, column: 32, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 755, column: 7)
!1198 = !DILocation(line: 755, column: 7, scope: !1175)
!1199 = !DILocation(line: 756, column: 28, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 756, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 755, column: 56)
!1202 = !DILocation(line: 756, column: 34, scope: !1200)
!1203 = !DILocation(line: 756, column: 9, scope: !1201)
!1204 = !DILocation(line: 758, column: 53, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 758, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 756, column: 71)
!1207 = !DILocation(line: 1198, column: 30, scope: !368, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 758, column: 11, scope: !1205)
!1209 = !DILocation(line: 1198, column: 55, scope: !368, inlinedAt: !1208)
!1210 = !DILocation(line: 1181, column: 34, scope: !377, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 1201, column: 10, scope: !368, inlinedAt: !1208)
!1212 = !DILocation(line: 1181, column: 59, scope: !377, inlinedAt: !1211)
!1213 = !DILocation(line: 1181, column: 90, scope: !377, inlinedAt: !1211)
!1214 = !DILocation(line: 1183, column: 47, scope: !377, inlinedAt: !1211)
!1215 = !DILocation(line: 1183, column: 28, scope: !377, inlinedAt: !1211)
!1216 = !DILocation(line: 1184, column: 55, scope: !377, inlinedAt: !1211)
!1217 = !DILocation(line: 1183, column: 10, scope: !377, inlinedAt: !1211)
!1218 = !DILocation(line: 758, column: 61, scope: !1205)
!1219 = !DILocation(line: 758, column: 11, scope: !1206)
!1220 = !DILocation(line: 759, column: 34, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 758, column: 72)
!1222 = !DILocation(line: 760, column: 7, scope: !1221)
!1223 = !DILocation(line: 761, column: 41, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 761, column: 16)
!1225 = !DILocation(line: 761, column: 16, scope: !1200)
!1226 = !DILocation(line: 763, column: 57, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 763, column: 11)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 761, column: 76)
!1229 = !DILocation(line: 763, column: 85, scope: !1227)
!1230 = !DILocation(line: 1181, column: 34, scope: !377, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 763, column: 11, scope: !1227)
!1232 = !DILocation(line: 1181, column: 59, scope: !377, inlinedAt: !1231)
!1233 = !DILocation(line: 1181, column: 90, scope: !377, inlinedAt: !1231)
!1234 = !DILocation(line: 1183, column: 47, scope: !377, inlinedAt: !1231)
!1235 = !DILocation(line: 1183, column: 28, scope: !377, inlinedAt: !1231)
!1236 = !DILocation(line: 1184, column: 55, scope: !377, inlinedAt: !1231)
!1237 = !DILocation(line: 1183, column: 10, scope: !377, inlinedAt: !1231)
!1238 = !DILocation(line: 763, column: 94, scope: !1227)
!1239 = !DILocation(line: 763, column: 11, scope: !1228)
!1240 = !DILocation(line: 764, column: 34, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 763, column: 105)
!1242 = !DILocation(line: 765, column: 7, scope: !1241)
!1243 = !DILocation(line: 769, column: 55, scope: !1175)
!1244 = !DILocation(line: 769, column: 36, scope: !1175)
!1245 = !DILocation(line: 769, column: 92, scope: !1175)
!1246 = !DILocation(line: 769, column: 10, scope: !1175)
!1247 = !DILocation(line: 769, column: 3, scope: !1175)
!1248 = distinct !DISubprogram(name: "etharp_query", scope: !3, file: !3, line: 933, type: !1249, isLocal: false, isDefinition: true, scopeLine: 934, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!91, !209, !132, !196}
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1264}
!1252 = !DILocalVariable(name: "netif", arg: 1, scope: !1248, file: !3, line: 933, type: !209)
!1253 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1248, file: !3, line: 933, type: !132)
!1254 = !DILocalVariable(name: "q", arg: 3, scope: !1248, file: !3, line: 933, type: !196)
!1255 = !DILocalVariable(name: "srcaddr", scope: !1248, file: !3, line: 935, type: !142)
!1256 = !DILocalVariable(name: "result", scope: !1248, file: !3, line: 936, type: !91)
!1257 = !DILocalVariable(name: "is_new_entry", scope: !1248, file: !3, line: 937, type: !21)
!1258 = !DILocalVariable(name: "i_err", scope: !1248, file: !3, line: 938, type: !153)
!1259 = !DILocalVariable(name: "i", scope: !1248, file: !3, line: 939, type: !152)
!1260 = !DILocalVariable(name: "p", scope: !1261, file: !3, line: 1003, type: !196)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1001, column: 58)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 1001, column: 14)
!1263 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 995, column: 7)
!1264 = !DILocalVariable(name: "copy_needed", scope: !1261, file: !3, line: 1004, type: !21)
!1265 = !DILocation(line: 933, column: 28, scope: !1248)
!1266 = !DILocation(line: 933, column: 53, scope: !1248)
!1267 = !DILocation(line: 933, column: 74, scope: !1248)
!1268 = !DILocation(line: 935, column: 49, scope: !1248)
!1269 = !DILocation(line: 935, column: 30, scope: !1248)
!1270 = !DILocation(line: 935, column: 20, scope: !1248)
!1271 = !DILocation(line: 936, column: 9, scope: !1248)
!1272 = !DILocation(line: 937, column: 7, scope: !1248)
!1273 = !DILocation(line: 942, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 942, column: 7)
!1275 = !DILocation(line: 942, column: 43, scope: !1274)
!1276 = !DILocation(line: 943, column: 7, scope: !1274)
!1277 = !DILocation(line: 944, column: 7, scope: !1274)
!1278 = !DILocation(line: 943, column: 36, scope: !1274)
!1279 = !DILocation(line: 950, column: 11, scope: !1248)
!1280 = !DILocation(line: 938, column: 9, scope: !1248)
!1281 = !DILocation(line: 953, column: 13, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 953, column: 7)
!1283 = !DILocation(line: 953, column: 7, scope: !1248)
!1284 = !DILocation(line: 955, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 955, column: 9)
!1286 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 953, column: 18)
!1287 = !DILocation(line: 955, column: 9, scope: !1286)
!1288 = !DILocation(line: 957, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 955, column: 12)
!1290 = !DILocation(line: 958, column: 5, scope: !1289)
!1291 = !DILocation(line: 959, column: 12, scope: !1286)
!1292 = !DILocation(line: 959, column: 5, scope: !1286)
!1293 = !DILocation(line: 961, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 961, column: 3)
!1295 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 961, column: 3)
!1296 = !DILocation(line: 961, column: 3, scope: !1295)
!1297 = !DILocation(line: 961, column: 3, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 961, column: 3)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 961, column: 3)
!1300 = !DILocation(line: 961, column: 3, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 961, column: 3)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 961, column: 3)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 961, column: 3)
!1304 = !DILocation(line: 962, column: 7, scope: !1248)
!1305 = !DILocation(line: 939, column: 20, scope: !1248)
!1306 = !DILocation(line: 965, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 965, column: 7)
!1308 = !DILocation(line: 965, column: 20, scope: !1307)
!1309 = !DILocation(line: 965, column: 26, scope: !1307)
!1310 = !DILocation(line: 965, column: 7, scope: !1248)
!1311 = !DILocation(line: 967, column: 24, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 965, column: 49)
!1313 = !DILocation(line: 969, column: 18, scope: !1312)
!1314 = !DILocation(line: 969, column: 24, scope: !1312)
!1315 = !DILocation(line: 978, column: 26, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 978, column: 7)
!1317 = !DILocation(line: 1198, column: 30, scope: !368, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 980, column: 14, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 978, column: 36)
!1320 = !DILocation(line: 1198, column: 55, scope: !368, inlinedAt: !1318)
!1321 = !DILocation(line: 1181, column: 34, scope: !377, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 1201, column: 10, scope: !368, inlinedAt: !1318)
!1323 = !DILocation(line: 1181, column: 59, scope: !377, inlinedAt: !1322)
!1324 = !DILocation(line: 1181, column: 90, scope: !377, inlinedAt: !1322)
!1325 = !DILocation(line: 1184, column: 55, scope: !377, inlinedAt: !1322)
!1326 = !DILocation(line: 1183, column: 10, scope: !377, inlinedAt: !1322)
!1327 = !DILocation(line: 987, column: 9, scope: !1319)
!1328 = !DILocation(line: 995, column: 20, scope: !1263)
!1329 = !DILocation(line: 978, column: 20, scope: !1316)
!1330 = !DILocation(line: 995, column: 26, scope: !1263)
!1331 = !DILocation(line: 995, column: 7, scope: !1248)
!1332 = !DILocation(line: 997, column: 5, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 995, column: 50)
!1334 = !DILocation(line: 999, column: 64, scope: !1333)
!1335 = !DILocation(line: 999, column: 14, scope: !1333)
!1336 = !DILocation(line: 1001, column: 3, scope: !1333)
!1337 = !DILocation(line: 1001, column: 33, scope: !1262)
!1338 = !DILocation(line: 1001, column: 14, scope: !1263)
!1339 = !DILocation(line: 1003, column: 18, scope: !1261)
!1340 = !DILocation(line: 1009, column: 7, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 1009, column: 7)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1009, column: 7)
!1343 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1008, column: 15)
!1344 = !{!894, !320, i64 16}
!1345 = !{!894, !314, i64 0}
!1346 = !DILocation(line: 1009, column: 7, scope: !1342)
!1347 = !DILocation(line: 1009, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1009, column: 7)
!1349 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 1009, column: 7)
!1350 = !DILocation(line: 1009, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 1009, column: 7)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 1009, column: 7)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1009, column: 7)
!1354 = !DILocation(line: 1010, column: 11, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1010, column: 11)
!1356 = !{!894, !315, i64 20}
!1357 = !DILocation(line: 1010, column: 11, scope: !1343)
!1358 = !DILocation(line: 1014, column: 14, scope: !1343)
!1359 = !DILocation(line: 1008, column: 5, scope: !1261)
!1360 = distinct !{!1360, !1359, !1361}
!1361 = !DILocation(line: 1015, column: 5, scope: !1261)
!1362 = !DILocation(line: 1018, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1016, column: 22)
!1364 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1016, column: 9)
!1365 = !DILocation(line: 1019, column: 5, scope: !1363)
!1366 = !DILocation(line: 1022, column: 7, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 1019, column: 12)
!1368 = !DILocation(line: 0, scope: !1367)
!1369 = !DILocation(line: 1025, column: 11, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 1025, column: 9)
!1371 = !DILocation(line: 1025, column: 9, scope: !1261)
!1372 = !DILocation(line: 1068, column: 24, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1068, column: 11)
!1374 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1025, column: 20)
!1375 = !DILocation(line: 1068, column: 26, scope: !1373)
!1376 = !DILocation(line: 1068, column: 11, scope: !1374)
!1377 = !DILocation(line: 1070, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1068, column: 35)
!1379 = !DILocation(line: 1071, column: 7, scope: !1378)
!1380 = !DILocation(line: 1072, column: 22, scope: !1374)
!1381 = !DILocation(line: 1076, column: 5, scope: !1374)
!1382 = !DILocation(line: 1077, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1076, column: 12)
!1384 = !DILocation(line: 0, scope: !1248)
!1385 = !DILocation(line: 1083, column: 1, scope: !1248)
