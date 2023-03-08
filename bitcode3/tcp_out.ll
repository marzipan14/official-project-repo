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

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_write(%struct.tcp_pcb*, i8*, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !223 {
  %5 = alloca i16, align 2
  %6 = bitcast i16* %5 to i8*, !dbg !391
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %6) #6, !dbg !391
  store i16 0, i16* %5, align 2, !dbg !392, !tbaa !393
  %7 = icmp eq %struct.tcp_pcb* %0, null, !dbg !399
  br i1 %7, label %8, label %9, !dbg !402

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #7, !dbg !403
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !406
  tail call void @ukplat_terminate(i32 3) #8, !dbg !406
  unreachable, !dbg !406

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !410
  %11 = load i16, i16* %10, align 2, !dbg !410, !tbaa !411
  %12 = zext i16 %11 to i32, !dbg !410
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 39, !dbg !410
  %14 = load i32, i32* %13, align 4, !dbg !410, !tbaa !416
  %15 = icmp ult i32 %14, 131070, !dbg !410
  %16 = lshr i32 %14, 1, !dbg !410
  %17 = and i32 %16, 65535, !dbg !410
  %18 = select i1 %15, i32 %17, i32 65535, !dbg !410
  %19 = icmp ugt i32 %18, %12, !dbg !410
  %20 = select i1 %19, i32 %12, i32 %18, !dbg !410
  %21 = icmp eq i32 %20, 0, !dbg !418
  %22 = select i1 %21, i32 %12, i32 %20, !dbg !418
  %23 = trunc i32 %22 to i16, !dbg !418
  %24 = icmp eq i8* %1, null, !dbg !419
  br i1 %24, label %25, label %26, !dbg !422

; <label>:25:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !423
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !426
  tail call void @ukplat_terminate(i32 3) #8, !dbg !426
  unreachable, !dbg !426

; <label>:26:                                     ; preds = %9
  %27 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !439
  %28 = load i32, i32* %27, align 8, !dbg !439, !tbaa !441
  switch i32 %28, label %415 [
    i32 4, label %29
    i32 7, label %29
    i32 2, label %29
    i32 3, label %29
  ], !dbg !442

; <label>:29:                                     ; preds = %26, %26, %26, %26
  %30 = icmp eq i16 %2, 0, !dbg !443
  br i1 %30, label %31, label %34, !dbg !445

; <label>:31:                                     ; preds = %29
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41
  %33 = load i16, i16* %32, align 4, !dbg !446, !tbaa !447
  br label %70, !dbg !445

; <label>:34:                                     ; preds = %29
  %35 = zext i16 %2 to i32, !dbg !448
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !449
  %37 = load i32, i32* %36, align 8, !dbg !449, !tbaa !451
  %38 = icmp ult i32 %37, %35, !dbg !452
  br i1 %38, label %39, label %43, !dbg !453

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !454
  %41 = load i16, i16* %40, align 2, !dbg !454, !tbaa !457
  %42 = or i16 %41, 128, !dbg !454
  store i16 %42, i16* %40, align 2, !dbg !454, !tbaa !457
  br label %415, !dbg !458

; <label>:43:                                     ; preds = %34
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !459
  %45 = load i16, i16* %44, align 4, !dbg !459, !tbaa !447
  %46 = icmp ugt i16 %45, 1435, !dbg !461
  br i1 %46, label %47, label %53, !dbg !462

; <label>:47:                                     ; preds = %43
  %48 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !463, !tbaa !465
  %49 = add i16 %48, 1, !dbg !463
  store i16 %49, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !463, !tbaa !465
  %50 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !471
  %51 = load i16, i16* %50, align 2, !dbg !471, !tbaa !457
  %52 = or i16 %51, 128, !dbg !471
  store i16 %52, i16* %50, align 2, !dbg !471, !tbaa !457
  br label %415, !dbg !473

; <label>:53:                                     ; preds = %43
  %54 = icmp eq i16 %45, 0, !dbg !474
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !476
  %56 = load %struct.tcp_seg*, %struct.tcp_seg** %55, align 8, !dbg !476, !tbaa !480
  %57 = icmp eq %struct.tcp_seg* %56, null, !dbg !481
  br i1 %54, label %64, label %58, !dbg !485

; <label>:58:                                     ; preds = %53
  br i1 %57, label %59, label %70, !dbg !486

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !486
  %61 = load %struct.tcp_seg*, %struct.tcp_seg** %60, align 8, !dbg !486, !tbaa !487
  %62 = icmp eq %struct.tcp_seg* %61, null, !dbg !486
  br i1 %62, label %63, label %70, !dbg !488

; <label>:63:                                     ; preds = %59
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !489
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !492
  tail call void @ukplat_terminate(i32 3) #8, !dbg !492
  unreachable, !dbg !492

; <label>:64:                                     ; preds = %53
  br i1 %57, label %65, label %69, !dbg !496

; <label>:65:                                     ; preds = %64
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !496
  %67 = load %struct.tcp_seg*, %struct.tcp_seg** %66, align 8, !dbg !496, !tbaa !487
  %68 = icmp eq %struct.tcp_seg* %67, null, !dbg !496
  br i1 %68, label %70, label %69, !dbg !497

; <label>:69:                                     ; preds = %65, %64
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !498
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !501
  tail call void @ukplat_terminate(i32 3) #8, !dbg !501
  unreachable, !dbg !501

; <label>:70:                                     ; preds = %31, %59, %58, %65
  %71 = phi i16* [ %32, %31 ], [ %44, %59 ], [ %44, %58 ], [ %44, %65 ], !dbg !446
  %72 = phi i16 [ %33, %31 ], [ %45, %59 ], [ %45, %58 ], [ 0, %65 ], !dbg !446
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !507
  %74 = load %struct.tcp_seg*, %struct.tcp_seg** %73, align 8, !dbg !507, !tbaa !487
  %75 = icmp eq %struct.tcp_seg* %74, null, !dbg !508
  br i1 %75, label %190, label %76, !dbg !509

; <label>:76:                                     ; preds = %70, %76
  %77 = phi %struct.tcp_seg* [ %79, %76 ], [ %74, %70 ], !dbg !510
  %78 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 0, !dbg !513
  %79 = load %struct.tcp_seg*, %struct.tcp_seg** %78, align 8, !dbg !513, !tbaa !514
  %80 = icmp eq %struct.tcp_seg* %79, null, !dbg !516
  br i1 %80, label %81, label %76, !dbg !517, !llvm.loop !518

; <label>:81:                                     ; preds = %76
  %82 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 3, !dbg !520
  %83 = load i8, i8* %82, align 2, !dbg !520, !tbaa !521
  %84 = zext i8 %83 to i32, !dbg !520
  %85 = shl nuw nsw i32 %84, 2, !dbg !520
  %86 = and i32 %85, 4, !dbg !520
  %87 = lshr i32 %84, 1, !dbg !520
  %88 = and i32 %87, 4, !dbg !520
  %89 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 2, !dbg !522
  %90 = load i16, i16* %89, align 8, !dbg !522, !tbaa !525
  %91 = zext i16 %90 to i32, !dbg !522
  %92 = add nuw nsw i32 %88, %91, !dbg !520
  %93 = add nuw nsw i32 %92, %86, !dbg !522
  %94 = icmp ult i32 %22, %93, !dbg !522
  br i1 %94, label %95, label %96, !dbg !526

; <label>:95:                                     ; preds = %81
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !527
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !530
  tail call void @ukplat_terminate(i32 3) #8, !dbg !530
  unreachable, !dbg !530

; <label>:96:                                     ; preds = %81
  %97 = sub nsw i32 %22, %93, !dbg !534
  %98 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !535
  %99 = load i16, i16* %98, align 2, !dbg !535, !tbaa !536
  store i16 %99, i16* %5, align 2, !dbg !537, !tbaa !393
  %100 = zext i16 %99 to i32, !dbg !538
  %101 = icmp eq i16 %99, 0, !dbg !540
  br i1 %101, label %119, label %102, !dbg !541

; <label>:102:                                    ; preds = %96
  %103 = and i32 %97, 65535, !dbg !542
  %104 = icmp ult i32 %103, %100, !dbg !542
  br i1 %104, label %105, label %106, !dbg !546

; <label>:105:                                    ; preds = %102
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !547
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !550
  tail call void @ukplat_terminate(i32 3) #8, !dbg !550
  unreachable, !dbg !550

; <label>:106:                                    ; preds = %102
  %107 = zext i16 %2 to i32, !dbg !554
  %108 = icmp ult i32 %100, %107, !dbg !554
  %109 = select i1 %108, i32 %100, i32 %107, !dbg !554
  %110 = icmp slt i32 %103, %109, !dbg !554
  %111 = select i1 %110, i32 %103, i32 %109, !dbg !554
  %112 = trunc i32 %111 to i16, !dbg !554
  %113 = sub i16 %99, %112, !dbg !555
  store i16 %113, i16* %5, align 2, !dbg !555, !tbaa !393
  %114 = sub nsw i32 %97, %111, !dbg !556
  %115 = icmp eq i16 %113, 0, !dbg !557
  %116 = icmp eq i16 %112, %2, !dbg !557
  %117 = or i1 %116, %115, !dbg !557
  br i1 %117, label %119, label %118, !dbg !557

; <label>:118:                                    ; preds = %106
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !560
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !563
  tail call void @ukplat_terminate(i32 3) #8, !dbg !563
  unreachable, !dbg !563

; <label>:119:                                    ; preds = %96, %106
  %120 = phi i32 [ %114, %106 ], [ %97, %96 ]
  %121 = phi %struct.tcp_seg* [ %77, %106 ], [ null, %96 ]
  %122 = phi i16 [ %112, %106 ], [ 0, %96 ]
  %123 = trunc i32 %120 to i16, !dbg !567
  %124 = zext i16 %122 to i32, !dbg !568
  %125 = zext i16 %2 to i32, !dbg !569
  %126 = icmp ult i16 %122, %2, !dbg !570
  br i1 %126, label %127, label %197, !dbg !571

; <label>:127:                                    ; preds = %119
  %128 = and i32 %120, 65535, !dbg !572
  %129 = icmp eq i16 %123, 0, !dbg !573
  %130 = icmp eq i16 %90, 0, !dbg !574
  %131 = or i1 %130, %129, !dbg !575
  br i1 %131, label %197, label %132, !dbg !575

; <label>:132:                                    ; preds = %127
  %133 = sub nsw i32 %125, %124, !dbg !576
  %134 = icmp sgt i32 %133, %128, !dbg !576
  %135 = select i1 %134, i32 %128, i32 %133, !dbg !576
  %136 = trunc i32 %135 to i16, !dbg !576
  %137 = and i8 %3, 1, !dbg !578
  %138 = icmp eq i8 %137, 0, !dbg !578
  br i1 %138, label %152, label %139, !dbg !579

; <label>:139:                                    ; preds = %132
  %140 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 0, i16 zeroext %136, i16 zeroext %123, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext 1) #7, !dbg !580
  %141 = icmp eq %struct.pbuf* %140, null, !dbg !583
  br i1 %141, label %390, label %142, !dbg !584

; <label>:142:                                    ; preds = %139
  %143 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %140, i64 0, i32 1, !dbg !585
  %144 = load i8*, i8** %143, align 8, !dbg !585, !tbaa !586
  %145 = zext i16 %122 to i64, !dbg !585
  %146 = getelementptr inbounds i8, i8* %1, i64 %145, !dbg !585
  %147 = and i32 %135, 65535, !dbg !585
  %148 = zext i32 %147 to i64, !dbg !585
  %149 = call i8* @memcpy(i8* %144, i8* nonnull %146, i64 %148) #9, !dbg !585
  %150 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %140) #9, !dbg !588
  %151 = add i16 %150, %72, !dbg !589
  br label %184, !dbg !590

; <label>:152:                                    ; preds = %132
  %153 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 1, !dbg !591
  %154 = load %struct.pbuf*, %struct.pbuf** %153, align 8, !dbg !591, !tbaa !593
  br label %155, !dbg !595

; <label>:155:                                    ; preds = %155, %152
  %156 = phi %struct.pbuf* [ %154, %152 ], [ %158, %155 ], !dbg !596
  %157 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %156, i64 0, i32 0, !dbg !598
  %158 = load %struct.pbuf*, %struct.pbuf** %157, align 8, !dbg !598, !tbaa !599
  %159 = icmp eq %struct.pbuf* %158, null, !dbg !600
  br i1 %159, label %160, label %155, !dbg !601, !llvm.loop !602

; <label>:160:                                    ; preds = %155
  %161 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %156, i64 0, i32 4, !dbg !604
  %162 = load i8, i8* %161, align 4, !dbg !604, !tbaa !606
  %163 = icmp ult i8 %162, 64, !dbg !607
  br i1 %163, label %164, label %175, !dbg !608

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %156, i64 0, i32 1, !dbg !609
  %166 = load i8*, i8** %165, align 8, !dbg !609, !tbaa !586
  %167 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %156, i64 0, i32 3, !dbg !610
  %168 = load i16, i16* %167, align 2, !dbg !610, !tbaa !611
  %169 = zext i16 %168 to i64, !dbg !612
  %170 = getelementptr inbounds i8, i8* %166, i64 %169, !dbg !612
  %171 = icmp eq i8* %170, %1, !dbg !613
  br i1 %171, label %172, label %175, !dbg !614

; <label>:172:                                    ; preds = %164
  %173 = icmp eq i16 %122, 0, !dbg !615
  br i1 %173, label %184, label %174, !dbg !619

; <label>:174:                                    ; preds = %172
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !620
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !623
  tail call void @ukplat_terminate(i32 3) #8, !dbg !623
  unreachable, !dbg !623

; <label>:175:                                    ; preds = %164, %160
  %176 = tail call %struct.pbuf* @pbuf_alloc(i32 0, i16 zeroext %136, i32 1) #9, !dbg !627
  %177 = icmp eq %struct.pbuf* %176, null, !dbg !630
  br i1 %177, label %390, label %178, !dbg !631

; <label>:178:                                    ; preds = %175
  %179 = zext i16 %122 to i64, !dbg !632
  %180 = getelementptr inbounds i8, i8* %1, i64 %179, !dbg !632
  %181 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %176, i64 0, i32 1, !dbg !633
  store i8* %180, i8** %181, align 8, !dbg !634, !tbaa !635
  %182 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %176) #9, !dbg !637
  %183 = add i16 %182, %72, !dbg !638
  br label %184

; <label>:184:                                    ; preds = %178, %172, %142
  %185 = phi i16 [ %122, %142 ], [ 0, %172 ], [ %122, %178 ]
  %186 = phi i16 [ %151, %142 ], [ %72, %172 ], [ %183, %178 ], !dbg !639
  %187 = phi i16 [ 0, %142 ], [ %136, %172 ], [ 0, %178 ], !dbg !640
  %188 = phi %struct.pbuf* [ %140, %142 ], [ null, %172 ], [ %176, %178 ], !dbg !639
  %189 = add i16 %185, %136, !dbg !641
  br label %197

; <label>:190:                                    ; preds = %70
  %191 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !642
  %192 = load i16, i16* %191, align 2, !dbg !642, !tbaa !536
  %193 = icmp eq i16 %192, 0, !dbg !642
  br i1 %193, label %194, label %196, !dbg !646

; <label>:194:                                    ; preds = %190
  %195 = zext i16 %2 to i32, !dbg !647
  br label %197, !dbg !646

; <label>:196:                                    ; preds = %190
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !648
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !651
  tail call void @ukplat_terminate(i32 3) #8, !dbg !651
  unreachable, !dbg !651

; <label>:197:                                    ; preds = %194, %119, %127, %184
  %198 = phi i32 [ %195, %194 ], [ %125, %119 ], [ %125, %127 ], [ %125, %184 ], !dbg !647
  %199 = phi i16 [ %72, %194 ], [ %72, %119 ], [ %72, %127 ], [ %186, %184 ], !dbg !655
  %200 = phi i16 [ 0, %194 ], [ %122, %119 ], [ %122, %127 ], [ %185, %184 ], !dbg !639
  %201 = phi i16 [ 0, %194 ], [ 0, %119 ], [ 0, %127 ], [ %187, %184 ], !dbg !398
  %202 = phi i16 [ 0, %194 ], [ %122, %119 ], [ %122, %127 ], [ %189, %184 ], !dbg !639
  %203 = phi %struct.tcp_seg* [ null, %194 ], [ %121, %119 ], [ %121, %127 ], [ %77, %184 ], !dbg !639
  %204 = phi %struct.tcp_seg* [ null, %194 ], [ %77, %119 ], [ %77, %127 ], [ %77, %184 ], !dbg !639
  %205 = phi %struct.pbuf* [ null, %194 ], [ null, %119 ], [ null, %127 ], [ %188, %184 ], !dbg !639
  %206 = icmp ult i16 %202, %2, !dbg !656
  br i1 %206, label %207, label %279, !dbg !657

; <label>:207:                                    ; preds = %197
  %208 = and i8 %3, 1
  %209 = icmp eq i8 %208, 0
  %210 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37
  br label %211, !dbg !657

; <label>:211:                                    ; preds = %207, %275
  %212 = phi i16 [ %202, %207 ], [ %277, %275 ]
  %213 = phi %struct.tcp_seg* [ null, %207 ], [ %266, %275 ]
  %214 = phi %struct.tcp_seg* [ null, %207 ], [ %276, %275 ]
  %215 = phi i16 [ %199, %207 ], [ %259, %275 ]
  %216 = zext i16 %212 to i32, !dbg !658
  %217 = sub i16 %2, %212, !dbg !659
  %218 = zext i16 %217 to i32, !dbg !662
  %219 = icmp ugt i32 %22, %218, !dbg !662
  %220 = select i1 %219, i32 %218, i32 %22, !dbg !662
  %221 = trunc i32 %220 to i16, !dbg !662
  br i1 %209, label %240, label %222, !dbg !664

; <label>:222:                                    ; preds = %211
  %223 = icmp eq %struct.tcp_seg* %214, null, !dbg !665
  %224 = zext i1 %223 to i8, !dbg !668
  %225 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 74, i16 zeroext %221, i16 zeroext %23, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext %224) #7, !dbg !669
  %226 = icmp eq %struct.pbuf* %225, null, !dbg !671
  br i1 %226, label %390, label %227, !dbg !672

; <label>:227:                                    ; preds = %222
  %228 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %225, i64 0, i32 3, !dbg !673
  %229 = load i16, i16* %228, align 2, !dbg !673, !tbaa !611
  %230 = zext i16 %229 to i32, !dbg !673
  %231 = icmp sgt i32 %220, %230, !dbg !673
  br i1 %231, label %232, label %233, !dbg !676

; <label>:232:                                    ; preds = %227
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !677
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !680
  call void @ukplat_terminate(i32 3) #8, !dbg !680
  unreachable, !dbg !680

; <label>:233:                                    ; preds = %227
  %234 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %225, i64 0, i32 1, !dbg !684
  %235 = load i8*, i8** %234, align 8, !dbg !684, !tbaa !586
  %236 = zext i16 %212 to i64, !dbg !684
  %237 = getelementptr inbounds i8, i8* %1, i64 %236, !dbg !684
  %238 = zext i32 %220 to i64, !dbg !684
  %239 = call i8* @memcpy(i8* %235, i8* nonnull %237, i64 %238) #9, !dbg !684
  br label %256, !dbg !685

; <label>:240:                                    ; preds = %211
  %241 = load i16, i16* %5, align 2, !dbg !686, !tbaa !393
  %242 = icmp eq i16 %241, 0, !dbg !686
  br i1 %242, label %244, label %243, !dbg !689

; <label>:243:                                    ; preds = %240
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !690
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !693
  call void @ukplat_terminate(i32 3) #8, !dbg !693
  unreachable, !dbg !693

; <label>:244:                                    ; preds = %240
  %245 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %221, i32 1) #9, !dbg !697
  %246 = icmp eq %struct.pbuf* %245, null, !dbg !700
  br i1 %246, label %390, label %247, !dbg !701

; <label>:247:                                    ; preds = %244
  %248 = zext i16 %212 to i64, !dbg !702
  %249 = getelementptr inbounds i8, i8* %1, i64 %248, !dbg !702
  %250 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %245, i64 0, i32 1, !dbg !703
  store i8* %249, i8** %250, align 8, !dbg !704, !tbaa !635
  %251 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext 0, i32 640) #9, !dbg !705
  %252 = icmp eq %struct.pbuf* %251, null, !dbg !707
  br i1 %252, label %253, label %255, !dbg !708

; <label>:253:                                    ; preds = %247
  %254 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %245) #9, !dbg !709
  br label %390, !dbg !711

; <label>:255:                                    ; preds = %247
  call void @pbuf_cat(%struct.pbuf* nonnull %251, %struct.pbuf* nonnull %245) #9, !dbg !712
  br label %256

; <label>:256:                                    ; preds = %255, %233
  %257 = phi %struct.pbuf* [ %225, %233 ], [ %251, %255 ]
  %258 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %257) #9, !dbg !713
  %259 = add i16 %258, %215, !dbg !714
  %260 = icmp ugt i16 %259, 1436, !dbg !715
  br i1 %260, label %261, label %263, !dbg !717

; <label>:261:                                    ; preds = %256
  %262 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %257) #9, !dbg !718
  br label %390, !dbg !720

; <label>:263:                                    ; preds = %256
  %264 = load i32, i32* %210, align 4, !dbg !721, !tbaa !723
  %265 = add i32 %264, %216, !dbg !724
  %266 = call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %257, i8 zeroext 0, i32 %265, i8 zeroext 0) #7, !dbg !725
  %267 = icmp eq %struct.tcp_seg* %266, null, !dbg !726
  br i1 %267, label %390, label %268, !dbg !727

; <label>:268:                                    ; preds = %263
  %269 = icmp eq %struct.tcp_seg* %214, null, !dbg !728
  br i1 %269, label %275, label %270, !dbg !730

; <label>:270:                                    ; preds = %268
  %271 = icmp eq %struct.tcp_seg* %213, null, !dbg !731
  br i1 %271, label %272, label %273, !dbg !735

; <label>:272:                                    ; preds = %270
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !736
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !739
  call void @ukplat_terminate(i32 3) #8, !dbg !739
  unreachable, !dbg !739

; <label>:273:                                    ; preds = %270
  %274 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %213, i64 0, i32 0, !dbg !743
  store %struct.tcp_seg* %266, %struct.tcp_seg** %274, align 8, !dbg !744, !tbaa !514
  br label %275

; <label>:275:                                    ; preds = %273, %268
  %276 = phi %struct.tcp_seg* [ %214, %273 ], [ %266, %268 ], !dbg !639
  %277 = add i16 %212, %221, !dbg !745
  %278 = icmp ult i16 %277, %2, !dbg !656
  br i1 %278, label %211, label %279, !dbg !657

; <label>:279:                                    ; preds = %275, %197
  %280 = phi i16 [ %199, %197 ], [ %259, %275 ], !dbg !655
  %281 = phi %struct.tcp_seg* [ null, %197 ], [ %276, %275 ], !dbg !388
  %282 = phi %struct.tcp_seg* [ %203, %197 ], [ %266, %275 ], !dbg !746
  %283 = icmp eq i16 %200, 0, !dbg !747
  br i1 %283, label %316, label %284, !dbg !748

; <label>:284:                                    ; preds = %279
  %285 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 1, !dbg !749
  %286 = load %struct.pbuf*, %struct.pbuf** %285, align 8, !dbg !752, !tbaa !754
  %287 = icmp eq %struct.pbuf* %286, null, !dbg !755
  br i1 %287, label %312, label %288, !dbg !755

; <label>:288:                                    ; preds = %284
  %289 = zext i16 %200 to i64
  br label %290, !dbg !755

; <label>:290:                                    ; preds = %288, %309
  %291 = phi %struct.pbuf* [ %286, %288 ], [ %310, %309 ]
  %292 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %291, i64 0, i32 2, !dbg !756
  %293 = load i16, i16* %292, align 8, !dbg !758, !tbaa !759
  %294 = add i16 %293, %200, !dbg !758
  store i16 %294, i16* %292, align 8, !dbg !758, !tbaa !759
  %295 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %291, i64 0, i32 0, !dbg !760
  %296 = load %struct.pbuf*, %struct.pbuf** %295, align 8, !dbg !760, !tbaa !599
  %297 = icmp eq %struct.pbuf* %296, null, !dbg !762
  br i1 %297, label %298, label %309, !dbg !763

; <label>:298:                                    ; preds = %290
  %299 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %291, i64 0, i32 1, !dbg !764
  %300 = load i8*, i8** %299, align 8, !dbg !764, !tbaa !586
  %301 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %291, i64 0, i32 3, !dbg !764
  %302 = load i16, i16* %301, align 2, !dbg !764, !tbaa !611
  %303 = zext i16 %302 to i64, !dbg !764
  %304 = getelementptr inbounds i8, i8* %300, i64 %303, !dbg !764
  %305 = call i8* @memcpy(i8* %304, i8* nonnull %1, i64 %289) #9, !dbg !764
  %306 = load i16, i16* %301, align 2, !dbg !766, !tbaa !611
  %307 = add i16 %306, %200, !dbg !766
  store i16 %307, i16* %301, align 2, !dbg !766, !tbaa !611
  %308 = load %struct.pbuf*, %struct.pbuf** %295, align 8, !dbg !752, !tbaa !754
  br label %309, !dbg !767

; <label>:309:                                    ; preds = %290, %298
  %310 = phi %struct.pbuf* [ %296, %290 ], [ %308, %298 ], !dbg !752
  %311 = icmp eq %struct.pbuf* %310, null, !dbg !755
  br i1 %311, label %312, label %290, !dbg !755, !llvm.loop !768

; <label>:312:                                    ; preds = %309, %284
  %313 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 2, !dbg !770
  %314 = load i16, i16* %313, align 8, !dbg !771, !tbaa !525
  %315 = add i16 %314, %200, !dbg !771
  store i16 %315, i16* %313, align 8, !dbg !771, !tbaa !525
  br label %316, !dbg !772

; <label>:316:                                    ; preds = %279, %312
  %317 = load i16, i16* %5, align 2, !dbg !773, !tbaa !393
  %318 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !774
  store i16 %317, i16* %318, align 2, !dbg !775, !tbaa !536
  %319 = icmp eq %struct.pbuf* %205, null, !dbg !776
  br i1 %319, label %328, label %320, !dbg !777

; <label>:320:                                    ; preds = %316
  %321 = icmp eq %struct.tcp_seg* %204, null, !dbg !778
  br i1 %321, label %322, label %323, !dbg !782

; <label>:322:                                    ; preds = %320
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !783
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !786
  call void @ukplat_terminate(i32 3) #8, !dbg !786
  unreachable, !dbg !786

; <label>:323:                                    ; preds = %320
  %324 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 1, !dbg !790
  %325 = load %struct.pbuf*, %struct.pbuf** %324, align 8, !dbg !790, !tbaa !593
  call void @pbuf_cat(%struct.pbuf* %325, %struct.pbuf* nonnull %205) #9, !dbg !791
  %326 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %205, i64 0, i32 2, !dbg !792
  %327 = load i16, i16* %326, align 8, !dbg !792, !tbaa !759
  br label %350, !dbg !793

; <label>:328:                                    ; preds = %316
  %329 = icmp eq i16 %201, 0, !dbg !794
  %330 = icmp eq %struct.tcp_seg* %204, null, !dbg !795
  br i1 %329, label %349, label %331, !dbg !798

; <label>:331:                                    ; preds = %328
  br i1 %330, label %336, label %332, !dbg !799

; <label>:332:                                    ; preds = %331
  %333 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 1, !dbg !799
  %334 = load %struct.pbuf*, %struct.pbuf** %333, align 8, !dbg !799, !tbaa !593
  %335 = icmp eq %struct.pbuf* %334, null, !dbg !799
  br i1 %335, label %336, label %337, !dbg !800

; <label>:336:                                    ; preds = %332, %331
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !801
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !804
  call void @ukplat_terminate(i32 3) #8, !dbg !804
  unreachable, !dbg !804

; <label>:337:                                    ; preds = %332, %337
  %338 = phi %struct.pbuf* [ %340, %337 ], [ %334, %332 ], !dbg !808
  %339 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %338, i64 0, i32 0, !dbg !812
  %340 = load %struct.pbuf*, %struct.pbuf** %339, align 8, !dbg !812, !tbaa !599
  %341 = icmp eq %struct.pbuf* %340, null, !dbg !813
  %342 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %338, i64 0, i32 2, !dbg !814
  %343 = load i16, i16* %342, align 8, !dbg !814, !tbaa !759
  %344 = add i16 %343, %201, !dbg !814
  store i16 %344, i16* %342, align 8, !dbg !814, !tbaa !759
  br i1 %341, label %345, label %337, !dbg !815, !llvm.loop !816

; <label>:345:                                    ; preds = %337
  %346 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %338, i64 0, i32 3, !dbg !818
  %347 = load i16, i16* %346, align 2, !dbg !819, !tbaa !611
  %348 = add i16 %347, %201, !dbg !819
  store i16 %348, i16* %346, align 2, !dbg !819, !tbaa !611
  br label %350, !dbg !820

; <label>:349:                                    ; preds = %328
  br i1 %330, label %357, label %355, !dbg !821

; <label>:350:                                    ; preds = %345, %323
  %351 = phi i16 [ %327, %323 ], [ %201, %345 ]
  %352 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 2, !dbg !822
  %353 = load i16, i16* %352, align 8, !dbg !814, !tbaa !525
  %354 = add i16 %353, %351, !dbg !814
  store i16 %354, i16* %352, align 8, !dbg !814, !tbaa !525
  br label %355, !dbg !823

; <label>:355:                                    ; preds = %350, %349
  %356 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %204, i64 0, i32 0, !dbg !823
  br label %357

; <label>:357:                                    ; preds = %349, %355
  %358 = phi %struct.tcp_seg** [ %356, %355 ], [ %73, %349 ]
  store %struct.tcp_seg* %281, %struct.tcp_seg** %358, align 8, !dbg !826, !tbaa !754
  %359 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !828
  %360 = load i32, i32* %359, align 4, !dbg !829, !tbaa !723
  %361 = add i32 %360, %198, !dbg !829
  store i32 %361, i32* %359, align 4, !dbg !829, !tbaa !723
  %362 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !830
  %363 = load i32, i32* %362, align 8, !dbg !831, !tbaa !451
  %364 = sub i32 %363, %198, !dbg !831
  store i32 %364, i32* %362, align 8, !dbg !831, !tbaa !451
  store i16 %280, i16* %71, align 4, !dbg !832, !tbaa !447
  %365 = icmp eq i16 %280, 0, !dbg !833
  br i1 %365, label %374, label %366, !dbg !835

; <label>:366:                                    ; preds = %357
  %367 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !836
  %368 = load %struct.tcp_seg*, %struct.tcp_seg** %367, align 8, !dbg !836, !tbaa !480
  %369 = icmp eq %struct.tcp_seg* %368, null, !dbg !836
  br i1 %369, label %370, label %374, !dbg !836

; <label>:370:                                    ; preds = %366
  %371 = load %struct.tcp_seg*, %struct.tcp_seg** %73, align 8, !dbg !836, !tbaa !487
  %372 = icmp eq %struct.tcp_seg* %371, null, !dbg !836
  br i1 %372, label %373, label %374, !dbg !840

; <label>:373:                                    ; preds = %370
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !841
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !844
  call void @ukplat_terminate(i32 3) #8, !dbg !844
  unreachable, !dbg !844

; <label>:374:                                    ; preds = %370, %366, %357
  %375 = icmp eq %struct.tcp_seg* %282, null, !dbg !848
  br i1 %375, label %415, label %376, !dbg !850

; <label>:376:                                    ; preds = %374
  %377 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %282, i64 0, i32 4, !dbg !851
  %378 = load %struct.tcp_hdr*, %struct.tcp_hdr** %377, align 8, !dbg !851, !tbaa !852
  %379 = icmp ne %struct.tcp_hdr* %378, null, !dbg !853
  %380 = and i8 %3, 2, !dbg !854
  %381 = icmp eq i8 %380, 0, !dbg !855
  %382 = and i1 %381, %379, !dbg !856
  br i1 %382, label %383, label %415, !dbg !856

; <label>:383:                                    ; preds = %376
  %384 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %378, i64 0, i32 4, !dbg !857
  %385 = load i16, i16* %384, align 1, !dbg !857, !tbaa !859
  %386 = call zeroext i16 @lwip_htons(i16 zeroext 8) #9, !dbg !857
  %387 = or i16 %386, %385, !dbg !857
  %388 = load %struct.tcp_hdr*, %struct.tcp_hdr** %377, align 8, !dbg !857, !tbaa !852
  %389 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %388, i64 0, i32 4, !dbg !857
  store i16 %387, i16* %389, align 1, !dbg !857, !tbaa !859
  br label %415, !dbg !861

; <label>:390:                                    ; preds = %244, %263, %222, %253, %261, %175, %139
  %391 = phi %struct.tcp_seg* [ null, %139 ], [ null, %175 ], [ %214, %261 ], [ %214, %253 ], [ %214, %222 ], [ %214, %263 ], [ %214, %244 ], !dbg !388
  %392 = phi %struct.pbuf* [ null, %139 ], [ null, %175 ], [ %205, %261 ], [ %205, %253 ], [ %205, %222 ], [ %205, %263 ], [ %205, %244 ], !dbg !862
  %393 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !863
  %394 = load i16, i16* %393, align 2, !dbg !863, !tbaa !457
  %395 = or i16 %394, 128, !dbg !863
  store i16 %395, i16* %393, align 2, !dbg !863, !tbaa !457
  %396 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !865, !tbaa !465
  %397 = add i16 %396, 1, !dbg !865
  store i16 %397, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !865, !tbaa !465
  %398 = icmp eq %struct.pbuf* %392, null, !dbg !866
  br i1 %398, label %401, label %399, !dbg !868

; <label>:399:                                    ; preds = %390
  %400 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %392) #9, !dbg !869
  br label %401, !dbg !871

; <label>:401:                                    ; preds = %390, %399
  %402 = icmp eq %struct.tcp_seg* %391, null, !dbg !872
  br i1 %402, label %404, label %403, !dbg !874

; <label>:403:                                    ; preds = %401
  call void @tcp_segs_free(%struct.tcp_seg* nonnull %391) #9, !dbg !875
  br label %404, !dbg !877

; <label>:404:                                    ; preds = %401, %403
  %405 = load i16, i16* %71, align 4, !dbg !878, !tbaa !447
  %406 = icmp eq i16 %405, 0, !dbg !880
  br i1 %406, label %415, label %407, !dbg !881

; <label>:407:                                    ; preds = %404
  %408 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !882
  %409 = load %struct.tcp_seg*, %struct.tcp_seg** %408, align 8, !dbg !882, !tbaa !480
  %410 = icmp eq %struct.tcp_seg* %409, null, !dbg !882
  br i1 %410, label %411, label %415, !dbg !882

; <label>:411:                                    ; preds = %407
  %412 = load %struct.tcp_seg*, %struct.tcp_seg** %73, align 8, !dbg !882, !tbaa !487
  %413 = icmp eq %struct.tcp_seg* %412, null, !dbg !882
  br i1 %413, label %414, label %415, !dbg !886

; <label>:414:                                    ; preds = %411
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !887
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !890
  call void @ukplat_terminate(i32 3) #8, !dbg !890
  unreachable, !dbg !890

