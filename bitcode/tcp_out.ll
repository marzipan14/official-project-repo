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
  switch i32 %28, label %67 [
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
  br label %69, !dbg !445

; <label>:34:                                     ; preds = %29
  %35 = zext i16 %2 to i32, !dbg !448
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !449
  %37 = load i32, i32* %36, align 8, !dbg !449, !tbaa !451
  %38 = icmp ult i32 %37, %35, !dbg !452
  br i1 %38, label %63, label %39, !dbg !453

; <label>:39:                                     ; preds = %34
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !454
  %41 = load i16, i16* %40, align 4, !dbg !454, !tbaa !447
  %42 = icmp ugt i16 %41, 1435, !dbg !456
  br i1 %42, label %43, label %46, !dbg !457

; <label>:43:                                     ; preds = %39
  %44 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !458, !tbaa !460
  %45 = add i16 %44, 1, !dbg !458
  store i16 %45, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !458, !tbaa !460
  br label %63, !dbg !466

; <label>:46:                                     ; preds = %39
  %47 = icmp eq i16 %41, 0, !dbg !467
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !469
  %49 = load %struct.tcp_seg*, %struct.tcp_seg** %48, align 8, !dbg !469, !tbaa !473
  %50 = icmp eq %struct.tcp_seg* %49, null, !dbg !474
  br i1 %47, label %57, label %51, !dbg !478

; <label>:51:                                     ; preds = %46
  br i1 %50, label %52, label %69, !dbg !479

; <label>:52:                                     ; preds = %51
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !479
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !479, !tbaa !480
  %55 = icmp eq %struct.tcp_seg* %54, null, !dbg !479
  br i1 %55, label %56, label %69, !dbg !481

; <label>:56:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !482
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !485
  tail call void @ukplat_terminate(i32 3) #8, !dbg !485
  unreachable, !dbg !485

; <label>:57:                                     ; preds = %46
  br i1 %50, label %58, label %62, !dbg !489

; <label>:58:                                     ; preds = %57
  %59 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !489
  %60 = load %struct.tcp_seg*, %struct.tcp_seg** %59, align 8, !dbg !489, !tbaa !480
  %61 = icmp eq %struct.tcp_seg* %60, null, !dbg !489
  br i1 %61, label %69, label %62, !dbg !490

; <label>:62:                                     ; preds = %58, %57
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !491
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !494
  tail call void @ukplat_terminate(i32 3) #8, !dbg !494
  unreachable, !dbg !494

; <label>:63:                                     ; preds = %34, %43
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !498
  %65 = load i16, i16* %64, align 2, !dbg !498, !tbaa !499
  %66 = or i16 %65, 128, !dbg !498
  store i16 %66, i16* %64, align 2, !dbg !498, !tbaa !499
  br label %67, !dbg !500

; <label>:67:                                     ; preds = %63, %26
  %68 = phi i8 [ -11, %26 ], [ -1, %63 ], !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br label %414

; <label>:69:                                     ; preds = %31, %52, %51, %58
  %70 = phi i16* [ %32, %31 ], [ %40, %52 ], [ %40, %51 ], [ %40, %58 ], !dbg !446
  %71 = phi i16 [ %33, %31 ], [ %41, %52 ], [ %41, %51 ], [ 0, %58 ], !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  %72 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !505
  %73 = load %struct.tcp_seg*, %struct.tcp_seg** %72, align 8, !dbg !505, !tbaa !480
  %74 = icmp eq %struct.tcp_seg* %73, null, !dbg !506
  br i1 %74, label %189, label %75, !dbg !507

; <label>:75:                                     ; preds = %69, %75
  %76 = phi %struct.tcp_seg* [ %78, %75 ], [ %73, %69 ], !dbg !508
  %77 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %76, i64 0, i32 0, !dbg !511
  %78 = load %struct.tcp_seg*, %struct.tcp_seg** %77, align 8, !dbg !511, !tbaa !512
  %79 = icmp eq %struct.tcp_seg* %78, null, !dbg !514
  br i1 %79, label %80, label %75, !dbg !515, !llvm.loop !516

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %76, i64 0, i32 3, !dbg !518
  %82 = load i8, i8* %81, align 2, !dbg !518, !tbaa !519
  %83 = zext i8 %82 to i32, !dbg !518
  %84 = shl nuw nsw i32 %83, 2, !dbg !518
  %85 = and i32 %84, 4, !dbg !518
  %86 = lshr i32 %83, 1, !dbg !518
  %87 = and i32 %86, 4, !dbg !518
  %88 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %76, i64 0, i32 2, !dbg !520
  %89 = load i16, i16* %88, align 8, !dbg !520, !tbaa !523
  %90 = zext i16 %89 to i32, !dbg !520
  %91 = add nuw nsw i32 %87, %90, !dbg !518
  %92 = add nuw nsw i32 %91, %85, !dbg !520
  %93 = icmp ult i32 %22, %92, !dbg !520
  br i1 %93, label %94, label %95, !dbg !524

; <label>:94:                                     ; preds = %80
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !525
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !528
  tail call void @ukplat_terminate(i32 3) #8, !dbg !528
  unreachable, !dbg !528

; <label>:95:                                     ; preds = %80
  %96 = sub nsw i32 %22, %92, !dbg !532
  %97 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !533
  %98 = load i16, i16* %97, align 2, !dbg !533, !tbaa !534
  store i16 %98, i16* %5, align 2, !dbg !535, !tbaa !393
  %99 = zext i16 %98 to i32, !dbg !536
  %100 = icmp eq i16 %98, 0, !dbg !538
  br i1 %100, label %118, label %101, !dbg !539

; <label>:101:                                    ; preds = %95
  %102 = and i32 %96, 65535, !dbg !540
  %103 = icmp ult i32 %102, %99, !dbg !540
  br i1 %103, label %104, label %105, !dbg !544

; <label>:104:                                    ; preds = %101
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !545
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !548
  tail call void @ukplat_terminate(i32 3) #8, !dbg !548
  unreachable, !dbg !548

; <label>:105:                                    ; preds = %101
  %106 = zext i16 %2 to i32, !dbg !552
  %107 = icmp ult i32 %99, %106, !dbg !552
  %108 = select i1 %107, i32 %99, i32 %106, !dbg !552
  %109 = icmp slt i32 %102, %108, !dbg !552
  %110 = select i1 %109, i32 %102, i32 %108, !dbg !552
  %111 = trunc i32 %110 to i16, !dbg !552
  %112 = sub i16 %98, %111, !dbg !553
  store i16 %112, i16* %5, align 2, !dbg !553, !tbaa !393
  %113 = sub nsw i32 %96, %110, !dbg !554
  %114 = icmp eq i16 %112, 0, !dbg !555
  %115 = icmp eq i16 %111, %2, !dbg !555
  %116 = or i1 %115, %114, !dbg !555
  br i1 %116, label %118, label %117, !dbg !555

; <label>:117:                                    ; preds = %105
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !558
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !561
  tail call void @ukplat_terminate(i32 3) #8, !dbg !561
  unreachable, !dbg !561

; <label>:118:                                    ; preds = %95, %105
  %119 = phi i32 [ %113, %105 ], [ %96, %95 ]
  %120 = phi %struct.tcp_seg* [ %76, %105 ], [ null, %95 ]
  %121 = phi i16 [ %111, %105 ], [ 0, %95 ]
  %122 = trunc i32 %119 to i16, !dbg !565
  %123 = zext i16 %121 to i32, !dbg !566
  %124 = zext i16 %2 to i32, !dbg !567
  %125 = icmp ult i16 %121, %2, !dbg !568
  br i1 %125, label %126, label %196, !dbg !569

; <label>:126:                                    ; preds = %118
  %127 = and i32 %119, 65535, !dbg !570
  %128 = icmp eq i16 %122, 0, !dbg !571
  %129 = icmp eq i16 %89, 0, !dbg !572
  %130 = or i1 %129, %128, !dbg !573
  br i1 %130, label %196, label %131, !dbg !573

; <label>:131:                                    ; preds = %126
  %132 = sub nsw i32 %124, %123, !dbg !574
  %133 = icmp sgt i32 %132, %127, !dbg !574
  %134 = select i1 %133, i32 %127, i32 %132, !dbg !574
  %135 = trunc i32 %134 to i16, !dbg !574
  %136 = and i8 %3, 1, !dbg !576
  %137 = icmp eq i8 %136, 0, !dbg !576
  br i1 %137, label %151, label %138, !dbg !577

; <label>:138:                                    ; preds = %131
  %139 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 0, i16 zeroext %135, i16 zeroext %122, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext 1) #7, !dbg !578
  %140 = icmp eq %struct.pbuf* %139, null, !dbg !581
  br i1 %140, label %389, label %141, !dbg !582

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %139, i64 0, i32 1, !dbg !583
  %143 = load i8*, i8** %142, align 8, !dbg !583, !tbaa !584
  %144 = zext i16 %121 to i64, !dbg !583
  %145 = getelementptr inbounds i8, i8* %1, i64 %144, !dbg !583
  %146 = and i32 %134, 65535, !dbg !583
  %147 = zext i32 %146 to i64, !dbg !583
  %148 = call i8* @memcpy(i8* %143, i8* nonnull %145, i64 %147) #9, !dbg !583
  %149 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %139) #9, !dbg !586
  %150 = add i16 %149, %71, !dbg !587
  br label %183, !dbg !588

; <label>:151:                                    ; preds = %131
  %152 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %76, i64 0, i32 1, !dbg !589
  %153 = load %struct.pbuf*, %struct.pbuf** %152, align 8, !dbg !589, !tbaa !591
  br label %154, !dbg !593

; <label>:154:                                    ; preds = %154, %151
  %155 = phi %struct.pbuf* [ %153, %151 ], [ %157, %154 ], !dbg !594
  %156 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %155, i64 0, i32 0, !dbg !596
  %157 = load %struct.pbuf*, %struct.pbuf** %156, align 8, !dbg !596, !tbaa !597
  %158 = icmp eq %struct.pbuf* %157, null, !dbg !598
  br i1 %158, label %159, label %154, !dbg !599, !llvm.loop !600

; <label>:159:                                    ; preds = %154
  %160 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %155, i64 0, i32 4, !dbg !602
  %161 = load i8, i8* %160, align 4, !dbg !602, !tbaa !604
  %162 = icmp ult i8 %161, 64, !dbg !605
  br i1 %162, label %163, label %174, !dbg !606

; <label>:163:                                    ; preds = %159
  %164 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %155, i64 0, i32 1, !dbg !607
  %165 = load i8*, i8** %164, align 8, !dbg !607, !tbaa !584
  %166 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %155, i64 0, i32 3, !dbg !608
  %167 = load i16, i16* %166, align 2, !dbg !608, !tbaa !609
  %168 = zext i16 %167 to i64, !dbg !610
  %169 = getelementptr inbounds i8, i8* %165, i64 %168, !dbg !610
  %170 = icmp eq i8* %169, %1, !dbg !611
  br i1 %170, label %171, label %174, !dbg !612

; <label>:171:                                    ; preds = %163
  %172 = icmp eq i16 %121, 0, !dbg !613
  br i1 %172, label %183, label %173, !dbg !617

; <label>:173:                                    ; preds = %171
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !618
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !621
  tail call void @ukplat_terminate(i32 3) #8, !dbg !621
  unreachable, !dbg !621

; <label>:174:                                    ; preds = %163, %159
  %175 = tail call %struct.pbuf* @pbuf_alloc(i32 0, i16 zeroext %135, i32 1) #9, !dbg !625
  %176 = icmp eq %struct.pbuf* %175, null, !dbg !628
  br i1 %176, label %389, label %177, !dbg !629

; <label>:177:                                    ; preds = %174
  %178 = zext i16 %121 to i64, !dbg !630
  %179 = getelementptr inbounds i8, i8* %1, i64 %178, !dbg !630
  %180 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %175, i64 0, i32 1, !dbg !631
  store i8* %179, i8** %180, align 8, !dbg !632, !tbaa !633
  %181 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %175) #9, !dbg !635
  %182 = add i16 %181, %71, !dbg !636
  br label %183

; <label>:183:                                    ; preds = %177, %171, %141
  %184 = phi i16 [ %121, %141 ], [ 0, %171 ], [ %121, %177 ]
  %185 = phi i16 [ %150, %141 ], [ %71, %171 ], [ %182, %177 ], !dbg !498
  %186 = phi i16 [ 0, %141 ], [ %135, %171 ], [ 0, %177 ], !dbg !637
  %187 = phi %struct.pbuf* [ %139, %141 ], [ null, %171 ], [ %175, %177 ], !dbg !498
  %188 = add i16 %184, %135, !dbg !638
  br label %196

; <label>:189:                                    ; preds = %69
  %190 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !639
  %191 = load i16, i16* %190, align 2, !dbg !639, !tbaa !534
  %192 = icmp eq i16 %191, 0, !dbg !639
  br i1 %192, label %193, label %195, !dbg !643

; <label>:193:                                    ; preds = %189
  %194 = zext i16 %2 to i32, !dbg !644
  br label %196, !dbg !643

; <label>:195:                                    ; preds = %189
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0)) #7, !dbg !645
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !648
  tail call void @ukplat_terminate(i32 3) #8, !dbg !648
  unreachable, !dbg !648

; <label>:196:                                    ; preds = %193, %118, %126, %183
  %197 = phi i32 [ %194, %193 ], [ %124, %118 ], [ %124, %126 ], [ %124, %183 ], !dbg !644
  %198 = phi i16 [ %71, %193 ], [ %71, %118 ], [ %71, %126 ], [ %185, %183 ], !dbg !652
  %199 = phi i16 [ 0, %193 ], [ %121, %118 ], [ %121, %126 ], [ %184, %183 ], !dbg !498
  %200 = phi i16 [ 0, %193 ], [ 0, %118 ], [ 0, %126 ], [ %186, %183 ], !dbg !398
  %201 = phi i16 [ 0, %193 ], [ %121, %118 ], [ %121, %126 ], [ %188, %183 ], !dbg !498
  %202 = phi %struct.tcp_seg* [ null, %193 ], [ %120, %118 ], [ %120, %126 ], [ %76, %183 ], !dbg !498
  %203 = phi %struct.tcp_seg* [ null, %193 ], [ %76, %118 ], [ %76, %126 ], [ %76, %183 ], !dbg !498
  %204 = phi %struct.pbuf* [ null, %193 ], [ null, %118 ], [ null, %126 ], [ %187, %183 ], !dbg !498
  %205 = icmp ult i16 %201, %2, !dbg !653
  br i1 %205, label %206, label %278, !dbg !654

; <label>:206:                                    ; preds = %196
  %207 = and i8 %3, 1
  %208 = icmp eq i8 %207, 0
  %209 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37
  br label %210, !dbg !654

; <label>:210:                                    ; preds = %206, %274
  %211 = phi i16 [ %201, %206 ], [ %276, %274 ]
  %212 = phi %struct.tcp_seg* [ null, %206 ], [ %265, %274 ]
  %213 = phi %struct.tcp_seg* [ null, %206 ], [ %275, %274 ]
  %214 = phi i16 [ %198, %206 ], [ %258, %274 ]
  %215 = zext i16 %211 to i32, !dbg !655
  %216 = sub i16 %2, %211, !dbg !656
  %217 = zext i16 %216 to i32, !dbg !659
  %218 = icmp ugt i32 %22, %217, !dbg !659
  %219 = select i1 %218, i32 %217, i32 %22, !dbg !659
  %220 = trunc i32 %219 to i16, !dbg !659
  br i1 %208, label %239, label %221, !dbg !661

; <label>:221:                                    ; preds = %210
  %222 = icmp eq %struct.tcp_seg* %213, null, !dbg !662
  %223 = zext i1 %222 to i8, !dbg !665
  %224 = call fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32 74, i16 zeroext %220, i16 zeroext %23, i16* nonnull %5, %struct.tcp_pcb* nonnull %0, i8 zeroext %3, i8 zeroext %223) #7, !dbg !666
  %225 = icmp eq %struct.pbuf* %224, null, !dbg !668
  br i1 %225, label %389, label %226, !dbg !669

; <label>:226:                                    ; preds = %221
  %227 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %224, i64 0, i32 3, !dbg !670
  %228 = load i16, i16* %227, align 2, !dbg !670, !tbaa !609
  %229 = zext i16 %228 to i32, !dbg !670
  %230 = icmp sgt i32 %219, %229, !dbg !670
  br i1 %230, label %231, label %232, !dbg !673

; <label>:231:                                    ; preds = %226
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0)) #7, !dbg !674
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !677
  call void @ukplat_terminate(i32 3) #8, !dbg !677
  unreachable, !dbg !677

; <label>:232:                                    ; preds = %226
  %233 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %224, i64 0, i32 1, !dbg !681
  %234 = load i8*, i8** %233, align 8, !dbg !681, !tbaa !584
  %235 = zext i16 %211 to i64, !dbg !681
  %236 = getelementptr inbounds i8, i8* %1, i64 %235, !dbg !681
  %237 = zext i32 %219 to i64, !dbg !681
  %238 = call i8* @memcpy(i8* %234, i8* nonnull %236, i64 %237) #9, !dbg !681
  br label %255, !dbg !682

; <label>:239:                                    ; preds = %210
  %240 = load i16, i16* %5, align 2, !dbg !683, !tbaa !393
  %241 = icmp eq i16 %240, 0, !dbg !683
  br i1 %241, label %243, label %242, !dbg !686

; <label>:242:                                    ; preds = %239
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !687
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !690
  call void @ukplat_terminate(i32 3) #8, !dbg !690
  unreachable, !dbg !690

; <label>:243:                                    ; preds = %239
  %244 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %220, i32 1) #9, !dbg !694
  %245 = icmp eq %struct.pbuf* %244, null, !dbg !697
  br i1 %245, label %389, label %246, !dbg !698

; <label>:246:                                    ; preds = %243
  %247 = zext i16 %211 to i64, !dbg !699
  %248 = getelementptr inbounds i8, i8* %1, i64 %247, !dbg !699
  %249 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %244, i64 0, i32 1, !dbg !700
  store i8* %248, i8** %249, align 8, !dbg !701, !tbaa !633
  %250 = call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext 0, i32 640) #9, !dbg !702
  %251 = icmp eq %struct.pbuf* %250, null, !dbg !704
  br i1 %251, label %252, label %254, !dbg !705

; <label>:252:                                    ; preds = %246
  %253 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %244) #9, !dbg !706
  br label %389, !dbg !708

; <label>:254:                                    ; preds = %246
  call void @pbuf_cat(%struct.pbuf* nonnull %250, %struct.pbuf* nonnull %244) #9, !dbg !709
  br label %255

; <label>:255:                                    ; preds = %254, %232
  %256 = phi %struct.pbuf* [ %224, %232 ], [ %250, %254 ]
  %257 = call zeroext i16 @pbuf_clen(%struct.pbuf* nonnull %256) #9, !dbg !710
  %258 = add i16 %257, %214, !dbg !711
  %259 = icmp ugt i16 %258, 1436, !dbg !712
  br i1 %259, label %260, label %262, !dbg !714

; <label>:260:                                    ; preds = %255
  %261 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %256) #9, !dbg !715
  br label %389, !dbg !717

; <label>:262:                                    ; preds = %255
  %263 = load i32, i32* %209, align 4, !dbg !718, !tbaa !720
  %264 = add i32 %263, %215, !dbg !721
  %265 = call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %256, i8 zeroext 0, i32 %264, i8 zeroext 0) #7, !dbg !722
  %266 = icmp eq %struct.tcp_seg* %265, null, !dbg !723
  br i1 %266, label %389, label %267, !dbg !724

; <label>:267:                                    ; preds = %262
  %268 = icmp eq %struct.tcp_seg* %213, null, !dbg !725
  br i1 %268, label %274, label %269, !dbg !727

; <label>:269:                                    ; preds = %267
  %270 = icmp eq %struct.tcp_seg* %212, null, !dbg !728
  br i1 %270, label %271, label %272, !dbg !732

; <label>:271:                                    ; preds = %269
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !733
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !736
  call void @ukplat_terminate(i32 3) #8, !dbg !736
  unreachable, !dbg !736

; <label>:272:                                    ; preds = %269
  %273 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %212, i64 0, i32 0, !dbg !740
  store %struct.tcp_seg* %265, %struct.tcp_seg** %273, align 8, !dbg !741, !tbaa !512
  br label %274

; <label>:274:                                    ; preds = %272, %267
  %275 = phi %struct.tcp_seg* [ %213, %272 ], [ %265, %267 ], !dbg !498
  %276 = add i16 %211, %220, !dbg !742
  %277 = icmp ult i16 %276, %2, !dbg !653
  br i1 %277, label %210, label %278, !dbg !654

; <label>:278:                                    ; preds = %274, %196
  %279 = phi i16 [ %198, %196 ], [ %258, %274 ], !dbg !652
  %280 = phi %struct.tcp_seg* [ null, %196 ], [ %275, %274 ], !dbg !388
  %281 = phi %struct.tcp_seg* [ %202, %196 ], [ %265, %274 ], !dbg !743
  %282 = icmp eq i16 %199, 0, !dbg !744
  br i1 %282, label %315, label %283, !dbg !745

; <label>:283:                                    ; preds = %278
  %284 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 1, !dbg !746
  %285 = load %struct.pbuf*, %struct.pbuf** %284, align 8, !dbg !749, !tbaa !751
  %286 = icmp eq %struct.pbuf* %285, null, !dbg !752
  br i1 %286, label %311, label %287, !dbg !752

; <label>:287:                                    ; preds = %283
  %288 = zext i16 %199 to i64
  br label %289, !dbg !752

; <label>:289:                                    ; preds = %287, %308
  %290 = phi %struct.pbuf* [ %285, %287 ], [ %309, %308 ]
  %291 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %290, i64 0, i32 2, !dbg !753
  %292 = load i16, i16* %291, align 8, !dbg !755, !tbaa !756
  %293 = add i16 %292, %199, !dbg !755
  store i16 %293, i16* %291, align 8, !dbg !755, !tbaa !756
  %294 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %290, i64 0, i32 0, !dbg !757
  %295 = load %struct.pbuf*, %struct.pbuf** %294, align 8, !dbg !757, !tbaa !597
  %296 = icmp eq %struct.pbuf* %295, null, !dbg !759
  br i1 %296, label %297, label %308, !dbg !760

; <label>:297:                                    ; preds = %289
  %298 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %290, i64 0, i32 1, !dbg !761
  %299 = load i8*, i8** %298, align 8, !dbg !761, !tbaa !584
  %300 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %290, i64 0, i32 3, !dbg !761
  %301 = load i16, i16* %300, align 2, !dbg !761, !tbaa !609
  %302 = zext i16 %301 to i64, !dbg !761
  %303 = getelementptr inbounds i8, i8* %299, i64 %302, !dbg !761
  %304 = call i8* @memcpy(i8* %303, i8* nonnull %1, i64 %288) #9, !dbg !761
  %305 = load i16, i16* %300, align 2, !dbg !763, !tbaa !609
  %306 = add i16 %305, %199, !dbg !763
  store i16 %306, i16* %300, align 2, !dbg !763, !tbaa !609
  %307 = load %struct.pbuf*, %struct.pbuf** %294, align 8, !dbg !749, !tbaa !751
  br label %308, !dbg !764

; <label>:308:                                    ; preds = %289, %297
  %309 = phi %struct.pbuf* [ %295, %289 ], [ %307, %297 ], !dbg !749
  %310 = icmp eq %struct.pbuf* %309, null, !dbg !752
  br i1 %310, label %311, label %289, !dbg !752, !llvm.loop !765

; <label>:311:                                    ; preds = %308, %283
  %312 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 2, !dbg !767
  %313 = load i16, i16* %312, align 8, !dbg !768, !tbaa !523
  %314 = add i16 %313, %199, !dbg !768
  store i16 %314, i16* %312, align 8, !dbg !768, !tbaa !523
  br label %315, !dbg !769

; <label>:315:                                    ; preds = %278, %311
  %316 = load i16, i16* %5, align 2, !dbg !770, !tbaa !393
  %317 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !771
  store i16 %316, i16* %317, align 2, !dbg !772, !tbaa !534
  %318 = icmp eq %struct.pbuf* %204, null, !dbg !773
  br i1 %318, label %327, label %319, !dbg !774

; <label>:319:                                    ; preds = %315
  %320 = icmp eq %struct.tcp_seg* %203, null, !dbg !775
  br i1 %320, label %321, label %322, !dbg !779

; <label>:321:                                    ; preds = %319
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !780
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !783
  call void @ukplat_terminate(i32 3) #8, !dbg !783
  unreachable, !dbg !783

; <label>:322:                                    ; preds = %319
  %323 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 1, !dbg !787
  %324 = load %struct.pbuf*, %struct.pbuf** %323, align 8, !dbg !787, !tbaa !591
  call void @pbuf_cat(%struct.pbuf* %324, %struct.pbuf* nonnull %204) #9, !dbg !788
  %325 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %204, i64 0, i32 2, !dbg !789
  %326 = load i16, i16* %325, align 8, !dbg !789, !tbaa !756
  br label %349, !dbg !790

; <label>:327:                                    ; preds = %315
  %328 = icmp eq i16 %200, 0, !dbg !791
  %329 = icmp eq %struct.tcp_seg* %203, null, !dbg !792
  br i1 %328, label %348, label %330, !dbg !795

; <label>:330:                                    ; preds = %327
  br i1 %329, label %335, label %331, !dbg !796

; <label>:331:                                    ; preds = %330
  %332 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 1, !dbg !796
  %333 = load %struct.pbuf*, %struct.pbuf** %332, align 8, !dbg !796, !tbaa !591
  %334 = icmp eq %struct.pbuf* %333, null, !dbg !796
  br i1 %334, label %335, label %336, !dbg !797

; <label>:335:                                    ; preds = %331, %330
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0)) #7, !dbg !798
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !801
  call void @ukplat_terminate(i32 3) #8, !dbg !801
  unreachable, !dbg !801

; <label>:336:                                    ; preds = %331, %336
  %337 = phi %struct.pbuf* [ %339, %336 ], [ %333, %331 ], !dbg !805
  %338 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %337, i64 0, i32 0, !dbg !809
  %339 = load %struct.pbuf*, %struct.pbuf** %338, align 8, !dbg !809, !tbaa !597
  %340 = icmp eq %struct.pbuf* %339, null, !dbg !810
  %341 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %337, i64 0, i32 2, !dbg !811
  %342 = load i16, i16* %341, align 8, !dbg !811, !tbaa !756
  %343 = add i16 %342, %200, !dbg !811
  store i16 %343, i16* %341, align 8, !dbg !811, !tbaa !756
  br i1 %340, label %344, label %336, !dbg !812, !llvm.loop !813

; <label>:344:                                    ; preds = %336
  %345 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %337, i64 0, i32 3, !dbg !815
  %346 = load i16, i16* %345, align 2, !dbg !816, !tbaa !609
  %347 = add i16 %346, %200, !dbg !816
  store i16 %347, i16* %345, align 2, !dbg !816, !tbaa !609
  br label %349, !dbg !817

; <label>:348:                                    ; preds = %327
  br i1 %329, label %356, label %354, !dbg !818

; <label>:349:                                    ; preds = %344, %322
  %350 = phi i16 [ %326, %322 ], [ %200, %344 ]
  %351 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 2, !dbg !819
  %352 = load i16, i16* %351, align 8, !dbg !811, !tbaa !523
  %353 = add i16 %352, %350, !dbg !811
  store i16 %353, i16* %351, align 8, !dbg !811, !tbaa !523
  br label %354, !dbg !820

; <label>:354:                                    ; preds = %349, %348
  %355 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %203, i64 0, i32 0, !dbg !820
  br label %356

; <label>:356:                                    ; preds = %348, %354
  %357 = phi %struct.tcp_seg** [ %355, %354 ], [ %72, %348 ]
  store %struct.tcp_seg* %280, %struct.tcp_seg** %357, align 8, !dbg !823, !tbaa !751
  %358 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !825
  %359 = load i32, i32* %358, align 4, !dbg !826, !tbaa !720
  %360 = add i32 %359, %197, !dbg !826
  store i32 %360, i32* %358, align 4, !dbg !826, !tbaa !720
  %361 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 40, !dbg !827
  %362 = load i32, i32* %361, align 8, !dbg !828, !tbaa !451
  %363 = sub i32 %362, %197, !dbg !828
  store i32 %363, i32* %361, align 8, !dbg !828, !tbaa !451
  store i16 %279, i16* %70, align 4, !dbg !829, !tbaa !447
  %364 = icmp eq i16 %279, 0, !dbg !830
  br i1 %364, label %373, label %365, !dbg !832

; <label>:365:                                    ; preds = %356
  %366 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !833
  %367 = load %struct.tcp_seg*, %struct.tcp_seg** %366, align 8, !dbg !833, !tbaa !473
  %368 = icmp eq %struct.tcp_seg* %367, null, !dbg !833
  br i1 %368, label %369, label %373, !dbg !833

; <label>:369:                                    ; preds = %365
  %370 = load %struct.tcp_seg*, %struct.tcp_seg** %72, align 8, !dbg !833, !tbaa !480
  %371 = icmp eq %struct.tcp_seg* %370, null, !dbg !833
  br i1 %371, label %372, label %373, !dbg !837

; <label>:372:                                    ; preds = %369
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !838
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !841
  call void @ukplat_terminate(i32 3) #8, !dbg !841
  unreachable, !dbg !841

; <label>:373:                                    ; preds = %369, %365, %356
  %374 = icmp eq %struct.tcp_seg* %281, null, !dbg !845
  br i1 %374, label %414, label %375, !dbg !847

; <label>:375:                                    ; preds = %373
  %376 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %281, i64 0, i32 4, !dbg !848
  %377 = load %struct.tcp_hdr*, %struct.tcp_hdr** %376, align 8, !dbg !848, !tbaa !849
  %378 = icmp ne %struct.tcp_hdr* %377, null, !dbg !850
  %379 = and i8 %3, 2, !dbg !851
  %380 = icmp eq i8 %379, 0, !dbg !852
  %381 = and i1 %380, %378, !dbg !853
  br i1 %381, label %382, label %414, !dbg !853

; <label>:382:                                    ; preds = %375
  %383 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %377, i64 0, i32 4, !dbg !854
  %384 = load i16, i16* %383, align 1, !dbg !854, !tbaa !856
  %385 = call zeroext i16 @lwip_htons(i16 zeroext 8) #9, !dbg !854
  %386 = or i16 %385, %384, !dbg !854
  %387 = load %struct.tcp_hdr*, %struct.tcp_hdr** %376, align 8, !dbg !854, !tbaa !849
  %388 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %387, i64 0, i32 4, !dbg !854
  store i16 %386, i16* %388, align 1, !dbg !854, !tbaa !856
  br label %414, !dbg !858

; <label>:389:                                    ; preds = %243, %262, %221, %252, %260, %174, %138
  %390 = phi %struct.tcp_seg* [ null, %138 ], [ null, %174 ], [ %213, %260 ], [ %213, %252 ], [ %213, %221 ], [ %213, %262 ], [ %213, %243 ], !dbg !388
  %391 = phi %struct.pbuf* [ null, %138 ], [ null, %174 ], [ %204, %260 ], [ %204, %252 ], [ %204, %221 ], [ %204, %262 ], [ %204, %243 ], !dbg !859
  %392 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !860
  %393 = load i16, i16* %392, align 2, !dbg !860, !tbaa !499
  %394 = or i16 %393, 128, !dbg !860
  store i16 %394, i16* %392, align 2, !dbg !860, !tbaa !499
  %395 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !862, !tbaa !460
  %396 = add i16 %395, 1, !dbg !862
  store i16 %396, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !862, !tbaa !460
  %397 = icmp eq %struct.pbuf* %391, null, !dbg !863
  br i1 %397, label %400, label %398, !dbg !865

; <label>:398:                                    ; preds = %389
  %399 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %391) #9, !dbg !866
  br label %400, !dbg !868

; <label>:400:                                    ; preds = %389, %398
  %401 = icmp eq %struct.tcp_seg* %390, null, !dbg !869
  br i1 %401, label %403, label %402, !dbg !871

; <label>:402:                                    ; preds = %400
  call void @tcp_segs_free(%struct.tcp_seg* nonnull %390) #9, !dbg !872
  br label %403, !dbg !874

; <label>:403:                                    ; preds = %400, %402
  %404 = load i16, i16* %70, align 4, !dbg !875, !tbaa !447
  %405 = icmp eq i16 %404, 0, !dbg !877
  br i1 %405, label %414, label %406, !dbg !878

; <label>:406:                                    ; preds = %403
  %407 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !879
  %408 = load %struct.tcp_seg*, %struct.tcp_seg** %407, align 8, !dbg !879, !tbaa !473
  %409 = icmp eq %struct.tcp_seg* %408, null, !dbg !879
  br i1 %409, label %410, label %414, !dbg !879

; <label>:410:                                    ; preds = %406
  %411 = load %struct.tcp_seg*, %struct.tcp_seg** %72, align 8, !dbg !879, !tbaa !480
  %412 = icmp eq %struct.tcp_seg* %411, null, !dbg !879
  br i1 %412, label %413, label %414, !dbg !883

; <label>:413:                                    ; preds = %410
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !884
  call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !887
  call void @ukplat_terminate(i32 3) #8, !dbg !887
  unreachable, !dbg !887

; <label>:414:                                    ; preds = %67, %403, %406, %410, %382, %373, %375
  %415 = phi i8 [ %68, %67 ], [ 0, %375 ], [ 0, %373 ], [ 0, %382 ], [ -1, %410 ], [ -1, %406 ], [ -1, %403 ]
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %6) #6, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !891
  ret i8 %415, !dbg !891
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !893
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !893
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !895
  call void @llvm.va_start(i8* nonnull %3), !dbg !895
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.40, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !896
  call void @llvm.va_end(i8* nonnull %3), !dbg !899
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  ret void, !dbg !900
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_pbuf_prealloc(i32, i16 zeroext, i16 zeroext, i16*, %struct.tcp_pcb* readonly, i8 zeroext, i8 zeroext) unnamed_addr #0 !dbg !901 {
  %8 = icmp eq i16* %3, null, !dbg !926
  br i1 %8, label %9, label %10, !dbg !929

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !930
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !933
  tail call void @ukplat_terminate(i32 3) #8, !dbg !933
  unreachable, !dbg !933

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.tcp_pcb* %4, null, !dbg !937
  br i1 %11, label %12, label %13, !dbg !940

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0)) #7, !dbg !941
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !944
  tail call void @ukplat_terminate(i32 3) #8, !dbg !944
  unreachable, !dbg !944

; <label>:13:                                     ; preds = %10
  %14 = zext i16 %1 to i32, !dbg !948
  %15 = zext i16 %2 to i32, !dbg !950
  %16 = icmp ult i16 %1, %2, !dbg !951
  br i1 %16, label %17, label %40, !dbg !952

; <label>:17:                                     ; preds = %13
  %18 = and i8 %5, 2, !dbg !953
  %19 = icmp eq i8 %18, 0, !dbg !953
  br i1 %19, label %20, label %35, !dbg !956

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !957
  %22 = load i16, i16* %21, align 2, !dbg !957, !tbaa !499
  %23 = and i16 %22, 64, !dbg !958
  %24 = icmp eq i16 %23, 0, !dbg !958
  br i1 %24, label %25, label %40, !dbg !959

; <label>:25:                                     ; preds = %20
  %26 = icmp eq i8 %6, 0, !dbg !960
  br i1 %26, label %35, label %27, !dbg !961

; <label>:27:                                     ; preds = %25
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 44, !dbg !962
  %29 = load %struct.tcp_seg*, %struct.tcp_seg** %28, align 8, !dbg !962, !tbaa !480
  %30 = icmp eq %struct.tcp_seg* %29, null, !dbg !963
  br i1 %30, label %31, label %35, !dbg !964

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 45, !dbg !965
  %33 = load %struct.tcp_seg*, %struct.tcp_seg** %32, align 8, !dbg !965, !tbaa !473
  %34 = icmp eq %struct.tcp_seg* %33, null, !dbg !966
  br i1 %34, label %40, label %35, !dbg !967

; <label>:35:                                     ; preds = %31, %27, %25, %17
  %36 = add nuw nsw i32 %14, 1460, !dbg !968
  %37 = icmp ugt i32 %36, %15, !dbg !968
  %38 = select i1 %37, i32 %15, i32 %36, !dbg !968
  %39 = trunc i32 %38 to i16, !dbg !968
  br label %40, !dbg !970

