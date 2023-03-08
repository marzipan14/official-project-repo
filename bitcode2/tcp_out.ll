; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp_out.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp_out.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.pbuf*, i16, i8, %struct.tcp_hdr* }
%struct.tcp_hdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip4_addr = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"tcp_write: invalid pcb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"tcp_write: arg == NULL (programmer violates API)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mss_local is too small\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"inconsistent oversize vs. space\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"inconsistent oversize vs. len\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"tcp_write: ROM pbufs cannot be oversized\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"unsent_oversize mismatch (pcb->unsent is NULL)\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"tcp_write: check that first pbuf can hold the complete seglen\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"oversize == 0\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"prev_seg != NULL\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"tcp_write: cannot concatenate when pcb->unsent is empty\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"tcp_write: extension of reference requires reference\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"tcp_write: valid queue length\00", align 1
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@.str.15 = private unnamed_addr constant [34 x i8] c"tcp_split_unsent_seg: invalid pcb\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Can't split segment into length 0\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"split <= mss\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"tcp_send_fin: invalid pcb\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"tcp_enqueue_flags: need either TCP_SYN or TCP_FIN in flags (programmer violates API)\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"tcp_enqueue_flags: invalid pcb\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"tcp_enqueue_flags: check that first pbuf can hold optlen\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"tcp_enqueue_flags: invalid segment length\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"tcp_enqueue_flags: invalid queue length\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"tcp_output: invalid pcb\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"don't call tcp_output for listen-pcbs\00", align 1
@tcp_input_pcb = external dso_local local_unnamed_addr global %struct.tcp_pcb*, align 8
@.str.29 = private unnamed_addr constant [23 x i8] c"RST not expected here!\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"tcp_rexmit_rto_prepare: invalid pcb\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"tcp_rexmit_rto_commit: invalid pcb\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"tcp_rexmit_rto: invalid pcb\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"tcp_rexmit: invalid pcb\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"tcp_rexmit_fast: invalid pcb\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"tcp_rst: invalid local_ip\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"tcp_rst: invalid remote_ip\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"tcp_send_empty_ack: invalid pcb\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"tcp_keepalive: invalid pcb\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"tcp_zero_window_probe: invalid pcb\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.40 = internal global [10 x i8] c"tcp_out.c\00", section ".data_shared", align 1, !dbg !196
@.str.42 = private unnamed_addr constant [58 x i8] c"tcp_write: pbufs on queue => at least one queue non-empty\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"tcp_write: no pbufs on queue => both queues empty\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"tcp_pbuf_prealloc: invalid oversize\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"tcp_pbuf_prealloc: invalid pcb\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"need unchained pbuf\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"tcp_create_segment: invalid pcb\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"tcp_create_segment: invalid pbuf\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"p->tot_len >= optlen\00", align 1
@tcp_ticks = external dso_local local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [19 x i8] c"options not filled\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"check that first pbuf can hold struct tcp_hdr\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"tcp_output_control_segment: invalid pbuf\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_write(%struct.tcp_pcb*, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !223 {
  %5 = alloca i16, align 2
  %6 = bitcast i16* %5 to i8*, !dbg !391
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #6, !dbg !391
  store i16 0, i16* %5, align 2, !dbg !392, !tbaa !393
  %7 = icmp eq %struct.tcp_pcb* %0, null, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br i1 %7, label %8, label %9, !dbg !402

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #7, !dbg !403
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !406
  tail call void @ukplat_terminate(i32 3) #8, !dbg !406
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !410
  %11 = load i16, i16* %10, align 2, !dbg !410, !tbaa !411
  %12 = zext i16 %11 to i32, !dbg !410
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 39, !dbg !410
  %14 = load i32, i32* %13, align 4, !dbg !410, !tbaa !416
  %15 = icmp ult i32 %14, 131070, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %15, label %16, label %18, !dbg !410

; <label>:16:                                     ; preds = %9
  %17 = lshr i32 %14, 1, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %18, !dbg !410

; <label>:18:                                     ; preds = %9, %16
  %19 = phi i32 [ %17, %16 ], [ 65535, %9 ], !dbg !410
  %20 = and i32 %19, 65535, !dbg !410
  %21 = icmp ugt i32 %20, %12, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %21, label %28, label %22, !dbg !410

; <label>:22:                                     ; preds = %18
  br i1 %15, label %23, label %25, !dbg !410

; <label>:23:                                     ; preds = %22
  %24 = lshr i32 %14, 1, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %25, !dbg !410

; <label>:25:                                     ; preds = %22, %23
  %26 = phi i32 [ %24, %23 ], [ 65535, %22 ], !dbg !410
  %27 = and i32 %26, 65535, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %28, !dbg !410

; <label>:28:                                     ; preds = %18, %25
  %29 = phi i32 [ %27, %25 ], [ %12, %18 ], !dbg !410
  %30 = icmp eq i32 %29, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %31 = select i1 %30, i32 %12, i32 %29, !dbg !418
  %32 = trunc i32 %31 to i16, !dbg !418
  %33 = icmp eq i8* %1, null, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %33, label %34, label %35, !dbg !422

; <label>:34:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !423
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !426
  tail call void @ukplat_terminate(i32 3) #8, !dbg !426
  unreachable

; <label>:35:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !441
  %37 = load i32, i32* %36, align 8, !dbg !441, !tbaa !443
  %38 = icmp eq i32 %37, 4, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br i1 %38, label %45, label %39, !dbg !445

; <label>:39:                                     ; preds = %35
  %40 = icmp eq i32 %37, 7, !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  br i1 %40, label %45, label %41, !dbg !447

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %37, 2, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %42, label %45, label %43, !dbg !449

; <label>:43:                                     ; preds = %41
  %44 = icmp eq i32 %37, 3, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %44, label %45, label %84, !dbg !451

; <label>:45:                                     ; preds = %43, %41, %39, %35
  %46 = icmp eq i16 %2, 0, !dbg !452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %46, label %47, label %50, !dbg !454

; <label>:47:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41
  %49 = load i16, i16* %48, align 4, !dbg !457, !tbaa !458
  br label %86, !dbg !455

; <label>:50:                                     ; preds = %45
  %51 = zext i16 %2 to i32, !dbg !459
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !460
  %53 = load i32, i32* %52, align 8, !dbg !460, !tbaa !462
  %54 = icmp ult i32 %53, %51, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !464
  br i1 %54, label %80, label %55, !dbg !464

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !465
  %57 = load i16, i16* %56, align 4, !dbg !465, !tbaa !458
  %58 = icmp ugt i16 %57, 1435, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  br i1 %58, label %59, label %62, !dbg !468

; <label>:59:                                     ; preds = %55
  %60 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !469, !tbaa !471
  %61 = add i16 %60, 1, !dbg !469
  store i16 %61, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !469, !tbaa !471
  br label %80, !dbg !477

; <label>:62:                                     ; preds = %55
  %63 = icmp eq i16 %57, 0, !dbg !478
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !480
  %65 = load %struct.tcp_seg*, %struct.tcp_seg** %64, align 8, !dbg !480, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %66 = icmp eq %struct.tcp_seg* %65, null, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  br i1 %63, label %73, label %67, !dbg !485

; <label>:67:                                     ; preds = %62
  br i1 %66, label %68, label %79, !dbg !490

; <label>:68:                                     ; preds = %67
  %69 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !490
  %70 = load %struct.tcp_seg*, %struct.tcp_seg** %69, align 8, !dbg !490, !tbaa !491
  %71 = icmp eq %struct.tcp_seg* %70, null, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !492
  br i1 %71, label %72, label %79, !dbg !492

; <label>:72:                                     ; preds = %68
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !493
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !496
  tail call void @ukplat_terminate(i32 3) #8, !dbg !496
  unreachable

; <label>:73:                                     ; preds = %62
  br i1 %66, label %74, label %78, !dbg !500

; <label>:74:                                     ; preds = %73
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !500
  %76 = load %struct.tcp_seg*, %struct.tcp_seg** %75, align 8, !dbg !500, !tbaa !491
  %77 = icmp eq %struct.tcp_seg* %76, null, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %77, label %79, label %78, !dbg !501

; <label>:78:                                     ; preds = %74, %73
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !502
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !505
  tail call void @ukplat_terminate(i32 3) #8, !dbg !505
  unreachable

; <label>:79:                                     ; preds = %74, %68, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br label %86, !dbg !509

; <label>:80:                                     ; preds = %50, %59
  %81 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !510
  %82 = load i16, i16* %81, align 2, !dbg !510, !tbaa !511
  %83 = or i16 %82, 128, !dbg !510
  store i16 %83, i16* %81, align 2, !dbg !510, !tbaa !511
  br label %84, !dbg !510

; <label>:84:                                     ; preds = %80, %43
  %85 = phi i8 [ -11, %43 ], [ -1, %80 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br label %467, !dbg !515

; <label>:86:                                     ; preds = %79, %47
  %87 = phi i16* [ %56, %79 ], [ %48, %47 ], !dbg !457
  %88 = phi i16 [ %57, %79 ], [ %49, %47 ], !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !520
  %90 = load %struct.tcp_seg*, %struct.tcp_seg** %89, align 8, !dbg !520, !tbaa !491
  %91 = icmp eq %struct.tcp_seg* %90, null, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br i1 %91, label %233, label %92, !dbg !522

; <label>:92:                                     ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  %93 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %90, i64 0, i32 0, !dbg !525
  %94 = load %struct.tcp_seg*, %struct.tcp_seg** %93, align 8, !dbg !525, !tbaa !527
  %95 = icmp eq %struct.tcp_seg* %94, null, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %95, label %101, label %96, !dbg !530

; <label>:96:                                     ; preds = %92, %96
  %97 = phi %struct.tcp_seg* [ %99, %96 ], [ %94, %92 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  %98 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %97, i64 0, i32 0, !dbg !525
  %99 = load %struct.tcp_seg*, %struct.tcp_seg** %98, align 8, !dbg !525, !tbaa !527
  %100 = icmp eq %struct.tcp_seg* %99, null, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %100, label %101, label %96, !dbg !530, !llvm.loop !532

; <label>:101:                                    ; preds = %96, %92
  %102 = phi %struct.tcp_seg* [ %90, %92 ], [ %97, %96 ], !dbg !534
  %103 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %102, i64 0, i32 3, !dbg !535
  %104 = load i8, i8* %103, align 2, !dbg !535, !tbaa !536
  %105 = zext i8 %104 to i32, !dbg !535
  %106 = shl nuw nsw i32 %105, 2, !dbg !535
  %107 = and i32 %106, 4, !dbg !535
  %108 = lshr i32 %105, 1, !dbg !535
  %109 = and i32 %108, 4, !dbg !535
  %110 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %102, i64 0, i32 2, !dbg !537
  %111 = load i16, i16* %110, align 8, !dbg !537, !tbaa !540
  %112 = zext i16 %111 to i32, !dbg !537
  %113 = add nuw nsw i32 %109, %112, !dbg !535
  %114 = add nuw nsw i32 %113, %107, !dbg !537
  %115 = icmp ult i32 %31, %114, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %115, label %116, label %117, !dbg !541

; <label>:116:                                    ; preds = %101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !542
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !545
  tail call void @ukplat_terminate(i32 3) #8, !dbg !545
  unreachable

; <label>:117:                                    ; preds = %101
  %118 = sub nsw i32 %31, %114, !dbg !549
  %119 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !550
  %120 = load i16, i16* %119, align 2, !dbg !550, !tbaa !551
  store i16 %120, i16* %5, align 2, !dbg !552, !tbaa !393
  %121 = zext i16 %120 to i32, !dbg !553
  %122 = icmp eq i16 %120, 0, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %122, label %123, label %125, !dbg !556

; <label>:123:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  %124 = zext i16 %2 to i32, !dbg !560
  br label %143, !dbg !557

; <label>:125:                                    ; preds = %117
  %126 = and i32 %118, 65535, !dbg !561
  %127 = icmp ult i32 %126, %121, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br i1 %127, label %128, label %129, !dbg !565

; <label>:128:                                    ; preds = %125
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !566
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !569
  tail call void @ukplat_terminate(i32 3) #8, !dbg !569
  unreachable

; <label>:129:                                    ; preds = %125
  %130 = zext i16 %2 to i32, !dbg !573
  %131 = icmp ult i32 %121, %130, !dbg !573
  %132 = select i1 %131, i32 %121, i32 %130, !dbg !573
  %133 = icmp slt i32 %126, %132, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !573
  %134 = select i1 %133, i32 %126, i32 %132, !dbg !573
  %135 = trunc i32 %134 to i16, !dbg !573
  %136 = sub i16 %120, %135, !dbg !574
  store i16 %136, i16* %5, align 2, !dbg !574, !tbaa !393
  %137 = sub nsw i32 %118, %134, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  %138 = icmp eq i16 %136, 0, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !557
  br i1 %138, label %143, label %139, !dbg !557

; <label>:139:                                    ; preds = %129
  %140 = icmp eq i16 %135, %2, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  br i1 %140, label %141, label %142, !dbg !577

; <label>:141:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br label %224, !dbg !578

; <label>:142:                                    ; preds = %139
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !579
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !582
  tail call void @ukplat_terminate(i32 3) #8, !dbg !582
  unreachable

; <label>:143:                                    ; preds = %123, %129
  %144 = phi i32 [ %124, %123 ], [ %130, %129 ], !dbg !560
  %145 = phi i32 [ %118, %123 ], [ %137, %129 ]
  %146 = phi %struct.tcp_seg* [ null, %123 ], [ %102, %129 ]
  %147 = phi i16 [ 0, %123 ], [ %135, %129 ]
  %148 = trunc i32 %145 to i16, !dbg !586
  %149 = zext i16 %147 to i32, !dbg !587
  %150 = icmp ult i16 %147, %2, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br i1 %150, label %151, label %224, !dbg !578

; <label>:151:                                    ; preds = %143
  %152 = and i32 %145, 65535, !dbg !589
  %153 = icmp eq i16 %148, 0, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  br i1 %153, label %224, label %154, !dbg !591

; <label>:154:                                    ; preds = %151
  %155 = icmp eq i16 %111, 0, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %155, label %224, label %156, !dbg !593

; <label>:156:                                    ; preds = %154
  %157 = sub nsw i32 %144, %149, !dbg !594
  %158 = icmp sgt i32 %157, %152, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %159 = select i1 %158, i32 %152, i32 %157, !dbg !594
  %160 = trunc i32 %159 to i16, !dbg !594
  %161 = and i8 %3, 1, !dbg !596
  %162 = icmp eq i8 %161, 0, !dbg !596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !597
  br i1 %162, label %176, label %163, !dbg !597

; <label>:163:                                    ; preds = %156
  %164 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 0, i16 zeroext %160, i16 zeroext %148, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext 1) #7, !dbg !598
  %165 = icmp eq %struct.pbuf* %164, null, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  br i1 %165, label %232, label %166, !dbg !602

; <label>:166:                                    ; preds = %163
  %167 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %164, i64 0, i32 1, !dbg !603
  %168 = load i8*, i8** %167, align 8, !dbg !603, !tbaa !604
  %169 = zext i16 %147 to i64, !dbg !603
  %170 = getelementptr inbounds i8, i8* %1, i64 %169, !dbg !603
  %171 = and i32 %159, 65535, !dbg !603
  %172 = zext i32 %171 to i64, !dbg !603
  %173 = call i8* @memcpy(i8* %168, i8* nonnull %170, i64 %172) #9, !dbg !603
  %174 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %164) #9, !dbg !606
  %175 = add i16 %174, %88, !dbg !607
  br label %218, !dbg !608

; <label>:176:                                    ; preds = %156
  %177 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %102, i64 0, i32 1, !dbg !609
  %178 = load %struct.pbuf*, %struct.pbuf** %177, align 8, !dbg !609, !tbaa !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %179 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %178, i64 0, i32 0, !dbg !614
  %180 = load %struct.pbuf*, %struct.pbuf** %179, align 8, !dbg !614, !tbaa !616
  %181 = icmp eq %struct.pbuf* %180, null, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %181, label %187, label %182, !dbg !618

; <label>:182:                                    ; preds = %176, %182
  %183 = phi %struct.pbuf* [ %185, %182 ], [ %180, %176 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  %184 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %183, i64 0, i32 0, !dbg !614
  %185 = load %struct.pbuf*, %struct.pbuf** %184, align 8, !dbg !614, !tbaa !616
  %186 = icmp eq %struct.pbuf* %185, null, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %186, label %187, label %182, !dbg !618, !llvm.loop !620

; <label>:187:                                    ; preds = %182, %176
  %188 = phi %struct.pbuf* [ %178, %176 ], [ %183, %182 ], !dbg !622
  %189 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %188, i64 0, i32 4, !dbg !623
  %190 = load i8, i8* %189, align 4, !dbg !623, !tbaa !625
  %191 = icmp ult i8 %190, 64, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %191, label %192, label %203, !dbg !627

; <label>:192:                                    ; preds = %187
  %193 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %188, i64 0, i32 1, !dbg !628
  %194 = load i8*, i8** %193, align 8, !dbg !628, !tbaa !604
  %195 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %188, i64 0, i32 3, !dbg !629
  %196 = load i16, i16* %195, align 2, !dbg !629, !tbaa !630
  %197 = zext i16 %196 to i64, !dbg !631
  %198 = getelementptr inbounds i8, i8* %194, i64 %197, !dbg !631
  %199 = icmp eq i8* %198, %1, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %199, label %200, label %203, !dbg !633

; <label>:200:                                    ; preds = %192
  %201 = icmp eq i16 %147, 0, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %201, label %212, label %202, !dbg !638

; <label>:202:                                    ; preds = %200
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !639
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !642
  tail call void @ukplat_terminate(i32 3) #8, !dbg !642
  unreachable

; <label>:203:                                    ; preds = %192, %187
  %204 = tail call %struct.pbuf* @pbuf_alloc(i32 0, i16 zeroext %160, i32 1) #9, !dbg !646
  %205 = icmp eq %struct.pbuf* %204, null, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  br i1 %205, label %217, label %206, !dbg !650

; <label>:206:                                    ; preds = %203
  %207 = zext i16 %147 to i64, !dbg !651
  %208 = getelementptr inbounds i8, i8* %1, i64 %207, !dbg !651
  %209 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %204, i64 0, i32 1, !dbg !652
  store i8* %208, i8** %209, align 8, !dbg !653, !tbaa !654
  %210 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %204) #9, !dbg !656
  %211 = add i16 %210, %88, !dbg !657
  br label %212

; <label>:212:                                    ; preds = %200, %206
  %213 = phi i16 [ %147, %206 ], [ 0, %200 ]
  %214 = phi i16 [ %211, %206 ], [ %88, %200 ], !dbg !658
  %215 = phi i16 [ 0, %206 ], [ %160, %200 ], !dbg !510
  %216 = phi %struct.pbuf* [ %204, %206 ], [ null, %200 ], !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br label %218

; <label>:217:                                    ; preds = %203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br label %232

; <label>:218:                                    ; preds = %166, %212
  %219 = phi i16 [ %147, %166 ], [ %213, %212 ]
  %220 = phi i16 [ %175, %166 ], [ %214, %212 ], !dbg !510
  %221 = phi i16 [ 0, %166 ], [ %215, %212 ], !dbg !663
  %222 = phi %struct.pbuf* [ %164, %166 ], [ %216, %212 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %223 = add i16 %219, %160, !dbg !664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %224

; <label>:224:                                    ; preds = %141, %143, %151, %154, %218
  %225 = phi i16 [ %219, %218 ], [ %147, %154 ], [ %147, %151 ], [ %147, %143 ], [ %2, %141 ]
  %226 = phi i32 [ %144, %218 ], [ %144, %154 ], [ %144, %151 ], [ %144, %143 ], [ %130, %141 ]
  %227 = phi i16 [ %220, %218 ], [ %88, %154 ], [ %88, %151 ], [ %88, %143 ], [ %88, %141 ], !dbg !666
  %228 = phi i16 [ %221, %218 ], [ 0, %154 ], [ 0, %151 ], [ 0, %143 ], [ 0, %141 ], !dbg !398
  %229 = phi i16 [ %223, %218 ], [ %147, %154 ], [ %147, %151 ], [ %147, %143 ], [ %2, %141 ], !dbg !667
  %230 = phi %struct.tcp_seg* [ %102, %218 ], [ %146, %154 ], [ %146, %151 ], [ %146, %143 ], [ %102, %141 ], !dbg !668
  %231 = phi %struct.pbuf* [ %222, %218 ], [ null, %154 ], [ null, %151 ], [ null, %143 ], [ null, %141 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %240

; <label>:232:                                    ; preds = %163, %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %442

; <label>:233:                                    ; preds = %86
  %234 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !670
  %235 = load i16, i16* %234, align 2, !dbg !670, !tbaa !551
  %236 = icmp eq i16 %235, 0, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %236, label %237, label %239, !dbg !674

; <label>:237:                                    ; preds = %233
  %238 = zext i16 %2 to i32, !dbg !675
  br label %240, !dbg !674

; <label>:239:                                    ; preds = %233
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !676
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !679
  tail call void @ukplat_terminate(i32 3) #8, !dbg !679
  unreachable

; <label>:240:                                    ; preds = %237, %224
  %241 = phi i32 [ %238, %237 ], [ %226, %224 ], !dbg !675
  %242 = phi i16 [ %88, %237 ], [ %227, %224 ], !dbg !666
  %243 = phi i16 [ 0, %237 ], [ %225, %224 ], !dbg !510
  %244 = phi i16 [ 0, %237 ], [ %228, %224 ], !dbg !398
  %245 = phi i16 [ 0, %237 ], [ %229, %224 ], !dbg !510
  %246 = phi %struct.tcp_seg* [ null, %237 ], [ %230, %224 ], !dbg !510
  %247 = phi %struct.tcp_seg* [ null, %237 ], [ %102, %224 ], !dbg !510
  %248 = phi %struct.pbuf* [ null, %237 ], [ %231, %224 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  %249 = icmp ult i16 %245, %2, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %249, label %250, label %323, !dbg !683

; <label>:250:                                    ; preds = %240
  %251 = and i8 %3, 1
  %252 = icmp eq i8 %251, 0
  %253 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37
  br label %254, !dbg !683

; <label>:254:                                    ; preds = %250, %319
  %255 = phi i16 [ %245, %250 ], [ %321, %319 ]
  %256 = phi %struct.tcp_seg* [ null, %250 ], [ %310, %319 ]
  %257 = phi %struct.tcp_seg* [ null, %250 ], [ %320, %319 ]
  %258 = phi i16 [ %242, %250 ], [ %303, %319 ]
  %259 = zext i16 %255 to i32, !dbg !685
  %260 = sub i16 %2, %255, !dbg !686
  %261 = zext i16 %260 to i32, !dbg !689
  %262 = icmp ugt i32 %31, %261, !dbg !689
  %263 = select i1 %262, i32 %261, i32 %31, !dbg !689
  %264 = trunc i32 %263 to i16, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %252, label %283, label %265, !dbg !691

; <label>:265:                                    ; preds = %254
  %266 = icmp eq %struct.tcp_seg* %257, null, !dbg !692
  %267 = zext i1 %266 to i8, !dbg !695
  %268 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 74, i16 zeroext %264, i16 zeroext %32, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext %267) #7, !dbg !696
  %269 = icmp eq %struct.pbuf* %268, null, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %269, label %442, label %270, !dbg !699

; <label>:270:                                    ; preds = %265
  %271 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %268, i64 0, i32 3, !dbg !700
  %272 = load i16, i16* %271, align 2, !dbg !700, !tbaa !630
  %273 = zext i16 %272 to i32, !dbg !700
  %274 = icmp sgt i32 %263, %273, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %274, label %275, label %276, !dbg !703

; <label>:275:                                    ; preds = %270
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !704
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !707
  call void @ukplat_terminate(i32 3) #8, !dbg !707
  unreachable

; <label>:276:                                    ; preds = %270
  %277 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %268, i64 0, i32 1, !dbg !711
  %278 = load i8*, i8** %277, align 8, !dbg !711, !tbaa !604
  %279 = zext i16 %255 to i64, !dbg !711
  %280 = getelementptr inbounds i8, i8* %1, i64 %279, !dbg !711
  %281 = zext i32 %263 to i64, !dbg !711
  %282 = call i8* @memcpy(i8* %278, i8* nonnull %280, i64 %281) #9, !dbg !711
  br label %300, !dbg !712

; <label>:283:                                    ; preds = %254
  %284 = load i16, i16* %5, align 2, !dbg !713, !tbaa !393
  %285 = icmp eq i16 %284, 0, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %285, label %287, label %286, !dbg !716

; <label>:286:                                    ; preds = %283
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !717
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !720
  call void @ukplat_terminate(i32 3) #8, !dbg !720
  unreachable

; <label>:287:                                    ; preds = %283
  %288 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %264, i32 1) #9, !dbg !724
  %289 = icmp eq %struct.pbuf* %288, null, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !728
  br i1 %289, label %298, label %290, !dbg !728

; <label>:290:                                    ; preds = %287
  %291 = zext i16 %255 to i64, !dbg !729
  %292 = getelementptr inbounds i8, i8* %1, i64 %291, !dbg !729
  %293 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %288, i64 0, i32 1, !dbg !730
  store i8* %292, i8** %293, align 8, !dbg !731, !tbaa !654
  %294 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext 0, i32 640) #9, !dbg !732
  %295 = icmp eq %struct.pbuf* %294, null, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  br i1 %295, label %296, label %299, !dbg !735

; <label>:296:                                    ; preds = %290
  %297 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %288) #9, !dbg !736
  br label %298, !dbg !738

; <label>:298:                                    ; preds = %287, %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br label %442

; <label>:299:                                    ; preds = %290
  call void @pbuf_cat(%struct.pbuf* nonnull %294, %struct.pbuf* nonnull %288) #9, !dbg !740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !741
  br label %300

; <label>:300:                                    ; preds = %299, %276
  %301 = phi %struct.pbuf* [ %268, %276 ], [ %294, %299 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %302 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %301) #9, !dbg !742
  %303 = add i16 %302, %258, !dbg !743
  %304 = icmp ugt i16 %303, 1436, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %304, label %305, label %307, !dbg !746

; <label>:305:                                    ; preds = %300
  %306 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %301) #9, !dbg !747
  br label %442, !dbg !749

; <label>:307:                                    ; preds = %300
  %308 = load i32, i32* %253, align 4, !dbg !750, !tbaa !752
  %309 = add i32 %308, %259, !dbg !753
  %310 = call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %301, i8 zeroext 0, i32 %309, i8 zeroext 0) #7, !dbg !754
  %311 = icmp eq %struct.tcp_seg* %310, null, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %311, label %442, label %312, !dbg !756

; <label>:312:                                    ; preds = %307
  %313 = icmp eq %struct.tcp_seg* %257, null, !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br i1 %313, label %319, label %314, !dbg !759

; <label>:314:                                    ; preds = %312
  %315 = icmp eq %struct.tcp_seg* %256, null, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  br i1 %315, label %316, label %317, !dbg !764

; <label>:316:                                    ; preds = %314
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !765
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !768
  call void @ukplat_terminate(i32 3) #8, !dbg !768
  unreachable

; <label>:317:                                    ; preds = %314
  %318 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %256, i64 0, i32 0, !dbg !772
  store %struct.tcp_seg* %310, %struct.tcp_seg** %318, align 8, !dbg !773, !tbaa !527
  br label %319

; <label>:319:                                    ; preds = %312, %317
  %320 = phi %struct.tcp_seg* [ %257, %317 ], [ %310, %312 ], !dbg !510
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %321 = add i16 %255, %264, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %322 = icmp ult i16 %321, %2, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %322, label %254, label %323, !dbg !683

; <label>:323:                                    ; preds = %319, %240
  %324 = phi i16 [ %242, %240 ], [ %303, %319 ], !dbg !666
  %325 = phi %struct.tcp_seg* [ null, %240 ], [ %320, %319 ], !dbg !388
  %326 = phi %struct.tcp_seg* [ %246, %240 ], [ %310, %319 ], !dbg !776
  %327 = icmp eq i16 %243, 0, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %327, label %360, label %328, !dbg !778

; <label>:328:                                    ; preds = %323
  %329 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 1, !dbg !779
  %330 = load %struct.pbuf*, %struct.pbuf** %329, align 8, !dbg !779, !tbaa !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  %331 = icmp eq %struct.pbuf* %330, null, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %331, label %356, label %332, !dbg !783

; <label>:332:                                    ; preds = %328
  %333 = zext i16 %243 to i64
  br label %334, !dbg !783

; <label>:334:                                    ; preds = %332, %353
  %335 = phi %struct.pbuf* [ %330, %332 ], [ %354, %353 ]
  %336 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %335, i64 0, i32 2, !dbg !784
  %337 = load i16, i16* %336, align 8, !dbg !787, !tbaa !788
  %338 = add i16 %337, %243, !dbg !787
  store i16 %338, i16* %336, align 8, !dbg !787, !tbaa !788
  %339 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %335, i64 0, i32 0, !dbg !789
  %340 = load %struct.pbuf*, %struct.pbuf** %339, align 8, !dbg !789, !tbaa !616
  %341 = icmp eq %struct.pbuf* %340, null, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  br i1 %341, label %342, label %353, !dbg !792

; <label>:342:                                    ; preds = %334
  %343 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %335, i64 0, i32 1, !dbg !793
  %344 = load i8*, i8** %343, align 8, !dbg !793, !tbaa !604
  %345 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %335, i64 0, i32 3, !dbg !793
  %346 = load i16, i16* %345, align 2, !dbg !793, !tbaa !630
  %347 = zext i16 %346 to i64, !dbg !793
  %348 = getelementptr inbounds i8, i8* %344, i64 %347, !dbg !793
  %349 = call i8* @memcpy(i8* %348, i8* nonnull %1, i64 %333) #9, !dbg !793
  %350 = load i16, i16* %345, align 2, !dbg !795, !tbaa !630
  %351 = add i16 %350, %243, !dbg !795
  store i16 %351, i16* %345, align 2, !dbg !795, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  %352 = load %struct.pbuf*, %struct.pbuf** %339, align 8, !dbg !797, !tbaa !616
  br label %353, !dbg !796

; <label>:353:                                    ; preds = %334, %342
  %354 = phi %struct.pbuf* [ %340, %334 ], [ %352, %342 ], !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !798
  %355 = icmp eq %struct.pbuf* %354, null, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %355, label %356, label %334, !dbg !783, !llvm.loop !799

; <label>:356:                                    ; preds = %353, %328
  %357 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 2, !dbg !801
  %358 = load i16, i16* %357, align 8, !dbg !802, !tbaa !540
  %359 = add i16 %358, %243, !dbg !802
  store i16 %359, i16* %357, align 8, !dbg !802, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br label %360, !dbg !803

; <label>:360:                                    ; preds = %323, %356
  %361 = load i16, i16* %5, align 2, !dbg !804, !tbaa !393
  %362 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !805
  store i16 %361, i16* %362, align 2, !dbg !806, !tbaa !551
  %363 = icmp eq %struct.pbuf* %248, null, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %363, label %372, label %364, !dbg !808

; <label>:364:                                    ; preds = %360
  %365 = icmp eq %struct.tcp_seg* %247, null, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  br i1 %365, label %366, label %367, !dbg !813

; <label>:366:                                    ; preds = %364
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !814
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !817
  call void @ukplat_terminate(i32 3) #8, !dbg !817
  unreachable

; <label>:367:                                    ; preds = %364
  %368 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 1, !dbg !821
  %369 = load %struct.pbuf*, %struct.pbuf** %368, align 8, !dbg !821, !tbaa !611
  call void @pbuf_cat(%struct.pbuf* %369, %struct.pbuf* nonnull %248) #9, !dbg !822
  %370 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %248, i64 0, i32 2, !dbg !823
  %371 = load i16, i16* %370, align 8, !dbg !823, !tbaa !788
  br label %401, !dbg !824

; <label>:372:                                    ; preds = %360
  %373 = icmp eq i16 %244, 0, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  %374 = icmp eq %struct.tcp_seg* %247, null, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %373, label %406, label %375, !dbg !826

; <label>:375:                                    ; preds = %372
  br i1 %374, label %380, label %376, !dbg !830

; <label>:376:                                    ; preds = %375
  %377 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 1, !dbg !830
  %378 = load %struct.pbuf*, %struct.pbuf** %377, align 8, !dbg !830, !tbaa !611
  %379 = icmp eq %struct.pbuf* %378, null, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %379, label %380, label %381, !dbg !831

; <label>:380:                                    ; preds = %376, %375
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !832
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !835
  call void @ukplat_terminate(i32 3) #8, !dbg !835
  unreachable

; <label>:381:                                    ; preds = %376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %382 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %378, i64 0, i32 0, !dbg !842
  %383 = load %struct.pbuf*, %struct.pbuf** %382, align 8, !dbg !842, !tbaa !616
  %384 = icmp eq %struct.pbuf* %383, null, !dbg !844
  %385 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %378, i64 0, i32 2, !dbg !845
  %386 = load i16, i16* %385, align 8, !dbg !845, !tbaa !788
  %387 = add i16 %386, %244, !dbg !845
  store i16 %387, i16* %385, align 8, !dbg !845, !tbaa !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %384, label %396, label %388, !dbg !846

; <label>:388:                                    ; preds = %381, %388
  %389 = phi %struct.pbuf* [ %391, %388 ], [ %383, %381 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  %390 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %389, i64 0, i32 0, !dbg !842
  %391 = load %struct.pbuf*, %struct.pbuf** %390, align 8, !dbg !842, !tbaa !616
  %392 = icmp eq %struct.pbuf* %391, null, !dbg !844
  %393 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %389, i64 0, i32 2, !dbg !845
  %394 = load i16, i16* %393, align 8, !dbg !845, !tbaa !788
  %395 = add i16 %394, %244, !dbg !845
  store i16 %395, i16* %393, align 8, !dbg !845, !tbaa !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  br i1 %392, label %396, label %388, !dbg !846, !llvm.loop !848

; <label>:396:                                    ; preds = %388, %381
  %397 = phi %struct.pbuf* [ %378, %381 ], [ %389, %388 ], !dbg !850
  %398 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %397, i64 0, i32 3, !dbg !851
  %399 = load i16, i16* %398, align 2, !dbg !852, !tbaa !630
  %400 = add i16 %399, %244, !dbg !852
  store i16 %400, i16* %398, align 2, !dbg !852, !tbaa !630
  br label %401, !dbg !853

; <label>:401:                                    ; preds = %396, %367
  %402 = phi i16 [ %244, %396 ], [ %371, %367 ]
  %403 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 2, !dbg !854
  %404 = load i16, i16* %403, align 8, !dbg !854, !tbaa !540
  %405 = add i16 %404, %402, !dbg !854
  store i16 %405, i16* %403, align 8, !dbg !854, !tbaa !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br label %407, !dbg !855

; <label>:406:                                    ; preds = %372
  br i1 %374, label %409, label %407, !dbg !855

; <label>:407:                                    ; preds = %401, %406
  %408 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %247, i64 0, i32 0, !dbg !856
  br label %409

; <label>:409:                                    ; preds = %406, %407
  %410 = phi %struct.tcp_seg** [ %408, %407 ], [ %89, %406 ]
  store %struct.tcp_seg* %325, %struct.tcp_seg** %410, align 8, !dbg !859, !tbaa !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %411 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !862
  %412 = load i32, i32* %411, align 4, !dbg !863, !tbaa !752
  %413 = add i32 %412, %241, !dbg !863
  store i32 %413, i32* %411, align 4, !dbg !863, !tbaa !752
  %414 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !864
  %415 = load i32, i32* %414, align 8, !dbg !865, !tbaa !462
  %416 = sub i32 %415, %241, !dbg !865
  store i32 %416, i32* %414, align 8, !dbg !865, !tbaa !462
  store i16 %324, i16* %87, align 4, !dbg !866, !tbaa !458
  %417 = icmp eq i16 %324, 0, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  br i1 %417, label %426, label %418, !dbg !869

; <label>:418:                                    ; preds = %409
  %419 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !870
  %420 = load %struct.tcp_seg*, %struct.tcp_seg** %419, align 8, !dbg !870, !tbaa !484
  %421 = icmp eq %struct.tcp_seg* %420, null, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  br i1 %421, label %422, label %426, !dbg !870

; <label>:422:                                    ; preds = %418
  %423 = load %struct.tcp_seg*, %struct.tcp_seg** %89, align 8, !dbg !870, !tbaa !491
  %424 = icmp eq %struct.tcp_seg* %423, null, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %424, label %425, label %426, !dbg !874

; <label>:425:                                    ; preds = %422
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !875
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !878
  call void @ukplat_terminate(i32 3) #8, !dbg !878
  unreachable

; <label>:426:                                    ; preds = %422, %418, %409
  %427 = icmp eq %struct.tcp_seg* %326, null, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %427, label %467, label %428, !dbg !884

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %326, i64 0, i32 4, !dbg !885
  %430 = load %struct.tcp_hdr*, %struct.tcp_hdr** %429, align 8, !dbg !885, !tbaa !886
  %431 = icmp eq %struct.tcp_hdr* %430, null, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  br i1 %431, label %467, label %432, !dbg !888

; <label>:432:                                    ; preds = %428
  %433 = and i8 %3, 2, !dbg !889
  %434 = icmp eq i8 %433, 0, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  br i1 %434, label %435, label %467, !dbg !891

; <label>:435:                                    ; preds = %432
  %436 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %430, i64 0, i32 4, !dbg !892
  %437 = load i16, i16* %436, align 1, !dbg !892, !tbaa !894
  %438 = call zeroext i16 @lwip_htons(i16 zeroext 8) #9, !dbg !892
  %439 = or i16 %438, %437, !dbg !892
  %440 = load %struct.tcp_hdr*, %struct.tcp_hdr** %429, align 8, !dbg !892, !tbaa !886
  %441 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %440, i64 0, i32 4, !dbg !892
  store i16 %439, i16* %441, align 1, !dbg !892, !tbaa !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br label %467, !dbg !896

; <label>:442:                                    ; preds = %265, %307, %298, %305, %232
  %443 = phi %struct.tcp_seg* [ null, %232 ], [ %257, %305 ], [ %257, %298 ], [ %257, %307 ], [ %257, %265 ], !dbg !388
  %444 = phi %struct.pbuf* [ null, %232 ], [ %248, %305 ], [ %248, %298 ], [ %248, %307 ], [ %248, %265 ], !dbg !897
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %445 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !898
  %446 = load i16, i16* %445, align 2, !dbg !898, !tbaa !511
  %447 = or i16 %446, 128, !dbg !898
  store i16 %447, i16* %445, align 2, !dbg !898, !tbaa !511
  %448 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !900, !tbaa !471
  %449 = add i16 %448, 1, !dbg !900
  store i16 %449, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !900, !tbaa !471
  %450 = icmp eq %struct.pbuf* %444, null, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br i1 %450, label %453, label %451, !dbg !903

; <label>:451:                                    ; preds = %442
  %452 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %444) #9, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %453, !dbg !906

; <label>:453:                                    ; preds = %442, %451
  %454 = icmp eq %struct.tcp_seg* %443, null, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  br i1 %454, label %456, label %455, !dbg !909

; <label>:455:                                    ; preds = %453
  call void @tcp_segs_free(%struct.tcp_seg* nonnull %443) #9, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br label %456, !dbg !912

; <label>:456:                                    ; preds = %453, %455
  %457 = load i16, i16* %87, align 4, !dbg !913, !tbaa !458
  %458 = icmp eq i16 %457, 0, !dbg !915
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br i1 %458, label %467, label %459, !dbg !916