; <label>:415:                                    ; preds = %47, %39, %26, %404, %407, %411, %383, %374, %376
  %416 = phi i8 [ 0, %376 ], [ 0, %374 ], [ 0, %383 ], [ -1, %411 ], [ -1, %407 ], [ -1, %404 ], [ -1, %39 ], [ -1, %47 ], [ -11, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #6, !dbg !894
  ret i8 %416, !dbg !894
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !896
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !896
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !898
  call void @llvm.va_start(i8* nonnull %3), !dbg !898
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.40, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !899
  call void @llvm.va_end(i8* nonnull %3), !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !903
  ret void, !dbg !903
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32, i16 zeroext, i16 zeroext, i16*, %struct.tcp_pcb* readonly, i8 zeroext, i8 zeroext) unnamed_addr #0 !dbg !904 {
  %8 = icmp eq i16* %3, null, !dbg !929
  br i1 %8, label %9, label %10, !dbg !932

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !933
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !936
  tail call void @ukplat_terminate(i32 3) #8, !dbg !936
  unreachable, !dbg !936

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.tcp_pcb* %4, null, !dbg !940
  br i1 %11, label %12, label %13, !dbg !943

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !944
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !947
  tail call void @ukplat_terminate(i32 3) #8, !dbg !947
  unreachable, !dbg !947

; <label>:13:                                     ; preds = %10
  %14 = zext i16 %1 to i32, !dbg !951
  %15 = zext i16 %2 to i32, !dbg !953
  %16 = icmp ult i16 %1, %2, !dbg !954
  br i1 %16, label %17, label %40, !dbg !955

; <label>:17:                                     ; preds = %13
  %18 = and i8 %5, 2, !dbg !956
  %19 = icmp eq i8 %18, 0, !dbg !956
  br i1 %19, label %20, label %35, !dbg !959

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !960
  %22 = load i16, i16* %21, align 2, !dbg !960, !tbaa !457
  %23 = and i16 %22, 64, !dbg !961
  %24 = icmp eq i16 %23, 0, !dbg !961
  br i1 %24, label %25, label %40, !dbg !962

; <label>:25:                                     ; preds = %20
  %26 = icmp eq i8 %6, 0, !dbg !963
  br i1 %26, label %35, label %27, !dbg !964

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 44, !dbg !965
  %29 = load %struct.tcp_seg*, %struct.tcp_seg** %28, align 8, !dbg !965, !tbaa !487
  %30 = icmp eq %struct.tcp_seg* %29, null, !dbg !966
  br i1 %30, label %31, label %35, !dbg !967

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 45, !dbg !968
  %33 = load %struct.tcp_seg*, %struct.tcp_seg** %32, align 8, !dbg !968, !tbaa !480
  %34 = icmp eq %struct.tcp_seg* %33, null, !dbg !969
  br i1 %34, label %40, label %35, !dbg !970

; <label>:35:                                     ; preds = %31, %27, %25, %17
  %36 = add nuw nsw i32 %14, 1460, !dbg !971
  %37 = icmp ugt i32 %36, %15, !dbg !971
  %38 = select i1 %37, i32 %15, i32 %36, !dbg !971
  %39 = trunc i32 %38 to i16, !dbg !971
  br label %40, !dbg !973

; <label>:40:                                     ; preds = %31, %20, %35, %13
  %41 = phi i16 [ %39, %35 ], [ %1, %20 ], [ %1, %31 ], [ %1, %13 ], !dbg !974
  %42 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %41, i32 640) #9, !dbg !975
  %43 = icmp eq %struct.pbuf* %42, null, !dbg !977
  br i1 %43, label %54, label %44, !dbg !979

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 0, !dbg !980
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !980, !tbaa !599
  %47 = icmp eq %struct.pbuf* %46, null, !dbg !980
  br i1 %47, label %49, label %48, !dbg !983

; <label>:48:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !984
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !987
  tail call void @ukplat_terminate(i32 3) #8, !dbg !987
  unreachable, !dbg !987

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 3, !dbg !991
  %51 = load i16, i16* %50, align 2, !dbg !991, !tbaa !611
  %52 = sub i16 %51, %1, !dbg !992
  store i16 %52, i16* %3, align 2, !dbg !993, !tbaa !393
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 2, !dbg !994
  store i16 %1, i16* %53, align 8, !dbg !995, !tbaa !759
  store i16 %1, i16* %50, align 2, !dbg !996, !tbaa !611
  br label %54, !dbg !997

; <label>:54:                                     ; preds = %40, %49
  ret %struct.pbuf* %42, !dbg !998
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
define internal fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, i8 zeroext, i32, i8 zeroext) unnamed_addr #0 !dbg !999 {
  %6 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1015
  br i1 %6, label %7, label %8, !dbg !1018

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1019
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1022
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1022
  unreachable, !dbg !1022

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1026
  br i1 %9, label %10, label %11, !dbg !1029

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !1030
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1033
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1033
  unreachable, !dbg !1033

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* @memp_malloc(i32 3) #9, !dbg !1037
  %13 = bitcast i8* %12 to %struct.tcp_seg*, !dbg !1039
  %14 = icmp eq i8* %12, null, !dbg !1041
  br i1 %14, label %15, label %17, !dbg !1042

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !1043
  br label %72, !dbg !1045

; <label>:17:                                     ; preds = %11
  %18 = shl i8 %4, 2, !dbg !1046
  %19 = and i8 %18, 4, !dbg !1046
  %20 = lshr i8 %4, 1, !dbg !1046
  %21 = and i8 %20, 4, !dbg !1046
  %22 = add nuw nsw i8 %19, %21, !dbg !1046
  %23 = getelementptr inbounds i8, i8* %12, i64 18, !dbg !1048
  store i8 %4, i8* %23, align 2, !dbg !1049, !tbaa !521
  %24 = bitcast i8* %12 to %struct.tcp_seg**, !dbg !1050
  store %struct.tcp_seg* null, %struct.tcp_seg** %24, align 8, !dbg !1051, !tbaa !514
  %25 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1052
  %26 = bitcast i8* %25 to %struct.pbuf**, !dbg !1052
  store %struct.pbuf* %1, %struct.pbuf** %26, align 8, !dbg !1053, !tbaa !593
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1054
  %28 = load i16, i16* %27, align 8, !dbg !1054, !tbaa !759
  %29 = zext i16 %28 to i32, !dbg !1054
  %30 = zext i8 %22 to i32, !dbg !1054
  %31 = icmp ult i32 %29, %30, !dbg !1054
  br i1 %31, label %32, label %33, !dbg !1057

; <label>:32:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !1058
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1061
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1061
  unreachable, !dbg !1061

; <label>:33:                                     ; preds = %17
  %34 = zext i8 %22 to i16, !dbg !1065
  %35 = sub i16 %28, %34, !dbg !1065
  %36 = getelementptr inbounds i8, i8* %12, i64 16, !dbg !1066
  %37 = bitcast i8* %36 to i16*, !dbg !1066
  store i16 %35, i16* %37, align 8, !dbg !1067, !tbaa !525
  %38 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 20) #9, !dbg !1068
  %39 = icmp eq i8 %38, 0, !dbg !1068
  br i1 %39, label %43, label %40, !dbg !1070

; <label>:40:                                     ; preds = %33
  %41 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1071, !tbaa !1073
  %42 = add i16 %41, 1, !dbg !1071
  store i16 %42, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1071, !tbaa !1073
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %13) #9, !dbg !1074
  br label %72, !dbg !1075

; <label>:43:                                     ; preds = %33
  %44 = load %struct.pbuf*, %struct.pbuf** %26, align 8, !dbg !1076, !tbaa !593
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i64 0, i32 1, !dbg !1077
  %46 = bitcast i8** %45 to i64*, !dbg !1077
  %47 = load i64, i64* %46, align 8, !dbg !1077, !tbaa !586
  %48 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !1078
  %49 = bitcast i8* %48 to %struct.tcp_hdr**, !dbg !1078
  %50 = bitcast i8* %48 to i64*, !dbg !1079
  store i64 %47, i64* %50, align 8, !dbg !1079, !tbaa !852
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1080
  %52 = load i16, i16* %51, align 2, !dbg !1080, !tbaa !1081
  %53 = tail call zeroext i16 @lwip_htons(i16 zeroext %52) #9, !dbg !1082
  %54 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1083, !tbaa !852
  %55 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %54, i64 0, i32 0, !dbg !1084
  store i16 %53, i16* %55, align 1, !dbg !1085, !tbaa !1086
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1087
  %57 = load i16, i16* %56, align 8, !dbg !1087, !tbaa !1088
  %58 = tail call zeroext i16 @lwip_htons(i16 zeroext %57) #9, !dbg !1089
  %59 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1090, !tbaa !852
  %60 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %59, i64 0, i32 1, !dbg !1091
  store i16 %58, i16* %60, align 1, !dbg !1092, !tbaa !1093
  %61 = tail call i32 @lwip_htonl(i32 %3) #9, !dbg !1094
  %62 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1095, !tbaa !852
  %63 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %62, i64 0, i32 2, !dbg !1096
  store i32 %61, i32* %63, align 1, !dbg !1097, !tbaa !1098
  %64 = shl nuw nsw i16 %34, 10, !dbg !1099
  %65 = add nuw i16 %64, 20480, !dbg !1099
  %66 = zext i8 %2 to i16, !dbg !1099
  %67 = or i16 %65, %66, !dbg !1099
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %67) #9, !dbg !1099
  %69 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1099, !tbaa !852
  %70 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 4, !dbg !1099
  store i16 %68, i16* %70, align 1, !dbg !1099, !tbaa !859
  %71 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 7, !dbg !1100
  store i16 0, i16* %71, align 1, !dbg !1101, !tbaa !1102
  br label %72, !dbg !1103

; <label>:72:                                     ; preds = %43, %40, %15
  %73 = phi %struct.tcp_seg* [ null, %15 ], [ null, %40 ], [ %13, %43 ], !dbg !1104
  ret %struct.tcp_seg* %73, !dbg !1105
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !1106 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1124
  br i1 %3, label %4, label %5, !dbg !1127

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1128
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1131
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1131
  unreachable, !dbg !1131

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1135
  %7 = load %struct.tcp_seg*, %struct.tcp_seg** %6, align 8, !dbg !1135, !tbaa !487
  %8 = icmp eq %struct.tcp_seg* %7, null, !dbg !1136
  br i1 %8, label %116, label %9, !dbg !1138

; <label>:9:                                      ; preds = %5
  %10 = zext i16 %1 to i32, !dbg !1139
  %11 = icmp eq i16 %1, 0, !dbg !1141
  br i1 %11, label %12, label %13, !dbg !1142

; <label>:12:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1143
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1149
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1149
  unreachable, !dbg !1149

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 2, !dbg !1153
  %15 = load i16, i16* %14, align 8, !dbg !1153, !tbaa !525
  %16 = icmp ugt i16 %15, %1, !dbg !1155
  br i1 %16, label %17, label %116, !dbg !1156

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !1157
  %19 = load i16, i16* %18, align 2, !dbg !1157, !tbaa !411
  %20 = icmp ult i16 %19, %1, !dbg !1157
  br i1 %20, label %21, label %22, !dbg !1160

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1161
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1164
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1164
  unreachable, !dbg !1164

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 3, !dbg !1168
  %24 = load i8, i8* %23, align 2, !dbg !1168, !tbaa !521
  %25 = shl i8 %24, 2, !dbg !1170
  %26 = and i8 %25, 4, !dbg !1170
  %27 = lshr i8 %24, 1, !dbg !1170
  %28 = and i8 %27, 4, !dbg !1170
  %29 = add nuw nsw i8 %26, %28, !dbg !1170
  %30 = sub i16 %15, %1, !dbg !1172
  %31 = zext i8 %29 to i16, !dbg !1174
  %32 = add i16 %30, %31, !dbg !1174
  %33 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %32, i32 640) #9, !dbg !1175
  %34 = icmp eq %struct.pbuf* %33, null, !dbg !1176
  br i1 %34, label %109, label %35, !dbg !1178

; <label>:35:                                     ; preds = %22
  %36 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 1, !dbg !1179
  %37 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1179, !tbaa !593
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 2, !dbg !1180
  %39 = load i16, i16* %38, align 8, !dbg !1180, !tbaa !759
  %40 = load i16, i16* %14, align 8, !dbg !1181, !tbaa !525
  %41 = add i16 %39, %1, !dbg !1182
  %42 = sub i16 %41, %40, !dbg !1183
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i64 0, i32 1, !dbg !1185
  %44 = load i8*, i8** %43, align 8, !dbg !1185, !tbaa !586
  %45 = zext i8 %29 to i64, !dbg !1187
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1187
  %47 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %37, i8* %46, i16 zeroext %30, i16 zeroext %42) #9, !dbg !1188
  %48 = icmp eq i16 %47, %30, !dbg !1189
  br i1 %48, label %49, label %112, !dbg !1190

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 4, !dbg !1191
  %51 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1191, !tbaa !852
  %52 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %51, i64 0, i32 4, !dbg !1191
  %53 = load i16, i16* %52, align 1, !dbg !1191, !tbaa !859
  %54 = tail call zeroext i16 @lwip_htons(i16 zeroext %53) #9, !dbg !1191
  %55 = trunc i16 %54 to i8, !dbg !1191
  %56 = and i8 %55, 8, !dbg !1194
  %57 = xor i8 %56, 63, !dbg !1196
  %58 = and i8 %57, %55, !dbg !1196
  %59 = and i8 %55, 9, !dbg !1197
  %60 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1198, !tbaa !852
  %61 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %60, i64 0, i32 2, !dbg !1198
  %62 = load i32, i32* %61, align 1, !dbg !1198, !tbaa !1098
  %63 = tail call i32 @lwip_htonl(i32 %62) #9, !dbg !1198
  %64 = add i32 %63, %10, !dbg !1199
  %65 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %33, i8 zeroext %59, i32 %64, i8 zeroext %24) #7, !dbg !1200
  %66 = icmp eq %struct.tcp_seg* %65, null, !dbg !1201
  br i1 %66, label %112, label %67, !dbg !1203

; <label>:67:                                     ; preds = %49
  %68 = and i8 %55, 1, !dbg !1204
  %69 = icmp eq i8 %68, 0, !dbg !1204
  %70 = and i8 %58, 62, !dbg !1206
  %71 = select i1 %69, i8 %58, i8 %70, !dbg !1197
  %72 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1208, !tbaa !593
  %73 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %72) #9, !dbg !1209
  %74 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1210
  %75 = load i16, i16* %74, align 4, !dbg !1211, !tbaa !447
  %76 = sub i16 %75, %73, !dbg !1211
  store i16 %76, i16* %74, align 4, !dbg !1211, !tbaa !447
  %77 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1212, !tbaa !593
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i64 0, i32 2, !dbg !1213
  %79 = load i16, i16* %78, align 8, !dbg !1213, !tbaa !759
  %80 = sub i16 %79, %30, !dbg !1214
  tail call void @pbuf_realloc(%struct.pbuf* %77, i16 zeroext %80) #9, !dbg !1215
  %81 = load i16, i16* %14, align 8, !dbg !1216, !tbaa !525
  %82 = sub i16 %81, %30, !dbg !1216
  store i16 %82, i16* %14, align 8, !dbg !1216, !tbaa !525
  %83 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1217, !tbaa !852
  %84 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %83, i64 0, i32 4, !dbg !1217
  %85 = load i16, i16* %84, align 1, !dbg !1217, !tbaa !859
  %86 = zext i8 %71 to i16, !dbg !1217
  %87 = tail call zeroext i16 @lwip_htons(i16 zeroext %86) #9, !dbg !1217
  %88 = or i16 %87, %85, !dbg !1217
  %89 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1217, !tbaa !852
  %90 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %89, i64 0, i32 4, !dbg !1217
  store i16 %88, i16* %90, align 1, !dbg !1217, !tbaa !859
  %91 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1218, !tbaa !593
  %92 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %91) #9, !dbg !1219
  %93 = load i16, i16* %74, align 4, !dbg !1220, !tbaa !447
  %94 = add i16 %93, %92, !dbg !1220
  store i16 %94, i16* %74, align 4, !dbg !1220, !tbaa !447
  %95 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %65, i64 0, i32 1, !dbg !1221
  %96 = load %struct.pbuf*, %struct.pbuf** %95, align 8, !dbg !1221, !tbaa !593
  %97 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %96) #9, !dbg !1222
  %98 = load i16, i16* %74, align 4, !dbg !1223, !tbaa !447
  %99 = add i16 %98, %97, !dbg !1223
  store i16 %99, i16* %74, align 4, !dbg !1223, !tbaa !447
  %100 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 0, !dbg !1224
  %101 = bitcast %struct.tcp_seg* %7 to i64*, !dbg !1224
  %102 = load i64, i64* %101, align 8, !dbg !1224, !tbaa !514
  %103 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %65, i64 0, i32 0, !dbg !1225
  %104 = bitcast %struct.tcp_seg* %65 to i64*, !dbg !1226
  store i64 %102, i64* %104, align 8, !dbg !1226, !tbaa !514
  store %struct.tcp_seg* %65, %struct.tcp_seg** %100, align 8, !dbg !1227, !tbaa !514
  %105 = load %struct.tcp_seg*, %struct.tcp_seg** %103, align 8, !dbg !1228, !tbaa !514
  %106 = icmp eq %struct.tcp_seg* %105, null, !dbg !1230
  br i1 %106, label %107, label %116, !dbg !1231

; <label>:107:                                    ; preds = %67
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1232
  store i16 0, i16* %108, align 2, !dbg !1234, !tbaa !536
  br label %116, !dbg !1235

; <label>:109:                                    ; preds = %22
  %110 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1236, !tbaa !465
  %111 = add i16 %110, 1, !dbg !1236
  store i16 %111, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1236, !tbaa !465
  br label %116

; <label>:112:                                    ; preds = %49, %35
  %113 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1236, !tbaa !465
  %114 = add i16 %113, 1, !dbg !1236
  store i16 %114, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1236, !tbaa !465
  %115 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %33) #9, !dbg !1237
  br label %116, !dbg !1240

; <label>:116:                                    ; preds = %109, %112, %67, %107, %13, %5
  %117 = phi i8 [ -1, %5 ], [ 0, %13 ], [ 0, %107 ], [ 0, %67 ], [ -1, %109 ], [ -1, %112 ], !dbg !1241
  ret i8 %117, !dbg !1242
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_fin(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1243 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1252
  br i1 %2, label %3, label %4, !dbg !1255

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1256
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1259
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1259
  unreachable, !dbg !1259

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1263
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1263, !tbaa !487
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !1264
  br i1 %7, label %32, label %8, !dbg !1265

; <label>:8:                                      ; preds = %4, %8
  %9 = phi %struct.tcp_seg* [ %11, %8 ], [ %6, %4 ], !dbg !1266
  %10 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %9, i64 0, i32 0, !dbg !1270
  %11 = load %struct.tcp_seg*, %struct.tcp_seg** %10, align 8, !dbg !1270, !tbaa !514
  %12 = icmp eq %struct.tcp_seg* %11, null, !dbg !1271
  br i1 %12, label %13, label %8, !dbg !1272, !llvm.loop !1273

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %9, i64 0, i32 4, !dbg !1275
  %15 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1275, !tbaa !852
  %16 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %15, i64 0, i32 4, !dbg !1275
  %17 = load i16, i16* %16, align 1, !dbg !1275, !tbaa !859
  %18 = tail call zeroext i16 @lwip_htons(i16 zeroext %17) #9, !dbg !1275
  %19 = and i16 %18, 7, !dbg !1277
  %20 = icmp eq i16 %19, 0, !dbg !1278
  br i1 %20, label %21, label %32, !dbg !1279

; <label>:21:                                     ; preds = %13
  %22 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1280, !tbaa !852
  %23 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %22, i64 0, i32 4, !dbg !1280
  %24 = load i16, i16* %23, align 1, !dbg !1280, !tbaa !859
  %25 = tail call zeroext i16 @lwip_htons(i16 zeroext 1) #9, !dbg !1280
  %26 = or i16 %25, %24, !dbg !1280
  %27 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1280, !tbaa !852
  %28 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %27, i64 0, i32 4, !dbg !1280
  store i16 %26, i16* %28, align 1, !dbg !1280, !tbaa !859
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1282
  %30 = load i16, i16* %29, align 2, !dbg !1282, !tbaa !457
  %31 = or i16 %30, 32, !dbg !1282
  store i16 %31, i16* %29, align 2, !dbg !1282, !tbaa !457
  br label %34

; <label>:32:                                     ; preds = %13, %4
  %33 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #7, !dbg !1284
  br label %34, !dbg !1285

; <label>:34:                                     ; preds = %21, %32
  %35 = phi i8 [ %33, %32 ], [ 0, %21 ], !dbg !1286
  ret i8 %35, !dbg !1287
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_enqueue_flags(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !1288 {
  %3 = zext i8 %1 to i32, !dbg !1305
  %4 = and i32 %3, 3, !dbg !1305
  %5 = icmp eq i32 %4, 0, !dbg !1305
  br i1 %5, label %6, label %7, !dbg !1308

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1309
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1312
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1312
  unreachable, !dbg !1312

; <label>:7:                                      ; preds = %2
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1316
  br i1 %8, label %9, label %10, !dbg !1319

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1320
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1323
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1323
  unreachable, !dbg !1323

; <label>:10:                                     ; preds = %7
  %11 = and i32 %3, 2, !dbg !1327
  %12 = icmp ne i32 %11, 0, !dbg !1327
  br i1 %12, label %13, label %23, !dbg !1329

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1330
  %15 = load i32, i32* %14, align 8, !dbg !1330, !tbaa !441
  %16 = icmp eq i32 %15, 3, !dbg !1333
  br i1 %16, label %17, label %22, !dbg !1334

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1335
  %19 = load i16, i16* %18, align 2, !dbg !1335, !tbaa !457
  %20 = and i16 %19, 256, !dbg !1336
  %21 = icmp eq i16 %20, 0, !dbg !1336
  br i1 %21, label %23, label %22, !dbg !1337

; <label>:22:                                     ; preds = %17, %13
  br label %23, !dbg !1338

; <label>:23:                                     ; preds = %17, %22, %10
  %24 = phi i8 [ 9, %22 ], [ 1, %17 ], [ 0, %10 ], !dbg !1340
  %25 = shl nuw nsw i8 %24, 2, !dbg !1341
  %26 = and i8 %25, 4, !dbg !1341
  %27 = lshr i8 %24, 1, !dbg !1341
  %28 = add nuw nsw i8 %26, %27, !dbg !1341
  %29 = zext i8 %28 to i16, !dbg !1342
  %30 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %29, i32 640) #9, !dbg !1344
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !1346
  br i1 %31, label %32, label %38, !dbg !1347

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1348
  %34 = load i16, i16* %33, align 2, !dbg !1348, !tbaa !457
  %35 = or i16 %34, 128, !dbg !1348
  store i16 %35, i16* %33, align 2, !dbg !1348, !tbaa !457
  %36 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1351, !tbaa !465
  %37 = add i16 %36, 1, !dbg !1351
  store i16 %37, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1351, !tbaa !465
  br label %103, !dbg !1352

; <label>:38:                                     ; preds = %23
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i64 0, i32 3, !dbg !1353
  %40 = load i16, i16* %39, align 2, !dbg !1353, !tbaa !611
  %41 = zext i16 %40 to i32, !dbg !1353
  %42 = zext i8 %28 to i32, !dbg !1353
  %43 = icmp ult i32 %41, %42, !dbg !1353
  br i1 %43, label %44, label %45, !dbg !1356

; <label>:44:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1357
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1360
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1360
  unreachable, !dbg !1360

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !1364
  %47 = load i32, i32* %46, align 4, !dbg !1364, !tbaa !723
  %48 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %30, i8 zeroext %1, i32 %47, i8 zeroext %24) #7, !dbg !1366
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !1368
  br i1 %49, label %50, label %56, !dbg !1369

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1370
  %52 = load i16, i16* %51, align 2, !dbg !1370, !tbaa !457
  %53 = or i16 %52, 128, !dbg !1370
  store i16 %53, i16* %51, align 2, !dbg !1370, !tbaa !457
  %54 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1373, !tbaa !465
  %55 = add i16 %54, 1, !dbg !1373
  store i16 %55, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1373, !tbaa !465
  br label %103, !dbg !1374

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 2, !dbg !1375
  %58 = load i16, i16* %57, align 8, !dbg !1375, !tbaa !525
  %59 = icmp eq i16 %58, 0, !dbg !1375
  br i1 %59, label %61, label %60, !dbg !1378

; <label>:60:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1379
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1382
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1382
  unreachable, !dbg !1382

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1386
  %63 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1386, !tbaa !487
  %64 = icmp eq %struct.tcp_seg* %63, null, !dbg !1387
  br i1 %64, label %72, label %65, !dbg !1388

; <label>:65:                                     ; preds = %61, %65
  %66 = phi %struct.tcp_seg* [ %68, %65 ], [ %63, %61 ], !dbg !1389
  %67 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %66, i64 0, i32 0, !dbg !1393
  %68 = load %struct.tcp_seg*, %struct.tcp_seg** %67, align 8, !dbg !1393, !tbaa !514
  %69 = icmp eq %struct.tcp_seg* %68, null, !dbg !1394
  br i1 %69, label %70, label %65, !dbg !1395, !llvm.loop !1396

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %66, i64 0, i32 0, !dbg !1393
  br label %72

; <label>:72:                                     ; preds = %61, %70
  %73 = phi %struct.tcp_seg** [ %71, %70 ], [ %62, %61 ]
  store %struct.tcp_seg* %48, %struct.tcp_seg** %73, align 8, !dbg !1398, !tbaa !754
  %74 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1400
  store i16 0, i16* %74, align 2, !dbg !1401, !tbaa !536
  %75 = xor i1 %12, true, !dbg !1402
  %76 = and i32 %3, 1, !dbg !1404
  %77 = icmp eq i32 %76, 0, !dbg !1404
  %78 = and i1 %77, %75, !dbg !1402
  br i1 %78, label %82, label %79, !dbg !1402

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* %46, align 4, !dbg !1405, !tbaa !723
  %81 = add i32 %80, 1, !dbg !1405
  store i32 %81, i32* %46, align 4, !dbg !1405, !tbaa !723
  br label %82, !dbg !1407

; <label>:82:                                     ; preds = %72, %79
  br i1 %77, label %87, label %83, !dbg !1408

; <label>:83:                                     ; preds = %82
  %84 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1409
  %85 = load i16, i16* %84, align 2, !dbg !1409, !tbaa !457
  %86 = or i16 %85, 32, !dbg !1409
  store i16 %86, i16* %84, align 2, !dbg !1409, !tbaa !457
  br label %87, !dbg !1413

; <label>:87:                                     ; preds = %82, %83
  %88 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 1, !dbg !1414
  %89 = load %struct.pbuf*, %struct.pbuf** %88, align 8, !dbg !1414, !tbaa !593
  %90 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %89) #9, !dbg !1415
  %91 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1416
  %92 = load i16, i16* %91, align 4, !dbg !1417, !tbaa !447
  %93 = add i16 %92, %90, !dbg !1417
  store i16 %93, i16* %91, align 4, !dbg !1417, !tbaa !447
  %94 = icmp eq i16 %93, 0, !dbg !1418
  br i1 %94, label %103, label %95, !dbg !1420

; <label>:95:                                     ; preds = %87
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1421
  %97 = load %struct.tcp_seg*, %struct.tcp_seg** %96, align 8, !dbg !1421, !tbaa !480
  %98 = icmp eq %struct.tcp_seg* %97, null, !dbg !1421
  br i1 %98, label %99, label %103, !dbg !1421

; <label>:99:                                     ; preds = %95
  %100 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1421, !tbaa !487
  %101 = icmp eq %struct.tcp_seg* %100, null, !dbg !1421
  br i1 %101, label %102, label %103, !dbg !1425

; <label>:102:                                    ; preds = %99
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1426
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1429
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1429
  unreachable, !dbg !1429

; <label>:103:                                    ; preds = %87, %95, %99, %50, %32
  %104 = phi i8 [ -1, %32 ], [ -1, %50 ], [ 0, %99 ], [ 0, %95 ], [ 0, %87 ], !dbg !1340
  ret i8 %104, !dbg !1433
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1434 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1526
  br i1 %2, label %3, label %4, !dbg !1529

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1530
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1533
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1533
  unreachable, !dbg !1533

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1537
  %6 = load i32, i32* %5, align 8, !dbg !1537, !tbaa !441
  %7 = icmp eq i32 %6, 1, !dbg !1537
  br i1 %7, label %8, label %9, !dbg !1540

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1541
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1544
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1544
  unreachable, !dbg !1544

; <label>:9:                                      ; preds = %4
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1548, !tbaa !754
  %11 = icmp eq %struct.tcp_pcb* %10, %0, !dbg !1550
  br i1 %11, label %462, label %12, !dbg !1551

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !1552
  %14 = load i32, i32* %13, align 8, !dbg !1552, !tbaa !1553
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !1552
  %16 = load i32, i32* %15, align 4, !dbg !1552, !tbaa !1554
  %17 = icmp ult i32 %14, %16, !dbg !1552
  %18 = select i1 %17, i32 %14, i32 %16, !dbg !1552
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1556
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1556, !tbaa !487
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !1558
  br i1 %21, label %22, label %29, !dbg !1560

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1561
  %24 = load i16, i16* %23, align 2, !dbg !1561, !tbaa !457
  %25 = and i16 %24, 2, !dbg !1564
  %26 = icmp eq i16 %25, 0, !dbg !1564
  br i1 %26, label %458, label %27, !dbg !1565

; <label>:27:                                     ; preds = %22
  %28 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1566
  br label %462, !dbg !1568

; <label>:29:                                     ; preds = %12
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1569
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1570
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !1582
  %33 = load i8, i8* %32, align 8, !dbg !1582, !tbaa !1584
  %34 = icmp eq i8 %33, 0, !dbg !1585
  br i1 %34, label %37, label %35, !dbg !1586

; <label>:35:                                     ; preds = %29
  %36 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %33) #9, !dbg !1587
  br label %48, !dbg !1589

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1590
  %39 = load i8, i8* %38, align 4, !dbg !1590, !tbaa !1592
  %40 = icmp eq i8 %39, 6, !dbg !1590
  br i1 %40, label %41, label %45, !dbg !1590

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1590
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1590
  %44 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %42, %struct.ip6_addr* nonnull %43) #9, !dbg !1590
  br label %48, !dbg !1590

; <label>:45:                                     ; preds = %37
  %46 = bitcast %struct.ip_addr* %31 to %struct.ip4_addr*, !dbg !1590
  %47 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %46) #9, !dbg !1590
  br label %48, !dbg !1590

; <label>:48:                                     ; preds = %35, %41, %45
  %49 = phi %struct.netif* [ %36, %35 ], [ %44, %41 ], [ %47, %45 ], !dbg !1593
  %50 = icmp eq %struct.netif* %49, null, !dbg !1595
  br i1 %50, label %462, label %51, !dbg !1597

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1598
  %53 = load i8, i8* %52, align 4, !dbg !1598, !tbaa !1599
  %54 = icmp eq i8 %53, 6, !dbg !1598
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1598
  %56 = load i32, i32* %55, align 8, !dbg !1598, !tbaa !1600
  %57 = icmp eq i32 %56, 0, !dbg !1598
  br i1 %54, label %58, label %71, !dbg !1601

; <label>:58:                                     ; preds = %51
  br i1 %57, label %59, label %108, !dbg !1598

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1598
  %61 = load i32, i32* %60, align 4, !dbg !1598, !tbaa !1600
  %62 = icmp eq i32 %61, 0, !dbg !1598
  br i1 %62, label %63, label %108, !dbg !1598

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1598
  %65 = load i32, i32* %64, align 8, !dbg !1598, !tbaa !1600
  %66 = icmp eq i32 %65, 0, !dbg !1598
  br i1 %66, label %67, label %108, !dbg !1598

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1598
  %69 = load i32, i32* %68, align 4, !dbg !1598, !tbaa !1600
  %70 = icmp eq i32 %69, 0, !dbg !1598
  br i1 %70, label %72, label %108, !dbg !1598

; <label>:71:                                     ; preds = %51
  br i1 %57, label %72, label %108, !dbg !1601

; <label>:72:                                     ; preds = %67, %71
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1602
  %74 = load i8, i8* %73, align 4, !dbg !1602, !tbaa !1603
  %75 = icmp eq i8 %74, 6, !dbg !1602
  br i1 %75, label %78, label %76, !dbg !1602

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %49, i64 0, i32 1, !dbg !1602
  br label %82, !dbg !1605

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1602
  %80 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %49, %struct.ip6_addr* nonnull %79) #9, !dbg !1602
  %81 = icmp eq %struct.ip_addr* %80, null, !dbg !1606
  br i1 %81, label %462, label %82, !dbg !1605