; <label>:40:                                     ; preds = %31, %20, %35, %13
  %41 = phi i16 [ %39, %35 ], [ %1, %20 ], [ %1, %31 ], [ %1, %13 ], !dbg !971
  %42 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %41, i32 640) #9, !dbg !972
  %43 = icmp eq %struct.pbuf* %42, null, !dbg !974
  br i1 %43, label %54, label %44, !dbg !976

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 0, !dbg !977
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !977, !tbaa !597
  %47 = icmp eq %struct.pbuf* %46, null, !dbg !977
  br i1 %47, label %49, label %48, !dbg !980

; <label>:48:                                     ; preds = %44
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0)) #7, !dbg !981
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !984
  tail call void @ukplat_terminate(i32 3) #8, !dbg !984
  unreachable, !dbg !984

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 3, !dbg !988
  %51 = load i16, i16* %50, align 2, !dbg !988, !tbaa !609
  %52 = sub i16 %51, %1, !dbg !989
  store i16 %52, i16* %3, align 2, !dbg !990, !tbaa !393
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %42, i64 0, i32 2, !dbg !991
  store i16 %1, i16* %53, align 8, !dbg !992, !tbaa !756
  store i16 %1, i16* %50, align 2, !dbg !993, !tbaa !609
  br label %54, !dbg !994

; <label>:54:                                     ; preds = %40, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  ret %struct.pbuf* %42, !dbg !995
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
define internal fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, i8 zeroext, i32, i8 zeroext) unnamed_addr #0 !dbg !996 {
  %6 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1012
  br i1 %6, label %7, label %8, !dbg !1015

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0)) #7, !dbg !1016
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1019
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1019
  unreachable, !dbg !1019

; <label>:8:                                      ; preds = %5
  %9 = icmp eq %struct.pbuf* %1, null, !dbg !1023
  br i1 %9, label %10, label %11, !dbg !1026

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i64 0, i64 0)) #7, !dbg !1027
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1030
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1030
  unreachable, !dbg !1030

; <label>:11:                                     ; preds = %8
  %12 = tail call i8* @memp_malloc(i32 3) #9, !dbg !1034
  %13 = bitcast i8* %12 to %struct.tcp_seg*, !dbg !1036
  %14 = icmp eq i8* %12, null, !dbg !1038
  br i1 %14, label %15, label %17, !dbg !1039

; <label>:15:                                     ; preds = %11
  %16 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !1040
  br label %72, !dbg !1042

; <label>:17:                                     ; preds = %11
  %18 = shl i8 %4, 2, !dbg !1043
  %19 = and i8 %18, 4, !dbg !1043
  %20 = lshr i8 %4, 1, !dbg !1043
  %21 = and i8 %20, 4, !dbg !1043
  %22 = add nuw nsw i8 %19, %21, !dbg !1043
  %23 = getelementptr inbounds i8, i8* %12, i64 18, !dbg !1045
  store i8 %4, i8* %23, align 2, !dbg !1046, !tbaa !519
  %24 = bitcast i8* %12 to %struct.tcp_seg**, !dbg !1047
  store %struct.tcp_seg* null, %struct.tcp_seg** %24, align 8, !dbg !1048, !tbaa !512
  %25 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !1049
  %26 = bitcast i8* %25 to %struct.pbuf**, !dbg !1049
  store %struct.pbuf* %1, %struct.pbuf** %26, align 8, !dbg !1050, !tbaa !591
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1051
  %28 = load i16, i16* %27, align 8, !dbg !1051, !tbaa !756
  %29 = zext i16 %28 to i32, !dbg !1051
  %30 = zext i8 %22 to i32, !dbg !1051
  %31 = icmp ult i32 %29, %30, !dbg !1051
  br i1 %31, label %32, label %33, !dbg !1054

; <label>:32:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.49, i64 0, i64 0)) #7, !dbg !1055
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1058
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1058
  unreachable, !dbg !1058

; <label>:33:                                     ; preds = %17
  %34 = zext i8 %22 to i16, !dbg !1062
  %35 = sub i16 %28, %34, !dbg !1062
  %36 = getelementptr inbounds i8, i8* %12, i64 16, !dbg !1063
  %37 = bitcast i8* %36 to i16*, !dbg !1063
  store i16 %35, i16* %37, align 8, !dbg !1064, !tbaa !523
  %38 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %1, i64 20) #9, !dbg !1065
  %39 = icmp eq i8 %38, 0, !dbg !1065
  br i1 %39, label %43, label %40, !dbg !1067

; <label>:40:                                     ; preds = %33
  %41 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1068, !tbaa !1070
  %42 = add i16 %41, 1, !dbg !1068
  store i16 %42, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 10), align 2, !dbg !1068, !tbaa !1070
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %13) #9, !dbg !1071
  br label %72, !dbg !1072

; <label>:43:                                     ; preds = %33
  %44 = load %struct.pbuf*, %struct.pbuf** %26, align 8, !dbg !1073, !tbaa !591
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i64 0, i32 1, !dbg !1074
  %46 = bitcast i8** %45 to i64*, !dbg !1074
  %47 = load i64, i64* %46, align 8, !dbg !1074, !tbaa !584
  %48 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !1075
  %49 = bitcast i8* %48 to %struct.tcp_hdr**, !dbg !1075
  %50 = bitcast i8* %48 to i64*, !dbg !1076
  store i64 %47, i64* %50, align 8, !dbg !1076, !tbaa !849
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1077
  %52 = load i16, i16* %51, align 2, !dbg !1077, !tbaa !1078
  %53 = tail call zeroext i16 @lwip_htons(i16 zeroext %52) #9, !dbg !1079
  %54 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1080, !tbaa !849
  %55 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %54, i64 0, i32 0, !dbg !1081
  store i16 %53, i16* %55, align 1, !dbg !1082, !tbaa !1083
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1084
  %57 = load i16, i16* %56, align 8, !dbg !1084, !tbaa !1085
  %58 = tail call zeroext i16 @lwip_htons(i16 zeroext %57) #9, !dbg !1086
  %59 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1087, !tbaa !849
  %60 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %59, i64 0, i32 1, !dbg !1088
  store i16 %58, i16* %60, align 1, !dbg !1089, !tbaa !1090
  %61 = tail call i32 @lwip_htonl(i32 %3) #9, !dbg !1091
  %62 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1092, !tbaa !849
  %63 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %62, i64 0, i32 2, !dbg !1093
  store i32 %61, i32* %63, align 1, !dbg !1094, !tbaa !1095
  %64 = shl nuw nsw i16 %34, 10, !dbg !1096
  %65 = add nuw i16 %64, 20480, !dbg !1096
  %66 = zext i8 %2 to i16, !dbg !1096
  %67 = or i16 %65, %66, !dbg !1096
  %68 = tail call zeroext i16 @lwip_htons(i16 zeroext %67) #9, !dbg !1096
  %69 = load %struct.tcp_hdr*, %struct.tcp_hdr** %49, align 8, !dbg !1096, !tbaa !849
  %70 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 4, !dbg !1096
  store i16 %68, i16* %70, align 1, !dbg !1096, !tbaa !856
  %71 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %69, i64 0, i32 7, !dbg !1097
  store i16 0, i16* %71, align 1, !dbg !1098, !tbaa !1099
  br label %72, !dbg !1100

; <label>:72:                                     ; preds = %43, %40, %15
  %73 = phi %struct.tcp_seg* [ null, %15 ], [ null, %40 ], [ %13, %43 ], !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  ret %struct.tcp_seg* %73, !dbg !1102
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !1103 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1121
  br i1 %3, label %4, label %5, !dbg !1124

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1125
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1128
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1128
  unreachable, !dbg !1128

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1132
  %7 = load %struct.tcp_seg*, %struct.tcp_seg** %6, align 8, !dbg !1132, !tbaa !480
  %8 = icmp eq %struct.tcp_seg* %7, null, !dbg !1133
  br i1 %8, label %116, label %9, !dbg !1135

; <label>:9:                                      ; preds = %5
  %10 = zext i16 %1 to i32, !dbg !1136
  %11 = icmp eq i16 %1, 0, !dbg !1138
  br i1 %11, label %12, label %13, !dbg !1139

; <label>:12:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !1140
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1146
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1146
  unreachable, !dbg !1146

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 2, !dbg !1150
  %15 = load i16, i16* %14, align 8, !dbg !1150, !tbaa !523
  %16 = icmp ugt i16 %15, %1, !dbg !1152
  br i1 %16, label %17, label %116, !dbg !1153

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !1154
  %19 = load i16, i16* %18, align 2, !dbg !1154, !tbaa !411
  %20 = icmp ult i16 %19, %1, !dbg !1154
  br i1 %20, label %21, label %22, !dbg !1157

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)) #7, !dbg !1158
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1161
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1161
  unreachable, !dbg !1161

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 3, !dbg !1165
  %24 = load i8, i8* %23, align 2, !dbg !1165, !tbaa !519
  %25 = shl i8 %24, 2, !dbg !1167
  %26 = and i8 %25, 4, !dbg !1167
  %27 = lshr i8 %24, 1, !dbg !1167
  %28 = and i8 %27, 4, !dbg !1167
  %29 = add nuw nsw i8 %26, %28, !dbg !1167
  %30 = sub i16 %15, %1, !dbg !1169
  %31 = zext i8 %29 to i16, !dbg !1171
  %32 = add i16 %30, %31, !dbg !1171
  %33 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %32, i32 640) #9, !dbg !1172
  %34 = icmp eq %struct.pbuf* %33, null, !dbg !1173
  br i1 %34, label %109, label %35, !dbg !1175

; <label>:35:                                     ; preds = %22
  %36 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 1, !dbg !1176
  %37 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1176, !tbaa !591
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 2, !dbg !1177
  %39 = load i16, i16* %38, align 8, !dbg !1177, !tbaa !756
  %40 = load i16, i16* %14, align 8, !dbg !1178, !tbaa !523
  %41 = add i16 %39, %1, !dbg !1179
  %42 = sub i16 %41, %40, !dbg !1180
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %33, i64 0, i32 1, !dbg !1182
  %44 = load i8*, i8** %43, align 8, !dbg !1182, !tbaa !584
  %45 = zext i8 %29 to i64, !dbg !1184
  %46 = getelementptr inbounds i8, i8* %44, i64 %45, !dbg !1184
  %47 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %37, i8* %46, i16 zeroext %30, i16 zeroext %42) #9, !dbg !1185
  %48 = icmp eq i16 %47, %30, !dbg !1186
  br i1 %48, label %49, label %112, !dbg !1187

; <label>:49:                                     ; preds = %35
  %50 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 4, !dbg !1188
  %51 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1188, !tbaa !849
  %52 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %51, i64 0, i32 4, !dbg !1188
  %53 = load i16, i16* %52, align 1, !dbg !1188, !tbaa !856
  %54 = tail call zeroext i16 @lwip_htons(i16 zeroext %53) #9, !dbg !1188
  %55 = trunc i16 %54 to i8, !dbg !1188
  %56 = and i8 %55, 8, !dbg !1191
  %57 = xor i8 %56, 63, !dbg !1193
  %58 = and i8 %57, %55, !dbg !1193
  %59 = and i8 %55, 9, !dbg !1194
  %60 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1195, !tbaa !849
  %61 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %60, i64 0, i32 2, !dbg !1195
  %62 = load i32, i32* %61, align 1, !dbg !1195, !tbaa !1095
  %63 = tail call i32 @lwip_htonl(i32 %62) #9, !dbg !1195
  %64 = add i32 %63, %10, !dbg !1196
  %65 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %33, i8 zeroext %59, i32 %64, i8 zeroext %24) #7, !dbg !1197
  %66 = icmp eq %struct.tcp_seg* %65, null, !dbg !1198
  br i1 %66, label %112, label %67, !dbg !1200

; <label>:67:                                     ; preds = %49
  %68 = and i8 %55, 1, !dbg !1201
  %69 = icmp eq i8 %68, 0, !dbg !1201
  %70 = and i8 %58, 62, !dbg !1203
  %71 = select i1 %69, i8 %58, i8 %70, !dbg !1194
  %72 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1205, !tbaa !591
  %73 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %72) #9, !dbg !1206
  %74 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1207
  %75 = load i16, i16* %74, align 4, !dbg !1208, !tbaa !447
  %76 = sub i16 %75, %73, !dbg !1208
  store i16 %76, i16* %74, align 4, !dbg !1208, !tbaa !447
  %77 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1209, !tbaa !591
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %77, i64 0, i32 2, !dbg !1210
  %79 = load i16, i16* %78, align 8, !dbg !1210, !tbaa !756
  %80 = sub i16 %79, %30, !dbg !1211
  tail call void @pbuf_realloc(%struct.pbuf* %77, i16 zeroext %80) #9, !dbg !1212
  %81 = load i16, i16* %14, align 8, !dbg !1213, !tbaa !523
  %82 = sub i16 %81, %30, !dbg !1213
  store i16 %82, i16* %14, align 8, !dbg !1213, !tbaa !523
  %83 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1214, !tbaa !849
  %84 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %83, i64 0, i32 4, !dbg !1214
  %85 = load i16, i16* %84, align 1, !dbg !1214, !tbaa !856
  %86 = zext i8 %71 to i16, !dbg !1214
  %87 = tail call zeroext i16 @lwip_htons(i16 zeroext %86) #9, !dbg !1214
  %88 = or i16 %87, %85, !dbg !1214
  %89 = load %struct.tcp_hdr*, %struct.tcp_hdr** %50, align 8, !dbg !1214, !tbaa !849
  %90 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %89, i64 0, i32 4, !dbg !1214
  store i16 %88, i16* %90, align 1, !dbg !1214, !tbaa !856
  %91 = load %struct.pbuf*, %struct.pbuf** %36, align 8, !dbg !1215, !tbaa !591
  %92 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %91) #9, !dbg !1216
  %93 = load i16, i16* %74, align 4, !dbg !1217, !tbaa !447
  %94 = add i16 %93, %92, !dbg !1217
  store i16 %94, i16* %74, align 4, !dbg !1217, !tbaa !447
  %95 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %65, i64 0, i32 1, !dbg !1218
  %96 = load %struct.pbuf*, %struct.pbuf** %95, align 8, !dbg !1218, !tbaa !591
  %97 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %96) #9, !dbg !1219
  %98 = load i16, i16* %74, align 4, !dbg !1220, !tbaa !447
  %99 = add i16 %98, %97, !dbg !1220
  store i16 %99, i16* %74, align 4, !dbg !1220, !tbaa !447
  %100 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %7, i64 0, i32 0, !dbg !1221
  %101 = bitcast %struct.tcp_seg* %7 to i64*, !dbg !1221
  %102 = load i64, i64* %101, align 8, !dbg !1221, !tbaa !512
  %103 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %65, i64 0, i32 0, !dbg !1222
  %104 = bitcast %struct.tcp_seg* %65 to i64*, !dbg !1223
  store i64 %102, i64* %104, align 8, !dbg !1223, !tbaa !512
  store %struct.tcp_seg* %65, %struct.tcp_seg** %100, align 8, !dbg !1224, !tbaa !512
  %105 = load %struct.tcp_seg*, %struct.tcp_seg** %103, align 8, !dbg !1225, !tbaa !512
  %106 = icmp eq %struct.tcp_seg* %105, null, !dbg !1227
  br i1 %106, label %107, label %116, !dbg !1228

; <label>:107:                                    ; preds = %67
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1229
  store i16 0, i16* %108, align 2, !dbg !1231, !tbaa !534
  br label %116, !dbg !1232

; <label>:109:                                    ; preds = %22
  %110 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1233, !tbaa !460
  %111 = add i16 %110, 1, !dbg !1233
  store i16 %111, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1233, !tbaa !460
  br label %116

; <label>:112:                                    ; preds = %49, %35
  %113 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1233, !tbaa !460
  %114 = add i16 %113, 1, !dbg !1233
  store i16 %114, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1233, !tbaa !460
  %115 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %33) #9, !dbg !1234
  br label %116, !dbg !1237

; <label>:116:                                    ; preds = %109, %112, %67, %107, %13, %5
  %117 = phi i8 [ -1, %5 ], [ 0, %13 ], [ 0, %107 ], [ 0, %67 ], [ -1, %109 ], [ -1, %112 ], !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  ret i8 %117, !dbg !1239
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_fin(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1240 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1249
  br i1 %2, label %3, label %4, !dbg !1252

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0)) #7, !dbg !1253
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1256
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1256
  unreachable, !dbg !1256

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1260
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1260, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !1261
  br i1 %7, label %32, label %8, !dbg !1262

; <label>:8:                                      ; preds = %4, %8
  %9 = phi %struct.tcp_seg* [ %11, %8 ], [ %6, %4 ], !dbg !1263
  %10 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %9, i64 0, i32 0, !dbg !1267
  %11 = load %struct.tcp_seg*, %struct.tcp_seg** %10, align 8, !dbg !1267, !tbaa !512
  %12 = icmp eq %struct.tcp_seg* %11, null, !dbg !1268
  br i1 %12, label %13, label %8, !dbg !1269, !llvm.loop !1270

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %9, i64 0, i32 4, !dbg !1272
  %15 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1272, !tbaa !849
  %16 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %15, i64 0, i32 4, !dbg !1272
  %17 = load i16, i16* %16, align 1, !dbg !1272, !tbaa !856
  %18 = tail call zeroext i16 @lwip_htons(i16 zeroext %17) #9, !dbg !1272
  %19 = and i16 %18, 7, !dbg !1274
  %20 = icmp eq i16 %19, 0, !dbg !1275
  br i1 %20, label %21, label %32, !dbg !1276

; <label>:21:                                     ; preds = %13
  %22 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1277, !tbaa !849
  %23 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %22, i64 0, i32 4, !dbg !1277
  %24 = load i16, i16* %23, align 1, !dbg !1277, !tbaa !856
  %25 = tail call zeroext i16 @lwip_htons(i16 zeroext 1) #9, !dbg !1277
  %26 = or i16 %25, %24, !dbg !1277
  %27 = load %struct.tcp_hdr*, %struct.tcp_hdr** %14, align 8, !dbg !1277, !tbaa !849
  %28 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %27, i64 0, i32 4, !dbg !1277
  store i16 %26, i16* %28, align 1, !dbg !1277, !tbaa !856
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1279
  %30 = load i16, i16* %29, align 2, !dbg !1279, !tbaa !499
  %31 = or i16 %30, 32, !dbg !1279
  store i16 %31, i16* %29, align 2, !dbg !1279, !tbaa !499
  br label %34

; <label>:32:                                     ; preds = %13, %4
  %33 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #7, !dbg !1281
  br label %34, !dbg !1282

; <label>:34:                                     ; preds = %21, %32
  %35 = phi i8 [ %33, %32 ], [ 0, %21 ], !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  ret i8 %35, !dbg !1284
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_enqueue_flags(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !1285 {
  %3 = zext i8 %1 to i32, !dbg !1302
  %4 = and i32 %3, 3, !dbg !1302
  %5 = icmp eq i32 %4, 0, !dbg !1302
  br i1 %5, label %6, label %7, !dbg !1305

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.21, i64 0, i64 0)) #7, !dbg !1306
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1309
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1309
  unreachable, !dbg !1309

; <label>:7:                                      ; preds = %2
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1313
  br i1 %8, label %9, label %10, !dbg !1316

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0)) #7, !dbg !1317
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1320
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1320
  unreachable, !dbg !1320

; <label>:10:                                     ; preds = %7
  %11 = and i32 %3, 2, !dbg !1324
  %12 = icmp ne i32 %11, 0, !dbg !1324
  br i1 %12, label %13, label %23, !dbg !1326

; <label>:13:                                     ; preds = %10
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1327
  %15 = load i32, i32* %14, align 8, !dbg !1327, !tbaa !441
  %16 = icmp eq i32 %15, 3, !dbg !1330
  br i1 %16, label %17, label %22, !dbg !1331

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1332
  %19 = load i16, i16* %18, align 2, !dbg !1332, !tbaa !499
  %20 = and i16 %19, 256, !dbg !1333
  %21 = icmp eq i16 %20, 0, !dbg !1333
  br i1 %21, label %23, label %22, !dbg !1334

; <label>:22:                                     ; preds = %17, %13
  br label %23, !dbg !1335

; <label>:23:                                     ; preds = %17, %22, %10
  %24 = phi i8 [ 9, %22 ], [ 1, %17 ], [ 0, %10 ], !dbg !1337
  %25 = shl nuw nsw i8 %24, 2, !dbg !1338
  %26 = and i8 %25, 4, !dbg !1338
  %27 = lshr i8 %24, 1, !dbg !1338
  %28 = add nuw nsw i8 %26, %27, !dbg !1338
  %29 = zext i8 %28 to i16, !dbg !1339
  %30 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %29, i32 640) #9, !dbg !1341
  %31 = icmp eq %struct.pbuf* %30, null, !dbg !1343
  br i1 %31, label %32, label %38, !dbg !1344

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1345
  %34 = load i16, i16* %33, align 2, !dbg !1345, !tbaa !499
  %35 = or i16 %34, 128, !dbg !1345
  store i16 %35, i16* %33, align 2, !dbg !1345, !tbaa !499
  %36 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1348, !tbaa !460
  %37 = add i16 %36, 1, !dbg !1348
  store i16 %37, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1348, !tbaa !460
  br label %103, !dbg !1349

; <label>:38:                                     ; preds = %23
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %30, i64 0, i32 3, !dbg !1350
  %40 = load i16, i16* %39, align 2, !dbg !1350, !tbaa !609
  %41 = zext i16 %40 to i32, !dbg !1350
  %42 = zext i8 %28 to i32, !dbg !1350
  %43 = icmp ult i32 %41, %42, !dbg !1350
  br i1 %43, label %44, label %45, !dbg !1353

; <label>:44:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0)) #7, !dbg !1354
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1357
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1357
  unreachable, !dbg !1357

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !1361
  %47 = load i32, i32* %46, align 4, !dbg !1361, !tbaa !720
  %48 = tail call fastcc %struct.tcp_seg* @tcp_create_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %30, i8 zeroext %1, i32 %47, i8 zeroext %24) #7, !dbg !1363
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !1365
  br i1 %49, label %50, label %56, !dbg !1366

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1367
  %52 = load i16, i16* %51, align 2, !dbg !1367, !tbaa !499
  %53 = or i16 %52, 128, !dbg !1367
  store i16 %53, i16* %51, align 2, !dbg !1367, !tbaa !499
  %54 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1370, !tbaa !460
  %55 = add i16 %54, 1, !dbg !1370
  store i16 %55, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 6), align 2, !dbg !1370, !tbaa !460
  br label %103, !dbg !1371

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 2, !dbg !1372
  %58 = load i16, i16* %57, align 8, !dbg !1372, !tbaa !523
  %59 = icmp eq i16 %58, 0, !dbg !1372
  br i1 %59, label %61, label %60, !dbg !1375

; <label>:60:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #7, !dbg !1376
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1379
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1379
  unreachable, !dbg !1379

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1383
  %63 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1383, !tbaa !480
  %64 = icmp eq %struct.tcp_seg* %63, null, !dbg !1384
  br i1 %64, label %72, label %65, !dbg !1385

; <label>:65:                                     ; preds = %61, %65
  %66 = phi %struct.tcp_seg* [ %68, %65 ], [ %63, %61 ], !dbg !1386
  %67 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %66, i64 0, i32 0, !dbg !1390
  %68 = load %struct.tcp_seg*, %struct.tcp_seg** %67, align 8, !dbg !1390, !tbaa !512
  %69 = icmp eq %struct.tcp_seg* %68, null, !dbg !1391
  br i1 %69, label %70, label %65, !dbg !1392, !llvm.loop !1393

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %66, i64 0, i32 0, !dbg !1390
  br label %72

; <label>:72:                                     ; preds = %61, %70
  %73 = phi %struct.tcp_seg** [ %71, %70 ], [ %62, %61 ]
  store %struct.tcp_seg* %48, %struct.tcp_seg** %73, align 8, !dbg !1395, !tbaa !751
  %74 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1397
  store i16 0, i16* %74, align 2, !dbg !1398, !tbaa !534
  %75 = xor i1 %12, true, !dbg !1399
  %76 = and i32 %3, 1, !dbg !1401
  %77 = icmp eq i32 %76, 0, !dbg !1401
  %78 = and i1 %77, %75, !dbg !1399
  br i1 %78, label %82, label %79, !dbg !1399

; <label>:79:                                     ; preds = %72
  %80 = load i32, i32* %46, align 4, !dbg !1402, !tbaa !720
  %81 = add i32 %80, 1, !dbg !1402
  store i32 %81, i32* %46, align 4, !dbg !1402, !tbaa !720
  br label %82, !dbg !1404

; <label>:82:                                     ; preds = %72, %79
  br i1 %77, label %87, label %83, !dbg !1405

; <label>:83:                                     ; preds = %82
  %84 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1406
  %85 = load i16, i16* %84, align 2, !dbg !1406, !tbaa !499
  %86 = or i16 %85, 32, !dbg !1406
  store i16 %86, i16* %84, align 2, !dbg !1406, !tbaa !499
  br label %87, !dbg !1410

; <label>:87:                                     ; preds = %82, %83
  %88 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %48, i64 0, i32 1, !dbg !1411
  %89 = load %struct.pbuf*, %struct.pbuf** %88, align 8, !dbg !1411, !tbaa !591
  %90 = tail call zeroext i16 @pbuf_clen(%struct.pbuf* %89) #9, !dbg !1412
  %91 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 41, !dbg !1413
  %92 = load i16, i16* %91, align 4, !dbg !1414, !tbaa !447
  %93 = add i16 %92, %90, !dbg !1414
  store i16 %93, i16* %91, align 4, !dbg !1414, !tbaa !447
  %94 = icmp eq i16 %93, 0, !dbg !1415
  br i1 %94, label %103, label %95, !dbg !1417

; <label>:95:                                     ; preds = %87
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1418
  %97 = load %struct.tcp_seg*, %struct.tcp_seg** %96, align 8, !dbg !1418, !tbaa !473
  %98 = icmp eq %struct.tcp_seg* %97, null, !dbg !1418
  br i1 %98, label %99, label %103, !dbg !1418

; <label>:99:                                     ; preds = %95
  %100 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1418, !tbaa !480
  %101 = icmp eq %struct.tcp_seg* %100, null, !dbg !1418
  br i1 %101, label %102, label %103, !dbg !1422

; <label>:102:                                    ; preds = %99
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !1423
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1426
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1426
  unreachable, !dbg !1426

; <label>:103:                                    ; preds = %87, %95, %99, %50, %32
  %104 = phi i8 [ -1, %32 ], [ -1, %50 ], [ 0, %99 ], [ 0, %95 ], [ 0, %87 ], !dbg !1337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  ret i8 %104, !dbg !1430
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1431 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1523
  br i1 %2, label %3, label %4, !dbg !1526

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0)) #7, !dbg !1527
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1530
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1530
  unreachable, !dbg !1530

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1534
  %6 = load i32, i32* %5, align 8, !dbg !1534, !tbaa !441
  %7 = icmp eq i32 %6, 1, !dbg !1534
  br i1 %7, label %8, label %9, !dbg !1537

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !1538
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1541
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1541
  unreachable, !dbg !1541

; <label>:9:                                      ; preds = %4
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1545, !tbaa !751
  %11 = icmp eq %struct.tcp_pcb* %10, %0, !dbg !1547
  br i1 %11, label %463, label %12, !dbg !1548

; <label>:12:                                     ; preds = %9
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !1549
  %14 = load i32, i32* %13, align 8, !dbg !1549, !tbaa !1550
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !1549
  %16 = load i32, i32* %15, align 4, !dbg !1549, !tbaa !1551
  %17 = icmp ult i32 %14, %16, !dbg !1549
  %18 = select i1 %17, i32 %14, i32 %16, !dbg !1549
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1553
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1553, !tbaa !480
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !1555
  br i1 %21, label %22, label %29, !dbg !1557

; <label>:22:                                     ; preds = %12
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1558
  %24 = load i16, i16* %23, align 2, !dbg !1558, !tbaa !499
  %25 = and i16 %24, 2, !dbg !1561
  %26 = icmp eq i16 %25, 0, !dbg !1561
  br i1 %26, label %459, label %27, !dbg !1562

; <label>:27:                                     ; preds = %22
  %28 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1563
  br label %463, !dbg !1565

; <label>:29:                                     ; preds = %12
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1566
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1567
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !1579
  %33 = load i8, i8* %32, align 8, !dbg !1579, !tbaa !1581
  %34 = icmp eq i8 %33, 0, !dbg !1582
  br i1 %34, label %37, label %35, !dbg !1583

; <label>:35:                                     ; preds = %29
  %36 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %33) #9, !dbg !1584
  br label %48, !dbg !1586

; <label>:37:                                     ; preds = %29
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1587
  %39 = load i8, i8* %38, align 4, !dbg !1587, !tbaa !1589
  %40 = icmp eq i8 %39, 6, !dbg !1587
  br i1 %40, label %41, label %45, !dbg !1587

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !1587
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1587
  %44 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %42, %struct.ip6_addr* nonnull %43) #9, !dbg !1587
  br label %48, !dbg !1587

; <label>:45:                                     ; preds = %37
  %46 = bitcast %struct.ip_addr* %31 to %struct.ip4_addr*, !dbg !1587
  %47 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %46) #9, !dbg !1587
  br label %48, !dbg !1587

; <label>:48:                                     ; preds = %35, %41, %45
  %49 = phi %struct.netif* [ %36, %35 ], [ %44, %41 ], [ %47, %45 ], !dbg !1590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  %50 = icmp eq %struct.netif* %49, null, !dbg !1593
  br i1 %50, label %463, label %51, !dbg !1595

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1596
  %53 = load i8, i8* %52, align 4, !dbg !1596, !tbaa !1597
  %54 = icmp eq i8 %53, 6, !dbg !1596
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1596
  %56 = load i32, i32* %55, align 8, !dbg !1596, !tbaa !1598
  %57 = icmp eq i32 %56, 0, !dbg !1596
  br i1 %54, label %58, label %71, !dbg !1599

; <label>:58:                                     ; preds = %51
  br i1 %57, label %59, label %108, !dbg !1596

; <label>:59:                                     ; preds = %58
  %60 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1596
  %61 = load i32, i32* %60, align 4, !dbg !1596, !tbaa !1598
  %62 = icmp eq i32 %61, 0, !dbg !1596
  br i1 %62, label %63, label %108, !dbg !1596

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1596
  %65 = load i32, i32* %64, align 8, !dbg !1596, !tbaa !1598
  %66 = icmp eq i32 %65, 0, !dbg !1596
  br i1 %66, label %67, label %108, !dbg !1596

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1596
  %69 = load i32, i32* %68, align 4, !dbg !1596, !tbaa !1598
  %70 = icmp eq i32 %69, 0, !dbg !1596
  br i1 %70, label %72, label %108, !dbg !1596

; <label>:71:                                     ; preds = %51
  br i1 %57, label %72, label %108, !dbg !1599

; <label>:72:                                     ; preds = %67, %71
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !1600
  %74 = load i8, i8* %73, align 4, !dbg !1600, !tbaa !1601
  %75 = icmp eq i8 %74, 6, !dbg !1600
  br i1 %75, label %78, label %76, !dbg !1600

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %49, i64 0, i32 1, !dbg !1600
  br label %82, !dbg !1603

; <label>:78:                                     ; preds = %72
  %79 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %31, i64 0, i32 0, i32 0, !dbg !1600
  %80 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %49, %struct.ip6_addr* nonnull %79) #9, !dbg !1600
  %81 = icmp eq %struct.ip_addr* %80, null, !dbg !1604
  br i1 %81, label %463, label %82, !dbg !1603

