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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br label %1, !dbg !311

; <label>:1:                                      ; preds = %40, %0
  %2 = phi i64 [ 0, %0 ], [ %41, %40 ]
  %3 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 5, !dbg !312
  %4 = load i8, i8* %3, align 8, !dbg !312, !tbaa !313
  %5 = icmp eq i8 %4, 0, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %5, label %40, label %6, !dbg !325

; <label>:6:                                      ; preds = %1
  %7 = icmp eq i8 %4, 5, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %7, label %40, label %8, !dbg !327

; <label>:8:                                      ; preds = %6
  %9 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 4, !dbg !328
  %10 = load i16, i16* %9, align 2, !dbg !330, !tbaa !331
  %11 = add i16 %10, 1, !dbg !330
  store i16 %11, i16* %9, align 2, !dbg !330, !tbaa !331
  %12 = icmp ugt i16 %11, 299, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %12, label %17, label %13, !dbg !334

; <label>:13:                                     ; preds = %8
  %14 = icmp eq i8 %4, 1, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %14, label %15, label %24, !dbg !336

; <label>:15:                                     ; preds = %13
  %16 = icmp ugt i16 %11, 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br i1 %16, label %17, label %31, !dbg !338

; <label>:17:                                     ; preds = %15, %8
  %18 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 0, !dbg !347
  %19 = load %struct.pbuf*, %struct.pbuf** %18, align 8, !dbg !347, !tbaa !349
  %20 = icmp eq %struct.pbuf* %19, null, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %20, label %23, label %21, !dbg !351

; <label>:21:                                     ; preds = %17
  %22 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %19) #7, !dbg !352
  store %struct.pbuf* null, %struct.pbuf** %18, align 8, !dbg !354, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %23, !dbg !355

; <label>:23:                                     ; preds = %17, %21
  store i8 0, i8* %3, align 8, !dbg !356, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br label %40, !dbg !358

; <label>:24:                                     ; preds = %13
  %25 = icmp eq i8 %4, 3, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %25, label %26, label %27, !dbg !361

; <label>:26:                                     ; preds = %24
  store i8 4, i8* %3, align 8, !dbg !362, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br label %40, !dbg !364

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i8 %4, 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %28, label %29, label %30, !dbg !367

; <label>:29:                                     ; preds = %27
  store i8 2, i8* %3, align 8, !dbg !368, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br label %40, !dbg !370

; <label>:30:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br label %40

; <label>:31:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  %32 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 2, !dbg !372
  %33 = load %struct.netif*, %struct.netif** %32, align 8, !dbg !372, !tbaa !375
  %34 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %2, i32 1, !dbg !376
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %33, i64 0, i32 19, i64 0, !dbg !397
  %36 = bitcast i8* %35 to %struct.eth_addr*, !dbg !398
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %33, i64 0, i32 1, i32 0, !dbg !399
  %38 = bitcast %union.anon* %37 to %struct.ip4_addr*, !dbg !399
  %39 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %33, %struct.eth_addr* nonnull %36, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %36, %struct.ip4_addr* nonnull %38, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %34, i16 zeroext 1) #7, !dbg !400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br label %40, !dbg !403

; <label>:40:                                     ; preds = %30, %6, %1, %23, %29, %31, %26
  %41 = add nuw nsw i64 %2, 1, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  %42 = icmp eq i64 %41, 10, !dbg !406
  br i1 %42, label %43, label %1, !dbg !311, !llvm.loop !407

; <label>:43:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  ret void, !dbg !409
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_request(%struct.netif*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !378 {
  %3 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !416
  %4 = bitcast i8* %3 to %struct.eth_addr*, !dbg !417
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !418
  %6 = bitcast %union.anon* %5 to %struct.ip4_addr*, !dbg !418
  %7 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %4, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %4, %struct.ip4_addr* nonnull %6, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* %1, i16 zeroext 1) #7, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  ret i8 %7, !dbg !421
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_add_static_entry(%struct.ip4_addr*, %struct.eth_addr*) local_unnamed_addr #0 !dbg !422 {
  %3 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %0) #7, !dbg !431
  %4 = icmp eq %struct.netif* %3, null, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %4, label %7, label %5, !dbg !435

; <label>:5:                                      ; preds = %2
  %6 = tail call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %3, %struct.ip4_addr* %0, %struct.eth_addr* %1, i8 zeroext 5) #8, !dbg !436
  br label %7, !dbg !437

; <label>:7:                                      ; preds = %2, %5
  %8 = phi i8 [ %6, %5 ], [ -4, %2 ], !dbg !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  ret i8 %8, !dbg !441
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_update_arp_entry(%struct.netif*, %struct.ip4_addr*, %struct.eth_addr*, i8 zeroext) unnamed_addr #0 !dbg !442 {
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !458
  %6 = load i8, i8* %5, align 4, !dbg !458, !tbaa !461
  %7 = icmp eq i8 %6, 6, !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %7, label %9, label %8, !dbg !464

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !465
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !468
  tail call void @ukplat_terminate(i32 3) #9, !dbg !468
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = icmp eq %struct.ip4_addr* %1, null, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !472
  br i1 %10, label %50, label %11, !dbg !472

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !472
  %13 = load i32, i32* %12, align 4, !dbg !472, !tbaa !474
  %14 = icmp eq i32 %13, 0, !dbg !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %14, label %50, label %15, !dbg !475

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %13, %struct.netif* nonnull %0) #7, !dbg !476
  %17 = icmp eq i8 %16, 0, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %17, label %18, label %50, !dbg !477

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %12, align 4, !dbg !478, !tbaa !474
  %20 = and i32 %19, 240, !dbg !478
  %21 = icmp eq i32 %20, 224, !dbg !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !479
  br i1 %21, label %50, label %22, !dbg !479

; <label>:22:                                     ; preds = %18
  %23 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext %3, %struct.netif* nonnull %0) #8, !dbg !480
  %24 = icmp slt i16 %23, 0, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %24, label %25, label %27, !dbg !484

; <label>:25:                                     ; preds = %22
  %26 = trunc i16 %23 to i8, !dbg !485
  br label %50, !dbg !487

; <label>:27:                                     ; preds = %22
  %28 = and i8 %3, 4, !dbg !488
  %29 = icmp eq i8 %28, 0, !dbg !488
  %30 = sext i16 %23 to i64, !dbg !490
  %31 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 5, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %29, label %32, label %35, !dbg !492

; <label>:32:                                     ; preds = %27
  %33 = load i8, i8* %31, align 8, !dbg !493, !tbaa !313
  %34 = icmp eq i8 %33, 5, !dbg !494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %34, label %50, label %35, !dbg !495

; <label>:35:                                     ; preds = %32, %27
  %36 = phi i8 [ 5, %27 ], [ 2, %32 ]
  store i8 %36, i8* %31, align 8, !dbg !496, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 2, !dbg !498
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !499, !tbaa !375
  %38 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 3, i32 0, i64 0, !dbg !500
  %39 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %2, i64 0, i32 0, i64 0, !dbg !500
  %40 = tail call i8* @memcpy(i8* nonnull %38, i8* %39, i64 6) #7, !dbg !500
  %41 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 4, !dbg !501
  store i16 0, i16* %41, align 2, !dbg !502, !tbaa !331
  %42 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %30, i32 0, !dbg !503
  %43 = load %struct.pbuf*, %struct.pbuf** %42, align 8, !dbg !503, !tbaa !349
  %44 = icmp eq %struct.pbuf* %43, null, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %44, label %50, label %45, !dbg !505

; <label>:45:                                     ; preds = %35
  store %struct.pbuf* null, %struct.pbuf** %42, align 8, !dbg !507, !tbaa !349
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !508
  %47 = bitcast i8* %46 to %struct.eth_addr*, !dbg !509
  %48 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %43, %struct.eth_addr* nonnull %47, %struct.eth_addr* %2, i16 zeroext 2048) #7, !dbg !510
  %49 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %43) #7, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br label %50, !dbg !512

; <label>:50:                                     ; preds = %45, %35, %32, %9, %11, %18, %15, %25
  %51 = phi i8 [ %26, %25 ], [ -16, %15 ], [ -16, %18 ], [ -16, %11 ], [ -16, %9 ], [ -6, %32 ], [ 0, %35 ], [ 0, %45 ], !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  ret i8 %51, !dbg !517
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_remove_static_entry(%struct.ip4_addr*) local_unnamed_addr #0 !dbg !518 {
  %2 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* %0, i8 zeroext 2, %struct.netif* null) #8, !dbg !525
  %3 = icmp slt i16 %2, 0, !dbg !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  br i1 %3, label %4, label %6, !dbg !529

; <label>:4:                                      ; preds = %1
  %5 = trunc i16 %2 to i8, !dbg !530
  br label %18, !dbg !532

; <label>:6:                                      ; preds = %1
  %7 = sext i16 %2 to i64, !dbg !533
  %8 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %7, i32 5, !dbg !535
  %9 = load i8, i8* %8, align 8, !dbg !535, !tbaa !313
  %10 = icmp eq i8 %9, 5, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %10, label %11, label %18, !dbg !537

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %7, i32 0, !dbg !538
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !538, !tbaa !349
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %14, label %17, label %15, !dbg !541

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %13) #7, !dbg !542
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !543, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %17, !dbg !544

; <label>:17:                                     ; preds = %11, %15
  store i8 0, i8* %8, align 8, !dbg !545, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br label %18, !dbg !547

; <label>:18:                                     ; preds = %6, %17, %4
  %19 = phi i8 [ %5, %4 ], [ 0, %17 ], [ -16, %6 ], !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  ret i8 %19, !dbg !550
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* readonly, i8 zeroext, %struct.netif*) unnamed_addr #0 !dbg !551 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  %4 = icmp eq %struct.ip4_addr* %0, null
  %5 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %0, i64 0, i32 0
  %6 = icmp eq %struct.netif* %2, null
  br label %7, !dbg !582

; <label>:7:                                      ; preds = %3, %62
  %8 = phi i64 [ 0, %3 ], [ %70, %62 ]
  %9 = phi i16 [ 0, %3 ], [ %69, %62 ]
  %10 = phi i16 [ 0, %3 ], [ %68, %62 ]
  %11 = phi i16 [ 0, %3 ], [ %67, %62 ]
  %12 = phi i16 [ 10, %3 ], [ %66, %62 ]
  %13 = phi i16 [ 10, %3 ], [ %65, %62 ]
  %14 = phi i16 [ 10, %3 ], [ %64, %62 ]
  %15 = phi i16 [ 10, %3 ], [ %63, %62 ]
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 5, !dbg !583
  %17 = load i8, i8* %16, align 8, !dbg !583, !tbaa !313
  %18 = icmp eq i16 %13, 10, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  %19 = icmp eq i8 %17, 0, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  br i1 %18, label %20, label %22, !dbg !587

; <label>:20:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !590
  %21 = trunc i64 %8 to i16, !dbg !591
  br i1 %19, label %62, label %23, !dbg !591

; <label>:22:                                     ; preds = %7
  br i1 %19, label %62, label %23, !dbg !592

; <label>:23:                                     ; preds = %20, %22
  %24 = icmp eq i8 %17, 1, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %24, label %26, label %25, !dbg !593

; <label>:25:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br label %26, !dbg !597

; <label>:26:                                     ; preds = %25, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br i1 %4, label %37, label %27, !dbg !598

; <label>:27:                                     ; preds = %26
  %28 = load i32, i32* %5, align 4, !dbg !600, !tbaa !474
  %29 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 1, i32 0, !dbg !600
  %30 = load i32, i32* %29, align 8, !dbg !600, !tbaa !601
  %31 = icmp eq i32 %28, %30, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %31, label %32, label %37, !dbg !602

; <label>:32:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !603
  br i1 %6, label %60, label %33, !dbg !603

; <label>:33:                                     ; preds = %32
  %34 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 2, !dbg !604
  %35 = load %struct.netif*, %struct.netif** %34, align 8, !dbg !604, !tbaa !375
  %36 = icmp eq %struct.netif* %35, %2, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %36, label %60, label %37, !dbg !606

; <label>:37:                                     ; preds = %26, %33, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !607
  br i1 %24, label %38, label %52, !dbg !607

; <label>:38:                                     ; preds = %37
  %39 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 0, !dbg !608
  %40 = load %struct.pbuf*, %struct.pbuf** %39, align 8, !dbg !608, !tbaa !349
  %41 = icmp eq %struct.pbuf* %40, null, !dbg !612
  %42 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !613
  %43 = load i16, i16* %42, align 2, !dbg !613, !tbaa !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %41, label %48, label %44, !dbg !616

; <label>:44:                                     ; preds = %38
  %45 = icmp ult i16 %43, %11, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %45, label %62, label %46, !dbg !620

; <label>:46:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %47 = trunc i64 %8 to i16, !dbg !621
  br label %62, !dbg !621

; <label>:48:                                     ; preds = %38
  %49 = icmp ult i16 %43, %10, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %49, label %62, label %50, !dbg !624

; <label>:50:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %51 = trunc i64 %8 to i16, !dbg !625
  br label %62, !dbg !625

; <label>:52:                                     ; preds = %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %53 = icmp ult i8 %17, 5, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %53, label %54, label %62, !dbg !632

; <label>:54:                                     ; preds = %52
  %55 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %8, i32 4, !dbg !633
  %56 = load i16, i16* %55, align 2, !dbg !633, !tbaa !331
  %57 = icmp ult i16 %56, %9, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  br i1 %57, label %62, label %58, !dbg !637

; <label>:58:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %59 = trunc i64 %8 to i16, !dbg !638
  br label %62, !dbg !638

; <label>:60:                                     ; preds = %32, %33
  %61 = trunc i64 %8 to i16, !dbg !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %122

; <label>:62:                                     ; preds = %20, %50, %46, %52, %58, %22, %54, %48, %44
  %63 = phi i16 [ %15, %46 ], [ %15, %44 ], [ %51, %50 ], [ %15, %48 ], [ %15, %58 ], [ %15, %54 ], [ %15, %52 ], [ %15, %22 ], [ %15, %20 ], !dbg !642
  %64 = phi i16 [ %14, %46 ], [ %14, %44 ], [ %14, %50 ], [ %14, %48 ], [ %59, %58 ], [ %14, %54 ], [ %14, %52 ], [ %14, %22 ], [ %14, %20 ], !dbg !642
  %65 = phi i16 [ %13, %46 ], [ %13, %44 ], [ %13, %50 ], [ %13, %48 ], [ %13, %58 ], [ %13, %54 ], [ %13, %52 ], [ %13, %22 ], [ %21, %20 ], !dbg !642
  %66 = phi i16 [ %47, %46 ], [ %12, %44 ], [ %12, %50 ], [ %12, %48 ], [ %12, %58 ], [ %12, %54 ], [ %12, %52 ], [ %12, %22 ], [ %12, %20 ], !dbg !642
  %67 = phi i16 [ %43, %46 ], [ %11, %44 ], [ %11, %50 ], [ %11, %48 ], [ %11, %58 ], [ %11, %54 ], [ %11, %52 ], [ %11, %22 ], [ %11, %20 ], !dbg !642
  %68 = phi i16 [ %10, %46 ], [ %10, %44 ], [ %43, %50 ], [ %10, %48 ], [ %10, %58 ], [ %10, %54 ], [ %10, %52 ], [ %10, %22 ], [ %10, %20 ], !dbg !642
  %69 = phi i16 [ %9, %46 ], [ %9, %44 ], [ %9, %50 ], [ %9, %48 ], [ %56, %58 ], [ %9, %54 ], [ %9, %52 ], [ %9, %22 ], [ %9, %20 ], !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %70 = add nuw nsw i64 %8, 1, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %71 = icmp ult i64 %70, 10, !dbg !646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %71, label %7, label %72, !dbg !582, !llvm.loop !647

; <label>:72:                                     ; preds = %62
  %73 = zext i8 %1 to i32, !dbg !649
  %74 = and i32 %73, 2, !dbg !651
  %75 = icmp eq i32 %74, 0, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %75, label %76, label %122, !dbg !653