; <label>:82:                                     ; preds = %76, %78
  %83 = phi %struct.ip_addr* [ %77, %76 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 1, !dbg !1608
  %85 = load i8, i8* %84, align 4, !dbg !1608, !tbaa !1592
  store i8 %85, i8* %52, align 4, !dbg !1608, !tbaa !1599
  %86 = load i8, i8* %84, align 4, !dbg !1611, !tbaa !1592
  %87 = icmp eq i8 %86, 6, !dbg !1611
  %88 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1613
  %89 = load i32, i32* %88, align 4, !dbg !1613, !tbaa !1600
  store i32 %89, i32* %55, align 8, !dbg !1613, !tbaa !1600
  br i1 %87, label %90, label %103, !dbg !1616

; <label>:90:                                     ; preds = %82
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1613
  %92 = load i32, i32* %91, align 4, !dbg !1613, !tbaa !1600
  %93 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1613
  store i32 %92, i32* %93, align 4, !dbg !1613, !tbaa !1600
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1613
  %95 = load i32, i32* %94, align 4, !dbg !1613, !tbaa !1600
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1613
  store i32 %95, i32* %96, align 8, !dbg !1613, !tbaa !1600
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1613
  %98 = load i32, i32* %97, align 4, !dbg !1613, !tbaa !1600
  %99 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1613
  store i32 %98, i32* %99, align 4, !dbg !1613, !tbaa !1600
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 1, !dbg !1613
  %101 = load i8, i8* %100, align 4, !dbg !1613, !tbaa !1600
  %102 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1613
  store i8 %101, i8* %102, align 8, !dbg !1613, !tbaa !1600
  br label %108, !dbg !1617

; <label>:103:                                    ; preds = %82
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1618
  store i32 0, i32* %104, align 4, !dbg !1618, !tbaa !1600
  %105 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1618
  store i32 0, i32* %105, align 8, !dbg !1618, !tbaa !1600
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1618
  store i32 0, i32* %106, align 4, !dbg !1618, !tbaa !1600
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1618
  store i8 0, i8* %107, align 8, !dbg !1618, !tbaa !1600
  br label %108

; <label>:108:                                    ; preds = %103, %90, %71, %67, %63, %59, %58
  %109 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 4, !dbg !1621
  %110 = load %struct.tcp_hdr*, %struct.tcp_hdr** %109, align 8, !dbg !1621, !tbaa !852
  %111 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %110, i64 0, i32 2, !dbg !1621
  %112 = load i32, i32* %111, align 1, !dbg !1621, !tbaa !1098
  %113 = tail call i32 @lwip_htonl(i32 %112) #9, !dbg !1621
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !1623
  %115 = load i32, i32* %114, align 8, !dbg !1623, !tbaa !1624
  %116 = sub i32 %113, %115, !dbg !1625
  %117 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 2, !dbg !1626
  %118 = load i16, i16* %117, align 8, !dbg !1626, !tbaa !525
  %119 = zext i16 %118 to i32, !dbg !1627
  %120 = add i32 %116, %119, !dbg !1628
  %121 = icmp ugt i32 %120, %18, !dbg !1629
  br i1 %121, label %122, label %143, !dbg !1630

; <label>:122:                                    ; preds = %108
  %123 = load i32, i32* %13, align 8, !dbg !1631, !tbaa !1553
  %124 = icmp eq i32 %18, %123, !dbg !1634
  br i1 %124, label %125, label %136, !dbg !1635

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1636
  %127 = load %struct.tcp_seg*, %struct.tcp_seg** %126, align 8, !dbg !1636, !tbaa !480
  %128 = icmp eq %struct.tcp_seg* %127, null, !dbg !1637
  br i1 %128, label %129, label %136, !dbg !1638

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1639
  %131 = load i8, i8* %130, align 1, !dbg !1639, !tbaa !1640
  %132 = icmp eq i8 %131, 0, !dbg !1641
  br i1 %132, label %133, label %136, !dbg !1642

; <label>:133:                                    ; preds = %129
  %134 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 55, !dbg !1643
  store i8 0, i8* %134, align 4, !dbg !1645, !tbaa !1646
  store i8 1, i8* %130, align 1, !dbg !1647, !tbaa !1640
  %135 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !1648
  store i8 0, i8* %135, align 2, !dbg !1649, !tbaa !1650
  br label %136, !dbg !1651

; <label>:136:                                    ; preds = %133, %129, %125, %122
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1652
  %138 = load i16, i16* %137, align 2, !dbg !1652, !tbaa !457
  %139 = and i16 %138, 2, !dbg !1654
  %140 = icmp eq i16 %139, 0, !dbg !1654
  br i1 %140, label %458, label %141, !dbg !1655

; <label>:141:                                    ; preds = %136
  %142 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1656
  br label %462, !dbg !1658

; <label>:143:                                    ; preds = %108
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1659
  store i8 0, i8* %144, align 1, !dbg !1660, !tbaa !1640
  %145 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1661
  %146 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1661, !tbaa !480
  %147 = icmp eq %struct.tcp_seg* %146, null, !dbg !1663
  br i1 %147, label %153, label %148, !dbg !1665

; <label>:148:                                    ; preds = %143, %148
  %149 = phi %struct.tcp_seg* [ %151, %148 ], [ %146, %143 ], !dbg !1666
  %150 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %149, i64 0, i32 0, !dbg !1670
  %151 = load %struct.tcp_seg*, %struct.tcp_seg** %150, align 8, !dbg !1670, !tbaa !514
  %152 = icmp eq %struct.tcp_seg* %151, null, !dbg !1671
  br i1 %152, label %153, label %148, !dbg !1672, !llvm.loop !1673

; <label>:153:                                    ; preds = %148, %143
  %154 = phi %struct.tcp_seg* [ null, %143 ], [ %149, %148 ], !dbg !1675
  %155 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  %156 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17
  %157 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19
  %158 = bitcast %struct.tcp_seg** %19 to i64*
  %159 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40
  %160 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60
  %161 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20
  %162 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34
  %163 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22
  %165 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21
  %166 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23
  %167 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 24
  %168 = getelementptr inbounds %struct.netif, %struct.netif* %49, i64 0, i32 16
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0
  %171 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0
  %172 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4
  %174 = bitcast %struct.tcp_pcb* %0 to %struct.ip4_addr*
  %175 = bitcast %struct.ip_addr* %31 to %struct.ip4_addr*
  br label %176, !dbg !1676

; <label>:176:                                    ; preds = %153, %449
  %177 = phi %struct.tcp_seg* [ %20, %153 ], [ %451, %449 ]
  %178 = phi %struct.tcp_seg* [ %154, %153 ], [ %450, %449 ]
  %179 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 4, !dbg !1677
  %180 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1677, !tbaa !852
  %181 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %180, i64 0, i32 2, !dbg !1677
  %182 = load i32, i32* %181, align 1, !dbg !1677, !tbaa !1098
  %183 = tail call i32 @lwip_htonl(i32 %182) #9, !dbg !1677
  %184 = load i32, i32* %114, align 8, !dbg !1678, !tbaa !1624
  %185 = sub i32 %183, %184, !dbg !1679
  %186 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 2, !dbg !1680
  %187 = load i16, i16* %186, align 8, !dbg !1680, !tbaa !525
  %188 = zext i16 %187 to i32, !dbg !1681
  %189 = add i32 %185, %188, !dbg !1682
  %190 = icmp ugt i32 %189, %18, !dbg !1683
  br i1 %190, label %453, label %191, !dbg !1684

; <label>:191:                                    ; preds = %176
  %192 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1685, !tbaa !852
  %193 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %192, i64 0, i32 4, !dbg !1685
  %194 = load i16, i16* %193, align 1, !dbg !1685, !tbaa !859
  %195 = tail call zeroext i16 @lwip_htons(i16 zeroext %194) #9, !dbg !1685
  %196 = and i16 %195, 4, !dbg !1685
  %197 = icmp eq i16 %196, 0, !dbg !1685
  br i1 %197, label %199, label %198, !dbg !1688

; <label>:198:                                    ; preds = %191
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1689
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1692
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1692
  unreachable, !dbg !1692

; <label>:199:                                    ; preds = %191
  %200 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1696, !tbaa !480
  %201 = icmp eq %struct.tcp_seg* %200, null, !dbg !1696
  br i1 %201, label %230, label %202, !dbg !1696

; <label>:202:                                    ; preds = %199
  %203 = load i16, i16* %155, align 2, !dbg !1696, !tbaa !457
  %204 = and i16 %203, 68, !dbg !1696
  %205 = icmp eq i16 %204, 0, !dbg !1696
  br i1 %205, label %206, label %230, !dbg !1696

; <label>:206:                                    ; preds = %202
  %207 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1696, !tbaa !487
  %208 = icmp eq %struct.tcp_seg* %207, null, !dbg !1696
  br i1 %208, label %218, label %209, !dbg !1696

; <label>:209:                                    ; preds = %206
  %210 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %207, i64 0, i32 0, !dbg !1696
  %211 = load %struct.tcp_seg*, %struct.tcp_seg** %210, align 8, !dbg !1696, !tbaa !514
  %212 = icmp eq %struct.tcp_seg* %211, null, !dbg !1696
  br i1 %212, label %213, label %230, !dbg !1696

; <label>:213:                                    ; preds = %209
  %214 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %207, i64 0, i32 2, !dbg !1696
  %215 = load i16, i16* %214, align 8, !dbg !1696, !tbaa !525
  %216 = load i16, i16* %164, align 2, !dbg !1696, !tbaa !411
  %217 = icmp ult i16 %215, %216, !dbg !1696
  br i1 %217, label %218, label %230, !dbg !1696

; <label>:218:                                    ; preds = %213, %206
  %219 = load i32, i32* %159, align 8, !dbg !1696, !tbaa !451
  %220 = icmp ult i32 %219, 65535, !dbg !1696
  %221 = select i1 %220, i32 %219, i32 65535, !dbg !1696
  %222 = and i32 %221, 65535, !dbg !1696
  %223 = icmp eq i32 %222, 0, !dbg !1696
  br i1 %223, label %230, label %224, !dbg !1696

; <label>:224:                                    ; preds = %218
  %225 = load i16, i16* %163, align 4, !dbg !1696, !tbaa !447
  %226 = icmp ult i16 %225, 1436, !dbg !1696
  %227 = and i16 %203, 160, !dbg !1698
  %228 = icmp eq i16 %227, 0, !dbg !1699
  %229 = and i1 %228, %226, !dbg !1700
  br i1 %229, label %453, label %230, !dbg !1700

; <label>:230:                                    ; preds = %224, %218, %199, %202, %209, %213
  %231 = load i32, i32* %5, align 8, !dbg !1701, !tbaa !441
  %232 = icmp eq i32 %231, 2, !dbg !1703
  br i1 %232, label %241, label %233, !dbg !1704

; <label>:233:                                    ; preds = %230
  %234 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1705, !tbaa !852
  %235 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %234, i64 0, i32 4, !dbg !1705
  %236 = load i16, i16* %235, align 1, !dbg !1705, !tbaa !859
  %237 = tail call zeroext i16 @lwip_htons(i16 zeroext 16) #9, !dbg !1705
  %238 = or i16 %237, %236, !dbg !1705
  %239 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1705, !tbaa !852
  %240 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %239, i64 0, i32 4, !dbg !1705
  store i16 %238, i16* %240, align 1, !dbg !1705, !tbaa !859
  br label %241, !dbg !1707

; <label>:241:                                    ; preds = %233, %230
  %242 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 1, !dbg !1735
  %243 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1735, !tbaa !593
  %244 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %243, i64 0, i32 6, !dbg !1737
  %245 = load i8, i8* %244, align 2, !dbg !1737, !tbaa !1738
  %246 = icmp eq i8 %245, 1, !dbg !1739
  br i1 %246, label %247, label %365, !dbg !1740

; <label>:247:                                    ; preds = %241
  %248 = load i32, i32* %156, align 4, !dbg !1741, !tbaa !1742
  %249 = tail call i32 @lwip_htonl(i32 %248) #9, !dbg !1743
  %250 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1744, !tbaa !852
  %251 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %250, i64 0, i32 3, !dbg !1745
  store i32 %249, i32* %251, align 1, !dbg !1746, !tbaa !1747
  %252 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 3, !dbg !1748
  %253 = load i8, i8* %252, align 2, !dbg !1748, !tbaa !521
  %254 = and i8 %253, 8, !dbg !1750
  %255 = icmp eq i8 %254, 0, !dbg !1750
  %256 = load i32, i32* %157, align 4, !dbg !1751, !tbaa !1753
  br i1 %255, label %257, label %261, !dbg !1754

; <label>:257:                                    ; preds = %247
  %258 = load i8, i8* %160, align 1, !dbg !1755, !tbaa !1756
  %259 = zext i8 %258 to i32, !dbg !1755
  %260 = lshr i32 %256, %259, !dbg !1755
  br label %261

; <label>:261:                                    ; preds = %247, %257
  %262 = phi i32 [ %260, %257 ], [ %256, %247 ]
  %263 = icmp ult i32 %262, 65535, !dbg !1757
  %264 = select i1 %263, i32 %262, i32 65535, !dbg !1757
  %265 = trunc i32 %264 to i16, !dbg !1757
  %266 = tail call zeroext i16 @lwip_htons(i16 zeroext %265) #9, !dbg !1757
  %267 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1757, !tbaa !852
  %268 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %267, i64 0, i32 5, !dbg !1757
  store i16 %266, i16* %268, align 1, !dbg !1757, !tbaa !1758
  %269 = load i32, i32* %156, align 4, !dbg !1759, !tbaa !1742
  %270 = load i32, i32* %157, align 4, !dbg !1760, !tbaa !1753
  %271 = add i32 %270, %269, !dbg !1761
  store i32 %271, i32* %161, align 8, !dbg !1762, !tbaa !1763
  %272 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %267, i64 1, !dbg !1764
  %273 = bitcast %struct.tcp_hdr* %272 to i32*, !dbg !1765
  %274 = load i8, i8* %252, align 2, !dbg !1767, !tbaa !521
  %275 = and i8 %274, 1, !dbg !1768
  %276 = icmp eq i8 %275, 0, !dbg !1768
  br i1 %276, label %284, label %277, !dbg !1769

; <label>:277:                                    ; preds = %261
  %278 = tail call zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext 1460, %struct.netif* nonnull %49, %struct.ip_addr* nonnull %31) #9, !dbg !1770
  %279 = zext i16 %278 to i32, !dbg !1772
  %280 = or i32 %279, 33816576, !dbg !1772
  %281 = tail call i32 @lwip_htonl(i32 %280) #9, !dbg !1772
  store i32 %281, i32* %273, align 4, !dbg !1773, !tbaa !1774
  %282 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %267, i64 1, i32 2, !dbg !1775
  %283 = load i8, i8* %252, align 2, !dbg !1776, !tbaa !521
  br label %284, !dbg !1778

; <label>:284:                                    ; preds = %277, %261
  %285 = phi i8 [ %283, %277 ], [ %274, %261 ], !dbg !1776
  %286 = phi i32* [ %282, %277 ], [ %273, %261 ], !dbg !1779
  %287 = and i8 %285, 8, !dbg !1780
  %288 = icmp eq i8 %287, 0, !dbg !1780
  br i1 %288, label %291, label %289, !dbg !1781

; <label>:289:                                    ; preds = %284
  store i32 67306241, i32* %286, align 4, !dbg !1790, !tbaa !1774
  %290 = getelementptr inbounds i32, i32* %286, i64 1, !dbg !1791
  br label %291, !dbg !1792

; <label>:291:                                    ; preds = %289, %284
  %292 = phi i32* [ %290, %289 ], [ %286, %284 ], !dbg !1793
  %293 = load i16, i16* %165, align 4, !dbg !1794, !tbaa !1796
  %294 = icmp slt i16 %293, 0, !dbg !1797
  br i1 %294, label %295, label %296, !dbg !1798

; <label>:295:                                    ; preds = %291
  store i16 0, i16* %165, align 4, !dbg !1799, !tbaa !1796
  br label %296, !dbg !1801

; <label>:296:                                    ; preds = %295, %291
  %297 = load i32, i32* %166, align 8, !dbg !1802, !tbaa !1804
  %298 = icmp eq i32 %297, 0, !dbg !1805
  br i1 %298, label %299, label %306, !dbg !1806

; <label>:299:                                    ; preds = %296
  %300 = load i32, i32* @tcp_ticks, align 4, !dbg !1807, !tbaa !1774
  store i32 %300, i32* %166, align 8, !dbg !1809, !tbaa !1804
  %301 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1810, !tbaa !852
  %302 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %301, i64 0, i32 2, !dbg !1810
  %303 = load i32, i32* %302, align 1, !dbg !1810, !tbaa !1098
  %304 = tail call i32 @lwip_htonl(i32 %303) #9, !dbg !1810
  store i32 %304, i32* %167, align 4, !dbg !1811, !tbaa !1812
  %305 = load i8, i8* %252, align 2, !dbg !1813, !tbaa !521
  br label %306, !dbg !1816

; <label>:306:                                    ; preds = %299, %296
  %307 = phi i8 [ %305, %299 ], [ %285, %296 ], !dbg !1813
  %308 = bitcast %struct.tcp_hdr** %179 to i64*, !dbg !1817
  %309 = load i64, i64* %308, align 8, !dbg !1817, !tbaa !852
  %310 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1818, !tbaa !593
  %311 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %310, i64 0, i32 1, !dbg !1819
  %312 = bitcast i8** %311 to i64*, !dbg !1819
  %313 = load i64, i64* %312, align 8, !dbg !1819, !tbaa !586
  %314 = sub i64 %309, %313, !dbg !1820
  %315 = trunc i64 %314 to i16, !dbg !1821
  %316 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %310, i64 0, i32 3, !dbg !1822
  %317 = load i16, i16* %316, align 2, !dbg !1823, !tbaa !611
  %318 = sub i16 %317, %315, !dbg !1823
  store i16 %318, i16* %316, align 2, !dbg !1823, !tbaa !611
  %319 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %310, i64 0, i32 2, !dbg !1824
  %320 = load i16, i16* %319, align 8, !dbg !1825, !tbaa !759
  %321 = sub i16 %320, %315, !dbg !1825
  store i16 %321, i16* %319, align 8, !dbg !1825, !tbaa !759
  store i64 %309, i64* %312, align 8, !dbg !1826, !tbaa !586
  %322 = inttoptr i64 %309 to %struct.tcp_hdr*, !dbg !1827
  %323 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %322, i64 0, i32 6, !dbg !1828
  store i16 0, i16* %323, align 1, !dbg !1829, !tbaa !1830
  %324 = bitcast i32* %292 to i8*, !dbg !1813
  %325 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %322, i64 1, !dbg !1813
  %326 = bitcast %struct.tcp_hdr* %325 to i8*, !dbg !1813
  %327 = zext i8 %307 to i32, !dbg !1813
  %328 = shl nuw nsw i32 %327, 2, !dbg !1813
  %329 = and i32 %328, 4, !dbg !1813
  %330 = zext i32 %329 to i64, !dbg !1813
  %331 = getelementptr inbounds i8, i8* %326, i64 %330, !dbg !1813
  %332 = lshr i32 %327, 1, !dbg !1813
  %333 = and i32 %332, 4, !dbg !1813
  %334 = zext i32 %333 to i64, !dbg !1813
  %335 = getelementptr inbounds i8, i8* %331, i64 %334, !dbg !1813
  %336 = icmp eq i8* %335, %324, !dbg !1813
  br i1 %336, label %338, label %337, !dbg !1831

; <label>:337:                                    ; preds = %306
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #9, !dbg !1832
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1835
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1835
  unreachable, !dbg !1835

; <label>:338:                                    ; preds = %306
  %339 = load i16, i16* %168, align 8, !dbg !1839, !tbaa !1841
  %340 = and i16 %339, 4, !dbg !1839
  %341 = icmp eq i16 %340, 0, !dbg !1839
  br i1 %341, label %347, label %342, !dbg !1843

; <label>:342:                                    ; preds = %338
  %343 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* %310, i8 zeroext 6, i16 zeroext %321, %struct.ip_addr* nonnull %30, %struct.ip_addr* nonnull %31) #9, !dbg !1844
  %344 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1846, !tbaa !852
  %345 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %344, i64 0, i32 6, !dbg !1847
  store i16 %343, i16* %345, align 1, !dbg !1848, !tbaa !1830
  %346 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1849, !tbaa !593
  br label %347, !dbg !1850

; <label>:347:                                    ; preds = %338, %342
  %348 = phi %struct.pbuf* [ %346, %342 ], [ %310, %338 ], !dbg !1849
  %349 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1851, !tbaa !1852
  %350 = add i16 %349, 1, !dbg !1851
  store i16 %350, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1851, !tbaa !1852
  %351 = load i8, i8* %169, align 4, !dbg !1849, !tbaa !1603
  %352 = icmp eq i8 %351, 6, !dbg !1849
  %353 = load i8, i8* %172, align 1, !dbg !1849, !tbaa !1853
  %354 = load i8, i8* %173, align 2, !dbg !1849, !tbaa !1854
  br i1 %352, label %355, label %357, !dbg !1849

; <label>:355:                                    ; preds = %347
  %356 = tail call signext i8 @ip6_output_if(%struct.pbuf* %348, %struct.ip6_addr* nonnull %170, %struct.ip6_addr* nonnull %171, i8 zeroext %353, i8 zeroext %354, i8 zeroext 6, %struct.netif* nonnull %49) #9, !dbg !1849
  br label %359, !dbg !1849

; <label>:357:                                    ; preds = %347
  %358 = tail call signext i8 @ip4_output_if(%struct.pbuf* %348, %struct.ip4_addr* nonnull %174, %struct.ip4_addr* nonnull %175, i8 zeroext %353, i8 zeroext %354, i8 zeroext 6, %struct.netif* nonnull %49) #9, !dbg !1849
  br label %359, !dbg !1849

; <label>:359:                                    ; preds = %355, %357
  %360 = phi i8 [ %356, %355 ], [ %358, %357 ], !dbg !1779
  %361 = icmp eq i8 %360, 0, !dbg !1856
  br i1 %361, label %365, label %362, !dbg !1858

; <label>:362:                                    ; preds = %359
  %363 = load i16, i16* %155, align 2, !dbg !1859, !tbaa !457
  %364 = or i16 %363, 128, !dbg !1859
  store i16 %364, i16* %155, align 2, !dbg !1859, !tbaa !457
  br label %462, !dbg !1862

; <label>:365:                                    ; preds = %241, %359
  %366 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 0, !dbg !1863
  %367 = bitcast %struct.tcp_seg* %177 to i64*, !dbg !1863
  %368 = load i64, i64* %367, align 8, !dbg !1863, !tbaa !514
  store i64 %368, i64* %158, align 8, !dbg !1864, !tbaa !487
  %369 = load i32, i32* %5, align 8, !dbg !1865, !tbaa !441
  %370 = icmp eq i32 %369, 2, !dbg !1867
  br i1 %370, label %374, label %371, !dbg !1868

; <label>:371:                                    ; preds = %365
  %372 = load i16, i16* %155, align 2, !dbg !1869, !tbaa !457
  %373 = and i16 %372, -4, !dbg !1869
  store i16 %373, i16* %155, align 2, !dbg !1869, !tbaa !457
  br label %374, !dbg !1872

; <label>:374:                                    ; preds = %365, %371
  %375 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1873, !tbaa !852
  %376 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %375, i64 0, i32 2, !dbg !1873
  %377 = load i32, i32* %376, align 1, !dbg !1873, !tbaa !1098
  %378 = tail call i32 @lwip_htonl(i32 %377) #9, !dbg !1873
  %379 = load i16, i16* %186, align 8, !dbg !1874, !tbaa !525
  %380 = zext i16 %379 to i32, !dbg !1874
  %381 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1874, !tbaa !852
  %382 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %381, i64 0, i32 4, !dbg !1874
  %383 = load i16, i16* %382, align 1, !dbg !1874, !tbaa !859
  %384 = tail call zeroext i16 @lwip_htons(i16 zeroext %383) #9, !dbg !1874
  %385 = and i16 %384, 3, !dbg !1874
  %386 = icmp ne i16 %385, 0, !dbg !1874
  %387 = zext i1 %386 to i32, !dbg !1874
  %388 = add i32 %378, %380, !dbg !1874
  %389 = add i32 %388, %387, !dbg !1875
  %390 = load i32, i32* %162, align 8, !dbg !1877, !tbaa !1879
  %391 = sub i32 %390, %389, !dbg !1877
  %392 = icmp slt i32 %391, 0, !dbg !1877
  br i1 %392, label %393, label %394, !dbg !1880

; <label>:393:                                    ; preds = %374
  store i32 %389, i32* %162, align 8, !dbg !1881, !tbaa !1879
  br label %394, !dbg !1883

; <label>:394:                                    ; preds = %393, %374
  %395 = load i16, i16* %186, align 8, !dbg !1884, !tbaa !525
  %396 = zext i16 %395 to i32, !dbg !1884
  %397 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1884, !tbaa !852
  %398 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %397, i64 0, i32 4, !dbg !1884
  %399 = load i16, i16* %398, align 1, !dbg !1884, !tbaa !859
  %400 = tail call zeroext i16 @lwip_htons(i16 zeroext %399) #9, !dbg !1884
  %401 = and i16 %400, 3, !dbg !1884
  %402 = icmp ne i16 %401, 0, !dbg !1884
  %403 = sext i1 %402 to i32, !dbg !1885
  %404 = icmp eq i32 %396, %403, !dbg !1885
  br i1 %404, label %448, label %405, !dbg !1886

; <label>:405:                                    ; preds = %394
  store %struct.tcp_seg* null, %struct.tcp_seg** %366, align 8, !dbg !1887, !tbaa !514
  %406 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1888, !tbaa !480
  %407 = icmp eq %struct.tcp_seg* %406, null, !dbg !1889
  br i1 %407, label %408, label %409, !dbg !1890

; <label>:408:                                    ; preds = %405
  store %struct.tcp_seg* %177, %struct.tcp_seg** %145, align 8, !dbg !1891, !tbaa !480
  br label %449, !dbg !1893

; <label>:409:                                    ; preds = %405
  %410 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1894, !tbaa !852
  %411 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %410, i64 0, i32 2, !dbg !1894
  %412 = load i32, i32* %411, align 1, !dbg !1894, !tbaa !1098
  %413 = tail call i32 @lwip_htonl(i32 %412) #9, !dbg !1894
  %414 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %178, i64 0, i32 4, !dbg !1894
  %415 = load %struct.tcp_hdr*, %struct.tcp_hdr** %414, align 8, !dbg !1894, !tbaa !852
  %416 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %415, i64 0, i32 2, !dbg !1894
  %417 = load i32, i32* %416, align 1, !dbg !1894, !tbaa !1098
  %418 = tail call i32 @lwip_htonl(i32 %417) #9, !dbg !1894
  %419 = sub i32 %413, %418, !dbg !1894
  %420 = icmp slt i32 %419, 0, !dbg !1894
  br i1 %420, label %421, label %446, !dbg !1895

; <label>:421:                                    ; preds = %409
  %422 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1897, !tbaa !754
  %423 = icmp eq %struct.tcp_seg* %422, null, !dbg !1897
  br i1 %423, label %443, label %424, !dbg !1898

; <label>:424:                                    ; preds = %421, %439
  %425 = phi %struct.tcp_seg* [ %441, %439 ], [ %422, %421 ]
  %426 = phi %struct.tcp_seg** [ %440, %439 ], [ %145, %421 ]
  %427 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %425, i64 0, i32 4, !dbg !1899
  %428 = load %struct.tcp_hdr*, %struct.tcp_hdr** %427, align 8, !dbg !1899, !tbaa !852
  %429 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %428, i64 0, i32 2, !dbg !1899
  %430 = load i32, i32* %429, align 1, !dbg !1899, !tbaa !1098
  %431 = tail call i32 @lwip_htonl(i32 %430) #9, !dbg !1899
  %432 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1899, !tbaa !852
  %433 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %432, i64 0, i32 2, !dbg !1899
  %434 = load i32, i32* %433, align 1, !dbg !1899, !tbaa !1098
  %435 = tail call i32 @lwip_htonl(i32 %434) #9, !dbg !1899
  %436 = sub i32 %431, %435, !dbg !1899
  %437 = icmp slt i32 %436, 0, !dbg !1899
  %438 = load %struct.tcp_seg*, %struct.tcp_seg** %426, align 8, !dbg !1900, !tbaa !754
  br i1 %437, label %439, label %443, !dbg !1901

; <label>:439:                                    ; preds = %424
  %440 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %438, i64 0, i32 0, !dbg !1902
  %441 = load %struct.tcp_seg*, %struct.tcp_seg** %440, align 8, !dbg !1897, !tbaa !754
  %442 = icmp eq %struct.tcp_seg* %441, null, !dbg !1897
  br i1 %442, label %443, label %424, !dbg !1898, !llvm.loop !1904

; <label>:443:                                    ; preds = %424, %439, %421
  %444 = phi %struct.tcp_seg** [ %145, %421 ], [ %426, %424 ], [ %440, %439 ]
  %445 = phi %struct.tcp_seg* [ null, %421 ], [ %438, %424 ], [ null, %439 ]
  store %struct.tcp_seg* %445, %struct.tcp_seg** %366, align 8, !dbg !1906, !tbaa !514
  store %struct.tcp_seg* %177, %struct.tcp_seg** %444, align 8, !dbg !1907, !tbaa !754
  br label %449, !dbg !1908

; <label>:446:                                    ; preds = %409
  %447 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %178, i64 0, i32 0, !dbg !1909
  store %struct.tcp_seg* %177, %struct.tcp_seg** %447, align 8, !dbg !1911, !tbaa !514
  br label %449

; <label>:448:                                    ; preds = %394
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %177) #9, !dbg !1912
  br label %449

; <label>:449:                                    ; preds = %408, %446, %443, %448
  %450 = phi %struct.tcp_seg* [ %177, %408 ], [ %178, %443 ], [ %177, %446 ], [ %178, %448 ], !dbg !1914
  %451 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1915, !tbaa !487
  %452 = icmp eq %struct.tcp_seg* %451, null, !dbg !1916
  br i1 %452, label %456, label %176, !dbg !1676, !llvm.loop !1917

; <label>:453:                                    ; preds = %176, %224
  %454 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1919, !tbaa !487
  %455 = icmp eq %struct.tcp_seg* %454, null, !dbg !1921
  br i1 %455, label %456, label %458, !dbg !1922

; <label>:456:                                    ; preds = %449, %453
  %457 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1923
  store i16 0, i16* %457, align 2, !dbg !1925, !tbaa !536
  br label %458, !dbg !1926

; <label>:458:                                    ; preds = %22, %136, %456, %453
  %459 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1927
  %460 = load i16, i16* %459, align 2, !dbg !1927, !tbaa !457
  %461 = and i16 %460, -129, !dbg !1927
  store i16 %461, i16* %459, align 2, !dbg !1927, !tbaa !457
  br label %462, !dbg !1929

; <label>:462:                                    ; preds = %78, %48, %9, %458, %362, %141, %27
  %463 = phi i8 [ %28, %27 ], [ 0, %458 ], [ %142, %141 ], [ %360, %362 ], [ 0, %9 ], [ -4, %48 ], [ -4, %78 ], !dbg !1930
  ret i8 %463, !dbg !1932
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_empty_ack(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1933 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1944
  br i1 %2, label %3, label %4, !dbg !1947

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !1948
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1951
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1951
  unreachable, !dbg !1951

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1956
  %6 = load i32, i32* %5, align 8, !dbg !1956, !tbaa !1879
  %7 = tail call i32 @lwip_htonl(i32 %6) #9, !dbg !1957
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1972
  %9 = load i32, i32* %8, align 4, !dbg !1972, !tbaa !1742
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1973
  %11 = load i16, i16* %10, align 2, !dbg !1973, !tbaa !1081
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1974
  %13 = load i16, i16* %12, align 8, !dbg !1974, !tbaa !1088
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !1975
  %15 = load i32, i32* %14, align 4, !dbg !1975, !tbaa !1753
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !1975
  %17 = load i8, i8* %16, align 1, !dbg !1975, !tbaa !1756
  %18 = zext i8 %17 to i32, !dbg !1975
  %19 = lshr i32 %15, %18, !dbg !1975
  %20 = icmp ult i32 %19, 65535, !dbg !1975
  %21 = select i1 %20, i32 %19, i32 65535, !dbg !1975
  %22 = trunc i32 %21 to i16, !dbg !1975
  %23 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %9, i16 zeroext 0, i32 %7, i16 zeroext %11, i16 zeroext %13, i8 zeroext 16, i16 zeroext %22) #9, !dbg !1976
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !1978
  br i1 %24, label %25, label %29, !dbg !1980

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1982
  %27 = load i16, i16* %26, align 2, !dbg !1982, !tbaa !457
  %28 = or i16 %27, 3, !dbg !1982
  store i16 %28, i16* %26, align 2, !dbg !1982, !tbaa !457
  br label %43, !dbg !1986

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %8, align 4, !dbg !1987, !tbaa !1742
  %31 = load i32, i32* %14, align 4, !dbg !1989, !tbaa !1753
  %32 = add i32 %31, %30, !dbg !1990
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !1991
  store i32 %32, i32* %33, align 8, !dbg !1992, !tbaa !1763
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1993
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1994
  %36 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %23, %struct.ip_addr* nonnull %34, %struct.ip_addr* nonnull %35) #7, !dbg !1995
  %37 = icmp eq i8 %36, 0, !dbg !1997
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1999
  %39 = load i16, i16* %38, align 2, !dbg !1999, !tbaa !457
  %40 = and i16 %39, -4, !dbg !2002
  %41 = or i16 %39, 3, !dbg !2003
  %42 = select i1 %37, i16 %40, i16 %41, !dbg !2006
  store i16 %42, i16* %38, align 2, !dbg !2007, !tbaa !457
  br label %43, !dbg !2008

; <label>:43:                                     ; preds = %29, %25
  %44 = phi i8 [ -2, %25 ], [ %36, %29 ], !dbg !2009
  ret i8 %44, !dbg !2010
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2011 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2016
  br i1 %2, label %3, label %4, !dbg !2019

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2020
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2023
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2023
  unreachable, !dbg !2023

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2027
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2027, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2029
  %8 = ptrtoint %struct.tcp_seg* %6 to i64, !dbg !2030
  br i1 %7, label %48, label %9, !dbg !2030

; <label>:9:                                      ; preds = %4, %19
  %10 = phi %struct.tcp_seg* [ %12, %19 ], [ %6, %4 ], !dbg !2031
  %11 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 0, !dbg !2035
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %11, align 8, !dbg !2035, !tbaa !514
  %13 = icmp eq %struct.tcp_seg* %12, null, !dbg !2036
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 1, !dbg !2040
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2040, !tbaa !593
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2041
  %17 = load i8, i8* %16, align 2, !dbg !2041, !tbaa !1738
  %18 = icmp ne i8 %17, 1, !dbg !2042
  br i1 %13, label %20, label %19, !dbg !2043

; <label>:19:                                     ; preds = %9
  br i1 %18, label %48, label %9, !dbg !2044, !llvm.loop !2046

; <label>:20:                                     ; preds = %9
  br i1 %18, label %48, label %21, !dbg !2048

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2049
  %23 = bitcast %struct.tcp_seg** %22 to i64*, !dbg !2049
  %24 = load i64, i64* %23, align 8, !dbg !2049, !tbaa !487
  %25 = bitcast %struct.tcp_seg* %10 to i64*, !dbg !2050
  store i64 %24, i64* %25, align 8, !dbg !2050, !tbaa !514
  store i64 %8, i64* %23, align 8, !dbg !2051, !tbaa !487
  store %struct.tcp_seg* null, %struct.tcp_seg** %5, align 8, !dbg !2052, !tbaa !480
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2053
  %27 = load i16, i16* %26, align 2, !dbg !2053, !tbaa !457
  %28 = or i16 %27, 2048, !dbg !2053
  store i16 %28, i16* %26, align 2, !dbg !2053, !tbaa !457
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 4, !dbg !2055
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2055, !tbaa !852
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2055
  %32 = load i32, i32* %31, align 1, !dbg !2055, !tbaa !1098
  %33 = tail call i32 @lwip_htonl(i32 %32) #9, !dbg !2055
  %34 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 2, !dbg !2056
  %35 = load i16, i16* %34, align 8, !dbg !2056, !tbaa !525
  %36 = zext i16 %35 to i32, !dbg !2056
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2056, !tbaa !852
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 4, !dbg !2056
  %39 = load i16, i16* %38, align 1, !dbg !2056, !tbaa !859
  %40 = tail call zeroext i16 @lwip_htons(i16 zeroext %39) #9, !dbg !2056
  %41 = and i16 %40, 3, !dbg !2056
  %42 = icmp ne i16 %41, 0, !dbg !2056
  %43 = zext i1 %42 to i32, !dbg !2056
  %44 = add i32 %33, %36, !dbg !2056
  %45 = add i32 %44, %43, !dbg !2057
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 33, !dbg !2058
  store i32 %45, i32* %46, align 4, !dbg !2059, !tbaa !2060
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2061
  store i32 0, i32* %47, align 8, !dbg !2062, !tbaa !1804
  br label %48, !dbg !2063

; <label>:48:                                     ; preds = %19, %20, %4, %21
  %49 = phi i8 [ 0, %21 ], [ -6, %4 ], [ -6, %20 ], [ -6, %19 ], !dbg !2064
  ret i8 %49, !dbg !2065
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto_commit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2066 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2072
  br i1 %2, label %3, label %4, !dbg !2075

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2076
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2079
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2079
  unreachable, !dbg !2079

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2083
  %6 = load i8, i8* %5, align 2, !dbg !2083, !tbaa !2085
  %7 = icmp eq i8 %6, -1, !dbg !2086
  br i1 %7, label %10, label %8, !dbg !2087

; <label>:8:                                      ; preds = %4
  %9 = add i8 %6, 1, !dbg !2088
  store i8 %9, i8* %5, align 2, !dbg !2088, !tbaa !2085
  br label %10, !dbg !2090