; <label>:459:                                    ; preds = %456
  %460 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !917
  %461 = load %struct.tcp_seg*, %struct.tcp_seg** %460, align 8, !dbg !917, !tbaa !484
  %462 = icmp eq %struct.tcp_seg* %461, null, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %462, label %463, label %467, !dbg !917

; <label>:463:                                    ; preds = %459
  %464 = load %struct.tcp_seg*, %struct.tcp_seg** %89, align 8, !dbg !917, !tbaa !491
  %465 = icmp eq %struct.tcp_seg* %464, null, !dbg !917
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  br i1 %465, label %466, label %467, !dbg !921

; <label>:466:                                    ; preds = %463
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !922
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !925
  call void @ukplat_terminate(i32 3) #8, !dbg !925
  unreachable

; <label>:467:                                    ; preds = %456, %459, %463, %432, %435, %426, %428, %84
  %468 = phi i8 [ %85, %84 ], [ 0, %428 ], [ 0, %426 ], [ 0, %435 ], [ 0, %432 ], [ -1, %463 ], [ -1, %459 ], [ -1, %456 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #6, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !930
  ret i8 %468, !dbg !930
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !932
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !934
  call void @llvm.va_start(i8* nonnull %3), !dbg !934
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.40, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !935
  call void @llvm.va_end(i8* nonnull %3), !dbg !938
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  ret void, !dbg !939
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32, i16 zeroext, i16 zeroext, i16*, %struct.tcp_pcb* readonly, i8 zeroext, i8 zeroext) unnamed_addr #0 !dbg !940 {
  %8 = icmp eq i16* %3, null, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br i1 %8, label %9, label %10, !dbg !968

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !969
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !972
  tail call void @ukplat_terminate(i32 3) #8, !dbg !972
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.tcp_pcb* %4, null, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  br i1 %11, label %12, label %13, !dbg !979

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !980
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !983
  tail call void @ukplat_terminate(i32 3) #8, !dbg !983
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = zext i16 %1 to i32, !dbg !987
  %15 = zext i16 %2 to i32, !dbg !989
  %16 = icmp ult i16 %1, %2, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %16, label %17, label %40, !dbg !991

; <label>:17:                                     ; preds = %13
  %18 = and i8 %5, 2, !dbg !992
  %19 = icmp eq i8 %18, 0, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  br i1 %19, label %20, label %35, !dbg !995

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !996
  %22 = load i16, i16* %21, align 2, !dbg !996, !tbaa !511
  %23 = and i16 %22, 64, !dbg !997
  %24 = icmp eq i16 %23, 0, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !998
  br i1 %24, label %25, label %40, !dbg !998

; <label>:25:                                     ; preds = %20
  %26 = icmp eq i8 %6, 0, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %26, label %35, label %27, !dbg !1000

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 44, !dbg !1001
  %29 = load %struct.tcp_seg*, %struct.tcp_seg** %28, align 8, !dbg !1001, !tbaa !491
  %30 = icmp eq %struct.tcp_seg* %29, null, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  br i1 %30, label %31, label %35, !dbg !1003

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 45, !dbg !1004
  %33 = load %struct.tcp_seg*, %struct.tcp_seg** %32, align 8, !dbg !1004, !tbaa !484
  %34 = icmp eq %struct.tcp_seg* %33, null, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %34, label %40, label %35, !dbg !1006

; <label>:35:                                     ; preds = %31, %27, %25, %17
  %36 = add nuw nsw i32 %14, 1460, !dbg !1007
  %37 = icmp ugt i32 %36, %15, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  %38 = select i1 %37, i32 %15, i32 %36, !dbg !1007
  %39 = trunc i32 %38 to i16, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br label %40, !dbg !1009

; <label>:40:                                     ; preds = %31, %20, %35, %13
  %41 = phi i16 [ %39, %35 ], [ %1, %20 ], [ %1, %31 ], [ %1, %13 ], !dbg !1010
  %42 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %41, i32 640) #9, !dbg !1011
  %43 = icmp eq %struct.pbuf* %42, null, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %43, label %54, label %44, !dbg !1015

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 0, !dbg !1016
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !1016, !tbaa !616
  %47 = icmp eq %struct.pbuf* %46, null, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %47, label %49, label %48, !dbg !1019

; <label>:48:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !1020
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1023
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1023
  unreachable

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 3, !dbg !1027
  %51 = load i16, i16* %50, align 2, !dbg !1027, !tbaa !630
  %52 = sub i16 %51, %1, !dbg !1028
  store i16 %52, i16* %3, align 2, !dbg !1029, !tbaa !393
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 2, !dbg !1030
  store i16 %1, i16* %53, align 8, !dbg !1031, !tbaa !788
  store i16 %1, i16* %50, align 2, !dbg !1032, !tbaa !630
  br label %54, !dbg !1033

; <label>:54:                                     ; preds = %40, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  ret %struct.pbuf* %42, !dbg !1036
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_clen(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, i8 zeroext, i32, i8 zeroext) unnamed_addr #0 !dbg !1037 {
  %6 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br i1 %6, label %7, label %8, !dbg !1056

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1057
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1060
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1060
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  br i1 %9, label %10, label %11, !dbg !1067

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !1068
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1071
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1071
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* @memp_malloc(i32 3) #9, !dbg !1075
  %13 = bitcast i8* %12 to %struct.tcp_seg*, !dbg !1077
  %14 = icmp eq i8* %12, null, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %14, label %15, label %17, !dbg !1080

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !1081
  br label %72, !dbg !1083

; <label>:17:                                     ; preds = %11
  %18 = shl i8 %4, 2, !dbg !1084
  %19 = and i8 %18, 4, !dbg !1084
  %20 = lshr i8 %4, 1, !dbg !1084
  %21 = and i8 %20, 4, !dbg !1084
  %22 = add nuw nsw i8 %19, %21, !dbg !1084
  %23 = getelementptr inbounds i8, i8* %12, i64 18, !dbg !1086
  store i8 %4, i8* %23, align 2, !dbg !1087, !tbaa !536
  %24 = bitcast i8* %12 to %struct.tcp_seg**, !dbg !1088
  store %struct.tcp_seg* null, %struct.tcp_seg** %24, align 8, !dbg !1089, !tbaa !527
  %25 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1090
  %26 = bitcast i8* %25 to %struct.pbuf**, !dbg !1090
  store %struct.pbuf* %1, %struct.pbuf** %26, align 8, !dbg !1091, !tbaa !611
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1092
  %28 = load i16, i16* %27, align 8, !dbg !1092, !tbaa !788
  %29 = zext i16 %28 to i32, !dbg !1092
  %30 = zext i8 %22 to i32, !dbg !1092
  %31 = icmp ult i32 %29, %30, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %31, label %32, label %33, !dbg !1095

; <label>:32:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !1096
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1099
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1099
  unreachable

; <label>:33:                                     ; preds = %17
  %34 = zext i8 %22 to i16, !dbg !1103
  %35 = sub i16 %28, %34, !dbg !1103
  %36 = getelementptr inbounds i8, i8* %12, i64 16, !dbg !1104
  %37 = bitcast i8* %36 to i16*, !dbg !1104
  store i16 %35, i16* %37, align 8, !dbg !1105, !tbaa !540
  %38 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 20) #9, !dbg !1106
  %39 = icmp eq i8 %38, 0, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1108
  br i1 %39, label %43, label %40, !dbg !1108

; <label>:40:                                     ; preds = %33
  %41 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1109, !tbaa !1111
  %42 = add i16 %41, 1, !dbg !1109
  store i16 %42, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1109, !tbaa !1111
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %13) #9, !dbg !1112
  br label %72, !dbg !1113

; <label>:43:                                     ; preds = %33
  %44 = load %struct.pbuf*, %struct.pbuf** %26, align 8, !dbg !1114, !tbaa !611
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i64 0, i32 1, !dbg !1115
  %46 = bitcast i8** %45 to i64*, !dbg !1115
  %47 = load i64, i64* %46, align 8, !dbg !1115, !tbaa !604
  %48 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !1116
  %49 = bitcast i8* %48 to %struct.tcp_hdr**, !dbg !1116
  %50 = bitcast i8* %48 to i64*, !dbg !1117
  store i64 %47, i64* %50, align 8, !dbg !1117, !tbaa !886
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1118
  %52 = load i16, i16* %51, align 2, !dbg !1118, !tbaa !1119
  %53 = tail call zeroext i16 @lwip_htons(i16 zeroext %52) #9, !dbg !1120
  %54 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1121, !tbaa !886
  %55 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %54, i64 0, i32 0, !dbg !1122
  store i16 %53, i16* %55, align 1, !dbg !1123, !tbaa !1124
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1125
  %57 = load i16, i16* %56, align 8, !dbg !1125, !tbaa !1126
  %58 = tail call zeroext i16 @lwip_htons(i16 zeroext %57) #9, !dbg !1127
  %59 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1128, !tbaa !886
  %60 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %59, i64 0, i32 1, !dbg !1129
  store i16 %58, i16* %60, align 1, !dbg !1130, !tbaa !1131
  %61 = tail call i32 @lwip_htonl(i32 %3) #9, !dbg !1132
  %62 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1133, !tbaa !886
  %63 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %62, i64 0, i32 2, !dbg !1134
  store i32 %61, i32* %63, align 1, !dbg !1135, !tbaa !1136
  %64 = shl nuw nsw i16 %34, 10, !dbg !1137
  %65 = add nuw i16 %64, 20480, !dbg !1137
  %66 = zext i8 %2 to i16, !dbg !1137
  %67 = or i16 %65, %66, !dbg !1137
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %67) #9, !dbg !1137
  %69 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1137, !tbaa !886
  %70 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 4, !dbg !1137
  store i16 %68, i16* %70, align 1, !dbg !1137, !tbaa !894
  %71 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 7, !dbg !1138
  store i16 0, i16* %71, align 1, !dbg !1139, !tbaa !1140
  br label %72, !dbg !1141

; <label>:72:                                     ; preds = %43, %40, %15
  %73 = phi %struct.tcp_seg* [ null, %15 ], [ null, %40 ], [ %13, %43 ], !dbg !1142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  ret %struct.tcp_seg* %73, !dbg !1144
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !1145 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  br i1 %3, label %4, label %5, !dbg !1166

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1167
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1170
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1170
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1174
  %7 = load %struct.tcp_seg*, %struct.tcp_seg** %6, align 8, !dbg !1174, !tbaa !491
  %8 = icmp eq %struct.tcp_seg* %7, null, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  br i1 %8, label %125, label %9, !dbg !1177

; <label>:9:                                      ; preds = %5
  %10 = zext i16 %1 to i32, !dbg !1178
  %11 = icmp eq i16 %1, 0, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br i1 %11, label %12, label %13, !dbg !1181

; <label>:12:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1182
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1188
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1188
  unreachable

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 2, !dbg !1192
  %15 = load i16, i16* %14, align 8, !dbg !1192, !tbaa !540
  %16 = icmp ugt i16 %15, %1, !dbg !1194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %16, label %17, label %125, !dbg !1195

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !1196
  %19 = load i16, i16* %18, align 2, !dbg !1196, !tbaa !411
  %20 = icmp ult i16 %19, %1, !dbg !1196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %20, label %21, label %22, !dbg !1199

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1200
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1203
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1203
  unreachable

; <label>:22:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 3, !dbg !1209
  %24 = load i8, i8* %23, align 2, !dbg !1209, !tbaa !536
  %25 = shl i8 %24, 2, !dbg !1211
  %26 = and i8 %25, 4, !dbg !1211
  %27 = lshr i8 %24, 1, !dbg !1211
  %28 = and i8 %27, 4, !dbg !1211
  %29 = add nuw nsw i8 %26, %28, !dbg !1211
  %30 = sub i16 %15, %1, !dbg !1213
  %31 = zext i8 %29 to i16, !dbg !1215
  %32 = add i16 %30, %31, !dbg !1215
  %33 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %32, i32 640) #9, !dbg !1216
  %34 = icmp eq %struct.pbuf* %33, null, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1219
  br i1 %34, label %117, label %35, !dbg !1219

; <label>:35:                                     ; preds = %22
  %36 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 1, !dbg !1220
  %37 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1220, !tbaa !611
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 2, !dbg !1221
  %39 = load i16, i16* %38, align 8, !dbg !1221, !tbaa !788
  %40 = load i16, i16* %14, align 8, !dbg !1222, !tbaa !540
  %41 = add i16 %39, %1, !dbg !1223
  %42 = sub i16 %41, %40, !dbg !1224
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i64 0, i32 1, !dbg !1226
  %44 = load i8*, i8** %43, align 8, !dbg !1226, !tbaa !604
  %45 = zext i8 %29 to i64, !dbg !1228
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1228
  %47 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %37, i8* %46, i16 zeroext %30, i16 zeroext %42) #9, !dbg !1229
  %48 = icmp eq i16 %47, %30, !dbg !1230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br i1 %48, label %49, label %120, !dbg !1231

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 4, !dbg !1232
  %51 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1232, !tbaa !886
  %52 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %51, i64 0, i32 4, !dbg !1232
  %53 = load i16, i16* %52, align 1, !dbg !1232, !tbaa !894
  %54 = tail call zeroext i16 @lwip_htons(i16 zeroext %53) #9, !dbg !1232
  %55 = trunc i16 %54 to i8, !dbg !1232
  %56 = and i8 %55, 63, !dbg !1232
  %57 = and i8 %55, 8, !dbg !1235
  %58 = icmp eq i8 %57, 0, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %58, label %61, label %59, !dbg !1237

; <label>:59:                                     ; preds = %49
  %60 = and i8 %55, 55, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  br label %61, !dbg !1240

; <label>:61:                                     ; preds = %49, %59
  %62 = phi i8 [ %60, %59 ], [ %56, %49 ], !dbg !1241
  %63 = phi i8 [ 8, %59 ], [ 0, %49 ], !dbg !1241
  %64 = and i8 %62, 1, !dbg !1242
  %65 = icmp eq i8 %64, 0, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %65, label %69, label %66, !dbg !1244

; <label>:66:                                     ; preds = %61
  %67 = and i8 %62, 62, !dbg !1245
  %68 = or i8 %63, 1, !dbg !1247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  br label %69, !dbg !1248

; <label>:69:                                     ; preds = %61, %66
  %70 = phi i8 [ %67, %66 ], [ %62, %61 ], !dbg !1249
  %71 = phi i8 [ %68, %66 ], [ %63, %61 ], !dbg !1249
  %72 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1250, !tbaa !886
  %73 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %72, i64 0, i32 2, !dbg !1250
  %74 = load i32, i32* %73, align 1, !dbg !1250, !tbaa !1136
  %75 = tail call i32 @lwip_htonl(i32 %74) #9, !dbg !1250
  %76 = add i32 %75, %10, !dbg !1251
  %77 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %33, i8 zeroext %71, i32 %76, i8 zeroext %24) #7, !dbg !1252
  %78 = icmp eq %struct.tcp_seg* %77, null, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br i1 %78, label %120, label %79, !dbg !1255

; <label>:79:                                     ; preds = %69
  %80 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1256, !tbaa !611
  %81 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %80) #9, !dbg !1257
  %82 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1258
  %83 = load i16, i16* %82, align 4, !dbg !1259, !tbaa !458
  %84 = sub i16 %83, %81, !dbg !1259
  store i16 %84, i16* %82, align 4, !dbg !1259, !tbaa !458
  %85 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1260, !tbaa !611
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %85, i64 0, i32 2, !dbg !1261
  %87 = load i16, i16* %86, align 8, !dbg !1261, !tbaa !788
  %88 = sub i16 %87, %30, !dbg !1262
  tail call void @pbuf_realloc(%struct.pbuf* %85, i16 zeroext %88) #9, !dbg !1263
  %89 = load i16, i16* %14, align 8, !dbg !1264, !tbaa !540
  %90 = sub i16 %89, %30, !dbg !1264
  store i16 %90, i16* %14, align 8, !dbg !1264, !tbaa !540
  %91 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1265, !tbaa !886
  %92 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %91, i64 0, i32 4, !dbg !1265
  %93 = load i16, i16* %92, align 1, !dbg !1265, !tbaa !894
  %94 = zext i8 %70 to i16, !dbg !1265
  %95 = tail call zeroext i16 @lwip_htons(i16 zeroext %94) #9, !dbg !1265
  %96 = or i16 %95, %93, !dbg !1265
  %97 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1265, !tbaa !886
  %98 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %97, i64 0, i32 4, !dbg !1265
  store i16 %96, i16* %98, align 1, !dbg !1265, !tbaa !894
  %99 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1266, !tbaa !611
  %100 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %99) #9, !dbg !1267
  %101 = load i16, i16* %82, align 4, !dbg !1268, !tbaa !458
  %102 = add i16 %101, %100, !dbg !1268
  store i16 %102, i16* %82, align 4, !dbg !1268, !tbaa !458
  %103 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 1, !dbg !1269
  %104 = load %struct.pbuf*, %struct.pbuf** %103, align 8, !dbg !1269, !tbaa !611
  %105 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %104) #9, !dbg !1270
  %106 = load i16, i16* %82, align 4, !dbg !1271, !tbaa !458
  %107 = add i16 %106, %105, !dbg !1271
  store i16 %107, i16* %82, align 4, !dbg !1271, !tbaa !458
  %108 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 0, !dbg !1272
  %109 = bitcast %struct.tcp_seg* %7 to i64*, !dbg !1272
  %110 = load i64, i64* %109, align 8, !dbg !1272, !tbaa !527
  %111 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 0, !dbg !1273
  %112 = bitcast %struct.tcp_seg* %77 to i64*, !dbg !1274
  store i64 %110, i64* %112, align 8, !dbg !1274, !tbaa !527
  store %struct.tcp_seg* %77, %struct.tcp_seg** %108, align 8, !dbg !1275, !tbaa !527
  %113 = load %struct.tcp_seg*, %struct.tcp_seg** %111, align 8, !dbg !1276, !tbaa !527
  %114 = icmp eq %struct.tcp_seg* %113, null, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %114, label %115, label %125, !dbg !1279

; <label>:115:                                    ; preds = %79
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1280
  store i16 0, i16* %116, align 2, !dbg !1282, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  br label %125, !dbg !1283

; <label>:117:                                    ; preds = %22
  %118 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1284, !tbaa !471
  %119 = add i16 %118, 1, !dbg !1284
  store i16 %119, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1284, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  br label %124

; <label>:120:                                    ; preds = %69, %35
  %121 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1284, !tbaa !471
  %122 = add i16 %121, 1, !dbg !1284
  store i16 %122, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1284, !tbaa !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1287
  %123 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %33) #9, !dbg !1288
  br label %124, !dbg !1291

; <label>:124:                                    ; preds = %117, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  br label %125, !dbg !1293

; <label>:125:                                    ; preds = %79, %115, %13, %5, %124
  %126 = phi i8 [ -1, %124 ], [ -1, %5 ], [ 0, %13 ], [ 0, %115 ], [ 0, %79 ], !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  ret i8 %126, !dbg !1296
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_fin(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1297 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %2, label %3, label %4, !dbg !1309

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1310
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1313
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1313
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1317
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1317, !tbaa !491
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br i1 %7, label %38, label %8, !dbg !1319

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !1323
  %10 = load %struct.tcp_seg*, %struct.tcp_seg** %9, align 8, !dbg !1323, !tbaa !527
  %11 = icmp eq %struct.tcp_seg* %10, null, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %11, label %17, label %12, !dbg !1326

; <label>:12:                                     ; preds = %8, %12
  %13 = phi %struct.tcp_seg* [ %15, %12 ], [ %10, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %13, i64 0, i32 0, !dbg !1323
  %15 = load %struct.tcp_seg*, %struct.tcp_seg** %14, align 8, !dbg !1323, !tbaa !527
  %16 = icmp eq %struct.tcp_seg* %15, null, !dbg !1325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  br i1 %16, label %17, label %12, !dbg !1326, !llvm.loop !1328

; <label>:17:                                     ; preds = %12, %8
  %18 = phi %struct.tcp_seg* [ %6, %8 ], [ %13, %12 ], !dbg !1330
  %19 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %18, i64 0, i32 4, !dbg !1331
  %20 = load %struct.tcp_hdr*, %struct.tcp_hdr** %19, align 8, !dbg !1331, !tbaa !886
  %21 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %20, i64 0, i32 4, !dbg !1331
  %22 = load i16, i16* %21, align 1, !dbg !1331, !tbaa !894
  %23 = tail call zeroext i16 @lwip_htons(i16 zeroext %22) #9, !dbg !1331
  %24 = and i16 %23, 7, !dbg !1333
  %25 = icmp eq i16 %24, 0, !dbg !1334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1335
  br i1 %25, label %26, label %37, !dbg !1335

; <label>:26:                                     ; preds = %17
  %27 = load %struct.tcp_hdr*, %struct.tcp_hdr** %19, align 8, !dbg !1336, !tbaa !886
  %28 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %27, i64 0, i32 4, !dbg !1336
  %29 = load i16, i16* %28, align 1, !dbg !1336, !tbaa !894
  %30 = tail call zeroext i16 @lwip_htons(i16 zeroext 1) #9, !dbg !1336
  %31 = or i16 %30, %29, !dbg !1336
  %32 = load %struct.tcp_hdr*, %struct.tcp_hdr** %19, align 8, !dbg !1336, !tbaa !886
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %32, i64 0, i32 4, !dbg !1336
  store i16 %31, i16* %33, align 1, !dbg !1336, !tbaa !894
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1338
  %35 = load i16, i16* %34, align 2, !dbg !1338, !tbaa !511
  %36 = or i16 %35, 32, !dbg !1338
  store i16 %36, i16* %34, align 2, !dbg !1338, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %40

; <label>:37:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38

; <label>:38:                                     ; preds = %37, %4
  %39 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #7, !dbg !1342
  br label %40, !dbg !1343

; <label>:40:                                     ; preds = %26, %38
  %41 = phi i8 [ %39, %38 ], [ 0, %26 ], !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  ret i8 %41, !dbg !1345
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_enqueue_flags(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !1346 {
  %3 = zext i8 %1 to i32, !dbg !1363
  %4 = and i32 %3, 3, !dbg !1363
  %5 = icmp eq i32 %4, 0, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br i1 %5, label %6, label %7, !dbg !1366

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1367
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1370
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1370
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1377
  br i1 %8, label %9, label %10, !dbg !1377

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1378
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1381
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1381
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = and i32 %3, 2, !dbg !1385
  %12 = icmp ne i32 %11, 0, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %12, label %13, label %23, !dbg !1387

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1388
  %15 = load i32, i32* %14, align 8, !dbg !1388, !tbaa !443
  %16 = icmp eq i32 %15, 3, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1392
  br i1 %16, label %17, label %22, !dbg !1392

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1393
  %19 = load i16, i16* %18, align 2, !dbg !1393, !tbaa !511
  %20 = and i16 %19, 256, !dbg !1394
  %21 = icmp eq i16 %20, 0, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br i1 %21, label %23, label %22, !dbg !1395

; <label>:22:                                     ; preds = %17, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  br label %23, !dbg !1396

; <label>:23:                                     ; preds = %17, %22, %10
  %24 = phi i8 [ 9, %22 ], [ 1, %17 ], [ 0, %10 ], !dbg !1398
  %25 = shl nuw nsw i8 %24, 2, !dbg !1399
  %26 = and i8 %25, 4, !dbg !1399
  %27 = lshr i8 %24, 1, !dbg !1399
  %28 = add nuw nsw i8 %26, %27, !dbg !1399
  %29 = zext i8 %28 to i16, !dbg !1400
  %30 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %29, i32 640) #9, !dbg !1402
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  br i1 %31, label %32, label %38, !dbg !1405

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1406
  %34 = load i16, i16* %33, align 2, !dbg !1406, !tbaa !511
  %35 = or i16 %34, 128, !dbg !1406
  store i16 %35, i16* %33, align 2, !dbg !1406, !tbaa !511
  %36 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1409, !tbaa !471
  %37 = add i16 %36, 1, !dbg !1409
  store i16 %37, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1409, !tbaa !471
  br label %110, !dbg !1410

; <label>:38:                                     ; preds = %23
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i64 0, i32 3, !dbg !1411
  %40 = load i16, i16* %39, align 2, !dbg !1411, !tbaa !630
  %41 = zext i16 %40 to i32, !dbg !1411
  %42 = zext i8 %28 to i32, !dbg !1411
  %43 = icmp ult i32 %41, %42, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %43, label %44, label %45, !dbg !1414

; <label>:44:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1415
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1418
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1418
  unreachable

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !1422
  %47 = load i32, i32* %46, align 4, !dbg !1422, !tbaa !752
  %48 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %30, i8 zeroext %1, i32 %47, i8 zeroext %24) #7, !dbg !1424
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %49, label %50, label %56, !dbg !1427

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1428
  %52 = load i16, i16* %51, align 2, !dbg !1428, !tbaa !511
  %53 = or i16 %52, 128, !dbg !1428
  store i16 %53, i16* %51, align 2, !dbg !1428, !tbaa !511
  %54 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1431, !tbaa !471
  %55 = add i16 %54, 1, !dbg !1431
  store i16 %55, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1431, !tbaa !471
  br label %110, !dbg !1432

; <label>:56:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  %57 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 2, !dbg !1435
  %58 = load i16, i16* %57, align 8, !dbg !1435, !tbaa !540
  %59 = icmp eq i16 %58, 0, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br i1 %59, label %61, label %60, !dbg !1438

; <label>:60:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1439
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1442
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1442
  unreachable

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1446
  %63 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1446, !tbaa !491
  %64 = icmp eq %struct.tcp_seg* %63, null, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %64, label %76, label %65, !dbg !1448

; <label>:65:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  %66 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %63, i64 0, i32 0, !dbg !1452
  %67 = load %struct.tcp_seg*, %struct.tcp_seg** %66, align 8, !dbg !1452, !tbaa !527
  %68 = icmp eq %struct.tcp_seg* %67, null, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %68, label %76, label %69, !dbg !1455

; <label>:69:                                     ; preds = %65, %69
  %70 = phi %struct.tcp_seg* [ %72, %69 ], [ %67, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  %71 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %70, i64 0, i32 0, !dbg !1452
  %72 = load %struct.tcp_seg*, %struct.tcp_seg** %71, align 8, !dbg !1452, !tbaa !527
  %73 = icmp eq %struct.tcp_seg* %72, null, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %73, label %74, label %69, !dbg !1455, !llvm.loop !1457

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %70, i64 0, i32 0, !dbg !1452
  br label %76, !dbg !1459

; <label>:76:                                     ; preds = %65, %74, %61
  %77 = phi %struct.tcp_seg** [ %62, %61 ], [ %66, %65 ], [ %75, %74 ]
  store %struct.tcp_seg* %48, %struct.tcp_seg** %77, align 8, !dbg !1460, !tbaa !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1462
  store i16 0, i16* %78, align 2, !dbg !1463, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  %79 = and i32 %3, 1, !dbg !1466
  br i1 %12, label %85, label %80, !dbg !1464

; <label>:80:                                     ; preds = %76
  %81 = icmp eq i32 %79, 0, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1468
  br i1 %81, label %93, label %82, !dbg !1468

; <label>:82:                                     ; preds = %80
  %83 = load i32, i32* %46, align 4, !dbg !1469, !tbaa !752
  %84 = add i32 %83, 1, !dbg !1469
  store i32 %84, i32* %46, align 4, !dbg !1469, !tbaa !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br label %89, !dbg !1472

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* %46, align 4, !dbg !1469, !tbaa !752
  %87 = add i32 %86, 1, !dbg !1469
  store i32 %87, i32* %46, align 4, !dbg !1469, !tbaa !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %88 = icmp eq i32 %79, 0, !dbg !1473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br i1 %88, label %94, label %89, !dbg !1472

; <label>:89:                                     ; preds = %82, %85
  %90 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1475
  %91 = load i16, i16* %90, align 2, !dbg !1475, !tbaa !511
  %92 = or i16 %91, 32, !dbg !1475
  store i16 %92, i16* %90, align 2, !dbg !1475, !tbaa !511
  br label %93, !dbg !1478

; <label>:93:                                     ; preds = %80, %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br label %94, !dbg !1480

; <label>:94:                                     ; preds = %93, %85
  %95 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 1, !dbg !1480
  %96 = load %struct.pbuf*, %struct.pbuf** %95, align 8, !dbg !1480, !tbaa !611
  %97 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %96) #9, !dbg !1481
  %98 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1482
  %99 = load i16, i16* %98, align 4, !dbg !1483, !tbaa !458
  %100 = add i16 %99, %97, !dbg !1483
  store i16 %100, i16* %98, align 4, !dbg !1483, !tbaa !458
  %101 = icmp eq i16 %100, 0, !dbg !1484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  br i1 %101, label %110, label %102, !dbg !1486

; <label>:102:                                    ; preds = %94
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1487
  %104 = load %struct.tcp_seg*, %struct.tcp_seg** %103, align 8, !dbg !1487, !tbaa !484
  %105 = icmp eq %struct.tcp_seg* %104, null, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  br i1 %105, label %106, label %110, !dbg !1487

; <label>:106:                                    ; preds = %102
  %107 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1487, !tbaa !491
  %108 = icmp eq %struct.tcp_seg* %107, null, !dbg !1487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1491
  br i1 %108, label %109, label %110, !dbg !1491

; <label>:109:                                    ; preds = %106
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1492
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1495
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1495
  unreachable

; <label>:110:                                    ; preds = %94, %102, %106, %50, %32
  %111 = phi i8 [ -1, %32 ], [ -1, %50 ], [ 0, %106 ], [ 0, %102 ], [ 0, %94 ], !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  ret i8 %111, !dbg !1500
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1501 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br i1 %2, label %3, label %4, !dbg !1596

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1597
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1600
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1600
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1604
  %6 = load i32, i32* %5, align 8, !dbg !1604, !tbaa !443
  %7 = icmp eq i32 %6, 1, !dbg !1604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1607
  br i1 %7, label %8, label %9, !dbg !1607

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1608
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1611
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1611
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1615, !tbaa !861
  %11 = icmp eq %struct.tcp_pcb* %10, %0, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br i1 %11, label %483, label %12, !dbg !1618

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !1619
  %14 = load i32, i32* %13, align 8, !dbg !1619, !tbaa !1620
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !1619
  %16 = load i32, i32* %15, align 4, !dbg !1619, !tbaa !1621
  %17 = icmp ult i32 %14, %16, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  %18 = select i1 %17, i32 %14, i32 %16, !dbg !1619
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1623
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1623, !tbaa !491
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !1625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  br i1 %21, label %22, label %29, !dbg !1627

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1628
  %24 = load i16, i16* %23, align 2, !dbg !1628, !tbaa !511
  %25 = and i16 %24, 2, !dbg !1631
  %26 = icmp eq i16 %25, 0, !dbg !1631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  br i1 %26, label %479, label %27, !dbg !1632

; <label>:27:                                     ; preds = %22
  %28 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1633
  br label %483, !dbg !1635

; <label>:29:                                     ; preds = %12
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1636
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !1651
  %33 = load i8, i8* %32, align 8, !dbg !1651, !tbaa !1652
  %34 = icmp eq i8 %33, 0, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  br i1 %34, label %37, label %35, !dbg !1654

; <label>:35:                                     ; preds = %29
  %36 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %33) #9, !dbg !1655
  br label %50, !dbg !1657

; <label>:37:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1658
  %39 = load i8, i8* %38, align 4, !dbg !1658, !tbaa !1660
  %40 = icmp eq i8 %39, 6, !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br i1 %40, label %41, label %45, !dbg !1658

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1658
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1658
  %44 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %42, %struct.ip6_addr* nonnull %43) #9, !dbg !1658
  br label %48, !dbg !1658

; <label>:45:                                     ; preds = %37
  %46 = bitcast %struct.ip_addr* %31 to %struct.ip4_addr*, !dbg !1658
  %47 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %46) #9, !dbg !1658
  br label %48, !dbg !1658

; <label>:48:                                     ; preds = %45, %41
  %49 = phi %struct.netif* [ %44, %41 ], [ %47, %45 ], !dbg !1658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1658
  br label %50, !dbg !1661

; <label>:50:                                     ; preds = %35, %48
  %51 = phi %struct.netif* [ %36, %35 ], [ %49, %48 ], !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1664
  %52 = icmp eq %struct.netif* %51, null, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %52, label %485, label %53, !dbg !1668

; <label>:53:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  %54 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1669
  %55 = load i8, i8* %54, align 4, !dbg !1669, !tbaa !1670
  %56 = icmp eq i8 %55, 6, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1669
  %58 = load i32, i32* %57, align 8, !dbg !1669, !tbaa !1672
  %59 = icmp eq i32 %58, 0, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %56, label %60, label %73, !dbg !1671

; <label>:60:                                     ; preds = %53
  br i1 %59, label %61, label %112, !dbg !1669

; <label>:61:                                     ; preds = %60
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1669
  %63 = load i32, i32* %62, align 4, !dbg !1669, !tbaa !1672
  %64 = icmp eq i32 %63, 0, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %64, label %65, label %112, !dbg !1669

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1669
  %67 = load i32, i32* %66, align 8, !dbg !1669, !tbaa !1672
  %68 = icmp eq i32 %67, 0, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %68, label %69, label %112, !dbg !1669

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1669
  %71 = load i32, i32* %70, align 4, !dbg !1669, !tbaa !1672
  %72 = icmp eq i32 %71, 0, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %72, label %74, label %112, !dbg !1669

; <label>:73:                                     ; preds = %53
  br i1 %59, label %74, label %112, !dbg !1671

; <label>:74:                                     ; preds = %73, %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1673
  %76 = load i8, i8* %75, align 4, !dbg !1673, !tbaa !1674
  %77 = icmp eq i8 %76, 6, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  br i1 %77, label %80, label %78, !dbg !1673

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 1, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br label %85, !dbg !1676

; <label>:80:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %81 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1673
  %82 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %51, %struct.ip6_addr* nonnull %81) #9, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1673
  %83 = icmp eq %struct.ip_addr* %82, null, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br i1 %83, label %84, label %85, !dbg !1676

; <label>:84:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  br label %483

; <label>:85:                                     ; preds = %78, %80
  %86 = phi %struct.ip_addr* [ %79, %78 ], [ %82, %80 ]
  %87 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 1, !dbg !1681
  %88 = load i8, i8* %87, align 4, !dbg !1681, !tbaa !1660
  store i8 %88, i8* %54, align 4, !dbg !1681, !tbaa !1670
  %89 = load i8, i8* %87, align 4, !dbg !1684, !tbaa !1660
  %90 = icmp eq i8 %89, 6, !dbg !1684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1687
  %92 = load i32, i32* %91, align 4, !dbg !1687, !tbaa !1672
  store i32 %92, i32* %57, align 8, !dbg !1687, !tbaa !1672
  br i1 %90, label %93, label %105, !dbg !1686

; <label>:93:                                     ; preds = %85
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1687
  %95 = load i32, i32* %94, align 4, !dbg !1687, !tbaa !1672
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1687
  store i32 %95, i32* %96, align 4, !dbg !1687, !tbaa !1672
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1687
  %98 = load i32, i32* %97, align 4, !dbg !1687, !tbaa !1672
  %99 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1687
  store i32 %98, i32* %99, align 8, !dbg !1687, !tbaa !1672
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1687
  %101 = load i32, i32* %100, align 4, !dbg !1687, !tbaa !1672
  %102 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1687
  store i32 %101, i32* %102, align 4, !dbg !1687, !tbaa !1672
  %103 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %86, i64 0, i32 0, i32 0, i32 1, !dbg !1687
  %104 = load i8, i8* %103, align 4, !dbg !1687, !tbaa !1672
  br label %109, !dbg !1690

; <label>:105:                                    ; preds = %85
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1691
  store i32 0, i32* %106, align 4, !dbg !1691, !tbaa !1672
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1691
  store i32 0, i32* %107, align 8, !dbg !1691, !tbaa !1672
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1691
  store i32 0, i32* %108, align 4, !dbg !1691, !tbaa !1672
  br label %109