; <label>:76:                                     ; preds = %72
  %77 = icmp eq i16 %65, 10, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br i1 %77, label %78, label %82, !dbg !655

; <label>:78:                                     ; preds = %76
  %79 = and i32 %73, 1, !dbg !656
  %80 = icmp eq i32 %79, 0, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %80, label %122, label %81, !dbg !658

; <label>:81:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br label %84, !dbg !659

; <label>:82:                                     ; preds = %76
  %83 = icmp slt i16 %65, 10, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %83, label %107, label %84, !dbg !659

; <label>:84:                                     ; preds = %81, %82
  %85 = icmp slt i16 %64, 10, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  br i1 %85, label %86, label %92, !dbg !665

; <label>:86:                                     ; preds = %84
  %87 = sext i16 %64 to i64, !dbg !666
  %88 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %87, i32 0, !dbg !666
  %89 = load %struct.pbuf*, %struct.pbuf** %88, align 8, !dbg !666, !tbaa !349
  %90 = icmp eq %struct.pbuf* %89, null, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %90, label %97, label %91, !dbg !670

; <label>:91:                                     ; preds = %86
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !671
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !674
  tail call void @ukplat_terminate(i32 3) #9, !dbg !674
  unreachable

; <label>:92:                                     ; preds = %84
  %93 = icmp slt i16 %63, 10, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %93, label %94, label %95, !dbg !680

; <label>:94:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  br label %97, !dbg !681

; <label>:95:                                     ; preds = %92
  %96 = icmp slt i16 %66, 10, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %96, label %97, label %124, !dbg !685

; <label>:97:                                     ; preds = %94, %86, %95
  %98 = phi i16 [ %64, %86 ], [ %63, %94 ], [ %66, %95 ], !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  %99 = sext i16 %98 to i64, !dbg !690
  %100 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %99, i32 0, !dbg !693
  %101 = load %struct.pbuf*, %struct.pbuf** %100, align 8, !dbg !693, !tbaa !349
  %102 = icmp eq %struct.pbuf* %101, null, !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  br i1 %102, label %105, label %103, !dbg !695

; <label>:103:                                    ; preds = %97
  %104 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %101) #7, !dbg !696
  store %struct.pbuf* null, %struct.pbuf** %100, align 8, !dbg !697, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br label %105, !dbg !698

; <label>:105:                                    ; preds = %103, %97
  %106 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %99, i32 5, !dbg !699
  store i8 0, i8* %106, align 8, !dbg !700, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br label %113, !dbg !704

; <label>:107:                                    ; preds = %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %108 = sext i16 %65 to i64
  %109 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %108, i32 5
  %110 = load i8, i8* %109, align 8, !dbg !708, !tbaa !313
  %111 = icmp eq i8 %110, 0, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  br i1 %111, label %113, label %112, !dbg !704

; <label>:112:                                    ; preds = %107
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !710
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !713
  tail call void @ukplat_terminate(i32 3) #9, !dbg !713
  unreachable

; <label>:113:                                    ; preds = %105, %107
  %114 = phi i16 [ %98, %105 ], [ %65, %107 ]
  %115 = phi i64 [ %99, %105 ], [ %108, %107 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %4, label %119, label %116, !dbg !717

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %5, align 4, !dbg !718, !tbaa !474
  %118 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %115, i32 1, i32 0, !dbg !718
  store i32 %117, i32* %118, align 8, !dbg !718, !tbaa !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br label %119, !dbg !721

; <label>:119:                                    ; preds = %113, %116
  %120 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %115, i32 4, !dbg !722
  store i16 0, i16* %120, align 2, !dbg !723, !tbaa !331
  %121 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %115, i32 2, !dbg !724
  store %struct.netif* %2, %struct.netif** %121, align 8, !dbg !725, !tbaa !375
  br label %122, !dbg !726

; <label>:122:                                    ; preds = %78, %72, %119, %60
  %123 = phi i16 [ %114, %119 ], [ %61, %60 ], [ -1, %72 ], [ -1, %78 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %124, !dbg !727

; <label>:124:                                    ; preds = %122, %95
  %125 = phi i16 [ -1, %95 ], [ %123, %122 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  ret i16 %125, !dbg !727
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_cleanup_netif(%struct.netif* readnone) local_unnamed_addr #0 !dbg !728 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br label %2, !dbg !739

; <label>:2:                                      ; preds = %18, %1
  %3 = phi i64 [ 0, %1 ], [ %19, %18 ]
  %4 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 5, !dbg !740
  %5 = load i8, i8* %4, align 8, !dbg !740, !tbaa !313
  %6 = icmp eq i8 %5, 0, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br i1 %6, label %18, label %7, !dbg !744

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 2, !dbg !745
  %9 = load %struct.netif*, %struct.netif** %8, align 8, !dbg !745, !tbaa !375
  %10 = icmp eq %struct.netif* %9, %0, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br i1 %10, label %11, label %18, !dbg !747

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %3, i32 0, !dbg !751
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !751, !tbaa !349
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %14, label %17, label %15, !dbg !753

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %13) #7, !dbg !754
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !755, !tbaa !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br label %17, !dbg !756

; <label>:17:                                     ; preds = %11, %15
  store i8 0, i8* %4, align 8, !dbg !757, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br label %18, !dbg !759

; <label>:18:                                     ; preds = %2, %17, %7
  %19 = add nuw nsw i64 %3, 1, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  %20 = icmp eq i64 %19, 10, !dbg !762
  br i1 %20, label %21, label %2, !dbg !739, !llvm.loop !763

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  ret void, !dbg !765
}

; Function Attrs: noredzone nounwind
define dso_local i64 @etharp_find_addr(%struct.netif*, %struct.ip4_addr*, %struct.eth_addr**, %struct.ip4_addr**) local_unnamed_addr #0 !dbg !766 {
  %5 = icmp ne %struct.eth_addr** %2, null, !dbg !785
  %6 = icmp ne %struct.ip4_addr** %3, null, !dbg !785
  %7 = and i1 %5, %6, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %7, label %9, label %8, !dbg !785

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0)) #8, !dbg !788
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !791
  tail call void @ukplat_terminate(i32 3) #9, !dbg !791
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* %1, i8 zeroext 2, %struct.netif* %0) #8, !dbg !795
  %11 = icmp sgt i16 %10, -1, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !799
  br i1 %11, label %12, label %20, !dbg !799

; <label>:12:                                     ; preds = %9
  %13 = sext i16 %10 to i64, !dbg !800
  %14 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %13, i32 5, !dbg !801
  %15 = load i8, i8* %14, align 8, !dbg !801, !tbaa !313
  %16 = icmp ugt i8 %15, 1, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %16, label %17, label %20, !dbg !803

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %13, i32 3, !dbg !804
  store %struct.eth_addr* %18, %struct.eth_addr** %2, align 8, !dbg !806, !tbaa !807
  %19 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %13, i32 1, !dbg !808
  store %struct.ip4_addr* %19, %struct.ip4_addr** %3, align 8, !dbg !809, !tbaa !807
  br label %20, !dbg !810

; <label>:20:                                     ; preds = %9, %12, %17
  %21 = phi i64 [ %13, %17 ], [ -1, %12 ], [ -1, %9 ], !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  ret i64 %21, !dbg !813
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !162 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !815
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !817
  call void @llvm.va_start(i8* nonnull %3), !dbg !817
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.15, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !818
  call void @llvm.va_end(i8* nonnull %3), !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  ret void, !dbg !822
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local i32 @etharp_get_entry(i64, %struct.ip4_addr**, %struct.netif**, %struct.eth_addr**) local_unnamed_addr #0 !dbg !823 {
  %5 = icmp eq %struct.ip4_addr** %1, null, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !841
  br i1 %5, label %6, label %7, !dbg !841

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !842
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !845
  tail call void @ukplat_terminate(i32 3) #9, !dbg !845
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.netif** %2, null, !dbg !849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %8, label %9, label %10, !dbg !852

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !853
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !856
  tail call void @ukplat_terminate(i32 3) #9, !dbg !856
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.eth_addr** %3, null, !dbg !860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  br i1 %11, label %12, label %13, !dbg !863

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !864
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !867
  tail call void @ukplat_terminate(i32 3) #9, !dbg !867
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = icmp ult i64 %0, 10, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %14, label %15, label %26, !dbg !873

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 5, !dbg !874
  %17 = load i8, i8* %16, align 8, !dbg !874, !tbaa !313
  %18 = icmp ugt i8 %17, 1, !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  br i1 %18, label %19, label %26, !dbg !876

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 1, !dbg !877
  store %struct.ip4_addr* %20, %struct.ip4_addr** %1, align 8, !dbg !879, !tbaa !807
  %21 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 2, !dbg !880
  %22 = bitcast %struct.netif** %21 to i64*, !dbg !880
  %23 = load i64, i64* %22, align 8, !dbg !880, !tbaa !375
  %24 = bitcast %struct.netif** %2 to i64*, !dbg !881
  store i64 %23, i64* %24, align 8, !dbg !881, !tbaa !807
  %25 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %0, i32 3, !dbg !882
  store %struct.eth_addr* %25, %struct.eth_addr** %3, align 8, !dbg !883, !tbaa !807
  br label %26, !dbg !884

; <label>:26:                                     ; preds = %13, %15, %19
  %27 = phi i32 [ 1, %19 ], [ 0, %15 ], [ 0, %13 ], !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  ret i32 %27, !dbg !888
}

; Function Attrs: noredzone nounwind
define dso_local void @etharp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !889 {
  %3 = alloca %struct.ip4_addr, align 4
  %4 = alloca %struct.ip4_addr, align 4
  %5 = bitcast %struct.ip4_addr* %3 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6, !dbg !901
  %6 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !901
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #6, !dbg !901
  %7 = icmp eq %struct.netif* %1, null, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %7, label %8, label %9, !dbg !905

; <label>:8:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !906
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !909
  tail call void @ukplat_terminate(i32 3) #9, !dbg !909
  unreachable

; <label>:9:                                      ; preds = %2
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !913
  %11 = bitcast i8** %10 to %struct.etharp_hdr**, !dbg !913
  %12 = load %struct.etharp_hdr*, %struct.etharp_hdr** %11, align 8, !dbg !913, !tbaa !914
  %13 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 0, !dbg !917
  %14 = load i16, i16* %13, align 1, !dbg !917, !tbaa !919
  %15 = icmp eq i16 %14, 256, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br i1 %15, label %16, label %28, !dbg !923

; <label>:16:                                     ; preds = %9
  %17 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 2, !dbg !924
  %18 = load i8, i8* %17, align 1, !dbg !924, !tbaa !925
  %19 = icmp eq i8 %18, 6, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br i1 %19, label %20, label %28, !dbg !927

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 3, !dbg !928
  %22 = load i8, i8* %21, align 1, !dbg !928, !tbaa !929
  %23 = icmp eq i8 %22, 4, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %23, label %24, label %28, !dbg !931

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 1, !dbg !932
  %26 = load i16, i16* %25, align 1, !dbg !932, !tbaa !933
  %27 = icmp eq i16 %26, 8, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %27, label %34, label %28, !dbg !935

; <label>:28:                                     ; preds = %24, %20, %16, %9
  %29 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !936, !tbaa !938
  %30 = add i16 %29, 1, !dbg !936
  store i16 %30, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 8), align 2, !dbg !936, !tbaa !938
  %31 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !944, !tbaa !945
  %32 = add i16 %31, 1, !dbg !944
  store i16 %32, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 3), align 2, !dbg !944, !tbaa !945
  %33 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !946
  br label %71, !dbg !947

; <label>:34:                                     ; preds = %24
  %35 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !948, !tbaa !949
  %36 = add i16 %35, 1, !dbg !948
  store i16 %36, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 1), align 2, !dbg !948, !tbaa !949
  %37 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 6, !dbg !950
  %38 = bitcast %struct.ip4_addr_wordaligned* %37 to i8*, !dbg !950
  %39 = call i8* @memcpy(i8* nonnull %5, i8* nonnull %38, i64 4) #7, !dbg !950
  %40 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 8, !dbg !951
  %41 = bitcast %struct.ip4_addr_wordaligned* %40 to i8*, !dbg !951
  %42 = call i8* @memcpy(i8* nonnull %6, i8* nonnull %41, i64 4) #7, !dbg !951
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 1, i32 0, !dbg !952
  %44 = bitcast %union.anon* %43 to %struct.ip4_addr*, !dbg !952
  %45 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0, i32 0, i64 0, !dbg !952
  %46 = load i32, i32* %45, align 8, !dbg !952, !tbaa !954
  %47 = icmp eq i32 %46, 0, !dbg !952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br i1 %47, label %48, label %49, !dbg !955

; <label>:48:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  br label %54, !dbg !959

; <label>:49:                                     ; preds = %34
  %50 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %4, i64 0, i32 0, !dbg !960
  %51 = load i32, i32* %50, align 4, !dbg !960, !tbaa !474
  %52 = icmp eq i32 %51, %46, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = select i1 %52, i8 1, i8 2, !dbg !959
  br label %54, !dbg !959

; <label>:54:                                     ; preds = %49, %48
  %55 = phi i1 [ false, %48 ], [ %52, %49 ]
  %56 = phi i8 [ 2, %48 ], [ %53, %49 ]
  %57 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 5, !dbg !962
  %58 = call fastcc signext i8 @etharp_update_arp_entry(%struct.netif* nonnull %1, %struct.ip4_addr* nonnull %3, %struct.eth_addr* nonnull %57, i8 zeroext %56) #8, !dbg !964
  %59 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %12, i64 0, i32 4, !dbg !965
  %60 = load i16, i16* %59, align 1, !dbg !965, !tbaa !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !967
  switch i16 %60, label %66 [
    i16 256, label %61
    i16 512, label %69
  ], !dbg !967

; <label>:61:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %55, label %62, label %69, !dbg !968

; <label>:62:                                     ; preds = %61
  %63 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 19, i64 0, !dbg !970
  %64 = bitcast i8* %63 to %struct.eth_addr*, !dbg !973
  %65 = call fastcc signext i8 @etharp_raw(%struct.netif* nonnull %1, %struct.eth_addr* nonnull %64, %struct.eth_addr* nonnull %57, %struct.eth_addr* nonnull %64, %struct.ip4_addr* nonnull %44, %struct.eth_addr* nonnull %57, %struct.ip4_addr* nonnull %3, i16 zeroext 2) #8, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !975
  br label %69, !dbg !975

; <label>:66:                                     ; preds = %54
  %67 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !976, !tbaa !977
  %68 = add i16 %67, 1, !dbg !976
  store i16 %68, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 10), align 2, !dbg !976, !tbaa !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  br label %69, !dbg !978

; <label>:69:                                     ; preds = %54, %62, %61, %66
  %70 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !979
  br label %71, !dbg !980

; <label>:71:                                     ; preds = %69, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !981
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #6, !dbg !980
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6, !dbg !980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  ret void, !dbg !980
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_raw(%struct.netif*, %struct.eth_addr*, %struct.eth_addr*, %struct.eth_addr*, %struct.ip4_addr*, %struct.eth_addr*, %struct.ip4_addr*, i16 zeroext) unnamed_addr #0 !dbg !982 {
  %9 = icmp eq %struct.netif* %0, null, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %9, label %10, label %11, !dbg !1010

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1011
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1014
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1014
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = tail call %struct.pbuf* @pbuf_alloc(i32 14, i16 zeroext 28, i32 640) #7, !dbg !1018
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !1020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %13, label %14, label %17, !dbg !1022

; <label>:14:                                     ; preds = %11
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1023, !tbaa !1025
  %16 = add i16 %15, 1, !dbg !1023
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1023, !tbaa !1025
  br label %55, !dbg !1026