; <label>:10:                                     ; preds = %4, %8
  %11 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2091
  ret void, !dbg !2092
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2093 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2097
  br i1 %2, label %3, label %4, !dbg !2100

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !2101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2104
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2104
  unreachable, !dbg !2104

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2111
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2111, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2112
  %8 = ptrtoint %struct.tcp_seg* %6 to i64, !dbg !2113
  br i1 %7, label %55, label %9, !dbg !2113

; <label>:9:                                      ; preds = %4, %19
  %10 = phi %struct.tcp_seg* [ %12, %19 ], [ %6, %4 ], !dbg !2114
  %11 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 0, !dbg !2116
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %11, align 8, !dbg !2116, !tbaa !514
  %13 = icmp eq %struct.tcp_seg* %12, null, !dbg !2117
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 1, !dbg !2120
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2120, !tbaa !593
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2121
  %17 = load i8, i8* %16, align 2, !dbg !2121, !tbaa !1738
  %18 = icmp ne i8 %17, 1, !dbg !2122
  br i1 %13, label %20, label %19, !dbg !2123

; <label>:19:                                     ; preds = %9
  br i1 %18, label %55, label %9, !dbg !2124, !llvm.loop !2046

; <label>:20:                                     ; preds = %9
  br i1 %18, label %55, label %21, !dbg !2125

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2126
  %23 = bitcast %struct.tcp_seg** %22 to i64*, !dbg !2126
  %24 = load i64, i64* %23, align 8, !dbg !2126, !tbaa !487
  %25 = bitcast %struct.tcp_seg* %10 to i64*, !dbg !2127
  store i64 %24, i64* %25, align 8, !dbg !2127, !tbaa !514
  store i64 %8, i64* %23, align 8, !dbg !2128, !tbaa !487
  store %struct.tcp_seg* null, %struct.tcp_seg** %5, align 8, !dbg !2129, !tbaa !480
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2130
  %27 = load i16, i16* %26, align 2, !dbg !2130, !tbaa !457
  %28 = or i16 %27, 2048, !dbg !2130
  store i16 %28, i16* %26, align 2, !dbg !2130, !tbaa !457
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 4, !dbg !2131
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2131, !tbaa !852
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2131
  %32 = load i32, i32* %31, align 1, !dbg !2131, !tbaa !1098
  %33 = tail call i32 @lwip_htonl(i32 %32) #9, !dbg !2131
  %34 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 2, !dbg !2132
  %35 = load i16, i16* %34, align 8, !dbg !2132, !tbaa !525
  %36 = zext i16 %35 to i32, !dbg !2132
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2132, !tbaa !852
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 4, !dbg !2132
  %39 = load i16, i16* %38, align 1, !dbg !2132, !tbaa !859
  %40 = tail call zeroext i16 @lwip_htons(i16 zeroext %39) #9, !dbg !2132
  %41 = and i16 %40, 3, !dbg !2132
  %42 = icmp ne i16 %41, 0, !dbg !2132
  %43 = zext i1 %42 to i32, !dbg !2132
  %44 = add i32 %33, %36, !dbg !2132
  %45 = add i32 %44, %43, !dbg !2133
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 33, !dbg !2134
  store i32 %45, i32* %46, align 4, !dbg !2135, !tbaa !2060
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2136
  store i32 0, i32* %47, align 8, !dbg !2137, !tbaa !1804
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2141
  %49 = load i8, i8* %48, align 2, !dbg !2141, !tbaa !2085
  %50 = icmp eq i8 %49, -1, !dbg !2142
  br i1 %50, label %53, label %51, !dbg !2143

; <label>:51:                                     ; preds = %21
  %52 = add i8 %49, 1, !dbg !2144
  store i8 %52, i8* %48, align 2, !dbg !2144, !tbaa !2085
  br label %53, !dbg !2145

; <label>:53:                                     ; preds = %21, %51
  %54 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #9, !dbg !2146
  br label %55, !dbg !2147

; <label>:55:                                     ; preds = %19, %20, %4, %53
  ret void, !dbg !2148
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2149 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2155
  br i1 %2, label %3, label %4, !dbg !2158

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2162
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2162
  unreachable, !dbg !2162

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2166
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2166, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2168
  br i1 %7, label %58, label %8, !dbg !2169

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2174
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !2174, !tbaa !593
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i64 0, i32 6, !dbg !2175
  %12 = load i8, i8* %11, align 2, !dbg !2175, !tbaa !1738
  %13 = icmp eq i8 %12, 1, !dbg !2176
  br i1 %13, label %14, label %58, !dbg !2177

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2178
  %16 = bitcast %struct.tcp_seg* %6 to i64*, !dbg !2178
  %17 = load i64, i64* %16, align 8, !dbg !2178, !tbaa !514
  %18 = bitcast %struct.tcp_seg** %5 to i64*, !dbg !2179
  store i64 %17, i64* %18, align 8, !dbg !2179, !tbaa !480
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2180
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2182, !tbaa !754
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !2182
  br i1 %21, label %43, label %22, !dbg !2183

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4
  br label %24, !dbg !2183

; <label>:24:                                     ; preds = %22, %39
  %25 = phi %struct.tcp_seg* [ %20, %22 ], [ %41, %39 ]
  %26 = phi %struct.tcp_seg** [ %19, %22 ], [ %40, %39 ]
  %27 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %25, i64 0, i32 4, !dbg !2184
  %28 = load %struct.tcp_hdr*, %struct.tcp_hdr** %27, align 8, !dbg !2184, !tbaa !852
  %29 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %28, i64 0, i32 2, !dbg !2184
  %30 = load i32, i32* %29, align 1, !dbg !2184, !tbaa !1098
  %31 = tail call i32 @lwip_htonl(i32 %30) #9, !dbg !2184
  %32 = load %struct.tcp_hdr*, %struct.tcp_hdr** %23, align 8, !dbg !2184, !tbaa !852
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %32, i64 0, i32 2, !dbg !2184
  %34 = load i32, i32* %33, align 1, !dbg !2184, !tbaa !1098
  %35 = tail call i32 @lwip_htonl(i32 %34) #9, !dbg !2184
  %36 = sub i32 %31, %35, !dbg !2184
  %37 = icmp slt i32 %36, 0, !dbg !2184
  %38 = load %struct.tcp_seg*, %struct.tcp_seg** %26, align 8, !dbg !2185, !tbaa !754
  br i1 %37, label %39, label %43, !dbg !2186

; <label>:39:                                     ; preds = %24
  %40 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %38, i64 0, i32 0, !dbg !2187
  %41 = load %struct.tcp_seg*, %struct.tcp_seg** %40, align 8, !dbg !2182, !tbaa !754
  %42 = icmp eq %struct.tcp_seg* %41, null, !dbg !2182
  br i1 %42, label %43, label %24, !dbg !2183, !llvm.loop !2189

; <label>:43:                                     ; preds = %24, %39, %14
  %44 = phi %struct.tcp_seg** [ %19, %14 ], [ %26, %24 ], [ %40, %39 ]
  %45 = phi %struct.tcp_seg* [ null, %14 ], [ %38, %24 ], [ null, %39 ]
  store %struct.tcp_seg* %45, %struct.tcp_seg** %15, align 8, !dbg !2191, !tbaa !514
  store %struct.tcp_seg* %6, %struct.tcp_seg** %44, align 8, !dbg !2192, !tbaa !754
  %46 = load %struct.tcp_seg*, %struct.tcp_seg** %15, align 8, !dbg !2193, !tbaa !514
  %47 = icmp eq %struct.tcp_seg* %46, null, !dbg !2195
  br i1 %47, label %48, label %50, !dbg !2196

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2197
  store i16 0, i16* %49, align 2, !dbg !2199, !tbaa !536
  br label %50, !dbg !2200

; <label>:50:                                     ; preds = %48, %43
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2201
  %52 = load i8, i8* %51, align 2, !dbg !2201, !tbaa !2085
  %53 = icmp eq i8 %52, -1, !dbg !2203
  br i1 %53, label %56, label %54, !dbg !2204

; <label>:54:                                     ; preds = %50
  %55 = add i8 %52, 1, !dbg !2205
  store i8 %55, i8* %51, align 2, !dbg !2205, !tbaa !2085
  br label %56, !dbg !2207

; <label>:56:                                     ; preds = %50, %54
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2208
  store i32 0, i32* %57, align 8, !dbg !2209, !tbaa !1804
  br label %58, !dbg !2210

; <label>:58:                                     ; preds = %8, %4, %56
  %59 = phi i8 [ 0, %56 ], [ -6, %4 ], [ -6, %8 ], !dbg !2185
  ret i8 %59, !dbg !2211
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_fast(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2212 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2216
  br i1 %2, label %3, label %4, !dbg !2219

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !2220
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2223
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2223
  unreachable, !dbg !2223

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2227
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2227, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2229
  br i1 %7, label %82, label %8, !dbg !2230

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2231
  %10 = load i16, i16* %9, align 2, !dbg !2231, !tbaa !457
  %11 = and i16 %10, 4, !dbg !2232
  %12 = icmp eq i16 %11, 0, !dbg !2232
  br i1 %12, label %13, label %82, !dbg !2233

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2241
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2241, !tbaa !593
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2242
  %17 = load i8, i8* %16, align 2, !dbg !2242, !tbaa !1738
  %18 = icmp eq i8 %17, 1, !dbg !2243
  br i1 %18, label %19, label %82, !dbg !2244

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2245
  %21 = bitcast %struct.tcp_seg* %6 to i64*, !dbg !2245
  %22 = load i64, i64* %21, align 8, !dbg !2245, !tbaa !514
  %23 = bitcast %struct.tcp_seg** %5 to i64*, !dbg !2246
  store i64 %22, i64* %23, align 8, !dbg !2246, !tbaa !480
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2247
  %25 = load %struct.tcp_seg*, %struct.tcp_seg** %24, align 8, !dbg !2249, !tbaa !754
  %26 = icmp eq %struct.tcp_seg* %25, null, !dbg !2249
  br i1 %26, label %48, label %27, !dbg !2250

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4
  br label %29, !dbg !2250

; <label>:29:                                     ; preds = %44, %27
  %30 = phi %struct.tcp_seg* [ %25, %27 ], [ %46, %44 ]
  %31 = phi %struct.tcp_seg** [ %24, %27 ], [ %45, %44 ]
  %32 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %30, i64 0, i32 4, !dbg !2251
  %33 = load %struct.tcp_hdr*, %struct.tcp_hdr** %32, align 8, !dbg !2251, !tbaa !852
  %34 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %33, i64 0, i32 2, !dbg !2251
  %35 = load i32, i32* %34, align 1, !dbg !2251, !tbaa !1098
  %36 = tail call i32 @lwip_htonl(i32 %35) #9, !dbg !2251
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %28, align 8, !dbg !2251, !tbaa !852
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 2, !dbg !2251
  %39 = load i32, i32* %38, align 1, !dbg !2251, !tbaa !1098
  %40 = tail call i32 @lwip_htonl(i32 %39) #9, !dbg !2251
  %41 = sub i32 %36, %40, !dbg !2251
  %42 = icmp slt i32 %41, 0, !dbg !2251
  %43 = load %struct.tcp_seg*, %struct.tcp_seg** %31, align 8, !dbg !2252, !tbaa !754
  br i1 %42, label %44, label %48, !dbg !2253

; <label>:44:                                     ; preds = %29
  %45 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %43, i64 0, i32 0, !dbg !2254
  %46 = load %struct.tcp_seg*, %struct.tcp_seg** %45, align 8, !dbg !2249, !tbaa !754
  %47 = icmp eq %struct.tcp_seg* %46, null, !dbg !2249
  br i1 %47, label %48, label %29, !dbg !2250, !llvm.loop !2189

; <label>:48:                                     ; preds = %44, %29, %19
  %49 = phi %struct.tcp_seg** [ %24, %19 ], [ %45, %44 ], [ %31, %29 ]
  %50 = phi %struct.tcp_seg* [ null, %19 ], [ null, %44 ], [ %43, %29 ]
  store %struct.tcp_seg* %50, %struct.tcp_seg** %20, align 8, !dbg !2255, !tbaa !514
  store %struct.tcp_seg* %6, %struct.tcp_seg** %49, align 8, !dbg !2256, !tbaa !754
  %51 = load %struct.tcp_seg*, %struct.tcp_seg** %20, align 8, !dbg !2257, !tbaa !514
  %52 = icmp eq %struct.tcp_seg* %51, null, !dbg !2258
  br i1 %52, label %53, label %55, !dbg !2259

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2260
  store i16 0, i16* %54, align 2, !dbg !2261, !tbaa !536
  br label %55, !dbg !2262

; <label>:55:                                     ; preds = %53, %48
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2263
  %57 = load i8, i8* %56, align 2, !dbg !2263, !tbaa !2085
  %58 = icmp eq i8 %57, -1, !dbg !2264
  br i1 %58, label %61, label %59, !dbg !2265

; <label>:59:                                     ; preds = %55
  %60 = add i8 %57, 1, !dbg !2266
  store i8 %60, i8* %56, align 2, !dbg !2266, !tbaa !2085
  br label %61, !dbg !2267

; <label>:61:                                     ; preds = %55, %59
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2268
  store i32 0, i32* %62, align 8, !dbg !2269, !tbaa !1804
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2270
  %64 = load i32, i32* %63, align 4, !dbg !2270, !tbaa !1554
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2270
  %66 = load i32, i32* %65, align 8, !dbg !2270, !tbaa !1553
  %67 = icmp ult i32 %64, %66, !dbg !2270
  %68 = select i1 %67, i32 %64, i32 %66, !dbg !2270
  %69 = lshr i32 %68, 1, !dbg !2272
  %70 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 32, !dbg !2273
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2274
  %72 = load i16, i16* %71, align 2, !dbg !2274, !tbaa !411
  %73 = zext i16 %72 to i32, !dbg !2276
  %74 = shl nuw nsw i32 %73, 1, !dbg !2277
  %75 = icmp ult i32 %69, %74, !dbg !2278
  %76 = select i1 %75, i32 %74, i32 %69, !dbg !2279
  store i32 %76, i32* %70, align 8, !dbg !2280
  %77 = mul nuw nsw i32 %73, 3, !dbg !2282
  %78 = add nuw i32 %76, %77, !dbg !2283
  store i32 %78, i32* %63, align 4, !dbg !2284, !tbaa !1554
  %79 = load i16, i16* %9, align 2, !dbg !2285, !tbaa !457
  %80 = or i16 %79, 4, !dbg !2285
  store i16 %80, i16* %9, align 2, !dbg !2285, !tbaa !457
  %81 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2287
  store i16 0, i16* %81, align 4, !dbg !2288, !tbaa !1796
  br label %82, !dbg !2289

; <label>:82:                                     ; preds = %13, %8, %4, %61
  ret void, !dbg !2290
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rst(%struct.tcp_pcb* readonly, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2291 {
  %8 = icmp eq %struct.ip_addr* %3, null, !dbg !2312
  br i1 %8, label %9, label %10, !dbg !2315

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !2316
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2319
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2319
  unreachable, !dbg !2319

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %4, null, !dbg !2323
  br i1 %11, label %12, label %13, !dbg !2326

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !2327
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2330
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2330
  unreachable, !dbg !2330

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lwip_htonl(i32 %1) #9, !dbg !2336
  %15 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %2, i16 zeroext 0, i32 %14, i16 zeroext %5, i16 zeroext %6, i8 zeroext 20, i16 zeroext -193) #7, !dbg !2337
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !2339
  br i1 %16, label %19, label %17, !dbg !2341

; <label>:17:                                     ; preds = %13
  %18 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* %0, %struct.pbuf* nonnull %15, %struct.ip_addr* nonnull %3, %struct.ip_addr* nonnull %4) #7, !dbg !2342
  br label %19, !dbg !2343

; <label>:19:                                     ; preds = %13, %17
  ret void, !dbg !2343
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32, i16 zeroext, i32, i16 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) unnamed_addr #0 !dbg !2344 {
  %8 = add i16 %1, 20, !dbg !2366
  %9 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %8, i32 640) #9, !dbg !2367
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !2369
  br i1 %10, label %35, label %11, !dbg !2371

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 3, !dbg !2372
  %13 = load i16, i16* %12, align 2, !dbg !2372, !tbaa !611
  %14 = icmp ugt i16 %13, 19, !dbg !2372
  br i1 %14, label %16, label %15, !dbg !2376

; <label>:15:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !2377
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2380
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2380
  unreachable, !dbg !2380

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 1, !dbg !2384
  %18 = bitcast i8** %17 to %struct.tcp_hdr**, !dbg !2384
  %19 = load %struct.tcp_hdr*, %struct.tcp_hdr** %18, align 8, !dbg !2384, !tbaa !586
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #9, !dbg !2386
  %21 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 0, !dbg !2387
  store i16 %20, i16* %21, align 1, !dbg !2388, !tbaa !1086
  %22 = tail call zeroext i16 @lwip_htons(i16 zeroext %4) #9, !dbg !2389
  %23 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 1, !dbg !2390
  store i16 %22, i16* %23, align 1, !dbg !2391, !tbaa !1093
  %24 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 2, !dbg !2392
  store i32 %2, i32* %24, align 1, !dbg !2393, !tbaa !1098
  %25 = tail call i32 @lwip_htonl(i32 %0) #9, !dbg !2394
  %26 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 3, !dbg !2395
  store i32 %25, i32* %26, align 1, !dbg !2396, !tbaa !1747
  %27 = zext i8 %5 to i16, !dbg !2397
  %28 = or i16 %27, 20480, !dbg !2397
  %29 = tail call zeroext i16 @lwip_htons(i16 zeroext %28) #9, !dbg !2397
  %30 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 4, !dbg !2397
  store i16 %29, i16* %30, align 1, !dbg !2397, !tbaa !859
  %31 = tail call zeroext i16 @lwip_htons(i16 zeroext %6) #9, !dbg !2398
  %32 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 5, !dbg !2399
  store i16 %31, i16* %32, align 1, !dbg !2400, !tbaa !1758
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 6, !dbg !2401
  store i16 0, i16* %33, align 1, !dbg !2402, !tbaa !1830
  %34 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 7, !dbg !2403
  store i16 0, i16* %34, align 1, !dbg !2404, !tbaa !1102
  br label %35, !dbg !2405

; <label>:35:                                     ; preds = %7, %16
  ret %struct.pbuf* %9, !dbg !2406
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, %struct.ip_addr*, %struct.ip_addr*) unnamed_addr #0 !dbg !2407 {
  %5 = icmp eq %struct.pbuf* %1, null, !dbg !2428
  br i1 %5, label %6, label %7, !dbg !2431

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !2432
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2435
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2435
  unreachable, !dbg !2435

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2443
  br i1 %8, label %15, label %9, !dbg !2444

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2445
  %11 = load i8, i8* %10, align 8, !dbg !2445, !tbaa !1584
  %12 = icmp eq i8 %11, 0, !dbg !2446
  br i1 %12, label %15, label %13, !dbg !2447

; <label>:13:                                     ; preds = %9
  %14 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %11) #9, !dbg !2448
  br label %28, !dbg !2449

; <label>:15:                                     ; preds = %9, %7
  %16 = icmp eq %struct.ip_addr* %3, null, !dbg !2450
  br i1 %16, label %25, label %17, !dbg !2450

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2450
  %19 = load i8, i8* %18, align 4, !dbg !2450, !tbaa !1592
  %20 = icmp eq i8 %19, 6, !dbg !2450
  br i1 %20, label %21, label %25, !dbg !2450

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2450
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2450
  %24 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %22, %struct.ip6_addr* nonnull %23) #9, !dbg !2450
  br label %28, !dbg !2450

; <label>:25:                                     ; preds = %17, %15
  %26 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2450
  %27 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %26) #9, !dbg !2450
  br label %28, !dbg !2450

; <label>:28:                                     ; preds = %13, %21, %25
  %29 = phi %struct.netif* [ %14, %13 ], [ %24, %21 ], [ %27, %25 ], !dbg !2451
  %30 = icmp eq %struct.netif* %29, null, !dbg !2453
  br i1 %30, label %68, label %31, !dbg !2454

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %29, i64 0, i32 16, !dbg !2455
  %33 = load i16, i16* %32, align 8, !dbg !2455, !tbaa !1841
  %34 = and i16 %33, 4, !dbg !2455
  %35 = icmp eq i16 %34, 0, !dbg !2455
  br i1 %35, label %44, label %36, !dbg !2456

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 1, !dbg !2457
  %38 = bitcast i8** %37 to %struct.tcp_hdr**, !dbg !2457
  %39 = load %struct.tcp_hdr*, %struct.tcp_hdr** %38, align 8, !dbg !2457, !tbaa !586
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2459
  %41 = load i16, i16* %40, align 8, !dbg !2459, !tbaa !759
  %42 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %1, i8 zeroext 6, i16 zeroext %41, %struct.ip_addr* %2, %struct.ip_addr* %3) #9, !dbg !2460
  %43 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %39, i64 0, i32 6, !dbg !2461
  store i16 %42, i16* %43, align 1, !dbg !2462, !tbaa !1830
  br label %44, !dbg !2463

; <label>:44:                                     ; preds = %31, %36
  br i1 %8, label %50, label %45, !dbg !2464

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2465
  %47 = load i8, i8* %46, align 1, !dbg !2465, !tbaa !1853
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2469
  %49 = load i8, i8* %48, align 2, !dbg !2469, !tbaa !1854
  br label %50, !dbg !2471

; <label>:50:                                     ; preds = %44, %45
  %51 = phi i8 [ %47, %45 ], [ -1, %44 ], !dbg !2472
  %52 = phi i8 [ %49, %45 ], [ 0, %44 ], !dbg !2472
  %53 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2474, !tbaa !1852
  %54 = add i16 %53, 1, !dbg !2474
  store i16 %54, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2474, !tbaa !1852
  %55 = icmp eq %struct.ip_addr* %3, null, !dbg !2475
  br i1 %55, label %64, label %56, !dbg !2475

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2475
  %58 = load i8, i8* %57, align 4, !dbg !2475, !tbaa !1592
  %59 = icmp eq i8 %58, 6, !dbg !2475
  br i1 %59, label %60, label %64, !dbg !2475

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2475
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2475
  %63 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %1, %struct.ip6_addr* %61, %struct.ip6_addr* nonnull %62, i8 zeroext %51, i8 zeroext %52, i8 zeroext 6, %struct.netif* nonnull %29) #9, !dbg !2475
  br label %68, !dbg !2475

; <label>:64:                                     ; preds = %50, %56
  %65 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !2475
  %66 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2475
  %67 = tail call signext i8 @ip4_output_if(%struct.pbuf* nonnull %1, %struct.ip4_addr* %65, %struct.ip4_addr* %66, i8 zeroext %51, i8 zeroext %52, i8 zeroext 6, %struct.netif* nonnull %29) #9, !dbg !2475
  br label %68, !dbg !2475

; <label>:68:                                     ; preds = %60, %64, %28
  %69 = phi i8 [ -4, %28 ], [ %63, %60 ], [ %67, %64 ], !dbg !2476
  %70 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !2478
  ret i8 %69, !dbg !2479
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_keepalive(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2480 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2488
  br i1 %2, label %3, label %4, !dbg !2491

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2492
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2495
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2495
  unreachable, !dbg !2495

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2499
  %6 = load i32, i32* %5, align 8, !dbg !2499, !tbaa !1879
  %7 = add i32 %6, -1, !dbg !2500
  %8 = tail call i32 @lwip_htonl(i32 %7) #9, !dbg !2501
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2507
  %10 = load i32, i32* %9, align 4, !dbg !2507, !tbaa !1742
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2508
  %12 = load i16, i16* %11, align 2, !dbg !2508, !tbaa !1081
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2509
  %14 = load i16, i16* %13, align 8, !dbg !2509, !tbaa !1088
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2510
  %16 = load i32, i32* %15, align 4, !dbg !2510, !tbaa !1753
  %17 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2510
  %18 = load i8, i8* %17, align 1, !dbg !2510, !tbaa !1756
  %19 = zext i8 %18 to i32, !dbg !2510
  %20 = lshr i32 %16, %19, !dbg !2510
  %21 = icmp ult i32 %20, 65535, !dbg !2510
  %22 = select i1 %21, i32 %20, i32 65535, !dbg !2510
  %23 = trunc i32 %22 to i16, !dbg !2510
  %24 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %10, i16 zeroext 0, i32 %8, i16 zeroext %12, i16 zeroext %14, i8 zeroext 16, i16 zeroext %23) #9, !dbg !2511
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !2513
  br i1 %25, label %34, label %26, !dbg !2514

; <label>:26:                                     ; preds = %4
  %27 = load i32, i32* %9, align 4, !dbg !2515, !tbaa !1742
  %28 = load i32, i32* %15, align 4, !dbg !2516, !tbaa !1753
  %29 = add i32 %28, %27, !dbg !2517
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2518
  store i32 %29, i32* %30, align 8, !dbg !2519, !tbaa !1763
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2521
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2522
  %33 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %24, %struct.ip_addr* nonnull %31, %struct.ip_addr* nonnull %32) #7, !dbg !2523
  br label %34, !dbg !2525

; <label>:34:                                     ; preds = %4, %26
  %35 = phi i8 [ %33, %26 ], [ -1, %4 ], !dbg !2526
  ret i8 %35, !dbg !2527
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_zero_window_probe(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2528 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2544
  br i1 %2, label %3, label %4, !dbg !2547

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2548
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2551
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2551
  unreachable, !dbg !2551

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2555
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2555, !tbaa !487
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2557
  br i1 %7, label %89, label %8, !dbg !2559

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !2560
  %10 = load i8, i8* %9, align 2, !dbg !2560, !tbaa !1650
  %11 = icmp eq i8 %10, -1, !dbg !2562
  br i1 %11, label %14, label %12, !dbg !2563

; <label>:12:                                     ; preds = %8
  %13 = add i8 %10, 1, !dbg !2564
  store i8 %13, i8* %9, align 2, !dbg !2564, !tbaa !1650
  br label %14, !dbg !2566

; <label>:14:                                     ; preds = %8, %12
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4, !dbg !2567
  %16 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2567, !tbaa !852
  %17 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %16, i64 0, i32 4, !dbg !2567
  %18 = load i16, i16* %17, align 1, !dbg !2567, !tbaa !859
  %19 = tail call zeroext i16 @lwip_htons(i16 zeroext %18) #9, !dbg !2567
  %20 = and i16 %19, 1, !dbg !2568
  %21 = icmp eq i16 %20, 0, !dbg !2569
  br i1 %21, label %26, label %22, !dbg !2570

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2571
  %24 = load i16, i16* %23, align 8, !dbg !2571, !tbaa !525
  %25 = icmp eq i16 %24, 0, !dbg !2572
  br label %26

; <label>:26:                                     ; preds = %22, %14
  %27 = phi i1 [ false, %14 ], [ %25, %22 ]
  %28 = xor i1 %27, true, !dbg !2573
  %29 = zext i1 %28 to i16, !dbg !2573
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2575, !tbaa !852
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2576
  %32 = load i32, i32* %31, align 1, !dbg !2576, !tbaa !1098
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2582
  %34 = load i32, i32* %33, align 4, !dbg !2582, !tbaa !1742
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2583
  %36 = load i16, i16* %35, align 2, !dbg !2583, !tbaa !1081
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2584
  %38 = load i16, i16* %37, align 8, !dbg !2584, !tbaa !1088
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2585
  %40 = load i32, i32* %39, align 4, !dbg !2585, !tbaa !1753
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2585
  %42 = load i8, i8* %41, align 1, !dbg !2585, !tbaa !1756
  %43 = zext i8 %42 to i32, !dbg !2585
  %44 = lshr i32 %40, %43, !dbg !2585
  %45 = icmp ult i32 %44, 65535, !dbg !2585
  %46 = select i1 %45, i32 %44, i32 65535, !dbg !2585
  %47 = trunc i32 %46 to i16, !dbg !2585
  %48 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %34, i16 zeroext %29, i32 %32, i16 zeroext %36, i16 zeroext %38, i8 zeroext 16, i16 zeroext %47) #9, !dbg !2586
  %49 = icmp eq %struct.pbuf* %48, null, !dbg !2588
  br i1 %49, label %89, label %50, !dbg !2589

; <label>:50:                                     ; preds = %26
  %51 = load i32, i32* %33, align 4, !dbg !2590, !tbaa !1742
  %52 = load i32, i32* %39, align 4, !dbg !2591, !tbaa !1753
  %53 = add i32 %52, %51, !dbg !2592
  %54 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2593
  store i32 %53, i32* %54, align 8, !dbg !2594, !tbaa !1763
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %48, i64 0, i32 1, !dbg !2596
  %56 = load i8*, i8** %55, align 8, !dbg !2596, !tbaa !586
  br i1 %27, label %57, label %64, !dbg !2597

; <label>:57:                                     ; preds = %50
  %58 = getelementptr inbounds i8, i8* %56, i64 12, !dbg !2599
  %59 = bitcast i8* %58 to i16*, !dbg !2599
  %60 = load i16, i16* %59, align 1, !dbg !2599, !tbaa !859
  %61 = and i16 %60, -16129, !dbg !2599
  %62 = tail call zeroext i16 @lwip_htons(i16 zeroext 17) #9, !dbg !2599
  %63 = or i16 %61, %62, !dbg !2599
  store i16 %63, i16* %59, align 1, !dbg !2599, !tbaa !859
  br label %74, !dbg !2601

; <label>:64:                                     ; preds = %50
  %65 = getelementptr inbounds i8, i8* %56, i64 20, !dbg !2602
  %66 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2604
  %67 = load %struct.pbuf*, %struct.pbuf** %66, align 8, !dbg !2604, !tbaa !593
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i64 0, i32 2, !dbg !2605
  %69 = load i16, i16* %68, align 8, !dbg !2605, !tbaa !759
  %70 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2606
  %71 = load i16, i16* %70, align 8, !dbg !2606, !tbaa !525
  %72 = sub i16 %69, %71, !dbg !2607
  %73 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %67, i8* nonnull %65, i16 zeroext 1, i16 zeroext %72) #9, !dbg !2608
  br label %74

; <label>:74:                                     ; preds = %64, %57
  %75 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2609, !tbaa !852
  %76 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %75, i64 0, i32 2, !dbg !2609
  %77 = load i32, i32* %76, align 1, !dbg !2609, !tbaa !1098
  %78 = tail call i32 @lwip_htonl(i32 %77) #9, !dbg !2609
  %79 = add i32 %78, 1, !dbg !2610
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2612
  %81 = load i32, i32* %80, align 8, !dbg !2612, !tbaa !1879
  %82 = sub i32 %81, %79, !dbg !2612
  %83 = icmp slt i32 %82, 0, !dbg !2612
  br i1 %83, label %84, label %85, !dbg !2614

; <label>:84:                                     ; preds = %74
  store i32 %79, i32* %80, align 8, !dbg !2615, !tbaa !1879
  br label %85, !dbg !2617

; <label>:85:                                     ; preds = %74, %84
  %86 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2618
  %87 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2619
  %88 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %48, %struct.ip_addr* nonnull %86, %struct.ip_addr* nonnull %87) #7, !dbg !2620
  br label %89, !dbg !2622