; <label>:109:                                    ; preds = %105, %93
  %110 = phi i8 [ 0, %105 ], [ %104, %93 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1691
  store i8 %110, i8* %111, align 8, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %112

; <label>:112:                                    ; preds = %109, %73, %69, %65, %61, %60
  %113 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 4, !dbg !1695
  %114 = load %struct.tcp_hdr*, %struct.tcp_hdr** %113, align 8, !dbg !1695, !tbaa !886
  %115 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %114, i64 0, i32 2, !dbg !1695
  %116 = load i32, i32* %115, align 1, !dbg !1695, !tbaa !1136
  %117 = tail call i32 @lwip_htonl(i32 %116) #9, !dbg !1695
  %118 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !1697
  %119 = load i32, i32* %118, align 8, !dbg !1697, !tbaa !1698
  %120 = sub i32 %117, %119, !dbg !1699
  %121 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 2, !dbg !1700
  %122 = load i16, i16* %121, align 8, !dbg !1700, !tbaa !540
  %123 = zext i16 %122 to i32, !dbg !1701
  %124 = add i32 %120, %123, !dbg !1702
  %125 = icmp ugt i32 %124, %18, !dbg !1703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1704
  br i1 %125, label %126, label %147, !dbg !1704

; <label>:126:                                    ; preds = %112
  %127 = load i32, i32* %13, align 8, !dbg !1705, !tbaa !1620
  %128 = icmp eq i32 %18, %127, !dbg !1708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  br i1 %128, label %129, label %140, !dbg !1709

; <label>:129:                                    ; preds = %126
  %130 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1710
  %131 = load %struct.tcp_seg*, %struct.tcp_seg** %130, align 8, !dbg !1710, !tbaa !484
  %132 = icmp eq %struct.tcp_seg* %131, null, !dbg !1711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  br i1 %132, label %133, label %140, !dbg !1712

; <label>:133:                                    ; preds = %129
  %134 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1713
  %135 = load i8, i8* %134, align 1, !dbg !1713, !tbaa !1714
  %136 = icmp eq i8 %135, 0, !dbg !1715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1716
  br i1 %136, label %137, label %140, !dbg !1716

; <label>:137:                                    ; preds = %133
  %138 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 55, !dbg !1717
  store i8 0, i8* %138, align 4, !dbg !1719, !tbaa !1720
  store i8 1, i8* %134, align 1, !dbg !1721, !tbaa !1714
  %139 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !1722
  store i8 0, i8* %139, align 2, !dbg !1723, !tbaa !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  br label %140, !dbg !1725

; <label>:140:                                    ; preds = %137, %133, %129, %126
  %141 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1726
  %142 = load i16, i16* %141, align 2, !dbg !1726, !tbaa !511
  %143 = and i16 %142, 2, !dbg !1728
  %144 = icmp eq i16 %143, 0, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  br i1 %144, label %479, label %145, !dbg !1729

; <label>:145:                                    ; preds = %140
  %146 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1730
  br label %483, !dbg !1732

; <label>:147:                                    ; preds = %112
  %148 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1733
  store i8 0, i8* %148, align 1, !dbg !1734, !tbaa !1714
  %149 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1735
  %150 = load %struct.tcp_seg*, %struct.tcp_seg** %149, align 8, !dbg !1735, !tbaa !484
  %151 = icmp eq %struct.tcp_seg* %150, null, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  br i1 %151, label %161, label %152, !dbg !1739

; <label>:152:                                    ; preds = %147
  %153 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %150, i64 0, i32 0, !dbg !1740
  %154 = load %struct.tcp_seg*, %struct.tcp_seg** %153, align 8, !dbg !1740, !tbaa !527
  %155 = icmp eq %struct.tcp_seg* %154, null, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %155, label %161, label %156, !dbg !1745

; <label>:156:                                    ; preds = %152, %156
  %157 = phi %struct.tcp_seg* [ %159, %156 ], [ %154, %152 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1746
  %158 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %157, i64 0, i32 0, !dbg !1740
  %159 = load %struct.tcp_seg*, %struct.tcp_seg** %158, align 8, !dbg !1740, !tbaa !527
  %160 = icmp eq %struct.tcp_seg* %159, null, !dbg !1744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  br i1 %160, label %161, label %156, !dbg !1745, !llvm.loop !1747

; <label>:161:                                    ; preds = %156, %147, %152
  %162 = phi %struct.tcp_seg* [ null, %147 ], [ %150, %152 ], [ %157, %156 ], !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  %163 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17
  %165 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19
  %166 = bitcast %struct.tcp_seg** %19 to i64*
  %167 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40
  %168 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34
  %171 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41
  %172 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21
  %174 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23
  %175 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 24
  %176 = getelementptr inbounds %struct.netif, %struct.netif* %51, i64 0, i32 16
  %177 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1
  %178 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0
  %179 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0
  %180 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5
  %181 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4
  %182 = bitcast %struct.tcp_pcb* %0 to %struct.ip4_addr*
  %183 = bitcast %struct.ip_addr* %31 to %struct.ip4_addr*
  br label %184, !dbg !1751

; <label>:184:                                    ; preds = %161, %469
  %185 = phi %struct.tcp_seg* [ %20, %161 ], [ %471, %469 ]
  %186 = phi %struct.tcp_seg* [ %162, %161 ], [ %470, %469 ]
  %187 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %185, i64 0, i32 4, !dbg !1752
  %188 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1752, !tbaa !886
  %189 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %188, i64 0, i32 2, !dbg !1752
  %190 = load i32, i32* %189, align 1, !dbg !1752, !tbaa !1136
  %191 = tail call i32 @lwip_htonl(i32 %190) #9, !dbg !1752
  %192 = load i32, i32* %118, align 8, !dbg !1753, !tbaa !1698
  %193 = sub i32 %191, %192, !dbg !1754
  %194 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %185, i64 0, i32 2, !dbg !1755
  %195 = load i16, i16* %194, align 8, !dbg !1755, !tbaa !540
  %196 = zext i16 %195 to i32, !dbg !1756
  %197 = add i32 %193, %196, !dbg !1757
  %198 = icmp ugt i32 %197, %18, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  br i1 %198, label %474, label %199, !dbg !1750

; <label>:199:                                    ; preds = %184
  %200 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1759, !tbaa !886
  %201 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %200, i64 0, i32 4, !dbg !1759
  %202 = load i16, i16* %201, align 1, !dbg !1759, !tbaa !894
  %203 = tail call zeroext i16 @lwip_htons(i16 zeroext %202) #9, !dbg !1759
  %204 = and i16 %203, 4, !dbg !1759
  %205 = icmp eq i16 %204, 0, !dbg !1759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br i1 %205, label %207, label %206, !dbg !1762

; <label>:206:                                    ; preds = %199
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1763
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1766
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1766
  unreachable

; <label>:207:                                    ; preds = %199
  %208 = load %struct.tcp_seg*, %struct.tcp_seg** %149, align 8, !dbg !1770, !tbaa !484
  %209 = icmp eq %struct.tcp_seg* %208, null, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %209, label %241, label %210, !dbg !1770

; <label>:210:                                    ; preds = %207
  %211 = load i16, i16* %163, align 2, !dbg !1770, !tbaa !511
  %212 = and i16 %211, 68, !dbg !1770
  %213 = icmp eq i16 %212, 0, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %213, label %214, label %240, !dbg !1770

; <label>:214:                                    ; preds = %210
  %215 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1770, !tbaa !491
  %216 = icmp eq %struct.tcp_seg* %215, null, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %216, label %226, label %217, !dbg !1770

; <label>:217:                                    ; preds = %214
  %218 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %215, i64 0, i32 0, !dbg !1770
  %219 = load %struct.tcp_seg*, %struct.tcp_seg** %218, align 8, !dbg !1770, !tbaa !527
  %220 = icmp eq %struct.tcp_seg* %219, null, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %220, label %221, label %239, !dbg !1770

; <label>:221:                                    ; preds = %217
  %222 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %215, i64 0, i32 2, !dbg !1770
  %223 = load i16, i16* %222, align 8, !dbg !1770, !tbaa !540
  %224 = load i16, i16* %172, align 2, !dbg !1770, !tbaa !411
  %225 = icmp ult i16 %223, %224, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %225, label %226, label %238, !dbg !1770

; <label>:226:                                    ; preds = %221, %214
  %227 = load i32, i32* %167, align 8, !dbg !1770, !tbaa !462
  %228 = icmp ult i32 %227, 65535, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %228, label %229, label %232, !dbg !1770

; <label>:229:                                    ; preds = %226
  %230 = and i32 %227, 65535, !dbg !1770
  %231 = icmp eq i32 %230, 0, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br i1 %231, label %242, label %232, !dbg !1770

; <label>:232:                                    ; preds = %226, %229
  %233 = load i16, i16* %171, align 4, !dbg !1770, !tbaa !458
  %234 = icmp ugt i16 %233, 1435, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %234, label %243, label %235, !dbg !1772

; <label>:235:                                    ; preds = %232
  %236 = and i16 %211, 160, !dbg !1773
  %237 = icmp eq i16 %236, 0, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  br i1 %237, label %474, label %243, !dbg !1775

; <label>:238:                                    ; preds = %221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %243

; <label>:239:                                    ; preds = %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %243

; <label>:240:                                    ; preds = %210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %243

; <label>:241:                                    ; preds = %207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %243

; <label>:242:                                    ; preds = %229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br label %243

; <label>:243:                                    ; preds = %242, %241, %240, %239, %238, %232, %235
  %244 = load i32, i32* %5, align 8, !dbg !1776, !tbaa !443
  %245 = icmp eq i32 %244, 2, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %245, label %254, label %246, !dbg !1779

; <label>:246:                                    ; preds = %243
  %247 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1780, !tbaa !886
  %248 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %247, i64 0, i32 4, !dbg !1780
  %249 = load i16, i16* %248, align 1, !dbg !1780, !tbaa !894
  %250 = tail call zeroext i16 @lwip_htons(i16 zeroext 16) #9, !dbg !1780
  %251 = or i16 %250, %249, !dbg !1780
  %252 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1780, !tbaa !886
  %253 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %252, i64 0, i32 4, !dbg !1780
  store i16 %251, i16* %253, align 1, !dbg !1780, !tbaa !894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1782
  br label %254, !dbg !1782

; <label>:254:                                    ; preds = %246, %243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1816
  %255 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %185, i64 0, i32 1, !dbg !1818
  %256 = load %struct.pbuf*, %struct.pbuf** %255, align 8, !dbg !1818, !tbaa !611
  %257 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %256, i64 0, i32 6, !dbg !1820
  %258 = load i8, i8* %257, align 2, !dbg !1820, !tbaa !1821
  %259 = icmp eq i8 %258, 1, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br i1 %259, label %261, label %260, !dbg !1827

; <label>:260:                                    ; preds = %254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br label %383, !dbg !1832

; <label>:261:                                    ; preds = %254
  %262 = load i32, i32* %164, align 4, !dbg !1833, !tbaa !1834
  %263 = tail call i32 @lwip_htonl(i32 %262) #9, !dbg !1835
  %264 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1836, !tbaa !886
  %265 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %264, i64 0, i32 3, !dbg !1837
  store i32 %263, i32* %265, align 1, !dbg !1838, !tbaa !1839
  %266 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %185, i64 0, i32 3, !dbg !1840
  %267 = load i8, i8* %266, align 2, !dbg !1840, !tbaa !536
  %268 = and i8 %267, 8, !dbg !1842
  %269 = icmp eq i8 %268, 0, !dbg !1842
  %270 = load i32, i32* %165, align 4, !dbg !1843, !tbaa !1845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  br i1 %269, label %275, label %271, !dbg !1846

; <label>:271:                                    ; preds = %261
  %272 = icmp ult i32 %270, 65535, !dbg !1847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %272, label %273, label %282, !dbg !1847

; <label>:273:                                    ; preds = %271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  %274 = trunc i32 %270 to i16, !dbg !1847
  br label %282, !dbg !1847

; <label>:275:                                    ; preds = %261
  %276 = load i8, i8* %168, align 1, !dbg !1849, !tbaa !1850
  %277 = zext i8 %276 to i32, !dbg !1849
  %278 = lshr i32 %270, %277, !dbg !1849
  %279 = icmp ult i32 %278, 65535, !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  br i1 %279, label %280, label %282, !dbg !1849

; <label>:280:                                    ; preds = %275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  %281 = trunc i32 %278 to i16, !dbg !1849
  br label %282, !dbg !1849

; <label>:282:                                    ; preds = %275, %280, %271, %273
  %283 = phi i16 [ %274, %273 ], [ -1, %271 ], [ %281, %280 ], [ -1, %275 ]
  %284 = tail call zeroext i16 @lwip_htons(i16 zeroext %283) #9, !dbg !1851
  %285 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1851, !tbaa !886
  %286 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %285, i64 0, i32 5, !dbg !1851
  store i16 %284, i16* %286, align 1, !dbg !1851, !tbaa !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %287 = load i32, i32* %164, align 4, !dbg !1853, !tbaa !1834
  %288 = load i32, i32* %165, align 4, !dbg !1854, !tbaa !1845
  %289 = add i32 %288, %287, !dbg !1855
  store i32 %289, i32* %169, align 8, !dbg !1856, !tbaa !1857
  %290 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %285, i64 1, !dbg !1858
  %291 = bitcast %struct.tcp_hdr* %290 to i32*, !dbg !1859
  %292 = load i8, i8* %266, align 2, !dbg !1861, !tbaa !536
  %293 = and i8 %292, 1, !dbg !1862
  %294 = icmp eq i8 %293, 0, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br i1 %294, label %302, label %295, !dbg !1863

; <label>:295:                                    ; preds = %282
  %296 = tail call zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext 1460, %struct.netif* nonnull %51, %struct.ip_addr* nonnull %31) #9, !dbg !1864
  %297 = zext i16 %296 to i32, !dbg !1866
  %298 = or i32 %297, 33816576, !dbg !1866
  %299 = tail call i32 @lwip_htonl(i32 %298) #9, !dbg !1866
  store i32 %299, i32* %291, align 4, !dbg !1867, !tbaa !1868
  %300 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %285, i64 1, i32 2, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  %301 = load i8, i8* %266, align 2, !dbg !1871, !tbaa !536
  br label %302, !dbg !1870

; <label>:302:                                    ; preds = %295, %282
  %303 = phi i8 [ %301, %295 ], [ %292, %282 ], !dbg !1871
  %304 = phi i32* [ %300, %295 ], [ %291, %282 ], !dbg !1873
  %305 = and i8 %303, 8, !dbg !1874
  %306 = icmp eq i8 %305, 0, !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  br i1 %306, label %309, label %307, !dbg !1875

; <label>:307:                                    ; preds = %302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  store i32 67306241, i32* %304, align 4, !dbg !1886, !tbaa !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %308 = getelementptr inbounds i32, i32* %304, i64 1, !dbg !1888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br label %309, !dbg !1889

; <label>:309:                                    ; preds = %307, %302
  %310 = phi i32* [ %308, %307 ], [ %304, %302 ], !dbg !1890
  %311 = load i16, i16* %173, align 4, !dbg !1891, !tbaa !1893
  %312 = icmp slt i16 %311, 0, !dbg !1894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1895
  br i1 %312, label %313, label %314, !dbg !1895

; <label>:313:                                    ; preds = %309
  store i16 0, i16* %173, align 4, !dbg !1896, !tbaa !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1898
  br label %314, !dbg !1898

; <label>:314:                                    ; preds = %313, %309
  %315 = load i32, i32* %174, align 8, !dbg !1899, !tbaa !1901
  %316 = icmp eq i32 %315, 0, !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %316, label %317, label %324, !dbg !1903

; <label>:317:                                    ; preds = %314
  %318 = load i32, i32* @tcp_ticks, align 4, !dbg !1904, !tbaa !1868
  store i32 %318, i32* %174, align 8, !dbg !1906, !tbaa !1901
  %319 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1907, !tbaa !886
  %320 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %319, i64 0, i32 2, !dbg !1907
  %321 = load i32, i32* %320, align 1, !dbg !1907, !tbaa !1136
  %322 = tail call i32 @lwip_htonl(i32 %321) #9, !dbg !1907
  store i32 %322, i32* %175, align 4, !dbg !1908, !tbaa !1909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  %323 = load i8, i8* %266, align 2, !dbg !1911, !tbaa !536
  br label %324, !dbg !1910

; <label>:324:                                    ; preds = %317, %314
  %325 = phi i8 [ %323, %317 ], [ %303, %314 ], !dbg !1911
  %326 = bitcast %struct.tcp_hdr** %187 to i64*, !dbg !1914
  %327 = load i64, i64* %326, align 8, !dbg !1914, !tbaa !886
  %328 = load %struct.pbuf*, %struct.pbuf** %255, align 8, !dbg !1915, !tbaa !611
  %329 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %328, i64 0, i32 1, !dbg !1916
  %330 = bitcast i8** %329 to i64*, !dbg !1916
  %331 = load i64, i64* %330, align 8, !dbg !1916, !tbaa !604
  %332 = sub i64 %327, %331, !dbg !1917
  %333 = trunc i64 %332 to i16, !dbg !1918
  %334 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %328, i64 0, i32 3, !dbg !1919
  %335 = load i16, i16* %334, align 2, !dbg !1920, !tbaa !630
  %336 = sub i16 %335, %333, !dbg !1920
  store i16 %336, i16* %334, align 2, !dbg !1920, !tbaa !630
  %337 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %328, i64 0, i32 2, !dbg !1921
  %338 = load i16, i16* %337, align 8, !dbg !1922, !tbaa !788
  %339 = sub i16 %338, %333, !dbg !1922
  store i16 %339, i16* %337, align 8, !dbg !1922, !tbaa !788
  store i64 %327, i64* %330, align 8, !dbg !1923, !tbaa !604
  %340 = inttoptr i64 %327 to %struct.tcp_hdr*, !dbg !1924
  %341 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %340, i64 0, i32 6, !dbg !1925
  store i16 0, i16* %341, align 1, !dbg !1926, !tbaa !1927
  %342 = bitcast i32* %310 to i8*, !dbg !1911
  %343 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %340, i64 1, !dbg !1911
  %344 = bitcast %struct.tcp_hdr* %343 to i8*, !dbg !1911
  %345 = zext i8 %325 to i32, !dbg !1911
  %346 = shl nuw nsw i32 %345, 2, !dbg !1911
  %347 = and i32 %346, 4, !dbg !1911
  %348 = zext i32 %347 to i64, !dbg !1911
  %349 = getelementptr inbounds i8, i8* %344, i64 %348, !dbg !1911
  %350 = lshr i32 %345, 1, !dbg !1911
  %351 = and i32 %350, 4, !dbg !1911
  %352 = zext i32 %351 to i64, !dbg !1911
  %353 = getelementptr inbounds i8, i8* %349, i64 %352, !dbg !1911
  %354 = icmp eq i8* %353, %342, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  br i1 %354, label %356, label %355, !dbg !1928

; <label>:355:                                    ; preds = %324
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #9, !dbg !1929
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1932
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1932
  unreachable

; <label>:356:                                    ; preds = %324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1936
  %357 = load i16, i16* %176, align 8, !dbg !1936, !tbaa !1938
  %358 = and i16 %357, 4, !dbg !1936
  %359 = icmp eq i16 %358, 0, !dbg !1936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %359, label %365, label %360, !dbg !1940

; <label>:360:                                    ; preds = %356
  %361 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* %328, i8 zeroext 6, i16 zeroext %339, %struct.ip_addr* nonnull %30, %struct.ip_addr* nonnull %31) #9, !dbg !1941
  %362 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1943, !tbaa !886
  %363 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %362, i64 0, i32 6, !dbg !1944
  store i16 %361, i16* %363, align 1, !dbg !1945, !tbaa !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  %364 = load %struct.pbuf*, %struct.pbuf** %255, align 8, !dbg !1947, !tbaa !611
  br label %365, !dbg !1946

; <label>:365:                                    ; preds = %356, %360
  %366 = phi %struct.pbuf* [ %364, %360 ], [ %328, %356 ], !dbg !1947
  %367 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1948, !tbaa !1949
  %368 = add i16 %367, 1, !dbg !1948
  store i16 %368, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1948, !tbaa !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  %369 = load i8, i8* %177, align 4, !dbg !1947, !tbaa !1674
  %370 = icmp eq i8 %369, 6, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  %371 = load i8, i8* %180, align 1, !dbg !1947, !tbaa !1950
  %372 = load i8, i8* %181, align 2, !dbg !1947, !tbaa !1951
  br i1 %370, label %373, label %375, !dbg !1947

; <label>:373:                                    ; preds = %365
  %374 = tail call signext i8 @ip6_output_if(%struct.pbuf* %366, %struct.ip6_addr* nonnull %178, %struct.ip6_addr* nonnull %179, i8 zeroext %371, i8 zeroext %372, i8 zeroext 6, %struct.netif* nonnull %51) #9, !dbg !1947
  br label %377, !dbg !1947

; <label>:375:                                    ; preds = %365
  %376 = tail call signext i8 @ip4_output_if(%struct.pbuf* %366, %struct.ip4_addr* nonnull %182, %struct.ip4_addr* nonnull %183, i8 zeroext %371, i8 zeroext %372, i8 zeroext 6, %struct.netif* nonnull %51) #9, !dbg !1947
  br label %377, !dbg !1947

; <label>:377:                                    ; preds = %373, %375
  %378 = phi i8 [ %374, %373 ], [ %376, %375 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  %379 = icmp eq i8 %378, 0, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br i1 %379, label %383, label %380, !dbg !1832

; <label>:380:                                    ; preds = %377
  %381 = load i16, i16* %163, align 2, !dbg !1956, !tbaa !511
  %382 = or i16 %381, 128, !dbg !1956
  store i16 %382, i16* %163, align 2, !dbg !1956, !tbaa !511
  br label %483, !dbg !1959

; <label>:383:                                    ; preds = %260, %377
  %384 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %185, i64 0, i32 0, !dbg !1960
  %385 = bitcast %struct.tcp_seg* %185 to i64*, !dbg !1960
  %386 = load i64, i64* %385, align 8, !dbg !1960, !tbaa !527
  store i64 %386, i64* %166, align 8, !dbg !1961, !tbaa !491
  %387 = load i32, i32* %5, align 8, !dbg !1962, !tbaa !443
  %388 = icmp eq i32 %387, 2, !dbg !1964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1965
  br i1 %388, label %392, label %389, !dbg !1965

; <label>:389:                                    ; preds = %383
  %390 = load i16, i16* %163, align 2, !dbg !1966, !tbaa !511
  %391 = and i16 %390, -4, !dbg !1966
  store i16 %391, i16* %163, align 2, !dbg !1966, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1969
  br label %392, !dbg !1969

; <label>:392:                                    ; preds = %383, %389
  %393 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1970, !tbaa !886
  %394 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %393, i64 0, i32 2, !dbg !1970
  %395 = load i32, i32* %394, align 1, !dbg !1970, !tbaa !1136
  %396 = tail call i32 @lwip_htonl(i32 %395) #9, !dbg !1970
  %397 = load i16, i16* %194, align 8, !dbg !1971, !tbaa !540
  %398 = zext i16 %397 to i32, !dbg !1971
  %399 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1971, !tbaa !886
  %400 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %399, i64 0, i32 4, !dbg !1971
  %401 = load i16, i16* %400, align 1, !dbg !1971, !tbaa !894
  %402 = tail call zeroext i16 @lwip_htons(i16 zeroext %401) #9, !dbg !1971
  %403 = and i16 %402, 3, !dbg !1971
  %404 = icmp ne i16 %403, 0, !dbg !1971
  %405 = zext i1 %404 to i32, !dbg !1971
  %406 = add i32 %396, %398, !dbg !1971
  %407 = add i32 %406, %405, !dbg !1972
  %408 = load i32, i32* %170, align 8, !dbg !1974, !tbaa !1976
  %409 = sub i32 %408, %407, !dbg !1974
  %410 = icmp slt i32 %409, 0, !dbg !1974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br i1 %410, label %411, label %412, !dbg !1977

; <label>:411:                                    ; preds = %392
  store i32 %407, i32* %170, align 8, !dbg !1978, !tbaa !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1980
  br label %412, !dbg !1980

; <label>:412:                                    ; preds = %411, %392
  %413 = load i16, i16* %194, align 8, !dbg !1981, !tbaa !540
  %414 = zext i16 %413 to i32, !dbg !1981
  %415 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1981, !tbaa !886
  %416 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %415, i64 0, i32 4, !dbg !1981
  %417 = load i16, i16* %416, align 1, !dbg !1981, !tbaa !894
  %418 = tail call zeroext i16 @lwip_htons(i16 zeroext %417) #9, !dbg !1981
  %419 = and i16 %418, 3, !dbg !1981
  %420 = icmp ne i16 %419, 0, !dbg !1981
  %421 = sext i1 %420 to i32, !dbg !1982
  %422 = icmp eq i32 %414, %421, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  br i1 %422, label %468, label %423, !dbg !1983

; <label>:423:                                    ; preds = %412
  store %struct.tcp_seg* null, %struct.tcp_seg** %384, align 8, !dbg !1984, !tbaa !527
  %424 = load %struct.tcp_seg*, %struct.tcp_seg** %149, align 8, !dbg !1985, !tbaa !484
  %425 = icmp eq %struct.tcp_seg* %424, null, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  br i1 %425, label %426, label %427, !dbg !1987

; <label>:426:                                    ; preds = %423
  store %struct.tcp_seg* %185, %struct.tcp_seg** %149, align 8, !dbg !1988, !tbaa !484
  br label %469, !dbg !1990

; <label>:427:                                    ; preds = %423
  %428 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1991, !tbaa !886
  %429 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %428, i64 0, i32 2, !dbg !1991
  %430 = load i32, i32* %429, align 1, !dbg !1991, !tbaa !1136
  %431 = tail call i32 @lwip_htonl(i32 %430) #9, !dbg !1991
  %432 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %186, i64 0, i32 4, !dbg !1991
  %433 = load %struct.tcp_hdr*, %struct.tcp_hdr** %432, align 8, !dbg !1991, !tbaa !886
  %434 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %433, i64 0, i32 2, !dbg !1991
  %435 = load i32, i32* %434, align 1, !dbg !1991, !tbaa !1136
  %436 = tail call i32 @lwip_htonl(i32 %435) #9, !dbg !1991
  %437 = sub i32 %431, %436, !dbg !1991
  %438 = icmp slt i32 %437, 0, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  br i1 %438, label %439, label %466, !dbg !1992

; <label>:439:                                    ; preds = %427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  %440 = load %struct.tcp_seg*, %struct.tcp_seg** %149, align 8, !dbg !1995, !tbaa !861
  %441 = icmp eq %struct.tcp_seg* %440, null, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %441, label %442, label %444, !dbg !1996

; <label>:442:                                    ; preds = %459, %439
  %443 = phi %struct.tcp_seg** [ %149, %439 ], [ %460, %459 ], !dbg !1997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br label %463, !dbg !1994

; <label>:444:                                    ; preds = %439, %459
  %445 = phi %struct.tcp_seg* [ %461, %459 ], [ %440, %439 ]
  %446 = phi %struct.tcp_seg** [ %460, %459 ], [ %149, %439 ]
  %447 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %445, i64 0, i32 4, !dbg !1999
  %448 = load %struct.tcp_hdr*, %struct.tcp_hdr** %447, align 8, !dbg !1999, !tbaa !886
  %449 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %448, i64 0, i32 2, !dbg !1999
  %450 = load i32, i32* %449, align 1, !dbg !1999, !tbaa !1136
  %451 = tail call i32 @lwip_htonl(i32 %450) #9, !dbg !1999
  %452 = load %struct.tcp_hdr*, %struct.tcp_hdr** %187, align 8, !dbg !1999, !tbaa !886
  %453 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %452, i64 0, i32 2, !dbg !1999
  %454 = load i32, i32* %453, align 1, !dbg !1999, !tbaa !1136
  %455 = tail call i32 @lwip_htonl(i32 %454) #9, !dbg !1999
  %456 = sub i32 %451, %455, !dbg !1999
  %457 = icmp slt i32 %456, 0, !dbg !1999
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %458 = load %struct.tcp_seg*, %struct.tcp_seg** %446, align 8, !dbg !2000, !tbaa !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br i1 %457, label %459, label %463, !dbg !1994

; <label>:459:                                    ; preds = %444
  %460 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %458, i64 0, i32 0, !dbg !2001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  %461 = load %struct.tcp_seg*, %struct.tcp_seg** %460, align 8, !dbg !1995, !tbaa !861
  %462 = icmp eq %struct.tcp_seg* %461, null, !dbg !1995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1996
  br i1 %462, label %442, label %444, !dbg !1996, !llvm.loop !2002

; <label>:463:                                    ; preds = %444, %442
  %464 = phi %struct.tcp_seg** [ %443, %442 ], [ %446, %444 ]
  %465 = phi %struct.tcp_seg* [ null, %442 ], [ %458, %444 ]
  store %struct.tcp_seg* %465, %struct.tcp_seg** %384, align 8, !dbg !2004, !tbaa !527
  store %struct.tcp_seg* %185, %struct.tcp_seg** %464, align 8, !dbg !2005, !tbaa !861
  br label %469, !dbg !2006

; <label>:466:                                    ; preds = %427
  %467 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %186, i64 0, i32 0, !dbg !2007
  store %struct.tcp_seg* %185, %struct.tcp_seg** %467, align 8, !dbg !2009, !tbaa !527
  br label %469

; <label>:468:                                    ; preds = %412
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %185) #9, !dbg !2010
  br label %469

; <label>:469:                                    ; preds = %426, %466, %463, %468
  %470 = phi %struct.tcp_seg* [ %185, %426 ], [ %186, %463 ], [ %185, %466 ], [ %186, %468 ], !dbg !1663
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %471 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2012, !tbaa !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  %472 = icmp eq %struct.tcp_seg* %471, null, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %472, label %473, label %184, !dbg !1751, !llvm.loop !2014

; <label>:473:                                    ; preds = %469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br label %477, !dbg !2016

; <label>:474:                                    ; preds = %235, %184
  %475 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2017, !tbaa !491
  %476 = icmp eq %struct.tcp_seg* %475, null, !dbg !2019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2016
  br i1 %476, label %477, label %479, !dbg !2016

; <label>:477:                                    ; preds = %473, %474
  %478 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2020
  store i16 0, i16* %478, align 2, !dbg !2022, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  br label %479, !dbg !2023

; <label>:479:                                    ; preds = %22, %140, %477, %474
  %480 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2024
  %481 = load i16, i16* %480, align 2, !dbg !2024, !tbaa !511
  %482 = and i16 %481, -129, !dbg !2024
  store i16 %482, i16* %480, align 2, !dbg !2024, !tbaa !511
  br label %483, !dbg !2026

; <label>:483:                                    ; preds = %9, %27, %145, %380, %479, %84
  %484 = phi i8 [ -4, %84 ], [ %378, %380 ], [ %146, %145 ], [ 0, %479 ], [ %28, %27 ], [ 0, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %485, !dbg !2027

; <label>:485:                                    ; preds = %483, %50
  %486 = phi i8 [ -4, %50 ], [ %484, %483 ], !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  ret i8 %486, !dbg !2027
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_empty_ack(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2029 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2043
  br i1 %2, label %3, label %4, !dbg !2043

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !2044
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2047
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2047
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2052
  %6 = load i32, i32* %5, align 8, !dbg !2052, !tbaa !1976
  %7 = tail call i32 @lwip_htonl(i32 %6) #9, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2070
  %9 = load i32, i32* %8, align 4, !dbg !2070, !tbaa !1834
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2071
  %11 = load i16, i16* %10, align 2, !dbg !2071, !tbaa !1119
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2072
  %13 = load i16, i16* %12, align 8, !dbg !2072, !tbaa !1126
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2073
  %15 = load i32, i32* %14, align 4, !dbg !2073, !tbaa !1845
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2073
  %17 = load i8, i8* %16, align 1, !dbg !2073, !tbaa !1850
  %18 = zext i8 %17 to i32, !dbg !2073
  %19 = lshr i32 %15, %18, !dbg !2073
  %20 = icmp ult i32 %19, 65535, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  br i1 %20, label %21, label %23, !dbg !2073

; <label>:21:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  %22 = trunc i32 %19 to i16, !dbg !2073
  br label %23, !dbg !2073

; <label>:23:                                     ; preds = %21, %4
  %24 = phi i16 [ %22, %21 ], [ -1, %4 ]
  %25 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %9, i16 zeroext 0, i32 %7, i16 zeroext %11, i16 zeroext %13, i8 zeroext 16, i16 zeroext %24) #9, !dbg !2074
  %26 = icmp eq %struct.pbuf* %25, null, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2078
  br i1 %26, label %27, label %31, !dbg !2078

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2082
  %29 = load i16, i16* %28, align 2, !dbg !2082, !tbaa !511
  %30 = or i16 %29, 3, !dbg !2082
  store i16 %30, i16* %28, align 2, !dbg !2082, !tbaa !511
  br label %45, !dbg !2086

; <label>:31:                                     ; preds = %23
  %32 = load i32, i32* %8, align 4, !dbg !2087, !tbaa !1834
  %33 = load i32, i32* %14, align 4, !dbg !2089, !tbaa !1845
  %34 = add i32 %33, %32, !dbg !2090
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2091
  store i32 %34, i32* %35, align 8, !dbg !2092, !tbaa !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2117
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2118
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2119
  %38 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %25, %struct.ip_addr* nonnull %36, %struct.ip_addr* nonnull %37) #7, !dbg !2120
  %39 = icmp eq i8 %38, 0, !dbg !2122
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2124
  %41 = load i16, i16* %40, align 2, !dbg !2124, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  %42 = and i16 %41, -4, !dbg !2128
  %43 = or i16 %41, 3, !dbg !2129
  %44 = select i1 %39, i16 %42, i16 %43, !dbg !2127
  store i16 %44, i16* %40, align 2, !dbg !2132, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %45, !dbg !2133

; <label>:45:                                     ; preds = %31, %27
  %46 = phi i8 [ -2, %27 ], [ %38, %31 ], !dbg !2134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  ret i8 %46, !dbg !2136
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2137 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br i1 %2, label %3, label %4, !dbg !2145

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2146
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2149
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2149
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2153
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2153, !tbaa !484
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2157
  %8 = ptrtoint %struct.tcp_seg* %6 to i64, !dbg !2156
  br i1 %7, label %49, label %9, !dbg !2156

; <label>:9:                                      ; preds = %4, %19
  %10 = phi %struct.tcp_seg* [ %12, %19 ], [ %6, %4 ], !dbg !2159
  %11 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 0, !dbg !2162
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %11, align 8, !dbg !2162, !tbaa !527
  %13 = icmp eq %struct.tcp_seg* %12, null, !dbg !2163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 1, !dbg !2168
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2168, !tbaa !611
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2169
  %17 = load i8, i8* %16, align 2, !dbg !2169, !tbaa !1821
  %18 = icmp ne i8 %17, 1, !dbg !2170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2175
  br i1 %13, label %20, label %19, !dbg !2174

; <label>:19:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br i1 %18, label %49, label %9, !dbg !2177, !llvm.loop !2178

; <label>:20:                                     ; preds = %9
  br i1 %18, label %21, label %22, !dbg !2180

; <label>:21:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br label %49, !dbg !2181

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2183
  %24 = bitcast %struct.tcp_seg** %23 to i64*, !dbg !2183
  %25 = load i64, i64* %24, align 8, !dbg !2183, !tbaa !491
  %26 = bitcast %struct.tcp_seg* %10 to i64*, !dbg !2184
  store i64 %25, i64* %26, align 8, !dbg !2184, !tbaa !527
  store i64 %8, i64* %24, align 8, !dbg !2185, !tbaa !491
  store %struct.tcp_seg* null, %struct.tcp_seg** %5, align 8, !dbg !2186, !tbaa !484
  %27 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2187
  %28 = load i16, i16* %27, align 2, !dbg !2187, !tbaa !511
  %29 = or i16 %28, 2048, !dbg !2187
  store i16 %29, i16* %27, align 2, !dbg !2187, !tbaa !511
  %30 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 4, !dbg !2189
  %31 = load %struct.tcp_hdr*, %struct.tcp_hdr** %30, align 8, !dbg !2189, !tbaa !886
  %32 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %31, i64 0, i32 2, !dbg !2189
  %33 = load i32, i32* %32, align 1, !dbg !2189, !tbaa !1136
  %34 = tail call i32 @lwip_htonl(i32 %33) #9, !dbg !2189
  %35 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 2, !dbg !2190
  %36 = load i16, i16* %35, align 8, !dbg !2190, !tbaa !540
  %37 = zext i16 %36 to i32, !dbg !2190
  %38 = load %struct.tcp_hdr*, %struct.tcp_hdr** %30, align 8, !dbg !2190, !tbaa !886
  %39 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %38, i64 0, i32 4, !dbg !2190
  %40 = load i16, i16* %39, align 1, !dbg !2190, !tbaa !894
  %41 = tail call zeroext i16 @lwip_htons(i16 zeroext %40) #9, !dbg !2190
  %42 = and i16 %41, 3, !dbg !2190
  %43 = icmp ne i16 %42, 0, !dbg !2190
  %44 = zext i1 %43 to i32, !dbg !2190
  %45 = add i32 %34, %37, !dbg !2190
  %46 = add i32 %45, %44, !dbg !2191
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 33, !dbg !2192
  store i32 %46, i32* %47, align 4, !dbg !2193, !tbaa !2194
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2195
  store i32 0, i32* %48, align 8, !dbg !2196, !tbaa !1901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br label %49, !dbg !2197

; <label>:49:                                     ; preds = %19, %4, %22, %21
  %50 = phi i8 [ -6, %21 ], [ 0, %22 ], [ -6, %4 ], [ -6, %19 ], !dbg !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  ret i8 %50, !dbg !2199
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto_commit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2200 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2209
  br i1 %2, label %3, label %4, !dbg !2209

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2210
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2213
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2213
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2217
  %6 = load i8, i8* %5, align 2, !dbg !2217, !tbaa !2219
  %7 = icmp eq i8 %6, -1, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  br i1 %7, label %10, label %8, !dbg !2221

; <label>:8:                                      ; preds = %4
  %9 = add i8 %6, 1, !dbg !2222
  store i8 %9, i8* %5, align 2, !dbg !2222, !tbaa !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2224
  br label %10, !dbg !2224

; <label>:10:                                     ; preds = %4, %8
  %11 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  ret void, !dbg !2226
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2227 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2234
  br i1 %2, label %3, label %4, !dbg !2234

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !2235
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2238
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2238
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = tail call signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb* nonnull %0) #7, !dbg !2242
  %6 = icmp eq i8 %5, 0, !dbg !2244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  br i1 %6, label %7, label %15, !dbg !2245

; <label>:7:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2250
  %9 = load i8, i8* %8, align 2, !dbg !2250, !tbaa !2219
  %10 = icmp eq i8 %9, -1, !dbg !2251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2252
  br i1 %10, label %13, label %11, !dbg !2252

; <label>:11:                                     ; preds = %7
  %12 = add i8 %9, 1, !dbg !2253
  store i8 %12, i8* %8, align 2, !dbg !2253, !tbaa !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2254
  br label %13, !dbg !2254

; <label>:13:                                     ; preds = %7, %11
  %14 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #9, !dbg !2255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2257
  br label %15, !dbg !2257

; <label>:15:                                     ; preds = %13, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  ret void, !dbg !2258
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2259 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  br i1 %2, label %3, label %4, !dbg !2268

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2269
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2272
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2272
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2276
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2276, !tbaa !484
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br i1 %7, label %62, label %8, !dbg !2279

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2285
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !2285, !tbaa !611
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i64 0, i32 6, !dbg !2286
  %12 = load i8, i8* %11, align 2, !dbg !2286, !tbaa !1821
  %13 = icmp eq i8 %12, 1, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2291
  br i1 %13, label %14, label %60, !dbg !2291

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2292
  %16 = bitcast %struct.tcp_seg* %6 to i64*, !dbg !2292
  %17 = load i64, i64* %16, align 8, !dbg !2292, !tbaa !527
  %18 = bitcast %struct.tcp_seg** %5 to i64*, !dbg !2293
  store i64 %17, i64* %18, align 8, !dbg !2293, !tbaa !484
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2297, !tbaa !861
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  br i1 %21, label %24, label %22, !dbg !2298

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4
  br label %26, !dbg !2298

; <label>:24:                                     ; preds = %41, %14
  %25 = phi %struct.tcp_seg** [ %19, %14 ], [ %42, %41 ], !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br label %45, !dbg !2296

; <label>:26:                                     ; preds = %22, %41
  %27 = phi %struct.tcp_seg* [ %20, %22 ], [ %43, %41 ]
  %28 = phi %struct.tcp_seg** [ %19, %22 ], [ %42, %41 ]
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %27, i64 0, i32 4, !dbg !2301
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2301, !tbaa !886
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2301
  %32 = load i32, i32* %31, align 1, !dbg !2301, !tbaa !1136
  %33 = tail call i32 @lwip_htonl(i32 %32) #9, !dbg !2301
  %34 = load %struct.tcp_hdr*, %struct.tcp_hdr** %23, align 8, !dbg !2301, !tbaa !886
  %35 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %34, i64 0, i32 2, !dbg !2301
  %36 = load i32, i32* %35, align 1, !dbg !2301, !tbaa !1136
  %37 = tail call i32 @lwip_htonl(i32 %36) #9, !dbg !2301
  %38 = sub i32 %33, %37, !dbg !2301
  %39 = icmp slt i32 %38, 0, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = load %struct.tcp_seg*, %struct.tcp_seg** %28, align 8, !dbg !2302, !tbaa !861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br i1 %39, label %41, label %45, !dbg !2296

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %40, i64 0, i32 0, !dbg !2303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %43 = load %struct.tcp_seg*, %struct.tcp_seg** %42, align 8, !dbg !2297, !tbaa !861
  %44 = icmp eq %struct.tcp_seg* %43, null, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  br i1 %44, label %24, label %26, !dbg !2298, !llvm.loop !2304

; <label>:45:                                     ; preds = %26, %24
  %46 = phi %struct.tcp_seg** [ %25, %24 ], [ %28, %26 ]
  %47 = phi %struct.tcp_seg* [ null, %24 ], [ %40, %26 ]
  store %struct.tcp_seg* %47, %struct.tcp_seg** %15, align 8, !dbg !2306, !tbaa !527
  store %struct.tcp_seg* %6, %struct.tcp_seg** %46, align 8, !dbg !2307, !tbaa !861
  %48 = load %struct.tcp_seg*, %struct.tcp_seg** %15, align 8, !dbg !2308, !tbaa !527
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  br i1 %49, label %50, label %52, !dbg !2311

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2312
  store i16 0, i16* %51, align 2, !dbg !2314, !tbaa !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2315
  br label %52, !dbg !2315

; <label>:52:                                     ; preds = %50, %45
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2316
  %54 = load i8, i8* %53, align 2, !dbg !2316, !tbaa !2219
  %55 = icmp eq i8 %54, -1, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  br i1 %55, label %58, label %56, !dbg !2319

; <label>:56:                                     ; preds = %52
  %57 = add i8 %54, 1, !dbg !2320
  store i8 %57, i8* %53, align 2, !dbg !2320, !tbaa !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2322
  br label %58, !dbg !2322