; <label>:82:                                     ; preds = %76, %78
  %83 = phi %struct.ip_addr* [ %77, %76 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 1, !dbg !1606
  %85 = load i8, i8* %84, align 4, !dbg !1606, !tbaa !1589
  store i8 %85, i8* %52, align 4, !dbg !1606, !tbaa !1597
  %86 = load i8, i8* %84, align 4, !dbg !1609, !tbaa !1589
  %87 = icmp eq i8 %86, 6, !dbg !1609
  %88 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1611
  %89 = load i32, i32* %88, align 4, !dbg !1611, !tbaa !1598
  store i32 %89, i32* %55, align 8, !dbg !1611, !tbaa !1598
  br i1 %87, label %90, label %103, !dbg !1614

; <label>:90:                                     ; preds = %82
  %91 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1611
  %92 = load i32, i32* %91, align 4, !dbg !1611, !tbaa !1598
  %93 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1611
  store i32 %92, i32* %93, align 4, !dbg !1611, !tbaa !1598
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1611
  %95 = load i32, i32* %94, align 4, !dbg !1611, !tbaa !1598
  %96 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1611
  store i32 %95, i32* %96, align 8, !dbg !1611, !tbaa !1598
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1611
  %98 = load i32, i32* %97, align 4, !dbg !1611, !tbaa !1598
  %99 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1611
  store i32 %98, i32* %99, align 4, !dbg !1611, !tbaa !1598
  %100 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %83, i64 0, i32 0, i32 0, i32 1, !dbg !1611
  %101 = load i8, i8* %100, align 4, !dbg !1611, !tbaa !1598
  %102 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1611
  store i8 %101, i8* %102, align 8, !dbg !1611, !tbaa !1598
  br label %108, !dbg !1615

; <label>:103:                                    ; preds = %82
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1616
  store i32 0, i32* %104, align 4, !dbg !1616, !tbaa !1598
  %105 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1616
  store i32 0, i32* %105, align 8, !dbg !1616, !tbaa !1598
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1616
  store i32 0, i32* %106, align 4, !dbg !1616, !tbaa !1598
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1616
  store i8 0, i8* %107, align 8, !dbg !1616, !tbaa !1598
  br label %108

; <label>:108:                                    ; preds = %103, %90, %71, %67, %63, %59, %58
  %109 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 4, !dbg !1619
  %110 = load %struct.tcp_hdr*, %struct.tcp_hdr** %109, align 8, !dbg !1619, !tbaa !849
  %111 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %110, i64 0, i32 2, !dbg !1619
  %112 = load i32, i32* %111, align 1, !dbg !1619, !tbaa !1095
  %113 = tail call i32 @lwip_htonl(i32 %112) #9, !dbg !1619
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !1621
  %115 = load i32, i32* %114, align 8, !dbg !1621, !tbaa !1622
  %116 = sub i32 %113, %115, !dbg !1623
  %117 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 2, !dbg !1624
  %118 = load i16, i16* %117, align 8, !dbg !1624, !tbaa !523
  %119 = zext i16 %118 to i32, !dbg !1625
  %120 = add i32 %116, %119, !dbg !1626
  %121 = icmp ugt i32 %120, %18, !dbg !1627
  br i1 %121, label %122, label %143, !dbg !1628

; <label>:122:                                    ; preds = %108
  %123 = load i32, i32* %13, align 8, !dbg !1629, !tbaa !1550
  %124 = icmp eq i32 %18, %123, !dbg !1632
  br i1 %124, label %125, label %136, !dbg !1633

; <label>:125:                                    ; preds = %122
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1634
  %127 = load %struct.tcp_seg*, %struct.tcp_seg** %126, align 8, !dbg !1634, !tbaa !473
  %128 = icmp eq %struct.tcp_seg* %127, null, !dbg !1635
  br i1 %128, label %129, label %136, !dbg !1636

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1637
  %131 = load i8, i8* %130, align 1, !dbg !1637, !tbaa !1638
  %132 = icmp eq i8 %131, 0, !dbg !1639
  br i1 %132, label %133, label %136, !dbg !1640

; <label>:133:                                    ; preds = %129
  %134 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 55, !dbg !1641
  store i8 0, i8* %134, align 4, !dbg !1643, !tbaa !1644
  store i8 1, i8* %130, align 1, !dbg !1645, !tbaa !1638
  %135 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !1646
  store i8 0, i8* %135, align 2, !dbg !1647, !tbaa !1648
  br label %136, !dbg !1649

; <label>:136:                                    ; preds = %133, %129, %125, %122
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1650
  %138 = load i16, i16* %137, align 2, !dbg !1650, !tbaa !499
  %139 = and i16 %138, 2, !dbg !1652
  %140 = icmp eq i16 %139, 0, !dbg !1652
  br i1 %140, label %459, label %141, !dbg !1653

; <label>:141:                                    ; preds = %136
  %142 = tail call signext i8 @tcp_send_empty_ack(%struct.tcp_pcb* nonnull %0) #7, !dbg !1654
  br label %463, !dbg !1656

; <label>:143:                                    ; preds = %108
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 56, !dbg !1657
  store i8 0, i8* %144, align 1, !dbg !1658, !tbaa !1638
  %145 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1659
  %146 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1659, !tbaa !473
  %147 = icmp eq %struct.tcp_seg* %146, null, !dbg !1661
  br i1 %147, label %153, label %148, !dbg !1663

; <label>:148:                                    ; preds = %143, %148
  %149 = phi %struct.tcp_seg* [ %151, %148 ], [ %146, %143 ], !dbg !1664
  %150 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %149, i64 0, i32 0, !dbg !1668
  %151 = load %struct.tcp_seg*, %struct.tcp_seg** %150, align 8, !dbg !1668, !tbaa !512
  %152 = icmp eq %struct.tcp_seg* %151, null, !dbg !1669
  br i1 %152, label %153, label %148, !dbg !1670, !llvm.loop !1671

; <label>:153:                                    ; preds = %148, %143
  %154 = phi %struct.tcp_seg* [ null, %143 ], [ %149, %148 ], !dbg !1673
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
  br label %176, !dbg !1674

; <label>:176:                                    ; preds = %153, %450
  %177 = phi %struct.tcp_seg* [ %20, %153 ], [ %452, %450 ]
  %178 = phi %struct.tcp_seg* [ %154, %153 ], [ %451, %450 ]
  %179 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 4, !dbg !1675
  %180 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1675, !tbaa !849
  %181 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %180, i64 0, i32 2, !dbg !1675
  %182 = load i32, i32* %181, align 1, !dbg !1675, !tbaa !1095
  %183 = tail call i32 @lwip_htonl(i32 %182) #9, !dbg !1675
  %184 = load i32, i32* %114, align 8, !dbg !1676, !tbaa !1622
  %185 = sub i32 %183, %184, !dbg !1677
  %186 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 2, !dbg !1678
  %187 = load i16, i16* %186, align 8, !dbg !1678, !tbaa !523
  %188 = zext i16 %187 to i32, !dbg !1679
  %189 = add i32 %185, %188, !dbg !1680
  %190 = icmp ugt i32 %189, %18, !dbg !1681
  br i1 %190, label %454, label %191, !dbg !1682

; <label>:191:                                    ; preds = %176
  %192 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1683, !tbaa !849
  %193 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %192, i64 0, i32 4, !dbg !1683
  %194 = load i16, i16* %193, align 1, !dbg !1683, !tbaa !856
  %195 = tail call zeroext i16 @lwip_htons(i16 zeroext %194) #9, !dbg !1683
  %196 = and i16 %195, 4, !dbg !1683
  %197 = icmp eq i16 %196, 0, !dbg !1683
  br i1 %197, label %199, label %198, !dbg !1686

; <label>:198:                                    ; preds = %191
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #7, !dbg !1687
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1690
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1690
  unreachable, !dbg !1690

; <label>:199:                                    ; preds = %191
  %200 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1694, !tbaa !473
  %201 = icmp eq %struct.tcp_seg* %200, null, !dbg !1694
  br i1 %201, label %230, label %202, !dbg !1694

; <label>:202:                                    ; preds = %199
  %203 = load i16, i16* %155, align 2, !dbg !1694, !tbaa !499
  %204 = and i16 %203, 68, !dbg !1694
  %205 = icmp eq i16 %204, 0, !dbg !1694
  br i1 %205, label %206, label %230, !dbg !1694

; <label>:206:                                    ; preds = %202
  %207 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1694, !tbaa !480
  %208 = icmp eq %struct.tcp_seg* %207, null, !dbg !1694
  br i1 %208, label %218, label %209, !dbg !1694

; <label>:209:                                    ; preds = %206
  %210 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %207, i64 0, i32 0, !dbg !1694
  %211 = load %struct.tcp_seg*, %struct.tcp_seg** %210, align 8, !dbg !1694, !tbaa !512
  %212 = icmp eq %struct.tcp_seg* %211, null, !dbg !1694
  br i1 %212, label %213, label %230, !dbg !1694

; <label>:213:                                    ; preds = %209
  %214 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %207, i64 0, i32 2, !dbg !1694
  %215 = load i16, i16* %214, align 8, !dbg !1694, !tbaa !523
  %216 = load i16, i16* %164, align 2, !dbg !1694, !tbaa !411
  %217 = icmp ult i16 %215, %216, !dbg !1694
  br i1 %217, label %218, label %230, !dbg !1694

; <label>:218:                                    ; preds = %213, %206
  %219 = load i32, i32* %159, align 8, !dbg !1694, !tbaa !451
  %220 = icmp ult i32 %219, 65535, !dbg !1694
  %221 = select i1 %220, i32 %219, i32 65535, !dbg !1694
  %222 = and i32 %221, 65535, !dbg !1694
  %223 = icmp eq i32 %222, 0, !dbg !1694
  br i1 %223, label %230, label %224, !dbg !1694

; <label>:224:                                    ; preds = %218
  %225 = load i16, i16* %163, align 4, !dbg !1694, !tbaa !447
  %226 = icmp ult i16 %225, 1436, !dbg !1694
  %227 = and i16 %203, 160, !dbg !1696
  %228 = icmp eq i16 %227, 0, !dbg !1697
  %229 = and i1 %228, %226, !dbg !1698
  br i1 %229, label %454, label %230, !dbg !1698

; <label>:230:                                    ; preds = %224, %218, %199, %202, %209, %213
  %231 = load i32, i32* %5, align 8, !dbg !1699, !tbaa !441
  %232 = icmp eq i32 %231, 2, !dbg !1701
  br i1 %232, label %241, label %233, !dbg !1702

; <label>:233:                                    ; preds = %230
  %234 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1703, !tbaa !849
  %235 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %234, i64 0, i32 4, !dbg !1703
  %236 = load i16, i16* %235, align 1, !dbg !1703, !tbaa !856
  %237 = tail call zeroext i16 @lwip_htons(i16 zeroext 16) #9, !dbg !1703
  %238 = or i16 %237, %236, !dbg !1703
  %239 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1703, !tbaa !849
  %240 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %239, i64 0, i32 4, !dbg !1703
  store i16 %238, i16* %240, align 1, !dbg !1703, !tbaa !856
  br label %241, !dbg !1705

; <label>:241:                                    ; preds = %233, %230
  %242 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 1, !dbg !1733
  %243 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1733, !tbaa !591
  %244 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %243, i64 0, i32 6, !dbg !1735
  %245 = load i8, i8* %244, align 2, !dbg !1735, !tbaa !1736
  %246 = icmp eq i8 %245, 1, !dbg !1737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1738
  br i1 %246, label %248, label %247, !dbg !1739

; <label>:247:                                    ; preds = %241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  br label %366, !dbg !1742

; <label>:248:                                    ; preds = %241
  %249 = load i32, i32* %156, align 4, !dbg !1743, !tbaa !1744
  %250 = tail call i32 @lwip_htonl(i32 %249) #9, !dbg !1745
  %251 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1746, !tbaa !849
  %252 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %251, i64 0, i32 3, !dbg !1747
  store i32 %250, i32* %252, align 1, !dbg !1748, !tbaa !1749
  %253 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 3, !dbg !1750
  %254 = load i8, i8* %253, align 2, !dbg !1750, !tbaa !519
  %255 = and i8 %254, 8, !dbg !1752
  %256 = icmp eq i8 %255, 0, !dbg !1752
  %257 = load i32, i32* %157, align 4, !dbg !1753, !tbaa !1755
  br i1 %256, label %258, label %262, !dbg !1756

; <label>:258:                                    ; preds = %248
  %259 = load i8, i8* %160, align 1, !dbg !1757, !tbaa !1758
  %260 = zext i8 %259 to i32, !dbg !1757
  %261 = lshr i32 %257, %260, !dbg !1757
  br label %262

; <label>:262:                                    ; preds = %248, %258
  %263 = phi i32 [ %261, %258 ], [ %257, %248 ]
  %264 = icmp ult i32 %263, 65535, !dbg !1759
  %265 = select i1 %264, i32 %263, i32 65535, !dbg !1759
  %266 = trunc i32 %265 to i16, !dbg !1759
  %267 = tail call zeroext i16 @lwip_htons(i16 zeroext %266) #9, !dbg !1759
  %268 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1759, !tbaa !849
  %269 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %268, i64 0, i32 5, !dbg !1759
  store i16 %267, i16* %269, align 1, !dbg !1759, !tbaa !1760
  %270 = load i32, i32* %156, align 4, !dbg !1761, !tbaa !1744
  %271 = load i32, i32* %157, align 4, !dbg !1762, !tbaa !1755
  %272 = add i32 %271, %270, !dbg !1763
  store i32 %272, i32* %161, align 8, !dbg !1764, !tbaa !1765
  %273 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %268, i64 1, !dbg !1766
  %274 = bitcast %struct.tcp_hdr* %273 to i32*, !dbg !1767
  %275 = load i8, i8* %253, align 2, !dbg !1769, !tbaa !519
  %276 = and i8 %275, 1, !dbg !1770
  %277 = icmp eq i8 %276, 0, !dbg !1770
  br i1 %277, label %285, label %278, !dbg !1771

; <label>:278:                                    ; preds = %262
  %279 = tail call zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext 1460, %struct.netif* nonnull %49, %struct.ip_addr* nonnull %31) #9, !dbg !1772
  %280 = zext i16 %279 to i32, !dbg !1774
  %281 = or i32 %280, 33816576, !dbg !1774
  %282 = tail call i32 @lwip_htonl(i32 %281) #9, !dbg !1774
  store i32 %282, i32* %274, align 4, !dbg !1775, !tbaa !1776
  %283 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %268, i64 1, i32 2, !dbg !1777
  %284 = load i8, i8* %253, align 2, !dbg !1778, !tbaa !519
  br label %285, !dbg !1780

; <label>:285:                                    ; preds = %278, %262
  %286 = phi i8 [ %284, %278 ], [ %275, %262 ], !dbg !1778
  %287 = phi i32* [ %283, %278 ], [ %274, %262 ], !dbg !1781
  %288 = and i8 %286, 8, !dbg !1782
  %289 = icmp eq i8 %288, 0, !dbg !1782
  br i1 %289, label %292, label %290, !dbg !1783

; <label>:290:                                    ; preds = %285
  store i32 67306241, i32* %287, align 4, !dbg !1792, !tbaa !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1793
  %291 = getelementptr inbounds i32, i32* %287, i64 1, !dbg !1794
  br label %292, !dbg !1795

; <label>:292:                                    ; preds = %290, %285
  %293 = phi i32* [ %291, %290 ], [ %287, %285 ], !dbg !1796
  %294 = load i16, i16* %165, align 4, !dbg !1797, !tbaa !1799
  %295 = icmp slt i16 %294, 0, !dbg !1800
  br i1 %295, label %296, label %297, !dbg !1801

; <label>:296:                                    ; preds = %292
  store i16 0, i16* %165, align 4, !dbg !1802, !tbaa !1799
  br label %297, !dbg !1804

; <label>:297:                                    ; preds = %296, %292
  %298 = load i32, i32* %166, align 8, !dbg !1805, !tbaa !1807
  %299 = icmp eq i32 %298, 0, !dbg !1808
  br i1 %299, label %300, label %307, !dbg !1809

; <label>:300:                                    ; preds = %297
  %301 = load i32, i32* @tcp_ticks, align 4, !dbg !1810, !tbaa !1776
  store i32 %301, i32* %166, align 8, !dbg !1812, !tbaa !1807
  %302 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1813, !tbaa !849
  %303 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %302, i64 0, i32 2, !dbg !1813
  %304 = load i32, i32* %303, align 1, !dbg !1813, !tbaa !1095
  %305 = tail call i32 @lwip_htonl(i32 %304) #9, !dbg !1813
  store i32 %305, i32* %167, align 4, !dbg !1814, !tbaa !1815
  %306 = load i8, i8* %253, align 2, !dbg !1816, !tbaa !519
  br label %307, !dbg !1819

; <label>:307:                                    ; preds = %300, %297
  %308 = phi i8 [ %306, %300 ], [ %286, %297 ], !dbg !1816
  %309 = bitcast %struct.tcp_hdr** %179 to i64*, !dbg !1820
  %310 = load i64, i64* %309, align 8, !dbg !1820, !tbaa !849
  %311 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1821, !tbaa !591
  %312 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %311, i64 0, i32 1, !dbg !1822
  %313 = bitcast i8** %312 to i64*, !dbg !1822
  %314 = load i64, i64* %313, align 8, !dbg !1822, !tbaa !584
  %315 = sub i64 %310, %314, !dbg !1823
  %316 = trunc i64 %315 to i16, !dbg !1824
  %317 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %311, i64 0, i32 3, !dbg !1825
  %318 = load i16, i16* %317, align 2, !dbg !1826, !tbaa !609
  %319 = sub i16 %318, %316, !dbg !1826
  store i16 %319, i16* %317, align 2, !dbg !1826, !tbaa !609
  %320 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %311, i64 0, i32 2, !dbg !1827
  %321 = load i16, i16* %320, align 8, !dbg !1828, !tbaa !756
  %322 = sub i16 %321, %316, !dbg !1828
  store i16 %322, i16* %320, align 8, !dbg !1828, !tbaa !756
  store i64 %310, i64* %313, align 8, !dbg !1829, !tbaa !584
  %323 = inttoptr i64 %310 to %struct.tcp_hdr*, !dbg !1830
  %324 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %323, i64 0, i32 6, !dbg !1831
  store i16 0, i16* %324, align 1, !dbg !1832, !tbaa !1833
  %325 = bitcast i32* %293 to i8*, !dbg !1816
  %326 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %323, i64 1, !dbg !1816
  %327 = bitcast %struct.tcp_hdr* %326 to i8*, !dbg !1816
  %328 = zext i8 %308 to i32, !dbg !1816
  %329 = shl nuw nsw i32 %328, 2, !dbg !1816
  %330 = and i32 %329, 4, !dbg !1816
  %331 = zext i32 %330 to i64, !dbg !1816
  %332 = getelementptr inbounds i8, i8* %327, i64 %331, !dbg !1816
  %333 = lshr i32 %328, 1, !dbg !1816
  %334 = and i32 %333, 4, !dbg !1816
  %335 = zext i32 %334 to i64, !dbg !1816
  %336 = getelementptr inbounds i8, i8* %332, i64 %335, !dbg !1816
  %337 = icmp eq i8* %336, %325, !dbg !1816
  br i1 %337, label %339, label %338, !dbg !1834

; <label>:338:                                    ; preds = %307
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0)) #9, !dbg !1835
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1838
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1838
  unreachable, !dbg !1838

; <label>:339:                                    ; preds = %307
  %340 = load i16, i16* %168, align 8, !dbg !1842, !tbaa !1844
  %341 = and i16 %340, 4, !dbg !1842
  %342 = icmp eq i16 %341, 0, !dbg !1842
  br i1 %342, label %348, label %343, !dbg !1846

; <label>:343:                                    ; preds = %339
  %344 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* %311, i8 zeroext 6, i16 zeroext %322, %struct.ip_addr* nonnull %30, %struct.ip_addr* nonnull %31) #9, !dbg !1847
  %345 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1849, !tbaa !849
  %346 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %345, i64 0, i32 6, !dbg !1850
  store i16 %344, i16* %346, align 1, !dbg !1851, !tbaa !1833
  %347 = load %struct.pbuf*, %struct.pbuf** %242, align 8, !dbg !1852, !tbaa !591
  br label %348, !dbg !1853

; <label>:348:                                    ; preds = %339, %343
  %349 = phi %struct.pbuf* [ %347, %343 ], [ %311, %339 ], !dbg !1852
  %350 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1854, !tbaa !1855
  %351 = add i16 %350, 1, !dbg !1854
  store i16 %351, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !1854, !tbaa !1855
  %352 = load i8, i8* %169, align 4, !dbg !1852, !tbaa !1601
  %353 = icmp eq i8 %352, 6, !dbg !1852
  %354 = load i8, i8* %172, align 1, !dbg !1852, !tbaa !1856
  %355 = load i8, i8* %173, align 2, !dbg !1852, !tbaa !1857
  br i1 %353, label %356, label %358, !dbg !1852

; <label>:356:                                    ; preds = %348
  %357 = tail call signext i8 @ip6_output_if(%struct.pbuf* %349, %struct.ip6_addr* nonnull %170, %struct.ip6_addr* nonnull %171, i8 zeroext %354, i8 zeroext %355, i8 zeroext 6, %struct.netif* nonnull %49) #9, !dbg !1852
  br label %360, !dbg !1852

; <label>:358:                                    ; preds = %348
  %359 = tail call signext i8 @ip4_output_if(%struct.pbuf* %349, %struct.ip4_addr* nonnull %174, %struct.ip4_addr* nonnull %175, i8 zeroext %354, i8 zeroext %355, i8 zeroext 6, %struct.netif* nonnull %49) #9, !dbg !1852
  br label %360, !dbg !1852

; <label>:360:                                    ; preds = %356, %358
  %361 = phi i8 [ %357, %356 ], [ %359, %358 ], !dbg !1781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1740
  %362 = icmp eq i8 %361, 0, !dbg !1858
  br i1 %362, label %366, label %363, !dbg !1742

; <label>:363:                                    ; preds = %360
  %364 = load i16, i16* %155, align 2, !dbg !1860, !tbaa !499
  %365 = or i16 %364, 128, !dbg !1860
  store i16 %365, i16* %155, align 2, !dbg !1860, !tbaa !499
  br label %463, !dbg !1863

; <label>:366:                                    ; preds = %247, %360
  %367 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %177, i64 0, i32 0, !dbg !1864
  %368 = bitcast %struct.tcp_seg* %177 to i64*, !dbg !1864
  %369 = load i64, i64* %368, align 8, !dbg !1864, !tbaa !512
  store i64 %369, i64* %158, align 8, !dbg !1865, !tbaa !480
  %370 = load i32, i32* %5, align 8, !dbg !1866, !tbaa !441
  %371 = icmp eq i32 %370, 2, !dbg !1868
  br i1 %371, label %375, label %372, !dbg !1869

; <label>:372:                                    ; preds = %366
  %373 = load i16, i16* %155, align 2, !dbg !1870, !tbaa !499
  %374 = and i16 %373, -4, !dbg !1870
  store i16 %374, i16* %155, align 2, !dbg !1870, !tbaa !499
  br label %375, !dbg !1873

; <label>:375:                                    ; preds = %366, %372
  %376 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1874, !tbaa !849
  %377 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %376, i64 0, i32 2, !dbg !1874
  %378 = load i32, i32* %377, align 1, !dbg !1874, !tbaa !1095
  %379 = tail call i32 @lwip_htonl(i32 %378) #9, !dbg !1874
  %380 = load i16, i16* %186, align 8, !dbg !1875, !tbaa !523
  %381 = zext i16 %380 to i32, !dbg !1875
  %382 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1875, !tbaa !849
  %383 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %382, i64 0, i32 4, !dbg !1875
  %384 = load i16, i16* %383, align 1, !dbg !1875, !tbaa !856
  %385 = tail call zeroext i16 @lwip_htons(i16 zeroext %384) #9, !dbg !1875
  %386 = and i16 %385, 3, !dbg !1875
  %387 = icmp ne i16 %386, 0, !dbg !1875
  %388 = zext i1 %387 to i32, !dbg !1875
  %389 = add i32 %379, %381, !dbg !1875
  %390 = add i32 %389, %388, !dbg !1876
  %391 = load i32, i32* %162, align 8, !dbg !1878, !tbaa !1880
  %392 = sub i32 %391, %390, !dbg !1878
  %393 = icmp slt i32 %392, 0, !dbg !1878
  br i1 %393, label %394, label %395, !dbg !1881

; <label>:394:                                    ; preds = %375
  store i32 %390, i32* %162, align 8, !dbg !1882, !tbaa !1880
  br label %395, !dbg !1884

; <label>:395:                                    ; preds = %394, %375
  %396 = load i16, i16* %186, align 8, !dbg !1885, !tbaa !523
  %397 = zext i16 %396 to i32, !dbg !1885
  %398 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1885, !tbaa !849
  %399 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %398, i64 0, i32 4, !dbg !1885
  %400 = load i16, i16* %399, align 1, !dbg !1885, !tbaa !856
  %401 = tail call zeroext i16 @lwip_htons(i16 zeroext %400) #9, !dbg !1885
  %402 = and i16 %401, 3, !dbg !1885
  %403 = icmp ne i16 %402, 0, !dbg !1885
  %404 = sext i1 %403 to i32, !dbg !1886
  %405 = icmp eq i32 %397, %404, !dbg !1886
  br i1 %405, label %449, label %406, !dbg !1887

; <label>:406:                                    ; preds = %395
  store %struct.tcp_seg* null, %struct.tcp_seg** %367, align 8, !dbg !1888, !tbaa !512
  %407 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1889, !tbaa !473
  %408 = icmp eq %struct.tcp_seg* %407, null, !dbg !1890
  br i1 %408, label %409, label %410, !dbg !1891

; <label>:409:                                    ; preds = %406
  store %struct.tcp_seg* %177, %struct.tcp_seg** %145, align 8, !dbg !1892, !tbaa !473
  br label %450, !dbg !1894

; <label>:410:                                    ; preds = %406
  %411 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1895, !tbaa !849
  %412 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %411, i64 0, i32 2, !dbg !1895
  %413 = load i32, i32* %412, align 1, !dbg !1895, !tbaa !1095
  %414 = tail call i32 @lwip_htonl(i32 %413) #9, !dbg !1895
  %415 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %178, i64 0, i32 4, !dbg !1895
  %416 = load %struct.tcp_hdr*, %struct.tcp_hdr** %415, align 8, !dbg !1895, !tbaa !849
  %417 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %416, i64 0, i32 2, !dbg !1895
  %418 = load i32, i32* %417, align 1, !dbg !1895, !tbaa !1095
  %419 = tail call i32 @lwip_htonl(i32 %418) #9, !dbg !1895
  %420 = sub i32 %414, %419, !dbg !1895
  %421 = icmp slt i32 %420, 0, !dbg !1895
  br i1 %421, label %422, label %447, !dbg !1896

; <label>:422:                                    ; preds = %410
  %423 = load %struct.tcp_seg*, %struct.tcp_seg** %145, align 8, !dbg !1898, !tbaa !751
  %424 = icmp eq %struct.tcp_seg* %423, null, !dbg !1898
  br i1 %424, label %444, label %425, !dbg !1899

; <label>:425:                                    ; preds = %422, %440
  %426 = phi %struct.tcp_seg* [ %442, %440 ], [ %423, %422 ]
  %427 = phi %struct.tcp_seg** [ %441, %440 ], [ %145, %422 ]
  %428 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %426, i64 0, i32 4, !dbg !1900
  %429 = load %struct.tcp_hdr*, %struct.tcp_hdr** %428, align 8, !dbg !1900, !tbaa !849
  %430 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %429, i64 0, i32 2, !dbg !1900
  %431 = load i32, i32* %430, align 1, !dbg !1900, !tbaa !1095
  %432 = tail call i32 @lwip_htonl(i32 %431) #9, !dbg !1900
  %433 = load %struct.tcp_hdr*, %struct.tcp_hdr** %179, align 8, !dbg !1900, !tbaa !849
  %434 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %433, i64 0, i32 2, !dbg !1900
  %435 = load i32, i32* %434, align 1, !dbg !1900, !tbaa !1095
  %436 = tail call i32 @lwip_htonl(i32 %435) #9, !dbg !1900
  %437 = sub i32 %432, %436, !dbg !1900
  %438 = icmp slt i32 %437, 0, !dbg !1900
  %439 = load %struct.tcp_seg*, %struct.tcp_seg** %427, align 8, !dbg !1901, !tbaa !751
  br i1 %438, label %440, label %444, !dbg !1902

; <label>:440:                                    ; preds = %425
  %441 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %439, i64 0, i32 0, !dbg !1903
  %442 = load %struct.tcp_seg*, %struct.tcp_seg** %441, align 8, !dbg !1898, !tbaa !751
  %443 = icmp eq %struct.tcp_seg* %442, null, !dbg !1898
  br i1 %443, label %444, label %425, !dbg !1899, !llvm.loop !1905

; <label>:444:                                    ; preds = %425, %440, %422
  %445 = phi %struct.tcp_seg** [ %145, %422 ], [ %427, %425 ], [ %441, %440 ]
  %446 = phi %struct.tcp_seg* [ null, %422 ], [ %439, %425 ], [ null, %440 ]
  store %struct.tcp_seg* %446, %struct.tcp_seg** %367, align 8, !dbg !1907, !tbaa !512
  store %struct.tcp_seg* %177, %struct.tcp_seg** %445, align 8, !dbg !1908, !tbaa !751
  br label %450, !dbg !1909

; <label>:447:                                    ; preds = %410
  %448 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %178, i64 0, i32 0, !dbg !1910
  store %struct.tcp_seg* %177, %struct.tcp_seg** %448, align 8, !dbg !1912, !tbaa !512
  br label %450

; <label>:449:                                    ; preds = %395
  tail call void @tcp_seg_free(%struct.tcp_seg* nonnull %177) #9, !dbg !1913
  br label %450

; <label>:450:                                    ; preds = %409, %447, %444, %449
  %451 = phi %struct.tcp_seg* [ %177, %409 ], [ %178, %444 ], [ %177, %447 ], [ %178, %449 ], !dbg !1915
  %452 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1916, !tbaa !480
  %453 = icmp eq %struct.tcp_seg* %452, null, !dbg !1917
  br i1 %453, label %457, label %176, !dbg !1674, !llvm.loop !1918

; <label>:454:                                    ; preds = %176, %224
  %455 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !1920, !tbaa !480
  %456 = icmp eq %struct.tcp_seg* %455, null, !dbg !1922
  br i1 %456, label %457, label %459, !dbg !1923

; <label>:457:                                    ; preds = %450, %454
  %458 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !1924
  store i16 0, i16* %458, align 2, !dbg !1926, !tbaa !534
  br label %459, !dbg !1927

; <label>:459:                                    ; preds = %22, %136, %457, %454
  %460 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1928
  %461 = load i16, i16* %460, align 2, !dbg !1928, !tbaa !499
  %462 = and i16 %461, -129, !dbg !1928
  store i16 %462, i16* %460, align 2, !dbg !1928, !tbaa !499
  br label %463, !dbg !1930

; <label>:463:                                    ; preds = %78, %48, %9, %459, %363, %141, %27
  %464 = phi i8 [ %28, %27 ], [ 0, %459 ], [ %142, %141 ], [ %361, %363 ], [ 0, %9 ], [ -4, %48 ], [ -4, %78 ], !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1933
  ret i8 %464, !dbg !1933
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_send_empty_ack(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1934 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1945
  br i1 %2, label %3, label %4, !dbg !1948

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !1949
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1952
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1952
  unreachable, !dbg !1952

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1957
  %6 = load i32, i32* %5, align 8, !dbg !1957, !tbaa !1880
  %7 = tail call i32 @lwip_htonl(i32 %6) #9, !dbg !1958
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1973
  %9 = load i32, i32* %8, align 4, !dbg !1973, !tbaa !1744
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1974
  %11 = load i16, i16* %10, align 2, !dbg !1974, !tbaa !1078
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1975
  %13 = load i16, i16* %12, align 8, !dbg !1975, !tbaa !1085
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !1976
  %15 = load i32, i32* %14, align 4, !dbg !1976, !tbaa !1755
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !1976
  %17 = load i8, i8* %16, align 1, !dbg !1976, !tbaa !1758
  %18 = zext i8 %17 to i32, !dbg !1976
  %19 = lshr i32 %15, %18, !dbg !1976
  %20 = icmp ult i32 %19, 65535, !dbg !1976
  %21 = select i1 %20, i32 %19, i32 65535, !dbg !1976
  %22 = trunc i32 %21 to i16, !dbg !1976
  %23 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %9, i16 zeroext 0, i32 %7, i16 zeroext %11, i16 zeroext %13, i8 zeroext 16, i16 zeroext %22) #9, !dbg !1977
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !1979
  br i1 %24, label %25, label %29, !dbg !1981

; <label>:25:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1984
  %27 = load i16, i16* %26, align 2, !dbg !1984, !tbaa !499
  %28 = or i16 %27, 3, !dbg !1984
  store i16 %28, i16* %26, align 2, !dbg !1984, !tbaa !499
  br label %43, !dbg !1988

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %8, align 4, !dbg !1989, !tbaa !1744
  %31 = load i32, i32* %14, align 4, !dbg !1991, !tbaa !1755
  %32 = add i32 %31, %30, !dbg !1992
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !1993
  store i32 %32, i32* %33, align 8, !dbg !1994, !tbaa !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2014
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2015
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2016
  %36 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %23, %struct.ip_addr* nonnull %34, %struct.ip_addr* nonnull %35) #7, !dbg !2017
  %37 = icmp eq i8 %36, 0, !dbg !2019
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2021
  %39 = load i16, i16* %38, align 2, !dbg !2021, !tbaa !499
  %40 = and i16 %39, -4, !dbg !2024
  %41 = or i16 %39, 3, !dbg !2025
  %42 = select i1 %37, i16 %40, i16 %41, !dbg !2028
  store i16 %42, i16* %38, align 2, !dbg !2029, !tbaa !499
  br label %43, !dbg !2030

; <label>:43:                                     ; preds = %29, %25
  %44 = phi i8 [ -2, %25 ], [ %36, %29 ], !dbg !2031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  ret i8 %44, !dbg !2032
}

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2033 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2038
  br i1 %2, label %3, label %4, !dbg !2041

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0)) #7, !dbg !2042
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2045
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2045
  unreachable, !dbg !2045

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2049
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2049, !tbaa !473
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2051
  %8 = ptrtoint %struct.tcp_seg* %6 to i64, !dbg !2052
  br i1 %7, label %48, label %9, !dbg !2052

; <label>:9:                                      ; preds = %4, %19
  %10 = phi %struct.tcp_seg* [ %12, %19 ], [ %6, %4 ], !dbg !2053
  %11 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 0, !dbg !2057
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %11, align 8, !dbg !2057, !tbaa !512
  %13 = icmp eq %struct.tcp_seg* %12, null, !dbg !2058
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 1, !dbg !2062
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2062, !tbaa !591
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2063
  %17 = load i8, i8* %16, align 2, !dbg !2063, !tbaa !1736
  %18 = icmp ne i8 %17, 1, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  br i1 %13, label %20, label %19, !dbg !2066

; <label>:19:                                     ; preds = %9
  br i1 %18, label %48, label %9, !dbg !2067, !llvm.loop !2069

; <label>:20:                                     ; preds = %9
  br i1 %18, label %48, label %21, !dbg !2071

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2072
  %23 = bitcast %struct.tcp_seg** %22 to i64*, !dbg !2072
  %24 = load i64, i64* %23, align 8, !dbg !2072, !tbaa !480
  %25 = bitcast %struct.tcp_seg* %10 to i64*, !dbg !2073
  store i64 %24, i64* %25, align 8, !dbg !2073, !tbaa !512
  store i64 %8, i64* %23, align 8, !dbg !2074, !tbaa !480
  store %struct.tcp_seg* null, %struct.tcp_seg** %5, align 8, !dbg !2075, !tbaa !473
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2076
  %27 = load i16, i16* %26, align 2, !dbg !2076, !tbaa !499
  %28 = or i16 %27, 2048, !dbg !2076
  store i16 %28, i16* %26, align 2, !dbg !2076, !tbaa !499
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 4, !dbg !2078
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2078, !tbaa !849
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2078
  %32 = load i32, i32* %31, align 1, !dbg !2078, !tbaa !1095
  %33 = tail call i32 @lwip_htonl(i32 %32) #9, !dbg !2078
  %34 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 2, !dbg !2079
  %35 = load i16, i16* %34, align 8, !dbg !2079, !tbaa !523
  %36 = zext i16 %35 to i32, !dbg !2079
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2079, !tbaa !849
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 4, !dbg !2079
  %39 = load i16, i16* %38, align 1, !dbg !2079, !tbaa !856
  %40 = tail call zeroext i16 @lwip_htons(i16 zeroext %39) #9, !dbg !2079
  %41 = and i16 %40, 3, !dbg !2079
  %42 = icmp ne i16 %41, 0, !dbg !2079
  %43 = zext i1 %42 to i32, !dbg !2079
  %44 = add i32 %33, %36, !dbg !2079
  %45 = add i32 %44, %43, !dbg !2080
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 33, !dbg !2081
  store i32 %45, i32* %46, align 4, !dbg !2082, !tbaa !2083
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2084
  store i32 0, i32* %47, align 8, !dbg !2085, !tbaa !1807
  br label %48, !dbg !2086

; <label>:48:                                     ; preds = %19, %20, %4, %21
  %49 = phi i8 [ 0, %21 ], [ -6, %4 ], [ -6, %20 ], [ -6, %19 ], !dbg !2087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  ret i8 %49, !dbg !2088
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto_commit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2089 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2095
  br i1 %2, label %3, label %4, !dbg !2098

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0)) #7, !dbg !2099
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2102
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2102
  unreachable, !dbg !2102

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2106
  %6 = load i8, i8* %5, align 2, !dbg !2106, !tbaa !2108
  %7 = icmp eq i8 %6, -1, !dbg !2109
  br i1 %7, label %10, label %8, !dbg !2110

; <label>:8:                                      ; preds = %4
  %9 = add i8 %6, 1, !dbg !2111
  store i8 %9, i8* %5, align 2, !dbg !2111, !tbaa !2108
  br label %10, !dbg !2113

; <label>:10:                                     ; preds = %4, %8
  %11 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  ret void, !dbg !2115
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_rto(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2116 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2120
  br i1 %2, label %3, label %4, !dbg !2123

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !2124
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2127
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2127
  unreachable, !dbg !2127

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2134
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2134, !tbaa !473
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2135
  %8 = ptrtoint %struct.tcp_seg* %6 to i64, !dbg !2136
  br i1 %7, label %55, label %9, !dbg !2136

; <label>:9:                                      ; preds = %4, %19
  %10 = phi %struct.tcp_seg* [ %12, %19 ], [ %6, %4 ], !dbg !2137
  %11 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 0, !dbg !2139
  %12 = load %struct.tcp_seg*, %struct.tcp_seg** %11, align 8, !dbg !2139, !tbaa !512
  %13 = icmp eq %struct.tcp_seg* %12, null, !dbg !2140
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 1, !dbg !2143
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2143, !tbaa !591
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2144
  %17 = load i8, i8* %16, align 2, !dbg !2144, !tbaa !1736
  %18 = icmp ne i8 %17, 1, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2146
  br i1 %13, label %20, label %19, !dbg !2147

; <label>:19:                                     ; preds = %9
  br i1 %18, label %55, label %9, !dbg !2148, !llvm.loop !2069

; <label>:20:                                     ; preds = %9
  br i1 %18, label %55, label %21, !dbg !2149

; <label>:21:                                     ; preds = %20
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2150
  %23 = bitcast %struct.tcp_seg** %22 to i64*, !dbg !2150
  %24 = load i64, i64* %23, align 8, !dbg !2150, !tbaa !480
  %25 = bitcast %struct.tcp_seg* %10 to i64*, !dbg !2151
  store i64 %24, i64* %25, align 8, !dbg !2151, !tbaa !512
  store i64 %8, i64* %23, align 8, !dbg !2152, !tbaa !480
  store %struct.tcp_seg* null, %struct.tcp_seg** %5, align 8, !dbg !2153, !tbaa !473
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2154
  %27 = load i16, i16* %26, align 2, !dbg !2154, !tbaa !499
  %28 = or i16 %27, 2048, !dbg !2154
  store i16 %28, i16* %26, align 2, !dbg !2154, !tbaa !499
  %29 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 4, !dbg !2155
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2155, !tbaa !849
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2155
  %32 = load i32, i32* %31, align 1, !dbg !2155, !tbaa !1095
  %33 = tail call i32 @lwip_htonl(i32 %32) #9, !dbg !2155
  %34 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %10, i64 0, i32 2, !dbg !2156
  %35 = load i16, i16* %34, align 8, !dbg !2156, !tbaa !523
  %36 = zext i16 %35 to i32, !dbg !2156
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %29, align 8, !dbg !2156, !tbaa !849
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 4, !dbg !2156
  %39 = load i16, i16* %38, align 1, !dbg !2156, !tbaa !856
  %40 = tail call zeroext i16 @lwip_htons(i16 zeroext %39) #9, !dbg !2156
  %41 = and i16 %40, 3, !dbg !2156
  %42 = icmp ne i16 %41, 0, !dbg !2156
  %43 = zext i1 %42 to i32, !dbg !2156
  %44 = add i32 %33, %36, !dbg !2156
  %45 = add i32 %44, %43, !dbg !2157
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 33, !dbg !2158
  store i32 %45, i32* %46, align 4, !dbg !2159, !tbaa !2083
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2160
  store i32 0, i32* %47, align 8, !dbg !2161, !tbaa !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2166
  %49 = load i8, i8* %48, align 2, !dbg !2166, !tbaa !2108
  %50 = icmp eq i8 %49, -1, !dbg !2167
  br i1 %50, label %53, label %51, !dbg !2168

; <label>:51:                                     ; preds = %21
  %52 = add i8 %49, 1, !dbg !2169
  store i8 %52, i8* %48, align 2, !dbg !2169, !tbaa !2108
  br label %53, !dbg !2170

; <label>:53:                                     ; preds = %21, %51
  %54 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #9, !dbg !2171
  br label %55, !dbg !2172

; <label>:55:                                     ; preds = %19, %20, %4, %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2174
  ret void, !dbg !2174
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_rexmit(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2175 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2181
  br i1 %2, label %3, label %4, !dbg !2184

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0)) #7, !dbg !2185
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2188
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2188
  unreachable, !dbg !2188

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2192
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2192, !tbaa !473
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2194
  br i1 %7, label %58, label %8, !dbg !2195

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2200
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !2200, !tbaa !591
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %10, i64 0, i32 6, !dbg !2201
  %12 = load i8, i8* %11, align 2, !dbg !2201, !tbaa !1736
  %13 = icmp eq i8 %12, 1, !dbg !2202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br i1 %13, label %14, label %58, !dbg !2204

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2205
  %16 = bitcast %struct.tcp_seg* %6 to i64*, !dbg !2205
  %17 = load i64, i64* %16, align 8, !dbg !2205, !tbaa !512
  %18 = bitcast %struct.tcp_seg** %5 to i64*, !dbg !2206
  store i64 %17, i64* %18, align 8, !dbg !2206, !tbaa !473
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2207
  %20 = load %struct.tcp_seg*, %struct.tcp_seg** %19, align 8, !dbg !2209, !tbaa !751
  %21 = icmp eq %struct.tcp_seg* %20, null, !dbg !2209
  br i1 %21, label %43, label %22, !dbg !2210

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4
  br label %24, !dbg !2210