; <label>:17:                                     ; preds = %11
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 3, !dbg !1027
  %19 = load i16, i16* %18, align 2, !dbg !1027, !tbaa !1030
  %20 = icmp ugt i16 %19, 27, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %20, label %22, label %21, !dbg !1031

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !1032
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1035
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1035
  unreachable

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %12, i64 0, i32 1, !dbg !1039
  %24 = bitcast i8** %23 to %struct.etharp_hdr**, !dbg !1039
  %25 = load %struct.etharp_hdr*, %struct.etharp_hdr** %24, align 8, !dbg !1039, !tbaa !914
  %26 = tail call zeroext i16 @lwip_htons(i16 zeroext %7) #7, !dbg !1041
  %27 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 4, !dbg !1042
  store i16 %26, i16* %27, align 1, !dbg !1043, !tbaa !966
  %28 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 20, !dbg !1044
  %29 = load i8, i8* %28, align 4, !dbg !1044, !tbaa !461
  %30 = icmp eq i8 %29, 6, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %30, label %32, label %31, !dbg !1047

; <label>:31:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1048
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1051
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1051
  unreachable

; <label>:32:                                     ; preds = %22
  %33 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 5, i32 0, i64 0, !dbg !1055
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %3, i64 0, i32 0, i64 0, !dbg !1055
  %35 = tail call i8* @memcpy(i8* nonnull %33, i8* %34, i64 6) #7, !dbg !1055
  %36 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 7, i32 0, i64 0, !dbg !1056
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %5, i64 0, i32 0, i64 0, !dbg !1056
  %38 = tail call i8* @memcpy(i8* nonnull %36, i8* %37, i64 6) #7, !dbg !1056
  %39 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 6, !dbg !1057
  %40 = bitcast %struct.ip4_addr_wordaligned* %39 to i8*, !dbg !1057
  %41 = bitcast %struct.ip4_addr* %4 to i8*, !dbg !1057
  %42 = tail call i8* @memcpy(i8* nonnull %40, i8* %41, i64 4) #7, !dbg !1057
  %43 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 8, !dbg !1058
  %44 = bitcast %struct.ip4_addr_wordaligned* %43 to i8*, !dbg !1058
  %45 = bitcast %struct.ip4_addr* %6 to i8*, !dbg !1058
  %46 = tail call i8* @memcpy(i8* nonnull %44, i8* %45, i64 4) #7, !dbg !1058
  %47 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 0, !dbg !1059
  store i16 256, i16* %47, align 1, !dbg !1060, !tbaa !919
  %48 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 1, !dbg !1061
  store i16 8, i16* %48, align 1, !dbg !1062, !tbaa !933
  %49 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 2, !dbg !1063
  store i8 6, i8* %49, align 1, !dbg !1064, !tbaa !925
  %50 = getelementptr inbounds %struct.etharp_hdr, %struct.etharp_hdr* %25, i64 0, i32 3, !dbg !1065
  store i8 4, i8* %50, align 1, !dbg !1066, !tbaa !929
  %51 = tail call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %12, %struct.eth_addr* %1, %struct.eth_addr* %2, i16 zeroext 2054) #7, !dbg !1067
  %52 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1069, !tbaa !1070
  %53 = add i16 %52, 1, !dbg !1069
  store i16 %53, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 0), align 2, !dbg !1069, !tbaa !1070
  %54 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %12) #7, !dbg !1071
  br label %55, !dbg !1072

; <label>:55:                                     ; preds = %32, %14
  %56 = phi i8 [ -1, %14 ], [ 0, %32 ], !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  ret i8 %56, !dbg !1075
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_output(%struct.netif*, %struct.pbuf*, %struct.ip4_addr*) local_unnamed_addr #0 !dbg !1076 {
  %4 = alloca %struct.eth_addr, align 1
  %5 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 0, !dbg !1091
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1091
  %6 = icmp eq %struct.netif* %0, null, !dbg !1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  br i1 %6, label %7, label %8, !dbg !1096

; <label>:7:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1097
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1100
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1100
  unreachable

; <label>:8:                                      ; preds = %3
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br i1 %9, label %10, label %11, !dbg !1107

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1108
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1111
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1111
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = icmp eq %struct.ip4_addr* %2, null, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %12, label %13, label %14, !dbg !1118

; <label>:13:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1119
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1122
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1122
  unreachable

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %2, i64 0, i32 0, !dbg !1126
  %16 = load i32, i32* %15, align 4, !dbg !1126, !tbaa !474
  %17 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %16, %struct.netif* nonnull %0) #7, !dbg !1126
  %18 = icmp eq i8 %17, 0, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  br i1 %18, label %19, label %103, !dbg !1127

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %15, align 4, !dbg !1128, !tbaa !474
  %21 = zext i32 %20 to i64, !dbg !1128
  %22 = and i64 %21, 240, !dbg !1128
  %23 = icmp eq i64 %22, 224, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %23, label %24, label %38, !dbg !1129

; <label>:24:                                     ; preds = %19
  store i8 1, i8* %5, align 1, !dbg !1130, !tbaa !954
  %25 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 1, !dbg !1132
  store i8 0, i8* %25, align 1, !dbg !1133, !tbaa !954
  %26 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 2, !dbg !1134
  store i8 94, i8* %26, align 1, !dbg !1135, !tbaa !954
  %27 = bitcast %struct.ip4_addr* %2 to i8*, !dbg !1136
  %28 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1136
  %29 = load i8, i8* %28, align 1, !dbg !1136, !tbaa !954
  %30 = and i8 %29, 127, !dbg !1137
  %31 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 3, !dbg !1138
  store i8 %30, i8* %31, align 1, !dbg !1139, !tbaa !954
  %32 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !1140
  %33 = load i8, i8* %32, align 2, !dbg !1140, !tbaa !954
  %34 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 4, !dbg !1141
  store i8 %33, i8* %34, align 1, !dbg !1142, !tbaa !954
  %35 = getelementptr inbounds i8, i8* %27, i64 3, !dbg !1143
  %36 = load i8, i8* %35, align 1, !dbg !1143, !tbaa !954
  %37 = getelementptr inbounds %struct.eth_addr, %struct.eth_addr* %4, i64 0, i32 0, i64 5, !dbg !1144
  store i8 %36, i8* %37, align 1, !dbg !1145, !tbaa !954
  br label %103

; <label>:38:                                     ; preds = %19
  %39 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, !dbg !1147
  %40 = load i32, i32* %39, align 8, !dbg !1147, !tbaa !954
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1147
  %42 = load i32, i32* %41, align 8, !dbg !1147, !tbaa !954
  %43 = xor i32 %42, %20, !dbg !1147
  %44 = and i32 %43, %40, !dbg !1147
  %45 = icmp eq i32 %44, 0, !dbg !1147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  br i1 %45, label %56, label %46, !dbg !1149

; <label>:46:                                     ; preds = %38
  %47 = and i64 %21, 65535, !dbg !1150
  %48 = icmp eq i64 %47, 65193, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  br i1 %48, label %56, label %49, !dbg !1151

; <label>:49:                                     ; preds = %46
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 3, i32 0, !dbg !1152
  %51 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0, i32 0, i64 0, !dbg !1152
  %52 = load i32, i32* %51, align 8, !dbg !1152, !tbaa !954
  %53 = icmp eq i32 %52, 0, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  br i1 %53, label %101, label %54, !dbg !1157

; <label>:54:                                     ; preds = %49
  %55 = bitcast %union.anon* %50 to %struct.ip4_addr*, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br label %56, !dbg !1158

; <label>:56:                                     ; preds = %54, %46, %38
  %57 = phi %struct.ip4_addr* [ %2, %38 ], [ %2, %46 ], [ %55, %54 ], !dbg !1159
  %58 = load i8, i8* @etharp_cached_entry, align 1, !dbg !1161, !tbaa !954
  %59 = zext i8 %58 to i64, !dbg !1163
  %60 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 5, !dbg !1164
  %61 = load i8, i8* %60, align 8, !dbg !1164, !tbaa !313
  %62 = icmp ugt i8 %61, 1, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  br i1 %62, label %63, label %77, !dbg !1166

; <label>:63:                                     ; preds = %56
  %64 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 2, !dbg !1167
  %65 = load %struct.netif*, %struct.netif** %64, align 8, !dbg !1167, !tbaa !375
  %66 = icmp eq %struct.netif* %65, %0, !dbg !1168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1169
  br i1 %66, label %67, label %77, !dbg !1169

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0, !dbg !1170
  %69 = load i32, i32* %68, align 4, !dbg !1170, !tbaa !474
  %70 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %59, i32 1, i32 0, !dbg !1170
  %71 = load i32, i32* %70, align 8, !dbg !1170, !tbaa !601
  %72 = icmp eq i32 %69, %71, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1171
  br i1 %72, label %73, label %77, !dbg !1171

; <label>:73:                                     ; preds = %67
  %74 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1172, !tbaa !1174
  %75 = add i16 %74, 1, !dbg !1172
  store i16 %75, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 11), align 2, !dbg !1172, !tbaa !1174
  %76 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %58) #8, !dbg !1175
  br label %101, !dbg !1176

; <label>:77:                                     ; preds = %67, %63, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  %78 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %57, i64 0, i32 0
  br label %79, !dbg !1180

; <label>:79:                                     ; preds = %77, %96
  %80 = phi i64 [ 0, %77 ], [ %97, %96 ]
  %81 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %80, i32 5, !dbg !1181
  %82 = load i8, i8* %81, align 8, !dbg !1181, !tbaa !313
  %83 = icmp ugt i8 %82, 1, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1186
  br i1 %83, label %84, label %96, !dbg !1186

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %80, i32 2, !dbg !1187
  %86 = load %struct.netif*, %struct.netif** %85, align 8, !dbg !1187, !tbaa !375
  %87 = icmp eq %struct.netif* %86, %0, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %87, label %88, label %96, !dbg !1189

; <label>:88:                                     ; preds = %84
  %89 = load i32, i32* %78, align 4, !dbg !1190, !tbaa !474
  %90 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %80, i32 1, i32 0, !dbg !1190
  %91 = load i32, i32* %90, align 8, !dbg !1190, !tbaa !601
  %92 = icmp eq i32 %89, %91, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %92, label %93, label %96, !dbg !1191

; <label>:93:                                     ; preds = %88
  %94 = trunc i64 %80 to i8, !dbg !1177
  store i8 %94, i8* @etharp_cached_entry, align 1, !dbg !1192, !tbaa !954
  %95 = tail call fastcc signext i8 @etharp_output_to_arp_index(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, i8 zeroext %94) #8, !dbg !1194
  br label %101, !dbg !1195

; <label>:96:                                     ; preds = %79, %84, %88
  %97 = add nuw nsw i64 %80, 1, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1197
  %98 = icmp ult i64 %97, 10, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1180
  br i1 %98, label %79, label %99, !dbg !1180, !llvm.loop !1199

; <label>:99:                                     ; preds = %96
  %100 = tail call signext i8 @etharp_query(%struct.netif* nonnull %0, %struct.ip4_addr* %57, %struct.pbuf* nonnull %1) #8, !dbg !1201
  br label %101, !dbg !1202

; <label>:101:                                    ; preds = %49, %99, %93, %73
  %102 = phi i8 [ %76, %73 ], [ %95, %93 ], [ %100, %99 ], [ -4, %49 ], !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br label %108

; <label>:103:                                    ; preds = %14, %24
  %104 = phi %struct.eth_addr* [ %4, %24 ], [ @ethbroadcast, %14 ], !dbg !1205
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %105 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1206
  %106 = bitcast i8* %105 to %struct.eth_addr*, !dbg !1207
  %107 = call signext i8 @ethernet_output(%struct.netif* nonnull %0, %struct.pbuf* nonnull %1, %struct.eth_addr* nonnull %106, %struct.eth_addr* nonnull %104, i16 zeroext 2048) #7, !dbg !1208
  br label %108, !dbg !1209

; <label>:108:                                    ; preds = %103, %101
  %109 = phi i8 [ %107, %103 ], [ %102, %101 ], !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %5) #6, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  ret i8 %109, !dbg !1211
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @ip4_addr_isbroadcast_u32(i32, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @etharp_output_to_arp_index(%struct.netif*, %struct.pbuf*, i8 zeroext) unnamed_addr #0 !dbg !1212 {
  %4 = zext i8 %2 to i64, !dbg !1222
  %5 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 5, !dbg !1222
  %6 = load i8, i8* %5, align 8, !dbg !1222, !tbaa !313
  %7 = icmp ugt i8 %6, 1, !dbg !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br i1 %7, label %9, label %8, !dbg !1225

; <label>:8:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1226
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1229
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1229
  unreachable

; <label>:9:                                      ; preds = %3
  %10 = icmp eq i8 %6, 2, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %10, label %11, label %36, !dbg !1235

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 4, !dbg !1236
  %13 = load i16, i16* %12, align 2, !dbg !1236, !tbaa !331
  %14 = icmp ugt i16 %13, 284, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br i1 %14, label %15, label %24, !dbg !1240

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1241
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1251
  %18 = bitcast i8* %17 to %struct.eth_addr*, !dbg !1252
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1253
  %20 = bitcast %union.anon* %19 to %struct.ip4_addr*, !dbg !1253
  %21 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %18, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %18, %struct.ip4_addr* nonnull %20, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %16, i16 zeroext 1) #7, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  %22 = icmp eq i8 %21, 0, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  br i1 %22, label %23, label %36, !dbg !1258

; <label>:23:                                     ; preds = %15
  store i8 3, i8* %5, align 8, !dbg !1259, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br label %36, !dbg !1261

; <label>:24:                                     ; preds = %11
  %25 = icmp ugt i16 %13, 269, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %25, label %26, label %36, !dbg !1264

; <label>:26:                                     ; preds = %24
  %27 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 1, !dbg !1265
  %28 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1268
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1273
  %30 = bitcast i8* %29 to %struct.eth_addr*, !dbg !1274
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1275
  %32 = bitcast %union.anon* %31 to %struct.ip4_addr*, !dbg !1275
  %33 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %30, %struct.eth_addr* nonnull %28, %struct.eth_addr* nonnull %30, %struct.ip4_addr* nonnull %32, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %27, i16 zeroext 1) #7, !dbg !1276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1277
  %34 = icmp eq i8 %33, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %34, label %35, label %36, !dbg !1279

; <label>:35:                                     ; preds = %26
  store i8 3, i8* %5, align 8, !dbg !1280, !tbaa !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1282
  br label %36, !dbg !1282