; <label>:58:                                     ; preds = %52, %56
  %59 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2323
  store i32 0, i32* %59, align 8, !dbg !2324, !tbaa !1901
  br label %60, !dbg !2325

; <label>:60:                                     ; preds = %8, %58
  %61 = phi i8 [ 0, %58 ], [ -6, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  br label %62, !dbg !2328

; <label>:62:                                     ; preds = %60, %4
  %63 = phi i8 [ -6, %4 ], [ %61, %60 ], !dbg !2302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  ret i8 %63, !dbg !2328
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_fast(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2329 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br i1 %2, label %3, label %4, !dbg !2336

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !2337
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2340
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2340
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2344
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2344, !tbaa !484
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  br i1 %7, label %38, label %8, !dbg !2347

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2348
  %10 = load i16, i16* %9, align 2, !dbg !2348, !tbaa !511
  %11 = and i16 %10, 4, !dbg !2349
  %12 = icmp eq i16 %11, 0, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  br i1 %12, label %13, label %38, !dbg !2350

; <label>:13:                                     ; preds = %8
  %14 = tail call signext i8 @tcp_rexmit(%struct.tcp_pcb* nonnull %0) #7, !dbg !2351
  %15 = icmp eq i8 %14, 0, !dbg !2354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2355
  br i1 %15, label %16, label %38, !dbg !2355

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2356
  %18 = load i32, i32* %17, align 4, !dbg !2356, !tbaa !1621
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2356
  %20 = load i32, i32* %19, align 8, !dbg !2356, !tbaa !1620
  %21 = icmp ult i32 %18, %20, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  %22 = select i1 %21, i32 %18, i32 %20, !dbg !2356
  %23 = lshr i32 %22, 1, !dbg !2358
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 32, !dbg !2359
  store i32 %23, i32* %24, align 8, !dbg !2360, !tbaa !2361
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2362
  %26 = load i16, i16* %25, align 2, !dbg !2362, !tbaa !411
  %27 = zext i16 %26 to i32, !dbg !2364
  %28 = shl nuw nsw i32 %27, 1, !dbg !2365
  %29 = icmp ult i32 %23, %28, !dbg !2366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2367
  br i1 %29, label %30, label %31, !dbg !2367

; <label>:30:                                     ; preds = %16
  store i32 %28, i32* %24, align 8, !dbg !2368, !tbaa !2361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2370
  br label %31, !dbg !2370

; <label>:31:                                     ; preds = %30, %16
  %32 = phi i32 [ %28, %30 ], [ %23, %16 ], !dbg !2371
  %33 = mul nuw nsw i32 %27, 3, !dbg !2372
  %34 = add i32 %32, %33, !dbg !2373
  store i32 %34, i32* %17, align 4, !dbg !2374, !tbaa !1621
  %35 = load i16, i16* %9, align 2, !dbg !2375, !tbaa !511
  %36 = or i16 %35, 4, !dbg !2375
  store i16 %36, i16* %9, align 2, !dbg !2375, !tbaa !511
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2377
  store i16 0, i16* %37, align 4, !dbg !2378, !tbaa !1893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2379
  br label %38, !dbg !2379

; <label>:38:                                     ; preds = %8, %4, %13, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  ret void, !dbg !2380
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rst(%struct.tcp_pcb* readonly, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2381 {
  %8 = icmp eq %struct.ip_addr* %3, null, !dbg !2402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  br i1 %8, label %9, label %10, !dbg !2405

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !2406
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2409
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2409
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %4, null, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  br i1 %11, label %12, label %13, !dbg !2416

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !2417
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2420
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2420
  unreachable

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lwip_htonl(i32 %1) #9, !dbg !2426
  %15 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %2, i16 zeroext 0, i32 %14, i16 zeroext %5, i16 zeroext %6, i8 zeroext 20, i16 zeroext -193) #7, !dbg !2427
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2432
  br i1 %16, label %19, label %17, !dbg !2431

; <label>:17:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2442
  %18 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* %0, %struct.pbuf* nonnull %15, %struct.ip_addr* nonnull %3, %struct.ip_addr* nonnull %4) #7, !dbg !2443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  br label %19, !dbg !2444

; <label>:19:                                     ; preds = %13, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  ret void, !dbg !2444
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32, i16 zeroext, i32, i16 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) unnamed_addr #0 !dbg !2445 {
  %8 = add i16 %1, 20, !dbg !2467
  %9 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %8, i32 640) #9, !dbg !2468
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  br i1 %10, label %35, label %11, !dbg !2472

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 3, !dbg !2473
  %13 = load i16, i16* %12, align 2, !dbg !2473, !tbaa !630
  %14 = icmp ugt i16 %13, 19, !dbg !2473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  br i1 %14, label %16, label %15, !dbg !2477

; <label>:15:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !2478
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2481
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2481
  unreachable

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 1, !dbg !2485
  %18 = bitcast i8** %17 to %struct.tcp_hdr**, !dbg !2485
  %19 = load %struct.tcp_hdr*, %struct.tcp_hdr** %18, align 8, !dbg !2485, !tbaa !604
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #9, !dbg !2487
  %21 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 0, !dbg !2488
  store i16 %20, i16* %21, align 1, !dbg !2489, !tbaa !1124
  %22 = tail call zeroext i16 @lwip_htons(i16 zeroext %4) #9, !dbg !2490
  %23 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 1, !dbg !2491
  store i16 %22, i16* %23, align 1, !dbg !2492, !tbaa !1131
  %24 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 2, !dbg !2493
  store i32 %2, i32* %24, align 1, !dbg !2494, !tbaa !1136
  %25 = tail call i32 @lwip_htonl(i32 %0) #9, !dbg !2495
  %26 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 3, !dbg !2496
  store i32 %25, i32* %26, align 1, !dbg !2497, !tbaa !1839
  %27 = zext i8 %5 to i16, !dbg !2498
  %28 = or i16 %27, 20480, !dbg !2498
  %29 = tail call zeroext i16 @lwip_htons(i16 zeroext %28) #9, !dbg !2498
  %30 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 4, !dbg !2498
  store i16 %29, i16* %30, align 1, !dbg !2498, !tbaa !894
  %31 = tail call zeroext i16 @lwip_htons(i16 zeroext %6) #9, !dbg !2499
  %32 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 5, !dbg !2500
  store i16 %31, i16* %32, align 1, !dbg !2501, !tbaa !1852
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 6, !dbg !2502
  store i16 0, i16* %33, align 1, !dbg !2503, !tbaa !1927
  %34 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 7, !dbg !2504
  store i16 0, i16* %34, align 1, !dbg !2505, !tbaa !1140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  br label %35, !dbg !2506

; <label>:35:                                     ; preds = %7, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2507
  ret %struct.pbuf* %9, !dbg !2507
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, %struct.ip_addr*, %struct.ip_addr*) unnamed_addr #0 !dbg !2508 {
  %5 = icmp eq %struct.pbuf* %1, null, !dbg !2529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2532
  br i1 %5, label %6, label %7, !dbg !2532

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !2533
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2536
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2536
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2545
  br i1 %8, label %15, label %9, !dbg !2545

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2546
  %11 = load i8, i8* %10, align 8, !dbg !2546, !tbaa !1652
  %12 = icmp eq i8 %11, 0, !dbg !2547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2548
  br i1 %12, label %15, label %13, !dbg !2548

; <label>:13:                                     ; preds = %9
  %14 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %11) #9, !dbg !2549
  br label %30, !dbg !2550

; <label>:15:                                     ; preds = %9, %7
  %16 = icmp eq %struct.ip_addr* %3, null, !dbg !2551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br i1 %16, label %25, label %17, !dbg !2551

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2551
  %19 = load i8, i8* %18, align 4, !dbg !2551, !tbaa !1660
  %20 = icmp eq i8 %19, 6, !dbg !2551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br i1 %20, label %21, label %25, !dbg !2551

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2551
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2551
  %24 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %22, %struct.ip6_addr* nonnull %23) #9, !dbg !2551
  br label %28, !dbg !2551

; <label>:25:                                     ; preds = %17, %15
  %26 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2551
  %27 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %26) #9, !dbg !2551
  br label %28, !dbg !2551

; <label>:28:                                     ; preds = %25, %21
  %29 = phi %struct.netif* [ %24, %21 ], [ %27, %25 ], !dbg !2551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br label %30, !dbg !2552

; <label>:30:                                     ; preds = %13, %28
  %31 = phi %struct.netif* [ %14, %13 ], [ %29, %28 ], !dbg !2553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  %32 = icmp eq %struct.netif* %31, null, !dbg !2557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  br i1 %32, label %72, label %33, !dbg !2558

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %31, i64 0, i32 16, !dbg !2560
  %35 = load i16, i16* %34, align 8, !dbg !2560, !tbaa !1938
  %36 = and i16 %35, 4, !dbg !2560
  %37 = icmp eq i16 %36, 0, !dbg !2560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  br i1 %37, label %46, label %38, !dbg !2561

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 1, !dbg !2562
  %40 = bitcast i8** %39 to %struct.tcp_hdr**, !dbg !2562
  %41 = load %struct.tcp_hdr*, %struct.tcp_hdr** %40, align 8, !dbg !2562, !tbaa !604
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2564
  %43 = load i16, i16* %42, align 8, !dbg !2564, !tbaa !788
  %44 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %1, i8 zeroext 6, i16 zeroext %43, %struct.ip_addr* %2, %struct.ip_addr* %3) #9, !dbg !2565
  %45 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %41, i64 0, i32 6, !dbg !2566
  store i16 %44, i16* %45, align 1, !dbg !2567, !tbaa !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  br label %46, !dbg !2568

; <label>:46:                                     ; preds = %33, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2569
  br i1 %8, label %52, label %47, !dbg !2569

; <label>:47:                                     ; preds = %46
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2570
  %49 = load i8, i8* %48, align 1, !dbg !2570, !tbaa !1950
  %50 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2574
  %51 = load i8, i8* %50, align 2, !dbg !2574, !tbaa !1951
  br label %52, !dbg !2576

; <label>:52:                                     ; preds = %46, %47
  %53 = phi i8 [ %49, %47 ], [ -1, %46 ], !dbg !2577
  %54 = phi i8 [ %51, %47 ], [ 0, %46 ], !dbg !2577
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %55 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2579, !tbaa !1949
  %56 = add i16 %55, 1, !dbg !2579
  store i16 %56, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2579, !tbaa !1949
  %57 = icmp eq %struct.ip_addr* %3, null, !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  br i1 %57, label %66, label %58, !dbg !2580

; <label>:58:                                     ; preds = %52
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2580
  %60 = load i8, i8* %59, align 4, !dbg !2580, !tbaa !1660
  %61 = icmp eq i8 %60, 6, !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  br i1 %61, label %62, label %66, !dbg !2580

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2580
  %64 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2580
  %65 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %1, %struct.ip6_addr* %63, %struct.ip6_addr* nonnull %64, i8 zeroext %53, i8 zeroext %54, i8 zeroext 6, %struct.netif* nonnull %31) #9, !dbg !2580
  br label %70, !dbg !2580

; <label>:66:                                     ; preds = %52, %58
  %67 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !2580
  %68 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2580
  %69 = tail call signext i8 @ip4_output_if(%struct.pbuf* nonnull %1, %struct.ip4_addr* %67, %struct.ip4_addr* %68, i8 zeroext %53, i8 zeroext %54, i8 zeroext 6, %struct.netif* nonnull %31) #9, !dbg !2580
  br label %70, !dbg !2580

; <label>:70:                                     ; preds = %66, %62
  %71 = phi i8 [ %65, %62 ], [ %69, %66 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2580
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %72

; <label>:72:                                     ; preds = %30, %70
  %73 = phi i8 [ %71, %70 ], [ -4, %30 ], !dbg !2582
  %74 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !2583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2584
  ret i8 %73, !dbg !2584
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_keepalive(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2585 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2596
  br i1 %2, label %3, label %4, !dbg !2596

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2597
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2600
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2600
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2604
  %6 = load i32, i32* %5, align 8, !dbg !2604, !tbaa !1976
  %7 = add i32 %6, -1, !dbg !2605
  %8 = tail call i32 @lwip_htonl(i32 %7) #9, !dbg !2606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2613
  %10 = load i32, i32* %9, align 4, !dbg !2613, !tbaa !1834
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2614
  %12 = load i16, i16* %11, align 2, !dbg !2614, !tbaa !1119
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2615
  %14 = load i16, i16* %13, align 8, !dbg !2615, !tbaa !1126
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2616
  %16 = load i32, i32* %15, align 4, !dbg !2616, !tbaa !1845
  %17 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2616
  %18 = load i8, i8* %17, align 1, !dbg !2616, !tbaa !1850
  %19 = zext i8 %18 to i32, !dbg !2616
  %20 = lshr i32 %16, %19, !dbg !2616
  %21 = icmp ult i32 %20, 65535, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  br i1 %21, label %22, label %24, !dbg !2616

; <label>:22:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  %23 = trunc i32 %20 to i16, !dbg !2616
  br label %24, !dbg !2616

; <label>:24:                                     ; preds = %22, %4
  %25 = phi i16 [ %23, %22 ], [ -1, %4 ]
  %26 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %10, i16 zeroext 0, i32 %8, i16 zeroext %12, i16 zeroext %14, i8 zeroext 16, i16 zeroext %25) #9, !dbg !2617
  %27 = icmp eq %struct.pbuf* %26, null, !dbg !2619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2620
  br i1 %27, label %28, label %29, !dbg !2620

; <label>:28:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  br label %37, !dbg !2624

; <label>:29:                                     ; preds = %24
  %30 = load i32, i32* %9, align 4, !dbg !2627, !tbaa !1834
  %31 = load i32, i32* %15, align 4, !dbg !2628, !tbaa !1845
  %32 = add i32 %31, %30, !dbg !2629
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2630
  store i32 %32, i32* %33, align 8, !dbg !2631, !tbaa !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2644
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2645
  %36 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %26, %struct.ip_addr* nonnull %34, %struct.ip_addr* nonnull %35) #7, !dbg !2646
  br label %37, !dbg !2648

; <label>:37:                                     ; preds = %29, %28
  %38 = phi i8 [ -1, %28 ], [ %36, %29 ], !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  ret i8 %38, !dbg !2651
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_zero_window_probe(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2652 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2671
  br i1 %2, label %3, label %4, !dbg !2671

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2672
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2675
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2675
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2679
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2679, !tbaa !491
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2683
  br i1 %7, label %92, label %8, !dbg !2683

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !2684
  %10 = load i8, i8* %9, align 2, !dbg !2684, !tbaa !1724
  %11 = icmp eq i8 %10, -1, !dbg !2686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2687
  br i1 %11, label %14, label %12, !dbg !2687

; <label>:12:                                     ; preds = %8
  %13 = add i8 %10, 1, !dbg !2688
  store i8 %13, i8* %9, align 2, !dbg !2688, !tbaa !1724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  br label %14, !dbg !2690

; <label>:14:                                     ; preds = %8, %12
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4, !dbg !2691
  %16 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2691, !tbaa !886
  %17 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %16, i64 0, i32 4, !dbg !2691
  %18 = load i16, i16* %17, align 1, !dbg !2691, !tbaa !894
  %19 = tail call zeroext i16 @lwip_htons(i16 zeroext %18) #9, !dbg !2691
  %20 = and i16 %19, 1, !dbg !2692
  %21 = icmp eq i16 %20, 0, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2694
  br i1 %21, label %26, label %22, !dbg !2694

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2695
  %24 = load i16, i16* %23, align 8, !dbg !2695, !tbaa !540
  %25 = icmp eq i16 %24, 0, !dbg !2696
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %26

; <label>:26:                                     ; preds = %22, %14
  %27 = phi i1 [ false, %14 ], [ %25, %22 ]
  %28 = xor i1 %27, true, !dbg !2697
  %29 = zext i1 %28 to i16, !dbg !2697
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2699, !tbaa !886
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2700
  %32 = load i32, i32* %31, align 1, !dbg !2700, !tbaa !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2706
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2707
  %34 = load i32, i32* %33, align 4, !dbg !2707, !tbaa !1834
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2708
  %36 = load i16, i16* %35, align 2, !dbg !2708, !tbaa !1119
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2709
  %38 = load i16, i16* %37, align 8, !dbg !2709, !tbaa !1126
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2710
  %40 = load i32, i32* %39, align 4, !dbg !2710, !tbaa !1845
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2710
  %42 = load i8, i8* %41, align 1, !dbg !2710, !tbaa !1850
  %43 = zext i8 %42 to i32, !dbg !2710
  %44 = lshr i32 %40, %43, !dbg !2710
  %45 = icmp ult i32 %44, 65535, !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  br i1 %45, label %46, label %48, !dbg !2710

; <label>:46:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2710
  %47 = trunc i32 %44 to i16, !dbg !2710
  br label %48, !dbg !2710

; <label>:48:                                     ; preds = %46, %26
  %49 = phi i16 [ %47, %46 ], [ -1, %26 ]
  %50 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %34, i16 zeroext %29, i32 %32, i16 zeroext %36, i16 zeroext %38, i8 zeroext 16, i16 zeroext %49) #9, !dbg !2711
  %51 = icmp eq %struct.pbuf* %50, null, !dbg !2713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2714
  br i1 %51, label %52, label %53, !dbg !2714

; <label>:52:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  br label %92, !dbg !2718

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %33, align 4, !dbg !2721, !tbaa !1834
  %55 = load i32, i32* %39, align 4, !dbg !2722, !tbaa !1845
  %56 = add i32 %55, %54, !dbg !2723
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2724
  store i32 %56, i32* %57, align 8, !dbg !2725, !tbaa !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2717
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %50, i64 0, i32 1, !dbg !2727
  %59 = load i8*, i8** %58, align 8, !dbg !2727, !tbaa !604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2728
  br i1 %27, label %60, label %67, !dbg !2728

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %59, i64 12, !dbg !2730
  %62 = bitcast i8* %61 to i16*, !dbg !2730
  %63 = load i16, i16* %62, align 1, !dbg !2730, !tbaa !894
  %64 = and i16 %63, -16129, !dbg !2730
  %65 = tail call zeroext i16 @lwip_htons(i16 zeroext 17) #9, !dbg !2730
  %66 = or i16 %64, %65, !dbg !2730
  store i16 %66, i16* %62, align 1, !dbg !2730, !tbaa !894
  br label %77, !dbg !2732

; <label>:67:                                     ; preds = %53
  %68 = getelementptr inbounds i8, i8* %59, i64 20, !dbg !2733
  %69 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2735
  %70 = load %struct.pbuf*, %struct.pbuf** %69, align 8, !dbg !2735, !tbaa !611
  %71 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %70, i64 0, i32 2, !dbg !2736
  %72 = load i16, i16* %71, align 8, !dbg !2736, !tbaa !788
  %73 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2737
  %74 = load i16, i16* %73, align 8, !dbg !2737, !tbaa !540
  %75 = sub i16 %72, %74, !dbg !2738
  %76 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %70, i8* nonnull %68, i16 zeroext 1, i16 zeroext %75) #9, !dbg !2739
  br label %77

; <label>:77:                                     ; preds = %67, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2740, !tbaa !886
  %79 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %78, i64 0, i32 2, !dbg !2740
  %80 = load i32, i32* %79, align 1, !dbg !2740, !tbaa !1136
  %81 = tail call i32 @lwip_htonl(i32 %80) #9, !dbg !2740
  %82 = add i32 %81, 1, !dbg !2741
  %83 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2743
  %84 = load i32, i32* %83, align 8, !dbg !2743, !tbaa !1976
  %85 = sub i32 %84, %82, !dbg !2743
  %86 = icmp slt i32 %85, 0, !dbg !2743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2745
  br i1 %86, label %87, label %88, !dbg !2745

; <label>:87:                                     ; preds = %77
  store i32 %82, i32* %83, align 8, !dbg !2746, !tbaa !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br label %88, !dbg !2748

; <label>:88:                                     ; preds = %77, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2760
  %90 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2761
  %91 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %50, %struct.ip_addr* nonnull %89, %struct.ip_addr* nonnull %90) #7, !dbg !2762
  br label %92, !dbg !2764

