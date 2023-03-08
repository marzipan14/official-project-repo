; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.tcp_listen_pcbs_t = type { %struct.tcp_pcb_listen* }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.pbuf*, i16, i8, %struct.tcp_hdr* }
%struct.tcp_hdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_swrand = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip4_addr = type { i32 }

@tcp_listen_pcbs = common dso_local global %union.tcp_listen_pcbs_t zeroinitializer, align 8, !dbg !0
@tcp_bound_pcbs = common dso_local global %struct.tcp_pcb* null, align 8, !dbg !289
@tcp_active_pcbs = common dso_local global %struct.tcp_pcb* null, align 8, !dbg !291
@tcp_tw_pcbs = common dso_local global %struct.tcp_pcb* null, align 8, !dbg !293
@tcp_pcb_lists = dso_local local_unnamed_addr constant [4 x %struct.tcp_pcb**] [%struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), %struct.tcp_pcb** @tcp_bound_pcbs, %struct.tcp_pcb** @tcp_active_pcbs, %struct.tcp_pcb** @tcp_tw_pcbs], align 16, !dbg !275
@tcp_port = internal unnamed_addr global i16 -16384, align 2, !dbg !301
@.str = private unnamed_addr constant [17 x i8] c"tcp_free: LISTEN\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@tcp_timer = internal unnamed_addr global i8 0, align 1, !dbg !297
@.str.3 = private unnamed_addr constant [23 x i8] c"tcp_close: invalid pcb\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"tcp_shutdown: invalid pcb\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"tcp_abandon: invalid pcb\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"don't call tcp_abort/tcp_abandon for listen-pcbs\00", align 1
@tcp_active_pcbs_changed = common dso_local local_unnamed_addr global i8 0, align 1, !dbg !295
@ip_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"tcp_bind: invalid pcb\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"tcp_bind: can only bind in state CLOSED\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"tcp_listen_with_backlog_and_err: invalid pcb\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"tcp_listen_with_backlog_and_err: pcb already connected\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"tcp_update_rcv_ann_wnd: invalid pcb\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"tcp_recved: invalid pcb\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"don't call tcp_recved for listen-pcbs\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"tcp_connect: invalid pcb\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"tcp_connect: invalid ipaddr\00", align 1
@.str.16 = private unnamed_addr constant [48 x i8] c"tcp_connect: can only connect from state CLOSED\00", align 1
@tcp_ticks = common dso_local local_unnamed_addr global i32 0, align 4, !dbg !287
@tcp_timer_ctr = internal unnamed_addr global i8 0, align 1, !dbg !299
@.str.17 = private unnamed_addr constant [42 x i8] c"tcp_slowtmr: active pcb->state != CLOSED\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"tcp_slowtmr: active pcb->state != LISTEN\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"tcp_slowtmr: active pcb->state != TIME-WAIT\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"tcp_slowtimr: persist ticking with in-flight data\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"tcp_slowtimr: persist ticking with empty send buffer\00", align 1
@tcp_persist_backoff = internal unnamed_addr constant [7 x i8] c"\03\06\0C\180`x", align 1, !dbg !335
@tcp_backoff = internal unnamed_addr constant [13 x i8] c"\01\02\03\04\05\06\07\07\07\07\07\07\07", align 1, !dbg !340
@.str.22 = private unnamed_addr constant [43 x i8] c"tcp_slowtmr: middle tcp != tcp_active_pcbs\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"tcp_slowtmr: first pcb == tcp_active_pcbs\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"tcp_slowtmr: TIME-WAIT pcb->state == TIME-WAIT\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"tcp_slowtmr: middle tcp != tcp_tw_pcbs\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"tcp_slowtmr: first pcb == tcp_tw_pcbs\00", align 1
@.str.27 = private unnamed_addr constant [38 x i8] c"tcp_process_refused_data: invalid pcb\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"tcp_setprio: invalid pcb\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"tcp_seg_copy: invalid seg\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"tcp_recv_null: invalid pcb\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"invalid socket state for recv callback\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"invalid socket state for sent callback\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"invalid socket state for err callback\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"tcp_poll: invalid pcb\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"invalid socket state for poll\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"tcp_pcb_purge: invalid pcb\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"tcp_pcb_remove: invalid pcb\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"tcp_pcb_remove: invalid pcblist\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"unsent segments leaking\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"unacked segments leaking\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"ooseq segments leaking\00", align 1
@tcp_next_iss.iss = internal unnamed_addr global i32 6510, align 4, !dbg !280
@.str.42 = private unnamed_addr constant [26 x i8] c"tcp_next_iss: invalid pcb\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"tcp_eff_send_mss_netif: invalid dst_ip\00", align 1
@tcp_state_str = internal unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0)], align 16, !dbg !345
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_swrand_def = external dso_local global %struct.uk_swrand, align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !303
@uk_pr_crit.__str.44 = internal global [6 x i8] c"tcp.c\00", section ".data_shared", align 1, !dbg !330
@.str.45 = private unnamed_addr constant [32 x i8] c"tcp_close_shutdown: invalid pcb\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"pcb->flags & TF_RXCLOSED\00", align 1
@tcp_input_pcb = external dso_local local_unnamed_addr global %struct.tcp_pcb*, align 8
@.str.47 = private unnamed_addr constant [12 x i8] c"pcb != NULL\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"tcp_free_listen: !LISTEN\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"tcp_accept_null: invalid pcb\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"CLOSED\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"LISTEN\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"SYN_SENT\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"SYN_RCVD\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"ESTABLISHED\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"FIN_WAIT_1\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"FIN_WAIT_2\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"CLOSE_WAIT\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"CLOSING\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"LAST_ACK\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"TIME_WAIT\00", align 1

; Function Attrs: noredzone nounwind
define dso_local void @tcp_init() local_unnamed_addr #0 !dbg !359 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #7, !dbg !363
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !382, !srcloc !390
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !392
  br i1 %4, label %11, label %5, !dbg !392

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !393, !srcloc !390
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !392
  br i1 %7, label %11, label %8, !dbg !396

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !397
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !406
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #8, !dbg !408
  store i32 %10, i32* %1, align 4, !dbg !410, !tbaa !411
  br label %20, !dbg !410

; <label>:11:                                     ; preds = %5, %0
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !415, !srcloc !390
  %13 = and i64 %12, -65536, !dbg !426
  %14 = or i64 %13, 4097, !dbg !426
  %15 = add nsw i64 %14, -1, !dbg !426
  %16 = inttoptr i64 %15 to i32*, !dbg !427
  %17 = load i32, i32* %16, align 4096, !dbg !428, !tbaa !411
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %17, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !429, !srcloc !430
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %18) #7, !dbg !431, !srcloc !434
  %19 = load i32, i32* %1, align 4, !dbg !435, !tbaa !411
  br label %20

; <label>:20:                                     ; preds = %8, %11
  %21 = phi i32 [ %19, %11 ], [ %10, %8 ], !dbg !435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #7, !dbg !436
  %22 = trunc i32 %21 to i16, !dbg !437
  %23 = or i16 %22, -16384, !dbg !437
  store i16 %23, i16* @tcp_port, align 2, !dbg !438, !tbaa !439
  ret void, !dbg !441
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_free(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !442 {
  %2 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !448
  %3 = load i32, i32* %2, align 8, !dbg !448, !tbaa !451
  %4 = icmp eq i32 %3, 1, !dbg !448
  br i1 %4, label %5, label %6, !dbg !455

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #9, !dbg !456
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !459
  tail call void @ukplat_terminate(i32 3) #10, !dbg !459
  unreachable, !dbg !459

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !463
  tail call void @memp_free(i32 1, i8* %7) #8, !dbg !464
  ret void, !dbg !465
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #2 !dbg !305 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !467
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !469
  call void @llvm.va_start(i8* nonnull %3), !dbg !469
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.44, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !470
  call void @llvm.va_end(i8* nonnull %3), !dbg !473
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !474
  ret void, !dbg !474
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_tmr() local_unnamed_addr #0 !dbg !475 {
  tail call void @tcp_fasttmr() #9, !dbg !476
  %1 = load i8, i8* @tcp_timer, align 1, !dbg !477, !tbaa !479
  %2 = add i8 %1, 1, !dbg !477
  store i8 %2, i8* @tcp_timer, align 1, !dbg !477, !tbaa !479
  %3 = and i8 %2, 1, !dbg !480
  %4 = icmp eq i8 %3, 0, !dbg !480
  br i1 %4, label %6, label %5, !dbg !481

; <label>:5:                                      ; preds = %0
  tail call void @tcp_slowtmr() #9, !dbg !482
  br label %6, !dbg !484

; <label>:6:                                      ; preds = %0, %5
  ret void, !dbg !485
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_fasttmr() local_unnamed_addr #0 !dbg !486 {
  %1 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !493, !tbaa !479
  %2 = add i8 %1, 1, !dbg !493
  store i8 %2, i8* @tcp_timer_ctr, align 1, !dbg !493, !tbaa !479
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !494, !tbaa !495
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !497
  br i1 %4, label %49, label %8, !dbg !498

; <label>:5:                                      ; preds = %37
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !494, !tbaa !495
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !497
  br i1 %7, label %49, label %47, !dbg !498

; <label>:8:                                      ; preds = %0, %47
  %9 = phi %struct.tcp_pcb* [ %48, %47 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 15, !dbg !499
  %11 = load i8, i8* %10, align 2, !dbg !499, !tbaa !500
  %12 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !501, !tbaa !479
  %13 = icmp eq i8 %11, %12, !dbg !502
  br i1 %13, label %41, label %14, !dbg !503

; <label>:14:                                     ; preds = %8
  store i8 %12, i8* %10, align 2, !dbg !504, !tbaa !500
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 12, !dbg !505
  %16 = load i16, i16* %15, align 2, !dbg !505, !tbaa !507
  %17 = and i16 %16, 1, !dbg !508
  %18 = icmp eq i16 %17, 0, !dbg !508
  br i1 %18, label %24, label %19, !dbg !509

; <label>:19:                                     ; preds = %14
  %20 = or i16 %16, 2, !dbg !510
  store i16 %20, i16* %15, align 2, !dbg !510, !tbaa !507
  %21 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %9) #8, !dbg !513
  %22 = load i16, i16* %15, align 2, !dbg !514, !tbaa !507
  %23 = and i16 %22, -4, !dbg !514
  store i16 %23, i16* %15, align 2, !dbg !514, !tbaa !507
  br label %24, !dbg !516

; <label>:24:                                     ; preds = %14, %19
  %25 = phi i16 [ %16, %14 ], [ %23, %19 ], !dbg !517
  %26 = and i16 %25, 8, !dbg !519
  %27 = icmp eq i16 %26, 0, !dbg !519
  br i1 %27, label %31, label %28, !dbg !520

; <label>:28:                                     ; preds = %24
  %29 = and i16 %25, -9, !dbg !521
  store i16 %29, i16* %15, align 2, !dbg !521, !tbaa !507
  %30 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %9) #9, !dbg !524
  br label %31, !dbg !525

; <label>:31:                                     ; preds = %24, %28
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 6, !dbg !526
  %33 = load %struct.tcp_pcb*, %struct.tcp_pcb** %32, align 8, !dbg !526, !tbaa !527
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 47, !dbg !529
  %35 = load %struct.pbuf*, %struct.pbuf** %34, align 8, !dbg !529, !tbaa !531
  %36 = icmp eq %struct.pbuf* %35, null, !dbg !532
  br i1 %36, label %44, label %37, !dbg !533

; <label>:37:                                     ; preds = %31
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !534, !tbaa !479
  %38 = tail call signext i8 @tcp_process_refused_data(%struct.tcp_pcb* nonnull %9) #9, !dbg !536
  %39 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !537, !tbaa !479
  %40 = icmp eq i8 %39, 0, !dbg !537
  br i1 %40, label %44, label %5, !dbg !539

; <label>:41:                                     ; preds = %8
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 6, !dbg !540
  %43 = load %struct.tcp_pcb*, %struct.tcp_pcb** %42, align 8, !dbg !540, !tbaa !527
  br label %44

; <label>:44:                                     ; preds = %37, %31, %41
  %45 = phi %struct.tcp_pcb* [ %43, %41 ], [ %33, %31 ], [ %33, %37 ], !dbg !542
  %46 = icmp eq %struct.tcp_pcb* %45, null, !dbg !497
  br i1 %46, label %49, label %47, !dbg !498

; <label>:47:                                     ; preds = %44, %5
  %48 = phi %struct.tcp_pcb* [ %45, %44 ], [ %6, %5 ]
  br label %8, !dbg !496, !llvm.loop !543

; <label>:49:                                     ; preds = %5, %44, %0
  ret void, !dbg !545
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_slowtmr() local_unnamed_addr #0 !dbg !546 {
  %1 = load i32, i32* @tcp_ticks, align 4, !dbg !586, !tbaa !411
  %2 = add i32 %1, 1, !dbg !586
  store i32 %2, i32* @tcp_ticks, align 4, !dbg !586, !tbaa !411
  %3 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !587, !tbaa !479
  %4 = add i8 %3, 1, !dbg !587
  store i8 %4, i8* @tcp_timer_ctr, align 1, !dbg !587, !tbaa !479
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !589, !tbaa !495
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !591
  br i1 %6, label %321, label %10, !dbg !592

; <label>:7:                                      ; preds = %295, %311
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !589, !tbaa !495
  %9 = icmp eq %struct.tcp_pcb* %8, null, !dbg !591
  br i1 %9, label %321, label %30, !dbg !592

; <label>:10:                                     ; preds = %0, %30
  %11 = phi %struct.tcp_pcb* [ %31, %30 ], [ %5, %0 ]
  %12 = phi %struct.tcp_pcb* [ %32, %30 ], [ null, %0 ]
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 8, !dbg !593
  %14 = load i32, i32* %13, align 8, !dbg !593, !tbaa !451
  switch i32 %14, label %18 [
    i32 0, label %15
    i32 1, label %16
    i32 10, label %17
  ], !dbg !596

; <label>:15:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !597
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !600
  tail call void @ukplat_terminate(i32 3) #10, !dbg !600
  unreachable, !dbg !600

; <label>:16:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !604
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !609
  tail call void @ukplat_terminate(i32 3) #10, !dbg !609
  unreachable, !dbg !609

; <label>:17:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !613
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !618
  tail call void @ukplat_terminate(i32 3) #10, !dbg !618
  unreachable, !dbg !618

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 15, !dbg !622
  %20 = load i8, i8* %19, align 2, !dbg !622, !tbaa !500
  %21 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !624, !tbaa !479
  %22 = icmp eq i8 %20, %21, !dbg !625
  br i1 %22, label %23, label %33, !dbg !626

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !627
  %25 = load %struct.tcp_pcb*, %struct.tcp_pcb** %24, align 8, !dbg !627, !tbaa !527
  br label %26, !dbg !629

; <label>:26:                                     ; preds = %292, %295, %317, %319, %298, %23
  %27 = phi %struct.tcp_pcb* [ %11, %23 ], [ %12, %295 ], [ %11, %319 ], [ %11, %317 ], [ %11, %298 ], [ %12, %292 ]
  %28 = phi %struct.tcp_pcb* [ %25, %23 ], [ %288, %295 ], [ %300, %319 ], [ %300, %317 ], [ %300, %298 ], [ %288, %292 ]
  %29 = icmp eq %struct.tcp_pcb* %28, null, !dbg !591
  br i1 %29, label %321, label %30, !dbg !592

; <label>:30:                                     ; preds = %26, %7
  %31 = phi %struct.tcp_pcb* [ %28, %26 ], [ %8, %7 ]
  %32 = phi %struct.tcp_pcb* [ %27, %26 ], [ null, %7 ]
  br label %10, !dbg !590, !llvm.loop !630

; <label>:33:                                     ; preds = %18
  store i8 %21, i8* %19, align 2, !dbg !632, !tbaa !500
  %34 = icmp eq i32 %14, 2, !dbg !635
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 28
  %36 = load i8, i8* %35, align 2, !dbg !636, !tbaa !637
  br i1 %34, label %37, label %39, !dbg !638

; <label>:37:                                     ; preds = %33
  %38 = icmp ugt i8 %36, 5, !dbg !639
  br i1 %38, label %154, label %41, !dbg !640

; <label>:39:                                     ; preds = %33
  %40 = icmp ugt i8 %36, 11, !dbg !641
  br i1 %40, label %154, label %41, !dbg !642

; <label>:41:                                     ; preds = %37, %39
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 56, !dbg !643
  %43 = load i8, i8* %42, align 1, !dbg !643, !tbaa !644
  %44 = zext i8 %43 to i64, !dbg !645
  %45 = icmp eq i8 %43, 0, !dbg !646
  br i1 %45, label %91, label %46, !dbg !647

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !648
  %48 = load %struct.tcp_seg*, %struct.tcp_seg** %47, align 8, !dbg !648, !tbaa !651
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !648
  br i1 %49, label %51, label %50, !dbg !652

; <label>:50:                                     ; preds = %46
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !653
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !656
  tail call void @ukplat_terminate(i32 3) #10, !dbg !656
  unreachable, !dbg !656

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !660
  %53 = load %struct.tcp_seg*, %struct.tcp_seg** %52, align 8, !dbg !660, !tbaa !663
  %54 = icmp eq %struct.tcp_seg* %53, null, !dbg !660
  br i1 %54, label %55, label %56, !dbg !664

; <label>:55:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !665
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !668
  tail call void @ukplat_terminate(i32 3) #10, !dbg !668
  unreachable, !dbg !668

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 57, !dbg !672
  %58 = load i8, i8* %57, align 2, !dbg !672, !tbaa !673
  %59 = icmp ugt i8 %58, 11, !dbg !674
  br i1 %59, label %154, label %60, !dbg !675

; <label>:60:                                     ; preds = %56
  %61 = add nsw i64 %44, -1, !dbg !676
  %62 = getelementptr inbounds [7 x i8], [7 x i8]* @tcp_persist_backoff, i64 0, i64 %61, !dbg !677
  %63 = load i8, i8* %62, align 1, !dbg !677, !tbaa !479
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 55, !dbg !679
  %65 = load i8, i8* %64, align 4, !dbg !679, !tbaa !681
  %66 = icmp ult i8 %65, %63, !dbg !682
  br i1 %66, label %67, label %69, !dbg !683

; <label>:67:                                     ; preds = %60
  %68 = add i8 %65, 1, !dbg !684
  store i8 %68, i8* %64, align 4, !dbg !684, !tbaa !681
  br label %69, !dbg !686

; <label>:69:                                     ; preds = %67, %60
  %70 = phi i8 [ %68, %67 ], [ %65, %60 ], !dbg !687
  %71 = icmp ult i8 %70, %63, !dbg !688
  br i1 %71, label %154, label %72, !dbg !689

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !691
  %74 = load i32, i32* %73, align 8, !dbg !691, !tbaa !693
  %75 = icmp eq i32 %74, 0, !dbg !694
  br i1 %75, label %76, label %79, !dbg !695

; <label>:76:                                     ; preds = %72
  %77 = tail call signext i8 @tcp_zero_window_probe(%struct.tcp_pcb* nonnull %11) #8, !dbg !696
  %78 = icmp eq i8 %77, 0, !dbg !699
  br i1 %78, label %86, label %154, !dbg !700

; <label>:79:                                     ; preds = %72
  %80 = trunc i32 %74 to i16, !dbg !701
  %81 = tail call signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb* nonnull %11, i16 zeroext %80) #8, !dbg !704
  %82 = icmp eq i8 %81, 0, !dbg !705
  br i1 %82, label %83, label %86, !dbg !706

; <label>:83:                                     ; preds = %79
  %84 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #8, !dbg !707
  %85 = icmp eq i8 %84, 0, !dbg !710
  br i1 %85, label %154, label %86, !dbg !700

; <label>:86:                                     ; preds = %83, %76, %79
  store i8 0, i8* %64, align 4, !dbg !711, !tbaa !681
  %87 = load i8, i8* %42, align 1, !dbg !714, !tbaa !644
  %88 = icmp ult i8 %87, 7, !dbg !716
  br i1 %88, label %89, label %154, !dbg !717

; <label>:89:                                     ; preds = %86
  %90 = add i8 %87, 1, !dbg !718
  store i8 %90, i8* %42, align 1, !dbg !718, !tbaa !644
  br label %154, !dbg !720

; <label>:91:                                     ; preds = %41
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 21, !dbg !721
  %93 = load i16, i16* %92, align 4, !dbg !721, !tbaa !723
  %94 = icmp slt i16 %93, 0, !dbg !724
  %95 = icmp eq i16 %93, 32767, !dbg !725
  %96 = or i1 %94, %95, !dbg !726
  br i1 %96, label %99, label %97, !dbg !726

; <label>:97:                                     ; preds = %91
  %98 = add i16 %93, 1, !dbg !727
  store i16 %98, i16* %92, align 4, !dbg !727, !tbaa !723
  br label %99, !dbg !729

; <label>:99:                                     ; preds = %91, %97
  %100 = phi i16 [ %93, %91 ], [ %98, %97 ], !dbg !730
  %101 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !731
  %102 = load i16, i16* %101, align 4, !dbg !731, !tbaa !732
  %103 = icmp slt i16 %100, %102, !dbg !733
  br i1 %103, label %154, label %104, !dbg !734

; <label>:104:                                    ; preds = %99
  %105 = tail call signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb* nonnull %11) #8, !dbg !735
  %106 = icmp eq i8 %105, 0, !dbg !736
  br i1 %106, label %115, label %107, !dbg !737

; <label>:107:                                    ; preds = %104
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !738
  %109 = load %struct.tcp_seg*, %struct.tcp_seg** %108, align 8, !dbg !738, !tbaa !651
  %110 = icmp eq %struct.tcp_seg* %109, null, !dbg !739
  br i1 %110, label %111, label %154, !dbg !740

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !741
  %113 = load %struct.tcp_seg*, %struct.tcp_seg** %112, align 8, !dbg !741, !tbaa !663
  %114 = icmp eq %struct.tcp_seg* %113, null, !dbg !742
  br i1 %114, label %154, label %115, !dbg !743

; <label>:115:                                    ; preds = %111, %104
  %116 = load i32, i32* %13, align 8, !dbg !744, !tbaa !451
  %117 = icmp eq i32 %116, 2, !dbg !745
  br i1 %117, label %138, label %118, !dbg !746

; <label>:118:                                    ; preds = %115
  %119 = load i8, i8* %35, align 2, !dbg !747, !tbaa !637
  %120 = icmp ult i8 %119, 12, !dbg !747
  %121 = select i1 %120, i8 %119, i8 12, !dbg !747
  %122 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 25, !dbg !749
  %123 = load i16, i16* %122, align 8, !dbg !749, !tbaa !750
  %124 = ashr i16 %123, 3, !dbg !751
  %125 = sext i16 %124 to i32, !dbg !751
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 26, !dbg !752
  %127 = load i16, i16* %126, align 2, !dbg !752, !tbaa !753
  %128 = sext i16 %127 to i32, !dbg !754
  %129 = add nsw i32 %125, %128, !dbg !755
  %130 = zext i8 %121 to i64, !dbg !756
  %131 = getelementptr inbounds [13 x i8], [13 x i8]* @tcp_backoff, i64 0, i64 %130, !dbg !756
  %132 = load i8, i8* %131, align 1, !dbg !756, !tbaa !479
  %133 = zext i8 %132 to i32, !dbg !756
  %134 = shl i32 %129, %133, !dbg !757
  %135 = icmp slt i32 %134, 32767, !dbg !759
  %136 = select i1 %135, i32 %134, i32 32767, !dbg !759
  %137 = trunc i32 %136 to i16, !dbg !760
  store i16 %137, i16* %101, align 4, !dbg !761, !tbaa !732
  br label %138, !dbg !762

; <label>:138:                                    ; preds = %115, %118
  store i16 0, i16* %92, align 4, !dbg !763, !tbaa !723
  %139 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 31, !dbg !764
  %140 = load i32, i32* %139, align 4, !dbg !764, !tbaa !765
  %141 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !764
  %142 = load i32, i32* %141, align 8, !dbg !764, !tbaa !693
  %143 = icmp ult i32 %140, %142, !dbg !764
  %144 = select i1 %143, i32 %140, i32 %142, !dbg !764
  %145 = lshr i32 %144, 1, !dbg !767
  %146 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 32, !dbg !768
  %147 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 22, !dbg !769
  %148 = load i16, i16* %147, align 2, !dbg !769, !tbaa !771
  %149 = zext i16 %148 to i32, !dbg !772
  %150 = shl nuw nsw i32 %149, 1, !dbg !773
  %151 = icmp ult i32 %145, %150, !dbg !774
  %152 = select i1 %151, i32 %150, i32 %145, !dbg !775
  store i32 %152, i32* %146, align 8, !dbg !776
  store i32 %149, i32* %139, align 4, !dbg !778, !tbaa !765
  %153 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 43, !dbg !779
  store i32 0, i32* %153, align 8, !dbg !780, !tbaa !781
  tail call void @tcp_rexmit_rto_commit(%struct.tcp_pcb* nonnull %11) #8, !dbg !782
  br label %154, !dbg !783

; <label>:154:                                    ; preds = %83, %76, %69, %86, %89, %56, %39, %37, %111, %99, %138, %107
  %155 = phi i8 [ 0, %138 ], [ 0, %111 ], [ 0, %107 ], [ 0, %99 ], [ 1, %37 ], [ 1, %39 ], [ 1, %56 ], [ 0, %83 ], [ 0, %89 ], [ 0, %86 ], [ 0, %69 ], [ 0, %76 ], !dbg !784
  %156 = load i32, i32* %13, align 8, !dbg !785, !tbaa !451
  %157 = icmp eq i32 %156, 6, !dbg !787
  br i1 %157, label %158, label %171, !dbg !788

; <label>:158:                                    ; preds = %154
  %159 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 12, !dbg !789
  %160 = load i16, i16* %159, align 2, !dbg !789, !tbaa !507
  %161 = and i16 %160, 16, !dbg !792
  %162 = icmp eq i16 %161, 0, !dbg !792
  br i1 %162, label %171, label %163, !dbg !793

; <label>:163:                                    ; preds = %158
  %164 = load i32, i32* @tcp_ticks, align 4, !dbg !794, !tbaa !411
  %165 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !797
  %166 = load i32, i32* %165, align 8, !dbg !797, !tbaa !798
  %167 = sub i32 %164, %166, !dbg !799
  %168 = icmp ugt i32 %167, 40, !dbg !800
  %169 = zext i1 %168 to i8, !dbg !801
  %170 = add nuw nsw i8 %155, %169, !dbg !801
  br label %171, !dbg !801

; <label>:171:                                    ; preds = %163, %158, %154
  %172 = phi i8 [ %155, %158 ], [ %155, %154 ], [ %170, %163 ], !dbg !802
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 3, !dbg !804
  %174 = load i8, i8* %173, align 1, !dbg !804, !tbaa !806
  %175 = and i8 %174, 8, !dbg !804
  %176 = icmp eq i8 %175, 0, !dbg !804
  br i1 %176, label %206, label %177, !dbg !807

; <label>:177:                                    ; preds = %171
  switch i32 %156, label %206 [
    i32 4, label %178
    i32 7, label %178
  ], !dbg !808

; <label>:178:                                    ; preds = %177, %177
  %179 = load i32, i32* @tcp_ticks, align 4, !dbg !809, !tbaa !411
  %180 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !812
  %181 = load i32, i32* %180, align 8, !dbg !812, !tbaa !798
  %182 = sub i32 %179, %181, !dbg !813
  %183 = zext i32 %182 to i64, !dbg !814
  %184 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 54, !dbg !815
  %185 = load i32, i32* %184, align 8, !dbg !815, !tbaa !816
  %186 = zext i32 %185 to i64, !dbg !817
  %187 = add nuw nsw i64 %186, 675000, !dbg !818
  %188 = udiv i64 %187, 500, !dbg !819
  %189 = icmp ult i64 %188, %183, !dbg !820
  br i1 %189, label %190, label %192, !dbg !821

; <label>:190:                                    ; preds = %178
  %191 = add nsw i8 %172, 1, !dbg !822
  br label %206, !dbg !824

; <label>:192:                                    ; preds = %178
  %193 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 58, !dbg !825
  %194 = load i8, i8* %193, align 1, !dbg !825, !tbaa !827
  %195 = zext i8 %194 to i64, !dbg !828
  %196 = mul nuw nsw i64 %195, 75000, !dbg !829
  %197 = add nuw nsw i64 %196, %186, !dbg !830
  %198 = udiv i64 %197, 500, !dbg !831
  %199 = icmp ult i64 %198, %183, !dbg !832
  br i1 %199, label %200, label %206, !dbg !833

; <label>:200:                                    ; preds = %192
  %201 = tail call signext i8 @tcp_keepalive(%struct.tcp_pcb* nonnull %11) #8, !dbg !834
  %202 = icmp eq i8 %201, 0, !dbg !836
  br i1 %202, label %203, label %206, !dbg !838

; <label>:203:                                    ; preds = %200
  %204 = load i8, i8* %193, align 1, !dbg !839, !tbaa !827
  %205 = add i8 %204, 1, !dbg !839
  store i8 %205, i8* %193, align 1, !dbg !839, !tbaa !827
  br label %206, !dbg !841

; <label>:206:                                    ; preds = %177, %171, %190, %200, %203, %192
  %207 = phi i8 [ 1, %190 ], [ 0, %203 ], [ 0, %200 ], [ 0, %192 ], [ 0, %171 ], [ 0, %177 ], !dbg !784
  %208 = phi i8 [ %191, %190 ], [ %172, %203 ], [ %172, %200 ], [ %172, %192 ], [ %172, %171 ], [ %172, %177 ], !dbg !842
  %209 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 46, !dbg !844
  %210 = load %struct.tcp_seg*, %struct.tcp_seg** %209, align 8, !dbg !844, !tbaa !846
  %211 = icmp eq %struct.tcp_seg* %210, null, !dbg !847
  br i1 %211, label %235, label %212, !dbg !848

; <label>:212:                                    ; preds = %206
  %213 = load i32, i32* @tcp_ticks, align 4, !dbg !849, !tbaa !411
  %214 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !850
  %215 = load i32, i32* %214, align 8, !dbg !850, !tbaa !798
  %216 = sub i32 %213, %215, !dbg !851
  %217 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !852
  %218 = load i16, i16* %217, align 4, !dbg !852, !tbaa !732
  %219 = sext i16 %218 to i32, !dbg !853
  %220 = mul nsw i32 %219, 6, !dbg !854
  %221 = icmp ult i32 %216, %220, !dbg !855
  br i1 %221, label %235, label %222, !dbg !856

; <label>:222:                                    ; preds = %212, %231
  %223 = phi %struct.tcp_seg* [ %225, %231 ], [ %210, %212 ]
  %224 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %223, i64 0, i32 0, !dbg !873
  %225 = load %struct.tcp_seg*, %struct.tcp_seg** %224, align 8, !dbg !873, !tbaa !874
  %226 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %223, i64 0, i32 1, !dbg !882
  %227 = load %struct.pbuf*, %struct.pbuf** %226, align 8, !dbg !882, !tbaa !886
  %228 = icmp eq %struct.pbuf* %227, null, !dbg !887
  br i1 %228, label %231, label %229, !dbg !888

; <label>:229:                                    ; preds = %222
  %230 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %227) #8, !dbg !889
  br label %231, !dbg !891

; <label>:231:                                    ; preds = %229, %222
  %232 = bitcast %struct.tcp_seg* %223 to i8*, !dbg !892
  tail call void @memp_free(i32 3, i8* %232) #8, !dbg !893
  %233 = icmp eq %struct.tcp_seg* %225, null, !dbg !894
  br i1 %233, label %234, label %222, !dbg !895, !llvm.loop !896

; <label>:234:                                    ; preds = %231
  store %struct.tcp_seg* null, %struct.tcp_seg** %209, align 8, !dbg !899, !tbaa !846
  br label %235, !dbg !900

; <label>:235:                                    ; preds = %212, %206, %234
  %236 = load i32, i32* %13, align 8, !dbg !901, !tbaa !451
  switch i32 %236, label %247 [
    i32 3, label %238
    i32 9, label %237
  ], !dbg !903

; <label>:237:                                    ; preds = %235
  br label %238, !dbg !904

; <label>:238:                                    ; preds = %235, %237
  %239 = phi i32 [ 240, %237 ], [ 40, %235 ]
  %240 = load i32, i32* @tcp_ticks, align 4, !dbg !907, !tbaa !411
  %241 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !907
  %242 = load i32, i32* %241, align 8, !dbg !907, !tbaa !798
  %243 = sub i32 %240, %242, !dbg !907
  %244 = icmp ugt i32 %243, %239, !dbg !907
  %245 = zext i1 %244 to i8, !dbg !909
  %246 = add i8 %208, %245, !dbg !909
  br label %247, !dbg !910

; <label>:247:                                    ; preds = %238, %235
  %248 = phi i8 [ %208, %235 ], [ %246, %238 ], !dbg !911
  %249 = icmp eq i8 %248, 0, !dbg !910
  br i1 %249, label %298, label %250, !dbg !915

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 53, !dbg !916
  %252 = load void (i8*, i8)*, void (i8*, i8)** %251, align 8, !dbg !916, !tbaa !917
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %11) #9, !dbg !919
  %253 = icmp eq %struct.tcp_pcb* %12, null, !dbg !920
  %254 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !922, !tbaa !495
  br i1 %253, label %264, label %255, !dbg !926

; <label>:255:                                    ; preds = %250
  %256 = icmp eq %struct.tcp_pcb* %11, %254, !dbg !927
  br i1 %256, label %257, label %258, !dbg !928

; <label>:257:                                    ; preds = %255
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !929
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !932
  tail call void @ukplat_terminate(i32 3) #10, !dbg !932
  unreachable, !dbg !932

; <label>:258:                                    ; preds = %255
  %259 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !936
  %260 = bitcast %struct.tcp_pcb** %259 to i64*, !dbg !936
  %261 = load i64, i64* %260, align 8, !dbg !936, !tbaa !527
  %262 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %12, i64 0, i32 6, !dbg !937
  %263 = bitcast %struct.tcp_pcb** %262 to i64*, !dbg !938
  store i64 %261, i64* %263, align 8, !dbg !938, !tbaa !527
  br label %271, !dbg !939

; <label>:264:                                    ; preds = %250
  %265 = icmp eq %struct.tcp_pcb* %254, %11, !dbg !940
  br i1 %265, label %267, label %266, !dbg !944

; <label>:266:                                    ; preds = %264
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !945
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !948
  tail call void @ukplat_terminate(i32 3) #10, !dbg !948
  unreachable, !dbg !948

; <label>:267:                                    ; preds = %264
  %268 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !952
  %269 = bitcast %struct.tcp_pcb** %268 to i64*, !dbg !952
  %270 = load i64, i64* %269, align 8, !dbg !952, !tbaa !527
  store i64 %270, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !953, !tbaa !495
  br label %271

; <label>:271:                                    ; preds = %267, %258
  %272 = icmp eq i8 %207, 0, !dbg !954
  br i1 %272, label %284, label %273, !dbg !956

; <label>:273:                                    ; preds = %271
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 34, !dbg !957
  %275 = load i32, i32* %274, align 8, !dbg !957, !tbaa !959
  %276 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 17, !dbg !960
  %277 = load i32, i32* %276, align 4, !dbg !960, !tbaa !961
  %278 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 0, !dbg !962
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 1, !dbg !963
  %280 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 10, !dbg !964
  %281 = load i16, i16* %280, align 2, !dbg !964, !tbaa !965
  %282 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 11, !dbg !966
  %283 = load i16, i16* %282, align 8, !dbg !966, !tbaa !967
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %11, i32 %275, i32 %277, %struct.ip_addr* %278, %struct.ip_addr* nonnull %279, i16 zeroext %281, i16 zeroext %283) #8, !dbg !968
  br label %284, !dbg !969

; <label>:284:                                    ; preds = %271, %273
  %285 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !970
  %286 = load i8*, i8** %285, align 8, !dbg !970, !tbaa !971
  %287 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !975
  %288 = load %struct.tcp_pcb*, %struct.tcp_pcb** %287, align 8, !dbg !975, !tbaa !527
  %289 = load i32, i32* %13, align 8, !dbg !978, !tbaa !451
  %290 = icmp eq i32 %289, 1, !dbg !978
  br i1 %290, label %291, label %292, !dbg !979

; <label>:291:                                    ; preds = %284
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !980
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !981
  tail call void @ukplat_terminate(i32 3) #10, !dbg !981
  unreachable, !dbg !981

; <label>:292:                                    ; preds = %284
  %293 = bitcast %struct.tcp_pcb* %11 to i8*, !dbg !982
  tail call void @memp_free(i32 1, i8* %293) #8, !dbg !983
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !984, !tbaa !479
  %294 = icmp eq void (i8*, i8)* %252, null, !dbg !985
  br i1 %294, label %26, label %295, !dbg !988

; <label>:295:                                    ; preds = %292
  tail call void %252(i8* %286, i8 signext -13) #8, !dbg !985
  %296 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !989, !tbaa !479
  %297 = icmp eq i8 %296, 0, !dbg !989
  br i1 %297, label %26, label %7

; <label>:298:                                    ; preds = %247
  %299 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !991
  %300 = load %struct.tcp_pcb*, %struct.tcp_pcb** %299, align 8, !dbg !991, !tbaa !527
  %301 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 13, !dbg !993
  %302 = load i8, i8* %301, align 4, !dbg !994, !tbaa !995
  %303 = add i8 %302, 1, !dbg !994
  store i8 %303, i8* %301, align 4, !dbg !994, !tbaa !995
  %304 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 14, !dbg !996
  %305 = load i8, i8* %304, align 1, !dbg !996, !tbaa !998
  %306 = icmp ult i8 %303, %305, !dbg !999
  br i1 %306, label %26, label %307, !dbg !1000

; <label>:307:                                    ; preds = %298
  store i8 0, i8* %301, align 4, !dbg !1001, !tbaa !995
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !1003, !tbaa !479
  %308 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 52, !dbg !1004
  %309 = load i8 (i8*, %struct.tcp_pcb*)*, i8 (i8*, %struct.tcp_pcb*)** %308, align 8, !dbg !1004, !tbaa !1007
  %310 = icmp eq i8 (i8*, %struct.tcp_pcb*)* %309, null, !dbg !1004
  br i1 %310, label %319, label %311, !dbg !1008

; <label>:311:                                    ; preds = %307
  %312 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !1004
  %313 = load i8*, i8** %312, align 8, !dbg !1004, !tbaa !971
  %314 = tail call signext i8 %309(i8* %313, %struct.tcp_pcb* nonnull %11) #8, !dbg !1004
  %315 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !1009, !tbaa !479
  %316 = icmp eq i8 %315, 0, !dbg !1009
  br i1 %316, label %317, label %7, !dbg !1011

; <label>:317:                                    ; preds = %311
  %318 = icmp eq i8 %314, 0, !dbg !1012
  br i1 %318, label %319, label %26, !dbg !1014

; <label>:319:                                    ; preds = %307, %317
  %320 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #8, !dbg !1015
  br label %26, !dbg !1017

; <label>:321:                                    ; preds = %7, %26, %0
  %322 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1018, !tbaa !495
  %323 = icmp eq %struct.tcp_pcb* %322, null, !dbg !1019
  br i1 %323, label %371, label %324, !dbg !1020

; <label>:324:                                    ; preds = %321, %367
  %325 = phi %struct.tcp_pcb* [ %369, %367 ], [ %322, %321 ]
  %326 = phi %struct.tcp_pcb* [ %368, %367 ], [ null, %321 ]
  %327 = bitcast %struct.tcp_pcb* %325 to i8*, !dbg !1021
  %328 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 8, !dbg !1022
  %329 = load i32, i32* %328, align 8, !dbg !1022, !tbaa !451
  %330 = icmp eq i32 %329, 10, !dbg !1022
  br i1 %330, label %332, label %331, !dbg !1025

; <label>:331:                                    ; preds = %324
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1026
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1029
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1029
  unreachable, !dbg !1029

; <label>:332:                                    ; preds = %324
  %333 = load i32, i32* @tcp_ticks, align 4, !dbg !1033, !tbaa !411
  %334 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 16, !dbg !1035
  %335 = load i32, i32* %334, align 8, !dbg !1035, !tbaa !798
  %336 = sub i32 %333, %335, !dbg !1036
  %337 = icmp ugt i32 %336, 240, !dbg !1037
  br i1 %337, label %338, label %364, !dbg !1038

; <label>:338:                                    ; preds = %332
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %325) #9, !dbg !1039
  %339 = icmp eq %struct.tcp_pcb* %326, null, !dbg !1040
  %340 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1042, !tbaa !495
  br i1 %339, label %350, label %341, !dbg !1046

; <label>:341:                                    ; preds = %338
  %342 = icmp eq %struct.tcp_pcb* %325, %340, !dbg !1047
  br i1 %342, label %343, label %344, !dbg !1048

; <label>:343:                                    ; preds = %341
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1049
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1052
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1052
  unreachable, !dbg !1052

; <label>:344:                                    ; preds = %341
  %345 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1056
  %346 = bitcast %struct.tcp_pcb** %345 to i64*, !dbg !1056
  %347 = load i64, i64* %346, align 8, !dbg !1056, !tbaa !527
  %348 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %326, i64 0, i32 6, !dbg !1057
  %349 = bitcast %struct.tcp_pcb** %348 to i64*, !dbg !1058
  store i64 %347, i64* %349, align 8, !dbg !1058, !tbaa !527
  br label %357, !dbg !1059

; <label>:350:                                    ; preds = %338
  %351 = icmp eq %struct.tcp_pcb* %340, %325, !dbg !1060
  br i1 %351, label %353, label %352, !dbg !1064

; <label>:352:                                    ; preds = %350
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1065
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1068
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1068
  unreachable, !dbg !1068

; <label>:353:                                    ; preds = %350
  %354 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1072
  %355 = bitcast %struct.tcp_pcb** %354 to i64*, !dbg !1072
  %356 = load i64, i64* %355, align 8, !dbg !1072, !tbaa !527
  store i64 %356, i64* bitcast (%struct.tcp_pcb** @tcp_tw_pcbs to i64*), align 8, !dbg !1073, !tbaa !495
  br label %357

; <label>:357:                                    ; preds = %353, %344
  %358 = load i32, i32* %328, align 8, !dbg !1077, !tbaa !451
  %359 = icmp eq i32 %358, 1, !dbg !1077
  br i1 %359, label %360, label %361, !dbg !1078

; <label>:360:                                    ; preds = %357
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1079
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1080
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1080
  unreachable, !dbg !1080

; <label>:361:                                    ; preds = %357
  %362 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1081
  %363 = load %struct.tcp_pcb*, %struct.tcp_pcb** %362, align 8, !dbg !1081, !tbaa !527
  tail call void @memp_free(i32 1, i8* %327) #8, !dbg !1082
  br label %367, !dbg !1083

; <label>:364:                                    ; preds = %332
  %365 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1084
  %366 = load %struct.tcp_pcb*, %struct.tcp_pcb** %365, align 8, !dbg !1084, !tbaa !527
  br label %367

; <label>:367:                                    ; preds = %364, %361
  %368 = phi %struct.tcp_pcb* [ %326, %361 ], [ %325, %364 ], !dbg !1086
  %369 = phi %struct.tcp_pcb* [ %363, %361 ], [ %366, %364 ]
  %370 = icmp eq %struct.tcp_pcb* %369, null, !dbg !1019
  br i1 %370, label %371, label %324, !dbg !1020, !llvm.loop !1087

; <label>:371:                                    ; preds = %367, %321
  ret void, !dbg !1089
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_close(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1090 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1096
  br i1 %2, label %3, label %4, !dbg !1099

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !1100
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1103
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1103
  unreachable, !dbg !1103

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1107
  %6 = load i32, i32* %5, align 8, !dbg !1107, !tbaa !451
  %7 = icmp eq i32 %6, 1, !dbg !1109
  br i1 %7, label %12, label %8, !dbg !1110

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1111
  %10 = load i16, i16* %9, align 2, !dbg !1111, !tbaa !507
  %11 = or i16 %10, 16, !dbg !1111
  store i16 %11, i16* %9, align 2, !dbg !1111, !tbaa !507
  br label %12, !dbg !1114

; <label>:12:                                     ; preds = %4, %8
  %13 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #9, !dbg !1115
  ret i8 %13, !dbg !1116
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb*, i8 zeroext) unnamed_addr #0 !dbg !1117 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1141
  br i1 %3, label %4, label %5, !dbg !1144

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !1145
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1148
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1148
  unreachable, !dbg !1148

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8 %1, 0, !dbg !1152
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8
  %8 = load i32, i32* %7, align 8, !dbg !1153, !tbaa !451
  br i1 %6, label %74, label %9, !dbg !1154

; <label>:9:                                      ; preds = %5
  switch i32 %8, label %157 [
    i32 4, label %10
    i32 7, label %10
    i32 0, label %75
    i32 1, label %105
    i32 2, label %151
  ], !dbg !1155

; <label>:10:                                     ; preds = %9, %9
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1156
  %12 = load %struct.pbuf*, %struct.pbuf** %11, align 8, !dbg !1156, !tbaa !531
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !1157
  br i1 %13, label %17, label %14, !dbg !1158

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  %16 = load i16, i16* %15, align 2, !dbg !1159, !tbaa !507
  br label %26, !dbg !1158

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !1162
  %19 = load i32, i32* %18, align 8, !dbg !1162, !tbaa !1163
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1164
  %21 = load i16, i16* %20, align 2, !dbg !1164, !tbaa !507
  %22 = and i16 %21, 256, !dbg !1164
  %23 = icmp eq i16 %22, 0, !dbg !1164
  %24 = select i1 %23, i32 65535, i32 262142, !dbg !1164
  %25 = icmp eq i32 %19, %24, !dbg !1165
  br i1 %25, label %74, label %26, !dbg !1166

; <label>:26:                                     ; preds = %14, %17
  %27 = phi i16 [ %16, %14 ], [ %21, %17 ], !dbg !1159
  %28 = and i16 %27, 16, !dbg !1159
  %29 = icmp eq i16 %28, 0, !dbg !1159
  br i1 %29, label %30, label %31, !dbg !1167

; <label>:30:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !1168
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1171
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1171
  unreachable, !dbg !1171

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1175
  %33 = load i32, i32* %32, align 8, !dbg !1175, !tbaa !959
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1176
  %35 = load i32, i32* %34, align 4, !dbg !1176, !tbaa !961
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1177
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1178
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1179
  %39 = load i16, i16* %38, align 2, !dbg !1179, !tbaa !965
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1180
  %41 = load i16, i16* %40, align 8, !dbg !1180, !tbaa !967
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %0, i32 %33, i32 %35, %struct.ip_addr* nonnull %36, %struct.ip_addr* nonnull %37, i16 zeroext %39, i16 zeroext %41) #8, !dbg !1181
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %0) #9, !dbg !1182
  %42 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1183, !tbaa !495
  %43 = icmp eq %struct.tcp_pcb* %42, %0, !dbg !1183
  br i1 %43, label %44, label %48, !dbg !1184

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1185
  %46 = bitcast %struct.tcp_pcb** %45 to i64*, !dbg !1185
  %47 = load i64, i64* %46, align 8, !dbg !1185, !tbaa !527
  store i64 %47, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !1185, !tbaa !495
  br label %63, !dbg !1185

; <label>:48:                                     ; preds = %31, %51
  %49 = phi %struct.tcp_pcb* [ %53, %51 ], [ %42, %31 ], !dbg !1187
  %50 = icmp eq %struct.tcp_pcb* %49, null, !dbg !1190
  br i1 %50, label %61, label %51, !dbg !1187

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %49, i64 0, i32 6, !dbg !1192
  %53 = load %struct.tcp_pcb*, %struct.tcp_pcb** %52, align 8, !dbg !1192, !tbaa !527
  %54 = icmp eq %struct.tcp_pcb* %53, %0, !dbg !1192
  br i1 %54, label %55, label %48, !dbg !1195, !llvm.loop !1196

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %49, i64 0, i32 6, !dbg !1192
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1197
  %58 = bitcast %struct.tcp_pcb** %57 to i64*, !dbg !1197
  %59 = load i64, i64* %58, align 8, !dbg !1197, !tbaa !527
  %60 = bitcast %struct.tcp_pcb** %56 to i64*, !dbg !1197
  store i64 %59, i64* %60, align 8, !dbg !1197, !tbaa !527
  br label %63, !dbg !1197

; <label>:61:                                     ; preds = %48
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1184
  br label %63, !dbg !1184

; <label>:63:                                     ; preds = %61, %55, %44
  %64 = phi %struct.tcp_pcb** [ %62, %61 ], [ %57, %55 ], [ %45, %44 ], !dbg !1184
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %64, align 8, !dbg !1184, !tbaa !527
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1199, !tbaa !479
  %65 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1200, !tbaa !495
  %66 = icmp eq %struct.tcp_pcb* %65, %0, !dbg !1202
  br i1 %66, label %67, label %68, !dbg !1203

; <label>:67:                                     ; preds = %63
  tail call void @tcp_trigger_input_pcb_close() #8, !dbg !1204
  br label %159, !dbg !1206

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %7, align 8, !dbg !1210, !tbaa !451
  %70 = icmp eq i32 %69, 1, !dbg !1210
  br i1 %70, label %71, label %72, !dbg !1211

; <label>:71:                                     ; preds = %68
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1212
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1213
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1213
  unreachable, !dbg !1213

; <label>:72:                                     ; preds = %68
  %73 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1214
  tail call void @memp_free(i32 1, i8* %73) #8, !dbg !1215
  br label %159

; <label>:74:                                     ; preds = %5, %17
  switch i32 %8, label %157 [
    i32 0, label %75
    i32 1, label %105
    i32 2, label %151
  ], !dbg !1216

; <label>:75:                                     ; preds = %9, %74
  %76 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1217
  %77 = load i16, i16* %76, align 2, !dbg !1217, !tbaa !965
  %78 = icmp eq i16 %77, 0, !dbg !1218
  br i1 %78, label %103, label %79, !dbg !1219

; <label>:79:                                     ; preds = %75
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1220, !tbaa !495
  %81 = icmp eq %struct.tcp_pcb* %80, %0, !dbg !1220
  br i1 %81, label %82, label %86, !dbg !1221

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1222
  %84 = bitcast %struct.tcp_pcb** %83 to i64*, !dbg !1222
  %85 = load i64, i64* %84, align 8, !dbg !1222, !tbaa !527
  store i64 %85, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1222, !tbaa !495
  br label %101, !dbg !1226

; <label>:86:                                     ; preds = %79, %89
  %87 = phi %struct.tcp_pcb* [ %91, %89 ], [ %80, %79 ], !dbg !1227
  %88 = icmp eq %struct.tcp_pcb* %87, null, !dbg !1230
  br i1 %88, label %99, label %89, !dbg !1227

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !1232
  %91 = load %struct.tcp_pcb*, %struct.tcp_pcb** %90, align 8, !dbg !1232, !tbaa !527
  %92 = icmp eq %struct.tcp_pcb* %91, %0, !dbg !1232
  br i1 %92, label %93, label %86, !dbg !1235, !llvm.loop !1236

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !1232
  %95 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1237
  %96 = bitcast %struct.tcp_pcb** %95 to i64*, !dbg !1237
  %97 = load i64, i64* %96, align 8, !dbg !1237, !tbaa !527
  %98 = bitcast %struct.tcp_pcb** %94 to i64*, !dbg !1237
  store i64 %97, i64* %98, align 8, !dbg !1237, !tbaa !527
  br label %101, !dbg !1237

; <label>:99:                                     ; preds = %86
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1221
  br label %101, !dbg !1221

; <label>:101:                                    ; preds = %93, %99, %82
  %102 = phi %struct.tcp_pcb** [ %83, %82 ], [ %100, %99 ], [ %95, %93 ]
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %102, align 8, !dbg !1221, !tbaa !527
  br label %103, !dbg !1239

; <label>:103:                                    ; preds = %101, %75
  %104 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1239
  tail call void @memp_free(i32 1, i8* %104) #8, !dbg !1240
  br label %159, !dbg !1241

; <label>:105:                                    ; preds = %9, %74
  %106 = bitcast %struct.tcp_pcb* %0 to %struct.tcp_pcb_listen*
  %107 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1253, !tbaa !495
  %108 = icmp eq %struct.tcp_pcb* %107, null, !dbg !1268
  br i1 %108, label %119, label %109, !dbg !1271

; <label>:109:                                    ; preds = %105, %115
  %110 = phi %struct.tcp_pcb* [ %117, %115 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %110, i64 0, i32 48, !dbg !1272
  %112 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %111, align 8, !dbg !1272, !tbaa !1275
  %113 = icmp eq %struct.tcp_pcb_listen* %112, %106, !dbg !1276
  br i1 %113, label %114, label %115, !dbg !1277

; <label>:114:                                    ; preds = %109
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %111, align 8, !dbg !1278, !tbaa !1275
  br label %115, !dbg !1280

; <label>:115:                                    ; preds = %114, %109
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %110, i64 0, i32 6, !dbg !1281
  %117 = load %struct.tcp_pcb*, %struct.tcp_pcb** %116, align 8, !dbg !1281, !tbaa !527
  %118 = icmp eq %struct.tcp_pcb* %117, null, !dbg !1268
  br i1 %118, label %119, label %109, !dbg !1271, !llvm.loop !1282

; <label>:119:                                    ; preds = %115, %105
  %120 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1253, !tbaa !495
  %121 = icmp eq %struct.tcp_pcb* %120, null, !dbg !1268
  br i1 %121, label %132, label %122, !dbg !1271

; <label>:122:                                    ; preds = %119, %128
  %123 = phi %struct.tcp_pcb* [ %130, %128 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 48, !dbg !1272
  %125 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %124, align 8, !dbg !1272, !tbaa !1275
  %126 = icmp eq %struct.tcp_pcb_listen* %125, %106, !dbg !1276
  br i1 %126, label %127, label %128, !dbg !1277

; <label>:127:                                    ; preds = %122
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %124, align 8, !dbg !1278, !tbaa !1275
  br label %128, !dbg !1280

; <label>:128:                                    ; preds = %127, %122
  %129 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 6, !dbg !1281
  %130 = load %struct.tcp_pcb*, %struct.tcp_pcb** %129, align 8, !dbg !1281, !tbaa !527
  %131 = icmp eq %struct.tcp_pcb* %130, null, !dbg !1268
  br i1 %131, label %132, label %122, !dbg !1271, !llvm.loop !1282

; <label>:132:                                    ; preds = %128, %119
  %133 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1253, !tbaa !495
  %134 = icmp eq %struct.tcp_pcb* %133, null, !dbg !1268
  br i1 %134, label %145, label %135, !dbg !1271

; <label>:135:                                    ; preds = %132, %141
  %136 = phi %struct.tcp_pcb* [ %143, %141 ], [ %133, %132 ]
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %136, i64 0, i32 48, !dbg !1272
  %138 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %137, align 8, !dbg !1272, !tbaa !1275
  %139 = icmp eq %struct.tcp_pcb_listen* %138, %106, !dbg !1276
  br i1 %139, label %140, label %141, !dbg !1277

; <label>:140:                                    ; preds = %135
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %137, align 8, !dbg !1278, !tbaa !1275
  br label %141, !dbg !1280

; <label>:141:                                    ; preds = %140, %135
  %142 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %136, i64 0, i32 6, !dbg !1281
  %143 = load %struct.tcp_pcb*, %struct.tcp_pcb** %142, align 8, !dbg !1281, !tbaa !527
  %144 = icmp eq %struct.tcp_pcb* %143, null, !dbg !1268
  br i1 %144, label %145, label %135, !dbg !1271, !llvm.loop !1282

; <label>:145:                                    ; preds = %141, %132
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), %struct.tcp_pcb* nonnull %0) #9, !dbg !1285
  %146 = load i32, i32* %7, align 8, !dbg !1291, !tbaa !451
  %147 = icmp eq i32 %146, 1, !dbg !1291
  br i1 %147, label %148, label %149, !dbg !1294

; <label>:148:                                    ; preds = %145
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #8, !dbg !1295
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1298
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1298
  unreachable, !dbg !1298

; <label>:149:                                    ; preds = %145
  %150 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1302
  tail call void @memp_free(i32 2, i8* %150) #8, !dbg !1303
  br label %159, !dbg !1304

; <label>:151:                                    ; preds = %9, %74
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #9, !dbg !1305
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1305, !tbaa !479
  %152 = load i32, i32* %7, align 8, !dbg !1309, !tbaa !451
  %153 = icmp eq i32 %152, 1, !dbg !1309
  br i1 %153, label %154, label %155, !dbg !1310

; <label>:154:                                    ; preds = %151
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1311
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1312
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1312
  unreachable, !dbg !1312

; <label>:155:                                    ; preds = %151
  %156 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1313
  tail call void @memp_free(i32 1, i8* %156) #8, !dbg !1314
  br label %159, !dbg !1315

; <label>:157:                                    ; preds = %9, %74
  %158 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %0) #9, !dbg !1316
  br label %159, !dbg !1317

; <label>:159:                                    ; preds = %103, %149, %155, %67, %72, %157
  %160 = phi i8 [ %158, %157 ], [ 0, %72 ], [ 0, %67 ], [ 0, %155 ], [ 0, %149 ], [ 0, %103 ], !dbg !1318
  ret i8 %160, !dbg !1319
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_shutdown(%struct.tcp_pcb*, i32, i32) local_unnamed_addr #0 !dbg !1320 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1330
  br i1 %4, label %5, label %6, !dbg !1333

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !1334
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1337
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1337
  unreachable, !dbg !1337

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1341
  %8 = load i32, i32* %7, align 8, !dbg !1341, !tbaa !451
  %9 = icmp eq i32 %8, 1, !dbg !1343
  br i1 %9, label %30, label %10, !dbg !1344

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %1, 0, !dbg !1345
  br i1 %11, label %25, label %12, !dbg !1347

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1348
  %14 = load i16, i16* %13, align 2, !dbg !1348, !tbaa !507
  %15 = or i16 %14, 16, !dbg !1348
  store i16 %15, i16* %13, align 2, !dbg !1348, !tbaa !507
  %16 = icmp eq i32 %2, 0, !dbg !1351
  br i1 %16, label %19, label %17, !dbg !1353

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #9, !dbg !1354
  br label %30, !dbg !1356

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1357
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !1357, !tbaa !531
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !1359
  br i1 %22, label %30, label %23, !dbg !1360

; <label>:23:                                     ; preds = %19
  %24 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %21) #8, !dbg !1361
  store %struct.pbuf* null, %struct.pbuf** %20, align 8, !dbg !1363, !tbaa !531
  br label %30, !dbg !1364

; <label>:25:                                     ; preds = %10
  %26 = icmp eq i32 %2, 0, !dbg !1365
  br i1 %26, label %30, label %27, !dbg !1367

; <label>:27:                                     ; preds = %25
  switch i32 %8, label %30 [
    i32 3, label %28
    i32 4, label %28
    i32 7, label %28
  ], !dbg !1368

; <label>:28:                                     ; preds = %27, %27, %27
  %29 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 0) #9, !dbg !1370
  br label %30, !dbg !1372

; <label>:30:                                     ; preds = %23, %19, %25, %27, %6, %28, %17
  %31 = phi i8 [ %18, %17 ], [ %29, %28 ], [ -11, %6 ], [ -11, %27 ], [ 0, %25 ], [ 0, %19 ], [ 0, %23 ], !dbg !1373
  ret i8 %31, !dbg !1374
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abandon(%struct.tcp_pcb*, i32) local_unnamed_addr #0 !dbg !1375 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1400
  br i1 %3, label %4, label %5, !dbg !1403

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1404
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1407
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1407
  unreachable, !dbg !1407

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1411
  %7 = load i32, i32* %6, align 8, !dbg !1411, !tbaa !451
  switch i32 %7, label %15 [
    i32 1, label %8
    i32 10, label %9
  ], !dbg !1414

; <label>:8:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1415
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1418
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1418
  unreachable, !dbg !1418

; <label>:9:                                      ; preds = %5
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_tw_pcbs, %struct.tcp_pcb* nonnull %0) #9, !dbg !1422
  %10 = load i32, i32* %6, align 8, !dbg !1426, !tbaa !451
  %11 = icmp eq i32 %10, 1, !dbg !1426
  br i1 %11, label %12, label %13, !dbg !1427

; <label>:12:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1428
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1429
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1429
  unreachable, !dbg !1429

; <label>:13:                                     ; preds = %9
  %14 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1430
  tail call void @memp_free(i32 1, i8* %14) #8, !dbg !1431
  br label %119, !dbg !1432

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1435
  %17 = load i32, i32* %16, align 8, !dbg !1435, !tbaa !959
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1437
  %19 = load i32, i32* %18, align 4, !dbg !1437, !tbaa !961
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !1439
  %21 = load void (i8*, i8)*, void (i8*, i8)** %20, align 8, !dbg !1439, !tbaa !917
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !1441
  %23 = load i8*, i8** %22, align 8, !dbg !1441, !tbaa !971
  %24 = icmp eq i32 %7, 0, !dbg !1443
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1444
  %26 = load i16, i16* %25, align 2, !dbg !1444, !tbaa !965
  br i1 %24, label %27, label %53, !dbg !1446

; <label>:27:                                     ; preds = %15
  %28 = icmp eq i16 %26, 0, !dbg !1447
  br i1 %28, label %54, label %29, !dbg !1448

; <label>:29:                                     ; preds = %27
  %30 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1449, !tbaa !495
  %31 = icmp eq %struct.tcp_pcb* %30, %0, !dbg !1449
  br i1 %31, label %32, label %36, !dbg !1450

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1451
  %34 = bitcast %struct.tcp_pcb** %33 to i64*, !dbg !1451
  %35 = load i64, i64* %34, align 8, !dbg !1451, !tbaa !527
  store i64 %35, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1451, !tbaa !495
  br label %51, !dbg !1451

; <label>:36:                                     ; preds = %29, %39
  %37 = phi %struct.tcp_pcb* [ %41, %39 ], [ %30, %29 ], !dbg !1453
  %38 = icmp eq %struct.tcp_pcb* %37, null, !dbg !1456
  br i1 %38, label %49, label %39, !dbg !1453

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %37, i64 0, i32 6, !dbg !1458
  %41 = load %struct.tcp_pcb*, %struct.tcp_pcb** %40, align 8, !dbg !1458, !tbaa !527
  %42 = icmp eq %struct.tcp_pcb* %41, %0, !dbg !1458
  br i1 %42, label %43, label %36, !dbg !1461, !llvm.loop !1462

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %37, i64 0, i32 6, !dbg !1458
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1463
  %46 = bitcast %struct.tcp_pcb** %45 to i64*, !dbg !1463
  %47 = load i64, i64* %46, align 8, !dbg !1463, !tbaa !527
  %48 = bitcast %struct.tcp_pcb** %44 to i64*, !dbg !1463
  store i64 %47, i64* %48, align 8, !dbg !1463, !tbaa !527
  br label %51, !dbg !1463

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1450
  br label %51, !dbg !1450

; <label>:51:                                     ; preds = %49, %43, %32
  %52 = phi %struct.tcp_pcb** [ %50, %49 ], [ %45, %43 ], [ %33, %32 ], !dbg !1450
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %52, align 8, !dbg !1450, !tbaa !527
  br label %54, !dbg !1465

; <label>:53:                                     ; preds = %15
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #9, !dbg !1466
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1466, !tbaa !479
  br label %54

; <label>:54:                                     ; preds = %27, %51, %53
  %55 = phi i16 [ 0, %51 ], [ 0, %27 ], [ %26, %53 ], !dbg !1444
  %56 = phi i32 [ 0, %51 ], [ 0, %27 ], [ %1, %53 ], !dbg !1444
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1468
  %58 = load %struct.tcp_seg*, %struct.tcp_seg** %57, align 8, !dbg !1468, !tbaa !651
  %59 = icmp eq %struct.tcp_seg* %58, null, !dbg !1470
  br i1 %59, label %72, label %60, !dbg !1471

; <label>:60:                                     ; preds = %54, %69
  %61 = phi %struct.tcp_seg* [ %63, %69 ], [ %58, %54 ]
  %62 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %61, i64 0, i32 0, !dbg !1475
  %63 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1475, !tbaa !874
  %64 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %61, i64 0, i32 1, !dbg !1479
  %65 = load %struct.pbuf*, %struct.pbuf** %64, align 8, !dbg !1479, !tbaa !886
  %66 = icmp eq %struct.pbuf* %65, null, !dbg !1480
  br i1 %66, label %69, label %67, !dbg !1481

; <label>:67:                                     ; preds = %60
  %68 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %65) #8, !dbg !1482
  br label %69, !dbg !1483

; <label>:69:                                     ; preds = %67, %60
  %70 = bitcast %struct.tcp_seg* %61 to i8*, !dbg !1484
  tail call void @memp_free(i32 3, i8* %70) #8, !dbg !1485
  %71 = icmp eq %struct.tcp_seg* %63, null, !dbg !1486
  br i1 %71, label %72, label %60, !dbg !1487, !llvm.loop !896

; <label>:72:                                     ; preds = %69, %54
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1488
  %74 = load %struct.tcp_seg*, %struct.tcp_seg** %73, align 8, !dbg !1488, !tbaa !663
  %75 = icmp eq %struct.tcp_seg* %74, null, !dbg !1490
  br i1 %75, label %88, label %76, !dbg !1491

; <label>:76:                                     ; preds = %72, %85
  %77 = phi %struct.tcp_seg* [ %79, %85 ], [ %74, %72 ]
  %78 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 0, !dbg !1495
  %79 = load %struct.tcp_seg*, %struct.tcp_seg** %78, align 8, !dbg !1495, !tbaa !874
  %80 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %77, i64 0, i32 1, !dbg !1499
  %81 = load %struct.pbuf*, %struct.pbuf** %80, align 8, !dbg !1499, !tbaa !886
  %82 = icmp eq %struct.pbuf* %81, null, !dbg !1500
  br i1 %82, label %85, label %83, !dbg !1501

; <label>:83:                                     ; preds = %76
  %84 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %81) #8, !dbg !1502
  br label %85, !dbg !1503

; <label>:85:                                     ; preds = %83, %76
  %86 = bitcast %struct.tcp_seg* %77 to i8*, !dbg !1504
  tail call void @memp_free(i32 3, i8* %86) #8, !dbg !1505
  %87 = icmp eq %struct.tcp_seg* %79, null, !dbg !1506
  br i1 %87, label %88, label %76, !dbg !1507, !llvm.loop !896

; <label>:88:                                     ; preds = %85, %72
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !1508
  %90 = load %struct.tcp_seg*, %struct.tcp_seg** %89, align 8, !dbg !1508, !tbaa !846
  %91 = icmp eq %struct.tcp_seg* %90, null, !dbg !1510
  br i1 %91, label %104, label %92, !dbg !1511

; <label>:92:                                     ; preds = %88, %101
  %93 = phi %struct.tcp_seg* [ %95, %101 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %93, i64 0, i32 0, !dbg !1515
  %95 = load %struct.tcp_seg*, %struct.tcp_seg** %94, align 8, !dbg !1515, !tbaa !874
  %96 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %93, i64 0, i32 1, !dbg !1519
  %97 = load %struct.pbuf*, %struct.pbuf** %96, align 8, !dbg !1519, !tbaa !886
  %98 = icmp eq %struct.pbuf* %97, null, !dbg !1520
  br i1 %98, label %101, label %99, !dbg !1521

; <label>:99:                                     ; preds = %92
  %100 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %97) #8, !dbg !1522
  br label %101, !dbg !1523

; <label>:101:                                    ; preds = %99, %92
  %102 = bitcast %struct.tcp_seg* %93 to i8*, !dbg !1524
  tail call void @memp_free(i32 3, i8* %102) #8, !dbg !1525
  %103 = icmp eq %struct.tcp_seg* %95, null, !dbg !1526
  br i1 %103, label %104, label %92, !dbg !1527, !llvm.loop !896

; <label>:104:                                    ; preds = %101, %88
  %105 = icmp eq i32 %56, 0, !dbg !1528
  br i1 %105, label %111, label %106, !dbg !1530

; <label>:106:                                    ; preds = %104
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1531
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1533
  %109 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1534
  %110 = load i16, i16* %109, align 8, !dbg !1534, !tbaa !967
  tail call void @tcp_rst(%struct.tcp_pcb* %0, i32 %17, i32 %19, %struct.ip_addr* %107, %struct.ip_addr* nonnull %108, i16 zeroext %55, i16 zeroext %110) #8, !dbg !1535
  br label %111, !dbg !1536

; <label>:111:                                    ; preds = %104, %106
  %112 = load i32, i32* %6, align 8, !dbg !1540, !tbaa !451
  %113 = icmp eq i32 %112, 1, !dbg !1540
  br i1 %113, label %114, label %115, !dbg !1541

; <label>:114:                                    ; preds = %111
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1542
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1543
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1543
  unreachable, !dbg !1543

; <label>:115:                                    ; preds = %111
  %116 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1544
  tail call void @memp_free(i32 1, i8* %116) #8, !dbg !1545
  %117 = icmp eq void (i8*, i8)* %21, null, !dbg !1546
  br i1 %117, label %119, label %118, !dbg !1549

; <label>:118:                                    ; preds = %115
  tail call void %21(i8* %23, i8 signext -13) #8, !dbg !1546
  br label %119, !dbg !1546

; <label>:119:                                    ; preds = %118, %115, %13
  ret void, !dbg !1550
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_remove(%struct.tcp_pcb**, %struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1551 {
  %3 = icmp eq %struct.tcp_pcb* %1, null, !dbg !1563
  br i1 %3, label %4, label %5, !dbg !1566

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !1567
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1570
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1570
  unreachable, !dbg !1570

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.tcp_pcb** %0, null, !dbg !1574
  br i1 %6, label %7, label %8, !dbg !1577

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !1578
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1581
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1581
  unreachable, !dbg !1581

; <label>:8:                                      ; preds = %5
  %9 = load %struct.tcp_pcb*, %struct.tcp_pcb** %0, align 8, !dbg !1585, !tbaa !495
  %10 = icmp eq %struct.tcp_pcb* %9, %1, !dbg !1585
  br i1 %10, label %11, label %16, !dbg !1586

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1587
  %13 = bitcast %struct.tcp_pcb** %12 to i64*, !dbg !1587
  %14 = load i64, i64* %13, align 8, !dbg !1587, !tbaa !527
  %15 = bitcast %struct.tcp_pcb** %0 to i64*, !dbg !1587
  store i64 %14, i64* %15, align 8, !dbg !1587, !tbaa !495
  br label %31, !dbg !1587

; <label>:16:                                     ; preds = %8, %19
  %17 = phi %struct.tcp_pcb* [ %21, %19 ], [ %9, %8 ], !dbg !1589
  %18 = icmp eq %struct.tcp_pcb* %17, null, !dbg !1592
  br i1 %18, label %29, label %19, !dbg !1589

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 6, !dbg !1594
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** %20, align 8, !dbg !1594, !tbaa !527
  %22 = icmp eq %struct.tcp_pcb* %21, %1, !dbg !1594
  br i1 %22, label %23, label %16, !dbg !1597, !llvm.loop !1598

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 6, !dbg !1594
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1599
  %26 = bitcast %struct.tcp_pcb** %25 to i64*, !dbg !1599
  %27 = load i64, i64* %26, align 8, !dbg !1599, !tbaa !527
  %28 = bitcast %struct.tcp_pcb** %24 to i64*, !dbg !1599
  store i64 %27, i64* %28, align 8, !dbg !1599, !tbaa !527
  br label %31, !dbg !1599

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1586
  br label %31, !dbg !1586

; <label>:31:                                     ; preds = %29, %23, %11
  %32 = phi %struct.tcp_pcb** [ %30, %29 ], [ %25, %23 ], [ %12, %11 ], !dbg !1586
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %32, align 8, !dbg !1586, !tbaa !527
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %1) #9, !dbg !1601
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !1602
  %34 = load i32, i32* %33, align 8, !dbg !1602, !tbaa !451
  switch i32 %34, label %35 [
    i32 10, label %44
    i32 1, label %44
  ], !dbg !1604

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !1605
  %37 = load i16, i16* %36, align 2, !dbg !1605, !tbaa !507
  %38 = and i16 %37, 1, !dbg !1606
  %39 = icmp eq i16 %38, 0, !dbg !1606
  br i1 %39, label %47, label %40, !dbg !1607

; <label>:40:                                     ; preds = %35
  %41 = or i16 %37, 2, !dbg !1608
  store i16 %41, i16* %36, align 2, !dbg !1608, !tbaa !507
  %42 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %1) #8, !dbg !1611
  %43 = load i32, i32* %33, align 8, !dbg !1612, !tbaa !451
  br label %44, !dbg !1614

; <label>:44:                                     ; preds = %40, %31, %31
  %45 = phi i32 [ %34, %31 ], [ %34, %31 ], [ %43, %40 ], !dbg !1612
  %46 = icmp eq i32 %45, 1, !dbg !1615
  br i1 %46, label %62, label %47, !dbg !1616

; <label>:47:                                     ; preds = %35, %44
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 44, !dbg !1617
  %49 = load %struct.tcp_seg*, %struct.tcp_seg** %48, align 8, !dbg !1617, !tbaa !663
  %50 = icmp eq %struct.tcp_seg* %49, null, !dbg !1617
  br i1 %50, label %52, label %51, !dbg !1621

; <label>:51:                                     ; preds = %47
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !1622
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1625
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1625
  unreachable, !dbg !1625

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 45, !dbg !1629
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !1629, !tbaa !651
  %55 = icmp eq %struct.tcp_seg* %54, null, !dbg !1629
  br i1 %55, label %57, label %56, !dbg !1632

; <label>:56:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !1633
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1636
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1636
  unreachable, !dbg !1636

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 46, !dbg !1640
  %59 = load %struct.tcp_seg*, %struct.tcp_seg** %58, align 8, !dbg !1640, !tbaa !846
  %60 = icmp eq %struct.tcp_seg* %59, null, !dbg !1640
  br i1 %60, label %62, label %61, !dbg !1643

; <label>:61:                                     ; preds = %57
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !1644
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1647
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1647
  unreachable, !dbg !1647

; <label>:62:                                     ; preds = %44, %57
  store i32 0, i32* %33, align 8, !dbg !1651, !tbaa !451
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 10, !dbg !1652
  store i16 0, i16* %63, align 2, !dbg !1653, !tbaa !965
  ret void, !dbg !1654
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !858 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !1656
  br i1 %2, label %15, label %3, !dbg !897

; <label>:3:                                      ; preds = %1, %12
  %4 = phi %struct.tcp_seg* [ %6, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 0, !dbg !1657
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1657, !tbaa !874
  %7 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 1, !dbg !1661
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1661, !tbaa !886
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1662
  br i1 %9, label %12, label %10, !dbg !1663

; <label>:10:                                     ; preds = %3
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %8) #8, !dbg !1664
  br label %12, !dbg !1665

; <label>:12:                                     ; preds = %3, %10
  %13 = bitcast %struct.tcp_seg* %4 to i8*, !dbg !1666
  tail call void @memp_free(i32 3, i8* %13) #8, !dbg !1667
  %14 = icmp eq %struct.tcp_seg* %6, null, !dbg !1656
  br i1 %14, label %15, label %3, !dbg !897, !llvm.loop !896

; <label>:15:                                     ; preds = %12, %1
  ret void, !dbg !1668
}

; Function Attrs: noredzone
declare dso_local void @tcp_rst(%struct.tcp_pcb*, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abort(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1669 {
  tail call void @tcp_abandon(%struct.tcp_pcb* %0, i32 1) #9, !dbg !1673
  ret void, !dbg !1674
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_bind(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1675 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1762
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1762
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1763
  %7 = select i1 %6, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1765
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1766
  br i1 %8, label %9, label %10, !dbg !1769

; <label>:9:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !1770
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1773
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1773
  unreachable, !dbg !1773

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1777
  %12 = load i32, i32* %11, align 8, !dbg !1777, !tbaa !451
  %13 = icmp eq i32 %12, 0, !dbg !1777
  br i1 %13, label %15, label %14, !dbg !1780

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !1781
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1784
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1784
  unreachable, !dbg !1784

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !1788
  %17 = load i8, i8* %16, align 1, !dbg !1788, !tbaa !806
  %18 = and i8 %17, 4, !dbg !1788
  %19 = icmp eq i8 %18, 0, !dbg !1788
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1790
  %21 = load i8, i8* %20, align 4, !dbg !1790, !tbaa !1791
  %22 = icmp eq i8 %21, 6, !dbg !1790
  br i1 %22, label %23, label %61, !dbg !1792

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1793
  %25 = load i8, i8* %24, align 4, !dbg !1793, !tbaa !479
  %26 = icmp eq i8 %25, 0, !dbg !1793
  br i1 %26, label %27, label %61, !dbg !1793

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1793
  %29 = load i32, i32* %28, align 4, !dbg !1793, !tbaa !479
  %30 = and i32 %29, 49407, !dbg !1793
  %31 = icmp eq i32 %30, 33022, !dbg !1793
  br i1 %31, label %32, label %61, !dbg !1794

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1795
  store i8 6, i8* %33, align 4, !dbg !1795, !tbaa !1791
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1798
  store i32 %29, i32* %34, align 4, !dbg !1798, !tbaa !479
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1798
  %36 = load i32, i32* %35, align 4, !dbg !1798, !tbaa !479
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1798
  store i32 %36, i32* %37, align 4, !dbg !1798, !tbaa !479
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1798
  %39 = load i32, i32* %38, align 4, !dbg !1798, !tbaa !479
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1798
  store i32 %39, i32* %40, align 4, !dbg !1798, !tbaa !479
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1798
  %42 = load i32, i32* %41, align 4, !dbg !1798, !tbaa !479
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1798
  store i32 %42, i32* %43, align 4, !dbg !1798, !tbaa !479
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1798
  store i8 0, i8* %44, align 4, !dbg !1798, !tbaa !479
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1802
  %46 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %45, %struct.ip6_addr* nonnull %45) #8, !dbg !1802
  %47 = icmp eq %struct.netif* %46, null, !dbg !1803
  br i1 %47, label %61, label %48, !dbg !1802

; <label>:48:                                     ; preds = %32
  %49 = load i32, i32* %34, align 4, !dbg !1805, !tbaa !479
  %50 = and i32 %49, 49407, !dbg !1805
  %51 = icmp eq i32 %50, 33022, !dbg !1805
  br i1 %51, label %55, label %52, !dbg !1805

; <label>:52:                                     ; preds = %48
  %53 = trunc i32 %49 to i16, !dbg !1805
  %54 = and i16 %53, -28673, !dbg !1805
  switch i16 %54, label %59 [
    i16 511, label %55
    i16 767, label %55
  ], !dbg !1805

; <label>:55:                                     ; preds = %52, %52, %48
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %46, i64 0, i32 23, !dbg !1805
  %57 = load i8, i8* %56, align 8, !dbg !1805, !tbaa !1807
  %58 = add i8 %57, 1, !dbg !1805
  br label %59, !dbg !1805

; <label>:59:                                     ; preds = %52, %55
  %60 = phi i8 [ %58, %55 ], [ 0, %52 ], !dbg !1805
  store i8 %60, i8* %44, align 4, !dbg !1805, !tbaa !479
  br label %61, !dbg !1805

; <label>:61:                                     ; preds = %59, %32, %23, %27, %15
  %62 = phi %struct.ip_addr* [ %7, %23 ], [ %7, %27 ], [ %7, %15 ], [ %4, %32 ], [ %4, %59 ], !dbg !1809
  %63 = icmp eq i16 %2, 0, !dbg !1811
  br i1 %63, label %72, label %64, !dbg !1813

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 1
  %66 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 0
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1
  %68 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2
  %69 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3
  %70 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 1
  %71 = select i1 %19, i64 4, i64 3, !dbg !1815
  br label %136, !dbg !1815

; <label>:72:                                     ; preds = %61
  %73 = load i16, i16* @tcp_port, align 2, !dbg !1828
  %74 = load %struct.tcp_pcb*, %struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), align 8, !dbg !1831, !tbaa !495
  %75 = icmp eq %struct.tcp_pcb* %74, null
  %76 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8
  %77 = icmp eq %struct.tcp_pcb* %76, null
  %78 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8
  %79 = icmp eq %struct.tcp_pcb* %78, null
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8
  %81 = icmp eq %struct.tcp_pcb* %80, null
  br label %82, !dbg !1837

; <label>:82:                                     ; preds = %97, %72
  %83 = phi i16 [ %73, %72 ], [ %87, %97 ], !dbg !1825
  %84 = phi i16 [ 0, %72 ], [ %98, %97 ], !dbg !1838
  %85 = add i16 %83, 1, !dbg !1842
  %86 = icmp eq i16 %85, -1, !dbg !1843
  %87 = select i1 %86, i16 -16384, i16 %85, !dbg !1844
  br i1 %75, label %101, label %92, !dbg !1847

; <label>:88:                                     ; preds = %92
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 6, !dbg !1848
  %90 = load %struct.tcp_pcb*, %struct.tcp_pcb** %89, align 8, !dbg !1831, !tbaa !495
  %91 = icmp eq %struct.tcp_pcb* %90, null, !dbg !1849
  br i1 %91, label %101, label %92, !dbg !1847, !llvm.loop !1850

; <label>:92:                                     ; preds = %82, %88
  %93 = phi %struct.tcp_pcb* [ %90, %88 ], [ %74, %82 ]
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 10, !dbg !1853
  %95 = load i16, i16* %94, align 2, !dbg !1853, !tbaa !965
  %96 = icmp eq i16 %95, %87, !dbg !1854
  br i1 %96, label %97, label %88, !dbg !1855

; <label>:97:                                     ; preds = %92, %102, %112, %122
  %98 = add nuw nsw i16 %84, 1, !dbg !1856
  %99 = icmp ugt i16 %84, 16382, !dbg !1857
  br i1 %99, label %100, label %82, !dbg !1859

; <label>:100:                                    ; preds = %97
  store i16 %87, i16* @tcp_port, align 2, !dbg !1828
  br label %285, !dbg !1860

; <label>:101:                                    ; preds = %88, %82
  br i1 %77, label %111, label %102, !dbg !1847

; <label>:102:                                    ; preds = %101, %107
  %103 = phi %struct.tcp_pcb* [ %109, %107 ], [ %76, %101 ]
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %103, i64 0, i32 10, !dbg !1853
  %105 = load i16, i16* %104, align 2, !dbg !1853, !tbaa !965
  %106 = icmp eq i16 %105, %87, !dbg !1854
  br i1 %106, label %97, label %107, !dbg !1855

; <label>:107:                                    ; preds = %102
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %103, i64 0, i32 6, !dbg !1848
  %109 = load %struct.tcp_pcb*, %struct.tcp_pcb** %108, align 8, !dbg !1831, !tbaa !495
  %110 = icmp eq %struct.tcp_pcb* %109, null, !dbg !1849
  br i1 %110, label %111, label %102, !dbg !1847, !llvm.loop !1850

; <label>:111:                                    ; preds = %107, %101
  br i1 %79, label %121, label %112, !dbg !1847

; <label>:112:                                    ; preds = %111, %117
  %113 = phi %struct.tcp_pcb* [ %119, %117 ], [ %78, %111 ]
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %113, i64 0, i32 10, !dbg !1853
  %115 = load i16, i16* %114, align 2, !dbg !1853, !tbaa !965
  %116 = icmp eq i16 %115, %87, !dbg !1854
  br i1 %116, label %97, label %117, !dbg !1855

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %113, i64 0, i32 6, !dbg !1848
  %119 = load %struct.tcp_pcb*, %struct.tcp_pcb** %118, align 8, !dbg !1831, !tbaa !495
  %120 = icmp eq %struct.tcp_pcb* %119, null, !dbg !1849
  br i1 %120, label %121, label %112, !dbg !1847, !llvm.loop !1850

; <label>:121:                                    ; preds = %117, %111
  br i1 %81, label %131, label %122, !dbg !1847

; <label>:122:                                    ; preds = %121, %127
  %123 = phi %struct.tcp_pcb* [ %129, %127 ], [ %80, %121 ]
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 10, !dbg !1853
  %125 = load i16, i16* %124, align 2, !dbg !1853, !tbaa !965
  %126 = icmp eq i16 %125, %87, !dbg !1854
  br i1 %126, label %97, label %127, !dbg !1855

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 6, !dbg !1848
  %129 = load %struct.tcp_pcb*, %struct.tcp_pcb** %128, align 8, !dbg !1831, !tbaa !495
  %130 = icmp eq %struct.tcp_pcb* %129, null, !dbg !1849
  br i1 %130, label %131, label %122, !dbg !1847, !llvm.loop !1850

; <label>:131:                                    ; preds = %121, %127
  store i16 %87, i16* @tcp_port, align 2, !dbg !1828
  %132 = icmp eq i16 %87, 0, !dbg !1861
  br i1 %132, label %285, label %133, !dbg !1860

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 1, !dbg !1863
  %135 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1863
  br label %229, !dbg !1860

; <label>:136:                                    ; preds = %64, %226
  %137 = phi i64 [ 0, %64 ], [ %227, %226 ]
  %138 = getelementptr inbounds [4 x %struct.tcp_pcb**], [4 x %struct.tcp_pcb**]* @tcp_pcb_lists, i64 0, i64 %137, !dbg !1865
  %139 = load %struct.tcp_pcb**, %struct.tcp_pcb*** %138, align 8, !dbg !1865, !tbaa !495
  %140 = load %struct.tcp_pcb*, %struct.tcp_pcb** %139, align 8, !dbg !1870, !tbaa !495
  %141 = icmp eq %struct.tcp_pcb* %140, null, !dbg !1872
  br i1 %141, label %226, label %142, !dbg !1873

; <label>:142:                                    ; preds = %136, %222
  %143 = phi %struct.tcp_pcb* [ %224, %222 ], [ %140, %136 ]
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 10, !dbg !1874
  %145 = load i16, i16* %144, align 2, !dbg !1874, !tbaa !965
  %146 = icmp eq i16 %145, %2, !dbg !1877
  br i1 %146, label %147, label %222, !dbg !1878

; <label>:147:                                    ; preds = %142
  %148 = load i8, i8* %16, align 1, !dbg !1879, !tbaa !806
  %149 = and i8 %148, 4, !dbg !1879
  %150 = icmp eq i8 %149, 0, !dbg !1879
  br i1 %150, label %156, label %151, !dbg !1882

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 3, !dbg !1883
  %153 = load i8, i8* %152, align 1, !dbg !1883, !tbaa !806
  %154 = and i8 %153, 4, !dbg !1883
  %155 = icmp eq i8 %154, 0, !dbg !1883
  br i1 %155, label %156, label %222, !dbg !1884

; <label>:156:                                    ; preds = %147, %151
  %157 = load i8, i8* %65, align 4, !dbg !1885, !tbaa !1791
  %158 = icmp eq i8 %157, 6, !dbg !1885
  %159 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 1, !dbg !1888
  %160 = load i8, i8* %159, align 4, !dbg !1888, !tbaa !1889
  %161 = icmp eq i8 %160, 6, !dbg !1888
  %162 = xor i1 %158, %161, !dbg !1890
  br i1 %162, label %222, label %163, !dbg !1891

; <label>:163:                                    ; preds = %156
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1892
  %165 = load i32, i32* %164, align 8, !dbg !1892, !tbaa !479
  %166 = icmp eq i32 %165, 0, !dbg !1892
  br i1 %161, label %167, label %180, !dbg !1893

; <label>:167:                                    ; preds = %163
  br i1 %166, label %168, label %181, !dbg !1892

; <label>:168:                                    ; preds = %167
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1892
  %170 = load i32, i32* %169, align 4, !dbg !1892, !tbaa !479
  %171 = icmp eq i32 %170, 0, !dbg !1892
  br i1 %171, label %172, label %181, !dbg !1892

; <label>:172:                                    ; preds = %168
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1892
  %174 = load i32, i32* %173, align 8, !dbg !1892, !tbaa !479
  %175 = icmp eq i32 %174, 0, !dbg !1892
  br i1 %175, label %176, label %181, !dbg !1892

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1892
  %178 = load i32, i32* %177, align 4, !dbg !1892, !tbaa !479
  %179 = icmp eq i32 %178, 0, !dbg !1892
  br i1 %179, label %285, label %181, !dbg !1892

; <label>:180:                                    ; preds = %163
  br i1 %166, label %285, label %181, !dbg !1893

; <label>:181:                                    ; preds = %167, %168, %172, %176, %180
  %182 = phi i1 [ true, %167 ], [ true, %168 ], [ true, %172 ], [ false, %180 ], [ true, %176 ]
  %183 = load i32, i32* %66, align 4, !dbg !1894, !tbaa !479
  %184 = icmp eq i32 %183, 0, !dbg !1894
  br i1 %158, label %185, label %195, !dbg !1895

; <label>:185:                                    ; preds = %181
  br i1 %184, label %186, label %196, !dbg !1894

; <label>:186:                                    ; preds = %185
  %187 = load i32, i32* %67, align 4, !dbg !1894, !tbaa !479
  %188 = icmp eq i32 %187, 0, !dbg !1894
  br i1 %188, label %189, label %196, !dbg !1894

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %68, align 4, !dbg !1894, !tbaa !479
  %191 = icmp eq i32 %190, 0, !dbg !1894
  br i1 %191, label %192, label %196, !dbg !1894

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %69, align 4, !dbg !1894, !tbaa !479
  %194 = icmp eq i32 %193, 0, !dbg !1894
  br i1 %194, label %285, label %196, !dbg !1894

; <label>:195:                                    ; preds = %181
  br i1 %184, label %285, label %196, !dbg !1895

; <label>:196:                                    ; preds = %195, %192, %189, %186, %185
  %197 = icmp eq i8 %160, %157, !dbg !1896
  br i1 %197, label %198, label %222, !dbg !1897

; <label>:198:                                    ; preds = %196
  %199 = icmp eq i32 %165, %183, !dbg !1896
  br i1 %182, label %200, label %221, !dbg !1897

; <label>:200:                                    ; preds = %198
  br i1 %199, label %201, label %222, !dbg !1896

; <label>:201:                                    ; preds = %200
  %202 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1896
  %203 = load i32, i32* %202, align 4, !dbg !1896, !tbaa !479
  %204 = load i32, i32* %67, align 4, !dbg !1896, !tbaa !479
  %205 = icmp eq i32 %203, %204, !dbg !1896
  br i1 %205, label %206, label %222, !dbg !1896

; <label>:206:                                    ; preds = %201
  %207 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1896
  %208 = load i32, i32* %207, align 8, !dbg !1896, !tbaa !479
  %209 = load i32, i32* %68, align 4, !dbg !1896, !tbaa !479
  %210 = icmp eq i32 %208, %209, !dbg !1896
  br i1 %210, label %211, label %222, !dbg !1896

; <label>:211:                                    ; preds = %206
  %212 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1896
  %213 = load i32, i32* %212, align 4, !dbg !1896, !tbaa !479
  %214 = load i32, i32* %69, align 4, !dbg !1896, !tbaa !479
  %215 = icmp eq i32 %213, %214, !dbg !1896
  br i1 %215, label %216, label %222, !dbg !1896

; <label>:216:                                    ; preds = %211
  %217 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1896
  %218 = load i8, i8* %217, align 8, !dbg !1896, !tbaa !479
  %219 = load i8, i8* %70, align 4, !dbg !1896, !tbaa !479
  %220 = icmp eq i8 %218, %219, !dbg !1896
  br i1 %220, label %285, label %222, !dbg !1896

; <label>:221:                                    ; preds = %198
  br i1 %199, label %285, label %222, !dbg !1897

; <label>:222:                                    ; preds = %151, %196, %156, %142, %200, %201, %206, %211, %216, %221
  %223 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 6, !dbg !1898
  %224 = load %struct.tcp_pcb*, %struct.tcp_pcb** %223, align 8, !dbg !1870, !tbaa !495
  %225 = icmp eq %struct.tcp_pcb* %224, null, !dbg !1872
  br i1 %225, label %226, label %142, !dbg !1873, !llvm.loop !1899

; <label>:226:                                    ; preds = %222, %136
  %227 = add nuw nsw i64 %137, 1, !dbg !1901
  %228 = icmp ult i64 %227, %71, !dbg !1902
  br i1 %228, label %136, label %229, !dbg !1815, !llvm.loop !1903

; <label>:229:                                    ; preds = %226, %133
  %230 = phi i32* [ %135, %133 ], [ %66, %226 ], !dbg !1863
  %231 = phi i8* [ %134, %133 ], [ %65, %226 ], !dbg !1863
  %232 = phi i16 [ %87, %133 ], [ %2, %226 ]
  %233 = load i8, i8* %231, align 4, !dbg !1863, !tbaa !1791
  %234 = icmp eq i8 %233, 6, !dbg !1863
  %235 = load i32, i32* %230, align 4, !dbg !1863, !tbaa !479
  %236 = icmp eq i32 %235, 0, !dbg !1863
  br i1 %234, label %237, label %250, !dbg !1905

; <label>:237:                                    ; preds = %229
  br i1 %236, label %238, label %255, !dbg !1863

; <label>:238:                                    ; preds = %237
  %239 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1863
  %240 = load i32, i32* %239, align 4, !dbg !1863, !tbaa !479
  %241 = icmp eq i32 %240, 0, !dbg !1863
  br i1 %241, label %242, label %255, !dbg !1863

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1863
  %244 = load i32, i32* %243, align 4, !dbg !1863, !tbaa !479
  %245 = icmp eq i32 %244, 0, !dbg !1863
  br i1 %245, label %246, label %255, !dbg !1863

; <label>:246:                                    ; preds = %242
  %247 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1863
  %248 = load i32, i32* %247, align 4, !dbg !1863, !tbaa !479
  %249 = icmp eq i32 %248, 0, !dbg !1863
  br i1 %249, label %251, label %255, !dbg !1863

; <label>:250:                                    ; preds = %229
  br i1 %236, label %251, label %255, !dbg !1905

; <label>:251:                                    ; preds = %250, %246
  %252 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1906
  %253 = load i8, i8* %252, align 4, !dbg !1906, !tbaa !1889
  %254 = icmp eq i8 %233, %253, !dbg !1907
  br i1 %254, label %280, label %255, !dbg !1908

; <label>:255:                                    ; preds = %251, %250, %246, %242, %238, %237
  %256 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1909
  store i8 %233, i8* %256, align 4, !dbg !1909, !tbaa !1889
  %257 = load i8, i8* %231, align 4, !dbg !1916, !tbaa !1791
  %258 = icmp eq i8 %257, 6, !dbg !1916
  %259 = load i32, i32* %230, align 4, !dbg !1918, !tbaa !479
  %260 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1918
  store i32 %259, i32* %260, align 8, !dbg !1918, !tbaa !479
  br i1 %258, label %261, label %273, !dbg !1921

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1918
  %263 = load i32, i32* %262, align 4, !dbg !1918, !tbaa !479
  %264 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1918
  store i32 %263, i32* %264, align 4, !dbg !1918, !tbaa !479
  %265 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1918
  %266 = load i32, i32* %265, align 4, !dbg !1918, !tbaa !479
  %267 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1918
  store i32 %266, i32* %267, align 8, !dbg !1918, !tbaa !479
  %268 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1918
  %269 = load i32, i32* %268, align 4, !dbg !1918, !tbaa !479
  %270 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1918
  store i32 %269, i32* %270, align 4, !dbg !1918, !tbaa !479
  %271 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 1, !dbg !1918
  %272 = load i8, i8* %271, align 4, !dbg !1918, !tbaa !479
  br label %277, !dbg !1922

; <label>:273:                                    ; preds = %255
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1923
  store i32 0, i32* %274, align 4, !dbg !1923, !tbaa !479
  %275 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1923
  store i32 0, i32* %275, align 8, !dbg !1923, !tbaa !479
  %276 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1923
  store i32 0, i32* %276, align 4, !dbg !1923, !tbaa !479
  br label %277

; <label>:277:                                    ; preds = %273, %261
  %278 = phi i8 [ %272, %261 ], [ 0, %273 ]
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1918
  store i8 %278, i8* %279, align 8, !dbg !1918, !tbaa !479
  br label %280, !dbg !1926

; <label>:280:                                    ; preds = %277, %251
  %281 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1926
  store i16 %232, i16* %281, align 2, !dbg !1927, !tbaa !965
  %282 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1928, !tbaa !495
  %283 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1928
  %284 = bitcast %struct.tcp_pcb** %283 to i64*, !dbg !1928
  store i64 %282, i64* %284, align 8, !dbg !1928, !tbaa !527
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1928, !tbaa !495
  call void @tcp_timer_needed() #8, !dbg !1928
  br label %285, !dbg !1930

; <label>:285:                                    ; preds = %176, %180, %192, %195, %216, %221, %100, %131, %280
  %286 = phi i8 [ 0, %280 ], [ -2, %131 ], [ -2, %100 ], [ -8, %221 ], [ -8, %216 ], [ -8, %195 ], [ -8, %192 ], [ -8, %180 ], [ -8, %176 ], !dbg !1931
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !1933
  ret i8 %286, !dbg !1933
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @tcp_timer_needed() local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_bind_netif(%struct.tcp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !1934 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !1944
  br i1 %3, label %8, label %4, !dbg !1946

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1947
  %6 = load i8, i8* %5, align 8, !dbg !1947, !tbaa !1807
  %7 = add i8 %6, 1, !dbg !1947
  br label %8, !dbg !1949

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !1950
  store i8 %9, i8* %10, align 8, !dbg !1952
  ret void, !dbg !1953
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !1954 {
  %3 = tail call %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb* %0, i8 zeroext undef, i8* null) #9, !dbg !1962
  ret %struct.tcp_pcb* %3, !dbg !1963
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb*, i8 zeroext, i8*) local_unnamed_addr #0 !dbg !1964 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1984
  br i1 %4, label %5, label %6, !dbg !1987

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !1988
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1991
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1991
  unreachable, !dbg !1991

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1995
  %8 = load i32, i32* %7, align 8, !dbg !1995, !tbaa !451
  %9 = icmp eq i32 %8, 0, !dbg !1995
  br i1 %9, label %11, label %10, !dbg !1998

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !1999
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2002
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2002
  unreachable, !dbg !2002

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2006
  %13 = load i8, i8* %12, align 1, !dbg !2006, !tbaa !806
  %14 = and i8 %13, 4, !dbg !2006
  %15 = icmp eq i8 %14, 0, !dbg !2006
  br i1 %15, label %70, label %16, !dbg !2008

; <label>:16:                                     ; preds = %11
  %17 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !2009, !tbaa !479
  %18 = icmp eq %struct.tcp_pcb_listen* %17, null, !dbg !2013
  br i1 %18, label %70, label %19, !dbg !2014

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10
  %21 = load i16, i16* %20, align 2, !tbaa !965
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %27 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  br label %28, !dbg !2014

; <label>:28:                                     ; preds = %19, %66
  %29 = phi %struct.tcp_pcb_listen* [ %17, %19 ], [ %68, %66 ]
  %30 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 10, !dbg !2015
  %31 = load i16, i16* %30, align 2, !dbg !2015, !tbaa !2018
  %32 = icmp eq i16 %31, %21, !dbg !2020
  br i1 %32, label %33, label %66, !dbg !2021

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 1, !dbg !2022
  %35 = load i8, i8* %34, align 4, !dbg !2022, !tbaa !2023
  %36 = load i8, i8* %22, align 4, !dbg !2022, !tbaa !1889
  %37 = icmp eq i8 %35, %36, !dbg !2022
  br i1 %37, label %38, label %66, !dbg !2024

; <label>:38:                                     ; preds = %33
  %39 = icmp eq i8 %35, 6, !dbg !2022
  %40 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2022
  %41 = load i32, i32* %40, align 8, !dbg !2022, !tbaa !479
  %42 = load i32, i32* %23, align 8, !dbg !2022, !tbaa !479
  %43 = icmp eq i32 %41, %42, !dbg !2022
  br i1 %39, label %44, label %65, !dbg !2024

; <label>:44:                                     ; preds = %38
  br i1 %43, label %45, label %66, !dbg !2022

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2022
  %47 = load i32, i32* %46, align 4, !dbg !2022, !tbaa !479
  %48 = load i32, i32* %24, align 4, !dbg !2022, !tbaa !479
  %49 = icmp eq i32 %47, %48, !dbg !2022
  br i1 %49, label %50, label %66, !dbg !2022

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2022
  %52 = load i32, i32* %51, align 8, !dbg !2022, !tbaa !479
  %53 = load i32, i32* %25, align 8, !dbg !2022, !tbaa !479
  %54 = icmp eq i32 %52, %53, !dbg !2022
  br i1 %54, label %55, label %66, !dbg !2022

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2022
  %57 = load i32, i32* %56, align 4, !dbg !2022, !tbaa !479
  %58 = load i32, i32* %26, align 4, !dbg !2022, !tbaa !479
  %59 = icmp eq i32 %57, %58, !dbg !2022
  br i1 %59, label %60, label %66, !dbg !2022

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2022
  %62 = load i8, i8* %61, align 8, !dbg !2022, !tbaa !479
  %63 = load i8, i8* %27, align 8, !dbg !2022, !tbaa !479
  %64 = icmp eq i8 %62, %63, !dbg !2022
  br i1 %64, label %168, label %66, !dbg !2022

; <label>:65:                                     ; preds = %38
  br i1 %43, label %168, label %66, !dbg !2024

; <label>:66:                                     ; preds = %33, %28, %44, %45, %50, %55, %60, %65
  %67 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 6, !dbg !2025
  %68 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %67, align 8, !dbg !2009, !tbaa !479
  %69 = icmp eq %struct.tcp_pcb_listen* %68, null, !dbg !2013
  br i1 %69, label %70, label %28, !dbg !2014, !llvm.loop !2026

; <label>:70:                                     ; preds = %66, %16, %11
  %71 = tail call i8* @memp_malloc(i32 2) #8, !dbg !2028
  %72 = bitcast i8* %71 to %struct.tcp_pcb_listen*, !dbg !2029
  %73 = icmp eq i8* %71, null, !dbg !2030
  br i1 %73, label %168, label %74, !dbg !2032

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !2033
  %76 = bitcast i8** %75 to i64*, !dbg !2033
  %77 = load i64, i64* %76, align 8, !dbg !2033, !tbaa !971
  %78 = getelementptr inbounds i8, i8* %71, i64 64, !dbg !2034
  %79 = bitcast i8* %78 to i64*, !dbg !2035
  store i64 %77, i64* %79, align 8, !dbg !2035, !tbaa !2036
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2037
  %81 = load i16, i16* %80, align 2, !dbg !2037, !tbaa !965
  %82 = getelementptr inbounds i8, i8* %71, i64 78, !dbg !2038
  %83 = bitcast i8* %82 to i16*, !dbg !2038
  store i16 %81, i16* %83, align 2, !dbg !2039, !tbaa !2018
  %84 = getelementptr inbounds i8, i8* %71, i64 72, !dbg !2040
  %85 = bitcast i8* %84 to i32*, !dbg !2040
  store i32 1, i32* %85, align 8, !dbg !2041, !tbaa !2042
  %86 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !2043
  %87 = load i8, i8* %86, align 4, !dbg !2043, !tbaa !2044
  %88 = getelementptr inbounds i8, i8* %71, i64 76, !dbg !2045
  store i8 %87, i8* %88, align 4, !dbg !2046, !tbaa !2047
  %89 = load i8, i8* %12, align 1, !dbg !2048, !tbaa !806
  %90 = getelementptr inbounds i8, i8* %71, i64 49, !dbg !2049
  store i8 %89, i8* %90, align 1, !dbg !2050, !tbaa !2051
  %91 = getelementptr inbounds i8, i8* %71, i64 48, !dbg !2052
  store i8 0, i8* %91, align 8, !dbg !2053, !tbaa !2054
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2055
  %93 = load i8, i8* %92, align 1, !dbg !2055, !tbaa !2056
  %94 = getelementptr inbounds i8, i8* %71, i64 51, !dbg !2057
  store i8 %93, i8* %94, align 1, !dbg !2058, !tbaa !2059
  %95 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2060
  %96 = load i8, i8* %95, align 2, !dbg !2060, !tbaa !2061
  %97 = getelementptr inbounds i8, i8* %71, i64 50, !dbg !2062
  store i8 %96, i8* %97, align 2, !dbg !2063, !tbaa !2064
  %98 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2065
  %99 = load i8, i8* %98, align 4, !dbg !2065, !tbaa !1889
  %100 = getelementptr inbounds i8, i8* %71, i64 44, !dbg !2065
  store i8 %99, i8* %100, align 4, !dbg !2065, !tbaa !2067
  %101 = getelementptr inbounds i8, i8* %71, i64 20, !dbg !2068
  store i8 %99, i8* %101, align 4, !dbg !2068, !tbaa !2023
  %102 = icmp eq i8 %99, 6, !dbg !2071
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2073
  %104 = load i32, i32* %103, align 8, !dbg !2073, !tbaa !479
  %105 = bitcast i8* %71 to i32*, !dbg !2073
  store i32 %104, i32* %105, align 8, !dbg !2073, !tbaa !479
  br i1 %102, label %106, label %121, !dbg !2076

; <label>:106:                                    ; preds = %74
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2073
  %108 = load i32, i32* %107, align 4, !dbg !2073, !tbaa !479
  %109 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2073
  %110 = bitcast i8* %109 to i32*, !dbg !2073
  store i32 %108, i32* %110, align 4, !dbg !2073, !tbaa !479
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2073
  %112 = load i32, i32* %111, align 8, !dbg !2073, !tbaa !479
  %113 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2073
  %114 = bitcast i8* %113 to i32*, !dbg !2073
  store i32 %112, i32* %114, align 8, !dbg !2073, !tbaa !479
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2073
  %116 = load i32, i32* %115, align 4, !dbg !2073, !tbaa !479
  %117 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2073
  %118 = bitcast i8* %117 to i32*, !dbg !2073
  store i32 %116, i32* %118, align 4, !dbg !2073, !tbaa !479
  %119 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2073
  %120 = load i8, i8* %119, align 8, !dbg !2073, !tbaa !479
  br label %128, !dbg !2077

; <label>:121:                                    ; preds = %74
  %122 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2078
  %123 = bitcast i8* %122 to i32*, !dbg !2078
  store i32 0, i32* %123, align 4, !dbg !2078, !tbaa !479
  %124 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2078
  %125 = bitcast i8* %124 to i32*, !dbg !2078
  store i32 0, i32* %125, align 8, !dbg !2078, !tbaa !479
  %126 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2078
  %127 = bitcast i8* %126 to i32*, !dbg !2078
  store i32 0, i32* %127, align 4, !dbg !2078, !tbaa !479
  br label %128

; <label>:128:                                    ; preds = %121, %106
  %129 = phi i8 [ 0, %121 ], [ %120, %106 ]
  %130 = getelementptr inbounds i8, i8* %71, i64 16, !dbg !2078
  store i8 %129, i8* %130, align 8, !dbg !2078
  %131 = load i16, i16* %80, align 2, !dbg !2081, !tbaa !965
  %132 = icmp eq i16 %131, 0, !dbg !2082
  br i1 %132, label %157, label %133, !dbg !2083

; <label>:133:                                    ; preds = %128
  %134 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2084, !tbaa !495
  %135 = icmp eq %struct.tcp_pcb* %134, %0, !dbg !2084
  br i1 %135, label %136, label %140, !dbg !2085

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2086
  %138 = bitcast %struct.tcp_pcb** %137 to i64*, !dbg !2086
  %139 = load i64, i64* %138, align 8, !dbg !2086, !tbaa !527
  store i64 %139, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2086, !tbaa !495
  br label %155, !dbg !2086

; <label>:140:                                    ; preds = %133, %143
  %141 = phi %struct.tcp_pcb* [ %145, %143 ], [ %134, %133 ], !dbg !2088
  %142 = icmp eq %struct.tcp_pcb* %141, null, !dbg !2091
  br i1 %142, label %153, label %143, !dbg !2088

; <label>:143:                                    ; preds = %140
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %141, i64 0, i32 6, !dbg !2093
  %145 = load %struct.tcp_pcb*, %struct.tcp_pcb** %144, align 8, !dbg !2093, !tbaa !527
  %146 = icmp eq %struct.tcp_pcb* %145, %0, !dbg !2093
  br i1 %146, label %147, label %140, !dbg !2096, !llvm.loop !2097

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %141, i64 0, i32 6, !dbg !2093
  %149 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2098
  %150 = bitcast %struct.tcp_pcb** %149 to i64*, !dbg !2098
  %151 = load i64, i64* %150, align 8, !dbg !2098, !tbaa !527
  %152 = bitcast %struct.tcp_pcb** %148 to i64*, !dbg !2098
  store i64 %151, i64* %152, align 8, !dbg !2098, !tbaa !527
  br label %155, !dbg !2098

; <label>:153:                                    ; preds = %140
  %154 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2085
  br label %155, !dbg !2085

; <label>:155:                                    ; preds = %153, %147, %136
  %156 = phi %struct.tcp_pcb** [ %154, %153 ], [ %149, %147 ], [ %137, %136 ], !dbg !2085
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %156, align 8, !dbg !2085, !tbaa !527
  br label %157, !dbg !2100

; <label>:157:                                    ; preds = %128, %155
  %158 = load i32, i32* %7, align 8, !dbg !2103, !tbaa !451
  %159 = icmp eq i32 %158, 1, !dbg !2103
  br i1 %159, label %160, label %161, !dbg !2104

; <label>:160:                                    ; preds = %157
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2105
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2106
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2106
  unreachable, !dbg !2106

; <label>:161:                                    ; preds = %157
  %162 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !2107
  tail call void @memp_free(i32 1, i8* %162) #8, !dbg !2108
  %163 = getelementptr inbounds i8, i8* %71, i64 80, !dbg !2109
  %164 = bitcast i8* %163 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !2109
  store i8 (i8*, %struct.tcp_pcb*, i8)* @tcp_accept_null, i8 (i8*, %struct.tcp_pcb*, i8)** %164, align 8, !dbg !2110, !tbaa !2111
  %165 = load i64, i64* bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i64*), align 8, !dbg !2112, !tbaa !479
  %166 = getelementptr inbounds i8, i8* %71, i64 56, !dbg !2112
  %167 = bitcast i8* %166 to i64*, !dbg !2112
  store i64 %165, i64* %167, align 8, !dbg !2112, !tbaa !527
  store i8* %71, i8** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i8**), align 8, !dbg !2112, !tbaa !479
  tail call void @tcp_timer_needed() #8, !dbg !2112
  br label %168, !dbg !2115

; <label>:168:                                    ; preds = %60, %65, %70, %161
  %169 = phi %struct.tcp_pcb_listen* [ %72, %161 ], [ %72, %70 ], [ null, %65 ], [ null, %60 ], !dbg !2116
  %170 = phi i8 [ 0, %161 ], [ -1, %70 ], [ -8, %65 ], [ -8, %60 ], !dbg !2116
  %171 = icmp eq i8* %2, null, !dbg !2117
  br i1 %171, label %173, label %172, !dbg !2119

; <label>:172:                                    ; preds = %168
  store i8 %170, i8* %2, align 1, !dbg !2120, !tbaa !479
  br label %173, !dbg !2122

; <label>:173:                                    ; preds = %168, %172
  %174 = bitcast %struct.tcp_pcb_listen* %169 to %struct.tcp_pcb*, !dbg !2123
  ret %struct.tcp_pcb* %174, !dbg !2124
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal signext i8 @tcp_accept_null(i8* nocapture readnone, %struct.tcp_pcb*, i8 signext) #0 !dbg !2125 {
  %4 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2133
  br i1 %4, label %5, label %6, !dbg !2136

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #9, !dbg !2137
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2140
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2140
  unreachable, !dbg !2140

; <label>:6:                                      ; preds = %3
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %1, i32 1) #8, !dbg !2146
  ret i8 -13, !dbg !2147
}

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_update_rcv_ann_wnd(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2148 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2158
  br i1 %2, label %3, label %4, !dbg !2161

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !2162
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2165
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2165
  unreachable, !dbg !2165

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2169
  %6 = load i32, i32* %5, align 4, !dbg !2169, !tbaa !961
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2170
  %8 = load i32, i32* %7, align 8, !dbg !2170, !tbaa !1163
  %9 = add i32 %8, %6, !dbg !2171
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2173
  %11 = load i32, i32* %10, align 8, !dbg !2173, !tbaa !2174
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2173
  %13 = load i16, i16* %12, align 2, !dbg !2173, !tbaa !771
  %14 = zext i16 %13 to i32, !dbg !2173
  %15 = sub i32 %9, %11, !dbg !2173
  %16 = sub i32 %15, %14, !dbg !2173
  %17 = icmp sgt i32 %16, -1, !dbg !2173
  br i1 %17, label %23, label %18, !dbg !2175

; <label>:18:                                     ; preds = %4
  %19 = sub i32 %6, %11, !dbg !2176
  %20 = icmp sgt i32 %19, 0, !dbg !2176
  %21 = sub i32 %11, %6, !dbg !2177
  %22 = select i1 %20, i32 0, i32 %21, !dbg !2178
  br label %23, !dbg !2178

; <label>:23:                                     ; preds = %18, %4
  %24 = phi i32 [ %8, %4 ], [ %22, %18 ]
  %25 = phi i32 [ %15, %4 ], [ 0, %18 ], !dbg !2179
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2180
  store i32 %24, i32* %26, align 4, !dbg !2180, !tbaa !2182
  ret i32 %25, !dbg !2183
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recved(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !2184 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2194
  br i1 %3, label %4, label %5, !dbg !2197

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !2198
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2201
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2201
  unreachable, !dbg !2201

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2205
  %7 = load i32, i32* %6, align 8, !dbg !2205, !tbaa !451
  %8 = icmp eq i32 %7, 1, !dbg !2205
  br i1 %8, label %9, label %10, !dbg !2208

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !2209
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2212
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2212
  unreachable, !dbg !2212

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2216
  %12 = load i32, i32* %11, align 8, !dbg !2216, !tbaa !1163
  %13 = zext i16 %1 to i32, !dbg !2217
  %14 = add i32 %12, %13, !dbg !2218
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2220
  %16 = load i16, i16* %15, align 2, !dbg !2220, !tbaa !507
  %17 = and i16 %16, 256, !dbg !2220
  %18 = icmp eq i16 %17, 0, !dbg !2220
  %19 = select i1 %18, i32 65535, i32 262142, !dbg !2220
  %20 = icmp ugt i32 %14, %19, !dbg !2222
  %21 = icmp ult i32 %14, %12, !dbg !2223
  %22 = or i1 %21, %20, !dbg !2224
  %23 = select i1 %22, i32 %19, i32 %14, !dbg !2224
  store i32 %23, i32* %11, align 8, !dbg !2225, !tbaa !1163
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2229
  %25 = load i32, i32* %24, align 4, !dbg !2229, !tbaa !961
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2231
  %27 = load i32, i32* %26, align 8, !dbg !2231, !tbaa !2174
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2231
  %29 = load i16, i16* %28, align 2, !dbg !2231, !tbaa !771
  %30 = zext i16 %29 to i32, !dbg !2231
  %31 = sub i32 %25, %27, !dbg !2232
  %32 = add i32 %31, %23, !dbg !2231
  %33 = sub i32 %32, %30, !dbg !2231
  %34 = icmp sgt i32 %33, -1, !dbg !2231
  br i1 %34, label %42, label %35, !dbg !2233

; <label>:35:                                     ; preds = %10
  %36 = icmp sgt i32 %31, 0, !dbg !2234
  br i1 %36, label %37, label %39, !dbg !2235

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2236
  store i32 0, i32* %38, align 4, !dbg !2238, !tbaa !2182
  br label %48, !dbg !2239

; <label>:39:                                     ; preds = %35
  %40 = sub i32 %27, %25, !dbg !2240
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2242
  store i32 %40, i32* %41, align 4, !dbg !2243, !tbaa !2182
  br label %48

; <label>:42:                                     ; preds = %10
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2244
  store i32 %23, i32* %43, align 4, !dbg !2245, !tbaa !2182
  %44 = icmp ugt i32 %32, 5839, !dbg !2247
  br i1 %44, label %45, label %48, !dbg !2249

; <label>:45:                                     ; preds = %42
  %46 = or i16 %16, 2, !dbg !2250
  store i16 %46, i16* %15, align 2, !dbg !2250, !tbaa !507
  %47 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #8, !dbg !2253
  br label %48, !dbg !2254

; <label>:48:                                     ; preds = %37, %39, %45, %42
  ret void, !dbg !2255
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_connect(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !2256 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2290
  br i1 %5, label %6, label %7, !dbg !2293

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !2294
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2297
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2297
  unreachable, !dbg !2297

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.ip_addr* %1, null, !dbg !2301
  br i1 %8, label %9, label %10, !dbg !2304

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !2305
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2308
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2308
  unreachable, !dbg !2308

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2312
  %12 = load i32, i32* %11, align 8, !dbg !2312, !tbaa !451
  %13 = icmp eq i32 %12, 0, !dbg !2312
  br i1 %13, label %15, label %14, !dbg !2315

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !2316
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2319
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2319
  unreachable, !dbg !2319

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2323
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !2327
  %18 = load i8, i8* %17, align 4, !dbg !2327, !tbaa !1791
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !2327
  store i8 %18, i8* %19, align 4, !dbg !2327, !tbaa !2330
  %20 = load i8, i8* %17, align 4, !dbg !2331, !tbaa !1791
  %21 = icmp eq i8 %20, 6, !dbg !2331
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2333
  %23 = load i32, i32* %22, align 4, !dbg !2333, !tbaa !479
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2333
  store i32 %23, i32* %24, align 8, !dbg !2333, !tbaa !479
  br i1 %21, label %25, label %37, !dbg !2336

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2333
  %27 = load i32, i32* %26, align 4, !dbg !2333, !tbaa !479
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2333
  store i32 %27, i32* %28, align 4, !dbg !2333, !tbaa !479
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2333
  %30 = load i32, i32* %29, align 4, !dbg !2333, !tbaa !479
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2333
  store i32 %30, i32* %31, align 8, !dbg !2333, !tbaa !479
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2333
  %33 = load i32, i32* %32, align 4, !dbg !2333, !tbaa !479
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2333
  store i32 %33, i32* %34, align 4, !dbg !2333, !tbaa !479
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !2333
  %36 = load i8, i8* %35, align 4, !dbg !2333, !tbaa !479
  br label %41, !dbg !2337

; <label>:37:                                     ; preds = %15
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2338
  store i32 0, i32* %38, align 4, !dbg !2338, !tbaa !479
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2338
  store i32 0, i32* %39, align 8, !dbg !2338, !tbaa !479
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2338
  store i32 0, i32* %40, align 4, !dbg !2338, !tbaa !479
  br label %41

; <label>:41:                                     ; preds = %37, %25
  %42 = phi i8 [ 0, %37 ], [ %36, %25 ]
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2338
  store i8 %42, i8* %43, align 8, !dbg !2338
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2341
  store i16 %2, i16* %44, align 8, !dbg !2342, !tbaa !967
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2343
  %46 = load i8, i8* %45, align 8, !dbg !2343, !tbaa !2345
  %47 = icmp eq i8 %46, 0, !dbg !2346
  br i1 %47, label %50, label %48, !dbg !2347

; <label>:48:                                     ; preds = %41
  %49 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %46) #8, !dbg !2348
  br label %59, !dbg !2350

; <label>:50:                                     ; preds = %41
  %51 = icmp eq i8 %18, 6, !dbg !2351
  br i1 %51, label %52, label %56, !dbg !2351

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !2351
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2351
  %55 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %53, %struct.ip6_addr* nonnull %54) #8, !dbg !2351
  br label %59, !dbg !2351

; <label>:56:                                     ; preds = %50
  %57 = bitcast %struct.ip_addr* %16 to %struct.ip4_addr*, !dbg !2351
  %58 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %57) #8, !dbg !2351
  br label %59, !dbg !2351

; <label>:59:                                     ; preds = %52, %56, %48
  %60 = phi %struct.netif* [ %49, %48 ], [ %55, %52 ], [ %58, %56 ], !dbg !2353
  %61 = icmp eq %struct.netif* %60, null, !dbg !2354
  br i1 %61, label %368, label %62, !dbg !2356

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2357
  %64 = load i8, i8* %63, align 4, !dbg !2357, !tbaa !1889
  %65 = icmp eq i8 %64, 6, !dbg !2357
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2357
  %67 = load i32, i32* %66, align 8, !dbg !2357, !tbaa !479
  %68 = icmp eq i32 %67, 0, !dbg !2357
  br i1 %65, label %69, label %82, !dbg !2358

; <label>:69:                                     ; preds = %62
  br i1 %68, label %70, label %118, !dbg !2357

; <label>:70:                                     ; preds = %69
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2357
  %72 = load i32, i32* %71, align 4, !dbg !2357, !tbaa !479
  %73 = icmp eq i32 %72, 0, !dbg !2357
  br i1 %73, label %74, label %118, !dbg !2357

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2357
  %76 = load i32, i32* %75, align 8, !dbg !2357, !tbaa !479
  %77 = icmp eq i32 %76, 0, !dbg !2357
  br i1 %77, label %78, label %118, !dbg !2357

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2357
  %80 = load i32, i32* %79, align 4, !dbg !2357, !tbaa !479
  %81 = icmp eq i32 %80, 0, !dbg !2357
  br i1 %81, label %83, label %118, !dbg !2357

; <label>:82:                                     ; preds = %62
  br i1 %68, label %83, label %118, !dbg !2358

; <label>:83:                                     ; preds = %78, %82
  %84 = load i8, i8* %17, align 4, !dbg !2359, !tbaa !1791
  %85 = icmp eq i8 %84, 6, !dbg !2359
  br i1 %85, label %88, label %86, !dbg !2359

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 1, !dbg !2359
  br label %92, !dbg !2361

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, !dbg !2359
  %90 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %60, %struct.ip6_addr* nonnull %89) #8, !dbg !2359
  %91 = icmp eq %struct.ip_addr* %90, null, !dbg !2362
  br i1 %91, label %368, label %92, !dbg !2361

; <label>:92:                                     ; preds = %86, %88
  %93 = phi %struct.ip_addr* [ %87, %86 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 1, !dbg !2364
  %95 = load i8, i8* %94, align 4, !dbg !2364, !tbaa !1791
  store i8 %95, i8* %63, align 4, !dbg !2364, !tbaa !1889
  %96 = load i8, i8* %94, align 4, !dbg !2367, !tbaa !1791
  %97 = icmp eq i8 %96, 6, !dbg !2367
  %98 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2369
  %99 = load i32, i32* %98, align 4, !dbg !2369, !tbaa !479
  store i32 %99, i32* %66, align 8, !dbg !2369, !tbaa !479
  br i1 %97, label %100, label %113, !dbg !2372

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2369
  %102 = load i32, i32* %101, align 4, !dbg !2369, !tbaa !479
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2369
  store i32 %102, i32* %103, align 4, !dbg !2369, !tbaa !479
  %104 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2369
  %105 = load i32, i32* %104, align 4, !dbg !2369, !tbaa !479
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2369
  store i32 %105, i32* %106, align 8, !dbg !2369, !tbaa !479
  %107 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2369
  %108 = load i32, i32* %107, align 4, !dbg !2369, !tbaa !479
  %109 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2369
  store i32 %108, i32* %109, align 4, !dbg !2369, !tbaa !479
  %110 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 1, !dbg !2369
  %111 = load i8, i8* %110, align 4, !dbg !2369, !tbaa !479
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2369
  store i8 %111, i8* %112, align 8, !dbg !2369, !tbaa !479
  br label %118, !dbg !2373

; <label>:113:                                    ; preds = %92
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2374
  store i32 0, i32* %114, align 4, !dbg !2374, !tbaa !479
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2374
  store i32 0, i32* %115, align 8, !dbg !2374, !tbaa !479
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2374
  store i32 0, i32* %116, align 4, !dbg !2374, !tbaa !479
  %117 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2374
  store i8 0, i8* %117, align 8, !dbg !2374, !tbaa !479
  br label %118

; <label>:118:                                    ; preds = %69, %70, %74, %78, %82, %100, %113
  %119 = phi i32 [ %67, %69 ], [ 0, %70 ], [ 0, %74 ], [ 0, %78 ], [ %67, %82 ], [ %99, %100 ], [ %99, %113 ]
  %120 = phi i8 [ 6, %69 ], [ 6, %70 ], [ 6, %74 ], [ 6, %78 ], [ %64, %82 ], [ %95, %100 ], [ %95, %113 ]
  %121 = load i8, i8* %19, align 4, !dbg !2377, !tbaa !2330
  %122 = icmp eq i8 %121, 6, !dbg !2377
  br i1 %122, label %123, label %134, !dbg !2379

; <label>:123:                                    ; preds = %118
  %124 = load i8, i8* %43, align 8, !dbg !2380, !tbaa !479
  %125 = icmp eq i8 %124, 0, !dbg !2380
  br i1 %125, label %126, label %134, !dbg !2380

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %24, align 8, !dbg !2380, !tbaa !479
  %128 = and i32 %127, 49407, !dbg !2380
  %129 = icmp eq i32 %128, 33022, !dbg !2380
  br i1 %129, label %130, label %134, !dbg !2381

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 23, !dbg !2382
  %132 = load i8, i8* %131, align 8, !dbg !2382, !tbaa !1807
  %133 = add i8 %132, 1, !dbg !2382
  store i8 %133, i8* %43, align 8, !dbg !2382, !tbaa !479
  br label %134, !dbg !2384

; <label>:134:                                    ; preds = %123, %130, %126, %118
  %135 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2385
  %136 = load i16, i16* %135, align 2, !dbg !2385, !tbaa !965
  %137 = icmp eq i16 %136, 0, !dbg !2387
  br i1 %137, label %138, label %199, !dbg !2388

; <label>:138:                                    ; preds = %134
  %139 = load i16, i16* @tcp_port, align 2, !dbg !2392
  %140 = load %struct.tcp_pcb*, %struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), align 8, !dbg !2393, !tbaa !495
  %141 = icmp eq %struct.tcp_pcb* %140, null
  %142 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8
  %143 = icmp eq %struct.tcp_pcb* %142, null
  %144 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8
  %145 = icmp eq %struct.tcp_pcb* %144, null
  %146 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8
  %147 = icmp eq %struct.tcp_pcb* %146, null
  br label %148, !dbg !2394

; <label>:148:                                    ; preds = %163, %138
  %149 = phi i16 [ %139, %138 ], [ %153, %163 ], !dbg !2389
  %150 = phi i16 [ 0, %138 ], [ %164, %163 ], !dbg !2395
  %151 = add i16 %149, 1, !dbg !2396
  %152 = icmp eq i16 %151, -1, !dbg !2397
  %153 = select i1 %152, i16 -16384, i16 %151, !dbg !2398
  br i1 %141, label %167, label %158, !dbg !2401

; <label>:154:                                    ; preds = %158
  %155 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %159, i64 0, i32 6, !dbg !2402
  %156 = load %struct.tcp_pcb*, %struct.tcp_pcb** %155, align 8, !dbg !2393, !tbaa !495
  %157 = icmp eq %struct.tcp_pcb* %156, null, !dbg !2403
  br i1 %157, label %167, label %158, !dbg !2401, !llvm.loop !1850

; <label>:158:                                    ; preds = %148, %154
  %159 = phi %struct.tcp_pcb* [ %156, %154 ], [ %140, %148 ]
  %160 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %159, i64 0, i32 10, !dbg !2404
  %161 = load i16, i16* %160, align 2, !dbg !2404, !tbaa !965
  %162 = icmp eq i16 %161, %153, !dbg !2405
  br i1 %162, label %163, label %154, !dbg !2406

; <label>:163:                                    ; preds = %158, %168, %178, %188
  %164 = add nuw nsw i16 %150, 1, !dbg !2407
  %165 = icmp ugt i16 %150, 16382, !dbg !2408
  br i1 %165, label %166, label %148, !dbg !2409

; <label>:166:                                    ; preds = %163
  store i16 %153, i16* @tcp_port, align 2, !dbg !2392
  store i16 0, i16* %135, align 2, !dbg !2410, !tbaa !965
  br label %368, !dbg !2411

; <label>:167:                                    ; preds = %154, %148
  br i1 %143, label %177, label %168, !dbg !2401

; <label>:168:                                    ; preds = %167, %173
  %169 = phi %struct.tcp_pcb* [ %175, %173 ], [ %142, %167 ]
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 10, !dbg !2404
  %171 = load i16, i16* %170, align 2, !dbg !2404, !tbaa !965
  %172 = icmp eq i16 %171, %153, !dbg !2405
  br i1 %172, label %163, label %173, !dbg !2406

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 6, !dbg !2402
  %175 = load %struct.tcp_pcb*, %struct.tcp_pcb** %174, align 8, !dbg !2393, !tbaa !495
  %176 = icmp eq %struct.tcp_pcb* %175, null, !dbg !2403
  br i1 %176, label %177, label %168, !dbg !2401, !llvm.loop !1850

; <label>:177:                                    ; preds = %173, %167
  br i1 %145, label %187, label %178, !dbg !2401

; <label>:178:                                    ; preds = %177, %183
  %179 = phi %struct.tcp_pcb* [ %185, %183 ], [ %144, %177 ]
  %180 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %179, i64 0, i32 10, !dbg !2404
  %181 = load i16, i16* %180, align 2, !dbg !2404, !tbaa !965
  %182 = icmp eq i16 %181, %153, !dbg !2405
  br i1 %182, label %163, label %183, !dbg !2406

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %179, i64 0, i32 6, !dbg !2402
  %185 = load %struct.tcp_pcb*, %struct.tcp_pcb** %184, align 8, !dbg !2393, !tbaa !495
  %186 = icmp eq %struct.tcp_pcb* %185, null, !dbg !2403
  br i1 %186, label %187, label %178, !dbg !2401, !llvm.loop !1850

; <label>:187:                                    ; preds = %183, %177
  br i1 %147, label %197, label %188, !dbg !2401

; <label>:188:                                    ; preds = %187, %193
  %189 = phi %struct.tcp_pcb* [ %195, %193 ], [ %146, %187 ]
  %190 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %189, i64 0, i32 10, !dbg !2404
  %191 = load i16, i16* %190, align 2, !dbg !2404, !tbaa !965
  %192 = icmp eq i16 %191, %153, !dbg !2405
  br i1 %192, label %163, label %193, !dbg !2406

; <label>:193:                                    ; preds = %188
  %194 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %189, i64 0, i32 6, !dbg !2402
  %195 = load %struct.tcp_pcb*, %struct.tcp_pcb** %194, align 8, !dbg !2393, !tbaa !495
  %196 = icmp eq %struct.tcp_pcb* %195, null, !dbg !2403
  br i1 %196, label %197, label %188, !dbg !2401, !llvm.loop !1850

; <label>:197:                                    ; preds = %187, %193
  store i16 %153, i16* @tcp_port, align 2, !dbg !2392
  store i16 %153, i16* %135, align 2, !dbg !2410, !tbaa !965
  %198 = icmp eq i16 %153, 0, !dbg !2412
  br i1 %198, label %368, label %296, !dbg !2411

; <label>:199:                                    ; preds = %134
  %200 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2414
  %201 = load i8, i8* %200, align 1, !dbg !2414, !tbaa !806
  %202 = and i8 %201, 4, !dbg !2414
  %203 = icmp eq i8 %202, 0, !dbg !2414
  br i1 %203, label %296, label %204, !dbg !2415

; <label>:204:                                    ; preds = %199
  %205 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %206 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %207 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %208 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %209 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %210 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %211 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %212 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %213 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2418, !tbaa !495
  %214 = icmp eq %struct.tcp_pcb* %213, null, !dbg !2424
  br i1 %214, label %293, label %215, !dbg !2425

; <label>:215:                                    ; preds = %204
  %216 = icmp eq i8 %120, 6
  br label %217, !dbg !2426

; <label>:217:                                    ; preds = %215, %289
  %218 = phi %struct.tcp_pcb* [ %291, %289 ], [ %213, %215 ]
  %219 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 10, !dbg !2426
  %220 = load i16, i16* %219, align 2, !dbg !2426, !tbaa !965
  %221 = icmp eq i16 %220, %136, !dbg !2429
  br i1 %221, label %222, label %289, !dbg !2430

; <label>:222:                                    ; preds = %217
  %223 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 11, !dbg !2431
  %224 = load i16, i16* %223, align 8, !dbg !2431, !tbaa !967
  %225 = icmp eq i16 %224, %2, !dbg !2432
  br i1 %225, label %226, label %289, !dbg !2433

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 1, !dbg !2434
  %228 = load i8, i8* %227, align 4, !dbg !2434, !tbaa !1889
  %229 = icmp eq i8 %228, %120, !dbg !2434
  br i1 %229, label %230, label %289, !dbg !2435

; <label>:230:                                    ; preds = %226
  %231 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2434
  %232 = load i32, i32* %231, align 8, !dbg !2434, !tbaa !479
  %233 = icmp eq i32 %232, %119, !dbg !2434
  br i1 %216, label %234, label %255, !dbg !2435

; <label>:234:                                    ; preds = %230
  br i1 %233, label %235, label %289, !dbg !2434

; <label>:235:                                    ; preds = %234
  %236 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2434
  %237 = load i32, i32* %236, align 4, !dbg !2434, !tbaa !479
  %238 = load i32, i32* %205, align 4, !dbg !2434, !tbaa !479
  %239 = icmp eq i32 %237, %238, !dbg !2434
  br i1 %239, label %240, label %289, !dbg !2434

; <label>:240:                                    ; preds = %235
  %241 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2434
  %242 = load i32, i32* %241, align 8, !dbg !2434, !tbaa !479
  %243 = load i32, i32* %206, align 8, !dbg !2434, !tbaa !479
  %244 = icmp eq i32 %242, %243, !dbg !2434
  br i1 %244, label %245, label %289, !dbg !2434

; <label>:245:                                    ; preds = %240
  %246 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2434
  %247 = load i32, i32* %246, align 4, !dbg !2434, !tbaa !479
  %248 = load i32, i32* %207, align 4, !dbg !2434, !tbaa !479
  %249 = icmp eq i32 %247, %248, !dbg !2434
  br i1 %249, label %250, label %289, !dbg !2434

; <label>:250:                                    ; preds = %245
  %251 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2434
  %252 = load i8, i8* %251, align 8, !dbg !2434, !tbaa !479
  %253 = load i8, i8* %209, align 8, !dbg !2434, !tbaa !479
  %254 = icmp eq i8 %252, %253, !dbg !2434
  br i1 %254, label %256, label %289, !dbg !2434

; <label>:255:                                    ; preds = %230
  br i1 %233, label %256, label %289, !dbg !2435

; <label>:256:                                    ; preds = %255, %250
  %257 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 1, !dbg !2436
  %258 = load i8, i8* %257, align 4, !dbg !2436, !tbaa !2330
  %259 = load i8, i8* %17, align 4, !dbg !2436, !tbaa !1791
  %260 = icmp eq i8 %258, %259, !dbg !2436
  br i1 %260, label %261, label %289, !dbg !2437

; <label>:261:                                    ; preds = %256
  %262 = icmp eq i8 %258, 6, !dbg !2436
  %263 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2436
  %264 = load i32, i32* %263, align 8, !dbg !2436, !tbaa !479
  %265 = load i32, i32* %22, align 4, !dbg !2436, !tbaa !479
  %266 = icmp eq i32 %264, %265, !dbg !2436
  br i1 %262, label %267, label %288, !dbg !2437

; <label>:267:                                    ; preds = %261
  br i1 %266, label %268, label %289, !dbg !2436

; <label>:268:                                    ; preds = %267
  %269 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2436
  %270 = load i32, i32* %269, align 4, !dbg !2436, !tbaa !479
  %271 = load i32, i32* %208, align 4, !dbg !2436, !tbaa !479
  %272 = icmp eq i32 %270, %271, !dbg !2436
  br i1 %272, label %273, label %289, !dbg !2436

; <label>:273:                                    ; preds = %268
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2436
  %275 = load i32, i32* %274, align 8, !dbg !2436, !tbaa !479
  %276 = load i32, i32* %210, align 4, !dbg !2436, !tbaa !479
  %277 = icmp eq i32 %275, %276, !dbg !2436
  br i1 %277, label %278, label %289, !dbg !2436

; <label>:278:                                    ; preds = %273
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2436
  %280 = load i32, i32* %279, align 4, !dbg !2436, !tbaa !479
  %281 = load i32, i32* %211, align 4, !dbg !2436, !tbaa !479
  %282 = icmp eq i32 %280, %281, !dbg !2436
  br i1 %282, label %283, label %289, !dbg !2436

; <label>:283:                                    ; preds = %278
  %284 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2436
  %285 = load i8, i8* %284, align 8, !dbg !2436, !tbaa !479
  %286 = load i8, i8* %212, align 4, !dbg !2436, !tbaa !479
  %287 = icmp eq i8 %285, %286, !dbg !2436
  br i1 %287, label %368, label %289, !dbg !2436

; <label>:288:                                    ; preds = %261
  br i1 %266, label %368, label %289, !dbg !2437

; <label>:289:                                    ; preds = %256, %226, %217, %222, %234, %235, %240, %245, %250, %255, %267, %268, %273, %278, %283, %288
  %290 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 6, !dbg !2438
  %291 = load %struct.tcp_pcb*, %struct.tcp_pcb** %290, align 8, !dbg !2418, !tbaa !495
  %292 = icmp eq %struct.tcp_pcb* %291, null, !dbg !2424
  br i1 %292, label %293, label %217, !dbg !2425, !llvm.loop !2439

; <label>:293:                                    ; preds = %289, %204
  %294 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !2418, !tbaa !495
  %295 = icmp eq %struct.tcp_pcb* %294, null, !dbg !2424
  br i1 %295, label %296, label %370, !dbg !2425

; <label>:296:                                    ; preds = %444, %293, %197, %199
  %297 = load i32, i32* @tcp_ticks, align 4, !dbg !2443, !tbaa !411
  %298 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2444, !tbaa !411
  %299 = add i32 %298, %297, !dbg !2444
  store i32 %299, i32* @tcp_next_iss.iss, align 4, !dbg !2444, !tbaa !411
  %300 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2446
  %301 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2447
  store i32 %299, i32* %301, align 8, !dbg !2448, !tbaa !959
  %302 = add i32 %299, -1, !dbg !2449
  %303 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !2450
  store i32 %302, i32* %303, align 8, !dbg !2451, !tbaa !2452
  %304 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 36, !dbg !2453
  store i32 %302, i32* %304, align 8, !dbg !2454, !tbaa !2455
  %305 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !2456
  store i32 %302, i32* %305, align 4, !dbg !2457, !tbaa !2458
  %306 = bitcast i32* %300 to <4 x i32>*, !dbg !2459
  store <4 x i32> <i32 0, i32 65535, i32 65535, i32 0>, <4 x i32>* %306, align 4, !dbg !2459, !tbaa !411
  %307 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2460
  store i32 262142, i32* %307, align 8, !dbg !2461, !tbaa !693
  %308 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2462
  store i16 536, i16* %308, align 2, !dbg !2463, !tbaa !771
  br i1 %122, label %309, label %312, !dbg !2480

; <label>:309:                                    ; preds = %296
  %310 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2481
  %311 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %310, %struct.netif* nonnull %60) #8, !dbg !2484
  br label %315, !dbg !2486

; <label>:312:                                    ; preds = %296
  %313 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 17, !dbg !2487
  %314 = load i16, i16* %313, align 2, !dbg !2487, !tbaa !2489
  br label %315

; <label>:315:                                    ; preds = %312, %309
  %316 = phi i16 [ %311, %309 ], [ %314, %312 ], !dbg !2490
  %317 = zext i16 %316 to i32, !dbg !2491
  %318 = icmp eq i16 %316, 0, !dbg !2492
  br i1 %318, label %330, label %319, !dbg !2493

; <label>:319:                                    ; preds = %315
  %320 = load i8, i8* %19, align 4, !dbg !2494, !tbaa !1791
  %321 = icmp eq i8 %320, 6, !dbg !2494
  %322 = select i1 %321, i32 60, i32 40, !dbg !2496
  %323 = icmp ult i32 %322, %317, !dbg !2498
  %324 = sub nsw i32 %317, %322, !dbg !2499
  %325 = and i32 %324, 65535, !dbg !2500
  %326 = select i1 %323, i32 %325, i32 0, !dbg !2500
  %327 = icmp ult i32 %326, 536, !dbg !2501
  %328 = select i1 %327, i32 %326, i32 536, !dbg !2501
  %329 = trunc i32 %328 to i16, !dbg !2501
  br label %330, !dbg !2502

; <label>:330:                                    ; preds = %315, %319
  %331 = phi i16 [ %329, %319 ], [ 536, %315 ], !dbg !2503
  store i16 %331, i16* %308, align 2, !dbg !2506, !tbaa !771
  %332 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2507
  store i32 1, i32* %332, align 4, !dbg !2508, !tbaa !765
  %333 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 51, !dbg !2509
  store i8 (i8*, %struct.tcp_pcb*, i8)* %3, i8 (i8*, %struct.tcp_pcb*, i8)** %333, align 8, !dbg !2510, !tbaa !2511
  %334 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 2) #8, !dbg !2512
  %335 = icmp eq i8 %334, 0, !dbg !2514
  br i1 %335, label %336, label %368, !dbg !2515

; <label>:336:                                    ; preds = %330
  store i32 2, i32* %11, align 8, !dbg !2516, !tbaa !451
  br i1 %137, label %337, label %339, !dbg !2517

; <label>:337:                                    ; preds = %336
  %338 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2518
  br label %363, !dbg !2517

; <label>:339:                                    ; preds = %336
  %340 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2521, !tbaa !495
  %341 = icmp eq %struct.tcp_pcb* %340, %0, !dbg !2521
  br i1 %341, label %342, label %346, !dbg !2522

; <label>:342:                                    ; preds = %339
  %343 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2523
  %344 = bitcast %struct.tcp_pcb** %343 to i64*, !dbg !2523
  %345 = load i64, i64* %344, align 8, !dbg !2523, !tbaa !527
  store i64 %345, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2523, !tbaa !495
  br label %361, !dbg !2523

; <label>:346:                                    ; preds = %339, %349
  %347 = phi %struct.tcp_pcb* [ %351, %349 ], [ %340, %339 ], !dbg !2525
  %348 = icmp eq %struct.tcp_pcb* %347, null, !dbg !2528
  br i1 %348, label %359, label %349, !dbg !2525

; <label>:349:                                    ; preds = %346
  %350 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %347, i64 0, i32 6, !dbg !2530
  %351 = load %struct.tcp_pcb*, %struct.tcp_pcb** %350, align 8, !dbg !2530, !tbaa !527
  %352 = icmp eq %struct.tcp_pcb* %351, %0, !dbg !2530
  br i1 %352, label %353, label %346, !dbg !2533, !llvm.loop !2534

; <label>:353:                                    ; preds = %349
  %354 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %347, i64 0, i32 6, !dbg !2530
  %355 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2535
  %356 = bitcast %struct.tcp_pcb** %355 to i64*, !dbg !2535
  %357 = load i64, i64* %356, align 8, !dbg !2535, !tbaa !527
  %358 = bitcast %struct.tcp_pcb** %354 to i64*, !dbg !2535
  store i64 %357, i64* %358, align 8, !dbg !2535, !tbaa !527
  br label %361, !dbg !2535

; <label>:359:                                    ; preds = %346
  %360 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2522
  br label %361, !dbg !2522

; <label>:361:                                    ; preds = %359, %353, %342
  %362 = phi %struct.tcp_pcb** [ %360, %359 ], [ %355, %353 ], [ %343, %342 ], !dbg !2522
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %362, align 8, !dbg !2522, !tbaa !527
  br label %363, !dbg !2537

; <label>:363:                                    ; preds = %337, %361
  %364 = phi %struct.tcp_pcb** [ %338, %337 ], [ %362, %361 ], !dbg !2518
  %365 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !2518, !tbaa !495
  %366 = bitcast %struct.tcp_pcb** %364 to i64*, !dbg !2518
  store i64 %365, i64* %366, align 8, !dbg !2518, !tbaa !527
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2518, !tbaa !495
  tail call void @tcp_timer_needed() #8, !dbg !2518
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !2538, !tbaa !479
  %367 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #8, !dbg !2539
  br label %368, !dbg !2540

; <label>:368:                                    ; preds = %283, %288, %422, %439, %166, %88, %330, %363, %197, %59
  %369 = phi i8 [ -4, %59 ], [ -2, %197 ], [ 0, %363 ], [ %334, %330 ], [ -4, %88 ], [ -2, %166 ], [ -8, %439 ], [ -8, %422 ], [ -8, %288 ], [ -8, %283 ], !dbg !2541
  ret i8 %369, !dbg !2543

; <label>:370:                                    ; preds = %293
  %371 = icmp eq i8 %120, 6
  br label %372, !dbg !2426

; <label>:372:                                    ; preds = %444, %370
  %373 = phi %struct.tcp_pcb* [ %446, %444 ], [ %294, %370 ]
  %374 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 10, !dbg !2426
  %375 = load i16, i16* %374, align 2, !dbg !2426, !tbaa !965
  %376 = icmp eq i16 %375, %136, !dbg !2429
  br i1 %376, label %377, label %444, !dbg !2430

; <label>:377:                                    ; preds = %372
  %378 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 11, !dbg !2431
  %379 = load i16, i16* %378, align 8, !dbg !2431, !tbaa !967
  %380 = icmp eq i16 %379, %2, !dbg !2432
  br i1 %380, label %381, label %444, !dbg !2433

; <label>:381:                                    ; preds = %377
  %382 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 1, !dbg !2434
  %383 = load i8, i8* %382, align 4, !dbg !2434, !tbaa !1889
  %384 = icmp eq i8 %383, %120, !dbg !2434
  br i1 %384, label %385, label %444, !dbg !2435

; <label>:385:                                    ; preds = %381
  %386 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2434
  %387 = load i32, i32* %386, align 8, !dbg !2434, !tbaa !479
  %388 = icmp eq i32 %387, %119, !dbg !2434
  br i1 %371, label %390, label %389, !dbg !2435

; <label>:389:                                    ; preds = %385
  br i1 %388, label %411, label %444, !dbg !2435

; <label>:390:                                    ; preds = %385
  br i1 %388, label %391, label %444, !dbg !2434

; <label>:391:                                    ; preds = %390
  %392 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2434
  %393 = load i32, i32* %392, align 4, !dbg !2434, !tbaa !479
  %394 = load i32, i32* %205, align 4, !dbg !2434, !tbaa !479
  %395 = icmp eq i32 %393, %394, !dbg !2434
  br i1 %395, label %396, label %444, !dbg !2434

; <label>:396:                                    ; preds = %391
  %397 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2434
  %398 = load i32, i32* %397, align 8, !dbg !2434, !tbaa !479
  %399 = load i32, i32* %206, align 8, !dbg !2434, !tbaa !479
  %400 = icmp eq i32 %398, %399, !dbg !2434
  br i1 %400, label %401, label %444, !dbg !2434

; <label>:401:                                    ; preds = %396
  %402 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2434
  %403 = load i32, i32* %402, align 4, !dbg !2434, !tbaa !479
  %404 = load i32, i32* %207, align 4, !dbg !2434, !tbaa !479
  %405 = icmp eq i32 %403, %404, !dbg !2434
  br i1 %405, label %406, label %444, !dbg !2434

; <label>:406:                                    ; preds = %401
  %407 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2434
  %408 = load i8, i8* %407, align 8, !dbg !2434, !tbaa !479
  %409 = load i8, i8* %209, align 8, !dbg !2434, !tbaa !479
  %410 = icmp eq i8 %408, %409, !dbg !2434
  br i1 %410, label %411, label %444, !dbg !2434

; <label>:411:                                    ; preds = %406, %389
  %412 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 1, !dbg !2436
  %413 = load i8, i8* %412, align 4, !dbg !2436, !tbaa !2330
  %414 = load i8, i8* %17, align 4, !dbg !2436, !tbaa !1791
  %415 = icmp eq i8 %413, %414, !dbg !2436
  br i1 %415, label %416, label %444, !dbg !2437

; <label>:416:                                    ; preds = %411
  %417 = icmp eq i8 %413, 6, !dbg !2436
  %418 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2436
  %419 = load i32, i32* %418, align 8, !dbg !2436, !tbaa !479
  %420 = load i32, i32* %22, align 4, !dbg !2436, !tbaa !479
  %421 = icmp eq i32 %419, %420, !dbg !2436
  br i1 %417, label %423, label %422, !dbg !2437

; <label>:422:                                    ; preds = %416
  br i1 %421, label %368, label %444, !dbg !2437

; <label>:423:                                    ; preds = %416
  br i1 %421, label %424, label %444, !dbg !2436

; <label>:424:                                    ; preds = %423
  %425 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2436
  %426 = load i32, i32* %425, align 4, !dbg !2436, !tbaa !479
  %427 = load i32, i32* %208, align 4, !dbg !2436, !tbaa !479
  %428 = icmp eq i32 %426, %427, !dbg !2436
  br i1 %428, label %429, label %444, !dbg !2436

; <label>:429:                                    ; preds = %424
  %430 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2436
  %431 = load i32, i32* %430, align 8, !dbg !2436, !tbaa !479
  %432 = load i32, i32* %210, align 4, !dbg !2436, !tbaa !479
  %433 = icmp eq i32 %431, %432, !dbg !2436
  br i1 %433, label %434, label %444, !dbg !2436

; <label>:434:                                    ; preds = %429
  %435 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2436
  %436 = load i32, i32* %435, align 4, !dbg !2436, !tbaa !479
  %437 = load i32, i32* %211, align 4, !dbg !2436, !tbaa !479
  %438 = icmp eq i32 %436, %437, !dbg !2436
  br i1 %438, label %439, label %444, !dbg !2436

; <label>:439:                                    ; preds = %434
  %440 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2436
  %441 = load i8, i8* %440, align 8, !dbg !2436, !tbaa !479
  %442 = load i8, i8* %212, align 4, !dbg !2436, !tbaa !479
  %443 = icmp eq i8 %441, %442, !dbg !2436
  br i1 %443, label %368, label %444, !dbg !2436

; <label>:444:                                    ; preds = %439, %434, %429, %424, %423, %422, %411, %406, %401, %396, %391, %390, %389, %381, %377, %372
  %445 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 6, !dbg !2438
  %446 = load %struct.tcp_pcb*, %struct.tcp_pcb** %445, align 8, !dbg !2418, !tbaa !495
  %447 = icmp eq %struct.tcp_pcb* %446, null, !dbg !2424
  br i1 %447, label %296, label %372, !dbg !2425, !llvm.loop !2439
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_next_iss(%struct.tcp_pcb* readnone) local_unnamed_addr #0 !dbg !282 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2545
  br i1 %2, label %3, label %4, !dbg !2548

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !2549
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2552
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2552
  unreachable, !dbg !2552

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @tcp_ticks, align 4, !dbg !2556, !tbaa !411
  %6 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2557, !tbaa !411
  %7 = add i32 %6, %5, !dbg !2557
  store i32 %7, i32* @tcp_next_iss.iss, align 4, !dbg !2557, !tbaa !411
  ret i32 %7, !dbg !2558
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !2465 {
  %4 = icmp eq %struct.ip_addr* %2, null, !dbg !2562
  br i1 %4, label %5, label %6, !dbg !2565

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !2566
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2569
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2569
  unreachable, !dbg !2569

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !2573
  %8 = load i8, i8* %7, align 4, !dbg !2573, !tbaa !1791
  %9 = icmp eq i8 %8, 6, !dbg !2573
  br i1 %9, label %10, label %13, !dbg !2574

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2575
  %12 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %11, %struct.netif* %1) #8, !dbg !2576
  br label %18, !dbg !2578

; <label>:13:                                     ; preds = %6
  %14 = icmp eq %struct.netif* %1, null, !dbg !2579
  br i1 %14, label %34, label %15, !dbg !2580

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17, !dbg !2581
  %17 = load i16, i16* %16, align 2, !dbg !2581, !tbaa !2489
  br label %18

; <label>:18:                                     ; preds = %15, %10
  %19 = phi i16 [ %12, %10 ], [ %17, %15 ], !dbg !2582
  %20 = zext i16 %19 to i32, !dbg !2583
  %21 = icmp eq i16 %19, 0, !dbg !2584
  br i1 %21, label %34, label %22, !dbg !2585

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %7, align 4, !dbg !2586, !tbaa !1791
  %24 = icmp eq i8 %23, 6, !dbg !2586
  %25 = select i1 %24, i32 60, i32 40, !dbg !2587
  %26 = icmp ult i32 %25, %20, !dbg !2588
  %27 = sub nsw i32 %20, %25, !dbg !2589
  %28 = and i32 %27, 65535, !dbg !2590
  %29 = select i1 %26, i32 %28, i32 0, !dbg !2590
  %30 = zext i16 %0 to i32, !dbg !2591
  %31 = icmp ugt i32 %29, %30, !dbg !2591
  %32 = select i1 %31, i32 %30, i32 %29, !dbg !2591
  %33 = trunc i32 %32 to i16, !dbg !2591
  br label %34, !dbg !2592

; <label>:34:                                     ; preds = %22, %18, %13
  %35 = phi i16 [ %0, %13 ], [ %33, %22 ], [ %0, %18 ], !dbg !2593
  ret i16 %35, !dbg !2594
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_enqueue_flags(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_zero_window_probe(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @tcp_rexmit_rto_commit(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_keepalive(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_free_ooseq(%struct.tcp_pcb* nocapture) local_unnamed_addr #0 !dbg !868 {
  %2 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2596
  %3 = load %struct.tcp_seg*, %struct.tcp_seg** %2, align 8, !dbg !2596, !tbaa !846
  %4 = icmp eq %struct.tcp_seg* %3, null, !dbg !2597
  br i1 %4, label %18, label %5, !dbg !2598

; <label>:5:                                      ; preds = %1, %14
  %6 = phi %struct.tcp_seg* [ %8, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2601
  %8 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8, !dbg !2601, !tbaa !874
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2605
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !2605, !tbaa !886
  %11 = icmp eq %struct.pbuf* %10, null, !dbg !2606
  br i1 %11, label %14, label %12, !dbg !2607

; <label>:12:                                     ; preds = %5
  %13 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %10) #8, !dbg !2608
  br label %14, !dbg !2609

; <label>:14:                                     ; preds = %12, %5
  %15 = bitcast %struct.tcp_seg* %6 to i8*, !dbg !2610
  tail call void @memp_free(i32 3, i8* %15) #8, !dbg !2611
  %16 = icmp eq %struct.tcp_seg* %8, null, !dbg !2612
  br i1 %16, label %17, label %5, !dbg !2613, !llvm.loop !896

; <label>:17:                                     ; preds = %14
  store %struct.tcp_seg* null, %struct.tcp_seg** %2, align 8, !dbg !2614, !tbaa !846
  br label %18, !dbg !2615

; <label>:18:                                     ; preds = %1, %17
  ret void, !dbg !2616
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_purge(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2617 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2621
  br i1 %2, label %3, label %4, !dbg !2624

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !2625
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2628
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2628
  unreachable, !dbg !2628

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2632
  %6 = load i32, i32* %5, align 8, !dbg !2632, !tbaa !451
  switch i32 %6, label %7 [
    i32 0, label %66
    i32 10, label %66
    i32 1, label %66
  ], !dbg !2634

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2635
  %9 = load %struct.pbuf*, %struct.pbuf** %8, align 8, !dbg !2635, !tbaa !531
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !2638
  br i1 %10, label %13, label %11, !dbg !2639

; <label>:11:                                     ; preds = %7
  %12 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %9) #8, !dbg !2640
  store %struct.pbuf* null, %struct.pbuf** %8, align 8, !dbg !2642, !tbaa !531
  br label %13, !dbg !2643

; <label>:13:                                     ; preds = %7, %11
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2644
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2646
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2648
  %17 = load %struct.tcp_seg*, %struct.tcp_seg** %16, align 8, !dbg !2648, !tbaa !846
  %18 = icmp eq %struct.tcp_seg* %17, null, !dbg !2650
  br i1 %18, label %32, label %19, !dbg !2651

; <label>:19:                                     ; preds = %13, %28
  %20 = phi %struct.tcp_seg* [ %22, %28 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 0, !dbg !2656
  %22 = load %struct.tcp_seg*, %struct.tcp_seg** %21, align 8, !dbg !2656, !tbaa !874
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 1, !dbg !2660
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !2660, !tbaa !886
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !2661
  br i1 %25, label %28, label %26, !dbg !2662

; <label>:26:                                     ; preds = %19
  %27 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %24) #8, !dbg !2663
  br label %28, !dbg !2664

; <label>:28:                                     ; preds = %26, %19
  %29 = bitcast %struct.tcp_seg* %20 to i8*, !dbg !2665
  tail call void @memp_free(i32 3, i8* %29) #8, !dbg !2666
  %30 = icmp eq %struct.tcp_seg* %22, null, !dbg !2667
  br i1 %30, label %31, label %19, !dbg !2668, !llvm.loop !896

; <label>:31:                                     ; preds = %28
  store %struct.tcp_seg* null, %struct.tcp_seg** %16, align 8, !dbg !2669, !tbaa !846
  br label %32, !dbg !2670

; <label>:32:                                     ; preds = %13, %31
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2671
  store i16 -1, i16* %33, align 4, !dbg !2672, !tbaa !723
  %34 = load %struct.tcp_seg*, %struct.tcp_seg** %14, align 8, !dbg !2673, !tbaa !663
  %35 = icmp eq %struct.tcp_seg* %34, null, !dbg !2676
  br i1 %35, label %48, label %36, !dbg !2677

; <label>:36:                                     ; preds = %32, %45
  %37 = phi %struct.tcp_seg* [ %39, %45 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %37, i64 0, i32 0, !dbg !2678
  %39 = load %struct.tcp_seg*, %struct.tcp_seg** %38, align 8, !dbg !2678, !tbaa !874
  %40 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %37, i64 0, i32 1, !dbg !2682
  %41 = load %struct.pbuf*, %struct.pbuf** %40, align 8, !dbg !2682, !tbaa !886
  %42 = icmp eq %struct.pbuf* %41, null, !dbg !2683
  br i1 %42, label %45, label %43, !dbg !2684

; <label>:43:                                     ; preds = %36
  %44 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %41) #8, !dbg !2685
  br label %45, !dbg !2686

; <label>:45:                                     ; preds = %43, %36
  %46 = bitcast %struct.tcp_seg* %37 to i8*, !dbg !2687
  tail call void @memp_free(i32 3, i8* %46) #8, !dbg !2688
  %47 = icmp eq %struct.tcp_seg* %39, null, !dbg !2676
  br i1 %47, label %48, label %36, !dbg !2677, !llvm.loop !896

; <label>:48:                                     ; preds = %45, %32
  %49 = load %struct.tcp_seg*, %struct.tcp_seg** %15, align 8, !dbg !2689, !tbaa !651
  %50 = icmp eq %struct.tcp_seg* %49, null, !dbg !2692
  br i1 %50, label %63, label %51, !dbg !2693

; <label>:51:                                     ; preds = %48, %60
  %52 = phi %struct.tcp_seg* [ %54, %60 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %52, i64 0, i32 0, !dbg !2694
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !2694, !tbaa !874
  %55 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %52, i64 0, i32 1, !dbg !2698
  %56 = load %struct.pbuf*, %struct.pbuf** %55, align 8, !dbg !2698, !tbaa !886
  %57 = icmp eq %struct.pbuf* %56, null, !dbg !2699
  br i1 %57, label %60, label %58, !dbg !2700

; <label>:58:                                     ; preds = %51
  %59 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #8, !dbg !2701
  br label %60, !dbg !2702

; <label>:60:                                     ; preds = %58, %51
  %61 = bitcast %struct.tcp_seg* %52 to i8*, !dbg !2703
  tail call void @memp_free(i32 3, i8* %61) #8, !dbg !2704
  %62 = icmp eq %struct.tcp_seg* %54, null, !dbg !2692
  br i1 %62, label %63, label %51, !dbg !2693, !llvm.loop !896

; <label>:63:                                     ; preds = %60, %48
  %64 = bitcast %struct.tcp_seg** %14 to <2 x %struct.tcp_seg*>*, !dbg !2705
  store <2 x %struct.tcp_seg*> zeroinitializer, <2 x %struct.tcp_seg*>* %64, align 8, !dbg !2705, !tbaa !495
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2706
  store i16 0, i16* %65, align 2, !dbg !2707, !tbaa !2708
  br label %66, !dbg !2709

; <label>:66:                                     ; preds = %4, %4, %4, %63
  ret void, !dbg !2710
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb*) unnamed_addr #0 !dbg !2711 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2716
  br i1 %2, label %3, label %4, !dbg !2719

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #9, !dbg !2720
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2723
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2723
  unreachable, !dbg !2723

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2727
  %6 = load i32, i32* %5, align 8, !dbg !2727, !tbaa !451
  switch i32 %6, label %26 [
    i32 3, label %7
    i32 4, label %10
    i32 7, label %13
  ], !dbg !2728

; <label>:7:                                      ; preds = %4
  %8 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #8, !dbg !2729
  %9 = icmp eq i8 %8, 0, !dbg !2732
  br i1 %9, label %18, label %16, !dbg !2734

; <label>:10:                                     ; preds = %4
  %11 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #8, !dbg !2735
  %12 = icmp eq i8 %11, 0, !dbg !2736
  br i1 %12, label %18, label %16, !dbg !2738

; <label>:13:                                     ; preds = %4
  %14 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #8, !dbg !2739
  %15 = icmp eq i8 %14, 0, !dbg !2740
  br i1 %15, label %18, label %16, !dbg !2742

; <label>:16:                                     ; preds = %13, %10, %7
  %17 = phi i8 [ %14, %13 ], [ %11, %10 ], [ %8, %7 ], !dbg !2743
  switch i8 %17, label %26 [
    i8 0, label %20
    i8 -1, label %22
  ], !dbg !2744

; <label>:18:                                     ; preds = %13, %10, %7
  %19 = phi i32 [ 5, %7 ], [ 5, %10 ], [ 9, %13 ]
  store i32 %19, i32* %5, align 8, !dbg !2745, !tbaa !451
  br label %20, !dbg !2747

; <label>:20:                                     ; preds = %18, %16
  %21 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #8, !dbg !2747
  br label %26, !dbg !2750

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2751
  %24 = load i16, i16* %23, align 2, !dbg !2751, !tbaa !507
  %25 = or i16 %24, 8, !dbg !2751
  store i16 %25, i16* %23, align 2, !dbg !2751, !tbaa !507
  br label %26, !dbg !2755

; <label>:26:                                     ; preds = %20, %16, %4, %22
  %27 = phi i8 [ 0, %22 ], [ 0, %4 ], [ %17, %16 ], [ 0, %20 ], !dbg !2756
  ret i8 %27, !dbg !2757
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_process_refused_data(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2758 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = bitcast %struct.pbuf** %2 to i8*, !dbg !2767
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2767
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2768
  br i1 %4, label %16, label %5, !dbg !2771

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2772
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2772, !tbaa !531
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !2773
  br i1 %8, label %61, label %9, !dbg !2774

; <label>:9:                                      ; preds = %5
  %10 = bitcast %struct.pbuf** %2 to i64*
  %11 = bitcast %struct.pbuf** %6 to i64*
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  br label %17, !dbg !2774

; <label>:16:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !2775
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2778
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2778
  unreachable, !dbg !2778

; <label>:17:                                     ; preds = %9, %58
  %18 = phi %struct.pbuf* [ %7, %9 ], [ %59, %58 ]
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 5, !dbg !2782
  %20 = load i8, i8* %19, align 1, !dbg !2782, !tbaa !2783
  call void @pbuf_split_64k(%struct.pbuf* nonnull %18, %struct.pbuf** nonnull %2) #8, !dbg !2788
  %21 = load i64, i64* %10, align 8, !dbg !2789, !tbaa !495
  store i64 %21, i64* %11, align 8, !dbg !2790, !tbaa !531
  %22 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !2791, !tbaa !2794
  %23 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %22, null, !dbg !2791
  br i1 %23, label %24, label %28, !dbg !2795

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !2808
  %26 = load i16, i16* %25, align 8, !dbg !2808, !tbaa !2811
  call void @tcp_recved(%struct.tcp_pcb* nonnull %0, i16 zeroext %26) #8, !dbg !2812
  %27 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %18) #8, !dbg !2813
  br label %31, !dbg !2815

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %13, align 8, !dbg !2816, !tbaa !971
  %30 = call signext i8 %22(i8* %29, %struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %18, i8 signext 0) #8, !dbg !2816
  switch i8 %30, label %53 [
    i8 0, label %31
    i8 -13, label %61
  ], !dbg !2815

; <label>:31:                                     ; preds = %24, %28
  %32 = and i8 %20, 32, !dbg !2818
  %33 = icmp ne i8 %32, 0, !dbg !2818
  %34 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !2822
  %35 = icmp eq %struct.pbuf* %34, null, !dbg !2823
  %36 = and i1 %33, %35, !dbg !2824
  br i1 %36, label %37, label %58, !dbg !2824

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %14, align 8, !dbg !2825, !tbaa !1163
  %39 = load i16, i16* %15, align 2, !dbg !2828, !tbaa !507
  %40 = and i16 %39, 256, !dbg !2828
  %41 = icmp eq i16 %40, 0, !dbg !2828
  %42 = select i1 %41, i32 65535, i32 262142, !dbg !2828
  %43 = icmp eq i32 %38, %42, !dbg !2829
  br i1 %43, label %46, label %44, !dbg !2830

; <label>:44:                                     ; preds = %37
  %45 = add i32 %38, 1, !dbg !2831
  store i32 %45, i32* %14, align 8, !dbg !2831, !tbaa !1163
  br label %46, !dbg !2833

; <label>:46:                                     ; preds = %37, %44
  %47 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !2834, !tbaa !2794
  %48 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %47, null, !dbg !2834
  br i1 %48, label %58, label %49, !dbg !2837

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %13, align 8, !dbg !2838, !tbaa !971
  %51 = call signext i8 %47(i8* %50, %struct.tcp_pcb* nonnull %0, %struct.pbuf* null, i8 signext 0) #8, !dbg !2838
  %52 = icmp eq i8 %51, -13, !dbg !2840
  br i1 %52, label %61, label %58, !dbg !2842

; <label>:53:                                     ; preds = %28
  %54 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !2843, !tbaa !495
  %55 = icmp eq %struct.pbuf* %54, null, !dbg !2847
  br i1 %55, label %57, label %56, !dbg !2848

; <label>:56:                                     ; preds = %53
  call void @pbuf_cat(%struct.pbuf* nonnull %18, %struct.pbuf* nonnull %54) #8, !dbg !2849
  br label %57, !dbg !2851

; <label>:57:                                     ; preds = %53, %56
  store %struct.pbuf* %18, %struct.pbuf** %6, align 8, !dbg !2852, !tbaa !531
  br label %61, !dbg !2853

; <label>:58:                                     ; preds = %46, %49, %31
  %59 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2772, !tbaa !531
  %60 = icmp eq %struct.pbuf* %59, null, !dbg !2773
  br i1 %60, label %61, label %17, !dbg !2774

; <label>:61:                                     ; preds = %58, %49, %28, %5, %57
  %62 = phi i8 [ -5, %57 ], [ 0, %5 ], [ 0, %58 ], [ -13, %49 ], [ %30, %28 ], !dbg !2854
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2855
  ret i8 %62, !dbg !2855
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_txnow() local_unnamed_addr #0 !dbg !2856 {
  %1 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2860, !tbaa !495
  %2 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2863
  br i1 %2, label %15, label %3, !dbg !2864

; <label>:3:                                      ; preds = %0, %11
  %4 = phi %struct.tcp_pcb* [ %13, %11 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !2865
  %6 = load i16, i16* %5, align 2, !dbg !2865, !tbaa !507
  %7 = trunc i16 %6 to i8, !dbg !2868
  %8 = icmp slt i8 %7, 0, !dbg !2868
  br i1 %8, label %9, label %11, !dbg !2869

; <label>:9:                                      ; preds = %3
  %10 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %4) #8, !dbg !2870
  br label %11, !dbg !2872

; <label>:11:                                     ; preds = %3, %9
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 6, !dbg !2873
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !2860, !tbaa !495
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !2863
  br i1 %14, label %15, label %3, !dbg !2864, !llvm.loop !2874

; <label>:15:                                     ; preds = %11, %0
  ret void, !dbg !2876
}

; Function Attrs: noredzone
declare dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf**) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_recv_null(i8* nocapture readnone, %struct.tcp_pcb*, %struct.pbuf*, i8 signext) #0 !dbg !2797 {
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2881
  br i1 %5, label %6, label %7, !dbg !2884

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !2885
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2888
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2888
  unreachable, !dbg !2888

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %2, null, !dbg !2892
  br i1 %8, label %13, label %9, !dbg !2893

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !2894
  %11 = load i16, i16* %10, align 8, !dbg !2894, !tbaa !2811
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %1, i16 zeroext %11) #9, !dbg !2895
  %12 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #8, !dbg !2896
  br label %25, !dbg !2897

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8 %3, 0, !dbg !2898
  br i1 %14, label %15, label %25, !dbg !2900

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !2904
  %17 = load i32, i32* %16, align 8, !dbg !2904, !tbaa !451
  %18 = icmp eq i32 %17, 1, !dbg !2905
  br i1 %18, label %23, label %19, !dbg !2906

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !2907
  %21 = load i16, i16* %20, align 2, !dbg !2907, !tbaa !507
  %22 = or i16 %21, 16, !dbg !2907
  store i16 %22, i16* %20, align 2, !dbg !2907, !tbaa !507
  br label %23, !dbg !2908

; <label>:23:                                     ; preds = %15, %19
  %24 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %1, i8 zeroext 1) #8, !dbg !2909
  br label %25, !dbg !2910

; <label>:25:                                     ; preds = %9, %13, %23
  %26 = phi i8 [ %24, %23 ], [ 0, %13 ], [ 0, %9 ], !dbg !2911
  ret i8 %26, !dbg !2912
}

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !878 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !2914
  br i1 %2, label %11, label %3, !dbg !2915

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %0, i64 0, i32 1, !dbg !2916
  %5 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !2916, !tbaa !886
  %6 = icmp eq %struct.pbuf* %5, null, !dbg !2917
  br i1 %6, label %9, label %7, !dbg !2918

; <label>:7:                                      ; preds = %3
  %8 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #8, !dbg !2919
  br label %9, !dbg !2920

; <label>:9:                                      ; preds = %3, %7
  %10 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !2921
  tail call void @memp_free(i32 3, i8* %10) #8, !dbg !2922
  br label %11, !dbg !2923

; <label>:11:                                     ; preds = %1, %9
  ret void, !dbg !2924
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_setprio(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !2925 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2933
  br i1 %3, label %4, label %5, !dbg !2936

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !2937
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2940
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2940
  unreachable, !dbg !2940

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !2944
  store i8 %1, i8* %6, align 4, !dbg !2945, !tbaa !2044
  ret void, !dbg !2946
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_seg* @tcp_seg_copy(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !2947 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !2954
  br i1 %2, label %3, label %4, !dbg !2957

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !2958
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !2961
  tail call void @ukplat_terminate(i32 3) #10, !dbg !2961
  unreachable, !dbg !2961

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @memp_malloc(i32 3) #8, !dbg !2965
  %6 = icmp eq i8* %5, null, !dbg !2966
  br i1 %6, label %14, label %7, !dbg !2968

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8* %5 to %struct.tcp_seg*, !dbg !2969
  %9 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !2971
  %10 = tail call i8* @memcpy(i8* nonnull %5, i8* %9, i64 32) #8, !dbg !2971
  %11 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !2972
  %12 = bitcast i8* %11 to %struct.pbuf**, !dbg !2972
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !2972, !tbaa !886
  tail call void @pbuf_ref(%struct.pbuf* %13) #8, !dbg !2973
  br label %14, !dbg !2974

; <label>:14:                                     ; preds = %4, %7
  %15 = phi %struct.tcp_seg* [ %8, %7 ], [ null, %4 ], !dbg !2975
  ret %struct.tcp_seg* %15, !dbg !2976
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_alloc(i8 zeroext) local_unnamed_addr #0 !dbg !2977 {
  %2 = tail call i8* @memp_malloc(i32 1) #8, !dbg !2984
  %3 = icmp eq i8* %2, null, !dbg !2986
  br i1 %3, label %4, label %147, !dbg !2988

; <label>:4:                                      ; preds = %1
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2989, !tbaa !495
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !2998
  br i1 %6, label %20, label %7, !dbg !2999

; <label>:7:                                      ; preds = %4, %18
  %8 = phi %struct.tcp_pcb* [ %10, %18 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 6, !dbg !3000
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** %9, align 8, !dbg !3000, !tbaa !527
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 12, !dbg !3002
  %12 = load i16, i16* %11, align 2, !dbg !3002, !tbaa !507
  %13 = and i16 %12, 8, !dbg !3004
  %14 = icmp eq i16 %13, 0, !dbg !3004
  br i1 %14, label %18, label %15, !dbg !3005

; <label>:15:                                     ; preds = %7
  %16 = and i16 %12, -9, !dbg !3006
  store i16 %16, i16* %11, align 2, !dbg !3006, !tbaa !507
  %17 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %8) #8, !dbg !3009
  br label %18, !dbg !3010

; <label>:18:                                     ; preds = %15, %7
  %19 = icmp eq %struct.tcp_pcb* %10, null, !dbg !2998
  br i1 %19, label %20, label %7, !dbg !2999, !llvm.loop !3011

; <label>:20:                                     ; preds = %18, %4
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !3023, !tbaa !495
  %22 = icmp eq %struct.tcp_pcb* %21, null, !dbg !3026
  br i1 %22, label %41, label %23, !dbg !3027

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* @tcp_ticks, align 4, !tbaa !411
  br label %25, !dbg !3027

; <label>:25:                                     ; preds = %25, %23
  %26 = phi %struct.tcp_pcb* [ %21, %23 ], [ %36, %25 ]
  %27 = phi i32 [ 0, %23 ], [ %34, %25 ]
  %28 = phi %struct.tcp_pcb* [ null, %23 ], [ %33, %25 ]
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %26, i64 0, i32 16, !dbg !3028
  %30 = load i32, i32* %29, align 8, !dbg !3028, !tbaa !798
  %31 = sub i32 %24, %30, !dbg !3031
  %32 = icmp ult i32 %31, %27, !dbg !3032
  %33 = select i1 %32, %struct.tcp_pcb* %28, %struct.tcp_pcb* %26, !dbg !3033
  %34 = select i1 %32, i32 %27, i32 %31, !dbg !3033
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %26, i64 0, i32 6, !dbg !3034
  %36 = load %struct.tcp_pcb*, %struct.tcp_pcb** %35, align 8, !dbg !3023, !tbaa !495
  %37 = icmp eq %struct.tcp_pcb* %36, null, !dbg !3026
  br i1 %37, label %38, label %25, !dbg !3027, !llvm.loop !3035

; <label>:38:                                     ; preds = %25
  %39 = icmp eq %struct.tcp_pcb* %33, null, !dbg !3038
  br i1 %39, label %41, label %40, !dbg !3040

; <label>:40:                                     ; preds = %38
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %33, i32 1) #8, !dbg !3044
  br label %41, !dbg !3045

; <label>:41:                                     ; preds = %20, %38, %40
  %42 = tail call i8* @memp_malloc(i32 1) #8, !dbg !3046
  %43 = icmp eq i8* %42, null, !dbg !3047
  br i1 %43, label %44, label %147, !dbg !3049

; <label>:44:                                     ; preds = %41
  %45 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3061, !tbaa !495
  %46 = icmp eq %struct.tcp_pcb* %45, null, !dbg !3067
  br i1 %46, label %72, label %47, !dbg !3068

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* @tcp_ticks, align 4
  br label %49, !dbg !3068

; <label>:49:                                     ; preds = %63, %47
  %50 = phi %struct.tcp_pcb* [ %45, %47 ], [ %67, %63 ]
  %51 = phi i32 [ 0, %47 ], [ %65, %63 ]
  %52 = phi %struct.tcp_pcb* [ null, %47 ], [ %64, %63 ]
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 8, !dbg !3069
  %54 = load i32, i32* %53, align 8, !dbg !3069, !tbaa !451
  %55 = icmp eq i32 %54, 9, !dbg !3072
  br i1 %55, label %56, label %63, !dbg !3073

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 16, !dbg !3074
  %58 = load i32, i32* %57, align 8, !dbg !3074, !tbaa !798
  %59 = sub i32 %48, %58, !dbg !3077
  %60 = icmp ult i32 %59, %51, !dbg !3078
  %61 = select i1 %60, %struct.tcp_pcb* %52, %struct.tcp_pcb* %50, !dbg !3079
  %62 = select i1 %60, i32 %51, i32 %59, !dbg !3079
  br label %63, !dbg !3079

; <label>:63:                                     ; preds = %56, %49
  %64 = phi %struct.tcp_pcb* [ %52, %49 ], [ %61, %56 ], !dbg !3080
  %65 = phi i32 [ %51, %49 ], [ %62, %56 ], !dbg !3080
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 6, !dbg !3081
  %67 = load %struct.tcp_pcb*, %struct.tcp_pcb** %66, align 8, !dbg !3061, !tbaa !495
  %68 = icmp eq %struct.tcp_pcb* %67, null, !dbg !3067
  br i1 %68, label %69, label %49, !dbg !3068, !llvm.loop !3082

; <label>:69:                                     ; preds = %63
  %70 = icmp eq %struct.tcp_pcb* %64, null, !dbg !3085
  br i1 %70, label %72, label %71, !dbg !3087

; <label>:71:                                     ; preds = %69
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %64, i32 0) #8, !dbg !3088
  br label %72, !dbg !3090

; <label>:72:                                     ; preds = %44, %69, %71
  %73 = tail call i8* @memp_malloc(i32 1) #8, !dbg !3091
  %74 = icmp eq i8* %73, null, !dbg !3092
  br i1 %74, label %75, label %147, !dbg !3094

; <label>:75:                                     ; preds = %72
  %76 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3098, !tbaa !495
  %77 = icmp eq %struct.tcp_pcb* %76, null, !dbg !3102
  br i1 %77, label %103, label %78, !dbg !3103

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* @tcp_ticks, align 4
  br label %80, !dbg !3103

; <label>:80:                                     ; preds = %94, %78
  %81 = phi %struct.tcp_pcb* [ %76, %78 ], [ %98, %94 ]
  %82 = phi i32 [ 0, %78 ], [ %96, %94 ]
  %83 = phi %struct.tcp_pcb* [ null, %78 ], [ %95, %94 ]
  %84 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 8, !dbg !3104
  %85 = load i32, i32* %84, align 8, !dbg !3104, !tbaa !451
  %86 = icmp eq i32 %85, 8, !dbg !3105
  br i1 %86, label %87, label %94, !dbg !3106

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 16, !dbg !3107
  %89 = load i32, i32* %88, align 8, !dbg !3107, !tbaa !798
  %90 = sub i32 %79, %89, !dbg !3108
  %91 = icmp ult i32 %90, %82, !dbg !3109
  %92 = select i1 %91, %struct.tcp_pcb* %83, %struct.tcp_pcb* %81, !dbg !3110
  %93 = select i1 %91, i32 %82, i32 %90, !dbg !3110
  br label %94, !dbg !3110

; <label>:94:                                     ; preds = %87, %80
  %95 = phi %struct.tcp_pcb* [ %83, %80 ], [ %92, %87 ], !dbg !3111
  %96 = phi i32 [ %82, %80 ], [ %93, %87 ], !dbg !3111
  %97 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 6, !dbg !3112
  %98 = load %struct.tcp_pcb*, %struct.tcp_pcb** %97, align 8, !dbg !3098, !tbaa !495
  %99 = icmp eq %struct.tcp_pcb* %98, null, !dbg !3102
  br i1 %99, label %100, label %80, !dbg !3103, !llvm.loop !3082

; <label>:100:                                    ; preds = %94
  %101 = icmp eq %struct.tcp_pcb* %95, null, !dbg !3113
  br i1 %101, label %103, label %102, !dbg !3114

; <label>:102:                                    ; preds = %100
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %95, i32 0) #8, !dbg !3115
  br label %103, !dbg !3116

; <label>:103:                                    ; preds = %75, %100, %102
  %104 = tail call i8* @memp_malloc(i32 1) #8, !dbg !3117
  %105 = icmp eq i8* %104, null, !dbg !3118
  br i1 %105, label %106, label %147, !dbg !3120

; <label>:106:                                    ; preds = %103
  %107 = icmp ult i8 %0, 127, !dbg !3133
  %108 = select i1 %107, i8 %0, i8 127, !dbg !3133
  %109 = icmp eq i8 %108, 0, !dbg !3135
  br i1 %109, label %150, label %110, !dbg !3137

; <label>:110:                                    ; preds = %106
  %111 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3141, !tbaa !495
  %112 = icmp eq %struct.tcp_pcb* %111, null, !dbg !3144
  br i1 %112, label %150, label %113, !dbg !3145

; <label>:113:                                    ; preds = %110
  %114 = add nsw i8 %108, -1, !dbg !3146
  %115 = load i32, i32* @tcp_ticks, align 4
  br label %116, !dbg !3145

; <label>:116:                                    ; preds = %137, %113
  %117 = phi %struct.tcp_pcb* [ %111, %113 ], [ %142, %137 ]
  %118 = phi i8 [ %114, %113 ], [ %140, %137 ]
  %119 = phi i32 [ 0, %113 ], [ %139, %137 ]
  %120 = phi %struct.tcp_pcb* [ null, %113 ], [ %138, %137 ]
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 9, !dbg !3147
  %122 = load i8, i8* %121, align 4, !dbg !3147, !tbaa !2044
  %123 = icmp ult i8 %122, %118, !dbg !3150
  br i1 %123, label %124, label %128, !dbg !3151

; <label>:124:                                    ; preds = %116
  %125 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 16
  %126 = load i32, i32* %125, align 8, !dbg !3152, !tbaa !798
  %127 = sub i32 %115, %126, !dbg !3154
  br label %135, !dbg !3151

; <label>:128:                                    ; preds = %116
  %129 = icmp eq i8 %122, %118, !dbg !3155
  br i1 %129, label %130, label %137, !dbg !3156

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 16, !dbg !3157
  %132 = load i32, i32* %131, align 8, !dbg !3157, !tbaa !798
  %133 = sub i32 %115, %132, !dbg !3158
  %134 = icmp ult i32 %133, %119, !dbg !3159
  br i1 %134, label %137, label %135, !dbg !3160

; <label>:135:                                    ; preds = %130, %124
  %136 = phi i32 [ %127, %124 ], [ %133, %130 ], !dbg !3154
  br label %137, !dbg !3161

; <label>:137:                                    ; preds = %135, %130, %128
  %138 = phi %struct.tcp_pcb* [ %117, %135 ], [ %120, %130 ], [ %120, %128 ], !dbg !3162
  %139 = phi i32 [ %136, %135 ], [ %119, %130 ], [ %119, %128 ], !dbg !3162
  %140 = phi i8 [ %122, %135 ], [ %118, %130 ], [ %118, %128 ], !dbg !3162
  %141 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 6, !dbg !3163
  %142 = load %struct.tcp_pcb*, %struct.tcp_pcb** %141, align 8, !dbg !3141, !tbaa !495
  %143 = icmp eq %struct.tcp_pcb* %142, null, !dbg !3144
  br i1 %143, label %144, label %116, !dbg !3145, !llvm.loop !3164

; <label>:144:                                    ; preds = %137
  %145 = icmp eq %struct.tcp_pcb* %138, null, !dbg !3167
  br i1 %145, label %150, label %146, !dbg !3169

; <label>:146:                                    ; preds = %144
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %138, i32 1) #8, !dbg !3173
  br label %150, !dbg !3174

; <label>:147:                                    ; preds = %1, %41, %72, %103
  %148 = phi i8* [ %104, %103 ], [ %73, %72 ], [ %42, %41 ], [ %2, %1 ]
  %149 = bitcast i8* %148 to %struct.tcp_pcb*, !dbg !3175
  br label %154, !dbg !3176

; <label>:150:                                    ; preds = %146, %144, %110, %106
  %151 = tail call i8* @memp_malloc(i32 1) #8, !dbg !3177
  %152 = bitcast i8* %151 to %struct.tcp_pcb*, !dbg !3175
  %153 = icmp eq i8* %151, null, !dbg !3178
  br i1 %153, label %187, label %154, !dbg !3176

; <label>:154:                                    ; preds = %147, %150
  %155 = phi %struct.tcp_pcb* [ %149, %147 ], [ %152, %150 ]
  %156 = phi i8* [ %148, %147 ], [ %151, %150 ]
  %157 = tail call i8* @memset(i8* nonnull %156, i32 0, i64 280) #8, !dbg !3180
  %158 = getelementptr inbounds i8, i8* %156, i64 76, !dbg !3182
  store i8 %0, i8* %158, align 4, !dbg !3183, !tbaa !2044
  %159 = getelementptr inbounds i8, i8* %156, i64 168, !dbg !3184
  %160 = bitcast i8* %159 to i32*, !dbg !3184
  store i32 1048576, i32* %160, align 8, !dbg !3185, !tbaa !3186
  %161 = getelementptr inbounds i8, i8* %156, i64 100, !dbg !3187
  %162 = bitcast i8* %161 to i32*, !dbg !3187
  store i32 65535, i32* %162, align 4, !dbg !3188, !tbaa !2182
  %163 = getelementptr inbounds i8, i8* %156, i64 96, !dbg !3189
  %164 = bitcast i8* %163 to i32*, !dbg !3189
  store i32 65535, i32* %164, align 8, !dbg !3190, !tbaa !1163
  %165 = getelementptr inbounds i8, i8* %156, i64 51, !dbg !3191
  store i8 -1, i8* %165, align 1, !dbg !3192, !tbaa !2056
  %166 = getelementptr inbounds i8, i8* %156, i64 110, !dbg !3193
  %167 = bitcast i8* %166 to i16*, !dbg !3193
  store i16 536, i16* %167, align 2, !dbg !3194, !tbaa !771
  %168 = getelementptr inbounds i8, i8* %156, i64 124, !dbg !3195
  %169 = bitcast i8* %168 to i16*, !dbg !3195
  store i16 6, i16* %169, align 4, !dbg !3196, !tbaa !732
  %170 = getelementptr inbounds i8, i8* %156, i64 122, !dbg !3197
  %171 = bitcast i8* %170 to i16*, !dbg !3197
  store i16 6, i16* %171, align 2, !dbg !3198, !tbaa !753
  %172 = getelementptr inbounds i8, i8* %156, i64 108, !dbg !3199
  %173 = bitcast i8* %172 to i16*, !dbg !3199
  store i16 -1, i16* %173, align 4, !dbg !3200, !tbaa !723
  %174 = getelementptr inbounds i8, i8* %156, i64 132, !dbg !3201
  %175 = bitcast i8* %174 to i32*, !dbg !3201
  store i32 1, i32* %175, align 4, !dbg !3202, !tbaa !765
  %176 = load i32, i32* @tcp_ticks, align 4, !dbg !3203, !tbaa !411
  %177 = getelementptr inbounds i8, i8* %156, i64 88, !dbg !3204
  %178 = bitcast i8* %177 to i32*, !dbg !3204
  store i32 %176, i32* %178, align 8, !dbg !3205, !tbaa !798
  %179 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !3206, !tbaa !479
  %180 = getelementptr inbounds i8, i8* %156, i64 86, !dbg !3207
  store i8 %179, i8* %180, align 2, !dbg !3208, !tbaa !500
  %181 = getelementptr inbounds i8, i8* %156, i64 136, !dbg !3209
  %182 = bitcast i8* %181 to i32*, !dbg !3209
  store i32 1048576, i32* %182, align 8, !dbg !3210, !tbaa !3211
  %183 = getelementptr inbounds i8, i8* %156, i64 232, !dbg !3212
  %184 = bitcast i8* %183 to i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)**, !dbg !3212
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* @tcp_recv_null, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %184, align 8, !dbg !3213, !tbaa !2794
  %185 = getelementptr inbounds i8, i8* %156, i64 264, !dbg !3214
  %186 = bitcast i8* %185 to i32*, !dbg !3214
  store i32 7200000, i32* %186, align 8, !dbg !3215, !tbaa !816
  br label %187, !dbg !3216

; <label>:187:                                    ; preds = %150, %154
  %188 = phi %struct.tcp_pcb* [ %152, %150 ], [ %155, %154 ]
  ret %struct.tcp_pcb* %188, !dbg !3217
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new() local_unnamed_addr #0 !dbg !3218 {
  %1 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #9, !dbg !3221
  ret %struct.tcp_pcb* %1, !dbg !3222
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !3223 {
  %2 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #9, !dbg !3228
  %3 = icmp eq %struct.tcp_pcb* %2, null, !dbg !3230
  br i1 %3, label %7, label %4, !dbg !3232

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 0, i32 1, !dbg !3233
  store i8 %0, i8* %5, align 4, !dbg !3233, !tbaa !1889
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 1, i32 1, !dbg !3236
  store i8 %0, i8* %6, align 4, !dbg !3236, !tbaa !2330
  br label %7, !dbg !3238

; <label>:7:                                      ; preds = %1, %4
  ret %struct.tcp_pcb* %2, !dbg !3239
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_arg(%struct.tcp_pcb*, i8*) local_unnamed_addr #0 !dbg !3240 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3248
  br i1 %3, label %6, label %4, !dbg !3250

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !3251
  store i8* %1, i8** %5, align 8, !dbg !3253, !tbaa !971
  br label %6, !dbg !3254

; <label>:6:                                      ; preds = %2, %4
  ret void, !dbg !3255
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recv(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*) local_unnamed_addr #0 !dbg !3256 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3264
  br i1 %3, label %11, label %4, !dbg !3266

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3267
  %6 = load i32, i32* %5, align 8, !dbg !3267, !tbaa !451
  %7 = icmp eq i32 %6, 1, !dbg !3267
  br i1 %7, label %8, label %9, !dbg !3271

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !3272
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3275
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3275
  unreachable, !dbg !3275

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50, !dbg !3279
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %10, align 8, !dbg !3280, !tbaa !2794
  br label %11, !dbg !3281

; <label>:11:                                     ; preds = %2, %9
  ret void, !dbg !3282
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_sent(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i16)*) local_unnamed_addr #0 !dbg !3283 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3291
  br i1 %3, label %11, label %4, !dbg !3293

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3294
  %6 = load i32, i32* %5, align 8, !dbg !3294, !tbaa !451
  %7 = icmp eq i32 %6, 1, !dbg !3294
  br i1 %7, label %8, label %9, !dbg !3298

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !3299
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3302
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3302
  unreachable, !dbg !3302

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 49, !dbg !3306
  store i8 (i8*, %struct.tcp_pcb*, i16)* %1, i8 (i8*, %struct.tcp_pcb*, i16)** %10, align 8, !dbg !3307, !tbaa !3308
  br label %11, !dbg !3309

; <label>:11:                                     ; preds = %2, %9
  ret void, !dbg !3310
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_err(%struct.tcp_pcb*, void (i8*, i8)*) local_unnamed_addr #0 !dbg !3311 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3319
  br i1 %3, label %11, label %4, !dbg !3321

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3322
  %6 = load i32, i32* %5, align 8, !dbg !3322, !tbaa !451
  %7 = icmp eq i32 %6, 1, !dbg !3322
  br i1 %7, label %8, label %9, !dbg !3326

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !3327
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3330
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3330
  unreachable, !dbg !3330

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !3334
  store void (i8*, i8)* %1, void (i8*, i8)** %10, align 8, !dbg !3335, !tbaa !917
  br label %11, !dbg !3336

; <label>:11:                                     ; preds = %2, %9
  ret void, !dbg !3337
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_accept(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !3338 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3349
  br i1 %3, label %11, label %4, !dbg !3350

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3351
  %6 = load i32, i32* %5, align 8, !dbg !3351, !tbaa !451
  %7 = icmp eq i32 %6, 1, !dbg !3352
  br i1 %7, label %8, label %11, !dbg !3353

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3355
  %10 = bitcast i16* %9 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !3355
  store i8 (i8*, %struct.tcp_pcb*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, i8)** %10, align 8, !dbg !3356, !tbaa !2111
  br label %11, !dbg !3357

; <label>:11:                                     ; preds = %2, %8, %4
  ret void, !dbg !3358
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_poll(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*)*, i8 zeroext) local_unnamed_addr #0 !dbg !3359 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3369
  br i1 %4, label %5, label %6, !dbg !3372

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !3373
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3376
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3376
  unreachable, !dbg !3376

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3380
  %8 = load i32, i32* %7, align 8, !dbg !3380, !tbaa !451
  %9 = icmp eq i32 %8, 1, !dbg !3380
  br i1 %9, label %10, label %11, !dbg !3383

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !3384
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !3387
  tail call void @ukplat_terminate(i32 3) #10, !dbg !3387
  unreachable, !dbg !3387

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 52, !dbg !3391
  store i8 (i8*, %struct.tcp_pcb*)* %1, i8 (i8*, %struct.tcp_pcb*)** %12, align 8, !dbg !3392, !tbaa !1007
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 14, !dbg !3393
  store i8 %2, i8* %13, align 1, !dbg !3394, !tbaa !998
  ret void, !dbg !3395
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr*, %struct.netif*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !3396 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !3405
  br i1 %3, label %221, label %4, !dbg !3407

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !3405
  %6 = load i8, i8* %5, align 4, !dbg !3405, !tbaa !1791
  %7 = icmp eq i8 %6, 6, !dbg !3405
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3405
  %9 = load i32, i32* %8, align 4, !dbg !3405, !tbaa !479
  %10 = icmp eq i32 %9, 0, !dbg !3405
  br i1 %7, label %11, label %24, !dbg !3407

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %25, !dbg !3405

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3405
  %14 = load i32, i32* %13, align 4, !dbg !3405, !tbaa !479
  %15 = icmp eq i32 %14, 0, !dbg !3405
  br i1 %15, label %16, label %25, !dbg !3405

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3405
  %18 = load i32, i32* %17, align 4, !dbg !3405, !tbaa !479
  %19 = icmp eq i32 %18, 0, !dbg !3405
  br i1 %19, label %20, label %25, !dbg !3405

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3405
  %22 = load i32, i32* %21, align 4, !dbg !3405, !tbaa !479
  %23 = icmp eq i32 %22, 0, !dbg !3405
  br i1 %23, label %221, label %25, !dbg !3405

; <label>:24:                                     ; preds = %4
  br i1 %10, label %221, label %25, !dbg !3407

; <label>:25:                                     ; preds = %11, %12, %16, %20, %24
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3408, !tbaa !495
  %27 = icmp eq %struct.tcp_pcb* %26, null, !dbg !3425
  br i1 %27, label %78, label %28, !dbg !3426

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %33, !dbg !3426

; <label>:33:                                     ; preds = %76, %28
  %34 = phi i8 [ %6, %28 ], [ %77, %76 ], !dbg !3427
  %35 = phi %struct.tcp_pcb* [ %26, %28 ], [ %74, %76 ]
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 1, !dbg !3427
  %37 = load i8, i8* %36, align 4, !dbg !3427, !tbaa !1889
  %38 = icmp eq i8 %37, %34, !dbg !3427
  br i1 %38, label %39, label %70, !dbg !3428

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i8 %34, 6, !dbg !3427
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3427
  %42 = load i32, i32* %41, align 8, !dbg !3427, !tbaa !479
  %43 = load i32, i32* %8, align 4, !dbg !3427, !tbaa !479
  %44 = icmp eq i32 %42, %43, !dbg !3427
  br i1 %40, label %45, label %66, !dbg !3428

; <label>:45:                                     ; preds = %39
  br i1 %44, label %46, label %70, !dbg !3427

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3427
  %48 = load i32, i32* %47, align 4, !dbg !3427, !tbaa !479
  %49 = load i32, i32* %29, align 4, !dbg !3427, !tbaa !479
  %50 = icmp eq i32 %48, %49, !dbg !3427
  br i1 %50, label %51, label %70, !dbg !3427

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3427
  %53 = load i32, i32* %52, align 8, !dbg !3427, !tbaa !479
  %54 = load i32, i32* %30, align 4, !dbg !3427, !tbaa !479
  %55 = icmp eq i32 %53, %54, !dbg !3427
  br i1 %55, label %56, label %70, !dbg !3427

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3427
  %58 = load i32, i32* %57, align 4, !dbg !3427, !tbaa !479
  %59 = load i32, i32* %31, align 4, !dbg !3427, !tbaa !479
  %60 = icmp eq i32 %58, %59, !dbg !3427
  br i1 %60, label %61, label %70, !dbg !3427

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3427
  %63 = load i8, i8* %62, align 8, !dbg !3427, !tbaa !479
  %64 = load i8, i8* %32, align 4, !dbg !3427, !tbaa !479
  %65 = icmp eq i8 %63, %64, !dbg !3427
  br i1 %65, label %67, label %70, !dbg !3427

; <label>:66:                                     ; preds = %39
  br i1 %44, label %67, label %70, !dbg !3428

; <label>:67:                                     ; preds = %66, %61
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 6, !dbg !3429
  %69 = load %struct.tcp_pcb*, %struct.tcp_pcb** %68, align 8, !dbg !3429, !tbaa !527
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %35, i32 1) #8, !dbg !3433
  br label %73, !dbg !3434

; <label>:70:                                     ; preds = %66, %61, %56, %51, %46, %45, %33
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 6, !dbg !3435
  %72 = load %struct.tcp_pcb*, %struct.tcp_pcb** %71, align 8, !dbg !3435, !tbaa !527
  br label %73

; <label>:73:                                     ; preds = %70, %67
  %74 = phi %struct.tcp_pcb* [ %72, %70 ], [ %69, %67 ], !dbg !3437
  %75 = icmp eq %struct.tcp_pcb* %74, null, !dbg !3425
  br i1 %75, label %78, label %76, !dbg !3426, !llvm.loop !3438

; <label>:76:                                     ; preds = %73
  %77 = load i8, i8* %5, align 4, !dbg !3427, !tbaa !1791
  br label %33, !dbg !3426

; <label>:78:                                     ; preds = %73, %25
  %79 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !3441, !tbaa !495
  %80 = icmp eq %struct.tcp_pcb* %79, null, !dbg !3446
  br i1 %80, label %129, label %81, !dbg !3447

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %83 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %85 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %86, !dbg !3447

; <label>:86:                                     ; preds = %126, %81
  %87 = phi %struct.tcp_pcb* [ %79, %81 ], [ %127, %126 ]
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 1, !dbg !3448
  %89 = load i8, i8* %88, align 4, !dbg !3448, !tbaa !1889
  %90 = load i8, i8* %5, align 4, !dbg !3448, !tbaa !1791
  %91 = icmp eq i8 %89, %90, !dbg !3448
  br i1 %91, label %92, label %123, !dbg !3449

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i8 %89, 6, !dbg !3448
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3448
  %95 = load i32, i32* %94, align 8, !dbg !3448, !tbaa !479
  %96 = load i32, i32* %8, align 4, !dbg !3448, !tbaa !479
  %97 = icmp eq i32 %95, %96, !dbg !3448
  br i1 %93, label %98, label %119, !dbg !3449

; <label>:98:                                     ; preds = %92
  br i1 %97, label %99, label %123, !dbg !3448

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3448
  %101 = load i32, i32* %100, align 4, !dbg !3448, !tbaa !479
  %102 = load i32, i32* %82, align 4, !dbg !3448, !tbaa !479
  %103 = icmp eq i32 %101, %102, !dbg !3448
  br i1 %103, label %104, label %123, !dbg !3448

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3448
  %106 = load i32, i32* %105, align 8, !dbg !3448, !tbaa !479
  %107 = load i32, i32* %83, align 4, !dbg !3448, !tbaa !479
  %108 = icmp eq i32 %106, %107, !dbg !3448
  br i1 %108, label %109, label %123, !dbg !3448

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3448
  %111 = load i32, i32* %110, align 4, !dbg !3448, !tbaa !479
  %112 = load i32, i32* %84, align 4, !dbg !3448, !tbaa !479
  %113 = icmp eq i32 %111, %112, !dbg !3448
  br i1 %113, label %114, label %123, !dbg !3448

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3448
  %116 = load i8, i8* %115, align 8, !dbg !3448, !tbaa !479
  %117 = load i8, i8* %85, align 4, !dbg !3448, !tbaa !479
  %118 = icmp eq i8 %116, %117, !dbg !3448
  br i1 %118, label %120, label %123, !dbg !3448

; <label>:119:                                    ; preds = %92
  br i1 %97, label %120, label %123, !dbg !3449

; <label>:120:                                    ; preds = %119, %114
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !3450
  %122 = load %struct.tcp_pcb*, %struct.tcp_pcb** %121, align 8, !dbg !3450, !tbaa !527
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %87, i32 1) #8, !dbg !3454
  br label %126, !dbg !3455

; <label>:123:                                    ; preds = %119, %114, %109, %104, %99, %98, %86
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !3456
  %125 = load %struct.tcp_pcb*, %struct.tcp_pcb** %124, align 8, !dbg !3456, !tbaa !527
  br label %126

; <label>:126:                                    ; preds = %123, %120
  %127 = phi %struct.tcp_pcb* [ %125, %123 ], [ %122, %120 ], !dbg !3457
  %128 = icmp eq %struct.tcp_pcb* %127, null, !dbg !3446
  br i1 %128, label %129, label %86, !dbg !3447, !llvm.loop !3438

; <label>:129:                                    ; preds = %126, %78
  %130 = icmp eq %struct.ip_addr* %1, null, !dbg !3458
  br i1 %130, label %221, label %131, !dbg !3460

; <label>:131:                                    ; preds = %129
  %132 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !3458
  %133 = load i8, i8* %132, align 4, !dbg !3458, !tbaa !1791
  %134 = icmp eq i8 %133, 6, !dbg !3458
  %135 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3458
  %136 = load i32, i32* %135, align 4, !dbg !3458, !tbaa !479
  %137 = icmp eq i32 %136, 0, !dbg !3458
  br i1 %134, label %138, label %151, !dbg !3460

; <label>:138:                                    ; preds = %131
  br i1 %137, label %139, label %152, !dbg !3458

; <label>:139:                                    ; preds = %138
  %140 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3458
  %141 = load i32, i32* %140, align 4, !dbg !3458, !tbaa !479
  %142 = icmp eq i32 %141, 0, !dbg !3458
  br i1 %142, label %143, label %152, !dbg !3458

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3458
  %145 = load i32, i32* %144, align 4, !dbg !3458, !tbaa !479
  %146 = icmp eq i32 %145, 0, !dbg !3458
  br i1 %146, label %147, label %152, !dbg !3458

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3458
  %149 = load i32, i32* %148, align 4, !dbg !3458, !tbaa !479
  %150 = icmp eq i32 %149, 0, !dbg !3458
  br i1 %150, label %221, label %152, !dbg !3458

; <label>:151:                                    ; preds = %131
  br i1 %137, label %221, label %152, !dbg !3460

; <label>:152:                                    ; preds = %151, %147, %143, %139, %138
  %153 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !3462, !tbaa !479
  %154 = icmp eq %struct.tcp_pcb_listen* %153, null, !dbg !3466
  br i1 %154, label %221, label %155, !dbg !3467

; <label>:155:                                    ; preds = %152
  %156 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %157 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %158 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %159 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %160 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %161 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %162 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %163 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %164, !dbg !3467

; <label>:164:                                    ; preds = %155, %217
  %165 = phi %struct.tcp_pcb_listen* [ %153, %155 ], [ %219, %217 ]
  %166 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 1, !dbg !3468
  %167 = load i8, i8* %166, align 4, !dbg !3468, !tbaa !2023
  %168 = load i8, i8* %5, align 4, !dbg !3468, !tbaa !1791
  %169 = icmp eq i8 %167, %168, !dbg !3468
  br i1 %169, label %170, label %217, !dbg !3471

; <label>:170:                                    ; preds = %164
  %171 = icmp eq i8 %167, 6, !dbg !3468
  %172 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3468
  %173 = load i32, i32* %172, align 8, !dbg !3468, !tbaa !479
  %174 = load i32, i32* %8, align 4, !dbg !3468, !tbaa !479
  %175 = icmp eq i32 %173, %174, !dbg !3468
  br i1 %171, label %176, label %197, !dbg !3471

; <label>:176:                                    ; preds = %170
  br i1 %175, label %177, label %217, !dbg !3468

; <label>:177:                                    ; preds = %176
  %178 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3468
  %179 = load i32, i32* %178, align 4, !dbg !3468, !tbaa !479
  %180 = load i32, i32* %156, align 4, !dbg !3468, !tbaa !479
  %181 = icmp eq i32 %179, %180, !dbg !3468
  br i1 %181, label %182, label %217, !dbg !3468

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3468
  %184 = load i32, i32* %183, align 8, !dbg !3468, !tbaa !479
  %185 = load i32, i32* %161, align 4, !dbg !3468, !tbaa !479
  %186 = icmp eq i32 %184, %185, !dbg !3468
  br i1 %186, label %187, label %217, !dbg !3468

; <label>:187:                                    ; preds = %182
  %188 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3468
  %189 = load i32, i32* %188, align 4, !dbg !3468, !tbaa !479
  %190 = load i32, i32* %162, align 4, !dbg !3468, !tbaa !479
  %191 = icmp eq i32 %189, %190, !dbg !3468
  br i1 %191, label %192, label %217, !dbg !3468

; <label>:192:                                    ; preds = %187
  %193 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3468
  %194 = load i8, i8* %193, align 8, !dbg !3468, !tbaa !479
  %195 = load i8, i8* %163, align 4, !dbg !3468, !tbaa !479
  %196 = icmp eq i8 %194, %195, !dbg !3468
  br i1 %196, label %198, label %217, !dbg !3468

; <label>:197:                                    ; preds = %170
  br i1 %175, label %198, label %217, !dbg !3471

; <label>:198:                                    ; preds = %197, %192
  %199 = load i8, i8* %132, align 4, !dbg !3472, !tbaa !1791
  store i8 %199, i8* %166, align 4, !dbg !3472, !tbaa !2023
  %200 = load i8, i8* %132, align 4, !dbg !3476, !tbaa !1791
  %201 = icmp eq i8 %200, 6, !dbg !3476
  %202 = load i32, i32* %135, align 4, !dbg !3478, !tbaa !479
  store i32 %202, i32* %172, align 8, !dbg !3478, !tbaa !479
  br i1 %201, label %203, label %212, !dbg !3481

; <label>:203:                                    ; preds = %198
  %204 = load i32, i32* %157, align 4, !dbg !3478, !tbaa !479
  %205 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3478
  store i32 %204, i32* %205, align 4, !dbg !3478, !tbaa !479
  %206 = load i32, i32* %158, align 4, !dbg !3478, !tbaa !479
  %207 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3478
  store i32 %206, i32* %207, align 8, !dbg !3478, !tbaa !479
  %208 = load i32, i32* %159, align 4, !dbg !3478, !tbaa !479
  %209 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3478
  store i32 %208, i32* %209, align 4, !dbg !3478, !tbaa !479
  %210 = load i8, i8* %160, align 4, !dbg !3478, !tbaa !479
  %211 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3478
  store i8 %210, i8* %211, align 8, !dbg !3478, !tbaa !479
  br label %217, !dbg !3482

; <label>:212:                                    ; preds = %198
  %213 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3483
  store i32 0, i32* %213, align 4, !dbg !3483, !tbaa !479
  %214 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3483
  store i32 0, i32* %214, align 8, !dbg !3483, !tbaa !479
  %215 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3483
  store i32 0, i32* %215, align 4, !dbg !3483, !tbaa !479
  %216 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3483
  store i8 0, i8* %216, align 8, !dbg !3483, !tbaa !479
  br label %217

; <label>:217:                                    ; preds = %164, %176, %177, %182, %187, %192, %197, %212, %203
  %218 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 6, !dbg !3486
  %219 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %218, align 8, !dbg !3462, !tbaa !479
  %220 = icmp eq %struct.tcp_pcb_listen* %219, null, !dbg !3466
  br i1 %220, label %221, label %164, !dbg !3467, !llvm.loop !3487

; <label>:221:                                    ; preds = %217, %152, %147, %151, %129, %2, %24, %20
  ret void, !dbg !3489
}

; Function Attrs: noredzone nounwind readnone
define dso_local i8* @tcp_debug_state_str(i32) local_unnamed_addr #6 !dbg !3490 {
  %2 = zext i32 %0 to i64, !dbg !3496
  %3 = getelementptr inbounds [11 x i8*], [11 x i8*]* @tcp_state_str, i64 0, i64 %2, !dbg !3496
  %4 = load i8*, i8** %3, align 8, !dbg !3496, !tbaa !495
  ret i8* %4, !dbg !3497
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_tcp_get_tcp_addrinfo(%struct.tcp_pcb* readonly, i32, %struct.ip_addr*, i16*) local_unnamed_addr #0 !dbg !3498 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3512
  br i1 %5, label %28, label %6, !dbg !3514

; <label>:6:                                      ; preds = %4
  %7 = icmp eq i32 %1, 0, !dbg !3515
  %8 = icmp ne %struct.ip_addr* %2, null, !dbg !3518
  br i1 %7, label %18, label %9, !dbg !3521

; <label>:9:                                      ; preds = %6
  br i1 %8, label %10, label %13, !dbg !3522

; <label>:10:                                     ; preds = %9
  %11 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3524
  %12 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !3524
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %12, i64 24, i1 false), !dbg !3524, !tbaa.struct !3527
  br label %13, !dbg !3528

; <label>:13:                                     ; preds = %10, %9
  %14 = icmp eq i16* %3, null, !dbg !3529
  br i1 %14, label %28, label %15, !dbg !3531

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !3532
  %17 = load i16, i16* %16, align 2, !dbg !3532, !tbaa !965
  store i16 %17, i16* %3, align 2, !dbg !3534, !tbaa !439
  br label %28, !dbg !3535

; <label>:18:                                     ; preds = %6
  br i1 %8, label %19, label %23, !dbg !3536

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !3537
  %21 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3537
  %22 = bitcast %struct.ip_addr* %20 to i8*, !dbg !3537
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !3537, !tbaa.struct !3527
  br label %23, !dbg !3539

; <label>:23:                                     ; preds = %19, %18
  %24 = icmp eq i16* %3, null, !dbg !3540
  br i1 %24, label %28, label %25, !dbg !3542

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3543
  %27 = load i16, i16* %26, align 8, !dbg !3543, !tbaa !967
  store i16 %27, i16* %3, align 2, !dbg !3545, !tbaa !439
  br label %28, !dbg !3546

; <label>:28:                                     ; preds = %4, %15, %25, %23, %13
  %29 = phi i8 [ 0, %13 ], [ 0, %23 ], [ 0, %25 ], [ 0, %15 ], [ -6, %4 ], !dbg !3547
  ret i8 %29, !dbg !3548
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #2 !dbg !398 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !3549
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !3551
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #8, !dbg !3553
  ret i32 %2, !dbg !3554
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local void @tcp_trigger_input_pcb_close() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_send_fin(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!355, !356, !357}
!llvm.ident = !{!358}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tcp_listen_pcbs", scope: !2, file: !3, line: 173, type: !351, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !80, globals: !274)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/tcp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !20, !27, !48, !69, !75}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_state", file: !6, line: 56, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpbase.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "CLOSED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "LISTEN", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "SYN_SENT", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "SYN_RCVD", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "ESTABLISHED", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "FIN_WAIT_1", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "FIN_WAIT_2", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CLOSE_WAIT", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CLOSING", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "LAST_ACK", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "TIME_WAIT", value: 10, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !21, line: 68, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 52, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!30 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!37 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!38 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!39 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!41 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!42 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!43 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!44 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!45 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!46 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!47 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 53, baseType: !50, size: 32, elements: !51)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!52 = !DIEnumerator(name: "ERR_OK", value: 0)
!53 = !DIEnumerator(name: "ERR_MEM", value: -1)
!54 = !DIEnumerator(name: "ERR_BUF", value: -2)
!55 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!56 = !DIEnumerator(name: "ERR_RTE", value: -4)
!57 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!58 = !DIEnumerator(name: "ERR_VAL", value: -6)
!59 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!60 = !DIEnumerator(name: "ERR_USE", value: -8)
!61 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!62 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!63 = !DIEnumerator(name: "ERR_CONN", value: -11)
!64 = !DIEnumerator(name: "ERR_IF", value: -12)
!65 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!66 = !DIEnumerator(name: "ERR_RST", value: -14)
!67 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!68 = !DIEnumerator(name: "ERR_ARG", value: -16)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !70, line: 54, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!74 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !76, line: 156, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !{!78, !79}
!78 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!80 = !{!81, !88, !89, !91, !95, !98, !145, !264, !167, !267, !171, !198, !269, !270, !272, !273}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !82, line: 127, baseType: !83)
!82 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !84, line: 36, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !86, line: 57, baseType: !87)
!86 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !90, line: 206, baseType: !81)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !82, line: 125, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !84, line: 24, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !86, line: 43, baseType: !94)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !82, line: 129, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !84, line: 48, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !86, line: 79, baseType: !7)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !90, line: 223, size: 704, elements: !100)
!100 = !{!101, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !99, file: !90, line: 225, baseType: !102, size: 192)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !70, line: 76, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !70, line: 69, size: 192, elements: !104)
!104 = !{!105, !124}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !103, file: !70, line: 73, baseType: !106, size: 160)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !70, line: 70, size: 160, elements: !107)
!107 = !{!108, !118}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !106, file: !70, line: 71, baseType: !109, size: 160)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !110, line: 67, baseType: !111)
!110 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !110, line: 59, size: 160, elements: !112)
!112 = !{!113, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !111, file: !110, line: 60, baseType: !114, size: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 128, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 4)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !111, file: !110, line: 62, baseType: !91, size: 8, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !106, file: !70, line: 72, baseType: !119, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !120, line: 57, baseType: !121)
!120 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !120, line: 51, size: 32, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !121, file: !120, line: 52, baseType: !95, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !70, line: 75, baseType: !91, size: 8, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !99, file: !90, line: 225, baseType: !102, size: 192, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !99, file: !90, line: 225, baseType: !91, size: 8, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !99, file: !90, line: 225, baseType: !91, size: 8, offset: 392)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !99, file: !90, line: 225, baseType: !91, size: 8, offset: 400)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !99, file: !90, line: 225, baseType: !91, size: 8, offset: 408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !99, file: !90, line: 227, baseType: !98, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !99, file: !90, line: 227, baseType: !88, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !99, file: !90, line: 227, baseType: !5, size: 32, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !99, file: !90, line: 227, baseType: !91, size: 8, offset: 608)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !99, file: !90, line: 227, baseType: !81, size: 16, offset: 624)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !99, file: !90, line: 231, baseType: !136, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !90, line: 70, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !88, !145, !140}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !49, line: 96, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !82, line: 126, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !84, line: 20, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !86, line: 41, baseType: !144)
!144 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !90, line: 242, size: 2240, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !168, !169, !170, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !231, !232, !233, !234, !235, !240, !245, !247, !252, !257, !258, !259, !260, !261, !262, !263}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !146, file: !90, line: 244, baseType: !102, size: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !146, file: !90, line: 244, baseType: !102, size: 192, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !146, file: !90, line: 244, baseType: !91, size: 8, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !146, file: !90, line: 244, baseType: !91, size: 8, offset: 392)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !146, file: !90, line: 244, baseType: !91, size: 8, offset: 400)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !146, file: !90, line: 244, baseType: !91, size: 8, offset: 408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !90, line: 246, baseType: !145, size: 64, offset: 448)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !146, file: !90, line: 246, baseType: !88, size: 64, offset: 512)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !146, file: !90, line: 246, baseType: !5, size: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !146, file: !90, line: 246, baseType: !91, size: 8, offset: 608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !146, file: !90, line: 246, baseType: !81, size: 16, offset: 624)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !146, file: !90, line: 249, baseType: !81, size: 16, offset: 640)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !90, line: 251, baseType: !89, size: 16, offset: 656)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !146, file: !90, line: 278, baseType: !91, size: 8, offset: 672)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !146, file: !90, line: 278, baseType: !91, size: 8, offset: 680)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !146, file: !90, line: 279, baseType: !91, size: 8, offset: 688)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !146, file: !90, line: 280, baseType: !95, size: 32, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !146, file: !90, line: 283, baseType: !95, size: 32, offset: 736)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !146, file: !90, line: 284, baseType: !167, size: 32, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !6, line: 51, baseType: !95)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !146, file: !90, line: 285, baseType: !167, size: 32, offset: 800)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !146, file: !90, line: 286, baseType: !95, size: 32, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !146, file: !90, line: 295, baseType: !171, size: 16, offset: 864)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !82, line: 128, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !84, line: 32, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !86, line: 55, baseType: !174)
!174 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !146, file: !90, line: 297, baseType: !81, size: 16, offset: 880)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !146, file: !90, line: 300, baseType: !95, size: 32, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !146, file: !90, line: 301, baseType: !95, size: 32, offset: 928)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !146, file: !90, line: 302, baseType: !171, size: 16, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !146, file: !90, line: 302, baseType: !171, size: 16, offset: 976)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !146, file: !90, line: 304, baseType: !171, size: 16, offset: 992)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !146, file: !90, line: 305, baseType: !91, size: 8, offset: 1008)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !146, file: !90, line: 308, baseType: !91, size: 8, offset: 1016)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !146, file: !90, line: 309, baseType: !95, size: 32, offset: 1024)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !146, file: !90, line: 312, baseType: !167, size: 32, offset: 1056)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !146, file: !90, line: 313, baseType: !167, size: 32, offset: 1088)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !146, file: !90, line: 316, baseType: !95, size: 32, offset: 1120)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !146, file: !90, line: 319, baseType: !95, size: 32, offset: 1152)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !146, file: !90, line: 320, baseType: !95, size: 32, offset: 1184)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !146, file: !90, line: 320, baseType: !95, size: 32, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !146, file: !90, line: 322, baseType: !95, size: 32, offset: 1248)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !146, file: !90, line: 323, baseType: !167, size: 32, offset: 1280)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !146, file: !90, line: 324, baseType: !167, size: 32, offset: 1312)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !146, file: !90, line: 326, baseType: !167, size: 32, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !146, file: !90, line: 328, baseType: !81, size: 16, offset: 1376)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !146, file: !90, line: 332, baseType: !81, size: 16, offset: 1392)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !146, file: !90, line: 335, baseType: !167, size: 32, offset: 1408)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !146, file: !90, line: 338, baseType: !198, size: 64, offset: 1472)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !200, line: 253, size: 256, elements: !201)
!200 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!201 = !{!202, !203, !216, !217, !218}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !200, line: 254, baseType: !198, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !199, file: !200, line: 255, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !206, line: 186, size: 192, elements: !207)
!206 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !206, line: 188, baseType: !204, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !205, file: !206, line: 191, baseType: !88, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !205, file: !206, line: 200, baseType: !81, size: 16, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !205, file: !206, line: 203, baseType: !81, size: 16, offset: 144)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !205, file: !206, line: 208, baseType: !91, size: 8, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !206, line: 211, baseType: !91, size: 8, offset: 168)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !205, file: !206, line: 218, baseType: !91, size: 8, offset: 176)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !205, file: !206, line: 221, baseType: !91, size: 8, offset: 184)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !199, file: !200, line: 256, baseType: !81, size: 16, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !200, line: 266, baseType: !91, size: 8, offset: 144)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !199, file: !200, line: 273, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !221, line: 56, size: 160, elements: !222)
!221 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !220, file: !221, line: 57, baseType: !81, size: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !220, file: !221, line: 58, baseType: !81, size: 16, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !220, file: !221, line: 59, baseType: !95, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !220, file: !221, line: 60, baseType: !95, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !220, file: !221, line: 61, baseType: !81, size: 16, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !220, file: !221, line: 62, baseType: !81, size: 16, offset: 112)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !220, file: !221, line: 63, baseType: !81, size: 16, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !220, file: !221, line: 64, baseType: !81, size: 16, offset: 144)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !146, file: !90, line: 339, baseType: !198, size: 64, offset: 1536)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !146, file: !90, line: 341, baseType: !198, size: 64, offset: 1600)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !146, file: !90, line: 344, baseType: !204, size: 64, offset: 1664)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !146, file: !90, line: 347, baseType: !98, size: 64, offset: 1728)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !146, file: !90, line: 352, baseType: !236, size: 64, offset: 1792)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !90, line: 96, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!140, !88, !145, !81}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !146, file: !90, line: 354, baseType: !241, size: 64, offset: 1856)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !90, line: 82, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!140, !88, !145, !204, !140}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !146, file: !90, line: 356, baseType: !246, size: 64, offset: 1920)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !90, line: 134, baseType: !137)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !146, file: !90, line: 358, baseType: !248, size: 64, offset: 1984)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !90, line: 108, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!140, !88, !145}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !146, file: !90, line: 360, baseType: !253, size: 64, offset: 2048)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !90, line: 120, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !88, !140}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !146, file: !90, line: 369, baseType: !95, size: 32, offset: 2112)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !146, file: !90, line: 376, baseType: !91, size: 8, offset: 2144)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !146, file: !90, line: 378, baseType: !91, size: 8, offset: 2152)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !146, file: !90, line: 380, baseType: !91, size: 8, offset: 2160)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !146, file: !90, line: 383, baseType: !91, size: 8, offset: 2168)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !146, file: !90, line: 386, baseType: !91, size: 8, offset: 2176)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !146, file: !90, line: 387, baseType: !91, size: 8, offset: 2184)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !82, line: 130, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !84, line: 44, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !86, line: 77, baseType: !50)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!272 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!274 = !{!275, !280, !287, !289, !0, !291, !293, !295, !297, !299, !301, !303, !330, !335, !340, !345}
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "tcp_pcb_lists", scope: !2, file: !3, line: 181, type: !277, isLocal: false, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !115)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "iss", scope: !282, file: !3, line: 2221, type: !95, isLocal: true, isDefinition: true)
!282 = distinct !DISubprogram(name: "tcp_next_iss", scope: !3, file: !3, line: 2215, type: !283, isLocal: false, isDefinition: true, scopeLine: 2216, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!95, !145}
!285 = !{!286}
!286 = !DILocalVariable(name: "pcb", arg: 1, scope: !282, file: !3, line: 2215, type: !145)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "tcp_ticks", scope: !2, file: !3, line: 162, type: !95, isLocal: false, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "tcp_bound_pcbs", scope: !2, file: !3, line: 171, type: !145, isLocal: false, isDefinition: true)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(name: "tcp_active_pcbs", scope: !2, file: !3, line: 176, type: !145, isLocal: false, isDefinition: true)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "tcp_tw_pcbs", scope: !2, file: !3, line: 178, type: !145, isLocal: false, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "tcp_active_pcbs_changed", scope: !2, file: !3, line: 185, type: !91, isLocal: false, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "tcp_timer", scope: !2, file: !3, line: 188, type: !91, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "tcp_timer_ctr", scope: !2, file: !3, line: 189, type: !91, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "tcp_port", scope: !2, file: !3, line: 159, type: !81, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "__str", scope: !305, file: !306, line: 198, type: !327, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "uk_pr_crit", scope: !306, file: !306, line: 194, type: !307, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !312)
!306 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309, null}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!312 = !{!313, !314}
!313 = !DILocalVariable(name: "fmt", arg: 1, scope: !305, file: !306, line: 194, type: !309)
!314 = !DILocalVariable(name: "argp", scope: !305, file: !306, line: 196, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !316, line: 32, baseType: !317)
!316 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !318)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 192, elements: !325)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !320)
!320 = !{!321, !322, !323, !324}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !319, file: !3, line: 196, baseType: !7, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !319, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !319, file: !3, line: 196, baseType: !88, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !319, file: !3, line: 196, baseType: !88, size: 64, offset: 128)
!325 = !{!326}
!326 = !DISubrange(count: 1)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 8)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "__str", scope: !305, file: !306, line: 198, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 48, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 6)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "tcp_persist_backoff", scope: !2, file: !3, line: 166, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 56, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 7)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "tcp_backoff", scope: !2, file: !3, line: 163, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 104, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 13)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "tcp_state_str", scope: !2, file: !3, line: 144, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 704, elements: !349)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!349 = !{!350}
!350 = !DISubrange(count: 11)
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tcp_listen_pcbs_t", file: !200, line: 331, size: 64, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "listen_pcbs", scope: !351, file: !200, line: 332, baseType: !98, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pcbs", scope: !351, file: !200, line: 333, baseType: !145, size: 64)
!355 = !{i32 2, !"Dwarf Version", i32 4}
!356 = !{i32 2, !"Debug Info Version", i32 3}
!357 = !{i32 1, !"wchar_size", i32 4}
!358 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!359 = distinct !DISubprogram(name: "tcp_init", scope: !3, file: !3, line: 201, type: !360, isLocal: false, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!360 = !DISubroutineType(types: !361)
!361 = !{null}
!362 = !{}
!363 = !DILocation(line: 65, column: 2, scope: !364, inlinedAt: !381)
!364 = distinct !DISubprogram(name: "isolated_rand", scope: !365, file: !365, line: 63, type: !366, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !370)
!365 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!366 = !DISubroutineType(types: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !369, line: 88, baseType: !7)
!369 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!370 = !{!371, !372, !378}
!371 = !DILocalVariable(name: "randn", scope: !364, file: !365, line: 65, type: !368)
!372 = !DILocalVariable(name: "tid", scope: !373, file: !365, line: 66, type: !96)
!373 = distinct !DILexicalBlock(scope: !374, file: !365, line: 66, column: 2)
!374 = distinct !DILexicalBlock(scope: !375, file: !365, line: 66, column: 2)
!375 = distinct !DILexicalBlock(scope: !376, file: !365, line: 66, column: 2)
!376 = distinct !DILexicalBlock(scope: !377, file: !365, line: 66, column: 2)
!377 = distinct !DILexicalBlock(scope: !364, file: !365, line: 66, column: 2)
!378 = !DILocalVariable(name: "_ret", scope: !373, file: !365, line: 66, type: !379)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !84, line: 60, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !86, line: 105, baseType: !272)
!381 = distinct !DILocation(line: 204, column: 14, scope: !359)
!382 = !DILocation(line: 120, column: 2, scope: !383, inlinedAt: !389)
!383 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !384, file: !384, line: 116, type: !385, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !387)
!384 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!385 = !DISubroutineType(types: !386)
!386 = !{!272}
!387 = !{!388}
!388 = !DILocalVariable(name: "sp", scope: !383, file: !384, line: 118, type: !272)
!389 = distinct !DILocation(line: 66, column: 2, scope: !376, inlinedAt: !381)
!390 = !{i32 601524}
!391 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !389)
!392 = !DILocation(line: 66, column: 2, scope: !376, inlinedAt: !381)
!393 = !DILocation(line: 120, column: 2, scope: !383, inlinedAt: !394)
!394 = distinct !DILocation(line: 66, column: 2, scope: !376, inlinedAt: !381)
!395 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !394)
!396 = !DILocation(line: 66, column: 2, scope: !377, inlinedAt: !381)
!397 = !DILocation(line: 65, column: 11, scope: !398, inlinedAt: !403)
!398 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !399, file: !399, line: 60, type: !366, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !400)
!399 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!400 = !{!401, !402}
!401 = !DILocalVariable(name: "iflags", scope: !398, file: !399, line: 62, type: !272)
!402 = !DILocalVariable(name: "ret", scope: !398, file: !399, line: 63, type: !368)
!403 = distinct !DILocation(line: 66, column: 2, scope: !404, inlinedAt: !381)
!404 = distinct !DILexicalBlock(scope: !376, file: !365, line: 66, column: 2)
!405 = !DILocation(line: 62, column: 16, scope: !398, inlinedAt: !403)
!406 = !DILocation(line: 66, column: 8, scope: !398, inlinedAt: !403)
!407 = !DILocation(line: 63, column: 8, scope: !398, inlinedAt: !403)
!408 = !DILocation(line: 67, column: 2, scope: !398, inlinedAt: !403)
!409 = !DILocation(line: 65, column: 8, scope: !364, inlinedAt: !381)
!410 = !DILocation(line: 66, column: 2, scope: !404, inlinedAt: !381)
!411 = !{!412, !412, i64 0}
!412 = !{!"int", !413, i64 0}
!413 = !{!"omnipotent char", !414, i64 0}
!414 = !{!"Simple C/C++ TBAA"}
!415 = !DILocation(line: 120, column: 2, scope: !383, inlinedAt: !416)
!416 = distinct !DILocation(line: 49, column: 21, scope: !417, inlinedAt: !423)
!417 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !418, file: !418, line: 47, type: !419, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !421)
!418 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!419 = !DISubroutineType(types: !420)
!420 = !{!50}
!421 = !{!422}
!422 = !DILocalVariable(name: "sp", scope: !417, file: !418, line: 49, type: !272)
!423 = distinct !DILocation(line: 66, column: 2, scope: !373, inlinedAt: !381)
!424 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !416)
!425 = !DILocation(line: 49, column: 16, scope: !417, inlinedAt: !423)
!426 = !DILocation(line: 50, column: 19, scope: !417, inlinedAt: !423)
!427 = !DILocation(line: 50, column: 11, scope: !417, inlinedAt: !423)
!428 = !DILocation(line: 50, column: 9, scope: !417, inlinedAt: !423)
!429 = !DILocation(line: 66, column: 2, scope: !373, inlinedAt: !381)
!430 = !{i32 -2146754758, i32 -2146754745, i32 -2146754720, i32 -2146754696, i32 -2146754671, i32 -2146754596, i32 -2146754571, i32 -2146754427, i32 -2146751334, i32 -2146751245, i32 -2146751124, i32 -2146751029, i32 -2146750928, i32 -2146750901, i32 -2146750818, i32 -2146750729, i32 -2146750608, i32 -2146750508, i32 -2146750402, i32 -2146750294, i32 -2146754144, i32 -2146754091, i32 -2146754060, i32 -2146754029, i32 -2146754008, i32 -2146753986, i32 -2146753937, i32 -2146753916, i32 -2146750211, i32 -2146750122, i32 -2146750001, i32 -2146749902, i32 -2146749796, i32 -2146749694, i32 -2146749661, i32 -2146749588, i32 -2146749520, i32 -2146753614, i32 -2146753555, i32 -2146753502, i32 -2146753471, i32 -2146753440, i32 -2146753419, i32 -2146753397, i32 -2146753348, i32 -2146753327, i32 -2146749469, i32 -2146749380, i32 -2146749259, i32 -2146749160, i32 -2146749054, i32 -2146748952, i32 -2146748919, i32 -2146748836, i32 -2146748747, i32 -2146748626, i32 -2146748526, i32 -2146748500, i32 -2146748397, i32 -2146748371, i32 -2146753069, i32 -2146753002, i32 -2146752977, i32 -2146752913, i32 -2146752831, i32 -2146752808, i32 -2146752783, i32 -2146752758}
!431 = !DILocation(line: 66, column: 2, scope: !432, inlinedAt: !381)
!432 = distinct !DILexicalBlock(scope: !433, file: !365, line: 66, column: 2)
!433 = distinct !DILexicalBlock(scope: !373, file: !365, line: 66, column: 2)
!434 = !{i32 -2146751811, i32 -2146751794}
!435 = !DILocation(line: 67, column: 9, scope: !364, inlinedAt: !381)
!436 = !DILocation(line: 68, column: 1, scope: !364, inlinedAt: !381)
!437 = !DILocation(line: 204, column: 14, scope: !359)
!438 = !DILocation(line: 204, column: 12, scope: !359)
!439 = !{!440, !440, i64 0}
!440 = !{!"short", !413, i64 0}
!441 = !DILocation(line: 206, column: 1, scope: !359)
!442 = distinct !DISubprogram(name: "tcp_free", scope: !3, file: !3, line: 210, type: !443, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !145}
!445 = !{!446}
!446 = !DILocalVariable(name: "pcb", arg: 1, scope: !442, file: !3, line: 210, type: !145)
!447 = !DILocation(line: 210, column: 26, scope: !442)
!448 = !DILocation(line: 212, column: 3, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 212, column: 3)
!450 = distinct !DILexicalBlock(scope: !442, file: !3, line: 212, column: 3)
!451 = !{!452, !413, i64 72}
!452 = !{!"tcp_pcb", !453, i64 0, !453, i64 24, !413, i64 48, !413, i64 49, !413, i64 50, !413, i64 51, !454, i64 56, !454, i64 64, !413, i64 72, !413, i64 76, !440, i64 78, !440, i64 80, !440, i64 82, !413, i64 84, !413, i64 85, !413, i64 86, !412, i64 88, !412, i64 92, !412, i64 96, !412, i64 100, !412, i64 104, !440, i64 108, !440, i64 110, !412, i64 112, !412, i64 116, !440, i64 120, !440, i64 122, !440, i64 124, !413, i64 126, !413, i64 127, !412, i64 128, !412, i64 132, !412, i64 136, !412, i64 140, !412, i64 144, !412, i64 148, !412, i64 152, !412, i64 156, !412, i64 160, !412, i64 164, !412, i64 168, !440, i64 172, !440, i64 174, !412, i64 176, !454, i64 184, !454, i64 192, !454, i64 200, !454, i64 208, !454, i64 216, !454, i64 224, !454, i64 232, !454, i64 240, !454, i64 248, !454, i64 256, !412, i64 264, !413, i64 268, !413, i64 269, !413, i64 270, !413, i64 271, !413, i64 272, !413, i64 273}
!453 = !{!"ip_addr", !413, i64 0, !413, i64 20}
!454 = !{!"any pointer", !413, i64 0}
!455 = !DILocation(line: 212, column: 3, scope: !450)
!456 = !DILocation(line: 212, column: 3, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !3, line: 212, column: 3)
!458 = distinct !DILexicalBlock(scope: !449, file: !3, line: 212, column: 3)
!459 = !DILocation(line: 212, column: 3, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 212, column: 3)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 212, column: 3)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 212, column: 3)
!463 = !DILocation(line: 216, column: 27, scope: !442)
!464 = !DILocation(line: 216, column: 3, scope: !442)
!465 = !DILocation(line: 217, column: 1, scope: !442)
!466 = !DILocation(line: 194, column: 43, scope: !305)
!467 = !DILocation(line: 196, column: 2, scope: !305)
!468 = !DILocation(line: 196, column: 10, scope: !305)
!469 = !DILocation(line: 197, column: 2, scope: !305)
!470 = !DILocation(line: 198, column: 2, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !306, line: 198, column: 2)
!472 = distinct !DILexicalBlock(scope: !305, file: !306, line: 198, column: 2)
!473 = !DILocation(line: 199, column: 2, scope: !305)
!474 = !DILocation(line: 200, column: 1, scope: !305)
!475 = distinct !DISubprogram(name: "tcp_tmr", scope: !3, file: !3, line: 234, type: !360, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!476 = !DILocation(line: 237, column: 3, scope: !475)
!477 = !DILocation(line: 239, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 239, column: 7)
!479 = !{!413, !413, i64 0}
!480 = !DILocation(line: 239, column: 19, scope: !478)
!481 = !DILocation(line: 239, column: 7, scope: !475)
!482 = !DILocation(line: 242, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 239, column: 24)
!484 = !DILocation(line: 243, column: 3, scope: !483)
!485 = !DILocation(line: 244, column: 1, scope: !475)
!486 = distinct !DISubprogram(name: "tcp_fasttmr", scope: !3, file: !3, line: 1479, type: !360, isLocal: false, isDefinition: true, scopeLine: 1480, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !487)
!487 = !{!488, !489}
!488 = !DILocalVariable(name: "pcb", scope: !486, file: !3, line: 1481, type: !145)
!489 = !DILocalVariable(name: "next", scope: !490, file: !3, line: 1490, type: !145)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 1489, column: 43)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 1489, column: 9)
!492 = distinct !DILexicalBlock(scope: !486, file: !3, line: 1488, column: 23)
!493 = !DILocation(line: 1483, column: 3, scope: !486)
!494 = !DILocation(line: 1486, column: 9, scope: !486)
!495 = !{!454, !454, i64 0}
!496 = !DILocation(line: 1481, column: 19, scope: !486)
!497 = !DILocation(line: 1488, column: 14, scope: !486)
!498 = !DILocation(line: 1488, column: 3, scope: !486)
!499 = !DILocation(line: 1489, column: 14, scope: !491)
!500 = !{!452, !413, i64 86}
!501 = !DILocation(line: 1489, column: 28, scope: !491)
!502 = !DILocation(line: 1489, column: 25, scope: !491)
!503 = !DILocation(line: 1489, column: 9, scope: !492)
!504 = !DILocation(line: 1491, column: 23, scope: !490)
!505 = !DILocation(line: 1493, column: 16, scope: !506)
!506 = distinct !DILexicalBlock(scope: !490, file: !3, line: 1493, column: 11)
!507 = !{!452, !440, i64 82}
!508 = !DILocation(line: 1493, column: 22, scope: !506)
!509 = !DILocation(line: 1493, column: 11, scope: !490)
!510 = !DILocation(line: 1495, column: 9, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1495, column: 9)
!512 = distinct !DILexicalBlock(scope: !506, file: !3, line: 1493, column: 38)
!513 = !DILocation(line: 1496, column: 9, scope: !512)
!514 = !DILocation(line: 1497, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1497, column: 9)
!516 = !DILocation(line: 1498, column: 7, scope: !512)
!517 = !DILocation(line: 1500, column: 16, scope: !518)
!518 = distinct !DILexicalBlock(scope: !490, file: !3, line: 1500, column: 11)
!519 = !DILocation(line: 1500, column: 22, scope: !518)
!520 = !DILocation(line: 1500, column: 11, scope: !490)
!521 = !DILocation(line: 1502, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 1502, column: 9)
!523 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1500, column: 38)
!524 = !DILocation(line: 1503, column: 9, scope: !523)
!525 = !DILocation(line: 1504, column: 7, scope: !523)
!526 = !DILocation(line: 1506, column: 19, scope: !490)
!527 = !{!452, !454, i64 56}
!528 = !DILocation(line: 1490, column: 23, scope: !490)
!529 = !DILocation(line: 1509, column: 16, scope: !530)
!530 = distinct !DILexicalBlock(scope: !490, file: !3, line: 1509, column: 11)
!531 = !{!452, !454, i64 208}
!532 = !DILocation(line: 1509, column: 29, scope: !530)
!533 = !DILocation(line: 1509, column: 11, scope: !490)
!534 = !DILocation(line: 1510, column: 33, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 1509, column: 38)
!536 = !DILocation(line: 1511, column: 9, scope: !535)
!537 = !DILocation(line: 1512, column: 13, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 1512, column: 13)
!539 = !DILocation(line: 1512, column: 13, scope: !535)
!540 = !DILocation(line: 1519, column: 18, scope: !541)
!541 = distinct !DILexicalBlock(scope: !491, file: !3, line: 1518, column: 12)
!542 = !DILocation(line: 0, scope: !541)
!543 = distinct !{!543, !498, !544}
!544 = !DILocation(line: 1521, column: 3, scope: !486)
!545 = !DILocation(line: 1522, column: 1, scope: !486)
!546 = distinct !DISubprogram(name: "tcp_slowtmr", scope: !3, file: !3, line: 1192, type: !360, isLocal: false, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !563, !566, !574, !575, !578, !579, !580, !581}
!548 = !DILocalVariable(name: "pcb", scope: !546, file: !3, line: 1194, type: !145)
!549 = !DILocalVariable(name: "prev", scope: !546, file: !3, line: 1194, type: !145)
!550 = !DILocalVariable(name: "eff_wnd", scope: !546, file: !3, line: 1195, type: !167)
!551 = !DILocalVariable(name: "pcb_remove", scope: !546, file: !3, line: 1196, type: !91)
!552 = !DILocalVariable(name: "pcb_reset", scope: !546, file: !3, line: 1197, type: !91)
!553 = !DILocalVariable(name: "err", scope: !546, file: !3, line: 1198, type: !140)
!554 = !DILocalVariable(name: "backoff_cnt", scope: !555, file: !3, line: 1241, type: !91)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 1240, column: 16)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 1238, column: 13)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 1235, column: 37)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 1235, column: 11)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 1234, column: 12)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1231, column: 16)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1228, column: 9)
!562 = distinct !DILexicalBlock(scope: !546, file: !3, line: 1212, column: 23)
!563 = !DILocalVariable(name: "next_slot", scope: !564, file: !3, line: 1246, type: !50)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1245, column: 48)
!565 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1245, column: 15)
!566 = !DILocalVariable(name: "backoff_idx", scope: !567, file: !3, line: 1287, type: !91)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1286, column: 41)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1286, column: 17)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1283, column: 109)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1283, column: 15)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 1275, column: 37)
!572 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1275, column: 13)
!573 = distinct !DILexicalBlock(scope: !558, file: !3, line: 1269, column: 14)
!574 = !DILocalVariable(name: "calc_rto", scope: !567, file: !3, line: 1288, type: !50)
!575 = !DILocalVariable(name: "pcb2", scope: !576, file: !3, line: 1380, type: !145)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 1379, column: 21)
!577 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1379, column: 9)
!578 = !DILocalVariable(name: "err_fn", scope: !576, file: !3, line: 1382, type: !253)
!579 = !DILocalVariable(name: "err_arg", scope: !576, file: !3, line: 1384, type: !88)
!580 = !DILocalVariable(name: "last_state", scope: !576, file: !3, line: 1385, type: !5)
!581 = !DILocalVariable(name: "pcb2", scope: !582, file: !3, line: 1451, type: !145)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1450, column: 21)
!583 = distinct !DILexicalBlock(scope: !584, file: !3, line: 1450, column: 9)
!584 = distinct !DILexicalBlock(scope: !546, file: !3, line: 1440, column: 23)
!585 = !DILocation(line: 1198, column: 9, scope: !546)
!586 = !DILocation(line: 1202, column: 3, scope: !546)
!587 = !DILocation(line: 1203, column: 3, scope: !546)
!588 = !DILocation(line: 1194, column: 25, scope: !546)
!589 = !DILocation(line: 1208, column: 9, scope: !546)
!590 = !DILocation(line: 1194, column: 19, scope: !546)
!591 = !DILocation(line: 1212, column: 14, scope: !546)
!592 = !DILocation(line: 1212, column: 3, scope: !546)
!593 = !DILocation(line: 1214, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 1214, column: 5)
!595 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1214, column: 5)
!596 = !DILocation(line: 1214, column: 5, scope: !595)
!597 = !DILocation(line: 1214, column: 5, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 1214, column: 5)
!599 = distinct !DILexicalBlock(scope: !594, file: !3, line: 1214, column: 5)
!600 = !DILocation(line: 1214, column: 5, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 1214, column: 5)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 1214, column: 5)
!603 = distinct !DILexicalBlock(scope: !598, file: !3, line: 1214, column: 5)
!604 = !DILocation(line: 1215, column: 5, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 1215, column: 5)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 1215, column: 5)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 1215, column: 5)
!608 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1215, column: 5)
!609 = !DILocation(line: 1215, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 1215, column: 5)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 1215, column: 5)
!612 = distinct !DILexicalBlock(scope: !605, file: !3, line: 1215, column: 5)
!613 = !DILocation(line: 1216, column: 5, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 1216, column: 5)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 1216, column: 5)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1216, column: 5)
!617 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1216, column: 5)
!618 = !DILocation(line: 1216, column: 5, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1216, column: 5)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1216, column: 5)
!621 = distinct !DILexicalBlock(scope: !614, file: !3, line: 1216, column: 5)
!622 = !DILocation(line: 1217, column: 14, scope: !623)
!623 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1217, column: 9)
!624 = !DILocation(line: 1217, column: 28, scope: !623)
!625 = !DILocation(line: 1217, column: 25, scope: !623)
!626 = !DILocation(line: 1217, column: 9, scope: !562)
!627 = !DILocation(line: 1220, column: 18, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1217, column: 43)
!629 = !DILocation(line: 1221, column: 7, scope: !628)
!630 = distinct !{!630, !592, !631}
!631 = !DILocation(line: 1434, column: 3, scope: !546)
!632 = !DILocation(line: 1223, column: 21, scope: !562)
!633 = !DILocation(line: 1196, column: 8, scope: !546)
!634 = !DILocation(line: 1197, column: 8, scope: !546)
!635 = !DILocation(line: 1228, column: 20, scope: !561)
!636 = !DILocation(line: 0, scope: !560)
!637 = !{!452, !413, i64 126}
!638 = !DILocation(line: 1228, column: 32, scope: !561)
!639 = !DILocation(line: 1228, column: 45, scope: !561)
!640 = !DILocation(line: 1228, column: 9, scope: !562)
!641 = !DILocation(line: 1231, column: 26, scope: !560)
!642 = !DILocation(line: 1231, column: 16, scope: !561)
!643 = !DILocation(line: 1235, column: 16, scope: !558)
!644 = !{!452, !413, i64 269}
!645 = !DILocation(line: 1235, column: 11, scope: !558)
!646 = !DILocation(line: 1235, column: 32, scope: !558)
!647 = !DILocation(line: 1235, column: 11, scope: !559)
!648 = !DILocation(line: 1236, column: 9, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 1236, column: 9)
!650 = distinct !DILexicalBlock(scope: !557, file: !3, line: 1236, column: 9)
!651 = !{!452, !454, i64 192}
!652 = !DILocation(line: 1236, column: 9, scope: !650)
!653 = !DILocation(line: 1236, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1236, column: 9)
!655 = distinct !DILexicalBlock(scope: !649, file: !3, line: 1236, column: 9)
!656 = !DILocation(line: 1236, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 1236, column: 9)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 1236, column: 9)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 1236, column: 9)
!660 = !DILocation(line: 1237, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 1237, column: 9)
!662 = distinct !DILexicalBlock(scope: !557, file: !3, line: 1237, column: 9)
!663 = !{!452, !454, i64 184}
!664 = !DILocation(line: 1237, column: 9, scope: !662)
!665 = !DILocation(line: 1237, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 1237, column: 9)
!667 = distinct !DILexicalBlock(scope: !661, file: !3, line: 1237, column: 9)
!668 = !DILocation(line: 1237, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 1237, column: 9)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 1237, column: 9)
!671 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1237, column: 9)
!672 = !DILocation(line: 1238, column: 18, scope: !556)
!673 = !{!452, !413, i64 270}
!674 = !DILocation(line: 1238, column: 32, scope: !556)
!675 = !DILocation(line: 1238, column: 13, scope: !557)
!676 = !DILocation(line: 1241, column: 71, scope: !555)
!677 = !DILocation(line: 1241, column: 30, scope: !555)
!678 = !DILocation(line: 1241, column: 16, scope: !555)
!679 = !DILocation(line: 1242, column: 20, scope: !680)
!680 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1242, column: 15)
!681 = !{!452, !413, i64 268}
!682 = !DILocation(line: 1242, column: 32, scope: !680)
!683 = !DILocation(line: 1242, column: 15, scope: !555)
!684 = !DILocation(line: 1243, column: 29, scope: !685)
!685 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1242, column: 47)
!686 = !DILocation(line: 1244, column: 11, scope: !685)
!687 = !DILocation(line: 1245, column: 20, scope: !565)
!688 = !DILocation(line: 1245, column: 32, scope: !565)
!689 = !DILocation(line: 1245, column: 15, scope: !555)
!690 = !DILocation(line: 1246, column: 17, scope: !564)
!691 = !DILocation(line: 1248, column: 22, scope: !692)
!692 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1248, column: 17)
!693 = !{!452, !412, i64 160}
!694 = !DILocation(line: 1248, column: 30, scope: !692)
!695 = !DILocation(line: 1248, column: 17, scope: !564)
!696 = !DILocation(line: 1249, column: 19, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1249, column: 19)
!698 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1248, column: 36)
!699 = !DILocation(line: 1249, column: 46, scope: !697)
!700 = !DILocation(line: 1261, column: 17, scope: !564)
!701 = !DILocation(line: 1254, column: 45, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 1254, column: 19)
!703 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1253, column: 20)
!704 = !DILocation(line: 1254, column: 19, scope: !702)
!705 = !DILocation(line: 1254, column: 66, scope: !702)
!706 = !DILocation(line: 1254, column: 19, scope: !703)
!707 = !DILocation(line: 1255, column: 21, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 1255, column: 21)
!709 = distinct !DILexicalBlock(scope: !702, file: !3, line: 1254, column: 77)
!710 = !DILocation(line: 1255, column: 37, scope: !708)
!711 = !DILocation(line: 1262, column: 32, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 1261, column: 28)
!713 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1261, column: 17)
!714 = !DILocation(line: 1263, column: 24, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 1263, column: 19)
!716 = !DILocation(line: 1263, column: 40, scope: !715)
!717 = !DILocation(line: 1263, column: 19, scope: !712)
!718 = !DILocation(line: 1264, column: 37, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !3, line: 1263, column: 71)
!720 = !DILocation(line: 1265, column: 15, scope: !719)
!721 = !DILocation(line: 1271, column: 19, scope: !722)
!722 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1271, column: 13)
!723 = !{!452, !440, i64 108}
!724 = !DILocation(line: 1271, column: 25, scope: !722)
!725 = !DILocation(line: 1271, column: 46, scope: !722)
!726 = !DILocation(line: 1271, column: 31, scope: !722)
!727 = !DILocation(line: 1272, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !722, file: !3, line: 1271, column: 57)
!729 = !DILocation(line: 1273, column: 9, scope: !728)
!730 = !DILocation(line: 1275, column: 18, scope: !572)
!731 = !DILocation(line: 1275, column: 32, scope: !572)
!732 = !{!452, !440, i64 124}
!733 = !DILocation(line: 1275, column: 24, scope: !572)
!734 = !DILocation(line: 1275, column: 13, scope: !573)
!735 = !DILocation(line: 1283, column: 16, scope: !570)
!736 = !DILocation(line: 1283, column: 44, scope: !570)
!737 = !DILocation(line: 1283, column: 55, scope: !570)
!738 = !DILocation(line: 1283, column: 65, scope: !570)
!739 = !DILocation(line: 1283, column: 73, scope: !570)
!740 = !DILocation(line: 1283, column: 82, scope: !570)
!741 = !DILocation(line: 1283, column: 91, scope: !570)
!742 = !DILocation(line: 1283, column: 98, scope: !570)
!743 = !DILocation(line: 1283, column: 15, scope: !571)
!744 = !DILocation(line: 1286, column: 22, scope: !568)
!745 = !DILocation(line: 1286, column: 28, scope: !568)
!746 = !DILocation(line: 1286, column: 17, scope: !569)
!747 = !DILocation(line: 1287, column: 34, scope: !567)
!748 = !DILocation(line: 1287, column: 20, scope: !567)
!749 = !DILocation(line: 1288, column: 37, scope: !567)
!750 = !{!452, !440, i64 120}
!751 = !DILocation(line: 1288, column: 40, scope: !567)
!752 = !DILocation(line: 1288, column: 53, scope: !567)
!753 = !{!452, !440, i64 122}
!754 = !DILocation(line: 1288, column: 48, scope: !567)
!755 = !DILocation(line: 1288, column: 46, scope: !567)
!756 = !DILocation(line: 1288, column: 60, scope: !567)
!757 = !DILocation(line: 1288, column: 57, scope: !567)
!758 = !DILocation(line: 1288, column: 19, scope: !567)
!759 = !DILocation(line: 1289, column: 33, scope: !567)
!760 = !DILocation(line: 1289, column: 26, scope: !567)
!761 = !DILocation(line: 1289, column: 24, scope: !567)
!762 = !DILocation(line: 1290, column: 13, scope: !567)
!763 = !DILocation(line: 1293, column: 24, scope: !569)
!764 = !DILocation(line: 1296, column: 23, scope: !569)
!765 = !{!452, !412, i64 132}
!766 = !DILocation(line: 1195, column: 17, scope: !546)
!767 = !DILocation(line: 1297, column: 37, scope: !569)
!768 = !DILocation(line: 1297, column: 18, scope: !569)
!769 = !DILocation(line: 1298, column: 54, scope: !770)
!770 = distinct !DILexicalBlock(scope: !569, file: !3, line: 1298, column: 17)
!771 = !{!452, !440, i64 110}
!772 = !DILocation(line: 1298, column: 49, scope: !770)
!773 = !DILocation(line: 1298, column: 58, scope: !770)
!774 = !DILocation(line: 1298, column: 31, scope: !770)
!775 = !DILocation(line: 1298, column: 17, scope: !569)
!776 = !DILocation(line: 0, scope: !777)
!777 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1298, column: 65)
!778 = !DILocation(line: 1301, column: 23, scope: !569)
!779 = !DILocation(line: 1305, column: 18, scope: !569)
!780 = !DILocation(line: 1305, column: 30, scope: !569)
!781 = !{!452, !412, i64 176}
!782 = !DILocation(line: 1309, column: 13, scope: !569)
!783 = !DILocation(line: 1310, column: 11, scope: !569)
!784 = !DILocation(line: 0, scope: !562)
!785 = !DILocation(line: 1315, column: 14, scope: !786)
!786 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1315, column: 9)
!787 = !DILocation(line: 1315, column: 20, scope: !786)
!788 = !DILocation(line: 1315, column: 9, scope: !562)
!789 = !DILocation(line: 1317, column: 16, scope: !790)
!790 = distinct !DILexicalBlock(scope: !791, file: !3, line: 1317, column: 11)
!791 = distinct !DILexicalBlock(scope: !786, file: !3, line: 1315, column: 35)
!792 = !DILocation(line: 1317, column: 22, scope: !790)
!793 = !DILocation(line: 1317, column: 11, scope: !791)
!794 = !DILocation(line: 1320, column: 21, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 1320, column: 13)
!796 = distinct !DILexicalBlock(scope: !790, file: !3, line: 1317, column: 37)
!797 = !DILocation(line: 1320, column: 38, scope: !795)
!798 = !{!452, !412, i64 88}
!799 = !DILocation(line: 1320, column: 31, scope: !795)
!800 = !DILocation(line: 1320, column: 43, scope: !795)
!801 = !DILocation(line: 1320, column: 13, scope: !796)
!802 = !DILocation(line: 0, scope: !803)
!803 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1228, column: 63)
!804 = !DILocation(line: 1329, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1329, column: 9)
!806 = !{!452, !413, i64 49}
!807 = !DILocation(line: 1329, column: 43, scope: !805)
!808 = !DILocation(line: 1330, column: 38, scope: !805)
!809 = !DILocation(line: 1332, column: 19, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1332, column: 11)
!811 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1331, column: 39)
!812 = !DILocation(line: 1332, column: 36, scope: !810)
!813 = !DILocation(line: 1332, column: 29, scope: !810)
!814 = !DILocation(line: 1332, column: 11, scope: !810)
!815 = !DILocation(line: 1333, column: 17, scope: !810)
!816 = !{!452, !412, i64 264}
!817 = !DILocation(line: 1333, column: 12, scope: !810)
!818 = !DILocation(line: 1333, column: 27, scope: !810)
!819 = !DILocation(line: 1333, column: 48, scope: !810)
!820 = !DILocation(line: 1332, column: 41, scope: !810)
!821 = !DILocation(line: 1332, column: 11, scope: !811)
!822 = !DILocation(line: 1338, column: 9, scope: !823)
!823 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1333, column: 69)
!824 = !DILocation(line: 1340, column: 7, scope: !823)
!825 = !DILocation(line: 1341, column: 41, scope: !826)
!826 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1340, column: 18)
!827 = !{!452, !413, i64 271}
!828 = !DILocation(line: 1341, column: 36, scope: !826)
!829 = !DILocation(line: 1341, column: 55, scope: !826)
!830 = !DILocation(line: 1341, column: 34, scope: !826)
!831 = !DILocation(line: 1342, column: 18, scope: !826)
!832 = !DILocation(line: 1340, column: 48, scope: !826)
!833 = !DILocation(line: 1340, column: 18, scope: !810)
!834 = !DILocation(line: 1343, column: 15, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !3, line: 1342, column: 39)
!836 = !DILocation(line: 1344, column: 17, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1344, column: 13)
!838 = !DILocation(line: 1344, column: 13, scope: !835)
!839 = !DILocation(line: 1345, column: 29, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 1344, column: 28)
!841 = !DILocation(line: 1346, column: 9, scope: !840)
!842 = !DILocation(line: 0, scope: !843)
!843 = distinct !DILexicalBlock(scope: !795, file: !3, line: 1321, column: 55)
!844 = !DILocation(line: 1354, column: 14, scope: !845)
!845 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1354, column: 9)
!846 = !{!452, !454, i64 200}
!847 = !DILocation(line: 1354, column: 20, scope: !845)
!848 = !DILocation(line: 1354, column: 28, scope: !845)
!849 = !DILocation(line: 1355, column: 10, scope: !845)
!850 = !DILocation(line: 1355, column: 27, scope: !845)
!851 = !DILocation(line: 1355, column: 20, scope: !845)
!852 = !DILocation(line: 1355, column: 46, scope: !845)
!853 = !DILocation(line: 1355, column: 34, scope: !845)
!854 = !DILocation(line: 1355, column: 50, scope: !845)
!855 = !DILocation(line: 1355, column: 31, scope: !845)
!856 = !DILocation(line: 1354, column: 9, scope: !562)
!857 = !DILocalVariable(name: "seg", arg: 1, scope: !858, file: !3, line: 1608, type: !198)
!858 = distinct !DISubprogram(name: "tcp_segs_free", scope: !3, file: !3, line: 1608, type: !859, isLocal: false, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !198}
!861 = !{!857, !862}
!862 = !DILocalVariable(name: "next", scope: !863, file: !3, line: 1611, type: !198)
!863 = distinct !DILexicalBlock(scope: !858, file: !3, line: 1610, column: 23)
!864 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !865)
!865 = distinct !DILocation(line: 2389, column: 5, scope: !866, inlinedAt: !871)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 2388, column: 19)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 2388, column: 7)
!868 = distinct !DISubprogram(name: "tcp_free_ooseq", scope: !3, file: !3, line: 2386, type: !443, isLocal: false, isDefinition: true, scopeLine: 2387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !869)
!869 = !{!870}
!870 = !DILocalVariable(name: "pcb", arg: 1, scope: !868, file: !3, line: 2386, type: !145)
!871 = distinct !DILocation(line: 1357, column: 7, scope: !872)
!872 = distinct !DILexicalBlock(scope: !845, file: !3, line: 1355, column: 72)
!873 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !865)
!874 = !{!875, !454, i64 0}
!875 = !{!"tcp_seg", !454, i64 0, !454, i64 8, !440, i64 16, !413, i64 18, !454, i64 24}
!876 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !865)
!877 = !DILocalVariable(name: "seg", arg: 1, scope: !878, file: !3, line: 1623, type: !198)
!878 = distinct !DISubprogram(name: "tcp_seg_free", scope: !3, file: !3, line: 1623, type: !859, isLocal: false, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !879)
!879 = !{!877}
!880 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !881)
!881 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !865)
!882 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !881)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1626, column: 9)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1625, column: 20)
!885 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1625, column: 7)
!886 = !{!875, !454, i64 8}
!887 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !881)
!888 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !881)
!889 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !881)
!890 = distinct !DILexicalBlock(scope: !883, file: !3, line: 1626, column: 25)
!891 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !881)
!892 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !881)
!893 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !881)
!894 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !865)
!895 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !865)
!896 = distinct !{!896, !897, !898}
!897 = !DILocation(line: 1610, column: 3, scope: !858)
!898 = !DILocation(line: 1614, column: 3, scope: !858)
!899 = !DILocation(line: 2390, column: 16, scope: !866, inlinedAt: !871)
!900 = !DILocation(line: 1358, column: 5, scope: !872)
!901 = !DILocation(line: 1362, column: 14, scope: !902)
!902 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1362, column: 9)
!903 = !DILocation(line: 1362, column: 9, scope: !562)
!904 = !DILocation(line: 1372, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1371, column: 33)
!906 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1371, column: 9)
!907 = !DILocation(line: 0, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1372, column: 11)
!909 = !DILocation(line: 0, scope: !905)
!910 = !DILocation(line: 1379, column: 9, scope: !577)
!911 = !DILocation(line: 0, scope: !912)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1364, column: 53)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1363, column: 11)
!914 = distinct !DILexicalBlock(scope: !902, file: !3, line: 1362, column: 33)
!915 = !DILocation(line: 1379, column: 9, scope: !562)
!916 = !DILocation(line: 1382, column: 32, scope: !576)
!917 = !{!452, !454, i64 256}
!918 = !DILocation(line: 1382, column: 18, scope: !576)
!919 = !DILocation(line: 1386, column: 7, scope: !576)
!920 = !DILocation(line: 1388, column: 16, scope: !921)
!921 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1388, column: 11)
!922 = !DILocation(line: 0, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 1389, column: 9)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1389, column: 9)
!925 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1388, column: 25)
!926 = !DILocation(line: 1388, column: 11, scope: !576)
!927 = !DILocation(line: 1389, column: 9, scope: !923)
!928 = !DILocation(line: 1389, column: 9, scope: !924)
!929 = !DILocation(line: 1389, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1389, column: 9)
!931 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1389, column: 9)
!932 = !DILocation(line: 1389, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1389, column: 9)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1389, column: 9)
!935 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1389, column: 9)
!936 = !DILocation(line: 1390, column: 27, scope: !925)
!937 = !DILocation(line: 1390, column: 15, scope: !925)
!938 = !DILocation(line: 1390, column: 20, scope: !925)
!939 = !DILocation(line: 1391, column: 7, scope: !925)
!940 = !DILocation(line: 1393, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 1393, column: 9)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1393, column: 9)
!943 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1391, column: 14)
!944 = !DILocation(line: 1393, column: 9, scope: !942)
!945 = !DILocation(line: 1393, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !3, line: 1393, column: 9)
!947 = distinct !DILexicalBlock(scope: !941, file: !3, line: 1393, column: 9)
!948 = !DILocation(line: 1393, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1393, column: 9)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1393, column: 9)
!951 = distinct !DILexicalBlock(scope: !946, file: !3, line: 1393, column: 9)
!952 = !DILocation(line: 1394, column: 32, scope: !943)
!953 = !DILocation(line: 1394, column: 25, scope: !943)
!954 = !DILocation(line: 1397, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1397, column: 11)
!956 = !DILocation(line: 1397, column: 11, scope: !576)
!957 = !DILocation(line: 1398, column: 27, scope: !958)
!958 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1397, column: 22)
!959 = !{!452, !412, i64 144}
!960 = !DILocation(line: 1398, column: 41, scope: !958)
!961 = !{!452, !412, i64 92}
!962 = !DILocation(line: 1398, column: 56, scope: !958)
!963 = !DILocation(line: 1398, column: 72, scope: !958)
!964 = !DILocation(line: 1399, column: 22, scope: !958)
!965 = !{!452, !440, i64 78}
!966 = !DILocation(line: 1399, column: 39, scope: !958)
!967 = !{!452, !440, i64 80}
!968 = !DILocation(line: 1398, column: 9, scope: !958)
!969 = !DILocation(line: 1400, column: 7, scope: !958)
!970 = !DILocation(line: 1402, column: 22, scope: !576)
!971 = !{!452, !454, i64 64}
!972 = !DILocation(line: 1384, column: 13, scope: !576)
!973 = !DILocation(line: 1385, column: 22, scope: !576)
!974 = !DILocation(line: 1380, column: 23, scope: !576)
!975 = !DILocation(line: 1405, column: 18, scope: !576)
!976 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !977)
!977 = distinct !DILocation(line: 1406, column: 7, scope: !576)
!978 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !977)
!979 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !977)
!980 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !977)
!981 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !977)
!982 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !977)
!983 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !977)
!984 = !DILocation(line: 1408, column: 31, scope: !576)
!985 = !DILocation(line: 1409, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 1409, column: 7)
!987 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1409, column: 7)
!988 = !DILocation(line: 1409, column: 7, scope: !987)
!989 = !DILocation(line: 1410, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1410, column: 11)
!991 = !DILocation(line: 1416, column: 18, scope: !992)
!992 = distinct !DILexicalBlock(scope: !577, file: !3, line: 1413, column: 12)
!993 = !DILocation(line: 1419, column: 15, scope: !992)
!994 = !DILocation(line: 1419, column: 7, scope: !992)
!995 = !{!452, !413, i64 84}
!996 = !DILocation(line: 1420, column: 34, scope: !997)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 1420, column: 11)
!998 = !{!452, !413, i64 85}
!999 = !DILocation(line: 1420, column: 25, scope: !997)
!1000 = !DILocation(line: 1420, column: 11, scope: !992)
!1001 = !DILocation(line: 1421, column: 23, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 1420, column: 48)
!1003 = !DILocation(line: 1423, column: 33, scope: !1002)
!1004 = !DILocation(line: 1424, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 1424, column: 9)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1424, column: 9)
!1007 = !{!452, !454, i64 248}
!1008 = !DILocation(line: 1424, column: 9, scope: !1006)
!1009 = !DILocation(line: 1425, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1425, column: 13)
!1011 = !DILocation(line: 1425, column: 13, scope: !1002)
!1012 = !DILocation(line: 1429, column: 17, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1429, column: 13)
!1014 = !DILocation(line: 1429, column: 13, scope: !1002)
!1015 = !DILocation(line: 1430, column: 11, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1429, column: 28)
!1017 = !DILocation(line: 1431, column: 9, scope: !1016)
!1018 = !DILocation(line: 1439, column: 9, scope: !546)
!1019 = !DILocation(line: 1440, column: 14, scope: !546)
!1020 = !DILocation(line: 1440, column: 3, scope: !546)
!1021 = !DILocation(line: 0, scope: !582)
!1022 = !DILocation(line: 1441, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1441, column: 5)
!1024 = distinct !DILexicalBlock(scope: !584, file: !3, line: 1441, column: 5)
!1025 = !DILocation(line: 1441, column: 5, scope: !1024)
!1026 = !DILocation(line: 1441, column: 5, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1441, column: 5)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 1441, column: 5)
!1029 = !DILocation(line: 1441, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1441, column: 5)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1441, column: 5)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 1441, column: 5)
!1033 = !DILocation(line: 1445, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !584, file: !3, line: 1445, column: 9)
!1035 = !DILocation(line: 1445, column: 34, scope: !1034)
!1036 = !DILocation(line: 1445, column: 27, scope: !1034)
!1037 = !DILocation(line: 1445, column: 39, scope: !1034)
!1038 = !DILocation(line: 1450, column: 9, scope: !584)
!1039 = !DILocation(line: 1452, column: 7, scope: !582)
!1040 = !DILocation(line: 1454, column: 16, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1454, column: 11)
!1042 = !DILocation(line: 0, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 1455, column: 9)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 1455, column: 9)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1454, column: 25)
!1046 = !DILocation(line: 1454, column: 11, scope: !582)
!1047 = !DILocation(line: 1455, column: 9, scope: !1043)
!1048 = !DILocation(line: 1455, column: 9, scope: !1044)
!1049 = !DILocation(line: 1455, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 1455, column: 9)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 1455, column: 9)
!1052 = !DILocation(line: 1455, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 1455, column: 9)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1455, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 1455, column: 9)
!1056 = !DILocation(line: 1456, column: 27, scope: !1045)
!1057 = !DILocation(line: 1456, column: 15, scope: !1045)
!1058 = !DILocation(line: 1456, column: 20, scope: !1045)
!1059 = !DILocation(line: 1457, column: 7, scope: !1045)
!1060 = !DILocation(line: 1459, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 1459, column: 9)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1459, column: 9)
!1063 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1457, column: 14)
!1064 = !DILocation(line: 1459, column: 9, scope: !1062)
!1065 = !DILocation(line: 1459, column: 9, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 1459, column: 9)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 1459, column: 9)
!1068 = !DILocation(line: 1459, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1459, column: 9)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1459, column: 9)
!1071 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 1459, column: 9)
!1072 = !DILocation(line: 1460, column: 28, scope: !1063)
!1073 = !DILocation(line: 1460, column: 21, scope: !1063)
!1074 = !DILocation(line: 1451, column: 23, scope: !582)
!1075 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 1464, column: 7, scope: !582)
!1077 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !1076)
!1078 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1076)
!1079 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !1076)
!1080 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !1076)
!1081 = !DILocation(line: 1463, column: 18, scope: !582)
!1082 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1076)
!1083 = !DILocation(line: 1465, column: 5, scope: !582)
!1084 = !DILocation(line: 1467, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1465, column: 12)
!1086 = !DILocation(line: 0, scope: !1085)
!1087 = distinct !{!1087, !1020, !1088}
!1088 = !DILocation(line: 1469, column: 3, scope: !546)
!1089 = !DILocation(line: 1470, column: 1, scope: !546)
!1090 = distinct !DISubprogram(name: "tcp_close", scope: !3, file: !3, line: 484, type: !1091, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!140, !145}
!1093 = !{!1094}
!1094 = !DILocalVariable(name: "pcb", arg: 1, scope: !1090, file: !3, line: 484, type: !145)
!1095 = !DILocation(line: 484, column: 27, scope: !1090)
!1096 = !DILocation(line: 488, column: 3, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 488, column: 3)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 488, column: 3)
!1099 = !DILocation(line: 488, column: 3, scope: !1098)
!1100 = !DILocation(line: 488, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 488, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 488, column: 3)
!1103 = !DILocation(line: 488, column: 3, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 488, column: 3)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 488, column: 3)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 488, column: 3)
!1107 = !DILocation(line: 493, column: 12, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 493, column: 7)
!1109 = !DILocation(line: 493, column: 18, scope: !1108)
!1110 = !DILocation(line: 493, column: 7, scope: !1090)
!1111 = !DILocation(line: 495, column: 5, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 495, column: 5)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 493, column: 29)
!1114 = !DILocation(line: 496, column: 3, scope: !1113)
!1115 = !DILocation(line: 498, column: 10, scope: !1090)
!1116 = !DILocation(line: 499, column: 1, scope: !1090)
!1117 = distinct !DISubprogram(name: "tcp_close_shutdown", scope: !3, file: !3, line: 348, type: !1118, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!140, !145, !91}
!1120 = !{!1121, !1122, !1123, !1132}
!1121 = !DILocalVariable(name: "pcb", arg: 1, scope: !1117, file: !3, line: 348, type: !145)
!1122 = !DILocalVariable(name: "rst_on_unacked_data", arg: 2, scope: !1117, file: !3, line: 348, type: !91)
!1123 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1124, file: !3, line: 364, type: !145)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 364, column: 7)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 364, column: 7)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 364, column: 7)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 364, column: 7)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 353, column: 76)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 353, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 352, column: 91)
!1131 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 352, column: 7)
!1132 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1133, file: !3, line: 388, type: !145)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 388, column: 9)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 388, column: 9)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 388, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 387, column: 33)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 387, column: 11)
!1138 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 378, column: 23)
!1139 = !DILocation(line: 348, column: 36, scope: !1117)
!1140 = !DILocation(line: 348, column: 46, scope: !1117)
!1141 = !DILocation(line: 350, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 350, column: 3)
!1143 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 350, column: 3)
!1144 = !DILocation(line: 350, column: 3, scope: !1143)
!1145 = !DILocation(line: 350, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 350, column: 3)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 350, column: 3)
!1148 = !DILocation(line: 350, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 350, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 350, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 350, column: 3)
!1152 = !DILocation(line: 352, column: 7, scope: !1131)
!1153 = !DILocation(line: 0, scope: !1131)
!1154 = !DILocation(line: 352, column: 27, scope: !1131)
!1155 = !DILocation(line: 352, column: 59, scope: !1131)
!1156 = !DILocation(line: 353, column: 15, scope: !1129)
!1157 = !DILocation(line: 353, column: 28, scope: !1129)
!1158 = !DILocation(line: 353, column: 37, scope: !1129)
!1159 = !DILocation(line: 356, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 356, column: 7)
!1161 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 356, column: 7)
!1162 = !DILocation(line: 353, column: 46, scope: !1129)
!1163 = !{!452, !412, i64 96}
!1164 = !DILocation(line: 353, column: 57, scope: !1129)
!1165 = !DILocation(line: 353, column: 54, scope: !1129)
!1166 = !DILocation(line: 353, column: 9, scope: !1130)
!1167 = !DILocation(line: 356, column: 7, scope: !1161)
!1168 = !DILocation(line: 356, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 356, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 356, column: 7)
!1171 = !DILocation(line: 356, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 356, column: 7)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 356, column: 7)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 356, column: 7)
!1175 = !DILocation(line: 360, column: 25, scope: !1128)
!1176 = !DILocation(line: 360, column: 39, scope: !1128)
!1177 = !DILocation(line: 360, column: 54, scope: !1128)
!1178 = !DILocation(line: 360, column: 70, scope: !1128)
!1179 = !DILocation(line: 361, column: 20, scope: !1128)
!1180 = !DILocation(line: 361, column: 37, scope: !1128)
!1181 = !DILocation(line: 360, column: 7, scope: !1128)
!1182 = !DILocation(line: 363, column: 7, scope: !1128)
!1183 = !DILocation(line: 364, column: 7, scope: !1125)
!1184 = !DILocation(line: 364, column: 7, scope: !1126)
!1185 = !DILocation(line: 364, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 364, column: 7)
!1187 = !DILocation(line: 364, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 364, column: 7)
!1189 = !DILocation(line: 364, column: 7, scope: !1124)
!1190 = !DILocation(line: 364, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 364, column: 7)
!1192 = !DILocation(line: 364, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 364, column: 7)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 364, column: 7)
!1195 = !DILocation(line: 364, column: 7, scope: !1194)
!1196 = distinct !{!1196, !1187, !1187}
!1197 = !DILocation(line: 364, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 364, column: 7)
!1199 = !DILocation(line: 364, column: 7, scope: !1127)
!1200 = !DILocation(line: 366, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 366, column: 11)
!1202 = !DILocation(line: 366, column: 25, scope: !1201)
!1203 = !DILocation(line: 366, column: 11, scope: !1128)
!1204 = !DILocation(line: 368, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 366, column: 33)
!1206 = !DILocation(line: 369, column: 7, scope: !1205)
!1207 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1208)
!1208 = distinct !DILocation(line: 370, column: 9, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 369, column: 14)
!1210 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !1208)
!1211 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1208)
!1212 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !1208)
!1213 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !1208)
!1214 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !1208)
!1215 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1208)
!1216 = !DILocation(line: 378, column: 3, scope: !1117)
!1217 = !DILocation(line: 387, column: 16, scope: !1137)
!1218 = !DILocation(line: 387, column: 27, scope: !1137)
!1219 = !DILocation(line: 387, column: 11, scope: !1138)
!1220 = !DILocation(line: 388, column: 9, scope: !1134)
!1221 = !DILocation(line: 388, column: 9, scope: !1135)
!1222 = !DILocation(line: 388, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 388, column: 9)
!1224 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 390, column: 7, scope: !1138)
!1226 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1225)
!1227 = !DILocation(line: 388, column: 9, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 388, column: 9)
!1229 = !DILocation(line: 388, column: 9, scope: !1133)
!1230 = !DILocation(line: 388, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 388, column: 9)
!1232 = !DILocation(line: 388, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 388, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 388, column: 9)
!1235 = !DILocation(line: 388, column: 9, scope: !1234)
!1236 = distinct !{!1236, !1227, !1227}
!1237 = !DILocation(line: 388, column: 9, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 388, column: 9)
!1239 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !1225)
!1240 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1225)
!1241 = !DILocation(line: 391, column: 7, scope: !1138)
!1242 = !DILocalVariable(name: "pcb", arg: 1, scope: !1243, file: !3, line: 269, type: !145)
!1243 = distinct !DISubprogram(name: "tcp_listen_closed", scope: !3, file: !3, line: 269, type: !443, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1244)
!1244 = !{!1242, !1245}
!1245 = !DILocalVariable(name: "i", scope: !1243, file: !3, line: 272, type: !1246)
!1246 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1247, line: 40, baseType: !1248)
!1247 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1249, line: 129, baseType: !272)
!1249 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1250 = !DILocation(line: 269, column: 35, scope: !1243, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 393, column: 7, scope: !1138)
!1252 = !DILocation(line: 272, column: 10, scope: !1243, inlinedAt: !1251)
!1253 = !DILocation(line: 276, column: 25, scope: !1254, inlinedAt: !1251)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 275, column: 55)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 275, column: 3)
!1256 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 275, column: 3)
!1257 = !DILocalVariable(name: "list", arg: 1, scope: !1258, file: !3, line: 251, type: !145)
!1258 = distinct !DISubprogram(name: "tcp_remove_listener", scope: !3, file: !3, line: 251, type: !1259, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1261)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !145, !98}
!1261 = !{!1257, !1262, !1263}
!1262 = !DILocalVariable(name: "lpcb", arg: 2, scope: !1258, file: !3, line: 251, type: !98)
!1263 = !DILocalVariable(name: "pcb", scope: !1258, file: !3, line: 253, type: !145)
!1264 = !DILocation(line: 251, column: 37, scope: !1258, inlinedAt: !1265)
!1265 = distinct !DILocation(line: 276, column: 5, scope: !1254, inlinedAt: !1251)
!1266 = !DILocation(line: 251, column: 66, scope: !1258, inlinedAt: !1265)
!1267 = !DILocation(line: 253, column: 19, scope: !1258, inlinedAt: !1265)
!1268 = !DILocation(line: 257, column: 24, scope: !1269, inlinedAt: !1265)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 257, column: 3)
!1270 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 257, column: 3)
!1271 = !DILocation(line: 257, column: 3, scope: !1270, inlinedAt: !1265)
!1272 = !DILocation(line: 258, column: 14, scope: !1273, inlinedAt: !1265)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 258, column: 9)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 257, column: 50)
!1275 = !{!452, !454, i64 216}
!1276 = !DILocation(line: 258, column: 23, scope: !1273, inlinedAt: !1265)
!1277 = !DILocation(line: 258, column: 9, scope: !1274, inlinedAt: !1265)
!1278 = !DILocation(line: 259, column: 21, scope: !1279, inlinedAt: !1265)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 258, column: 32)
!1280 = !DILocation(line: 260, column: 5, scope: !1279, inlinedAt: !1265)
!1281 = !DILocation(line: 257, column: 44, scope: !1269, inlinedAt: !1265)
!1282 = distinct !{!1282, !1283, !1284}
!1283 = !DILocation(line: 257, column: 3, scope: !1270)
!1284 = !DILocation(line: 261, column: 3, scope: !1270)
!1285 = !DILocation(line: 394, column: 7, scope: !1138)
!1286 = !DILocalVariable(name: "pcb", arg: 1, scope: !1287, file: !3, line: 221, type: !145)
!1287 = distinct !DISubprogram(name: "tcp_free_listen", scope: !3, file: !3, line: 221, type: !443, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1288)
!1288 = !{!1286}
!1289 = !DILocation(line: 221, column: 33, scope: !1287, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 395, column: 7, scope: !1138)
!1291 = !DILocation(line: 223, column: 3, scope: !1292, inlinedAt: !1290)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 223, column: 3)
!1293 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 223, column: 3)
!1294 = !DILocation(line: 223, column: 3, scope: !1293, inlinedAt: !1290)
!1295 = !DILocation(line: 223, column: 3, scope: !1296, inlinedAt: !1290)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 223, column: 3)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 223, column: 3)
!1298 = !DILocation(line: 223, column: 3, scope: !1299, inlinedAt: !1290)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 223, column: 3)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 223, column: 3)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 223, column: 3)
!1302 = !DILocation(line: 227, column: 34, scope: !1287, inlinedAt: !1290)
!1303 = !DILocation(line: 227, column: 3, scope: !1287, inlinedAt: !1290)
!1304 = !DILocation(line: 396, column: 7, scope: !1138)
!1305 = !DILocation(line: 398, column: 7, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 398, column: 7)
!1307 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 399, column: 7, scope: !1138)
!1309 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !1308)
!1310 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1308)
!1311 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !1308)
!1312 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !1308)
!1313 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !1308)
!1314 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1308)
!1315 = !DILocation(line: 401, column: 7, scope: !1138)
!1316 = !DILocation(line: 403, column: 14, scope: !1138)
!1317 = !DILocation(line: 403, column: 7, scope: !1138)
!1318 = !DILocation(line: 0, scope: !1117)
!1319 = !DILocation(line: 406, column: 1, scope: !1117)
!1320 = distinct !DISubprogram(name: "tcp_shutdown", scope: !3, file: !3, line: 515, type: !1321, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!140, !145, !50, !50}
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "pcb", arg: 1, scope: !1320, file: !3, line: 515, type: !145)
!1325 = !DILocalVariable(name: "shut_rx", arg: 2, scope: !1320, file: !3, line: 515, type: !50)
!1326 = !DILocalVariable(name: "shut_tx", arg: 3, scope: !1320, file: !3, line: 515, type: !50)
!1327 = !DILocation(line: 515, column: 30, scope: !1320)
!1328 = !DILocation(line: 515, column: 39, scope: !1320)
!1329 = !DILocation(line: 515, column: 52, scope: !1320)
!1330 = !DILocation(line: 519, column: 3, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 519, column: 3)
!1332 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 519, column: 3)
!1333 = !DILocation(line: 519, column: 3, scope: !1332)
!1334 = !DILocation(line: 519, column: 3, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 519, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 519, column: 3)
!1337 = !DILocation(line: 519, column: 3, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 519, column: 3)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 519, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 519, column: 3)
!1341 = !DILocation(line: 521, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 521, column: 7)
!1343 = !DILocation(line: 521, column: 18, scope: !1342)
!1344 = !DILocation(line: 521, column: 7, scope: !1320)
!1345 = !DILocation(line: 524, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 524, column: 7)
!1347 = !DILocation(line: 524, column: 7, scope: !1320)
!1348 = !DILocation(line: 526, column: 5, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 526, column: 5)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 524, column: 16)
!1351 = !DILocation(line: 527, column: 9, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 527, column: 9)
!1353 = !DILocation(line: 527, column: 9, scope: !1350)
!1354 = !DILocation(line: 529, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 527, column: 18)
!1356 = !DILocation(line: 529, column: 7, scope: !1355)
!1357 = !DILocation(line: 532, column: 14, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 532, column: 9)
!1359 = !DILocation(line: 532, column: 27, scope: !1358)
!1360 = !DILocation(line: 532, column: 9, scope: !1350)
!1361 = !DILocation(line: 533, column: 7, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1358, file: !3, line: 532, column: 36)
!1363 = !DILocation(line: 534, column: 25, scope: !1362)
!1364 = !DILocation(line: 535, column: 5, scope: !1362)
!1365 = !DILocation(line: 537, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 537, column: 7)
!1367 = !DILocation(line: 537, column: 7, scope: !1320)
!1368 = !DILocation(line: 540, column: 5, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 537, column: 16)
!1370 = !DILocation(line: 544, column: 16, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 540, column: 25)
!1372 = !DILocation(line: 544, column: 9, scope: !1371)
!1373 = !DILocation(line: 0, scope: !1320)
!1374 = !DILocation(line: 552, column: 1, scope: !1320)
!1375 = distinct !DISubprogram(name: "tcp_abandon", scope: !3, file: !3, line: 563, type: !1376, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1378)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !145, !50}
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1388, !1389, !1390}
!1379 = !DILocalVariable(name: "pcb", arg: 1, scope: !1375, file: !3, line: 563, type: !145)
!1380 = !DILocalVariable(name: "reset", arg: 2, scope: !1375, file: !3, line: 563, type: !50)
!1381 = !DILocalVariable(name: "seqno", scope: !1375, file: !3, line: 565, type: !95)
!1382 = !DILocalVariable(name: "ackno", scope: !1375, file: !3, line: 565, type: !95)
!1383 = !DILocalVariable(name: "errf", scope: !1375, file: !3, line: 567, type: !253)
!1384 = !DILocalVariable(name: "errf_arg", scope: !1375, file: !3, line: 569, type: !88)
!1385 = !DILocalVariable(name: "send_rst", scope: !1386, file: !3, line: 585, type: !50)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 584, column: 10)
!1387 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 581, column: 7)
!1388 = !DILocalVariable(name: "local_port", scope: !1386, file: !3, line: 586, type: !81)
!1389 = !DILocalVariable(name: "last_state", scope: !1386, file: !3, line: 587, type: !5)
!1390 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1391, file: !3, line: 597, type: !145)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 597, column: 9)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 597, column: 9)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !3, line: 597, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 595, column: 33)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 595, column: 11)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 594, column: 31)
!1397 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 594, column: 9)
!1398 = !DILocation(line: 563, column: 29, scope: !1375)
!1399 = !DILocation(line: 563, column: 38, scope: !1375)
!1400 = !DILocation(line: 573, column: 3, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 573, column: 3)
!1402 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 573, column: 3)
!1403 = !DILocation(line: 573, column: 3, scope: !1402)
!1404 = !DILocation(line: 573, column: 3, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 573, column: 3)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 573, column: 3)
!1407 = !DILocation(line: 573, column: 3, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 573, column: 3)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 573, column: 3)
!1410 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 573, column: 3)
!1411 = !DILocation(line: 576, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 576, column: 3)
!1413 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 576, column: 3)
!1414 = !DILocation(line: 576, column: 3, scope: !1413)
!1415 = !DILocation(line: 576, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 576, column: 3)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 576, column: 3)
!1418 = !DILocation(line: 576, column: 3, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !3, line: 576, column: 3)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 576, column: 3)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 576, column: 3)
!1422 = !DILocation(line: 582, column: 5, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 581, column: 32)
!1424 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 583, column: 5, scope: !1423)
!1426 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !1425)
!1427 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1425)
!1428 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !1425)
!1429 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !1425)
!1430 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !1425)
!1431 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1425)
!1432 = !DILocation(line: 584, column: 3, scope: !1423)
!1433 = !DILocation(line: 585, column: 9, scope: !1386)
!1434 = !DILocation(line: 586, column: 11, scope: !1386)
!1435 = !DILocation(line: 588, column: 18, scope: !1386)
!1436 = !DILocation(line: 565, column: 9, scope: !1375)
!1437 = !DILocation(line: 589, column: 18, scope: !1386)
!1438 = !DILocation(line: 565, column: 16, scope: !1375)
!1439 = !DILocation(line: 591, column: 17, scope: !1386)
!1440 = !DILocation(line: 567, column: 14, scope: !1375)
!1441 = !DILocation(line: 593, column: 21, scope: !1386)
!1442 = !DILocation(line: 569, column: 9, scope: !1375)
!1443 = !DILocation(line: 594, column: 20, scope: !1397)
!1444 = !DILocation(line: 0, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 599, column: 12)
!1446 = !DILocation(line: 594, column: 9, scope: !1386)
!1447 = !DILocation(line: 595, column: 27, scope: !1395)
!1448 = !DILocation(line: 595, column: 11, scope: !1396)
!1449 = !DILocation(line: 597, column: 9, scope: !1392)
!1450 = !DILocation(line: 597, column: 9, scope: !1393)
!1451 = !DILocation(line: 597, column: 9, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 597, column: 9)
!1453 = !DILocation(line: 597, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 597, column: 9)
!1455 = !DILocation(line: 597, column: 9, scope: !1391)
!1456 = !DILocation(line: 597, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 597, column: 9)
!1458 = !DILocation(line: 597, column: 9, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 597, column: 9)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 597, column: 9)
!1461 = !DILocation(line: 597, column: 9, scope: !1460)
!1462 = distinct !{!1462, !1453, !1453}
!1463 = !DILocation(line: 597, column: 9, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 597, column: 9)
!1465 = !DILocation(line: 598, column: 7, scope: !1394)
!1466 = !DILocation(line: 602, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 602, column: 7)
!1468 = !DILocation(line: 604, column: 14, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 604, column: 9)
!1470 = !DILocation(line: 604, column: 22, scope: !1469)
!1471 = !DILocation(line: 604, column: 9, scope: !1386)
!1472 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 605, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 604, column: 31)
!1475 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !1473)
!1476 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !1473)
!1477 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !1473)
!1479 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !1478)
!1480 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !1478)
!1481 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !1478)
!1482 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !1478)
!1483 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !1478)
!1484 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !1478)
!1485 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !1478)
!1486 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !1473)
!1487 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !1473)
!1488 = !DILocation(line: 607, column: 14, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 607, column: 9)
!1490 = !DILocation(line: 607, column: 21, scope: !1489)
!1491 = !DILocation(line: 607, column: 9, scope: !1386)
!1492 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 608, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 607, column: 30)
!1495 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !1493)
!1496 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !1493)
!1497 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !1493)
!1499 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !1498)
!1500 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !1498)
!1501 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !1498)
!1502 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !1498)
!1503 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !1498)
!1504 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !1498)
!1505 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !1498)
!1506 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !1493)
!1507 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !1493)
!1508 = !DILocation(line: 611, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 611, column: 9)
!1510 = !DILocation(line: 611, column: 20, scope: !1509)
!1511 = !DILocation(line: 611, column: 9, scope: !1386)
!1512 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 612, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 611, column: 29)
!1515 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !1513)
!1516 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !1513)
!1517 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !1513)
!1519 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !1518)
!1520 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !1518)
!1521 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !1518)
!1522 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !1518)
!1523 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !1518)
!1524 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !1518)
!1525 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !1518)
!1526 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !1513)
!1527 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !1513)
!1528 = !DILocation(line: 616, column: 9, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 616, column: 9)
!1530 = !DILocation(line: 616, column: 9, scope: !1386)
!1531 = !DILocation(line: 618, column: 40, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 616, column: 19)
!1533 = !DILocation(line: 618, column: 56, scope: !1532)
!1534 = !DILocation(line: 618, column: 84, scope: !1532)
!1535 = !DILocation(line: 618, column: 7, scope: !1532)
!1536 = !DILocation(line: 619, column: 5, scope: !1532)
!1537 = !DILocation(line: 587, column: 20, scope: !1386)
!1538 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 621, column: 5, scope: !1386)
!1540 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !1539)
!1541 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !1539)
!1542 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !1539)
!1543 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !1539)
!1544 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !1539)
!1545 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !1539)
!1546 = !DILocation(line: 622, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 622, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 622, column: 5)
!1549 = !DILocation(line: 622, column: 5, scope: !1548)
!1550 = !DILocation(line: 624, column: 1, scope: !1375)
!1551 = distinct !DISubprogram(name: "tcp_pcb_remove", scope: !3, file: !3, line: 2177, type: !1552, isLocal: false, isDefinition: true, scopeLine: 2178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1554)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !279, !145}
!1554 = !{!1555, !1556, !1557}
!1555 = !DILocalVariable(name: "pcblist", arg: 1, scope: !1551, file: !3, line: 2177, type: !279)
!1556 = !DILocalVariable(name: "pcb", arg: 2, scope: !1551, file: !3, line: 2177, type: !145)
!1557 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1558, file: !3, line: 2182, type: !145)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 2182, column: 3)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 2182, column: 3)
!1560 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 2182, column: 3)
!1561 = !DILocation(line: 2177, column: 33, scope: !1551)
!1562 = !DILocation(line: 2177, column: 58, scope: !1551)
!1563 = !DILocation(line: 2179, column: 3, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 2179, column: 3)
!1565 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 2179, column: 3)
!1566 = !DILocation(line: 2179, column: 3, scope: !1565)
!1567 = !DILocation(line: 2179, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 2179, column: 3)
!1569 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 2179, column: 3)
!1570 = !DILocation(line: 2179, column: 3, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 2179, column: 3)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 2179, column: 3)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 2179, column: 3)
!1574 = !DILocation(line: 2180, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 2180, column: 3)
!1576 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 2180, column: 3)
!1577 = !DILocation(line: 2180, column: 3, scope: !1576)
!1578 = !DILocation(line: 2180, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 2180, column: 3)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 2180, column: 3)
!1581 = !DILocation(line: 2180, column: 3, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2180, column: 3)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 2180, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2180, column: 3)
!1585 = !DILocation(line: 2182, column: 3, scope: !1559)
!1586 = !DILocation(line: 2182, column: 3, scope: !1560)
!1587 = !DILocation(line: 2182, column: 3, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 2182, column: 3)
!1589 = !DILocation(line: 2182, column: 3, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 2182, column: 3)
!1591 = !DILocation(line: 2182, column: 3, scope: !1558)
!1592 = !DILocation(line: 2182, column: 3, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 2182, column: 3)
!1594 = !DILocation(line: 2182, column: 3, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 2182, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 2182, column: 3)
!1597 = !DILocation(line: 2182, column: 3, scope: !1596)
!1598 = distinct !{!1598, !1589, !1589}
!1599 = !DILocation(line: 2182, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 2182, column: 3)
!1601 = !DILocation(line: 2184, column: 3, scope: !1551)
!1602 = !DILocation(line: 2187, column: 13, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 2187, column: 7)
!1604 = !DILocation(line: 2187, column: 33, scope: !1603)
!1605 = !DILocation(line: 2189, column: 13, scope: !1603)
!1606 = !DILocation(line: 2189, column: 19, scope: !1603)
!1607 = !DILocation(line: 2187, column: 7, scope: !1551)
!1608 = !DILocation(line: 2190, column: 5, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 2190, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 2189, column: 36)
!1611 = !DILocation(line: 2191, column: 5, scope: !1610)
!1612 = !DILocation(line: 2194, column: 12, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 2194, column: 7)
!1614 = !DILocation(line: 2192, column: 3, scope: !1610)
!1615 = !DILocation(line: 2194, column: 18, scope: !1613)
!1616 = !DILocation(line: 2194, column: 7, scope: !1551)
!1617 = !DILocation(line: 2195, column: 5, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 2195, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 2195, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 2194, column: 29)
!1621 = !DILocation(line: 2195, column: 5, scope: !1619)
!1622 = !DILocation(line: 2195, column: 5, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 2195, column: 5)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 2195, column: 5)
!1625 = !DILocation(line: 2195, column: 5, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 2195, column: 5)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 2195, column: 5)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 2195, column: 5)
!1629 = !DILocation(line: 2196, column: 5, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 2196, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 2196, column: 5)
!1632 = !DILocation(line: 2196, column: 5, scope: !1631)
!1633 = !DILocation(line: 2196, column: 5, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 2196, column: 5)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 2196, column: 5)
!1636 = !DILocation(line: 2196, column: 5, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 2196, column: 5)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 2196, column: 5)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 2196, column: 5)
!1640 = !DILocation(line: 2198, column: 5, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 2198, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 2198, column: 5)
!1643 = !DILocation(line: 2198, column: 5, scope: !1642)
!1644 = !DILocation(line: 2198, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 2198, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 2198, column: 5)
!1647 = !DILocation(line: 2198, column: 5, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 2198, column: 5)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 2198, column: 5)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 2198, column: 5)
!1651 = !DILocation(line: 2202, column: 14, scope: !1551)
!1652 = !DILocation(line: 2204, column: 8, scope: !1551)
!1653 = !DILocation(line: 2204, column: 19, scope: !1551)
!1654 = !DILocation(line: 2207, column: 1, scope: !1551)
!1655 = !DILocation(line: 1608, column: 31, scope: !858)
!1656 = !DILocation(line: 1610, column: 14, scope: !858)
!1657 = !DILocation(line: 1611, column: 33, scope: !863)
!1658 = !DILocation(line: 1611, column: 21, scope: !863)
!1659 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 1612, column: 5, scope: !863)
!1661 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !1660)
!1662 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !1660)
!1663 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !1660)
!1664 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !1660)
!1665 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !1660)
!1666 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !1660)
!1667 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !1660)
!1668 = !DILocation(line: 1615, column: 1, scope: !858)
!1669 = distinct !DISubprogram(name: "tcp_abort", scope: !3, file: !3, line: 638, type: !443, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1670)
!1670 = !{!1671}
!1671 = !DILocalVariable(name: "pcb", arg: 1, scope: !1669, file: !3, line: 638, type: !145)
!1672 = !DILocation(line: 638, column: 27, scope: !1669)
!1673 = !DILocation(line: 640, column: 3, scope: !1669)
!1674 = !DILocation(line: 641, column: 1, scope: !1669)
!1675 = distinct !DISubprogram(name: "tcp_bind", scope: !3, file: !3, line: 661, type: !1676, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!140, !145, !267, !81}
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1679 = !DILocalVariable(name: "pcb", arg: 1, scope: !1675, file: !3, line: 661, type: !145)
!1680 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1675, file: !3, line: 661, type: !267)
!1681 = !DILocalVariable(name: "port", arg: 3, scope: !1675, file: !3, line: 661, type: !81)
!1682 = !DILocalVariable(name: "i", scope: !1675, file: !3, line: 663, type: !50)
!1683 = !DILocalVariable(name: "max_pcb_list", scope: !1675, file: !3, line: 664, type: !50)
!1684 = !DILocalVariable(name: "cpcb", scope: !1675, file: !3, line: 665, type: !145)
!1685 = !DILocalVariable(name: "zoned_ipaddr", scope: !1675, file: !3, line: 667, type: !102)
!1686 = !DILocalVariable(name: "selected_netif", scope: !1687, file: !3, line: 703, type: !1690)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 703, column: 5)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 701, column: 79)
!1689 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 701, column: 7)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !76, line: 260, size: 2240, elements: !1692)
!1692 = !{!1693, !1694, !1695, !1696, !1697, !1701, !1703, !1705, !1706, !1711, !1718, !1723, !1730, !1735, !1736, !1737, !1739, !1740, !1741, !1742, !1744, !1745, !1746, !1750, !1751, !1752, !1753}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1691, file: !76, line: 263, baseType: !1690, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1691, file: !76, line: 268, baseType: !102, size: 192, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1691, file: !76, line: 269, baseType: !102, size: 192, offset: 256)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1691, file: !76, line: 270, baseType: !102, size: 192, offset: 448)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1691, file: !76, line: 274, baseType: !1698, size: 576, offset: 640)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 576, elements: !1699)
!1699 = !{!1700}
!1700 = !DISubrange(count: 3)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1691, file: !76, line: 277, baseType: !1702, size: 24, offset: 1216)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !1699)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1691, file: !76, line: 282, baseType: !1704, size: 96, offset: 1248)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 96, elements: !1699)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1691, file: !76, line: 283, baseType: !1704, size: 96, offset: 1344)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1691, file: !76, line: 288, baseType: !1707, size: 64, offset: 1472)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !76, line: 178, baseType: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!140, !204, !1690}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1691, file: !76, line: 294, baseType: !1712, size: 64, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !76, line: 189, baseType: !1713)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!140, !1690, !204, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1691, file: !76, line: 299, baseType: !1719, size: 64, offset: 1600)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !76, line: 212, baseType: !1720)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!140, !1690, !204}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1691, file: !76, line: 305, baseType: !1724, size: 64, offset: 1664)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !76, line: 202, baseType: !1725)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!140, !1690, !204, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1691, file: !76, line: 310, baseType: !1731, size: 64, offset: 1728)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !76, line: 214, baseType: !1732)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !1690}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1691, file: !76, line: 319, baseType: !1731, size: 64, offset: 1792)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1691, file: !76, line: 323, baseType: !88, size: 64, offset: 1856)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1691, file: !76, line: 325, baseType: !1738, size: 64, offset: 1920)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !325)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1691, file: !76, line: 332, baseType: !81, size: 16, offset: 1984)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1691, file: !76, line: 335, baseType: !81, size: 16, offset: 2000)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1691, file: !76, line: 338, baseType: !81, size: 16, offset: 2016)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1691, file: !76, line: 341, baseType: !1743, size: 48, offset: 2032)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !333)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1691, file: !76, line: 343, baseType: !91, size: 8, offset: 2080)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1691, file: !76, line: 345, baseType: !91, size: 8, offset: 2088)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1691, file: !76, line: 347, baseType: !1747, size: 16, offset: 2096)
!1747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, elements: !1748)
!1748 = !{!1749}
!1749 = !DISubrange(count: 2)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1691, file: !76, line: 350, baseType: !91, size: 8, offset: 2112)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1691, file: !76, line: 353, baseType: !91, size: 8, offset: 2120)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1691, file: !76, line: 357, baseType: !91, size: 8, offset: 2128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1691, file: !76, line: 377, baseType: !1754, size: 64, offset: 2176)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !76, line: 222, baseType: !1755)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!140, !1690, !1728, !75}
!1758 = !DILocation(line: 661, column: 26, scope: !1675)
!1759 = !DILocation(line: 661, column: 48, scope: !1675)
!1760 = !DILocation(line: 661, column: 62, scope: !1675)
!1761 = !DILocation(line: 664, column: 7, scope: !1675)
!1762 = !DILocation(line: 667, column: 3, scope: !1675)
!1763 = !DILocation(line: 674, column: 14, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 674, column: 7)
!1765 = !DILocation(line: 674, column: 7, scope: !1675)
!1766 = !DILocation(line: 681, column: 3, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 681, column: 3)
!1768 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 681, column: 3)
!1769 = !DILocation(line: 681, column: 3, scope: !1768)
!1770 = !DILocation(line: 681, column: 3, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 681, column: 3)
!1772 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 681, column: 3)
!1773 = !DILocation(line: 681, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 681, column: 3)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 681, column: 3)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 681, column: 3)
!1777 = !DILocation(line: 683, column: 3, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 683, column: 3)
!1779 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 683, column: 3)
!1780 = !DILocation(line: 683, column: 3, scope: !1779)
!1781 = !DILocation(line: 683, column: 3, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 683, column: 3)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 683, column: 3)
!1784 = !DILocation(line: 683, column: 3, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 683, column: 3)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 683, column: 3)
!1787 = distinct !DILexicalBlock(scope: !1782, file: !3, line: 683, column: 3)
!1788 = !DILocation(line: 691, column: 7, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 691, column: 7)
!1790 = !DILocation(line: 701, column: 7, scope: !1689)
!1791 = !{!453, !413, i64 20}
!1792 = !DILocation(line: 701, column: 24, scope: !1689)
!1793 = !DILocation(line: 701, column: 27, scope: !1689)
!1794 = !DILocation(line: 701, column: 7, scope: !1675)
!1795 = !DILocation(line: 702, column: 5, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 702, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 702, column: 5)
!1798 = !DILocation(line: 702, column: 5, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 702, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 702, column: 5)
!1801 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 702, column: 5)
!1802 = !DILocation(line: 703, column: 5, scope: !1687)
!1803 = !DILocation(line: 703, column: 5, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 703, column: 5)
!1805 = !DILocation(line: 703, column: 5, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 703, column: 5)
!1807 = !{!1808, !413, i64 264}
!1808 = !{!"netif", !454, i64 0, !453, i64 8, !453, i64 32, !453, i64 56, !413, i64 80, !413, i64 152, !413, i64 156, !413, i64 168, !454, i64 184, !454, i64 192, !454, i64 200, !454, i64 208, !454, i64 216, !454, i64 224, !454, i64 232, !413, i64 240, !440, i64 248, !440, i64 250, !440, i64 252, !413, i64 254, !413, i64 260, !413, i64 261, !413, i64 262, !413, i64 264, !413, i64 265, !413, i64 266, !454, i64 272}
!1809 = !DILocation(line: 0, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 674, column: 23)
!1811 = !DILocation(line: 708, column: 12, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 708, column: 7)
!1813 = !DILocation(line: 708, column: 7, scope: !1675)
!1814 = !DILocation(line: 663, column: 7, scope: !1675)
!1815 = !DILocation(line: 715, column: 5, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 715, column: 5)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 713, column: 10)
!1818 = !DILocalVariable(name: "n", scope: !1819, file: !3, line: 1014, type: !81)
!1819 = distinct !DISubprogram(name: "tcp_new_port", scope: !3, file: !3, line: 1011, type: !1820, isLocal: true, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!81}
!1822 = !{!1823, !1818, !1824}
!1823 = !DILocalVariable(name: "i", scope: !1819, file: !3, line: 1013, type: !91)
!1824 = !DILocalVariable(name: "pcb", scope: !1819, file: !3, line: 1015, type: !145)
!1825 = !DILocation(line: 1014, column: 9, scope: !1819, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 709, column: 12, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 708, column: 18)
!1828 = !DILocation(line: 0, scope: !1829, inlinedAt: !1826)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 1019, column: 45)
!1830 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1019, column: 7)
!1831 = !DILocation(line: 0, scope: !1832, inlinedAt: !1826)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 1024, column: 5)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 1024, column: 5)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1023, column: 43)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1023, column: 3)
!1836 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 1023, column: 3)
!1837 = !DILocation(line: 1015, column: 3, scope: !1819, inlinedAt: !1826)
!1838 = !DILocation(line: 0, scope: !1839, inlinedAt: !1826)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1025, column: 40)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 1025, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1024, column: 65)
!1842 = !DILocation(line: 1018, column: 11, scope: !1819, inlinedAt: !1826)
!1843 = !DILocation(line: 1019, column: 16, scope: !1830, inlinedAt: !1826)
!1844 = !DILocation(line: 1019, column: 7, scope: !1819, inlinedAt: !1826)
!1845 = !DILocation(line: 1013, column: 8, scope: !1819, inlinedAt: !1826)
!1846 = !DILocation(line: 1015, column: 19, scope: !1819, inlinedAt: !1826)
!1847 = !DILocation(line: 1024, column: 5, scope: !1833, inlinedAt: !1826)
!1848 = !DILocation(line: 1024, column: 59, scope: !1832, inlinedAt: !1826)
!1849 = !DILocation(line: 1024, column: 39, scope: !1832, inlinedAt: !1826)
!1850 = distinct !{!1850, !1851, !1852}
!1851 = !DILocation(line: 1024, column: 5, scope: !1833)
!1852 = !DILocation(line: 1032, column: 5, scope: !1833)
!1853 = !DILocation(line: 1025, column: 16, scope: !1840, inlinedAt: !1826)
!1854 = !DILocation(line: 1025, column: 27, scope: !1840, inlinedAt: !1826)
!1855 = !DILocation(line: 1025, column: 11, scope: !1841, inlinedAt: !1826)
!1856 = !DILocation(line: 1026, column: 10, scope: !1839, inlinedAt: !1826)
!1857 = !DILocation(line: 1027, column: 15, scope: !1858, inlinedAt: !1826)
!1858 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 1027, column: 13)
!1859 = !DILocation(line: 1027, column: 13, scope: !1839, inlinedAt: !1826)
!1860 = !DILocation(line: 710, column: 9, scope: !1827)
!1861 = !DILocation(line: 710, column: 14, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 710, column: 9)
!1863 = !DILocation(line: 739, column: 8, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 739, column: 7)
!1865 = !DILocation(line: 716, column: 20, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 716, column: 7)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 715, column: 40)
!1868 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 715, column: 5)
!1869 = !DILocation(line: 665, column: 19, scope: !1675)
!1870 = !DILocation(line: 0, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 716, column: 7)
!1872 = !DILocation(line: 716, column: 43, scope: !1871)
!1873 = !DILocation(line: 716, column: 7, scope: !1866)
!1874 = !DILocation(line: 717, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 717, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 716, column: 71)
!1877 = !DILocation(line: 717, column: 30, scope: !1875)
!1878 = !DILocation(line: 717, column: 13, scope: !1876)
!1879 = !DILocation(line: 722, column: 16, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 722, column: 15)
!1881 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 717, column: 39)
!1882 = !DILocation(line: 722, column: 50, scope: !1880)
!1883 = !DILocation(line: 723, column: 16, scope: !1880)
!1884 = !DILocation(line: 722, column: 15, scope: !1881)
!1885 = !DILocation(line: 727, column: 18, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !3, line: 727, column: 17)
!1887 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 725, column: 11)
!1888 = !DILocation(line: 727, column: 38, scope: !1886)
!1889 = !{!452, !413, i64 20}
!1890 = !DILocation(line: 727, column: 35, scope: !1886)
!1891 = !DILocation(line: 727, column: 68, scope: !1886)
!1892 = !DILocation(line: 728, column: 18, scope: !1886)
!1893 = !DILocation(line: 728, column: 49, scope: !1886)
!1894 = !DILocation(line: 729, column: 18, scope: !1886)
!1895 = !DILocation(line: 729, column: 40, scope: !1886)
!1896 = !DILocation(line: 730, column: 18, scope: !1886)
!1897 = !DILocation(line: 727, column: 17, scope: !1887)
!1898 = !DILocation(line: 716, column: 65, scope: !1871)
!1899 = distinct !{!1899, !1873, !1900}
!1900 = !DILocation(line: 735, column: 7, scope: !1866)
!1901 = !DILocation(line: 715, column: 36, scope: !1868)
!1902 = !DILocation(line: 715, column: 19, scope: !1868)
!1903 = distinct !{!1903, !1815, !1904}
!1904 = !DILocation(line: 736, column: 5, scope: !1816)
!1905 = !DILocation(line: 741, column: 7, scope: !1864)
!1906 = !DILocation(line: 741, column: 34, scope: !1864)
!1907 = !DILocation(line: 741, column: 31, scope: !1864)
!1908 = !DILocation(line: 739, column: 7, scope: !1675)
!1909 = !DILocation(line: 744, column: 5, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 744, column: 5)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 744, column: 5)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !3, line: 744, column: 5)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 744, column: 5)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 744, column: 5)
!1915 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 743, column: 8)
!1916 = !DILocation(line: 744, column: 5, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 744, column: 5)
!1918 = !DILocation(line: 744, column: 5, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 744, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 744, column: 5)
!1921 = !DILocation(line: 744, column: 5, scope: !1914)
!1922 = !DILocation(line: 744, column: 5, scope: !1920)
!1923 = !DILocation(line: 744, column: 5, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !3, line: 744, column: 5)
!1925 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 744, column: 5)
!1926 = !DILocation(line: 746, column: 8, scope: !1675)
!1927 = !DILocation(line: 746, column: 19, scope: !1675)
!1928 = !DILocation(line: 747, column: 3, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 747, column: 3)
!1930 = !DILocation(line: 749, column: 3, scope: !1675)
!1931 = !DILocation(line: 0, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 730, column: 57)
!1933 = !DILocation(line: 750, column: 1, scope: !1675)
!1934 = distinct !DISubprogram(name: "tcp_bind_netif", scope: !3, file: !3, line: 763, type: !1935, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1939)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !145, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "pcb", arg: 1, scope: !1934, file: !3, line: 763, type: !145)
!1941 = !DILocalVariable(name: "netif", arg: 2, scope: !1934, file: !3, line: 763, type: !1937)
!1942 = !DILocation(line: 763, column: 32, scope: !1934)
!1943 = !DILocation(line: 763, column: 57, scope: !1934)
!1944 = !DILocation(line: 766, column: 13, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 766, column: 7)
!1946 = !DILocation(line: 766, column: 7, scope: !1934)
!1947 = !DILocation(line: 767, column: 22, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 766, column: 22)
!1949 = !DILocation(line: 768, column: 3, scope: !1948)
!1950 = !DILocation(line: 769, column: 10, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 768, column: 10)
!1952 = !DILocation(line: 769, column: 20, scope: !1951)
!1953 = !DILocation(line: 771, column: 1, scope: !1934)
!1954 = distinct !DISubprogram(name: "tcp_listen_with_backlog", scope: !3, file: !3, line: 825, type: !1955, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!145, !145, !91}
!1957 = !{!1958, !1959}
!1958 = !DILocalVariable(name: "pcb", arg: 1, scope: !1954, file: !3, line: 825, type: !145)
!1959 = !DILocalVariable(name: "backlog", arg: 2, scope: !1954, file: !3, line: 825, type: !91)
!1960 = !DILocation(line: 825, column: 41, scope: !1954)
!1961 = !DILocation(line: 825, column: 51, scope: !1954)
!1962 = !DILocation(line: 828, column: 10, scope: !1954)
!1963 = !DILocation(line: 828, column: 3, scope: !1954)
!1964 = distinct !DISubprogram(name: "tcp_listen_with_backlog_and_err", scope: !3, file: !3, line: 848, type: !1965, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1968)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!145, !145, !91, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1968 = !{!1969, !1970, !1971, !1972, !1973, !1974}
!1969 = !DILocalVariable(name: "pcb", arg: 1, scope: !1964, file: !3, line: 848, type: !145)
!1970 = !DILocalVariable(name: "backlog", arg: 2, scope: !1964, file: !3, line: 848, type: !91)
!1971 = !DILocalVariable(name: "err", arg: 3, scope: !1964, file: !3, line: 848, type: !1967)
!1972 = !DILocalVariable(name: "lpcb", scope: !1964, file: !3, line: 850, type: !98)
!1973 = !DILocalVariable(name: "res", scope: !1964, file: !3, line: 851, type: !140)
!1974 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1975, file: !3, line: 900, type: !145)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 900, column: 5)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 900, column: 5)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 900, column: 5)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 899, column: 29)
!1979 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 899, column: 7)
!1980 = !DILocation(line: 848, column: 49, scope: !1964)
!1981 = !DILocation(line: 848, column: 59, scope: !1964)
!1982 = !DILocation(line: 848, column: 75, scope: !1964)
!1983 = !DILocation(line: 850, column: 26, scope: !1964)
!1984 = !DILocation(line: 857, column: 3, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !3, line: 857, column: 3)
!1986 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 857, column: 3)
!1987 = !DILocation(line: 857, column: 3, scope: !1986)
!1988 = !DILocation(line: 857, column: 3, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 857, column: 3)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 857, column: 3)
!1991 = !DILocation(line: 857, column: 3, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 857, column: 3)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 857, column: 3)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 857, column: 3)
!1995 = !DILocation(line: 858, column: 3, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 858, column: 3)
!1997 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 858, column: 3)
!1998 = !DILocation(line: 858, column: 3, scope: !1997)
!1999 = !DILocation(line: 858, column: 3, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 858, column: 3)
!2001 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 858, column: 3)
!2002 = !DILocation(line: 858, column: 3, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 858, column: 3)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 858, column: 3)
!2005 = distinct !DILexicalBlock(scope: !2000, file: !3, line: 858, column: 3)
!2006 = !DILocation(line: 867, column: 7, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 867, column: 7)
!2008 = !DILocation(line: 867, column: 7, scope: !1964)
!2009 = !DILocation(line: 0, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !3, line: 871, column: 5)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 871, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 867, column: 42)
!2013 = !DILocation(line: 871, column: 51, scope: !2010)
!2014 = !DILocation(line: 871, column: 5, scope: !2011)
!2015 = !DILocation(line: 872, column: 18, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 872, column: 11)
!2017 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 871, column: 79)
!2018 = !{!2019, !440, i64 78}
!2019 = !{!"tcp_pcb_listen", !453, i64 0, !453, i64 24, !413, i64 48, !413, i64 49, !413, i64 50, !413, i64 51, !454, i64 56, !454, i64 64, !413, i64 72, !413, i64 76, !440, i64 78, !454, i64 80}
!2020 = !DILocation(line: 872, column: 29, scope: !2016)
!2021 = !DILocation(line: 872, column: 49, scope: !2016)
!2022 = !DILocation(line: 873, column: 11, scope: !2016)
!2023 = !{!2019, !413, i64 20}
!2024 = !DILocation(line: 872, column: 11, scope: !2017)
!2025 = !DILocation(line: 871, column: 73, scope: !2010)
!2026 = distinct !{!2026, !2014, !2027}
!2027 = !DILocation(line: 879, column: 5, scope: !2011)
!2028 = !DILocation(line: 882, column: 35, scope: !1964)
!2029 = !DILocation(line: 882, column: 10, scope: !1964)
!2030 = !DILocation(line: 883, column: 12, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 883, column: 7)
!2032 = !DILocation(line: 883, column: 7, scope: !1964)
!2033 = !DILocation(line: 887, column: 29, scope: !1964)
!2034 = !DILocation(line: 887, column: 9, scope: !1964)
!2035 = !DILocation(line: 887, column: 22, scope: !1964)
!2036 = !{!2019, !454, i64 64}
!2037 = !DILocation(line: 888, column: 27, scope: !1964)
!2038 = !DILocation(line: 888, column: 9, scope: !1964)
!2039 = !DILocation(line: 888, column: 20, scope: !1964)
!2040 = !DILocation(line: 889, column: 9, scope: !1964)
!2041 = !DILocation(line: 889, column: 15, scope: !1964)
!2042 = !{!2019, !413, i64 72}
!2043 = !DILocation(line: 890, column: 21, scope: !1964)
!2044 = !{!452, !413, i64 76}
!2045 = !DILocation(line: 890, column: 9, scope: !1964)
!2046 = !DILocation(line: 890, column: 14, scope: !1964)
!2047 = !{!2019, !413, i64 76}
!2048 = !DILocation(line: 891, column: 27, scope: !1964)
!2049 = !DILocation(line: 891, column: 9, scope: !1964)
!2050 = !DILocation(line: 891, column: 20, scope: !1964)
!2051 = !{!2019, !413, i64 49}
!2052 = !DILocation(line: 892, column: 9, scope: !1964)
!2053 = !DILocation(line: 892, column: 19, scope: !1964)
!2054 = !{!2019, !413, i64 48}
!2055 = !DILocation(line: 893, column: 20, scope: !1964)
!2056 = !{!452, !413, i64 51}
!2057 = !DILocation(line: 893, column: 9, scope: !1964)
!2058 = !DILocation(line: 893, column: 13, scope: !1964)
!2059 = !{!2019, !413, i64 51}
!2060 = !DILocation(line: 894, column: 20, scope: !1964)
!2061 = !{!452, !413, i64 50}
!2062 = !DILocation(line: 894, column: 9, scope: !1964)
!2063 = !DILocation(line: 894, column: 13, scope: !1964)
!2064 = !{!2019, !413, i64 50}
!2065 = !DILocation(line: 896, column: 3, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 896, column: 3)
!2067 = !{!2019, !413, i64 44}
!2068 = !DILocation(line: 898, column: 3, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 898, column: 3)
!2070 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 898, column: 3)
!2071 = !DILocation(line: 898, column: 3, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 898, column: 3)
!2073 = !DILocation(line: 898, column: 3, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 898, column: 3)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 898, column: 3)
!2076 = !DILocation(line: 898, column: 3, scope: !2070)
!2077 = !DILocation(line: 898, column: 3, scope: !2075)
!2078 = !DILocation(line: 898, column: 3, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 898, column: 3)
!2080 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 898, column: 3)
!2081 = !DILocation(line: 899, column: 12, scope: !1979)
!2082 = !DILocation(line: 899, column: 23, scope: !1979)
!2083 = !DILocation(line: 899, column: 7, scope: !1964)
!2084 = !DILocation(line: 900, column: 5, scope: !1976)
!2085 = !DILocation(line: 900, column: 5, scope: !1977)
!2086 = !DILocation(line: 900, column: 5, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 900, column: 5)
!2088 = !DILocation(line: 900, column: 5, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 900, column: 5)
!2090 = !DILocation(line: 900, column: 5, scope: !1975)
!2091 = !DILocation(line: 900, column: 5, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 900, column: 5)
!2093 = !DILocation(line: 900, column: 5, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 900, column: 5)
!2095 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 900, column: 5)
!2096 = !DILocation(line: 900, column: 5, scope: !2095)
!2097 = distinct !{!2097, !2088, !2088}
!2098 = !DILocation(line: 900, column: 5, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 900, column: 5)
!2100 = !DILocation(line: 901, column: 3, scope: !1978)
!2101 = !DILocation(line: 210, column: 26, scope: !442, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 906, column: 3, scope: !1964)
!2103 = !DILocation(line: 212, column: 3, scope: !449, inlinedAt: !2102)
!2104 = !DILocation(line: 212, column: 3, scope: !450, inlinedAt: !2102)
!2105 = !DILocation(line: 212, column: 3, scope: !457, inlinedAt: !2102)
!2106 = !DILocation(line: 212, column: 3, scope: !460, inlinedAt: !2102)
!2107 = !DILocation(line: 216, column: 27, scope: !442, inlinedAt: !2102)
!2108 = !DILocation(line: 216, column: 3, scope: !442, inlinedAt: !2102)
!2109 = !DILocation(line: 908, column: 9, scope: !1964)
!2110 = !DILocation(line: 908, column: 16, scope: !1964)
!2111 = !{!2019, !454, i64 80}
!2112 = !DILocation(line: 914, column: 3, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 914, column: 3)
!2114 = !DILocation(line: 851, column: 9, scope: !1964)
!2115 = !DILocation(line: 915, column: 3, scope: !1964)
!2116 = !DILocation(line: 0, scope: !1964)
!2117 = !DILocation(line: 917, column: 11, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 917, column: 7)
!2119 = !DILocation(line: 917, column: 7, scope: !1964)
!2120 = !DILocation(line: 918, column: 10, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 917, column: 20)
!2122 = !DILocation(line: 919, column: 3, scope: !2121)
!2123 = !DILocation(line: 920, column: 10, scope: !1964)
!2124 = !DILocation(line: 920, column: 3, scope: !1964)
!2125 = distinct !DISubprogram(name: "tcp_accept_null", scope: !3, file: !3, line: 778, type: !138, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2126)
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "arg", arg: 1, scope: !2125, file: !3, line: 778, type: !88)
!2128 = !DILocalVariable(name: "pcb", arg: 2, scope: !2125, file: !3, line: 778, type: !145)
!2129 = !DILocalVariable(name: "err", arg: 3, scope: !2125, file: !3, line: 778, type: !140)
!2130 = !DILocation(line: 778, column: 23, scope: !2125)
!2131 = !DILocation(line: 778, column: 44, scope: !2125)
!2132 = !DILocation(line: 778, column: 55, scope: !2125)
!2133 = !DILocation(line: 783, column: 3, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 783, column: 3)
!2135 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 783, column: 3)
!2136 = !DILocation(line: 783, column: 3, scope: !2135)
!2137 = !DILocation(line: 783, column: 3, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 783, column: 3)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 783, column: 3)
!2140 = !DILocation(line: 783, column: 3, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 783, column: 3)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 783, column: 3)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 783, column: 3)
!2144 = !DILocation(line: 638, column: 27, scope: !1669, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 785, column: 3, scope: !2125)
!2146 = !DILocation(line: 640, column: 3, scope: !1669, inlinedAt: !2145)
!2147 = !DILocation(line: 787, column: 3, scope: !2125)
!2148 = distinct !DISubprogram(name: "tcp_update_rcv_ann_wnd", scope: !3, file: !3, line: 930, type: !283, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DILocalVariable(name: "pcb", arg: 1, scope: !2148, file: !3, line: 930, type: !145)
!2151 = !DILocalVariable(name: "new_right_edge", scope: !2148, file: !3, line: 932, type: !95)
!2152 = !DILocalVariable(name: "new_rcv_ann_wnd", scope: !2153, file: !3, line: 948, type: !95)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 946, column: 12)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 942, column: 9)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 941, column: 10)
!2156 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 937, column: 7)
!2157 = !DILocation(line: 930, column: 40, scope: !2148)
!2158 = !DILocation(line: 934, column: 3, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 934, column: 3)
!2160 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 934, column: 3)
!2161 = !DILocation(line: 934, column: 3, scope: !2160)
!2162 = !DILocation(line: 934, column: 3, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 934, column: 3)
!2164 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 934, column: 3)
!2165 = !DILocation(line: 934, column: 3, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 934, column: 3)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 934, column: 3)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 934, column: 3)
!2169 = !DILocation(line: 935, column: 25, scope: !2148)
!2170 = !DILocation(line: 935, column: 40, scope: !2148)
!2171 = !DILocation(line: 935, column: 33, scope: !2148)
!2172 = !DILocation(line: 932, column: 9, scope: !2148)
!2173 = !DILocation(line: 937, column: 7, scope: !2156)
!2174 = !{!452, !412, i64 104}
!2175 = !DILocation(line: 937, column: 7, scope: !2148)
!2176 = !DILocation(line: 942, column: 9, scope: !2154)
!2177 = !DILocation(line: 948, column: 55, scope: !2153)
!2178 = !DILocation(line: 942, column: 9, scope: !2155)
!2179 = !DILocation(line: 0, scope: !2155)
!2180 = !DILocation(line: 0, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 937, column: 97)
!2182 = !{!452, !412, i64 100}
!2183 = !DILocation(line: 956, column: 1, scope: !2148)
!2184 = distinct !DISubprogram(name: "tcp_recved", scope: !3, file: !3, line: 968, type: !2185, isLocal: false, isDefinition: true, scopeLine: 969, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2187)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !145, !81}
!2187 = !{!2188, !2189, !2190, !2191}
!2188 = !DILocalVariable(name: "pcb", arg: 1, scope: !2184, file: !3, line: 968, type: !145)
!2189 = !DILocalVariable(name: "len", arg: 2, scope: !2184, file: !3, line: 968, type: !81)
!2190 = !DILocalVariable(name: "wnd_inflation", scope: !2184, file: !3, line: 970, type: !95)
!2191 = !DILocalVariable(name: "rcv_wnd", scope: !2184, file: !3, line: 971, type: !167)
!2192 = !DILocation(line: 968, column: 28, scope: !2184)
!2193 = !DILocation(line: 968, column: 39, scope: !2184)
!2194 = !DILocation(line: 975, column: 3, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 975, column: 3)
!2196 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 975, column: 3)
!2197 = !DILocation(line: 975, column: 3, scope: !2196)
!2198 = !DILocation(line: 975, column: 3, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 975, column: 3)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 975, column: 3)
!2201 = !DILocation(line: 975, column: 3, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 975, column: 3)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 975, column: 3)
!2204 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 975, column: 3)
!2205 = !DILocation(line: 978, column: 3, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 978, column: 3)
!2207 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 978, column: 3)
!2208 = !DILocation(line: 978, column: 3, scope: !2207)
!2209 = !DILocation(line: 978, column: 3, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 978, column: 3)
!2211 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 978, column: 3)
!2212 = !DILocation(line: 978, column: 3, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !3, line: 978, column: 3)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 978, column: 3)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 978, column: 3)
!2216 = !DILocation(line: 981, column: 34, scope: !2184)
!2217 = !DILocation(line: 981, column: 44, scope: !2184)
!2218 = !DILocation(line: 981, column: 42, scope: !2184)
!2219 = !DILocation(line: 971, column: 17, scope: !2184)
!2220 = !DILocation(line: 982, column: 18, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 982, column: 7)
!2222 = !DILocation(line: 982, column: 16, scope: !2221)
!2223 = !DILocation(line: 982, column: 48, scope: !2221)
!2224 = !DILocation(line: 982, column: 36, scope: !2221)
!2225 = !DILocation(line: 0, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 982, column: 65)
!2227 = !DILocation(line: 930, column: 40, scope: !2148, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 990, column: 19, scope: !2184)
!2229 = !DILocation(line: 935, column: 25, scope: !2148, inlinedAt: !2228)
!2230 = !DILocation(line: 932, column: 9, scope: !2148, inlinedAt: !2228)
!2231 = !DILocation(line: 937, column: 7, scope: !2156, inlinedAt: !2228)
!2232 = !DILocation(line: 935, column: 33, scope: !2148, inlinedAt: !2228)
!2233 = !DILocation(line: 937, column: 7, scope: !2148, inlinedAt: !2228)
!2234 = !DILocation(line: 942, column: 9, scope: !2154, inlinedAt: !2228)
!2235 = !DILocation(line: 942, column: 9, scope: !2155, inlinedAt: !2228)
!2236 = !DILocation(line: 945, column: 12, scope: !2237, inlinedAt: !2228)
!2237 = distinct !DILexicalBlock(scope: !2154, file: !3, line: 942, column: 60)
!2238 = !DILocation(line: 945, column: 24, scope: !2237, inlinedAt: !2228)
!2239 = !DILocation(line: 946, column: 5, scope: !2237, inlinedAt: !2228)
!2240 = !DILocation(line: 948, column: 55, scope: !2153, inlinedAt: !2228)
!2241 = !DILocation(line: 948, column: 13, scope: !2153, inlinedAt: !2228)
!2242 = !DILocation(line: 952, column: 12, scope: !2153, inlinedAt: !2228)
!2243 = !DILocation(line: 952, column: 24, scope: !2153, inlinedAt: !2228)
!2244 = !DILocation(line: 939, column: 10, scope: !2181, inlinedAt: !2228)
!2245 = !DILocation(line: 939, column: 22, scope: !2181, inlinedAt: !2228)
!2246 = !DILocation(line: 970, column: 9, scope: !2184)
!2247 = !DILocation(line: 996, column: 21, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 996, column: 7)
!2249 = !DILocation(line: 996, column: 7, scope: !2184)
!2250 = !DILocation(line: 997, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 997, column: 5)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 996, column: 50)
!2253 = !DILocation(line: 998, column: 5, scope: !2252)
!2254 = !DILocation(line: 999, column: 3, scope: !2252)
!2255 = !DILocation(line: 1003, column: 1, scope: !2184)
!2256 = distinct !DISubprogram(name: "tcp_connect", scope: !3, file: !3, line: 1067, type: !2257, isLocal: false, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!140, !145, !267, !81, !246}
!2259 = !{!2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2271, !2276, !2277}
!2260 = !DILocalVariable(name: "pcb", arg: 1, scope: !2256, file: !3, line: 1067, type: !145)
!2261 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !2256, file: !3, line: 1067, type: !267)
!2262 = !DILocalVariable(name: "port", arg: 3, scope: !2256, file: !3, line: 1067, type: !81)
!2263 = !DILocalVariable(name: "connected", arg: 4, scope: !2256, file: !3, line: 1068, type: !246)
!2264 = !DILocalVariable(name: "netif", scope: !2256, file: !3, line: 1070, type: !1690)
!2265 = !DILocalVariable(name: "ret", scope: !2256, file: !3, line: 1071, type: !140)
!2266 = !DILocalVariable(name: "iss", scope: !2256, file: !3, line: 1072, type: !95)
!2267 = !DILocalVariable(name: "old_local_port", scope: !2256, file: !3, line: 1073, type: !81)
!2268 = !DILocalVariable(name: "local_ip", scope: !2269, file: !3, line: 1099, type: !267)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 1098, column: 38)
!2270 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1098, column: 7)
!2271 = !DILocalVariable(name: "cpcb", scope: !2272, file: !3, line: 1126, type: !145)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !3, line: 1123, column: 44)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 1123, column: 9)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 1121, column: 10)
!2275 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1116, column: 7)
!2276 = !DILocalVariable(name: "i", scope: !2272, file: !3, line: 1127, type: !50)
!2277 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !2278, file: !3, line: 1174, type: !145)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 1174, column: 7)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 1174, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 1174, column: 7)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1173, column: 30)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1173, column: 9)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1170, column: 22)
!2284 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1170, column: 7)
!2285 = !DILocation(line: 1067, column: 29, scope: !2256)
!2286 = !DILocation(line: 1067, column: 51, scope: !2256)
!2287 = !DILocation(line: 1067, column: 65, scope: !2256)
!2288 = !DILocation(line: 1068, column: 30, scope: !2256)
!2289 = !DILocation(line: 1070, column: 17, scope: !2256)
!2290 = !DILocation(line: 1077, column: 3, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 1077, column: 3)
!2292 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1077, column: 3)
!2293 = !DILocation(line: 1077, column: 3, scope: !2292)
!2294 = !DILocation(line: 1077, column: 3, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 1077, column: 3)
!2296 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 1077, column: 3)
!2297 = !DILocation(line: 1077, column: 3, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1077, column: 3)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1077, column: 3)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 1077, column: 3)
!2301 = !DILocation(line: 1078, column: 3, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1078, column: 3)
!2303 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1078, column: 3)
!2304 = !DILocation(line: 1078, column: 3, scope: !2303)
!2305 = !DILocation(line: 1078, column: 3, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1078, column: 3)
!2307 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1078, column: 3)
!2308 = !DILocation(line: 1078, column: 3, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1078, column: 3)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1078, column: 3)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1078, column: 3)
!2312 = !DILocation(line: 1080, column: 3, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 1080, column: 3)
!2314 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1080, column: 3)
!2315 = !DILocation(line: 1080, column: 3, scope: !2314)
!2316 = !DILocation(line: 1080, column: 3, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 1080, column: 3)
!2318 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 1080, column: 3)
!2319 = !DILocation(line: 1080, column: 3, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 1080, column: 3)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 1080, column: 3)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 1080, column: 3)
!2323 = !DILocation(line: 1083, column: 3, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 1083, column: 3)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 1083, column: 3)
!2326 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1083, column: 3)
!2327 = !DILocation(line: 1083, column: 3, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1083, column: 3)
!2329 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 1083, column: 3)
!2330 = !{!452, !413, i64 44}
!2331 = !DILocation(line: 1083, column: 3, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 1083, column: 3)
!2333 = !DILocation(line: 1083, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1083, column: 3)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1083, column: 3)
!2336 = !DILocation(line: 1083, column: 3, scope: !2326)
!2337 = !DILocation(line: 1083, column: 3, scope: !2335)
!2338 = !DILocation(line: 1083, column: 3, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !3, line: 1083, column: 3)
!2340 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1083, column: 3)
!2341 = !DILocation(line: 1084, column: 8, scope: !2256)
!2342 = !DILocation(line: 1084, column: 20, scope: !2256)
!2343 = !DILocation(line: 1086, column: 12, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1086, column: 7)
!2345 = !{!452, !413, i64 48}
!2346 = !DILocation(line: 1086, column: 22, scope: !2344)
!2347 = !DILocation(line: 1086, column: 7, scope: !2256)
!2348 = !DILocation(line: 1087, column: 13, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 1086, column: 41)
!2350 = !DILocation(line: 1088, column: 3, scope: !2349)
!2351 = !DILocation(line: 1090, column: 13, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 1088, column: 10)
!2353 = !DILocation(line: 0, scope: !2352)
!2354 = !DILocation(line: 1092, column: 13, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1092, column: 7)
!2356 = !DILocation(line: 1092, column: 7, scope: !2256)
!2357 = !DILocation(line: 1098, column: 7, scope: !2270)
!2358 = !DILocation(line: 1098, column: 7, scope: !2256)
!2359 = !DILocation(line: 1099, column: 33, scope: !2269)
!2360 = !DILocation(line: 1099, column: 22, scope: !2269)
!2361 = !DILocation(line: 1100, column: 9, scope: !2269)
!2362 = !DILocation(line: 1100, column: 18, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1100, column: 9)
!2364 = !DILocation(line: 1103, column: 5, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 1103, column: 5)
!2366 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 1103, column: 5)
!2367 = !DILocation(line: 1103, column: 5, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 1103, column: 5)
!2369 = !DILocation(line: 1103, column: 5, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 1103, column: 5)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 1103, column: 5)
!2372 = !DILocation(line: 1103, column: 5, scope: !2366)
!2373 = !DILocation(line: 1103, column: 5, scope: !2371)
!2374 = !DILocation(line: 1103, column: 5, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1103, column: 5)
!2376 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 1103, column: 5)
!2377 = !DILocation(line: 1109, column: 7, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1109, column: 7)
!2379 = !DILocation(line: 1109, column: 33, scope: !2378)
!2380 = !DILocation(line: 1110, column: 7, scope: !2378)
!2381 = !DILocation(line: 1109, column: 7, scope: !2256)
!2382 = !DILocation(line: 1111, column: 5, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 1110, column: 68)
!2384 = !DILocation(line: 1112, column: 3, scope: !2383)
!2385 = !DILocation(line: 1115, column: 25, scope: !2256)
!2386 = !DILocation(line: 1073, column: 9, scope: !2256)
!2387 = !DILocation(line: 1116, column: 23, scope: !2275)
!2388 = !DILocation(line: 1116, column: 7, scope: !2256)
!2389 = !DILocation(line: 1014, column: 9, scope: !1819, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 1117, column: 23, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 1116, column: 29)
!2392 = !DILocation(line: 0, scope: !1829, inlinedAt: !2390)
!2393 = !DILocation(line: 0, scope: !1832, inlinedAt: !2390)
!2394 = !DILocation(line: 1015, column: 3, scope: !1819, inlinedAt: !2390)
!2395 = !DILocation(line: 0, scope: !1839, inlinedAt: !2390)
!2396 = !DILocation(line: 1018, column: 11, scope: !1819, inlinedAt: !2390)
!2397 = !DILocation(line: 1019, column: 16, scope: !1830, inlinedAt: !2390)
!2398 = !DILocation(line: 1019, column: 7, scope: !1819, inlinedAt: !2390)
!2399 = !DILocation(line: 1013, column: 8, scope: !1819, inlinedAt: !2390)
!2400 = !DILocation(line: 1015, column: 19, scope: !1819, inlinedAt: !2390)
!2401 = !DILocation(line: 1024, column: 5, scope: !1833, inlinedAt: !2390)
!2402 = !DILocation(line: 1024, column: 59, scope: !1832, inlinedAt: !2390)
!2403 = !DILocation(line: 1024, column: 39, scope: !1832, inlinedAt: !2390)
!2404 = !DILocation(line: 1025, column: 16, scope: !1840, inlinedAt: !2390)
!2405 = !DILocation(line: 1025, column: 27, scope: !1840, inlinedAt: !2390)
!2406 = !DILocation(line: 1025, column: 11, scope: !1841, inlinedAt: !2390)
!2407 = !DILocation(line: 1026, column: 10, scope: !1839, inlinedAt: !2390)
!2408 = !DILocation(line: 1027, column: 15, scope: !1858, inlinedAt: !2390)
!2409 = !DILocation(line: 1027, column: 13, scope: !1839, inlinedAt: !2390)
!2410 = !DILocation(line: 1117, column: 21, scope: !2391)
!2411 = !DILocation(line: 1118, column: 9, scope: !2391)
!2412 = !DILocation(line: 1118, column: 25, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 1118, column: 9)
!2414 = !DILocation(line: 1123, column: 9, scope: !2273)
!2415 = !DILocation(line: 1123, column: 9, scope: !2274)
!2416 = !DILocation(line: 1127, column: 11, scope: !2272)
!2417 = !DILocation(line: 1126, column: 23, scope: !2272)
!2418 = !DILocation(line: 0, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1130, column: 9)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 1130, column: 9)
!2421 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 1129, column: 47)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1129, column: 7)
!2423 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1129, column: 7)
!2424 = !DILocation(line: 1130, column: 45, scope: !2419)
!2425 = !DILocation(line: 1130, column: 9, scope: !2420)
!2426 = !DILocation(line: 1131, column: 22, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !3, line: 1131, column: 15)
!2428 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 1130, column: 73)
!2429 = !DILocation(line: 1131, column: 33, scope: !2427)
!2430 = !DILocation(line: 1131, column: 53, scope: !2427)
!2431 = !DILocation(line: 1132, column: 22, scope: !2427)
!2432 = !DILocation(line: 1132, column: 34, scope: !2427)
!2433 = !DILocation(line: 1132, column: 43, scope: !2427)
!2434 = !DILocation(line: 1133, column: 15, scope: !2427)
!2435 = !DILocation(line: 1133, column: 60, scope: !2427)
!2436 = !DILocation(line: 1134, column: 15, scope: !2427)
!2437 = !DILocation(line: 1131, column: 15, scope: !2428)
!2438 = !DILocation(line: 1130, column: 67, scope: !2419)
!2439 = distinct !{!2439, !2425, !2440}
!2440 = !DILocation(line: 1138, column: 9, scope: !2420)
!2441 = !DILocation(line: 2215, column: 30, scope: !282, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 1144, column: 9, scope: !2256)
!2443 = !DILocation(line: 2226, column: 10, scope: !282, inlinedAt: !2442)
!2444 = !DILocation(line: 2226, column: 7, scope: !282, inlinedAt: !2442)
!2445 = !DILocation(line: 1072, column: 9, scope: !2256)
!2446 = !DILocation(line: 1145, column: 8, scope: !2256)
!2447 = !DILocation(line: 1146, column: 8, scope: !2256)
!2448 = !DILocation(line: 1146, column: 16, scope: !2256)
!2449 = !DILocation(line: 1147, column: 22, scope: !2256)
!2450 = !DILocation(line: 1147, column: 8, scope: !2256)
!2451 = !DILocation(line: 1147, column: 16, scope: !2256)
!2452 = !{!452, !412, i64 128}
!2453 = !DILocation(line: 1148, column: 8, scope: !2256)
!2454 = !DILocation(line: 1148, column: 16, scope: !2256)
!2455 = !{!452, !412, i64 152}
!2456 = !DILocation(line: 1149, column: 8, scope: !2256)
!2457 = !DILocation(line: 1149, column: 16, scope: !2256)
!2458 = !{!452, !412, i64 156}
!2459 = !DILocation(line: 1145, column: 16, scope: !2256)
!2460 = !DILocation(line: 1154, column: 8, scope: !2256)
!2461 = !DILocation(line: 1154, column: 16, scope: !2256)
!2462 = !DILocation(line: 1157, column: 8, scope: !2256)
!2463 = !DILocation(line: 1157, column: 12, scope: !2256)
!2464 = !DILocalVariable(name: "sendmss", arg: 1, scope: !2465, file: !3, line: 2238, type: !81)
!2465 = distinct !DISubprogram(name: "tcp_eff_send_mss_netif", scope: !3, file: !3, line: 2238, type: !2466, isLocal: false, isDefinition: true, scopeLine: 2239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!81, !81, !1690, !267}
!2468 = !{!2464, !2469, !2470, !2471, !2472, !2473}
!2469 = !DILocalVariable(name: "outif", arg: 2, scope: !2465, file: !3, line: 2238, type: !1690)
!2470 = !DILocalVariable(name: "dest", arg: 3, scope: !2465, file: !3, line: 2238, type: !267)
!2471 = !DILocalVariable(name: "mss_s", scope: !2465, file: !3, line: 2240, type: !81)
!2472 = !DILocalVariable(name: "mtu", scope: !2465, file: !3, line: 2241, type: !81)
!2473 = !DILocalVariable(name: "offset", scope: !2474, file: !3, line: 2269, type: !81)
!2474 = distinct !DILexicalBlock(scope: !2475, file: !3, line: 2268, column: 17)
!2475 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 2268, column: 7)
!2476 = !DILocation(line: 2238, column: 30, scope: !2465, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 1159, column: 14, scope: !2256)
!2478 = !DILocation(line: 2238, column: 53, scope: !2465, inlinedAt: !2477)
!2479 = !DILocation(line: 2238, column: 77, scope: !2465, inlinedAt: !2477)
!2480 = !DILocation(line: 2249, column: 7, scope: !2465, inlinedAt: !2477)
!2481 = !DILocation(line: 2253, column: 35, scope: !2482, inlinedAt: !2477)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 2251, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 2249, column: 7)
!2484 = !DILocation(line: 2253, column: 11, scope: !2482, inlinedAt: !2477)
!2485 = !DILocation(line: 2241, column: 9, scope: !2465, inlinedAt: !2477)
!2486 = !DILocation(line: 2254, column: 3, scope: !2482, inlinedAt: !2477)
!2487 = !DILocation(line: 2264, column: 18, scope: !2488, inlinedAt: !2477)
!2488 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 2260, column: 3)
!2489 = !{!1808, !440, i64 250}
!2490 = !DILocation(line: 0, scope: !2488, inlinedAt: !2477)
!2491 = !DILocation(line: 2268, column: 7, scope: !2475, inlinedAt: !2477)
!2492 = !DILocation(line: 2268, column: 11, scope: !2475, inlinedAt: !2477)
!2493 = !DILocation(line: 2268, column: 7, scope: !2465, inlinedAt: !2477)
!2494 = !DILocation(line: 2272, column: 9, scope: !2495, inlinedAt: !2477)
!2495 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 2272, column: 9)
!2496 = !DILocation(line: 2276, column: 5, scope: !2497, inlinedAt: !2477)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 2274, column: 5)
!2498 = !DILocation(line: 2286, column: 18, scope: !2474, inlinedAt: !2477)
!2499 = !DILocation(line: 2286, column: 42, scope: !2474, inlinedAt: !2477)
!2500 = !DILocation(line: 2286, column: 13, scope: !2474, inlinedAt: !2477)
!2501 = !DILocation(line: 2291, column: 15, scope: !2474, inlinedAt: !2477)
!2502 = !DILocation(line: 2292, column: 3, scope: !2474, inlinedAt: !2477)
!2503 = !DILocation(line: 0, scope: !2504, inlinedAt: !2477)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 2261, column: 24)
!2505 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 2261, column: 9)
!2506 = !DILocation(line: 1159, column: 12, scope: !2256)
!2507 = !DILocation(line: 1161, column: 8, scope: !2256)
!2508 = !DILocation(line: 1161, column: 13, scope: !2256)
!2509 = !DILocation(line: 1163, column: 8, scope: !2256)
!2510 = !DILocation(line: 1163, column: 18, scope: !2256)
!2511 = !{!452, !454, i64 240}
!2512 = !DILocation(line: 1169, column: 9, scope: !2256)
!2513 = !DILocation(line: 1071, column: 9, scope: !2256)
!2514 = !DILocation(line: 1170, column: 11, scope: !2284)
!2515 = !DILocation(line: 1170, column: 7, scope: !2256)
!2516 = !DILocation(line: 1172, column: 16, scope: !2283)
!2517 = !DILocation(line: 1173, column: 9, scope: !2283)
!2518 = !DILocation(line: 1176, column: 5, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1176, column: 5)
!2520 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1176, column: 5)
!2521 = !DILocation(line: 1174, column: 7, scope: !2279)
!2522 = !DILocation(line: 1174, column: 7, scope: !2280)
!2523 = !DILocation(line: 1174, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 1174, column: 7)
!2525 = !DILocation(line: 1174, column: 7, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2278, file: !3, line: 1174, column: 7)
!2527 = !DILocation(line: 1174, column: 7, scope: !2278)
!2528 = !DILocation(line: 1174, column: 7, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 1174, column: 7)
!2530 = !DILocation(line: 1174, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1174, column: 7)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 1174, column: 7)
!2533 = !DILocation(line: 1174, column: 7, scope: !2532)
!2534 = distinct !{!2534, !2525, !2525}
!2535 = !DILocation(line: 1174, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 1174, column: 7)
!2537 = !DILocation(line: 1175, column: 5, scope: !2281)
!2538 = !DILocation(line: 1176, column: 5, scope: !2520)
!2539 = !DILocation(line: 1179, column: 5, scope: !2283)
!2540 = !DILocation(line: 1180, column: 3, scope: !2283)
!2541 = !DILocation(line: 0, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1100, column: 27)
!2543 = !DILocation(line: 1182, column: 1, scope: !2256)
!2544 = !DILocation(line: 2215, column: 30, scope: !282)
!2545 = !DILocation(line: 2223, column: 3, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 2223, column: 3)
!2547 = distinct !DILexicalBlock(scope: !282, file: !3, line: 2223, column: 3)
!2548 = !DILocation(line: 2223, column: 3, scope: !2547)
!2549 = !DILocation(line: 2223, column: 3, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 2223, column: 3)
!2551 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 2223, column: 3)
!2552 = !DILocation(line: 2223, column: 3, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 2223, column: 3)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 2223, column: 3)
!2555 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 2223, column: 3)
!2556 = !DILocation(line: 2226, column: 10, scope: !282)
!2557 = !DILocation(line: 2226, column: 7, scope: !282)
!2558 = !DILocation(line: 2227, column: 3, scope: !282)
!2559 = !DILocation(line: 2238, column: 30, scope: !2465)
!2560 = !DILocation(line: 2238, column: 53, scope: !2465)
!2561 = !DILocation(line: 2238, column: 77, scope: !2465)
!2562 = !DILocation(line: 2245, column: 3, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 2245, column: 3)
!2564 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 2245, column: 3)
!2565 = !DILocation(line: 2245, column: 3, scope: !2564)
!2566 = !DILocation(line: 2245, column: 3, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 2245, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 2245, column: 3)
!2569 = !DILocation(line: 2245, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 2245, column: 3)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 2245, column: 3)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 2245, column: 3)
!2573 = !DILocation(line: 2249, column: 7, scope: !2483)
!2574 = !DILocation(line: 2249, column: 7, scope: !2465)
!2575 = !DILocation(line: 2253, column: 35, scope: !2482)
!2576 = !DILocation(line: 2253, column: 11, scope: !2482)
!2577 = !DILocation(line: 2241, column: 9, scope: !2465)
!2578 = !DILocation(line: 2254, column: 3, scope: !2482)
!2579 = !DILocation(line: 2261, column: 15, scope: !2505)
!2580 = !DILocation(line: 2261, column: 9, scope: !2488)
!2581 = !DILocation(line: 2264, column: 18, scope: !2488)
!2582 = !DILocation(line: 0, scope: !2488)
!2583 = !DILocation(line: 2268, column: 7, scope: !2475)
!2584 = !DILocation(line: 2268, column: 11, scope: !2475)
!2585 = !DILocation(line: 2268, column: 7, scope: !2465)
!2586 = !DILocation(line: 2272, column: 9, scope: !2495)
!2587 = !DILocation(line: 2276, column: 5, scope: !2497)
!2588 = !DILocation(line: 2286, column: 18, scope: !2474)
!2589 = !DILocation(line: 2286, column: 42, scope: !2474)
!2590 = !DILocation(line: 2286, column: 13, scope: !2474)
!2591 = !DILocation(line: 2291, column: 15, scope: !2474)
!2592 = !DILocation(line: 2292, column: 3, scope: !2474)
!2593 = !DILocation(line: 0, scope: !2504)
!2594 = !DILocation(line: 2294, column: 1, scope: !2465)
!2595 = !DILocation(line: 2386, column: 32, scope: !868)
!2596 = !DILocation(line: 2388, column: 12, scope: !867)
!2597 = !DILocation(line: 2388, column: 7, scope: !867)
!2598 = !DILocation(line: 2388, column: 7, scope: !868)
!2599 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 2389, column: 5, scope: !866)
!2601 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !2600)
!2602 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !2600)
!2603 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !2600)
!2605 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !2604)
!2606 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !2604)
!2607 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !2604)
!2608 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !2604)
!2609 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !2604)
!2610 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !2604)
!2611 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !2604)
!2612 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !2600)
!2613 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !2600)
!2614 = !DILocation(line: 2390, column: 16, scope: !866)
!2615 = !DILocation(line: 2394, column: 3, scope: !866)
!2616 = !DILocation(line: 2395, column: 1, scope: !868)
!2617 = distinct !DISubprogram(name: "tcp_pcb_purge", scope: !3, file: !3, line: 2127, type: !443, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2618)
!2618 = !{!2619}
!2619 = !DILocalVariable(name: "pcb", arg: 1, scope: !2617, file: !3, line: 2127, type: !145)
!2620 = !DILocation(line: 2127, column: 31, scope: !2617)
!2621 = !DILocation(line: 2129, column: 3, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 2129, column: 3)
!2623 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 2129, column: 3)
!2624 = !DILocation(line: 2129, column: 3, scope: !2623)
!2625 = !DILocation(line: 2129, column: 3, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 2129, column: 3)
!2627 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 2129, column: 3)
!2628 = !DILocation(line: 2129, column: 3, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 2129, column: 3)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 2129, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2626, file: !3, line: 2129, column: 3)
!2632 = !DILocation(line: 2131, column: 12, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 2131, column: 7)
!2634 = !DILocation(line: 2131, column: 28, scope: !2633)
!2635 = !DILocation(line: 2139, column: 14, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 2139, column: 9)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 2133, column: 29)
!2638 = !DILocation(line: 2139, column: 27, scope: !2636)
!2639 = !DILocation(line: 2139, column: 9, scope: !2637)
!2640 = !DILocation(line: 2141, column: 7, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 2139, column: 36)
!2642 = !DILocation(line: 2142, column: 25, scope: !2641)
!2643 = !DILocation(line: 2143, column: 5, scope: !2641)
!2644 = !DILocation(line: 2144, column: 14, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 2144, column: 9)
!2646 = !DILocation(line: 2147, column: 14, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 2147, column: 9)
!2648 = !DILocation(line: 2151, column: 14, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 2151, column: 9)
!2650 = !DILocation(line: 2151, column: 20, scope: !2649)
!2651 = !DILocation(line: 2151, column: 9, scope: !2637)
!2652 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 2389, column: 5, scope: !866, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 2153, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 2151, column: 29)
!2656 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !2653)
!2657 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !2653)
!2658 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !2653)
!2660 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !2659)
!2661 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !2659)
!2662 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !2659)
!2663 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !2659)
!2664 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !2659)
!2665 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !2659)
!2666 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !2659)
!2667 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !2653)
!2668 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !2653)
!2669 = !DILocation(line: 2390, column: 16, scope: !866, inlinedAt: !2654)
!2670 = !DILocation(line: 2154, column: 5, scope: !2655)
!2671 = !DILocation(line: 2159, column: 10, scope: !2637)
!2672 = !DILocation(line: 2159, column: 16, scope: !2637)
!2673 = !DILocation(line: 2161, column: 24, scope: !2637)
!2674 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 2161, column: 5, scope: !2637)
!2676 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !2675)
!2677 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !2675)
!2678 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !2675)
!2679 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !2675)
!2680 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !2675)
!2682 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !2681)
!2683 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !2681)
!2684 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !2681)
!2685 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !2681)
!2686 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !2681)
!2687 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !2681)
!2688 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !2681)
!2689 = !DILocation(line: 2162, column: 24, scope: !2637)
!2690 = !DILocation(line: 1608, column: 31, scope: !858, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 2162, column: 5, scope: !2637)
!2692 = !DILocation(line: 1610, column: 14, scope: !858, inlinedAt: !2691)
!2693 = !DILocation(line: 1610, column: 3, scope: !858, inlinedAt: !2691)
!2694 = !DILocation(line: 1611, column: 33, scope: !863, inlinedAt: !2691)
!2695 = !DILocation(line: 1611, column: 21, scope: !863, inlinedAt: !2691)
!2696 = !DILocation(line: 1623, column: 30, scope: !878, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1612, column: 5, scope: !863, inlinedAt: !2691)
!2698 = !DILocation(line: 1626, column: 14, scope: !883, inlinedAt: !2697)
!2699 = !DILocation(line: 1626, column: 16, scope: !883, inlinedAt: !2697)
!2700 = !DILocation(line: 1626, column: 9, scope: !884, inlinedAt: !2697)
!2701 = !DILocation(line: 1627, column: 7, scope: !890, inlinedAt: !2697)
!2702 = !DILocation(line: 1631, column: 5, scope: !890, inlinedAt: !2697)
!2703 = !DILocation(line: 1632, column: 29, scope: !884, inlinedAt: !2697)
!2704 = !DILocation(line: 1632, column: 5, scope: !884, inlinedAt: !2697)
!2705 = !DILocation(line: 2163, column: 32, scope: !2637)
!2706 = !DILocation(line: 2165, column: 10, scope: !2637)
!2707 = !DILocation(line: 2165, column: 26, scope: !2637)
!2708 = !{!452, !440, i64 174}
!2709 = !DILocation(line: 2167, column: 3, scope: !2637)
!2710 = !DILocation(line: 2168, column: 1, scope: !2617)
!2711 = distinct !DISubprogram(name: "tcp_close_shutdown_fin", scope: !3, file: !3, line: 409, type: !1091, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2712)
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "pcb", arg: 1, scope: !2711, file: !3, line: 409, type: !145)
!2714 = !DILocalVariable(name: "err", scope: !2711, file: !3, line: 411, type: !140)
!2715 = !DILocation(line: 409, column: 40, scope: !2711)
!2716 = !DILocation(line: 412, column: 3, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !3, line: 412, column: 3)
!2718 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 412, column: 3)
!2719 = !DILocation(line: 412, column: 3, scope: !2718)
!2720 = !DILocation(line: 412, column: 3, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 412, column: 3)
!2722 = distinct !DILexicalBlock(scope: !2717, file: !3, line: 412, column: 3)
!2723 = !DILocation(line: 412, column: 3, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 412, column: 3)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 412, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2721, file: !3, line: 412, column: 3)
!2727 = !DILocation(line: 414, column: 16, scope: !2711)
!2728 = !DILocation(line: 414, column: 3, scope: !2711)
!2729 = !DILocation(line: 416, column: 13, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 414, column: 23)
!2731 = !DILocation(line: 411, column: 9, scope: !2711)
!2732 = !DILocation(line: 417, column: 15, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 417, column: 11)
!2734 = !DILocation(line: 417, column: 11, scope: !2730)
!2735 = !DILocation(line: 424, column: 13, scope: !2730)
!2736 = !DILocation(line: 425, column: 15, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 425, column: 11)
!2738 = !DILocation(line: 425, column: 11, scope: !2730)
!2739 = !DILocation(line: 431, column: 13, scope: !2730)
!2740 = !DILocation(line: 432, column: 15, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 432, column: 11)
!2742 = !DILocation(line: 432, column: 11, scope: !2730)
!2743 = !DILocation(line: 0, scope: !2730)
!2744 = !DILocation(line: 442, column: 7, scope: !2711)
!2745 = !DILocation(line: 0, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 432, column: 26)
!2747 = !DILocation(line: 448, column: 5, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 442, column: 22)
!2749 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 442, column: 7)
!2750 = !DILocation(line: 449, column: 3, scope: !2748)
!2751 = !DILocation(line: 451, column: 5, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 451, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 449, column: 30)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 449, column: 14)
!2755 = !DILocation(line: 457, column: 5, scope: !2753)
!2756 = !DILocation(line: 0, scope: !2753)
!2757 = !DILocation(line: 460, column: 1, scope: !2711)
!2758 = distinct !DISubprogram(name: "tcp_process_refused_data", scope: !3, file: !3, line: 1539, type: !1091, isLocal: false, isDefinition: true, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2759)
!2759 = !{!2760, !2761, !2762, !2764, !2765}
!2760 = !DILocalVariable(name: "pcb", arg: 1, scope: !2758, file: !3, line: 1539, type: !145)
!2761 = !DILocalVariable(name: "rest", scope: !2758, file: !3, line: 1542, type: !204)
!2762 = !DILocalVariable(name: "err", scope: !2763, file: !3, line: 1551, type: !140)
!2763 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 1550, column: 3)
!2764 = !DILocalVariable(name: "refused_flags", scope: !2763, file: !3, line: 1552, type: !91)
!2765 = !DILocalVariable(name: "refused_data", scope: !2763, file: !3, line: 1555, type: !204)
!2766 = !DILocation(line: 1539, column: 42, scope: !2758)
!2767 = !DILocation(line: 1542, column: 3, scope: !2758)
!2768 = !DILocation(line: 1545, column: 3, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 1545, column: 3)
!2770 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 1545, column: 3)
!2771 = !DILocation(line: 1545, column: 3, scope: !2770)
!2772 = !DILocation(line: 1548, column: 15, scope: !2758)
!2773 = !DILocation(line: 1548, column: 28, scope: !2758)
!2774 = !DILocation(line: 1548, column: 3, scope: !2758)
!2775 = !DILocation(line: 1545, column: 3, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 1545, column: 3)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !3, line: 1545, column: 3)
!2778 = !DILocation(line: 1545, column: 3, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 1545, column: 3)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1545, column: 3)
!2781 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1545, column: 3)
!2782 = !DILocation(line: 1552, column: 45, scope: !2763)
!2783 = !{!2784, !413, i64 21}
!2784 = !{!"pbuf", !454, i64 0, !454, i64 8, !440, i64 16, !440, i64 18, !413, i64 20, !413, i64 21, !413, i64 22, !413, i64 23}
!2785 = !DILocation(line: 1552, column: 10, scope: !2763)
!2786 = !DILocation(line: 1555, column: 18, scope: !2763)
!2787 = !DILocation(line: 1542, column: 16, scope: !2758)
!2788 = !DILocation(line: 1557, column: 5, scope: !2763)
!2789 = !DILocation(line: 1558, column: 25, scope: !2763)
!2790 = !DILocation(line: 1558, column: 23, scope: !2763)
!2791 = !DILocation(line: 1564, column: 5, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1564, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1564, column: 5)
!2794 = !{!452, !454, i64 232}
!2795 = !DILocation(line: 1564, column: 5, scope: !2793)
!2796 = !DILocalVariable(name: "arg", arg: 1, scope: !2797, file: !3, line: 1684, type: !88)
!2797 = distinct !DISubprogram(name: "tcp_recv_null", scope: !3, file: !3, line: 1684, type: !243, isLocal: false, isDefinition: true, scopeLine: 1685, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2798)
!2798 = !{!2796, !2799, !2800, !2801}
!2799 = !DILocalVariable(name: "pcb", arg: 2, scope: !2797, file: !3, line: 1684, type: !145)
!2800 = !DILocalVariable(name: "p", arg: 3, scope: !2797, file: !3, line: 1684, type: !204)
!2801 = !DILocalVariable(name: "err", arg: 4, scope: !2797, file: !3, line: 1684, type: !140)
!2802 = !DILocation(line: 1684, column: 21, scope: !2797, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1564, column: 5, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1564, column: 5)
!2805 = !DILocation(line: 1684, column: 42, scope: !2797, inlinedAt: !2803)
!2806 = !DILocation(line: 1684, column: 60, scope: !2797, inlinedAt: !2803)
!2807 = !DILocation(line: 1684, column: 69, scope: !2797, inlinedAt: !2803)
!2808 = !DILocation(line: 1691, column: 24, scope: !2809, inlinedAt: !2803)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 1690, column: 18)
!2810 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1690, column: 7)
!2811 = !{!2784, !440, i64 16}
!2812 = !DILocation(line: 1691, column: 5, scope: !2809, inlinedAt: !2803)
!2813 = !DILocation(line: 1692, column: 5, scope: !2809, inlinedAt: !2803)
!2814 = !DILocation(line: 1551, column: 11, scope: !2763)
!2815 = !DILocation(line: 1565, column: 9, scope: !2763)
!2816 = !DILocation(line: 1564, column: 5, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1564, column: 5)
!2818 = !DILocation(line: 1567, column: 26, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1567, column: 11)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1565, column: 24)
!2821 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 1565, column: 9)
!2822 = !DILocation(line: 1569, column: 15, scope: !2819)
!2823 = !DILocation(line: 1569, column: 20, scope: !2819)
!2824 = !DILocation(line: 1569, column: 11, scope: !2819)
!2825 = !DILocation(line: 1574, column: 18, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1574, column: 13)
!2827 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1571, column: 12)
!2828 = !DILocation(line: 1574, column: 29, scope: !2826)
!2829 = !DILocation(line: 1574, column: 26, scope: !2826)
!2830 = !DILocation(line: 1574, column: 13, scope: !2827)
!2831 = !DILocation(line: 1575, column: 23, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 1574, column: 47)
!2833 = !DILocation(line: 1576, column: 9, scope: !2832)
!2834 = !DILocation(line: 1577, column: 9, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 1577, column: 9)
!2836 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1577, column: 9)
!2837 = !DILocation(line: 1577, column: 9, scope: !2836)
!2838 = !DILocation(line: 1577, column: 9, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 1577, column: 9)
!2840 = !DILocation(line: 1578, column: 17, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 1578, column: 13)
!2842 = !DILocation(line: 1578, column: 13, scope: !2827)
!2843 = !DILocation(line: 1591, column: 11, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 1591, column: 11)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 1588, column: 12)
!2846 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1582, column: 16)
!2847 = !DILocation(line: 1591, column: 16, scope: !2844)
!2848 = !DILocation(line: 1591, column: 11, scope: !2845)
!2849 = !DILocation(line: 1592, column: 9, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1591, column: 25)
!2851 = !DILocation(line: 1593, column: 7, scope: !2850)
!2852 = !DILocation(line: 1595, column: 25, scope: !2845)
!2853 = !DILocation(line: 1596, column: 7, scope: !2845)
!2854 = !DILocation(line: 0, scope: !2758)
!2855 = !DILocation(line: 1600, column: 1, scope: !2758)
!2856 = distinct !DISubprogram(name: "tcp_txnow", scope: !3, file: !3, line: 1526, type: !360, isLocal: false, isDefinition: true, scopeLine: 1527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2857)
!2857 = !{!2858}
!2858 = !DILocalVariable(name: "pcb", scope: !2856, file: !3, line: 1528, type: !145)
!2859 = !DILocation(line: 1528, column: 19, scope: !2856)
!2860 = !DILocation(line: 0, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1530, column: 3)
!2862 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 1530, column: 3)
!2863 = !DILocation(line: 1530, column: 35, scope: !2861)
!2864 = !DILocation(line: 1530, column: 3, scope: !2862)
!2865 = !DILocation(line: 1531, column: 14, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1531, column: 9)
!2867 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1530, column: 61)
!2868 = !DILocation(line: 1531, column: 20, scope: !2866)
!2869 = !DILocation(line: 1531, column: 9, scope: !2867)
!2870 = !DILocation(line: 1532, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 1531, column: 38)
!2872 = !DILocation(line: 1533, column: 5, scope: !2871)
!2873 = !DILocation(line: 1530, column: 55, scope: !2861)
!2874 = distinct !{!2874, !2864, !2875}
!2875 = !DILocation(line: 1534, column: 3, scope: !2862)
!2876 = !DILocation(line: 1535, column: 1, scope: !2856)
!2877 = !DILocation(line: 1684, column: 21, scope: !2797)
!2878 = !DILocation(line: 1684, column: 42, scope: !2797)
!2879 = !DILocation(line: 1684, column: 60, scope: !2797)
!2880 = !DILocation(line: 1684, column: 69, scope: !2797)
!2881 = !DILocation(line: 1688, column: 3, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1688, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1688, column: 3)
!2884 = !DILocation(line: 1688, column: 3, scope: !2883)
!2885 = !DILocation(line: 1688, column: 3, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1688, column: 3)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1688, column: 3)
!2888 = !DILocation(line: 1688, column: 3, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 1688, column: 3)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1688, column: 3)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1688, column: 3)
!2892 = !DILocation(line: 1690, column: 9, scope: !2810)
!2893 = !DILocation(line: 1690, column: 7, scope: !2797)
!2894 = !DILocation(line: 1691, column: 24, scope: !2809)
!2895 = !DILocation(line: 1691, column: 5, scope: !2809)
!2896 = !DILocation(line: 1692, column: 5, scope: !2809)
!2897 = !DILocation(line: 1693, column: 3, scope: !2809)
!2898 = !DILocation(line: 1693, column: 18, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 1693, column: 14)
!2900 = !DILocation(line: 1693, column: 14, scope: !2810)
!2901 = !DILocation(line: 484, column: 27, scope: !1090, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 1694, column: 12, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 1693, column: 29)
!2904 = !DILocation(line: 493, column: 12, scope: !1108, inlinedAt: !2902)
!2905 = !DILocation(line: 493, column: 18, scope: !1108, inlinedAt: !2902)
!2906 = !DILocation(line: 493, column: 7, scope: !1090, inlinedAt: !2902)
!2907 = !DILocation(line: 495, column: 5, scope: !1112, inlinedAt: !2902)
!2908 = !DILocation(line: 496, column: 3, scope: !1113, inlinedAt: !2902)
!2909 = !DILocation(line: 498, column: 10, scope: !1090, inlinedAt: !2902)
!2910 = !DILocation(line: 1694, column: 5, scope: !2903)
!2911 = !DILocation(line: 0, scope: !2903)
!2912 = !DILocation(line: 1697, column: 1, scope: !2797)
!2913 = !DILocation(line: 1623, column: 30, scope: !878)
!2914 = !DILocation(line: 1625, column: 11, scope: !885)
!2915 = !DILocation(line: 1625, column: 7, scope: !878)
!2916 = !DILocation(line: 1626, column: 14, scope: !883)
!2917 = !DILocation(line: 1626, column: 16, scope: !883)
!2918 = !DILocation(line: 1626, column: 9, scope: !884)
!2919 = !DILocation(line: 1627, column: 7, scope: !890)
!2920 = !DILocation(line: 1631, column: 5, scope: !890)
!2921 = !DILocation(line: 1632, column: 29, scope: !884)
!2922 = !DILocation(line: 1632, column: 5, scope: !884)
!2923 = !DILocation(line: 1633, column: 3, scope: !884)
!2924 = !DILocation(line: 1634, column: 1, scope: !878)
!2925 = distinct !DISubprogram(name: "tcp_setprio", scope: !3, file: !3, line: 1644, type: !2926, isLocal: false, isDefinition: true, scopeLine: 1645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{null, !145, !91}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "pcb", arg: 1, scope: !2925, file: !3, line: 1644, type: !145)
!2930 = !DILocalVariable(name: "prio", arg: 2, scope: !2925, file: !3, line: 1644, type: !91)
!2931 = !DILocation(line: 1644, column: 29, scope: !2925)
!2932 = !DILocation(line: 1644, column: 39, scope: !2925)
!2933 = !DILocation(line: 1648, column: 3, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 1648, column: 3)
!2935 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1648, column: 3)
!2936 = !DILocation(line: 1648, column: 3, scope: !2935)
!2937 = !DILocation(line: 1648, column: 3, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1648, column: 3)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !3, line: 1648, column: 3)
!2940 = !DILocation(line: 1648, column: 3, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 1648, column: 3)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1648, column: 3)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1648, column: 3)
!2944 = !DILocation(line: 1650, column: 8, scope: !2925)
!2945 = !DILocation(line: 1650, column: 13, scope: !2925)
!2946 = !DILocation(line: 1651, column: 1, scope: !2925)
!2947 = distinct !DISubprogram(name: "tcp_seg_copy", scope: !3, file: !3, line: 1662, type: !2948, isLocal: false, isDefinition: true, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2950)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!198, !198}
!2950 = !{!2951, !2952}
!2951 = !DILocalVariable(name: "seg", arg: 1, scope: !2947, file: !3, line: 1662, type: !198)
!2952 = !DILocalVariable(name: "cseg", scope: !2947, file: !3, line: 1664, type: !198)
!2953 = !DILocation(line: 1662, column: 30, scope: !2947)
!2954 = !DILocation(line: 1666, column: 3, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1666, column: 3)
!2956 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1666, column: 3)
!2957 = !DILocation(line: 1666, column: 3, scope: !2956)
!2958 = !DILocation(line: 1666, column: 3, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !3, line: 1666, column: 3)
!2960 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 1666, column: 3)
!2961 = !DILocation(line: 1666, column: 3, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1666, column: 3)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1666, column: 3)
!2964 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 1666, column: 3)
!2965 = !DILocation(line: 1668, column: 28, scope: !2947)
!2966 = !DILocation(line: 1669, column: 12, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 1669, column: 7)
!2968 = !DILocation(line: 1669, column: 7, scope: !2947)
!2969 = !DILocation(line: 1668, column: 10, scope: !2947)
!2970 = !DILocation(line: 1664, column: 19, scope: !2947)
!2971 = !DILocation(line: 1672, column: 3, scope: !2947)
!2972 = !DILocation(line: 1673, column: 18, scope: !2947)
!2973 = !DILocation(line: 1673, column: 3, scope: !2947)
!2974 = !DILocation(line: 1674, column: 3, scope: !2947)
!2975 = !DILocation(line: 0, scope: !2947)
!2976 = !DILocation(line: 1675, column: 1, scope: !2947)
!2977 = distinct !DISubprogram(name: "tcp_alloc", scope: !3, file: !3, line: 1834, type: !2978, isLocal: false, isDefinition: true, scopeLine: 1835, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!145, !91}
!2980 = !{!2981, !2982}
!2981 = !DILocalVariable(name: "prio", arg: 1, scope: !2977, file: !3, line: 1834, type: !91)
!2982 = !DILocalVariable(name: "pcb", scope: !2977, file: !3, line: 1836, type: !145)
!2983 = !DILocation(line: 1834, column: 16, scope: !2977)
!2984 = !DILocation(line: 1840, column: 27, scope: !2977)
!2985 = !DILocation(line: 1836, column: 19, scope: !2977)
!2986 = !DILocation(line: 1841, column: 11, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1841, column: 7)
!2988 = !DILocation(line: 1841, column: 7, scope: !2977)
!2989 = !DILocation(line: 1813, column: 25, scope: !2990, inlinedAt: !2995)
!2990 = distinct !DISubprogram(name: "tcp_handle_closepend", scope: !3, file: !3, line: 1811, type: !360, isLocal: true, isDefinition: true, scopeLine: 1812, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2991)
!2991 = !{!2992, !2993}
!2992 = !DILocalVariable(name: "pcb", scope: !2990, file: !3, line: 1813, type: !145)
!2993 = !DILocalVariable(name: "next", scope: !2994, file: !3, line: 1816, type: !145)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1815, column: 23)
!2995 = distinct !DILocation(line: 1843, column: 5, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 1841, column: 20)
!2997 = !DILocation(line: 1813, column: 19, scope: !2990, inlinedAt: !2995)
!2998 = !DILocation(line: 1815, column: 14, scope: !2990, inlinedAt: !2995)
!2999 = !DILocation(line: 1815, column: 3, scope: !2990, inlinedAt: !2995)
!3000 = !DILocation(line: 1816, column: 33, scope: !2994, inlinedAt: !2995)
!3001 = !DILocation(line: 1816, column: 21, scope: !2994, inlinedAt: !2995)
!3002 = !DILocation(line: 1818, column: 14, scope: !3003, inlinedAt: !2995)
!3003 = distinct !DILexicalBlock(scope: !2994, file: !3, line: 1818, column: 9)
!3004 = !DILocation(line: 1818, column: 20, scope: !3003, inlinedAt: !2995)
!3005 = !DILocation(line: 1818, column: 9, scope: !2994, inlinedAt: !2995)
!3006 = !DILocation(line: 1820, column: 7, scope: !3007, inlinedAt: !2995)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1820, column: 7)
!3008 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1818, column: 36)
!3009 = !DILocation(line: 1821, column: 7, scope: !3008, inlinedAt: !2995)
!3010 = !DILocation(line: 1822, column: 5, scope: !3008, inlinedAt: !2995)
!3011 = distinct !{!3011, !3012, !3013}
!3012 = !DILocation(line: 1815, column: 3, scope: !2990)
!3013 = !DILocation(line: 1824, column: 3, scope: !2990)
!3014 = !DILocalVariable(name: "inactivity", scope: !3015, file: !3, line: 1787, type: !95)
!3015 = distinct !DISubprogram(name: "tcp_kill_timewait", scope: !3, file: !3, line: 1784, type: !360, isLocal: true, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3016)
!3016 = !{!3017, !3018, !3014}
!3017 = !DILocalVariable(name: "pcb", scope: !3015, file: !3, line: 1786, type: !145)
!3018 = !DILocalVariable(name: "inactive", scope: !3015, file: !3, line: 1786, type: !145)
!3019 = !DILocation(line: 1787, column: 9, scope: !3015, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 1847, column: 5, scope: !2996)
!3021 = !DILocation(line: 1786, column: 25, scope: !3015, inlinedAt: !3020)
!3022 = !DILocation(line: 1786, column: 19, scope: !3015, inlinedAt: !3020)
!3023 = !DILocation(line: 0, scope: !3024, inlinedAt: !3020)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 1792, column: 3)
!3025 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1792, column: 3)
!3026 = !DILocation(line: 1792, column: 31, scope: !3024, inlinedAt: !3020)
!3027 = !DILocation(line: 1792, column: 3, scope: !3025, inlinedAt: !3020)
!3028 = !DILocation(line: 1793, column: 34, scope: !3029, inlinedAt: !3020)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !3, line: 1793, column: 9)
!3030 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1792, column: 57)
!3031 = !DILocation(line: 1793, column: 27, scope: !3029, inlinedAt: !3020)
!3032 = !DILocation(line: 1793, column: 39, scope: !3029, inlinedAt: !3020)
!3033 = !DILocation(line: 1793, column: 9, scope: !3030, inlinedAt: !3020)
!3034 = !DILocation(line: 1792, column: 51, scope: !3024, inlinedAt: !3020)
!3035 = distinct !{!3035, !3036, !3037}
!3036 = !DILocation(line: 1792, column: 3, scope: !3025)
!3037 = !DILocation(line: 1797, column: 3, scope: !3025)
!3038 = !DILocation(line: 1798, column: 16, scope: !3039, inlinedAt: !3020)
!3039 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1798, column: 7)
!3040 = !DILocation(line: 1798, column: 7, scope: !3015, inlinedAt: !3020)
!3041 = !DILocation(line: 638, column: 27, scope: !1669, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 1801, column: 5, scope: !3043, inlinedAt: !3020)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1798, column: 25)
!3044 = !DILocation(line: 640, column: 3, scope: !1669, inlinedAt: !3042)
!3045 = !DILocation(line: 1802, column: 3, scope: !3043, inlinedAt: !3020)
!3046 = !DILocation(line: 1849, column: 29, scope: !2996)
!3047 = !DILocation(line: 1850, column: 13, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 1850, column: 9)
!3049 = !DILocation(line: 1850, column: 9, scope: !2996)
!3050 = !DILocalVariable(name: "state", arg: 1, scope: !3051, file: !3, line: 1752, type: !5)
!3051 = distinct !DISubprogram(name: "tcp_kill_state", scope: !3, file: !3, line: 1752, type: !3052, isLocal: true, isDefinition: true, scopeLine: 1753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{null, !5}
!3054 = !{!3050, !3055, !3056, !3057}
!3055 = !DILocalVariable(name: "pcb", scope: !3051, file: !3, line: 1754, type: !145)
!3056 = !DILocalVariable(name: "inactive", scope: !3051, file: !3, line: 1754, type: !145)
!3057 = !DILocalVariable(name: "inactivity", scope: !3051, file: !3, line: 1755, type: !95)
!3058 = !DILocation(line: 1752, column: 31, scope: !3051, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 1853, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1850, column: 22)
!3061 = !DILocation(line: 0, scope: !3062, inlinedAt: !3059)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 1763, column: 3)
!3063 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1763, column: 3)
!3064 = !DILocation(line: 1755, column: 9, scope: !3051, inlinedAt: !3059)
!3065 = !DILocation(line: 1754, column: 25, scope: !3051, inlinedAt: !3059)
!3066 = !DILocation(line: 1754, column: 19, scope: !3051, inlinedAt: !3059)
!3067 = !DILocation(line: 1763, column: 35, scope: !3062, inlinedAt: !3059)
!3068 = !DILocation(line: 1763, column: 3, scope: !3063, inlinedAt: !3059)
!3069 = !DILocation(line: 1764, column: 14, scope: !3070, inlinedAt: !3059)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1764, column: 9)
!3071 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 1763, column: 61)
!3072 = !DILocation(line: 1764, column: 20, scope: !3070, inlinedAt: !3059)
!3073 = !DILocation(line: 1764, column: 9, scope: !3071, inlinedAt: !3059)
!3074 = !DILocation(line: 1765, column: 36, scope: !3075, inlinedAt: !3059)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !3, line: 1765, column: 11)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1764, column: 30)
!3077 = !DILocation(line: 1765, column: 29, scope: !3075, inlinedAt: !3059)
!3078 = !DILocation(line: 1765, column: 41, scope: !3075, inlinedAt: !3059)
!3079 = !DILocation(line: 1765, column: 11, scope: !3076, inlinedAt: !3059)
!3080 = !DILocation(line: 0, scope: !3051, inlinedAt: !3059)
!3081 = !DILocation(line: 1763, column: 55, scope: !3062, inlinedAt: !3059)
!3082 = distinct !{!3082, !3083, !3084}
!3083 = !DILocation(line: 1763, column: 3, scope: !3063)
!3084 = !DILocation(line: 1770, column: 3, scope: !3063)
!3085 = !DILocation(line: 1771, column: 16, scope: !3086, inlinedAt: !3059)
!3086 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 1771, column: 7)
!3087 = !DILocation(line: 1771, column: 7, scope: !3051, inlinedAt: !3059)
!3088 = !DILocation(line: 1775, column: 5, scope: !3089, inlinedAt: !3059)
!3089 = distinct !DILexicalBlock(scope: !3086, file: !3, line: 1771, column: 25)
!3090 = !DILocation(line: 1776, column: 3, scope: !3089, inlinedAt: !3059)
!3091 = !DILocation(line: 1855, column: 31, scope: !3060)
!3092 = !DILocation(line: 1856, column: 15, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1856, column: 11)
!3094 = !DILocation(line: 1856, column: 11, scope: !3060)
!3095 = !DILocation(line: 1752, column: 31, scope: !3051, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 1859, column: 9, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1856, column: 24)
!3098 = !DILocation(line: 0, scope: !3062, inlinedAt: !3096)
!3099 = !DILocation(line: 1755, column: 9, scope: !3051, inlinedAt: !3096)
!3100 = !DILocation(line: 1754, column: 25, scope: !3051, inlinedAt: !3096)
!3101 = !DILocation(line: 1754, column: 19, scope: !3051, inlinedAt: !3096)
!3102 = !DILocation(line: 1763, column: 35, scope: !3062, inlinedAt: !3096)
!3103 = !DILocation(line: 1763, column: 3, scope: !3063, inlinedAt: !3096)
!3104 = !DILocation(line: 1764, column: 14, scope: !3070, inlinedAt: !3096)
!3105 = !DILocation(line: 1764, column: 20, scope: !3070, inlinedAt: !3096)
!3106 = !DILocation(line: 1764, column: 9, scope: !3071, inlinedAt: !3096)
!3107 = !DILocation(line: 1765, column: 36, scope: !3075, inlinedAt: !3096)
!3108 = !DILocation(line: 1765, column: 29, scope: !3075, inlinedAt: !3096)
!3109 = !DILocation(line: 1765, column: 41, scope: !3075, inlinedAt: !3096)
!3110 = !DILocation(line: 1765, column: 11, scope: !3076, inlinedAt: !3096)
!3111 = !DILocation(line: 0, scope: !3051, inlinedAt: !3096)
!3112 = !DILocation(line: 1763, column: 55, scope: !3062, inlinedAt: !3096)
!3113 = !DILocation(line: 1771, column: 16, scope: !3086, inlinedAt: !3096)
!3114 = !DILocation(line: 1771, column: 7, scope: !3051, inlinedAt: !3096)
!3115 = !DILocation(line: 1775, column: 5, scope: !3089, inlinedAt: !3096)
!3116 = !DILocation(line: 1776, column: 3, scope: !3089, inlinedAt: !3096)
!3117 = !DILocation(line: 1861, column: 33, scope: !3097)
!3118 = !DILocation(line: 1862, column: 17, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1862, column: 13)
!3120 = !DILocation(line: 1862, column: 13, scope: !3097)
!3121 = !DILocalVariable(name: "prio", arg: 1, scope: !3122, file: !3, line: 1706, type: !91)
!3122 = distinct !DISubprogram(name: "tcp_kill_prio", scope: !3, file: !3, line: 1706, type: !3123, isLocal: true, isDefinition: true, scopeLine: 1707, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !91}
!3125 = !{!3121, !3126, !3127, !3128, !3129}
!3126 = !DILocalVariable(name: "pcb", scope: !3122, file: !3, line: 1708, type: !145)
!3127 = !DILocalVariable(name: "inactive", scope: !3122, file: !3, line: 1708, type: !145)
!3128 = !DILocalVariable(name: "inactivity", scope: !3122, file: !3, line: 1709, type: !95)
!3129 = !DILocalVariable(name: "mprio", scope: !3122, file: !3, line: 1710, type: !91)
!3130 = !DILocation(line: 1706, column: 20, scope: !3122, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 1865, column: 11, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1862, column: 26)
!3133 = !DILocation(line: 1712, column: 11, scope: !3122, inlinedAt: !3131)
!3134 = !DILocation(line: 1710, column: 8, scope: !3122, inlinedAt: !3131)
!3135 = !DILocation(line: 1717, column: 13, scope: !3136, inlinedAt: !3131)
!3136 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1717, column: 7)
!3137 = !DILocation(line: 1717, column: 7, scope: !3122, inlinedAt: !3131)
!3138 = !DILocation(line: 1709, column: 9, scope: !3122, inlinedAt: !3131)
!3139 = !DILocation(line: 1708, column: 25, scope: !3122, inlinedAt: !3131)
!3140 = !DILocation(line: 1708, column: 19, scope: !3122, inlinedAt: !3131)
!3141 = !DILocation(line: 0, scope: !3142, inlinedAt: !3131)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1730, column: 3)
!3143 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1730, column: 3)
!3144 = !DILocation(line: 1730, column: 35, scope: !3142, inlinedAt: !3131)
!3145 = !DILocation(line: 1730, column: 3, scope: !3143, inlinedAt: !3131)
!3146 = !DILocation(line: 1726, column: 8, scope: !3122, inlinedAt: !3131)
!3147 = !DILocation(line: 1732, column: 15, scope: !3148, inlinedAt: !3131)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 1732, column: 9)
!3149 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 1730, column: 61)
!3150 = !DILocation(line: 1732, column: 20, scope: !3148, inlinedAt: !3131)
!3151 = !DILocation(line: 1732, column: 29, scope: !3148, inlinedAt: !3131)
!3152 = !DILocation(line: 1735, column: 37, scope: !3153, inlinedAt: !3131)
!3153 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1734, column: 82)
!3154 = !DILocation(line: 1735, column: 30, scope: !3153, inlinedAt: !3131)
!3155 = !DILocation(line: 1734, column: 21, scope: !3148, inlinedAt: !3131)
!3156 = !DILocation(line: 1734, column: 31, scope: !3148, inlinedAt: !3131)
!3157 = !DILocation(line: 1734, column: 60, scope: !3148, inlinedAt: !3131)
!3158 = !DILocation(line: 1734, column: 53, scope: !3148, inlinedAt: !3131)
!3159 = !DILocation(line: 1734, column: 65, scope: !3148, inlinedAt: !3131)
!3160 = !DILocation(line: 1732, column: 9, scope: !3149, inlinedAt: !3131)
!3161 = !DILocation(line: 1738, column: 5, scope: !3153, inlinedAt: !3131)
!3162 = !DILocation(line: 0, scope: !3122, inlinedAt: !3131)
!3163 = !DILocation(line: 1730, column: 55, scope: !3142, inlinedAt: !3131)
!3164 = distinct !{!3164, !3165, !3166}
!3165 = !DILocation(line: 1730, column: 3, scope: !3143)
!3166 = !DILocation(line: 1739, column: 3, scope: !3143)
!3167 = !DILocation(line: 1740, column: 16, scope: !3168, inlinedAt: !3131)
!3168 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 1740, column: 7)
!3169 = !DILocation(line: 1740, column: 7, scope: !3122, inlinedAt: !3131)
!3170 = !DILocation(line: 638, column: 27, scope: !1669, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1743, column: 5, scope: !3172, inlinedAt: !3131)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 1740, column: 25)
!3173 = !DILocation(line: 640, column: 3, scope: !1669, inlinedAt: !3171)
!3174 = !DILocation(line: 1744, column: 3, scope: !3172, inlinedAt: !3131)
!3175 = !DILocation(line: 0, scope: !2977)
!3176 = !DILocation(line: 1888, column: 7, scope: !2977)
!3177 = !DILocation(line: 1867, column: 35, scope: !3132)
!3178 = !DILocation(line: 1888, column: 11, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1888, column: 7)
!3180 = !DILocation(line: 1890, column: 5, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 1888, column: 20)
!3182 = !DILocation(line: 1891, column: 10, scope: !3181)
!3183 = !DILocation(line: 1891, column: 15, scope: !3181)
!3184 = !DILocation(line: 1892, column: 10, scope: !3181)
!3185 = !DILocation(line: 1892, column: 18, scope: !3181)
!3186 = !{!452, !412, i64 168}
!3187 = !DILocation(line: 1895, column: 25, scope: !3181)
!3188 = !DILocation(line: 1895, column: 37, scope: !3181)
!3189 = !DILocation(line: 1895, column: 10, scope: !3181)
!3190 = !DILocation(line: 1895, column: 18, scope: !3181)
!3191 = !DILocation(line: 1896, column: 10, scope: !3181)
!3192 = !DILocation(line: 1896, column: 14, scope: !3181)
!3193 = !DILocation(line: 1899, column: 10, scope: !3181)
!3194 = !DILocation(line: 1899, column: 14, scope: !3181)
!3195 = !DILocation(line: 1900, column: 10, scope: !3181)
!3196 = !DILocation(line: 1900, column: 14, scope: !3181)
!3197 = !DILocation(line: 1901, column: 10, scope: !3181)
!3198 = !DILocation(line: 1901, column: 13, scope: !3181)
!3199 = !DILocation(line: 1902, column: 10, scope: !3181)
!3200 = !DILocation(line: 1902, column: 16, scope: !3181)
!3201 = !DILocation(line: 1903, column: 10, scope: !3181)
!3202 = !DILocation(line: 1903, column: 15, scope: !3181)
!3203 = !DILocation(line: 1904, column: 16, scope: !3181)
!3204 = !DILocation(line: 1904, column: 10, scope: !3181)
!3205 = !DILocation(line: 1904, column: 14, scope: !3181)
!3206 = !DILocation(line: 1905, column: 23, scope: !3181)
!3207 = !DILocation(line: 1905, column: 10, scope: !3181)
!3208 = !DILocation(line: 1905, column: 21, scope: !3181)
!3209 = !DILocation(line: 1913, column: 10, scope: !3181)
!3210 = !DILocation(line: 1913, column: 19, scope: !3181)
!3211 = !{!452, !412, i64 136}
!3212 = !DILocation(line: 1916, column: 10, scope: !3181)
!3213 = !DILocation(line: 1916, column: 15, scope: !3181)
!3214 = !DILocation(line: 1920, column: 10, scope: !3181)
!3215 = !DILocation(line: 1920, column: 21, scope: !3181)
!3216 = !DILocation(line: 1926, column: 3, scope: !3181)
!3217 = !DILocation(line: 1927, column: 3, scope: !2977)
!3218 = distinct !DISubprogram(name: "tcp_new", scope: !3, file: !3, line: 1945, type: !3219, isLocal: false, isDefinition: true, scopeLine: 1946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!145}
!3221 = !DILocation(line: 1947, column: 10, scope: !3218)
!3222 = !DILocation(line: 1947, column: 3, scope: !3218)
!3223 = distinct !DISubprogram(name: "tcp_new_ip_type", scope: !3, file: !3, line: 1962, type: !2978, isLocal: false, isDefinition: true, scopeLine: 1963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3224)
!3224 = !{!3225, !3226}
!3225 = !DILocalVariable(name: "type", arg: 1, scope: !3223, file: !3, line: 1962, type: !91)
!3226 = !DILocalVariable(name: "pcb", scope: !3223, file: !3, line: 1964, type: !145)
!3227 = !DILocation(line: 1962, column: 22, scope: !3223)
!3228 = !DILocation(line: 1965, column: 9, scope: !3223)
!3229 = !DILocation(line: 1964, column: 19, scope: !3223)
!3230 = !DILocation(line: 1967, column: 11, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 1967, column: 7)
!3232 = !DILocation(line: 1967, column: 7, scope: !3223)
!3233 = !DILocation(line: 1968, column: 5, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1968, column: 5)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 1967, column: 20)
!3236 = !DILocation(line: 1969, column: 5, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 1969, column: 5)
!3238 = !DILocation(line: 1970, column: 3, scope: !3235)
!3239 = !DILocation(line: 1974, column: 3, scope: !3223)
!3240 = distinct !DISubprogram(name: "tcp_arg", scope: !3, file: !3, line: 1988, type: !3241, isLocal: false, isDefinition: true, scopeLine: 1989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3243)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{null, !145, !88}
!3243 = !{!3244, !3245}
!3244 = !DILocalVariable(name: "pcb", arg: 1, scope: !3240, file: !3, line: 1988, type: !145)
!3245 = !DILocalVariable(name: "arg", arg: 2, scope: !3240, file: !3, line: 1988, type: !88)
!3246 = !DILocation(line: 1988, column: 25, scope: !3240)
!3247 = !DILocation(line: 1988, column: 36, scope: !3240)
!3248 = !DILocation(line: 1993, column: 11, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 1993, column: 7)
!3250 = !DILocation(line: 1993, column: 7, scope: !3240)
!3251 = !DILocation(line: 1994, column: 10, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1993, column: 20)
!3253 = !DILocation(line: 1994, column: 23, scope: !3252)
!3254 = !DILocation(line: 1995, column: 3, scope: !3252)
!3255 = !DILocation(line: 1996, column: 1, scope: !3240)
!3256 = distinct !DISubprogram(name: "tcp_recv", scope: !3, file: !3, line: 2011, type: !3257, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3259)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !145, !241}
!3259 = !{!3260, !3261}
!3260 = !DILocalVariable(name: "pcb", arg: 1, scope: !3256, file: !3, line: 2011, type: !145)
!3261 = !DILocalVariable(name: "recv", arg: 2, scope: !3256, file: !3, line: 2011, type: !241)
!3262 = !DILocation(line: 2011, column: 26, scope: !3256)
!3263 = !DILocation(line: 2011, column: 43, scope: !3256)
!3264 = !DILocation(line: 2014, column: 11, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3256, file: !3, line: 2014, column: 7)
!3266 = !DILocation(line: 2014, column: 7, scope: !3256)
!3267 = !DILocation(line: 2015, column: 5, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 2015, column: 5)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 2015, column: 5)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 2014, column: 20)
!3271 = !DILocation(line: 2015, column: 5, scope: !3269)
!3272 = !DILocation(line: 2015, column: 5, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 2015, column: 5)
!3274 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 2015, column: 5)
!3275 = !DILocation(line: 2015, column: 5, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 2015, column: 5)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 2015, column: 5)
!3278 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 2015, column: 5)
!3279 = !DILocation(line: 2016, column: 10, scope: !3270)
!3280 = !DILocation(line: 2016, column: 15, scope: !3270)
!3281 = !DILocation(line: 2017, column: 3, scope: !3270)
!3282 = !DILocation(line: 2018, column: 1, scope: !3256)
!3283 = distinct !DISubprogram(name: "tcp_sent", scope: !3, file: !3, line: 2031, type: !3284, isLocal: false, isDefinition: true, scopeLine: 2032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3286)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{null, !145, !236}
!3286 = !{!3287, !3288}
!3287 = !DILocalVariable(name: "pcb", arg: 1, scope: !3283, file: !3, line: 2031, type: !145)
!3288 = !DILocalVariable(name: "sent", arg: 2, scope: !3283, file: !3, line: 2031, type: !236)
!3289 = !DILocation(line: 2031, column: 26, scope: !3283)
!3290 = !DILocation(line: 2031, column: 43, scope: !3283)
!3291 = !DILocation(line: 2034, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 2034, column: 7)
!3293 = !DILocation(line: 2034, column: 7, scope: !3283)
!3294 = !DILocation(line: 2035, column: 5, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 2035, column: 5)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 2035, column: 5)
!3297 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 2034, column: 20)
!3298 = !DILocation(line: 2035, column: 5, scope: !3296)
!3299 = !DILocation(line: 2035, column: 5, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 2035, column: 5)
!3301 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 2035, column: 5)
!3302 = !DILocation(line: 2035, column: 5, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 2035, column: 5)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 2035, column: 5)
!3305 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 2035, column: 5)
!3306 = !DILocation(line: 2036, column: 10, scope: !3297)
!3307 = !DILocation(line: 2036, column: 15, scope: !3297)
!3308 = !{!452, !454, i64 224}
!3309 = !DILocation(line: 2037, column: 3, scope: !3297)
!3310 = !DILocation(line: 2038, column: 1, scope: !3283)
!3311 = distinct !DISubprogram(name: "tcp_err", scope: !3, file: !3, line: 2057, type: !3312, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !145, !253}
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "pcb", arg: 1, scope: !3311, file: !3, line: 2057, type: !145)
!3316 = !DILocalVariable(name: "err", arg: 2, scope: !3311, file: !3, line: 2057, type: !253)
!3317 = !DILocation(line: 2057, column: 25, scope: !3311)
!3318 = !DILocation(line: 2057, column: 41, scope: !3311)
!3319 = !DILocation(line: 2060, column: 11, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 2060, column: 7)
!3321 = !DILocation(line: 2060, column: 7, scope: !3311)
!3322 = !DILocation(line: 2061, column: 5, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 2061, column: 5)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 2061, column: 5)
!3325 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 2060, column: 20)
!3326 = !DILocation(line: 2061, column: 5, scope: !3324)
!3327 = !DILocation(line: 2061, column: 5, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 2061, column: 5)
!3329 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 2061, column: 5)
!3330 = !DILocation(line: 2061, column: 5, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 2061, column: 5)
!3332 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 2061, column: 5)
!3333 = distinct !DILexicalBlock(scope: !3328, file: !3, line: 2061, column: 5)
!3334 = !DILocation(line: 2062, column: 10, scope: !3325)
!3335 = !DILocation(line: 2062, column: 15, scope: !3325)
!3336 = !DILocation(line: 2063, column: 3, scope: !3325)
!3337 = !DILocation(line: 2064, column: 1, scope: !3311)
!3338 = distinct !DISubprogram(name: "tcp_accept", scope: !3, file: !3, line: 2076, type: !3339, isLocal: false, isDefinition: true, scopeLine: 2077, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3341)
!3339 = !DISubroutineType(types: !3340)
!3340 = !{null, !145, !136}
!3341 = !{!3342, !3343, !3344}
!3342 = !DILocalVariable(name: "pcb", arg: 1, scope: !3338, file: !3, line: 2076, type: !145)
!3343 = !DILocalVariable(name: "accept", arg: 2, scope: !3338, file: !3, line: 2076, type: !136)
!3344 = !DILocalVariable(name: "lpcb", scope: !3345, file: !3, line: 2080, type: !98)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 2079, column: 48)
!3346 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 2079, column: 7)
!3347 = !DILocation(line: 2076, column: 28, scope: !3338)
!3348 = !DILocation(line: 2076, column: 47, scope: !3338)
!3349 = !DILocation(line: 2079, column: 12, scope: !3346)
!3350 = !DILocation(line: 2079, column: 21, scope: !3346)
!3351 = !DILocation(line: 2079, column: 30, scope: !3346)
!3352 = !DILocation(line: 2079, column: 36, scope: !3346)
!3353 = !DILocation(line: 2079, column: 7, scope: !3338)
!3354 = !DILocation(line: 2080, column: 28, scope: !3345)
!3355 = !DILocation(line: 2081, column: 11, scope: !3345)
!3356 = !DILocation(line: 2081, column: 18, scope: !3345)
!3357 = !DILocation(line: 2082, column: 3, scope: !3345)
!3358 = !DILocation(line: 2083, column: 1, scope: !3338)
!3359 = distinct !DISubprogram(name: "tcp_poll", scope: !3, file: !3, line: 2105, type: !3360, isLocal: false, isDefinition: true, scopeLine: 2106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !145, !248, !91}
!3362 = !{!3363, !3364, !3365}
!3363 = !DILocalVariable(name: "pcb", arg: 1, scope: !3359, file: !3, line: 2105, type: !145)
!3364 = !DILocalVariable(name: "poll", arg: 2, scope: !3359, file: !3, line: 2105, type: !248)
!3365 = !DILocalVariable(name: "interval", arg: 3, scope: !3359, file: !3, line: 2105, type: !91)
!3366 = !DILocation(line: 2105, column: 26, scope: !3359)
!3367 = !DILocation(line: 2105, column: 43, scope: !3359)
!3368 = !DILocation(line: 2105, column: 54, scope: !3359)
!3369 = !DILocation(line: 2109, column: 3, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 2109, column: 3)
!3371 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 2109, column: 3)
!3372 = !DILocation(line: 2109, column: 3, scope: !3371)
!3373 = !DILocation(line: 2109, column: 3, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 2109, column: 3)
!3375 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 2109, column: 3)
!3376 = !DILocation(line: 2109, column: 3, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 2109, column: 3)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 2109, column: 3)
!3379 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 2109, column: 3)
!3380 = !DILocation(line: 2110, column: 3, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 2110, column: 3)
!3382 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 2110, column: 3)
!3383 = !DILocation(line: 2110, column: 3, scope: !3382)
!3384 = !DILocation(line: 2110, column: 3, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 2110, column: 3)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 2110, column: 3)
!3387 = !DILocation(line: 2110, column: 3, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 2110, column: 3)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 2110, column: 3)
!3390 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 2110, column: 3)
!3391 = !DILocation(line: 2113, column: 8, scope: !3359)
!3392 = !DILocation(line: 2113, column: 13, scope: !3359)
!3393 = !DILocation(line: 2117, column: 8, scope: !3359)
!3394 = !DILocation(line: 2117, column: 21, scope: !3359)
!3395 = !DILocation(line: 2118, column: 1, scope: !3359)
!3396 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed", scope: !3, file: !3, line: 2331, type: !3397, isLocal: false, isDefinition: true, scopeLine: 2332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3399)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !267, !267}
!3399 = !{!3400, !3401, !3402}
!3400 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3396, file: !3, line: 2331, type: !267)
!3401 = !DILocalVariable(name: "new_addr", arg: 2, scope: !3396, file: !3, line: 2331, type: !267)
!3402 = !DILocalVariable(name: "lpcb", scope: !3396, file: !3, line: 2333, type: !98)
!3403 = !DILocation(line: 2331, column: 44, scope: !3396)
!3404 = !DILocation(line: 2331, column: 71, scope: !3396)
!3405 = !DILocation(line: 2335, column: 8, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 2335, column: 7)
!3407 = !DILocation(line: 2335, column: 7, scope: !3396)
!3408 = !DILocation(line: 2336, column: 49, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 2335, column: 33)
!3410 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3411, file: !3, line: 2299, type: !267)
!3411 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed_pcblist", scope: !3, file: !3, line: 2299, type: !3412, isLocal: true, isDefinition: true, scopeLine: 2300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{null, !267, !145}
!3414 = !{!3410, !3415, !3416, !3417}
!3415 = !DILocalVariable(name: "pcb_list", arg: 2, scope: !3411, file: !3, line: 2299, type: !145)
!3416 = !DILocalVariable(name: "pcb", scope: !3411, file: !3, line: 2301, type: !145)
!3417 = !DILocalVariable(name: "next", scope: !3418, file: !3, line: 2315, type: !145)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 2313, column: 10)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 2308, column: 9)
!3420 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 2306, column: 23)
!3421 = !DILocation(line: 2299, column: 52, scope: !3411, inlinedAt: !3422)
!3422 = distinct !DILocation(line: 2336, column: 5, scope: !3409)
!3423 = !DILocation(line: 2299, column: 78, scope: !3411, inlinedAt: !3422)
!3424 = !DILocation(line: 2301, column: 19, scope: !3411, inlinedAt: !3422)
!3425 = !DILocation(line: 2306, column: 14, scope: !3411, inlinedAt: !3422)
!3426 = !DILocation(line: 2306, column: 3, scope: !3411, inlinedAt: !3422)
!3427 = !DILocation(line: 2308, column: 9, scope: !3419, inlinedAt: !3422)
!3428 = !DILocation(line: 2308, column: 9, scope: !3420, inlinedAt: !3422)
!3429 = !DILocation(line: 2315, column: 35, scope: !3418, inlinedAt: !3422)
!3430 = !DILocation(line: 2315, column: 23, scope: !3418, inlinedAt: !3422)
!3431 = !DILocation(line: 638, column: 27, scope: !1669, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 2317, column: 7, scope: !3418, inlinedAt: !3422)
!3433 = !DILocation(line: 640, column: 3, scope: !1669, inlinedAt: !3432)
!3434 = !DILocation(line: 2319, column: 5, scope: !3418, inlinedAt: !3422)
!3435 = !DILocation(line: 2320, column: 18, scope: !3436, inlinedAt: !3422)
!3436 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 2319, column: 12)
!3437 = !DILocation(line: 0, scope: !3418, inlinedAt: !3422)
!3438 = distinct !{!3438, !3439, !3440}
!3439 = !DILocation(line: 2306, column: 3, scope: !3411)
!3440 = !DILocation(line: 2322, column: 3, scope: !3411)
!3441 = !DILocation(line: 2337, column: 49, scope: !3409)
!3442 = !DILocation(line: 2299, column: 52, scope: !3411, inlinedAt: !3443)
!3443 = distinct !DILocation(line: 2337, column: 5, scope: !3409)
!3444 = !DILocation(line: 2299, column: 78, scope: !3411, inlinedAt: !3443)
!3445 = !DILocation(line: 2301, column: 19, scope: !3411, inlinedAt: !3443)
!3446 = !DILocation(line: 2306, column: 14, scope: !3411, inlinedAt: !3443)
!3447 = !DILocation(line: 2306, column: 3, scope: !3411, inlinedAt: !3443)
!3448 = !DILocation(line: 2308, column: 9, scope: !3419, inlinedAt: !3443)
!3449 = !DILocation(line: 2308, column: 9, scope: !3420, inlinedAt: !3443)
!3450 = !DILocation(line: 2315, column: 35, scope: !3418, inlinedAt: !3443)
!3451 = !DILocation(line: 2315, column: 23, scope: !3418, inlinedAt: !3443)
!3452 = !DILocation(line: 638, column: 27, scope: !1669, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 2317, column: 7, scope: !3418, inlinedAt: !3443)
!3454 = !DILocation(line: 640, column: 3, scope: !1669, inlinedAt: !3453)
!3455 = !DILocation(line: 2319, column: 5, scope: !3418, inlinedAt: !3443)
!3456 = !DILocation(line: 2320, column: 18, scope: !3436, inlinedAt: !3443)
!3457 = !DILocation(line: 0, scope: !3418, inlinedAt: !3443)
!3458 = !DILocation(line: 2339, column: 10, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 2339, column: 9)
!3460 = !DILocation(line: 2339, column: 9, scope: !3409)
!3461 = !DILocation(line: 2333, column: 26, scope: !3396)
!3462 = !DILocation(line: 0, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 2341, column: 7)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 2341, column: 7)
!3465 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 2339, column: 35)
!3466 = !DILocation(line: 2341, column: 53, scope: !3463)
!3467 = !DILocation(line: 2341, column: 7, scope: !3464)
!3468 = !DILocation(line: 2343, column: 13, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 2343, column: 13)
!3470 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 2341, column: 81)
!3471 = !DILocation(line: 2343, column: 13, scope: !3470)
!3472 = !DILocation(line: 2346, column: 11, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 2346, column: 11)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 2346, column: 11)
!3475 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 2343, column: 53)
!3476 = !DILocation(line: 2346, column: 11, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 2346, column: 11)
!3478 = !DILocation(line: 2346, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !3, line: 2346, column: 11)
!3480 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 2346, column: 11)
!3481 = !DILocation(line: 2346, column: 11, scope: !3474)
!3482 = !DILocation(line: 2346, column: 11, scope: !3480)
!3483 = !DILocation(line: 2346, column: 11, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 2346, column: 11)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 2346, column: 11)
!3486 = !DILocation(line: 2341, column: 75, scope: !3463)
!3487 = distinct !{!3487, !3467, !3488}
!3488 = !DILocation(line: 2348, column: 7, scope: !3464)
!3489 = !DILocation(line: 2351, column: 1, scope: !3396)
!3490 = distinct !DISubprogram(name: "tcp_debug_state_str", scope: !3, file: !3, line: 2354, type: !3491, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!309, !5}
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "s", arg: 1, scope: !3490, file: !3, line: 2354, type: !5)
!3495 = !DILocation(line: 2354, column: 36, scope: !3490)
!3496 = !DILocation(line: 2356, column: 10, scope: !3490)
!3497 = !DILocation(line: 2356, column: 3, scope: !3490)
!3498 = distinct !DISubprogram(name: "tcp_tcp_get_tcp_addrinfo", scope: !3, file: !3, line: 2360, type: !3499, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3503)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!140, !145, !50, !3501, !3502}
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!3503 = !{!3504, !3505, !3506, !3507}
!3504 = !DILocalVariable(name: "pcb", arg: 1, scope: !3498, file: !3, line: 2360, type: !145)
!3505 = !DILocalVariable(name: "local", arg: 2, scope: !3498, file: !3, line: 2360, type: !50)
!3506 = !DILocalVariable(name: "addr", arg: 3, scope: !3498, file: !3, line: 2360, type: !3501)
!3507 = !DILocalVariable(name: "port", arg: 4, scope: !3498, file: !3, line: 2360, type: !3502)
!3508 = !DILocation(line: 2360, column: 42, scope: !3498)
!3509 = !DILocation(line: 2360, column: 51, scope: !3498)
!3510 = !DILocation(line: 2360, column: 69, scope: !3498)
!3511 = !DILocation(line: 2360, column: 82, scope: !3498)
!3512 = !DILocation(line: 2362, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 2362, column: 7)
!3514 = !DILocation(line: 2362, column: 7, scope: !3498)
!3515 = !DILocation(line: 2363, column: 9, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2363, column: 9)
!3517 = distinct !DILexicalBlock(scope: !3513, file: !3, line: 2362, column: 12)
!3518 = !DILocation(line: 0, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 2371, column: 11)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 2370, column: 12)
!3521 = !DILocation(line: 2363, column: 9, scope: !3517)
!3522 = !DILocation(line: 2364, column: 11, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 2363, column: 16)
!3524 = !DILocation(line: 2365, column: 22, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 2364, column: 17)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 2364, column: 11)
!3527 = !{i64 0, i64 16, !479, i64 16, i64 1, !479, i64 0, i64 4, !411, i64 20, i64 1, !479}
!3528 = !DILocation(line: 2366, column: 7, scope: !3525)
!3529 = !DILocation(line: 2367, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 2367, column: 11)
!3531 = !DILocation(line: 2367, column: 11, scope: !3523)
!3532 = !DILocation(line: 2368, column: 22, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 2367, column: 17)
!3534 = !DILocation(line: 2368, column: 15, scope: !3533)
!3535 = !DILocation(line: 2369, column: 7, scope: !3533)
!3536 = !DILocation(line: 2371, column: 11, scope: !3520)
!3537 = !DILocation(line: 2372, column: 22, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 2371, column: 17)
!3539 = !DILocation(line: 2373, column: 7, scope: !3538)
!3540 = !DILocation(line: 2374, column: 11, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 2374, column: 11)
!3542 = !DILocation(line: 2374, column: 11, scope: !3520)
!3543 = !DILocation(line: 2375, column: 22, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 2374, column: 17)
!3545 = !DILocation(line: 2375, column: 15, scope: !3544)
!3546 = !DILocation(line: 2376, column: 7, scope: !3544)
!3547 = !DILocation(line: 0, scope: !3498)
!3548 = !DILocation(line: 2381, column: 1, scope: !3498)
!3549 = !DILocation(line: 65, column: 11, scope: !398)
!3550 = !DILocation(line: 62, column: 16, scope: !398)
!3551 = !DILocation(line: 66, column: 8, scope: !398)
!3552 = !DILocation(line: 63, column: 8, scope: !398)
!3553 = !DILocation(line: 67, column: 2, scope: !398)
!3554 = !DILocation(line: 69, column: 2, scope: !398)