; <label>:24:                                     ; preds = %22, %39
  %25 = phi %struct.tcp_seg* [ %20, %22 ], [ %41, %39 ]
  %26 = phi %struct.tcp_seg** [ %19, %22 ], [ %40, %39 ]
  %27 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %25, i64 0, i32 4, !dbg !2211
  %28 = load %struct.tcp_hdr*, %struct.tcp_hdr** %27, align 8, !dbg !2211, !tbaa !849
  %29 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %28, i64 0, i32 2, !dbg !2211
  %30 = load i32, i32* %29, align 1, !dbg !2211, !tbaa !1095
  %31 = tail call i32 @lwip_htonl(i32 %30) #9, !dbg !2211
  %32 = load %struct.tcp_hdr*, %struct.tcp_hdr** %23, align 8, !dbg !2211, !tbaa !849
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %32, i64 0, i32 2, !dbg !2211
  %34 = load i32, i32* %33, align 1, !dbg !2211, !tbaa !1095
  %35 = tail call i32 @lwip_htonl(i32 %34) #9, !dbg !2211
  %36 = sub i32 %31, %35, !dbg !2211
  %37 = icmp slt i32 %36, 0, !dbg !2211
  %38 = load %struct.tcp_seg*, %struct.tcp_seg** %26, align 8, !dbg !2212, !tbaa !751
  br i1 %37, label %39, label %43, !dbg !2213

; <label>:39:                                     ; preds = %24
  %40 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %38, i64 0, i32 0, !dbg !2214
  %41 = load %struct.tcp_seg*, %struct.tcp_seg** %40, align 8, !dbg !2209, !tbaa !751
  %42 = icmp eq %struct.tcp_seg* %41, null, !dbg !2209
  br i1 %42, label %43, label %24, !dbg !2210, !llvm.loop !2216

; <label>:43:                                     ; preds = %24, %39, %14
  %44 = phi %struct.tcp_seg** [ %19, %14 ], [ %26, %24 ], [ %40, %39 ]
  %45 = phi %struct.tcp_seg* [ null, %14 ], [ %38, %24 ], [ null, %39 ]
  store %struct.tcp_seg* %45, %struct.tcp_seg** %15, align 8, !dbg !2218, !tbaa !512
  store %struct.tcp_seg* %6, %struct.tcp_seg** %44, align 8, !dbg !2219, !tbaa !751
  %46 = load %struct.tcp_seg*, %struct.tcp_seg** %15, align 8, !dbg !2220, !tbaa !512
  %47 = icmp eq %struct.tcp_seg* %46, null, !dbg !2222
  br i1 %47, label %48, label %50, !dbg !2223

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2224
  store i16 0, i16* %49, align 2, !dbg !2226, !tbaa !534
  br label %50, !dbg !2227

; <label>:50:                                     ; preds = %48, %43
  %51 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2228
  %52 = load i8, i8* %51, align 2, !dbg !2228, !tbaa !2108
  %53 = icmp eq i8 %52, -1, !dbg !2230
  br i1 %53, label %56, label %54, !dbg !2231

; <label>:54:                                     ; preds = %50
  %55 = add i8 %52, 1, !dbg !2232
  store i8 %55, i8* %51, align 2, !dbg !2232, !tbaa !2108
  br label %56, !dbg !2234

; <label>:56:                                     ; preds = %50, %54
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2235
  store i32 0, i32* %57, align 8, !dbg !2236, !tbaa !1807
  br label %58, !dbg !2237

; <label>:58:                                     ; preds = %8, %4, %56
  %59 = phi i8 [ 0, %56 ], [ -6, %4 ], [ -6, %8 ], !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2238
  ret i8 %59, !dbg !2238
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rexmit_fast(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2239 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2243
  br i1 %2, label %3, label %4, !dbg !2246

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0)) #7, !dbg !2247
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2250
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2250
  unreachable, !dbg !2250

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2254
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2254, !tbaa !473
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2256
  br i1 %7, label %83, label %8, !dbg !2257

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2258
  %10 = load i16, i16* %9, align 2, !dbg !2258, !tbaa !499
  %11 = and i16 %10, 4, !dbg !2259
  %12 = icmp eq i16 %11, 0, !dbg !2259
  br i1 %12, label %13, label %83, !dbg !2260

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2268
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !2268, !tbaa !591
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %15, i64 0, i32 6, !dbg !2269
  %17 = load i8, i8* %16, align 2, !dbg !2269, !tbaa !1736
  %18 = icmp eq i8 %17, 1, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br i1 %18, label %19, label %61, !dbg !2272

; <label>:19:                                     ; preds = %13
  %20 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2273
  %21 = bitcast %struct.tcp_seg* %6 to i64*, !dbg !2273
  %22 = load i64, i64* %21, align 8, !dbg !2273, !tbaa !512
  %23 = bitcast %struct.tcp_seg** %5 to i64*, !dbg !2274
  store i64 %22, i64* %23, align 8, !dbg !2274, !tbaa !473
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2275
  %25 = load %struct.tcp_seg*, %struct.tcp_seg** %24, align 8, !dbg !2277, !tbaa !751
  %26 = icmp eq %struct.tcp_seg* %25, null, !dbg !2277
  br i1 %26, label %48, label %27, !dbg !2278

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4
  br label %29, !dbg !2278

; <label>:29:                                     ; preds = %44, %27
  %30 = phi %struct.tcp_seg* [ %25, %27 ], [ %46, %44 ]
  %31 = phi %struct.tcp_seg** [ %24, %27 ], [ %45, %44 ]
  %32 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %30, i64 0, i32 4, !dbg !2279
  %33 = load %struct.tcp_hdr*, %struct.tcp_hdr** %32, align 8, !dbg !2279, !tbaa !849
  %34 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %33, i64 0, i32 2, !dbg !2279
  %35 = load i32, i32* %34, align 1, !dbg !2279, !tbaa !1095
  %36 = tail call i32 @lwip_htonl(i32 %35) #9, !dbg !2279
  %37 = load %struct.tcp_hdr*, %struct.tcp_hdr** %28, align 8, !dbg !2279, !tbaa !849
  %38 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %37, i64 0, i32 2, !dbg !2279
  %39 = load i32, i32* %38, align 1, !dbg !2279, !tbaa !1095
  %40 = tail call i32 @lwip_htonl(i32 %39) #9, !dbg !2279
  %41 = sub i32 %36, %40, !dbg !2279
  %42 = icmp slt i32 %41, 0, !dbg !2279
  %43 = load %struct.tcp_seg*, %struct.tcp_seg** %31, align 8, !dbg !2280, !tbaa !751
  br i1 %42, label %44, label %48, !dbg !2281

; <label>:44:                                     ; preds = %29
  %45 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %43, i64 0, i32 0, !dbg !2282
  %46 = load %struct.tcp_seg*, %struct.tcp_seg** %45, align 8, !dbg !2277, !tbaa !751
  %47 = icmp eq %struct.tcp_seg* %46, null, !dbg !2277
  br i1 %47, label %48, label %29, !dbg !2278, !llvm.loop !2216

; <label>:48:                                     ; preds = %44, %29, %19
  %49 = phi %struct.tcp_seg** [ %24, %19 ], [ %45, %44 ], [ %31, %29 ]
  %50 = phi %struct.tcp_seg* [ null, %19 ], [ null, %44 ], [ %43, %29 ]
  store %struct.tcp_seg* %50, %struct.tcp_seg** %20, align 8, !dbg !2283, !tbaa !512
  store %struct.tcp_seg* %6, %struct.tcp_seg** %49, align 8, !dbg !2284, !tbaa !751
  %51 = load %struct.tcp_seg*, %struct.tcp_seg** %20, align 8, !dbg !2285, !tbaa !512
  %52 = icmp eq %struct.tcp_seg* %51, null, !dbg !2286
  br i1 %52, label %53, label %55, !dbg !2287

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2288
  store i16 0, i16* %54, align 2, !dbg !2289, !tbaa !534
  br label %55, !dbg !2290

; <label>:55:                                     ; preds = %53, %48
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 28, !dbg !2291
  %57 = load i8, i8* %56, align 2, !dbg !2291, !tbaa !2108
  %58 = icmp eq i8 %57, -1, !dbg !2292
  br i1 %58, label %62, label %59, !dbg !2293

; <label>:59:                                     ; preds = %55
  %60 = add i8 %57, 1, !dbg !2294
  store i8 %60, i8* %56, align 2, !dbg !2294, !tbaa !2108
  br label %62, !dbg !2295

; <label>:61:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  br label %83

; <label>:62:                                     ; preds = %55, %59
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 23, !dbg !2297
  store i32 0, i32* %63, align 8, !dbg !2298, !tbaa !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2299
  %65 = load i32, i32* %64, align 4, !dbg !2299, !tbaa !1551
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2299
  %67 = load i32, i32* %66, align 8, !dbg !2299, !tbaa !1550
  %68 = icmp ult i32 %65, %67, !dbg !2299
  %69 = select i1 %68, i32 %65, i32 %67, !dbg !2299
  %70 = lshr i32 %69, 1, !dbg !2301
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 32, !dbg !2302
  %72 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2303
  %73 = load i16, i16* %72, align 2, !dbg !2303, !tbaa !411
  %74 = zext i16 %73 to i32, !dbg !2305
  %75 = shl nuw nsw i32 %74, 1, !dbg !2306
  %76 = icmp ult i32 %70, %75, !dbg !2307
  %77 = select i1 %76, i32 %75, i32 %70, !dbg !2308
  store i32 %77, i32* %71, align 8, !dbg !2309
  %78 = mul nuw nsw i32 %74, 3, !dbg !2311
  %79 = add nuw i32 %77, %78, !dbg !2312
  store i32 %79, i32* %64, align 4, !dbg !2313, !tbaa !1551
  %80 = load i16, i16* %9, align 2, !dbg !2314, !tbaa !499
  %81 = or i16 %80, 4, !dbg !2314
  store i16 %81, i16* %9, align 2, !dbg !2314, !tbaa !499
  %82 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2316
  store i16 0, i16* %82, align 4, !dbg !2317, !tbaa !1799
  br label %83, !dbg !2318

; <label>:83:                                     ; preds = %61, %8, %4, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  ret void, !dbg !2319
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_rst(%struct.tcp_pcb* readonly, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2320 {
  %8 = icmp eq %struct.ip_addr* %3, null, !dbg !2341
  br i1 %8, label %9, label %10, !dbg !2344

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0)) #7, !dbg !2345
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2348
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2348
  unreachable, !dbg !2348

; <label>:10:                                     ; preds = %7
  %11 = icmp eq %struct.ip_addr* %4, null, !dbg !2352
  br i1 %11, label %12, label %13, !dbg !2355

; <label>:12:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #7, !dbg !2356
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2359
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2359
  unreachable, !dbg !2359

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @lwip_htonl(i32 %1) #9, !dbg !2365
  %15 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %2, i16 zeroext 0, i32 %14, i16 zeroext %5, i16 zeroext %6, i8 zeroext 20, i16 zeroext -193) #7, !dbg !2366
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !2368
  br i1 %16, label %19, label %17, !dbg !2370

; <label>:17:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2379
  %18 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* %0, %struct.pbuf* nonnull %15, %struct.ip_addr* nonnull %3, %struct.ip_addr* nonnull %4) #7, !dbg !2380
  br label %19, !dbg !2381

; <label>:19:                                     ; preds = %13, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2381
  ret void, !dbg !2381
}

; Function Attrs: noredzone nounwind
define internal fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32, i16 zeroext, i32, i16 zeroext, i16 zeroext, i8 zeroext, i16 zeroext) unnamed_addr #0 !dbg !2382 {
  %8 = add i16 %1, 20, !dbg !2404
  %9 = tail call %struct.pbuf* @pbuf_alloc(i32 54, i16 zeroext %8, i32 640) #9, !dbg !2405
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !2407
  br i1 %10, label %35, label %11, !dbg !2409

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 3, !dbg !2410
  %13 = load i16, i16* %12, align 2, !dbg !2410, !tbaa !609
  %14 = icmp ugt i16 %13, 19, !dbg !2410
  br i1 %14, label %16, label %15, !dbg !2414

; <label>:15:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.56, i64 0, i64 0)) #7, !dbg !2415
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2418
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2418
  unreachable, !dbg !2418

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %9, i64 0, i32 1, !dbg !2422
  %18 = bitcast i8** %17 to %struct.tcp_hdr**, !dbg !2422
  %19 = load %struct.tcp_hdr*, %struct.tcp_hdr** %18, align 8, !dbg !2422, !tbaa !584
  %20 = tail call zeroext i16 @lwip_htons(i16 zeroext %3) #9, !dbg !2424
  %21 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 0, !dbg !2425
  store i16 %20, i16* %21, align 1, !dbg !2426, !tbaa !1083
  %22 = tail call zeroext i16 @lwip_htons(i16 zeroext %4) #9, !dbg !2427
  %23 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 1, !dbg !2428
  store i16 %22, i16* %23, align 1, !dbg !2429, !tbaa !1090
  %24 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 2, !dbg !2430
  store i32 %2, i32* %24, align 1, !dbg !2431, !tbaa !1095
  %25 = tail call i32 @lwip_htonl(i32 %0) #9, !dbg !2432
  %26 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 3, !dbg !2433
  store i32 %25, i32* %26, align 1, !dbg !2434, !tbaa !1749
  %27 = zext i8 %5 to i16, !dbg !2435
  %28 = or i16 %27, 20480, !dbg !2435
  %29 = tail call zeroext i16 @lwip_htons(i16 zeroext %28) #9, !dbg !2435
  %30 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 4, !dbg !2435
  store i16 %29, i16* %30, align 1, !dbg !2435, !tbaa !856
  %31 = tail call zeroext i16 @lwip_htons(i16 zeroext %6) #9, !dbg !2436
  %32 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 5, !dbg !2437
  store i16 %31, i16* %32, align 1, !dbg !2438, !tbaa !1760
  %33 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 6, !dbg !2439
  store i16 0, i16* %33, align 1, !dbg !2440, !tbaa !1833
  %34 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %19, i64 0, i32 7, !dbg !2441
  store i16 0, i16* %34, align 1, !dbg !2442, !tbaa !1099
  br label %35, !dbg !2443

; <label>:35:                                     ; preds = %7, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2444
  ret %struct.pbuf* %9, !dbg !2444
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* readonly, %struct.pbuf*, %struct.ip_addr*, %struct.ip_addr*) unnamed_addr #0 !dbg !2445 {
  %5 = icmp eq %struct.pbuf* %1, null, !dbg !2466
  br i1 %5, label %6, label %7, !dbg !2469

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0)) #7, !dbg !2470
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2473
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2473
  unreachable, !dbg !2473

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2481
  br i1 %8, label %15, label %9, !dbg !2482

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2483
  %11 = load i8, i8* %10, align 8, !dbg !2483, !tbaa !1581
  %12 = icmp eq i8 %11, 0, !dbg !2484
  br i1 %12, label %15, label %13, !dbg !2485

; <label>:13:                                     ; preds = %9
  %14 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %11) #9, !dbg !2486
  br label %28, !dbg !2487

; <label>:15:                                     ; preds = %9, %7
  %16 = icmp eq %struct.ip_addr* %3, null, !dbg !2488
  br i1 %16, label %25, label %17, !dbg !2488

; <label>:17:                                     ; preds = %15
  %18 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2488
  %19 = load i8, i8* %18, align 4, !dbg !2488, !tbaa !1589
  %20 = icmp eq i8 %19, 6, !dbg !2488
  br i1 %20, label %21, label %25, !dbg !2488

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2488
  %23 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2488
  %24 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %22, %struct.ip6_addr* nonnull %23) #9, !dbg !2488
  br label %28, !dbg !2488

; <label>:25:                                     ; preds = %17, %15
  %26 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2488
  %27 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* %26) #9, !dbg !2488
  br label %28, !dbg !2488

; <label>:28:                                     ; preds = %13, %21, %25
  %29 = phi %struct.netif* [ %14, %13 ], [ %24, %21 ], [ %27, %25 ], !dbg !2489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2490
  %30 = icmp eq %struct.netif* %29, null, !dbg !2492
  br i1 %30, label %68, label %31, !dbg !2493

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.netif, %struct.netif* %29, i64 0, i32 16, !dbg !2494
  %33 = load i16, i16* %32, align 8, !dbg !2494, !tbaa !1844
  %34 = and i16 %33, 4, !dbg !2494
  %35 = icmp eq i16 %34, 0, !dbg !2494
  br i1 %35, label %44, label %36, !dbg !2495

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 1, !dbg !2496
  %38 = bitcast i8** %37 to %struct.tcp_hdr**, !dbg !2496
  %39 = load %struct.tcp_hdr*, %struct.tcp_hdr** %38, align 8, !dbg !2496, !tbaa !584
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !2498
  %41 = load i16, i16* %40, align 8, !dbg !2498, !tbaa !756
  %42 = tail call zeroext i16 @ip_chksum_pseudo(%struct.pbuf* nonnull %1, i8 zeroext 6, i16 zeroext %41, %struct.ip_addr* %2, %struct.ip_addr* %3) #9, !dbg !2499
  %43 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %39, i64 0, i32 6, !dbg !2500
  store i16 %42, i16* %43, align 1, !dbg !2501, !tbaa !1833
  br label %44, !dbg !2502

; <label>:44:                                     ; preds = %31, %36
  br i1 %8, label %50, label %45, !dbg !2503

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2504
  %47 = load i8, i8* %46, align 1, !dbg !2504, !tbaa !1856
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2508
  %49 = load i8, i8* %48, align 2, !dbg !2508, !tbaa !1857
  br label %50, !dbg !2510

; <label>:50:                                     ; preds = %44, %45
  %51 = phi i8 [ %47, %45 ], [ -1, %44 ], !dbg !2511
  %52 = phi i8 [ %49, %45 ], [ 0, %44 ], !dbg !2511
  %53 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2513, !tbaa !1855
  %54 = add i16 %53, 1, !dbg !2513
  store i16 %54, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 6, i32 0), align 2, !dbg !2513, !tbaa !1855
  %55 = icmp eq %struct.ip_addr* %3, null, !dbg !2514
  br i1 %55, label %64, label %56, !dbg !2514

; <label>:56:                                     ; preds = %50
  %57 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1, !dbg !2514
  %58 = load i8, i8* %57, align 4, !dbg !2514, !tbaa !1589
  %59 = icmp eq i8 %58, 6, !dbg !2514
  br i1 %59, label %60, label %64, !dbg !2514

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2514
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, !dbg !2514
  %63 = tail call signext i8 @ip6_output_if(%struct.pbuf* nonnull %1, %struct.ip6_addr* %61, %struct.ip6_addr* nonnull %62, i8 zeroext %51, i8 zeroext %52, i8 zeroext 6, %struct.netif* nonnull %29) #9, !dbg !2514
  br label %68, !dbg !2514

; <label>:64:                                     ; preds = %50, %56
  %65 = bitcast %struct.ip_addr* %2 to %struct.ip4_addr*, !dbg !2514
  %66 = bitcast %struct.ip_addr* %3 to %struct.ip4_addr*, !dbg !2514
  %67 = tail call signext i8 @ip4_output_if(%struct.pbuf* nonnull %1, %struct.ip4_addr* %65, %struct.ip4_addr* %66, i8 zeroext %51, i8 zeroext %52, i8 zeroext 6, %struct.netif* nonnull %29) #9, !dbg !2514
  br label %68, !dbg !2514

; <label>:68:                                     ; preds = %60, %64, %28
  %69 = phi i8 [ -4, %28 ], [ %63, %60 ], [ %67, %64 ], !dbg !2515
  %70 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %1) #9, !dbg !2517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  ret i8 %69, !dbg !2518
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_keepalive(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2519 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2527
  br i1 %2, label %3, label %4, !dbg !2530

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0)) #7, !dbg !2531
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2534
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2534
  unreachable, !dbg !2534

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2538
  %6 = load i32, i32* %5, align 8, !dbg !2538, !tbaa !1880
  %7 = add i32 %6, -1, !dbg !2539
  %8 = tail call i32 @lwip_htonl(i32 %7) #9, !dbg !2540
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2546
  %10 = load i32, i32* %9, align 4, !dbg !2546, !tbaa !1744
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2547
  %12 = load i16, i16* %11, align 2, !dbg !2547, !tbaa !1078
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2548
  %14 = load i16, i16* %13, align 8, !dbg !2548, !tbaa !1085
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2549
  %16 = load i32, i32* %15, align 4, !dbg !2549, !tbaa !1755
  %17 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2549
  %18 = load i8, i8* %17, align 1, !dbg !2549, !tbaa !1758
  %19 = zext i8 %18 to i32, !dbg !2549
  %20 = lshr i32 %16, %19, !dbg !2549
  %21 = icmp ult i32 %20, 65535, !dbg !2549
  %22 = select i1 %21, i32 %20, i32 65535, !dbg !2549
  %23 = trunc i32 %22 to i16, !dbg !2549
  %24 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %10, i16 zeroext 0, i32 %8, i16 zeroext %12, i16 zeroext %14, i8 zeroext 16, i16 zeroext %23) #9, !dbg !2550
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !2552
  br i1 %25, label %26, label %27, !dbg !2553

; <label>:26:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  br label %35, !dbg !2556

; <label>:27:                                     ; preds = %4
  %28 = load i32, i32* %9, align 4, !dbg !2557, !tbaa !1744
  %29 = load i32, i32* %15, align 4, !dbg !2558, !tbaa !1755
  %30 = add i32 %29, %28, !dbg !2559
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2560
  store i32 %30, i32* %31, align 8, !dbg !2561, !tbaa !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2570
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2571
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2572
  %34 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %24, %struct.ip_addr* nonnull %32, %struct.ip_addr* nonnull %33) #7, !dbg !2573
  br label %35, !dbg !2575

; <label>:35:                                     ; preds = %26, %27
  %36 = phi i8 [ %34, %27 ], [ -1, %26 ], !dbg !2576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2577
  ret i8 %36, !dbg !2577
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_zero_window_probe(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2578 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2594
  br i1 %2, label %3, label %4, !dbg !2597

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0)) #7, !dbg !2598
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2601
  tail call void @ukplat_terminate(i32 3) #8, !dbg !2601
  unreachable, !dbg !2601

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2605
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !2605, !tbaa !480
  %7 = icmp eq %struct.tcp_seg* %6, null, !dbg !2607
  br i1 %7, label %90, label %8, !dbg !2609

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 57, !dbg !2610
  %10 = load i8, i8* %9, align 2, !dbg !2610, !tbaa !1648
  %11 = icmp eq i8 %10, -1, !dbg !2612
  br i1 %11, label %14, label %12, !dbg !2613

; <label>:12:                                     ; preds = %8
  %13 = add i8 %10, 1, !dbg !2614
  store i8 %13, i8* %9, align 2, !dbg !2614, !tbaa !1648
  br label %14, !dbg !2616

; <label>:14:                                     ; preds = %8, %12
  %15 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 4, !dbg !2617
  %16 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2617, !tbaa !849
  %17 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %16, i64 0, i32 4, !dbg !2617
  %18 = load i16, i16* %17, align 1, !dbg !2617, !tbaa !856
  %19 = tail call zeroext i16 @lwip_htons(i16 zeroext %18) #9, !dbg !2617
  %20 = and i16 %19, 1, !dbg !2618
  %21 = icmp eq i16 %20, 0, !dbg !2619
  br i1 %21, label %26, label %22, !dbg !2620

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2621
  %24 = load i16, i16* %23, align 8, !dbg !2621, !tbaa !523
  %25 = icmp eq i16 %24, 0, !dbg !2622
  br label %26

; <label>:26:                                     ; preds = %22, %14
  %27 = phi i1 [ false, %14 ], [ %25, %22 ]
  %28 = xor i1 %27, true, !dbg !2623
  %29 = zext i1 %28 to i16, !dbg !2623
  %30 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2625, !tbaa !849
  %31 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %30, i64 0, i32 2, !dbg !2626
  %32 = load i32, i32* %31, align 1, !dbg !2626, !tbaa !1095
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2632
  %34 = load i32, i32* %33, align 4, !dbg !2632, !tbaa !1744
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2633
  %36 = load i16, i16* %35, align 2, !dbg !2633, !tbaa !1078
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2634
  %38 = load i16, i16* %37, align 8, !dbg !2634, !tbaa !1085
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2635
  %40 = load i32, i32* %39, align 4, !dbg !2635, !tbaa !1755
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 60, !dbg !2635
  %42 = load i8, i8* %41, align 1, !dbg !2635, !tbaa !1758
  %43 = zext i8 %42 to i32, !dbg !2635
  %44 = lshr i32 %40, %43, !dbg !2635
  %45 = icmp ult i32 %44, 65535, !dbg !2635
  %46 = select i1 %45, i32 %44, i32 65535, !dbg !2635
  %47 = trunc i32 %46 to i16, !dbg !2635
  %48 = tail call fastcc %struct.pbuf* @tcp_output_alloc_header_common(i32 %34, i16 zeroext %29, i32 %32, i16 zeroext %36, i16 zeroext %38, i8 zeroext 16, i16 zeroext %47) #9, !dbg !2636
  %49 = icmp eq %struct.pbuf* %48, null, !dbg !2638
  br i1 %49, label %50, label %51, !dbg !2639

; <label>:50:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  br label %90, !dbg !2642

; <label>:51:                                     ; preds = %26
  %52 = load i32, i32* %33, align 4, !dbg !2643, !tbaa !1744
  %53 = load i32, i32* %39, align 4, !dbg !2644, !tbaa !1755
  %54 = add i32 %53, %52, !dbg !2645
  %55 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2646
  store i32 %54, i32* %55, align 8, !dbg !2647, !tbaa !1765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2640
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %48, i64 0, i32 1, !dbg !2648
  %57 = load i8*, i8** %56, align 8, !dbg !2648, !tbaa !584
  br i1 %27, label %58, label %65, !dbg !2649

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds i8, i8* %57, i64 12, !dbg !2651
  %60 = bitcast i8* %59 to i16*, !dbg !2651
  %61 = load i16, i16* %60, align 1, !dbg !2651, !tbaa !856
  %62 = and i16 %61, -16129, !dbg !2651
  %63 = tail call zeroext i16 @lwip_htons(i16 zeroext 17) #9, !dbg !2651
  %64 = or i16 %62, %63, !dbg !2651
  store i16 %64, i16* %60, align 1, !dbg !2651, !tbaa !856
  br label %75, !dbg !2653

; <label>:65:                                     ; preds = %51
  %66 = getelementptr inbounds i8, i8* %57, i64 20, !dbg !2654
  %67 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2656
  %68 = load %struct.pbuf*, %struct.pbuf** %67, align 8, !dbg !2656, !tbaa !591
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %68, i64 0, i32 2, !dbg !2657
  %70 = load i16, i16* %69, align 8, !dbg !2657, !tbaa !756
  %71 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 2, !dbg !2658
  %72 = load i16, i16* %71, align 8, !dbg !2658, !tbaa !523
  %73 = sub i16 %70, %72, !dbg !2659
  %74 = tail call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %68, i8* nonnull %66, i16 zeroext 1, i16 zeroext %73) #9, !dbg !2660
  br label %75

; <label>:75:                                     ; preds = %65, %58
  %76 = load %struct.tcp_hdr*, %struct.tcp_hdr** %15, align 8, !dbg !2661, !tbaa !849
  %77 = getelementptr inbounds %struct.tcp_hdr, %struct.tcp_hdr* %76, i64 0, i32 2, !dbg !2661
  %78 = load i32, i32* %77, align 1, !dbg !2661, !tbaa !1095
  %79 = tail call i32 @lwip_htonl(i32 %78) #9, !dbg !2661
  %80 = add i32 %79, 1, !dbg !2662
  %81 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2664
  %82 = load i32, i32* %81, align 8, !dbg !2664, !tbaa !1880
  %83 = sub i32 %82, %80, !dbg !2664
  %84 = icmp slt i32 %83, 0, !dbg !2664
  br i1 %84, label %85, label %86, !dbg !2666

; <label>:85:                                     ; preds = %75
  store i32 %80, i32* %81, align 8, !dbg !2667, !tbaa !1880
  br label %86, !dbg !2669

; <label>:86:                                     ; preds = %75, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  %87 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !2679
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2680
  %89 = tail call fastcc signext i8 @tcp_output_control_segment(%struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %48, %struct.ip_addr* nonnull %87, %struct.ip_addr* nonnull %88) #7, !dbg !2681
  br label %90, !dbg !2683