; <label>:89:                                     ; preds = %26, %4, %85
  %90 = phi i8 [ %88, %85 ], [ 0, %4 ], [ -1, %26 ], !dbg !2623
  ret i8 %90, !dbg !2624
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
!439 = !DILocation(line: 312, column: 13, scope: !440, inlinedAt: !437)
!440 = distinct !DILexicalBlock(scope: !431, file: !10, line: 312, column: 7)
!441 = !{!412, !395, i64 72}
!442 = !DILocation(line: 312, column: 35, scope: !440, inlinedAt: !437)
!443 = !DILocation(line: 318, column: 18, scope: !444, inlinedAt: !437)
!444 = distinct !DILexicalBlock(scope: !440, file: !10, line: 318, column: 14)
!445 = !DILocation(line: 318, column: 14, scope: !440, inlinedAt: !437)
!446 = !DILocation(line: 438, column: 19, scope: !223)
!447 = !{!412, !394, i64 172}
!448 = !DILocation(line: 318, column: 14, scope: !444, inlinedAt: !437)
!449 = !DILocation(line: 323, column: 18, scope: !450, inlinedAt: !437)
!450 = distinct !DILexicalBlock(scope: !431, file: !10, line: 323, column: 7)
!451 = !{!412, !415, i64 168}
!452 = !DILocation(line: 323, column: 11, scope: !450, inlinedAt: !437)
!453 = !DILocation(line: 323, column: 7, scope: !431, inlinedAt: !437)
!454 = !DILocation(line: 326, column: 5, scope: !455, inlinedAt: !437)
!455 = distinct !DILexicalBlock(scope: !456, file: !10, line: 326, column: 5)
!456 = distinct !DILexicalBlock(scope: !450, file: !10, line: 323, column: 27)
!457 = !{!412, !394, i64 82}
!458 = !DILocation(line: 327, column: 5, scope: !456, inlinedAt: !437)
!459 = !DILocation(line: 335, column: 12, scope: !460, inlinedAt: !437)
!460 = distinct !DILexicalBlock(scope: !431, file: !10, line: 335, column: 7)
!461 = !DILocation(line: 335, column: 25, scope: !460, inlinedAt: !437)
!462 = !DILocation(line: 335, column: 7, scope: !431, inlinedAt: !437)
!463 = !DILocation(line: 338, column: 5, scope: !464, inlinedAt: !437)
!464 = distinct !DILexicalBlock(scope: !460, file: !10, line: 335, column: 88)
!465 = !{!466, !394, i64 156}
!466 = !{!"stats_", !467, i64 0, !467, i64 24, !467, i64 48, !467, i64 72, !467, i64 96, !467, i64 120, !467, i64 144, !468, i64 168, !467, i64 186, !467, i64 210, !467, i64 234, !470, i64 258, !467, i64 286}
!467 = !{!"stats_proto", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22}
!468 = !{!"stats_sys", !469, i64 0, !469, i64 6, !469, i64 12}
!469 = !{!"stats_syselem", !394, i64 0, !394, i64 2, !394, i64 4}
!470 = !{!"stats_igmp", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22, !394, i64 24, !394, i64 26}
!471 = !DILocation(line: 339, column: 5, scope: !472, inlinedAt: !437)
!472 = distinct !DILexicalBlock(scope: !464, file: !10, line: 339, column: 5)
!473 = !DILocation(line: 340, column: 5, scope: !464, inlinedAt: !437)
!474 = !DILocation(line: 342, column: 25, scope: !475, inlinedAt: !437)
!475 = distinct !DILexicalBlock(scope: !431, file: !10, line: 342, column: 7)
!476 = !DILocation(line: 0, scope: !477, inlinedAt: !437)
!477 = distinct !DILexicalBlock(scope: !478, file: !10, line: 346, column: 5)
!478 = distinct !DILexicalBlock(scope: !479, file: !10, line: 346, column: 5)
!479 = distinct !DILexicalBlock(scope: !475, file: !10, line: 345, column: 10)
!480 = !{!412, !414, i64 192}
!481 = !DILocation(line: 0, scope: !482, inlinedAt: !437)
!482 = distinct !DILexicalBlock(scope: !483, file: !10, line: 343, column: 5)
!483 = distinct !DILexicalBlock(scope: !484, file: !10, line: 343, column: 5)
!484 = distinct !DILexicalBlock(scope: !475, file: !10, line: 342, column: 31)
!485 = !DILocation(line: 342, column: 7, scope: !431, inlinedAt: !437)
!486 = !DILocation(line: 343, column: 5, scope: !482, inlinedAt: !437)
!487 = !{!412, !414, i64 184}
!488 = !DILocation(line: 343, column: 5, scope: !483, inlinedAt: !437)
!489 = !DILocation(line: 343, column: 5, scope: !490, inlinedAt: !437)
!490 = distinct !DILexicalBlock(scope: !491, file: !10, line: 343, column: 5)
!491 = distinct !DILexicalBlock(scope: !482, file: !10, line: 343, column: 5)
!492 = !DILocation(line: 343, column: 5, scope: !493, inlinedAt: !437)
!493 = distinct !DILexicalBlock(scope: !494, file: !10, line: 343, column: 5)
!494 = distinct !DILexicalBlock(scope: !495, file: !10, line: 343, column: 5)
!495 = distinct !DILexicalBlock(scope: !490, file: !10, line: 343, column: 5)
!496 = !DILocation(line: 346, column: 5, scope: !477, inlinedAt: !437)
!497 = !DILocation(line: 346, column: 5, scope: !478, inlinedAt: !437)
!498 = !DILocation(line: 346, column: 5, scope: !499, inlinedAt: !437)
!499 = distinct !DILexicalBlock(scope: !500, file: !10, line: 346, column: 5)
!500 = distinct !DILexicalBlock(scope: !477, file: !10, line: 346, column: 5)
!501 = !DILocation(line: 346, column: 5, scope: !502, inlinedAt: !437)
!502 = distinct !DILexicalBlock(scope: !503, file: !10, line: 346, column: 5)
!503 = distinct !DILexicalBlock(scope: !504, file: !10, line: 346, column: 5)
!504 = distinct !DILexicalBlock(scope: !499, file: !10, line: 346, column: 5)
!505 = !DILocation(line: 397, column: 9, scope: !223)
!506 = !DILocation(line: 398, column: 8, scope: !223)
!507 = !DILocation(line: 478, column: 12, scope: !357)
!508 = !DILocation(line: 478, column: 19, scope: !357)
!509 = !DILocation(line: 478, column: 7, scope: !223)
!510 = !DILocation(line: 0, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !10, line: 483, column: 5)
!512 = distinct !DILexicalBlock(scope: !356, file: !10, line: 483, column: 5)
!513 = !DILocation(line: 483, column: 50, scope: !511)
!514 = !{!515, !414, i64 0}
!515 = !{!"tcp_seg", !414, i64 0, !414, i64 8, !394, i64 16, !395, i64 18, !414, i64 24}
!516 = !DILocation(line: 483, column: 55, scope: !511)
!517 = !DILocation(line: 483, column: 5, scope: !512)
!518 = distinct !{!518, !517, !519}
!519 = !DILocation(line: 484, column: 42, scope: !512)
!520 = !DILocation(line: 487, column: 21, scope: !356)
!521 = !{!515, !395, i64 18}
!522 = !DILocation(line: 488, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !10, line: 488, column: 5)
!524 = distinct !DILexicalBlock(scope: !356, file: !10, line: 488, column: 5)
!525 = !{!515, !394, i64 16}
!526 = !DILocation(line: 488, column: 5, scope: !524)
!527 = !DILocation(line: 488, column: 5, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !10, line: 488, column: 5)
!529 = distinct !DILexicalBlock(scope: !523, file: !10, line: 488, column: 5)
!530 = !DILocation(line: 488, column: 5, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !10, line: 488, column: 5)
!532 = distinct !DILexicalBlock(scope: !533, file: !10, line: 488, column: 5)
!533 = distinct !DILexicalBlock(scope: !528, file: !10, line: 488, column: 5)
!534 = !DILocation(line: 489, column: 23, scope: !356)
!535 = !DILocation(line: 504, column: 21, scope: !356)
!536 = !{!412, !394, i64 174}
!537 = !DILocation(line: 504, column: 14, scope: !356)
!538 = !DILocation(line: 505, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !356, file: !10, line: 505, column: 9)
!540 = !DILocation(line: 505, column: 18, scope: !539)
!541 = !DILocation(line: 505, column: 9, scope: !356)
!542 = !DILocation(line: 506, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !10, line: 506, column: 7)
!544 = distinct !DILexicalBlock(scope: !545, file: !10, line: 506, column: 7)
!545 = distinct !DILexicalBlock(scope: !539, file: !10, line: 505, column: 23)
!546 = !DILocation(line: 506, column: 7, scope: !544)
!547 = !DILocation(line: 506, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !10, line: 506, column: 7)
!549 = distinct !DILexicalBlock(scope: !543, file: !10, line: 506, column: 7)
!550 = !DILocation(line: 506, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !10, line: 506, column: 7)
!552 = distinct !DILexicalBlock(scope: !553, file: !10, line: 506, column: 7)
!553 = distinct !DILexicalBlock(scope: !548, file: !10, line: 506, column: 7)
!554 = !DILocation(line: 508, column: 23, scope: !545)
!555 = !DILocation(line: 510, column: 16, scope: !545)
!556 = !DILocation(line: 511, column: 13, scope: !545)
!557 = !DILocation(line: 514, column: 5, scope: !558)
!558 = distinct !DILexicalBlock(scope: !559, file: !10, line: 514, column: 5)
!559 = distinct !DILexicalBlock(scope: !356, file: !10, line: 514, column: 5)
!560 = !DILocation(line: 514, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !10, line: 514, column: 5)
!562 = distinct !DILexicalBlock(scope: !558, file: !10, line: 514, column: 5)
!563 = !DILocation(line: 514, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !10, line: 514, column: 5)
!565 = distinct !DILexicalBlock(scope: !566, file: !10, line: 514, column: 5)
!566 = distinct !DILexicalBlock(scope: !561, file: !10, line: 514, column: 5)
!567 = !DILocation(line: 0, scope: !356)
!568 = !DILocation(line: 533, column: 10, scope: !361)
!569 = !DILocation(line: 533, column: 16, scope: !361)
!570 = !DILocation(line: 533, column: 14, scope: !361)
!571 = !DILocation(line: 533, column: 21, scope: !361)
!572 = !DILocation(line: 533, column: 25, scope: !361)
!573 = !DILocation(line: 533, column: 31, scope: !361)
!574 = !DILocation(line: 533, column: 57, scope: !361)
!575 = !DILocation(line: 533, column: 36, scope: !361)
!576 = !DILocation(line: 534, column: 22, scope: !360)
!577 = !DILocation(line: 534, column: 13, scope: !360)
!578 = !DILocation(line: 540, column: 20, scope: !364)
!579 = !DILocation(line: 540, column: 11, scope: !360)
!580 = !DILocation(line: 542, column: 25, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !10, line: 542, column: 13)
!582 = distinct !DILexicalBlock(scope: !364, file: !10, line: 540, column: 43)
!583 = !DILocation(line: 542, column: 98, scope: !581)
!584 = !DILocation(line: 542, column: 13, scope: !582)
!585 = !DILocation(line: 551, column: 9, scope: !582)
!586 = !{!587, !414, i64 8}
!587 = !{!"pbuf", !414, i64 0, !414, i64 8, !394, i64 16, !394, i64 18, !395, i64 20, !395, i64 21, !395, i64 22, !395, i64 23}
!588 = !DILocation(line: 555, column: 21, scope: !582)
!589 = !DILocation(line: 555, column: 18, scope: !582)
!590 = !DILocation(line: 556, column: 7, scope: !582)
!591 = !DILocation(line: 560, column: 31, scope: !592)
!592 = distinct !DILexicalBlock(scope: !363, file: !10, line: 560, column: 9)
!593 = !{!515, !414, i64 8}
!594 = !DILocation(line: 559, column: 22, scope: !363)
!595 = !DILocation(line: 560, column: 14, scope: !592)
!596 = !DILocation(line: 0, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !10, line: 560, column: 9)
!598 = !DILocation(line: 560, column: 37, scope: !597)
!599 = !{!587, !414, i64 0}
!600 = !DILocation(line: 560, column: 42, scope: !597)
!601 = !DILocation(line: 560, column: 9, scope: !592)
!602 = distinct !{!602, !601, !603}
!603 = !DILocation(line: 560, column: 63, scope: !592)
!604 = !DILocation(line: 561, column: 18, scope: !605)
!605 = distinct !DILexicalBlock(scope: !363, file: !10, line: 561, column: 13)
!606 = !{!587, !395, i64 20}
!607 = !DILocation(line: 561, column: 106, scope: !605)
!608 = !DILocation(line: 561, column: 112, scope: !605)
!609 = !DILocation(line: 562, column: 30, scope: !605)
!610 = !DILocation(line: 562, column: 43, scope: !605)
!611 = !{!587, !394, i64 18}
!612 = !DILocation(line: 562, column: 38, scope: !605)
!613 = !DILocation(line: 562, column: 47, scope: !605)
!614 = !DILocation(line: 561, column: 13, scope: !363)
!615 = !DILocation(line: 563, column: 11, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !10, line: 563, column: 11)
!617 = distinct !DILexicalBlock(scope: !618, file: !10, line: 563, column: 11)
!618 = distinct !DILexicalBlock(scope: !605, file: !10, line: 562, column: 69)
!619 = !DILocation(line: 563, column: 11, scope: !617)
!620 = !DILocation(line: 563, column: 11, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !10, line: 563, column: 11)
!622 = distinct !DILexicalBlock(scope: !616, file: !10, line: 563, column: 11)
!623 = !DILocation(line: 563, column: 11, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !10, line: 563, column: 11)
!625 = distinct !DILexicalBlock(scope: !626, file: !10, line: 563, column: 11)
!626 = distinct !DILexicalBlock(scope: !621, file: !10, line: 563, column: 11)
!627 = !DILocation(line: 566, column: 27, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !10, line: 566, column: 15)
!629 = distinct !DILexicalBlock(scope: !605, file: !10, line: 565, column: 16)
!630 = !DILocation(line: 566, column: 67, scope: !628)
!631 = !DILocation(line: 566, column: 15, scope: !629)
!632 = !DILocation(line: 572, column: 70, scope: !629)
!633 = !DILocation(line: 572, column: 42, scope: !629)
!634 = !DILocation(line: 572, column: 50, scope: !629)
!635 = !{!636, !414, i64 8}
!636 = !{!"pbuf_rom", !414, i64 0, !414, i64 8}
!637 = !DILocation(line: 573, column: 23, scope: !629)
!638 = !DILocation(line: 573, column: 20, scope: !629)
!639 = !DILocation(line: 0, scope: !223)
!640 = !DILocation(line: 0, scope: !618)
!641 = !DILocation(line: 583, column: 11, scope: !360)
!642 = !DILocation(line: 588, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !10, line: 588, column: 5)
!644 = distinct !DILexicalBlock(scope: !645, file: !10, line: 588, column: 5)
!645 = distinct !DILexicalBlock(scope: !357, file: !10, line: 586, column: 10)
!646 = !DILocation(line: 588, column: 5, scope: !644)
!647 = !DILocation(line: 599, column: 16, scope: !223)
!648 = !DILocation(line: 588, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !10, line: 588, column: 5)
!650 = distinct !DILexicalBlock(scope: !643, file: !10, line: 588, column: 5)
!651 = !DILocation(line: 588, column: 5, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !10, line: 588, column: 5)
!653 = distinct !DILexicalBlock(scope: !654, file: !10, line: 588, column: 5)
!654 = distinct !DILexicalBlock(scope: !649, file: !10, line: 588, column: 5)
!655 = !DILocation(line: 438, column: 12, scope: !223)
!656 = !DILocation(line: 599, column: 14, scope: !223)
!657 = !DILocation(line: 599, column: 3, scope: !223)
!658 = !DILocation(line: 599, column: 10, scope: !223)
!659 = !DILocation(line: 601, column: 22, scope: !366)
!660 = !DILocation(line: 601, column: 11, scope: !366)
!661 = !DILocation(line: 602, column: 11, scope: !366)
!662 = !DILocation(line: 603, column: 20, scope: !366)
!663 = !DILocation(line: 603, column: 11, scope: !366)
!664 = !DILocation(line: 609, column: 9, scope: !366)
!665 = !DILocation(line: 612, column: 110, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !10, line: 612, column: 11)
!667 = distinct !DILexicalBlock(scope: !372, file: !10, line: 609, column: 41)
!668 = !DILocation(line: 612, column: 104, scope: !666)
!669 = !DILocation(line: 612, column: 16, scope: !666)
!670 = !DILocation(line: 600, column: 18, scope: !366)
!671 = !DILocation(line: 612, column: 120, scope: !666)
!672 = !DILocation(line: 612, column: 11, scope: !667)
!673 = !DILocation(line: 616, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !10, line: 616, column: 7)
!675 = distinct !DILexicalBlock(scope: !667, file: !10, line: 616, column: 7)
!676 = !DILocation(line: 616, column: 7, scope: !675)
!677 = !DILocation(line: 616, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !10, line: 616, column: 7)
!679 = distinct !DILexicalBlock(scope: !674, file: !10, line: 616, column: 7)
!680 = !DILocation(line: 616, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !10, line: 616, column: 7)
!682 = distinct !DILexicalBlock(scope: !683, file: !10, line: 616, column: 7)
!683 = distinct !DILexicalBlock(scope: !678, file: !10, line: 616, column: 7)
!684 = !DILocation(line: 619, column: 7, scope: !667)
!685 = !DILocation(line: 620, column: 5, scope: !667)
!686 = !DILocation(line: 628, column: 7, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !10, line: 628, column: 7)
!688 = distinct !DILexicalBlock(scope: !371, file: !10, line: 628, column: 7)
!689 = !DILocation(line: 628, column: 7, scope: !688)
!690 = !DILocation(line: 628, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !10, line: 628, column: 7)
!692 = distinct !DILexicalBlock(scope: !687, file: !10, line: 628, column: 7)
!693 = !DILocation(line: 628, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !10, line: 628, column: 7)
!695 = distinct !DILexicalBlock(scope: !696, file: !10, line: 628, column: 7)
!696 = distinct !DILexicalBlock(scope: !691, file: !10, line: 628, column: 7)
!697 = !DILocation(line: 630, column: 17, scope: !698)
!698 = distinct !DILexicalBlock(scope: !371, file: !10, line: 630, column: 11)
!699 = !DILocation(line: 626, column: 20, scope: !371)
!700 = !DILocation(line: 630, column: 63, scope: !698)
!701 = !DILocation(line: 630, column: 11, scope: !371)
!702 = !DILocation(line: 643, column: 60, scope: !371)
!703 = !DILocation(line: 643, column: 32, scope: !371)
!704 = !DILocation(line: 643, column: 40, scope: !371)
!705 = !DILocation(line: 646, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !371, file: !10, line: 646, column: 11)
!707 = !DILocation(line: 646, column: 62, scope: !706)
!708 = !DILocation(line: 646, column: 11, scope: !371)
!709 = !DILocation(line: 649, column: 9, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !10, line: 646, column: 71)
!711 = !DILocation(line: 651, column: 9, scope: !710)
!712 = !DILocation(line: 654, column: 7, scope: !371)
!713 = !DILocation(line: 657, column: 17, scope: !366)
!714 = !DILocation(line: 657, column: 14, scope: !366)
!715 = !DILocation(line: 662, column: 18, scope: !716)
!716 = distinct !DILexicalBlock(scope: !366, file: !10, line: 662, column: 9)
!717 = !DILocation(line: 662, column: 9, scope: !366)
!718 = !DILocation(line: 665, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !10, line: 662, column: 74)
!720 = !DILocation(line: 666, column: 7, scope: !719)
!721 = !DILocation(line: 669, column: 51, scope: !722)
!722 = distinct !DILexicalBlock(scope: !366, file: !10, line: 669, column: 9)
!723 = !{!412, !415, i64 156}
!724 = !DILocation(line: 669, column: 59, scope: !722)
!725 = !DILocation(line: 669, column: 16, scope: !722)
!726 = !DILocation(line: 669, column: 77, scope: !722)
!727 = !DILocation(line: 669, column: 9, scope: !366)
!728 = !DILocation(line: 682, column: 15, scope: !729)
!729 = distinct !DILexicalBlock(scope: !366, file: !10, line: 682, column: 9)
!730 = !DILocation(line: 682, column: 9, scope: !366)
!731 = !DILocation(line: 686, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !10, line: 686, column: 7)
!733 = distinct !DILexicalBlock(scope: !734, file: !10, line: 686, column: 7)
!734 = distinct !DILexicalBlock(scope: !729, file: !10, line: 684, column: 12)
!735 = !DILocation(line: 686, column: 7, scope: !733)
!736 = !DILocation(line: 686, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !10, line: 686, column: 7)
!738 = distinct !DILexicalBlock(scope: !732, file: !10, line: 686, column: 7)
!739 = !DILocation(line: 686, column: 7, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !10, line: 686, column: 7)
!741 = distinct !DILexicalBlock(scope: !742, file: !10, line: 686, column: 7)
!742 = distinct !DILexicalBlock(scope: !737, file: !10, line: 686, column: 7)
!743 = !DILocation(line: 687, column: 17, scope: !734)
!744 = !DILocation(line: 687, column: 22, scope: !734)
!745 = !DILocation(line: 696, column: 9, scope: !366)
!746 = !DILocation(line: 535, column: 11, scope: !360)
!747 = !DILocation(line: 714, column: 21, scope: !375)
!748 = !DILocation(line: 714, column: 7, scope: !223)
!749 = !DILocation(line: 717, column: 27, scope: !750)
!750 = distinct !DILexicalBlock(scope: !374, file: !10, line: 717, column: 5)
!751 = !DILocation(line: 715, column: 18, scope: !374)
!752 = !DILocation(line: 0, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !10, line: 717, column: 5)
!754 = !{!414, !414, i64 0}
!755 = !DILocation(line: 717, column: 5, scope: !750)
!756 = !DILocation(line: 718, column: 10, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !10, line: 717, column: 46)
!758 = !DILocation(line: 718, column: 18, scope: !757)
!759 = !{!587, !394, i64 16}
!760 = !DILocation(line: 719, column: 14, scope: !761)
!761 = distinct !DILexicalBlock(scope: !757, file: !10, line: 719, column: 11)
!762 = !DILocation(line: 719, column: 19, scope: !761)
!763 = !DILocation(line: 719, column: 11, scope: !757)
!764 = !DILocation(line: 720, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !10, line: 719, column: 28)
!766 = !DILocation(line: 721, column: 16, scope: !765)
!767 = !DILocation(line: 722, column: 7, scope: !765)
!768 = distinct !{!768, !755, !769}
!769 = !DILocation(line: 723, column: 5, scope: !750)
!770 = !DILocation(line: 724, column: 18, scope: !374)
!771 = !DILocation(line: 724, column: 22, scope: !374)
!772 = !DILocation(line: 730, column: 3, scope: !374)
!773 = !DILocation(line: 731, column: 26, scope: !223)
!774 = !DILocation(line: 731, column: 8, scope: !223)
!775 = !DILocation(line: 731, column: 24, scope: !223)
!776 = !DILocation(line: 738, column: 16, scope: !379)
!777 = !DILocation(line: 738, column: 7, scope: !223)
!778 = !DILocation(line: 739, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !10, line: 739, column: 5)
!780 = distinct !DILexicalBlock(scope: !781, file: !10, line: 739, column: 5)
!781 = distinct !DILexicalBlock(scope: !379, file: !10, line: 738, column: 25)
!782 = !DILocation(line: 739, column: 5, scope: !780)
!783 = !DILocation(line: 739, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !10, line: 739, column: 5)
!785 = distinct !DILexicalBlock(scope: !779, file: !10, line: 739, column: 5)
!786 = !DILocation(line: 739, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !10, line: 739, column: 5)
!788 = distinct !DILexicalBlock(scope: !789, file: !10, line: 739, column: 5)
!789 = distinct !DILexicalBlock(scope: !784, file: !10, line: 739, column: 5)
!790 = !DILocation(line: 741, column: 27, scope: !781)
!791 = !DILocation(line: 741, column: 5, scope: !781)
!792 = !DILocation(line: 742, column: 35, scope: !781)
!793 = !DILocation(line: 743, column: 3, scope: !781)
!794 = !DILocation(line: 743, column: 24, scope: !378)
!795 = !DILocation(line: 0, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !10, line: 745, column: 5)
!797 = distinct !DILexicalBlock(scope: !377, file: !10, line: 745, column: 5)
!798 = !DILocation(line: 743, column: 14, scope: !379)
!799 = !DILocation(line: 745, column: 5, scope: !796)
!800 = !DILocation(line: 745, column: 5, scope: !797)
!801 = !DILocation(line: 745, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !10, line: 745, column: 5)
!803 = distinct !DILexicalBlock(scope: !796, file: !10, line: 745, column: 5)
!804 = !DILocation(line: 745, column: 5, scope: !805)
!805 = distinct !DILexicalBlock(scope: !806, file: !10, line: 745, column: 5)
!806 = distinct !DILexicalBlock(scope: !807, file: !10, line: 745, column: 5)
!807 = distinct !DILexicalBlock(scope: !802, file: !10, line: 745, column: 5)
!808 = !DILocation(line: 0, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !10, line: 747, column: 5)
!810 = distinct !DILexicalBlock(scope: !377, file: !10, line: 747, column: 5)
!811 = !DILocation(line: 744, column: 18, scope: !377)
!812 = !DILocation(line: 747, column: 33, scope: !809)
!813 = !DILocation(line: 747, column: 38, scope: !809)
!814 = !DILocation(line: 0, scope: !377)
!815 = !DILocation(line: 747, column: 5, scope: !810)
!816 = distinct !{!816, !815, !817}
!817 = !DILocation(line: 749, column: 5, scope: !810)
!818 = !DILocation(line: 751, column: 8, scope: !377)
!819 = !DILocation(line: 751, column: 12, scope: !377)
!820 = !DILocation(line: 753, column: 3, scope: !377)
!821 = !DILocation(line: 773, column: 7, scope: !223)
!822 = !DILocation(line: 0, scope: !781)
!823 = !DILocation(line: 776, column: 18, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !10, line: 775, column: 10)
!825 = distinct !DILexicalBlock(scope: !223, file: !10, line: 773, column: 7)
!826 = !DILocation(line: 0, scope: !827)
!827 = distinct !DILexicalBlock(scope: !825, file: !10, line: 773, column: 28)
!828 = !DILocation(line: 782, column: 8, scope: !223)
!829 = !DILocation(line: 782, column: 16, scope: !223)
!830 = !DILocation(line: 783, column: 8, scope: !223)
!831 = !DILocation(line: 783, column: 16, scope: !223)
!832 = !DILocation(line: 784, column: 21, scope: !223)
!833 = !DILocation(line: 788, column: 25, scope: !834)
!834 = distinct !DILexicalBlock(scope: !223, file: !10, line: 788, column: 7)
!835 = !DILocation(line: 788, column: 7, scope: !223)
!836 = !DILocation(line: 789, column: 5, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !10, line: 789, column: 5)
!838 = distinct !DILexicalBlock(scope: !839, file: !10, line: 789, column: 5)
!839 = distinct !DILexicalBlock(scope: !834, file: !10, line: 788, column: 31)
!840 = !DILocation(line: 789, column: 5, scope: !838)
!841 = !DILocation(line: 789, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !10, line: 789, column: 5)
!843 = distinct !DILexicalBlock(scope: !837, file: !10, line: 789, column: 5)
!844 = !DILocation(line: 789, column: 5, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !10, line: 789, column: 5)
!846 = distinct !DILexicalBlock(scope: !847, file: !10, line: 789, column: 5)
!847 = distinct !DILexicalBlock(scope: !842, file: !10, line: 789, column: 5)
!848 = !DILocation(line: 794, column: 11, scope: !849)
!849 = distinct !DILexicalBlock(scope: !223, file: !10, line: 794, column: 7)
!850 = !DILocation(line: 794, column: 19, scope: !849)
!851 = !DILocation(line: 794, column: 27, scope: !849)
!852 = !{!515, !414, i64 24}
!853 = !DILocation(line: 794, column: 34, scope: !849)
!854 = !DILocation(line: 794, column: 56, scope: !849)
!855 = !DILocation(line: 794, column: 79, scope: !849)
!856 = !DILocation(line: 794, column: 42, scope: !849)
!857 = !DILocation(line: 795, column: 5, scope: !858)
!858 = distinct !DILexicalBlock(scope: !849, file: !10, line: 794, column: 86)
!859 = !{!860, !394, i64 12}
!860 = !{!"tcp_hdr", !394, i64 0, !394, i64 2, !415, i64 4, !415, i64 8, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18}
!861 = !DILocation(line: 796, column: 3, scope: !858)
!862 = !DILocation(line: 542, column: 23, scope: !581)
!863 = !DILocation(line: 800, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !223, file: !10, line: 800, column: 3)
!865 = !DILocation(line: 801, column: 3, scope: !223)
!866 = !DILocation(line: 803, column: 16, scope: !867)
!867 = distinct !DILexicalBlock(scope: !223, file: !10, line: 803, column: 7)
!868 = !DILocation(line: 803, column: 7, scope: !223)
!869 = !DILocation(line: 804, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !10, line: 803, column: 25)
!871 = !DILocation(line: 805, column: 3, scope: !870)
!872 = !DILocation(line: 806, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !223, file: !10, line: 806, column: 7)
!874 = !DILocation(line: 806, column: 7, scope: !223)
!875 = !DILocation(line: 807, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !873, file: !10, line: 806, column: 22)
!877 = !DILocation(line: 808, column: 3, scope: !876)
!878 = !DILocation(line: 809, column: 12, scope: !879)
!879 = distinct !DILexicalBlock(scope: !223, file: !10, line: 809, column: 7)
!880 = !DILocation(line: 809, column: 25, scope: !879)
!881 = !DILocation(line: 809, column: 7, scope: !223)
!882 = !DILocation(line: 810, column: 5, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !10, line: 810, column: 5)
!884 = distinct !DILexicalBlock(scope: !885, file: !10, line: 810, column: 5)
!885 = distinct !DILexicalBlock(scope: !879, file: !10, line: 809, column: 31)
!886 = !DILocation(line: 810, column: 5, scope: !884)
!887 = !DILocation(line: 810, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !10, line: 810, column: 5)
!889 = distinct !DILexicalBlock(scope: !883, file: !10, line: 810, column: 5)
!890 = !DILocation(line: 810, column: 5, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !10, line: 810, column: 5)
!892 = distinct !DILexicalBlock(scope: !893, file: !10, line: 810, column: 5)
!893 = distinct !DILexicalBlock(scope: !888, file: !10, line: 810, column: 5)
!894 = !DILocation(line: 815, column: 1, scope: !223)
!895 = !DILocation(line: 194, column: 43, scope: !2)
!896 = !DILocation(line: 196, column: 2, scope: !2)
!897 = !DILocation(line: 196, column: 10, scope: !2)
!898 = !DILocation(line: 197, column: 2, scope: !2)
!899 = !DILocation(line: 198, column: 2, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 198, column: 2)
!901 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!902 = !DILocation(line: 199, column: 2, scope: !2)
!903 = !DILocation(line: 200, column: 1, scope: !2)
!904 = distinct !DISubprogram(name: "tcp_pbuf_prealloc", scope: !10, file: !10, line: 227, type: !905, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !911)
!905 = !DISubroutineType(types: !906)
!906 = !{!120, !907, !103, !103, !908, !909, !110, !110}
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_layer", file: !56, line: 112, baseType: !55)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919, !920}
!912 = !DILocalVariable(name: "layer", arg: 1, scope: !904, file: !10, line: 227, type: !907)
!913 = !DILocalVariable(name: "length", arg: 2, scope: !904, file: !10, line: 227, type: !103)
!914 = !DILocalVariable(name: "max_length", arg: 3, scope: !904, file: !10, line: 227, type: !103)
!915 = !DILocalVariable(name: "oversize", arg: 4, scope: !904, file: !10, line: 228, type: !908)
!916 = !DILocalVariable(name: "pcb", arg: 5, scope: !904, file: !10, line: 228, type: !909)
!917 = !DILocalVariable(name: "apiflags", arg: 6, scope: !904, file: !10, line: 228, type: !110)
!918 = !DILocalVariable(name: "first_seg", arg: 7, scope: !904, file: !10, line: 229, type: !110)
!919 = !DILocalVariable(name: "p", scope: !904, file: !10, line: 231, type: !120)
!920 = !DILocalVariable(name: "alloc", scope: !904, file: !10, line: 232, type: !103)
!921 = !DILocation(line: 227, column: 30, scope: !904)
!922 = !DILocation(line: 227, column: 43, scope: !904)
!923 = !DILocation(line: 227, column: 57, scope: !904)
!924 = !DILocation(line: 228, column: 26, scope: !904)
!925 = !DILocation(line: 228, column: 58, scope: !904)
!926 = !DILocation(line: 228, column: 68, scope: !904)
!927 = !DILocation(line: 229, column: 24, scope: !904)
!928 = !DILocation(line: 232, column: 9, scope: !904)
!929 = !DILocation(line: 234, column: 3, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !10, line: 234, column: 3)
!931 = distinct !DILexicalBlock(scope: !904, file: !10, line: 234, column: 3)
!932 = !DILocation(line: 234, column: 3, scope: !931)
!933 = !DILocation(line: 234, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !10, line: 234, column: 3)
!935 = distinct !DILexicalBlock(scope: !930, file: !10, line: 234, column: 3)
!936 = !DILocation(line: 234, column: 3, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !10, line: 234, column: 3)
!938 = distinct !DILexicalBlock(scope: !939, file: !10, line: 234, column: 3)
!939 = distinct !DILexicalBlock(scope: !934, file: !10, line: 234, column: 3)
!940 = !DILocation(line: 235, column: 3, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !10, line: 235, column: 3)
!942 = distinct !DILexicalBlock(scope: !904, file: !10, line: 235, column: 3)
!943 = !DILocation(line: 235, column: 3, scope: !942)
!944 = !DILocation(line: 235, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !10, line: 235, column: 3)
!946 = distinct !DILexicalBlock(scope: !941, file: !10, line: 235, column: 3)
!947 = !DILocation(line: 235, column: 3, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !10, line: 235, column: 3)
!949 = distinct !DILexicalBlock(scope: !950, file: !10, line: 235, column: 3)
!950 = distinct !DILexicalBlock(scope: !945, file: !10, line: 235, column: 3)
!951 = !DILocation(line: 244, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !904, file: !10, line: 244, column: 7)
!953 = !DILocation(line: 244, column: 16, scope: !952)
!954 = !DILocation(line: 244, column: 14, scope: !952)
!955 = !DILocation(line: 244, column: 7, scope: !904)
!956 = !DILocation(line: 256, column: 19, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !10, line: 256, column: 9)
!958 = distinct !DILexicalBlock(scope: !952, file: !10, line: 244, column: 28)
!959 = !DILocation(line: 256, column: 42, scope: !957)
!960 = !DILocation(line: 257, column: 17, scope: !957)
!961 = !DILocation(line: 257, column: 23, scope: !957)
!962 = !DILocation(line: 257, column: 37, scope: !957)
!963 = !DILocation(line: 258, column: 12, scope: !957)
!964 = !DILocation(line: 258, column: 22, scope: !957)
!965 = !DILocation(line: 259, column: 16, scope: !957)
!966 = !DILocation(line: 259, column: 23, scope: !957)
!967 = !DILocation(line: 259, column: 31, scope: !957)
!968 = !DILocation(line: 260, column: 16, scope: !957)
!969 = !DILocation(line: 260, column: 24, scope: !957)
!970 = !DILocation(line: 256, column: 9, scope: !958)
!971 = !DILocation(line: 261, column: 15, scope: !972)
!972 = distinct !DILexicalBlock(scope: !957, file: !10, line: 260, column: 35)
!973 = !DILocation(line: 262, column: 5, scope: !972)
!974 = !DILocation(line: 0, scope: !904)
!975 = !DILocation(line: 265, column: 7, scope: !904)
!976 = !DILocation(line: 231, column: 16, scope: !904)
!977 = !DILocation(line: 266, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !904, file: !10, line: 266, column: 7)
!979 = !DILocation(line: 266, column: 7, scope: !904)
!980 = !DILocation(line: 269, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !10, line: 269, column: 3)
!982 = distinct !DILexicalBlock(scope: !904, file: !10, line: 269, column: 3)
!983 = !DILocation(line: 269, column: 3, scope: !982)
!984 = !DILocation(line: 269, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !10, line: 269, column: 3)
!986 = distinct !DILexicalBlock(scope: !981, file: !10, line: 269, column: 3)
!987 = !DILocation(line: 269, column: 3, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !10, line: 269, column: 3)
!989 = distinct !DILexicalBlock(scope: !990, file: !10, line: 269, column: 3)
!990 = distinct !DILexicalBlock(scope: !985, file: !10, line: 269, column: 3)
!991 = !DILocation(line: 270, column: 18, scope: !904)
!992 = !DILocation(line: 270, column: 22, scope: !904)
!993 = !DILocation(line: 270, column: 13, scope: !904)
!994 = !DILocation(line: 272, column: 15, scope: !904)
!995 = !DILocation(line: 272, column: 23, scope: !904)
!996 = !DILocation(line: 272, column: 10, scope: !904)
!997 = !DILocation(line: 273, column: 3, scope: !904)
!998 = !DILocation(line: 274, column: 1, scope: !904)
!999 = distinct !DISubprogram(name: "tcp_create_segment", scope: !10, file: !10, line: 160, type: !1000, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1002)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!185, !909, !120, !110, !142, !110}
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1009}
!1003 = !DILocalVariable(name: "pcb", arg: 1, scope: !999, file: !10, line: 160, type: !909)
!1004 = !DILocalVariable(name: "p", arg: 2, scope: !999, file: !10, line: 160, type: !120)
!1005 = !DILocalVariable(name: "hdrflags", arg: 3, scope: !999, file: !10, line: 160, type: !110)
!1006 = !DILocalVariable(name: "seqno", arg: 4, scope: !999, file: !10, line: 160, type: !142)
!1007 = !DILocalVariable(name: "optflags", arg: 5, scope: !999, file: !10, line: 160, type: !110)
!1008 = !DILocalVariable(name: "seg", scope: !999, file: !10, line: 162, type: !185)
!1009 = !DILocalVariable(name: "optlen", scope: !999, file: !10, line: 163, type: !110)
!1010 = !DILocation(line: 160, column: 42, scope: !999)
!1011 = !DILocation(line: 160, column: 60, scope: !999)
!1012 = !DILocation(line: 160, column: 68, scope: !999)
!1013 = !DILocation(line: 160, column: 84, scope: !999)
!1014 = !DILocation(line: 160, column: 96, scope: !999)
!1015 = !DILocation(line: 165, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !10, line: 165, column: 3)
!1017 = distinct !DILexicalBlock(scope: !999, file: !10, line: 165, column: 3)
!1018 = !DILocation(line: 165, column: 3, scope: !1017)
!1019 = !DILocation(line: 165, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !10, line: 165, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1016, file: !10, line: 165, column: 3)
!1022 = !DILocation(line: 165, column: 3, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !10, line: 165, column: 3)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !10, line: 165, column: 3)
!1025 = distinct !DILexicalBlock(scope: !1020, file: !10, line: 165, column: 3)
!1026 = !DILocation(line: 166, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !10, line: 166, column: 3)
!1028 = distinct !DILexicalBlock(scope: !999, file: !10, line: 166, column: 3)
!1029 = !DILocation(line: 166, column: 3, scope: !1028)
!1030 = !DILocation(line: 166, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !10, line: 166, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !10, line: 166, column: 3)
!1033 = !DILocation(line: 166, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !10, line: 166, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !10, line: 166, column: 3)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !10, line: 166, column: 3)
!1037 = !DILocation(line: 170, column: 32, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !999, file: !10, line: 170, column: 7)
!1039 = !DILocation(line: 170, column: 14, scope: !1038)
!1040 = !DILocation(line: 162, column: 19, scope: !999)
!1041 = !DILocation(line: 170, column: 59, scope: !1038)
!1042 = !DILocation(line: 170, column: 7, scope: !999)
!1043 = !DILocation(line: 172, column: 5, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !10, line: 170, column: 68)
!1045 = !DILocation(line: 173, column: 5, scope: !1044)
!1046 = !DILocation(line: 168, column: 12, scope: !999)
!1047 = !DILocation(line: 163, column: 8, scope: !999)
!1048 = !DILocation(line: 175, column: 8, scope: !999)
!1049 = !DILocation(line: 175, column: 14, scope: !999)
!1050 = !DILocation(line: 176, column: 8, scope: !999)
!1051 = !DILocation(line: 176, column: 13, scope: !999)
!1052 = !DILocation(line: 177, column: 8, scope: !999)
!1053 = !DILocation(line: 177, column: 10, scope: !999)
!1054 = !DILocation(line: 178, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !10, line: 178, column: 3)
!1056 = distinct !DILexicalBlock(scope: !999, file: !10, line: 178, column: 3)
!1057 = !DILocation(line: 178, column: 3, scope: !1056)
!1058 = !DILocation(line: 178, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 178, column: 3)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !10, line: 178, column: 3)
!1061 = !DILocation(line: 178, column: 3, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !10, line: 178, column: 3)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !10, line: 178, column: 3)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !10, line: 178, column: 3)
!1065 = !DILocation(line: 179, column: 14, scope: !999)
!1066 = !DILocation(line: 179, column: 8, scope: !999)
!1067 = !DILocation(line: 179, column: 12, scope: !999)
!1068 = !DILocation(line: 192, column: 7, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !999, file: !10, line: 192, column: 7)
!1070 = !DILocation(line: 192, column: 7, scope: !999)
!1071 = !DILocation(line: 194, column: 5, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !10, line: 192, column: 37)
!1073 = !{!466, !394, i64 164}
!1074 = !DILocation(line: 195, column: 5, scope: !1072)
!1075 = !DILocation(line: 196, column: 5, scope: !1072)
!1076 = !DILocation(line: 198, column: 40, scope: !999)
!1077 = !DILocation(line: 198, column: 43, scope: !999)
!1078 = !DILocation(line: 198, column: 8, scope: !999)
!1079 = !DILocation(line: 198, column: 15, scope: !999)
!1080 = !DILocation(line: 199, column: 38, scope: !999)
!1081 = !{!412, !394, i64 78}
!1082 = !DILocation(line: 199, column: 22, scope: !999)
!1083 = !DILocation(line: 199, column: 8, scope: !999)
!1084 = !DILocation(line: 199, column: 16, scope: !999)
!1085 = !DILocation(line: 199, column: 20, scope: !999)
!1086 = !{!860, !394, i64 0}
!1087 = !DILocation(line: 200, column: 39, scope: !999)
!1088 = !{!412, !394, i64 80}
!1089 = !DILocation(line: 200, column: 23, scope: !999)
!1090 = !DILocation(line: 200, column: 8, scope: !999)
!1091 = !DILocation(line: 200, column: 16, scope: !999)
!1092 = !DILocation(line: 200, column: 21, scope: !999)
!1093 = !{!860, !394, i64 2}
!1094 = !DILocation(line: 201, column: 24, scope: !999)
!1095 = !DILocation(line: 201, column: 8, scope: !999)
!1096 = !DILocation(line: 201, column: 16, scope: !999)
!1097 = !DILocation(line: 201, column: 22, scope: !999)
!1098 = !{!860, !415, i64 4}
!1099 = !DILocation(line: 203, column: 3, scope: !999)
!1100 = !DILocation(line: 205, column: 16, scope: !999)
!1101 = !DILocation(line: 205, column: 21, scope: !999)
!1102 = !{!860, !394, i64 18}
!1103 = !DILocation(line: 206, column: 3, scope: !999)
!1104 = !DILocation(line: 0, scope: !999)
!1105 = !DILocation(line: 207, column: 1, scope: !999)
!1106 = distinct !DISubprogram(name: "tcp_split_unsent_seg", scope: !10, file: !10, line: 830, type: !432, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1108 = !DILocalVariable(name: "pcb", arg: 1, scope: !1106, file: !10, line: 830, type: !231)
!1109 = !DILocalVariable(name: "split", arg: 2, scope: !1106, file: !10, line: 830, type: !103)
!1110 = !DILocalVariable(name: "seg", scope: !1106, file: !10, line: 832, type: !185)
!1111 = !DILocalVariable(name: "useg", scope: !1106, file: !10, line: 832, type: !185)
!1112 = !DILocalVariable(name: "p", scope: !1106, file: !10, line: 833, type: !120)
!1113 = !DILocalVariable(name: "optlen", scope: !1106, file: !10, line: 834, type: !110)
!1114 = !DILocalVariable(name: "optflags", scope: !1106, file: !10, line: 835, type: !110)
!1115 = !DILocalVariable(name: "split_flags", scope: !1106, file: !10, line: 836, type: !110)
!1116 = !DILocalVariable(name: "remainder_flags", scope: !1106, file: !10, line: 837, type: !110)
!1117 = !DILocalVariable(name: "remainder", scope: !1106, file: !10, line: 838, type: !103)
!1118 = !DILocalVariable(name: "offset", scope: !1106, file: !10, line: 839, type: !103)
!1119 = !DILocation(line: 830, column: 38, scope: !1106)
!1120 = !DILocation(line: 830, column: 49, scope: !1106)
!1121 = !DILocation(line: 832, column: 19, scope: !1106)
!1122 = !DILocation(line: 832, column: 32, scope: !1106)
!1123 = !DILocation(line: 833, column: 16, scope: !1106)
!1124 = !DILocation(line: 846, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !10, line: 846, column: 3)
!1126 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 846, column: 3)
!1127 = !DILocation(line: 846, column: 3, scope: !1126)
!1128 = !DILocation(line: 846, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !10, line: 846, column: 3)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !10, line: 846, column: 3)
!1131 = !DILocation(line: 846, column: 3, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !10, line: 846, column: 3)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !10, line: 846, column: 3)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !10, line: 846, column: 3)
!1135 = !DILocation(line: 848, column: 15, scope: !1106)
!1136 = !DILocation(line: 849, column: 12, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 849, column: 7)
!1138 = !DILocation(line: 849, column: 7, scope: !1106)
!1139 = !DILocation(line: 853, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 853, column: 7)
!1141 = !DILocation(line: 853, column: 13, scope: !1140)
!1142 = !DILocation(line: 853, column: 7, scope: !1106)
!1143 = !DILocation(line: 854, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 854, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !10, line: 854, column: 5)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !10, line: 854, column: 5)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !10, line: 854, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !10, line: 853, column: 19)
!1149 = !DILocation(line: 854, column: 5, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !10, line: 854, column: 5)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !10, line: 854, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1144, file: !10, line: 854, column: 5)
!1153 = !DILocation(line: 858, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 858, column: 7)
!1155 = !DILocation(line: 858, column: 17, scope: !1154)
!1156 = !DILocation(line: 858, column: 7, scope: !1106)
!1157 = !DILocation(line: 862, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !10, line: 862, column: 3)
!1159 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 862, column: 3)
!1160 = !DILocation(line: 862, column: 3, scope: !1159)
!1161 = !DILocation(line: 862, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !10, line: 862, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !10, line: 862, column: 3)
!1164 = !DILocation(line: 862, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !10, line: 862, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !10, line: 862, column: 3)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !10, line: 862, column: 3)
!1168 = !DILocation(line: 871, column: 20, scope: !1106)
!1169 = !DILocation(line: 835, column: 8, scope: !1106)
!1170 = !DILocation(line: 876, column: 12, scope: !1106)
!1171 = !DILocation(line: 834, column: 8, scope: !1106)
!1172 = !DILocation(line: 877, column: 25, scope: !1106)
!1173 = !DILocation(line: 838, column: 9, scope: !1106)
!1174 = !DILocation(line: 880, column: 34, scope: !1106)
!1175 = !DILocation(line: 880, column: 7, scope: !1106)
!1176 = !DILocation(line: 881, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 881, column: 7)
!1178 = !DILocation(line: 881, column: 7, scope: !1106)
!1179 = !DILocation(line: 888, column: 18, scope: !1106)
!1180 = !DILocation(line: 888, column: 21, scope: !1106)
!1181 = !DILocation(line: 888, column: 37, scope: !1106)
!1182 = !DILocation(line: 888, column: 29, scope: !1106)
!1183 = !DILocation(line: 888, column: 41, scope: !1106)
!1184 = !DILocation(line: 839, column: 9, scope: !1106)
!1185 = !DILocation(line: 890, column: 45, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 890, column: 7)
!1187 = !DILocation(line: 890, column: 53, scope: !1186)
!1188 = !DILocation(line: 890, column: 7, scope: !1186)
!1189 = !DILocation(line: 890, column: 83, scope: !1186)
!1190 = !DILocation(line: 890, column: 7, scope: !1106)
!1191 = !DILocation(line: 904, column: 17, scope: !1106)
!1192 = !DILocation(line: 836, column: 8, scope: !1106)
!1193 = !DILocation(line: 837, column: 8, scope: !1106)
!1194 = !DILocation(line: 907, column: 19, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 907, column: 7)
!1196 = !DILocation(line: 907, column: 7, scope: !1106)
!1197 = !DILocation(line: 911, column: 7, scope: !1106)
!1198 = !DILocation(line: 917, column: 53, scope: !1106)
!1199 = !DILocation(line: 917, column: 85, scope: !1106)
!1200 = !DILocation(line: 917, column: 9, scope: !1106)
!1201 = !DILocation(line: 918, column: 11, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 918, column: 7)
!1203 = !DILocation(line: 918, column: 7, scope: !1106)
!1204 = !DILocation(line: 911, column: 19, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 911, column: 7)
!1206 = !DILocation(line: 912, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1205, file: !10, line: 911, column: 30)
!1208 = !DILocation(line: 931, column: 40, scope: !1106)
!1209 = !DILocation(line: 931, column: 24, scope: !1106)
!1210 = !DILocation(line: 931, column: 8, scope: !1106)
!1211 = !DILocation(line: 931, column: 21, scope: !1106)
!1212 = !DILocation(line: 935, column: 22, scope: !1106)
!1213 = !DILocation(line: 935, column: 34, scope: !1106)
!1214 = !DILocation(line: 935, column: 42, scope: !1106)
!1215 = !DILocation(line: 935, column: 3, scope: !1106)
!1216 = !DILocation(line: 936, column: 13, scope: !1106)
!1217 = !DILocation(line: 937, column: 3, scope: !1106)
!1218 = !DILocation(line: 944, column: 40, scope: !1106)
!1219 = !DILocation(line: 944, column: 24, scope: !1106)
!1220 = !DILocation(line: 944, column: 21, scope: !1106)
!1221 = !DILocation(line: 969, column: 39, scope: !1106)
!1222 = !DILocation(line: 969, column: 24, scope: !1106)
!1223 = !DILocation(line: 969, column: 21, scope: !1106)
!1224 = !DILocation(line: 972, column: 21, scope: !1106)
!1225 = !DILocation(line: 972, column: 8, scope: !1106)
!1226 = !DILocation(line: 972, column: 13, scope: !1106)
!1227 = !DILocation(line: 973, column: 14, scope: !1106)
!1228 = !DILocation(line: 978, column: 12, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 978, column: 7)
!1230 = !DILocation(line: 978, column: 17, scope: !1229)
!1231 = !DILocation(line: 978, column: 7, scope: !1106)
!1232 = !DILocation(line: 979, column: 10, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1229, file: !10, line: 978, column: 26)
!1234 = !DILocation(line: 979, column: 26, scope: !1233)
!1235 = !DILocation(line: 980, column: 3, scope: !1233)
!1236 = !DILocation(line: 985, column: 3, scope: !1106)
!1237 = !DILocation(line: 989, column: 5, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !10, line: 988, column: 18)
!1239 = distinct !DILexicalBlock(scope: !1106, file: !10, line: 988, column: 7)
!1240 = !DILocation(line: 990, column: 3, scope: !1238)
!1241 = !DILocation(line: 0, scope: !1106)
!1242 = !DILocation(line: 993, column: 1, scope: !1106)
!1243 = distinct !DISubprogram(name: "tcp_send_fin", scope: !10, file: !10, line: 1004, type: !1244, isLocal: false, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!226, !231}
!1246 = !{!1247, !1248}
!1247 = !DILocalVariable(name: "pcb", arg: 1, scope: !1243, file: !10, line: 1004, type: !231)
!1248 = !DILocalVariable(name: "last_unsent", scope: !1249, file: !10, line: 1010, type: !185)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !10, line: 1009, column: 28)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !10, line: 1009, column: 7)
!1251 = !DILocation(line: 1004, column: 30, scope: !1243)
!1252 = !DILocation(line: 1006, column: 3, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !10, line: 1006, column: 3)
!1254 = distinct !DILexicalBlock(scope: !1243, file: !10, line: 1006, column: 3)
!1255 = !DILocation(line: 1006, column: 3, scope: !1254)
!1256 = !DILocation(line: 1006, column: 3, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !10, line: 1006, column: 3)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !10, line: 1006, column: 3)
!1259 = !DILocation(line: 1006, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !10, line: 1006, column: 3)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !10, line: 1006, column: 3)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !10, line: 1006, column: 3)
!1263 = !DILocation(line: 1009, column: 12, scope: !1250)
!1264 = !DILocation(line: 1009, column: 19, scope: !1250)
!1265 = !DILocation(line: 1009, column: 7, scope: !1243)
!1266 = !DILocation(line: 0, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !10, line: 1011, column: 5)
!1268 = distinct !DILexicalBlock(scope: !1249, file: !10, line: 1011, column: 5)
!1269 = !DILocation(line: 1010, column: 21, scope: !1249)
!1270 = !DILocation(line: 1011, column: 50, scope: !1267)
!1271 = !DILocation(line: 1011, column: 55, scope: !1267)
!1272 = !DILocation(line: 1011, column: 5, scope: !1268)
!1273 = distinct !{!1273, !1272, !1274}
!1274 = !DILocation(line: 1012, column: 42, scope: !1268)
!1275 = !DILocation(line: 1014, column: 10, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1249, file: !10, line: 1014, column: 9)
!1277 = !DILocation(line: 1014, column: 42, scope: !1276)
!1278 = !DILocation(line: 1014, column: 75, scope: !1276)
!1279 = !DILocation(line: 1014, column: 9, scope: !1249)
!1280 = !DILocation(line: 1016, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !10, line: 1014, column: 81)
!1282 = !DILocation(line: 1017, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1281, file: !10, line: 1017, column: 7)
!1284 = !DILocation(line: 1022, column: 10, scope: !1243)
!1285 = !DILocation(line: 1022, column: 3, scope: !1243)
!1286 = !DILocation(line: 0, scope: !1281)
!1287 = !DILocation(line: 1023, column: 1, scope: !1243)
!1288 = distinct !DISubprogram(name: "tcp_enqueue_flags", scope: !10, file: !10, line: 1035, type: !1289, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1291)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!226, !231, !110}
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298}
!1292 = !DILocalVariable(name: "pcb", arg: 1, scope: !1288, file: !10, line: 1035, type: !231)
!1293 = !DILocalVariable(name: "flags", arg: 2, scope: !1288, file: !10, line: 1035, type: !110)
!1294 = !DILocalVariable(name: "p", scope: !1288, file: !10, line: 1037, type: !120)
!1295 = !DILocalVariable(name: "seg", scope: !1288, file: !10, line: 1038, type: !185)
!1296 = !DILocalVariable(name: "optflags", scope: !1288, file: !10, line: 1039, type: !110)
!1297 = !DILocalVariable(name: "optlen", scope: !1288, file: !10, line: 1040, type: !110)
!1298 = !DILocalVariable(name: "useg", scope: !1299, file: !10, line: 1106, type: !185)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !10, line: 1105, column: 10)
!1300 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1103, column: 7)
!1301 = !DILocation(line: 1035, column: 35, scope: !1288)
!1302 = !DILocation(line: 1035, column: 45, scope: !1288)
!1303 = !DILocation(line: 1039, column: 8, scope: !1288)
!1304 = !DILocation(line: 1040, column: 8, scope: !1288)
!1305 = !DILocation(line: 1044, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !10, line: 1044, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1044, column: 3)
!1308 = !DILocation(line: 1044, column: 3, scope: !1307)
!1309 = !DILocation(line: 1044, column: 3, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !10, line: 1044, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !10, line: 1044, column: 3)
!1312 = !DILocation(line: 1044, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !10, line: 1044, column: 3)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !10, line: 1044, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !10, line: 1044, column: 3)
!1316 = !DILocation(line: 1046, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !10, line: 1046, column: 3)
!1318 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1046, column: 3)
!1319 = !DILocation(line: 1046, column: 3, scope: !1318)
!1320 = !DILocation(line: 1046, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !10, line: 1046, column: 3)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !10, line: 1046, column: 3)
!1323 = !DILocation(line: 1046, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !10, line: 1046, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !10, line: 1046, column: 3)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !10, line: 1046, column: 3)
!1327 = !DILocation(line: 1052, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1052, column: 7)
!1329 = !DILocation(line: 1052, column: 7, scope: !1288)
!1330 = !DILocation(line: 1055, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !10, line: 1055, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !10, line: 1052, column: 24)
!1333 = !DILocation(line: 1055, column: 21, scope: !1331)
!1334 = !DILocation(line: 1055, column: 34, scope: !1331)
!1335 = !DILocation(line: 1055, column: 43, scope: !1331)
!1336 = !DILocation(line: 1055, column: 49, scope: !1331)
!1337 = !DILocation(line: 1055, column: 9, scope: !1332)
!1338 = !DILocation(line: 1059, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !10, line: 1055, column: 66)
!1340 = !DILocation(line: 0, scope: !1288)
!1341 = !DILocation(line: 1076, column: 12, scope: !1288)
!1342 = !DILocation(line: 1079, column: 39, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1079, column: 7)
!1344 = !DILocation(line: 1079, column: 12, scope: !1343)
!1345 = !DILocation(line: 1037, column: 16, scope: !1288)
!1346 = !DILocation(line: 1079, column: 58, scope: !1343)
!1347 = !DILocation(line: 1079, column: 7, scope: !1288)
!1348 = !DILocation(line: 1080, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !10, line: 1080, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1343, file: !10, line: 1079, column: 67)
!1351 = !DILocation(line: 1081, column: 5, scope: !1350)
!1352 = !DILocation(line: 1082, column: 5, scope: !1350)
!1353 = !DILocation(line: 1084, column: 3, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !10, line: 1084, column: 3)
!1355 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1084, column: 3)
!1356 = !DILocation(line: 1084, column: 3, scope: !1355)
!1357 = !DILocation(line: 1084, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !10, line: 1084, column: 3)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !10, line: 1084, column: 3)
!1360 = !DILocation(line: 1084, column: 3, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !10, line: 1084, column: 3)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !10, line: 1084, column: 3)
!1363 = distinct !DILexicalBlock(scope: !1358, file: !10, line: 1084, column: 3)
!1364 = !DILocation(line: 1088, column: 53, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1088, column: 7)
!1366 = !DILocation(line: 1088, column: 14, scope: !1365)
!1367 = !DILocation(line: 1038, column: 19, scope: !1288)
!1368 = !DILocation(line: 1088, column: 73, scope: !1365)
!1369 = !DILocation(line: 1088, column: 7, scope: !1288)
!1370 = !DILocation(line: 1089, column: 5, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !10, line: 1089, column: 5)
!1372 = distinct !DILexicalBlock(scope: !1365, file: !10, line: 1088, column: 82)
!1373 = !DILocation(line: 1090, column: 5, scope: !1372)
!1374 = !DILocation(line: 1091, column: 5, scope: !1372)
!1375 = !DILocation(line: 1094, column: 3, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !10, line: 1094, column: 3)
!1377 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1094, column: 3)
!1378 = !DILocation(line: 1094, column: 3, scope: !1377)
!1379 = !DILocation(line: 1094, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !10, line: 1094, column: 3)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !10, line: 1094, column: 3)
!1382 = !DILocation(line: 1094, column: 3, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !10, line: 1094, column: 3)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !10, line: 1094, column: 3)
!1385 = distinct !DILexicalBlock(scope: !1380, file: !10, line: 1094, column: 3)
!1386 = !DILocation(line: 1103, column: 12, scope: !1300)
!1387 = !DILocation(line: 1103, column: 19, scope: !1300)
!1388 = !DILocation(line: 1103, column: 7, scope: !1288)
!1389 = !DILocation(line: 0, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !10, line: 1107, column: 5)
!1391 = distinct !DILexicalBlock(scope: !1299, file: !10, line: 1107, column: 5)
!1392 = !DILocation(line: 1106, column: 21, scope: !1299)
!1393 = !DILocation(line: 1107, column: 36, scope: !1390)
!1394 = !DILocation(line: 1107, column: 41, scope: !1390)
!1395 = !DILocation(line: 1107, column: 5, scope: !1391)
!1396 = distinct !{!1396, !1395, !1397}
!1397 = !DILocation(line: 1107, column: 68, scope: !1391)
!1398 = !DILocation(line: 0, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1300, file: !10, line: 1103, column: 28)
!1400 = !DILocation(line: 1112, column: 8, scope: !1288)
!1401 = !DILocation(line: 1112, column: 24, scope: !1288)
!1402 = !DILocation(line: 1116, column: 25, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1116, column: 7)
!1404 = !DILocation(line: 1116, column: 35, scope: !1403)
!1405 = !DILocation(line: 1117, column: 17, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !10, line: 1116, column: 47)
!1407 = !DILocation(line: 1119, column: 3, scope: !1406)
!1408 = !DILocation(line: 1120, column: 7, scope: !1288)
!1409 = !DILocation(line: 1121, column: 5, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !10, line: 1121, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !10, line: 1120, column: 24)
!1412 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1120, column: 7)
!1413 = !DILocation(line: 1122, column: 3, scope: !1411)
!1414 = !DILocation(line: 1125, column: 39, scope: !1288)
!1415 = !DILocation(line: 1125, column: 24, scope: !1288)
!1416 = !DILocation(line: 1125, column: 8, scope: !1288)
!1417 = !DILocation(line: 1125, column: 21, scope: !1288)
!1418 = !DILocation(line: 1127, column: 25, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1288, file: !10, line: 1127, column: 7)
!1420 = !DILocation(line: 1127, column: 7, scope: !1288)
!1421 = !DILocation(line: 1128, column: 5, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !10, line: 1128, column: 5)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !10, line: 1128, column: 5)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !10, line: 1127, column: 31)
!1425 = !DILocation(line: 1128, column: 5, scope: !1423)
!1426 = !DILocation(line: 1128, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !10, line: 1128, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1422, file: !10, line: 1128, column: 5)
!1429 = !DILocation(line: 1128, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1128, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !10, line: 1128, column: 5)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !10, line: 1128, column: 5)
!1433 = !DILocation(line: 1133, column: 1, scope: !1288)
!1434 = distinct !DISubprogram(name: "tcp_output", scope: !10, file: !10, line: 1240, type: !1244, isLocal: false, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1513, !1516}
!1436 = !DILocalVariable(name: "pcb", arg: 1, scope: !1434, file: !10, line: 1240, type: !231)
!1437 = !DILocalVariable(name: "seg", scope: !1434, file: !10, line: 1242, type: !185)
!1438 = !DILocalVariable(name: "useg", scope: !1434, file: !10, line: 1242, type: !185)
!1439 = !DILocalVariable(name: "wnd", scope: !1434, file: !10, line: 1243, type: !142)
!1440 = !DILocalVariable(name: "snd_nxt", scope: !1434, file: !10, line: 1243, type: !142)
!1441 = !DILocalVariable(name: "err", scope: !1434, file: !10, line: 1244, type: !226)
!1442 = !DILocalVariable(name: "netif", scope: !1434, file: !10, line: 1245, type: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !70, line: 260, size: 2240, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1454, !1456, !1458, !1459, !1464, !1471, !1476, !1483, !1488, !1489, !1490, !1492, !1493, !1494, !1495, !1499, !1500, !1501, !1505, !1506, !1507, !1508}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1444, file: !70, line: 263, baseType: !1443, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1444, file: !70, line: 268, baseType: !147, size: 192, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1444, file: !70, line: 269, baseType: !147, size: 192, offset: 256)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1444, file: !70, line: 270, baseType: !147, size: 192, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1444, file: !70, line: 274, baseType: !1451, size: 576, offset: 640)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 576, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 3)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1444, file: !70, line: 277, baseType: !1455, size: 24, offset: 1216)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !1452)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1444, file: !70, line: 282, baseType: !1457, size: 96, offset: 1248)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 96, elements: !1452)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1444, file: !70, line: 283, baseType: !1457, size: 96, offset: 1344)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1444, file: !70, line: 288, baseType: !1460, size: 64, offset: 1472)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !70, line: 178, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!226, !120, !1443}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1444, file: !70, line: 294, baseType: !1465, size: 64, offset: 1536)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !70, line: 189, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!226, !1443, !120, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1444, file: !70, line: 299, baseType: !1472, size: 64, offset: 1600)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !70, line: 212, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!226, !1443, !120}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1444, file: !70, line: 305, baseType: !1477, size: 64, offset: 1664)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !70, line: 202, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!226, !1443, !120, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1444, file: !70, line: 310, baseType: !1484, size: 64, offset: 1728)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !70, line: 214, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !1443}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1444, file: !70, line: 319, baseType: !1484, size: 64, offset: 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1444, file: !70, line: 323, baseType: !102, size: 64, offset: 1856)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1444, file: !70, line: 325, baseType: !1491, size: 64, offset: 1920)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !214)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1444, file: !70, line: 332, baseType: !103, size: 16, offset: 1984)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1444, file: !70, line: 335, baseType: !103, size: 16, offset: 2000)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1444, file: !70, line: 338, baseType: !103, size: 16, offset: 2016)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1444, file: !70, line: 341, baseType: !1496, size: 48, offset: 2032)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 48, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 6)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1444, file: !70, line: 343, baseType: !110, size: 8, offset: 2080)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1444, file: !70, line: 345, baseType: !110, size: 8, offset: 2088)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1444, file: !70, line: 347, baseType: !1502, size: 16, offset: 2096)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: 2)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1444, file: !70, line: 350, baseType: !110, size: 8, offset: 2112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1444, file: !70, line: 353, baseType: !110, size: 8, offset: 2120)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1444, file: !70, line: 357, baseType: !110, size: 8, offset: 2128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1444, file: !70, line: 377, baseType: !1509, size: 64, offset: 2176)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !70, line: 222, baseType: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!226, !1443, !1481, !69}
!1513 = !DILocalVariable(name: "local_ip", scope: !1514, file: !10, line: 1300, type: !145)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !10, line: 1299, column: 38)
!1515 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1299, column: 7)
!1516 = !DILocalVariable(name: "cur_seg", scope: !1517, file: !10, line: 1394, type: !1524)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !10, line: 1392, column: 90)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !10, line: 1392, column: 13)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1388, column: 14)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !10, line: 1384, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !10, line: 1381, column: 30)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1381, column: 9)
!1523 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1336, column: 75)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1525 = !DILocation(line: 1240, column: 28, scope: !1434)
!1526 = !DILocation(line: 1252, column: 3, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !10, line: 1252, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1252, column: 3)
!1529 = !DILocation(line: 1252, column: 3, scope: !1528)
!1530 = !DILocation(line: 1252, column: 3, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !10, line: 1252, column: 3)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !10, line: 1252, column: 3)
!1533 = !DILocation(line: 1252, column: 3, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !10, line: 1252, column: 3)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !10, line: 1252, column: 3)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !10, line: 1252, column: 3)
!1537 = !DILocation(line: 1254, column: 3, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !10, line: 1254, column: 3)
!1539 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1254, column: 3)
!1540 = !DILocation(line: 1254, column: 3, scope: !1539)
!1541 = !DILocation(line: 1254, column: 3, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !10, line: 1254, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !10, line: 1254, column: 3)
!1544 = !DILocation(line: 1254, column: 3, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !10, line: 1254, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !10, line: 1254, column: 3)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !10, line: 1254, column: 3)
!1548 = !DILocation(line: 1261, column: 7, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1261, column: 7)
!1550 = !DILocation(line: 1261, column: 21, scope: !1549)
!1551 = !DILocation(line: 1261, column: 7, scope: !1434)
!1552 = !DILocation(line: 1265, column: 9, scope: !1434)
!1553 = !{!412, !415, i64 160}
!1554 = !{!412, !415, i64 132}
!1555 = !DILocation(line: 1243, column: 9, scope: !1434)
!1556 = !DILocation(line: 1267, column: 14, scope: !1434)
!1557 = !DILocation(line: 1242, column: 19, scope: !1434)
!1558 = !DILocation(line: 1269, column: 11, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1269, column: 7)
!1560 = !DILocation(line: 1269, column: 7, scope: !1434)
!1561 = !DILocation(line: 1279, column: 14, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !10, line: 1279, column: 9)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !10, line: 1269, column: 20)
!1564 = !DILocation(line: 1279, column: 20, scope: !1562)
!1565 = !DILocation(line: 1279, column: 9, scope: !1563)
!1566 = !DILocation(line: 1280, column: 14, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !10, line: 1279, column: 34)
!1568 = !DILocation(line: 1280, column: 7, scope: !1567)
!1569 = !DILocation(line: 1293, column: 32, scope: !1434)
!1570 = !DILocation(line: 1293, column: 48, scope: !1434)
!1571 = !DILocalVariable(name: "pcb", arg: 1, scope: !1572, file: !10, line: 134, type: !909)
!1572 = distinct !DISubprogram(name: "tcp_route", scope: !10, file: !10, line: 134, type: !1573, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1443, !909, !145, !145}
!1575 = !{!1571, !1576, !1577}
!1576 = !DILocalVariable(name: "src", arg: 2, scope: !1572, file: !10, line: 134, type: !145)
!1577 = !DILocalVariable(name: "dst", arg: 3, scope: !1572, file: !10, line: 134, type: !145)
!1578 = !DILocation(line: 134, column: 33, scope: !1572, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 1293, column: 11, scope: !1434)
!1580 = !DILocation(line: 134, column: 55, scope: !1572, inlinedAt: !1579)
!1581 = !DILocation(line: 134, column: 77, scope: !1572, inlinedAt: !1579)
!1582 = !DILocation(line: 138, column: 30, scope: !1583, inlinedAt: !1579)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !10, line: 138, column: 7)
!1584 = !{!412, !395, i64 48}
!1585 = !DILocation(line: 138, column: 40, scope: !1583, inlinedAt: !1579)
!1586 = !DILocation(line: 138, column: 7, scope: !1572, inlinedAt: !1579)
!1587 = !DILocation(line: 139, column: 12, scope: !1588, inlinedAt: !1579)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !10, line: 138, column: 60)
!1589 = !DILocation(line: 139, column: 5, scope: !1588, inlinedAt: !1579)
!1590 = !DILocation(line: 141, column: 12, scope: !1591, inlinedAt: !1579)
!1591 = distinct !DILexicalBlock(scope: !1583, file: !10, line: 140, column: 10)
!1592 = !{!413, !395, i64 20}
!1593 = !DILocation(line: 0, scope: !1591, inlinedAt: !1579)
!1594 = !DILocation(line: 1245, column: 17, scope: !1434)
!1595 = !DILocation(line: 1294, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1294, column: 7)
!1597 = !DILocation(line: 1294, column: 7, scope: !1434)
!1598 = !DILocation(line: 1299, column: 7, scope: !1515)
!1599 = !{!412, !395, i64 20}
!1600 = !{!395, !395, i64 0}
!1601 = !DILocation(line: 1299, column: 7, scope: !1434)
!1602 = !DILocation(line: 1300, column: 33, scope: !1514)
!1603 = !{!412, !395, i64 44}
!1604 = !DILocation(line: 1300, column: 22, scope: !1514)
!1605 = !DILocation(line: 1301, column: 9, scope: !1514)
!1606 = !DILocation(line: 1301, column: 18, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1514, file: !10, line: 1301, column: 9)
!1608 = !DILocation(line: 1304, column: 5, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !10, line: 1304, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1514, file: !10, line: 1304, column: 5)
!1611 = !DILocation(line: 1304, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1610, file: !10, line: 1304, column: 5)
!1613 = !DILocation(line: 1304, column: 5, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !10, line: 1304, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !10, line: 1304, column: 5)
!1616 = !DILocation(line: 1304, column: 5, scope: !1610)
!1617 = !DILocation(line: 1304, column: 5, scope: !1615)
!1618 = !DILocation(line: 1304, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !10, line: 1304, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !10, line: 1304, column: 5)
!1621 = !DILocation(line: 1308, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1308, column: 7)
!1623 = !DILocation(line: 1308, column: 45, scope: !1622)
!1624 = !{!412, !415, i64 128}
!1625 = !DILocation(line: 1308, column: 38, scope: !1622)
!1626 = !DILocation(line: 1308, column: 60, scope: !1622)
!1627 = !DILocation(line: 1308, column: 55, scope: !1622)
!1628 = !DILocation(line: 1308, column: 53, scope: !1622)
!1629 = !DILocation(line: 1308, column: 64, scope: !1622)
!1630 = !DILocation(line: 1308, column: 7, scope: !1434)
!1631 = !DILocation(line: 1315, column: 21, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !10, line: 1315, column: 9)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !10, line: 1308, column: 71)
!1634 = !DILocation(line: 1315, column: 13, scope: !1632)
!1635 = !DILocation(line: 1315, column: 29, scope: !1632)
!1636 = !DILocation(line: 1315, column: 37, scope: !1632)
!1637 = !DILocation(line: 1315, column: 45, scope: !1632)
!1638 = !DILocation(line: 1315, column: 53, scope: !1632)
!1639 = !DILocation(line: 1315, column: 61, scope: !1632)
!1640 = !{!412, !395, i64 269}
!1641 = !DILocation(line: 1315, column: 77, scope: !1632)
!1642 = !DILocation(line: 1315, column: 9, scope: !1633)
!1643 = !DILocation(line: 1316, column: 12, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1632, file: !10, line: 1315, column: 83)
!1645 = !DILocation(line: 1316, column: 24, scope: !1644)
!1646 = !{!412, !395, i64 268}
!1647 = !DILocation(line: 1317, column: 28, scope: !1644)
!1648 = !DILocation(line: 1318, column: 12, scope: !1644)
!1649 = !DILocation(line: 1318, column: 26, scope: !1644)
!1650 = !{!412, !395, i64 270}
!1651 = !DILocation(line: 1319, column: 5, scope: !1644)
!1652 = !DILocation(line: 1321, column: 14, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1633, file: !10, line: 1321, column: 9)
!1654 = !DILocation(line: 1321, column: 20, scope: !1653)
!1655 = !DILocation(line: 1321, column: 9, scope: !1633)
!1656 = !DILocation(line: 1322, column: 14, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1653, file: !10, line: 1321, column: 34)
!1658 = !DILocation(line: 1322, column: 7, scope: !1657)
!1659 = !DILocation(line: 1327, column: 8, scope: !1434)
!1660 = !DILocation(line: 1327, column: 24, scope: !1434)
!1661 = !DILocation(line: 1330, column: 15, scope: !1434)
!1662 = !DILocation(line: 1242, column: 25, scope: !1434)
!1663 = !DILocation(line: 1331, column: 12, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1331, column: 7)
!1665 = !DILocation(line: 1331, column: 7, scope: !1434)
!1666 = !DILocation(line: 0, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !10, line: 1332, column: 5)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !10, line: 1332, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !10, line: 1331, column: 21)
!1670 = !DILocation(line: 1332, column: 18, scope: !1667)
!1671 = !DILocation(line: 1332, column: 23, scope: !1667)
!1672 = !DILocation(line: 1332, column: 5, scope: !1668)
!1673 = distinct !{!1673, !1672, !1674}
!1674 = !DILocation(line: 1332, column: 50, scope: !1668)
!1675 = !DILocation(line: 1330, column: 8, scope: !1434)
!1676 = !DILocation(line: 1335, column: 22, scope: !1434)
!1677 = !DILocation(line: 1336, column: 10, scope: !1434)
!1678 = !DILocation(line: 1336, column: 48, scope: !1434)
!1679 = !DILocation(line: 1336, column: 41, scope: !1434)
!1680 = !DILocation(line: 1336, column: 63, scope: !1434)
!1681 = !DILocation(line: 1336, column: 58, scope: !1434)
!1682 = !DILocation(line: 1336, column: 56, scope: !1434)
!1683 = !DILocation(line: 1336, column: 67, scope: !1434)
!1684 = !DILocation(line: 1335, column: 3, scope: !1434)
!1685 = !DILocation(line: 1337, column: 5, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !10, line: 1337, column: 5)
!1687 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1337, column: 5)
!1688 = !DILocation(line: 1337, column: 5, scope: !1687)
!1689 = !DILocation(line: 1337, column: 5, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !10, line: 1337, column: 5)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !10, line: 1337, column: 5)
!1692 = !DILocation(line: 1337, column: 5, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !10, line: 1337, column: 5)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !10, line: 1337, column: 5)
!1695 = distinct !DILexicalBlock(scope: !1690, file: !10, line: 1337, column: 5)
!1696 = !DILocation(line: 1346, column: 10, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1346, column: 9)
!1698 = !DILocation(line: 1347, column: 22, scope: !1697)
!1699 = !DILocation(line: 1347, column: 51, scope: !1697)
!1700 = !DILocation(line: 1346, column: 41, scope: !1697)
!1701 = !DILocation(line: 1359, column: 14, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1359, column: 9)
!1703 = !DILocation(line: 1359, column: 20, scope: !1702)
!1704 = !DILocation(line: 1359, column: 9, scope: !1523)
!1705 = !DILocation(line: 1360, column: 7, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !10, line: 1359, column: 33)
!1707 = !DILocation(line: 1361, column: 5, scope: !1706)
!1708 = !DILocalVariable(name: "seg", arg: 1, scope: !1709, file: !10, line: 1458, type: !185)
!1709 = distinct !DISubprogram(name: "tcp_output_segment", scope: !10, file: !10, line: 1458, type: !1710, isLocal: true, isDefinition: true, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!226, !185, !231, !1443}
!1712 = !{!1708, !1713, !1714, !1715, !1716, !1717, !1718}
!1713 = !DILocalVariable(name: "pcb", arg: 2, scope: !1709, file: !10, line: 1458, type: !231)
!1714 = !DILocalVariable(name: "netif", arg: 3, scope: !1709, file: !10, line: 1458, type: !1443)
!1715 = !DILocalVariable(name: "err", scope: !1709, file: !10, line: 1460, type: !226)
!1716 = !DILocalVariable(name: "len", scope: !1709, file: !10, line: 1461, type: !103)
!1717 = !DILocalVariable(name: "opts", scope: !1709, file: !10, line: 1462, type: !194)
!1718 = !DILocalVariable(name: "mss", scope: !1719, file: !10, line: 1501, type: !103)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !10, line: 1500, column: 37)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1500, column: 7)
!1721 = !DILocation(line: 1458, column: 36, scope: !1709, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 1363, column: 11, scope: !1523)
!1723 = !DILocation(line: 1458, column: 57, scope: !1709, inlinedAt: !1722)
!1724 = !DILocation(line: 1458, column: 76, scope: !1709, inlinedAt: !1722)
!1725 = !DILocalVariable(name: "seg", arg: 1, scope: !1726, file: !10, line: 1435, type: !1729)
!1726 = distinct !DISubprogram(name: "tcp_output_segment_busy", scope: !10, file: !10, line: 1435, type: !1727, isLocal: true, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1731)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!36, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1731 = !{!1725}
!1732 = !DILocation(line: 1435, column: 47, scope: !1726, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1471, column: 7, scope: !1734, inlinedAt: !1722)
!1734 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1471, column: 7)
!1735 = !DILocation(line: 1442, column: 12, scope: !1736, inlinedAt: !1733)
!1736 = distinct !DILexicalBlock(scope: !1726, file: !10, line: 1442, column: 7)
!1737 = !DILocation(line: 1442, column: 15, scope: !1736, inlinedAt: !1733)
!1738 = !{!587, !395, i64 22}
!1739 = !DILocation(line: 1442, column: 19, scope: !1736, inlinedAt: !1733)
!1740 = !DILocation(line: 1471, column: 7, scope: !1709, inlinedAt: !1722)
!1741 = !DILocation(line: 1480, column: 40, scope: !1709, inlinedAt: !1722)
!1742 = !{!412, !415, i64 92}
!1743 = !DILocation(line: 1480, column: 24, scope: !1709, inlinedAt: !1722)
!1744 = !DILocation(line: 1480, column: 8, scope: !1709, inlinedAt: !1722)
!1745 = !DILocation(line: 1480, column: 16, scope: !1709, inlinedAt: !1722)
!1746 = !DILocation(line: 1480, column: 22, scope: !1709, inlinedAt: !1722)
!1747 = !{!860, !415, i64 8}
!1748 = !DILocation(line: 1484, column: 12, scope: !1749, inlinedAt: !1722)
!1749 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1484, column: 7)
!1750 = !DILocation(line: 1484, column: 18, scope: !1749, inlinedAt: !1722)
!1751 = !DILocation(line: 0, scope: !1752, inlinedAt: !1722)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !10, line: 1490, column: 3)
!1753 = !{!412, !415, i64 100}
!1754 = !DILocation(line: 1484, column: 7, scope: !1709, inlinedAt: !1722)
!1755 = !DILocation(line: 1491, column: 35, scope: !1752, inlinedAt: !1722)
!1756 = !{!412, !395, i64 273}
!1757 = !DILocation(line: 0, scope: !1523)
!1758 = !{!860, !394, i64 14}
!1759 = !DILocation(line: 1494, column: 34, scope: !1709, inlinedAt: !1722)
!1760 = !DILocation(line: 1494, column: 49, scope: !1709, inlinedAt: !1722)
!1761 = !DILocation(line: 1494, column: 42, scope: !1709, inlinedAt: !1722)
!1762 = !DILocation(line: 1494, column: 27, scope: !1709, inlinedAt: !1722)
!1763 = !{!412, !415, i64 104}
!1764 = !DILocation(line: 1499, column: 40, scope: !1709, inlinedAt: !1722)
!1765 = !DILocation(line: 1499, column: 10, scope: !1709, inlinedAt: !1722)
!1766 = !DILocation(line: 1462, column: 10, scope: !1709, inlinedAt: !1722)
!1767 = !DILocation(line: 1500, column: 12, scope: !1720, inlinedAt: !1722)
!1768 = !DILocation(line: 1500, column: 18, scope: !1720, inlinedAt: !1722)
!1769 = !DILocation(line: 1500, column: 7, scope: !1709, inlinedAt: !1722)
!1770 = !DILocation(line: 1503, column: 11, scope: !1719, inlinedAt: !1722)
!1771 = !DILocation(line: 1501, column: 11, scope: !1719, inlinedAt: !1722)
!1772 = !DILocation(line: 1507, column: 13, scope: !1719, inlinedAt: !1722)
!1773 = !DILocation(line: 1507, column: 11, scope: !1719, inlinedAt: !1722)
!1774 = !{!415, !415, i64 0}
!1775 = !DILocation(line: 1508, column: 10, scope: !1719, inlinedAt: !1722)
!1776 = !DILocation(line: 1519, column: 12, scope: !1777, inlinedAt: !1722)
!1777 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1519, column: 7)
!1778 = !DILocation(line: 1509, column: 3, scope: !1719, inlinedAt: !1722)
!1779 = !DILocation(line: 0, scope: !1709, inlinedAt: !1722)
!1780 = !DILocation(line: 1519, column: 18, scope: !1777, inlinedAt: !1722)
!1781 = !DILocation(line: 1519, column: 7, scope: !1709, inlinedAt: !1722)
!1782 = !DILocalVariable(name: "opts", arg: 1, scope: !1783, file: !10, line: 1222, type: !194)
!1783 = distinct !DISubprogram(name: "tcp_build_wnd_scale_option", scope: !10, file: !10, line: 1222, type: !1784, isLocal: true, isDefinition: true, scopeLine: 1223, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !194}
!1786 = !{!1782}
!1787 = !DILocation(line: 1222, column: 35, scope: !1783, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1520, column: 5, scope: !1789, inlinedAt: !1722)
!1789 = distinct !DILexicalBlock(scope: !1777, file: !10, line: 1519, column: 43)
!1790 = !DILocation(line: 1227, column: 11, scope: !1783, inlinedAt: !1788)
!1791 = !DILocation(line: 1521, column: 10, scope: !1789, inlinedAt: !1722)
!1792 = !DILocation(line: 1522, column: 3, scope: !1789, inlinedAt: !1722)
!1793 = !DILocation(line: 0, scope: !1719, inlinedAt: !1722)
!1794 = !DILocation(line: 1537, column: 12, scope: !1795, inlinedAt: !1722)
!1795 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1537, column: 7)
!1796 = !{!412, !394, i64 108}
!1797 = !DILocation(line: 1537, column: 18, scope: !1795, inlinedAt: !1722)
!1798 = !DILocation(line: 1537, column: 7, scope: !1709, inlinedAt: !1722)
!1799 = !DILocation(line: 1538, column: 16, scope: !1800, inlinedAt: !1722)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !10, line: 1537, column: 23)
!1801 = !DILocation(line: 1539, column: 3, scope: !1800, inlinedAt: !1722)
!1802 = !DILocation(line: 1541, column: 12, scope: !1803, inlinedAt: !1722)
!1803 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1541, column: 7)
!1804 = !{!412, !415, i64 112}
!1805 = !DILocation(line: 1541, column: 19, scope: !1803, inlinedAt: !1722)
!1806 = !DILocation(line: 1541, column: 7, scope: !1709, inlinedAt: !1722)
!1807 = !DILocation(line: 1542, column: 19, scope: !1808, inlinedAt: !1722)
!1808 = distinct !DILexicalBlock(scope: !1803, file: !10, line: 1541, column: 25)
!1809 = !DILocation(line: 1542, column: 17, scope: !1808, inlinedAt: !1722)
!1810 = !DILocation(line: 1543, column: 18, scope: !1808, inlinedAt: !1722)
!1811 = !DILocation(line: 1543, column: 16, scope: !1808, inlinedAt: !1722)
!1812 = !{!412, !415, i64 116}
!1813 = !DILocation(line: 1567, column: 3, scope: !1814, inlinedAt: !1722)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !10, line: 1567, column: 3)
!1815 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1567, column: 3)
!1816 = !DILocation(line: 1546, column: 3, scope: !1808, inlinedAt: !1722)
!1817 = !DILocation(line: 1551, column: 30, scope: !1709, inlinedAt: !1722)
!1818 = !DILocation(line: 1551, column: 52, scope: !1709, inlinedAt: !1722)
!1819 = !DILocation(line: 1551, column: 55, scope: !1709, inlinedAt: !1722)
!1820 = !DILocation(line: 1551, column: 37, scope: !1709, inlinedAt: !1722)
!1821 = !DILocation(line: 1551, column: 9, scope: !1709, inlinedAt: !1722)
!1822 = !DILocation(line: 1557, column: 11, scope: !1709, inlinedAt: !1722)
!1823 = !DILocation(line: 1557, column: 15, scope: !1709, inlinedAt: !1722)
!1824 = !DILocation(line: 1558, column: 11, scope: !1709, inlinedAt: !1722)
!1825 = !DILocation(line: 1558, column: 19, scope: !1709, inlinedAt: !1722)
!1826 = !DILocation(line: 1560, column: 19, scope: !1709, inlinedAt: !1722)
!1827 = !DILocation(line: 1562, column: 8, scope: !1709, inlinedAt: !1722)
!1828 = !DILocation(line: 1562, column: 16, scope: !1709, inlinedAt: !1722)
!1829 = !DILocation(line: 1562, column: 23, scope: !1709, inlinedAt: !1722)
!1830 = !{!860, !394, i64 16}
!1831 = !DILocation(line: 1567, column: 3, scope: !1815, inlinedAt: !1722)
!1832 = !DILocation(line: 1567, column: 3, scope: !1833, inlinedAt: !1722)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !10, line: 1567, column: 3)
!1834 = distinct !DILexicalBlock(scope: !1814, file: !10, line: 1567, column: 3)
!1835 = !DILocation(line: 1567, column: 3, scope: !1836, inlinedAt: !1722)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !10, line: 1567, column: 3)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !10, line: 1567, column: 3)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !10, line: 1567, column: 3)
!1839 = !DILocation(line: 1570, column: 3, scope: !1840, inlinedAt: !1722)
!1840 = distinct !DILexicalBlock(scope: !1709, file: !10, line: 1570, column: 3)
!1841 = !{!1842, !394, i64 248}
!1842 = !{!"netif", !414, i64 0, !413, i64 8, !413, i64 32, !413, i64 56, !395, i64 80, !395, i64 152, !395, i64 156, !395, i64 168, !414, i64 184, !414, i64 192, !414, i64 200, !414, i64 208, !414, i64 216, !414, i64 224, !414, i64 232, !395, i64 240, !394, i64 248, !394, i64 250, !394, i64 252, !395, i64 254, !395, i64 260, !395, i64 261, !395, i64 262, !395, i64 264, !395, i64 265, !395, i64 266, !414, i64 272}
!1843 = !DILocation(line: 1570, column: 3, scope: !1709, inlinedAt: !1722)
!1844 = !DILocation(line: 1602, column: 27, scope: !1845, inlinedAt: !1722)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !10, line: 1570, column: 61)
!1846 = !DILocation(line: 1602, column: 10, scope: !1845, inlinedAt: !1722)
!1847 = !DILocation(line: 1602, column: 18, scope: !1845, inlinedAt: !1722)
!1848 = !DILocation(line: 1602, column: 25, scope: !1845, inlinedAt: !1722)
!1849 = !DILocation(line: 1610, column: 9, scope: !1709, inlinedAt: !1722)
!1850 = !DILocation(line: 1605, column: 3, scope: !1845, inlinedAt: !1722)
!1851 = !DILocation(line: 1607, column: 3, scope: !1709, inlinedAt: !1722)
!1852 = !{!466, !394, i64 144}
!1853 = !{!412, !395, i64 51}
!1854 = !{!412, !395, i64 50}
!1855 = !DILocation(line: 1244, column: 9, scope: !1434)
!1856 = !DILocation(line: 1364, column: 13, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1364, column: 9)
!1858 = !DILocation(line: 1364, column: 9, scope: !1523)
!1859 = !DILocation(line: 1366, column: 7, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !10, line: 1366, column: 7)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !10, line: 1364, column: 24)
!1862 = !DILocation(line: 1367, column: 7, scope: !1861)
!1863 = !DILocation(line: 1372, column: 24, scope: !1523)
!1864 = !DILocation(line: 1372, column: 17, scope: !1523)
!1865 = !DILocation(line: 1373, column: 14, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1373, column: 9)
!1867 = !DILocation(line: 1373, column: 20, scope: !1866)
!1868 = !DILocation(line: 1373, column: 9, scope: !1523)
!1869 = !DILocation(line: 1374, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !10, line: 1374, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !10, line: 1373, column: 33)
!1872 = !DILocation(line: 1375, column: 5, scope: !1871)
!1873 = !DILocation(line: 1376, column: 15, scope: !1523)
!1874 = !DILocation(line: 1376, column: 48, scope: !1523)
!1875 = !DILocation(line: 1376, column: 46, scope: !1523)
!1876 = !DILocation(line: 1243, column: 14, scope: !1434)
!1877 = !DILocation(line: 1377, column: 9, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1523, file: !10, line: 1377, column: 9)
!1879 = !{!412, !415, i64 144}
!1880 = !DILocation(line: 1377, column: 9, scope: !1523)
!1881 = !DILocation(line: 1378, column: 20, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !10, line: 1377, column: 44)
!1883 = !DILocation(line: 1379, column: 5, scope: !1882)
!1884 = !DILocation(line: 1381, column: 9, scope: !1522)
!1885 = !DILocation(line: 1381, column: 25, scope: !1522)
!1886 = !DILocation(line: 1381, column: 9, scope: !1523)
!1887 = !DILocation(line: 1382, column: 17, scope: !1521)
!1888 = !DILocation(line: 1384, column: 16, scope: !1520)
!1889 = !DILocation(line: 1384, column: 24, scope: !1520)
!1890 = !DILocation(line: 1384, column: 11, scope: !1521)
!1891 = !DILocation(line: 1385, column: 22, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1384, column: 33)
!1893 = !DILocation(line: 1388, column: 7, scope: !1892)
!1894 = !DILocation(line: 1392, column: 13, scope: !1518)
!1895 = !DILocation(line: 1392, column: 13, scope: !1519)
!1896 = !DILocation(line: 1394, column: 28, scope: !1517)
!1897 = !DILocation(line: 1395, column: 18, scope: !1517)
!1898 = !DILocation(line: 1395, column: 27, scope: !1517)
!1899 = !DILocation(line: 1396, column: 18, scope: !1517)
!1900 = !DILocation(line: 0, scope: !1517)
!1901 = !DILocation(line: 1395, column: 11, scope: !1517)
!1902 = !DILocation(line: 1397, column: 37, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1517, file: !10, line: 1396, column: 101)
!1904 = distinct !{!1904, !1901, !1905}
!1905 = !DILocation(line: 1398, column: 11, scope: !1517)
!1906 = !DILocation(line: 1399, column: 21, scope: !1517)
!1907 = !DILocation(line: 1400, column: 22, scope: !1517)
!1908 = !DILocation(line: 1401, column: 9, scope: !1517)
!1909 = !DILocation(line: 1403, column: 17, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1518, file: !10, line: 1401, column: 16)
!1911 = !DILocation(line: 1403, column: 22, scope: !1910)
!1912 = !DILocation(line: 1409, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1522, file: !10, line: 1408, column: 12)
!1914 = !DILocation(line: 0, scope: !1434)
!1915 = !DILocation(line: 1411, column: 16, scope: !1523)
!1916 = !DILocation(line: 1335, column: 14, scope: !1434)
!1917 = distinct !{!1917, !1684, !1918}
!1918 = !DILocation(line: 1412, column: 3, scope: !1434)
!1919 = !DILocation(line: 1414, column: 12, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1414, column: 7)
!1921 = !DILocation(line: 1414, column: 19, scope: !1920)
!1922 = !DILocation(line: 1414, column: 7, scope: !1434)
!1923 = !DILocation(line: 1416, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !10, line: 1414, column: 28)
!1925 = !DILocation(line: 1416, column: 26, scope: !1924)
!1926 = !DILocation(line: 1417, column: 3, scope: !1924)
!1927 = !DILocation(line: 1421, column: 3, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1434, file: !10, line: 1421, column: 3)
!1929 = !DILocation(line: 1422, column: 3, scope: !1434)
!1930 = !DILocation(line: 0, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1607, file: !10, line: 1301, column: 27)
!1932 = !DILocation(line: 1423, column: 1, scope: !1434)
!1933 = distinct !DISubprogram(name: "tcp_send_empty_ack", scope: !10, file: !10, line: 2022, type: !1244, isLocal: false, isDefinition: true, scopeLine: 2023, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940}
!1935 = !DILocalVariable(name: "pcb", arg: 1, scope: !1933, file: !10, line: 2022, type: !231)
!1936 = !DILocalVariable(name: "err", scope: !1933, file: !10, line: 2024, type: !226)
!1937 = !DILocalVariable(name: "p", scope: !1933, file: !10, line: 2025, type: !120)
!1938 = !DILocalVariable(name: "optlen", scope: !1933, file: !10, line: 2026, type: !110)
!1939 = !DILocalVariable(name: "optflags", scope: !1933, file: !10, line: 2026, type: !110)
!1940 = !DILocalVariable(name: "num_sacks", scope: !1933, file: !10, line: 2027, type: !110)
!1941 = !DILocation(line: 2022, column: 36, scope: !1933)
!1942 = !DILocation(line: 2026, column: 16, scope: !1933)
!1943 = !DILocation(line: 2027, column: 8, scope: !1933)
!1944 = !DILocation(line: 2029, column: 3, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !10, line: 2029, column: 3)
!1946 = distinct !DILexicalBlock(scope: !1933, file: !10, line: 2029, column: 3)
!1947 = !DILocation(line: 2029, column: 3, scope: !1946)
!1948 = !DILocation(line: 2029, column: 3, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !10, line: 2029, column: 3)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !10, line: 2029, column: 3)
!1951 = !DILocation(line: 2029, column: 3, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !10, line: 2029, column: 3)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !10, line: 2029, column: 3)
!1954 = distinct !DILexicalBlock(scope: !1949, file: !10, line: 2029, column: 3)
!1955 = !DILocation(line: 2026, column: 8, scope: !1933)
!1956 = !DILocation(line: 2045, column: 63, scope: !1933)
!1957 = !DILocation(line: 2045, column: 47, scope: !1933)
!1958 = !DILocalVariable(name: "pcb", arg: 1, scope: !1959, file: !10, line: 1856, type: !231)
!1959 = distinct !DISubprogram(name: "tcp_output_alloc_header", scope: !10, file: !10, line: 1856, type: !1960, isLocal: true, isDefinition: true, scopeLine: 1858, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!120, !231, !103, !103, !142}
!1962 = !{!1958, !1963, !1964, !1965, !1966}
!1963 = !DILocalVariable(name: "optlen", arg: 2, scope: !1959, file: !10, line: 1856, type: !103)
!1964 = !DILocalVariable(name: "datalen", arg: 3, scope: !1959, file: !10, line: 1856, type: !103)
!1965 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !1959, file: !10, line: 1857, type: !142)
!1966 = !DILocalVariable(name: "p", scope: !1959, file: !10, line: 1859, type: !120)
!1967 = !DILocation(line: 1856, column: 41, scope: !1959, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 2045, column: 7, scope: !1933)
!1969 = !DILocation(line: 1856, column: 52, scope: !1959, inlinedAt: !1968)
!1970 = !DILocation(line: 1856, column: 66, scope: !1959, inlinedAt: !1968)
!1971 = !DILocation(line: 1857, column: 31, scope: !1959, inlinedAt: !1968)
!1972 = !DILocation(line: 1863, column: 43, scope: !1959, inlinedAt: !1968)
!1973 = !DILocation(line: 1864, column: 20, scope: !1959, inlinedAt: !1968)
!1974 = !DILocation(line: 1864, column: 37, scope: !1959, inlinedAt: !1968)
!1975 = !DILocation(line: 1865, column: 5, scope: !1959, inlinedAt: !1968)
!1976 = !DILocation(line: 1863, column: 7, scope: !1959, inlinedAt: !1968)
!1977 = !DILocation(line: 1859, column: 16, scope: !1959, inlinedAt: !1968)
!1978 = !DILocation(line: 1866, column: 9, scope: !1979, inlinedAt: !1968)
!1979 = distinct !DILexicalBlock(scope: !1959, file: !10, line: 1866, column: 7)
!1980 = !DILocation(line: 1866, column: 7, scope: !1959, inlinedAt: !1968)
!1981 = !DILocation(line: 2025, column: 16, scope: !1933)
!1982 = !DILocation(line: 2048, column: 5, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !10, line: 2048, column: 5)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !10, line: 2046, column: 18)
!1985 = distinct !DILexicalBlock(scope: !1933, file: !10, line: 2046, column: 7)
!1986 = !DILocation(line: 2050, column: 5, scope: !1984)
!1987 = !DILocation(line: 1868, column: 36, scope: !1988, inlinedAt: !1968)
!1988 = distinct !DILexicalBlock(scope: !1979, file: !10, line: 1866, column: 18)
!1989 = !DILocation(line: 1868, column: 51, scope: !1988, inlinedAt: !1968)
!1990 = !DILocation(line: 1868, column: 44, scope: !1988, inlinedAt: !1968)
!1991 = !DILocation(line: 1868, column: 10, scope: !1988, inlinedAt: !1968)
!1992 = !DILocation(line: 1868, column: 29, scope: !1988, inlinedAt: !1968)
!1993 = !DILocation(line: 2060, column: 50, scope: !1933)
!1994 = !DILocation(line: 2060, column: 66, scope: !1933)
!1995 = !DILocation(line: 2060, column: 9, scope: !1933)
!1996 = !DILocation(line: 2024, column: 9, scope: !1933)
!1997 = !DILocation(line: 2061, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1933, file: !10, line: 2061, column: 7)
!1999 = !DILocation(line: 0, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !10, line: 2066, column: 5)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !10, line: 2064, column: 10)
!2002 = !DILocation(line: 2066, column: 5, scope: !2000)
!2003 = !DILocation(line: 2063, column: 5, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !10, line: 2063, column: 5)
!2005 = distinct !DILexicalBlock(scope: !1998, file: !10, line: 2061, column: 22)
!2006 = !DILocation(line: 2061, column: 7, scope: !1933)
!2007 = !DILocation(line: 0, scope: !2004)
!2008 = !DILocation(line: 2069, column: 3, scope: !1933)
!2009 = !DILocation(line: 0, scope: !1933)
!2010 = !DILocation(line: 2070, column: 1, scope: !1933)
!2011 = distinct !DISubprogram(name: "tcp_rexmit_rto_prepare", scope: !10, file: !10, line: 1634, type: !1244, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2012)
!2012 = !{!2013, !2014}
!2013 = !DILocalVariable(name: "pcb", arg: 1, scope: !2011, file: !10, line: 1634, type: !231)
!2014 = !DILocalVariable(name: "seg", scope: !2011, file: !10, line: 1636, type: !185)
!2015 = !DILocation(line: 1634, column: 40, scope: !2011)
!2016 = !DILocation(line: 1638, column: 3, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !10, line: 1638, column: 3)
!2018 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 1638, column: 3)
!2019 = !DILocation(line: 1638, column: 3, scope: !2018)
!2020 = !DILocation(line: 1638, column: 3, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !10, line: 1638, column: 3)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !10, line: 1638, column: 3)
!2023 = !DILocation(line: 1638, column: 3, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !10, line: 1638, column: 3)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !10, line: 1638, column: 3)
!2026 = distinct !DILexicalBlock(scope: !2021, file: !10, line: 1638, column: 3)
!2027 = !DILocation(line: 1640, column: 12, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 1640, column: 7)
!2029 = !DILocation(line: 1640, column: 20, scope: !2028)
!2030 = !DILocation(line: 1640, column: 7, scope: !2011)
!2031 = !DILocation(line: 0, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1648, column: 3)
!2033 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 1648, column: 3)
!2034 = !DILocation(line: 1636, column: 19, scope: !2011)
!2035 = !DILocation(line: 1648, column: 33, scope: !2032)
!2036 = !DILocation(line: 1648, column: 38, scope: !2032)
!2037 = !DILocation(line: 1435, column: 47, scope: !1726, inlinedAt: !2038)
!2038 = distinct !DILocation(line: 0, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 1654, column: 7)
!2040 = !DILocation(line: 1442, column: 12, scope: !1736, inlinedAt: !2038)
!2041 = !DILocation(line: 1442, column: 15, scope: !1736, inlinedAt: !2038)
!2042 = !DILocation(line: 1442, column: 19, scope: !1736, inlinedAt: !2038)
!2043 = !DILocation(line: 1648, column: 3, scope: !2033)
!2044 = !DILocation(line: 1649, column: 9, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2032, file: !10, line: 1648, column: 64)
!2046 = distinct !{!2046, !2043, !2047}
!2047 = !DILocation(line: 1653, column: 3, scope: !2033)
!2048 = !DILocation(line: 1654, column: 7, scope: !2011)
!2049 = !DILocation(line: 1659, column: 20, scope: !2011)
!2050 = !DILocation(line: 1659, column: 13, scope: !2011)
!2051 = !DILocation(line: 1667, column: 15, scope: !2011)
!2052 = !DILocation(line: 1669, column: 16, scope: !2011)
!2053 = !DILocation(line: 1672, column: 3, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2011, file: !10, line: 1672, column: 3)
!2055 = !DILocation(line: 1674, column: 18, scope: !2011)
!2056 = !DILocation(line: 1674, column: 51, scope: !2011)
!2057 = !DILocation(line: 1674, column: 49, scope: !2011)
!2058 = !DILocation(line: 1674, column: 8, scope: !2011)
!2059 = !DILocation(line: 1674, column: 16, scope: !2011)
!2060 = !{!412, !415, i64 140}
!2061 = !DILocation(line: 1676, column: 8, scope: !2011)
!2062 = !DILocation(line: 1676, column: 15, scope: !2011)
!2063 = !DILocation(line: 1678, column: 3, scope: !2011)
!2064 = !DILocation(line: 0, scope: !2011)
!2065 = !DILocation(line: 1679, column: 1, scope: !2011)
!2066 = distinct !DISubprogram(name: "tcp_rexmit_rto_commit", scope: !10, file: !10, line: 1689, type: !2067, isLocal: false, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !231}
!2069 = !{!2070}
!2070 = !DILocalVariable(name: "pcb", arg: 1, scope: !2066, file: !10, line: 1689, type: !231)
!2071 = !DILocation(line: 1689, column: 39, scope: !2066)
!2072 = !DILocation(line: 1691, column: 3, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !10, line: 1691, column: 3)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !10, line: 1691, column: 3)
!2075 = !DILocation(line: 1691, column: 3, scope: !2074)
!2076 = !DILocation(line: 1691, column: 3, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !10, line: 1691, column: 3)
!2078 = distinct !DILexicalBlock(scope: !2073, file: !10, line: 1691, column: 3)
!2079 = !DILocation(line: 1691, column: 3, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !10, line: 1691, column: 3)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !10, line: 1691, column: 3)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !10, line: 1691, column: 3)
!2083 = !DILocation(line: 1694, column: 12, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2066, file: !10, line: 1694, column: 7)
!2085 = !{!412, !395, i64 126}
!2086 = !DILocation(line: 1694, column: 17, scope: !2084)
!2087 = !DILocation(line: 1694, column: 7, scope: !2066)
!2088 = !DILocation(line: 1695, column: 5, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2084, file: !10, line: 1694, column: 25)
!2090 = !DILocation(line: 1696, column: 3, scope: !2089)
!2091 = !DILocation(line: 1698, column: 3, scope: !2066)
!2092 = !DILocation(line: 1699, column: 1, scope: !2066)
!2093 = distinct !DISubprogram(name: "tcp_rexmit_rto", scope: !10, file: !10, line: 1710, type: !2067, isLocal: false, isDefinition: true, scopeLine: 1711, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2094)
!2094 = !{!2095}
!2095 = !DILocalVariable(name: "pcb", arg: 1, scope: !2093, file: !10, line: 1710, type: !231)
!2096 = !DILocation(line: 1710, column: 32, scope: !2093)
!2097 = !DILocation(line: 1712, column: 3, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !10, line: 1712, column: 3)
!2099 = distinct !DILexicalBlock(scope: !2093, file: !10, line: 1712, column: 3)
!2100 = !DILocation(line: 1712, column: 3, scope: !2099)
!2101 = !DILocation(line: 1712, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !10, line: 1712, column: 3)
!2103 = distinct !DILexicalBlock(scope: !2098, file: !10, line: 1712, column: 3)
!2104 = !DILocation(line: 1712, column: 3, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !10, line: 1712, column: 3)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !10, line: 1712, column: 3)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !10, line: 1712, column: 3)
!2108 = !DILocation(line: 1634, column: 40, scope: !2011, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 1714, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2093, file: !10, line: 1714, column: 7)
!2111 = !DILocation(line: 1640, column: 12, scope: !2028, inlinedAt: !2109)
!2112 = !DILocation(line: 1640, column: 20, scope: !2028, inlinedAt: !2109)
!2113 = !DILocation(line: 1640, column: 7, scope: !2011, inlinedAt: !2109)
!2114 = !DILocation(line: 0, scope: !2032, inlinedAt: !2109)
!2115 = !DILocation(line: 1636, column: 19, scope: !2011, inlinedAt: !2109)
!2116 = !DILocation(line: 1648, column: 33, scope: !2032, inlinedAt: !2109)
!2117 = !DILocation(line: 1648, column: 38, scope: !2032, inlinedAt: !2109)
!2118 = !DILocation(line: 1435, column: 47, scope: !1726, inlinedAt: !2119)
!2119 = distinct !DILocation(line: 0, scope: !2039, inlinedAt: !2109)
!2120 = !DILocation(line: 1442, column: 12, scope: !1736, inlinedAt: !2119)
!2121 = !DILocation(line: 1442, column: 15, scope: !1736, inlinedAt: !2119)
!2122 = !DILocation(line: 1442, column: 19, scope: !1736, inlinedAt: !2119)
!2123 = !DILocation(line: 1648, column: 3, scope: !2033, inlinedAt: !2109)
!2124 = !DILocation(line: 1649, column: 9, scope: !2045, inlinedAt: !2109)
!2125 = !DILocation(line: 1654, column: 7, scope: !2011, inlinedAt: !2109)
!2126 = !DILocation(line: 1659, column: 20, scope: !2011, inlinedAt: !2109)
!2127 = !DILocation(line: 1659, column: 13, scope: !2011, inlinedAt: !2109)
!2128 = !DILocation(line: 1667, column: 15, scope: !2011, inlinedAt: !2109)
!2129 = !DILocation(line: 1669, column: 16, scope: !2011, inlinedAt: !2109)
!2130 = !DILocation(line: 1672, column: 3, scope: !2054, inlinedAt: !2109)
!2131 = !DILocation(line: 1674, column: 18, scope: !2011, inlinedAt: !2109)
!2132 = !DILocation(line: 1674, column: 51, scope: !2011, inlinedAt: !2109)
!2133 = !DILocation(line: 1674, column: 49, scope: !2011, inlinedAt: !2109)
!2134 = !DILocation(line: 1674, column: 8, scope: !2011, inlinedAt: !2109)
!2135 = !DILocation(line: 1674, column: 16, scope: !2011, inlinedAt: !2109)
!2136 = !DILocation(line: 1676, column: 8, scope: !2011, inlinedAt: !2109)
!2137 = !DILocation(line: 1676, column: 15, scope: !2011, inlinedAt: !2109)
!2138 = !DILocation(line: 1689, column: 39, scope: !2066, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 1715, column: 5, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2110, file: !10, line: 1714, column: 46)
!2141 = !DILocation(line: 1694, column: 12, scope: !2084, inlinedAt: !2139)
!2142 = !DILocation(line: 1694, column: 17, scope: !2084, inlinedAt: !2139)
!2143 = !DILocation(line: 1694, column: 7, scope: !2066, inlinedAt: !2139)
!2144 = !DILocation(line: 1695, column: 5, scope: !2089, inlinedAt: !2139)
!2145 = !DILocation(line: 1696, column: 3, scope: !2089, inlinedAt: !2139)
!2146 = !DILocation(line: 1698, column: 3, scope: !2066, inlinedAt: !2139)
!2147 = !DILocation(line: 1716, column: 3, scope: !2140)
!2148 = !DILocation(line: 1717, column: 1, scope: !2093)
!2149 = distinct !DISubprogram(name: "tcp_rexmit", scope: !10, file: !10, line: 1727, type: !1244, isLocal: false, isDefinition: true, scopeLine: 1728, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2150)
!2150 = !{!2151, !2152, !2153}
!2151 = !DILocalVariable(name: "pcb", arg: 1, scope: !2149, file: !10, line: 1727, type: !231)
!2152 = !DILocalVariable(name: "seg", scope: !2149, file: !10, line: 1729, type: !185)
!2153 = !DILocalVariable(name: "cur_seg", scope: !2149, file: !10, line: 1730, type: !1524)
!2154 = !DILocation(line: 1727, column: 28, scope: !2149)
!2155 = !DILocation(line: 1732, column: 3, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !10, line: 1732, column: 3)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1732, column: 3)
!2158 = !DILocation(line: 1732, column: 3, scope: !2157)
!2159 = !DILocation(line: 1732, column: 3, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !10, line: 1732, column: 3)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !10, line: 1732, column: 3)
!2162 = !DILocation(line: 1732, column: 3, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !10, line: 1732, column: 3)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !10, line: 1732, column: 3)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !10, line: 1732, column: 3)
!2166 = !DILocation(line: 1734, column: 12, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1734, column: 7)
!2168 = !DILocation(line: 1734, column: 20, scope: !2167)
!2169 = !DILocation(line: 1734, column: 7, scope: !2149)
!2170 = !DILocation(line: 1729, column: 19, scope: !2149)
!2171 = !DILocation(line: 1435, column: 47, scope: !1726, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 1742, column: 7, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1742, column: 7)
!2174 = !DILocation(line: 1442, column: 12, scope: !1736, inlinedAt: !2172)
!2175 = !DILocation(line: 1442, column: 15, scope: !1736, inlinedAt: !2172)
!2176 = !DILocation(line: 1442, column: 19, scope: !1736, inlinedAt: !2172)
!2177 = !DILocation(line: 1742, column: 7, scope: !2149)
!2178 = !DILocation(line: 1749, column: 23, scope: !2149)
!2179 = !DILocation(line: 1749, column: 16, scope: !2149)
!2180 = !DILocation(line: 1751, column: 20, scope: !2149)
!2181 = !DILocation(line: 1730, column: 20, scope: !2149)
!2182 = !DILocation(line: 1752, column: 10, scope: !2149)
!2183 = !DILocation(line: 1752, column: 19, scope: !2149)
!2184 = !DILocation(line: 1753, column: 10, scope: !2149)
!2185 = !DILocation(line: 0, scope: !2149)
!2186 = !DILocation(line: 1752, column: 3, scope: !2149)
!2187 = !DILocation(line: 1754, column: 29, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1753, column: 93)
!2189 = distinct !{!2189, !2186, !2190}
!2190 = !DILocation(line: 1755, column: 3, scope: !2149)
!2191 = !DILocation(line: 1756, column: 13, scope: !2149)
!2192 = !DILocation(line: 1757, column: 12, scope: !2149)
!2193 = !DILocation(line: 1759, column: 12, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1759, column: 7)
!2195 = !DILocation(line: 1759, column: 17, scope: !2194)
!2196 = !DILocation(line: 1759, column: 7, scope: !2149)
!2197 = !DILocation(line: 1761, column: 10, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2194, file: !10, line: 1759, column: 26)
!2199 = !DILocation(line: 1761, column: 26, scope: !2198)
!2200 = !DILocation(line: 1762, column: 3, scope: !2198)
!2201 = !DILocation(line: 1765, column: 12, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2149, file: !10, line: 1765, column: 7)
!2203 = !DILocation(line: 1765, column: 17, scope: !2202)
!2204 = !DILocation(line: 1765, column: 7, scope: !2149)
!2205 = !DILocation(line: 1766, column: 5, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !10, line: 1765, column: 25)
!2207 = !DILocation(line: 1767, column: 3, scope: !2206)
!2208 = !DILocation(line: 1770, column: 8, scope: !2149)
!2209 = !DILocation(line: 1770, column: 15, scope: !2149)
!2210 = !DILocation(line: 1776, column: 3, scope: !2149)
!2211 = !DILocation(line: 1777, column: 1, scope: !2149)
!2212 = distinct !DISubprogram(name: "tcp_rexmit_fast", scope: !10, file: !10, line: 1786, type: !2067, isLocal: false, isDefinition: true, scopeLine: 1787, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "pcb", arg: 1, scope: !2212, file: !10, line: 1786, type: !231)
!2215 = !DILocation(line: 1786, column: 33, scope: !2212)
!2216 = !DILocation(line: 1788, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !10, line: 1788, column: 3)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !10, line: 1788, column: 3)
!2219 = !DILocation(line: 1788, column: 3, scope: !2218)
!2220 = !DILocation(line: 1788, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !10, line: 1788, column: 3)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !10, line: 1788, column: 3)
!2223 = !DILocation(line: 1788, column: 3, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !10, line: 1788, column: 3)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !10, line: 1788, column: 3)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !10, line: 1788, column: 3)
!2227 = !DILocation(line: 1790, column: 12, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2212, file: !10, line: 1790, column: 7)
!2229 = !DILocation(line: 1790, column: 20, scope: !2228)
!2230 = !DILocation(line: 1790, column: 28, scope: !2228)
!2231 = !DILocation(line: 1790, column: 38, scope: !2228)
!2232 = !DILocation(line: 1790, column: 44, scope: !2228)
!2233 = !DILocation(line: 1790, column: 7, scope: !2212)
!2234 = !DILocation(line: 1727, column: 28, scope: !2149, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 1797, column: 9, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !10, line: 1797, column: 9)
!2237 = distinct !DILexicalBlock(scope: !2228, file: !10, line: 1790, column: 56)
!2238 = !DILocation(line: 1729, column: 19, scope: !2149, inlinedAt: !2235)
!2239 = !DILocation(line: 1435, column: 47, scope: !1726, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 1742, column: 7, scope: !2173, inlinedAt: !2235)
!2241 = !DILocation(line: 1442, column: 12, scope: !1736, inlinedAt: !2240)
!2242 = !DILocation(line: 1442, column: 15, scope: !1736, inlinedAt: !2240)
!2243 = !DILocation(line: 1442, column: 19, scope: !1736, inlinedAt: !2240)
!2244 = !DILocation(line: 1742, column: 7, scope: !2149, inlinedAt: !2235)
!2245 = !DILocation(line: 1749, column: 23, scope: !2149, inlinedAt: !2235)
!2246 = !DILocation(line: 1749, column: 16, scope: !2149, inlinedAt: !2235)
!2247 = !DILocation(line: 1751, column: 20, scope: !2149, inlinedAt: !2235)
!2248 = !DILocation(line: 1730, column: 20, scope: !2149, inlinedAt: !2235)
!2249 = !DILocation(line: 1752, column: 10, scope: !2149, inlinedAt: !2235)
!2250 = !DILocation(line: 1752, column: 19, scope: !2149, inlinedAt: !2235)
!2251 = !DILocation(line: 1753, column: 10, scope: !2149, inlinedAt: !2235)
!2252 = !DILocation(line: 0, scope: !2149, inlinedAt: !2235)
!2253 = !DILocation(line: 1752, column: 3, scope: !2149, inlinedAt: !2235)
!2254 = !DILocation(line: 1754, column: 29, scope: !2188, inlinedAt: !2235)
!2255 = !DILocation(line: 1756, column: 13, scope: !2149, inlinedAt: !2235)
!2256 = !DILocation(line: 1757, column: 12, scope: !2149, inlinedAt: !2235)
!2257 = !DILocation(line: 1759, column: 12, scope: !2194, inlinedAt: !2235)
!2258 = !DILocation(line: 1759, column: 17, scope: !2194, inlinedAt: !2235)
!2259 = !DILocation(line: 1759, column: 7, scope: !2149, inlinedAt: !2235)
!2260 = !DILocation(line: 1761, column: 10, scope: !2198, inlinedAt: !2235)
!2261 = !DILocation(line: 1761, column: 26, scope: !2198, inlinedAt: !2235)
!2262 = !DILocation(line: 1762, column: 3, scope: !2198, inlinedAt: !2235)
!2263 = !DILocation(line: 1765, column: 12, scope: !2202, inlinedAt: !2235)
!2264 = !DILocation(line: 1765, column: 17, scope: !2202, inlinedAt: !2235)
!2265 = !DILocation(line: 1765, column: 7, scope: !2149, inlinedAt: !2235)
!2266 = !DILocation(line: 1766, column: 5, scope: !2206, inlinedAt: !2235)
!2267 = !DILocation(line: 1767, column: 3, scope: !2206, inlinedAt: !2235)
!2268 = !DILocation(line: 1770, column: 8, scope: !2149, inlinedAt: !2235)
!2269 = !DILocation(line: 1770, column: 15, scope: !2149, inlinedAt: !2235)
!2270 = !DILocation(line: 1800, column: 23, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2236, file: !10, line: 1797, column: 36)
!2272 = !DILocation(line: 1800, column: 57, scope: !2271)
!2273 = !DILocation(line: 1800, column: 12, scope: !2271)
!2274 = !DILocation(line: 1803, column: 38, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !10, line: 1803, column: 11)
!2276 = !DILocation(line: 1803, column: 33, scope: !2275)
!2277 = !DILocation(line: 1803, column: 31, scope: !2275)
!2278 = !DILocation(line: 1803, column: 25, scope: !2275)
!2279 = !DILocation(line: 1803, column: 11, scope: !2271)
!2280 = !DILocation(line: 0, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !10, line: 1803, column: 44)
!2282 = !DILocation(line: 1811, column: 37, scope: !2271)
!2283 = !DILocation(line: 1811, column: 33, scope: !2271)
!2284 = !DILocation(line: 1811, column: 17, scope: !2271)
!2285 = !DILocation(line: 1812, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2271, file: !10, line: 1812, column: 7)
!2287 = !DILocation(line: 1815, column: 12, scope: !2271)
!2288 = !DILocation(line: 1815, column: 18, scope: !2271)
!2289 = !DILocation(line: 1816, column: 5, scope: !2271)
!2290 = !DILocation(line: 1818, column: 1, scope: !2212)
!2291 = distinct !DISubprogram(name: "tcp_rst", scope: !10, file: !10, line: 1983, type: !2292, isLocal: false, isDefinition: true, scopeLine: 1986, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !909, !142, !142, !145, !145, !103, !103}
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304}
!2295 = !DILocalVariable(name: "pcb", arg: 1, scope: !2291, file: !10, line: 1983, type: !909)
!2296 = !DILocalVariable(name: "seqno", arg: 2, scope: !2291, file: !10, line: 1983, type: !142)
!2297 = !DILocalVariable(name: "ackno", arg: 3, scope: !2291, file: !10, line: 1983, type: !142)
!2298 = !DILocalVariable(name: "local_ip", arg: 4, scope: !2291, file: !10, line: 1984, type: !145)
!2299 = !DILocalVariable(name: "remote_ip", arg: 5, scope: !2291, file: !10, line: 1984, type: !145)
!2300 = !DILocalVariable(name: "local_port", arg: 6, scope: !2291, file: !10, line: 1985, type: !103)
!2301 = !DILocalVariable(name: "remote_port", arg: 7, scope: !2291, file: !10, line: 1985, type: !103)
!2302 = !DILocalVariable(name: "p", scope: !2291, file: !10, line: 1987, type: !120)
!2303 = !DILocalVariable(name: "wnd", scope: !2291, file: !10, line: 1988, type: !103)
!2304 = !DILocalVariable(name: "optlen", scope: !2291, file: !10, line: 1989, type: !110)
!2305 = !DILocation(line: 1983, column: 31, scope: !2291)
!2306 = !DILocation(line: 1983, column: 42, scope: !2291)
!2307 = !DILocation(line: 1983, column: 55, scope: !2291)
!2308 = !DILocation(line: 1984, column: 26, scope: !2291)
!2309 = !DILocation(line: 1984, column: 53, scope: !2291)
!2310 = !DILocation(line: 1985, column: 15, scope: !2291)
!2311 = !DILocation(line: 1985, column: 33, scope: !2291)
!2312 = !DILocation(line: 1991, column: 3, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !10, line: 1991, column: 3)
!2314 = distinct !DILexicalBlock(scope: !2291, file: !10, line: 1991, column: 3)
!2315 = !DILocation(line: 1991, column: 3, scope: !2314)
!2316 = !DILocation(line: 1991, column: 3, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !10, line: 1991, column: 3)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !10, line: 1991, column: 3)
!2319 = !DILocation(line: 1991, column: 3, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !10, line: 1991, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !10, line: 1991, column: 3)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !10, line: 1991, column: 3)
!2323 = !DILocation(line: 1992, column: 3, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !10, line: 1992, column: 3)
!2325 = distinct !DILexicalBlock(scope: !2291, file: !10, line: 1992, column: 3)
!2326 = !DILocation(line: 1992, column: 3, scope: !2325)
!2327 = !DILocation(line: 1992, column: 3, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !10, line: 1992, column: 3)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !10, line: 1992, column: 3)
!2330 = !DILocation(line: 1992, column: 3, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !10, line: 1992, column: 3)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !10, line: 1992, column: 3)
!2333 = distinct !DILexicalBlock(scope: !2328, file: !10, line: 1992, column: 3)
!2334 = !DILocation(line: 1989, column: 8, scope: !2291)
!2335 = !DILocation(line: 1988, column: 9, scope: !2291)
!2336 = !DILocation(line: 2002, column: 56, scope: !2291)
!2337 = !DILocation(line: 2002, column: 7, scope: !2291)
!2338 = !DILocation(line: 1987, column: 16, scope: !2291)
!2339 = !DILocation(line: 2004, column: 9, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2291, file: !10, line: 2004, column: 7)
!2341 = !DILocation(line: 2004, column: 7, scope: !2291)
!2342 = !DILocation(line: 2012, column: 3, scope: !2291)
!2343 = !DILocation(line: 2014, column: 1, scope: !2291)
!2344 = distinct !DISubprogram(name: "tcp_output_alloc_header_common", scope: !10, file: !10, line: 1821, type: !2345, isLocal: true, isDefinition: true, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2347)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!120, !142, !103, !103, !142, !103, !103, !110, !103}
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2348 = !DILocalVariable(name: "ackno", arg: 1, scope: !2344, file: !10, line: 1821, type: !142)
!2349 = !DILocalVariable(name: "optlen", arg: 2, scope: !2344, file: !10, line: 1821, type: !103)
!2350 = !DILocalVariable(name: "datalen", arg: 3, scope: !2344, file: !10, line: 1821, type: !103)
!2351 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !2344, file: !10, line: 1822, type: !142)
!2352 = !DILocalVariable(name: "src_port", arg: 5, scope: !2344, file: !10, line: 1823, type: !103)
!2353 = !DILocalVariable(name: "dst_port", arg: 6, scope: !2344, file: !10, line: 1823, type: !103)
!2354 = !DILocalVariable(name: "flags", arg: 7, scope: !2344, file: !10, line: 1823, type: !110)
!2355 = !DILocalVariable(name: "wnd", arg: 8, scope: !2344, file: !10, line: 1823, type: !103)
!2356 = !DILocalVariable(name: "tcphdr", scope: !2344, file: !10, line: 1825, type: !173)
!2357 = !DILocalVariable(name: "p", scope: !2344, file: !10, line: 1826, type: !120)
!2358 = !DILocation(line: 1821, column: 38, scope: !2344)
!2359 = !DILocation(line: 1821, column: 51, scope: !2344)
!2360 = !DILocation(line: 1821, column: 65, scope: !2344)
!2361 = !DILocation(line: 1822, column: 31, scope: !2344)
!2362 = !DILocation(line: 1823, column: 31, scope: !2344)
!2363 = !DILocation(line: 1823, column: 47, scope: !2344)
!2364 = !DILocation(line: 1823, column: 62, scope: !2344)
!2365 = !DILocation(line: 1823, column: 75, scope: !2344)
!2366 = !DILocation(line: 1828, column: 45, scope: !2344)
!2367 = !DILocation(line: 1828, column: 7, scope: !2344)
!2368 = !DILocation(line: 1826, column: 16, scope: !2344)
!2369 = !DILocation(line: 1829, column: 9, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2344, file: !10, line: 1829, column: 7)
!2371 = !DILocation(line: 1829, column: 7, scope: !2344)
!2372 = !DILocation(line: 1830, column: 5, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !10, line: 1830, column: 5)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !10, line: 1830, column: 5)
!2375 = distinct !DILexicalBlock(scope: !2370, file: !10, line: 1829, column: 18)
!2376 = !DILocation(line: 1830, column: 5, scope: !2374)
!2377 = !DILocation(line: 1830, column: 5, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !10, line: 1830, column: 5)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !10, line: 1830, column: 5)
!2380 = !DILocation(line: 1830, column: 5, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2382, file: !10, line: 1830, column: 5)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !10, line: 1830, column: 5)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !10, line: 1830, column: 5)
!2384 = !DILocation(line: 1832, column: 35, scope: !2375)
!2385 = !DILocation(line: 1825, column: 19, scope: !2344)
!2386 = !DILocation(line: 1833, column: 19, scope: !2375)
!2387 = !DILocation(line: 1833, column: 13, scope: !2375)
!2388 = !DILocation(line: 1833, column: 17, scope: !2375)
!2389 = !DILocation(line: 1834, column: 20, scope: !2375)
!2390 = !DILocation(line: 1834, column: 13, scope: !2375)
!2391 = !DILocation(line: 1834, column: 18, scope: !2375)
!2392 = !DILocation(line: 1835, column: 13, scope: !2375)
!2393 = !DILocation(line: 1835, column: 19, scope: !2375)
!2394 = !DILocation(line: 1836, column: 21, scope: !2375)
!2395 = !DILocation(line: 1836, column: 13, scope: !2375)
!2396 = !DILocation(line: 1836, column: 19, scope: !2375)
!2397 = !DILocation(line: 1837, column: 5, scope: !2375)
!2398 = !DILocation(line: 1838, column: 19, scope: !2375)
!2399 = !DILocation(line: 1838, column: 13, scope: !2375)
!2400 = !DILocation(line: 1838, column: 17, scope: !2375)
!2401 = !DILocation(line: 1839, column: 13, scope: !2375)
!2402 = !DILocation(line: 1839, column: 20, scope: !2375)
!2403 = !DILocation(line: 1840, column: 13, scope: !2375)
!2404 = !DILocation(line: 1840, column: 18, scope: !2375)
!2405 = !DILocation(line: 1841, column: 3, scope: !2375)
!2406 = !DILocation(line: 1842, column: 3, scope: !2344)
!2407 = distinct !DISubprogram(name: "tcp_output_control_segment", scope: !10, file: !10, line: 1924, type: !2408, isLocal: true, isDefinition: true, scopeLine: 1926, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2410)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!226, !909, !120, !145, !145}
!2410 = !{!2411, !2412, !2413, !2414, !2415, !2416, !2417, !2420, !2421}
!2411 = !DILocalVariable(name: "pcb", arg: 1, scope: !2407, file: !10, line: 1924, type: !909)
!2412 = !DILocalVariable(name: "p", arg: 2, scope: !2407, file: !10, line: 1924, type: !120)
!2413 = !DILocalVariable(name: "src", arg: 3, scope: !2407, file: !10, line: 1925, type: !145)
!2414 = !DILocalVariable(name: "dst", arg: 4, scope: !2407, file: !10, line: 1925, type: !145)
!2415 = !DILocalVariable(name: "err", scope: !2407, file: !10, line: 1927, type: !226)
!2416 = !DILocalVariable(name: "netif", scope: !2407, file: !10, line: 1928, type: !1443)
!2417 = !DILocalVariable(name: "ttl", scope: !2418, file: !10, line: 1936, type: !110)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !10, line: 1935, column: 10)
!2419 = distinct !DILexicalBlock(scope: !2407, file: !10, line: 1933, column: 7)
!2420 = !DILocalVariable(name: "tos", scope: !2418, file: !10, line: 1936, type: !110)
!2421 = !DILocalVariable(name: "tcphdr", scope: !2422, file: !10, line: 1939, type: !173)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !10, line: 1938, column: 63)
!2423 = distinct !DILexicalBlock(scope: !2418, file: !10, line: 1938, column: 5)
!2424 = !DILocation(line: 1924, column: 50, scope: !2407)
!2425 = !DILocation(line: 1924, column: 68, scope: !2407)
!2426 = !DILocation(line: 1925, column: 45, scope: !2407)
!2427 = !DILocation(line: 1925, column: 67, scope: !2407)
!2428 = !DILocation(line: 1930, column: 3, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !10, line: 1930, column: 3)
!2430 = distinct !DILexicalBlock(scope: !2407, file: !10, line: 1930, column: 3)
!2431 = !DILocation(line: 1930, column: 3, scope: !2430)
!2432 = !DILocation(line: 1930, column: 3, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !10, line: 1930, column: 3)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !10, line: 1930, column: 3)
!2435 = !DILocation(line: 1930, column: 3, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !10, line: 1930, column: 3)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !10, line: 1930, column: 3)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !10, line: 1930, column: 3)
!2439 = !DILocation(line: 134, column: 33, scope: !1572, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 1932, column: 11, scope: !2407)
!2441 = !DILocation(line: 134, column: 55, scope: !1572, inlinedAt: !2440)
!2442 = !DILocation(line: 134, column: 77, scope: !1572, inlinedAt: !2440)
!2443 = !DILocation(line: 138, column: 12, scope: !1583, inlinedAt: !2440)
!2444 = !DILocation(line: 138, column: 21, scope: !1583, inlinedAt: !2440)
!2445 = !DILocation(line: 138, column: 30, scope: !1583, inlinedAt: !2440)
!2446 = !DILocation(line: 138, column: 40, scope: !1583, inlinedAt: !2440)
!2447 = !DILocation(line: 138, column: 7, scope: !1572, inlinedAt: !2440)
!2448 = !DILocation(line: 139, column: 12, scope: !1588, inlinedAt: !2440)
!2449 = !DILocation(line: 139, column: 5, scope: !1588, inlinedAt: !2440)
!2450 = !DILocation(line: 141, column: 12, scope: !1591, inlinedAt: !2440)
!2451 = !DILocation(line: 0, scope: !1591, inlinedAt: !2440)
!2452 = !DILocation(line: 1928, column: 17, scope: !2407)
!2453 = !DILocation(line: 1933, column: 13, scope: !2419)
!2454 = !DILocation(line: 1933, column: 7, scope: !2407)
!2455 = !DILocation(line: 1938, column: 5, scope: !2423)
!2456 = !DILocation(line: 1938, column: 5, scope: !2418)
!2457 = !DILocation(line: 1939, column: 53, scope: !2422)
!2458 = !DILocation(line: 1939, column: 23, scope: !2422)
!2459 = !DILocation(line: 1940, column: 61, scope: !2422)
!2460 = !DILocation(line: 1940, column: 24, scope: !2422)
!2461 = !DILocation(line: 1940, column: 15, scope: !2422)
!2462 = !DILocation(line: 1940, column: 22, scope: !2422)
!2463 = !DILocation(line: 1942, column: 5, scope: !2422)
!2464 = !DILocation(line: 1944, column: 9, scope: !2418)
!2465 = !DILocation(line: 1946, column: 18, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !10, line: 1944, column: 22)
!2467 = distinct !DILexicalBlock(scope: !2418, file: !10, line: 1944, column: 9)
!2468 = !DILocation(line: 1936, column: 10, scope: !2418)
!2469 = !DILocation(line: 1947, column: 18, scope: !2466)
!2470 = !DILocation(line: 1936, column: 15, scope: !2418)
!2471 = !DILocation(line: 1948, column: 5, scope: !2466)
!2472 = !DILocation(line: 0, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !10, line: 1948, column: 12)
!2474 = !DILocation(line: 1953, column: 5, scope: !2418)
!2475 = !DILocation(line: 1954, column: 11, scope: !2418)
!2476 = !DILocation(line: 0, scope: !2418)
!2477 = !DILocation(line: 1927, column: 9, scope: !2407)
!2478 = !DILocation(line: 1957, column: 3, scope: !2407)
!2479 = !DILocation(line: 1958, column: 3, scope: !2407)
!2480 = distinct !DISubprogram(name: "tcp_keepalive", scope: !10, file: !10, line: 2081, type: !1244, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2481)
!2481 = !{!2482, !2483, !2484, !2485}
!2482 = !DILocalVariable(name: "pcb", arg: 1, scope: !2480, file: !10, line: 2081, type: !231)
!2483 = !DILocalVariable(name: "err", scope: !2480, file: !10, line: 2083, type: !226)
!2484 = !DILocalVariable(name: "p", scope: !2480, file: !10, line: 2084, type: !120)
!2485 = !DILocalVariable(name: "optlen", scope: !2480, file: !10, line: 2085, type: !110)
!2486 = !DILocation(line: 2081, column: 31, scope: !2480)
!2487 = !DILocation(line: 2085, column: 8, scope: !2480)
!2488 = !DILocation(line: 2087, column: 3, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !10, line: 2087, column: 3)
!2490 = distinct !DILexicalBlock(scope: !2480, file: !10, line: 2087, column: 3)
!2491 = !DILocation(line: 2087, column: 3, scope: !2490)
!2492 = !DILocation(line: 2087, column: 3, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !10, line: 2087, column: 3)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !10, line: 2087, column: 3)
!2495 = !DILocation(line: 2087, column: 3, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !10, line: 2087, column: 3)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !10, line: 2087, column: 3)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !10, line: 2087, column: 3)
!2499 = !DILocation(line: 2096, column: 63, scope: !2480)
!2500 = !DILocation(line: 2096, column: 71, scope: !2480)
!2501 = !DILocation(line: 2096, column: 47, scope: !2480)
!2502 = !DILocation(line: 1856, column: 41, scope: !1959, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 2096, column: 7, scope: !2480)
!2504 = !DILocation(line: 1856, column: 52, scope: !1959, inlinedAt: !2503)
!2505 = !DILocation(line: 1856, column: 66, scope: !1959, inlinedAt: !2503)
!2506 = !DILocation(line: 1857, column: 31, scope: !1959, inlinedAt: !2503)
!2507 = !DILocation(line: 1863, column: 43, scope: !1959, inlinedAt: !2503)
!2508 = !DILocation(line: 1864, column: 20, scope: !1959, inlinedAt: !2503)
!2509 = !DILocation(line: 1864, column: 37, scope: !1959, inlinedAt: !2503)
!2510 = !DILocation(line: 1865, column: 5, scope: !1959, inlinedAt: !2503)
!2511 = !DILocation(line: 1863, column: 7, scope: !1959, inlinedAt: !2503)
!2512 = !DILocation(line: 1859, column: 16, scope: !1959, inlinedAt: !2503)
!2513 = !DILocation(line: 1866, column: 9, scope: !1979, inlinedAt: !2503)
!2514 = !DILocation(line: 1866, column: 7, scope: !1959, inlinedAt: !2503)
!2515 = !DILocation(line: 1868, column: 36, scope: !1988, inlinedAt: !2503)
!2516 = !DILocation(line: 1868, column: 51, scope: !1988, inlinedAt: !2503)
!2517 = !DILocation(line: 1868, column: 44, scope: !1988, inlinedAt: !2503)
!2518 = !DILocation(line: 1868, column: 10, scope: !1988, inlinedAt: !2503)
!2519 = !DILocation(line: 1868, column: 29, scope: !1988, inlinedAt: !2503)
!2520 = !DILocation(line: 2084, column: 16, scope: !2480)
!2521 = !DILocation(line: 2103, column: 50, scope: !2480)
!2522 = !DILocation(line: 2103, column: 66, scope: !2480)
!2523 = !DILocation(line: 2103, column: 9, scope: !2480)
!2524 = !DILocation(line: 2083, column: 9, scope: !2480)
!2525 = !DILocation(line: 2107, column: 3, scope: !2480)
!2526 = !DILocation(line: 0, scope: !2480)
!2527 = !DILocation(line: 2108, column: 1, scope: !2480)
!2528 = distinct !DISubprogram(name: "tcp_zero_window_probe", scope: !10, file: !10, line: 2119, type: !1244, isLocal: false, isDefinition: true, scopeLine: 2120, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2529)
!2529 = !{!2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2530 = !DILocalVariable(name: "pcb", arg: 1, scope: !2528, file: !10, line: 2119, type: !231)
!2531 = !DILocalVariable(name: "err", scope: !2528, file: !10, line: 2121, type: !226)
!2532 = !DILocalVariable(name: "p", scope: !2528, file: !10, line: 2122, type: !120)
!2533 = !DILocalVariable(name: "tcphdr", scope: !2528, file: !10, line: 2123, type: !173)
!2534 = !DILocalVariable(name: "seg", scope: !2528, file: !10, line: 2124, type: !185)
!2535 = !DILocalVariable(name: "len", scope: !2528, file: !10, line: 2125, type: !103)
!2536 = !DILocalVariable(name: "is_fin", scope: !2528, file: !10, line: 2126, type: !110)
!2537 = !DILocalVariable(name: "snd_nxt", scope: !2528, file: !10, line: 2127, type: !142)
!2538 = !DILocalVariable(name: "optlen", scope: !2528, file: !10, line: 2128, type: !110)
!2539 = !DILocalVariable(name: "d", scope: !2540, file: !10, line: 2172, type: !134)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !10, line: 2170, column: 10)
!2541 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2167, column: 7)
!2542 = !DILocation(line: 2119, column: 39, scope: !2528)
!2543 = !DILocation(line: 2128, column: 8, scope: !2528)
!2544 = !DILocation(line: 2130, column: 3, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !10, line: 2130, column: 3)
!2546 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2130, column: 3)
!2547 = !DILocation(line: 2130, column: 3, scope: !2546)
!2548 = !DILocation(line: 2130, column: 3, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !10, line: 2130, column: 3)
!2550 = distinct !DILexicalBlock(scope: !2545, file: !10, line: 2130, column: 3)
!2551 = !DILocation(line: 2130, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !10, line: 2130, column: 3)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !10, line: 2130, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2549, file: !10, line: 2130, column: 3)
!2555 = !DILocation(line: 2142, column: 14, scope: !2528)
!2556 = !DILocation(line: 2124, column: 19, scope: !2528)
!2557 = !DILocation(line: 2143, column: 11, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2143, column: 7)
!2559 = !DILocation(line: 2143, column: 7, scope: !2528)
!2560 = !DILocation(line: 2152, column: 12, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2152, column: 7)
!2562 = !DILocation(line: 2152, column: 26, scope: !2561)
!2563 = !DILocation(line: 2152, column: 7, scope: !2528)
!2564 = !DILocation(line: 2153, column: 5, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2561, file: !10, line: 2152, column: 34)
!2566 = !DILocation(line: 2154, column: 3, scope: !2565)
!2567 = !DILocation(line: 2156, column: 14, scope: !2528)
!2568 = !DILocation(line: 2156, column: 38, scope: !2528)
!2569 = !DILocation(line: 2156, column: 49, scope: !2528)
!2570 = !DILocation(line: 2156, column: 55, scope: !2528)
!2571 = !DILocation(line: 2156, column: 64, scope: !2528)
!2572 = !DILocation(line: 2156, column: 68, scope: !2528)
!2573 = !DILocation(line: 2158, column: 9, scope: !2528)
!2574 = !DILocation(line: 2125, column: 9, scope: !2528)
!2575 = !DILocation(line: 2160, column: 54, scope: !2528)
!2576 = !DILocation(line: 2160, column: 62, scope: !2528)
!2577 = !DILocation(line: 1856, column: 41, scope: !1959, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 2160, column: 7, scope: !2528)
!2579 = !DILocation(line: 1856, column: 52, scope: !1959, inlinedAt: !2578)
!2580 = !DILocation(line: 1856, column: 66, scope: !1959, inlinedAt: !2578)
!2581 = !DILocation(line: 1857, column: 31, scope: !1959, inlinedAt: !2578)
!2582 = !DILocation(line: 1863, column: 43, scope: !1959, inlinedAt: !2578)
!2583 = !DILocation(line: 1864, column: 20, scope: !1959, inlinedAt: !2578)
!2584 = !DILocation(line: 1864, column: 37, scope: !1959, inlinedAt: !2578)
!2585 = !DILocation(line: 1865, column: 5, scope: !1959, inlinedAt: !2578)
!2586 = !DILocation(line: 1863, column: 7, scope: !1959, inlinedAt: !2578)
!2587 = !DILocation(line: 1859, column: 16, scope: !1959, inlinedAt: !2578)
!2588 = !DILocation(line: 1866, column: 9, scope: !1979, inlinedAt: !2578)
!2589 = !DILocation(line: 1866, column: 7, scope: !1959, inlinedAt: !2578)
!2590 = !DILocation(line: 1868, column: 36, scope: !1988, inlinedAt: !2578)
!2591 = !DILocation(line: 1868, column: 51, scope: !1988, inlinedAt: !2578)
!2592 = !DILocation(line: 1868, column: 44, scope: !1988, inlinedAt: !2578)
!2593 = !DILocation(line: 1868, column: 10, scope: !1988, inlinedAt: !2578)
!2594 = !DILocation(line: 1868, column: 29, scope: !1988, inlinedAt: !2578)
!2595 = !DILocation(line: 2122, column: 16, scope: !2528)
!2596 = !DILocation(line: 2165, column: 33, scope: !2528)
!2597 = !DILocation(line: 2167, column: 7, scope: !2528)
!2598 = !DILocation(line: 2123, column: 19, scope: !2528)
!2599 = !DILocation(line: 2169, column: 5, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2541, file: !10, line: 2167, column: 15)
!2601 = !DILocation(line: 2170, column: 3, scope: !2600)
!2602 = !DILocation(line: 2172, column: 35, scope: !2540)
!2603 = !DILocation(line: 2172, column: 11, scope: !2540)
!2604 = !DILocation(line: 2176, column: 28, scope: !2540)
!2605 = !DILocation(line: 2176, column: 45, scope: !2540)
!2606 = !DILocation(line: 2176, column: 60, scope: !2540)
!2607 = !DILocation(line: 2176, column: 53, scope: !2540)
!2608 = !DILocation(line: 2176, column: 5, scope: !2540)
!2609 = !DILocation(line: 2180, column: 13, scope: !2528)
!2610 = !DILocation(line: 2180, column: 44, scope: !2528)
!2611 = !DILocation(line: 2127, column: 9, scope: !2528)
!2612 = !DILocation(line: 2181, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2181, column: 7)
!2614 = !DILocation(line: 2181, column: 7, scope: !2528)
!2615 = !DILocation(line: 2182, column: 18, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2613, file: !10, line: 2181, column: 42)
!2617 = !DILocation(line: 2183, column: 3, scope: !2616)
!2618 = !DILocation(line: 2186, column: 50, scope: !2528)
!2619 = !DILocation(line: 2186, column: 66, scope: !2528)
!2620 = !DILocation(line: 2186, column: 9, scope: !2528)
!2621 = !DILocation(line: 2121, column: 9, scope: !2528)
!2622 = !DILocation(line: 2191, column: 3, scope: !2528)
!2623 = !DILocation(line: 0, scope: !2528)
!2624 = !DILocation(line: 2192, column: 1, scope: !2528)