; <label>:36:                                     ; preds = %23, %15, %26, %35, %24, %9
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1283
  %38 = bitcast i8* %37 to %struct.eth_addr*, !dbg !1284
  %39 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %4, i32 3, !dbg !1285
  %40 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* %1, %struct.eth_addr* nonnull %38, %struct.eth_addr* nonnull %39, i16 zeroext 2048) #7, !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  ret i8 %40, !dbg !1287
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @etharp_query(%struct.netif*, %struct.ip4_addr*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1288 {
  %4 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 19, i64 0, !dbg !1308
  %5 = bitcast i8* %4 to %struct.eth_addr*, !dbg !1309
  %6 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %1, i64 0, i32 0, !dbg !1313
  %7 = load i32, i32* %6, align 4, !dbg !1313, !tbaa !474
  %8 = tail call zeroext i8 @ip4_addr_isbroadcast_u32(i32 %7, %struct.netif* %0) #7, !dbg !1313
  %9 = icmp eq i8 %8, 0, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %9, label %10, label %104, !dbg !1315

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %6, align 4, !dbg !1316, !tbaa !474
  %12 = and i32 %11, 240, !dbg !1316
  %13 = icmp eq i32 %12, 224, !dbg !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  br i1 %13, label %104, label %14, !dbg !1317

; <label>:14:                                     ; preds = %10
  %15 = icmp eq i32 %11, 0, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %15, label %104, label %16, !dbg !1319

; <label>:16:                                     ; preds = %14
  %17 = tail call fastcc signext i16 @etharp_find_entry(%struct.ip4_addr* nonnull %1, i8 zeroext 1, %struct.netif* %0) #8, !dbg !1320
  %18 = icmp slt i16 %17, 0, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %18, label %19, label %26, !dbg !1324

; <label>:19:                                     ; preds = %16
  %20 = icmp eq %struct.pbuf* %2, null, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br i1 %20, label %24, label %21, !dbg !1328

; <label>:21:                                     ; preds = %19
  %22 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1329, !tbaa !1025
  %23 = add i16 %22, 1, !dbg !1329
  store i16 %23, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1329, !tbaa !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br label %24, !dbg !1331

; <label>:24:                                     ; preds = %19, %21
  %25 = trunc i16 %17 to i8, !dbg !1332
  br label %104, !dbg !1333

; <label>:26:                                     ; preds = %16
  %27 = icmp ult i16 %17, 127, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %27, label %29, label %28, !dbg !1337

; <label>:28:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1338
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1341
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1341
  unreachable

; <label>:29:                                     ; preds = %26
  %30 = trunc i16 %17 to i8, !dbg !1345
  %31 = and i16 %17, 255, !dbg !1347
  %32 = zext i16 %31 to i64, !dbg !1347
  %33 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 5, !dbg !1349
  %34 = load i8, i8* %33, align 8, !dbg !1349, !tbaa !313
  %35 = icmp eq i8 %34, 0, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %35, label %36, label %39, !dbg !1351

; <label>:36:                                     ; preds = %29
  store i8 1, i8* %33, align 8, !dbg !1352, !tbaa !313
  %37 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 2, !dbg !1354
  store %struct.netif* %0, %struct.netif** %37, align 8, !dbg !1355, !tbaa !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %38 = icmp eq %struct.pbuf* %2, null, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br label %44, !dbg !1362

; <label>:39:                                     ; preds = %29
  %40 = icmp eq i8 %34, 1, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  br i1 %40, label %42, label %41, !dbg !1357

; <label>:41:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  br label %42

; <label>:42:                                     ; preds = %41, %39
  %43 = icmp eq %struct.pbuf* %2, null, !dbg !1360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  br i1 %43, label %44, label %51, !dbg !1362

; <label>:44:                                     ; preds = %36, %42
  %45 = phi i1 [ %38, %36 ], [ true, %42 ]
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 1, i32 0, !dbg !1372
  %47 = bitcast %union.anon* %46 to %struct.ip4_addr*, !dbg !1372
  %48 = tail call fastcc signext i8 @etharp_raw(%struct.netif* %0, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull @ethbroadcast, %struct.eth_addr* nonnull %5, %struct.ip4_addr* nonnull %47, %struct.eth_addr* nonnull @ethzero, %struct.ip4_addr* nonnull %1, i16 zeroext 1) #7, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br i1 %45, label %106, label %49, !dbg !1376

; <label>:49:                                     ; preds = %44
  %50 = load i8, i8* %33, align 8, !dbg !1379, !tbaa !313
  br label %52, !dbg !1376

; <label>:51:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br label %52, !dbg !1380

; <label>:52:                                     ; preds = %49, %51
  %53 = phi i8 [ %34, %51 ], [ %50, %49 ], !dbg !1379
  %54 = phi i8 [ -1, %51 ], [ %48, %49 ]
  %55 = icmp ugt i8 %53, 1, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %55, label %56, label %59, !dbg !1382

; <label>:56:                                     ; preds = %52
  store i8 %30, i8* @etharp_cached_entry, align 1, !dbg !1383, !tbaa !954
  %57 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 3, !dbg !1385
  %58 = tail call signext i8 @ethernet_output(%struct.netif* %0, %struct.pbuf* nonnull %2, %struct.eth_addr* nonnull %5, %struct.eth_addr* nonnull %57, i16 zeroext 2048) #7, !dbg !1386
  br label %102, !dbg !1387

; <label>:59:                                     ; preds = %52
  %60 = icmp eq i8 %53, 1, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br i1 %60, label %61, label %104, !dbg !1389

; <label>:61:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  %62 = icmp eq %struct.pbuf* %2, null, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br i1 %62, label %86, label %63, !dbg !1392

; <label>:63:                                     ; preds = %61, %82
  %64 = phi %struct.pbuf* [ %84, %82 ], [ %2, %61 ]
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 3, !dbg !1393
  %66 = load i16, i16* %65, align 2, !dbg !1393, !tbaa !1030
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 2, !dbg !1393
  %68 = load i16, i16* %67, align 8, !dbg !1393, !tbaa !1397
  %69 = icmp eq i16 %66, %68, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  br i1 %69, label %70, label %75, !dbg !1393

; <label>:70:                                     ; preds = %63
  %71 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 0, !dbg !1393
  %72 = load %struct.pbuf*, %struct.pbuf** %71, align 8, !dbg !1393, !tbaa !1398
  %73 = icmp eq %struct.pbuf* %72, null, !dbg !1393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br i1 %73, label %75, label %74, !dbg !1399

; <label>:74:                                     ; preds = %70
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !1400
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1403
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1403
  unreachable

; <label>:75:                                     ; preds = %63, %70
  %76 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 4, !dbg !1407
  %77 = load i8, i8* %76, align 4, !dbg !1407, !tbaa !1409
  %78 = and i8 %77, 64, !dbg !1407
  %79 = icmp eq i8 %78, 0, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br i1 %79, label %82, label %80, !dbg !1410

; <label>:80:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  %81 = tail call %struct.pbuf* @pbuf_clone(i32 14, i32 640, %struct.pbuf* nonnull %2) #7, !dbg !1414
  br label %87, !dbg !1417

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 0, !dbg !1418
  %84 = load %struct.pbuf*, %struct.pbuf** %83, align 8, !dbg !1418, !tbaa !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  %85 = icmp eq %struct.pbuf* %84, null, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br i1 %85, label %86, label %63, !dbg !1392, !llvm.loop !1419

; <label>:86:                                     ; preds = %82, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  tail call void @pbuf_ref(%struct.pbuf* nonnull %2) #7, !dbg !1421
  br label %87

; <label>:87:                                     ; preds = %86, %80
  %88 = phi %struct.pbuf* [ %81, %80 ], [ %2, %86 ], !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %89 = icmp eq %struct.pbuf* %88, null, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br i1 %89, label %97, label %90, !dbg !1426

; <label>:90:                                     ; preds = %87
  %91 = getelementptr inbounds [10 x %struct.etharp_entry], [10 x %struct.etharp_entry]* @arp_table, i64 0, i64 %32, i32 0, !dbg !1427
  %92 = load %struct.pbuf*, %struct.pbuf** %91, align 8, !dbg !1427, !tbaa !349
  %93 = icmp eq %struct.pbuf* %92, null, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br i1 %93, label %96, label %94, !dbg !1431

; <label>:94:                                     ; preds = %90
  %95 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %92) #7, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  br label %96, !dbg !1434

; <label>:96:                                     ; preds = %90, %94
  store %struct.pbuf* %88, %struct.pbuf** %91, align 8, !dbg !1435, !tbaa !349
  br label %100, !dbg !1436

; <label>:97:                                     ; preds = %87
  %98 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1437, !tbaa !1025
  %99 = add i16 %98, 1, !dbg !1437
  store i16 %99, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 1, i32 6), align 2, !dbg !1437, !tbaa !1025
  br label %100

; <label>:100:                                    ; preds = %97, %96
  %101 = phi i8 [ 0, %96 ], [ -1, %97 ], !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %102, !dbg !1440