; <label>:90:                                     ; preds = %50, %4, %86
  %91 = phi i8 [ %89, %86 ], [ 0, %4 ], [ -1, %50 ], !dbg !2684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2685
  ret i8 %91, !dbg !2685
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
!454 = !DILocation(line: 335, column: 12, scope: !455, inlinedAt: !437)
!455 = distinct !DILexicalBlock(scope: !431, file: !10, line: 335, column: 7)
!456 = !DILocation(line: 335, column: 25, scope: !455, inlinedAt: !437)
!457 = !DILocation(line: 335, column: 7, scope: !431, inlinedAt: !437)
!458 = !DILocation(line: 338, column: 5, scope: !459, inlinedAt: !437)
!459 = distinct !DILexicalBlock(scope: !455, file: !10, line: 335, column: 88)
!460 = !{!461, !394, i64 156}
!461 = !{!"stats_", !462, i64 0, !462, i64 24, !462, i64 48, !462, i64 72, !462, i64 96, !462, i64 120, !462, i64 144, !463, i64 168, !462, i64 186, !462, i64 210, !462, i64 234, !465, i64 258, !462, i64 286}
!462 = !{!"stats_proto", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22}
!463 = !{!"stats_sys", !464, i64 0, !464, i64 6, !464, i64 12}
!464 = !{!"stats_syselem", !394, i64 0, !394, i64 2, !394, i64 4}
!465 = !{!"stats_igmp", !394, i64 0, !394, i64 2, !394, i64 4, !394, i64 6, !394, i64 8, !394, i64 10, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18, !394, i64 20, !394, i64 22, !394, i64 24, !394, i64 26}
!466 = !DILocation(line: 340, column: 5, scope: !459, inlinedAt: !437)
!467 = !DILocation(line: 342, column: 25, scope: !468, inlinedAt: !437)
!468 = distinct !DILexicalBlock(scope: !431, file: !10, line: 342, column: 7)
!469 = !DILocation(line: 0, scope: !470, inlinedAt: !437)
!470 = distinct !DILexicalBlock(scope: !471, file: !10, line: 346, column: 5)
!471 = distinct !DILexicalBlock(scope: !472, file: !10, line: 346, column: 5)
!472 = distinct !DILexicalBlock(scope: !468, file: !10, line: 345, column: 10)
!473 = !{!412, !414, i64 192}
!474 = !DILocation(line: 0, scope: !475, inlinedAt: !437)
!475 = distinct !DILexicalBlock(scope: !476, file: !10, line: 343, column: 5)
!476 = distinct !DILexicalBlock(scope: !477, file: !10, line: 343, column: 5)
!477 = distinct !DILexicalBlock(scope: !468, file: !10, line: 342, column: 31)
!478 = !DILocation(line: 342, column: 7, scope: !431, inlinedAt: !437)
!479 = !DILocation(line: 343, column: 5, scope: !475, inlinedAt: !437)
!480 = !{!412, !414, i64 184}
!481 = !DILocation(line: 343, column: 5, scope: !476, inlinedAt: !437)
!482 = !DILocation(line: 343, column: 5, scope: !483, inlinedAt: !437)
!483 = distinct !DILexicalBlock(scope: !484, file: !10, line: 343, column: 5)
!484 = distinct !DILexicalBlock(scope: !475, file: !10, line: 343, column: 5)
!485 = !DILocation(line: 343, column: 5, scope: !486, inlinedAt: !437)
!486 = distinct !DILexicalBlock(scope: !487, file: !10, line: 343, column: 5)
!487 = distinct !DILexicalBlock(scope: !488, file: !10, line: 343, column: 5)
!488 = distinct !DILexicalBlock(scope: !483, file: !10, line: 343, column: 5)
!489 = !DILocation(line: 346, column: 5, scope: !470, inlinedAt: !437)
!490 = !DILocation(line: 346, column: 5, scope: !471, inlinedAt: !437)
!491 = !DILocation(line: 346, column: 5, scope: !492, inlinedAt: !437)
!492 = distinct !DILexicalBlock(scope: !493, file: !10, line: 346, column: 5)
!493 = distinct !DILexicalBlock(scope: !470, file: !10, line: 346, column: 5)
!494 = !DILocation(line: 346, column: 5, scope: !495, inlinedAt: !437)
!495 = distinct !DILexicalBlock(scope: !496, file: !10, line: 346, column: 5)
!496 = distinct !DILexicalBlock(scope: !497, file: !10, line: 346, column: 5)
!497 = distinct !DILexicalBlock(scope: !492, file: !10, line: 346, column: 5)
!498 = !DILocation(line: 0, scope: !223)
!499 = !{!412, !394, i64 82}
!500 = !DILocation(line: 350, column: 1, scope: !431, inlinedAt: !437)
!501 = !DILocation(line: 0, scope: !431, inlinedAt: !437)
!502 = !DILocation(line: 413, column: 9, scope: !223)
!503 = !DILocation(line: 397, column: 9, scope: !223)
!504 = !DILocation(line: 398, column: 8, scope: !223)
!505 = !DILocation(line: 478, column: 12, scope: !357)
!506 = !DILocation(line: 478, column: 19, scope: !357)
!507 = !DILocation(line: 478, column: 7, scope: !223)
!508 = !DILocation(line: 0, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !10, line: 483, column: 5)
!510 = distinct !DILexicalBlock(scope: !356, file: !10, line: 483, column: 5)
!511 = !DILocation(line: 483, column: 50, scope: !509)
!512 = !{!513, !414, i64 0}
!513 = !{!"tcp_seg", !414, i64 0, !414, i64 8, !394, i64 16, !395, i64 18, !414, i64 24}
!514 = !DILocation(line: 483, column: 55, scope: !509)
!515 = !DILocation(line: 483, column: 5, scope: !510)
!516 = distinct !{!516, !515, !517}
!517 = !DILocation(line: 484, column: 42, scope: !510)
!518 = !DILocation(line: 487, column: 21, scope: !356)
!519 = !{!513, !395, i64 18}
!520 = !DILocation(line: 488, column: 5, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !10, line: 488, column: 5)
!522 = distinct !DILexicalBlock(scope: !356, file: !10, line: 488, column: 5)
!523 = !{!513, !394, i64 16}
!524 = !DILocation(line: 488, column: 5, scope: !522)
!525 = !DILocation(line: 488, column: 5, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !10, line: 488, column: 5)
!527 = distinct !DILexicalBlock(scope: !521, file: !10, line: 488, column: 5)
!528 = !DILocation(line: 488, column: 5, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !10, line: 488, column: 5)
!530 = distinct !DILexicalBlock(scope: !531, file: !10, line: 488, column: 5)
!531 = distinct !DILexicalBlock(scope: !526, file: !10, line: 488, column: 5)
!532 = !DILocation(line: 489, column: 23, scope: !356)
!533 = !DILocation(line: 504, column: 21, scope: !356)
!534 = !{!412, !394, i64 174}
!535 = !DILocation(line: 504, column: 14, scope: !356)
!536 = !DILocation(line: 505, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !356, file: !10, line: 505, column: 9)
!538 = !DILocation(line: 505, column: 18, scope: !537)
!539 = !DILocation(line: 505, column: 9, scope: !356)
!540 = !DILocation(line: 506, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !10, line: 506, column: 7)
!542 = distinct !DILexicalBlock(scope: !543, file: !10, line: 506, column: 7)
!543 = distinct !DILexicalBlock(scope: !537, file: !10, line: 505, column: 23)
!544 = !DILocation(line: 506, column: 7, scope: !542)
!545 = !DILocation(line: 506, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !10, line: 506, column: 7)
!547 = distinct !DILexicalBlock(scope: !541, file: !10, line: 506, column: 7)
!548 = !DILocation(line: 506, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !10, line: 506, column: 7)
!550 = distinct !DILexicalBlock(scope: !551, file: !10, line: 506, column: 7)
!551 = distinct !DILexicalBlock(scope: !546, file: !10, line: 506, column: 7)
!552 = !DILocation(line: 508, column: 23, scope: !543)
!553 = !DILocation(line: 510, column: 16, scope: !543)
!554 = !DILocation(line: 511, column: 13, scope: !543)
!555 = !DILocation(line: 514, column: 5, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !10, line: 514, column: 5)
!557 = distinct !DILexicalBlock(scope: !356, file: !10, line: 514, column: 5)
!558 = !DILocation(line: 514, column: 5, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !10, line: 514, column: 5)
!560 = distinct !DILexicalBlock(scope: !556, file: !10, line: 514, column: 5)
!561 = !DILocation(line: 514, column: 5, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !10, line: 514, column: 5)
!563 = distinct !DILexicalBlock(scope: !564, file: !10, line: 514, column: 5)
!564 = distinct !DILexicalBlock(scope: !559, file: !10, line: 514, column: 5)
!565 = !DILocation(line: 0, scope: !356)
!566 = !DILocation(line: 533, column: 10, scope: !361)
!567 = !DILocation(line: 533, column: 16, scope: !361)
!568 = !DILocation(line: 533, column: 14, scope: !361)
!569 = !DILocation(line: 533, column: 21, scope: !361)
!570 = !DILocation(line: 533, column: 25, scope: !361)
!571 = !DILocation(line: 533, column: 31, scope: !361)
!572 = !DILocation(line: 533, column: 57, scope: !361)
!573 = !DILocation(line: 533, column: 36, scope: !361)
!574 = !DILocation(line: 534, column: 22, scope: !360)
!575 = !DILocation(line: 534, column: 13, scope: !360)
!576 = !DILocation(line: 540, column: 20, scope: !364)
!577 = !DILocation(line: 540, column: 11, scope: !360)
!578 = !DILocation(line: 542, column: 25, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !10, line: 542, column: 13)
!580 = distinct !DILexicalBlock(scope: !364, file: !10, line: 540, column: 43)
!581 = !DILocation(line: 542, column: 98, scope: !579)
!582 = !DILocation(line: 542, column: 13, scope: !580)
!583 = !DILocation(line: 551, column: 9, scope: !580)
!584 = !{!585, !414, i64 8}
!585 = !{!"pbuf", !414, i64 0, !414, i64 8, !394, i64 16, !394, i64 18, !395, i64 20, !395, i64 21, !395, i64 22, !395, i64 23}
!586 = !DILocation(line: 555, column: 21, scope: !580)
!587 = !DILocation(line: 555, column: 18, scope: !580)
!588 = !DILocation(line: 556, column: 7, scope: !580)
!589 = !DILocation(line: 560, column: 31, scope: !590)
!590 = distinct !DILexicalBlock(scope: !363, file: !10, line: 560, column: 9)
!591 = !{!513, !414, i64 8}
!592 = !DILocation(line: 559, column: 22, scope: !363)
!593 = !DILocation(line: 560, column: 14, scope: !590)
!594 = !DILocation(line: 0, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !10, line: 560, column: 9)
!596 = !DILocation(line: 560, column: 37, scope: !595)
!597 = !{!585, !414, i64 0}
!598 = !DILocation(line: 560, column: 42, scope: !595)
!599 = !DILocation(line: 560, column: 9, scope: !590)
!600 = distinct !{!600, !599, !601}
!601 = !DILocation(line: 560, column: 63, scope: !590)
!602 = !DILocation(line: 561, column: 18, scope: !603)
!603 = distinct !DILexicalBlock(scope: !363, file: !10, line: 561, column: 13)
!604 = !{!585, !395, i64 20}
!605 = !DILocation(line: 561, column: 106, scope: !603)
!606 = !DILocation(line: 561, column: 112, scope: !603)
!607 = !DILocation(line: 562, column: 30, scope: !603)
!608 = !DILocation(line: 562, column: 43, scope: !603)
!609 = !{!585, !394, i64 18}
!610 = !DILocation(line: 562, column: 38, scope: !603)
!611 = !DILocation(line: 562, column: 47, scope: !603)
!612 = !DILocation(line: 561, column: 13, scope: !363)
!613 = !DILocation(line: 563, column: 11, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !10, line: 563, column: 11)
!615 = distinct !DILexicalBlock(scope: !616, file: !10, line: 563, column: 11)
!616 = distinct !DILexicalBlock(scope: !603, file: !10, line: 562, column: 69)
!617 = !DILocation(line: 563, column: 11, scope: !615)
!618 = !DILocation(line: 563, column: 11, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !10, line: 563, column: 11)
!620 = distinct !DILexicalBlock(scope: !614, file: !10, line: 563, column: 11)
!621 = !DILocation(line: 563, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !10, line: 563, column: 11)
!623 = distinct !DILexicalBlock(scope: !624, file: !10, line: 563, column: 11)
!624 = distinct !DILexicalBlock(scope: !619, file: !10, line: 563, column: 11)
!625 = !DILocation(line: 566, column: 27, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !10, line: 566, column: 15)
!627 = distinct !DILexicalBlock(scope: !603, file: !10, line: 565, column: 16)
!628 = !DILocation(line: 566, column: 67, scope: !626)
!629 = !DILocation(line: 566, column: 15, scope: !627)
!630 = !DILocation(line: 572, column: 70, scope: !627)
!631 = !DILocation(line: 572, column: 42, scope: !627)
!632 = !DILocation(line: 572, column: 50, scope: !627)
!633 = !{!634, !414, i64 8}
!634 = !{!"pbuf_rom", !414, i64 0, !414, i64 8}
!635 = !DILocation(line: 573, column: 23, scope: !627)
!636 = !DILocation(line: 573, column: 20, scope: !627)
!637 = !DILocation(line: 0, scope: !616)
!638 = !DILocation(line: 583, column: 11, scope: !360)
!639 = !DILocation(line: 588, column: 5, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !10, line: 588, column: 5)
!641 = distinct !DILexicalBlock(scope: !642, file: !10, line: 588, column: 5)
!642 = distinct !DILexicalBlock(scope: !357, file: !10, line: 586, column: 10)
!643 = !DILocation(line: 588, column: 5, scope: !641)
!644 = !DILocation(line: 599, column: 16, scope: !223)
!645 = !DILocation(line: 588, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !10, line: 588, column: 5)
!647 = distinct !DILexicalBlock(scope: !640, file: !10, line: 588, column: 5)
!648 = !DILocation(line: 588, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !10, line: 588, column: 5)
!650 = distinct !DILexicalBlock(scope: !651, file: !10, line: 588, column: 5)
!651 = distinct !DILexicalBlock(scope: !646, file: !10, line: 588, column: 5)
!652 = !DILocation(line: 438, column: 12, scope: !223)
!653 = !DILocation(line: 599, column: 14, scope: !223)
!654 = !DILocation(line: 599, column: 3, scope: !223)
!655 = !DILocation(line: 599, column: 10, scope: !223)
!656 = !DILocation(line: 601, column: 22, scope: !366)
!657 = !DILocation(line: 601, column: 11, scope: !366)
!658 = !DILocation(line: 602, column: 11, scope: !366)
!659 = !DILocation(line: 603, column: 20, scope: !366)
!660 = !DILocation(line: 603, column: 11, scope: !366)
!661 = !DILocation(line: 609, column: 9, scope: !366)
!662 = !DILocation(line: 612, column: 110, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !10, line: 612, column: 11)
!664 = distinct !DILexicalBlock(scope: !372, file: !10, line: 609, column: 41)
!665 = !DILocation(line: 612, column: 104, scope: !663)
!666 = !DILocation(line: 612, column: 16, scope: !663)
!667 = !DILocation(line: 600, column: 18, scope: !366)
!668 = !DILocation(line: 612, column: 120, scope: !663)
!669 = !DILocation(line: 612, column: 11, scope: !664)
!670 = !DILocation(line: 616, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !10, line: 616, column: 7)
!672 = distinct !DILexicalBlock(scope: !664, file: !10, line: 616, column: 7)
!673 = !DILocation(line: 616, column: 7, scope: !672)
!674 = !DILocation(line: 616, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !10, line: 616, column: 7)
!676 = distinct !DILexicalBlock(scope: !671, file: !10, line: 616, column: 7)
!677 = !DILocation(line: 616, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !10, line: 616, column: 7)
!679 = distinct !DILexicalBlock(scope: !680, file: !10, line: 616, column: 7)
!680 = distinct !DILexicalBlock(scope: !675, file: !10, line: 616, column: 7)
!681 = !DILocation(line: 619, column: 7, scope: !664)
!682 = !DILocation(line: 620, column: 5, scope: !664)
!683 = !DILocation(line: 628, column: 7, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !10, line: 628, column: 7)
!685 = distinct !DILexicalBlock(scope: !371, file: !10, line: 628, column: 7)
!686 = !DILocation(line: 628, column: 7, scope: !685)
!687 = !DILocation(line: 628, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !10, line: 628, column: 7)
!689 = distinct !DILexicalBlock(scope: !684, file: !10, line: 628, column: 7)
!690 = !DILocation(line: 628, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !10, line: 628, column: 7)
!692 = distinct !DILexicalBlock(scope: !693, file: !10, line: 628, column: 7)
!693 = distinct !DILexicalBlock(scope: !688, file: !10, line: 628, column: 7)
!694 = !DILocation(line: 630, column: 17, scope: !695)
!695 = distinct !DILexicalBlock(scope: !371, file: !10, line: 630, column: 11)
!696 = !DILocation(line: 626, column: 20, scope: !371)
!697 = !DILocation(line: 630, column: 63, scope: !695)
!698 = !DILocation(line: 630, column: 11, scope: !371)
!699 = !DILocation(line: 643, column: 60, scope: !371)
!700 = !DILocation(line: 643, column: 32, scope: !371)
!701 = !DILocation(line: 643, column: 40, scope: !371)
!702 = !DILocation(line: 646, column: 16, scope: !703)
!703 = distinct !DILexicalBlock(scope: !371, file: !10, line: 646, column: 11)
!704 = !DILocation(line: 646, column: 62, scope: !703)
!705 = !DILocation(line: 646, column: 11, scope: !371)
!706 = !DILocation(line: 649, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !10, line: 646, column: 71)
!708 = !DILocation(line: 651, column: 9, scope: !707)
!709 = !DILocation(line: 654, column: 7, scope: !371)
!710 = !DILocation(line: 657, column: 17, scope: !366)
!711 = !DILocation(line: 657, column: 14, scope: !366)
!712 = !DILocation(line: 662, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !366, file: !10, line: 662, column: 9)
!714 = !DILocation(line: 662, column: 9, scope: !366)
!715 = !DILocation(line: 665, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !10, line: 662, column: 74)
!717 = !DILocation(line: 666, column: 7, scope: !716)
!718 = !DILocation(line: 669, column: 51, scope: !719)
!719 = distinct !DILexicalBlock(scope: !366, file: !10, line: 669, column: 9)
!720 = !{!412, !415, i64 156}
!721 = !DILocation(line: 669, column: 59, scope: !719)
!722 = !DILocation(line: 669, column: 16, scope: !719)
!723 = !DILocation(line: 669, column: 77, scope: !719)
!724 = !DILocation(line: 669, column: 9, scope: !366)
!725 = !DILocation(line: 682, column: 15, scope: !726)
!726 = distinct !DILexicalBlock(scope: !366, file: !10, line: 682, column: 9)
!727 = !DILocation(line: 682, column: 9, scope: !366)
!728 = !DILocation(line: 686, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !10, line: 686, column: 7)
!730 = distinct !DILexicalBlock(scope: !731, file: !10, line: 686, column: 7)
!731 = distinct !DILexicalBlock(scope: !726, file: !10, line: 684, column: 12)
!732 = !DILocation(line: 686, column: 7, scope: !730)
!733 = !DILocation(line: 686, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !10, line: 686, column: 7)
!735 = distinct !DILexicalBlock(scope: !729, file: !10, line: 686, column: 7)
!736 = !DILocation(line: 686, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !10, line: 686, column: 7)
!738 = distinct !DILexicalBlock(scope: !739, file: !10, line: 686, column: 7)
!739 = distinct !DILexicalBlock(scope: !734, file: !10, line: 686, column: 7)
!740 = !DILocation(line: 687, column: 17, scope: !731)
!741 = !DILocation(line: 687, column: 22, scope: !731)
!742 = !DILocation(line: 696, column: 9, scope: !366)
!743 = !DILocation(line: 535, column: 11, scope: !360)
!744 = !DILocation(line: 714, column: 21, scope: !375)
!745 = !DILocation(line: 714, column: 7, scope: !223)
!746 = !DILocation(line: 717, column: 27, scope: !747)
!747 = distinct !DILexicalBlock(scope: !374, file: !10, line: 717, column: 5)
!748 = !DILocation(line: 715, column: 18, scope: !374)
!749 = !DILocation(line: 0, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !10, line: 717, column: 5)
!751 = !{!414, !414, i64 0}
!752 = !DILocation(line: 717, column: 5, scope: !747)
!753 = !DILocation(line: 718, column: 10, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !10, line: 717, column: 46)
!755 = !DILocation(line: 718, column: 18, scope: !754)
!756 = !{!585, !394, i64 16}
!757 = !DILocation(line: 719, column: 14, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !10, line: 719, column: 11)
!759 = !DILocation(line: 719, column: 19, scope: !758)
!760 = !DILocation(line: 719, column: 11, scope: !754)
!761 = !DILocation(line: 720, column: 9, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !10, line: 719, column: 28)
!763 = !DILocation(line: 721, column: 16, scope: !762)
!764 = !DILocation(line: 722, column: 7, scope: !762)
!765 = distinct !{!765, !752, !766}
!766 = !DILocation(line: 723, column: 5, scope: !747)
!767 = !DILocation(line: 724, column: 18, scope: !374)
!768 = !DILocation(line: 724, column: 22, scope: !374)
!769 = !DILocation(line: 730, column: 3, scope: !374)
!770 = !DILocation(line: 731, column: 26, scope: !223)
!771 = !DILocation(line: 731, column: 8, scope: !223)
!772 = !DILocation(line: 731, column: 24, scope: !223)
!773 = !DILocation(line: 738, column: 16, scope: !379)
!774 = !DILocation(line: 738, column: 7, scope: !223)
!775 = !DILocation(line: 739, column: 5, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !10, line: 739, column: 5)
!777 = distinct !DILexicalBlock(scope: !778, file: !10, line: 739, column: 5)
!778 = distinct !DILexicalBlock(scope: !379, file: !10, line: 738, column: 25)
!779 = !DILocation(line: 739, column: 5, scope: !777)
!780 = !DILocation(line: 739, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !10, line: 739, column: 5)
!782 = distinct !DILexicalBlock(scope: !776, file: !10, line: 739, column: 5)
!783 = !DILocation(line: 739, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !10, line: 739, column: 5)
!785 = distinct !DILexicalBlock(scope: !786, file: !10, line: 739, column: 5)
!786 = distinct !DILexicalBlock(scope: !781, file: !10, line: 739, column: 5)
!787 = !DILocation(line: 741, column: 27, scope: !778)
!788 = !DILocation(line: 741, column: 5, scope: !778)
!789 = !DILocation(line: 742, column: 35, scope: !778)
!790 = !DILocation(line: 743, column: 3, scope: !778)
!791 = !DILocation(line: 743, column: 24, scope: !378)
!792 = !DILocation(line: 0, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !10, line: 745, column: 5)
!794 = distinct !DILexicalBlock(scope: !377, file: !10, line: 745, column: 5)
!795 = !DILocation(line: 743, column: 14, scope: !379)
!796 = !DILocation(line: 745, column: 5, scope: !793)
!797 = !DILocation(line: 745, column: 5, scope: !794)
!798 = !DILocation(line: 745, column: 5, scope: !799)
!799 = distinct !DILexicalBlock(scope: !800, file: !10, line: 745, column: 5)
!800 = distinct !DILexicalBlock(scope: !793, file: !10, line: 745, column: 5)
!801 = !DILocation(line: 745, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !10, line: 745, column: 5)
!803 = distinct !DILexicalBlock(scope: !804, file: !10, line: 745, column: 5)
!804 = distinct !DILexicalBlock(scope: !799, file: !10, line: 745, column: 5)
!805 = !DILocation(line: 0, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !10, line: 747, column: 5)
!807 = distinct !DILexicalBlock(scope: !377, file: !10, line: 747, column: 5)
!808 = !DILocation(line: 744, column: 18, scope: !377)
!809 = !DILocation(line: 747, column: 33, scope: !806)
!810 = !DILocation(line: 747, column: 38, scope: !806)
!811 = !DILocation(line: 0, scope: !377)
!812 = !DILocation(line: 747, column: 5, scope: !807)
!813 = distinct !{!813, !812, !814}
!814 = !DILocation(line: 749, column: 5, scope: !807)
!815 = !DILocation(line: 751, column: 8, scope: !377)
!816 = !DILocation(line: 751, column: 12, scope: !377)
!817 = !DILocation(line: 753, column: 3, scope: !377)
!818 = !DILocation(line: 773, column: 7, scope: !223)
!819 = !DILocation(line: 0, scope: !778)
!820 = !DILocation(line: 776, column: 18, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !10, line: 775, column: 10)
!822 = distinct !DILexicalBlock(scope: !223, file: !10, line: 773, column: 7)
!823 = !DILocation(line: 0, scope: !824)
!824 = distinct !DILexicalBlock(scope: !822, file: !10, line: 773, column: 28)
!825 = !DILocation(line: 782, column: 8, scope: !223)
!826 = !DILocation(line: 782, column: 16, scope: !223)
!827 = !DILocation(line: 783, column: 8, scope: !223)
!828 = !DILocation(line: 783, column: 16, scope: !223)
!829 = !DILocation(line: 784, column: 21, scope: !223)
!830 = !DILocation(line: 788, column: 25, scope: !831)
!831 = distinct !DILexicalBlock(scope: !223, file: !10, line: 788, column: 7)
!832 = !DILocation(line: 788, column: 7, scope: !223)
!833 = !DILocation(line: 789, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !10, line: 789, column: 5)
!835 = distinct !DILexicalBlock(scope: !836, file: !10, line: 789, column: 5)
!836 = distinct !DILexicalBlock(scope: !831, file: !10, line: 788, column: 31)
!837 = !DILocation(line: 789, column: 5, scope: !835)
!838 = !DILocation(line: 789, column: 5, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !10, line: 789, column: 5)
!840 = distinct !DILexicalBlock(scope: !834, file: !10, line: 789, column: 5)
!841 = !DILocation(line: 789, column: 5, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !10, line: 789, column: 5)
!843 = distinct !DILexicalBlock(scope: !844, file: !10, line: 789, column: 5)
!844 = distinct !DILexicalBlock(scope: !839, file: !10, line: 789, column: 5)
!845 = !DILocation(line: 794, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !223, file: !10, line: 794, column: 7)
!847 = !DILocation(line: 794, column: 19, scope: !846)
!848 = !DILocation(line: 794, column: 27, scope: !846)
!849 = !{!513, !414, i64 24}
!850 = !DILocation(line: 794, column: 34, scope: !846)
!851 = !DILocation(line: 794, column: 56, scope: !846)
!852 = !DILocation(line: 794, column: 79, scope: !846)
!853 = !DILocation(line: 794, column: 42, scope: !846)
!854 = !DILocation(line: 795, column: 5, scope: !855)
!855 = distinct !DILexicalBlock(scope: !846, file: !10, line: 794, column: 86)
!856 = !{!857, !394, i64 12}
!857 = !{!"tcp_hdr", !394, i64 0, !394, i64 2, !415, i64 4, !415, i64 8, !394, i64 12, !394, i64 14, !394, i64 16, !394, i64 18}
!858 = !DILocation(line: 796, column: 3, scope: !855)
!859 = !DILocation(line: 542, column: 23, scope: !579)
!860 = !DILocation(line: 800, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !223, file: !10, line: 800, column: 3)
!862 = !DILocation(line: 801, column: 3, scope: !223)
!863 = !DILocation(line: 803, column: 16, scope: !864)
!864 = distinct !DILexicalBlock(scope: !223, file: !10, line: 803, column: 7)
!865 = !DILocation(line: 803, column: 7, scope: !223)
!866 = !DILocation(line: 804, column: 5, scope: !867)
!867 = distinct !DILexicalBlock(scope: !864, file: !10, line: 803, column: 25)
!868 = !DILocation(line: 805, column: 3, scope: !867)
!869 = !DILocation(line: 806, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !223, file: !10, line: 806, column: 7)
!871 = !DILocation(line: 806, column: 7, scope: !223)
!872 = !DILocation(line: 807, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !10, line: 806, column: 22)
!874 = !DILocation(line: 808, column: 3, scope: !873)
!875 = !DILocation(line: 809, column: 12, scope: !876)
!876 = distinct !DILexicalBlock(scope: !223, file: !10, line: 809, column: 7)
!877 = !DILocation(line: 809, column: 25, scope: !876)
!878 = !DILocation(line: 809, column: 7, scope: !223)
!879 = !DILocation(line: 810, column: 5, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !10, line: 810, column: 5)
!881 = distinct !DILexicalBlock(scope: !882, file: !10, line: 810, column: 5)
!882 = distinct !DILexicalBlock(scope: !876, file: !10, line: 809, column: 31)
!883 = !DILocation(line: 810, column: 5, scope: !881)
!884 = !DILocation(line: 810, column: 5, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !10, line: 810, column: 5)
!886 = distinct !DILexicalBlock(scope: !880, file: !10, line: 810, column: 5)
!887 = !DILocation(line: 810, column: 5, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !10, line: 810, column: 5)
!889 = distinct !DILexicalBlock(scope: !890, file: !10, line: 810, column: 5)
!890 = distinct !DILexicalBlock(scope: !885, file: !10, line: 810, column: 5)
!891 = !DILocation(line: 815, column: 1, scope: !223)
!892 = !DILocation(line: 194, column: 43, scope: !2)
!893 = !DILocation(line: 196, column: 2, scope: !2)
!894 = !DILocation(line: 196, column: 10, scope: !2)
!895 = !DILocation(line: 197, column: 2, scope: !2)
!896 = !DILocation(line: 198, column: 2, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 198, column: 2)
!898 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!899 = !DILocation(line: 199, column: 2, scope: !2)
!900 = !DILocation(line: 200, column: 1, scope: !2)
!901 = distinct !DISubprogram(name: "tcp_pbuf_prealloc", scope: !10, file: !10, line: 227, type: !902, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !908)
!902 = !DISubroutineType(types: !903)
!903 = !{!120, !904, !103, !103, !905, !906, !110, !110}
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_layer", file: !56, line: 112, baseType: !55)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917}
!909 = !DILocalVariable(name: "layer", arg: 1, scope: !901, file: !10, line: 227, type: !904)
!910 = !DILocalVariable(name: "length", arg: 2, scope: !901, file: !10, line: 227, type: !103)
!911 = !DILocalVariable(name: "max_length", arg: 3, scope: !901, file: !10, line: 227, type: !103)
!912 = !DILocalVariable(name: "oversize", arg: 4, scope: !901, file: !10, line: 228, type: !905)
!913 = !DILocalVariable(name: "pcb", arg: 5, scope: !901, file: !10, line: 228, type: !906)
!914 = !DILocalVariable(name: "apiflags", arg: 6, scope: !901, file: !10, line: 228, type: !110)
!915 = !DILocalVariable(name: "first_seg", arg: 7, scope: !901, file: !10, line: 229, type: !110)
!916 = !DILocalVariable(name: "p", scope: !901, file: !10, line: 231, type: !120)
!917 = !DILocalVariable(name: "alloc", scope: !901, file: !10, line: 232, type: !103)
!918 = !DILocation(line: 227, column: 30, scope: !901)
!919 = !DILocation(line: 227, column: 43, scope: !901)
!920 = !DILocation(line: 227, column: 57, scope: !901)
!921 = !DILocation(line: 228, column: 26, scope: !901)
!922 = !DILocation(line: 228, column: 58, scope: !901)
!923 = !DILocation(line: 228, column: 68, scope: !901)
!924 = !DILocation(line: 229, column: 24, scope: !901)
!925 = !DILocation(line: 232, column: 9, scope: !901)
!926 = !DILocation(line: 234, column: 3, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !10, line: 234, column: 3)
!928 = distinct !DILexicalBlock(scope: !901, file: !10, line: 234, column: 3)
!929 = !DILocation(line: 234, column: 3, scope: !928)
!930 = !DILocation(line: 234, column: 3, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !10, line: 234, column: 3)
!932 = distinct !DILexicalBlock(scope: !927, file: !10, line: 234, column: 3)
!933 = !DILocation(line: 234, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !10, line: 234, column: 3)
!935 = distinct !DILexicalBlock(scope: !936, file: !10, line: 234, column: 3)
!936 = distinct !DILexicalBlock(scope: !931, file: !10, line: 234, column: 3)
!937 = !DILocation(line: 235, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !10, line: 235, column: 3)
!939 = distinct !DILexicalBlock(scope: !901, file: !10, line: 235, column: 3)
!940 = !DILocation(line: 235, column: 3, scope: !939)
!941 = !DILocation(line: 235, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !10, line: 235, column: 3)
!943 = distinct !DILexicalBlock(scope: !938, file: !10, line: 235, column: 3)
!944 = !DILocation(line: 235, column: 3, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !10, line: 235, column: 3)
!946 = distinct !DILexicalBlock(scope: !947, file: !10, line: 235, column: 3)
!947 = distinct !DILexicalBlock(scope: !942, file: !10, line: 235, column: 3)
!948 = !DILocation(line: 244, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !901, file: !10, line: 244, column: 7)
!950 = !DILocation(line: 244, column: 16, scope: !949)
!951 = !DILocation(line: 244, column: 14, scope: !949)
!952 = !DILocation(line: 244, column: 7, scope: !901)
!953 = !DILocation(line: 256, column: 19, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !10, line: 256, column: 9)
!955 = distinct !DILexicalBlock(scope: !949, file: !10, line: 244, column: 28)
!956 = !DILocation(line: 256, column: 42, scope: !954)
!957 = !DILocation(line: 257, column: 17, scope: !954)
!958 = !DILocation(line: 257, column: 23, scope: !954)
!959 = !DILocation(line: 257, column: 37, scope: !954)
!960 = !DILocation(line: 258, column: 12, scope: !954)
!961 = !DILocation(line: 258, column: 22, scope: !954)
!962 = !DILocation(line: 259, column: 16, scope: !954)
!963 = !DILocation(line: 259, column: 23, scope: !954)
!964 = !DILocation(line: 259, column: 31, scope: !954)
!965 = !DILocation(line: 260, column: 16, scope: !954)
!966 = !DILocation(line: 260, column: 24, scope: !954)
!967 = !DILocation(line: 256, column: 9, scope: !955)
!968 = !DILocation(line: 261, column: 15, scope: !969)
!969 = distinct !DILexicalBlock(scope: !954, file: !10, line: 260, column: 35)
!970 = !DILocation(line: 262, column: 5, scope: !969)
!971 = !DILocation(line: 0, scope: !901)
!972 = !DILocation(line: 265, column: 7, scope: !901)
!973 = !DILocation(line: 231, column: 16, scope: !901)
!974 = !DILocation(line: 266, column: 9, scope: !975)
!975 = distinct !DILexicalBlock(scope: !901, file: !10, line: 266, column: 7)
!976 = !DILocation(line: 266, column: 7, scope: !901)
!977 = !DILocation(line: 269, column: 3, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !10, line: 269, column: 3)
!979 = distinct !DILexicalBlock(scope: !901, file: !10, line: 269, column: 3)
!980 = !DILocation(line: 269, column: 3, scope: !979)
!981 = !DILocation(line: 269, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !983, file: !10, line: 269, column: 3)
!983 = distinct !DILexicalBlock(scope: !978, file: !10, line: 269, column: 3)
!984 = !DILocation(line: 269, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !10, line: 269, column: 3)
!986 = distinct !DILexicalBlock(scope: !987, file: !10, line: 269, column: 3)
!987 = distinct !DILexicalBlock(scope: !982, file: !10, line: 269, column: 3)
!988 = !DILocation(line: 270, column: 18, scope: !901)
!989 = !DILocation(line: 270, column: 22, scope: !901)
!990 = !DILocation(line: 270, column: 13, scope: !901)
!991 = !DILocation(line: 272, column: 15, scope: !901)
!992 = !DILocation(line: 272, column: 23, scope: !901)
!993 = !DILocation(line: 272, column: 10, scope: !901)
!994 = !DILocation(line: 273, column: 3, scope: !901)
!995 = !DILocation(line: 274, column: 1, scope: !901)
!996 = distinct !DISubprogram(name: "tcp_create_segment", scope: !10, file: !10, line: 160, type: !997, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !999)
!997 = !DISubroutineType(types: !998)
!998 = !{!185, !906, !120, !110, !142, !110}
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006}
!1000 = !DILocalVariable(name: "pcb", arg: 1, scope: !996, file: !10, line: 160, type: !906)
!1001 = !DILocalVariable(name: "p", arg: 2, scope: !996, file: !10, line: 160, type: !120)
!1002 = !DILocalVariable(name: "hdrflags", arg: 3, scope: !996, file: !10, line: 160, type: !110)
!1003 = !DILocalVariable(name: "seqno", arg: 4, scope: !996, file: !10, line: 160, type: !142)
!1004 = !DILocalVariable(name: "optflags", arg: 5, scope: !996, file: !10, line: 160, type: !110)
!1005 = !DILocalVariable(name: "seg", scope: !996, file: !10, line: 162, type: !185)
!1006 = !DILocalVariable(name: "optlen", scope: !996, file: !10, line: 163, type: !110)
!1007 = !DILocation(line: 160, column: 42, scope: !996)
!1008 = !DILocation(line: 160, column: 60, scope: !996)
!1009 = !DILocation(line: 160, column: 68, scope: !996)
!1010 = !DILocation(line: 160, column: 84, scope: !996)
!1011 = !DILocation(line: 160, column: 96, scope: !996)
!1012 = !DILocation(line: 165, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !10, line: 165, column: 3)
!1014 = distinct !DILexicalBlock(scope: !996, file: !10, line: 165, column: 3)
!1015 = !DILocation(line: 165, column: 3, scope: !1014)
!1016 = !DILocation(line: 165, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !10, line: 165, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 165, column: 3)
!1019 = !DILocation(line: 165, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !10, line: 165, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !10, line: 165, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !10, line: 165, column: 3)
!1023 = !DILocation(line: 166, column: 3, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !10, line: 166, column: 3)
!1025 = distinct !DILexicalBlock(scope: !996, file: !10, line: 166, column: 3)
!1026 = !DILocation(line: 166, column: 3, scope: !1025)
!1027 = !DILocation(line: 166, column: 3, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !10, line: 166, column: 3)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !10, line: 166, column: 3)
!1030 = !DILocation(line: 166, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !10, line: 166, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !10, line: 166, column: 3)
!1033 = distinct !DILexicalBlock(scope: !1028, file: !10, line: 166, column: 3)
!1034 = !DILocation(line: 170, column: 32, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !996, file: !10, line: 170, column: 7)
!1036 = !DILocation(line: 170, column: 14, scope: !1035)
!1037 = !DILocation(line: 162, column: 19, scope: !996)
!1038 = !DILocation(line: 170, column: 59, scope: !1035)
!1039 = !DILocation(line: 170, column: 7, scope: !996)
!1040 = !DILocation(line: 172, column: 5, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1035, file: !10, line: 170, column: 68)
!1042 = !DILocation(line: 173, column: 5, scope: !1041)
!1043 = !DILocation(line: 168, column: 12, scope: !996)
!1044 = !DILocation(line: 163, column: 8, scope: !996)
!1045 = !DILocation(line: 175, column: 8, scope: !996)
!1046 = !DILocation(line: 175, column: 14, scope: !996)
!1047 = !DILocation(line: 176, column: 8, scope: !996)
!1048 = !DILocation(line: 176, column: 13, scope: !996)
!1049 = !DILocation(line: 177, column: 8, scope: !996)
!1050 = !DILocation(line: 177, column: 10, scope: !996)
!1051 = !DILocation(line: 178, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !10, line: 178, column: 3)
!1053 = distinct !DILexicalBlock(scope: !996, file: !10, line: 178, column: 3)
!1054 = !DILocation(line: 178, column: 3, scope: !1053)
!1055 = !DILocation(line: 178, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !10, line: 178, column: 3)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !10, line: 178, column: 3)
!1058 = !DILocation(line: 178, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 178, column: 3)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !10, line: 178, column: 3)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !10, line: 178, column: 3)
!1062 = !DILocation(line: 179, column: 14, scope: !996)
!1063 = !DILocation(line: 179, column: 8, scope: !996)
!1064 = !DILocation(line: 179, column: 12, scope: !996)
!1065 = !DILocation(line: 192, column: 7, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !996, file: !10, line: 192, column: 7)
!1067 = !DILocation(line: 192, column: 7, scope: !996)
!1068 = !DILocation(line: 194, column: 5, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !10, line: 192, column: 37)
!1070 = !{!461, !394, i64 164}
!1071 = !DILocation(line: 195, column: 5, scope: !1069)
!1072 = !DILocation(line: 196, column: 5, scope: !1069)
!1073 = !DILocation(line: 198, column: 40, scope: !996)
!1074 = !DILocation(line: 198, column: 43, scope: !996)
!1075 = !DILocation(line: 198, column: 8, scope: !996)
!1076 = !DILocation(line: 198, column: 15, scope: !996)
!1077 = !DILocation(line: 199, column: 38, scope: !996)
!1078 = !{!412, !394, i64 78}
!1079 = !DILocation(line: 199, column: 22, scope: !996)
!1080 = !DILocation(line: 199, column: 8, scope: !996)
!1081 = !DILocation(line: 199, column: 16, scope: !996)
!1082 = !DILocation(line: 199, column: 20, scope: !996)
!1083 = !{!857, !394, i64 0}
!1084 = !DILocation(line: 200, column: 39, scope: !996)
!1085 = !{!412, !394, i64 80}
!1086 = !DILocation(line: 200, column: 23, scope: !996)
!1087 = !DILocation(line: 200, column: 8, scope: !996)
!1088 = !DILocation(line: 200, column: 16, scope: !996)
!1089 = !DILocation(line: 200, column: 21, scope: !996)
!1090 = !{!857, !394, i64 2}
!1091 = !DILocation(line: 201, column: 24, scope: !996)
!1092 = !DILocation(line: 201, column: 8, scope: !996)
!1093 = !DILocation(line: 201, column: 16, scope: !996)
!1094 = !DILocation(line: 201, column: 22, scope: !996)
!1095 = !{!857, !415, i64 4}
!1096 = !DILocation(line: 203, column: 3, scope: !996)
!1097 = !DILocation(line: 205, column: 16, scope: !996)
!1098 = !DILocation(line: 205, column: 21, scope: !996)
!1099 = !{!857, !394, i64 18}
!1100 = !DILocation(line: 206, column: 3, scope: !996)
!1101 = !DILocation(line: 0, scope: !996)
!1102 = !DILocation(line: 207, column: 1, scope: !996)
!1103 = distinct !DISubprogram(name: "tcp_split_unsent_seg", scope: !10, file: !10, line: 830, type: !432, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115}
!1105 = !DILocalVariable(name: "pcb", arg: 1, scope: !1103, file: !10, line: 830, type: !231)
!1106 = !DILocalVariable(name: "split", arg: 2, scope: !1103, file: !10, line: 830, type: !103)
!1107 = !DILocalVariable(name: "seg", scope: !1103, file: !10, line: 832, type: !185)
!1108 = !DILocalVariable(name: "useg", scope: !1103, file: !10, line: 832, type: !185)
!1109 = !DILocalVariable(name: "p", scope: !1103, file: !10, line: 833, type: !120)
!1110 = !DILocalVariable(name: "optlen", scope: !1103, file: !10, line: 834, type: !110)
!1111 = !DILocalVariable(name: "optflags", scope: !1103, file: !10, line: 835, type: !110)
!1112 = !DILocalVariable(name: "split_flags", scope: !1103, file: !10, line: 836, type: !110)
!1113 = !DILocalVariable(name: "remainder_flags", scope: !1103, file: !10, line: 837, type: !110)
!1114 = !DILocalVariable(name: "remainder", scope: !1103, file: !10, line: 838, type: !103)
!1115 = !DILocalVariable(name: "offset", scope: !1103, file: !10, line: 839, type: !103)
!1116 = !DILocation(line: 830, column: 38, scope: !1103)
!1117 = !DILocation(line: 830, column: 49, scope: !1103)
!1118 = !DILocation(line: 832, column: 19, scope: !1103)
!1119 = !DILocation(line: 832, column: 32, scope: !1103)
!1120 = !DILocation(line: 833, column: 16, scope: !1103)
!1121 = !DILocation(line: 846, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !10, line: 846, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 846, column: 3)
!1124 = !DILocation(line: 846, column: 3, scope: !1123)
!1125 = !DILocation(line: 846, column: 3, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !10, line: 846, column: 3)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !10, line: 846, column: 3)
!1128 = !DILocation(line: 846, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !10, line: 846, column: 3)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !10, line: 846, column: 3)
!1131 = distinct !DILexicalBlock(scope: !1126, file: !10, line: 846, column: 3)
!1132 = !DILocation(line: 848, column: 15, scope: !1103)
!1133 = !DILocation(line: 849, column: 12, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 849, column: 7)
!1135 = !DILocation(line: 849, column: 7, scope: !1103)
!1136 = !DILocation(line: 853, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 853, column: 7)
!1138 = !DILocation(line: 853, column: 13, scope: !1137)
!1139 = !DILocation(line: 853, column: 7, scope: !1103)
!1140 = !DILocation(line: 854, column: 5, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !10, line: 854, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !10, line: 854, column: 5)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !10, line: 854, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !10, line: 854, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !10, line: 853, column: 19)
!1146 = !DILocation(line: 854, column: 5, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !10, line: 854, column: 5)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !10, line: 854, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !10, line: 854, column: 5)
!1150 = !DILocation(line: 858, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 858, column: 7)
!1152 = !DILocation(line: 858, column: 17, scope: !1151)
!1153 = !DILocation(line: 858, column: 7, scope: !1103)
!1154 = !DILocation(line: 862, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !10, line: 862, column: 3)
!1156 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 862, column: 3)
!1157 = !DILocation(line: 862, column: 3, scope: !1156)
!1158 = !DILocation(line: 862, column: 3, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !10, line: 862, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !10, line: 862, column: 3)
!1161 = !DILocation(line: 862, column: 3, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !10, line: 862, column: 3)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !10, line: 862, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !10, line: 862, column: 3)
!1165 = !DILocation(line: 871, column: 20, scope: !1103)
!1166 = !DILocation(line: 835, column: 8, scope: !1103)
!1167 = !DILocation(line: 876, column: 12, scope: !1103)
!1168 = !DILocation(line: 834, column: 8, scope: !1103)
!1169 = !DILocation(line: 877, column: 25, scope: !1103)
!1170 = !DILocation(line: 838, column: 9, scope: !1103)
!1171 = !DILocation(line: 880, column: 34, scope: !1103)
!1172 = !DILocation(line: 880, column: 7, scope: !1103)
!1173 = !DILocation(line: 881, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 881, column: 7)
!1175 = !DILocation(line: 881, column: 7, scope: !1103)
!1176 = !DILocation(line: 888, column: 18, scope: !1103)
!1177 = !DILocation(line: 888, column: 21, scope: !1103)
!1178 = !DILocation(line: 888, column: 37, scope: !1103)
!1179 = !DILocation(line: 888, column: 29, scope: !1103)
!1180 = !DILocation(line: 888, column: 41, scope: !1103)
!1181 = !DILocation(line: 839, column: 9, scope: !1103)
!1182 = !DILocation(line: 890, column: 45, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 890, column: 7)
!1184 = !DILocation(line: 890, column: 53, scope: !1183)
!1185 = !DILocation(line: 890, column: 7, scope: !1183)
!1186 = !DILocation(line: 890, column: 83, scope: !1183)
!1187 = !DILocation(line: 890, column: 7, scope: !1103)
!1188 = !DILocation(line: 904, column: 17, scope: !1103)
!1189 = !DILocation(line: 836, column: 8, scope: !1103)
!1190 = !DILocation(line: 837, column: 8, scope: !1103)
!1191 = !DILocation(line: 907, column: 19, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 907, column: 7)
!1193 = !DILocation(line: 907, column: 7, scope: !1103)
!1194 = !DILocation(line: 911, column: 7, scope: !1103)
!1195 = !DILocation(line: 917, column: 53, scope: !1103)
!1196 = !DILocation(line: 917, column: 85, scope: !1103)
!1197 = !DILocation(line: 917, column: 9, scope: !1103)
!1198 = !DILocation(line: 918, column: 11, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 918, column: 7)
!1200 = !DILocation(line: 918, column: 7, scope: !1103)
!1201 = !DILocation(line: 911, column: 19, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 911, column: 7)
!1203 = !DILocation(line: 912, column: 17, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !10, line: 911, column: 30)
!1205 = !DILocation(line: 931, column: 40, scope: !1103)
!1206 = !DILocation(line: 931, column: 24, scope: !1103)
!1207 = !DILocation(line: 931, column: 8, scope: !1103)
!1208 = !DILocation(line: 931, column: 21, scope: !1103)
!1209 = !DILocation(line: 935, column: 22, scope: !1103)
!1210 = !DILocation(line: 935, column: 34, scope: !1103)
!1211 = !DILocation(line: 935, column: 42, scope: !1103)
!1212 = !DILocation(line: 935, column: 3, scope: !1103)
!1213 = !DILocation(line: 936, column: 13, scope: !1103)
!1214 = !DILocation(line: 937, column: 3, scope: !1103)
!1215 = !DILocation(line: 944, column: 40, scope: !1103)
!1216 = !DILocation(line: 944, column: 24, scope: !1103)
!1217 = !DILocation(line: 944, column: 21, scope: !1103)
!1218 = !DILocation(line: 969, column: 39, scope: !1103)
!1219 = !DILocation(line: 969, column: 24, scope: !1103)
!1220 = !DILocation(line: 969, column: 21, scope: !1103)
!1221 = !DILocation(line: 972, column: 21, scope: !1103)
!1222 = !DILocation(line: 972, column: 8, scope: !1103)
!1223 = !DILocation(line: 972, column: 13, scope: !1103)
!1224 = !DILocation(line: 973, column: 14, scope: !1103)
!1225 = !DILocation(line: 978, column: 12, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 978, column: 7)
!1227 = !DILocation(line: 978, column: 17, scope: !1226)
!1228 = !DILocation(line: 978, column: 7, scope: !1103)
!1229 = !DILocation(line: 979, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !10, line: 978, column: 26)
!1231 = !DILocation(line: 979, column: 26, scope: !1230)
!1232 = !DILocation(line: 980, column: 3, scope: !1230)
!1233 = !DILocation(line: 985, column: 3, scope: !1103)
!1234 = !DILocation(line: 989, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !10, line: 988, column: 18)
!1236 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 988, column: 7)
!1237 = !DILocation(line: 990, column: 3, scope: !1235)
!1238 = !DILocation(line: 0, scope: !1103)
!1239 = !DILocation(line: 993, column: 1, scope: !1103)
!1240 = distinct !DISubprogram(name: "tcp_send_fin", scope: !10, file: !10, line: 1004, type: !1241, isLocal: false, isDefinition: true, scopeLine: 1005, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!226, !231}
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "pcb", arg: 1, scope: !1240, file: !10, line: 1004, type: !231)
!1245 = !DILocalVariable(name: "last_unsent", scope: !1246, file: !10, line: 1010, type: !185)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !10, line: 1009, column: 28)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !10, line: 1009, column: 7)
!1248 = !DILocation(line: 1004, column: 30, scope: !1240)
!1249 = !DILocation(line: 1006, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !10, line: 1006, column: 3)
!1251 = distinct !DILexicalBlock(scope: !1240, file: !10, line: 1006, column: 3)
!1252 = !DILocation(line: 1006, column: 3, scope: !1251)
!1253 = !DILocation(line: 1006, column: 3, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !10, line: 1006, column: 3)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !10, line: 1006, column: 3)
!1256 = !DILocation(line: 1006, column: 3, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !10, line: 1006, column: 3)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !10, line: 1006, column: 3)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !10, line: 1006, column: 3)
!1260 = !DILocation(line: 1009, column: 12, scope: !1247)
!1261 = !DILocation(line: 1009, column: 19, scope: !1247)
!1262 = !DILocation(line: 1009, column: 7, scope: !1240)
!1263 = !DILocation(line: 0, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !10, line: 1011, column: 5)
!1265 = distinct !DILexicalBlock(scope: !1246, file: !10, line: 1011, column: 5)
!1266 = !DILocation(line: 1010, column: 21, scope: !1246)
!1267 = !DILocation(line: 1011, column: 50, scope: !1264)
!1268 = !DILocation(line: 1011, column: 55, scope: !1264)
!1269 = !DILocation(line: 1011, column: 5, scope: !1265)
!1270 = distinct !{!1270, !1269, !1271}
!1271 = !DILocation(line: 1012, column: 42, scope: !1265)
!1272 = !DILocation(line: 1014, column: 10, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1246, file: !10, line: 1014, column: 9)
!1274 = !DILocation(line: 1014, column: 42, scope: !1273)
!1275 = !DILocation(line: 1014, column: 75, scope: !1273)
!1276 = !DILocation(line: 1014, column: 9, scope: !1246)
!1277 = !DILocation(line: 1016, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !10, line: 1014, column: 81)
!1279 = !DILocation(line: 1017, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !10, line: 1017, column: 7)
!1281 = !DILocation(line: 1022, column: 10, scope: !1240)
!1282 = !DILocation(line: 1022, column: 3, scope: !1240)
!1283 = !DILocation(line: 0, scope: !1278)
!1284 = !DILocation(line: 1023, column: 1, scope: !1240)
!1285 = distinct !DISubprogram(name: "tcp_enqueue_flags", scope: !10, file: !10, line: 1035, type: !1286, isLocal: false, isDefinition: true, scopeLine: 1036, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!226, !231, !110}
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1289 = !DILocalVariable(name: "pcb", arg: 1, scope: !1285, file: !10, line: 1035, type: !231)
!1290 = !DILocalVariable(name: "flags", arg: 2, scope: !1285, file: !10, line: 1035, type: !110)
!1291 = !DILocalVariable(name: "p", scope: !1285, file: !10, line: 1037, type: !120)
!1292 = !DILocalVariable(name: "seg", scope: !1285, file: !10, line: 1038, type: !185)
!1293 = !DILocalVariable(name: "optflags", scope: !1285, file: !10, line: 1039, type: !110)
!1294 = !DILocalVariable(name: "optlen", scope: !1285, file: !10, line: 1040, type: !110)
!1295 = !DILocalVariable(name: "useg", scope: !1296, file: !10, line: 1106, type: !185)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !10, line: 1105, column: 10)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1103, column: 7)
!1298 = !DILocation(line: 1035, column: 35, scope: !1285)
!1299 = !DILocation(line: 1035, column: 45, scope: !1285)
!1300 = !DILocation(line: 1039, column: 8, scope: !1285)
!1301 = !DILocation(line: 1040, column: 8, scope: !1285)
!1302 = !DILocation(line: 1044, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !10, line: 1044, column: 3)
!1304 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1044, column: 3)
!1305 = !DILocation(line: 1044, column: 3, scope: !1304)
!1306 = !DILocation(line: 1044, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !10, line: 1044, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !10, line: 1044, column: 3)
!1309 = !DILocation(line: 1044, column: 3, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !10, line: 1044, column: 3)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !10, line: 1044, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !10, line: 1044, column: 3)
!1313 = !DILocation(line: 1046, column: 3, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !10, line: 1046, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1046, column: 3)
!1316 = !DILocation(line: 1046, column: 3, scope: !1315)
!1317 = !DILocation(line: 1046, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !10, line: 1046, column: 3)
!1319 = distinct !DILexicalBlock(scope: !1314, file: !10, line: 1046, column: 3)
!1320 = !DILocation(line: 1046, column: 3, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !10, line: 1046, column: 3)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !10, line: 1046, column: 3)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !10, line: 1046, column: 3)
!1324 = !DILocation(line: 1052, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1052, column: 7)
!1326 = !DILocation(line: 1052, column: 7, scope: !1285)
!1327 = !DILocation(line: 1055, column: 15, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !10, line: 1055, column: 9)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !10, line: 1052, column: 24)
!1330 = !DILocation(line: 1055, column: 21, scope: !1328)
!1331 = !DILocation(line: 1055, column: 34, scope: !1328)
!1332 = !DILocation(line: 1055, column: 43, scope: !1328)
!1333 = !DILocation(line: 1055, column: 49, scope: !1328)
!1334 = !DILocation(line: 1055, column: 9, scope: !1329)
!1335 = !DILocation(line: 1059, column: 5, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !10, line: 1055, column: 66)
!1337 = !DILocation(line: 0, scope: !1285)
!1338 = !DILocation(line: 1076, column: 12, scope: !1285)
!1339 = !DILocation(line: 1079, column: 39, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1079, column: 7)
!1341 = !DILocation(line: 1079, column: 12, scope: !1340)
!1342 = !DILocation(line: 1037, column: 16, scope: !1285)
!1343 = !DILocation(line: 1079, column: 58, scope: !1340)
!1344 = !DILocation(line: 1079, column: 7, scope: !1285)
!1345 = !DILocation(line: 1080, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !10, line: 1080, column: 5)
!1347 = distinct !DILexicalBlock(scope: !1340, file: !10, line: 1079, column: 67)
!1348 = !DILocation(line: 1081, column: 5, scope: !1347)
!1349 = !DILocation(line: 1082, column: 5, scope: !1347)
!1350 = !DILocation(line: 1084, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !10, line: 1084, column: 3)
!1352 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1084, column: 3)
!1353 = !DILocation(line: 1084, column: 3, scope: !1352)
!1354 = !DILocation(line: 1084, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !10, line: 1084, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !10, line: 1084, column: 3)
!1357 = !DILocation(line: 1084, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !10, line: 1084, column: 3)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !10, line: 1084, column: 3)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !10, line: 1084, column: 3)
!1361 = !DILocation(line: 1088, column: 53, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1088, column: 7)
!1363 = !DILocation(line: 1088, column: 14, scope: !1362)
!1364 = !DILocation(line: 1038, column: 19, scope: !1285)
!1365 = !DILocation(line: 1088, column: 73, scope: !1362)
!1366 = !DILocation(line: 1088, column: 7, scope: !1285)
!1367 = !DILocation(line: 1089, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !10, line: 1089, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1362, file: !10, line: 1088, column: 82)
!1370 = !DILocation(line: 1090, column: 5, scope: !1369)
!1371 = !DILocation(line: 1091, column: 5, scope: !1369)
!1372 = !DILocation(line: 1094, column: 3, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !10, line: 1094, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1094, column: 3)
!1375 = !DILocation(line: 1094, column: 3, scope: !1374)
!1376 = !DILocation(line: 1094, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !10, line: 1094, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !10, line: 1094, column: 3)
!1379 = !DILocation(line: 1094, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !10, line: 1094, column: 3)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !10, line: 1094, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !10, line: 1094, column: 3)
!1383 = !DILocation(line: 1103, column: 12, scope: !1297)
!1384 = !DILocation(line: 1103, column: 19, scope: !1297)
!1385 = !DILocation(line: 1103, column: 7, scope: !1285)
!1386 = !DILocation(line: 0, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !10, line: 1107, column: 5)
!1388 = distinct !DILexicalBlock(scope: !1296, file: !10, line: 1107, column: 5)
!1389 = !DILocation(line: 1106, column: 21, scope: !1296)
!1390 = !DILocation(line: 1107, column: 36, scope: !1387)
!1391 = !DILocation(line: 1107, column: 41, scope: !1387)
!1392 = !DILocation(line: 1107, column: 5, scope: !1388)
!1393 = distinct !{!1393, !1392, !1394}
!1394 = !DILocation(line: 1107, column: 68, scope: !1388)
!1395 = !DILocation(line: 0, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1297, file: !10, line: 1103, column: 28)
!1397 = !DILocation(line: 1112, column: 8, scope: !1285)
!1398 = !DILocation(line: 1112, column: 24, scope: !1285)
!1399 = !DILocation(line: 1116, column: 25, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1116, column: 7)
!1401 = !DILocation(line: 1116, column: 35, scope: !1400)
!1402 = !DILocation(line: 1117, column: 17, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !10, line: 1116, column: 47)
!1404 = !DILocation(line: 1119, column: 3, scope: !1403)
!1405 = !DILocation(line: 1120, column: 7, scope: !1285)
!1406 = !DILocation(line: 1121, column: 5, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !10, line: 1121, column: 5)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !10, line: 1120, column: 24)
!1409 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1120, column: 7)
!1410 = !DILocation(line: 1122, column: 3, scope: !1408)
!1411 = !DILocation(line: 1125, column: 39, scope: !1285)
!1412 = !DILocation(line: 1125, column: 24, scope: !1285)
!1413 = !DILocation(line: 1125, column: 8, scope: !1285)
!1414 = !DILocation(line: 1125, column: 21, scope: !1285)
!1415 = !DILocation(line: 1127, column: 25, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1285, file: !10, line: 1127, column: 7)
!1417 = !DILocation(line: 1127, column: 7, scope: !1285)
!1418 = !DILocation(line: 1128, column: 5, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !10, line: 1128, column: 5)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !10, line: 1128, column: 5)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !10, line: 1127, column: 31)
!1422 = !DILocation(line: 1128, column: 5, scope: !1420)
!1423 = !DILocation(line: 1128, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !10, line: 1128, column: 5)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !10, line: 1128, column: 5)
!1426 = !DILocation(line: 1128, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !10, line: 1128, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !10, line: 1128, column: 5)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !10, line: 1128, column: 5)
!1430 = !DILocation(line: 1133, column: 1, scope: !1285)
!1431 = distinct !DISubprogram(name: "tcp_output", scope: !10, file: !10, line: 1240, type: !1241, isLocal: false, isDefinition: true, scopeLine: 1241, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1510, !1513}
!1433 = !DILocalVariable(name: "pcb", arg: 1, scope: !1431, file: !10, line: 1240, type: !231)
!1434 = !DILocalVariable(name: "seg", scope: !1431, file: !10, line: 1242, type: !185)
!1435 = !DILocalVariable(name: "useg", scope: !1431, file: !10, line: 1242, type: !185)
!1436 = !DILocalVariable(name: "wnd", scope: !1431, file: !10, line: 1243, type: !142)
!1437 = !DILocalVariable(name: "snd_nxt", scope: !1431, file: !10, line: 1243, type: !142)
!1438 = !DILocalVariable(name: "err", scope: !1431, file: !10, line: 1244, type: !226)
!1439 = !DILocalVariable(name: "netif", scope: !1431, file: !10, line: 1245, type: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !70, line: 260, size: 2240, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1451, !1453, !1455, !1456, !1461, !1468, !1473, !1480, !1485, !1486, !1487, !1489, !1490, !1491, !1492, !1496, !1497, !1498, !1502, !1503, !1504, !1505}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1441, file: !70, line: 263, baseType: !1440, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1441, file: !70, line: 268, baseType: !147, size: 192, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1441, file: !70, line: 269, baseType: !147, size: 192, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1441, file: !70, line: 270, baseType: !147, size: 192, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1441, file: !70, line: 274, baseType: !1448, size: 576, offset: 640)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 576, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 3)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1441, file: !70, line: 277, baseType: !1452, size: 24, offset: 1216)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !1449)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1441, file: !70, line: 282, baseType: !1454, size: 96, offset: 1248)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 96, elements: !1449)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1441, file: !70, line: 283, baseType: !1454, size: 96, offset: 1344)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1441, file: !70, line: 288, baseType: !1457, size: 64, offset: 1472)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !70, line: 178, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!226, !120, !1440}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1441, file: !70, line: 294, baseType: !1462, size: 64, offset: 1536)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !70, line: 189, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!226, !1440, !120, !1466}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1441, file: !70, line: 299, baseType: !1469, size: 64, offset: 1600)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !70, line: 212, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!226, !1440, !120}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1441, file: !70, line: 305, baseType: !1474, size: 64, offset: 1664)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !70, line: 202, baseType: !1475)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!226, !1440, !120, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1441, file: !70, line: 310, baseType: !1481, size: 64, offset: 1728)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !70, line: 214, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{null, !1440}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1441, file: !70, line: 319, baseType: !1481, size: 64, offset: 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !70, line: 323, baseType: !102, size: 64, offset: 1856)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1441, file: !70, line: 325, baseType: !1488, size: 64, offset: 1920)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !214)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1441, file: !70, line: 332, baseType: !103, size: 16, offset: 1984)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1441, file: !70, line: 335, baseType: !103, size: 16, offset: 2000)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1441, file: !70, line: 338, baseType: !103, size: 16, offset: 2016)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1441, file: !70, line: 341, baseType: !1493, size: 48, offset: 2032)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 48, elements: !1494)
!1494 = !{!1495}
!1495 = !DISubrange(count: 6)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1441, file: !70, line: 343, baseType: !110, size: 8, offset: 2080)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !70, line: 345, baseType: !110, size: 8, offset: 2088)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1441, file: !70, line: 347, baseType: !1499, size: 16, offset: 2096)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 2)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1441, file: !70, line: 350, baseType: !110, size: 8, offset: 2112)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1441, file: !70, line: 353, baseType: !110, size: 8, offset: 2120)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1441, file: !70, line: 357, baseType: !110, size: 8, offset: 2128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1441, file: !70, line: 377, baseType: !1506, size: 64, offset: 2176)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !70, line: 222, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!226, !1440, !1478, !69}
!1510 = !DILocalVariable(name: "local_ip", scope: !1511, file: !10, line: 1300, type: !145)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !10, line: 1299, column: 38)
!1512 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1299, column: 7)
!1513 = !DILocalVariable(name: "cur_seg", scope: !1514, file: !10, line: 1394, type: !1521)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !10, line: 1392, column: 90)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !10, line: 1392, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !10, line: 1388, column: 14)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !10, line: 1384, column: 11)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !10, line: 1381, column: 30)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1381, column: 9)
!1520 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1336, column: 75)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1522 = !DILocation(line: 1240, column: 28, scope: !1431)
!1523 = !DILocation(line: 1252, column: 3, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !10, line: 1252, column: 3)
!1525 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1252, column: 3)
!1526 = !DILocation(line: 1252, column: 3, scope: !1525)
!1527 = !DILocation(line: 1252, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !10, line: 1252, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1524, file: !10, line: 1252, column: 3)
!1530 = !DILocation(line: 1252, column: 3, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !10, line: 1252, column: 3)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !10, line: 1252, column: 3)
!1533 = distinct !DILexicalBlock(scope: !1528, file: !10, line: 1252, column: 3)
!1534 = !DILocation(line: 1254, column: 3, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !10, line: 1254, column: 3)
!1536 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1254, column: 3)
!1537 = !DILocation(line: 1254, column: 3, scope: !1536)
!1538 = !DILocation(line: 1254, column: 3, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !10, line: 1254, column: 3)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !10, line: 1254, column: 3)
!1541 = !DILocation(line: 1254, column: 3, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !10, line: 1254, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !10, line: 1254, column: 3)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !10, line: 1254, column: 3)
!1545 = !DILocation(line: 1261, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1261, column: 7)
!1547 = !DILocation(line: 1261, column: 21, scope: !1546)
!1548 = !DILocation(line: 1261, column: 7, scope: !1431)
!1549 = !DILocation(line: 1265, column: 9, scope: !1431)
!1550 = !{!412, !415, i64 160}
!1551 = !{!412, !415, i64 132}
!1552 = !DILocation(line: 1243, column: 9, scope: !1431)
!1553 = !DILocation(line: 1267, column: 14, scope: !1431)
!1554 = !DILocation(line: 1242, column: 19, scope: !1431)
!1555 = !DILocation(line: 1269, column: 11, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1269, column: 7)
!1557 = !DILocation(line: 1269, column: 7, scope: !1431)
!1558 = !DILocation(line: 1279, column: 14, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !10, line: 1279, column: 9)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !10, line: 1269, column: 20)
!1561 = !DILocation(line: 1279, column: 20, scope: !1559)
!1562 = !DILocation(line: 1279, column: 9, scope: !1560)
!1563 = !DILocation(line: 1280, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !10, line: 1279, column: 34)
!1565 = !DILocation(line: 1280, column: 7, scope: !1564)
!1566 = !DILocation(line: 1293, column: 32, scope: !1431)
!1567 = !DILocation(line: 1293, column: 48, scope: !1431)
!1568 = !DILocalVariable(name: "pcb", arg: 1, scope: !1569, file: !10, line: 134, type: !906)
!1569 = distinct !DISubprogram(name: "tcp_route", scope: !10, file: !10, line: 134, type: !1570, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!1440, !906, !145, !145}
!1572 = !{!1568, !1573, !1574}
!1573 = !DILocalVariable(name: "src", arg: 2, scope: !1569, file: !10, line: 134, type: !145)
!1574 = !DILocalVariable(name: "dst", arg: 3, scope: !1569, file: !10, line: 134, type: !145)
!1575 = !DILocation(line: 134, column: 33, scope: !1569, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 1293, column: 11, scope: !1431)
!1577 = !DILocation(line: 134, column: 55, scope: !1569, inlinedAt: !1576)
!1578 = !DILocation(line: 134, column: 77, scope: !1569, inlinedAt: !1576)
!1579 = !DILocation(line: 138, column: 30, scope: !1580, inlinedAt: !1576)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !10, line: 138, column: 7)
!1581 = !{!412, !395, i64 48}
!1582 = !DILocation(line: 138, column: 40, scope: !1580, inlinedAt: !1576)
!1583 = !DILocation(line: 138, column: 7, scope: !1569, inlinedAt: !1576)
!1584 = !DILocation(line: 139, column: 12, scope: !1585, inlinedAt: !1576)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !10, line: 138, column: 60)
!1586 = !DILocation(line: 139, column: 5, scope: !1585, inlinedAt: !1576)
!1587 = !DILocation(line: 141, column: 12, scope: !1588, inlinedAt: !1576)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !10, line: 140, column: 10)
!1589 = !{!413, !395, i64 20}
!1590 = !DILocation(line: 0, scope: !1588, inlinedAt: !1576)
!1591 = !DILocation(line: 143, column: 1, scope: !1569, inlinedAt: !1576)
!1592 = !DILocation(line: 1245, column: 17, scope: !1431)
!1593 = !DILocation(line: 1294, column: 13, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1294, column: 7)
!1595 = !DILocation(line: 1294, column: 7, scope: !1431)
!1596 = !DILocation(line: 1299, column: 7, scope: !1512)
!1597 = !{!412, !395, i64 20}
!1598 = !{!395, !395, i64 0}
!1599 = !DILocation(line: 1299, column: 7, scope: !1431)
!1600 = !DILocation(line: 1300, column: 33, scope: !1511)
!1601 = !{!412, !395, i64 44}
!1602 = !DILocation(line: 1300, column: 22, scope: !1511)
!1603 = !DILocation(line: 1301, column: 9, scope: !1511)
!1604 = !DILocation(line: 1301, column: 18, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1511, file: !10, line: 1301, column: 9)
!1606 = !DILocation(line: 1304, column: 5, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !10, line: 1304, column: 5)
!1608 = distinct !DILexicalBlock(scope: !1511, file: !10, line: 1304, column: 5)
!1609 = !DILocation(line: 1304, column: 5, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1608, file: !10, line: 1304, column: 5)
!1611 = !DILocation(line: 1304, column: 5, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !10, line: 1304, column: 5)
!1613 = distinct !DILexicalBlock(scope: !1610, file: !10, line: 1304, column: 5)
!1614 = !DILocation(line: 1304, column: 5, scope: !1608)
!1615 = !DILocation(line: 1304, column: 5, scope: !1613)
!1616 = !DILocation(line: 1304, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !10, line: 1304, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1610, file: !10, line: 1304, column: 5)
!1619 = !DILocation(line: 1308, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1308, column: 7)
!1621 = !DILocation(line: 1308, column: 45, scope: !1620)
!1622 = !{!412, !415, i64 128}
!1623 = !DILocation(line: 1308, column: 38, scope: !1620)
!1624 = !DILocation(line: 1308, column: 60, scope: !1620)
!1625 = !DILocation(line: 1308, column: 55, scope: !1620)
!1626 = !DILocation(line: 1308, column: 53, scope: !1620)
!1627 = !DILocation(line: 1308, column: 64, scope: !1620)
!1628 = !DILocation(line: 1308, column: 7, scope: !1431)
!1629 = !DILocation(line: 1315, column: 21, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !10, line: 1315, column: 9)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !10, line: 1308, column: 71)
!1632 = !DILocation(line: 1315, column: 13, scope: !1630)
!1633 = !DILocation(line: 1315, column: 29, scope: !1630)
!1634 = !DILocation(line: 1315, column: 37, scope: !1630)
!1635 = !DILocation(line: 1315, column: 45, scope: !1630)
!1636 = !DILocation(line: 1315, column: 53, scope: !1630)
!1637 = !DILocation(line: 1315, column: 61, scope: !1630)
!1638 = !{!412, !395, i64 269}
!1639 = !DILocation(line: 1315, column: 77, scope: !1630)
!1640 = !DILocation(line: 1315, column: 9, scope: !1631)
!1641 = !DILocation(line: 1316, column: 12, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1630, file: !10, line: 1315, column: 83)
!1643 = !DILocation(line: 1316, column: 24, scope: !1642)
!1644 = !{!412, !395, i64 268}
!1645 = !DILocation(line: 1317, column: 28, scope: !1642)
!1646 = !DILocation(line: 1318, column: 12, scope: !1642)
!1647 = !DILocation(line: 1318, column: 26, scope: !1642)
!1648 = !{!412, !395, i64 270}
!1649 = !DILocation(line: 1319, column: 5, scope: !1642)
!1650 = !DILocation(line: 1321, column: 14, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1631, file: !10, line: 1321, column: 9)
!1652 = !DILocation(line: 1321, column: 20, scope: !1651)
!1653 = !DILocation(line: 1321, column: 9, scope: !1631)
!1654 = !DILocation(line: 1322, column: 14, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !10, line: 1321, column: 34)
!1656 = !DILocation(line: 1322, column: 7, scope: !1655)
!1657 = !DILocation(line: 1327, column: 8, scope: !1431)
!1658 = !DILocation(line: 1327, column: 24, scope: !1431)
!1659 = !DILocation(line: 1330, column: 15, scope: !1431)
!1660 = !DILocation(line: 1242, column: 25, scope: !1431)
!1661 = !DILocation(line: 1331, column: 12, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1331, column: 7)
!1663 = !DILocation(line: 1331, column: 7, scope: !1431)
!1664 = !DILocation(line: 0, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !10, line: 1332, column: 5)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !10, line: 1332, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !10, line: 1331, column: 21)
!1668 = !DILocation(line: 1332, column: 18, scope: !1665)
!1669 = !DILocation(line: 1332, column: 23, scope: !1665)
!1670 = !DILocation(line: 1332, column: 5, scope: !1666)
!1671 = distinct !{!1671, !1670, !1672}
!1672 = !DILocation(line: 1332, column: 50, scope: !1666)
!1673 = !DILocation(line: 1330, column: 8, scope: !1431)
!1674 = !DILocation(line: 1335, column: 22, scope: !1431)
!1675 = !DILocation(line: 1336, column: 10, scope: !1431)
!1676 = !DILocation(line: 1336, column: 48, scope: !1431)
!1677 = !DILocation(line: 1336, column: 41, scope: !1431)
!1678 = !DILocation(line: 1336, column: 63, scope: !1431)
!1679 = !DILocation(line: 1336, column: 58, scope: !1431)
!1680 = !DILocation(line: 1336, column: 56, scope: !1431)
!1681 = !DILocation(line: 1336, column: 67, scope: !1431)
!1682 = !DILocation(line: 1335, column: 3, scope: !1431)
!1683 = !DILocation(line: 1337, column: 5, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !10, line: 1337, column: 5)
!1685 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1337, column: 5)
!1686 = !DILocation(line: 1337, column: 5, scope: !1685)
!1687 = !DILocation(line: 1337, column: 5, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !10, line: 1337, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !10, line: 1337, column: 5)
!1690 = !DILocation(line: 1337, column: 5, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !10, line: 1337, column: 5)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !10, line: 1337, column: 5)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !10, line: 1337, column: 5)
!1694 = !DILocation(line: 1346, column: 10, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1346, column: 9)
!1696 = !DILocation(line: 1347, column: 22, scope: !1695)
!1697 = !DILocation(line: 1347, column: 51, scope: !1695)
!1698 = !DILocation(line: 1346, column: 41, scope: !1695)
!1699 = !DILocation(line: 1359, column: 14, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1359, column: 9)
!1701 = !DILocation(line: 1359, column: 20, scope: !1700)
!1702 = !DILocation(line: 1359, column: 9, scope: !1520)
!1703 = !DILocation(line: 1360, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1700, file: !10, line: 1359, column: 33)
!1705 = !DILocation(line: 1361, column: 5, scope: !1704)
!1706 = !DILocalVariable(name: "seg", arg: 1, scope: !1707, file: !10, line: 1458, type: !185)
!1707 = distinct !DISubprogram(name: "tcp_output_segment", scope: !10, file: !10, line: 1458, type: !1708, isLocal: true, isDefinition: true, scopeLine: 1459, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1710)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!226, !185, !231, !1440}
!1710 = !{!1706, !1711, !1712, !1713, !1714, !1715, !1716}
!1711 = !DILocalVariable(name: "pcb", arg: 2, scope: !1707, file: !10, line: 1458, type: !231)
!1712 = !DILocalVariable(name: "netif", arg: 3, scope: !1707, file: !10, line: 1458, type: !1440)
!1713 = !DILocalVariable(name: "err", scope: !1707, file: !10, line: 1460, type: !226)
!1714 = !DILocalVariable(name: "len", scope: !1707, file: !10, line: 1461, type: !103)
!1715 = !DILocalVariable(name: "opts", scope: !1707, file: !10, line: 1462, type: !194)
!1716 = !DILocalVariable(name: "mss", scope: !1717, file: !10, line: 1501, type: !103)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !10, line: 1500, column: 37)
!1718 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1500, column: 7)
!1719 = !DILocation(line: 1458, column: 36, scope: !1707, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1363, column: 11, scope: !1520)
!1721 = !DILocation(line: 1458, column: 57, scope: !1707, inlinedAt: !1720)
!1722 = !DILocation(line: 1458, column: 76, scope: !1707, inlinedAt: !1720)
!1723 = !DILocalVariable(name: "seg", arg: 1, scope: !1724, file: !10, line: 1435, type: !1727)
!1724 = distinct !DISubprogram(name: "tcp_output_segment_busy", scope: !10, file: !10, line: 1435, type: !1725, isLocal: true, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1729)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!36, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1729 = !{!1723}
!1730 = !DILocation(line: 1435, column: 47, scope: !1724, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 1471, column: 7, scope: !1732, inlinedAt: !1720)
!1732 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1471, column: 7)
!1733 = !DILocation(line: 1442, column: 12, scope: !1734, inlinedAt: !1731)
!1734 = distinct !DILexicalBlock(scope: !1724, file: !10, line: 1442, column: 7)
!1735 = !DILocation(line: 1442, column: 15, scope: !1734, inlinedAt: !1731)
!1736 = !{!585, !395, i64 22}
!1737 = !DILocation(line: 1442, column: 19, scope: !1734, inlinedAt: !1731)
!1738 = !DILocation(line: 1448, column: 1, scope: !1724, inlinedAt: !1731)
!1739 = !DILocation(line: 1471, column: 7, scope: !1707, inlinedAt: !1720)
!1740 = !DILocation(line: 1624, column: 1, scope: !1707, inlinedAt: !1720)
!1741 = !DILocation(line: 1244, column: 9, scope: !1431)
!1742 = !DILocation(line: 1364, column: 9, scope: !1520)
!1743 = !DILocation(line: 1480, column: 40, scope: !1707, inlinedAt: !1720)
!1744 = !{!412, !415, i64 92}
!1745 = !DILocation(line: 1480, column: 24, scope: !1707, inlinedAt: !1720)
!1746 = !DILocation(line: 1480, column: 8, scope: !1707, inlinedAt: !1720)
!1747 = !DILocation(line: 1480, column: 16, scope: !1707, inlinedAt: !1720)
!1748 = !DILocation(line: 1480, column: 22, scope: !1707, inlinedAt: !1720)
!1749 = !{!857, !415, i64 8}
!1750 = !DILocation(line: 1484, column: 12, scope: !1751, inlinedAt: !1720)
!1751 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1484, column: 7)
!1752 = !DILocation(line: 1484, column: 18, scope: !1751, inlinedAt: !1720)
!1753 = !DILocation(line: 0, scope: !1754, inlinedAt: !1720)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !10, line: 1490, column: 3)
!1755 = !{!412, !415, i64 100}
!1756 = !DILocation(line: 1484, column: 7, scope: !1707, inlinedAt: !1720)
!1757 = !DILocation(line: 1491, column: 35, scope: !1754, inlinedAt: !1720)
!1758 = !{!412, !395, i64 273}
!1759 = !DILocation(line: 0, scope: !1520)
!1760 = !{!857, !394, i64 14}
!1761 = !DILocation(line: 1494, column: 34, scope: !1707, inlinedAt: !1720)
!1762 = !DILocation(line: 1494, column: 49, scope: !1707, inlinedAt: !1720)
!1763 = !DILocation(line: 1494, column: 42, scope: !1707, inlinedAt: !1720)
!1764 = !DILocation(line: 1494, column: 27, scope: !1707, inlinedAt: !1720)
!1765 = !{!412, !415, i64 104}
!1766 = !DILocation(line: 1499, column: 40, scope: !1707, inlinedAt: !1720)
!1767 = !DILocation(line: 1499, column: 10, scope: !1707, inlinedAt: !1720)
!1768 = !DILocation(line: 1462, column: 10, scope: !1707, inlinedAt: !1720)
!1769 = !DILocation(line: 1500, column: 12, scope: !1718, inlinedAt: !1720)
!1770 = !DILocation(line: 1500, column: 18, scope: !1718, inlinedAt: !1720)
!1771 = !DILocation(line: 1500, column: 7, scope: !1707, inlinedAt: !1720)
!1772 = !DILocation(line: 1503, column: 11, scope: !1717, inlinedAt: !1720)
!1773 = !DILocation(line: 1501, column: 11, scope: !1717, inlinedAt: !1720)
!1774 = !DILocation(line: 1507, column: 13, scope: !1717, inlinedAt: !1720)
!1775 = !DILocation(line: 1507, column: 11, scope: !1717, inlinedAt: !1720)
!1776 = !{!415, !415, i64 0}
!1777 = !DILocation(line: 1508, column: 10, scope: !1717, inlinedAt: !1720)
!1778 = !DILocation(line: 1519, column: 12, scope: !1779, inlinedAt: !1720)
!1779 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1519, column: 7)
!1780 = !DILocation(line: 1509, column: 3, scope: !1717, inlinedAt: !1720)
!1781 = !DILocation(line: 0, scope: !1707, inlinedAt: !1720)
!1782 = !DILocation(line: 1519, column: 18, scope: !1779, inlinedAt: !1720)
!1783 = !DILocation(line: 1519, column: 7, scope: !1707, inlinedAt: !1720)
!1784 = !DILocalVariable(name: "opts", arg: 1, scope: !1785, file: !10, line: 1222, type: !194)
!1785 = distinct !DISubprogram(name: "tcp_build_wnd_scale_option", scope: !10, file: !10, line: 1222, type: !1786, isLocal: true, isDefinition: true, scopeLine: 1223, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !194}
!1788 = !{!1784}
!1789 = !DILocation(line: 1222, column: 35, scope: !1785, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 1520, column: 5, scope: !1791, inlinedAt: !1720)
!1791 = distinct !DILexicalBlock(scope: !1779, file: !10, line: 1519, column: 43)
!1792 = !DILocation(line: 1227, column: 11, scope: !1785, inlinedAt: !1790)
!1793 = !DILocation(line: 1228, column: 1, scope: !1785, inlinedAt: !1790)
!1794 = !DILocation(line: 1521, column: 10, scope: !1791, inlinedAt: !1720)
!1795 = !DILocation(line: 1522, column: 3, scope: !1791, inlinedAt: !1720)
!1796 = !DILocation(line: 0, scope: !1717, inlinedAt: !1720)
!1797 = !DILocation(line: 1537, column: 12, scope: !1798, inlinedAt: !1720)
!1798 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1537, column: 7)
!1799 = !{!412, !394, i64 108}
!1800 = !DILocation(line: 1537, column: 18, scope: !1798, inlinedAt: !1720)
!1801 = !DILocation(line: 1537, column: 7, scope: !1707, inlinedAt: !1720)
!1802 = !DILocation(line: 1538, column: 16, scope: !1803, inlinedAt: !1720)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !10, line: 1537, column: 23)
!1804 = !DILocation(line: 1539, column: 3, scope: !1803, inlinedAt: !1720)
!1805 = !DILocation(line: 1541, column: 12, scope: !1806, inlinedAt: !1720)
!1806 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1541, column: 7)
!1807 = !{!412, !415, i64 112}
!1808 = !DILocation(line: 1541, column: 19, scope: !1806, inlinedAt: !1720)
!1809 = !DILocation(line: 1541, column: 7, scope: !1707, inlinedAt: !1720)
!1810 = !DILocation(line: 1542, column: 19, scope: !1811, inlinedAt: !1720)
!1811 = distinct !DILexicalBlock(scope: !1806, file: !10, line: 1541, column: 25)
!1812 = !DILocation(line: 1542, column: 17, scope: !1811, inlinedAt: !1720)
!1813 = !DILocation(line: 1543, column: 18, scope: !1811, inlinedAt: !1720)
!1814 = !DILocation(line: 1543, column: 16, scope: !1811, inlinedAt: !1720)
!1815 = !{!412, !415, i64 116}
!1816 = !DILocation(line: 1567, column: 3, scope: !1817, inlinedAt: !1720)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !10, line: 1567, column: 3)
!1818 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1567, column: 3)
!1819 = !DILocation(line: 1546, column: 3, scope: !1811, inlinedAt: !1720)
!1820 = !DILocation(line: 1551, column: 30, scope: !1707, inlinedAt: !1720)
!1821 = !DILocation(line: 1551, column: 52, scope: !1707, inlinedAt: !1720)
!1822 = !DILocation(line: 1551, column: 55, scope: !1707, inlinedAt: !1720)
!1823 = !DILocation(line: 1551, column: 37, scope: !1707, inlinedAt: !1720)
!1824 = !DILocation(line: 1551, column: 9, scope: !1707, inlinedAt: !1720)
!1825 = !DILocation(line: 1557, column: 11, scope: !1707, inlinedAt: !1720)
!1826 = !DILocation(line: 1557, column: 15, scope: !1707, inlinedAt: !1720)
!1827 = !DILocation(line: 1558, column: 11, scope: !1707, inlinedAt: !1720)
!1828 = !DILocation(line: 1558, column: 19, scope: !1707, inlinedAt: !1720)
!1829 = !DILocation(line: 1560, column: 19, scope: !1707, inlinedAt: !1720)
!1830 = !DILocation(line: 1562, column: 8, scope: !1707, inlinedAt: !1720)
!1831 = !DILocation(line: 1562, column: 16, scope: !1707, inlinedAt: !1720)
!1832 = !DILocation(line: 1562, column: 23, scope: !1707, inlinedAt: !1720)
!1833 = !{!857, !394, i64 16}
!1834 = !DILocation(line: 1567, column: 3, scope: !1818, inlinedAt: !1720)
!1835 = !DILocation(line: 1567, column: 3, scope: !1836, inlinedAt: !1720)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !10, line: 1567, column: 3)
!1837 = distinct !DILexicalBlock(scope: !1817, file: !10, line: 1567, column: 3)
!1838 = !DILocation(line: 1567, column: 3, scope: !1839, inlinedAt: !1720)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !10, line: 1567, column: 3)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !10, line: 1567, column: 3)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !10, line: 1567, column: 3)
!1842 = !DILocation(line: 1570, column: 3, scope: !1843, inlinedAt: !1720)
!1843 = distinct !DILexicalBlock(scope: !1707, file: !10, line: 1570, column: 3)
!1844 = !{!1845, !394, i64 248}
!1845 = !{!"netif", !414, i64 0, !413, i64 8, !413, i64 32, !413, i64 56, !395, i64 80, !395, i64 152, !395, i64 156, !395, i64 168, !414, i64 184, !414, i64 192, !414, i64 200, !414, i64 208, !414, i64 216, !414, i64 224, !414, i64 232, !395, i64 240, !394, i64 248, !394, i64 250, !394, i64 252, !395, i64 254, !395, i64 260, !395, i64 261, !395, i64 262, !395, i64 264, !395, i64 265, !395, i64 266, !414, i64 272}
!1846 = !DILocation(line: 1570, column: 3, scope: !1707, inlinedAt: !1720)
!1847 = !DILocation(line: 1602, column: 27, scope: !1848, inlinedAt: !1720)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !10, line: 1570, column: 61)
!1849 = !DILocation(line: 1602, column: 10, scope: !1848, inlinedAt: !1720)
!1850 = !DILocation(line: 1602, column: 18, scope: !1848, inlinedAt: !1720)
!1851 = !DILocation(line: 1602, column: 25, scope: !1848, inlinedAt: !1720)
!1852 = !DILocation(line: 1610, column: 9, scope: !1707, inlinedAt: !1720)
!1853 = !DILocation(line: 1605, column: 3, scope: !1848, inlinedAt: !1720)
!1854 = !DILocation(line: 1607, column: 3, scope: !1707, inlinedAt: !1720)
!1855 = !{!461, !394, i64 144}
!1856 = !{!412, !395, i64 51}
!1857 = !{!412, !395, i64 50}
!1858 = !DILocation(line: 1364, column: 13, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1364, column: 9)
!1860 = !DILocation(line: 1366, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !10, line: 1366, column: 7)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !10, line: 1364, column: 24)
!1863 = !DILocation(line: 1367, column: 7, scope: !1862)
!1864 = !DILocation(line: 1372, column: 24, scope: !1520)
!1865 = !DILocation(line: 1372, column: 17, scope: !1520)
!1866 = !DILocation(line: 1373, column: 14, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1373, column: 9)
!1868 = !DILocation(line: 1373, column: 20, scope: !1867)
!1869 = !DILocation(line: 1373, column: 9, scope: !1520)
!1870 = !DILocation(line: 1374, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !10, line: 1374, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !10, line: 1373, column: 33)
!1873 = !DILocation(line: 1375, column: 5, scope: !1872)
!1874 = !DILocation(line: 1376, column: 15, scope: !1520)
!1875 = !DILocation(line: 1376, column: 48, scope: !1520)
!1876 = !DILocation(line: 1376, column: 46, scope: !1520)
!1877 = !DILocation(line: 1243, column: 14, scope: !1431)
!1878 = !DILocation(line: 1377, column: 9, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1520, file: !10, line: 1377, column: 9)
!1880 = !{!412, !415, i64 144}
!1881 = !DILocation(line: 1377, column: 9, scope: !1520)
!1882 = !DILocation(line: 1378, column: 20, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1879, file: !10, line: 1377, column: 44)
!1884 = !DILocation(line: 1379, column: 5, scope: !1883)
!1885 = !DILocation(line: 1381, column: 9, scope: !1519)
!1886 = !DILocation(line: 1381, column: 25, scope: !1519)
!1887 = !DILocation(line: 1381, column: 9, scope: !1520)
!1888 = !DILocation(line: 1382, column: 17, scope: !1518)
!1889 = !DILocation(line: 1384, column: 16, scope: !1517)
!1890 = !DILocation(line: 1384, column: 24, scope: !1517)
!1891 = !DILocation(line: 1384, column: 11, scope: !1518)
!1892 = !DILocation(line: 1385, column: 22, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1517, file: !10, line: 1384, column: 33)
!1894 = !DILocation(line: 1388, column: 7, scope: !1893)
!1895 = !DILocation(line: 1392, column: 13, scope: !1515)
!1896 = !DILocation(line: 1392, column: 13, scope: !1516)
!1897 = !DILocation(line: 1394, column: 28, scope: !1514)
!1898 = !DILocation(line: 1395, column: 18, scope: !1514)
!1899 = !DILocation(line: 1395, column: 27, scope: !1514)
!1900 = !DILocation(line: 1396, column: 18, scope: !1514)
!1901 = !DILocation(line: 0, scope: !1514)
!1902 = !DILocation(line: 1395, column: 11, scope: !1514)
!1903 = !DILocation(line: 1397, column: 37, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1514, file: !10, line: 1396, column: 101)
!1905 = distinct !{!1905, !1902, !1906}
!1906 = !DILocation(line: 1398, column: 11, scope: !1514)
!1907 = !DILocation(line: 1399, column: 21, scope: !1514)
!1908 = !DILocation(line: 1400, column: 22, scope: !1514)
!1909 = !DILocation(line: 1401, column: 9, scope: !1514)
!1910 = !DILocation(line: 1403, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1515, file: !10, line: 1401, column: 16)
!1912 = !DILocation(line: 1403, column: 22, scope: !1911)
!1913 = !DILocation(line: 1409, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1519, file: !10, line: 1408, column: 12)
!1915 = !DILocation(line: 0, scope: !1431)
!1916 = !DILocation(line: 1411, column: 16, scope: !1520)
!1917 = !DILocation(line: 1335, column: 14, scope: !1431)
!1918 = distinct !{!1918, !1682, !1919}
!1919 = !DILocation(line: 1412, column: 3, scope: !1431)
!1920 = !DILocation(line: 1414, column: 12, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1414, column: 7)
!1922 = !DILocation(line: 1414, column: 19, scope: !1921)
!1923 = !DILocation(line: 1414, column: 7, scope: !1431)
!1924 = !DILocation(line: 1416, column: 10, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1921, file: !10, line: 1414, column: 28)
!1926 = !DILocation(line: 1416, column: 26, scope: !1925)
!1927 = !DILocation(line: 1417, column: 3, scope: !1925)
!1928 = !DILocation(line: 1421, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1431, file: !10, line: 1421, column: 3)
!1930 = !DILocation(line: 1422, column: 3, scope: !1431)
!1931 = !DILocation(line: 0, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1605, file: !10, line: 1301, column: 27)
!1933 = !DILocation(line: 1423, column: 1, scope: !1431)
!1934 = distinct !DISubprogram(name: "tcp_send_empty_ack", scope: !10, file: !10, line: 2022, type: !1241, isLocal: false, isDefinition: true, scopeLine: 2023, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941}
!1936 = !DILocalVariable(name: "pcb", arg: 1, scope: !1934, file: !10, line: 2022, type: !231)
!1937 = !DILocalVariable(name: "err", scope: !1934, file: !10, line: 2024, type: !226)
!1938 = !DILocalVariable(name: "p", scope: !1934, file: !10, line: 2025, type: !120)
!1939 = !DILocalVariable(name: "optlen", scope: !1934, file: !10, line: 2026, type: !110)
!1940 = !DILocalVariable(name: "optflags", scope: !1934, file: !10, line: 2026, type: !110)
!1941 = !DILocalVariable(name: "num_sacks", scope: !1934, file: !10, line: 2027, type: !110)
!1942 = !DILocation(line: 2022, column: 36, scope: !1934)
!1943 = !DILocation(line: 2026, column: 16, scope: !1934)
!1944 = !DILocation(line: 2027, column: 8, scope: !1934)
!1945 = !DILocation(line: 2029, column: 3, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !10, line: 2029, column: 3)
!1947 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 2029, column: 3)
!1948 = !DILocation(line: 2029, column: 3, scope: !1947)
!1949 = !DILocation(line: 2029, column: 3, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !10, line: 2029, column: 3)
!1951 = distinct !DILexicalBlock(scope: !1946, file: !10, line: 2029, column: 3)
!1952 = !DILocation(line: 2029, column: 3, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !10, line: 2029, column: 3)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !10, line: 2029, column: 3)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !10, line: 2029, column: 3)
!1956 = !DILocation(line: 2026, column: 8, scope: !1934)
!1957 = !DILocation(line: 2045, column: 63, scope: !1934)
!1958 = !DILocation(line: 2045, column: 47, scope: !1934)
!1959 = !DILocalVariable(name: "pcb", arg: 1, scope: !1960, file: !10, line: 1856, type: !231)
!1960 = distinct !DISubprogram(name: "tcp_output_alloc_header", scope: !10, file: !10, line: 1856, type: !1961, isLocal: true, isDefinition: true, scopeLine: 1858, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1963)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!120, !231, !103, !103, !142}
!1963 = !{!1959, !1964, !1965, !1966, !1967}
!1964 = !DILocalVariable(name: "optlen", arg: 2, scope: !1960, file: !10, line: 1856, type: !103)
!1965 = !DILocalVariable(name: "datalen", arg: 3, scope: !1960, file: !10, line: 1856, type: !103)
!1966 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !1960, file: !10, line: 1857, type: !142)
!1967 = !DILocalVariable(name: "p", scope: !1960, file: !10, line: 1859, type: !120)
!1968 = !DILocation(line: 1856, column: 41, scope: !1960, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 2045, column: 7, scope: !1934)
!1970 = !DILocation(line: 1856, column: 52, scope: !1960, inlinedAt: !1969)
!1971 = !DILocation(line: 1856, column: 66, scope: !1960, inlinedAt: !1969)
!1972 = !DILocation(line: 1857, column: 31, scope: !1960, inlinedAt: !1969)
!1973 = !DILocation(line: 1863, column: 43, scope: !1960, inlinedAt: !1969)
!1974 = !DILocation(line: 1864, column: 20, scope: !1960, inlinedAt: !1969)
!1975 = !DILocation(line: 1864, column: 37, scope: !1960, inlinedAt: !1969)
!1976 = !DILocation(line: 1865, column: 5, scope: !1960, inlinedAt: !1969)
!1977 = !DILocation(line: 1863, column: 7, scope: !1960, inlinedAt: !1969)
!1978 = !DILocation(line: 1859, column: 16, scope: !1960, inlinedAt: !1969)
!1979 = !DILocation(line: 1866, column: 9, scope: !1980, inlinedAt: !1969)
!1980 = distinct !DILexicalBlock(scope: !1960, file: !10, line: 1866, column: 7)
!1981 = !DILocation(line: 1866, column: 7, scope: !1960, inlinedAt: !1969)
!1982 = !DILocation(line: 1870, column: 3, scope: !1960, inlinedAt: !1969)
!1983 = !DILocation(line: 2025, column: 16, scope: !1934)
!1984 = !DILocation(line: 2048, column: 5, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !10, line: 2048, column: 5)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !10, line: 2046, column: 18)
!1987 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 2046, column: 7)
!1988 = !DILocation(line: 2050, column: 5, scope: !1986)
!1989 = !DILocation(line: 1868, column: 36, scope: !1990, inlinedAt: !1969)
!1990 = distinct !DILexicalBlock(scope: !1980, file: !10, line: 1866, column: 18)
!1991 = !DILocation(line: 1868, column: 51, scope: !1990, inlinedAt: !1969)
!1992 = !DILocation(line: 1868, column: 44, scope: !1990, inlinedAt: !1969)
!1993 = !DILocation(line: 1868, column: 10, scope: !1990, inlinedAt: !1969)
!1994 = !DILocation(line: 1868, column: 29, scope: !1990, inlinedAt: !1969)
!1995 = !DILocalVariable(name: "pcb", arg: 1, scope: !1996, file: !10, line: 1875, type: !906)
!1996 = distinct !DISubprogram(name: "tcp_output_fill_options", scope: !10, file: !10, line: 1875, type: !1997, isLocal: true, isDefinition: true, scopeLine: 1876, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !906, !120, !110, !110}
!1999 = !{!1995, !2000, !2001, !2002, !2003, !2004, !2005}
!2000 = !DILocalVariable(name: "p", arg: 2, scope: !1996, file: !10, line: 1875, type: !120)
!2001 = !DILocalVariable(name: "optflags", arg: 3, scope: !1996, file: !10, line: 1875, type: !110)
!2002 = !DILocalVariable(name: "num_sacks", arg: 4, scope: !1996, file: !10, line: 1875, type: !110)
!2003 = !DILocalVariable(name: "tcphdr", scope: !1996, file: !10, line: 1877, type: !173)
!2004 = !DILocalVariable(name: "opts", scope: !1996, file: !10, line: 1878, type: !194)
!2005 = !DILocalVariable(name: "sacks_len", scope: !1996, file: !10, line: 1879, type: !103)
!2006 = !DILocation(line: 1875, column: 47, scope: !1996, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 2052, column: 3, scope: !1934)
!2008 = !DILocation(line: 1875, column: 65, scope: !1996, inlinedAt: !2007)
!2009 = !DILocation(line: 1875, column: 73, scope: !1996, inlinedAt: !2007)
!2010 = !DILocation(line: 1875, column: 88, scope: !1996, inlinedAt: !2007)
!2011 = !DILocation(line: 1879, column: 9, scope: !1996, inlinedAt: !2007)
!2012 = !DILocation(line: 1877, column: 19, scope: !1996, inlinedAt: !2007)
!2013 = !DILocation(line: 1878, column: 10, scope: !1996, inlinedAt: !2007)
!2014 = !DILocation(line: 1915, column: 1, scope: !1996, inlinedAt: !2007)
!2015 = !DILocation(line: 2060, column: 50, scope: !1934)
!2016 = !DILocation(line: 2060, column: 66, scope: !1934)
!2017 = !DILocation(line: 2060, column: 9, scope: !1934)
!2018 = !DILocation(line: 2024, column: 9, scope: !1934)
!2019 = !DILocation(line: 2061, column: 11, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1934, file: !10, line: 2061, column: 7)
!2021 = !DILocation(line: 0, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !10, line: 2066, column: 5)
!2023 = distinct !DILexicalBlock(scope: !2020, file: !10, line: 2064, column: 10)
!2024 = !DILocation(line: 2066, column: 5, scope: !2022)
!2025 = !DILocation(line: 2063, column: 5, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !10, line: 2063, column: 5)
!2027 = distinct !DILexicalBlock(scope: !2020, file: !10, line: 2061, column: 22)
!2028 = !DILocation(line: 2061, column: 7, scope: !1934)
!2029 = !DILocation(line: 0, scope: !2026)
!2030 = !DILocation(line: 2069, column: 3, scope: !1934)
!2031 = !DILocation(line: 0, scope: !1934)
!2032 = !DILocation(line: 2070, column: 1, scope: !1934)
!2033 = distinct !DISubprogram(name: "tcp_rexmit_rto_prepare", scope: !10, file: !10, line: 1634, type: !1241, isLocal: false, isDefinition: true, scopeLine: 1635, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2034)
!2034 = !{!2035, !2036}
!2035 = !DILocalVariable(name: "pcb", arg: 1, scope: !2033, file: !10, line: 1634, type: !231)
!2036 = !DILocalVariable(name: "seg", scope: !2033, file: !10, line: 1636, type: !185)
!2037 = !DILocation(line: 1634, column: 40, scope: !2033)
!2038 = !DILocation(line: 1638, column: 3, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !10, line: 1638, column: 3)
!2040 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1638, column: 3)
!2041 = !DILocation(line: 1638, column: 3, scope: !2040)
!2042 = !DILocation(line: 1638, column: 3, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !10, line: 1638, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2039, file: !10, line: 1638, column: 3)
!2045 = !DILocation(line: 1638, column: 3, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !10, line: 1638, column: 3)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !10, line: 1638, column: 3)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !10, line: 1638, column: 3)
!2049 = !DILocation(line: 1640, column: 12, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1640, column: 7)
!2051 = !DILocation(line: 1640, column: 20, scope: !2050)
!2052 = !DILocation(line: 1640, column: 7, scope: !2033)
!2053 = !DILocation(line: 0, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !10, line: 1648, column: 3)
!2055 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1648, column: 3)
!2056 = !DILocation(line: 1636, column: 19, scope: !2033)
!2057 = !DILocation(line: 1648, column: 33, scope: !2054)
!2058 = !DILocation(line: 1648, column: 38, scope: !2054)
!2059 = !DILocation(line: 1435, column: 47, scope: !1724, inlinedAt: !2060)
!2060 = distinct !DILocation(line: 0, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1654, column: 7)
!2062 = !DILocation(line: 1442, column: 12, scope: !1734, inlinedAt: !2060)
!2063 = !DILocation(line: 1442, column: 15, scope: !1734, inlinedAt: !2060)
!2064 = !DILocation(line: 1442, column: 19, scope: !1734, inlinedAt: !2060)
!2065 = !DILocation(line: 1448, column: 1, scope: !1724, inlinedAt: !2060)
!2066 = !DILocation(line: 1648, column: 3, scope: !2055)
!2067 = !DILocation(line: 1649, column: 9, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2054, file: !10, line: 1648, column: 64)
!2069 = distinct !{!2069, !2066, !2070}
!2070 = !DILocation(line: 1653, column: 3, scope: !2055)
!2071 = !DILocation(line: 1654, column: 7, scope: !2033)
!2072 = !DILocation(line: 1659, column: 20, scope: !2033)
!2073 = !DILocation(line: 1659, column: 13, scope: !2033)
!2074 = !DILocation(line: 1667, column: 15, scope: !2033)
!2075 = !DILocation(line: 1669, column: 16, scope: !2033)
!2076 = !DILocation(line: 1672, column: 3, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2033, file: !10, line: 1672, column: 3)
!2078 = !DILocation(line: 1674, column: 18, scope: !2033)
!2079 = !DILocation(line: 1674, column: 51, scope: !2033)
!2080 = !DILocation(line: 1674, column: 49, scope: !2033)
!2081 = !DILocation(line: 1674, column: 8, scope: !2033)
!2082 = !DILocation(line: 1674, column: 16, scope: !2033)
!2083 = !{!412, !415, i64 140}
!2084 = !DILocation(line: 1676, column: 8, scope: !2033)
!2085 = !DILocation(line: 1676, column: 15, scope: !2033)
!2086 = !DILocation(line: 1678, column: 3, scope: !2033)
!2087 = !DILocation(line: 0, scope: !2033)
!2088 = !DILocation(line: 1679, column: 1, scope: !2033)
!2089 = distinct !DISubprogram(name: "tcp_rexmit_rto_commit", scope: !10, file: !10, line: 1689, type: !2090, isLocal: false, isDefinition: true, scopeLine: 1690, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !231}
!2092 = !{!2093}
!2093 = !DILocalVariable(name: "pcb", arg: 1, scope: !2089, file: !10, line: 1689, type: !231)
!2094 = !DILocation(line: 1689, column: 39, scope: !2089)
!2095 = !DILocation(line: 1691, column: 3, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !10, line: 1691, column: 3)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !10, line: 1691, column: 3)
!2098 = !DILocation(line: 1691, column: 3, scope: !2097)
!2099 = !DILocation(line: 1691, column: 3, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !10, line: 1691, column: 3)
!2101 = distinct !DILexicalBlock(scope: !2096, file: !10, line: 1691, column: 3)
!2102 = !DILocation(line: 1691, column: 3, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !10, line: 1691, column: 3)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !10, line: 1691, column: 3)
!2105 = distinct !DILexicalBlock(scope: !2100, file: !10, line: 1691, column: 3)
!2106 = !DILocation(line: 1694, column: 12, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2089, file: !10, line: 1694, column: 7)
!2108 = !{!412, !395, i64 126}
!2109 = !DILocation(line: 1694, column: 17, scope: !2107)
!2110 = !DILocation(line: 1694, column: 7, scope: !2089)
!2111 = !DILocation(line: 1695, column: 5, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !10, line: 1694, column: 25)
!2113 = !DILocation(line: 1696, column: 3, scope: !2112)
!2114 = !DILocation(line: 1698, column: 3, scope: !2089)
!2115 = !DILocation(line: 1699, column: 1, scope: !2089)
!2116 = distinct !DISubprogram(name: "tcp_rexmit_rto", scope: !10, file: !10, line: 1710, type: !2090, isLocal: false, isDefinition: true, scopeLine: 1711, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2117)
!2117 = !{!2118}
!2118 = !DILocalVariable(name: "pcb", arg: 1, scope: !2116, file: !10, line: 1710, type: !231)
!2119 = !DILocation(line: 1710, column: 32, scope: !2116)
!2120 = !DILocation(line: 1712, column: 3, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !10, line: 1712, column: 3)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !10, line: 1712, column: 3)
!2123 = !DILocation(line: 1712, column: 3, scope: !2122)
!2124 = !DILocation(line: 1712, column: 3, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !10, line: 1712, column: 3)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !10, line: 1712, column: 3)
!2127 = !DILocation(line: 1712, column: 3, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !10, line: 1712, column: 3)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !10, line: 1712, column: 3)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !10, line: 1712, column: 3)
!2131 = !DILocation(line: 1634, column: 40, scope: !2033, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 1714, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2116, file: !10, line: 1714, column: 7)
!2134 = !DILocation(line: 1640, column: 12, scope: !2050, inlinedAt: !2132)
!2135 = !DILocation(line: 1640, column: 20, scope: !2050, inlinedAt: !2132)
!2136 = !DILocation(line: 1640, column: 7, scope: !2033, inlinedAt: !2132)
!2137 = !DILocation(line: 0, scope: !2054, inlinedAt: !2132)
!2138 = !DILocation(line: 1636, column: 19, scope: !2033, inlinedAt: !2132)
!2139 = !DILocation(line: 1648, column: 33, scope: !2054, inlinedAt: !2132)
!2140 = !DILocation(line: 1648, column: 38, scope: !2054, inlinedAt: !2132)
!2141 = !DILocation(line: 1435, column: 47, scope: !1724, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 0, scope: !2061, inlinedAt: !2132)
!2143 = !DILocation(line: 1442, column: 12, scope: !1734, inlinedAt: !2142)
!2144 = !DILocation(line: 1442, column: 15, scope: !1734, inlinedAt: !2142)
!2145 = !DILocation(line: 1442, column: 19, scope: !1734, inlinedAt: !2142)
!2146 = !DILocation(line: 1448, column: 1, scope: !1724, inlinedAt: !2142)
!2147 = !DILocation(line: 1648, column: 3, scope: !2055, inlinedAt: !2132)
!2148 = !DILocation(line: 1649, column: 9, scope: !2068, inlinedAt: !2132)
!2149 = !DILocation(line: 1654, column: 7, scope: !2033, inlinedAt: !2132)
!2150 = !DILocation(line: 1659, column: 20, scope: !2033, inlinedAt: !2132)
!2151 = !DILocation(line: 1659, column: 13, scope: !2033, inlinedAt: !2132)
!2152 = !DILocation(line: 1667, column: 15, scope: !2033, inlinedAt: !2132)
!2153 = !DILocation(line: 1669, column: 16, scope: !2033, inlinedAt: !2132)
!2154 = !DILocation(line: 1672, column: 3, scope: !2077, inlinedAt: !2132)
!2155 = !DILocation(line: 1674, column: 18, scope: !2033, inlinedAt: !2132)
!2156 = !DILocation(line: 1674, column: 51, scope: !2033, inlinedAt: !2132)
!2157 = !DILocation(line: 1674, column: 49, scope: !2033, inlinedAt: !2132)
!2158 = !DILocation(line: 1674, column: 8, scope: !2033, inlinedAt: !2132)
!2159 = !DILocation(line: 1674, column: 16, scope: !2033, inlinedAt: !2132)
!2160 = !DILocation(line: 1676, column: 8, scope: !2033, inlinedAt: !2132)
!2161 = !DILocation(line: 1676, column: 15, scope: !2033, inlinedAt: !2132)
!2162 = !DILocation(line: 1679, column: 1, scope: !2033, inlinedAt: !2132)
!2163 = !DILocation(line: 1689, column: 39, scope: !2089, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 1715, column: 5, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2133, file: !10, line: 1714, column: 46)
!2166 = !DILocation(line: 1694, column: 12, scope: !2107, inlinedAt: !2164)
!2167 = !DILocation(line: 1694, column: 17, scope: !2107, inlinedAt: !2164)
!2168 = !DILocation(line: 1694, column: 7, scope: !2089, inlinedAt: !2164)
!2169 = !DILocation(line: 1695, column: 5, scope: !2112, inlinedAt: !2164)
!2170 = !DILocation(line: 1696, column: 3, scope: !2112, inlinedAt: !2164)
!2171 = !DILocation(line: 1698, column: 3, scope: !2089, inlinedAt: !2164)
!2172 = !DILocation(line: 1716, column: 3, scope: !2165)
!2173 = !DILocation(line: 0, scope: !2165)
!2174 = !DILocation(line: 1717, column: 1, scope: !2116)
!2175 = distinct !DISubprogram(name: "tcp_rexmit", scope: !10, file: !10, line: 1727, type: !1241, isLocal: false, isDefinition: true, scopeLine: 1728, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2176)
!2176 = !{!2177, !2178, !2179}
!2177 = !DILocalVariable(name: "pcb", arg: 1, scope: !2175, file: !10, line: 1727, type: !231)
!2178 = !DILocalVariable(name: "seg", scope: !2175, file: !10, line: 1729, type: !185)
!2179 = !DILocalVariable(name: "cur_seg", scope: !2175, file: !10, line: 1730, type: !1521)
!2180 = !DILocation(line: 1727, column: 28, scope: !2175)
!2181 = !DILocation(line: 1732, column: 3, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !10, line: 1732, column: 3)
!2183 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1732, column: 3)
!2184 = !DILocation(line: 1732, column: 3, scope: !2183)
!2185 = !DILocation(line: 1732, column: 3, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !10, line: 1732, column: 3)
!2187 = distinct !DILexicalBlock(scope: !2182, file: !10, line: 1732, column: 3)
!2188 = !DILocation(line: 1732, column: 3, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !10, line: 1732, column: 3)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !10, line: 1732, column: 3)
!2191 = distinct !DILexicalBlock(scope: !2186, file: !10, line: 1732, column: 3)
!2192 = !DILocation(line: 1734, column: 12, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1734, column: 7)
!2194 = !DILocation(line: 1734, column: 20, scope: !2193)
!2195 = !DILocation(line: 1734, column: 7, scope: !2175)
!2196 = !DILocation(line: 1729, column: 19, scope: !2175)
!2197 = !DILocation(line: 1435, column: 47, scope: !1724, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1742, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1742, column: 7)
!2200 = !DILocation(line: 1442, column: 12, scope: !1734, inlinedAt: !2198)
!2201 = !DILocation(line: 1442, column: 15, scope: !1734, inlinedAt: !2198)
!2202 = !DILocation(line: 1442, column: 19, scope: !1734, inlinedAt: !2198)
!2203 = !DILocation(line: 1448, column: 1, scope: !1724, inlinedAt: !2198)
!2204 = !DILocation(line: 1742, column: 7, scope: !2175)
!2205 = !DILocation(line: 1749, column: 23, scope: !2175)
!2206 = !DILocation(line: 1749, column: 16, scope: !2175)
!2207 = !DILocation(line: 1751, column: 20, scope: !2175)
!2208 = !DILocation(line: 1730, column: 20, scope: !2175)
!2209 = !DILocation(line: 1752, column: 10, scope: !2175)
!2210 = !DILocation(line: 1752, column: 19, scope: !2175)
!2211 = !DILocation(line: 1753, column: 10, scope: !2175)
!2212 = !DILocation(line: 0, scope: !2175)
!2213 = !DILocation(line: 1752, column: 3, scope: !2175)
!2214 = !DILocation(line: 1754, column: 29, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1753, column: 93)
!2216 = distinct !{!2216, !2213, !2217}
!2217 = !DILocation(line: 1755, column: 3, scope: !2175)
!2218 = !DILocation(line: 1756, column: 13, scope: !2175)
!2219 = !DILocation(line: 1757, column: 12, scope: !2175)
!2220 = !DILocation(line: 1759, column: 12, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1759, column: 7)
!2222 = !DILocation(line: 1759, column: 17, scope: !2221)
!2223 = !DILocation(line: 1759, column: 7, scope: !2175)
!2224 = !DILocation(line: 1761, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !10, line: 1759, column: 26)
!2226 = !DILocation(line: 1761, column: 26, scope: !2225)
!2227 = !DILocation(line: 1762, column: 3, scope: !2225)
!2228 = !DILocation(line: 1765, column: 12, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2175, file: !10, line: 1765, column: 7)
!2230 = !DILocation(line: 1765, column: 17, scope: !2229)
!2231 = !DILocation(line: 1765, column: 7, scope: !2175)
!2232 = !DILocation(line: 1766, column: 5, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !10, line: 1765, column: 25)
!2234 = !DILocation(line: 1767, column: 3, scope: !2233)
!2235 = !DILocation(line: 1770, column: 8, scope: !2175)
!2236 = !DILocation(line: 1770, column: 15, scope: !2175)
!2237 = !DILocation(line: 1776, column: 3, scope: !2175)
!2238 = !DILocation(line: 1777, column: 1, scope: !2175)
!2239 = distinct !DISubprogram(name: "tcp_rexmit_fast", scope: !10, file: !10, line: 1786, type: !2090, isLocal: false, isDefinition: true, scopeLine: 1787, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2240)
!2240 = !{!2241}
!2241 = !DILocalVariable(name: "pcb", arg: 1, scope: !2239, file: !10, line: 1786, type: !231)
!2242 = !DILocation(line: 1786, column: 33, scope: !2239)
!2243 = !DILocation(line: 1788, column: 3, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !10, line: 1788, column: 3)
!2245 = distinct !DILexicalBlock(scope: !2239, file: !10, line: 1788, column: 3)
!2246 = !DILocation(line: 1788, column: 3, scope: !2245)
!2247 = !DILocation(line: 1788, column: 3, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !10, line: 1788, column: 3)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !10, line: 1788, column: 3)
!2250 = !DILocation(line: 1788, column: 3, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !10, line: 1788, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !10, line: 1788, column: 3)
!2253 = distinct !DILexicalBlock(scope: !2248, file: !10, line: 1788, column: 3)
!2254 = !DILocation(line: 1790, column: 12, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2239, file: !10, line: 1790, column: 7)
!2256 = !DILocation(line: 1790, column: 20, scope: !2255)
!2257 = !DILocation(line: 1790, column: 28, scope: !2255)
!2258 = !DILocation(line: 1790, column: 38, scope: !2255)
!2259 = !DILocation(line: 1790, column: 44, scope: !2255)
!2260 = !DILocation(line: 1790, column: 7, scope: !2239)
!2261 = !DILocation(line: 1727, column: 28, scope: !2175, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 1797, column: 9, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !10, line: 1797, column: 9)
!2264 = distinct !DILexicalBlock(scope: !2255, file: !10, line: 1790, column: 56)
!2265 = !DILocation(line: 1729, column: 19, scope: !2175, inlinedAt: !2262)
!2266 = !DILocation(line: 1435, column: 47, scope: !1724, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1742, column: 7, scope: !2199, inlinedAt: !2262)
!2268 = !DILocation(line: 1442, column: 12, scope: !1734, inlinedAt: !2267)
!2269 = !DILocation(line: 1442, column: 15, scope: !1734, inlinedAt: !2267)
!2270 = !DILocation(line: 1442, column: 19, scope: !1734, inlinedAt: !2267)
!2271 = !DILocation(line: 1448, column: 1, scope: !1724, inlinedAt: !2267)
!2272 = !DILocation(line: 1742, column: 7, scope: !2175, inlinedAt: !2262)
!2273 = !DILocation(line: 1749, column: 23, scope: !2175, inlinedAt: !2262)
!2274 = !DILocation(line: 1749, column: 16, scope: !2175, inlinedAt: !2262)
!2275 = !DILocation(line: 1751, column: 20, scope: !2175, inlinedAt: !2262)
!2276 = !DILocation(line: 1730, column: 20, scope: !2175, inlinedAt: !2262)
!2277 = !DILocation(line: 1752, column: 10, scope: !2175, inlinedAt: !2262)
!2278 = !DILocation(line: 1752, column: 19, scope: !2175, inlinedAt: !2262)
!2279 = !DILocation(line: 1753, column: 10, scope: !2175, inlinedAt: !2262)
!2280 = !DILocation(line: 0, scope: !2175, inlinedAt: !2262)
!2281 = !DILocation(line: 1752, column: 3, scope: !2175, inlinedAt: !2262)
!2282 = !DILocation(line: 1754, column: 29, scope: !2215, inlinedAt: !2262)
!2283 = !DILocation(line: 1756, column: 13, scope: !2175, inlinedAt: !2262)
!2284 = !DILocation(line: 1757, column: 12, scope: !2175, inlinedAt: !2262)
!2285 = !DILocation(line: 1759, column: 12, scope: !2221, inlinedAt: !2262)
!2286 = !DILocation(line: 1759, column: 17, scope: !2221, inlinedAt: !2262)
!2287 = !DILocation(line: 1759, column: 7, scope: !2175, inlinedAt: !2262)
!2288 = !DILocation(line: 1761, column: 10, scope: !2225, inlinedAt: !2262)
!2289 = !DILocation(line: 1761, column: 26, scope: !2225, inlinedAt: !2262)
!2290 = !DILocation(line: 1762, column: 3, scope: !2225, inlinedAt: !2262)
!2291 = !DILocation(line: 1765, column: 12, scope: !2229, inlinedAt: !2262)
!2292 = !DILocation(line: 1765, column: 17, scope: !2229, inlinedAt: !2262)
!2293 = !DILocation(line: 1765, column: 7, scope: !2175, inlinedAt: !2262)
!2294 = !DILocation(line: 1766, column: 5, scope: !2233, inlinedAt: !2262)
!2295 = !DILocation(line: 1767, column: 3, scope: !2233, inlinedAt: !2262)
!2296 = !DILocation(line: 1777, column: 1, scope: !2175, inlinedAt: !2262)
!2297 = !DILocation(line: 1770, column: 8, scope: !2175, inlinedAt: !2262)
!2298 = !DILocation(line: 1770, column: 15, scope: !2175, inlinedAt: !2262)
!2299 = !DILocation(line: 1800, column: 23, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2263, file: !10, line: 1797, column: 36)
!2301 = !DILocation(line: 1800, column: 57, scope: !2300)
!2302 = !DILocation(line: 1800, column: 12, scope: !2300)
!2303 = !DILocation(line: 1803, column: 38, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2300, file: !10, line: 1803, column: 11)
!2305 = !DILocation(line: 1803, column: 33, scope: !2304)
!2306 = !DILocation(line: 1803, column: 31, scope: !2304)
!2307 = !DILocation(line: 1803, column: 25, scope: !2304)
!2308 = !DILocation(line: 1803, column: 11, scope: !2300)
!2309 = !DILocation(line: 0, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2304, file: !10, line: 1803, column: 44)
!2311 = !DILocation(line: 1811, column: 37, scope: !2300)
!2312 = !DILocation(line: 1811, column: 33, scope: !2300)
!2313 = !DILocation(line: 1811, column: 17, scope: !2300)
!2314 = !DILocation(line: 1812, column: 7, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2300, file: !10, line: 1812, column: 7)
!2316 = !DILocation(line: 1815, column: 12, scope: !2300)
!2317 = !DILocation(line: 1815, column: 18, scope: !2300)
!2318 = !DILocation(line: 1816, column: 5, scope: !2300)
!2319 = !DILocation(line: 1818, column: 1, scope: !2239)
!2320 = distinct !DISubprogram(name: "tcp_rst", scope: !10, file: !10, line: 1983, type: !2321, isLocal: false, isDefinition: true, scopeLine: 1986, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !906, !142, !142, !145, !145, !103, !103}
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333}
!2324 = !DILocalVariable(name: "pcb", arg: 1, scope: !2320, file: !10, line: 1983, type: !906)
!2325 = !DILocalVariable(name: "seqno", arg: 2, scope: !2320, file: !10, line: 1983, type: !142)
!2326 = !DILocalVariable(name: "ackno", arg: 3, scope: !2320, file: !10, line: 1983, type: !142)
!2327 = !DILocalVariable(name: "local_ip", arg: 4, scope: !2320, file: !10, line: 1984, type: !145)
!2328 = !DILocalVariable(name: "remote_ip", arg: 5, scope: !2320, file: !10, line: 1984, type: !145)
!2329 = !DILocalVariable(name: "local_port", arg: 6, scope: !2320, file: !10, line: 1985, type: !103)
!2330 = !DILocalVariable(name: "remote_port", arg: 7, scope: !2320, file: !10, line: 1985, type: !103)
!2331 = !DILocalVariable(name: "p", scope: !2320, file: !10, line: 1987, type: !120)
!2332 = !DILocalVariable(name: "wnd", scope: !2320, file: !10, line: 1988, type: !103)
!2333 = !DILocalVariable(name: "optlen", scope: !2320, file: !10, line: 1989, type: !110)
!2334 = !DILocation(line: 1983, column: 31, scope: !2320)
!2335 = !DILocation(line: 1983, column: 42, scope: !2320)
!2336 = !DILocation(line: 1983, column: 55, scope: !2320)
!2337 = !DILocation(line: 1984, column: 26, scope: !2320)
!2338 = !DILocation(line: 1984, column: 53, scope: !2320)
!2339 = !DILocation(line: 1985, column: 15, scope: !2320)
!2340 = !DILocation(line: 1985, column: 33, scope: !2320)
!2341 = !DILocation(line: 1991, column: 3, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2343, file: !10, line: 1991, column: 3)
!2343 = distinct !DILexicalBlock(scope: !2320, file: !10, line: 1991, column: 3)
!2344 = !DILocation(line: 1991, column: 3, scope: !2343)
!2345 = !DILocation(line: 1991, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !10, line: 1991, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2342, file: !10, line: 1991, column: 3)
!2348 = !DILocation(line: 1991, column: 3, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !10, line: 1991, column: 3)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !10, line: 1991, column: 3)
!2351 = distinct !DILexicalBlock(scope: !2346, file: !10, line: 1991, column: 3)
!2352 = !DILocation(line: 1992, column: 3, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !10, line: 1992, column: 3)
!2354 = distinct !DILexicalBlock(scope: !2320, file: !10, line: 1992, column: 3)
!2355 = !DILocation(line: 1992, column: 3, scope: !2354)
!2356 = !DILocation(line: 1992, column: 3, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !10, line: 1992, column: 3)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !10, line: 1992, column: 3)
!2359 = !DILocation(line: 1992, column: 3, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !10, line: 1992, column: 3)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !10, line: 1992, column: 3)
!2362 = distinct !DILexicalBlock(scope: !2357, file: !10, line: 1992, column: 3)
!2363 = !DILocation(line: 1989, column: 8, scope: !2320)
!2364 = !DILocation(line: 1988, column: 9, scope: !2320)
!2365 = !DILocation(line: 2002, column: 56, scope: !2320)
!2366 = !DILocation(line: 2002, column: 7, scope: !2320)
!2367 = !DILocation(line: 1987, column: 16, scope: !2320)
!2368 = !DILocation(line: 2004, column: 9, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2320, file: !10, line: 2004, column: 7)
!2370 = !DILocation(line: 2004, column: 7, scope: !2320)
!2371 = !DILocation(line: 1875, column: 47, scope: !1996, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 2008, column: 3, scope: !2320)
!2373 = !DILocation(line: 1875, column: 65, scope: !1996, inlinedAt: !2372)
!2374 = !DILocation(line: 1875, column: 73, scope: !1996, inlinedAt: !2372)
!2375 = !DILocation(line: 1875, column: 88, scope: !1996, inlinedAt: !2372)
!2376 = !DILocation(line: 1879, column: 9, scope: !1996, inlinedAt: !2372)
!2377 = !DILocation(line: 1877, column: 19, scope: !1996, inlinedAt: !2372)
!2378 = !DILocation(line: 1878, column: 10, scope: !1996, inlinedAt: !2372)
!2379 = !DILocation(line: 1915, column: 1, scope: !1996, inlinedAt: !2372)
!2380 = !DILocation(line: 2012, column: 3, scope: !2320)
!2381 = !DILocation(line: 2014, column: 1, scope: !2320)
!2382 = distinct !DISubprogram(name: "tcp_output_alloc_header_common", scope: !10, file: !10, line: 1821, type: !2383, isLocal: true, isDefinition: true, scopeLine: 1824, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!120, !142, !103, !103, !142, !103, !103, !110, !103}
!2385 = !{!2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395}
!2386 = !DILocalVariable(name: "ackno", arg: 1, scope: !2382, file: !10, line: 1821, type: !142)
!2387 = !DILocalVariable(name: "optlen", arg: 2, scope: !2382, file: !10, line: 1821, type: !103)
!2388 = !DILocalVariable(name: "datalen", arg: 3, scope: !2382, file: !10, line: 1821, type: !103)
!2389 = !DILocalVariable(name: "seqno_be", arg: 4, scope: !2382, file: !10, line: 1822, type: !142)
!2390 = !DILocalVariable(name: "src_port", arg: 5, scope: !2382, file: !10, line: 1823, type: !103)
!2391 = !DILocalVariable(name: "dst_port", arg: 6, scope: !2382, file: !10, line: 1823, type: !103)
!2392 = !DILocalVariable(name: "flags", arg: 7, scope: !2382, file: !10, line: 1823, type: !110)
!2393 = !DILocalVariable(name: "wnd", arg: 8, scope: !2382, file: !10, line: 1823, type: !103)
!2394 = !DILocalVariable(name: "tcphdr", scope: !2382, file: !10, line: 1825, type: !173)
!2395 = !DILocalVariable(name: "p", scope: !2382, file: !10, line: 1826, type: !120)
!2396 = !DILocation(line: 1821, column: 38, scope: !2382)
!2397 = !DILocation(line: 1821, column: 51, scope: !2382)
!2398 = !DILocation(line: 1821, column: 65, scope: !2382)
!2399 = !DILocation(line: 1822, column: 31, scope: !2382)
!2400 = !DILocation(line: 1823, column: 31, scope: !2382)
!2401 = !DILocation(line: 1823, column: 47, scope: !2382)
!2402 = !DILocation(line: 1823, column: 62, scope: !2382)
!2403 = !DILocation(line: 1823, column: 75, scope: !2382)
!2404 = !DILocation(line: 1828, column: 45, scope: !2382)
!2405 = !DILocation(line: 1828, column: 7, scope: !2382)
!2406 = !DILocation(line: 1826, column: 16, scope: !2382)
!2407 = !DILocation(line: 1829, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2382, file: !10, line: 1829, column: 7)
!2409 = !DILocation(line: 1829, column: 7, scope: !2382)
!2410 = !DILocation(line: 1830, column: 5, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !10, line: 1830, column: 5)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !10, line: 1830, column: 5)
!2413 = distinct !DILexicalBlock(scope: !2408, file: !10, line: 1829, column: 18)
!2414 = !DILocation(line: 1830, column: 5, scope: !2412)
!2415 = !DILocation(line: 1830, column: 5, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !10, line: 1830, column: 5)
!2417 = distinct !DILexicalBlock(scope: !2411, file: !10, line: 1830, column: 5)
!2418 = !DILocation(line: 1830, column: 5, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !10, line: 1830, column: 5)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !10, line: 1830, column: 5)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !10, line: 1830, column: 5)
!2422 = !DILocation(line: 1832, column: 35, scope: !2413)
!2423 = !DILocation(line: 1825, column: 19, scope: !2382)
!2424 = !DILocation(line: 1833, column: 19, scope: !2413)
!2425 = !DILocation(line: 1833, column: 13, scope: !2413)
!2426 = !DILocation(line: 1833, column: 17, scope: !2413)
!2427 = !DILocation(line: 1834, column: 20, scope: !2413)
!2428 = !DILocation(line: 1834, column: 13, scope: !2413)
!2429 = !DILocation(line: 1834, column: 18, scope: !2413)
!2430 = !DILocation(line: 1835, column: 13, scope: !2413)
!2431 = !DILocation(line: 1835, column: 19, scope: !2413)
!2432 = !DILocation(line: 1836, column: 21, scope: !2413)
!2433 = !DILocation(line: 1836, column: 13, scope: !2413)
!2434 = !DILocation(line: 1836, column: 19, scope: !2413)
!2435 = !DILocation(line: 1837, column: 5, scope: !2413)
!2436 = !DILocation(line: 1838, column: 19, scope: !2413)
!2437 = !DILocation(line: 1838, column: 13, scope: !2413)
!2438 = !DILocation(line: 1838, column: 17, scope: !2413)
!2439 = !DILocation(line: 1839, column: 13, scope: !2413)
!2440 = !DILocation(line: 1839, column: 20, scope: !2413)
!2441 = !DILocation(line: 1840, column: 13, scope: !2413)
!2442 = !DILocation(line: 1840, column: 18, scope: !2413)
!2443 = !DILocation(line: 1841, column: 3, scope: !2413)
!2444 = !DILocation(line: 1842, column: 3, scope: !2382)
!2445 = distinct !DISubprogram(name: "tcp_output_control_segment", scope: !10, file: !10, line: 1924, type: !2446, isLocal: true, isDefinition: true, scopeLine: 1926, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!226, !906, !120, !145, !145}
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455, !2458, !2459}
!2449 = !DILocalVariable(name: "pcb", arg: 1, scope: !2445, file: !10, line: 1924, type: !906)
!2450 = !DILocalVariable(name: "p", arg: 2, scope: !2445, file: !10, line: 1924, type: !120)
!2451 = !DILocalVariable(name: "src", arg: 3, scope: !2445, file: !10, line: 1925, type: !145)
!2452 = !DILocalVariable(name: "dst", arg: 4, scope: !2445, file: !10, line: 1925, type: !145)
!2453 = !DILocalVariable(name: "err", scope: !2445, file: !10, line: 1927, type: !226)
!2454 = !DILocalVariable(name: "netif", scope: !2445, file: !10, line: 1928, type: !1440)
!2455 = !DILocalVariable(name: "ttl", scope: !2456, file: !10, line: 1936, type: !110)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !10, line: 1935, column: 10)
!2457 = distinct !DILexicalBlock(scope: !2445, file: !10, line: 1933, column: 7)
!2458 = !DILocalVariable(name: "tos", scope: !2456, file: !10, line: 1936, type: !110)
!2459 = !DILocalVariable(name: "tcphdr", scope: !2460, file: !10, line: 1939, type: !173)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !10, line: 1938, column: 63)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !10, line: 1938, column: 5)
!2462 = !DILocation(line: 1924, column: 50, scope: !2445)
!2463 = !DILocation(line: 1924, column: 68, scope: !2445)
!2464 = !DILocation(line: 1925, column: 45, scope: !2445)
!2465 = !DILocation(line: 1925, column: 67, scope: !2445)
!2466 = !DILocation(line: 1930, column: 3, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !10, line: 1930, column: 3)
!2468 = distinct !DILexicalBlock(scope: !2445, file: !10, line: 1930, column: 3)
!2469 = !DILocation(line: 1930, column: 3, scope: !2468)
!2470 = !DILocation(line: 1930, column: 3, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !10, line: 1930, column: 3)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !10, line: 1930, column: 3)
!2473 = !DILocation(line: 1930, column: 3, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !10, line: 1930, column: 3)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !10, line: 1930, column: 3)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !10, line: 1930, column: 3)
!2477 = !DILocation(line: 134, column: 33, scope: !1569, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1932, column: 11, scope: !2445)
!2479 = !DILocation(line: 134, column: 55, scope: !1569, inlinedAt: !2478)
!2480 = !DILocation(line: 134, column: 77, scope: !1569, inlinedAt: !2478)
!2481 = !DILocation(line: 138, column: 12, scope: !1580, inlinedAt: !2478)
!2482 = !DILocation(line: 138, column: 21, scope: !1580, inlinedAt: !2478)
!2483 = !DILocation(line: 138, column: 30, scope: !1580, inlinedAt: !2478)
!2484 = !DILocation(line: 138, column: 40, scope: !1580, inlinedAt: !2478)
!2485 = !DILocation(line: 138, column: 7, scope: !1569, inlinedAt: !2478)
!2486 = !DILocation(line: 139, column: 12, scope: !1585, inlinedAt: !2478)
!2487 = !DILocation(line: 139, column: 5, scope: !1585, inlinedAt: !2478)
!2488 = !DILocation(line: 141, column: 12, scope: !1588, inlinedAt: !2478)
!2489 = !DILocation(line: 0, scope: !1588, inlinedAt: !2478)
!2490 = !DILocation(line: 143, column: 1, scope: !1569, inlinedAt: !2478)
!2491 = !DILocation(line: 1928, column: 17, scope: !2445)
!2492 = !DILocation(line: 1933, column: 13, scope: !2457)
!2493 = !DILocation(line: 1933, column: 7, scope: !2445)
!2494 = !DILocation(line: 1938, column: 5, scope: !2461)
!2495 = !DILocation(line: 1938, column: 5, scope: !2456)
!2496 = !DILocation(line: 1939, column: 53, scope: !2460)
!2497 = !DILocation(line: 1939, column: 23, scope: !2460)
!2498 = !DILocation(line: 1940, column: 61, scope: !2460)
!2499 = !DILocation(line: 1940, column: 24, scope: !2460)
!2500 = !DILocation(line: 1940, column: 15, scope: !2460)
!2501 = !DILocation(line: 1940, column: 22, scope: !2460)
!2502 = !DILocation(line: 1942, column: 5, scope: !2460)
!2503 = !DILocation(line: 1944, column: 9, scope: !2456)
!2504 = !DILocation(line: 1946, column: 18, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !10, line: 1944, column: 22)
!2506 = distinct !DILexicalBlock(scope: !2456, file: !10, line: 1944, column: 9)
!2507 = !DILocation(line: 1936, column: 10, scope: !2456)
!2508 = !DILocation(line: 1947, column: 18, scope: !2505)
!2509 = !DILocation(line: 1936, column: 15, scope: !2456)
!2510 = !DILocation(line: 1948, column: 5, scope: !2505)
!2511 = !DILocation(line: 0, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2506, file: !10, line: 1948, column: 12)
!2513 = !DILocation(line: 1953, column: 5, scope: !2456)
!2514 = !DILocation(line: 1954, column: 11, scope: !2456)
!2515 = !DILocation(line: 0, scope: !2456)
!2516 = !DILocation(line: 1927, column: 9, scope: !2445)
!2517 = !DILocation(line: 1957, column: 3, scope: !2445)
!2518 = !DILocation(line: 1958, column: 3, scope: !2445)
!2519 = distinct !DISubprogram(name: "tcp_keepalive", scope: !10, file: !10, line: 2081, type: !1241, isLocal: false, isDefinition: true, scopeLine: 2082, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523, !2524}
!2521 = !DILocalVariable(name: "pcb", arg: 1, scope: !2519, file: !10, line: 2081, type: !231)
!2522 = !DILocalVariable(name: "err", scope: !2519, file: !10, line: 2083, type: !226)
!2523 = !DILocalVariable(name: "p", scope: !2519, file: !10, line: 2084, type: !120)
!2524 = !DILocalVariable(name: "optlen", scope: !2519, file: !10, line: 2085, type: !110)
!2525 = !DILocation(line: 2081, column: 31, scope: !2519)
!2526 = !DILocation(line: 2085, column: 8, scope: !2519)
!2527 = !DILocation(line: 2087, column: 3, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !10, line: 2087, column: 3)
!2529 = distinct !DILexicalBlock(scope: !2519, file: !10, line: 2087, column: 3)
!2530 = !DILocation(line: 2087, column: 3, scope: !2529)
!2531 = !DILocation(line: 2087, column: 3, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !10, line: 2087, column: 3)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !10, line: 2087, column: 3)
!2534 = !DILocation(line: 2087, column: 3, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !10, line: 2087, column: 3)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !10, line: 2087, column: 3)
!2537 = distinct !DILexicalBlock(scope: !2532, file: !10, line: 2087, column: 3)
!2538 = !DILocation(line: 2096, column: 63, scope: !2519)
!2539 = !DILocation(line: 2096, column: 71, scope: !2519)
!2540 = !DILocation(line: 2096, column: 47, scope: !2519)
!2541 = !DILocation(line: 1856, column: 41, scope: !1960, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 2096, column: 7, scope: !2519)
!2543 = !DILocation(line: 1856, column: 52, scope: !1960, inlinedAt: !2542)
!2544 = !DILocation(line: 1856, column: 66, scope: !1960, inlinedAt: !2542)
!2545 = !DILocation(line: 1857, column: 31, scope: !1960, inlinedAt: !2542)
!2546 = !DILocation(line: 1863, column: 43, scope: !1960, inlinedAt: !2542)
!2547 = !DILocation(line: 1864, column: 20, scope: !1960, inlinedAt: !2542)
!2548 = !DILocation(line: 1864, column: 37, scope: !1960, inlinedAt: !2542)
!2549 = !DILocation(line: 1865, column: 5, scope: !1960, inlinedAt: !2542)
!2550 = !DILocation(line: 1863, column: 7, scope: !1960, inlinedAt: !2542)
!2551 = !DILocation(line: 1859, column: 16, scope: !1960, inlinedAt: !2542)
!2552 = !DILocation(line: 1866, column: 9, scope: !1980, inlinedAt: !2542)
!2553 = !DILocation(line: 1866, column: 7, scope: !1960, inlinedAt: !2542)
!2554 = !DILocation(line: 1870, column: 3, scope: !1960, inlinedAt: !2542)
!2555 = !DILocation(line: 2084, column: 16, scope: !2519)
!2556 = !DILocation(line: 2097, column: 7, scope: !2519)
!2557 = !DILocation(line: 1868, column: 36, scope: !1990, inlinedAt: !2542)
!2558 = !DILocation(line: 1868, column: 51, scope: !1990, inlinedAt: !2542)
!2559 = !DILocation(line: 1868, column: 44, scope: !1990, inlinedAt: !2542)
!2560 = !DILocation(line: 1868, column: 10, scope: !1990, inlinedAt: !2542)
!2561 = !DILocation(line: 1868, column: 29, scope: !1990, inlinedAt: !2542)
!2562 = !DILocation(line: 1875, column: 47, scope: !1996, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 2102, column: 3, scope: !2519)
!2564 = !DILocation(line: 1875, column: 65, scope: !1996, inlinedAt: !2563)
!2565 = !DILocation(line: 1875, column: 73, scope: !1996, inlinedAt: !2563)
!2566 = !DILocation(line: 1875, column: 88, scope: !1996, inlinedAt: !2563)
!2567 = !DILocation(line: 1879, column: 9, scope: !1996, inlinedAt: !2563)
!2568 = !DILocation(line: 1877, column: 19, scope: !1996, inlinedAt: !2563)
!2569 = !DILocation(line: 1878, column: 10, scope: !1996, inlinedAt: !2563)
!2570 = !DILocation(line: 1915, column: 1, scope: !1996, inlinedAt: !2563)
!2571 = !DILocation(line: 2103, column: 50, scope: !2519)
!2572 = !DILocation(line: 2103, column: 66, scope: !2519)
!2573 = !DILocation(line: 2103, column: 9, scope: !2519)
!2574 = !DILocation(line: 2083, column: 9, scope: !2519)
!2575 = !DILocation(line: 2107, column: 3, scope: !2519)
!2576 = !DILocation(line: 0, scope: !2519)
!2577 = !DILocation(line: 2108, column: 1, scope: !2519)
!2578 = distinct !DISubprogram(name: "tcp_zero_window_probe", scope: !10, file: !10, line: 2119, type: !1241, isLocal: false, isDefinition: true, scopeLine: 2120, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589}
!2580 = !DILocalVariable(name: "pcb", arg: 1, scope: !2578, file: !10, line: 2119, type: !231)
!2581 = !DILocalVariable(name: "err", scope: !2578, file: !10, line: 2121, type: !226)
!2582 = !DILocalVariable(name: "p", scope: !2578, file: !10, line: 2122, type: !120)
!2583 = !DILocalVariable(name: "tcphdr", scope: !2578, file: !10, line: 2123, type: !173)
!2584 = !DILocalVariable(name: "seg", scope: !2578, file: !10, line: 2124, type: !185)
!2585 = !DILocalVariable(name: "len", scope: !2578, file: !10, line: 2125, type: !103)
!2586 = !DILocalVariable(name: "is_fin", scope: !2578, file: !10, line: 2126, type: !110)
!2587 = !DILocalVariable(name: "snd_nxt", scope: !2578, file: !10, line: 2127, type: !142)
!2588 = !DILocalVariable(name: "optlen", scope: !2578, file: !10, line: 2128, type: !110)
!2589 = !DILocalVariable(name: "d", scope: !2590, file: !10, line: 2172, type: !134)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !10, line: 2170, column: 10)
!2591 = distinct !DILexicalBlock(scope: !2578, file: !10, line: 2167, column: 7)
!2592 = !DILocation(line: 2119, column: 39, scope: !2578)
!2593 = !DILocation(line: 2128, column: 8, scope: !2578)
!2594 = !DILocation(line: 2130, column: 3, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !10, line: 2130, column: 3)
!2596 = distinct !DILexicalBlock(scope: !2578, file: !10, line: 2130, column: 3)
!2597 = !DILocation(line: 2130, column: 3, scope: !2596)
!2598 = !DILocation(line: 2130, column: 3, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !10, line: 2130, column: 3)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !10, line: 2130, column: 3)
!2601 = !DILocation(line: 2130, column: 3, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !10, line: 2130, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !10, line: 2130, column: 3)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !10, line: 2130, column: 3)
!2605 = !DILocation(line: 2142, column: 14, scope: !2578)
!2606 = !DILocation(line: 2124, column: 19, scope: !2578)
!2607 = !DILocation(line: 2143, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2578, file: !10, line: 2143, column: 7)
!2609 = !DILocation(line: 2143, column: 7, scope: !2578)
!2610 = !DILocation(line: 2152, column: 12, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2578, file: !10, line: 2152, column: 7)
!2612 = !DILocation(line: 2152, column: 26, scope: !2611)
!2613 = !DILocation(line: 2152, column: 7, scope: !2578)
!2614 = !DILocation(line: 2153, column: 5, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !10, line: 2152, column: 34)
!2616 = !DILocation(line: 2154, column: 3, scope: !2615)
!2617 = !DILocation(line: 2156, column: 14, scope: !2578)
!2618 = !DILocation(line: 2156, column: 38, scope: !2578)
!2619 = !DILocation(line: 2156, column: 49, scope: !2578)
!2620 = !DILocation(line: 2156, column: 55, scope: !2578)
!2621 = !DILocation(line: 2156, column: 64, scope: !2578)
!2622 = !DILocation(line: 2156, column: 68, scope: !2578)
!2623 = !DILocation(line: 2158, column: 9, scope: !2578)
!2624 = !DILocation(line: 2125, column: 9, scope: !2578)
!2625 = !DILocation(line: 2160, column: 54, scope: !2578)
!2626 = !DILocation(line: 2160, column: 62, scope: !2578)
!2627 = !DILocation(line: 1856, column: 41, scope: !1960, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 2160, column: 7, scope: !2578)
!2629 = !DILocation(line: 1856, column: 52, scope: !1960, inlinedAt: !2628)
!2630 = !DILocation(line: 1856, column: 66, scope: !1960, inlinedAt: !2628)
!2631 = !DILocation(line: 1857, column: 31, scope: !1960, inlinedAt: !2628)
!2632 = !DILocation(line: 1863, column: 43, scope: !1960, inlinedAt: !2628)
!2633 = !DILocation(line: 1864, column: 20, scope: !1960, inlinedAt: !2628)
!2634 = !DILocation(line: 1864, column: 37, scope: !1960, inlinedAt: !2628)
!2635 = !DILocation(line: 1865, column: 5, scope: !1960, inlinedAt: !2628)
!2636 = !DILocation(line: 1863, column: 7, scope: !1960, inlinedAt: !2628)
!2637 = !DILocation(line: 1859, column: 16, scope: !1960, inlinedAt: !2628)
!2638 = !DILocation(line: 1866, column: 9, scope: !1980, inlinedAt: !2628)
!2639 = !DILocation(line: 1866, column: 7, scope: !1960, inlinedAt: !2628)
!2640 = !DILocation(line: 1870, column: 3, scope: !1960, inlinedAt: !2628)
!2641 = !DILocation(line: 2122, column: 16, scope: !2578)
!2642 = !DILocation(line: 2161, column: 7, scope: !2578)
!2643 = !DILocation(line: 1868, column: 36, scope: !1990, inlinedAt: !2628)
!2644 = !DILocation(line: 1868, column: 51, scope: !1990, inlinedAt: !2628)
!2645 = !DILocation(line: 1868, column: 44, scope: !1990, inlinedAt: !2628)
!2646 = !DILocation(line: 1868, column: 10, scope: !1990, inlinedAt: !2628)
!2647 = !DILocation(line: 1868, column: 29, scope: !1990, inlinedAt: !2628)
!2648 = !DILocation(line: 2165, column: 33, scope: !2578)
!2649 = !DILocation(line: 2167, column: 7, scope: !2578)
!2650 = !DILocation(line: 2123, column: 19, scope: !2578)
!2651 = !DILocation(line: 2169, column: 5, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2591, file: !10, line: 2167, column: 15)
!2653 = !DILocation(line: 2170, column: 3, scope: !2652)
!2654 = !DILocation(line: 2172, column: 35, scope: !2590)
!2655 = !DILocation(line: 2172, column: 11, scope: !2590)
!2656 = !DILocation(line: 2176, column: 28, scope: !2590)
!2657 = !DILocation(line: 2176, column: 45, scope: !2590)
!2658 = !DILocation(line: 2176, column: 60, scope: !2590)
!2659 = !DILocation(line: 2176, column: 53, scope: !2590)
!2660 = !DILocation(line: 2176, column: 5, scope: !2590)
!2661 = !DILocation(line: 2180, column: 13, scope: !2578)
!2662 = !DILocation(line: 2180, column: 44, scope: !2578)
!2663 = !DILocation(line: 2127, column: 9, scope: !2578)
!2664 = !DILocation(line: 2181, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2578, file: !10, line: 2181, column: 7)
!2666 = !DILocation(line: 2181, column: 7, scope: !2578)
!2667 = !DILocation(line: 2182, column: 18, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !10, line: 2181, column: 42)
!2669 = !DILocation(line: 2183, column: 3, scope: !2668)
!2670 = !DILocation(line: 1875, column: 47, scope: !1996, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 2184, column: 3, scope: !2578)
!2672 = !DILocation(line: 1875, column: 65, scope: !1996, inlinedAt: !2671)
!2673 = !DILocation(line: 1875, column: 73, scope: !1996, inlinedAt: !2671)
!2674 = !DILocation(line: 1875, column: 88, scope: !1996, inlinedAt: !2671)
!2675 = !DILocation(line: 1879, column: 9, scope: !1996, inlinedAt: !2671)
!2676 = !DILocation(line: 1877, column: 19, scope: !1996, inlinedAt: !2671)
!2677 = !DILocation(line: 1878, column: 10, scope: !1996, inlinedAt: !2671)
!2678 = !DILocation(line: 1915, column: 1, scope: !1996, inlinedAt: !2671)
!2679 = !DILocation(line: 2186, column: 50, scope: !2578)
!2680 = !DILocation(line: 2186, column: 66, scope: !2578)
!2681 = !DILocation(line: 2186, column: 9, scope: !2578)
!2682 = !DILocation(line: 2121, column: 9, scope: !2578)
!2683 = !DILocation(line: 2191, column: 3, scope: !2578)
!2684 = !DILocation(line: 0, scope: !2578)
!2685 = !DILocation(line: 2192, column: 1, scope: !2578)