; <label>:92:                                     ; preds = %4, %88, %52
  %93 = phi i8 [ -1, %52 ], [ %91, %88 ], [ 0, %4 ], !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  ret i8 %93, !dbg !2768
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @ip_chksum_pseudo(%struct.pbuf*, i8 zeroext, i16 zeroext, %struct.ip_addr*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @ip4_output_if(%struct.pbuf*, %struct.ip4_addr*, %struct.ip4_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !216, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !201)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !101, globals: !195)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp_out.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !27, !34, !55, !63, !69, !74, !80}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_state", file: !13, line: 56, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpbase.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "CLOSED", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "LISTEN", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "SYN_SENT", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "SYN_RCVD", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "ESTABLISHED", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "FIN_WAIT_1", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "FIN_WAIT_2", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "CLOSE_WAIT", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "CLOSING", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "LAST_ACK", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "TIME_WAIT", value: 10, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !28, line: 68, baseType: !14, size: 32, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 53, baseType: !36, size: 32, elements: !37)
!35 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!38 = !DIEnumerator(name: "ERR_OK", value: 0)
!39 = !DIEnumerator(name: "ERR_MEM", value: -1)
!40 = !DIEnumerator(name: "ERR_BUF", value: -2)
!41 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!42 = !DIEnumerator(name: "ERR_RTE", value: -4)
!43 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!44 = !DIEnumerator(name: "ERR_VAL", value: -6)
!45 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!46 = !DIEnumerator(name: "ERR_USE", value: -8)
!47 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!48 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!49 = !DIEnumerator(name: "ERR_CONN", value: -11)
!50 = !DIEnumerator(name: "ERR_IF", value: -12)
!51 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!52 = !DIEnumerator(name: "ERR_RST", value: -14)
!53 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!54 = !DIEnumerator(name: "ERR_ARG", value: -16)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 89, baseType: !14, size: 32, elements: !57)
!56 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!57 = !{!58, !59, !60, !61, !62}
!58 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!59 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!60 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!61 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 145, baseType: !14, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!66 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!68 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !70, line: 156, baseType: !14, size: 32, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !75, line: 54, baseType: !14, size: 32, elements: !76)
!75 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 52, baseType: !14, size: 32, elements: !82)
!81 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!83 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!94 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!95 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!96 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!97 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!98 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!99 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!100 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!101 = !{!102, !103, !110, !114, !116, !134, !135, !137, !138, !142, !145, !170, !173, !185, !194}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !104, line: 127, baseType: !105)
!104 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !106, line: 36, baseType: !107)
!106 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !108, line: 57, baseType: !109)
!108 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !104, line: 125, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !106, line: 24, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !108, line: 43, baseType: !113)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_rom", file: !56, line: 229, size: 128, elements: !118)
!118 = !{!119, !131}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !56, line: 231, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !56, line: 186, size: 192, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !56, line: 188, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !121, file: !56, line: 191, baseType: !102, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !121, file: !56, line: 200, baseType: !103, size: 16, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !121, file: !56, line: 203, baseType: !103, size: 16, offset: 144)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !121, file: !56, line: 208, baseType: !110, size: 8, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !56, line: 211, baseType: !110, size: 8, offset: 168)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !121, file: !56, line: 218, baseType: !110, size: 8, offset: 176)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !121, file: !56, line: 221, baseType: !110, size: 8, offset: 184)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !117, file: !56, line: 234, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !136, line: 206, baseType: !103)
!136 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !104, line: 135, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !106, line: 82, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !108, line: 232, baseType: !141)
!141 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !104, line: 129, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !106, line: 48, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !108, line: 79, baseType: !14)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !75, line: 76, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !75, line: 69, size: 192, elements: !149)
!149 = !{!150, !169}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !148, file: !75, line: 73, baseType: !151, size: 160)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !148, file: !75, line: 70, size: 160, elements: !152)
!152 = !{!153, !163}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !151, file: !75, line: 71, baseType: !154, size: 160)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !155, line: 67, baseType: !156)
!155 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !155, line: 59, size: 160, elements: !157)
!157 = !{!158, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !156, file: !155, line: 60, baseType: !159, size: 128)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 4)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !156, file: !155, line: 62, baseType: !110, size: 8, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !151, file: !75, line: 72, baseType: !164, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !165, line: 57, baseType: !166)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !165, line: 51, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !166, file: !165, line: 52, baseType: !142, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !75, line: 75, baseType: !110, size: 8, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !104, line: 130, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !106, line: 44, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !108, line: 77, baseType: !36)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !175, line: 56, size: 160, elements: !176)
!175 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !174, file: !175, line: 57, baseType: !103, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !174, file: !175, line: 58, baseType: !103, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !174, file: !175, line: 59, baseType: !142, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !174, file: !175, line: 60, baseType: !142, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !174, file: !175, line: 61, baseType: !103, size: 16, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !174, file: !175, line: 62, baseType: !103, size: 16, offset: 112)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !174, file: !175, line: 63, baseType: !103, size: 16, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !174, file: !175, line: 64, baseType: !103, size: 16, offset: 144)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !187, line: 253, size: 256, elements: !188)
!187 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!188 = !{!189, !190, !191, !192, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !187, line: 254, baseType: !185, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !186, file: !187, line: 255, baseType: !120, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !186, file: !187, line: 256, baseType: !103, size: 16, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !186, file: !187, line: 266, baseType: !110, size: 8, offset: 144)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !186, file: !187, line: 273, baseType: !173, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!195 = !{!0, !196}
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 10)
!201 = !{!202, !203}
!202 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!203 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !205, line: 32, baseType: !206)
!205 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 192, elements: !214)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !208, file: !10, line: 196, baseType: !14, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !208, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !208, file: !10, line: 196, baseType: !102, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !208, file: !10, line: 196, baseType: !102, size: 64, offset: 128)
!214 = !{!215}
!215 = !DISubrange(count: 1)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 8)
!219 = !{i32 2, !"Dwarf Version", i32 4}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!223 = distinct !DISubprogram(name: "tcp_write", scope: !10, file: !10, line: 392, type: !224, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !336)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !231, !132, !103, !110}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !35, line: 96, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !104, line: 126, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !106, line: 20, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !108, line: 41, baseType: !230)
!230 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !136, line: 242, size: 2240, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !254, !255, !256, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !307, !312, !317, !319, !324, !329, !330, !331, !332, !333, !334, !335}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !232, file: !136, line: 244, baseType: !147, size: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !232, file: !136, line: 244, baseType: !147, size: 192, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !232, file: !136, line: 244, baseType: !110, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !232, file: !136, line: 244, baseType: !110, size: 8, offset: 392)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !232, file: !136, line: 244, baseType: !110, size: 8, offset: 400)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !232, file: !136, line: 244, baseType: !110, size: 8, offset: 408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !232, file: !136, line: 246, baseType: !231, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !232, file: !136, line: 246, baseType: !102, size: 64, offset: 512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !232, file: !136, line: 246, baseType: !12, size: 32, offset: 576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !232, file: !136, line: 246, baseType: !110, size: 8, offset: 608)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !232, file: !136, line: 246, baseType: !103, size: 16, offset: 624)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !232, file: !136, line: 249, baseType: !103, size: 16, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !232, file: !136, line: 251, baseType: !135, size: 16, offset: 656)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !232, file: !136, line: 278, baseType: !110, size: 8, offset: 672)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !232, file: !136, line: 278, baseType: !110, size: 8, offset: 680)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !232, file: !136, line: 279, baseType: !110, size: 8, offset: 688)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !232, file: !136, line: 280, baseType: !142, size: 32, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !232, file: !136, line: 283, baseType: !142, size: 32, offset: 736)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !232, file: !136, line: 284, baseType: !253, size: 32, offset: 768)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !13, line: 51, baseType: !142)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !232, file: !136, line: 285, baseType: !253, size: 32, offset: 800)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !232, file: !136, line: 286, baseType: !142, size: 32, offset: 832)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !232, file: !136, line: 295, baseType: !257, size: 16, offset: 864)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !104, line: 128, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !106, line: 32, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !108, line: 55, baseType: !260)
!260 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !232, file: !136, line: 297, baseType: !103, size: 16, offset: 880)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !232, file: !136, line: 300, baseType: !142, size: 32, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !232, file: !136, line: 301, baseType: !142, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !232, file: !136, line: 302, baseType: !257, size: 16, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !232, file: !136, line: 302, baseType: !257, size: 16, offset: 976)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !232, file: !136, line: 304, baseType: !257, size: 16, offset: 992)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !232, file: !136, line: 305, baseType: !110, size: 8, offset: 1008)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !232, file: !136, line: 308, baseType: !110, size: 8, offset: 1016)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !232, file: !136, line: 309, baseType: !142, size: 32, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !232, file: !136, line: 312, baseType: !253, size: 32, offset: 1056)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !232, file: !136, line: 313, baseType: !253, size: 32, offset: 1088)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !232, file: !136, line: 316, baseType: !142, size: 32, offset: 1120)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !232, file: !136, line: 319, baseType: !142, size: 32, offset: 1152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !232, file: !136, line: 320, baseType: !142, size: 32, offset: 1184)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !232, file: !136, line: 320, baseType: !142, size: 32, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !232, file: !136, line: 322, baseType: !142, size: 32, offset: 1248)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !232, file: !136, line: 323, baseType: !253, size: 32, offset: 1280)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !232, file: !136, line: 324, baseType: !253, size: 32, offset: 1312)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !232, file: !136, line: 326, baseType: !253, size: 32, offset: 1344)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !232, file: !136, line: 328, baseType: !103, size: 16, offset: 1376)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !232, file: !136, line: 332, baseType: !103, size: 16, offset: 1392)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !232, file: !136, line: 335, baseType: !253, size: 32, offset: 1408)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !232, file: !136, line: 338, baseType: !185, size: 64, offset: 1472)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !232, file: !136, line: 339, baseType: !185, size: 64, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !232, file: !136, line: 341, baseType: !185, size: 64, offset: 1600)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !232, file: !136, line: 344, baseType: !120, size: 64, offset: 1664)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !232, file: !136, line: 347, baseType: !288, size: 64, offset: 1728)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !136, line: 223, size: 704, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !289, file: !136, line: 225, baseType: !147, size: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !289, file: !136, line: 225, baseType: !147, size: 192, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !289, file: !136, line: 225, baseType: !110, size: 8, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !289, file: !136, line: 225, baseType: !110, size: 8, offset: 392)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !289, file: !136, line: 225, baseType: !110, size: 8, offset: 400)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !289, file: !136, line: 225, baseType: !110, size: 8, offset: 408)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !136, line: 227, baseType: !288, size: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !289, file: !136, line: 227, baseType: !102, size: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !136, line: 227, baseType: !12, size: 32, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !289, file: !136, line: 227, baseType: !110, size: 8, offset: 608)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !289, file: !136, line: 227, baseType: !103, size: 16, offset: 624)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !289, file: !136, line: 231, baseType: !303, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !136, line: 70, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!226, !102, !231, !226}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !232, file: !136, line: 352, baseType: !308, size: 64, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !136, line: 96, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!226, !102, !231, !103}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !232, file: !136, line: 354, baseType: !313, size: 64, offset: 1856)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !136, line: 82, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!226, !102, !231, !120, !226}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !232, file: !136, line: 356, baseType: !318, size: 64, offset: 1920)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !136, line: 134, baseType: !304)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !232, file: !136, line: 358, baseType: !320, size: 64, offset: 1984)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !136, line: 108, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!226, !102, !231}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !232, file: !136, line: 360, baseType: !325, size: 64, offset: 2048)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !136, line: 120, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !102, !226}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !232, file: !136, line: 369, baseType: !142, size: 32, offset: 2112)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !232, file: !136, line: 376, baseType: !110, size: 8, offset: 2144)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !232, file: !136, line: 378, baseType: !110, size: 8, offset: 2152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !232, file: !136, line: 380, baseType: !110, size: 8, offset: 2160)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !232, file: !136, line: 383, baseType: !110, size: 8, offset: 2168)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !232, file: !136, line: 386, baseType: !110, size: 8, offset: 2176)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !232, file: !136, line: 387, baseType: !110, size: 8, offset: 2184)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !358, !359, !362, !365, !367, !368, !369, !370, !373, !376}
!337 = !DILocalVariable(name: "pcb", arg: 1, scope: !223, file: !10, line: 392, type: !231)
!338 = !DILocalVariable(name: "arg", arg: 2, scope: !223, file: !10, line: 392, type: !132)
!339 = !DILocalVariable(name: "len", arg: 3, scope: !223, file: !10, line: 392, type: !103)
!340 = !DILocalVariable(name: "apiflags", arg: 4, scope: !223, file: !10, line: 392, type: !110)
!341 = !DILocalVariable(name: "concat_p", scope: !223, file: !10, line: 394, type: !120)
!342 = !DILocalVariable(name: "last_unsent", scope: !223, file: !10, line: 395, type: !185)
!343 = !DILocalVariable(name: "seg", scope: !223, file: !10, line: 395, type: !185)
!344 = !DILocalVariable(name: "prev_seg", scope: !223, file: !10, line: 395, type: !185)
!345 = !DILocalVariable(name: "queue", scope: !223, file: !10, line: 395, type: !185)
!346 = !DILocalVariable(name: "pos", scope: !223, file: !10, line: 396, type: !103)
!347 = !DILocalVariable(name: "queuelen", scope: !223, file: !10, line: 397, type: !103)
!348 = !DILocalVariable(name: "optlen", scope: !223, file: !10, line: 398, type: !110)
!349 = !DILocalVariable(name: "optflags", scope: !223, file: !10, line: 399, type: !110)
!350 = !DILocalVariable(name: "oversize", scope: !223, file: !10, line: 401, type: !103)
!351 = !DILocalVariable(name: "oversize_used", scope: !223, file: !10, line: 402, type: !103)
!352 = !DILocalVariable(name: "extendlen", scope: !223, file: !10, line: 407, type: !103)
!353 = !DILocalVariable(name: "err", scope: !223, file: !10, line: 413, type: !226)
!354 = !DILocalVariable(name: "mss_local", scope: !223, file: !10, line: 414, type: !103)
!355 = !DILocalVariable(name: "space", scope: !356, file: !10, line: 479, type: !103)
!356 = distinct !DILexicalBlock(scope: !357, file: !10, line: 478, column: 28)
!357 = distinct !DILexicalBlock(scope: !223, file: !10, line: 478, column: 7)
!358 = !DILocalVariable(name: "unsent_optlen", scope: !356, file: !10, line: 480, type: !103)
!359 = !DILocalVariable(name: "seglen", scope: !360, file: !10, line: 534, type: !103)
!360 = distinct !DILexicalBlock(scope: !361, file: !10, line: 533, column: 63)
!361 = distinct !DILexicalBlock(scope: !356, file: !10, line: 533, column: 9)
!362 = !DILocalVariable(name: "p", scope: !363, file: !10, line: 559, type: !120)
!363 = distinct !DILexicalBlock(scope: !364, file: !10, line: 556, column: 14)
!364 = distinct !DILexicalBlock(scope: !360, file: !10, line: 540, column: 11)
!365 = !DILocalVariable(name: "p", scope: !366, file: !10, line: 600, type: !120)
!366 = distinct !DILexicalBlock(scope: !223, file: !10, line: 599, column: 21)
!367 = !DILocalVariable(name: "left", scope: !366, file: !10, line: 601, type: !103)
!368 = !DILocalVariable(name: "max_len", scope: !366, file: !10, line: 602, type: !103)
!369 = !DILocalVariable(name: "seglen", scope: !366, file: !10, line: 603, type: !103)
!370 = !DILocalVariable(name: "p2", scope: !371, file: !10, line: 626, type: !120)
!371 = distinct !DILexicalBlock(scope: !372, file: !10, line: 620, column: 12)
!372 = distinct !DILexicalBlock(scope: !366, file: !10, line: 609, column: 9)
!373 = !DILocalVariable(name: "p", scope: !374, file: !10, line: 715, type: !120)
!374 = distinct !DILexicalBlock(scope: !375, file: !10, line: 714, column: 26)
!375 = distinct !DILexicalBlock(scope: !223, file: !10, line: 714, column: 7)
!376 = !DILocalVariable(name: "p", scope: !377, file: !10, line: 744, type: !120)
!377 = distinct !DILexicalBlock(scope: !378, file: !10, line: 743, column: 29)
!378 = distinct !DILexicalBlock(scope: !379, file: !10, line: 743, column: 14)
!379 = distinct !DILexicalBlock(scope: !223, file: !10, line: 738, column: 7)
!380 = !DILocation(line: 392, column: 27, scope: !223)
!381 = !DILocation(line: 392, column: 44, scope: !223)
!382 = !DILocation(line: 392, column: 55, scope: !223)
!383 = !DILocation(line: 392, column: 65, scope: !223)
!384 = !DILocation(line: 394, column: 16, scope: !223)
!385 = !DILocation(line: 395, column: 19, scope: !223)
!386 = !DILocation(line: 395, column: 40, scope: !223)
!387 = !DILocation(line: 395, column: 53, scope: !223)
!388 = !DILocation(line: 395, column: 71, scope: !223)
!389 = !DILocation(line: 396, column: 9, scope: !223)
!390 = !DILocation(line: 399, column: 8, scope: !223)
!391 = !DILocation(line: 401, column: 3, scope: !223)
!392 = !DILocation(line: 401, column: 9, scope: !223)
!393 = !{!394, !394, i64 0}
!394 = !{!"short", !395, i64 0}
!395 = !{!"omnipotent char", !396, i64 0}
!396 = !{!"Simple C/C++ TBAA"}
!397 = !DILocation(line: 402, column: 9, scope: !223)
!398 = !DILocation(line: 407, column: 9, scope: !223)
!399 = !DILocation(line: 416, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !10, line: 416, column: 3)
!401 = distinct !DILexicalBlock(scope: !223, file: !10, line: 416, column: 3)
!402 = !DILocation(line: 416, column: 3, scope: !401)
!403 = !DILocation(line: 416, column: 3, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !10, line: 416, column: 3)
!405 = distinct !DILexicalBlock(scope: !400, file: !10, line: 416, column: 3)
!406 = !DILocation(line: 416, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !10, line: 416, column: 3)
!408 = distinct !DILexicalBlock(scope: !409, file: !10, line: 416, column: 3)
!409 = distinct !DILexicalBlock(scope: !404, file: !10, line: 416, column: 3)
!410 = !DILocation(line: 419, column: 15, scope: !223)
!411 = !{!412, !394, i64 110}
!412 = !{!"tcp_pcb", !413, i64 0, !413, i64 24, !395, i64 48, !395, i64 49, !395, i64 50, !395, i64 51, !414, i64 56, !414, i64 64, !395, i64 72, !395, i64 76, !394, i64 78, !394, i64 80, !394, i64 82, !395, i64 84, !395, i64 85, !395, i64 86, !415, i64 88, !415, i64 92, !415, i64 96, !415, i64 100, !415, i64 104, !394, i64 108, !394, i64 110, !415, i64 112, !415, i64 116, !394, i64 120, !394, i64 122, !394, i64 124, !395, i64 126, !395, i64 127, !415, i64 128, !415, i64 132, !415, i64 136, !415, i64 140, !415, i64 144, !415, i64 148, !415, i64 152, !415, i64 156, !415, i64 160, !415, i64 164, !415, i64 168, !394, i64 172, !394, i64 174, !415, i64 176, !414, i64 184, !414, i64 192, !414, i64 200, !414, i64 208, !414, i64 216, !414, i64 224, !414, i64 232, !414, i64 240, !414, i64 248, !414, i64 256, !415, i64 264, !395, i64 268, !395, i64 269, !395, i64 270, !395, i64 271, !395, i64 272, !395, i64 273}
!413 = !{!"ip_addr", !395, i64 0, !395, i64 20}
!414 = !{!"any pointer", !395, i64 0}
!415 = !{!"int", !395, i64 0}
!416 = !{!412, !415, i64 164}
!417 = !DILocation(line: 414, column: 9, scope: !223)
!418 = !DILocation(line: 420, column: 15, scope: !223)
!419 = !DILocation(line: 431, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !10, line: 431, column: 3)
!421 = distinct !DILexicalBlock(scope: !223, file: !10, line: 431, column: 3)
!422 = !DILocation(line: 431, column: 3, scope: !421)
!423 = !DILocation(line: 431, column: 3, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !10, line: 431, column: 3)
!425 = distinct !DILexicalBlock(scope: !420, file: !10, line: 431, column: 3)
!426 = !DILocation(line: 431, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !10, line: 431, column: 3)
!428 = distinct !DILexicalBlock(scope: !429, file: !10, line: 431, column: 3)
!429 = distinct !DILexicalBlock(scope: !424, file: !10, line: 431, column: 3)
!430 = !DILocalVariable(name: "pcb", arg: 1, scope: !431, file: !10, line: 307, type: !231)
!431 = distinct !DISubprogram(name: "tcp_write_checks", scope: !10, file: !10, line: 307, type: !432, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!226, !231, !103}
!434 = !{!430, !435}
!435 = !DILocalVariable(name: "len", arg: 2, scope: !431, file: !10, line: 307, type: !103)
!436 = !DILocation(line: 307, column: 34, scope: !431, inlinedAt: !437)
!437 = distinct !DILocation(line: 434, column: 9, scope: !223)
!438 = !DILocation(line: 307, column: 45, scope: !431, inlinedAt: !437)
!439 = !DILocation(line: 309, column: 3, scope: !440, inlinedAt: !437)
!440 = distinct !DILexicalBlock(scope: !431, file: !10, line: 309, column: 3)
!441 = !DILocation(line: 312, column: 13, scope: !442, inlinedAt: !437)
!442 = distinct !DILexicalBlock(scope: !431, file: !10, line: 312, column: 7)
!443 = !{!412, !395, i64 72}
!444 = !DILocation(line: 312, column: 19, scope: !442, inlinedAt: !437)
!445 = !DILocation(line: 312, column: 35, scope: !442, inlinedAt: !437)
!446 = !DILocation(line: 313, column: 19, scope: !442, inlinedAt: !437)
!447 = !DILocation(line: 313, column: 34, scope: !442, inlinedAt: !437)
!448 = !DILocation(line: 314, column: 19, scope: !442, inlinedAt: !437)
!449 = !DILocation(line: 314, column: 32, scope: !442, inlinedAt: !437)
!450 = !DILocation(line: 315, column: 19, scope: !442, inlinedAt: !437)
!451 = !DILocation(line: 312, column: 7, scope: !431, inlinedAt: !437)
!452 = !DILocation(line: 318, column: 18, scope: !453, inlinedAt: !437)
!453 = distinct !DILexicalBlock(scope: !442, file: !10, line: 318, column: 14)
!454 = !DILocation(line: 318, column: 14, scope: !442, inlinedAt: !437)
!455 = !DILocation(line: 319, column: 5, scope: !456, inlinedAt: !437)
!456 = distinct !DILexicalBlock(scope: !453, file: !10, line: 318, column: 24)
!457 = !DILocation(line: 438, column: 19, scope: !223)
!458 = !{!412, !394, i64 172}
!459 = !DILocation(line: 318, column: 14, scope: !453, inlinedAt: !437)
!460 = !DILocation(line: 323, column: 18, scope: !461, inlinedAt: !437)
!461 = distinct !DILexicalBlock(scope: !431, file: !10, line: 323, column: 7)
!462 = !{!412, !415, i64 168}
!463 = !DILocation(line: 323, column: 11, scope: !461, inlinedAt: !437)
!464 = !DILocation(line: 323, column: 7, scope: !431, inlinedAt: !437)
!465 = !DILocation(line: 335, column: 12, scope: !466, inlinedAt: !437)
!466 = distinct !DILexicalBlock(scope: !431, file: !10, line: 335, column: 7)
!467 = !DILocation(line: 335, column: 25, scope: !466, inlinedAt: !437)
!468 = !DILocation(line: 335, column: 7, scope: !431, inlinedAt: !437)
!469 = !DILocation(line: 338, column: 5, scope: !470, inlinedAt: !437)
!470 = distinct !DILexicalBlock(scope: !466, file: !10, line: 335, column: 88)
!471 = !{!472, !394, i64 156}
!472 = !{!"stats_", !473, i64 0, !473, i64 24, !473, i64 48, !473, i64 72, !473, i64 96, !473, i64 120, !473, i64 144, !474, i64 168, !473, i64 186, !473, i64 210, !473, i64 234, !476, i64 258, !473, i64 286}
!473 = !{!"stats_proto", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22}
!474 = !{!"stats_sys", !475, i64 0, !475, i64 6, !475, i64 12}
!475 = !{!"stats_syselem", !394, i64 0, !394, i64 2, !394, i64 4}
!476 = !{!"stats_igmp", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22, !394, i64 24, !394, i64 26}
!477 = !DILocation(line: 340, column: 5, scope: !470, inlinedAt: !437)
!478 = !DILocation(line: 342, column: 25, scope: !479, inlinedAt: !437)
!479 = distinct !DILexicalBlock(scope: !431, file: !10, line: 342, column: 7)
!480 = !DILocation(line: 0, scope: !481, inlinedAt: !437)
!481 = distinct !DILexicalBlock(scope: !482, file: !10, line: 346, column: 5)
!482 = distinct !DILexicalBlock(scope: !483, file: !10, line: 346, column: 5)
!483 = distinct !DILexicalBlock(scope: !479, file: !10, line: 345, column: 10)
!484 = !{!412, !414, i64 192}
!485 = !DILocation(line: 342, column: 7, scope: !431, inlinedAt: !437)
!486 = !DILocation(line: 0, scope: !487, inlinedAt: !437)
!487 = distinct !DILexicalBlock(scope: !488, file: !10, line: 343, column: 5)
!488 = distinct !DILexicalBlock(scope: !489, file: !10, line: 343, column: 5)
!489 = distinct !DILexicalBlock(scope: !479, file: !10, line: 342, column: 31)
!490 = !DILocation(line: 343, column: 5, scope: !487, inlinedAt: !437)
!491 = !{!412, !414, i64 184}
!492 = !DILocation(line: 343, column: 5, scope: !488, inlinedAt: !437)
!493 = !DILocation(line: 343, column: 5, scope: !494, inlinedAt: !437)
!494 = distinct !DILexicalBlock(scope: !495, file: !10, line: 343, column: 5)
!495 = distinct !DILexicalBlock(scope: !487, file: !10, line: 343, column: 5)
!496 = !DILocation(line: 343, column: 5, scope: !497, inlinedAt: !437)
!497 = distinct !DILexicalBlock(scope: !498, file: !10, line: 343, column: 5)
!498 = distinct !DILexicalBlock(scope: !499, file: !10, line: 343, column: 5)
!499 = distinct !DILexicalBlock(scope: !494, file: !10, line: 343, column: 5)
!500 = !DILocation(line: 346, column: 5, scope: !481, inlinedAt: !437)
!501 = !DILocation(line: 346, column: 5, scope: !482, inlinedAt: !437)
!502 = !DILocation(line: 346, column: 5, scope: !503, inlinedAt: !437)
!503 = distinct !DILexicalBlock(scope: !504, file: !10, line: 346, column: 5)
!504 = distinct !DILexicalBlock(scope: !481, file: !10, line: 346, column: 5)
!505 = !DILocation(line: 346, column: 5, scope: !506, inlinedAt: !437)
!506 = distinct !DILexicalBlock(scope: !507, file: !10, line: 346, column: 5)
!507 = distinct !DILexicalBlock(scope: !508, file: !10, line: 346, column: 5)
!508 = distinct !DILexicalBlock(scope: !503, file: !10, line: 346, column: 5)
!509 = !DILocation(line: 349, column: 3, scope: !431, inlinedAt: !437)
!510 = !DILocation(line: 0, scope: !223)
!511 = !{!412, !394, i64 82}
!512 = !DILocation(line: 350, column: 1, scope: !431, inlinedAt: !437)
!513 = !DILocation(line: 413, column: 9, scope: !223)
!514 = !DILocation(line: 435, column: 7, scope: !223)
!515 = !DILocation(line: 436, column: 5, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !10, line: 435, column: 22)
!517 = distinct !DILexicalBlock(scope: !223, file: !10, line: 435, column: 7)
!518 = !DILocation(line: 397, column: 9, scope: !223)
!519 = !DILocation(line: 398, column: 8, scope: !223)
!520 = !DILocation(line: 478, column: 12, scope: !357)
!521 = !DILocation(line: 478, column: 19, scope: !357)
!522 = !DILocation(line: 478, column: 7, scope: !223)
!523 = !DILocation(line: 483, column: 10, scope: !524)
!524 = distinct !DILexicalBlock(scope: !356, file: !10, line: 483, column: 5)
!525 = !DILocation(line: 483, column: 50, scope: !526)
!526 = distinct !DILexicalBlock(scope: !524, file: !10, line: 483, column: 5)
!527 = !{!528, !414, i64 0}
!528 = !{!"tcp_seg", !414, i64 0, !414, i64 8, !394, i64 16, !395, i64 18, !414, i64 24}
!529 = !DILocation(line: 483, column: 55, scope: !526)
!530 = !DILocation(line: 483, column: 5, scope: !524)
!531 = !DILocation(line: 483, column: 5, scope: !526)
!532 = distinct !{!532, !530, !533}
!533 = !DILocation(line: 484, column: 42, scope: !524)
!534 = !DILocation(line: 0, scope: !526)
!535 = !DILocation(line: 487, column: 21, scope: !356)
!536 = !{!528, !395, i64 18}
!537 = !DILocation(line: 488, column: 5, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !10, line: 488, column: 5)
!539 = distinct !DILexicalBlock(scope: !356, file: !10, line: 488, column: 5)
!540 = !{!528, !394, i64 16}
!541 = !DILocation(line: 488, column: 5, scope: !539)
!542 = !DILocation(line: 488, column: 5, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !10, line: 488, column: 5)
!544 = distinct !DILexicalBlock(scope: !538, file: !10, line: 488, column: 5)
!545 = !DILocation(line: 488, column: 5, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !10, line: 488, column: 5)
!547 = distinct !DILexicalBlock(scope: !548, file: !10, line: 488, column: 5)
!548 = distinct !DILexicalBlock(scope: !543, file: !10, line: 488, column: 5)
!549 = !DILocation(line: 489, column: 23, scope: !356)
!550 = !DILocation(line: 504, column: 21, scope: !356)
!551 = !{!412, !394, i64 174}
!552 = !DILocation(line: 504, column: 14, scope: !356)
!553 = !DILocation(line: 505, column: 9, scope: !554)
!554 = distinct !DILexicalBlock(scope: !356, file: !10, line: 505, column: 9)
!555 = !DILocation(line: 505, column: 18, scope: !554)
!556 = !DILocation(line: 505, column: 9, scope: !356)
!557 = !DILocation(line: 514, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !10, line: 514, column: 5)
!559 = distinct !DILexicalBlock(scope: !356, file: !10, line: 514, column: 5)
!560 = !DILocation(line: 533, column: 16, scope: !361)
!561 = !DILocation(line: 506, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !10, line: 506, column: 7)
!563 = distinct !DILexicalBlock(scope: !564, file: !10, line: 506, column: 7)
!564 = distinct !DILexicalBlock(scope: !554, file: !10, line: 505, column: 23)
!565 = !DILocation(line: 506, column: 7, scope: !563)
!566 = !DILocation(line: 506, column: 7, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !10, line: 506, column: 7)
!568 = distinct !DILexicalBlock(scope: !562, file: !10, line: 506, column: 7)
!569 = !DILocation(line: 506, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !571, file: !10, line: 506, column: 7)
!571 = distinct !DILexicalBlock(scope: !572, file: !10, line: 506, column: 7)
!572 = distinct !DILexicalBlock(scope: !567, file: !10, line: 506, column: 7)
!573 = !DILocation(line: 508, column: 23, scope: !564)
!574 = !DILocation(line: 510, column: 16, scope: !564)
!575 = !DILocation(line: 511, column: 13, scope: !564)
!576 = !DILocation(line: 512, column: 5, scope: !564)
!577 = !DILocation(line: 514, column: 5, scope: !559)
!578 = !DILocation(line: 533, column: 21, scope: !361)
!579 = !DILocation(line: 514, column: 5, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !10, line: 514, column: 5)
!581 = distinct !DILexicalBlock(scope: !558, file: !10, line: 514, column: 5)
!582 = !DILocation(line: 514, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !10, line: 514, column: 5)
!584 = distinct !DILexicalBlock(scope: !585, file: !10, line: 514, column: 5)
!585 = distinct !DILexicalBlock(scope: !580, file: !10, line: 514, column: 5)
!586 = !DILocation(line: 0, scope: !356)
!587 = !DILocation(line: 533, column: 10, scope: !361)
!588 = !DILocation(line: 533, column: 14, scope: !361)
!589 = !DILocation(line: 533, column: 25, scope: !361)
!590 = !DILocation(line: 533, column: 31, scope: !361)
!591 = !DILocation(line: 533, column: 36, scope: !361)
!592 = !DILocation(line: 533, column: 57, scope: !361)
!593 = !DILocation(line: 533, column: 9, scope: !356)
!594 = !DILocation(line: 534, column: 22, scope: !360)
!595 = !DILocation(line: 534, column: 13, scope: !360)
!596 = !DILocation(line: 540, column: 20, scope: !364)
!597 = !DILocation(line: 540, column: 11, scope: !360)
!598 = !DILocation(line: 542, column: 25, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !10, line: 542, column: 13)
!600 = distinct !DILexicalBlock(scope: !364, file: !10, line: 540, column: 43)
!601 = !DILocation(line: 542, column: 98, scope: !599)
!602 = !DILocation(line: 542, column: 13, scope: !600)
!603 = !DILocation(line: 551, column: 9, scope: !600)
!604 = !{!605, !414, i64 8}
!605 = !{!"pbuf", !414, i64 0, !414, i64 8, !394, i64 16, !394, i64 18, !395, i64 20, !395, i64 21, !395, i64 22, !395, i64 23}
!606 = !DILocation(line: 555, column: 21, scope: !600)
!607 = !DILocation(line: 555, column: 18, scope: !600)
!608 = !DILocation(line: 556, column: 7, scope: !600)
!609 = !DILocation(line: 560, column: 31, scope: !610)
!610 = distinct !DILexicalBlock(scope: !363, file: !10, line: 560, column: 9)
!611 = !{!528, !414, i64 8}
!612 = !DILocation(line: 559, column: 22, scope: !363)
!613 = !DILocation(line: 560, column: 14, scope: !610)
!614 = !DILocation(line: 560, column: 37, scope: !615)
!615 = distinct !DILexicalBlock(scope: !610, file: !10, line: 560, column: 9)
!616 = !{!605, !414, i64 0}
!617 = !DILocation(line: 560, column: 42, scope: !615)
!618 = !DILocation(line: 560, column: 9, scope: !610)
!619 = !DILocation(line: 560, column: 9, scope: !615)
!620 = distinct !{!620, !618, !621}
!621 = !DILocation(line: 560, column: 63, scope: !610)
!622 = !DILocation(line: 0, scope: !615)
!623 = !DILocation(line: 561, column: 18, scope: !624)
!624 = distinct !DILexicalBlock(scope: !363, file: !10, line: 561, column: 13)
!625 = !{!605, !395, i64 20}
!626 = !DILocation(line: 561, column: 106, scope: !624)
!627 = !DILocation(line: 561, column: 112, scope: !624)
!628 = !DILocation(line: 562, column: 30, scope: !624)
!629 = !DILocation(line: 562, column: 43, scope: !624)
!630 = !{!605, !394, i64 18}
!631 = !DILocation(line: 562, column: 38, scope: !624)
!632 = !DILocation(line: 562, column: 47, scope: !624)
!633 = !DILocation(line: 561, column: 13, scope: !363)
!634 = !DILocation(line: 563, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !10, line: 563, column: 11)
!636 = distinct !DILexicalBlock(scope: !637, file: !10, line: 563, column: 11)
!637 = distinct !DILexicalBlock(scope: !624, file: !10, line: 562, column: 69)
!638 = !DILocation(line: 563, column: 11, scope: !636)
!639 = !DILocation(line: 563, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !10, line: 563, column: 11)
!641 = distinct !DILexicalBlock(scope: !635, file: !10, line: 563, column: 11)
!642 = !DILocation(line: 563, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !10, line: 563, column: 11)
!644 = distinct !DILexicalBlock(scope: !645, file: !10, line: 563, column: 11)
!645 = distinct !DILexicalBlock(scope: !640, file: !10, line: 563, column: 11)
!646 = !DILocation(line: 566, column: 27, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !10, line: 566, column: 15)
!648 = distinct !DILexicalBlock(scope: !624, file: !10, line: 565, column: 16)
!649 = !DILocation(line: 566, column: 67, scope: !647)
!650 = !DILocation(line: 566, column: 15, scope: !648)
!651 = !DILocation(line: 572, column: 70, scope: !648)
!652 = !DILocation(line: 572, column: 42, scope: !648)
!653 = !DILocation(line: 572, column: 50, scope: !648)
!654 = !{!655, !414, i64 8}
!655 = !{!"pbuf_rom", !414, i64 0, !414, i64 8}
!656 = !DILocation(line: 573, column: 23, scope: !648)
!657 = !DILocation(line: 573, column: 20, scope: !648)
!658 = !DILocation(line: 0, scope: !648)
!659 = !DILocation(line: 0, scope: !647)
!660 = !DILocation(line: 581, column: 7, scope: !364)
!661 = !DILocation(line: 569, column: 13, scope: !662)
!662 = distinct !DILexicalBlock(scope: !647, file: !10, line: 566, column: 76)
!663 = !DILocation(line: 0, scope: !637)
!664 = !DILocation(line: 583, column: 11, scope: !360)
!665 = !DILocation(line: 584, column: 5, scope: !361)
!666 = !DILocation(line: 438, column: 12, scope: !223)
!667 = !DILocation(line: 509, column: 11, scope: !564)
!668 = !DILocation(line: 0, scope: !564)
!669 = !DILocation(line: 586, column: 3, scope: !357)
!670 = !DILocation(line: 588, column: 5, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !10, line: 588, column: 5)
!672 = distinct !DILexicalBlock(scope: !673, file: !10, line: 588, column: 5)
!673 = distinct !DILexicalBlock(scope: !357, file: !10, line: 586, column: 10)
!674 = !DILocation(line: 588, column: 5, scope: !672)
!675 = !DILocation(line: 599, column: 16, scope: !223)
!676 = !DILocation(line: 588, column: 5, scope: !677)
!677 = distinct !DILexicalBlock(scope: !678, file: !10, line: 588, column: 5)
!678 = distinct !DILexicalBlock(scope: !671, file: !10, line: 588, column: 5)
!679 = !DILocation(line: 588, column: 5, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !10, line: 588, column: 5)
!681 = distinct !DILexicalBlock(scope: !682, file: !10, line: 588, column: 5)
!682 = distinct !DILexicalBlock(scope: !677, file: !10, line: 588, column: 5)
!683 = !DILocation(line: 599, column: 3, scope: !223)
!684 = !DILocation(line: 599, column: 14, scope: !223)
!685 = !DILocation(line: 599, column: 10, scope: !223)
!686 = !DILocation(line: 601, column: 22, scope: !366)
!687 = !DILocation(line: 601, column: 11, scope: !366)
!688 = !DILocation(line: 602, column: 11, scope: !366)
!689 = !DILocation(line: 603, column: 20, scope: !366)
!690 = !DILocation(line: 603, column: 11, scope: !366)
!691 = !DILocation(line: 609, column: 9, scope: !366)
!692 = !DILocation(line: 612, column: 110, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !10, line: 612, column: 11)
!694 = distinct !DILexicalBlock(scope: !372, file: !10, line: 609, column: 41)
!695 = !DILocation(line: 612, column: 104, scope: !693)
!696 = !DILocation(line: 612, column: 16, scope: !693)
!697 = !DILocation(line: 600, column: 18, scope: !366)
!698 = !DILocation(line: 612, column: 120, scope: !693)
!699 = !DILocation(line: 612, column: 11, scope: !694)
!700 = !DILocation(line: 616, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !10, line: 616, column: 7)
!702 = distinct !DILexicalBlock(scope: !694, file: !10, line: 616, column: 7)
!703 = !DILocation(line: 616, column: 7, scope: !702)
!704 = !DILocation(line: 616, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !10, line: 616, column: 7)
!706 = distinct !DILexicalBlock(scope: !701, file: !10, line: 616, column: 7)
!707 = !DILocation(line: 616, column: 7, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !10, line: 616, column: 7)
!709 = distinct !DILexicalBlock(scope: !710, file: !10, line: 616, column: 7)
!710 = distinct !DILexicalBlock(scope: !705, file: !10, line: 616, column: 7)
!711 = !DILocation(line: 619, column: 7, scope: !694)
!712 = !DILocation(line: 620, column: 5, scope: !694)
!713 = !DILocation(line: 628, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !10, line: 628, column: 7)
!715 = distinct !DILexicalBlock(scope: !371, file: !10, line: 628, column: 7)
!716 = !DILocation(line: 628, column: 7, scope: !715)
!717 = !DILocation(line: 628, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !10, line: 628, column: 7)
!719 = distinct !DILexicalBlock(scope: !714, file: !10, line: 628, column: 7)
!720 = !DILocation(line: 628, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !10, line: 628, column: 7)
!722 = distinct !DILexicalBlock(scope: !723, file: !10, line: 628, column: 7)
!723 = distinct !DILexicalBlock(scope: !718, file: !10, line: 628, column: 7)
!724 = !DILocation(line: 630, column: 17, scope: !725)
!725 = distinct !DILexicalBlock(scope: !371, file: !10, line: 630, column: 11)
!726 = !DILocation(line: 626, column: 20, scope: !371)
!727 = !DILocation(line: 630, column: 63, scope: !725)
!728 = !DILocation(line: 630, column: 11, scope: !371)
!729 = !DILocation(line: 643, column: 60, scope: !371)
!730 = !DILocation(line: 643, column: 32, scope: !371)
!731 = !DILocation(line: 643, column: 40, scope: !371)
!732 = !DILocation(line: 646, column: 16, scope: !733)
!733 = distinct !DILexicalBlock(scope: !371, file: !10, line: 646, column: 11)
!734 = !DILocation(line: 646, column: 62, scope: !733)
!735 = !DILocation(line: 646, column: 11, scope: !371)
!736 = !DILocation(line: 649, column: 9, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !10, line: 646, column: 71)
!738 = !DILocation(line: 651, column: 9, scope: !737)
!739 = !DILocation(line: 0, scope: !737)
!740 = !DILocation(line: 654, column: 7, scope: !371)
!741 = !DILocation(line: 655, column: 5, scope: !372)
!742 = !DILocation(line: 657, column: 17, scope: !366)
!743 = !DILocation(line: 657, column: 14, scope: !366)
!744 = !DILocation(line: 662, column: 18, scope: !745)
!745 = distinct !DILexicalBlock(scope: !366, file: !10, line: 662, column: 9)
!746 = !DILocation(line: 662, column: 9, scope: !366)
!747 = !DILocation(line: 665, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !10, line: 662, column: 74)
!749 = !DILocation(line: 666, column: 7, scope: !748)
!750 = !DILocation(line: 669, column: 51, scope: !751)
!751 = distinct !DILexicalBlock(scope: !366, file: !10, line: 669, column: 9)
!752 = !{!412, !415, i64 156}
!753 = !DILocation(line: 669, column: 59, scope: !751)
!754 = !DILocation(line: 669, column: 16, scope: !751)
!755 = !DILocation(line: 669, column: 77, scope: !751)
!756 = !DILocation(line: 669, column: 9, scope: !366)
!757 = !DILocation(line: 682, column: 15, scope: !758)
!758 = distinct !DILexicalBlock(scope: !366, file: !10, line: 682, column: 9)
!759 = !DILocation(line: 682, column: 9, scope: !366)
!760 = !DILocation(line: 686, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !10, line: 686, column: 7)
!762 = distinct !DILexicalBlock(scope: !763, file: !10, line: 686, column: 7)
!763 = distinct !DILexicalBlock(scope: !758, file: !10, line: 684, column: 12)
!764 = !DILocation(line: 686, column: 7, scope: !762)
!765 = !DILocation(line: 686, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !10, line: 686, column: 7)
!767 = distinct !DILexicalBlock(scope: !761, file: !10, line: 686, column: 7)
!768 = !DILocation(line: 686, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !770, file: !10, line: 686, column: 7)
!770 = distinct !DILexicalBlock(scope: !771, file: !10, line: 686, column: 7)
!771 = distinct !DILexicalBlock(scope: !766, file: !10, line: 686, column: 7)
!772 = !DILocation(line: 687, column: 17, scope: !763)
!773 = !DILocation(line: 687, column: 22, scope: !763)
!774 = !DILocation(line: 696, column: 9, scope: !366)
!775 = !DILocation(line: 697, column: 3, scope: !223)
!776 = !DILocation(line: 535, column: 11, scope: !360)
!777 = !DILocation(line: 714, column: 21, scope: !375)
!778 = !DILocation(line: 714, column: 7, scope: !223)
!779 = !DILocation(line: 717, column: 27, scope: !780)
!780 = distinct !DILexicalBlock(scope: !374, file: !10, line: 717, column: 5)
!781 = !DILocation(line: 715, column: 18, scope: !374)
!782 = !DILocation(line: 717, column: 10, scope: !780)
!783 = !DILocation(line: 717, column: 5, scope: !780)
!784 = !DILocation(line: 718, column: 10, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !10, line: 717, column: 46)
!786 = distinct !DILexicalBlock(scope: !780, file: !10, line: 717, column: 5)
!787 = !DILocation(line: 718, column: 18, scope: !785)
!788 = !{!605, !394, i64 16}
!789 = !DILocation(line: 719, column: 14, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !10, line: 719, column: 11)
!791 = !DILocation(line: 719, column: 19, scope: !790)
!792 = !DILocation(line: 719, column: 11, scope: !785)
!793 = !DILocation(line: 720, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !10, line: 719, column: 28)
!795 = !DILocation(line: 721, column: 16, scope: !794)
!796 = !DILocation(line: 722, column: 7, scope: !794)
!797 = !DILocation(line: 717, column: 40, scope: !786)
!798 = !DILocation(line: 717, column: 5, scope: !786)
!799 = distinct !{!799, !783, !800}
!800 = !DILocation(line: 723, column: 5, scope: !780)
!801 = !DILocation(line: 724, column: 18, scope: !374)
!802 = !DILocation(line: 724, column: 22, scope: !374)
!803 = !DILocation(line: 730, column: 3, scope: !374)
!804 = !DILocation(line: 731, column: 26, scope: !223)
!805 = !DILocation(line: 731, column: 8, scope: !223)
!806 = !DILocation(line: 731, column: 24, scope: !223)
!807 = !DILocation(line: 738, column: 16, scope: !379)
!808 = !DILocation(line: 738, column: 7, scope: !223)
!809 = !DILocation(line: 739, column: 5, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !10, line: 739, column: 5)
!811 = distinct !DILexicalBlock(scope: !812, file: !10, line: 739, column: 5)
!812 = distinct !DILexicalBlock(scope: !379, file: !10, line: 738, column: 25)
!813 = !DILocation(line: 739, column: 5, scope: !811)
!814 = !DILocation(line: 739, column: 5, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !10, line: 739, column: 5)
!816 = distinct !DILexicalBlock(scope: !810, file: !10, line: 739, column: 5)
!817 = !DILocation(line: 739, column: 5, scope: !818)
!818 = distinct !DILexicalBlock(scope: !819, file: !10, line: 739, column: 5)
!819 = distinct !DILexicalBlock(scope: !820, file: !10, line: 739, column: 5)
!820 = distinct !DILexicalBlock(scope: !815, file: !10, line: 739, column: 5)
!821 = !DILocation(line: 741, column: 27, scope: !812)
!822 = !DILocation(line: 741, column: 5, scope: !812)
!823 = !DILocation(line: 742, column: 35, scope: !812)
!824 = !DILocation(line: 743, column: 3, scope: !812)
!825 = !DILocation(line: 743, column: 24, scope: !378)
!826 = !DILocation(line: 743, column: 14, scope: !379)
!827 = !DILocation(line: 0, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !10, line: 745, column: 5)
!829 = distinct !DILexicalBlock(scope: !377, file: !10, line: 745, column: 5)
!830 = !DILocation(line: 745, column: 5, scope: !828)
!831 = !DILocation(line: 745, column: 5, scope: !829)
!832 = !DILocation(line: 745, column: 5, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !10, line: 745, column: 5)
!834 = distinct !DILexicalBlock(scope: !828, file: !10, line: 745, column: 5)
!835 = !DILocation(line: 745, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !837, file: !10, line: 745, column: 5)
!837 = distinct !DILexicalBlock(scope: !838, file: !10, line: 745, column: 5)
!838 = distinct !DILexicalBlock(scope: !833, file: !10, line: 745, column: 5)
!839 = !DILocation(line: 744, column: 18, scope: !377)
!840 = !DILocation(line: 747, column: 10, scope: !841)
!841 = distinct !DILexicalBlock(scope: !377, file: !10, line: 747, column: 5)
!842 = !DILocation(line: 747, column: 33, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !10, line: 747, column: 5)
!844 = !DILocation(line: 747, column: 38, scope: !843)
!845 = !DILocation(line: 0, scope: !377)
!846 = !DILocation(line: 747, column: 5, scope: !841)
!847 = !DILocation(line: 747, column: 5, scope: !843)
!848 = distinct !{!848, !846, !849}
!849 = !DILocation(line: 749, column: 5, scope: !841)
!850 = !DILocation(line: 0, scope: !843)
!851 = !DILocation(line: 751, column: 8, scope: !377)
!852 = !DILocation(line: 751, column: 12, scope: !377)
!853 = !DILocation(line: 753, column: 3, scope: !377)
!854 = !DILocation(line: 0, scope: !812)
!855 = !DILocation(line: 773, column: 7, scope: !223)
!856 = !DILocation(line: 776, column: 18, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !10, line: 775, column: 10)
!858 = distinct !DILexicalBlock(scope: !223, file: !10, line: 773, column: 7)
!859 = !DILocation(line: 0, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !10, line: 773, column: 28)
!861 = !{!414, !414, i64 0}
!862 = !DILocation(line: 782, column: 8, scope: !223)
!863 = !DILocation(line: 782, column: 16, scope: !223)
!864 = !DILocation(line: 783, column: 8, scope: !223)
!865 = !DILocation(line: 783, column: 16, scope: !223)
!866 = !DILocation(line: 784, column: 21, scope: !223)
!867 = !DILocation(line: 788, column: 25, scope: !868)
!868 = distinct !DILexicalBlock(scope: !223, file: !10, line: 788, column: 7)
!869 = !DILocation(line: 788, column: 7, scope: !223)
!870 = !DILocation(line: 789, column: 5, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !10, line: 789, column: 5)
!872 = distinct !DILexicalBlock(scope: !873, file: !10, line: 789, column: 5)
!873 = distinct !DILexicalBlock(scope: !868, file: !10, line: 788, column: 31)
!874 = !DILocation(line: 789, column: 5, scope: !872)
!875 = !DILocation(line: 789, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !10, line: 789, column: 5)
!877 = distinct !DILexicalBlock(scope: !871, file: !10, line: 789, column: 5)
!878 = !DILocation(line: 789, column: 5, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !10, line: 789, column: 5)
!880 = distinct !DILexicalBlock(scope: !881, file: !10, line: 789, column: 5)
!881 = distinct !DILexicalBlock(scope: !876, file: !10, line: 789, column: 5)
!882 = !DILocation(line: 794, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !223, file: !10, line: 794, column: 7)
!884 = !DILocation(line: 794, column: 19, scope: !883)
!885 = !DILocation(line: 794, column: 27, scope: !883)
!886 = !{!528, !414, i64 24}
!887 = !DILocation(line: 794, column: 34, scope: !883)
!888 = !DILocation(line: 794, column: 42, scope: !883)
!889 = !DILocation(line: 794, column: 56, scope: !883)
!890 = !DILocation(line: 794, column: 79, scope: !883)
!891 = !DILocation(line: 794, column: 7, scope: !223)
!892 = !DILocation(line: 795, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !883, file: !10, line: 794, column: 86)
!894 = !{!895, !394, i64 12}
!895 = !{!"tcp_hdr", !394, i64 0, !394, i64 2, !415, i64 4, !415, i64 8, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18}
!896 = !DILocation(line: 796, column: 3, scope: !893)
!897 = !DILocation(line: 542, column: 23, scope: !599)
!898 = !DILocation(line: 800, column: 3, scope: !899)
!899 = distinct !DILexicalBlock(scope: !223, file: !10, line: 800, column: 3)
!900 = !DILocation(line: 801, column: 3, scope: !223)
!901 = !DILocation(line: 803, column: 16, scope: !902)
!902 = distinct !DILexicalBlock(scope: !223, file: !10, line: 803, column: 7)
!903 = !DILocation(line: 803, column: 7, scope: !223)
!904 = !DILocation(line: 804, column: 5, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !10, line: 803, column: 25)
!906 = !DILocation(line: 805, column: 3, scope: !905)
!907 = !DILocation(line: 806, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !223, file: !10, line: 806, column: 7)
!909 = !DILocation(line: 806, column: 7, scope: !223)
!910 = !DILocation(line: 807, column: 5, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !10, line: 806, column: 22)
!912 = !DILocation(line: 808, column: 3, scope: !911)
!913 = !DILocation(line: 809, column: 12, scope: !914)
!914 = distinct !DILexicalBlock(scope: !223, file: !10, line: 809, column: 7)
!915 = !DILocation(line: 809, column: 25, scope: !914)
!916 = !DILocation(line: 809, column: 7, scope: !223)
!917 = !DILocation(line: 810, column: 5, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !10, line: 810, column: 5)
!919 = distinct !DILexicalBlock(scope: !920, file: !10, line: 810, column: 5)
!920 = distinct !DILexicalBlock(scope: !914, file: !10, line: 809, column: 31)
!921 = !DILocation(line: 810, column: 5, scope: !919)
!922 = !DILocation(line: 810, column: 5, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !10, line: 810, column: 5)
!924 = distinct !DILexicalBlock(scope: !918, file: !10, line: 810, column: 5)
!925 = !DILocation(line: 810, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !10, line: 810, column: 5)
!927 = distinct !DILexicalBlock(scope: !928, file: !10, line: 810, column: 5)
!928 = distinct !DILexicalBlock(scope: !923, file: !10, line: 810, column: 5)
!929 = !DILocation(line: 0, scope: !516)
!930 = !DILocation(line: 815, column: 1, scope: !223)
!931 = !DILocation(line: 194, column: 43, scope: !2)
!932 = !DILocation(line: 196, column: 2, scope: !2)
!933 = !DILocation(line: 196, column: 10, scope: !2)
!934 = !DILocation(line: 197, column: 2, scope: !2)
!935 = !DILocation(line: 198, column: 2, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 198, column: 2)
!937 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!938 = !DILocation(line: 199, column: 2, scope: !2)
!939 = !DILocation(line: 200, column: 1, scope: !2)
!940 = distinct !DISubprogram(name: "tcp_pbuf_prealloc", scope: !10, file: !10, line: 227, type: !941, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !947)
!941 = !DISubroutineType(types: !942)
!942 = !{!120, !943, !103, !103, !944, !945, !110, !110}
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_layer", file: !56, line: 112, baseType: !55)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956}
!948 = !DILocalVariable(name: "layer", arg: 1, scope: !940, file: !10, line: 227, type: !943)
!949 = !DILocalVariable(name: "length", arg: 2, scope: !940, file: !10, line: 227, type: !103)
!950 = !DILocalVariable(name: "max_length", arg: 3, scope: !940, file: !10, line: 227, type: !103)
!951 = !DILocalVariable(name: "oversize", arg: 4, scope: !940, file: !10, line: 228, type: !944)
!952 = !DILocalVariable(name: "pcb", arg: 5, scope: !940, file: !10, line: 228, type: !945)
!953 = !DILocalVariable(name: "apiflags", arg: 6, scope: !940, file: !10, line: 228, type: !110)
!954 = !DILocalVariable(name: "first_seg", arg: 7, scope: !940, file: !10, line: 229, type: !110)
!955 = !DILocalVariable(name: "p", scope: !940, file: !10, line: 231, type: !120)
!956 = !DILocalVariable(name: "alloc", scope: !940, file: !10, line: 232, type: !103)
!957 = !DILocation(line: 227, column: 30, scope: !940)
!958 = !DILocation(line: 227, column: 43, scope: !940)
!959 = !DILocation(line: 227, column: 57, scope: !940)
!960 = !DILocation(line: 228, column: 26, scope: !940)
!961 = !DILocation(line: 228, column: 58, scope: !940)
!962 = !DILocation(line: 228, column: 68, scope: !940)
!963 = !DILocation(line: 229, column: 24, scope: !940)
!964 = !DILocation(line: 232, column: 9, scope: !940)
!965 = !DILocation(line: 234, column: 3, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !10, line: 234, column: 3)
!967 = distinct !DILexicalBlock(scope: !940, file: !10, line: 234, column: 3)
!968 = !DILocation(line: 234, column: 3, scope: !967)
!969 = !DILocation(line: 234, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !10, line: 234, column: 3)
!971 = distinct !DILexicalBlock(scope: !966, file: !10, line: 234, column: 3)
!972 = !DILocation(line: 234, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !10, line: 234, column: 3)
!974 = distinct !DILexicalBlock(scope: !975, file: !10, line: 234, column: 3)
!975 = distinct !DILexicalBlock(scope: !970, file: !10, line: 234, column: 3)
!976 = !DILocation(line: 235, column: 3, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !10, line: 235, column: 3)
!978 = distinct !DILexicalBlock(scope: !940, file: !10, line: 235, column: 3)
!979 = !DILocation(line: 235, column: 3, scope: !978)
!980 = !DILocation(line: 235, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !10, line: 235, column: 3)
!982 = distinct !DILexicalBlock(scope: !977, file: !10, line: 235, column: 3)
!983 = !DILocation(line: 235, column: 3, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !10, line: 235, column: 3)
!985 = distinct !DILexicalBlock(scope: !986, file: !10, line: 235, column: 3)
!986 = distinct !DILexicalBlock(scope: !981, file: !10, line: 235, column: 3)
!987 = !DILocation(line: 244, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !940, file: !10, line: 244, column: 7)
!989 = !DILocation(line: 244, column: 16, scope: !988)
!990 = !DILocation(line: 244, column: 14, scope: !988)
!991 = !DILocation(line: 244, column: 7, scope: !940)
!992 = !DILocation(line: 256, column: 19, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !10, line: 256, column: 9)
!994 = distinct !DILexicalBlock(scope: !988, file: !10, line: 244, column: 28)
!995 = !DILocation(line: 256, column: 42, scope: !993)
!996 = !DILocation(line: 257, column: 17, scope: !993)
!997 = !DILocation(line: 257, column: 23, scope: !993)
!998 = !DILocation(line: 257, column: 37, scope: !993)
!999 = !DILocation(line: 258, column: 12, scope: !993)
!1000 = !DILocation(line: 258, column: 22, scope: !993)
!1001 = !DILocation(line: 259, column: 16, scope: !993)
!1002 = !DILocation(line: 259, column: 23, scope: !993)
!1003 = !DILocation(line: 259, column: 31, scope: !993)
!1004 = !DILocation(line: 260, column: 16, scope: !993)
!1005 = !DILocation(line: 260, column: 24, scope: !993)
!1006 = !DILocation(line: 256, column: 9, scope: !994)
!1007 = !DILocation(line: 261, column: 15, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !993, file: !10, line: 260, column: 35)
!1009 = !DILocation(line: 262, column: 5, scope: !1008)
!1010 = !DILocation(line: 0, scope: !940)
!1011 = !DILocation(line: 265, column: 7, scope: !940)
!1012 = !DILocation(line: 231, column: 16, scope: !940)
!1013 = !DILocation(line: 266, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !940, file: !10, line: 266, column: 7)
!1015 = !DILocation(line: 266, column: 7, scope: !940)
!1016 = !DILocation(line: 269, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !10, line: 269, column: 3)
!1018 = distinct !DILexicalBlock(scope: !940, file: !10, line: 269, column: 3)
!1019 = !DILocation(line: 269, column: 3, scope: !1018)
!1020 = !DILocation(line: 269, column: 3, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !10, line: 269, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !10, line: 269, column: 3)
!1023 = !DILocation(line: 269, column: 3, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !10, line: 269, column: 3)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !10, line: 269, column: 3)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !10, line: 269, column: 3)
!1027 = !DILocation(line: 270, column: 18, scope: !940)
!1028 = !DILocation(line: 270, column: 22, scope: !940)
!1029 = !DILocation(line: 270, column: 13, scope: !940)
!1030 = !DILocation(line: 272, column: 15, scope: !940)
!1031 = !DILocation(line: 272, column: 23, scope: !940)
!1032 = !DILocation(line: 272, column: 10, scope: !940)
!1033 = !DILocation(line: 273, column: 3, scope: !940)
!1034 = !DILocation(line: 0, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1014, file: !10, line: 266, column: 18)
!1036 = !DILocation(line: 274, column: 1, scope: !940)
!1037 = distinct !DISubprogram(name: "tcp_create_segment", scope: !10, file: !10, line: 160, type: !1038, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1040)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!185, !945, !120, !110, !142, !110}
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1041 = !DILocalVariable(name: "pcb", arg: 1, scope: !1037, file: !10, line: 160, type: !945)
!1042 = !DILocalVariable(name: "p", arg: 2, scope: !1037, file: !10, line: 160, type: !120)
!1043 = !DILocalVariable(name: "hdrflags", arg: 3, scope: !1037, file: !10, line: 160, type: !110)
!1044 = !DILocalVariable(name: "seqno", arg: 4, scope: !1037, file: !10, line: 160, type: !142)
!1045 = !DILocalVariable(name: "optflags", arg: 5, scope: !1037, file: !10, line: 160, type: !110)
!1046 = !DILocalVariable(name: "seg", scope: !1037, file: !10, line: 162, type: !185)
!1047 = !DILocalVariable(name: "optlen", scope: !1037, file: !10, line: 163, type: !110)
!1048 = !DILocation(line: 160, column: 42, scope: !1037)
!1049 = !DILocation(line: 160, column: 60, scope: !1037)
!1050 = !DILocation(line: 160, column: 68, scope: !1037)
!1051 = !DILocation(line: 160, column: 84, scope: !1037)
!1052 = !DILocation(line: 160, column: 96, scope: !1037)
!1053 = !DILocation(line: 165, column: 3, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !10, line: 165, column: 3)
!1055 = distinct !DILexicalBlock(scope: !1037, file: !10, line: 165, column: 3)
!1056 = !DILocation(line: 165, column: 3, scope: !1055)
!1057 = !DILocation(line: 165, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !10, line: 165, column: 3)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !10, line: 165, column: 3)
!1060 = !DILocation(line: 165, column: 3, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !10, line: 165, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !10, line: 165, column: 3)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !10, line: 165, column: 3)
!1064 = !DILocation(line: 166, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !10, line: 166, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1037, file: !10, line: 166, column: 3)
!1067 = !DILocation(line: 166, column: 3, scope: !1066)
!1068 = !DILocation(line: 166, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 166, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !10, line: 166, column: 3)
!1071 = !DILocation(line: 166, column: 3, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !10, line: 166, column: 3)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !10, line: 166, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !10, line: 166, column: 3)
!1075 = !DILocation(line: 170, column: 32, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1037, file: !10, line: 170, column: 7)
!1077 = !DILocation(line: 170, column: 14, scope: !1076)
!1078 = !DILocation(line: 162, column: 19, scope: !1037)
!1079 = !DILocation(line: 170, column: 59, scope: !1076)
!1080 = !DILocation(line: 170, column: 7, scope: !1037)
!1081 = !DILocation(line: 172, column: 5, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !10, line: 170, column: 68)
!1083 = !DILocation(line: 173, column: 5, scope: !1082)
!1084 = !DILocation(line: 168, column: 12, scope: !1037)
!1085 = !DILocation(line: 163, column: 8, scope: !1037)
!1086 = !DILocation(line: 175, column: 8, scope: !1037)
!1087 = !DILocation(line: 175, column: 14, scope: !1037)
!1088 = !DILocation(line: 176, column: 8, scope: !1037)
!1089 = !DILocation(line: 176, column: 13, scope: !1037)
!1090 = !DILocation(line: 177, column: 8, scope: !1037)
!1091 = !DILocation(line: 177, column: 10, scope: !1037)
!1092 = !DILocation(line: 178, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !10, line: 178, column: 3)
!1094 = distinct !DILexicalBlock(scope: !1037, file: !10, line: 178, column: 3)
!1095 = !DILocation(line: 178, column: 3, scope: !1094)
!1096 = !DILocation(line: 178, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !10, line: 178, column: 3)
!1098 = distinct !DILexicalBlock(scope: !1093, file: !10, line: 178, column: 3)
!1099 = !DILocation(line: 178, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !10, line: 178, column: 3)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !10, line: 178, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !10, line: 178, column: 3)
!1103 = !DILocation(line: 179, column: 14, scope: !1037)
!1104 = !DILocation(line: 179, column: 8, scope: !1037)
!1105 = !DILocation(line: 179, column: 12, scope: !1037)
!1106 = !DILocation(line: 192, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1037, file: !10, line: 192, column: 7)
!1108 = !DILocation(line: 192, column: 7, scope: !1037)
!1109 = !DILocation(line: 194, column: 5, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !10, line: 192, column: 37)
!1111 = !{!472, !394, i64 164}
!1112 = !DILocation(line: 195, column: 5, scope: !1110)
!1113 = !DILocation(line: 196, column: 5, scope: !1110)
!1114 = !DILocation(line: 198, column: 40, scope: !1037)
!1115 = !DILocation(line: 198, column: 43, scope: !1037)
!1116 = !DILocation(line: 198, column: 8, scope: !1037)
!1117 = !DILocation(line: 198, column: 15, scope: !1037)
!1118 = !DILocation(line: 199, column: 38, scope: !1037)
!1119 = !{!412, !394, i64 78}
!1120 = !DILocation(line: 199, column: 22, scope: !1037)
!1121 = !DILocation(line: 199, column: 8, scope: !1037)
!1122 = !DILocation(line: 199, column: 16, scope: !1037)
!1123 = !DILocation(line: 199, column: 20, scope: !1037)
!1124 = !{!895, !394, i64 0}
!1125 = !DILocation(line: 200, column: 39, scope: !1037)
!1126 = !{!412, !394, i64 80}
!1127 = !DILocation(line: 200, column: 23, scope: !1037)
!1128 = !DILocation(line: 200, column: 8, scope: !1037)
!1129 = !DILocation(line: 200, column: 16, scope: !1037)
!1130 = !DILocation(line: 200, column: 21, scope: !1037)
!1131 = !{!895, !394, i64 2}
!1132 = !DILocation(line: 201, column: 24, scope: !1037)
!1133 = !DILocation(line: 201, column: 8, scope: !1037)
!1134 = !DILocation(line: 201, column: 16, scope: !1037)
!1135 = !DILocation(line: 201, column: 22, scope: !1037)
!1136 = !{!895, !415, i64 4}
!1137 = !DILocation(line: 203, column: 3, scope: !1037)
!1138 = !DILocation(line: 205, column: 16, scope: !1037)
!1139 = !DILocation(line: 205, column: 21, scope: !1037)
!1140 = !{!895, !394, i64 18}
!1141 = !DILocation(line: 206, column: 3, scope: !1037)
!1142 = !DILocation(line: 0, scope: !1037)
!1143 = !DILocation(line: 0, scope: !1082)
!1144 = !DILocation(line: 207, column: 1, scope: !1037)
!1145 = distinct !DISubprogram(name: "tcp_split_unsent_seg", scope: !10, file: !10, line: 830, type: !432, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157}
!1147 = !DILocalVariable(name: "pcb", arg: 1, scope: !1145, file: !10, line: 830, type: !231)
!1148 = !DILocalVariable(name: "split", arg: 2, scope: !1145, file: !10, line: 830, type: !103)
!1149 = !DILocalVariable(name: "seg", scope: !1145, file: !10, line: 832, type: !185)
!1150 = !DILocalVariable(name: "useg", scope: !1145, file: !10, line: 832, type: !185)
!1151 = !DILocalVariable(name: "p", scope: !1145, file: !10, line: 833, type: !120)
!1152 = !DILocalVariable(name: "optlen", scope: !1145, file: !10, line: 834, type: !110)
!1153 = !DILocalVariable(name: "optflags", scope: !1145, file: !10, line: 835, type: !110)
!1154 = !DILocalVariable(name: "split_flags", scope: !1145, file: !10, line: 836, type: !110)
!1155 = !DILocalVariable(name: "remainder_flags", scope: !1145, file: !10, line: 837, type: !110)
!1156 = !DILocalVariable(name: "remainder", scope: !1145, file: !10, line: 838, type: !103)
!1157 = !DILocalVariable(name: "offset", scope: !1145, file: !10, line: 839, type: !103)
!1158 = !DILocation(line: 830, column: 38, scope: !1145)
!1159 = !DILocation(line: 830, column: 49, scope: !1145)
!1160 = !DILocation(line: 832, column: 19, scope: !1145)
!1161 = !DILocation(line: 832, column: 32, scope: !1145)
!1162 = !DILocation(line: 833, column: 16, scope: !1145)
!1163 = !DILocation(line: 846, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !10, line: 846, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 846, column: 3)
!1166 = !DILocation(line: 846, column: 3, scope: !1165)
!1167 = !DILocation(line: 846, column: 3, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !10, line: 846, column: 3)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !10, line: 846, column: 3)
!1170 = !DILocation(line: 846, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !10, line: 846, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !10, line: 846, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !10, line: 846, column: 3)
!1174 = !DILocation(line: 848, column: 15, scope: !1145)
!1175 = !DILocation(line: 849, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 849, column: 7)
!1177 = !DILocation(line: 849, column: 7, scope: !1145)
!1178 = !DILocation(line: 853, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 853, column: 7)
!1180 = !DILocation(line: 853, column: 13, scope: !1179)
!1181 = !DILocation(line: 853, column: 7, scope: !1145)
!1182 = !DILocation(line: 854, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !10, line: 854, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !10, line: 854, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !10, line: 854, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !10, line: 854, column: 5)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !10, line: 853, column: 19)
!1188 = !DILocation(line: 854, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !10, line: 854, column: 5)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !10, line: 854, column: 5)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !10, line: 854, column: 5)
!1192 = !DILocation(line: 858, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 858, column: 7)
!1194 = !DILocation(line: 858, column: 17, scope: !1193)
!1195 = !DILocation(line: 858, column: 7, scope: !1145)
!1196 = !DILocation(line: 862, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !10, line: 862, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 862, column: 3)
!1199 = !DILocation(line: 862, column: 3, scope: !1198)
!1200 = !DILocation(line: 862, column: 3, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 862, column: 3)
!1202 = distinct !DILexicalBlock(scope: !1197, file: !10, line: 862, column: 3)
!1203 = !DILocation(line: 862, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !10, line: 862, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !10, line: 862, column: 3)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !10, line: 862, column: 3)
!1207 = !DILocation(line: 863, column: 3, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 863, column: 3)
!1209 = !DILocation(line: 871, column: 20, scope: !1145)
!1210 = !DILocation(line: 835, column: 8, scope: !1145)
!1211 = !DILocation(line: 876, column: 12, scope: !1145)
!1212 = !DILocation(line: 834, column: 8, scope: !1145)
!1213 = !DILocation(line: 877, column: 25, scope: !1145)
!1214 = !DILocation(line: 838, column: 9, scope: !1145)
!1215 = !DILocation(line: 880, column: 34, scope: !1145)
!1216 = !DILocation(line: 880, column: 7, scope: !1145)
!1217 = !DILocation(line: 881, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 881, column: 7)
!1219 = !DILocation(line: 881, column: 7, scope: !1145)
!1220 = !DILocation(line: 888, column: 18, scope: !1145)
!1221 = !DILocation(line: 888, column: 21, scope: !1145)
!1222 = !DILocation(line: 888, column: 37, scope: !1145)
!1223 = !DILocation(line: 888, column: 29, scope: !1145)
!1224 = !DILocation(line: 888, column: 41, scope: !1145)
!1225 = !DILocation(line: 839, column: 9, scope: !1145)
!1226 = !DILocation(line: 890, column: 45, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 890, column: 7)
!1228 = !DILocation(line: 890, column: 53, scope: !1227)
!1229 = !DILocation(line: 890, column: 7, scope: !1227)
!1230 = !DILocation(line: 890, column: 83, scope: !1227)
!1231 = !DILocation(line: 890, column: 7, scope: !1145)
!1232 = !DILocation(line: 904, column: 17, scope: !1145)
!1233 = !DILocation(line: 836, column: 8, scope: !1145)
!1234 = !DILocation(line: 837, column: 8, scope: !1145)
!1235 = !DILocation(line: 907, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 907, column: 7)
!1237 = !DILocation(line: 907, column: 7, scope: !1145)
!1238 = !DILocation(line: 908, column: 17, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !10, line: 907, column: 30)
!1240 = !DILocation(line: 910, column: 3, scope: !1239)
!1241 = !DILocation(line: 0, scope: !1145)
!1242 = !DILocation(line: 911, column: 19, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 911, column: 7)
!1244 = !DILocation(line: 911, column: 7, scope: !1145)
!1245 = !DILocation(line: 912, column: 17, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !10, line: 911, column: 30)
!1247 = !DILocation(line: 913, column: 21, scope: !1246)
!1248 = !DILocation(line: 914, column: 3, scope: !1246)
!1249 = !DILocation(line: 0, scope: !1239)
!1250 = !DILocation(line: 917, column: 53, scope: !1145)
!1251 = !DILocation(line: 917, column: 85, scope: !1145)
!1252 = !DILocation(line: 917, column: 9, scope: !1145)
!1253 = !DILocation(line: 918, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 918, column: 7)
!1255 = !DILocation(line: 918, column: 7, scope: !1145)
!1256 = !DILocation(line: 931, column: 40, scope: !1145)
!1257 = !DILocation(line: 931, column: 24, scope: !1145)
!1258 = !DILocation(line: 931, column: 8, scope: !1145)
!1259 = !DILocation(line: 931, column: 21, scope: !1145)
!1260 = !DILocation(line: 935, column: 22, scope: !1145)
!1261 = !DILocation(line: 935, column: 34, scope: !1145)
!1262 = !DILocation(line: 935, column: 42, scope: !1145)
!1263 = !DILocation(line: 935, column: 3, scope: !1145)
!1264 = !DILocation(line: 936, column: 13, scope: !1145)
!1265 = !DILocation(line: 937, column: 3, scope: !1145)
!1266 = !DILocation(line: 944, column: 40, scope: !1145)
!1267 = !DILocation(line: 944, column: 24, scope: !1145)
!1268 = !DILocation(line: 944, column: 21, scope: !1145)
!1269 = !DILocation(line: 969, column: 39, scope: !1145)
!1270 = !DILocation(line: 969, column: 24, scope: !1145)
!1271 = !DILocation(line: 969, column: 21, scope: !1145)
!1272 = !DILocation(line: 972, column: 21, scope: !1145)
!1273 = !DILocation(line: 972, column: 8, scope: !1145)
!1274 = !DILocation(line: 972, column: 13, scope: !1145)
!1275 = !DILocation(line: 973, column: 14, scope: !1145)
!1276 = !DILocation(line: 978, column: 12, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 978, column: 7)
!1278 = !DILocation(line: 978, column: 17, scope: !1277)
!1279 = !DILocation(line: 978, column: 7, scope: !1145)
!1280 = !DILocation(line: 979, column: 10, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !10, line: 978, column: 26)
!1282 = !DILocation(line: 979, column: 26, scope: !1281)
!1283 = !DILocation(line: 980, column: 3, scope: !1281)
!1284 = !DILocation(line: 985, column: 3, scope: !1145)
!1285 = !DILocation(line: 987, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 987, column: 3)
!1287 = !DILocation(line: 988, column: 7, scope: !1145)
!1288 = !DILocation(line: 989, column: 5, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !10, line: 988, column: 18)
!1290 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 988, column: 7)
!1291 = !DILocation(line: 990, column: 3, scope: !1289)
!1292 = !DILocation(line: 0, scope: !1289)
!1293 = !DILocation(line: 992, column: 3, scope: !1145)
!1294 = !DILocation(line: 0, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1176, file: !10, line: 849, column: 21)
!1296 = !DILocation(line: 993, column: 1, scope: !1145)
!1297 = distinct !DISubprogram(name: "tcp_send_fin", scope: !10, file: !10, line: 1004, type: !1298, isLocal: false, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1300)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!226, !231}
!1300 = !{!1301, !1302}
!1301 = !DILocalVariable(name: "pcb", arg: 1, scope: !1297, file: !10, line: 1004, type: !231)
!1302 = !DILocalVariable(name: "last_unsent", scope: !1303, file: !10, line: 1010, type: !185)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !10, line: 1009, column: 28)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !10, line: 1009, column: 7)
!1305 = !DILocation(line: 1004, column: 30, scope: !1297)
!1306 = !DILocation(line: 1006, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !10, line: 1006, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1297, file: !10, line: 1006, column: 3)
!1309 = !DILocation(line: 1006, column: 3, scope: !1308)
!1310 = !DILocation(line: 1006, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !10, line: 1006, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !10, line: 1006, column: 3)
!1313 = !DILocation(line: 1006, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !10, line: 1006, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !10, line: 1006, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !10, line: 1006, column: 3)
!1317 = !DILocation(line: 1009, column: 12, scope: !1304)
!1318 = !DILocation(line: 1009, column: 19, scope: !1304)
!1319 = !DILocation(line: 1009, column: 7, scope: !1297)
!1320 = !DILocation(line: 1010, column: 21, scope: !1303)
!1321 = !DILocation(line: 1011, column: 10, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1303, file: !10, line: 1011, column: 5)
!1323 = !DILocation(line: 1011, column: 50, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1322, file: !10, line: 1011, column: 5)
!1325 = !DILocation(line: 1011, column: 55, scope: !1324)
!1326 = !DILocation(line: 1011, column: 5, scope: !1322)
!1327 = !DILocation(line: 1011, column: 5, scope: !1324)
!1328 = distinct !{!1328, !1326, !1329}
!1329 = !DILocation(line: 1012, column: 42, scope: !1322)
!1330 = !DILocation(line: 0, scope: !1324)
!1331 = !DILocation(line: 1014, column: 10, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1303, file: !10, line: 1014, column: 9)
!1333 = !DILocation(line: 1014, column: 42, scope: !1332)
!1334 = !DILocation(line: 1014, column: 75, scope: !1332)
!1335 = !DILocation(line: 1014, column: 9, scope: !1303)
!1336 = !DILocation(line: 1016, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !10, line: 1014, column: 81)
!1338 = !DILocation(line: 1017, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !10, line: 1017, column: 7)
!1340 = !DILocation(line: 1018, column: 7, scope: !1337)
!1341 = !DILocation(line: 1020, column: 3, scope: !1304)
!1342 = !DILocation(line: 1022, column: 10, scope: !1297)
!1343 = !DILocation(line: 1022, column: 3, scope: !1297)
!1344 = !DILocation(line: 0, scope: !1337)
!1345 = !DILocation(line: 1023, column: 1, scope: !1297)
!1346 = distinct !DISubprogram(name: "tcp_enqueue_flags", scope: !10, file: !10, line: 1035, type: !1347, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!226, !231, !110}
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1350 = !DILocalVariable(name: "pcb", arg: 1, scope: !1346, file: !10, line: 1035, type: !231)
!1351 = !DILocalVariable(name: "flags", arg: 2, scope: !1346, file: !10, line: 1035, type: !110)
!1352 = !DILocalVariable(name: "p", scope: !1346, file: !10, line: 1037, type: !120)
!1353 = !DILocalVariable(name: "seg", scope: !1346, file: !10, line: 1038, type: !185)
!1354 = !DILocalVariable(name: "optflags", scope: !1346, file: !10, line: 1039, type: !110)
!1355 = !DILocalVariable(name: "optlen", scope: !1346, file: !10, line: 1040, type: !110)
!1356 = !DILocalVariable(name: "useg", scope: !1357, file: !10, line: 1106, type: !185)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 1105, column: 10)
!1358 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1103, column: 7)
!1359 = !DILocation(line: 1035, column: 35, scope: !1346)
!1360 = !DILocation(line: 1035, column: 45, scope: !1346)
!1361 = !DILocation(line: 1039, column: 8, scope: !1346)
!1362 = !DILocation(line: 1040, column: 8, scope: !1346)
!1363 = !DILocation(line: 1044, column: 3, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !10, line: 1044, column: 3)
!1365 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1044, column: 3)
!1366 = !DILocation(line: 1044, column: 3, scope: !1365)
!1367 = !DILocation(line: 1044, column: 3, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !10, line: 1044, column: 3)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !10, line: 1044, column: 3)
!1370 = !DILocation(line: 1044, column: 3, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !10, line: 1044, column: 3)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !10, line: 1044, column: 3)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !10, line: 1044, column: 3)
!1374 = !DILocation(line: 1046, column: 3, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !10, line: 1046, column: 3)
!1376 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1046, column: 3)
!1377 = !DILocation(line: 1046, column: 3, scope: !1376)
!1378 = !DILocation(line: 1046, column: 3, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !10, line: 1046, column: 3)
!1380 = distinct !DILexicalBlock(scope: !1375, file: !10, line: 1046, column: 3)
!1381 = !DILocation(line: 1046, column: 3, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !10, line: 1046, column: 3)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !10, line: 1046, column: 3)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !10, line: 1046, column: 3)
!1385 = !DILocation(line: 1052, column: 13, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1052, column: 7)
!1387 = !DILocation(line: 1052, column: 7, scope: !1346)
!1388 = !DILocation(line: 1055, column: 15, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !10, line: 1055, column: 9)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !10, line: 1052, column: 24)
!1391 = !DILocation(line: 1055, column: 21, scope: !1389)
!1392 = !DILocation(line: 1055, column: 34, scope: !1389)
!1393 = !DILocation(line: 1055, column: 43, scope: !1389)
!1394 = !DILocation(line: 1055, column: 49, scope: !1389)
!1395 = !DILocation(line: 1055, column: 9, scope: !1390)
!1396 = !DILocation(line: 1059, column: 5, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1389, file: !10, line: 1055, column: 66)
!1398 = !DILocation(line: 0, scope: !1346)
!1399 = !DILocation(line: 1076, column: 12, scope: !1346)
!1400 = !DILocation(line: 1079, column: 39, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1079, column: 7)
!1402 = !DILocation(line: 1079, column: 12, scope: !1401)
!1403 = !DILocation(line: 1037, column: 16, scope: !1346)
!1404 = !DILocation(line: 1079, column: 58, scope: !1401)
!1405 = !DILocation(line: 1079, column: 7, scope: !1346)
!1406 = !DILocation(line: 1080, column: 5, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !10, line: 1080, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1401, file: !10, line: 1079, column: 67)
!1409 = !DILocation(line: 1081, column: 5, scope: !1408)
!1410 = !DILocation(line: 1082, column: 5, scope: !1408)
!1411 = !DILocation(line: 1084, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !10, line: 1084, column: 3)
!1413 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1084, column: 3)
!1414 = !DILocation(line: 1084, column: 3, scope: !1413)
!1415 = !DILocation(line: 1084, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !10, line: 1084, column: 3)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !10, line: 1084, column: 3)
!1418 = !DILocation(line: 1084, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !10, line: 1084, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !10, line: 1084, column: 3)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !10, line: 1084, column: 3)
!1422 = !DILocation(line: 1088, column: 53, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1088, column: 7)
!1424 = !DILocation(line: 1088, column: 14, scope: !1423)
!1425 = !DILocation(line: 1038, column: 19, scope: !1346)
!1426 = !DILocation(line: 1088, column: 73, scope: !1423)
!1427 = !DILocation(line: 1088, column: 7, scope: !1346)
!1428 = !DILocation(line: 1089, column: 5, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !10, line: 1089, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1423, file: !10, line: 1088, column: 82)
!1431 = !DILocation(line: 1090, column: 5, scope: !1430)
!1432 = !DILocation(line: 1091, column: 5, scope: !1430)
!1433 = !DILocation(line: 1093, column: 3, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1093, column: 3)
!1435 = !DILocation(line: 1094, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !10, line: 1094, column: 3)
!1437 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1094, column: 3)
!1438 = !DILocation(line: 1094, column: 3, scope: !1437)
!1439 = !DILocation(line: 1094, column: 3, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !10, line: 1094, column: 3)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !10, line: 1094, column: 3)
!1442 = !DILocation(line: 1094, column: 3, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !10, line: 1094, column: 3)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !10, line: 1094, column: 3)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !10, line: 1094, column: 3)
!1446 = !DILocation(line: 1103, column: 12, scope: !1358)
!1447 = !DILocation(line: 1103, column: 19, scope: !1358)
!1448 = !DILocation(line: 1103, column: 7, scope: !1346)
!1449 = !DILocation(line: 1106, column: 21, scope: !1357)
!1450 = !DILocation(line: 1107, column: 10, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1357, file: !10, line: 1107, column: 5)
!1452 = !DILocation(line: 1107, column: 36, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !10, line: 1107, column: 5)
!1454 = !DILocation(line: 1107, column: 41, scope: !1453)
!1455 = !DILocation(line: 1107, column: 5, scope: !1451)
!1456 = !DILocation(line: 1107, column: 5, scope: !1453)
!1457 = distinct !{!1457, !1455, !1458}
!1458 = !DILocation(line: 1107, column: 68, scope: !1451)
!1459 = !DILocation(line: 1108, column: 16, scope: !1357)
!1460 = !DILocation(line: 0, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 1103, column: 28)
!1462 = !DILocation(line: 1112, column: 8, scope: !1346)
!1463 = !DILocation(line: 1112, column: 24, scope: !1346)
!1464 = !DILocation(line: 1116, column: 25, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1116, column: 7)
!1466 = !DILocation(line: 0, scope: !1465)
!1467 = !DILocation(line: 1116, column: 35, scope: !1465)
!1468 = !DILocation(line: 1116, column: 7, scope: !1346)
!1469 = !DILocation(line: 1117, column: 17, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1465, file: !10, line: 1116, column: 47)
!1471 = !DILocation(line: 1119, column: 3, scope: !1470)
!1472 = !DILocation(line: 1120, column: 7, scope: !1346)
!1473 = !DILocation(line: 1120, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1120, column: 7)
!1475 = !DILocation(line: 1121, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !10, line: 1121, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !10, line: 1120, column: 24)
!1478 = !DILocation(line: 1122, column: 3, scope: !1477)
!1479 = !DILocation(line: 0, scope: !1477)
!1480 = !DILocation(line: 1125, column: 39, scope: !1346)
!1481 = !DILocation(line: 1125, column: 24, scope: !1346)
!1482 = !DILocation(line: 1125, column: 8, scope: !1346)
!1483 = !DILocation(line: 1125, column: 21, scope: !1346)
!1484 = !DILocation(line: 1127, column: 25, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1346, file: !10, line: 1127, column: 7)
!1486 = !DILocation(line: 1127, column: 7, scope: !1346)
!1487 = !DILocation(line: 1128, column: 5, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !10, line: 1128, column: 5)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !10, line: 1128, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1485, file: !10, line: 1127, column: 31)
!1491 = !DILocation(line: 1128, column: 5, scope: !1489)
!1492 = !DILocation(line: 1128, column: 5, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !10, line: 1128, column: 5)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !10, line: 1128, column: 5)
!1495 = !DILocation(line: 1128, column: 5, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !10, line: 1128, column: 5)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !10, line: 1128, column: 5)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !10, line: 1128, column: 5)
!1499 = !DILocation(line: 0, scope: !1408)
!1500 = !DILocation(line: 1133, column: 1, scope: !1346)
!1501 = distinct !DISubprogram(name: "tcp_output", scope: !10, file: !10, line: 1240, type: !1298, isLocal: false, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1580, !1583}
!1503 = !DILocalVariable(name: "pcb", arg: 1, scope: !1501, file: !10, line: 1240, type: !231)
!1504 = !DILocalVariable(name: "seg", scope: !1501, file: !10, line: 1242, type: !185)
!1505 = !DILocalVariable(name: "useg", scope: !1501, file: !10, line: 1242, type: !185)
!1506 = !DILocalVariable(name: "wnd", scope: !1501, file: !10, line: 1243, type: !142)
!1507 = !DILocalVariable(name: "snd_nxt", scope: !1501, file: !10, line: 1243, type: !142)
!1508 = !DILocalVariable(name: "err", scope: !1501, file: !10, line: 1244, type: !226)
!1509 = !DILocalVariable(name: "netif", scope: !1501, file: !10, line: 1245, type: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !70, line: 260, size: 2240, elements: !1512)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1521, !1523, !1525, !1526, !1531, !1538, !1543, !1550, !1555, !1556, !1557, !1559, !1560, !1561, !1562, !1566, !1567, !1568, !1572, !1573, !1574, !1575}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1511, file: !70, line: 263, baseType: !1510, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1511, file: !70, line: 268, baseType: !147, size: 192, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1511, file: !70, line: 269, baseType: !147, size: 192, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1511, file: !70, line: 270, baseType: !147, size: 192, offset: 448)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1511, file: !70, line: 274, baseType: !1518, size: 576, offset: 640)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 576, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 3)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1511, file: !70, line: 277, baseType: !1522, size: 24, offset: 1216)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !1519)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1511, file: !70, line: 282, baseType: !1524, size: 96, offset: 1248)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 96, elements: !1519)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1511, file: !70, line: 283, baseType: !1524, size: 96, offset: 1344)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1511, file: !70, line: 288, baseType: !1527, size: 64, offset: 1472)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !70, line: 178, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!226, !120, !1510}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1511, file: !70, line: 294, baseType: !1532, size: 64, offset: 1536)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !70, line: 189, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!226, !1510, !120, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1511, file: !70, line: 299, baseType: !1539, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !70, line: 212, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!226, !1510, !120}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1511, file: !70, line: 305, baseType: !1544, size: 64, offset: 1664)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !70, line: 202, baseType: !1545)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!226, !1510, !120, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1511, file: !70, line: 310, baseType: !1551, size: 64, offset: 1728)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !70, line: 214, baseType: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !1510}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1511, file: !70, line: 319, baseType: !1551, size: 64, offset: 1792)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1511, file: !70, line: 323, baseType: !102, size: 64, offset: 1856)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1511, file: !70, line: 325, baseType: !1558, size: 64, offset: 1920)
!1558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !214)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1511, file: !70, line: 332, baseType: !103, size: 16, offset: 1984)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1511, file: !70, line: 335, baseType: !103, size: 16, offset: 2000)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1511, file: !70, line: 338, baseType: !103, size: 16, offset: 2016)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1511, file: !70, line: 341, baseType: !1563, size: 48, offset: 2032)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 48, elements: !1564)
!1564 = !{!1565}
!1565 = !DISubrange(count: 6)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1511, file: !70, line: 343, baseType: !110, size: 8, offset: 2080)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !70, line: 345, baseType: !110, size: 8, offset: 2088)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1511, file: !70, line: 347, baseType: !1569, size: 16, offset: 2096)
!1569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !1570)
!1570 = !{!1571}
!1571 = !DISubrange(count: 2)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1511, file: !70, line: 350, baseType: !110, size: 8, offset: 2112)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1511, file: !70, line: 353, baseType: !110, size: 8, offset: 2120)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1511, file: !70, line: 357, baseType: !110, size: 8, offset: 2128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1511, file: !70, line: 377, baseType: !1576, size: 64, offset: 2176)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !70, line: 222, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!226, !1510, !1548, !69}
!1580 = !DILocalVariable(name: "local_ip", scope: !1581, file: !10, line: 1300, type: !145)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !10, line: 1299, column: 38)
!1582 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1299, column: 7)
!1583 = !DILocalVariable(name: "cur_seg", scope: !1584, file: !10, line: 1394, type: !1591)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !10, line: 1392, column: 90)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !10, line: 1392, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !10, line: 1388, column: 14)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !10, line: 1384, column: 11)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !10, line: 1381, column: 30)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1381, column: 9)
!1590 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1336, column: 75)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1592 = !DILocation(line: 1240, column: 28, scope: !1501)
!1593 = !DILocation(line: 1252, column: 3, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !10, line: 1252, column: 3)
!1595 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1252, column: 3)
!1596 = !DILocation(line: 1252, column: 3, scope: !1595)
!1597 = !DILocation(line: 1252, column: 3, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !10, line: 1252, column: 3)
!1599 = distinct !DILexicalBlock(scope: !1594, file: !10, line: 1252, column: 3)
!1600 = !DILocation(line: 1252, column: 3, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !10, line: 1252, column: 3)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !10, line: 1252, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !10, line: 1252, column: 3)
!1604 = !DILocation(line: 1254, column: 3, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !10, line: 1254, column: 3)
!1606 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1254, column: 3)
!1607 = !DILocation(line: 1254, column: 3, scope: !1606)
!1608 = !DILocation(line: 1254, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !10, line: 1254, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !10, line: 1254, column: 3)
!1611 = !DILocation(line: 1254, column: 3, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !10, line: 1254, column: 3)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !10, line: 1254, column: 3)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !10, line: 1254, column: 3)
!1615 = !DILocation(line: 1261, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1261, column: 7)
!1617 = !DILocation(line: 1261, column: 21, scope: !1616)
!1618 = !DILocation(line: 1261, column: 7, scope: !1501)
!1619 = !DILocation(line: 1265, column: 9, scope: !1501)
!1620 = !{!412, !415, i64 160}
!1621 = !{!412, !415, i64 132}
!1622 = !DILocation(line: 1243, column: 9, scope: !1501)
!1623 = !DILocation(line: 1267, column: 14, scope: !1501)
!1624 = !DILocation(line: 1242, column: 19, scope: !1501)
!1625 = !DILocation(line: 1269, column: 11, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1269, column: 7)
!1627 = !DILocation(line: 1269, column: 7, scope: !1501)
!1628 = !DILocation(line: 1279, column: 14, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !10, line: 1279, column: 9)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !10, line: 1269, column: 20)
!1631 = !DILocation(line: 1279, column: 20, scope: !1629)
!1632 = !DILocation(line: 1279, column: 9, scope: !1630)
!1633 = !DILocation(line: 1280, column: 14, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !10, line: 1279, column: 34)
!1635 = !DILocation(line: 1280, column: 7, scope: !1634)
!1636 = !DILocation(line: 1293, column: 32, scope: !1501)
!1637 = !DILocation(line: 1293, column: 48, scope: !1501)
!1638 = !DILocalVariable(name: "pcb", arg: 1, scope: !1639, file: !10, line: 134, type: !945)
!1639 = distinct !DISubprogram(name: "tcp_route", scope: !10, file: !10, line: 134, type: !1640, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!1510, !945, !145, !145}
!1642 = !{!1638, !1643, !1644}
!1643 = !DILocalVariable(name: "src", arg: 2, scope: !1639, file: !10, line: 134, type: !145)
!1644 = !DILocalVariable(name: "dst", arg: 3, scope: !1639, file: !10, line: 134, type: !145)
!1645 = !DILocation(line: 134, column: 33, scope: !1639, inlinedAt: !1646)
!1646 = distinct !DILocation(line: 1293, column: 11, scope: !1501)
!1647 = !DILocation(line: 134, column: 55, scope: !1639, inlinedAt: !1646)
!1648 = !DILocation(line: 134, column: 77, scope: !1639, inlinedAt: !1646)
!1649 = !DILocation(line: 138, column: 21, scope: !1650, inlinedAt: !1646)
!1650 = distinct !DILexicalBlock(scope: !1639, file: !10, line: 138, column: 7)
!1651 = !DILocation(line: 138, column: 30, scope: !1650, inlinedAt: !1646)
!1652 = !{!412, !395, i64 48}
!1653 = !DILocation(line: 138, column: 40, scope: !1650, inlinedAt: !1646)
!1654 = !DILocation(line: 138, column: 7, scope: !1639, inlinedAt: !1646)
!1655 = !DILocation(line: 139, column: 12, scope: !1656, inlinedAt: !1646)
!1656 = distinct !DILexicalBlock(scope: !1650, file: !10, line: 138, column: 60)
!1657 = !DILocation(line: 139, column: 5, scope: !1656, inlinedAt: !1646)
!1658 = !DILocation(line: 141, column: 12, scope: !1659, inlinedAt: !1646)
!1659 = distinct !DILexicalBlock(scope: !1650, file: !10, line: 140, column: 10)
!1660 = !{!413, !395, i64 20}
!1661 = !DILocation(line: 141, column: 5, scope: !1659, inlinedAt: !1646)
!1662 = !DILocation(line: 0, scope: !1659, inlinedAt: !1646)
!1663 = !DILocation(line: 0, scope: !1501)
!1664 = !DILocation(line: 143, column: 1, scope: !1639, inlinedAt: !1646)
!1665 = !DILocation(line: 1245, column: 17, scope: !1501)
!1666 = !DILocation(line: 1294, column: 13, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1294, column: 7)
!1668 = !DILocation(line: 1294, column: 7, scope: !1501)
!1669 = !DILocation(line: 1299, column: 7, scope: !1582)
!1670 = !{!412, !395, i64 20}
!1671 = !DILocation(line: 1299, column: 7, scope: !1501)
!1672 = !{!395, !395, i64 0}
!1673 = !DILocation(line: 1300, column: 33, scope: !1581)
!1674 = !{!412, !395, i64 44}
!1675 = !DILocation(line: 1300, column: 22, scope: !1581)
!1676 = !DILocation(line: 1301, column: 9, scope: !1581)
!1677 = !DILocation(line: 1301, column: 18, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1581, file: !10, line: 1301, column: 9)
!1679 = !DILocation(line: 1302, column: 7, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1678, file: !10, line: 1301, column: 27)
!1681 = !DILocation(line: 1304, column: 5, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !10, line: 1304, column: 5)
!1683 = distinct !DILexicalBlock(scope: !1581, file: !10, line: 1304, column: 5)
!1684 = !DILocation(line: 1304, column: 5, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1683, file: !10, line: 1304, column: 5)
!1686 = !DILocation(line: 1304, column: 5, scope: !1683)
!1687 = !DILocation(line: 1304, column: 5, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !10, line: 1304, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !10, line: 1304, column: 5)
!1690 = !DILocation(line: 1304, column: 5, scope: !1689)
!1691 = !DILocation(line: 1304, column: 5, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !10, line: 1304, column: 5)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !10, line: 1304, column: 5)
!1694 = !DILocation(line: 1305, column: 3, scope: !1582)
!1695 = !DILocation(line: 1308, column: 7, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1308, column: 7)
!1697 = !DILocation(line: 1308, column: 45, scope: !1696)
!1698 = !{!412, !415, i64 128}
!1699 = !DILocation(line: 1308, column: 38, scope: !1696)
!1700 = !DILocation(line: 1308, column: 60, scope: !1696)
!1701 = !DILocation(line: 1308, column: 55, scope: !1696)
!1702 = !DILocation(line: 1308, column: 53, scope: !1696)
!1703 = !DILocation(line: 1308, column: 64, scope: !1696)
!1704 = !DILocation(line: 1308, column: 7, scope: !1501)
!1705 = !DILocation(line: 1315, column: 21, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1315, column: 9)
!1707 = distinct !DILexicalBlock(scope: !1696, file: !10, line: 1308, column: 71)
!1708 = !DILocation(line: 1315, column: 13, scope: !1706)
!1709 = !DILocation(line: 1315, column: 29, scope: !1706)
!1710 = !DILocation(line: 1315, column: 37, scope: !1706)
!1711 = !DILocation(line: 1315, column: 45, scope: !1706)
!1712 = !DILocation(line: 1315, column: 53, scope: !1706)
!1713 = !DILocation(line: 1315, column: 61, scope: !1706)
!1714 = !{!412, !395, i64 269}
!1715 = !DILocation(line: 1315, column: 77, scope: !1706)
!1716 = !DILocation(line: 1315, column: 9, scope: !1707)
!1717 = !DILocation(line: 1316, column: 12, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1706, file: !10, line: 1315, column: 83)
!1719 = !DILocation(line: 1316, column: 24, scope: !1718)
!1720 = !{!412, !395, i64 268}
!1721 = !DILocation(line: 1317, column: 28, scope: !1718)
!1722 = !DILocation(line: 1318, column: 12, scope: !1718)
!1723 = !DILocation(line: 1318, column: 26, scope: !1718)
!1724 = !{!412, !395, i64 270}
!1725 = !DILocation(line: 1319, column: 5, scope: !1718)
!1726 = !DILocation(line: 1321, column: 14, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1321, column: 9)
!1728 = !DILocation(line: 1321, column: 20, scope: !1727)
!1729 = !DILocation(line: 1321, column: 9, scope: !1707)
!1730 = !DILocation(line: 1322, column: 14, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !10, line: 1321, column: 34)
!1732 = !DILocation(line: 1322, column: 7, scope: !1731)
!1733 = !DILocation(line: 1327, column: 8, scope: !1501)
!1734 = !DILocation(line: 1327, column: 24, scope: !1501)
!1735 = !DILocation(line: 1330, column: 15, scope: !1501)
!1736 = !DILocation(line: 1242, column: 25, scope: !1501)
!1737 = !DILocation(line: 1331, column: 12, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1331, column: 7)
!1739 = !DILocation(line: 1331, column: 7, scope: !1501)
!1740 = !DILocation(line: 1332, column: 18, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !10, line: 1332, column: 5)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !10, line: 1332, column: 5)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !10, line: 1331, column: 21)
!1744 = !DILocation(line: 1332, column: 23, scope: !1741)
!1745 = !DILocation(line: 1332, column: 5, scope: !1742)
!1746 = !DILocation(line: 1332, column: 5, scope: !1741)
!1747 = distinct !{!1747, !1745, !1748}
!1748 = !DILocation(line: 1332, column: 50, scope: !1742)
!1749 = !DILocation(line: 1330, column: 8, scope: !1501)
!1750 = !DILocation(line: 1335, column: 3, scope: !1501)
!1751 = !DILocation(line: 1335, column: 22, scope: !1501)
!1752 = !DILocation(line: 1336, column: 10, scope: !1501)
!1753 = !DILocation(line: 1336, column: 48, scope: !1501)
!1754 = !DILocation(line: 1336, column: 41, scope: !1501)
!1755 = !DILocation(line: 1336, column: 63, scope: !1501)
!1756 = !DILocation(line: 1336, column: 58, scope: !1501)
!1757 = !DILocation(line: 1336, column: 56, scope: !1501)
!1758 = !DILocation(line: 1336, column: 67, scope: !1501)
!1759 = !DILocation(line: 1337, column: 5, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !10, line: 1337, column: 5)
!1761 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1337, column: 5)
!1762 = !DILocation(line: 1337, column: 5, scope: !1761)
!1763 = !DILocation(line: 1337, column: 5, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !10, line: 1337, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1760, file: !10, line: 1337, column: 5)
!1766 = !DILocation(line: 1337, column: 5, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !10, line: 1337, column: 5)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !10, line: 1337, column: 5)
!1769 = distinct !DILexicalBlock(scope: !1764, file: !10, line: 1337, column: 5)
!1770 = !DILocation(line: 1346, column: 10, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1346, column: 9)
!1772 = !DILocation(line: 1346, column: 41, scope: !1771)
!1773 = !DILocation(line: 1347, column: 22, scope: !1771)
!1774 = !DILocation(line: 1347, column: 51, scope: !1771)
!1775 = !DILocation(line: 1346, column: 9, scope: !1590)
!1776 = !DILocation(line: 1359, column: 14, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1359, column: 9)
!1778 = !DILocation(line: 1359, column: 20, scope: !1777)
!1779 = !DILocation(line: 1359, column: 9, scope: !1590)
!1780 = !DILocation(line: 1360, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1777, file: !10, line: 1359, column: 33)
!1782 = !DILocation(line: 1361, column: 5, scope: !1781)
!1783 = !DILocalVariable(name: "seg", arg: 1, scope: !1784, file: !10, line: 1458, type: !185)
!1784 = distinct !DISubprogram(name: "tcp_output_segment", scope: !10, file: !10, line: 1458, type: !1785, isLocal: true, isDefinition: true, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!226, !185, !231, !1510}
!1787 = !{!1783, !1788, !1789, !1790, !1791, !1792, !1793}
!1788 = !DILocalVariable(name: "pcb", arg: 2, scope: !1784, file: !10, line: 1458, type: !231)
!1789 = !DILocalVariable(name: "netif", arg: 3, scope: !1784, file: !10, line: 1458, type: !1510)
!1790 = !DILocalVariable(name: "err", scope: !1784, file: !10, line: 1460, type: !226)
!1791 = !DILocalVariable(name: "len", scope: !1784, file: !10, line: 1461, type: !103)
!1792 = !DILocalVariable(name: "opts", scope: !1784, file: !10, line: 1462, type: !194)
!1793 = !DILocalVariable(name: "mss", scope: !1794, file: !10, line: 1501, type: !103)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !10, line: 1500, column: 37)
!1795 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1500, column: 7)
!1796 = !DILocation(line: 1458, column: 36, scope: !1784, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 1363, column: 11, scope: !1590)
!1798 = !DILocation(line: 1458, column: 57, scope: !1784, inlinedAt: !1797)
!1799 = !DILocation(line: 1458, column: 76, scope: !1784, inlinedAt: !1797)
!1800 = !DILocation(line: 1467, column: 3, scope: !1801, inlinedAt: !1797)
!1801 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1467, column: 3)
!1802 = !DILocation(line: 1468, column: 3, scope: !1803, inlinedAt: !1797)
!1803 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1468, column: 3)
!1804 = !DILocation(line: 1469, column: 3, scope: !1805, inlinedAt: !1797)
!1805 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1469, column: 3)
!1806 = !DILocalVariable(name: "seg", arg: 1, scope: !1807, file: !10, line: 1435, type: !1810)
!1807 = distinct !DISubprogram(name: "tcp_output_segment_busy", scope: !10, file: !10, line: 1435, type: !1808, isLocal: true, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1812)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!36, !1810}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1812 = !{!1806}
!1813 = !DILocation(line: 1435, column: 47, scope: !1807, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 1471, column: 7, scope: !1815, inlinedAt: !1797)
!1815 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1471, column: 7)
!1816 = !DILocation(line: 1437, column: 3, scope: !1817, inlinedAt: !1814)
!1817 = distinct !DILexicalBlock(scope: !1807, file: !10, line: 1437, column: 3)
!1818 = !DILocation(line: 1442, column: 12, scope: !1819, inlinedAt: !1814)
!1819 = distinct !DILexicalBlock(scope: !1807, file: !10, line: 1442, column: 7)
!1820 = !DILocation(line: 1442, column: 15, scope: !1819, inlinedAt: !1814)
!1821 = !{!605, !395, i64 22}
!1822 = !DILocation(line: 1442, column: 19, scope: !1819, inlinedAt: !1814)
!1823 = !DILocation(line: 1442, column: 7, scope: !1807, inlinedAt: !1814)
!1824 = !DILocation(line: 0, scope: !1825, inlinedAt: !1814)
!1825 = distinct !DILexicalBlock(scope: !1819, file: !10, line: 1442, column: 25)
!1826 = !DILocation(line: 1448, column: 1, scope: !1807, inlinedAt: !1814)
!1827 = !DILocation(line: 1471, column: 7, scope: !1784, inlinedAt: !1797)
!1828 = !DILocation(line: 1475, column: 5, scope: !1829, inlinedAt: !1797)
!1829 = distinct !DILexicalBlock(scope: !1815, file: !10, line: 1471, column: 37)
!1830 = !DILocation(line: 1624, column: 1, scope: !1784, inlinedAt: !1797)
!1831 = !DILocation(line: 1244, column: 9, scope: !1501)
!1832 = !DILocation(line: 1364, column: 9, scope: !1590)
!1833 = !DILocation(line: 1480, column: 40, scope: !1784, inlinedAt: !1797)
!1834 = !{!412, !415, i64 92}
!1835 = !DILocation(line: 1480, column: 24, scope: !1784, inlinedAt: !1797)
!1836 = !DILocation(line: 1480, column: 8, scope: !1784, inlinedAt: !1797)
!1837 = !DILocation(line: 1480, column: 16, scope: !1784, inlinedAt: !1797)
!1838 = !DILocation(line: 1480, column: 22, scope: !1784, inlinedAt: !1797)
!1839 = !{!895, !415, i64 8}
!1840 = !DILocation(line: 1484, column: 12, scope: !1841, inlinedAt: !1797)
!1841 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1484, column: 7)
!1842 = !DILocation(line: 1484, column: 18, scope: !1841, inlinedAt: !1797)
!1843 = !DILocation(line: 0, scope: !1844, inlinedAt: !1797)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !10, line: 1490, column: 3)
!1845 = !{!412, !415, i64 100}
!1846 = !DILocation(line: 1484, column: 7, scope: !1784, inlinedAt: !1797)
!1847 = !DILocation(line: 1487, column: 35, scope: !1848, inlinedAt: !1797)
!1848 = distinct !DILexicalBlock(scope: !1841, file: !10, line: 1484, column: 43)
!1849 = !DILocation(line: 1491, column: 35, scope: !1844, inlinedAt: !1797)
!1850 = !{!412, !395, i64 273}
!1851 = !DILocation(line: 0, scope: !1590)
!1852 = !{!895, !394, i64 14}
!1853 = !DILocation(line: 1494, column: 34, scope: !1784, inlinedAt: !1797)
!1854 = !DILocation(line: 1494, column: 49, scope: !1784, inlinedAt: !1797)
!1855 = !DILocation(line: 1494, column: 42, scope: !1784, inlinedAt: !1797)
!1856 = !DILocation(line: 1494, column: 27, scope: !1784, inlinedAt: !1797)
!1857 = !{!412, !415, i64 104}
!1858 = !DILocation(line: 1499, column: 40, scope: !1784, inlinedAt: !1797)
!1859 = !DILocation(line: 1499, column: 10, scope: !1784, inlinedAt: !1797)
!1860 = !DILocation(line: 1462, column: 10, scope: !1784, inlinedAt: !1797)
!1861 = !DILocation(line: 1500, column: 12, scope: !1795, inlinedAt: !1797)
!1862 = !DILocation(line: 1500, column: 18, scope: !1795, inlinedAt: !1797)
!1863 = !DILocation(line: 1500, column: 7, scope: !1784, inlinedAt: !1797)
!1864 = !DILocation(line: 1503, column: 11, scope: !1794, inlinedAt: !1797)
!1865 = !DILocation(line: 1501, column: 11, scope: !1794, inlinedAt: !1797)
!1866 = !DILocation(line: 1507, column: 13, scope: !1794, inlinedAt: !1797)
!1867 = !DILocation(line: 1507, column: 11, scope: !1794, inlinedAt: !1797)
!1868 = !{!415, !415, i64 0}
!1869 = !DILocation(line: 1508, column: 10, scope: !1794, inlinedAt: !1797)
!1870 = !DILocation(line: 1509, column: 3, scope: !1794, inlinedAt: !1797)
!1871 = !DILocation(line: 1519, column: 12, scope: !1872, inlinedAt: !1797)
!1872 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1519, column: 7)
!1873 = !DILocation(line: 0, scope: !1784, inlinedAt: !1797)
!1874 = !DILocation(line: 1519, column: 18, scope: !1872, inlinedAt: !1797)
!1875 = !DILocation(line: 1519, column: 7, scope: !1784, inlinedAt: !1797)
!1876 = !DILocalVariable(name: "opts", arg: 1, scope: !1877, file: !10, line: 1222, type: !194)
!1877 = distinct !DISubprogram(name: "tcp_build_wnd_scale_option", scope: !10, file: !10, line: 1222, type: !1878, isLocal: true, isDefinition: true, scopeLine: 1223, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1880)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !194}
!1880 = !{!1876}
!1881 = !DILocation(line: 1222, column: 35, scope: !1877, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 1520, column: 5, scope: !1883, inlinedAt: !1797)
!1883 = distinct !DILexicalBlock(scope: !1872, file: !10, line: 1519, column: 43)
!1884 = !DILocation(line: 1224, column: 3, scope: !1885, inlinedAt: !1882)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !10, line: 1224, column: 3)
!1886 = !DILocation(line: 1227, column: 11, scope: !1877, inlinedAt: !1882)
!1887 = !DILocation(line: 1228, column: 1, scope: !1877, inlinedAt: !1882)
!1888 = !DILocation(line: 1521, column: 10, scope: !1883, inlinedAt: !1797)
!1889 = !DILocation(line: 1522, column: 3, scope: !1883, inlinedAt: !1797)
!1890 = !DILocation(line: 0, scope: !1794, inlinedAt: !1797)
!1891 = !DILocation(line: 1537, column: 12, scope: !1892, inlinedAt: !1797)
!1892 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1537, column: 7)
!1893 = !{!412, !394, i64 108}
!1894 = !DILocation(line: 1537, column: 18, scope: !1892, inlinedAt: !1797)
!1895 = !DILocation(line: 1537, column: 7, scope: !1784, inlinedAt: !1797)
!1896 = !DILocation(line: 1538, column: 16, scope: !1897, inlinedAt: !1797)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !10, line: 1537, column: 23)
!1898 = !DILocation(line: 1539, column: 3, scope: !1897, inlinedAt: !1797)
!1899 = !DILocation(line: 1541, column: 12, scope: !1900, inlinedAt: !1797)
!1900 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1541, column: 7)
!1901 = !{!412, !415, i64 112}
!1902 = !DILocation(line: 1541, column: 19, scope: !1900, inlinedAt: !1797)
!1903 = !DILocation(line: 1541, column: 7, scope: !1784, inlinedAt: !1797)
!1904 = !DILocation(line: 1542, column: 19, scope: !1905, inlinedAt: !1797)
!1905 = distinct !DILexicalBlock(scope: !1900, file: !10, line: 1541, column: 25)
!1906 = !DILocation(line: 1542, column: 17, scope: !1905, inlinedAt: !1797)
!1907 = !DILocation(line: 1543, column: 18, scope: !1905, inlinedAt: !1797)
!1908 = !DILocation(line: 1543, column: 16, scope: !1905, inlinedAt: !1797)
!1909 = !{!412, !415, i64 116}
!1910 = !DILocation(line: 1546, column: 3, scope: !1905, inlinedAt: !1797)
!1911 = !DILocation(line: 1567, column: 3, scope: !1912, inlinedAt: !1797)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !10, line: 1567, column: 3)
!1913 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1567, column: 3)
!1914 = !DILocation(line: 1551, column: 30, scope: !1784, inlinedAt: !1797)
!1915 = !DILocation(line: 1551, column: 52, scope: !1784, inlinedAt: !1797)
!1916 = !DILocation(line: 1551, column: 55, scope: !1784, inlinedAt: !1797)
!1917 = !DILocation(line: 1551, column: 37, scope: !1784, inlinedAt: !1797)
!1918 = !DILocation(line: 1551, column: 9, scope: !1784, inlinedAt: !1797)
!1919 = !DILocation(line: 1557, column: 11, scope: !1784, inlinedAt: !1797)
!1920 = !DILocation(line: 1557, column: 15, scope: !1784, inlinedAt: !1797)
!1921 = !DILocation(line: 1558, column: 11, scope: !1784, inlinedAt: !1797)
!1922 = !DILocation(line: 1558, column: 19, scope: !1784, inlinedAt: !1797)
!1923 = !DILocation(line: 1560, column: 19, scope: !1784, inlinedAt: !1797)
!1924 = !DILocation(line: 1562, column: 8, scope: !1784, inlinedAt: !1797)
!1925 = !DILocation(line: 1562, column: 16, scope: !1784, inlinedAt: !1797)
!1926 = !DILocation(line: 1562, column: 23, scope: !1784, inlinedAt: !1797)
!1927 = !{!895, !394, i64 16}
!1928 = !DILocation(line: 1567, column: 3, scope: !1913, inlinedAt: !1797)
!1929 = !DILocation(line: 1567, column: 3, scope: !1930, inlinedAt: !1797)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !10, line: 1567, column: 3)
!1931 = distinct !DILexicalBlock(scope: !1912, file: !10, line: 1567, column: 3)
!1932 = !DILocation(line: 1567, column: 3, scope: !1933, inlinedAt: !1797)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 1567, column: 3)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !10, line: 1567, column: 3)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !10, line: 1567, column: 3)
!1936 = !DILocation(line: 1570, column: 3, scope: !1937, inlinedAt: !1797)
!1937 = distinct !DILexicalBlock(scope: !1784, file: !10, line: 1570, column: 3)
!1938 = !{!1939, !394, i64 248}
!1939 = !{!"netif", !414, i64 0, !413, i64 8, !413, i64 32, !413, i64 56, !395, i64 80, !395, i64 152, !395, i64 156, !395, i64 168, !414, i64 184, !414, i64 192, !414, i64 200, !414, i64 208, !414, i64 216, !414, i64 224, !414, i64 232, !395, i64 240, !394, i64 248, !394, i64 250, !394, i64 252, !395, i64 254, !395, i64 260, !395, i64 261, !395, i64 262, !395, i64 264, !395, i64 265, !395, i64 266, !414, i64 272}
!1940 = !DILocation(line: 1570, column: 3, scope: !1784, inlinedAt: !1797)
!1941 = !DILocation(line: 1602, column: 27, scope: !1942, inlinedAt: !1797)
!1942 = distinct !DILexicalBlock(scope: !1937, file: !10, line: 1570, column: 61)
!1943 = !DILocation(line: 1602, column: 10, scope: !1942, inlinedAt: !1797)
!1944 = !DILocation(line: 1602, column: 18, scope: !1942, inlinedAt: !1797)
!1945 = !DILocation(line: 1602, column: 25, scope: !1942, inlinedAt: !1797)
!1946 = !DILocation(line: 1605, column: 3, scope: !1942, inlinedAt: !1797)
!1947 = !DILocation(line: 1610, column: 9, scope: !1784, inlinedAt: !1797)
!1948 = !DILocation(line: 1607, column: 3, scope: !1784, inlinedAt: !1797)
!1949 = !{!472, !394, i64 144}
!1950 = !{!412, !395, i64 51}
!1951 = !{!412, !395, i64 50}
!1952 = !DILocation(line: 1460, column: 9, scope: !1784, inlinedAt: !1797)
!1953 = !DILocation(line: 1623, column: 3, scope: !1784, inlinedAt: !1797)
!1954 = !DILocation(line: 1364, column: 13, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1364, column: 9)
!1956 = !DILocation(line: 1366, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !10, line: 1366, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1955, file: !10, line: 1364, column: 24)
!1959 = !DILocation(line: 1367, column: 7, scope: !1958)
!1960 = !DILocation(line: 1372, column: 24, scope: !1590)
!1961 = !DILocation(line: 1372, column: 17, scope: !1590)
!1962 = !DILocation(line: 1373, column: 14, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1373, column: 9)
!1964 = !DILocation(line: 1373, column: 20, scope: !1963)
!1965 = !DILocation(line: 1373, column: 9, scope: !1590)
!1966 = !DILocation(line: 1374, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !10, line: 1374, column: 7)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !10, line: 1373, column: 33)
!1969 = !DILocation(line: 1375, column: 5, scope: !1968)
!1970 = !DILocation(line: 1376, column: 15, scope: !1590)
!1971 = !DILocation(line: 1376, column: 48, scope: !1590)
!1972 = !DILocation(line: 1376, column: 46, scope: !1590)
!1973 = !DILocation(line: 1243, column: 14, scope: !1501)
!1974 = !DILocation(line: 1377, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1590, file: !10, line: 1377, column: 9)
!1976 = !{!412, !415, i64 144}
!1977 = !DILocation(line: 1377, column: 9, scope: !1590)
!1978 = !DILocation(line: 1378, column: 20, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1975, file: !10, line: 1377, column: 44)
!1980 = !DILocation(line: 1379, column: 5, scope: !1979)
!1981 = !DILocation(line: 1381, column: 9, scope: !1589)
!1982 = !DILocation(line: 1381, column: 25, scope: !1589)
!1983 = !DILocation(line: 1381, column: 9, scope: !1590)
!1984 = !DILocation(line: 1382, column: 17, scope: !1588)
!1985 = !DILocation(line: 1384, column: 16, scope: !1587)
!1986 = !DILocation(line: 1384, column: 24, scope: !1587)
!1987 = !DILocation(line: 1384, column: 11, scope: !1588)
!1988 = !DILocation(line: 1385, column: 22, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1587, file: !10, line: 1384, column: 33)
!1990 = !DILocation(line: 1388, column: 7, scope: !1989)
!1991 = !DILocation(line: 1392, column: 13, scope: !1585)
!1992 = !DILocation(line: 1392, column: 13, scope: !1586)
!1993 = !DILocation(line: 1394, column: 28, scope: !1584)
!1994 = !DILocation(line: 1395, column: 11, scope: !1584)
!1995 = !DILocation(line: 1395, column: 18, scope: !1584)
!1996 = !DILocation(line: 1395, column: 27, scope: !1584)
!1997 = !DILocation(line: 0, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1584, file: !10, line: 1396, column: 101)
!1999 = !DILocation(line: 1396, column: 18, scope: !1584)
!2000 = !DILocation(line: 0, scope: !1584)
!2001 = !DILocation(line: 1397, column: 37, scope: !1998)
!2002 = distinct !{!2002, !1994, !2003}
!2003 = !DILocation(line: 1398, column: 11, scope: !1584)
!2004 = !DILocation(line: 1399, column: 21, scope: !1584)
!2005 = !DILocation(line: 1400, column: 22, scope: !1584)
!2006 = !DILocation(line: 1401, column: 9, scope: !1584)
!2007 = !DILocation(line: 1403, column: 17, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1585, file: !10, line: 1401, column: 16)
!2009 = !DILocation(line: 1403, column: 22, scope: !2008)
!2010 = !DILocation(line: 1409, column: 7, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1589, file: !10, line: 1408, column: 12)
!2012 = !DILocation(line: 1411, column: 16, scope: !1590)
!2013 = !DILocation(line: 1335, column: 14, scope: !1501)
!2014 = distinct !{!2014, !1750, !2015}
!2015 = !DILocation(line: 1412, column: 3, scope: !1501)
!2016 = !DILocation(line: 1414, column: 7, scope: !1501)
!2017 = !DILocation(line: 1414, column: 12, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1414, column: 7)
!2019 = !DILocation(line: 1414, column: 19, scope: !2018)
!2020 = !DILocation(line: 1416, column: 10, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !10, line: 1414, column: 28)
!2022 = !DILocation(line: 1416, column: 26, scope: !2021)
!2023 = !DILocation(line: 1417, column: 3, scope: !2021)
!2024 = !DILocation(line: 1421, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1501, file: !10, line: 1421, column: 3)
!2026 = !DILocation(line: 1422, column: 3, scope: !1501)
!2027 = !DILocation(line: 1423, column: 1, scope: !1501)
!2028 = !DILocation(line: 0, scope: !1680)
!2029 = distinct !DISubprogram(name: "tcp_send_empty_ack", scope: !10, file: !10, line: 2022, type: !1298, isLocal: false, isDefinition: true, scopeLine: 2023, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2030)
!2030 = !{!2031, !2032, !2033, !2034, !2035, !2036}
!2031 = !DILocalVariable(name: "pcb", arg: 1, scope: !2029, file: !10, line: 2022, type: !231)
!2032 = !DILocalVariable(name: "err", scope: !2029, file: !10, line: 2024, type: !226)
!2033 = !DILocalVariable(name: "p", scope: !2029, file: !10, line: 2025, type: !120)
!2034 = !DILocalVariable(name: "optlen", scope: !2029, file: !10, line: 2026, type: !110)
!2035 = !DILocalVariable(name: "optflags", scope: !2029, file: !10, line: 2026, type: !110)
!2036 = !DILocalVariable(name: "num_sacks", scope: !2029, file: !10, line: 2027, type: !110)
!2037 = !DILocation(line: 2022, column: 36, scope: !2029)
!2038 = !DILocation(line: 2026, column: 16, scope: !2029)
!2039 = !DILocation(line: 2027, column: 8, scope: !2029)
!2040 = !DILocation(line: 2029, column: 3, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !10, line: 2029, column: 3)
!2042 = distinct !DILexicalBlock(scope: !2029, file: !10, line: 2029, column: 3)
!2043 = !DILocation(line: 2029, column: 3, scope: !2042)
!2044 = !DILocation(line: 2029, column: 3, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !10, line: 2029, column: 3)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !10, line: 2029, column: 3)
!2047 = !DILocation(line: 2029, column: 3, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !10, line: 2029, column: 3)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !10, line: 2029, column: 3)
!2050 = distinct !DILexicalBlock(scope: !2045, file: !10, line: 2029, column: 3)
!2051 = !DILocation(line: 2026, column: 8, scope: !2029)
!2052 = !DILocation(line: 2045, column: 63, scope: !2029)
!2053 = !DILocation(line: 2045, column: 47, scope: !2029)
!2054 = !DILocalVariable(name: "pcb", arg: 1, scope: !2055, file: !10, line: 1856, type: !231)
!2055 = distinct !DISubprogram(name: "tcp_output_alloc_header", scope: !10, file: !10, line: 1856, type: !2056, isLocal: true, isDefinition: true, scopeLine: 1858, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2058)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!120, !231, !103, !103, !142}
!2058 = !{!2054, !2059, !2060, !2061, !2062}
!2059 = !DILocalVariable(name: "optlen", arg: 2, scope: !2055, file: !10, line: 1856, type: !103)
!2060 = !DILocalVariable(name: "datalen", arg: 3, scope: !2055, file: !10, line: 1856, type: !103)
!2061 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !2055, file: !10, line: 1857, type: !142)
!2062 = !DILocalVariable(name: "p", scope: !2055, file: !10, line: 1859, type: !120)
!2063 = !DILocation(line: 1856, column: 41, scope: !2055, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 2045, column: 7, scope: !2029)
!2065 = !DILocation(line: 1856, column: 52, scope: !2055, inlinedAt: !2064)
!2066 = !DILocation(line: 1856, column: 66, scope: !2055, inlinedAt: !2064)
!2067 = !DILocation(line: 1857, column: 31, scope: !2055, inlinedAt: !2064)
!2068 = !DILocation(line: 1861, column: 3, scope: !2069, inlinedAt: !2064)
!2069 = distinct !DILexicalBlock(scope: !2055, file: !10, line: 1861, column: 3)
!2070 = !DILocation(line: 1863, column: 43, scope: !2055, inlinedAt: !2064)
!2071 = !DILocation(line: 1864, column: 20, scope: !2055, inlinedAt: !2064)
!2072 = !DILocation(line: 1864, column: 37, scope: !2055, inlinedAt: !2064)
!2073 = !DILocation(line: 1865, column: 5, scope: !2055, inlinedAt: !2064)
!2074 = !DILocation(line: 1863, column: 7, scope: !2055, inlinedAt: !2064)
!2075 = !DILocation(line: 1859, column: 16, scope: !2055, inlinedAt: !2064)
!2076 = !DILocation(line: 1866, column: 9, scope: !2077, inlinedAt: !2064)
!2077 = distinct !DILexicalBlock(scope: !2055, file: !10, line: 1866, column: 7)
!2078 = !DILocation(line: 1866, column: 7, scope: !2055, inlinedAt: !2064)
!2079 = !DILocation(line: 1870, column: 3, scope: !2055, inlinedAt: !2064)
!2080 = !DILocation(line: 2025, column: 16, scope: !2029)
!2081 = !DILocation(line: 2046, column: 7, scope: !2029)
!2082 = !DILocation(line: 2048, column: 5, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !10, line: 2048, column: 5)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !10, line: 2046, column: 18)
!2085 = distinct !DILexicalBlock(scope: !2029, file: !10, line: 2046, column: 7)
!2086 = !DILocation(line: 2050, column: 5, scope: !2084)
!2087 = !DILocation(line: 1868, column: 36, scope: !2088, inlinedAt: !2064)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !10, line: 1866, column: 18)
!2089 = !DILocation(line: 1868, column: 51, scope: !2088, inlinedAt: !2064)
!2090 = !DILocation(line: 1868, column: 44, scope: !2088, inlinedAt: !2064)
!2091 = !DILocation(line: 1868, column: 10, scope: !2088, inlinedAt: !2064)
!2092 = !DILocation(line: 1868, column: 29, scope: !2088, inlinedAt: !2064)
!2093 = !DILocation(line: 1869, column: 3, scope: !2088, inlinedAt: !2064)
!2094 = !DILocalVariable(name: "pcb", arg: 1, scope: !2095, file: !10, line: 1875, type: !945)
!2095 = distinct !DISubprogram(name: "tcp_output_fill_options", scope: !10, file: !10, line: 1875, type: !2096, isLocal: true, isDefinition: true, scopeLine: 1876, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{null, !945, !120, !110, !110}
!2098 = !{!2094, !2099, !2100, !2101, !2102, !2103, !2104}
!2099 = !DILocalVariable(name: "p", arg: 2, scope: !2095, file: !10, line: 1875, type: !120)
!2100 = !DILocalVariable(name: "optflags", arg: 3, scope: !2095, file: !10, line: 1875, type: !110)
!2101 = !DILocalVariable(name: "num_sacks", arg: 4, scope: !2095, file: !10, line: 1875, type: !110)
!2102 = !DILocalVariable(name: "tcphdr", scope: !2095, file: !10, line: 1877, type: !173)
!2103 = !DILocalVariable(name: "opts", scope: !2095, file: !10, line: 1878, type: !194)
!2104 = !DILocalVariable(name: "sacks_len", scope: !2095, file: !10, line: 1879, type: !103)
!2105 = !DILocation(line: 1875, column: 47, scope: !2095, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 2052, column: 3, scope: !2029)
!2107 = !DILocation(line: 1875, column: 65, scope: !2095, inlinedAt: !2106)
!2108 = !DILocation(line: 1875, column: 73, scope: !2095, inlinedAt: !2106)
!2109 = !DILocation(line: 1875, column: 88, scope: !2095, inlinedAt: !2106)
!2110 = !DILocation(line: 1879, column: 9, scope: !2095, inlinedAt: !2106)
!2111 = !DILocation(line: 1881, column: 3, scope: !2112, inlinedAt: !2106)
!2112 = distinct !DILexicalBlock(scope: !2095, file: !10, line: 1881, column: 3)
!2113 = !DILocation(line: 1877, column: 19, scope: !2095, inlinedAt: !2106)
!2114 = !DILocation(line: 1878, column: 10, scope: !2095, inlinedAt: !2106)
!2115 = !DILocation(line: 1912, column: 3, scope: !2116, inlinedAt: !2106)
!2116 = distinct !DILexicalBlock(scope: !2095, file: !10, line: 1912, column: 3)
!2117 = !DILocation(line: 1915, column: 1, scope: !2095, inlinedAt: !2106)
!2118 = !DILocation(line: 2060, column: 50, scope: !2029)
!2119 = !DILocation(line: 2060, column: 66, scope: !2029)
!2120 = !DILocation(line: 2060, column: 9, scope: !2029)
!2121 = !DILocation(line: 2024, column: 9, scope: !2029)
!2122 = !DILocation(line: 2061, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2029, file: !10, line: 2061, column: 7)
!2124 = !DILocation(line: 0, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !10, line: 2066, column: 5)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !10, line: 2064, column: 10)
!2127 = !DILocation(line: 2061, column: 7, scope: !2029)
!2128 = !DILocation(line: 2066, column: 5, scope: !2125)
!2129 = !DILocation(line: 2063, column: 5, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !10, line: 2063, column: 5)
!2131 = distinct !DILexicalBlock(scope: !2123, file: !10, line: 2061, column: 22)
!2132 = !DILocation(line: 0, scope: !2130)
!2133 = !DILocation(line: 2069, column: 3, scope: !2029)
!2134 = !DILocation(line: 0, scope: !2029)
!2135 = !DILocation(line: 0, scope: !2084)
!2136 = !DILocation(line: 2070, column: 1, scope: !2029)
!2137 = distinct !DISubprogram(name: "tcp_rexmit_rto_prepare", scope: !10, file: !10, line: 1634, type: !1298, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2138)
!2138 = !{!2139, !2140}
!2139 = !DILocalVariable(name: "pcb", arg: 1, scope: !2137, file: !10, line: 1634, type: !231)
!2140 = !DILocalVariable(name: "seg", scope: !2137, file: !10, line: 1636, type: !185)
!2141 = !DILocation(line: 1634, column: 40, scope: !2137)
!2142 = !DILocation(line: 1638, column: 3, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !10, line: 1638, column: 3)
!2144 = distinct !DILexicalBlock(scope: !2137, file: !10, line: 1638, column: 3)
!2145 = !DILocation(line: 1638, column: 3, scope: !2144)
!2146 = !DILocation(line: 1638, column: 3, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !10, line: 1638, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2143, file: !10, line: 1638, column: 3)
!2149 = !DILocation(line: 1638, column: 3, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !10, line: 1638, column: 3)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !10, line: 1638, column: 3)
!2152 = distinct !DILexicalBlock(scope: !2147, file: !10, line: 1638, column: 3)
!2153 = !DILocation(line: 1640, column: 12, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2137, file: !10, line: 1640, column: 7)
!2155 = !DILocation(line: 1640, column: 20, scope: !2154)
!2156 = !DILocation(line: 1640, column: 7, scope: !2137)
!2157 = !DILocation(line: 0, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2137, file: !10, line: 1648, column: 3)
!2159 = !DILocation(line: 0, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2158, file: !10, line: 1648, column: 3)
!2161 = !DILocation(line: 1636, column: 19, scope: !2137)
!2162 = !DILocation(line: 1648, column: 33, scope: !2160)
!2163 = !DILocation(line: 1648, column: 38, scope: !2160)
!2164 = !DILocation(line: 1435, column: 47, scope: !1807, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 0, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2137, file: !10, line: 1654, column: 7)
!2167 = !DILocation(line: 1437, column: 3, scope: !1817, inlinedAt: !2165)
!2168 = !DILocation(line: 1442, column: 12, scope: !1819, inlinedAt: !2165)
!2169 = !DILocation(line: 1442, column: 15, scope: !1819, inlinedAt: !2165)
!2170 = !DILocation(line: 1442, column: 19, scope: !1819, inlinedAt: !2165)
!2171 = !DILocation(line: 1442, column: 7, scope: !1807, inlinedAt: !2165)
!2172 = !DILocation(line: 0, scope: !1825, inlinedAt: !2165)
!2173 = !DILocation(line: 1448, column: 1, scope: !1807, inlinedAt: !2165)
!2174 = !DILocation(line: 1648, column: 3, scope: !2158)
!2175 = !DILocation(line: 0, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2160, file: !10, line: 1648, column: 64)
!2177 = !DILocation(line: 1649, column: 9, scope: !2176)
!2178 = distinct !{!2178, !2174, !2179}
!2179 = !DILocation(line: 1653, column: 3, scope: !2158)
!2180 = !DILocation(line: 1654, column: 7, scope: !2137)
!2181 = !DILocation(line: 1656, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2166, file: !10, line: 1654, column: 37)
!2183 = !DILocation(line: 1659, column: 20, scope: !2137)
!2184 = !DILocation(line: 1659, column: 13, scope: !2137)
!2185 = !DILocation(line: 1667, column: 15, scope: !2137)
!2186 = !DILocation(line: 1669, column: 16, scope: !2137)
!2187 = !DILocation(line: 1672, column: 3, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2137, file: !10, line: 1672, column: 3)
!2189 = !DILocation(line: 1674, column: 18, scope: !2137)
!2190 = !DILocation(line: 1674, column: 51, scope: !2137)
!2191 = !DILocation(line: 1674, column: 49, scope: !2137)
!2192 = !DILocation(line: 1674, column: 8, scope: !2137)
!2193 = !DILocation(line: 1674, column: 16, scope: !2137)
!2194 = !{!412, !415, i64 140}
!2195 = !DILocation(line: 1676, column: 8, scope: !2137)
!2196 = !DILocation(line: 1676, column: 15, scope: !2137)
!2197 = !DILocation(line: 1678, column: 3, scope: !2137)
!2198 = !DILocation(line: 0, scope: !2137)
!2199 = !DILocation(line: 1679, column: 1, scope: !2137)
!2200 = distinct !DISubprogram(name: "tcp_rexmit_rto_commit", scope: !10, file: !10, line: 1689, type: !2201, isLocal: false, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !231}
!2203 = !{!2204}
!2204 = !DILocalVariable(name: "pcb", arg: 1, scope: !2200, file: !10, line: 1689, type: !231)
!2205 = !DILocation(line: 1689, column: 39, scope: !2200)
!2206 = !DILocation(line: 1691, column: 3, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !10, line: 1691, column: 3)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !10, line: 1691, column: 3)
!2209 = !DILocation(line: 1691, column: 3, scope: !2208)
!2210 = !DILocation(line: 1691, column: 3, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !10, line: 1691, column: 3)
!2212 = distinct !DILexicalBlock(scope: !2207, file: !10, line: 1691, column: 3)
!2213 = !DILocation(line: 1691, column: 3, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !10, line: 1691, column: 3)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !10, line: 1691, column: 3)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !10, line: 1691, column: 3)
!2217 = !DILocation(line: 1694, column: 12, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2200, file: !10, line: 1694, column: 7)
!2219 = !{!412, !395, i64 126}
!2220 = !DILocation(line: 1694, column: 17, scope: !2218)
!2221 = !DILocation(line: 1694, column: 7, scope: !2200)
!2222 = !DILocation(line: 1695, column: 5, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !10, line: 1694, column: 25)
!2224 = !DILocation(line: 1696, column: 3, scope: !2223)
!2225 = !DILocation(line: 1698, column: 3, scope: !2200)
!2226 = !DILocation(line: 1699, column: 1, scope: !2200)
!2227 = distinct !DISubprogram(name: "tcp_rexmit_rto", scope: !10, file: !10, line: 1710, type: !2201, isLocal: false, isDefinition: true, scopeLine: 1711, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2228)
!2228 = !{!2229}
!2229 = !DILocalVariable(name: "pcb", arg: 1, scope: !2227, file: !10, line: 1710, type: !231)
!2230 = !DILocation(line: 1710, column: 32, scope: !2227)
!2231 = !DILocation(line: 1712, column: 3, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !10, line: 1712, column: 3)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !10, line: 1712, column: 3)
!2234 = !DILocation(line: 1712, column: 3, scope: !2233)
!2235 = !DILocation(line: 1712, column: 3, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !10, line: 1712, column: 3)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !10, line: 1712, column: 3)
!2238 = !DILocation(line: 1712, column: 3, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !10, line: 1712, column: 3)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !10, line: 1712, column: 3)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !10, line: 1712, column: 3)
!2242 = !DILocation(line: 1714, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2227, file: !10, line: 1714, column: 7)
!2244 = !DILocation(line: 1714, column: 35, scope: !2243)
!2245 = !DILocation(line: 1714, column: 7, scope: !2227)
!2246 = !DILocation(line: 1689, column: 39, scope: !2200, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 1715, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2243, file: !10, line: 1714, column: 46)
!2249 = !DILocation(line: 1691, column: 3, scope: !2208, inlinedAt: !2247)
!2250 = !DILocation(line: 1694, column: 12, scope: !2218, inlinedAt: !2247)
!2251 = !DILocation(line: 1694, column: 17, scope: !2218, inlinedAt: !2247)
!2252 = !DILocation(line: 1694, column: 7, scope: !2200, inlinedAt: !2247)
!2253 = !DILocation(line: 1695, column: 5, scope: !2223, inlinedAt: !2247)
!2254 = !DILocation(line: 1696, column: 3, scope: !2223, inlinedAt: !2247)
!2255 = !DILocation(line: 1698, column: 3, scope: !2200, inlinedAt: !2247)
!2256 = !DILocation(line: 1699, column: 1, scope: !2200, inlinedAt: !2247)
!2257 = !DILocation(line: 1716, column: 3, scope: !2248)
!2258 = !DILocation(line: 1717, column: 1, scope: !2227)
!2259 = distinct !DISubprogram(name: "tcp_rexmit", scope: !10, file: !10, line: 1727, type: !1298, isLocal: false, isDefinition: true, scopeLine: 1728, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2260)
!2260 = !{!2261, !2262, !2263}
!2261 = !DILocalVariable(name: "pcb", arg: 1, scope: !2259, file: !10, line: 1727, type: !231)
!2262 = !DILocalVariable(name: "seg", scope: !2259, file: !10, line: 1729, type: !185)
!2263 = !DILocalVariable(name: "cur_seg", scope: !2259, file: !10, line: 1730, type: !1591)
!2264 = !DILocation(line: 1727, column: 28, scope: !2259)
!2265 = !DILocation(line: 1732, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !10, line: 1732, column: 3)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1732, column: 3)
!2268 = !DILocation(line: 1732, column: 3, scope: !2267)
!2269 = !DILocation(line: 1732, column: 3, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !10, line: 1732, column: 3)
!2271 = distinct !DILexicalBlock(scope: !2266, file: !10, line: 1732, column: 3)
!2272 = !DILocation(line: 1732, column: 3, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !10, line: 1732, column: 3)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !10, line: 1732, column: 3)
!2275 = distinct !DILexicalBlock(scope: !2270, file: !10, line: 1732, column: 3)
!2276 = !DILocation(line: 1734, column: 12, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1734, column: 7)
!2278 = !DILocation(line: 1734, column: 20, scope: !2277)
!2279 = !DILocation(line: 1734, column: 7, scope: !2259)
!2280 = !DILocation(line: 0, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1742, column: 7)
!2282 = !DILocation(line: 1729, column: 19, scope: !2259)
!2283 = !DILocation(line: 1435, column: 47, scope: !1807, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 1742, column: 7, scope: !2281)
!2285 = !DILocation(line: 1442, column: 12, scope: !1819, inlinedAt: !2284)
!2286 = !DILocation(line: 1442, column: 15, scope: !1819, inlinedAt: !2284)
!2287 = !DILocation(line: 1442, column: 19, scope: !1819, inlinedAt: !2284)
!2288 = !DILocation(line: 1442, column: 7, scope: !1807, inlinedAt: !2284)
!2289 = !DILocation(line: 0, scope: !1825, inlinedAt: !2284)
!2290 = !DILocation(line: 1448, column: 1, scope: !1807, inlinedAt: !2284)
!2291 = !DILocation(line: 1742, column: 7, scope: !2259)
!2292 = !DILocation(line: 1749, column: 23, scope: !2259)
!2293 = !DILocation(line: 1749, column: 16, scope: !2259)
!2294 = !DILocation(line: 1751, column: 20, scope: !2259)
!2295 = !DILocation(line: 1730, column: 20, scope: !2259)
!2296 = !DILocation(line: 1752, column: 3, scope: !2259)
!2297 = !DILocation(line: 1752, column: 10, scope: !2259)
!2298 = !DILocation(line: 1752, column: 19, scope: !2259)
!2299 = !DILocation(line: 0, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1753, column: 93)
!2301 = !DILocation(line: 1753, column: 10, scope: !2259)
!2302 = !DILocation(line: 0, scope: !2259)
!2303 = !DILocation(line: 1754, column: 29, scope: !2300)
!2304 = distinct !{!2304, !2296, !2305}
!2305 = !DILocation(line: 1755, column: 3, scope: !2259)
!2306 = !DILocation(line: 1756, column: 13, scope: !2259)
!2307 = !DILocation(line: 1757, column: 12, scope: !2259)
!2308 = !DILocation(line: 1759, column: 12, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1759, column: 7)
!2310 = !DILocation(line: 1759, column: 17, scope: !2309)
!2311 = !DILocation(line: 1759, column: 7, scope: !2259)
!2312 = !DILocation(line: 1761, column: 10, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !10, line: 1759, column: 26)
!2314 = !DILocation(line: 1761, column: 26, scope: !2313)
!2315 = !DILocation(line: 1762, column: 3, scope: !2313)
!2316 = !DILocation(line: 1765, column: 12, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2259, file: !10, line: 1765, column: 7)
!2318 = !DILocation(line: 1765, column: 17, scope: !2317)
!2319 = !DILocation(line: 1765, column: 7, scope: !2259)
!2320 = !DILocation(line: 1766, column: 5, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !10, line: 1765, column: 25)
!2322 = !DILocation(line: 1767, column: 3, scope: !2321)
!2323 = !DILocation(line: 1770, column: 8, scope: !2259)
!2324 = !DILocation(line: 1770, column: 15, scope: !2259)
!2325 = !DILocation(line: 1776, column: 3, scope: !2259)
!2326 = !DILocation(line: 0, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2281, file: !10, line: 1742, column: 37)
!2328 = !DILocation(line: 1777, column: 1, scope: !2259)
!2329 = distinct !DISubprogram(name: "tcp_rexmit_fast", scope: !10, file: !10, line: 1786, type: !2201, isLocal: false, isDefinition: true, scopeLine: 1787, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2330)
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "pcb", arg: 1, scope: !2329, file: !10, line: 1786, type: !231)
!2332 = !DILocation(line: 1786, column: 33, scope: !2329)
!2333 = !DILocation(line: 1788, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !10, line: 1788, column: 3)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !10, line: 1788, column: 3)
!2336 = !DILocation(line: 1788, column: 3, scope: !2335)
!2337 = !DILocation(line: 1788, column: 3, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !10, line: 1788, column: 3)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !10, line: 1788, column: 3)
!2340 = !DILocation(line: 1788, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !10, line: 1788, column: 3)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !10, line: 1788, column: 3)
!2343 = distinct !DILexicalBlock(scope: !2338, file: !10, line: 1788, column: 3)
!2344 = !DILocation(line: 1790, column: 12, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2329, file: !10, line: 1790, column: 7)
!2346 = !DILocation(line: 1790, column: 20, scope: !2345)
!2347 = !DILocation(line: 1790, column: 28, scope: !2345)
!2348 = !DILocation(line: 1790, column: 38, scope: !2345)
!2349 = !DILocation(line: 1790, column: 44, scope: !2345)
!2350 = !DILocation(line: 1790, column: 7, scope: !2329)
!2351 = !DILocation(line: 1797, column: 9, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !10, line: 1797, column: 9)
!2353 = distinct !DILexicalBlock(scope: !2345, file: !10, line: 1790, column: 56)
!2354 = !DILocation(line: 1797, column: 25, scope: !2352)
!2355 = !DILocation(line: 1797, column: 9, scope: !2353)
!2356 = !DILocation(line: 1800, column: 23, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !10, line: 1797, column: 36)
!2358 = !DILocation(line: 1800, column: 57, scope: !2357)
!2359 = !DILocation(line: 1800, column: 12, scope: !2357)
!2360 = !DILocation(line: 1800, column: 21, scope: !2357)
!2361 = !{!412, !415, i64 136}
!2362 = !DILocation(line: 1803, column: 38, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !10, line: 1803, column: 11)
!2364 = !DILocation(line: 1803, column: 33, scope: !2363)
!2365 = !DILocation(line: 1803, column: 31, scope: !2363)
!2366 = !DILocation(line: 1803, column: 25, scope: !2363)
!2367 = !DILocation(line: 1803, column: 11, scope: !2357)
!2368 = !DILocation(line: 1808, column: 23, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2363, file: !10, line: 1803, column: 44)
!2370 = !DILocation(line: 1809, column: 7, scope: !2369)
!2371 = !DILocation(line: 1811, column: 24, scope: !2357)
!2372 = !DILocation(line: 1811, column: 37, scope: !2357)
!2373 = !DILocation(line: 1811, column: 33, scope: !2357)
!2374 = !DILocation(line: 1811, column: 17, scope: !2357)
!2375 = !DILocation(line: 1812, column: 7, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2357, file: !10, line: 1812, column: 7)
!2377 = !DILocation(line: 1815, column: 12, scope: !2357)
!2378 = !DILocation(line: 1815, column: 18, scope: !2357)
!2379 = !DILocation(line: 1816, column: 5, scope: !2357)
!2380 = !DILocation(line: 1818, column: 1, scope: !2329)
!2381 = distinct !DISubprogram(name: "tcp_rst", scope: !10, file: !10, line: 1983, type: !2382, isLocal: false, isDefinition: true, scopeLine: 1986, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !945, !142, !142, !145, !145, !103, !103}
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2385 = !DILocalVariable(name: "pcb", arg: 1, scope: !2381, file: !10, line: 1983, type: !945)
!2386 = !DILocalVariable(name: "seqno", arg: 2, scope: !2381, file: !10, line: 1983, type: !142)
!2387 = !DILocalVariable(name: "ackno", arg: 3, scope: !2381, file: !10, line: 1983, type: !142)
!2388 = !DILocalVariable(name: "local_ip", arg: 4, scope: !2381, file: !10, line: 1984, type: !145)
!2389 = !DILocalVariable(name: "remote_ip", arg: 5, scope: !2381, file: !10, line: 1984, type: !145)
!2390 = !DILocalVariable(name: "local_port", arg: 6, scope: !2381, file: !10, line: 1985, type: !103)
!2391 = !DILocalVariable(name: "remote_port", arg: 7, scope: !2381, file: !10, line: 1985, type: !103)
!2392 = !DILocalVariable(name: "p", scope: !2381, file: !10, line: 1987, type: !120)
!2393 = !DILocalVariable(name: "wnd", scope: !2381, file: !10, line: 1988, type: !103)
!2394 = !DILocalVariable(name: "optlen", scope: !2381, file: !10, line: 1989, type: !110)
!2395 = !DILocation(line: 1983, column: 31, scope: !2381)
!2396 = !DILocation(line: 1983, column: 42, scope: !2381)
!2397 = !DILocation(line: 1983, column: 55, scope: !2381)
!2398 = !DILocation(line: 1984, column: 26, scope: !2381)
!2399 = !DILocation(line: 1984, column: 53, scope: !2381)
!2400 = !DILocation(line: 1985, column: 15, scope: !2381)
!2401 = !DILocation(line: 1985, column: 33, scope: !2381)
!2402 = !DILocation(line: 1991, column: 3, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !10, line: 1991, column: 3)
!2404 = distinct !DILexicalBlock(scope: !2381, file: !10, line: 1991, column: 3)
!2405 = !DILocation(line: 1991, column: 3, scope: !2404)
!2406 = !DILocation(line: 1991, column: 3, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !10, line: 1991, column: 3)
!2408 = distinct !DILexicalBlock(scope: !2403, file: !10, line: 1991, column: 3)
!2409 = !DILocation(line: 1991, column: 3, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !10, line: 1991, column: 3)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !10, line: 1991, column: 3)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !10, line: 1991, column: 3)
!2413 = !DILocation(line: 1992, column: 3, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !10, line: 1992, column: 3)
!2415 = distinct !DILexicalBlock(scope: !2381, file: !10, line: 1992, column: 3)
!2416 = !DILocation(line: 1992, column: 3, scope: !2415)
!2417 = !DILocation(line: 1992, column: 3, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !10, line: 1992, column: 3)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !10, line: 1992, column: 3)
!2420 = !DILocation(line: 1992, column: 3, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !10, line: 1992, column: 3)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !10, line: 1992, column: 3)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !10, line: 1992, column: 3)
!2424 = !DILocation(line: 1989, column: 8, scope: !2381)
!2425 = !DILocation(line: 1988, column: 9, scope: !2381)
!2426 = !DILocation(line: 2002, column: 56, scope: !2381)
!2427 = !DILocation(line: 2002, column: 7, scope: !2381)
!2428 = !DILocation(line: 1987, column: 16, scope: !2381)
!2429 = !DILocation(line: 2004, column: 9, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2381, file: !10, line: 2004, column: 7)
!2431 = !DILocation(line: 2004, column: 7, scope: !2381)
!2432 = !DILocation(line: 0, scope: !2381)
!2433 = !DILocation(line: 1875, column: 47, scope: !2095, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 2008, column: 3, scope: !2381)
!2435 = !DILocation(line: 1875, column: 65, scope: !2095, inlinedAt: !2434)
!2436 = !DILocation(line: 1875, column: 73, scope: !2095, inlinedAt: !2434)
!2437 = !DILocation(line: 1875, column: 88, scope: !2095, inlinedAt: !2434)
!2438 = !DILocation(line: 1879, column: 9, scope: !2095, inlinedAt: !2434)
!2439 = !DILocation(line: 1877, column: 19, scope: !2095, inlinedAt: !2434)
!2440 = !DILocation(line: 1878, column: 10, scope: !2095, inlinedAt: !2434)
!2441 = !DILocation(line: 1912, column: 3, scope: !2116, inlinedAt: !2434)
!2442 = !DILocation(line: 1915, column: 1, scope: !2095, inlinedAt: !2434)
!2443 = !DILocation(line: 2012, column: 3, scope: !2381)
!2444 = !DILocation(line: 2014, column: 1, scope: !2381)
!2445 = distinct !DISubprogram(name: "tcp_output_alloc_header_common", scope: !10, file: !10, line: 1821, type: !2446, isLocal: true, isDefinition: true, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!120, !142, !103, !103, !142, !103, !103, !110, !103}
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458}
!2449 = !DILocalVariable(name: "ackno", arg: 1, scope: !2445, file: !10, line: 1821, type: !142)
!2450 = !DILocalVariable(name: "optlen", arg: 2, scope: !2445, file: !10, line: 1821, type: !103)
!2451 = !DILocalVariable(name: "datalen", arg: 3, scope: !2445, file: !10, line: 1821, type: !103)
!2452 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !2445, file: !10, line: 1822, type: !142)
!2453 = !DILocalVariable(name: "src_port", arg: 5, scope: !2445, file: !10, line: 1823, type: !103)
!2454 = !DILocalVariable(name: "dst_port", arg: 6, scope: !2445, file: !10, line: 1823, type: !103)
!2455 = !DILocalVariable(name: "flags", arg: 7, scope: !2445, file: !10, line: 1823, type: !110)
!2456 = !DILocalVariable(name: "wnd", arg: 8, scope: !2445, file: !10, line: 1823, type: !103)
!2457 = !DILocalVariable(name: "tcphdr", scope: !2445, file: !10, line: 1825, type: !173)
!2458 = !DILocalVariable(name: "p", scope: !2445, file: !10, line: 1826, type: !120)
!2459 = !DILocation(line: 1821, column: 38, scope: !2445)
!2460 = !DILocation(line: 1821, column: 51, scope: !2445)
!2461 = !DILocation(line: 1821, column: 65, scope: !2445)
!2462 = !DILocation(line: 1822, column: 31, scope: !2445)
!2463 = !DILocation(line: 1823, column: 31, scope: !2445)
!2464 = !DILocation(line: 1823, column: 47, scope: !2445)
!2465 = !DILocation(line: 1823, column: 62, scope: !2445)
!2466 = !DILocation(line: 1823, column: 75, scope: !2445)
!2467 = !DILocation(line: 1828, column: 45, scope: !2445)
!2468 = !DILocation(line: 1828, column: 7, scope: !2445)
!2469 = !DILocation(line: 1826, column: 16, scope: !2445)
!2470 = !DILocation(line: 1829, column: 9, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2445, file: !10, line: 1829, column: 7)
!2472 = !DILocation(line: 1829, column: 7, scope: !2445)
!2473 = !DILocation(line: 1830, column: 5, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !10, line: 1830, column: 5)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !10, line: 1830, column: 5)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !10, line: 1829, column: 18)
!2477 = !DILocation(line: 1830, column: 5, scope: !2475)
!2478 = !DILocation(line: 1830, column: 5, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !10, line: 1830, column: 5)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !10, line: 1830, column: 5)
!2481 = !DILocation(line: 1830, column: 5, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !10, line: 1830, column: 5)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !10, line: 1830, column: 5)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !10, line: 1830, column: 5)
!2485 = !DILocation(line: 1832, column: 35, scope: !2476)
!2486 = !DILocation(line: 1825, column: 19, scope: !2445)
!2487 = !DILocation(line: 1833, column: 19, scope: !2476)
!2488 = !DILocation(line: 1833, column: 13, scope: !2476)
!2489 = !DILocation(line: 1833, column: 17, scope: !2476)
!2490 = !DILocation(line: 1834, column: 20, scope: !2476)
!2491 = !DILocation(line: 1834, column: 13, scope: !2476)
!2492 = !DILocation(line: 1834, column: 18, scope: !2476)
!2493 = !DILocation(line: 1835, column: 13, scope: !2476)
!2494 = !DILocation(line: 1835, column: 19, scope: !2476)
!2495 = !DILocation(line: 1836, column: 21, scope: !2476)
!2496 = !DILocation(line: 1836, column: 13, scope: !2476)
!2497 = !DILocation(line: 1836, column: 19, scope: !2476)
!2498 = !DILocation(line: 1837, column: 5, scope: !2476)
!2499 = !DILocation(line: 1838, column: 19, scope: !2476)
!2500 = !DILocation(line: 1838, column: 13, scope: !2476)
!2501 = !DILocation(line: 1838, column: 17, scope: !2476)
!2502 = !DILocation(line: 1839, column: 13, scope: !2476)
!2503 = !DILocation(line: 1839, column: 20, scope: !2476)
!2504 = !DILocation(line: 1840, column: 13, scope: !2476)
!2505 = !DILocation(line: 1840, column: 18, scope: !2476)
!2506 = !DILocation(line: 1841, column: 3, scope: !2476)
!2507 = !DILocation(line: 1842, column: 3, scope: !2445)
!2508 = distinct !DISubprogram(name: "tcp_output_control_segment", scope: !10, file: !10, line: 1924, type: !2509, isLocal: true, isDefinition: true, scopeLine: 1926, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!226, !945, !120, !145, !145}
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2521, !2522}
!2512 = !DILocalVariable(name: "pcb", arg: 1, scope: !2508, file: !10, line: 1924, type: !945)
!2513 = !DILocalVariable(name: "p", arg: 2, scope: !2508, file: !10, line: 1924, type: !120)
!2514 = !DILocalVariable(name: "src", arg: 3, scope: !2508, file: !10, line: 1925, type: !145)
!2515 = !DILocalVariable(name: "dst", arg: 4, scope: !2508, file: !10, line: 1925, type: !145)
!2516 = !DILocalVariable(name: "err", scope: !2508, file: !10, line: 1927, type: !226)
!2517 = !DILocalVariable(name: "netif", scope: !2508, file: !10, line: 1928, type: !1510)
!2518 = !DILocalVariable(name: "ttl", scope: !2519, file: !10, line: 1936, type: !110)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !10, line: 1935, column: 10)
!2520 = distinct !DILexicalBlock(scope: !2508, file: !10, line: 1933, column: 7)
!2521 = !DILocalVariable(name: "tos", scope: !2519, file: !10, line: 1936, type: !110)
!2522 = !DILocalVariable(name: "tcphdr", scope: !2523, file: !10, line: 1939, type: !173)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !10, line: 1938, column: 63)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !10, line: 1938, column: 5)
!2525 = !DILocation(line: 1924, column: 50, scope: !2508)
!2526 = !DILocation(line: 1924, column: 68, scope: !2508)
!2527 = !DILocation(line: 1925, column: 45, scope: !2508)
!2528 = !DILocation(line: 1925, column: 67, scope: !2508)
!2529 = !DILocation(line: 1930, column: 3, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2531, file: !10, line: 1930, column: 3)
!2531 = distinct !DILexicalBlock(scope: !2508, file: !10, line: 1930, column: 3)
!2532 = !DILocation(line: 1930, column: 3, scope: !2531)
!2533 = !DILocation(line: 1930, column: 3, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !10, line: 1930, column: 3)
!2535 = distinct !DILexicalBlock(scope: !2530, file: !10, line: 1930, column: 3)
!2536 = !DILocation(line: 1930, column: 3, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2538, file: !10, line: 1930, column: 3)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !10, line: 1930, column: 3)
!2539 = distinct !DILexicalBlock(scope: !2534, file: !10, line: 1930, column: 3)
!2540 = !DILocation(line: 134, column: 33, scope: !1639, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 1932, column: 11, scope: !2508)
!2542 = !DILocation(line: 134, column: 55, scope: !1639, inlinedAt: !2541)
!2543 = !DILocation(line: 134, column: 77, scope: !1639, inlinedAt: !2541)
!2544 = !DILocation(line: 138, column: 12, scope: !1650, inlinedAt: !2541)
!2545 = !DILocation(line: 138, column: 21, scope: !1650, inlinedAt: !2541)
!2546 = !DILocation(line: 138, column: 30, scope: !1650, inlinedAt: !2541)
!2547 = !DILocation(line: 138, column: 40, scope: !1650, inlinedAt: !2541)
!2548 = !DILocation(line: 138, column: 7, scope: !1639, inlinedAt: !2541)
!2549 = !DILocation(line: 139, column: 12, scope: !1656, inlinedAt: !2541)
!2550 = !DILocation(line: 139, column: 5, scope: !1656, inlinedAt: !2541)
!2551 = !DILocation(line: 141, column: 12, scope: !1659, inlinedAt: !2541)
!2552 = !DILocation(line: 141, column: 5, scope: !1659, inlinedAt: !2541)
!2553 = !DILocation(line: 0, scope: !1659, inlinedAt: !2541)
!2554 = !DILocation(line: 0, scope: !2508)
!2555 = !DILocation(line: 143, column: 1, scope: !1639, inlinedAt: !2541)
!2556 = !DILocation(line: 1928, column: 17, scope: !2508)
!2557 = !DILocation(line: 1933, column: 13, scope: !2520)
!2558 = !DILocation(line: 1933, column: 7, scope: !2508)
!2559 = !DILocation(line: 0, scope: !2524)
!2560 = !DILocation(line: 1938, column: 5, scope: !2524)
!2561 = !DILocation(line: 1938, column: 5, scope: !2519)
!2562 = !DILocation(line: 1939, column: 53, scope: !2523)
!2563 = !DILocation(line: 1939, column: 23, scope: !2523)
!2564 = !DILocation(line: 1940, column: 61, scope: !2523)
!2565 = !DILocation(line: 1940, column: 24, scope: !2523)
!2566 = !DILocation(line: 1940, column: 15, scope: !2523)
!2567 = !DILocation(line: 1940, column: 22, scope: !2523)
!2568 = !DILocation(line: 1942, column: 5, scope: !2523)
!2569 = !DILocation(line: 1944, column: 9, scope: !2519)
!2570 = !DILocation(line: 1946, column: 18, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !10, line: 1944, column: 22)
!2572 = distinct !DILexicalBlock(scope: !2519, file: !10, line: 1944, column: 9)
!2573 = !DILocation(line: 1936, column: 10, scope: !2519)
!2574 = !DILocation(line: 1947, column: 18, scope: !2571)
!2575 = !DILocation(line: 1936, column: 15, scope: !2519)
!2576 = !DILocation(line: 1948, column: 5, scope: !2571)
!2577 = !DILocation(line: 0, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2572, file: !10, line: 1948, column: 12)
!2579 = !DILocation(line: 1953, column: 5, scope: !2519)
!2580 = !DILocation(line: 1954, column: 11, scope: !2519)
!2581 = !DILocation(line: 1927, column: 9, scope: !2508)
!2582 = !DILocation(line: 0, scope: !2519)
!2583 = !DILocation(line: 1957, column: 3, scope: !2508)
!2584 = !DILocation(line: 1958, column: 3, scope: !2508)
!2585 = distinct !DISubprogram(name: "tcp_keepalive", scope: !10, file: !10, line: 2081, type: !1298, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2586)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "pcb", arg: 1, scope: !2585, file: !10, line: 2081, type: !231)
!2588 = !DILocalVariable(name: "err", scope: !2585, file: !10, line: 2083, type: !226)
!2589 = !DILocalVariable(name: "p", scope: !2585, file: !10, line: 2084, type: !120)
!2590 = !DILocalVariable(name: "optlen", scope: !2585, file: !10, line: 2085, type: !110)
!2591 = !DILocation(line: 2081, column: 31, scope: !2585)
!2592 = !DILocation(line: 2085, column: 8, scope: !2585)
!2593 = !DILocation(line: 2087, column: 3, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !10, line: 2087, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2585, file: !10, line: 2087, column: 3)
!2596 = !DILocation(line: 2087, column: 3, scope: !2595)
!2597 = !DILocation(line: 2087, column: 3, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !10, line: 2087, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !10, line: 2087, column: 3)
!2600 = !DILocation(line: 2087, column: 3, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !10, line: 2087, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !10, line: 2087, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !10, line: 2087, column: 3)
!2604 = !DILocation(line: 2096, column: 63, scope: !2585)
!2605 = !DILocation(line: 2096, column: 71, scope: !2585)
!2606 = !DILocation(line: 2096, column: 47, scope: !2585)
!2607 = !DILocation(line: 1856, column: 41, scope: !2055, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 2096, column: 7, scope: !2585)
!2609 = !DILocation(line: 1856, column: 52, scope: !2055, inlinedAt: !2608)
!2610 = !DILocation(line: 1856, column: 66, scope: !2055, inlinedAt: !2608)
!2611 = !DILocation(line: 1857, column: 31, scope: !2055, inlinedAt: !2608)
!2612 = !DILocation(line: 1861, column: 3, scope: !2069, inlinedAt: !2608)
!2613 = !DILocation(line: 1863, column: 43, scope: !2055, inlinedAt: !2608)
!2614 = !DILocation(line: 1864, column: 20, scope: !2055, inlinedAt: !2608)
!2615 = !DILocation(line: 1864, column: 37, scope: !2055, inlinedAt: !2608)
!2616 = !DILocation(line: 1865, column: 5, scope: !2055, inlinedAt: !2608)
!2617 = !DILocation(line: 1863, column: 7, scope: !2055, inlinedAt: !2608)
!2618 = !DILocation(line: 1859, column: 16, scope: !2055, inlinedAt: !2608)
!2619 = !DILocation(line: 1866, column: 9, scope: !2077, inlinedAt: !2608)
!2620 = !DILocation(line: 1866, column: 7, scope: !2055, inlinedAt: !2608)
!2621 = !DILocation(line: 1870, column: 3, scope: !2055, inlinedAt: !2608)
!2622 = !DILocation(line: 2084, column: 16, scope: !2585)
!2623 = !DILocation(line: 2097, column: 7, scope: !2585)
!2624 = !DILocation(line: 2100, column: 5, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !10, line: 2097, column: 18)
!2626 = distinct !DILexicalBlock(scope: !2585, file: !10, line: 2097, column: 7)
!2627 = !DILocation(line: 1868, column: 36, scope: !2088, inlinedAt: !2608)
!2628 = !DILocation(line: 1868, column: 51, scope: !2088, inlinedAt: !2608)
!2629 = !DILocation(line: 1868, column: 44, scope: !2088, inlinedAt: !2608)
!2630 = !DILocation(line: 1868, column: 10, scope: !2088, inlinedAt: !2608)
!2631 = !DILocation(line: 1868, column: 29, scope: !2088, inlinedAt: !2608)
!2632 = !DILocation(line: 1869, column: 3, scope: !2088, inlinedAt: !2608)
!2633 = !DILocation(line: 1875, column: 47, scope: !2095, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 2102, column: 3, scope: !2585)
!2635 = !DILocation(line: 1875, column: 65, scope: !2095, inlinedAt: !2634)
!2636 = !DILocation(line: 1875, column: 73, scope: !2095, inlinedAt: !2634)
!2637 = !DILocation(line: 1875, column: 88, scope: !2095, inlinedAt: !2634)
!2638 = !DILocation(line: 1879, column: 9, scope: !2095, inlinedAt: !2634)
!2639 = !DILocation(line: 1881, column: 3, scope: !2112, inlinedAt: !2634)
!2640 = !DILocation(line: 1877, column: 19, scope: !2095, inlinedAt: !2634)
!2641 = !DILocation(line: 1878, column: 10, scope: !2095, inlinedAt: !2634)
!2642 = !DILocation(line: 1912, column: 3, scope: !2116, inlinedAt: !2634)
!2643 = !DILocation(line: 1915, column: 1, scope: !2095, inlinedAt: !2634)
!2644 = !DILocation(line: 2103, column: 50, scope: !2585)
!2645 = !DILocation(line: 2103, column: 66, scope: !2585)
!2646 = !DILocation(line: 2103, column: 9, scope: !2585)
!2647 = !DILocation(line: 2083, column: 9, scope: !2585)
!2648 = !DILocation(line: 2107, column: 3, scope: !2585)
!2649 = !DILocation(line: 0, scope: !2585)
!2650 = !DILocation(line: 0, scope: !2625)
!2651 = !DILocation(line: 2108, column: 1, scope: !2585)
!2652 = distinct !DISubprogram(name: "tcp_zero_window_probe", scope: !10, file: !10, line: 2119, type: !1298, isLocal: false, isDefinition: true, scopeLine: 2120, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2654 = !DILocalVariable(name: "pcb", arg: 1, scope: !2652, file: !10, line: 2119, type: !231)
!2655 = !DILocalVariable(name: "err", scope: !2652, file: !10, line: 2121, type: !226)
!2656 = !DILocalVariable(name: "p", scope: !2652, file: !10, line: 2122, type: !120)
!2657 = !DILocalVariable(name: "tcphdr", scope: !2652, file: !10, line: 2123, type: !173)
!2658 = !DILocalVariable(name: "seg", scope: !2652, file: !10, line: 2124, type: !185)
!2659 = !DILocalVariable(name: "len", scope: !2652, file: !10, line: 2125, type: !103)
!2660 = !DILocalVariable(name: "is_fin", scope: !2652, file: !10, line: 2126, type: !110)
!2661 = !DILocalVariable(name: "snd_nxt", scope: !2652, file: !10, line: 2127, type: !142)
!2662 = !DILocalVariable(name: "optlen", scope: !2652, file: !10, line: 2128, type: !110)
!2663 = !DILocalVariable(name: "d", scope: !2664, file: !10, line: 2172, type: !134)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !10, line: 2170, column: 10)
!2665 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2167, column: 7)
!2666 = !DILocation(line: 2119, column: 39, scope: !2652)
!2667 = !DILocation(line: 2128, column: 8, scope: !2652)
!2668 = !DILocation(line: 2130, column: 3, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !10, line: 2130, column: 3)
!2670 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2130, column: 3)
!2671 = !DILocation(line: 2130, column: 3, scope: !2670)
!2672 = !DILocation(line: 2130, column: 3, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !10, line: 2130, column: 3)
!2674 = distinct !DILexicalBlock(scope: !2669, file: !10, line: 2130, column: 3)
!2675 = !DILocation(line: 2130, column: 3, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !10, line: 2130, column: 3)
!2677 = distinct !DILexicalBlock(scope: !2678, file: !10, line: 2130, column: 3)
!2678 = distinct !DILexicalBlock(scope: !2673, file: !10, line: 2130, column: 3)
!2679 = !DILocation(line: 2142, column: 14, scope: !2652)
!2680 = !DILocation(line: 2124, column: 19, scope: !2652)
!2681 = !DILocation(line: 2143, column: 11, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2143, column: 7)
!2683 = !DILocation(line: 2143, column: 7, scope: !2652)
!2684 = !DILocation(line: 2152, column: 12, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2152, column: 7)
!2686 = !DILocation(line: 2152, column: 26, scope: !2685)
!2687 = !DILocation(line: 2152, column: 7, scope: !2652)
!2688 = !DILocation(line: 2153, column: 5, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2685, file: !10, line: 2152, column: 34)
!2690 = !DILocation(line: 2154, column: 3, scope: !2689)
!2691 = !DILocation(line: 2156, column: 14, scope: !2652)
!2692 = !DILocation(line: 2156, column: 38, scope: !2652)
!2693 = !DILocation(line: 2156, column: 49, scope: !2652)
!2694 = !DILocation(line: 2156, column: 55, scope: !2652)
!2695 = !DILocation(line: 2156, column: 64, scope: !2652)
!2696 = !DILocation(line: 2156, column: 68, scope: !2652)
!2697 = !DILocation(line: 2158, column: 9, scope: !2652)
!2698 = !DILocation(line: 2125, column: 9, scope: !2652)
!2699 = !DILocation(line: 2160, column: 54, scope: !2652)
!2700 = !DILocation(line: 2160, column: 62, scope: !2652)
!2701 = !DILocation(line: 1856, column: 41, scope: !2055, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 2160, column: 7, scope: !2652)
!2703 = !DILocation(line: 1856, column: 52, scope: !2055, inlinedAt: !2702)
!2704 = !DILocation(line: 1856, column: 66, scope: !2055, inlinedAt: !2702)
!2705 = !DILocation(line: 1857, column: 31, scope: !2055, inlinedAt: !2702)
!2706 = !DILocation(line: 1861, column: 3, scope: !2069, inlinedAt: !2702)
!2707 = !DILocation(line: 1863, column: 43, scope: !2055, inlinedAt: !2702)
!2708 = !DILocation(line: 1864, column: 20, scope: !2055, inlinedAt: !2702)
!2709 = !DILocation(line: 1864, column: 37, scope: !2055, inlinedAt: !2702)
!2710 = !DILocation(line: 1865, column: 5, scope: !2055, inlinedAt: !2702)
!2711 = !DILocation(line: 1863, column: 7, scope: !2055, inlinedAt: !2702)
!2712 = !DILocation(line: 1859, column: 16, scope: !2055, inlinedAt: !2702)
!2713 = !DILocation(line: 1866, column: 9, scope: !2077, inlinedAt: !2702)
!2714 = !DILocation(line: 1866, column: 7, scope: !2055, inlinedAt: !2702)
!2715 = !DILocation(line: 1870, column: 3, scope: !2055, inlinedAt: !2702)
!2716 = !DILocation(line: 2122, column: 16, scope: !2652)
!2717 = !DILocation(line: 2161, column: 7, scope: !2652)
!2718 = !DILocation(line: 2163, column: 5, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !10, line: 2161, column: 18)
!2720 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2161, column: 7)
!2721 = !DILocation(line: 1868, column: 36, scope: !2088, inlinedAt: !2702)
!2722 = !DILocation(line: 1868, column: 51, scope: !2088, inlinedAt: !2702)
!2723 = !DILocation(line: 1868, column: 44, scope: !2088, inlinedAt: !2702)
!2724 = !DILocation(line: 1868, column: 10, scope: !2088, inlinedAt: !2702)
!2725 = !DILocation(line: 1868, column: 29, scope: !2088, inlinedAt: !2702)
!2726 = !DILocation(line: 1869, column: 3, scope: !2088, inlinedAt: !2702)
!2727 = !DILocation(line: 2165, column: 33, scope: !2652)
!2728 = !DILocation(line: 2167, column: 7, scope: !2652)
!2729 = !DILocation(line: 2123, column: 19, scope: !2652)
!2730 = !DILocation(line: 2169, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2665, file: !10, line: 2167, column: 15)
!2732 = !DILocation(line: 2170, column: 3, scope: !2731)
!2733 = !DILocation(line: 2172, column: 35, scope: !2664)
!2734 = !DILocation(line: 2172, column: 11, scope: !2664)
!2735 = !DILocation(line: 2176, column: 28, scope: !2664)
!2736 = !DILocation(line: 2176, column: 45, scope: !2664)
!2737 = !DILocation(line: 2176, column: 60, scope: !2664)
!2738 = !DILocation(line: 2176, column: 53, scope: !2664)
!2739 = !DILocation(line: 2176, column: 5, scope: !2664)
!2740 = !DILocation(line: 2180, column: 13, scope: !2652)
!2741 = !DILocation(line: 2180, column: 44, scope: !2652)
!2742 = !DILocation(line: 2127, column: 9, scope: !2652)
!2743 = !DILocation(line: 2181, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2652, file: !10, line: 2181, column: 7)
!2745 = !DILocation(line: 2181, column: 7, scope: !2652)
!2746 = !DILocation(line: 2182, column: 18, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2744, file: !10, line: 2181, column: 42)
!2748 = !DILocation(line: 2183, column: 3, scope: !2747)
!2749 = !DILocation(line: 1875, column: 47, scope: !2095, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 2184, column: 3, scope: !2652)
!2751 = !DILocation(line: 1875, column: 65, scope: !2095, inlinedAt: !2750)
!2752 = !DILocation(line: 1875, column: 73, scope: !2095, inlinedAt: !2750)
!2753 = !DILocation(line: 1875, column: 88, scope: !2095, inlinedAt: !2750)
!2754 = !DILocation(line: 1879, column: 9, scope: !2095, inlinedAt: !2750)
!2755 = !DILocation(line: 1881, column: 3, scope: !2112, inlinedAt: !2750)
!2756 = !DILocation(line: 1877, column: 19, scope: !2095, inlinedAt: !2750)
!2757 = !DILocation(line: 1878, column: 10, scope: !2095, inlinedAt: !2750)
!2758 = !DILocation(line: 1912, column: 3, scope: !2116, inlinedAt: !2750)
!2759 = !DILocation(line: 1915, column: 1, scope: !2095, inlinedAt: !2750)
!2760 = !DILocation(line: 2186, column: 50, scope: !2652)
!2761 = !DILocation(line: 2186, column: 66, scope: !2652)
!2762 = !DILocation(line: 2186, column: 9, scope: !2652)
!2763 = !DILocation(line: 2121, column: 9, scope: !2652)
!2764 = !DILocation(line: 2191, column: 3, scope: !2652)
!2765 = !DILocation(line: 0, scope: !2652)
!2766 = !DILocation(line: 0, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2682, file: !10, line: 2143, column: 20)
!2768 = !DILocation(line: 2192, column: 1, scope: !2652)