; <label>:102:                                    ; preds = %56, %100
  %103 = phi i8 [ %101, %100 ], [ %58, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1441
  br label %104, !dbg !1442

; <label>:104:                                    ; preds = %59, %102, %10, %14, %3, %24
  %105 = phi i8 [ %25, %24 ], [ -16, %3 ], [ -16, %14 ], [ -16, %10 ], [ %54, %59 ], [ %103, %102 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1443
  br label %106, !dbg !1445

; <label>:106:                                    ; preds = %104, %44
  %107 = phi i8 [ %48, %44 ], [ %105, %104 ], !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1445
  ret i8 %107, !dbg !1445
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
!310 = !DILocation(line: 203, column: 8, scope: !308)
!311 = !DILocation(line: 203, column: 3, scope: !308)
!312 = !DILocation(line: 204, column: 31, scope: !306)
!313 = !{!314, !316, i64 32}
!314 = !{!"etharp_entry", !315, i64 0, !318, i64 8, !315, i64 16, !320, i64 24, !321, i64 30, !316, i64 32}
!315 = !{!"any pointer", !316, i64 0}
!316 = !{!"omnipotent char", !317, i64 0}
!317 = !{!"Simple C/C++ TBAA"}
!318 = !{!"ip4_addr", !319, i64 0}
!319 = !{!"int", !316, i64 0}
!320 = !{!"eth_addr", !316, i64 0}
!321 = !{!"short", !316, i64 0}
!322 = !DILocation(line: 204, column: 10, scope: !306)
!323 = !DILocation(line: 205, column: 15, scope: !324)
!324 = distinct !DILexicalBlock(scope: !306, file: !3, line: 205, column: 9)
!325 = !DILocation(line: 207, column: 9, scope: !324)
!326 = !DILocation(line: 207, column: 19, scope: !324)
!327 = !DILocation(line: 205, column: 9, scope: !306)
!328 = !DILocation(line: 210, column: 20, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 209, column: 10)
!330 = !DILocation(line: 210, column: 25, scope: !329)
!331 = !{!314, !321, i64 30}
!332 = !DILocation(line: 211, column: 31, scope: !333)
!333 = distinct !DILexicalBlock(scope: !329, file: !3, line: 211, column: 11)
!334 = !DILocation(line: 211, column: 46, scope: !333)
!335 = !DILocation(line: 212, column: 32, scope: !333)
!336 = !DILocation(line: 212, column: 58, scope: !333)
!337 = !DILocation(line: 213, column: 32, scope: !333)
!338 = !DILocation(line: 211, column: 11, scope: !329)
!339 = !DILocalVariable(name: "i", arg: 1, scope: !340, file: !3, line: 168, type: !21)
!340 = distinct !DISubprogram(name: "etharp_free_entry", scope: !3, file: !3, line: 168, type: !341, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !21}
!343 = !{!339}
!344 = !DILocation(line: 168, column: 23, scope: !340, inlinedAt: !345)
!345 = distinct !DILocation(line: 218, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !333, file: !3, line: 213, column: 53)
!347 = !DILocation(line: 173, column: 20, scope: !348, inlinedAt: !345)
!348 = distinct !DILexicalBlock(scope: !340, file: !3, line: 173, column: 7)
!349 = !{!314, !315, i64 0}
!350 = !DILocation(line: 173, column: 22, scope: !348, inlinedAt: !345)
!351 = !DILocation(line: 173, column: 7, scope: !340, inlinedAt: !345)
!352 = !DILocation(line: 176, column: 5, scope: !353, inlinedAt: !345)
!353 = distinct !DILexicalBlock(scope: !348, file: !3, line: 173, column: 31)
!354 = !DILocation(line: 177, column: 20, scope: !353, inlinedAt: !345)
!355 = !DILocation(line: 178, column: 3, scope: !353, inlinedAt: !345)
!356 = !DILocation(line: 180, column: 22, scope: !340, inlinedAt: !345)
!357 = !DILocation(line: 188, column: 1, scope: !340, inlinedAt: !345)
!358 = !DILocation(line: 219, column: 7, scope: !346)
!359 = !DILocation(line: 219, column: 37, scope: !360)
!360 = distinct !DILexicalBlock(scope: !333, file: !3, line: 219, column: 18)
!361 = !DILocation(line: 219, column: 18, scope: !333)
!362 = !DILocation(line: 221, column: 28, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !3, line: 219, column: 76)
!364 = !DILocation(line: 222, column: 7, scope: !363)
!365 = !DILocation(line: 222, column: 37, scope: !366)
!366 = distinct !DILexicalBlock(scope: !360, file: !3, line: 222, column: 18)
!367 = !DILocation(line: 222, column: 18, scope: !360)
!368 = !DILocation(line: 225, column: 28, scope: !369)
!369 = distinct !DILexicalBlock(scope: !366, file: !3, line: 222, column: 76)
!370 = !DILocation(line: 226, column: 7, scope: !369)
!371 = !DILocation(line: 226, column: 18, scope: !366)
!372 = !DILocation(line: 228, column: 37, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 226, column: 62)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 226, column: 18)
!375 = !{!314, !315, i64 16}
!376 = !DILocation(line: 228, column: 58, scope: !373)
!377 = !DILocalVariable(name: "netif", arg: 1, scope: !378, file: !3, line: 1198, type: !209)
!378 = distinct !DISubprogram(name: "etharp_request", scope: !3, file: !3, line: 1198, type: !379, isLocal: false, isDefinition: true, scopeLine: 1199, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !381)
!379 = !DISubroutineType(types: !380)
!380 = !{!91, !209, !132}
!381 = !{!377, !382}
!382 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !378, file: !3, line: 1198, type: !132)
!383 = !DILocation(line: 1198, column: 30, scope: !378, inlinedAt: !384)
!384 = distinct !DILocation(line: 228, column: 9, scope: !373)
!385 = !DILocation(line: 1198, column: 55, scope: !378, inlinedAt: !384)
!386 = !DILocalVariable(name: "netif", arg: 1, scope: !387, file: !3, line: 1181, type: !209)
!387 = distinct !DISubprogram(name: "etharp_request_dst", scope: !3, file: !3, line: 1181, type: !388, isLocal: true, isDefinition: true, scopeLine: 1182, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!91, !209, !132, !143}
!390 = !{!386, !391, !392}
!391 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !387, file: !3, line: 1181, type: !132)
!392 = !DILocalVariable(name: "hw_dst_addr", arg: 3, scope: !387, file: !3, line: 1181, type: !143)
!393 = !DILocation(line: 1181, column: 34, scope: !387, inlinedAt: !394)
!394 = distinct !DILocation(line: 1201, column: 10, scope: !378, inlinedAt: !384)
!395 = !DILocation(line: 1181, column: 59, scope: !387, inlinedAt: !394)
!396 = !DILocation(line: 1181, column: 90, scope: !387, inlinedAt: !394)
!397 = !DILocation(line: 1183, column: 47, scope: !387, inlinedAt: !394)
!398 = !DILocation(line: 1183, column: 28, scope: !387, inlinedAt: !394)
!399 = !DILocation(line: 1184, column: 55, scope: !387, inlinedAt: !394)
!400 = !DILocation(line: 1183, column: 10, scope: !387, inlinedAt: !394)
!401 = !DILocation(line: 1183, column: 3, scope: !387, inlinedAt: !394)
!402 = !DILocation(line: 1201, column: 3, scope: !378, inlinedAt: !384)
!403 = !DILocation(line: 229, column: 7, scope: !373)
!404 = !DILocation(line: 203, column: 35, scope: !307)
!405 = !DILocation(line: 203, column: 3, scope: !307)
!406 = !DILocation(line: 203, column: 17, scope: !307)
!407 = distinct !{!407, !311, !408}
!408 = !DILocation(line: 231, column: 3, scope: !308)
!409 = !DILocation(line: 232, column: 1, scope: !300)
!410 = !DILocation(line: 1198, column: 30, scope: !378)
!411 = !DILocation(line: 1198, column: 55, scope: !378)
!412 = !DILocation(line: 1181, column: 34, scope: !387, inlinedAt: !413)
!413 = distinct !DILocation(line: 1201, column: 10, scope: !378)
!414 = !DILocation(line: 1181, column: 59, scope: !387, inlinedAt: !413)
!415 = !DILocation(line: 1181, column: 90, scope: !387, inlinedAt: !413)
!416 = !DILocation(line: 1183, column: 47, scope: !387, inlinedAt: !413)
!417 = !DILocation(line: 1183, column: 28, scope: !387, inlinedAt: !413)
!418 = !DILocation(line: 1184, column: 55, scope: !387, inlinedAt: !413)
!419 = !DILocation(line: 1183, column: 10, scope: !387, inlinedAt: !413)
!420 = !DILocation(line: 1183, column: 3, scope: !387, inlinedAt: !413)
!421 = !DILocation(line: 1201, column: 3, scope: !378)
!422 = distinct !DISubprogram(name: "etharp_add_static_entry", scope: !3, file: !3, line: 503, type: !423, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{!91, !132, !142}
!425 = !{!426, !427, !428}
!426 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !422, file: !3, line: 503, type: !132)
!427 = !DILocalVariable(name: "ethaddr", arg: 2, scope: !422, file: !3, line: 503, type: !142)
!428 = !DILocalVariable(name: "netif", scope: !422, file: !3, line: 505, type: !209)
!429 = !DILocation(line: 503, column: 43, scope: !422)
!430 = !DILocation(line: 503, column: 68, scope: !422)
!431 = !DILocation(line: 512, column: 11, scope: !422)
!432 = !DILocation(line: 505, column: 17, scope: !422)
!433 = !DILocation(line: 513, column: 13, scope: !434)
!434 = distinct !DILexicalBlock(scope: !422, file: !3, line: 513, column: 7)
!435 = !DILocation(line: 513, column: 7, scope: !422)
!436 = !DILocation(line: 517, column: 10, scope: !422)
!437 = !DILocation(line: 517, column: 3, scope: !422)
!438 = !DILocation(line: 0, scope: !422)
!439 = !DILocation(line: 0, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !3, line: 513, column: 22)
!441 = !DILocation(line: 518, column: 1, scope: !422)
!442 = distinct !DISubprogram(name: "etharp_update_arp_entry", scope: !3, file: !3, line: 422, type: !443, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!91, !209, !132, !142, !109}
!445 = !{!446, !447, !448, !449, !450, !451}
!446 = !DILocalVariable(name: "netif", arg: 1, scope: !442, file: !3, line: 422, type: !209)
!447 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !442, file: !3, line: 422, type: !132)
!448 = !DILocalVariable(name: "ethaddr", arg: 3, scope: !442, file: !3, line: 422, type: !142)
!449 = !DILocalVariable(name: "flags", arg: 4, scope: !442, file: !3, line: 422, type: !109)
!450 = !DILocalVariable(name: "i", scope: !442, file: !3, line: 424, type: !153)
!451 = !DILocalVariable(name: "p", scope: !452, file: !3, line: 482, type: !196)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 481, column: 31)
!453 = distinct !DILexicalBlock(scope: !442, file: !3, line: 481, column: 7)
!454 = !DILocation(line: 422, column: 39, scope: !442)
!455 = !DILocation(line: 422, column: 64, scope: !442)
!456 = !DILocation(line: 422, column: 89, scope: !442)
!457 = !DILocation(line: 422, column: 103, scope: !442)
!458 = !DILocation(line: 425, column: 3, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 425, column: 3)
!460 = distinct !DILexicalBlock(scope: !442, file: !3, line: 425, column: 3)
!461 = !{!462, !316, i64 260}
!462 = !{!"netif", !315, i64 0, !463, i64 8, !463, i64 32, !463, i64 56, !316, i64 80, !316, i64 152, !316, i64 156, !316, i64 168, !315, i64 184, !315, i64 192, !315, i64 200, !315, i64 208, !315, i64 216, !315, i64 224, !315, i64 232, !316, i64 240, !321, i64 248, !321, i64 250, !321, i64 252, !316, i64 254, !316, i64 260, !316, i64 261, !316, i64 262, !316, i64 264, !316, i64 265, !316, i64 266, !315, i64 272}
!463 = !{!"ip_addr", !316, i64 0, !316, i64 20}
!464 = !DILocation(line: 425, column: 3, scope: !460)
!465 = !DILocation(line: 425, column: 3, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 425, column: 3)
!467 = distinct !DILexicalBlock(scope: !459, file: !3, line: 425, column: 3)
!468 = !DILocation(line: 425, column: 3, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 425, column: 3)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 425, column: 3)
!471 = distinct !DILexicalBlock(scope: !466, file: !3, line: 425, column: 3)
!472 = !DILocation(line: 431, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !442, file: !3, line: 431, column: 7)
!474 = !{!318, !319, i64 0}
!475 = !DILocation(line: 431, column: 30, scope: !473)
!476 = !DILocation(line: 432, column: 7, scope: !473)
!477 = !DILocation(line: 432, column: 43, scope: !473)
!478 = !DILocation(line: 433, column: 7, scope: !473)
!479 = !DILocation(line: 431, column: 7, scope: !442)
!480 = !DILocation(line: 438, column: 7, scope: !442)
!481 = !DILocation(line: 424, column: 9, scope: !442)
!482 = !DILocation(line: 440, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !442, file: !3, line: 440, column: 7)
!484 = !DILocation(line: 440, column: 7, scope: !442)
!485 = !DILocation(line: 441, column: 12, scope: !486)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 440, column: 14)
!487 = !DILocation(line: 441, column: 5, scope: !486)
!488 = !DILocation(line: 445, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !442, file: !3, line: 445, column: 7)
!490 = !DILocation(line: 0, scope: !491)
!491 = distinct !DILexicalBlock(scope: !489, file: !3, line: 448, column: 14)
!492 = !DILocation(line: 445, column: 7, scope: !442)
!493 = !DILocation(line: 448, column: 27, scope: !491)
!494 = !DILocation(line: 448, column: 33, scope: !491)
!495 = !DILocation(line: 448, column: 14, scope: !489)
!496 = !DILocation(line: 0, scope: !497)
!497 = distinct !DILexicalBlock(scope: !489, file: !3, line: 445, column: 41)
!498 = !DILocation(line: 459, column: 16, scope: !442)
!499 = !DILocation(line: 459, column: 22, scope: !442)
!500 = !DILocation(line: 465, column: 3, scope: !442)
!501 = !DILocation(line: 467, column: 16, scope: !442)
!502 = !DILocation(line: 467, column: 22, scope: !442)
!503 = !DILocation(line: 481, column: 20, scope: !453)
!504 = !DILocation(line: 481, column: 22, scope: !453)
!505 = !DILocation(line: 481, column: 7, scope: !442)
!506 = !DILocation(line: 482, column: 18, scope: !452)
!507 = !DILocation(line: 483, column: 20, scope: !452)
!508 = !DILocation(line: 486, column: 50, scope: !452)
!509 = !DILocation(line: 486, column: 31, scope: !452)
!510 = !DILocation(line: 486, column: 5, scope: !452)
!511 = !DILocation(line: 488, column: 5, scope: !452)
!512 = !DILocation(line: 489, column: 3, scope: !452)
!513 = !DILocation(line: 0, scope: !514)
!514 = distinct !DILexicalBlock(scope: !491, file: !3, line: 448, column: 57)
!515 = !DILocation(line: 0, scope: !516)
!516 = distinct !DILexicalBlock(scope: !473, file: !3, line: 433, column: 37)
!517 = !DILocation(line: 491, column: 1, scope: !442)
!518 = distinct !DISubprogram(name: "etharp_remove_static_entry", scope: !3, file: !3, line: 529, type: !519, isLocal: false, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!91, !132}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !518, file: !3, line: 529, type: !132)
!523 = !DILocalVariable(name: "i", scope: !518, file: !3, line: 531, type: !153)
!524 = !DILocation(line: 529, column: 46, scope: !518)
!525 = !DILocation(line: 537, column: 7, scope: !518)
!526 = !DILocation(line: 531, column: 9, scope: !518)
!527 = !DILocation(line: 539, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !518, file: !3, line: 539, column: 7)
!529 = !DILocation(line: 539, column: 7, scope: !518)
!530 = !DILocation(line: 540, column: 12, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 539, column: 14)
!532 = !DILocation(line: 540, column: 5, scope: !531)
!533 = !DILocation(line: 543, column: 7, scope: !534)
!534 = distinct !DILexicalBlock(scope: !518, file: !3, line: 543, column: 7)
!535 = !DILocation(line: 543, column: 20, scope: !534)
!536 = !DILocation(line: 543, column: 26, scope: !534)
!537 = !DILocation(line: 543, column: 7, scope: !518)
!538 = !DILocation(line: 173, column: 20, scope: !348, inlinedAt: !539)
!539 = distinct !DILocation(line: 548, column: 3, scope: !518)
!540 = !DILocation(line: 173, column: 22, scope: !348, inlinedAt: !539)
!541 = !DILocation(line: 173, column: 7, scope: !340, inlinedAt: !539)
!542 = !DILocation(line: 176, column: 5, scope: !353, inlinedAt: !539)
!543 = !DILocation(line: 177, column: 20, scope: !353, inlinedAt: !539)
!544 = !DILocation(line: 178, column: 3, scope: !353, inlinedAt: !539)
!545 = !DILocation(line: 180, column: 22, scope: !340, inlinedAt: !539)
!546 = !DILocation(line: 188, column: 1, scope: !340, inlinedAt: !539)
!547 = !DILocation(line: 549, column: 3, scope: !518)
!548 = !DILocation(line: 0, scope: !518)
!549 = !DILocation(line: 0, scope: !531)
!550 = !DILocation(line: 550, column: 1, scope: !518)
!551 = distinct !DISubprogram(name: "etharp_find_entry", scope: !3, file: !3, line: 256, type: !552, isLocal: true, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !554)
!552 = !DISubroutineType(types: !553)
!553 = !{!153, !132, !109, !209}
!554 = !{!555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!555 = !DILocalVariable(name: "ipaddr", arg: 1, scope: !551, file: !3, line: 256, type: !132)
!556 = !DILocalVariable(name: "flags", arg: 2, scope: !551, file: !3, line: 256, type: !109)
!557 = !DILocalVariable(name: "netif", arg: 3, scope: !551, file: !3, line: 256, type: !209)
!558 = !DILocalVariable(name: "old_pending", scope: !551, file: !3, line: 258, type: !153)
!559 = !DILocalVariable(name: "old_stable", scope: !551, file: !3, line: 258, type: !153)
!560 = !DILocalVariable(name: "empty", scope: !551, file: !3, line: 259, type: !153)
!561 = !DILocalVariable(name: "i", scope: !551, file: !3, line: 260, type: !153)
!562 = !DILocalVariable(name: "old_queue", scope: !551, file: !3, line: 262, type: !153)
!563 = !DILocalVariable(name: "age_queue", scope: !551, file: !3, line: 264, type: !103)
!564 = !DILocalVariable(name: "age_pending", scope: !551, file: !3, line: 264, type: !103)
!565 = !DILocalVariable(name: "age_stable", scope: !551, file: !3, line: 264, type: !103)
!566 = !DILocalVariable(name: "state", scope: !567, file: !3, line: 284, type: !109)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 283, column: 40)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 283, column: 3)
!569 = distinct !DILexicalBlock(scope: !551, file: !3, line: 283, column: 3)
!570 = !DILocation(line: 256, column: 37, scope: !551)
!571 = !DILocation(line: 256, column: 50, scope: !551)
!572 = !DILocation(line: 256, column: 71, scope: !551)
!573 = !DILocation(line: 258, column: 9, scope: !551)
!574 = !DILocation(line: 258, column: 39, scope: !551)
!575 = !DILocation(line: 259, column: 9, scope: !551)
!576 = !DILocation(line: 260, column: 9, scope: !551)
!577 = !DILocation(line: 262, column: 9, scope: !551)
!578 = !DILocation(line: 264, column: 9, scope: !551)
!579 = !DILocation(line: 264, column: 24, scope: !551)
!580 = !DILocation(line: 264, column: 41, scope: !551)
!581 = !DILocation(line: 283, column: 8, scope: !569)
!582 = !DILocation(line: 283, column: 3, scope: !569)
!583 = !DILocation(line: 284, column: 31, scope: !567)
!584 = !DILocation(line: 284, column: 10, scope: !567)
!585 = !DILocation(line: 286, column: 16, scope: !586)
!586 = distinct !DILexicalBlock(scope: !567, file: !3, line: 286, column: 9)
!587 = !DILocation(line: 286, column: 35, scope: !586)
!588 = !DILocation(line: 0, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !3, line: 290, column: 16)
!590 = !DILocation(line: 0, scope: !586)
!591 = !DILocation(line: 286, column: 9, scope: !567)
!592 = !DILocation(line: 290, column: 16, scope: !586)
!593 = !DILocation(line: 291, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 291, column: 7)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 291, column: 7)
!596 = distinct !DILexicalBlock(scope: !589, file: !3, line: 290, column: 45)
!597 = !DILocation(line: 291, column: 7, scope: !595)
!598 = !DILocation(line: 294, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 294, column: 11)
!600 = !DILocation(line: 294, column: 21, scope: !599)
!601 = !{!314, !319, i64 8}
!602 = !DILocation(line: 296, column: 11, scope: !599)
!603 = !DILocation(line: 296, column: 31, scope: !599)
!604 = !DILocation(line: 296, column: 57, scope: !599)
!605 = !DILocation(line: 296, column: 41, scope: !599)
!606 = !DILocation(line: 294, column: 11, scope: !596)
!607 = !DILocation(line: 304, column: 11, scope: !596)
!608 = !DILocation(line: 306, column: 26, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 306, column: 13)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 304, column: 42)
!611 = distinct !DILexicalBlock(scope: !596, file: !3, line: 304, column: 11)
!612 = !DILocation(line: 306, column: 28, scope: !609)
!613 = !DILocation(line: 0, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 314, column: 15)
!615 = distinct !DILexicalBlock(scope: !609, file: !3, line: 313, column: 9)
!616 = !DILocation(line: 306, column: 13, scope: !610)
!617 = !DILocation(line: 307, column: 34, scope: !618)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 307, column: 15)
!619 = distinct !DILexicalBlock(scope: !609, file: !3, line: 306, column: 37)
!620 = !DILocation(line: 307, column: 15, scope: !619)
!621 = !DILocation(line: 310, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !3, line: 307, column: 48)
!623 = !DILocation(line: 314, column: 34, scope: !614)
!624 = !DILocation(line: 314, column: 15, scope: !615)
!625 = !DILocation(line: 317, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !614, file: !3, line: 314, column: 50)
!627 = !DILocation(line: 320, column: 18, scope: !611)
!628 = !DILocation(line: 323, column: 19, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 323, column: 13)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 320, column: 48)
!631 = distinct !DILexicalBlock(scope: !611, file: !3, line: 320, column: 18)
!632 = !DILocation(line: 323, column: 13, scope: !630)
!633 = !DILocation(line: 327, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 327, column: 15)
!635 = distinct !DILexicalBlock(scope: !629, file: !3, line: 325, column: 9)
!636 = !DILocation(line: 327, column: 34, scope: !634)
!637 = !DILocation(line: 327, column: 15, scope: !635)
!638 = !DILocation(line: 330, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !3, line: 327, column: 49)
!640 = !DILocation(line: 301, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !599, file: !3, line: 298, column: 12)
!642 = !DILocation(line: 0, scope: !551)
!643 = !DILocation(line: 334, column: 3, scope: !568)
!644 = !DILocation(line: 283, column: 35, scope: !568)
!645 = !DILocation(line: 283, column: 3, scope: !568)
!646 = !DILocation(line: 283, column: 17, scope: !568)
!647 = distinct !{!647, !582, !648}
!648 = !DILocation(line: 334, column: 3, scope: !569)
!649 = !DILocation(line: 338, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !551, file: !3, line: 338, column: 7)
!651 = !DILocation(line: 338, column: 15, scope: !650)
!652 = !DILocation(line: 338, column: 40, scope: !650)
!653 = !DILocation(line: 338, column: 46, scope: !650)
!654 = !DILocation(line: 340, column: 15, scope: !650)
!655 = !DILocation(line: 340, column: 34, scope: !650)
!656 = !DILocation(line: 340, column: 45, scope: !650)
!657 = !DILocation(line: 340, column: 69, scope: !650)
!658 = !DILocation(line: 338, column: 7, scope: !551)
!659 = !DILocation(line: 355, column: 7, scope: !551)
!660 = !DILocation(line: 355, column: 13, scope: !661)
!661 = distinct !DILexicalBlock(scope: !551, file: !3, line: 355, column: 7)
!662 = !DILocation(line: 360, column: 20, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 360, column: 9)
!664 = distinct !DILexicalBlock(scope: !661, file: !3, line: 358, column: 10)
!665 = !DILocation(line: 360, column: 9, scope: !664)
!666 = !DILocation(line: 365, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 365, column: 7)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 365, column: 7)
!669 = distinct !DILexicalBlock(scope: !663, file: !3, line: 360, column: 38)
!670 = !DILocation(line: 365, column: 7, scope: !668)
!671 = !DILocation(line: 365, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 365, column: 7)
!673 = distinct !DILexicalBlock(scope: !667, file: !3, line: 365, column: 7)
!674 = !DILocation(line: 365, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 365, column: 7)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 365, column: 7)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 365, column: 7)
!678 = !DILocation(line: 367, column: 28, scope: !679)
!679 = distinct !DILexicalBlock(scope: !663, file: !3, line: 367, column: 16)
!680 = !DILocation(line: 367, column: 16, scope: !663)
!681 = !DILocation(line: 372, column: 5, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !3, line: 367, column: 46)
!683 = !DILocation(line: 372, column: 26, scope: !684)
!684 = distinct !DILexicalBlock(scope: !679, file: !3, line: 372, column: 16)
!685 = !DILocation(line: 372, column: 16, scope: !679)
!686 = !DILocation(line: 0, scope: !687)
!687 = distinct !DILexicalBlock(scope: !684, file: !3, line: 372, column: 44)
!688 = !DILocation(line: 383, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !664, file: !3, line: 383, column: 5)
!690 = !DILocation(line: 173, column: 7, scope: !348, inlinedAt: !691)
!691 = distinct !DILocation(line: 384, column: 5, scope: !664)
!692 = !DILocation(line: 168, column: 23, scope: !340, inlinedAt: !691)
!693 = !DILocation(line: 173, column: 20, scope: !348, inlinedAt: !691)
!694 = !DILocation(line: 173, column: 22, scope: !348, inlinedAt: !691)
!695 = !DILocation(line: 173, column: 7, scope: !340, inlinedAt: !691)
!696 = !DILocation(line: 176, column: 5, scope: !353, inlinedAt: !691)
!697 = !DILocation(line: 177, column: 20, scope: !353, inlinedAt: !691)
!698 = !DILocation(line: 178, column: 3, scope: !353, inlinedAt: !691)
!699 = !DILocation(line: 180, column: 16, scope: !340, inlinedAt: !691)
!700 = !DILocation(line: 180, column: 22, scope: !340, inlinedAt: !691)
!701 = !DILocation(line: 188, column: 1, scope: !340, inlinedAt: !691)
!702 = !DILocation(line: 387, column: 3, scope: !703)
!703 = distinct !DILexicalBlock(scope: !551, file: !3, line: 387, column: 3)
!704 = !DILocation(line: 388, column: 3, scope: !705)
!705 = distinct !DILexicalBlock(scope: !551, file: !3, line: 388, column: 3)
!706 = !DILocation(line: 358, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !661, file: !3, line: 355, column: 31)
!708 = !DILocation(line: 388, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 388, column: 3)
!710 = !DILocation(line: 388, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 388, column: 3)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 388, column: 3)
!713 = !DILocation(line: 388, column: 3, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 388, column: 3)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 388, column: 3)
!716 = distinct !DILexicalBlock(scope: !711, file: !3, line: 388, column: 3)
!717 = !DILocation(line: 392, column: 7, scope: !551)
!718 = !DILocation(line: 394, column: 5, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 392, column: 23)
!720 = distinct !DILexicalBlock(scope: !551, file: !3, line: 392, column: 7)
!721 = !DILocation(line: 395, column: 3, scope: !719)
!722 = !DILocation(line: 396, column: 16, scope: !551)
!723 = !DILocation(line: 396, column: 22, scope: !551)
!724 = !DILocation(line: 398, column: 16, scope: !551)
!725 = !DILocation(line: 398, column: 22, scope: !551)
!726 = !DILocation(line: 400, column: 3, scope: !551)
!727 = !DILocation(line: 401, column: 1, scope: !551)
!728 = distinct !DISubprogram(name: "etharp_cleanup_netif", scope: !3, file: !3, line: 559, type: !269, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !729)
!729 = !{!730, !731, !732}
!730 = !DILocalVariable(name: "netif", arg: 1, scope: !728, file: !3, line: 559, type: !209)
!731 = !DILocalVariable(name: "i", scope: !728, file: !3, line: 561, type: !21)
!732 = !DILocalVariable(name: "state", scope: !733, file: !3, line: 564, type: !109)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 563, column: 40)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 563, column: 3)
!735 = distinct !DILexicalBlock(scope: !728, file: !3, line: 563, column: 3)
!736 = !DILocation(line: 559, column: 36, scope: !728)
!737 = !DILocation(line: 561, column: 7, scope: !728)
!738 = !DILocation(line: 563, column: 8, scope: !735)
!739 = !DILocation(line: 563, column: 3, scope: !735)
!740 = !DILocation(line: 564, column: 31, scope: !733)
!741 = !DILocation(line: 564, column: 10, scope: !733)
!742 = !DILocation(line: 565, column: 16, scope: !743)
!743 = distinct !DILexicalBlock(scope: !733, file: !3, line: 565, column: 9)
!744 = !DILocation(line: 565, column: 39, scope: !743)
!745 = !DILocation(line: 565, column: 56, scope: !743)
!746 = !DILocation(line: 565, column: 62, scope: !743)
!747 = !DILocation(line: 565, column: 9, scope: !733)
!748 = !DILocation(line: 168, column: 23, scope: !340, inlinedAt: !749)
!749 = distinct !DILocation(line: 566, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !743, file: !3, line: 565, column: 73)
!751 = !DILocation(line: 173, column: 20, scope: !348, inlinedAt: !749)
!752 = !DILocation(line: 173, column: 22, scope: !348, inlinedAt: !749)
!753 = !DILocation(line: 173, column: 7, scope: !340, inlinedAt: !749)
!754 = !DILocation(line: 176, column: 5, scope: !353, inlinedAt: !749)
!755 = !DILocation(line: 177, column: 20, scope: !353, inlinedAt: !749)
!756 = !DILocation(line: 178, column: 3, scope: !353, inlinedAt: !749)
!757 = !DILocation(line: 180, column: 22, scope: !340, inlinedAt: !749)
!758 = !DILocation(line: 188, column: 1, scope: !340, inlinedAt: !749)
!759 = !DILocation(line: 567, column: 5, scope: !750)
!760 = !DILocation(line: 563, column: 35, scope: !734)
!761 = !DILocation(line: 563, column: 3, scope: !734)
!762 = !DILocation(line: 563, column: 17, scope: !734)
!763 = distinct !{!763, !739, !764}
!764 = !DILocation(line: 568, column: 3, scope: !735)
!765 = !DILocation(line: 569, column: 1, scope: !728)
!766 = distinct !DISubprogram(name: "etharp_find_addr", scope: !3, file: !3, line: 583, type: !767, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !775)
!767 = !DISubroutineType(types: !768)
!768 = !{!769, !209, !132, !773, !774}
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !770, line: 200, baseType: !771)
!770 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !150, line: 145, baseType: !772)
!772 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!775 = !{!776, !777, !778, !779, !780}
!776 = !DILocalVariable(name: "netif", arg: 1, scope: !766, file: !3, line: 583, type: !209)
!777 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !766, file: !3, line: 583, type: !132)
!778 = !DILocalVariable(name: "eth_ret", arg: 3, scope: !766, file: !3, line: 584, type: !773)
!779 = !DILocalVariable(name: "ip_ret", arg: 4, scope: !766, file: !3, line: 584, type: !774)
!780 = !DILocalVariable(name: "i", scope: !766, file: !3, line: 586, type: !153)
!781 = !DILocation(line: 583, column: 32, scope: !766)
!782 = !DILocation(line: 583, column: 57, scope: !766)
!783 = !DILocation(line: 584, column: 36, scope: !766)
!784 = !DILocation(line: 584, column: 64, scope: !766)
!785 = !DILocation(line: 588, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 588, column: 3)
!787 = distinct !DILexicalBlock(scope: !766, file: !3, line: 588, column: 3)
!788 = !DILocation(line: 588, column: 3, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 588, column: 3)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 588, column: 3)
!791 = !DILocation(line: 588, column: 3, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 588, column: 3)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 588, column: 3)
!794 = distinct !DILexicalBlock(scope: !789, file: !3, line: 588, column: 3)
!795 = !DILocation(line: 593, column: 7, scope: !766)
!796 = !DILocation(line: 586, column: 9, scope: !766)
!797 = !DILocation(line: 594, column: 10, scope: !798)
!798 = distinct !DILexicalBlock(scope: !766, file: !3, line: 594, column: 7)
!799 = !DILocation(line: 594, column: 16, scope: !798)
!800 = !DILocation(line: 594, column: 20, scope: !798)
!801 = !DILocation(line: 594, column: 33, scope: !798)
!802 = !DILocation(line: 594, column: 39, scope: !798)
!803 = !DILocation(line: 594, column: 7, scope: !766)
!804 = !DILocation(line: 595, column: 30, scope: !805)
!805 = distinct !DILexicalBlock(scope: !798, file: !3, line: 594, column: 64)
!806 = !DILocation(line: 595, column: 14, scope: !805)
!807 = !{!315, !315, i64 0}
!808 = !DILocation(line: 596, column: 29, scope: !805)
!809 = !DILocation(line: 596, column: 13, scope: !805)
!810 = !DILocation(line: 597, column: 5, scope: !805)
!811 = !DILocation(line: 0, scope: !766)
!812 = !DILocation(line: 0, scope: !805)
!813 = !DILocation(line: 600, column: 1, scope: !766)
!814 = !DILocation(line: 194, column: 43, scope: !162)
!815 = !DILocation(line: 196, column: 2, scope: !162)
!816 = !DILocation(line: 196, column: 10, scope: !162)
!817 = !DILocation(line: 197, column: 2, scope: !162)
!818 = !DILocation(line: 198, column: 2, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !163, line: 198, column: 2)
!820 = distinct !DILexicalBlock(scope: !162, file: !163, line: 198, column: 2)
!821 = !DILocation(line: 199, column: 2, scope: !162)
!822 = !DILocation(line: 200, column: 1, scope: !162)
!823 = distinct !DISubprogram(name: "etharp_get_entry", scope: !3, file: !3, line: 612, type: !824, isLocal: false, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !829)
!824 = !DISubroutineType(types: !825)
!825 = !{!21, !147, !826, !828, !773}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!829 = !{!830, !831, !832, !833}
!830 = !DILocalVariable(name: "i", arg: 1, scope: !823, file: !3, line: 612, type: !147)
!831 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !823, file: !3, line: 612, type: !826)
!832 = !DILocalVariable(name: "netif", arg: 3, scope: !823, file: !3, line: 612, type: !828)
!833 = !DILocalVariable(name: "eth_ret", arg: 4, scope: !823, file: !3, line: 612, type: !773)
!834 = !DILocation(line: 612, column: 25, scope: !823)
!835 = !DILocation(line: 612, column: 41, scope: !823)
!836 = !DILocation(line: 612, column: 64, scope: !823)
!837 = !DILocation(line: 612, column: 89, scope: !823)
!838 = !DILocation(line: 614, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 614, column: 3)
!840 = distinct !DILexicalBlock(scope: !823, file: !3, line: 614, column: 3)
!841 = !DILocation(line: 614, column: 3, scope: !840)
!842 = !DILocation(line: 614, column: 3, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 614, column: 3)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 614, column: 3)
!845 = !DILocation(line: 614, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 614, column: 3)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 614, column: 3)
!848 = distinct !DILexicalBlock(scope: !843, file: !3, line: 614, column: 3)
!849 = !DILocation(line: 615, column: 3, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 615, column: 3)
!851 = distinct !DILexicalBlock(scope: !823, file: !3, line: 615, column: 3)
!852 = !DILocation(line: 615, column: 3, scope: !851)
!853 = !DILocation(line: 615, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 615, column: 3)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 615, column: 3)
!856 = !DILocation(line: 615, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 615, column: 3)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 615, column: 3)
!859 = distinct !DILexicalBlock(scope: !854, file: !3, line: 615, column: 3)
!860 = !DILocation(line: 616, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 616, column: 3)
!862 = distinct !DILexicalBlock(scope: !823, file: !3, line: 616, column: 3)
!863 = !DILocation(line: 616, column: 3, scope: !862)
!864 = !DILocation(line: 616, column: 3, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 616, column: 3)
!866 = distinct !DILexicalBlock(scope: !861, file: !3, line: 616, column: 3)
!867 = !DILocation(line: 616, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 616, column: 3)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 616, column: 3)
!870 = distinct !DILexicalBlock(scope: !865, file: !3, line: 616, column: 3)
!871 = !DILocation(line: 618, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !823, file: !3, line: 618, column: 7)
!873 = !DILocation(line: 618, column: 28, scope: !872)
!874 = !DILocation(line: 618, column: 45, scope: !872)
!875 = !DILocation(line: 618, column: 51, scope: !872)
!876 = !DILocation(line: 618, column: 7, scope: !823)
!877 = !DILocation(line: 619, column: 30, scope: !878)
!878 = distinct !DILexicalBlock(scope: !872, file: !3, line: 618, column: 76)
!879 = !DILocation(line: 619, column: 14, scope: !878)
!880 = !DILocation(line: 620, column: 29, scope: !878)
!881 = !DILocation(line: 620, column: 14, scope: !878)
!882 = !DILocation(line: 621, column: 30, scope: !878)
!883 = !DILocation(line: 621, column: 14, scope: !878)
!884 = !DILocation(line: 622, column: 5, scope: !878)
!885 = !DILocation(line: 0, scope: !886)
!886 = distinct !DILexicalBlock(scope: !872, file: !3, line: 623, column: 10)
!887 = !DILocation(line: 0, scope: !878)
!888 = !DILocation(line: 626, column: 1, scope: !823)
!889 = distinct !DISubprogram(name: "etharp_input", scope: !3, file: !3, line: 641, type: !890, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !196, !209}
!892 = !{!893, !894, !895, !896, !897, !898}
!893 = !DILocalVariable(name: "p", arg: 1, scope: !889, file: !3, line: 641, type: !196)
!894 = !DILocalVariable(name: "netif", arg: 2, scope: !889, file: !3, line: 641, type: !209)
!895 = !DILocalVariable(name: "hdr", scope: !889, file: !3, line: 643, type: !99)
!896 = !DILocalVariable(name: "sipaddr", scope: !889, file: !3, line: 645, type: !134)
!897 = !DILocalVariable(name: "dipaddr", scope: !889, file: !3, line: 645, type: !134)
!898 = !DILocalVariable(name: "for_us", scope: !889, file: !3, line: 646, type: !109)
!899 = !DILocation(line: 641, column: 27, scope: !889)
!900 = !DILocation(line: 641, column: 44, scope: !889)
!901 = !DILocation(line: 645, column: 3, scope: !889)
!902 = !DILocation(line: 650, column: 3, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 650, column: 3)
!904 = distinct !DILexicalBlock(scope: !889, file: !3, line: 650, column: 3)
!905 = !DILocation(line: 650, column: 3, scope: !904)
!906 = !DILocation(line: 650, column: 3, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 650, column: 3)
!908 = distinct !DILexicalBlock(scope: !903, file: !3, line: 650, column: 3)
!909 = !DILocation(line: 650, column: 3, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 650, column: 3)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 650, column: 3)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 650, column: 3)
!913 = !DILocation(line: 652, column: 33, scope: !889)
!914 = !{!915, !315, i64 8}
!915 = !{!"pbuf", !315, i64 0, !315, i64 8, !321, i64 16, !321, i64 18, !316, i64 20, !316, i64 21, !316, i64 22, !316, i64 23}
!916 = !DILocation(line: 643, column: 22, scope: !889)
!917 = !DILocation(line: 655, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !889, file: !3, line: 655, column: 7)
!919 = !{!920, !321, i64 0}
!920 = !{!"etharp_hdr", !321, i64 0, !321, i64 2, !316, i64 4, !316, i64 5, !321, i64 6, !320, i64 8, !921, i64 14, !320, i64 18, !921, i64 24}
!921 = !{!"ip4_addr_wordaligned", !316, i64 0}
!922 = !DILocation(line: 655, column: 20, scope: !918)
!923 = !DILocation(line: 655, column: 60, scope: !918)
!924 = !DILocation(line: 656, column: 13, scope: !918)
!925 = !{!920, !316, i64 4}
!926 = !DILocation(line: 656, column: 19, scope: !918)
!927 = !DILocation(line: 656, column: 38, scope: !918)
!928 = !DILocation(line: 657, column: 13, scope: !918)
!929 = !{!920, !316, i64 5}
!930 = !DILocation(line: 657, column: 22, scope: !918)
!931 = !DILocation(line: 657, column: 45, scope: !918)
!932 = !DILocation(line: 658, column: 13, scope: !918)
!933 = !{!920, !321, i64 2}
!934 = !DILocation(line: 658, column: 19, scope: !918)
!935 = !DILocation(line: 655, column: 7, scope: !889)
!936 = !DILocation(line: 662, column: 5, scope: !937)
!937 = distinct !DILexicalBlock(scope: !918, file: !3, line: 658, column: 46)
!938 = !{!939, !321, i64 40}
!939 = !{!"stats_", !940, i64 0, !940, i64 24, !940, i64 48, !940, i64 72, !940, i64 96, !940, i64 120, !940, i64 144, !941, i64 168, !940, i64 186, !940, i64 210, !940, i64 234, !943, i64 258, !940, i64 286}
!940 = !{!"stats_proto", !321, i64 0, !321, i64 2, !321, i64 4, !321, i64 6, !321, i64 8, !321, i64 10, !321, i64 12, !321, i64 14, !321, i64 16, !321, i64 18, !321, i64 20, !321, i64 22}
!941 = !{!"stats_sys", !942, i64 0, !942, i64 6, !942, i64 12}
!942 = !{!"stats_syselem", !321, i64 0, !321, i64 2, !321, i64 4}
!943 = !{!"stats_igmp", !321, i64 0, !321, i64 2, !321, i64 4, !321, i64 6, !321, i64 8, !321, i64 10, !321, i64 12, !321, i64 14, !321, i64 16, !321, i64 18, !321, i64 20, !321, i64 22, !321, i64 24, !321, i64 26}
!944 = !DILocation(line: 663, column: 5, scope: !937)
!945 = !{!939, !321, i64 30}
!946 = !DILocation(line: 664, column: 5, scope: !937)
!947 = !DILocation(line: 665, column: 5, scope: !937)
!948 = !DILocation(line: 667, column: 3, scope: !889)
!949 = !{!939, !321, i64 26}
!950 = !DILocation(line: 678, column: 3, scope: !889)
!951 = !DILocation(line: 679, column: 3, scope: !889)
!952 = !DILocation(line: 682, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !889, file: !3, line: 682, column: 7)
!954 = !{!316, !316, i64 0}
!955 = !DILocation(line: 682, column: 7, scope: !889)
!956 = !DILocation(line: 646, column: 8, scope: !889)
!957 = !DILocation(line: 684, column: 3, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !3, line: 682, column: 51)
!959 = !DILocation(line: 695, column: 27, scope: !889)
!960 = !DILocation(line: 686, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !953, file: !3, line: 684, column: 10)
!962 = !DILocation(line: 694, column: 51, scope: !889)
!963 = !DILocation(line: 645, column: 14, scope: !889)
!964 = !DILocation(line: 694, column: 3, scope: !889)
!965 = !DILocation(line: 698, column: 16, scope: !889)
!966 = !{!920, !321, i64 6}
!967 = !DILocation(line: 698, column: 3, scope: !889)
!968 = !DILocation(line: 707, column: 11, scope: !969)
!969 = distinct !DILexicalBlock(scope: !889, file: !3, line: 698, column: 24)
!970 = !DILocation(line: 710, column: 39, scope: !971)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 707, column: 19)
!972 = distinct !DILexicalBlock(scope: !969, file: !3, line: 707, column: 11)
!973 = !DILocation(line: 710, column: 20, scope: !971)
!974 = !DILocation(line: 709, column: 9, scope: !971)
!975 = !DILocation(line: 715, column: 7, scope: !971)
!976 = !DILocation(line: 737, column: 7, scope: !969)
!977 = !{!939, !321, i64 44}
!978 = !DILocation(line: 738, column: 7, scope: !969)
!979 = !DILocation(line: 741, column: 3, scope: !889)
!980 = !DILocation(line: 742, column: 1, scope: !889)
!981 = !DILocation(line: 0, scope: !937)
!982 = distinct !DISubprogram(name: "etharp_raw", scope: !3, file: !3, line: 1101, type: !983, isLocal: true, isDefinition: true, scopeLine: 1106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !986)
!983 = !DISubroutineType(types: !984)
!984 = !{!91, !209, !143, !143, !143, !132, !143, !132, !985}
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!986 = !{!987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!987 = !DILocalVariable(name: "netif", arg: 1, scope: !982, file: !3, line: 1101, type: !209)
!988 = !DILocalVariable(name: "ethsrc_addr", arg: 2, scope: !982, file: !3, line: 1101, type: !143)
!989 = !DILocalVariable(name: "ethdst_addr", arg: 3, scope: !982, file: !3, line: 1102, type: !143)
!990 = !DILocalVariable(name: "hwsrc_addr", arg: 4, scope: !982, file: !3, line: 1103, type: !143)
!991 = !DILocalVariable(name: "ipsrc_addr", arg: 5, scope: !982, file: !3, line: 1103, type: !132)
!992 = !DILocalVariable(name: "hwdst_addr", arg: 6, scope: !982, file: !3, line: 1104, type: !143)
!993 = !DILocalVariable(name: "ipdst_addr", arg: 7, scope: !982, file: !3, line: 1104, type: !132)
!994 = !DILocalVariable(name: "opcode", arg: 8, scope: !982, file: !3, line: 1105, type: !985)
!995 = !DILocalVariable(name: "p", scope: !982, file: !3, line: 1107, type: !196)
!996 = !DILocalVariable(name: "result", scope: !982, file: !3, line: 1108, type: !91)
!997 = !DILocalVariable(name: "hdr", scope: !982, file: !3, line: 1109, type: !99)
!998 = !DILocation(line: 1101, column: 26, scope: !982)
!999 = !DILocation(line: 1101, column: 56, scope: !982)
!1000 = !DILocation(line: 1102, column: 35, scope: !982)
!1001 = !DILocation(line: 1103, column: 35, scope: !982)
!1002 = !DILocation(line: 1103, column: 65, scope: !982)
!1003 = !DILocation(line: 1104, column: 35, scope: !982)
!1004 = !DILocation(line: 1104, column: 65, scope: !982)
!1005 = !DILocation(line: 1105, column: 24, scope: !982)
!1006 = !DILocation(line: 1108, column: 9, scope: !982)
!1007 = !DILocation(line: 1111, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 1111, column: 3)
!1009 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1111, column: 3)
!1010 = !DILocation(line: 1111, column: 3, scope: !1009)
!1011 = !DILocation(line: 1111, column: 3, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1111, column: 3)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 1111, column: 3)
!1014 = !DILocation(line: 1111, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1111, column: 3)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1111, column: 3)
!1017 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1111, column: 3)
!1018 = !DILocation(line: 1114, column: 7, scope: !982)
!1019 = !DILocation(line: 1107, column: 16, scope: !982)
!1020 = !DILocation(line: 1116, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1116, column: 7)
!1022 = !DILocation(line: 1116, column: 7, scope: !982)
!1023 = !DILocation(line: 1119, column: 5, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1116, column: 18)
!1025 = !{!939, !321, i64 36}
!1026 = !DILocation(line: 1120, column: 5, scope: !1024)
!1027 = !DILocation(line: 1122, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 1122, column: 3)
!1029 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1122, column: 3)
!1030 = !{!915, !321, i64 18}
!1031 = !DILocation(line: 1122, column: 3, scope: !1029)
!1032 = !DILocation(line: 1122, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1122, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1122, column: 3)
!1035 = !DILocation(line: 1122, column: 3, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1122, column: 3)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1122, column: 3)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1122, column: 3)
!1039 = !DILocation(line: 1125, column: 33, scope: !982)
!1040 = !DILocation(line: 1109, column: 22, scope: !982)
!1041 = !DILocation(line: 1127, column: 17, scope: !982)
!1042 = !DILocation(line: 1127, column: 8, scope: !982)
!1043 = !DILocation(line: 1127, column: 15, scope: !982)
!1044 = !DILocation(line: 1129, column: 3, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 1129, column: 3)
!1046 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1129, column: 3)
!1047 = !DILocation(line: 1129, column: 3, scope: !1046)
!1048 = !DILocation(line: 1129, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 1129, column: 3)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 1129, column: 3)
!1051 = !DILocation(line: 1129, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 1129, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 1129, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 1129, column: 3)
!1055 = !DILocation(line: 1133, column: 3, scope: !982)
!1056 = !DILocation(line: 1134, column: 3, scope: !982)
!1057 = !DILocation(line: 1137, column: 3, scope: !982)
!1058 = !DILocation(line: 1138, column: 3, scope: !982)
!1059 = !DILocation(line: 1140, column: 8, scope: !982)
!1060 = !DILocation(line: 1140, column: 15, scope: !982)
!1061 = !DILocation(line: 1141, column: 8, scope: !982)
!1062 = !DILocation(line: 1141, column: 14, scope: !982)
!1063 = !DILocation(line: 1143, column: 8, scope: !982)
!1064 = !DILocation(line: 1143, column: 14, scope: !982)
!1065 = !DILocation(line: 1144, column: 8, scope: !982)
!1066 = !DILocation(line: 1144, column: 17, scope: !982)
!1067 = !DILocation(line: 1156, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1155, column: 3)
!1069 = !DILocation(line: 1159, column: 3, scope: !982)
!1070 = !{!939, !321, i64 24}
!1071 = !DILocation(line: 1161, column: 3, scope: !982)
!1072 = !DILocation(line: 1165, column: 3, scope: !982)
!1073 = !DILocation(line: 0, scope: !982)
!1074 = !DILocation(line: 0, scope: !1024)
!1075 = !DILocation(line: 1166, column: 1, scope: !982)
!1076 = distinct !DISubprogram(name: "etharp_output", scope: !3, file: !3, line: 791, type: !252, isLocal: false, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1078 = !DILocalVariable(name: "netif", arg: 1, scope: !1076, file: !3, line: 791, type: !209)
!1079 = !DILocalVariable(name: "q", arg: 2, scope: !1076, file: !3, line: 791, type: !196)
!1080 = !DILocalVariable(name: "ipaddr", arg: 3, scope: !1076, file: !3, line: 791, type: !132)
!1081 = !DILocalVariable(name: "dest", scope: !1076, file: !3, line: 793, type: !143)
!1082 = !DILocalVariable(name: "mcastaddr", scope: !1076, file: !3, line: 794, type: !116)
!1083 = !DILocalVariable(name: "dst_addr", scope: !1076, file: !3, line: 795, type: !132)
!1084 = !DILocalVariable(name: "i", scope: !1085, file: !3, line: 822, type: !152)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 821, column: 10)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 810, column: 14)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 806, column: 7)
!1088 = !DILocation(line: 791, column: 29, scope: !1076)
!1089 = !DILocation(line: 791, column: 49, scope: !1076)
!1090 = !DILocation(line: 791, column: 70, scope: !1076)
!1091 = !DILocation(line: 794, column: 3, scope: !1076)
!1092 = !DILocation(line: 795, column: 21, scope: !1076)
!1093 = !DILocation(line: 798, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 798, column: 3)
!1095 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 798, column: 3)
!1096 = !DILocation(line: 798, column: 3, scope: !1095)
!1097 = !DILocation(line: 798, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 798, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 798, column: 3)
!1100 = !DILocation(line: 798, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 798, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 798, column: 3)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 798, column: 3)
!1104 = !DILocation(line: 799, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 799, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 799, column: 3)
!1107 = !DILocation(line: 799, column: 3, scope: !1106)
!1108 = !DILocation(line: 799, column: 3, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 799, column: 3)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 799, column: 3)
!1111 = !DILocation(line: 799, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 799, column: 3)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 799, column: 3)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 799, column: 3)
!1115 = !DILocation(line: 800, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 800, column: 3)
!1117 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 800, column: 3)
!1118 = !DILocation(line: 800, column: 3, scope: !1117)
!1119 = !DILocation(line: 800, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 800, column: 3)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 800, column: 3)
!1122 = !DILocation(line: 800, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 800, column: 3)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 800, column: 3)
!1125 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 800, column: 3)
!1126 = !DILocation(line: 806, column: 7, scope: !1087)
!1127 = !DILocation(line: 806, column: 7, scope: !1076)
!1128 = !DILocation(line: 810, column: 14, scope: !1086)
!1129 = !DILocation(line: 810, column: 14, scope: !1087)
!1130 = !DILocation(line: 812, column: 23, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 810, column: 44)
!1132 = !DILocation(line: 813, column: 5, scope: !1131)
!1133 = !DILocation(line: 813, column: 23, scope: !1131)
!1134 = !DILocation(line: 814, column: 5, scope: !1131)
!1135 = !DILocation(line: 814, column: 23, scope: !1131)
!1136 = !DILocation(line: 815, column: 25, scope: !1131)
!1137 = !DILocation(line: 815, column: 43, scope: !1131)
!1138 = !DILocation(line: 815, column: 5, scope: !1131)
!1139 = !DILocation(line: 815, column: 23, scope: !1131)
!1140 = !DILocation(line: 816, column: 25, scope: !1131)
!1141 = !DILocation(line: 816, column: 5, scope: !1131)
!1142 = !DILocation(line: 816, column: 23, scope: !1131)
!1143 = !DILocation(line: 817, column: 25, scope: !1131)
!1144 = !DILocation(line: 817, column: 5, scope: !1131)
!1145 = !DILocation(line: 817, column: 23, scope: !1131)
!1146 = !DILocation(line: 793, column: 26, scope: !1076)
!1147 = !DILocation(line: 825, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 825, column: 9)
!1149 = !DILocation(line: 825, column: 83, scope: !1148)
!1150 = !DILocation(line: 826, column: 10, scope: !1148)
!1151 = !DILocation(line: 825, column: 9, scope: !1085)
!1152 = !DILocation(line: 844, column: 16, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 844, column: 15)
!1154 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 842, column: 9)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 835, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 826, column: 40)
!1157 = !DILocation(line: 844, column: 15, scope: !1154)
!1158 = !DILocation(line: 854, column: 5, scope: !1156)
!1159 = !DILocation(line: 0, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 844, column: 58)
!1161 = !DILocation(line: 861, column: 24, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 861, column: 13)
!1163 = !DILocation(line: 861, column: 14, scope: !1162)
!1164 = !DILocation(line: 861, column: 45, scope: !1162)
!1165 = !DILocation(line: 861, column: 51, scope: !1162)
!1166 = !DILocation(line: 861, column: 75, scope: !1162)
!1167 = !DILocation(line: 863, column: 45, scope: !1162)
!1168 = !DILocation(line: 863, column: 51, scope: !1162)
!1169 = !DILocation(line: 863, column: 61, scope: !1162)
!1170 = !DILocation(line: 865, column: 14, scope: !1162)
!1171 = !DILocation(line: 861, column: 13, scope: !1085)
!1172 = !DILocation(line: 867, column: 11, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 865, column: 79)
!1174 = !{!939, !321, i64 46}
!1175 = !DILocation(line: 868, column: 18, scope: !1173)
!1176 = !DILocation(line: 868, column: 11, scope: !1173)
!1177 = !DILocation(line: 822, column: 22, scope: !1085)
!1178 = !DILocation(line: 877, column: 10, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 877, column: 5)
!1180 = !DILocation(line: 877, column: 5, scope: !1179)
!1181 = !DILocation(line: 878, column: 25, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 878, column: 11)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 877, column: 42)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 877, column: 5)
!1185 = !DILocation(line: 878, column: 31, scope: !1182)
!1186 = !DILocation(line: 878, column: 55, scope: !1182)
!1187 = !DILocation(line: 880, column: 25, scope: !1182)
!1188 = !DILocation(line: 880, column: 31, scope: !1182)
!1189 = !DILocation(line: 880, column: 41, scope: !1182)
!1190 = !DILocation(line: 882, column: 12, scope: !1182)
!1191 = !DILocation(line: 878, column: 11, scope: !1183)
!1192 = !DILocation(line: 884, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 882, column: 59)
!1194 = !DILocation(line: 885, column: 16, scope: !1193)
!1195 = !DILocation(line: 885, column: 9, scope: !1193)
!1196 = !DILocation(line: 877, column: 38, scope: !1184)
!1197 = !DILocation(line: 877, column: 5, scope: !1184)
!1198 = !DILocation(line: 877, column: 19, scope: !1184)
!1199 = distinct !{!1199, !1180, !1200}
!1200 = !DILocation(line: 887, column: 5, scope: !1179)
!1201 = !DILocation(line: 890, column: 12, scope: !1085)
!1202 = !DILocation(line: 890, column: 5, scope: !1085)
!1203 = !DILocation(line: 0, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 848, column: 18)
!1205 = !DILocation(line: 0, scope: !1131)
!1206 = !DILocation(line: 896, column: 55, scope: !1076)
!1207 = !DILocation(line: 896, column: 36, scope: !1076)
!1208 = !DILocation(line: 896, column: 10, scope: !1076)
!1209 = !DILocation(line: 896, column: 3, scope: !1076)
!1210 = !DILocation(line: 0, scope: !1173)
!1211 = !DILocation(line: 897, column: 1, scope: !1076)
!1212 = distinct !DISubprogram(name: "etharp_output_to_arp_index", scope: !3, file: !3, line: 748, type: !1213, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1215)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!91, !209, !196, !152}
!1215 = !{!1216, !1217, !1218}
!1216 = !DILocalVariable(name: "netif", arg: 1, scope: !1212, file: !3, line: 748, type: !209)
!1217 = !DILocalVariable(name: "q", arg: 2, scope: !1212, file: !3, line: 748, type: !196)
!1218 = !DILocalVariable(name: "arp_idx", arg: 3, scope: !1212, file: !3, line: 748, type: !152)
!1219 = !DILocation(line: 748, column: 42, scope: !1212)
!1220 = !DILocation(line: 748, column: 62, scope: !1212)
!1221 = !DILocation(line: 748, column: 82, scope: !1212)
!1222 = !DILocation(line: 750, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 750, column: 3)
!1224 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 750, column: 3)
!1225 = !DILocation(line: 750, column: 3, scope: !1224)
!1226 = !DILocation(line: 750, column: 3, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 750, column: 3)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 750, column: 3)
!1229 = !DILocation(line: 750, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 750, column: 3)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 750, column: 3)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 750, column: 3)
!1233 = !DILocation(line: 755, column: 32, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 755, column: 7)
!1235 = !DILocation(line: 755, column: 7, scope: !1212)
!1236 = !DILocation(line: 756, column: 28, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 756, column: 9)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 755, column: 56)
!1239 = !DILocation(line: 756, column: 34, scope: !1237)
!1240 = !DILocation(line: 756, column: 9, scope: !1238)
!1241 = !DILocation(line: 758, column: 53, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 758, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 756, column: 71)
!1244 = !DILocation(line: 1198, column: 30, scope: !378, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 758, column: 11, scope: !1242)
!1246 = !DILocation(line: 1198, column: 55, scope: !378, inlinedAt: !1245)
!1247 = !DILocation(line: 1181, column: 34, scope: !387, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 1201, column: 10, scope: !378, inlinedAt: !1245)
!1249 = !DILocation(line: 1181, column: 59, scope: !387, inlinedAt: !1248)
!1250 = !DILocation(line: 1181, column: 90, scope: !387, inlinedAt: !1248)
!1251 = !DILocation(line: 1183, column: 47, scope: !387, inlinedAt: !1248)
!1252 = !DILocation(line: 1183, column: 28, scope: !387, inlinedAt: !1248)
!1253 = !DILocation(line: 1184, column: 55, scope: !387, inlinedAt: !1248)
!1254 = !DILocation(line: 1183, column: 10, scope: !387, inlinedAt: !1248)
!1255 = !DILocation(line: 1183, column: 3, scope: !387, inlinedAt: !1248)
!1256 = !DILocation(line: 1201, column: 3, scope: !378, inlinedAt: !1245)
!1257 = !DILocation(line: 758, column: 61, scope: !1242)
!1258 = !DILocation(line: 758, column: 11, scope: !1243)
!1259 = !DILocation(line: 759, column: 34, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 758, column: 72)
!1261 = !DILocation(line: 760, column: 7, scope: !1260)
!1262 = !DILocation(line: 761, column: 41, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 761, column: 16)
!1264 = !DILocation(line: 761, column: 16, scope: !1237)
!1265 = !DILocation(line: 763, column: 57, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 763, column: 11)
!1267 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 761, column: 76)
!1268 = !DILocation(line: 763, column: 85, scope: !1266)
!1269 = !DILocation(line: 1181, column: 34, scope: !387, inlinedAt: !1270)
!1270 = distinct !DILocation(line: 763, column: 11, scope: !1266)
!1271 = !DILocation(line: 1181, column: 59, scope: !387, inlinedAt: !1270)
!1272 = !DILocation(line: 1181, column: 90, scope: !387, inlinedAt: !1270)
!1273 = !DILocation(line: 1183, column: 47, scope: !387, inlinedAt: !1270)
!1274 = !DILocation(line: 1183, column: 28, scope: !387, inlinedAt: !1270)
!1275 = !DILocation(line: 1184, column: 55, scope: !387, inlinedAt: !1270)
!1276 = !DILocation(line: 1183, column: 10, scope: !387, inlinedAt: !1270)
!1277 = !DILocation(line: 1183, column: 3, scope: !387, inlinedAt: !1270)
!1278 = !DILocation(line: 763, column: 94, scope: !1266)
!1279 = !DILocation(line: 763, column: 11, scope: !1267)
!1280 = !DILocation(line: 764, column: 34, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 763, column: 105)
!1282 = !DILocation(line: 765, column: 7, scope: !1281)
!1283 = !DILocation(line: 769, column: 55, scope: !1212)
!1284 = !DILocation(line: 769, column: 36, scope: !1212)
!1285 = !DILocation(line: 769, column: 92, scope: !1212)
!1286 = !DILocation(line: 769, column: 10, scope: !1212)
!1287 = !DILocation(line: 769, column: 3, scope: !1212)
!1288 = distinct !DISubprogram(name: "etharp_query", scope: !3, file: !3, line: 933, type: !1289, isLocal: false, isDefinition: true, scopeLine: 934, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!91, !209, !132, !196}
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304}
!1292 = !DILocalVariable(name: "netif", arg: 1, scope: !1288, file: !3, line: 933, type: !209)
!1293 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1288, file: !3, line: 933, type: !132)
!1294 = !DILocalVariable(name: "q", arg: 3, scope: !1288, file: !3, line: 933, type: !196)
!1295 = !DILocalVariable(name: "srcaddr", scope: !1288, file: !3, line: 935, type: !142)
!1296 = !DILocalVariable(name: "result", scope: !1288, file: !3, line: 936, type: !91)
!1297 = !DILocalVariable(name: "is_new_entry", scope: !1288, file: !3, line: 937, type: !21)
!1298 = !DILocalVariable(name: "i_err", scope: !1288, file: !3, line: 938, type: !153)
!1299 = !DILocalVariable(name: "i", scope: !1288, file: !3, line: 939, type: !152)
!1300 = !DILocalVariable(name: "p", scope: !1301, file: !3, line: 1003, type: !196)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1001, column: 58)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1001, column: 14)
!1303 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 995, column: 7)
!1304 = !DILocalVariable(name: "copy_needed", scope: !1301, file: !3, line: 1004, type: !21)
!1305 = !DILocation(line: 933, column: 28, scope: !1288)
!1306 = !DILocation(line: 933, column: 53, scope: !1288)
!1307 = !DILocation(line: 933, column: 74, scope: !1288)
!1308 = !DILocation(line: 935, column: 49, scope: !1288)
!1309 = !DILocation(line: 935, column: 30, scope: !1288)
!1310 = !DILocation(line: 935, column: 20, scope: !1288)
!1311 = !DILocation(line: 936, column: 9, scope: !1288)
!1312 = !DILocation(line: 937, column: 7, scope: !1288)
!1313 = !DILocation(line: 942, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 942, column: 7)
!1315 = !DILocation(line: 942, column: 43, scope: !1314)
!1316 = !DILocation(line: 943, column: 7, scope: !1314)
!1317 = !DILocation(line: 943, column: 36, scope: !1314)
!1318 = !DILocation(line: 944, column: 7, scope: !1314)
!1319 = !DILocation(line: 942, column: 7, scope: !1288)
!1320 = !DILocation(line: 950, column: 11, scope: !1288)
!1321 = !DILocation(line: 938, column: 9, scope: !1288)
!1322 = !DILocation(line: 953, column: 13, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 953, column: 7)
!1324 = !DILocation(line: 953, column: 7, scope: !1288)
!1325 = !DILocation(line: 955, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 955, column: 9)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 953, column: 18)
!1328 = !DILocation(line: 955, column: 9, scope: !1327)
!1329 = !DILocation(line: 957, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 955, column: 12)
!1331 = !DILocation(line: 958, column: 5, scope: !1330)
!1332 = !DILocation(line: 959, column: 12, scope: !1327)
!1333 = !DILocation(line: 959, column: 5, scope: !1327)
!1334 = !DILocation(line: 961, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 961, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 961, column: 3)
!1337 = !DILocation(line: 961, column: 3, scope: !1336)
!1338 = !DILocation(line: 961, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 961, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 961, column: 3)
!1341 = !DILocation(line: 961, column: 3, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 961, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 961, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 961, column: 3)
!1345 = !DILocation(line: 962, column: 7, scope: !1288)
!1346 = !DILocation(line: 939, column: 20, scope: !1288)
!1347 = !DILocation(line: 965, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 965, column: 7)
!1349 = !DILocation(line: 965, column: 20, scope: !1348)
!1350 = !DILocation(line: 965, column: 26, scope: !1348)
!1351 = !DILocation(line: 965, column: 7, scope: !1288)
!1352 = !DILocation(line: 967, column: 24, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 965, column: 49)
!1354 = !DILocation(line: 969, column: 18, scope: !1353)
!1355 = !DILocation(line: 969, column: 24, scope: !1353)
!1356 = !DILocation(line: 970, column: 3, scope: !1353)
!1357 = !DILocation(line: 973, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 973, column: 3)
!1359 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 973, column: 3)
!1360 = !DILocation(line: 978, column: 26, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 978, column: 7)
!1362 = !DILocation(line: 978, column: 20, scope: !1361)
!1363 = !DILocation(line: 973, column: 3, scope: !1359)
!1364 = !DILocation(line: 1198, column: 30, scope: !378, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 980, column: 14, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 978, column: 36)
!1367 = !DILocation(line: 1198, column: 55, scope: !378, inlinedAt: !1365)
!1368 = !DILocation(line: 1181, column: 34, scope: !387, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 1201, column: 10, scope: !378, inlinedAt: !1365)
!1370 = !DILocation(line: 1181, column: 59, scope: !387, inlinedAt: !1369)
!1371 = !DILocation(line: 1181, column: 90, scope: !387, inlinedAt: !1369)
!1372 = !DILocation(line: 1184, column: 55, scope: !387, inlinedAt: !1369)
!1373 = !DILocation(line: 1183, column: 10, scope: !387, inlinedAt: !1369)
!1374 = !DILocation(line: 1183, column: 3, scope: !387, inlinedAt: !1369)
!1375 = !DILocation(line: 1201, column: 3, scope: !378, inlinedAt: !1365)
!1376 = !DILocation(line: 987, column: 9, scope: !1366)
!1377 = !DILocation(line: 0, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 993, column: 3)
!1379 = !DILocation(line: 995, column: 20, scope: !1303)
!1380 = !DILocation(line: 993, column: 3, scope: !1378)
!1381 = !DILocation(line: 995, column: 26, scope: !1303)
!1382 = !DILocation(line: 995, column: 7, scope: !1288)
!1383 = !DILocation(line: 997, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 995, column: 50)
!1385 = !DILocation(line: 999, column: 64, scope: !1384)
!1386 = !DILocation(line: 999, column: 14, scope: !1384)
!1387 = !DILocation(line: 1001, column: 3, scope: !1384)
!1388 = !DILocation(line: 1001, column: 33, scope: !1302)
!1389 = !DILocation(line: 1001, column: 14, scope: !1303)
!1390 = !DILocation(line: 1004, column: 9, scope: !1301)
!1391 = !DILocation(line: 1003, column: 18, scope: !1301)
!1392 = !DILocation(line: 1008, column: 5, scope: !1301)
!1393 = !DILocation(line: 1009, column: 7, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1009, column: 7)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1009, column: 7)
!1396 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 1008, column: 15)
!1397 = !{!915, !321, i64 16}
!1398 = !{!915, !315, i64 0}
!1399 = !DILocation(line: 1009, column: 7, scope: !1395)
!1400 = !DILocation(line: 1009, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 1009, column: 7)
!1402 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 1009, column: 7)
!1403 = !DILocation(line: 1009, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 1009, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1009, column: 7)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1009, column: 7)
!1407 = !DILocation(line: 1010, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1010, column: 11)
!1409 = !{!915, !316, i64 20}
!1410 = !DILocation(line: 1010, column: 11, scope: !1396)
!1411 = !DILocation(line: 1012, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1010, column: 31)
!1413 = !DILocation(line: 1016, column: 9, scope: !1301)
!1414 = !DILocation(line: 1018, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1016, column: 22)
!1416 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 1016, column: 9)
!1417 = !DILocation(line: 1019, column: 5, scope: !1415)
!1418 = !DILocation(line: 1014, column: 14, scope: !1396)
!1419 = distinct !{!1419, !1392, !1420}
!1420 = !DILocation(line: 1015, column: 5, scope: !1301)
!1421 = !DILocation(line: 1022, column: 7, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 1019, column: 12)
!1423 = !DILocation(line: 0, scope: !1422)
!1424 = !DILocation(line: 1025, column: 11, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 1025, column: 9)
!1426 = !DILocation(line: 1025, column: 9, scope: !1301)
!1427 = !DILocation(line: 1068, column: 24, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1068, column: 11)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1025, column: 20)
!1430 = !DILocation(line: 1068, column: 26, scope: !1428)
!1431 = !DILocation(line: 1068, column: 11, scope: !1429)
!1432 = !DILocation(line: 1070, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1068, column: 35)
!1434 = !DILocation(line: 1071, column: 7, scope: !1433)
!1435 = !DILocation(line: 1072, column: 22, scope: !1429)
!1436 = !DILocation(line: 1076, column: 5, scope: !1429)
!1437 = !DILocation(line: 1077, column: 7, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 1076, column: 12)
!1439 = !DILocation(line: 0, scope: !1438)
!1440 = !DILocation(line: 1081, column: 3, scope: !1301)
!1441 = !DILocation(line: 0, scope: !1384)
!1442 = !DILocation(line: 1082, column: 3, scope: !1288)
!1443 = !DILocation(line: 0, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 944, column: 31)
!1445 = !DILocation(line: 1083, column: 1, scope: !1288)
!1446 = !DILocation(line: 0, scope: !1288)
