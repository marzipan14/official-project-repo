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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @tcp_init() local_unnamed_addr #0 !dbg !359 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*, !dbg !363
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #6, !dbg !363
  %3 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !382, !srcloc !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  %4 = icmp ult i64 %3, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !393
  br i1 %4, label %11, label %5, !dbg !393

; <label>:5:                                      ; preds = %0
  %6 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !394, !srcloc !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %7 = icmp ugt i64 %6, ptrtoint ([0 x i8]* @_end to i64), !dbg !393
  br i1 %7, label %11, label %8, !dbg !398

; <label>:8:                                      ; preds = %5
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !399
  %10 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !408
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #7, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store i32 %10, i32* %1, align 4, !dbg !413, !tbaa !414
  br label %20, !dbg !413

; <label>:11:                                     ; preds = %5, %0
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !418, !srcloc !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %13 = and i64 %12, -65536, !dbg !430
  %14 = or i64 %13, 4097, !dbg !430
  %15 = add nsw i64 %14, -1, !dbg !430
  %16 = inttoptr i64 %15 to i32*, !dbg !431
  %17 = load i32, i32* %16, align 4096, !dbg !432, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  %18 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %17, i32 ()* nonnull @uk_swrand_randr) #6, !dbg !434, !srcloc !435
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %1, i64 %18) #6, !dbg !436, !srcloc !439
  %19 = load i32, i32* %1, align 4, !dbg !440, !tbaa !414
  br label %20

; <label>:20:                                     ; preds = %8, %11
  %21 = phi i32 [ %19, %11 ], [ %10, %8 ], !dbg !440
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #6, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  %22 = trunc i32 %21 to i16, !dbg !443
  %23 = or i16 %22, -16384, !dbg !443
  store i16 %23, i16* @tcp_port, align 2, !dbg !444, !tbaa !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_free(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !448 {
  %2 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !454
  %3 = load i32, i32* %2, align 8, !dbg !454, !tbaa !457
  %4 = icmp eq i32 %3, 1, !dbg !454
  br i1 %4, label %5, label %6, !dbg !461

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !462
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !465
  tail call void @ukplat_terminate(i32 3) #9, !dbg !465
  unreachable, !dbg !465

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !469
  tail call void @memp_free(i32 1, i8* %7) #7, !dbg !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  ret void, !dbg !471
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #2 !dbg !305 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !473
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !475
  call void @llvm.va_start(i8* nonnull %3), !dbg !475
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.44, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !476
  call void @llvm.va_end(i8* nonnull %3), !dbg !479
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  ret void, !dbg !480
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_tmr() local_unnamed_addr #0 !dbg !481 {
  tail call void @tcp_fasttmr() #8, !dbg !482
  %1 = load i8, i8* @tcp_timer, align 1, !dbg !483, !tbaa !485
  %2 = add i8 %1, 1, !dbg !483
  store i8 %2, i8* @tcp_timer, align 1, !dbg !483, !tbaa !485
  %3 = and i8 %2, 1, !dbg !486
  %4 = icmp eq i8 %3, 0, !dbg !486
  br i1 %4, label %6, label %5, !dbg !487

; <label>:5:                                      ; preds = %0
  tail call void @tcp_slowtmr() #8, !dbg !488
  br label %6, !dbg !490

; <label>:6:                                      ; preds = %0, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  ret void, !dbg !491
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_fasttmr() local_unnamed_addr #0 !dbg !492 {
  %1 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !499, !tbaa !485
  %2 = add i8 %1, 1, !dbg !499
  store i8 %2, i8* @tcp_timer_ctr, align 1, !dbg !499, !tbaa !485
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !500, !tbaa !501
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !503
  br i1 %4, label %49, label %8, !dbg !504

; <label>:5:                                      ; preds = %37
  %6 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !500, !tbaa !501
  %7 = icmp eq %struct.tcp_pcb* %6, null, !dbg !503
  br i1 %7, label %49, label %47, !dbg !504

; <label>:8:                                      ; preds = %0, %47
  %9 = phi %struct.tcp_pcb* [ %48, %47 ], [ %3, %0 ]
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 15, !dbg !505
  %11 = load i8, i8* %10, align 2, !dbg !505, !tbaa !506
  %12 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !507, !tbaa !485
  %13 = icmp eq i8 %11, %12, !dbg !508
  br i1 %13, label %41, label %14, !dbg !509

; <label>:14:                                     ; preds = %8
  store i8 %12, i8* %10, align 2, !dbg !510, !tbaa !506
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 12, !dbg !511
  %16 = load i16, i16* %15, align 2, !dbg !511, !tbaa !513
  %17 = and i16 %16, 1, !dbg !514
  %18 = icmp eq i16 %17, 0, !dbg !514
  br i1 %18, label %24, label %19, !dbg !515

; <label>:19:                                     ; preds = %14
  %20 = or i16 %16, 2, !dbg !516
  store i16 %20, i16* %15, align 2, !dbg !516, !tbaa !513
  %21 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %9) #7, !dbg !519
  %22 = load i16, i16* %15, align 2, !dbg !520, !tbaa !513
  %23 = and i16 %22, -4, !dbg !520
  store i16 %23, i16* %15, align 2, !dbg !520, !tbaa !513
  br label %24, !dbg !522

; <label>:24:                                     ; preds = %14, %19
  %25 = phi i16 [ %16, %14 ], [ %23, %19 ], !dbg !523
  %26 = and i16 %25, 8, !dbg !525
  %27 = icmp eq i16 %26, 0, !dbg !525
  br i1 %27, label %31, label %28, !dbg !526

; <label>:28:                                     ; preds = %24
  %29 = and i16 %25, -9, !dbg !527
  store i16 %29, i16* %15, align 2, !dbg !527, !tbaa !513
  %30 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %9) #8, !dbg !530
  br label %31, !dbg !531

; <label>:31:                                     ; preds = %24, %28
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 6, !dbg !532
  %33 = load %struct.tcp_pcb*, %struct.tcp_pcb** %32, align 8, !dbg !532, !tbaa !533
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 47, !dbg !535
  %35 = load %struct.pbuf*, %struct.pbuf** %34, align 8, !dbg !535, !tbaa !537
  %36 = icmp eq %struct.pbuf* %35, null, !dbg !538
  br i1 %36, label %44, label %37, !dbg !539

; <label>:37:                                     ; preds = %31
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !540, !tbaa !485
  %38 = tail call signext i8 @tcp_process_refused_data(%struct.tcp_pcb* nonnull %9) #8, !dbg !542
  %39 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !543, !tbaa !485
  %40 = icmp eq i8 %39, 0, !dbg !543
  br i1 %40, label %44, label %5, !dbg !545

; <label>:41:                                     ; preds = %8
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %9, i64 0, i32 6, !dbg !546
  %43 = load %struct.tcp_pcb*, %struct.tcp_pcb** %42, align 8, !dbg !546, !tbaa !533
  br label %44

; <label>:44:                                     ; preds = %37, %31, %41
  %45 = phi %struct.tcp_pcb* [ %43, %41 ], [ %33, %31 ], [ %33, %37 ], !dbg !548
  %46 = icmp eq %struct.tcp_pcb* %45, null, !dbg !503
  br i1 %46, label %49, label %47, !dbg !504

; <label>:47:                                     ; preds = %44, %5
  %48 = phi %struct.tcp_pcb* [ %45, %44 ], [ %6, %5 ]
  br label %8, !dbg !502, !llvm.loop !549

; <label>:49:                                     ; preds = %5, %44, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  ret void, !dbg !551
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_slowtmr() local_unnamed_addr #0 !dbg !552 {
  %1 = load i32, i32* @tcp_ticks, align 4, !dbg !592, !tbaa !414
  %2 = add i32 %1, 1, !dbg !592
  store i32 %2, i32* @tcp_ticks, align 4, !dbg !592, !tbaa !414
  %3 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !593, !tbaa !485
  %4 = add i8 %3, 1, !dbg !593
  store i8 %4, i8* @tcp_timer_ctr, align 1, !dbg !593, !tbaa !485
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !595, !tbaa !501
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !597
  br i1 %6, label %321, label %10, !dbg !598

; <label>:7:                                      ; preds = %295, %311
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !595, !tbaa !501
  %9 = icmp eq %struct.tcp_pcb* %8, null, !dbg !597
  br i1 %9, label %321, label %30, !dbg !598

; <label>:10:                                     ; preds = %0, %30
  %11 = phi %struct.tcp_pcb* [ %31, %30 ], [ %5, %0 ]
  %12 = phi %struct.tcp_pcb* [ %32, %30 ], [ null, %0 ]
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 8, !dbg !599
  %14 = load i32, i32* %13, align 8, !dbg !599, !tbaa !457
  switch i32 %14, label %18 [
    i32 0, label %15
    i32 1, label %16
    i32 10, label %17
  ], !dbg !602

; <label>:15:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0)) #8, !dbg !603
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !606
  tail call void @ukplat_terminate(i32 3) #9, !dbg !606
  unreachable, !dbg !606

; <label>:16:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !610
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !615
  tail call void @ukplat_terminate(i32 3) #9, !dbg !615
  unreachable, !dbg !615

; <label>:17:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !619
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !624
  tail call void @ukplat_terminate(i32 3) #9, !dbg !624
  unreachable, !dbg !624

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 15, !dbg !628
  %20 = load i8, i8* %19, align 2, !dbg !628, !tbaa !506
  %21 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !630, !tbaa !485
  %22 = icmp eq i8 %20, %21, !dbg !631
  br i1 %22, label %23, label %33, !dbg !632

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !633
  %25 = load %struct.tcp_pcb*, %struct.tcp_pcb** %24, align 8, !dbg !633, !tbaa !533
  br label %26, !dbg !635

; <label>:26:                                     ; preds = %292, %295, %317, %319, %298, %23
  %27 = phi %struct.tcp_pcb* [ %11, %23 ], [ %12, %295 ], [ %11, %319 ], [ %11, %317 ], [ %11, %298 ], [ %12, %292 ]
  %28 = phi %struct.tcp_pcb* [ %25, %23 ], [ %288, %295 ], [ %300, %319 ], [ %300, %317 ], [ %300, %298 ], [ %288, %292 ]
  %29 = icmp eq %struct.tcp_pcb* %28, null, !dbg !597
  br i1 %29, label %321, label %30, !dbg !598

; <label>:30:                                     ; preds = %26, %7
  %31 = phi %struct.tcp_pcb* [ %28, %26 ], [ %8, %7 ]
  %32 = phi %struct.tcp_pcb* [ %27, %26 ], [ null, %7 ]
  br label %10, !dbg !596, !llvm.loop !636

; <label>:33:                                     ; preds = %18
  store i8 %21, i8* %19, align 2, !dbg !638, !tbaa !506
  %34 = icmp eq i32 %14, 2, !dbg !641
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 28
  %36 = load i8, i8* %35, align 2, !dbg !642, !tbaa !643
  br i1 %34, label %37, label %39, !dbg !644

; <label>:37:                                     ; preds = %33
  %38 = icmp ugt i8 %36, 5, !dbg !645
  br i1 %38, label %154, label %41, !dbg !646

; <label>:39:                                     ; preds = %33
  %40 = icmp ugt i8 %36, 11, !dbg !647
  br i1 %40, label %154, label %41, !dbg !648

; <label>:41:                                     ; preds = %37, %39
  %42 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 56, !dbg !649
  %43 = load i8, i8* %42, align 1, !dbg !649, !tbaa !650
  %44 = zext i8 %43 to i64, !dbg !651
  %45 = icmp eq i8 %43, 0, !dbg !652
  br i1 %45, label %91, label %46, !dbg !653

; <label>:46:                                     ; preds = %41
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !654
  %48 = load %struct.tcp_seg*, %struct.tcp_seg** %47, align 8, !dbg !654, !tbaa !657
  %49 = icmp eq %struct.tcp_seg* %48, null, !dbg !654
  br i1 %49, label %51, label %50, !dbg !658

; <label>:50:                                     ; preds = %46
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0)) #8, !dbg !659
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !662
  tail call void @ukplat_terminate(i32 3) #9, !dbg !662
  unreachable, !dbg !662

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !666
  %53 = load %struct.tcp_seg*, %struct.tcp_seg** %52, align 8, !dbg !666, !tbaa !669
  %54 = icmp eq %struct.tcp_seg* %53, null, !dbg !666
  br i1 %54, label %55, label %56, !dbg !670

; <label>:55:                                     ; preds = %51
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !671
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !674
  tail call void @ukplat_terminate(i32 3) #9, !dbg !674
  unreachable, !dbg !674

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 57, !dbg !678
  %58 = load i8, i8* %57, align 2, !dbg !678, !tbaa !679
  %59 = icmp ugt i8 %58, 11, !dbg !680
  br i1 %59, label %154, label %60, !dbg !681

; <label>:60:                                     ; preds = %56
  %61 = add nsw i64 %44, -1, !dbg !682
  %62 = getelementptr inbounds [7 x i8], [7 x i8]* @tcp_persist_backoff, i64 0, i64 %61, !dbg !683
  %63 = load i8, i8* %62, align 1, !dbg !683, !tbaa !485
  %64 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 55, !dbg !685
  %65 = load i8, i8* %64, align 4, !dbg !685, !tbaa !687
  %66 = icmp ult i8 %65, %63, !dbg !688
  br i1 %66, label %67, label %69, !dbg !689

; <label>:67:                                     ; preds = %60
  %68 = add i8 %65, 1, !dbg !690
  store i8 %68, i8* %64, align 4, !dbg !690, !tbaa !687
  br label %69, !dbg !692

; <label>:69:                                     ; preds = %67, %60
  %70 = phi i8 [ %68, %67 ], [ %65, %60 ], !dbg !693
  %71 = icmp ult i8 %70, %63, !dbg !694
  br i1 %71, label %154, label %72, !dbg !695

; <label>:72:                                     ; preds = %69
  %73 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !697
  %74 = load i32, i32* %73, align 8, !dbg !697, !tbaa !699
  %75 = icmp eq i32 %74, 0, !dbg !700
  br i1 %75, label %76, label %79, !dbg !701

; <label>:76:                                     ; preds = %72
  %77 = tail call signext i8 @tcp_zero_window_probe(%struct.tcp_pcb* nonnull %11) #7, !dbg !702
  %78 = icmp eq i8 %77, 0, !dbg !705
  br i1 %78, label %86, label %154, !dbg !706

; <label>:79:                                     ; preds = %72
  %80 = trunc i32 %74 to i16, !dbg !707
  %81 = tail call signext i8 @tcp_split_unsent_seg(%struct.tcp_pcb* nonnull %11, i16 zeroext %80) #7, !dbg !710
  %82 = icmp eq i8 %81, 0, !dbg !711
  br i1 %82, label %83, label %86, !dbg !712

; <label>:83:                                     ; preds = %79
  %84 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #7, !dbg !713
  %85 = icmp eq i8 %84, 0, !dbg !716
  br i1 %85, label %154, label %86, !dbg !706

; <label>:86:                                     ; preds = %83, %76, %79
  store i8 0, i8* %64, align 4, !dbg !717, !tbaa !687
  %87 = load i8, i8* %42, align 1, !dbg !720, !tbaa !650
  %88 = icmp ult i8 %87, 7, !dbg !722
  br i1 %88, label %89, label %154, !dbg !723

; <label>:89:                                     ; preds = %86
  %90 = add i8 %87, 1, !dbg !724
  store i8 %90, i8* %42, align 1, !dbg !724, !tbaa !650
  br label %154, !dbg !726

; <label>:91:                                     ; preds = %41
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 21, !dbg !727
  %93 = load i16, i16* %92, align 4, !dbg !727, !tbaa !729
  %94 = icmp slt i16 %93, 0, !dbg !730
  %95 = icmp eq i16 %93, 32767, !dbg !731
  %96 = or i1 %94, %95, !dbg !732
  br i1 %96, label %99, label %97, !dbg !732

; <label>:97:                                     ; preds = %91
  %98 = add i16 %93, 1, !dbg !733
  store i16 %98, i16* %92, align 4, !dbg !733, !tbaa !729
  br label %99, !dbg !735

; <label>:99:                                     ; preds = %91, %97
  %100 = phi i16 [ %93, %91 ], [ %98, %97 ], !dbg !736
  %101 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !737
  %102 = load i16, i16* %101, align 4, !dbg !737, !tbaa !738
  %103 = icmp slt i16 %100, %102, !dbg !739
  br i1 %103, label %154, label %104, !dbg !740

; <label>:104:                                    ; preds = %99
  %105 = tail call signext i8 @tcp_rexmit_rto_prepare(%struct.tcp_pcb* nonnull %11) #7, !dbg !741
  %106 = icmp eq i8 %105, 0, !dbg !742
  br i1 %106, label %115, label %107, !dbg !743

; <label>:107:                                    ; preds = %104
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 45, !dbg !744
  %109 = load %struct.tcp_seg*, %struct.tcp_seg** %108, align 8, !dbg !744, !tbaa !657
  %110 = icmp eq %struct.tcp_seg* %109, null, !dbg !745
  br i1 %110, label %111, label %154, !dbg !746

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 44, !dbg !747
  %113 = load %struct.tcp_seg*, %struct.tcp_seg** %112, align 8, !dbg !747, !tbaa !669
  %114 = icmp eq %struct.tcp_seg* %113, null, !dbg !748
  br i1 %114, label %154, label %115, !dbg !749

; <label>:115:                                    ; preds = %111, %104
  %116 = load i32, i32* %13, align 8, !dbg !750, !tbaa !457
  %117 = icmp eq i32 %116, 2, !dbg !751
  br i1 %117, label %138, label %118, !dbg !752

; <label>:118:                                    ; preds = %115
  %119 = load i8, i8* %35, align 2, !dbg !753, !tbaa !643
  %120 = icmp ult i8 %119, 12, !dbg !753
  %121 = select i1 %120, i8 %119, i8 12, !dbg !753
  %122 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 25, !dbg !755
  %123 = load i16, i16* %122, align 8, !dbg !755, !tbaa !756
  %124 = ashr i16 %123, 3, !dbg !757
  %125 = sext i16 %124 to i32, !dbg !757
  %126 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 26, !dbg !758
  %127 = load i16, i16* %126, align 2, !dbg !758, !tbaa !759
  %128 = sext i16 %127 to i32, !dbg !760
  %129 = add nsw i32 %125, %128, !dbg !761
  %130 = zext i8 %121 to i64, !dbg !762
  %131 = getelementptr inbounds [13 x i8], [13 x i8]* @tcp_backoff, i64 0, i64 %130, !dbg !762
  %132 = load i8, i8* %131, align 1, !dbg !762, !tbaa !485
  %133 = zext i8 %132 to i32, !dbg !762
  %134 = shl i32 %129, %133, !dbg !763
  %135 = icmp slt i32 %134, 32767, !dbg !765
  %136 = select i1 %135, i32 %134, i32 32767, !dbg !765
  %137 = trunc i32 %136 to i16, !dbg !766
  store i16 %137, i16* %101, align 4, !dbg !767, !tbaa !738
  br label %138, !dbg !768

; <label>:138:                                    ; preds = %115, %118
  store i16 0, i16* %92, align 4, !dbg !769, !tbaa !729
  %139 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 31, !dbg !770
  %140 = load i32, i32* %139, align 4, !dbg !770, !tbaa !771
  %141 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 38, !dbg !770
  %142 = load i32, i32* %141, align 8, !dbg !770, !tbaa !699
  %143 = icmp ult i32 %140, %142, !dbg !770
  %144 = select i1 %143, i32 %140, i32 %142, !dbg !770
  %145 = lshr i32 %144, 1, !dbg !773
  %146 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 32, !dbg !774
  %147 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 22, !dbg !775
  %148 = load i16, i16* %147, align 2, !dbg !775, !tbaa !777
  %149 = zext i16 %148 to i32, !dbg !778
  %150 = shl nuw nsw i32 %149, 1, !dbg !779
  %151 = icmp ult i32 %145, %150, !dbg !780
  %152 = select i1 %151, i32 %150, i32 %145, !dbg !781
  store i32 %152, i32* %146, align 8, !dbg !782
  store i32 %149, i32* %139, align 4, !dbg !784, !tbaa !771
  %153 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 43, !dbg !785
  store i32 0, i32* %153, align 8, !dbg !786, !tbaa !787
  tail call void @tcp_rexmit_rto_commit(%struct.tcp_pcb* nonnull %11) #7, !dbg !788
  br label %154, !dbg !789

; <label>:154:                                    ; preds = %83, %76, %69, %86, %89, %56, %39, %37, %111, %99, %138, %107
  %155 = phi i8 [ 0, %138 ], [ 0, %111 ], [ 0, %107 ], [ 0, %99 ], [ 1, %37 ], [ 1, %39 ], [ 1, %56 ], [ 0, %83 ], [ 0, %89 ], [ 0, %86 ], [ 0, %69 ], [ 0, %76 ], !dbg !790
  %156 = load i32, i32* %13, align 8, !dbg !791, !tbaa !457
  %157 = icmp eq i32 %156, 6, !dbg !793
  br i1 %157, label %158, label %171, !dbg !794

; <label>:158:                                    ; preds = %154
  %159 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 12, !dbg !795
  %160 = load i16, i16* %159, align 2, !dbg !795, !tbaa !513
  %161 = and i16 %160, 16, !dbg !798
  %162 = icmp eq i16 %161, 0, !dbg !798
  br i1 %162, label %171, label %163, !dbg !799

; <label>:163:                                    ; preds = %158
  %164 = load i32, i32* @tcp_ticks, align 4, !dbg !800, !tbaa !414
  %165 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !803
  %166 = load i32, i32* %165, align 8, !dbg !803, !tbaa !804
  %167 = sub i32 %164, %166, !dbg !805
  %168 = icmp ugt i32 %167, 40, !dbg !806
  %169 = zext i1 %168 to i8, !dbg !807
  %170 = add nuw nsw i8 %155, %169, !dbg !807
  br label %171, !dbg !807

; <label>:171:                                    ; preds = %163, %158, %154
  %172 = phi i8 [ %155, %158 ], [ %155, %154 ], [ %170, %163 ], !dbg !808
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 3, !dbg !810
  %174 = load i8, i8* %173, align 1, !dbg !810, !tbaa !812
  %175 = and i8 %174, 8, !dbg !810
  %176 = icmp eq i8 %175, 0, !dbg !810
  br i1 %176, label %206, label %177, !dbg !813

; <label>:177:                                    ; preds = %171
  switch i32 %156, label %206 [
    i32 4, label %178
    i32 7, label %178
  ], !dbg !814

; <label>:178:                                    ; preds = %177, %177
  %179 = load i32, i32* @tcp_ticks, align 4, !dbg !815, !tbaa !414
  %180 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !818
  %181 = load i32, i32* %180, align 8, !dbg !818, !tbaa !804
  %182 = sub i32 %179, %181, !dbg !819
  %183 = zext i32 %182 to i64, !dbg !820
  %184 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 54, !dbg !821
  %185 = load i32, i32* %184, align 8, !dbg !821, !tbaa !822
  %186 = zext i32 %185 to i64, !dbg !823
  %187 = add nuw nsw i64 %186, 675000, !dbg !824
  %188 = udiv i64 %187, 500, !dbg !825
  %189 = icmp ult i64 %188, %183, !dbg !826
  br i1 %189, label %190, label %192, !dbg !827

; <label>:190:                                    ; preds = %178
  %191 = add nsw i8 %172, 1, !dbg !828
  br label %206, !dbg !830

; <label>:192:                                    ; preds = %178
  %193 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 58, !dbg !831
  %194 = load i8, i8* %193, align 1, !dbg !831, !tbaa !833
  %195 = zext i8 %194 to i64, !dbg !834
  %196 = mul nuw nsw i64 %195, 75000, !dbg !835
  %197 = add nuw nsw i64 %196, %186, !dbg !836
  %198 = udiv i64 %197, 500, !dbg !837
  %199 = icmp ult i64 %198, %183, !dbg !838
  br i1 %199, label %200, label %206, !dbg !839

; <label>:200:                                    ; preds = %192
  %201 = tail call signext i8 @tcp_keepalive(%struct.tcp_pcb* nonnull %11) #7, !dbg !840
  %202 = icmp eq i8 %201, 0, !dbg !842
  br i1 %202, label %203, label %206, !dbg !844

; <label>:203:                                    ; preds = %200
  %204 = load i8, i8* %193, align 1, !dbg !845, !tbaa !833
  %205 = add i8 %204, 1, !dbg !845
  store i8 %205, i8* %193, align 1, !dbg !845, !tbaa !833
  br label %206, !dbg !847

; <label>:206:                                    ; preds = %177, %171, %190, %200, %203, %192
  %207 = phi i8 [ 1, %190 ], [ 0, %203 ], [ 0, %200 ], [ 0, %192 ], [ 0, %171 ], [ 0, %177 ], !dbg !790
  %208 = phi i8 [ %191, %190 ], [ %172, %203 ], [ %172, %200 ], [ %172, %192 ], [ %172, %171 ], [ %172, %177 ], !dbg !848
  %209 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 46, !dbg !850
  %210 = load %struct.tcp_seg*, %struct.tcp_seg** %209, align 8, !dbg !850, !tbaa !852
  %211 = icmp eq %struct.tcp_seg* %210, null, !dbg !853
  br i1 %211, label %235, label %212, !dbg !854

; <label>:212:                                    ; preds = %206
  %213 = load i32, i32* @tcp_ticks, align 4, !dbg !855, !tbaa !414
  %214 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !856
  %215 = load i32, i32* %214, align 8, !dbg !856, !tbaa !804
  %216 = sub i32 %213, %215, !dbg !857
  %217 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 27, !dbg !858
  %218 = load i16, i16* %217, align 4, !dbg !858, !tbaa !738
  %219 = sext i16 %218 to i32, !dbg !859
  %220 = mul nsw i32 %219, 6, !dbg !860
  %221 = icmp ult i32 %216, %220, !dbg !861
  br i1 %221, label %235, label %222, !dbg !862

; <label>:222:                                    ; preds = %212, %231
  %223 = phi %struct.tcp_seg* [ %225, %231 ], [ %210, %212 ]
  %224 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %223, i64 0, i32 0, !dbg !879
  %225 = load %struct.tcp_seg*, %struct.tcp_seg** %224, align 8, !dbg !879, !tbaa !880
  %226 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %223, i64 0, i32 1, !dbg !888
  %227 = load %struct.pbuf*, %struct.pbuf** %226, align 8, !dbg !888, !tbaa !892
  %228 = icmp eq %struct.pbuf* %227, null, !dbg !893
  br i1 %228, label %231, label %229, !dbg !894

; <label>:229:                                    ; preds = %222
  %230 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %227) #7, !dbg !895
  br label %231, !dbg !897

; <label>:231:                                    ; preds = %229, %222
  %232 = bitcast %struct.tcp_seg* %223 to i8*, !dbg !898
  tail call void @memp_free(i32 3, i8* %232) #7, !dbg !899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !900
  %233 = icmp eq %struct.tcp_seg* %225, null, !dbg !901
  br i1 %233, label %234, label %222, !dbg !902, !llvm.loop !903

; <label>:234:                                    ; preds = %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  store %struct.tcp_seg* null, %struct.tcp_seg** %209, align 8, !dbg !907, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br label %235, !dbg !909

; <label>:235:                                    ; preds = %212, %206, %234
  %236 = load i32, i32* %13, align 8, !dbg !910, !tbaa !457
  switch i32 %236, label %247 [
    i32 3, label %238
    i32 9, label %237
  ], !dbg !912

; <label>:237:                                    ; preds = %235
  br label %238, !dbg !913

; <label>:238:                                    ; preds = %235, %237
  %239 = phi i32 [ 240, %237 ], [ 40, %235 ]
  %240 = load i32, i32* @tcp_ticks, align 4, !dbg !916, !tbaa !414
  %241 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 16, !dbg !916
  %242 = load i32, i32* %241, align 8, !dbg !916, !tbaa !804
  %243 = sub i32 %240, %242, !dbg !916
  %244 = icmp ugt i32 %243, %239, !dbg !916
  %245 = zext i1 %244 to i8, !dbg !918
  %246 = add i8 %208, %245, !dbg !918
  br label %247, !dbg !919

; <label>:247:                                    ; preds = %238, %235
  %248 = phi i8 [ %208, %235 ], [ %246, %238 ], !dbg !920
  %249 = icmp eq i8 %248, 0, !dbg !919
  br i1 %249, label %298, label %250, !dbg !924

; <label>:250:                                    ; preds = %247
  %251 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 53, !dbg !925
  %252 = load void (i8*, i8)*, void (i8*, i8)** %251, align 8, !dbg !925, !tbaa !926
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %11) #8, !dbg !928
  %253 = icmp eq %struct.tcp_pcb* %12, null, !dbg !929
  %254 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !931, !tbaa !501
  br i1 %253, label %264, label %255, !dbg !935

; <label>:255:                                    ; preds = %250
  %256 = icmp eq %struct.tcp_pcb* %11, %254, !dbg !936
  br i1 %256, label %257, label %258, !dbg !937

; <label>:257:                                    ; preds = %255
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !938
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !941
  tail call void @ukplat_terminate(i32 3) #9, !dbg !941
  unreachable, !dbg !941

; <label>:258:                                    ; preds = %255
  %259 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !945
  %260 = bitcast %struct.tcp_pcb** %259 to i64*, !dbg !945
  %261 = load i64, i64* %260, align 8, !dbg !945, !tbaa !533
  %262 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %12, i64 0, i32 6, !dbg !946
  %263 = bitcast %struct.tcp_pcb** %262 to i64*, !dbg !947
  store i64 %261, i64* %263, align 8, !dbg !947, !tbaa !533
  br label %271, !dbg !948

; <label>:264:                                    ; preds = %250
  %265 = icmp eq %struct.tcp_pcb* %254, %11, !dbg !949
  br i1 %265, label %267, label %266, !dbg !953

; <label>:266:                                    ; preds = %264
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0)) #8, !dbg !954
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !957
  tail call void @ukplat_terminate(i32 3) #9, !dbg !957
  unreachable, !dbg !957

; <label>:267:                                    ; preds = %264
  %268 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !961
  %269 = bitcast %struct.tcp_pcb** %268 to i64*, !dbg !961
  %270 = load i64, i64* %269, align 8, !dbg !961, !tbaa !533
  store i64 %270, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !962, !tbaa !501
  br label %271

; <label>:271:                                    ; preds = %267, %258
  %272 = icmp eq i8 %207, 0, !dbg !963
  br i1 %272, label %284, label %273, !dbg !965

; <label>:273:                                    ; preds = %271
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 34, !dbg !966
  %275 = load i32, i32* %274, align 8, !dbg !966, !tbaa !968
  %276 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 17, !dbg !969
  %277 = load i32, i32* %276, align 4, !dbg !969, !tbaa !970
  %278 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 0, !dbg !971
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 1, !dbg !972
  %280 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 10, !dbg !973
  %281 = load i16, i16* %280, align 2, !dbg !973, !tbaa !974
  %282 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 11, !dbg !975
  %283 = load i16, i16* %282, align 8, !dbg !975, !tbaa !976
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %11, i32 %275, i32 %277, %struct.ip_addr* %278, %struct.ip_addr* nonnull %279, i16 zeroext %281, i16 zeroext %283) #7, !dbg !977
  br label %284, !dbg !978

; <label>:284:                                    ; preds = %271, %273
  %285 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !979
  %286 = load i8*, i8** %285, align 8, !dbg !979, !tbaa !980
  %287 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !984
  %288 = load %struct.tcp_pcb*, %struct.tcp_pcb** %287, align 8, !dbg !984, !tbaa !533
  %289 = load i32, i32* %13, align 8, !dbg !987, !tbaa !457
  %290 = icmp eq i32 %289, 1, !dbg !987
  br i1 %290, label %291, label %292, !dbg !988

; <label>:291:                                    ; preds = %284
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !989
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !990
  tail call void @ukplat_terminate(i32 3) #9, !dbg !990
  unreachable, !dbg !990

; <label>:292:                                    ; preds = %284
  %293 = bitcast %struct.tcp_pcb* %11 to i8*, !dbg !991
  tail call void @memp_free(i32 1, i8* %293) #7, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !994, !tbaa !485
  %294 = icmp eq void (i8*, i8)* %252, null, !dbg !995
  br i1 %294, label %26, label %295, !dbg !998

; <label>:295:                                    ; preds = %292
  tail call void %252(i8* %286, i8 signext -13) #7, !dbg !995
  %296 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !999, !tbaa !485
  %297 = icmp eq i8 %296, 0, !dbg !999
  br i1 %297, label %26, label %7

; <label>:298:                                    ; preds = %247
  %299 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 6, !dbg !1001
  %300 = load %struct.tcp_pcb*, %struct.tcp_pcb** %299, align 8, !dbg !1001, !tbaa !533
  %301 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 13, !dbg !1003
  %302 = load i8, i8* %301, align 4, !dbg !1004, !tbaa !1005
  %303 = add i8 %302, 1, !dbg !1004
  store i8 %303, i8* %301, align 4, !dbg !1004, !tbaa !1005
  %304 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 14, !dbg !1006
  %305 = load i8, i8* %304, align 1, !dbg !1006, !tbaa !1008
  %306 = icmp ult i8 %303, %305, !dbg !1009
  br i1 %306, label %26, label %307, !dbg !1010

; <label>:307:                                    ; preds = %298
  store i8 0, i8* %301, align 4, !dbg !1011, !tbaa !1005
  store i8 0, i8* @tcp_active_pcbs_changed, align 1, !dbg !1013, !tbaa !485
  %308 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 52, !dbg !1014
  %309 = load i8 (i8*, %struct.tcp_pcb*)*, i8 (i8*, %struct.tcp_pcb*)** %308, align 8, !dbg !1014, !tbaa !1017
  %310 = icmp eq i8 (i8*, %struct.tcp_pcb*)* %309, null, !dbg !1014
  br i1 %310, label %319, label %311, !dbg !1018

; <label>:311:                                    ; preds = %307
  %312 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %11, i64 0, i32 7, !dbg !1014
  %313 = load i8*, i8** %312, align 8, !dbg !1014, !tbaa !980
  %314 = tail call signext i8 %309(i8* %313, %struct.tcp_pcb* nonnull %11) #7, !dbg !1014
  %315 = load i8, i8* @tcp_active_pcbs_changed, align 1, !dbg !1019, !tbaa !485
  %316 = icmp eq i8 %315, 0, !dbg !1019
  br i1 %316, label %317, label %7, !dbg !1021

; <label>:317:                                    ; preds = %311
  %318 = icmp eq i8 %314, 0, !dbg !1022
  br i1 %318, label %319, label %26, !dbg !1024

; <label>:319:                                    ; preds = %307, %317
  %320 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %11) #7, !dbg !1025
  br label %26, !dbg !1027

; <label>:321:                                    ; preds = %7, %26, %0
  %322 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1028, !tbaa !501
  %323 = icmp eq %struct.tcp_pcb* %322, null, !dbg !1029
  br i1 %323, label %371, label %324, !dbg !1030

; <label>:324:                                    ; preds = %321, %367
  %325 = phi %struct.tcp_pcb* [ %369, %367 ], [ %322, %321 ]
  %326 = phi %struct.tcp_pcb* [ %368, %367 ], [ null, %321 ]
  %327 = bitcast %struct.tcp_pcb* %325 to i8*, !dbg !1031
  %328 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 8, !dbg !1032
  %329 = load i32, i32* %328, align 8, !dbg !1032, !tbaa !457
  %330 = icmp eq i32 %329, 10, !dbg !1032
  br i1 %330, label %332, label %331, !dbg !1035

; <label>:331:                                    ; preds = %324
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0)) #8, !dbg !1036
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1039
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1039
  unreachable, !dbg !1039

; <label>:332:                                    ; preds = %324
  %333 = load i32, i32* @tcp_ticks, align 4, !dbg !1043, !tbaa !414
  %334 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 16, !dbg !1045
  %335 = load i32, i32* %334, align 8, !dbg !1045, !tbaa !804
  %336 = sub i32 %333, %335, !dbg !1046
  %337 = icmp ugt i32 %336, 240, !dbg !1047
  br i1 %337, label %338, label %364, !dbg !1048

; <label>:338:                                    ; preds = %332
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %325) #8, !dbg !1049
  %339 = icmp eq %struct.tcp_pcb* %326, null, !dbg !1050
  %340 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1052, !tbaa !501
  br i1 %339, label %350, label %341, !dbg !1056

; <label>:341:                                    ; preds = %338
  %342 = icmp eq %struct.tcp_pcb* %325, %340, !dbg !1057
  br i1 %342, label %343, label %344, !dbg !1058

; <label>:343:                                    ; preds = %341
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0)) #8, !dbg !1059
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1062
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1062
  unreachable, !dbg !1062

; <label>:344:                                    ; preds = %341
  %345 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1066
  %346 = bitcast %struct.tcp_pcb** %345 to i64*, !dbg !1066
  %347 = load i64, i64* %346, align 8, !dbg !1066, !tbaa !533
  %348 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %326, i64 0, i32 6, !dbg !1067
  %349 = bitcast %struct.tcp_pcb** %348 to i64*, !dbg !1068
  store i64 %347, i64* %349, align 8, !dbg !1068, !tbaa !533
  br label %357, !dbg !1069

; <label>:350:                                    ; preds = %338
  %351 = icmp eq %struct.tcp_pcb* %340, %325, !dbg !1070
  br i1 %351, label %353, label %352, !dbg !1074

; <label>:352:                                    ; preds = %350
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !1075
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1078
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1078
  unreachable, !dbg !1078

; <label>:353:                                    ; preds = %350
  %354 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1082
  %355 = bitcast %struct.tcp_pcb** %354 to i64*, !dbg !1082
  %356 = load i64, i64* %355, align 8, !dbg !1082, !tbaa !533
  store i64 %356, i64* bitcast (%struct.tcp_pcb** @tcp_tw_pcbs to i64*), align 8, !dbg !1083, !tbaa !501
  br label %357

; <label>:357:                                    ; preds = %353, %344
  %358 = load i32, i32* %328, align 8, !dbg !1087, !tbaa !457
  %359 = icmp eq i32 %358, 1, !dbg !1087
  br i1 %359, label %360, label %361, !dbg !1088

; <label>:360:                                    ; preds = %357
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1089
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1090
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1090
  unreachable, !dbg !1090

; <label>:361:                                    ; preds = %357
  %362 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1091
  %363 = load %struct.tcp_pcb*, %struct.tcp_pcb** %362, align 8, !dbg !1091, !tbaa !533
  tail call void @memp_free(i32 1, i8* %327) #7, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br label %367, !dbg !1094

; <label>:364:                                    ; preds = %332
  %365 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %325, i64 0, i32 6, !dbg !1095
  %366 = load %struct.tcp_pcb*, %struct.tcp_pcb** %365, align 8, !dbg !1095, !tbaa !533
  br label %367

; <label>:367:                                    ; preds = %364, %361
  %368 = phi %struct.tcp_pcb* [ %326, %361 ], [ %325, %364 ], !dbg !1097
  %369 = phi %struct.tcp_pcb* [ %363, %361 ], [ %366, %364 ]
  %370 = icmp eq %struct.tcp_pcb* %369, null, !dbg !1029
  br i1 %370, label %371, label %324, !dbg !1030, !llvm.loop !1098

; <label>:371:                                    ; preds = %367, %321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  ret void, !dbg !1100
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_close(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1101 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1107
  br i1 %2, label %3, label %4, !dbg !1110

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1111
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1114
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1114
  unreachable, !dbg !1114

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1118
  %6 = load i32, i32* %5, align 8, !dbg !1118, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !1120
  br i1 %7, label %12, label %8, !dbg !1121

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1122
  %10 = load i16, i16* %9, align 2, !dbg !1122, !tbaa !513
  %11 = or i16 %10, 16, !dbg !1122
  store i16 %11, i16* %9, align 2, !dbg !1122, !tbaa !513
  br label %12, !dbg !1125

; <label>:12:                                     ; preds = %4, %8
  %13 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #8, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  ret i8 %13, !dbg !1127
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb*, i8 zeroext) unnamed_addr #0 !dbg !1128 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1152
  br i1 %3, label %4, label %5, !dbg !1155

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1156
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1159
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1159
  unreachable, !dbg !1159

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8 %1, 0, !dbg !1163
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8
  %8 = load i32, i32* %7, align 8, !dbg !1164, !tbaa !457
  br i1 %6, label %74, label %9, !dbg !1165

; <label>:9:                                      ; preds = %5
  switch i32 %8, label %157 [
    i32 4, label %10
    i32 7, label %10
    i32 0, label %75
    i32 1, label %105
    i32 2, label %151
  ], !dbg !1166

; <label>:10:                                     ; preds = %9, %9
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1167
  %12 = load %struct.pbuf*, %struct.pbuf** %11, align 8, !dbg !1167, !tbaa !537
  %13 = icmp eq %struct.pbuf* %12, null, !dbg !1168
  br i1 %13, label %17, label %14, !dbg !1169

; <label>:14:                                     ; preds = %10
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  %16 = load i16, i16* %15, align 2, !dbg !1170, !tbaa !513
  br label %26, !dbg !1169

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !1173
  %19 = load i32, i32* %18, align 8, !dbg !1173, !tbaa !1174
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1175
  %21 = load i16, i16* %20, align 2, !dbg !1175, !tbaa !513
  %22 = and i16 %21, 256, !dbg !1175
  %23 = icmp eq i16 %22, 0, !dbg !1175
  %24 = select i1 %23, i32 65535, i32 262142, !dbg !1175
  %25 = icmp eq i32 %19, %24, !dbg !1176
  br i1 %25, label %74, label %26, !dbg !1177

; <label>:26:                                     ; preds = %14, %17
  %27 = phi i16 [ %16, %14 ], [ %21, %17 ], !dbg !1170
  %28 = and i16 %27, 16, !dbg !1170
  %29 = icmp eq i16 %28, 0, !dbg !1170
  br i1 %29, label %30, label %31, !dbg !1178

; <label>:30:                                     ; preds = %26
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1179
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1182
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1182
  unreachable, !dbg !1182

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1186
  %33 = load i32, i32* %32, align 8, !dbg !1186, !tbaa !968
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1187
  %35 = load i32, i32* %34, align 4, !dbg !1187, !tbaa !970
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1188
  %37 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1189
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1190
  %39 = load i16, i16* %38, align 2, !dbg !1190, !tbaa !974
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1191
  %41 = load i16, i16* %40, align 8, !dbg !1191, !tbaa !976
  tail call void @tcp_rst(%struct.tcp_pcb* nonnull %0, i32 %33, i32 %35, %struct.ip_addr* nonnull %36, %struct.ip_addr* nonnull %37, i16 zeroext %39, i16 zeroext %41) #7, !dbg !1192
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %0) #8, !dbg !1193
  %42 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1194, !tbaa !501
  %43 = icmp eq %struct.tcp_pcb* %42, %0, !dbg !1194
  br i1 %43, label %44, label %48, !dbg !1195

; <label>:44:                                     ; preds = %31
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1196
  %46 = bitcast %struct.tcp_pcb** %45 to i64*, !dbg !1196
  %47 = load i64, i64* %46, align 8, !dbg !1196, !tbaa !533
  store i64 %47, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !1196, !tbaa !501
  br label %63, !dbg !1196

; <label>:48:                                     ; preds = %31, %51
  %49 = phi %struct.tcp_pcb* [ %53, %51 ], [ %42, %31 ], !dbg !1198
  %50 = icmp eq %struct.tcp_pcb* %49, null, !dbg !1201
  br i1 %50, label %61, label %51, !dbg !1198

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %49, i64 0, i32 6, !dbg !1203
  %53 = load %struct.tcp_pcb*, %struct.tcp_pcb** %52, align 8, !dbg !1203, !tbaa !533
  %54 = icmp eq %struct.tcp_pcb* %53, %0, !dbg !1203
  br i1 %54, label %55, label %48, !dbg !1206, !llvm.loop !1207

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %49, i64 0, i32 6, !dbg !1203
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1208
  %58 = bitcast %struct.tcp_pcb** %57 to i64*, !dbg !1208
  %59 = load i64, i64* %58, align 8, !dbg !1208, !tbaa !533
  %60 = bitcast %struct.tcp_pcb** %56 to i64*, !dbg !1208
  store i64 %59, i64* %60, align 8, !dbg !1208, !tbaa !533
  br label %63, !dbg !1208

; <label>:61:                                     ; preds = %48
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1195
  br label %63, !dbg !1195

; <label>:63:                                     ; preds = %61, %55, %44
  %64 = phi %struct.tcp_pcb** [ %62, %61 ], [ %57, %55 ], [ %45, %44 ], !dbg !1195
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %64, align 8, !dbg !1195, !tbaa !533
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1210, !tbaa !485
  %65 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_input_pcb, align 8, !dbg !1211, !tbaa !501
  %66 = icmp eq %struct.tcp_pcb* %65, %0, !dbg !1213
  br i1 %66, label %67, label %68, !dbg !1214

; <label>:67:                                     ; preds = %63
  tail call void @tcp_trigger_input_pcb_close() #7, !dbg !1215
  br label %159, !dbg !1217

; <label>:68:                                     ; preds = %63
  %69 = load i32, i32* %7, align 8, !dbg !1221, !tbaa !457
  %70 = icmp eq i32 %69, 1, !dbg !1221
  br i1 %70, label %71, label %72, !dbg !1222

; <label>:71:                                     ; preds = %68
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1223
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1224
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1224
  unreachable, !dbg !1224

; <label>:72:                                     ; preds = %68
  %73 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1225
  tail call void @memp_free(i32 1, i8* %73) #7, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br label %159

; <label>:74:                                     ; preds = %5, %17
  switch i32 %8, label %157 [
    i32 0, label %75
    i32 1, label %105
    i32 2, label %151
  ], !dbg !1228

; <label>:75:                                     ; preds = %9, %74
  %76 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1229
  %77 = load i16, i16* %76, align 2, !dbg !1229, !tbaa !974
  %78 = icmp eq i16 %77, 0, !dbg !1230
  br i1 %78, label %103, label %79, !dbg !1231

; <label>:79:                                     ; preds = %75
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1232, !tbaa !501
  %81 = icmp eq %struct.tcp_pcb* %80, %0, !dbg !1232
  br i1 %81, label %82, label %86, !dbg !1233

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1234
  %84 = bitcast %struct.tcp_pcb** %83 to i64*, !dbg !1234
  %85 = load i64, i64* %84, align 8, !dbg !1234, !tbaa !533
  store i64 %85, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1234, !tbaa !501
  br label %101, !dbg !1238

; <label>:86:                                     ; preds = %79, %89
  %87 = phi %struct.tcp_pcb* [ %91, %89 ], [ %80, %79 ], !dbg !1239
  %88 = icmp eq %struct.tcp_pcb* %87, null, !dbg !1242
  br i1 %88, label %99, label %89, !dbg !1239

; <label>:89:                                     ; preds = %86
  %90 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !1244
  %91 = load %struct.tcp_pcb*, %struct.tcp_pcb** %90, align 8, !dbg !1244, !tbaa !533
  %92 = icmp eq %struct.tcp_pcb* %91, %0, !dbg !1244
  br i1 %92, label %93, label %86, !dbg !1247, !llvm.loop !1248

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !1244
  %95 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1249
  %96 = bitcast %struct.tcp_pcb** %95 to i64*, !dbg !1249
  %97 = load i64, i64* %96, align 8, !dbg !1249, !tbaa !533
  %98 = bitcast %struct.tcp_pcb** %94 to i64*, !dbg !1249
  store i64 %97, i64* %98, align 8, !dbg !1249, !tbaa !533
  br label %101, !dbg !1249

; <label>:99:                                     ; preds = %86
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1233
  br label %101, !dbg !1233

; <label>:101:                                    ; preds = %93, %99, %82
  %102 = phi %struct.tcp_pcb** [ %83, %82 ], [ %100, %99 ], [ %95, %93 ]
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %102, align 8, !dbg !1233, !tbaa !533
  br label %103, !dbg !1251

; <label>:103:                                    ; preds = %101, %75
  %104 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1251
  tail call void @memp_free(i32 1, i8* %104) #7, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  br label %159, !dbg !1254

; <label>:105:                                    ; preds = %9, %74
  %106 = bitcast %struct.tcp_pcb* %0 to %struct.tcp_pcb_listen*
  %107 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1266, !tbaa !501
  %108 = icmp eq %struct.tcp_pcb* %107, null, !dbg !1281
  br i1 %108, label %119, label %109, !dbg !1284

; <label>:109:                                    ; preds = %105, %115
  %110 = phi %struct.tcp_pcb* [ %117, %115 ], [ %107, %105 ]
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %110, i64 0, i32 48, !dbg !1285
  %112 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %111, align 8, !dbg !1285, !tbaa !1288
  %113 = icmp eq %struct.tcp_pcb_listen* %112, %106, !dbg !1289
  br i1 %113, label %114, label %115, !dbg !1290

; <label>:114:                                    ; preds = %109
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %111, align 8, !dbg !1291, !tbaa !1288
  br label %115, !dbg !1293

; <label>:115:                                    ; preds = %114, %109
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %110, i64 0, i32 6, !dbg !1294
  %117 = load %struct.tcp_pcb*, %struct.tcp_pcb** %116, align 8, !dbg !1294, !tbaa !533
  %118 = icmp eq %struct.tcp_pcb* %117, null, !dbg !1281
  br i1 %118, label %119, label %109, !dbg !1284, !llvm.loop !1295

; <label>:119:                                    ; preds = %115, %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  %120 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !1266, !tbaa !501
  %121 = icmp eq %struct.tcp_pcb* %120, null, !dbg !1281
  br i1 %121, label %132, label %122, !dbg !1284

; <label>:122:                                    ; preds = %119, %128
  %123 = phi %struct.tcp_pcb* [ %130, %128 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 48, !dbg !1285
  %125 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %124, align 8, !dbg !1285, !tbaa !1288
  %126 = icmp eq %struct.tcp_pcb_listen* %125, %106, !dbg !1289
  br i1 %126, label %127, label %128, !dbg !1290

; <label>:127:                                    ; preds = %122
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %124, align 8, !dbg !1291, !tbaa !1288
  br label %128, !dbg !1293

; <label>:128:                                    ; preds = %127, %122
  %129 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 6, !dbg !1294
  %130 = load %struct.tcp_pcb*, %struct.tcp_pcb** %129, align 8, !dbg !1294, !tbaa !533
  %131 = icmp eq %struct.tcp_pcb* %130, null, !dbg !1281
  br i1 %131, label %132, label %122, !dbg !1284, !llvm.loop !1295

; <label>:132:                                    ; preds = %128, %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  %133 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !1266, !tbaa !501
  %134 = icmp eq %struct.tcp_pcb* %133, null, !dbg !1281
  br i1 %134, label %145, label %135, !dbg !1284

; <label>:135:                                    ; preds = %132, %141
  %136 = phi %struct.tcp_pcb* [ %143, %141 ], [ %133, %132 ]
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %136, i64 0, i32 48, !dbg !1285
  %138 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %137, align 8, !dbg !1285, !tbaa !1288
  %139 = icmp eq %struct.tcp_pcb_listen* %138, %106, !dbg !1289
  br i1 %139, label %140, label %141, !dbg !1290

; <label>:140:                                    ; preds = %135
  store %struct.tcp_pcb_listen* null, %struct.tcp_pcb_listen** %137, align 8, !dbg !1291, !tbaa !1288
  br label %141, !dbg !1293

; <label>:141:                                    ; preds = %140, %135
  %142 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %136, i64 0, i32 6, !dbg !1294
  %143 = load %struct.tcp_pcb*, %struct.tcp_pcb** %142, align 8, !dbg !1294, !tbaa !533
  %144 = icmp eq %struct.tcp_pcb* %143, null, !dbg !1281
  br i1 %144, label %145, label %135, !dbg !1284, !llvm.loop !1295

; <label>:145:                                    ; preds = %141, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), %struct.tcp_pcb* nonnull %0) #8, !dbg !1300
  %146 = load i32, i32* %7, align 8, !dbg !1306, !tbaa !457
  %147 = icmp eq i32 %146, 1, !dbg !1306
  br i1 %147, label %148, label %149, !dbg !1309

; <label>:148:                                    ; preds = %145
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0)) #7, !dbg !1310
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1313
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1313
  unreachable, !dbg !1313

; <label>:149:                                    ; preds = %145
  %150 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1317
  tail call void @memp_free(i32 2, i8* %150) #7, !dbg !1318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  br label %159, !dbg !1320

; <label>:151:                                    ; preds = %9, %74
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1321
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1321, !tbaa !485
  %152 = load i32, i32* %7, align 8, !dbg !1325, !tbaa !457
  %153 = icmp eq i32 %152, 1, !dbg !1325
  br i1 %153, label %154, label %155, !dbg !1326

; <label>:154:                                    ; preds = %151
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1327
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1328
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1328
  unreachable, !dbg !1328

; <label>:155:                                    ; preds = %151
  %156 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1329
  tail call void @memp_free(i32 1, i8* %156) #7, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br label %159, !dbg !1332

; <label>:157:                                    ; preds = %9, %74
  %158 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %0) #8, !dbg !1333
  br label %159, !dbg !1334

; <label>:159:                                    ; preds = %103, %149, %155, %67, %72, %157
  %160 = phi i8 [ %158, %157 ], [ 0, %72 ], [ 0, %67 ], [ 0, %155 ], [ 0, %149 ], [ 0, %103 ], !dbg !1335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  ret i8 %160, !dbg !1336
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_shutdown(%struct.tcp_pcb*, i32, i32) local_unnamed_addr #0 !dbg !1337 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1347
  br i1 %4, label %5, label %6, !dbg !1350

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !1351
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1354
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1354
  unreachable, !dbg !1354

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1358
  %8 = load i32, i32* %7, align 8, !dbg !1358, !tbaa !457
  %9 = icmp eq i32 %8, 1, !dbg !1360
  br i1 %9, label %30, label %10, !dbg !1361

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %1, 0, !dbg !1362
  br i1 %11, label %25, label %12, !dbg !1364

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !1365
  %14 = load i16, i16* %13, align 2, !dbg !1365, !tbaa !513
  %15 = or i16 %14, 16, !dbg !1365
  store i16 %15, i16* %13, align 2, !dbg !1365, !tbaa !513
  %16 = icmp eq i32 %2, 0, !dbg !1368
  br i1 %16, label %19, label %17, !dbg !1370

; <label>:17:                                     ; preds = %12
  %18 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 1) #8, !dbg !1371
  br label %30, !dbg !1373

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !1374
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !1374, !tbaa !537
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !1376
  br i1 %22, label %30, label %23, !dbg !1377

; <label>:23:                                     ; preds = %19
  %24 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %21) #7, !dbg !1378
  store %struct.pbuf* null, %struct.pbuf** %20, align 8, !dbg !1380, !tbaa !537
  br label %30, !dbg !1381

; <label>:25:                                     ; preds = %10
  %26 = icmp eq i32 %2, 0, !dbg !1382
  br i1 %26, label %30, label %27, !dbg !1384

; <label>:27:                                     ; preds = %25
  switch i32 %8, label %30 [
    i32 3, label %28
    i32 4, label %28
    i32 7, label %28
  ], !dbg !1385

; <label>:28:                                     ; preds = %27, %27, %27
  %29 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %0, i8 zeroext 0) #8, !dbg !1387
  br label %30, !dbg !1389

; <label>:30:                                     ; preds = %23, %19, %25, %27, %6, %28, %17
  %31 = phi i8 [ %18, %17 ], [ %29, %28 ], [ -11, %6 ], [ -11, %27 ], [ 0, %25 ], [ 0, %19 ], [ 0, %23 ], !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  ret i8 %31, !dbg !1391
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abandon(%struct.tcp_pcb*, i32) local_unnamed_addr #0 !dbg !1392 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1417
  br i1 %3, label %4, label %5, !dbg !1420

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !1421
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1424
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1424
  unreachable, !dbg !1424

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1428
  %7 = load i32, i32* %6, align 8, !dbg !1428, !tbaa !457
  switch i32 %7, label %15 [
    i32 1, label %8
    i32 10, label %9
  ], !dbg !1431

; <label>:8:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1432
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1435
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1435
  unreachable, !dbg !1435

; <label>:9:                                      ; preds = %5
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_tw_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1439
  %10 = load i32, i32* %6, align 8, !dbg !1443, !tbaa !457
  %11 = icmp eq i32 %10, 1, !dbg !1443
  br i1 %11, label %12, label %13, !dbg !1444

; <label>:12:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1445
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1446
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1446
  unreachable, !dbg !1446

; <label>:13:                                     ; preds = %9
  %14 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1447
  tail call void @memp_free(i32 1, i8* %14) #7, !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  br label %122, !dbg !1450

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !1453
  %17 = load i32, i32* %16, align 8, !dbg !1453, !tbaa !968
  %18 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !1455
  %19 = load i32, i32* %18, align 4, !dbg !1455, !tbaa !970
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !1457
  %21 = load void (i8*, i8)*, void (i8*, i8)** %20, align 8, !dbg !1457, !tbaa !926
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !1459
  %23 = load i8*, i8** %22, align 8, !dbg !1459, !tbaa !980
  %24 = icmp eq i32 %7, 0, !dbg !1461
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1462
  %26 = load i16, i16* %25, align 2, !dbg !1462, !tbaa !974
  br i1 %24, label %27, label %53, !dbg !1464

; <label>:27:                                     ; preds = %15
  %28 = icmp eq i16 %26, 0, !dbg !1465
  br i1 %28, label %54, label %29, !dbg !1466

; <label>:29:                                     ; preds = %27
  %30 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1467, !tbaa !501
  %31 = icmp eq %struct.tcp_pcb* %30, %0, !dbg !1467
  br i1 %31, label %32, label %36, !dbg !1468

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1469
  %34 = bitcast %struct.tcp_pcb** %33 to i64*, !dbg !1469
  %35 = load i64, i64* %34, align 8, !dbg !1469, !tbaa !533
  store i64 %35, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1469, !tbaa !501
  br label %51, !dbg !1469

; <label>:36:                                     ; preds = %29, %39
  %37 = phi %struct.tcp_pcb* [ %41, %39 ], [ %30, %29 ], !dbg !1471
  %38 = icmp eq %struct.tcp_pcb* %37, null, !dbg !1474
  br i1 %38, label %49, label %39, !dbg !1471

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %37, i64 0, i32 6, !dbg !1476
  %41 = load %struct.tcp_pcb*, %struct.tcp_pcb** %40, align 8, !dbg !1476, !tbaa !533
  %42 = icmp eq %struct.tcp_pcb* %41, %0, !dbg !1476
  br i1 %42, label %43, label %36, !dbg !1479, !llvm.loop !1480

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %37, i64 0, i32 6, !dbg !1476
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1481
  %46 = bitcast %struct.tcp_pcb** %45 to i64*, !dbg !1481
  %47 = load i64, i64* %46, align 8, !dbg !1481, !tbaa !533
  %48 = bitcast %struct.tcp_pcb** %44 to i64*, !dbg !1481
  store i64 %47, i64* %48, align 8, !dbg !1481, !tbaa !533
  br label %51, !dbg !1481

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1468
  br label %51, !dbg !1468

; <label>:51:                                     ; preds = %49, %43, %32
  %52 = phi %struct.tcp_pcb** [ %50, %49 ], [ %45, %43 ], [ %33, %32 ], !dbg !1468
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %52, align 8, !dbg !1468, !tbaa !533
  br label %54, !dbg !1483

; <label>:53:                                     ; preds = %15
  tail call void @tcp_pcb_remove(%struct.tcp_pcb** nonnull @tcp_active_pcbs, %struct.tcp_pcb* nonnull %0) #8, !dbg !1484
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !1484, !tbaa !485
  br label %54

; <label>:54:                                     ; preds = %27, %51, %53
  %55 = phi i16 [ 0, %51 ], [ 0, %27 ], [ %26, %53 ], !dbg !1462
  %56 = phi i32 [ 0, %51 ], [ 0, %27 ], [ %1, %53 ], !dbg !1462
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !1486
  %58 = load %struct.tcp_seg*, %struct.tcp_seg** %57, align 8, !dbg !1486, !tbaa !657
  %59 = icmp eq %struct.tcp_seg* %58, null, !dbg !1488
  br i1 %59, label %73, label %60, !dbg !1489

; <label>:60:                                     ; preds = %54, %69
  %61 = phi %struct.tcp_seg* [ %63, %69 ], [ %58, %54 ]
  %62 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %61, i64 0, i32 0, !dbg !1493
  %63 = load %struct.tcp_seg*, %struct.tcp_seg** %62, align 8, !dbg !1493, !tbaa !880
  %64 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %61, i64 0, i32 1, !dbg !1497
  %65 = load %struct.pbuf*, %struct.pbuf** %64, align 8, !dbg !1497, !tbaa !892
  %66 = icmp eq %struct.pbuf* %65, null, !dbg !1498
  br i1 %66, label %69, label %67, !dbg !1499

; <label>:67:                                     ; preds = %60
  %68 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %65) #7, !dbg !1500
  br label %69, !dbg !1501

; <label>:69:                                     ; preds = %67, %60
  %70 = bitcast %struct.tcp_seg* %61 to i8*, !dbg !1502
  tail call void @memp_free(i32 3, i8* %70) #7, !dbg !1503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  %71 = icmp eq %struct.tcp_seg* %63, null, !dbg !1505
  br i1 %71, label %72, label %60, !dbg !1506, !llvm.loop !903

; <label>:72:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1507
  br label %73, !dbg !1508

; <label>:73:                                     ; preds = %54, %72
  %74 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !1509
  %75 = load %struct.tcp_seg*, %struct.tcp_seg** %74, align 8, !dbg !1509, !tbaa !669
  %76 = icmp eq %struct.tcp_seg* %75, null, !dbg !1511
  br i1 %76, label %90, label %77, !dbg !1512

; <label>:77:                                     ; preds = %73, %86
  %78 = phi %struct.tcp_seg* [ %80, %86 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %78, i64 0, i32 0, !dbg !1516
  %80 = load %struct.tcp_seg*, %struct.tcp_seg** %79, align 8, !dbg !1516, !tbaa !880
  %81 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %78, i64 0, i32 1, !dbg !1520
  %82 = load %struct.pbuf*, %struct.pbuf** %81, align 8, !dbg !1520, !tbaa !892
  %83 = icmp eq %struct.pbuf* %82, null, !dbg !1521
  br i1 %83, label %86, label %84, !dbg !1522

; <label>:84:                                     ; preds = %77
  %85 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %82) #7, !dbg !1523
  br label %86, !dbg !1524

; <label>:86:                                     ; preds = %84, %77
  %87 = bitcast %struct.tcp_seg* %78 to i8*, !dbg !1525
  tail call void @memp_free(i32 3, i8* %87) #7, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  %88 = icmp eq %struct.tcp_seg* %80, null, !dbg !1528
  br i1 %88, label %89, label %77, !dbg !1529, !llvm.loop !903

; <label>:89:                                     ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br label %90, !dbg !1531

; <label>:90:                                     ; preds = %73, %89
  %91 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !1532
  %92 = load %struct.tcp_seg*, %struct.tcp_seg** %91, align 8, !dbg !1532, !tbaa !852
  %93 = icmp eq %struct.tcp_seg* %92, null, !dbg !1534
  br i1 %93, label %107, label %94, !dbg !1535

; <label>:94:                                     ; preds = %90, %103
  %95 = phi %struct.tcp_seg* [ %97, %103 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %95, i64 0, i32 0, !dbg !1539
  %97 = load %struct.tcp_seg*, %struct.tcp_seg** %96, align 8, !dbg !1539, !tbaa !880
  %98 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %95, i64 0, i32 1, !dbg !1543
  %99 = load %struct.pbuf*, %struct.pbuf** %98, align 8, !dbg !1543, !tbaa !892
  %100 = icmp eq %struct.pbuf* %99, null, !dbg !1544
  br i1 %100, label %103, label %101, !dbg !1545

; <label>:101:                                    ; preds = %94
  %102 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %99) #7, !dbg !1546
  br label %103, !dbg !1547

; <label>:103:                                    ; preds = %101, %94
  %104 = bitcast %struct.tcp_seg* %95 to i8*, !dbg !1548
  tail call void @memp_free(i32 3, i8* %104) #7, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  %105 = icmp eq %struct.tcp_seg* %97, null, !dbg !1551
  br i1 %105, label %106, label %94, !dbg !1552, !llvm.loop !903

; <label>:106:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br label %107, !dbg !1554

; <label>:107:                                    ; preds = %90, %106
  %108 = icmp eq i32 %56, 0, !dbg !1555
  br i1 %108, label %114, label %109, !dbg !1557

; <label>:109:                                    ; preds = %107
  %110 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, !dbg !1558
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !1560
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !1561
  %113 = load i16, i16* %112, align 8, !dbg !1561, !tbaa !976
  tail call void @tcp_rst(%struct.tcp_pcb* %0, i32 %17, i32 %19, %struct.ip_addr* %110, %struct.ip_addr* nonnull %111, i16 zeroext %55, i16 zeroext %113) #7, !dbg !1562
  br label %114, !dbg !1563

; <label>:114:                                    ; preds = %107, %109
  %115 = load i32, i32* %6, align 8, !dbg !1567, !tbaa !457
  %116 = icmp eq i32 %115, 1, !dbg !1567
  br i1 %116, label %117, label %118, !dbg !1568

; <label>:117:                                    ; preds = %114
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !1569
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1570
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1570
  unreachable, !dbg !1570

; <label>:118:                                    ; preds = %114
  %119 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !1571
  tail call void @memp_free(i32 1, i8* %119) #7, !dbg !1572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  %120 = icmp eq void (i8*, i8)* %21, null, !dbg !1574
  br i1 %120, label %122, label %121, !dbg !1577

; <label>:121:                                    ; preds = %118
  tail call void %21(i8* %23, i8 signext -13) #7, !dbg !1574
  br label %122, !dbg !1574

; <label>:122:                                    ; preds = %121, %118, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  ret void, !dbg !1578
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_remove(%struct.tcp_pcb**, %struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1579 {
  %3 = icmp eq %struct.tcp_pcb* %1, null, !dbg !1591
  br i1 %3, label %4, label %5, !dbg !1594

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1595
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1598
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1598
  unreachable, !dbg !1598

; <label>:5:                                      ; preds = %2
  %6 = icmp eq %struct.tcp_pcb** %0, null, !dbg !1602
  br i1 %6, label %7, label %8, !dbg !1605

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1606
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1609
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1609
  unreachable, !dbg !1609

; <label>:8:                                      ; preds = %5
  %9 = load %struct.tcp_pcb*, %struct.tcp_pcb** %0, align 8, !dbg !1613, !tbaa !501
  %10 = icmp eq %struct.tcp_pcb* %9, %1, !dbg !1613
  br i1 %10, label %11, label %16, !dbg !1614

; <label>:11:                                     ; preds = %8
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1615
  %13 = bitcast %struct.tcp_pcb** %12 to i64*, !dbg !1615
  %14 = load i64, i64* %13, align 8, !dbg !1615, !tbaa !533
  %15 = bitcast %struct.tcp_pcb** %0 to i64*, !dbg !1615
  store i64 %14, i64* %15, align 8, !dbg !1615, !tbaa !501
  br label %31, !dbg !1615

; <label>:16:                                     ; preds = %8, %19
  %17 = phi %struct.tcp_pcb* [ %21, %19 ], [ %9, %8 ], !dbg !1617
  %18 = icmp eq %struct.tcp_pcb* %17, null, !dbg !1620
  br i1 %18, label %29, label %19, !dbg !1617

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 6, !dbg !1622
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** %20, align 8, !dbg !1622, !tbaa !533
  %22 = icmp eq %struct.tcp_pcb* %21, %1, !dbg !1622
  br i1 %22, label %23, label %16, !dbg !1625, !llvm.loop !1626

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %17, i64 0, i32 6, !dbg !1622
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1627
  %26 = bitcast %struct.tcp_pcb** %25 to i64*, !dbg !1627
  %27 = load i64, i64* %26, align 8, !dbg !1627, !tbaa !533
  %28 = bitcast %struct.tcp_pcb** %24 to i64*, !dbg !1627
  store i64 %27, i64* %28, align 8, !dbg !1627, !tbaa !533
  br label %31, !dbg !1627

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 6, !dbg !1614
  br label %31, !dbg !1614

; <label>:31:                                     ; preds = %29, %23, %11
  %32 = phi %struct.tcp_pcb** [ %30, %29 ], [ %25, %23 ], [ %12, %11 ], !dbg !1614
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %32, align 8, !dbg !1614, !tbaa !533
  tail call void @tcp_pcb_purge(%struct.tcp_pcb* nonnull %1) #8, !dbg !1629
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !1630
  %34 = load i32, i32* %33, align 8, !dbg !1630, !tbaa !457
  switch i32 %34, label %35 [
    i32 10, label %44
    i32 1, label %44
  ], !dbg !1632

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !1633
  %37 = load i16, i16* %36, align 2, !dbg !1633, !tbaa !513
  %38 = and i16 %37, 1, !dbg !1634
  %39 = icmp eq i16 %38, 0, !dbg !1634
  br i1 %39, label %47, label %40, !dbg !1635

; <label>:40:                                     ; preds = %35
  %41 = or i16 %37, 2, !dbg !1636
  store i16 %41, i16* %36, align 2, !dbg !1636, !tbaa !513
  %42 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %1) #7, !dbg !1639
  %43 = load i32, i32* %33, align 8, !dbg !1640, !tbaa !457
  br label %44, !dbg !1642

; <label>:44:                                     ; preds = %40, %31, %31
  %45 = phi i32 [ %34, %31 ], [ %34, %31 ], [ %43, %40 ], !dbg !1640
  %46 = icmp eq i32 %45, 1, !dbg !1643
  br i1 %46, label %62, label %47, !dbg !1644

; <label>:47:                                     ; preds = %35, %44
  %48 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 44, !dbg !1645
  %49 = load %struct.tcp_seg*, %struct.tcp_seg** %48, align 8, !dbg !1645, !tbaa !669
  %50 = icmp eq %struct.tcp_seg* %49, null, !dbg !1645
  br i1 %50, label %52, label %51, !dbg !1649

; <label>:51:                                     ; preds = %47
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1650
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1653
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1653
  unreachable, !dbg !1653

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 45, !dbg !1657
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !1657, !tbaa !657
  %55 = icmp eq %struct.tcp_seg* %54, null, !dbg !1657
  br i1 %55, label %57, label %56, !dbg !1660

; <label>:56:                                     ; preds = %52
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1661
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1664
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1664
  unreachable, !dbg !1664

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 46, !dbg !1668
  %59 = load %struct.tcp_seg*, %struct.tcp_seg** %58, align 8, !dbg !1668, !tbaa !852
  %60 = icmp eq %struct.tcp_seg* %59, null, !dbg !1668
  br i1 %60, label %62, label %61, !dbg !1671

; <label>:61:                                     ; preds = %57
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1672
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1675
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1675
  unreachable, !dbg !1675

; <label>:62:                                     ; preds = %44, %57
  store i32 0, i32* %33, align 8, !dbg !1679, !tbaa !457
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 10, !dbg !1680
  store i16 0, i16* %63, align 2, !dbg !1681, !tbaa !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  ret void, !dbg !1682
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local void @tcp_segs_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !864 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !1684
  br i1 %2, label %15, label %3, !dbg !904

; <label>:3:                                      ; preds = %1, %12
  %4 = phi %struct.tcp_seg* [ %6, %12 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 0, !dbg !1685
  %6 = load %struct.tcp_seg*, %struct.tcp_seg** %5, align 8, !dbg !1685, !tbaa !880
  %7 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %4, i64 0, i32 1, !dbg !1689
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1689, !tbaa !892
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1690
  br i1 %9, label %12, label %10, !dbg !1691

; <label>:10:                                     ; preds = %3
  %11 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %8) #7, !dbg !1692
  br label %12, !dbg !1693

; <label>:12:                                     ; preds = %3, %10
  %13 = bitcast %struct.tcp_seg* %4 to i8*, !dbg !1694
  tail call void @memp_free(i32 3, i8* %13) #7, !dbg !1695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1696
  %14 = icmp eq %struct.tcp_seg* %6, null, !dbg !1684
  br i1 %14, label %15, label %3, !dbg !904, !llvm.loop !903

; <label>:15:                                     ; preds = %12, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  ret void, !dbg !1697
}

; Function Attrs: noredzone
declare dso_local void @tcp_rst(%struct.tcp_pcb*, i32, i32, %struct.ip_addr*, %struct.ip_addr*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_abort(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !1698 {
  tail call void @tcp_abandon(%struct.tcp_pcb* %0, i32 1) #8, !dbg !1702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1703
  ret void, !dbg !1703
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_bind(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #0 !dbg !1704 {
  %4 = alloca %struct.ip_addr, align 4
  %5 = bitcast %struct.ip_addr* %4 to i8*, !dbg !1791
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1791
  %6 = icmp eq %struct.ip_addr* %1, null, !dbg !1792
  %7 = select i1 %6, %struct.ip_addr* @ip_addr_any, %struct.ip_addr* %1, !dbg !1794
  %8 = icmp eq %struct.tcp_pcb* %0, null, !dbg !1795
  br i1 %8, label %9, label %10, !dbg !1798

; <label>:9:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1799
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1802
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1802
  unreachable, !dbg !1802

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !1806
  %12 = load i32, i32* %11, align 8, !dbg !1806, !tbaa !457
  %13 = icmp eq i32 %12, 0, !dbg !1806
  br i1 %13, label %15, label %14, !dbg !1809

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !1810
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1813
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1813
  unreachable, !dbg !1813

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !1817
  %17 = load i8, i8* %16, align 1, !dbg !1817, !tbaa !812
  %18 = and i8 %17, 4, !dbg !1817
  %19 = icmp eq i8 %18, 0, !dbg !1817
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 1, !dbg !1819
  %21 = load i8, i8* %20, align 4, !dbg !1819, !tbaa !1820
  %22 = icmp eq i8 %21, 6, !dbg !1819
  br i1 %22, label %23, label %61, !dbg !1821

; <label>:23:                                     ; preds = %15
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 1, !dbg !1822
  %25 = load i8, i8* %24, align 4, !dbg !1822, !tbaa !485
  %26 = icmp eq i8 %25, 0, !dbg !1822
  br i1 %26, label %27, label %61, !dbg !1822

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1822
  %29 = load i32, i32* %28, align 4, !dbg !1822, !tbaa !485
  %30 = and i32 %29, 49407, !dbg !1822
  %31 = icmp eq i32 %30, 33022, !dbg !1822
  br i1 %31, label %32, label %61, !dbg !1823

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 1, !dbg !1824
  store i8 6, i8* %33, align 4, !dbg !1824, !tbaa !1820
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1827
  store i32 %29, i32* %34, align 4, !dbg !1827, !tbaa !485
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1827
  %36 = load i32, i32* %35, align 4, !dbg !1827, !tbaa !485
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1827
  store i32 %36, i32* %37, align 4, !dbg !1827, !tbaa !485
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1827
  %39 = load i32, i32* %38, align 4, !dbg !1827, !tbaa !485
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1827
  store i32 %39, i32* %40, align 4, !dbg !1827, !tbaa !485
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %7, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1827
  %42 = load i32, i32* %41, align 4, !dbg !1827, !tbaa !485
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1827
  store i32 %42, i32* %43, align 4, !dbg !1827, !tbaa !485
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, i32 1, !dbg !1827
  store i8 0, i8* %44, align 4, !dbg !1827, !tbaa !485
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %4, i64 0, i32 0, i32 0, !dbg !1831
  %46 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %45, %struct.ip6_addr* nonnull %45) #7, !dbg !1831
  %47 = icmp eq %struct.netif* %46, null, !dbg !1832
  br i1 %47, label %61, label %48, !dbg !1831

; <label>:48:                                     ; preds = %32
  %49 = load i32, i32* %34, align 4, !dbg !1834, !tbaa !485
  %50 = and i32 %49, 49407, !dbg !1834
  %51 = icmp eq i32 %50, 33022, !dbg !1834
  br i1 %51, label %55, label %52, !dbg !1834

; <label>:52:                                     ; preds = %48
  %53 = trunc i32 %49 to i16, !dbg !1834
  %54 = and i16 %53, -28673, !dbg !1834
  switch i16 %54, label %59 [
    i16 511, label %55
    i16 767, label %55
  ], !dbg !1834

; <label>:55:                                     ; preds = %52, %52, %48
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %46, i64 0, i32 23, !dbg !1834
  %57 = load i8, i8* %56, align 8, !dbg !1834, !tbaa !1836
  %58 = add i8 %57, 1, !dbg !1834
  br label %59, !dbg !1834

; <label>:59:                                     ; preds = %52, %55
  %60 = phi i8 [ %58, %55 ], [ 0, %52 ], !dbg !1834
  store i8 %60, i8* %44, align 4, !dbg !1834, !tbaa !485
  br label %61, !dbg !1834

; <label>:61:                                     ; preds = %59, %32, %23, %27, %15
  %62 = phi %struct.ip_addr* [ %7, %23 ], [ %7, %27 ], [ %7, %15 ], [ %4, %32 ], [ %4, %59 ], !dbg !1838
  %63 = icmp eq i16 %2, 0, !dbg !1840
  br i1 %63, label %72, label %64, !dbg !1842

; <label>:64:                                     ; preds = %61
  %65 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 1
  %66 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 0
  %67 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1
  %68 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2
  %69 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3
  %70 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 1
  %71 = select i1 %19, i64 4, i64 3, !dbg !1844
  br label %136, !dbg !1844

; <label>:72:                                     ; preds = %61
  %73 = load i16, i16* @tcp_port, align 2, !dbg !1857
  %74 = load %struct.tcp_pcb*, %struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), align 8, !dbg !1860, !tbaa !501
  %75 = icmp eq %struct.tcp_pcb* %74, null
  %76 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8
  %77 = icmp eq %struct.tcp_pcb* %76, null
  %78 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8
  %79 = icmp eq %struct.tcp_pcb* %78, null
  %80 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8
  %81 = icmp eq %struct.tcp_pcb* %80, null
  br label %82, !dbg !1866

; <label>:82:                                     ; preds = %97, %72
  %83 = phi i16 [ %73, %72 ], [ %87, %97 ], !dbg !1854
  %84 = phi i16 [ 0, %72 ], [ %98, %97 ], !dbg !1867
  %85 = add i16 %83, 1, !dbg !1871
  %86 = icmp eq i16 %85, -1, !dbg !1872
  %87 = select i1 %86, i16 -16384, i16 %85, !dbg !1873
  br i1 %75, label %101, label %92, !dbg !1876

; <label>:88:                                     ; preds = %92
  %89 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 6, !dbg !1877
  %90 = load %struct.tcp_pcb*, %struct.tcp_pcb** %89, align 8, !dbg !1860, !tbaa !501
  %91 = icmp eq %struct.tcp_pcb* %90, null, !dbg !1878
  br i1 %91, label %101, label %92, !dbg !1876, !llvm.loop !1879

; <label>:92:                                     ; preds = %82, %88
  %93 = phi %struct.tcp_pcb* [ %90, %88 ], [ %74, %82 ]
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %93, i64 0, i32 10, !dbg !1882
  %95 = load i16, i16* %94, align 2, !dbg !1882, !tbaa !974
  %96 = icmp eq i16 %95, %87, !dbg !1883
  br i1 %96, label %97, label %88, !dbg !1884

; <label>:97:                                     ; preds = %92, %102, %112, %122
  %98 = add nuw nsw i16 %84, 1, !dbg !1885
  %99 = icmp ugt i16 %84, 16382, !dbg !1886
  br i1 %99, label %100, label %82, !dbg !1888

; <label>:100:                                    ; preds = %97
  store i16 %87, i16* @tcp_port, align 2, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  br label %285, !dbg !1890

; <label>:101:                                    ; preds = %88, %82
  br i1 %77, label %111, label %102, !dbg !1876

; <label>:102:                                    ; preds = %101, %107
  %103 = phi %struct.tcp_pcb* [ %109, %107 ], [ %76, %101 ]
  %104 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %103, i64 0, i32 10, !dbg !1882
  %105 = load i16, i16* %104, align 2, !dbg !1882, !tbaa !974
  %106 = icmp eq i16 %105, %87, !dbg !1883
  br i1 %106, label %97, label %107, !dbg !1884

; <label>:107:                                    ; preds = %102
  %108 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %103, i64 0, i32 6, !dbg !1877
  %109 = load %struct.tcp_pcb*, %struct.tcp_pcb** %108, align 8, !dbg !1860, !tbaa !501
  %110 = icmp eq %struct.tcp_pcb* %109, null, !dbg !1878
  br i1 %110, label %111, label %102, !dbg !1876, !llvm.loop !1879

; <label>:111:                                    ; preds = %107, %101
  br i1 %79, label %121, label %112, !dbg !1876

; <label>:112:                                    ; preds = %111, %117
  %113 = phi %struct.tcp_pcb* [ %119, %117 ], [ %78, %111 ]
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %113, i64 0, i32 10, !dbg !1882
  %115 = load i16, i16* %114, align 2, !dbg !1882, !tbaa !974
  %116 = icmp eq i16 %115, %87, !dbg !1883
  br i1 %116, label %97, label %117, !dbg !1884

; <label>:117:                                    ; preds = %112
  %118 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %113, i64 0, i32 6, !dbg !1877
  %119 = load %struct.tcp_pcb*, %struct.tcp_pcb** %118, align 8, !dbg !1860, !tbaa !501
  %120 = icmp eq %struct.tcp_pcb* %119, null, !dbg !1878
  br i1 %120, label %121, label %112, !dbg !1876, !llvm.loop !1879

; <label>:121:                                    ; preds = %117, %111
  br i1 %81, label %131, label %122, !dbg !1876

; <label>:122:                                    ; preds = %121, %127
  %123 = phi %struct.tcp_pcb* [ %129, %127 ], [ %80, %121 ]
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 10, !dbg !1882
  %125 = load i16, i16* %124, align 2, !dbg !1882, !tbaa !974
  %126 = icmp eq i16 %125, %87, !dbg !1883
  br i1 %126, label %97, label %127, !dbg !1884

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %123, i64 0, i32 6, !dbg !1877
  %129 = load %struct.tcp_pcb*, %struct.tcp_pcb** %128, align 8, !dbg !1860, !tbaa !501
  %130 = icmp eq %struct.tcp_pcb* %129, null, !dbg !1878
  br i1 %130, label %131, label %122, !dbg !1876, !llvm.loop !1879

; <label>:131:                                    ; preds = %121, %127
  store i16 %87, i16* @tcp_port, align 2, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1889
  %132 = icmp eq i16 %87, 0, !dbg !1891
  br i1 %132, label %285, label %133, !dbg !1890

; <label>:133:                                    ; preds = %131
  %134 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 1, !dbg !1893
  %135 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1893
  br label %229, !dbg !1890

; <label>:136:                                    ; preds = %64, %226
  %137 = phi i64 [ 0, %64 ], [ %227, %226 ]
  %138 = getelementptr inbounds [4 x %struct.tcp_pcb**], [4 x %struct.tcp_pcb**]* @tcp_pcb_lists, i64 0, i64 %137, !dbg !1895
  %139 = load %struct.tcp_pcb**, %struct.tcp_pcb*** %138, align 8, !dbg !1895, !tbaa !501
  %140 = load %struct.tcp_pcb*, %struct.tcp_pcb** %139, align 8, !dbg !1900, !tbaa !501
  %141 = icmp eq %struct.tcp_pcb* %140, null, !dbg !1902
  br i1 %141, label %226, label %142, !dbg !1903

; <label>:142:                                    ; preds = %136, %222
  %143 = phi %struct.tcp_pcb* [ %224, %222 ], [ %140, %136 ]
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 10, !dbg !1904
  %145 = load i16, i16* %144, align 2, !dbg !1904, !tbaa !974
  %146 = icmp eq i16 %145, %2, !dbg !1907
  br i1 %146, label %147, label %222, !dbg !1908

; <label>:147:                                    ; preds = %142
  %148 = load i8, i8* %16, align 1, !dbg !1909, !tbaa !812
  %149 = and i8 %148, 4, !dbg !1909
  %150 = icmp eq i8 %149, 0, !dbg !1909
  br i1 %150, label %156, label %151, !dbg !1912

; <label>:151:                                    ; preds = %147
  %152 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 3, !dbg !1913
  %153 = load i8, i8* %152, align 1, !dbg !1913, !tbaa !812
  %154 = and i8 %153, 4, !dbg !1913
  %155 = icmp eq i8 %154, 0, !dbg !1913
  br i1 %155, label %156, label %222, !dbg !1914

; <label>:156:                                    ; preds = %147, %151
  %157 = load i8, i8* %65, align 4, !dbg !1915, !tbaa !1820
  %158 = icmp eq i8 %157, 6, !dbg !1915
  %159 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 1, !dbg !1918
  %160 = load i8, i8* %159, align 4, !dbg !1918, !tbaa !1919
  %161 = icmp eq i8 %160, 6, !dbg !1918
  %162 = xor i1 %158, %161, !dbg !1920
  br i1 %162, label %222, label %163, !dbg !1921

; <label>:163:                                    ; preds = %156
  %164 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1922
  %165 = load i32, i32* %164, align 8, !dbg !1922, !tbaa !485
  %166 = icmp eq i32 %165, 0, !dbg !1922
  br i1 %161, label %167, label %180, !dbg !1923

; <label>:167:                                    ; preds = %163
  br i1 %166, label %168, label %181, !dbg !1922

; <label>:168:                                    ; preds = %167
  %169 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1922
  %170 = load i32, i32* %169, align 4, !dbg !1922, !tbaa !485
  %171 = icmp eq i32 %170, 0, !dbg !1922
  br i1 %171, label %172, label %181, !dbg !1922

; <label>:172:                                    ; preds = %168
  %173 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1922
  %174 = load i32, i32* %173, align 8, !dbg !1922, !tbaa !485
  %175 = icmp eq i32 %174, 0, !dbg !1922
  br i1 %175, label %176, label %181, !dbg !1922

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1922
  %178 = load i32, i32* %177, align 4, !dbg !1922, !tbaa !485
  %179 = icmp eq i32 %178, 0, !dbg !1922
  br i1 %179, label %285, label %181, !dbg !1922

; <label>:180:                                    ; preds = %163
  br i1 %166, label %285, label %181, !dbg !1923

; <label>:181:                                    ; preds = %167, %168, %172, %176, %180
  %182 = phi i1 [ true, %167 ], [ true, %168 ], [ true, %172 ], [ false, %180 ], [ true, %176 ]
  %183 = load i32, i32* %66, align 4, !dbg !1924, !tbaa !485
  %184 = icmp eq i32 %183, 0, !dbg !1924
  br i1 %158, label %185, label %195, !dbg !1925

; <label>:185:                                    ; preds = %181
  br i1 %184, label %186, label %196, !dbg !1924

; <label>:186:                                    ; preds = %185
  %187 = load i32, i32* %67, align 4, !dbg !1924, !tbaa !485
  %188 = icmp eq i32 %187, 0, !dbg !1924
  br i1 %188, label %189, label %196, !dbg !1924

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* %68, align 4, !dbg !1924, !tbaa !485
  %191 = icmp eq i32 %190, 0, !dbg !1924
  br i1 %191, label %192, label %196, !dbg !1924

; <label>:192:                                    ; preds = %189
  %193 = load i32, i32* %69, align 4, !dbg !1924, !tbaa !485
  %194 = icmp eq i32 %193, 0, !dbg !1924
  br i1 %194, label %285, label %196, !dbg !1924

; <label>:195:                                    ; preds = %181
  br i1 %184, label %285, label %196, !dbg !1925

; <label>:196:                                    ; preds = %195, %192, %189, %186, %185
  %197 = icmp eq i8 %160, %157, !dbg !1926
  br i1 %197, label %198, label %222, !dbg !1927

; <label>:198:                                    ; preds = %196
  %199 = icmp eq i32 %165, %183, !dbg !1926
  br i1 %182, label %200, label %221, !dbg !1927

; <label>:200:                                    ; preds = %198
  br i1 %199, label %201, label %222, !dbg !1926

; <label>:201:                                    ; preds = %200
  %202 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1926
  %203 = load i32, i32* %202, align 4, !dbg !1926, !tbaa !485
  %204 = load i32, i32* %67, align 4, !dbg !1926, !tbaa !485
  %205 = icmp eq i32 %203, %204, !dbg !1926
  br i1 %205, label %206, label %222, !dbg !1926

; <label>:206:                                    ; preds = %201
  %207 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1926
  %208 = load i32, i32* %207, align 8, !dbg !1926, !tbaa !485
  %209 = load i32, i32* %68, align 4, !dbg !1926, !tbaa !485
  %210 = icmp eq i32 %208, %209, !dbg !1926
  br i1 %210, label %211, label %222, !dbg !1926

; <label>:211:                                    ; preds = %206
  %212 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1926
  %213 = load i32, i32* %212, align 4, !dbg !1926, !tbaa !485
  %214 = load i32, i32* %69, align 4, !dbg !1926, !tbaa !485
  %215 = icmp eq i32 %213, %214, !dbg !1926
  br i1 %215, label %216, label %222, !dbg !1926

; <label>:216:                                    ; preds = %211
  %217 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1926
  %218 = load i8, i8* %217, align 8, !dbg !1926, !tbaa !485
  %219 = load i8, i8* %70, align 4, !dbg !1926, !tbaa !485
  %220 = icmp eq i8 %218, %219, !dbg !1926
  br i1 %220, label %285, label %222, !dbg !1926

; <label>:221:                                    ; preds = %198
  br i1 %199, label %285, label %222, !dbg !1927

; <label>:222:                                    ; preds = %151, %196, %156, %142, %200, %201, %206, %211, %216, %221
  %223 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %143, i64 0, i32 6, !dbg !1928
  %224 = load %struct.tcp_pcb*, %struct.tcp_pcb** %223, align 8, !dbg !1900, !tbaa !501
  %225 = icmp eq %struct.tcp_pcb* %224, null, !dbg !1902
  br i1 %225, label %226, label %142, !dbg !1903, !llvm.loop !1929

; <label>:226:                                    ; preds = %222, %136
  %227 = add nuw nsw i64 %137, 1, !dbg !1931
  %228 = icmp ult i64 %227, %71, !dbg !1932
  br i1 %228, label %136, label %229, !dbg !1844, !llvm.loop !1933

; <label>:229:                                    ; preds = %226, %133
  %230 = phi i32* [ %135, %133 ], [ %66, %226 ], !dbg !1893
  %231 = phi i8* [ %134, %133 ], [ %65, %226 ], !dbg !1893
  %232 = phi i16 [ %87, %133 ], [ %2, %226 ]
  %233 = load i8, i8* %231, align 4, !dbg !1893, !tbaa !1820
  %234 = icmp eq i8 %233, 6, !dbg !1893
  %235 = load i32, i32* %230, align 4, !dbg !1893, !tbaa !485
  %236 = icmp eq i32 %235, 0, !dbg !1893
  br i1 %234, label %237, label %250, !dbg !1935

; <label>:237:                                    ; preds = %229
  br i1 %236, label %238, label %255, !dbg !1893

; <label>:238:                                    ; preds = %237
  %239 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1893
  %240 = load i32, i32* %239, align 4, !dbg !1893, !tbaa !485
  %241 = icmp eq i32 %240, 0, !dbg !1893
  br i1 %241, label %242, label %255, !dbg !1893

; <label>:242:                                    ; preds = %238
  %243 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1893
  %244 = load i32, i32* %243, align 4, !dbg !1893, !tbaa !485
  %245 = icmp eq i32 %244, 0, !dbg !1893
  br i1 %245, label %246, label %255, !dbg !1893

; <label>:246:                                    ; preds = %242
  %247 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1893
  %248 = load i32, i32* %247, align 4, !dbg !1893, !tbaa !485
  %249 = icmp eq i32 %248, 0, !dbg !1893
  br i1 %249, label %251, label %255, !dbg !1893

; <label>:250:                                    ; preds = %229
  br i1 %236, label %251, label %255, !dbg !1935

; <label>:251:                                    ; preds = %250, %246
  %252 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1936
  %253 = load i8, i8* %252, align 4, !dbg !1936, !tbaa !1919
  %254 = icmp eq i8 %233, %253, !dbg !1937
  br i1 %254, label %280, label %255, !dbg !1938

; <label>:255:                                    ; preds = %251, %250, %246, %242, %238, %237
  %256 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !1939
  store i8 %233, i8* %256, align 4, !dbg !1939, !tbaa !1919
  %257 = load i8, i8* %231, align 4, !dbg !1946, !tbaa !1820
  %258 = icmp eq i8 %257, 6, !dbg !1946
  %259 = load i32, i32* %230, align 4, !dbg !1948, !tbaa !485
  %260 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !1948
  store i32 %259, i32* %260, align 8, !dbg !1948, !tbaa !485
  br i1 %258, label %261, label %273, !dbg !1951

; <label>:261:                                    ; preds = %255
  %262 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1948
  %263 = load i32, i32* %262, align 4, !dbg !1948, !tbaa !485
  %264 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1948
  store i32 %263, i32* %264, align 4, !dbg !1948, !tbaa !485
  %265 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1948
  %266 = load i32, i32* %265, align 4, !dbg !1948, !tbaa !485
  %267 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1948
  store i32 %266, i32* %267, align 8, !dbg !1948, !tbaa !485
  %268 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1948
  %269 = load i32, i32* %268, align 4, !dbg !1948, !tbaa !485
  %270 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1948
  store i32 %269, i32* %270, align 4, !dbg !1948, !tbaa !485
  %271 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %62, i64 0, i32 0, i32 0, i32 1, !dbg !1948
  %272 = load i8, i8* %271, align 4, !dbg !1948, !tbaa !485
  br label %277, !dbg !1952

; <label>:273:                                    ; preds = %255
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !1953
  store i32 0, i32* %274, align 4, !dbg !1953, !tbaa !485
  %275 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !1953
  store i32 0, i32* %275, align 8, !dbg !1953, !tbaa !485
  %276 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !1953
  store i32 0, i32* %276, align 4, !dbg !1953, !tbaa !485
  br label %277

; <label>:277:                                    ; preds = %273, %261
  %278 = phi i8 [ %272, %261 ], [ 0, %273 ]
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !1948
  store i8 %278, i8* %279, align 8, !dbg !1948, !tbaa !485
  br label %280, !dbg !1956

; <label>:280:                                    ; preds = %277, %251
  %281 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !1956
  store i16 %232, i16* %281, align 2, !dbg !1957, !tbaa !974
  %282 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !1958, !tbaa !501
  %283 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !1958
  %284 = bitcast %struct.tcp_pcb** %283 to i64*, !dbg !1958
  store i64 %282, i64* %284, align 8, !dbg !1958, !tbaa !533
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !1958, !tbaa !501
  call void @tcp_timer_needed() #7, !dbg !1958
  br label %285, !dbg !1960

; <label>:285:                                    ; preds = %176, %180, %192, %195, %216, %221, %100, %131, %280
  %286 = phi i8 [ 0, %280 ], [ -2, %131 ], [ -2, %100 ], [ -8, %221 ], [ -8, %216 ], [ -8, %195 ], [ -8, %192 ], [ -8, %180 ], [ -8, %176 ], !dbg !1961
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #6, !dbg !1963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  ret i8 %286, !dbg !1963
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip6_route(%struct.ip6_addr*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @tcp_timer_needed() local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_bind_netif(%struct.tcp_pcb* nocapture, %struct.netif* readonly) local_unnamed_addr #0 !dbg !1964 {
  %3 = icmp eq %struct.netif* %1, null, !dbg !1974
  br i1 %3, label %8, label %4, !dbg !1976

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !1977
  %6 = load i8, i8* %5, align 8, !dbg !1977, !tbaa !1836
  %7 = add i8 %6, 1, !dbg !1977
  br label %8, !dbg !1979

; <label>:8:                                      ; preds = %2, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %2 ]
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !1980
  store i8 %9, i8* %10, align 8, !dbg !1982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1983
  ret void, !dbg !1983
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !1984 {
  %3 = tail call %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb* %0, i8 zeroext undef, i8* null) #8, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1993
  ret %struct.tcp_pcb* %3, !dbg !1993
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_listen_with_backlog_and_err(%struct.tcp_pcb*, i8 zeroext, i8*) local_unnamed_addr #0 !dbg !1994 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2014
  br i1 %4, label %5, label %6, !dbg !2017

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !2018
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2021
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2021
  unreachable, !dbg !2021

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2025
  %8 = load i32, i32* %7, align 8, !dbg !2025, !tbaa !457
  %9 = icmp eq i32 %8, 0, !dbg !2025
  br i1 %9, label %11, label %10, !dbg !2028

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !2029
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2032
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2032
  unreachable, !dbg !2032

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2036
  %13 = load i8, i8* %12, align 1, !dbg !2036, !tbaa !812
  %14 = and i8 %13, 4, !dbg !2036
  %15 = icmp eq i8 %14, 0, !dbg !2036
  br i1 %15, label %70, label %16, !dbg !2038

; <label>:16:                                     ; preds = %11
  %17 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !2039, !tbaa !485
  %18 = icmp eq %struct.tcp_pcb_listen* %17, null, !dbg !2043
  br i1 %18, label %70, label %19, !dbg !2044

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10
  %21 = load i16, i16* %20, align 2, !tbaa !974
  %22 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %25 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %27 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  br label %28, !dbg !2044

; <label>:28:                                     ; preds = %19, %66
  %29 = phi %struct.tcp_pcb_listen* [ %17, %19 ], [ %68, %66 ]
  %30 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 10, !dbg !2045
  %31 = load i16, i16* %30, align 2, !dbg !2045, !tbaa !2048
  %32 = icmp eq i16 %31, %21, !dbg !2050
  br i1 %32, label %33, label %66, !dbg !2051

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 1, !dbg !2052
  %35 = load i8, i8* %34, align 4, !dbg !2052, !tbaa !2053
  %36 = load i8, i8* %22, align 4, !dbg !2052, !tbaa !1919
  %37 = icmp eq i8 %35, %36, !dbg !2052
  br i1 %37, label %38, label %66, !dbg !2054

; <label>:38:                                     ; preds = %33
  %39 = icmp eq i8 %35, 6, !dbg !2052
  %40 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2052
  %41 = load i32, i32* %40, align 8, !dbg !2052, !tbaa !485
  %42 = load i32, i32* %23, align 8, !dbg !2052, !tbaa !485
  %43 = icmp eq i32 %41, %42, !dbg !2052
  br i1 %39, label %44, label %65, !dbg !2054

; <label>:44:                                     ; preds = %38
  br i1 %43, label %45, label %66, !dbg !2052

; <label>:45:                                     ; preds = %44
  %46 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2052
  %47 = load i32, i32* %46, align 4, !dbg !2052, !tbaa !485
  %48 = load i32, i32* %24, align 4, !dbg !2052, !tbaa !485
  %49 = icmp eq i32 %47, %48, !dbg !2052
  br i1 %49, label %50, label %66, !dbg !2052

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2052
  %52 = load i32, i32* %51, align 8, !dbg !2052, !tbaa !485
  %53 = load i32, i32* %25, align 8, !dbg !2052, !tbaa !485
  %54 = icmp eq i32 %52, %53, !dbg !2052
  br i1 %54, label %55, label %66, !dbg !2052

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2052
  %57 = load i32, i32* %56, align 4, !dbg !2052, !tbaa !485
  %58 = load i32, i32* %26, align 4, !dbg !2052, !tbaa !485
  %59 = icmp eq i32 %57, %58, !dbg !2052
  br i1 %59, label %60, label %66, !dbg !2052

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2052
  %62 = load i8, i8* %61, align 8, !dbg !2052, !tbaa !485
  %63 = load i8, i8* %27, align 8, !dbg !2052, !tbaa !485
  %64 = icmp eq i8 %62, %63, !dbg !2052
  br i1 %64, label %168, label %66, !dbg !2052

; <label>:65:                                     ; preds = %38
  br i1 %43, label %168, label %66, !dbg !2054

; <label>:66:                                     ; preds = %33, %28, %44, %45, %50, %55, %60, %65
  %67 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %29, i64 0, i32 6, !dbg !2055
  %68 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %67, align 8, !dbg !2039, !tbaa !485
  %69 = icmp eq %struct.tcp_pcb_listen* %68, null, !dbg !2043
  br i1 %69, label %70, label %28, !dbg !2044, !llvm.loop !2056

; <label>:70:                                     ; preds = %66, %16, %11
  %71 = tail call i8* @memp_malloc(i32 2) #7, !dbg !2058
  %72 = bitcast i8* %71 to %struct.tcp_pcb_listen*, !dbg !2059
  %73 = icmp eq i8* %71, null, !dbg !2060
  br i1 %73, label %168, label %74, !dbg !2062

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !2063
  %76 = bitcast i8** %75 to i64*, !dbg !2063
  %77 = load i64, i64* %76, align 8, !dbg !2063, !tbaa !980
  %78 = getelementptr inbounds i8, i8* %71, i64 64, !dbg !2064
  %79 = bitcast i8* %78 to i64*, !dbg !2065
  store i64 %77, i64* %79, align 8, !dbg !2065, !tbaa !2066
  %80 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2067
  %81 = load i16, i16* %80, align 2, !dbg !2067, !tbaa !974
  %82 = getelementptr inbounds i8, i8* %71, i64 78, !dbg !2068
  %83 = bitcast i8* %82 to i16*, !dbg !2068
  store i16 %81, i16* %83, align 2, !dbg !2069, !tbaa !2048
  %84 = getelementptr inbounds i8, i8* %71, i64 72, !dbg !2070
  %85 = bitcast i8* %84 to i32*, !dbg !2070
  store i32 1, i32* %85, align 8, !dbg !2071, !tbaa !2072
  %86 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !2073
  %87 = load i8, i8* %86, align 4, !dbg !2073, !tbaa !2074
  %88 = getelementptr inbounds i8, i8* %71, i64 76, !dbg !2075
  store i8 %87, i8* %88, align 4, !dbg !2076, !tbaa !2077
  %89 = load i8, i8* %12, align 1, !dbg !2078, !tbaa !812
  %90 = getelementptr inbounds i8, i8* %71, i64 49, !dbg !2079
  store i8 %89, i8* %90, align 1, !dbg !2080, !tbaa !2081
  %91 = getelementptr inbounds i8, i8* %71, i64 48, !dbg !2082
  store i8 0, i8* %91, align 8, !dbg !2083, !tbaa !2084
  %92 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 5, !dbg !2085
  %93 = load i8, i8* %92, align 1, !dbg !2085, !tbaa !2086
  %94 = getelementptr inbounds i8, i8* %71, i64 51, !dbg !2087
  store i8 %93, i8* %94, align 1, !dbg !2088, !tbaa !2089
  %95 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 4, !dbg !2090
  %96 = load i8, i8* %95, align 2, !dbg !2090, !tbaa !2091
  %97 = getelementptr inbounds i8, i8* %71, i64 50, !dbg !2092
  store i8 %96, i8* %97, align 2, !dbg !2093, !tbaa !2094
  %98 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2095
  %99 = load i8, i8* %98, align 4, !dbg !2095, !tbaa !1919
  %100 = getelementptr inbounds i8, i8* %71, i64 44, !dbg !2095
  store i8 %99, i8* %100, align 4, !dbg !2095, !tbaa !2097
  %101 = getelementptr inbounds i8, i8* %71, i64 20, !dbg !2098
  store i8 %99, i8* %101, align 4, !dbg !2098, !tbaa !2053
  %102 = icmp eq i8 %99, 6, !dbg !2101
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2103
  %104 = load i32, i32* %103, align 8, !dbg !2103, !tbaa !485
  %105 = bitcast i8* %71 to i32*, !dbg !2103
  store i32 %104, i32* %105, align 8, !dbg !2103, !tbaa !485
  br i1 %102, label %106, label %121, !dbg !2106

; <label>:106:                                    ; preds = %74
  %107 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2103
  %108 = load i32, i32* %107, align 4, !dbg !2103, !tbaa !485
  %109 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2103
  %110 = bitcast i8* %109 to i32*, !dbg !2103
  store i32 %108, i32* %110, align 4, !dbg !2103, !tbaa !485
  %111 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2103
  %112 = load i32, i32* %111, align 8, !dbg !2103, !tbaa !485
  %113 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2103
  %114 = bitcast i8* %113 to i32*, !dbg !2103
  store i32 %112, i32* %114, align 8, !dbg !2103, !tbaa !485
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2103
  %116 = load i32, i32* %115, align 4, !dbg !2103, !tbaa !485
  %117 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2103
  %118 = bitcast i8* %117 to i32*, !dbg !2103
  store i32 %116, i32* %118, align 4, !dbg !2103, !tbaa !485
  %119 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2103
  %120 = load i8, i8* %119, align 8, !dbg !2103, !tbaa !485
  br label %128, !dbg !2107

; <label>:121:                                    ; preds = %74
  %122 = getelementptr inbounds i8, i8* %71, i64 12, !dbg !2108
  %123 = bitcast i8* %122 to i32*, !dbg !2108
  store i32 0, i32* %123, align 4, !dbg !2108, !tbaa !485
  %124 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !2108
  %125 = bitcast i8* %124 to i32*, !dbg !2108
  store i32 0, i32* %125, align 8, !dbg !2108, !tbaa !485
  %126 = getelementptr inbounds i8, i8* %71, i64 4, !dbg !2108
  %127 = bitcast i8* %126 to i32*, !dbg !2108
  store i32 0, i32* %127, align 4, !dbg !2108, !tbaa !485
  br label %128

; <label>:128:                                    ; preds = %121, %106
  %129 = phi i8 [ 0, %121 ], [ %120, %106 ]
  %130 = getelementptr inbounds i8, i8* %71, i64 16, !dbg !2108
  store i8 %129, i8* %130, align 8, !dbg !2108
  %131 = load i16, i16* %80, align 2, !dbg !2111, !tbaa !974
  %132 = icmp eq i16 %131, 0, !dbg !2112
  br i1 %132, label %157, label %133, !dbg !2113

; <label>:133:                                    ; preds = %128
  %134 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2114, !tbaa !501
  %135 = icmp eq %struct.tcp_pcb* %134, %0, !dbg !2114
  br i1 %135, label %136, label %140, !dbg !2115

; <label>:136:                                    ; preds = %133
  %137 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2116
  %138 = bitcast %struct.tcp_pcb** %137 to i64*, !dbg !2116
  %139 = load i64, i64* %138, align 8, !dbg !2116, !tbaa !533
  store i64 %139, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2116, !tbaa !501
  br label %155, !dbg !2116

; <label>:140:                                    ; preds = %133, %143
  %141 = phi %struct.tcp_pcb* [ %145, %143 ], [ %134, %133 ], !dbg !2118
  %142 = icmp eq %struct.tcp_pcb* %141, null, !dbg !2121
  br i1 %142, label %153, label %143, !dbg !2118

; <label>:143:                                    ; preds = %140
  %144 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %141, i64 0, i32 6, !dbg !2123
  %145 = load %struct.tcp_pcb*, %struct.tcp_pcb** %144, align 8, !dbg !2123, !tbaa !533
  %146 = icmp eq %struct.tcp_pcb* %145, %0, !dbg !2123
  br i1 %146, label %147, label %140, !dbg !2126, !llvm.loop !2127

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %141, i64 0, i32 6, !dbg !2123
  %149 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2128
  %150 = bitcast %struct.tcp_pcb** %149 to i64*, !dbg !2128
  %151 = load i64, i64* %150, align 8, !dbg !2128, !tbaa !533
  %152 = bitcast %struct.tcp_pcb** %148 to i64*, !dbg !2128
  store i64 %151, i64* %152, align 8, !dbg !2128, !tbaa !533
  br label %155, !dbg !2128

; <label>:153:                                    ; preds = %140
  %154 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2115
  br label %155, !dbg !2115

; <label>:155:                                    ; preds = %153, %147, %136
  %156 = phi %struct.tcp_pcb** [ %154, %153 ], [ %149, %147 ], [ %137, %136 ], !dbg !2115
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %156, align 8, !dbg !2115, !tbaa !533
  br label %157, !dbg !2130

; <label>:157:                                    ; preds = %128, %155
  %158 = load i32, i32* %7, align 8, !dbg !2133, !tbaa !457
  %159 = icmp eq i32 %158, 1, !dbg !2133
  br i1 %159, label %160, label %161, !dbg !2134

; <label>:160:                                    ; preds = %157
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #7, !dbg !2135
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !2136
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2136
  unreachable, !dbg !2136

; <label>:161:                                    ; preds = %157
  %162 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !2137
  tail call void @memp_free(i32 1, i8* %162) #7, !dbg !2138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2139
  %163 = getelementptr inbounds i8, i8* %71, i64 80, !dbg !2140
  %164 = bitcast i8* %163 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !2140
  store i8 (i8*, %struct.tcp_pcb*, i8)* @tcp_accept_null, i8 (i8*, %struct.tcp_pcb*, i8)** %164, align 8, !dbg !2141, !tbaa !2142
  %165 = load i64, i64* bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i64*), align 8, !dbg !2143, !tbaa !485
  %166 = getelementptr inbounds i8, i8* %71, i64 56, !dbg !2143
  %167 = bitcast i8* %166 to i64*, !dbg !2143
  store i64 %165, i64* %167, align 8, !dbg !2143, !tbaa !533
  store i8* %71, i8** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to i8**), align 8, !dbg !2143, !tbaa !485
  tail call void @tcp_timer_needed() #7, !dbg !2143
  br label %168, !dbg !2146

; <label>:168:                                    ; preds = %60, %65, %70, %161
  %169 = phi %struct.tcp_pcb_listen* [ %72, %161 ], [ %72, %70 ], [ null, %65 ], [ null, %60 ], !dbg !2147
  %170 = phi i8 [ 0, %161 ], [ -1, %70 ], [ -8, %65 ], [ -8, %60 ], !dbg !2147
  %171 = icmp eq i8* %2, null, !dbg !2148
  br i1 %171, label %173, label %172, !dbg !2150

; <label>:172:                                    ; preds = %168
  store i8 %170, i8* %2, align 1, !dbg !2151, !tbaa !485
  br label %173, !dbg !2153

; <label>:173:                                    ; preds = %168, %172
  %174 = bitcast %struct.tcp_pcb_listen* %169 to %struct.tcp_pcb*, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  ret %struct.tcp_pcb* %174, !dbg !2155
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal signext i8 @tcp_accept_null(i8* nocapture readnone, %struct.tcp_pcb*, i8 signext) #0 !dbg !2156 {
  %4 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2164
  br i1 %4, label %5, label %6, !dbg !2167

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i64 0, i64 0)) #8, !dbg !2168
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2171
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2171
  unreachable, !dbg !2171

; <label>:6:                                      ; preds = %3
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %1, i32 1) #7, !dbg !2177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  ret i8 -13, !dbg !2179
}

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_update_rcv_ann_wnd(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2180 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2190
  br i1 %2, label %3, label %4, !dbg !2193

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !2194
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2197
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2197
  unreachable, !dbg !2197

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2201
  %6 = load i32, i32* %5, align 4, !dbg !2201, !tbaa !970
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2202
  %8 = load i32, i32* %7, align 8, !dbg !2202, !tbaa !1174
  %9 = add i32 %8, %6, !dbg !2203
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2205
  %11 = load i32, i32* %10, align 8, !dbg !2205, !tbaa !2206
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2205
  %13 = load i16, i16* %12, align 2, !dbg !2205, !tbaa !777
  %14 = zext i16 %13 to i32, !dbg !2205
  %15 = sub i32 %9, %11, !dbg !2205
  %16 = sub i32 %15, %14, !dbg !2205
  %17 = icmp sgt i32 %16, -1, !dbg !2205
  br i1 %17, label %23, label %18, !dbg !2207

; <label>:18:                                     ; preds = %4
  %19 = sub i32 %6, %11, !dbg !2208
  %20 = icmp sgt i32 %19, 0, !dbg !2208
  %21 = sub i32 %11, %6, !dbg !2209
  %22 = select i1 %20, i32 0, i32 %21, !dbg !2210
  br label %23, !dbg !2210

; <label>:23:                                     ; preds = %18, %4
  %24 = phi i32 [ %8, %4 ], [ %22, %18 ]
  %25 = phi i32 [ %15, %4 ], [ 0, %18 ], !dbg !2211
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2212
  store i32 %24, i32* %26, align 4, !dbg !2212, !tbaa !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2215
  ret i32 %25, !dbg !2215
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recved(%struct.tcp_pcb*, i16 zeroext) local_unnamed_addr #0 !dbg !2216 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2226
  br i1 %3, label %4, label %5, !dbg !2229

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #8, !dbg !2230
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2233
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2233
  unreachable, !dbg !2233

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2237
  %7 = load i32, i32* %6, align 8, !dbg !2237, !tbaa !457
  %8 = icmp eq i32 %7, 1, !dbg !2237
  br i1 %8, label %9, label %10, !dbg !2240

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !2241
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2244
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2244
  unreachable, !dbg !2244

; <label>:10:                                     ; preds = %5
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18, !dbg !2248
  %12 = load i32, i32* %11, align 8, !dbg !2248, !tbaa !1174
  %13 = zext i16 %1 to i32, !dbg !2249
  %14 = add i32 %12, %13, !dbg !2250
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2252
  %16 = load i16, i16* %15, align 2, !dbg !2252, !tbaa !513
  %17 = and i16 %16, 256, !dbg !2252
  %18 = icmp eq i16 %17, 0, !dbg !2252
  %19 = select i1 %18, i32 65535, i32 262142, !dbg !2252
  %20 = icmp ugt i32 %14, %19, !dbg !2254
  %21 = icmp ult i32 %14, %12, !dbg !2255
  %22 = or i1 %21, %20, !dbg !2256
  %23 = select i1 %22, i32 %19, i32 %14, !dbg !2256
  store i32 %23, i32* %11, align 8, !dbg !2257, !tbaa !1174
  %24 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2261
  %25 = load i32, i32* %24, align 4, !dbg !2261, !tbaa !970
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 20, !dbg !2263
  %27 = load i32, i32* %26, align 8, !dbg !2263, !tbaa !2206
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2263
  %29 = load i16, i16* %28, align 2, !dbg !2263, !tbaa !777
  %30 = zext i16 %29 to i32, !dbg !2263
  %31 = sub i32 %25, %27, !dbg !2264
  %32 = add i32 %31, %23, !dbg !2263
  %33 = sub i32 %32, %30, !dbg !2263
  %34 = icmp sgt i32 %33, -1, !dbg !2263
  br i1 %34, label %40, label %35, !dbg !2265

; <label>:35:                                     ; preds = %10
  %36 = icmp sgt i32 %31, 0, !dbg !2266
  %37 = sub i32 %27, %25, !dbg !2267
  %38 = select i1 %36, i32 0, i32 %37, !dbg !2268
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2269
  store i32 %38, i32* %39, align 4, !dbg !2270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  br label %46, !dbg !2273

; <label>:40:                                     ; preds = %10
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 19, !dbg !2274
  store i32 %23, i32* %41, align 4, !dbg !2275, !tbaa !2214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2271
  %42 = icmp ugt i32 %32, 5839, !dbg !2276
  br i1 %42, label %43, label %46, !dbg !2273

; <label>:43:                                     ; preds = %40
  %44 = or i16 %16, 2, !dbg !2278
  store i16 %44, i16* %15, align 2, !dbg !2278, !tbaa !513
  %45 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2281
  br label %46, !dbg !2282

; <label>:46:                                     ; preds = %35, %43, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2283
  ret void, !dbg !2283
}

; Function Attrs: noredzone
declare dso_local signext i8 @tcp_output(%struct.tcp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_connect(%struct.tcp_pcb*, %struct.ip_addr*, i16 zeroext, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !2284 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2318
  br i1 %5, label %6, label %7, !dbg !2321

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0)) #8, !dbg !2322
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2325
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2325
  unreachable, !dbg !2325

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.ip_addr* %1, null, !dbg !2329
  br i1 %8, label %9, label %10, !dbg !2332

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2333
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2336
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2336
  unreachable, !dbg !2336

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2340
  %12 = load i32, i32* %11, align 8, !dbg !2340, !tbaa !457
  %13 = icmp eq i32 %12, 0, !dbg !2340
  br i1 %13, label %15, label %14, !dbg !2343

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2344
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2347
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2347
  unreachable, !dbg !2347

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !2351
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !2355
  %18 = load i8, i8* %17, align 4, !dbg !2355, !tbaa !1820
  %19 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 1, !dbg !2355
  store i8 %18, i8* %19, align 4, !dbg !2355, !tbaa !2358
  %20 = load i8, i8* %17, align 4, !dbg !2359, !tbaa !1820
  %21 = icmp eq i8 %20, 6, !dbg !2359
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2361
  %23 = load i32, i32* %22, align 4, !dbg !2361, !tbaa !485
  %24 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2361
  store i32 %23, i32* %24, align 8, !dbg !2361, !tbaa !485
  br i1 %21, label %25, label %37, !dbg !2364

; <label>:25:                                     ; preds = %15
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2361
  %27 = load i32, i32* %26, align 4, !dbg !2361, !tbaa !485
  %28 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2361
  store i32 %27, i32* %28, align 4, !dbg !2361, !tbaa !485
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2361
  %30 = load i32, i32* %29, align 4, !dbg !2361, !tbaa !485
  %31 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2361
  store i32 %30, i32* %31, align 8, !dbg !2361, !tbaa !485
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2361
  %33 = load i32, i32* %32, align 4, !dbg !2361, !tbaa !485
  %34 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2361
  store i32 %33, i32* %34, align 4, !dbg !2361, !tbaa !485
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !2361
  %36 = load i8, i8* %35, align 4, !dbg !2361, !tbaa !485
  br label %41, !dbg !2365

; <label>:37:                                     ; preds = %15
  %38 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2366
  store i32 0, i32* %38, align 4, !dbg !2366, !tbaa !485
  %39 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2366
  store i32 0, i32* %39, align 8, !dbg !2366, !tbaa !485
  %40 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2366
  store i32 0, i32* %40, align 4, !dbg !2366, !tbaa !485
  br label %41

; <label>:41:                                     ; preds = %37, %25
  %42 = phi i8 [ 0, %37 ], [ %36, %25 ]
  %43 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2366
  store i8 %42, i8* %43, align 8, !dbg !2366
  %44 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !2369
  store i16 %2, i16* %44, align 8, !dbg !2370, !tbaa !976
  %45 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 2, !dbg !2371
  %46 = load i8, i8* %45, align 8, !dbg !2371, !tbaa !2373
  %47 = icmp eq i8 %46, 0, !dbg !2374
  br i1 %47, label %50, label %48, !dbg !2375

; <label>:48:                                     ; preds = %41
  %49 = tail call %struct.netif* @netif_get_by_index(i8 zeroext %46) #7, !dbg !2376
  br label %59, !dbg !2378

; <label>:50:                                     ; preds = %41
  %51 = icmp eq i8 %18, 6, !dbg !2379
  br i1 %51, label %52, label %56, !dbg !2379

; <label>:52:                                     ; preds = %50
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, !dbg !2379
  %54 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2379
  %55 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %53, %struct.ip6_addr* nonnull %54) #7, !dbg !2379
  br label %59, !dbg !2379

; <label>:56:                                     ; preds = %50
  %57 = bitcast %struct.ip_addr* %16 to %struct.ip4_addr*, !dbg !2379
  %58 = tail call %struct.netif* @ip4_route(%struct.ip4_addr* nonnull %57) #7, !dbg !2379
  br label %59, !dbg !2379

; <label>:59:                                     ; preds = %52, %56, %48
  %60 = phi %struct.netif* [ %49, %48 ], [ %55, %52 ], [ %58, %56 ], !dbg !2381
  %61 = icmp eq %struct.netif* %60, null, !dbg !2382
  br i1 %61, label %368, label %62, !dbg !2384

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 1, !dbg !2385
  %64 = load i8, i8* %63, align 4, !dbg !2385, !tbaa !1919
  %65 = icmp eq i8 %64, 6, !dbg !2385
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2385
  %67 = load i32, i32* %66, align 8, !dbg !2385, !tbaa !485
  %68 = icmp eq i32 %67, 0, !dbg !2385
  br i1 %65, label %69, label %82, !dbg !2386

; <label>:69:                                     ; preds = %62
  br i1 %68, label %70, label %118, !dbg !2385

; <label>:70:                                     ; preds = %69
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2385
  %72 = load i32, i32* %71, align 4, !dbg !2385, !tbaa !485
  %73 = icmp eq i32 %72, 0, !dbg !2385
  br i1 %73, label %74, label %118, !dbg !2385

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2385
  %76 = load i32, i32* %75, align 8, !dbg !2385, !tbaa !485
  %77 = icmp eq i32 %76, 0, !dbg !2385
  br i1 %77, label %78, label %118, !dbg !2385

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2385
  %80 = load i32, i32* %79, align 4, !dbg !2385, !tbaa !485
  %81 = icmp eq i32 %80, 0, !dbg !2385
  br i1 %81, label %83, label %118, !dbg !2385

; <label>:82:                                     ; preds = %62
  br i1 %68, label %83, label %118, !dbg !2386

; <label>:83:                                     ; preds = %78, %82
  %84 = load i8, i8* %17, align 4, !dbg !2387, !tbaa !1820
  %85 = icmp eq i8 %84, 6, !dbg !2387
  br i1 %85, label %88, label %86, !dbg !2387

; <label>:86:                                     ; preds = %83
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 1, !dbg !2387
  br label %92, !dbg !2389

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, !dbg !2387
  %90 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %60, %struct.ip6_addr* nonnull %89) #7, !dbg !2387
  %91 = icmp eq %struct.ip_addr* %90, null, !dbg !2390
  br i1 %91, label %368, label %92, !dbg !2389

; <label>:92:                                     ; preds = %86, %88
  %93 = phi %struct.ip_addr* [ %87, %86 ], [ %90, %88 ]
  %94 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 1, !dbg !2392
  %95 = load i8, i8* %94, align 4, !dbg !2392, !tbaa !1820
  store i8 %95, i8* %63, align 4, !dbg !2392, !tbaa !1919
  %96 = load i8, i8* %94, align 4, !dbg !2395, !tbaa !1820
  %97 = icmp eq i8 %96, 6, !dbg !2395
  %98 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !2397
  %99 = load i32, i32* %98, align 4, !dbg !2397, !tbaa !485
  store i32 %99, i32* %66, align 8, !dbg !2397, !tbaa !485
  br i1 %97, label %100, label %113, !dbg !2400

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !2397
  %102 = load i32, i32* %101, align 4, !dbg !2397, !tbaa !485
  %103 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2397
  store i32 %102, i32* %103, align 4, !dbg !2397, !tbaa !485
  %104 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !2397
  %105 = load i32, i32* %104, align 4, !dbg !2397, !tbaa !485
  %106 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2397
  store i32 %105, i32* %106, align 8, !dbg !2397, !tbaa !485
  %107 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !2397
  %108 = load i32, i32* %107, align 4, !dbg !2397, !tbaa !485
  %109 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2397
  store i32 %108, i32* %109, align 4, !dbg !2397, !tbaa !485
  %110 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %93, i64 0, i32 0, i32 0, i32 1, !dbg !2397
  %111 = load i8, i8* %110, align 4, !dbg !2397, !tbaa !485
  %112 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2397
  store i8 %111, i8* %112, align 8, !dbg !2397, !tbaa !485
  br label %118, !dbg !2401

; <label>:113:                                    ; preds = %92
  %114 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2402
  store i32 0, i32* %114, align 4, !dbg !2402, !tbaa !485
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2402
  store i32 0, i32* %115, align 8, !dbg !2402, !tbaa !485
  %116 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2402
  store i32 0, i32* %116, align 4, !dbg !2402, !tbaa !485
  %117 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2402
  store i8 0, i8* %117, align 8, !dbg !2402, !tbaa !485
  br label %118

; <label>:118:                                    ; preds = %69, %70, %74, %78, %82, %100, %113
  %119 = phi i32 [ %67, %69 ], [ 0, %70 ], [ 0, %74 ], [ 0, %78 ], [ %67, %82 ], [ %99, %100 ], [ %99, %113 ]
  %120 = phi i8 [ 6, %69 ], [ 6, %70 ], [ 6, %74 ], [ 6, %78 ], [ %64, %82 ], [ %95, %100 ], [ %95, %113 ]
  %121 = load i8, i8* %19, align 4, !dbg !2405, !tbaa !2358
  %122 = icmp eq i8 %121, 6, !dbg !2405
  br i1 %122, label %123, label %134, !dbg !2407

; <label>:123:                                    ; preds = %118
  %124 = load i8, i8* %43, align 8, !dbg !2408, !tbaa !485
  %125 = icmp eq i8 %124, 0, !dbg !2408
  br i1 %125, label %126, label %134, !dbg !2408

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %24, align 8, !dbg !2408, !tbaa !485
  %128 = and i32 %127, 49407, !dbg !2408
  %129 = icmp eq i32 %128, 33022, !dbg !2408
  br i1 %129, label %130, label %134, !dbg !2409

; <label>:130:                                    ; preds = %126
  %131 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 23, !dbg !2410
  %132 = load i8, i8* %131, align 8, !dbg !2410, !tbaa !1836
  %133 = add i8 %132, 1, !dbg !2410
  store i8 %133, i8* %43, align 8, !dbg !2410, !tbaa !485
  br label %134, !dbg !2412

; <label>:134:                                    ; preds = %123, %130, %126, %118
  %135 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !2413
  %136 = load i16, i16* %135, align 2, !dbg !2413, !tbaa !974
  %137 = icmp eq i16 %136, 0, !dbg !2415
  br i1 %137, label %138, label %199, !dbg !2416

; <label>:138:                                    ; preds = %134
  %139 = load i16, i16* @tcp_port, align 2, !dbg !2420
  %140 = load %struct.tcp_pcb*, %struct.tcp_pcb** bitcast (%union.tcp_listen_pcbs_t* @tcp_listen_pcbs to %struct.tcp_pcb**), align 8, !dbg !2421, !tbaa !501
  %141 = icmp eq %struct.tcp_pcb* %140, null
  %142 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8
  %143 = icmp eq %struct.tcp_pcb* %142, null
  %144 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8
  %145 = icmp eq %struct.tcp_pcb* %144, null
  %146 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8
  %147 = icmp eq %struct.tcp_pcb* %146, null
  br label %148, !dbg !2422

; <label>:148:                                    ; preds = %163, %138
  %149 = phi i16 [ %139, %138 ], [ %153, %163 ], !dbg !2417
  %150 = phi i16 [ 0, %138 ], [ %164, %163 ], !dbg !2423
  %151 = add i16 %149, 1, !dbg !2424
  %152 = icmp eq i16 %151, -1, !dbg !2425
  %153 = select i1 %152, i16 -16384, i16 %151, !dbg !2426
  br i1 %141, label %167, label %158, !dbg !2429

; <label>:154:                                    ; preds = %158
  %155 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %159, i64 0, i32 6, !dbg !2430
  %156 = load %struct.tcp_pcb*, %struct.tcp_pcb** %155, align 8, !dbg !2421, !tbaa !501
  %157 = icmp eq %struct.tcp_pcb* %156, null, !dbg !2431
  br i1 %157, label %167, label %158, !dbg !2429, !llvm.loop !1879

; <label>:158:                                    ; preds = %148, %154
  %159 = phi %struct.tcp_pcb* [ %156, %154 ], [ %140, %148 ]
  %160 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %159, i64 0, i32 10, !dbg !2432
  %161 = load i16, i16* %160, align 2, !dbg !2432, !tbaa !974
  %162 = icmp eq i16 %161, %153, !dbg !2433
  br i1 %162, label %163, label %154, !dbg !2434

; <label>:163:                                    ; preds = %158, %168, %178, %188
  %164 = add nuw nsw i16 %150, 1, !dbg !2435
  %165 = icmp ugt i16 %150, 16382, !dbg !2436
  br i1 %165, label %166, label %148, !dbg !2437

; <label>:166:                                    ; preds = %163
  store i16 %153, i16* @tcp_port, align 2, !dbg !2420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  store i16 0, i16* %135, align 2, !dbg !2439, !tbaa !974
  br label %368, !dbg !2440

; <label>:167:                                    ; preds = %154, %148
  br i1 %143, label %177, label %168, !dbg !2429

; <label>:168:                                    ; preds = %167, %173
  %169 = phi %struct.tcp_pcb* [ %175, %173 ], [ %142, %167 ]
  %170 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 10, !dbg !2432
  %171 = load i16, i16* %170, align 2, !dbg !2432, !tbaa !974
  %172 = icmp eq i16 %171, %153, !dbg !2433
  br i1 %172, label %163, label %173, !dbg !2434

; <label>:173:                                    ; preds = %168
  %174 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %169, i64 0, i32 6, !dbg !2430
  %175 = load %struct.tcp_pcb*, %struct.tcp_pcb** %174, align 8, !dbg !2421, !tbaa !501
  %176 = icmp eq %struct.tcp_pcb* %175, null, !dbg !2431
  br i1 %176, label %177, label %168, !dbg !2429, !llvm.loop !1879

; <label>:177:                                    ; preds = %173, %167
  br i1 %145, label %187, label %178, !dbg !2429

; <label>:178:                                    ; preds = %177, %183
  %179 = phi %struct.tcp_pcb* [ %185, %183 ], [ %144, %177 ]
  %180 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %179, i64 0, i32 10, !dbg !2432
  %181 = load i16, i16* %180, align 2, !dbg !2432, !tbaa !974
  %182 = icmp eq i16 %181, %153, !dbg !2433
  br i1 %182, label %163, label %183, !dbg !2434

; <label>:183:                                    ; preds = %178
  %184 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %179, i64 0, i32 6, !dbg !2430
  %185 = load %struct.tcp_pcb*, %struct.tcp_pcb** %184, align 8, !dbg !2421, !tbaa !501
  %186 = icmp eq %struct.tcp_pcb* %185, null, !dbg !2431
  br i1 %186, label %187, label %178, !dbg !2429, !llvm.loop !1879

; <label>:187:                                    ; preds = %183, %177
  br i1 %147, label %197, label %188, !dbg !2429

; <label>:188:                                    ; preds = %187, %193
  %189 = phi %struct.tcp_pcb* [ %195, %193 ], [ %146, %187 ]
  %190 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %189, i64 0, i32 10, !dbg !2432
  %191 = load i16, i16* %190, align 2, !dbg !2432, !tbaa !974
  %192 = icmp eq i16 %191, %153, !dbg !2433
  br i1 %192, label %163, label %193, !dbg !2434

; <label>:193:                                    ; preds = %188
  %194 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %189, i64 0, i32 6, !dbg !2430
  %195 = load %struct.tcp_pcb*, %struct.tcp_pcb** %194, align 8, !dbg !2421, !tbaa !501
  %196 = icmp eq %struct.tcp_pcb* %195, null, !dbg !2431
  br i1 %196, label %197, label %188, !dbg !2429, !llvm.loop !1879

; <label>:197:                                    ; preds = %187, %193
  store i16 %153, i16* @tcp_port, align 2, !dbg !2420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2438
  store i16 %153, i16* %135, align 2, !dbg !2439, !tbaa !974
  %198 = icmp eq i16 %153, 0, !dbg !2441
  br i1 %198, label %368, label %296, !dbg !2440

; <label>:199:                                    ; preds = %134
  %200 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 3, !dbg !2443
  %201 = load i8, i8* %200, align 1, !dbg !2443, !tbaa !812
  %202 = and i8 %201, 4, !dbg !2443
  %203 = icmp eq i8 %202, 0, !dbg !2443
  br i1 %203, label %296, label %204, !dbg !2444

; <label>:204:                                    ; preds = %199
  %205 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1
  %206 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2
  %207 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3
  %208 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %209 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %210 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %211 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %212 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %213 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2447, !tbaa !501
  %214 = icmp eq %struct.tcp_pcb* %213, null, !dbg !2453
  br i1 %214, label %293, label %215, !dbg !2454

; <label>:215:                                    ; preds = %204
  %216 = icmp eq i8 %120, 6
  br label %217, !dbg !2455

; <label>:217:                                    ; preds = %215, %289
  %218 = phi %struct.tcp_pcb* [ %291, %289 ], [ %213, %215 ]
  %219 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 10, !dbg !2455
  %220 = load i16, i16* %219, align 2, !dbg !2455, !tbaa !974
  %221 = icmp eq i16 %220, %136, !dbg !2458
  br i1 %221, label %222, label %289, !dbg !2459

; <label>:222:                                    ; preds = %217
  %223 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 11, !dbg !2460
  %224 = load i16, i16* %223, align 8, !dbg !2460, !tbaa !976
  %225 = icmp eq i16 %224, %2, !dbg !2461
  br i1 %225, label %226, label %289, !dbg !2462

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 1, !dbg !2463
  %228 = load i8, i8* %227, align 4, !dbg !2463, !tbaa !1919
  %229 = icmp eq i8 %228, %120, !dbg !2463
  br i1 %229, label %230, label %289, !dbg !2464

; <label>:230:                                    ; preds = %226
  %231 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2463
  %232 = load i32, i32* %231, align 8, !dbg !2463, !tbaa !485
  %233 = icmp eq i32 %232, %119, !dbg !2463
  br i1 %216, label %234, label %255, !dbg !2464

; <label>:234:                                    ; preds = %230
  br i1 %233, label %235, label %289, !dbg !2463

; <label>:235:                                    ; preds = %234
  %236 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2463
  %237 = load i32, i32* %236, align 4, !dbg !2463, !tbaa !485
  %238 = load i32, i32* %205, align 4, !dbg !2463, !tbaa !485
  %239 = icmp eq i32 %237, %238, !dbg !2463
  br i1 %239, label %240, label %289, !dbg !2463

; <label>:240:                                    ; preds = %235
  %241 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2463
  %242 = load i32, i32* %241, align 8, !dbg !2463, !tbaa !485
  %243 = load i32, i32* %206, align 8, !dbg !2463, !tbaa !485
  %244 = icmp eq i32 %242, %243, !dbg !2463
  br i1 %244, label %245, label %289, !dbg !2463

; <label>:245:                                    ; preds = %240
  %246 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2463
  %247 = load i32, i32* %246, align 4, !dbg !2463, !tbaa !485
  %248 = load i32, i32* %207, align 4, !dbg !2463, !tbaa !485
  %249 = icmp eq i32 %247, %248, !dbg !2463
  br i1 %249, label %250, label %289, !dbg !2463

; <label>:250:                                    ; preds = %245
  %251 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2463
  %252 = load i8, i8* %251, align 8, !dbg !2463, !tbaa !485
  %253 = load i8, i8* %209, align 8, !dbg !2463, !tbaa !485
  %254 = icmp eq i8 %252, %253, !dbg !2463
  br i1 %254, label %256, label %289, !dbg !2463

; <label>:255:                                    ; preds = %230
  br i1 %233, label %256, label %289, !dbg !2464

; <label>:256:                                    ; preds = %255, %250
  %257 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 1, !dbg !2465
  %258 = load i8, i8* %257, align 4, !dbg !2465, !tbaa !2358
  %259 = load i8, i8* %17, align 4, !dbg !2465, !tbaa !1820
  %260 = icmp eq i8 %258, %259, !dbg !2465
  br i1 %260, label %261, label %289, !dbg !2466

; <label>:261:                                    ; preds = %256
  %262 = icmp eq i8 %258, 6, !dbg !2465
  %263 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2465
  %264 = load i32, i32* %263, align 8, !dbg !2465, !tbaa !485
  %265 = load i32, i32* %22, align 4, !dbg !2465, !tbaa !485
  %266 = icmp eq i32 %264, %265, !dbg !2465
  br i1 %262, label %267, label %288, !dbg !2466

; <label>:267:                                    ; preds = %261
  br i1 %266, label %268, label %289, !dbg !2465

; <label>:268:                                    ; preds = %267
  %269 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2465
  %270 = load i32, i32* %269, align 4, !dbg !2465, !tbaa !485
  %271 = load i32, i32* %208, align 4, !dbg !2465, !tbaa !485
  %272 = icmp eq i32 %270, %271, !dbg !2465
  br i1 %272, label %273, label %289, !dbg !2465

; <label>:273:                                    ; preds = %268
  %274 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2465
  %275 = load i32, i32* %274, align 8, !dbg !2465, !tbaa !485
  %276 = load i32, i32* %210, align 4, !dbg !2465, !tbaa !485
  %277 = icmp eq i32 %275, %276, !dbg !2465
  br i1 %277, label %278, label %289, !dbg !2465

; <label>:278:                                    ; preds = %273
  %279 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2465
  %280 = load i32, i32* %279, align 4, !dbg !2465, !tbaa !485
  %281 = load i32, i32* %211, align 4, !dbg !2465, !tbaa !485
  %282 = icmp eq i32 %280, %281, !dbg !2465
  br i1 %282, label %283, label %289, !dbg !2465

; <label>:283:                                    ; preds = %278
  %284 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2465
  %285 = load i8, i8* %284, align 8, !dbg !2465, !tbaa !485
  %286 = load i8, i8* %212, align 4, !dbg !2465, !tbaa !485
  %287 = icmp eq i8 %285, %286, !dbg !2465
  br i1 %287, label %368, label %289, !dbg !2465

; <label>:288:                                    ; preds = %261
  br i1 %266, label %368, label %289, !dbg !2466

; <label>:289:                                    ; preds = %256, %226, %217, %222, %234, %235, %240, %245, %250, %255, %267, %268, %273, %278, %283, %288
  %290 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %218, i64 0, i32 6, !dbg !2467
  %291 = load %struct.tcp_pcb*, %struct.tcp_pcb** %290, align 8, !dbg !2447, !tbaa !501
  %292 = icmp eq %struct.tcp_pcb* %291, null, !dbg !2453
  br i1 %292, label %293, label %217, !dbg !2454, !llvm.loop !2468

; <label>:293:                                    ; preds = %289, %204
  %294 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !2447, !tbaa !501
  %295 = icmp eq %struct.tcp_pcb* %294, null, !dbg !2453
  br i1 %295, label %296, label %370, !dbg !2454

; <label>:296:                                    ; preds = %444, %293, %197, %199
  %297 = load i32, i32* @tcp_ticks, align 4, !dbg !2472, !tbaa !414
  %298 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2473, !tbaa !414
  %299 = add i32 %298, %297, !dbg !2473
  store i32 %299, i32* @tcp_next_iss.iss, align 4, !dbg !2473, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2474
  %300 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 17, !dbg !2476
  %301 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 34, !dbg !2477
  store i32 %299, i32* %301, align 8, !dbg !2478, !tbaa !968
  %302 = add i32 %299, -1, !dbg !2479
  %303 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 30, !dbg !2480
  store i32 %302, i32* %303, align 8, !dbg !2481, !tbaa !2482
  %304 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 36, !dbg !2483
  store i32 %302, i32* %304, align 8, !dbg !2484, !tbaa !2485
  %305 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 37, !dbg !2486
  store i32 %302, i32* %305, align 4, !dbg !2487, !tbaa !2488
  %306 = bitcast i32* %300 to <4 x i32>*, !dbg !2489
  store <4 x i32> <i32 0, i32 65535, i32 65535, i32 0>, <4 x i32>* %306, align 4, !dbg !2489, !tbaa !414
  %307 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 38, !dbg !2490
  store i32 262142, i32* %307, align 8, !dbg !2491, !tbaa !699
  %308 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 22, !dbg !2492
  store i16 536, i16* %308, align 2, !dbg !2493, !tbaa !777
  br i1 %122, label %309, label %312, !dbg !2510

; <label>:309:                                    ; preds = %296
  %310 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %16, i64 0, i32 0, i32 0, !dbg !2511
  %311 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %310, %struct.netif* nonnull %60) #7, !dbg !2514
  br label %315, !dbg !2516

; <label>:312:                                    ; preds = %296
  %313 = getelementptr inbounds %struct.netif, %struct.netif* %60, i64 0, i32 17, !dbg !2517
  %314 = load i16, i16* %313, align 2, !dbg !2517, !tbaa !2519
  br label %315

; <label>:315:                                    ; preds = %312, %309
  %316 = phi i16 [ %311, %309 ], [ %314, %312 ], !dbg !2520
  %317 = zext i16 %316 to i32, !dbg !2521
  %318 = icmp eq i16 %316, 0, !dbg !2522
  br i1 %318, label %330, label %319, !dbg !2523

; <label>:319:                                    ; preds = %315
  %320 = load i8, i8* %19, align 4, !dbg !2524, !tbaa !1820
  %321 = icmp eq i8 %320, 6, !dbg !2524
  %322 = select i1 %321, i32 60, i32 40, !dbg !2526
  %323 = icmp ult i32 %322, %317, !dbg !2528
  %324 = sub nsw i32 %317, %322, !dbg !2529
  %325 = and i32 %324, 65535, !dbg !2530
  %326 = select i1 %323, i32 %325, i32 0, !dbg !2530
  %327 = icmp ult i32 %326, 536, !dbg !2531
  %328 = select i1 %327, i32 %326, i32 536, !dbg !2531
  %329 = trunc i32 %328 to i16, !dbg !2531
  br label %330, !dbg !2532

; <label>:330:                                    ; preds = %315, %319
  %331 = phi i16 [ %329, %319 ], [ 536, %315 ], !dbg !2533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2536
  store i16 %331, i16* %308, align 2, !dbg !2537, !tbaa !777
  %332 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 31, !dbg !2538
  store i32 1, i32* %332, align 4, !dbg !2539, !tbaa !771
  %333 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 51, !dbg !2540
  store i8 (i8*, %struct.tcp_pcb*, i8)* %3, i8 (i8*, %struct.tcp_pcb*, i8)** %333, align 8, !dbg !2541, !tbaa !2542
  %334 = tail call signext i8 @tcp_enqueue_flags(%struct.tcp_pcb* nonnull %0, i8 zeroext 2) #7, !dbg !2543
  %335 = icmp eq i8 %334, 0, !dbg !2545
  br i1 %335, label %336, label %368, !dbg !2546

; <label>:336:                                    ; preds = %330
  store i32 2, i32* %11, align 8, !dbg !2547, !tbaa !457
  br i1 %137, label %337, label %339, !dbg !2548

; <label>:337:                                    ; preds = %336
  %338 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2549
  br label %363, !dbg !2548

; <label>:339:                                    ; preds = %336
  %340 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !2552, !tbaa !501
  %341 = icmp eq %struct.tcp_pcb* %340, %0, !dbg !2552
  br i1 %341, label %342, label %346, !dbg !2553

; <label>:342:                                    ; preds = %339
  %343 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2554
  %344 = bitcast %struct.tcp_pcb** %343 to i64*, !dbg !2554
  %345 = load i64, i64* %344, align 8, !dbg !2554, !tbaa !533
  store i64 %345, i64* bitcast (%struct.tcp_pcb** @tcp_bound_pcbs to i64*), align 8, !dbg !2554, !tbaa !501
  br label %361, !dbg !2554

; <label>:346:                                    ; preds = %339, %349
  %347 = phi %struct.tcp_pcb* [ %351, %349 ], [ %340, %339 ], !dbg !2556
  %348 = icmp eq %struct.tcp_pcb* %347, null, !dbg !2559
  br i1 %348, label %359, label %349, !dbg !2556

; <label>:349:                                    ; preds = %346
  %350 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %347, i64 0, i32 6, !dbg !2561
  %351 = load %struct.tcp_pcb*, %struct.tcp_pcb** %350, align 8, !dbg !2561, !tbaa !533
  %352 = icmp eq %struct.tcp_pcb* %351, %0, !dbg !2561
  br i1 %352, label %353, label %346, !dbg !2564, !llvm.loop !2565

; <label>:353:                                    ; preds = %349
  %354 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %347, i64 0, i32 6, !dbg !2561
  %355 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2566
  %356 = bitcast %struct.tcp_pcb** %355 to i64*, !dbg !2566
  %357 = load i64, i64* %356, align 8, !dbg !2566, !tbaa !533
  %358 = bitcast %struct.tcp_pcb** %354 to i64*, !dbg !2566
  store i64 %357, i64* %358, align 8, !dbg !2566, !tbaa !533
  br label %361, !dbg !2566

; <label>:359:                                    ; preds = %346
  %360 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 6, !dbg !2553
  br label %361, !dbg !2553

; <label>:361:                                    ; preds = %359, %353, %342
  %362 = phi %struct.tcp_pcb** [ %360, %359 ], [ %355, %353 ], [ %343, %342 ], !dbg !2553
  store %struct.tcp_pcb* null, %struct.tcp_pcb** %362, align 8, !dbg !2553, !tbaa !533
  br label %363, !dbg !2568

; <label>:363:                                    ; preds = %337, %361
  %364 = phi %struct.tcp_pcb** [ %338, %337 ], [ %362, %361 ], !dbg !2549
  %365 = load i64, i64* bitcast (%struct.tcp_pcb** @tcp_active_pcbs to i64*), align 8, !dbg !2549, !tbaa !501
  %366 = bitcast %struct.tcp_pcb** %364 to i64*, !dbg !2549
  store i64 %365, i64* %366, align 8, !dbg !2549, !tbaa !533
  store %struct.tcp_pcb* %0, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2549, !tbaa !501
  tail call void @tcp_timer_needed() #7, !dbg !2549
  store i8 1, i8* @tcp_active_pcbs_changed, align 1, !dbg !2569, !tbaa !485
  %367 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2570
  br label %368, !dbg !2571

; <label>:368:                                    ; preds = %283, %288, %422, %439, %166, %88, %330, %363, %197, %59
  %369 = phi i8 [ -4, %59 ], [ -2, %197 ], [ 0, %363 ], [ %334, %330 ], [ -4, %88 ], [ -2, %166 ], [ -8, %439 ], [ -8, %422 ], [ -8, %288 ], [ -8, %283 ], !dbg !2572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  ret i8 %369, !dbg !2574

; <label>:370:                                    ; preds = %293
  %371 = icmp eq i8 %120, 6
  br label %372, !dbg !2455

; <label>:372:                                    ; preds = %444, %370
  %373 = phi %struct.tcp_pcb* [ %446, %444 ], [ %294, %370 ]
  %374 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 10, !dbg !2455
  %375 = load i16, i16* %374, align 2, !dbg !2455, !tbaa !974
  %376 = icmp eq i16 %375, %136, !dbg !2458
  br i1 %376, label %377, label %444, !dbg !2459

; <label>:377:                                    ; preds = %372
  %378 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 11, !dbg !2460
  %379 = load i16, i16* %378, align 8, !dbg !2460, !tbaa !976
  %380 = icmp eq i16 %379, %2, !dbg !2461
  br i1 %380, label %381, label %444, !dbg !2462

; <label>:381:                                    ; preds = %377
  %382 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 1, !dbg !2463
  %383 = load i8, i8* %382, align 4, !dbg !2463, !tbaa !1919
  %384 = icmp eq i8 %383, %120, !dbg !2463
  br i1 %384, label %385, label %444, !dbg !2464

; <label>:385:                                    ; preds = %381
  %386 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !2463
  %387 = load i32, i32* %386, align 8, !dbg !2463, !tbaa !485
  %388 = icmp eq i32 %387, %119, !dbg !2463
  br i1 %371, label %390, label %389, !dbg !2464

; <label>:389:                                    ; preds = %385
  br i1 %388, label %411, label %444, !dbg !2464

; <label>:390:                                    ; preds = %385
  br i1 %388, label %391, label %444, !dbg !2463

; <label>:391:                                    ; preds = %390
  %392 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !2463
  %393 = load i32, i32* %392, align 4, !dbg !2463, !tbaa !485
  %394 = load i32, i32* %205, align 4, !dbg !2463, !tbaa !485
  %395 = icmp eq i32 %393, %394, !dbg !2463
  br i1 %395, label %396, label %444, !dbg !2463

; <label>:396:                                    ; preds = %391
  %397 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !2463
  %398 = load i32, i32* %397, align 8, !dbg !2463, !tbaa !485
  %399 = load i32, i32* %206, align 8, !dbg !2463, !tbaa !485
  %400 = icmp eq i32 %398, %399, !dbg !2463
  br i1 %400, label %401, label %444, !dbg !2463

; <label>:401:                                    ; preds = %396
  %402 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !2463
  %403 = load i32, i32* %402, align 4, !dbg !2463, !tbaa !485
  %404 = load i32, i32* %207, align 4, !dbg !2463, !tbaa !485
  %405 = icmp eq i32 %403, %404, !dbg !2463
  br i1 %405, label %406, label %444, !dbg !2463

; <label>:406:                                    ; preds = %401
  %407 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !2463
  %408 = load i8, i8* %407, align 8, !dbg !2463, !tbaa !485
  %409 = load i8, i8* %209, align 8, !dbg !2463, !tbaa !485
  %410 = icmp eq i8 %408, %409, !dbg !2463
  br i1 %410, label %411, label %444, !dbg !2463

; <label>:411:                                    ; preds = %406, %389
  %412 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 1, !dbg !2465
  %413 = load i8, i8* %412, align 4, !dbg !2465, !tbaa !2358
  %414 = load i8, i8* %17, align 4, !dbg !2465, !tbaa !1820
  %415 = icmp eq i8 %413, %414, !dbg !2465
  br i1 %415, label %416, label %444, !dbg !2466

; <label>:416:                                    ; preds = %411
  %417 = icmp eq i8 %413, 6, !dbg !2465
  %418 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !2465
  %419 = load i32, i32* %418, align 8, !dbg !2465, !tbaa !485
  %420 = load i32, i32* %22, align 4, !dbg !2465, !tbaa !485
  %421 = icmp eq i32 %419, %420, !dbg !2465
  br i1 %417, label %423, label %422, !dbg !2466

; <label>:422:                                    ; preds = %416
  br i1 %421, label %368, label %444, !dbg !2466

; <label>:423:                                    ; preds = %416
  br i1 %421, label %424, label %444, !dbg !2465

; <label>:424:                                    ; preds = %423
  %425 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !2465
  %426 = load i32, i32* %425, align 4, !dbg !2465, !tbaa !485
  %427 = load i32, i32* %208, align 4, !dbg !2465, !tbaa !485
  %428 = icmp eq i32 %426, %427, !dbg !2465
  br i1 %428, label %429, label %444, !dbg !2465

; <label>:429:                                    ; preds = %424
  %430 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !2465
  %431 = load i32, i32* %430, align 8, !dbg !2465, !tbaa !485
  %432 = load i32, i32* %210, align 4, !dbg !2465, !tbaa !485
  %433 = icmp eq i32 %431, %432, !dbg !2465
  br i1 %433, label %434, label %444, !dbg !2465

; <label>:434:                                    ; preds = %429
  %435 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !2465
  %436 = load i32, i32* %435, align 4, !dbg !2465, !tbaa !485
  %437 = load i32, i32* %211, align 4, !dbg !2465, !tbaa !485
  %438 = icmp eq i32 %436, %437, !dbg !2465
  br i1 %438, label %439, label %444, !dbg !2465

; <label>:439:                                    ; preds = %434
  %440 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 1, i32 0, i32 0, i32 1, !dbg !2465
  %441 = load i8, i8* %440, align 8, !dbg !2465, !tbaa !485
  %442 = load i8, i8* %212, align 4, !dbg !2465, !tbaa !485
  %443 = icmp eq i8 %441, %442, !dbg !2465
  br i1 %443, label %368, label %444, !dbg !2465

; <label>:444:                                    ; preds = %439, %434, %429, %424, %423, %422, %411, %406, %401, %396, %391, %390, %389, %381, %377, %372
  %445 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %373, i64 0, i32 6, !dbg !2467
  %446 = load %struct.tcp_pcb*, %struct.tcp_pcb** %445, align 8, !dbg !2447, !tbaa !501
  %447 = icmp eq %struct.tcp_pcb* %446, null, !dbg !2453
  br i1 %447, label %296, label %372, !dbg !2454, !llvm.loop !2468
}

; Function Attrs: noredzone
declare dso_local %struct.netif* @netif_get_by_index(i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.netif* @ip4_route(%struct.ip4_addr*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i32 @tcp_next_iss(%struct.tcp_pcb* readnone) local_unnamed_addr #0 !dbg !282 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2576
  br i1 %2, label %3, label %4, !dbg !2579

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !2580
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2583
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2583
  unreachable, !dbg !2583

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* @tcp_ticks, align 4, !dbg !2587, !tbaa !414
  %6 = load i32, i32* @tcp_next_iss.iss, align 4, !dbg !2588, !tbaa !414
  %7 = add i32 %6, %5, !dbg !2588
  store i32 %7, i32* @tcp_next_iss.iss, align 4, !dbg !2588, !tbaa !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  ret i32 %7, !dbg !2589
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @tcp_eff_send_mss_netif(i16 zeroext, %struct.netif*, %struct.ip_addr*) local_unnamed_addr #0 !dbg !2495 {
  %4 = icmp eq %struct.ip_addr* %2, null, !dbg !2593
  br i1 %4, label %5, label %6, !dbg !2596

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !2597
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2600
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2600
  unreachable, !dbg !2600

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 1, !dbg !2604
  %8 = load i8, i8* %7, align 4, !dbg !2604, !tbaa !1820
  %9 = icmp eq i8 %8, 6, !dbg !2604
  br i1 %9, label %10, label %13, !dbg !2605

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %2, i64 0, i32 0, i32 0, !dbg !2606
  %12 = tail call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %11, %struct.netif* %1) #7, !dbg !2607
  br label %18, !dbg !2609

; <label>:13:                                     ; preds = %6
  %14 = icmp eq %struct.netif* %1, null, !dbg !2610
  br i1 %14, label %34, label %15, !dbg !2611

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 17, !dbg !2612
  %17 = load i16, i16* %16, align 2, !dbg !2612, !tbaa !2519
  br label %18

; <label>:18:                                     ; preds = %15, %10
  %19 = phi i16 [ %12, %10 ], [ %17, %15 ], !dbg !2613
  %20 = zext i16 %19 to i32, !dbg !2614
  %21 = icmp eq i16 %19, 0, !dbg !2615
  br i1 %21, label %34, label %22, !dbg !2616

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %7, align 4, !dbg !2617, !tbaa !1820
  %24 = icmp eq i8 %23, 6, !dbg !2617
  %25 = select i1 %24, i32 60, i32 40, !dbg !2618
  %26 = icmp ult i32 %25, %20, !dbg !2619
  %27 = sub nsw i32 %20, %25, !dbg !2620
  %28 = and i32 %27, 65535, !dbg !2621
  %29 = select i1 %26, i32 %28, i32 0, !dbg !2621
  %30 = zext i16 %0 to i32, !dbg !2622
  %31 = icmp ugt i32 %29, %30, !dbg !2622
  %32 = select i1 %31, i32 %30, i32 %29, !dbg !2622
  %33 = trunc i32 %32 to i16, !dbg !2622
  br label %34, !dbg !2623

; <label>:34:                                     ; preds = %22, %18, %13
  %35 = phi i16 [ %0, %13 ], [ %33, %22 ], [ %0, %18 ], !dbg !2624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2625
  ret i16 %35, !dbg !2625
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
define dso_local void @tcp_free_ooseq(%struct.tcp_pcb* nocapture) local_unnamed_addr #0 !dbg !874 {
  %2 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2627
  %3 = load %struct.tcp_seg*, %struct.tcp_seg** %2, align 8, !dbg !2627, !tbaa !852
  %4 = icmp eq %struct.tcp_seg* %3, null, !dbg !2628
  br i1 %4, label %18, label %5, !dbg !2629

; <label>:5:                                      ; preds = %1, %14
  %6 = phi %struct.tcp_seg* [ %8, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 0, !dbg !2632
  %8 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8, !dbg !2632, !tbaa !880
  %9 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %6, i64 0, i32 1, !dbg !2636
  %10 = load %struct.pbuf*, %struct.pbuf** %9, align 8, !dbg !2636, !tbaa !892
  %11 = icmp eq %struct.pbuf* %10, null, !dbg !2637
  br i1 %11, label %14, label %12, !dbg !2638

; <label>:12:                                     ; preds = %5
  %13 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %10) #7, !dbg !2639
  br label %14, !dbg !2640

; <label>:14:                                     ; preds = %12, %5
  %15 = bitcast %struct.tcp_seg* %6 to i8*, !dbg !2641
  tail call void @memp_free(i32 3, i8* %15) #7, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %16 = icmp eq %struct.tcp_seg* %8, null, !dbg !2644
  br i1 %16, label %17, label %5, !dbg !2645, !llvm.loop !903

; <label>:17:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store %struct.tcp_seg* null, %struct.tcp_seg** %2, align 8, !dbg !2647, !tbaa !852
  br label %18, !dbg !2648

; <label>:18:                                     ; preds = %1, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2649
  ret void, !dbg !2649
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_pcb_purge(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2650 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2654
  br i1 %2, label %3, label %4, !dbg !2657

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !2658
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2661
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2661
  unreachable, !dbg !2661

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2665
  %6 = load i32, i32* %5, align 8, !dbg !2665, !tbaa !457
  switch i32 %6, label %7 [
    i32 0, label %66
    i32 10, label %66
    i32 1, label %66
  ], !dbg !2667

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2668
  %9 = load %struct.pbuf*, %struct.pbuf** %8, align 8, !dbg !2668, !tbaa !537
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !2671
  br i1 %10, label %13, label %11, !dbg !2672

; <label>:11:                                     ; preds = %7
  %12 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %9) #7, !dbg !2673
  store %struct.pbuf* null, %struct.pbuf** %8, align 8, !dbg !2675, !tbaa !537
  br label %13, !dbg !2676

; <label>:13:                                     ; preds = %7, %11
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 44, !dbg !2677
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 45, !dbg !2679
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 46, !dbg !2681
  %17 = load %struct.tcp_seg*, %struct.tcp_seg** %16, align 8, !dbg !2681, !tbaa !852
  %18 = icmp eq %struct.tcp_seg* %17, null, !dbg !2683
  br i1 %18, label %32, label %19, !dbg !2684

; <label>:19:                                     ; preds = %13, %28
  %20 = phi %struct.tcp_seg* [ %22, %28 ], [ %17, %13 ]
  %21 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 0, !dbg !2689
  %22 = load %struct.tcp_seg*, %struct.tcp_seg** %21, align 8, !dbg !2689, !tbaa !880
  %23 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %20, i64 0, i32 1, !dbg !2693
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !2693, !tbaa !892
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !2694
  br i1 %25, label %28, label %26, !dbg !2695

; <label>:26:                                     ; preds = %19
  %27 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %24) #7, !dbg !2696
  br label %28, !dbg !2697

; <label>:28:                                     ; preds = %26, %19
  %29 = bitcast %struct.tcp_seg* %20 to i8*, !dbg !2698
  tail call void @memp_free(i32 3, i8* %29) #7, !dbg !2699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2700
  %30 = icmp eq %struct.tcp_seg* %22, null, !dbg !2701
  br i1 %30, label %31, label %19, !dbg !2702, !llvm.loop !903

; <label>:31:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  store %struct.tcp_seg* null, %struct.tcp_seg** %16, align 8, !dbg !2704, !tbaa !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2705
  br label %32, !dbg !2706

; <label>:32:                                     ; preds = %13, %31
  %33 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 21, !dbg !2707
  store i16 -1, i16* %33, align 4, !dbg !2708, !tbaa !729
  %34 = load %struct.tcp_seg*, %struct.tcp_seg** %14, align 8, !dbg !2709, !tbaa !669
  %35 = icmp eq %struct.tcp_seg* %34, null, !dbg !2712
  br i1 %35, label %48, label %36, !dbg !2713

; <label>:36:                                     ; preds = %32, %45
  %37 = phi %struct.tcp_seg* [ %39, %45 ], [ %34, %32 ]
  %38 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %37, i64 0, i32 0, !dbg !2714
  %39 = load %struct.tcp_seg*, %struct.tcp_seg** %38, align 8, !dbg !2714, !tbaa !880
  %40 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %37, i64 0, i32 1, !dbg !2718
  %41 = load %struct.pbuf*, %struct.pbuf** %40, align 8, !dbg !2718, !tbaa !892
  %42 = icmp eq %struct.pbuf* %41, null, !dbg !2719
  br i1 %42, label %45, label %43, !dbg !2720

; <label>:43:                                     ; preds = %36
  %44 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %41) #7, !dbg !2721
  br label %45, !dbg !2722

; <label>:45:                                     ; preds = %43, %36
  %46 = bitcast %struct.tcp_seg* %37 to i8*, !dbg !2723
  tail call void @memp_free(i32 3, i8* %46) #7, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  %47 = icmp eq %struct.tcp_seg* %39, null, !dbg !2712
  br i1 %47, label %48, label %36, !dbg !2713, !llvm.loop !903

; <label>:48:                                     ; preds = %45, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2726
  %49 = load %struct.tcp_seg*, %struct.tcp_seg** %15, align 8, !dbg !2727, !tbaa !657
  %50 = icmp eq %struct.tcp_seg* %49, null, !dbg !2730
  br i1 %50, label %63, label %51, !dbg !2731

; <label>:51:                                     ; preds = %48, %60
  %52 = phi %struct.tcp_seg* [ %54, %60 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %52, i64 0, i32 0, !dbg !2732
  %54 = load %struct.tcp_seg*, %struct.tcp_seg** %53, align 8, !dbg !2732, !tbaa !880
  %55 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %52, i64 0, i32 1, !dbg !2736
  %56 = load %struct.pbuf*, %struct.pbuf** %55, align 8, !dbg !2736, !tbaa !892
  %57 = icmp eq %struct.pbuf* %56, null, !dbg !2737
  br i1 %57, label %60, label %58, !dbg !2738

; <label>:58:                                     ; preds = %51
  %59 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %56) #7, !dbg !2739
  br label %60, !dbg !2740

; <label>:60:                                     ; preds = %58, %51
  %61 = bitcast %struct.tcp_seg* %52 to i8*, !dbg !2741
  tail call void @memp_free(i32 3, i8* %61) #7, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  %62 = icmp eq %struct.tcp_seg* %54, null, !dbg !2730
  br i1 %62, label %63, label %51, !dbg !2731, !llvm.loop !903

; <label>:63:                                     ; preds = %60, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2744
  %64 = bitcast %struct.tcp_seg** %14 to <2 x %struct.tcp_seg*>*, !dbg !2745
  store <2 x %struct.tcp_seg*> zeroinitializer, <2 x %struct.tcp_seg*>* %64, align 8, !dbg !2745, !tbaa !501
  %65 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 42, !dbg !2746
  store i16 0, i16* %65, align 2, !dbg !2747, !tbaa !2748
  br label %66, !dbg !2749

; <label>:66:                                     ; preds = %4, %4, %4, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  ret void, !dbg !2750
}

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb*) unnamed_addr #0 !dbg !2751 {
  %2 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2756
  br i1 %2, label %3, label %4, !dbg !2759

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !2760
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2763
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2763
  unreachable, !dbg !2763

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !2767
  %6 = load i32, i32* %5, align 8, !dbg !2767, !tbaa !457
  switch i32 %6, label %26 [
    i32 3, label %7
    i32 4, label %10
    i32 7, label %13
  ], !dbg !2768

; <label>:7:                                      ; preds = %4
  %8 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2769
  %9 = icmp eq i8 %8, 0, !dbg !2772
  br i1 %9, label %18, label %16, !dbg !2774

; <label>:10:                                     ; preds = %4
  %11 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2775
  %12 = icmp eq i8 %11, 0, !dbg !2776
  br i1 %12, label %18, label %16, !dbg !2778

; <label>:13:                                     ; preds = %4
  %14 = tail call signext i8 @tcp_send_fin(%struct.tcp_pcb* nonnull %0) #7, !dbg !2779
  %15 = icmp eq i8 %14, 0, !dbg !2780
  br i1 %15, label %18, label %16, !dbg !2782

; <label>:16:                                     ; preds = %13, %10, %7
  %17 = phi i8 [ %14, %13 ], [ %11, %10 ], [ %8, %7 ], !dbg !2783
  switch i8 %17, label %26 [
    i8 0, label %20
    i8 -1, label %22
  ], !dbg !2784

; <label>:18:                                     ; preds = %13, %10, %7
  %19 = phi i32 [ 5, %7 ], [ 5, %10 ], [ 9, %13 ]
  store i32 %19, i32* %5, align 8, !dbg !2785, !tbaa !457
  br label %20, !dbg !2787

; <label>:20:                                     ; preds = %18, %16
  %21 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %0) #7, !dbg !2787
  br label %26, !dbg !2790

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12, !dbg !2791
  %24 = load i16, i16* %23, align 2, !dbg !2791, !tbaa !513
  %25 = or i16 %24, 8, !dbg !2791
  store i16 %25, i16* %23, align 2, !dbg !2791, !tbaa !513
  br label %26, !dbg !2795

; <label>:26:                                     ; preds = %20, %16, %4, %22
  %27 = phi i8 [ 0, %22 ], [ 0, %4 ], [ %17, %16 ], [ 0, %20 ], !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  ret i8 %27, !dbg !2797
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_process_refused_data(%struct.tcp_pcb*) local_unnamed_addr #0 !dbg !2798 {
  %2 = alloca %struct.pbuf*, align 8
  %3 = bitcast %struct.pbuf** %2 to i8*, !dbg !2807
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !2807
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2808
  br i1 %4, label %16, label %5, !dbg !2811

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 47, !dbg !2812
  %7 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2812, !tbaa !537
  %8 = icmp eq %struct.pbuf* %7, null, !dbg !2813
  br i1 %8, label %61, label %9, !dbg !2814

; <label>:9:                                      ; preds = %5
  %10 = bitcast %struct.pbuf** %2 to i64*
  %11 = bitcast %struct.pbuf** %6 to i64*
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 18
  %15 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 12
  br label %17, !dbg !2814

; <label>:16:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2815
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2818
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2818
  unreachable, !dbg !2818

; <label>:17:                                     ; preds = %9, %58
  %18 = phi %struct.pbuf* [ %7, %9 ], [ %59, %58 ]
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 5, !dbg !2822
  %20 = load i8, i8* %19, align 1, !dbg !2822, !tbaa !2823
  call void @pbuf_split_64k(%struct.pbuf* nonnull %18, %struct.pbuf** nonnull %2) #7, !dbg !2828
  %21 = load i64, i64* %10, align 8, !dbg !2829, !tbaa !501
  store i64 %21, i64* %11, align 8, !dbg !2830, !tbaa !537
  %22 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !2831, !tbaa !2834
  %23 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %22, null, !dbg !2831
  br i1 %23, label %24, label %28, !dbg !2835

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !2848
  %26 = load i16, i16* %25, align 8, !dbg !2848, !tbaa !2851
  call void @tcp_recved(%struct.tcp_pcb* nonnull %0, i16 zeroext %26) #7, !dbg !2852
  %27 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %18) #7, !dbg !2853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2854
  br label %31, !dbg !2856

; <label>:28:                                     ; preds = %17
  %29 = load i8*, i8** %13, align 8, !dbg !2857, !tbaa !980
  %30 = call signext i8 %22(i8* %29, %struct.tcp_pcb* nonnull %0, %struct.pbuf* nonnull %18, i8 signext 0) #7, !dbg !2857
  switch i8 %30, label %53 [
    i8 0, label %31
    i8 -13, label %61
  ], !dbg !2856

; <label>:31:                                     ; preds = %24, %28
  %32 = and i8 %20, 32, !dbg !2859
  %33 = icmp ne i8 %32, 0, !dbg !2859
  %34 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !2863
  %35 = icmp eq %struct.pbuf* %34, null, !dbg !2864
  %36 = and i1 %33, %35, !dbg !2865
  br i1 %36, label %37, label %58, !dbg !2865

; <label>:37:                                     ; preds = %31
  %38 = load i32, i32* %14, align 8, !dbg !2866, !tbaa !1174
  %39 = load i16, i16* %15, align 2, !dbg !2869, !tbaa !513
  %40 = and i16 %39, 256, !dbg !2869
  %41 = icmp eq i16 %40, 0, !dbg !2869
  %42 = select i1 %41, i32 65535, i32 262142, !dbg !2869
  %43 = icmp eq i32 %38, %42, !dbg !2870
  br i1 %43, label %46, label %44, !dbg !2871

; <label>:44:                                     ; preds = %37
  %45 = add i32 %38, 1, !dbg !2872
  store i32 %45, i32* %14, align 8, !dbg !2872, !tbaa !1174
  br label %46, !dbg !2874

; <label>:46:                                     ; preds = %37, %44
  %47 = load i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %12, align 8, !dbg !2875, !tbaa !2834
  %48 = icmp eq i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %47, null, !dbg !2875
  br i1 %48, label %58, label %49, !dbg !2878

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %13, align 8, !dbg !2879, !tbaa !980
  %51 = call signext i8 %47(i8* %50, %struct.tcp_pcb* nonnull %0, %struct.pbuf* null, i8 signext 0) #7, !dbg !2879
  %52 = icmp eq i8 %51, -13, !dbg !2881
  br i1 %52, label %61, label %58, !dbg !2883

; <label>:53:                                     ; preds = %28
  %54 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !2884, !tbaa !501
  %55 = icmp eq %struct.pbuf* %54, null, !dbg !2888
  br i1 %55, label %57, label %56, !dbg !2889

; <label>:56:                                     ; preds = %53
  call void @pbuf_cat(%struct.pbuf* nonnull %18, %struct.pbuf* nonnull %54) #7, !dbg !2890
  br label %57, !dbg !2892

; <label>:57:                                     ; preds = %53, %56
  store %struct.pbuf* %18, %struct.pbuf** %6, align 8, !dbg !2893, !tbaa !537
  br label %61, !dbg !2894

; <label>:58:                                     ; preds = %46, %49, %31
  %59 = load %struct.pbuf*, %struct.pbuf** %6, align 8, !dbg !2812, !tbaa !537
  %60 = icmp eq %struct.pbuf* %59, null, !dbg !2813
  br i1 %60, label %61, label %17, !dbg !2814

; <label>:61:                                     ; preds = %58, %49, %28, %5, %57
  %62 = phi i8 [ -5, %57 ], [ 0, %5 ], [ 0, %58 ], [ -13, %49 ], [ %30, %28 ], !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !2896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2896
  ret i8 %62, !dbg !2896
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_txnow() local_unnamed_addr #0 !dbg !2897 {
  %1 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2901, !tbaa !501
  %2 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2904
  br i1 %2, label %15, label %3, !dbg !2905

; <label>:3:                                      ; preds = %0, %11
  %4 = phi %struct.tcp_pcb* [ %13, %11 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 12, !dbg !2906
  %6 = load i16, i16* %5, align 2, !dbg !2906, !tbaa !513
  %7 = trunc i16 %6 to i8, !dbg !2909
  %8 = icmp slt i8 %7, 0, !dbg !2909
  br i1 %8, label %9, label %11, !dbg !2910

; <label>:9:                                      ; preds = %3
  %10 = tail call signext i8 @tcp_output(%struct.tcp_pcb* nonnull %4) #7, !dbg !2911
  br label %11, !dbg !2913

; <label>:11:                                     ; preds = %3, %9
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %4, i64 0, i32 6, !dbg !2914
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !2901, !tbaa !501
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !2904
  br i1 %14, label %15, label %3, !dbg !2905, !llvm.loop !2915

; <label>:15:                                     ; preds = %11, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2917
  ret void, !dbg !2917
}

; Function Attrs: noredzone
declare dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf**) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_recv_null(i8* nocapture readnone, %struct.tcp_pcb*, %struct.pbuf*, i8 signext) #0 !dbg !2837 {
  %5 = icmp eq %struct.tcp_pcb* %1, null, !dbg !2922
  br i1 %5, label %6, label %7, !dbg !2925

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0)) #8, !dbg !2926
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2929
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2929
  unreachable, !dbg !2929

; <label>:7:                                      ; preds = %4
  %8 = icmp eq %struct.pbuf* %2, null, !dbg !2933
  br i1 %8, label %13, label %9, !dbg !2934

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !2935
  %11 = load i16, i16* %10, align 8, !dbg !2935, !tbaa !2851
  tail call void @tcp_recved(%struct.tcp_pcb* nonnull %1, i16 zeroext %11) #8, !dbg !2936
  %12 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #7, !dbg !2937
  br label %25, !dbg !2938

; <label>:13:                                     ; preds = %7
  %14 = icmp eq i8 %3, 0, !dbg !2939
  br i1 %14, label %15, label %25, !dbg !2941

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 8, !dbg !2945
  %17 = load i32, i32* %16, align 8, !dbg !2945, !tbaa !457
  %18 = icmp eq i32 %17, 1, !dbg !2946
  br i1 %18, label %23, label %19, !dbg !2947

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %1, i64 0, i32 12, !dbg !2948
  %21 = load i16, i16* %20, align 2, !dbg !2948, !tbaa !513
  %22 = or i16 %21, 16, !dbg !2948
  store i16 %22, i16* %20, align 2, !dbg !2948, !tbaa !513
  br label %23, !dbg !2949

; <label>:23:                                     ; preds = %15, %19
  %24 = tail call fastcc signext i8 @tcp_close_shutdown(%struct.tcp_pcb* nonnull %1, i8 zeroext 1) #7, !dbg !2950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  br label %25, !dbg !2952

; <label>:25:                                     ; preds = %9, %13, %23
  %26 = phi i8 [ %24, %23 ], [ 0, %13 ], [ 0, %9 ], !dbg !2953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2954
  ret i8 %26, !dbg !2954
}

; Function Attrs: noredzone
declare dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_seg_free(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !884 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !2956
  br i1 %2, label %11, label %3, !dbg !2957

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.tcp_seg, %struct.tcp_seg* %0, i64 0, i32 1, !dbg !2958
  %5 = load %struct.pbuf*, %struct.pbuf** %4, align 8, !dbg !2958, !tbaa !892
  %6 = icmp eq %struct.pbuf* %5, null, !dbg !2959
  br i1 %6, label %9, label %7, !dbg !2960

; <label>:7:                                      ; preds = %3
  %8 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %5) #7, !dbg !2961
  br label %9, !dbg !2962

; <label>:9:                                      ; preds = %3, %7
  %10 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !2963
  tail call void @memp_free(i32 3, i8* %10) #7, !dbg !2964
  br label %11, !dbg !2965

; <label>:11:                                     ; preds = %1, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2966
  ret void, !dbg !2966
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_setprio(%struct.tcp_pcb*, i8 zeroext) local_unnamed_addr #0 !dbg !2967 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !2975
  br i1 %3, label %4, label %5, !dbg !2978

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !2979
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !2982
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2982
  unreachable, !dbg !2982

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 9, !dbg !2986
  store i8 %1, i8* %6, align 4, !dbg !2987, !tbaa !2074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2988
  ret void, !dbg !2988
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_seg* @tcp_seg_copy(%struct.tcp_seg*) local_unnamed_addr #0 !dbg !2989 {
  %2 = icmp eq %struct.tcp_seg* %0, null, !dbg !2996
  br i1 %2, label %3, label %4, !dbg !2999

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0)) #8, !dbg !3000
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3003
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3003
  unreachable, !dbg !3003

; <label>:4:                                      ; preds = %1
  %5 = tail call i8* @memp_malloc(i32 3) #7, !dbg !3007
  %6 = icmp eq i8* %5, null, !dbg !3008
  br i1 %6, label %14, label %7, !dbg !3010

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8* %5 to %struct.tcp_seg*, !dbg !3011
  %9 = bitcast %struct.tcp_seg* %0 to i8*, !dbg !3013
  %10 = tail call i8* @memcpy(i8* nonnull %5, i8* %9, i64 32) #7, !dbg !3013
  %11 = getelementptr inbounds i8, i8* %5, i64 8, !dbg !3014
  %12 = bitcast i8* %11 to %struct.pbuf**, !dbg !3014
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !3014, !tbaa !892
  tail call void @pbuf_ref(%struct.pbuf* %13) #7, !dbg !3015
  br label %14, !dbg !3016

; <label>:14:                                     ; preds = %4, %7
  %15 = phi %struct.tcp_seg* [ %8, %7 ], [ null, %4 ], !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  ret %struct.tcp_seg* %15, !dbg !3018
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_alloc(i8 zeroext) local_unnamed_addr #0 !dbg !3019 {
  %2 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3026
  %3 = icmp eq i8* %2, null, !dbg !3028
  br i1 %3, label %4, label %147, !dbg !3030

; <label>:4:                                      ; preds = %1
  %5 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3031, !tbaa !501
  %6 = icmp eq %struct.tcp_pcb* %5, null, !dbg !3040
  br i1 %6, label %20, label %7, !dbg !3041

; <label>:7:                                      ; preds = %4, %18
  %8 = phi %struct.tcp_pcb* [ %10, %18 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 6, !dbg !3042
  %10 = load %struct.tcp_pcb*, %struct.tcp_pcb** %9, align 8, !dbg !3042, !tbaa !533
  %11 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %8, i64 0, i32 12, !dbg !3044
  %12 = load i16, i16* %11, align 2, !dbg !3044, !tbaa !513
  %13 = and i16 %12, 8, !dbg !3046
  %14 = icmp eq i16 %13, 0, !dbg !3046
  br i1 %14, label %18, label %15, !dbg !3047

; <label>:15:                                     ; preds = %7
  %16 = and i16 %12, -9, !dbg !3048
  store i16 %16, i16* %11, align 2, !dbg !3048, !tbaa !513
  %17 = tail call fastcc signext i8 @tcp_close_shutdown_fin(%struct.tcp_pcb* nonnull %8) #7, !dbg !3051
  br label %18, !dbg !3052

; <label>:18:                                     ; preds = %15, %7
  %19 = icmp eq %struct.tcp_pcb* %10, null, !dbg !3040
  br i1 %19, label %20, label %7, !dbg !3041, !llvm.loop !3053

; <label>:20:                                     ; preds = %18, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  %21 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_tw_pcbs, align 8, !dbg !3066, !tbaa !501
  %22 = icmp eq %struct.tcp_pcb* %21, null, !dbg !3069
  br i1 %22, label %41, label %23, !dbg !3070

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* @tcp_ticks, align 4, !tbaa !414
  br label %25, !dbg !3070

; <label>:25:                                     ; preds = %25, %23
  %26 = phi %struct.tcp_pcb* [ %21, %23 ], [ %36, %25 ]
  %27 = phi i32 [ 0, %23 ], [ %34, %25 ]
  %28 = phi %struct.tcp_pcb* [ null, %23 ], [ %33, %25 ]
  %29 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %26, i64 0, i32 16, !dbg !3071
  %30 = load i32, i32* %29, align 8, !dbg !3071, !tbaa !804
  %31 = sub i32 %24, %30, !dbg !3074
  %32 = icmp ult i32 %31, %27, !dbg !3075
  %33 = select i1 %32, %struct.tcp_pcb* %28, %struct.tcp_pcb* %26, !dbg !3076
  %34 = select i1 %32, i32 %27, i32 %31, !dbg !3076
  %35 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %26, i64 0, i32 6, !dbg !3077
  %36 = load %struct.tcp_pcb*, %struct.tcp_pcb** %35, align 8, !dbg !3066, !tbaa !501
  %37 = icmp eq %struct.tcp_pcb* %36, null, !dbg !3069
  br i1 %37, label %38, label %25, !dbg !3070, !llvm.loop !3078

; <label>:38:                                     ; preds = %25
  %39 = icmp eq %struct.tcp_pcb* %33, null, !dbg !3081
  br i1 %39, label %41, label %40, !dbg !3083

; <label>:40:                                     ; preds = %38
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %33, i32 1) #7, !dbg !3087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3088
  br label %41, !dbg !3089

; <label>:41:                                     ; preds = %20, %38, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3090
  %42 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3091
  %43 = icmp eq i8* %42, null, !dbg !3092
  br i1 %43, label %44, label %147, !dbg !3094

; <label>:44:                                     ; preds = %41
  %45 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3106, !tbaa !501
  %46 = icmp eq %struct.tcp_pcb* %45, null, !dbg !3112
  br i1 %46, label %72, label %47, !dbg !3113

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* @tcp_ticks, align 4
  br label %49, !dbg !3113

; <label>:49:                                     ; preds = %63, %47
  %50 = phi %struct.tcp_pcb* [ %45, %47 ], [ %67, %63 ]
  %51 = phi i32 [ 0, %47 ], [ %65, %63 ]
  %52 = phi %struct.tcp_pcb* [ null, %47 ], [ %64, %63 ]
  %53 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 8, !dbg !3114
  %54 = load i32, i32* %53, align 8, !dbg !3114, !tbaa !457
  %55 = icmp eq i32 %54, 9, !dbg !3117
  br i1 %55, label %56, label %63, !dbg !3118

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 16, !dbg !3119
  %58 = load i32, i32* %57, align 8, !dbg !3119, !tbaa !804
  %59 = sub i32 %48, %58, !dbg !3122
  %60 = icmp ult i32 %59, %51, !dbg !3123
  %61 = select i1 %60, %struct.tcp_pcb* %52, %struct.tcp_pcb* %50, !dbg !3124
  %62 = select i1 %60, i32 %51, i32 %59, !dbg !3124
  br label %63, !dbg !3124

; <label>:63:                                     ; preds = %56, %49
  %64 = phi %struct.tcp_pcb* [ %52, %49 ], [ %61, %56 ], !dbg !3125
  %65 = phi i32 [ %51, %49 ], [ %62, %56 ], !dbg !3125
  %66 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %50, i64 0, i32 6, !dbg !3126
  %67 = load %struct.tcp_pcb*, %struct.tcp_pcb** %66, align 8, !dbg !3106, !tbaa !501
  %68 = icmp eq %struct.tcp_pcb* %67, null, !dbg !3112
  br i1 %68, label %69, label %49, !dbg !3113, !llvm.loop !3127

; <label>:69:                                     ; preds = %63
  %70 = icmp eq %struct.tcp_pcb* %64, null, !dbg !3130
  br i1 %70, label %72, label %71, !dbg !3132

; <label>:71:                                     ; preds = %69
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %64, i32 0) #7, !dbg !3133
  br label %72, !dbg !3135

; <label>:72:                                     ; preds = %44, %69, %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  %73 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3137
  %74 = icmp eq i8* %73, null, !dbg !3138
  br i1 %74, label %75, label %147, !dbg !3140

; <label>:75:                                     ; preds = %72
  %76 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3144, !tbaa !501
  %77 = icmp eq %struct.tcp_pcb* %76, null, !dbg !3148
  br i1 %77, label %103, label %78, !dbg !3149

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* @tcp_ticks, align 4
  br label %80, !dbg !3149

; <label>:80:                                     ; preds = %94, %78
  %81 = phi %struct.tcp_pcb* [ %76, %78 ], [ %98, %94 ]
  %82 = phi i32 [ 0, %78 ], [ %96, %94 ]
  %83 = phi %struct.tcp_pcb* [ null, %78 ], [ %95, %94 ]
  %84 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 8, !dbg !3150
  %85 = load i32, i32* %84, align 8, !dbg !3150, !tbaa !457
  %86 = icmp eq i32 %85, 8, !dbg !3151
  br i1 %86, label %87, label %94, !dbg !3152

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 16, !dbg !3153
  %89 = load i32, i32* %88, align 8, !dbg !3153, !tbaa !804
  %90 = sub i32 %79, %89, !dbg !3154
  %91 = icmp ult i32 %90, %82, !dbg !3155
  %92 = select i1 %91, %struct.tcp_pcb* %83, %struct.tcp_pcb* %81, !dbg !3156
  %93 = select i1 %91, i32 %82, i32 %90, !dbg !3156
  br label %94, !dbg !3156

; <label>:94:                                     ; preds = %87, %80
  %95 = phi %struct.tcp_pcb* [ %83, %80 ], [ %92, %87 ], !dbg !3157
  %96 = phi i32 [ %82, %80 ], [ %93, %87 ], !dbg !3157
  %97 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %81, i64 0, i32 6, !dbg !3158
  %98 = load %struct.tcp_pcb*, %struct.tcp_pcb** %97, align 8, !dbg !3144, !tbaa !501
  %99 = icmp eq %struct.tcp_pcb* %98, null, !dbg !3148
  br i1 %99, label %100, label %80, !dbg !3149, !llvm.loop !3127

; <label>:100:                                    ; preds = %94
  %101 = icmp eq %struct.tcp_pcb* %95, null, !dbg !3159
  br i1 %101, label %103, label %102, !dbg !3160

; <label>:102:                                    ; preds = %100
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %95, i32 0) #7, !dbg !3161
  br label %103, !dbg !3162

; <label>:103:                                    ; preds = %75, %100, %102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3163
  %104 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3164
  %105 = icmp eq i8* %104, null, !dbg !3165
  br i1 %105, label %106, label %147, !dbg !3167

; <label>:106:                                    ; preds = %103
  %107 = icmp ult i8 %0, 127, !dbg !3180
  %108 = select i1 %107, i8 %0, i8 127, !dbg !3180
  %109 = icmp eq i8 %108, 0, !dbg !3182
  br i1 %109, label %150, label %110, !dbg !3184

; <label>:110:                                    ; preds = %106
  %111 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3188, !tbaa !501
  %112 = icmp eq %struct.tcp_pcb* %111, null, !dbg !3191
  br i1 %112, label %150, label %113, !dbg !3192

; <label>:113:                                    ; preds = %110
  %114 = add nsw i8 %108, -1, !dbg !3193
  %115 = load i32, i32* @tcp_ticks, align 4
  br label %116, !dbg !3192

; <label>:116:                                    ; preds = %137, %113
  %117 = phi %struct.tcp_pcb* [ %111, %113 ], [ %142, %137 ]
  %118 = phi i8 [ %114, %113 ], [ %140, %137 ]
  %119 = phi i32 [ 0, %113 ], [ %139, %137 ]
  %120 = phi %struct.tcp_pcb* [ null, %113 ], [ %138, %137 ]
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 9, !dbg !3194
  %122 = load i8, i8* %121, align 4, !dbg !3194, !tbaa !2074
  %123 = icmp ult i8 %122, %118, !dbg !3197
  br i1 %123, label %124, label %128, !dbg !3198

; <label>:124:                                    ; preds = %116
  %125 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 16
  %126 = load i32, i32* %125, align 8, !dbg !3199, !tbaa !804
  %127 = sub i32 %115, %126, !dbg !3201
  br label %135, !dbg !3198

; <label>:128:                                    ; preds = %116
  %129 = icmp eq i8 %122, %118, !dbg !3202
  br i1 %129, label %130, label %137, !dbg !3203

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 16, !dbg !3204
  %132 = load i32, i32* %131, align 8, !dbg !3204, !tbaa !804
  %133 = sub i32 %115, %132, !dbg !3205
  %134 = icmp ult i32 %133, %119, !dbg !3206
  br i1 %134, label %137, label %135, !dbg !3207

; <label>:135:                                    ; preds = %130, %124
  %136 = phi i32 [ %127, %124 ], [ %133, %130 ], !dbg !3201
  br label %137, !dbg !3208

; <label>:137:                                    ; preds = %135, %130, %128
  %138 = phi %struct.tcp_pcb* [ %117, %135 ], [ %120, %130 ], [ %120, %128 ], !dbg !3209
  %139 = phi i32 [ %136, %135 ], [ %119, %130 ], [ %119, %128 ], !dbg !3209
  %140 = phi i8 [ %122, %135 ], [ %118, %130 ], [ %118, %128 ], !dbg !3209
  %141 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %117, i64 0, i32 6, !dbg !3210
  %142 = load %struct.tcp_pcb*, %struct.tcp_pcb** %141, align 8, !dbg !3188, !tbaa !501
  %143 = icmp eq %struct.tcp_pcb* %142, null, !dbg !3191
  br i1 %143, label %144, label %116, !dbg !3192, !llvm.loop !3211

; <label>:144:                                    ; preds = %137
  %145 = icmp eq %struct.tcp_pcb* %138, null, !dbg !3214
  br i1 %145, label %150, label %146, !dbg !3216

; <label>:146:                                    ; preds = %144
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %138, i32 1) #7, !dbg !3220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3221
  br label %150, !dbg !3222

; <label>:147:                                    ; preds = %1, %41, %72, %103
  %148 = phi i8* [ %104, %103 ], [ %73, %72 ], [ %42, %41 ], [ %2, %1 ]
  %149 = bitcast i8* %148 to %struct.tcp_pcb*, !dbg !3223
  br label %154, !dbg !3224

; <label>:150:                                    ; preds = %146, %144, %110, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  %151 = tail call i8* @memp_malloc(i32 1) #7, !dbg !3226
  %152 = bitcast i8* %151 to %struct.tcp_pcb*, !dbg !3223
  %153 = icmp eq i8* %151, null, !dbg !3227
  br i1 %153, label %187, label %154, !dbg !3224

; <label>:154:                                    ; preds = %147, %150
  %155 = phi %struct.tcp_pcb* [ %149, %147 ], [ %152, %150 ]
  %156 = phi i8* [ %148, %147 ], [ %151, %150 ]
  %157 = tail call i8* @memset(i8* nonnull %156, i32 0, i64 280) #7, !dbg !3229
  %158 = getelementptr inbounds i8, i8* %156, i64 76, !dbg !3231
  store i8 %0, i8* %158, align 4, !dbg !3232, !tbaa !2074
  %159 = getelementptr inbounds i8, i8* %156, i64 168, !dbg !3233
  %160 = bitcast i8* %159 to i32*, !dbg !3233
  store i32 1048576, i32* %160, align 8, !dbg !3234, !tbaa !3235
  %161 = getelementptr inbounds i8, i8* %156, i64 100, !dbg !3236
  %162 = bitcast i8* %161 to i32*, !dbg !3236
  store i32 65535, i32* %162, align 4, !dbg !3237, !tbaa !2214
  %163 = getelementptr inbounds i8, i8* %156, i64 96, !dbg !3238
  %164 = bitcast i8* %163 to i32*, !dbg !3238
  store i32 65535, i32* %164, align 8, !dbg !3239, !tbaa !1174
  %165 = getelementptr inbounds i8, i8* %156, i64 51, !dbg !3240
  store i8 -1, i8* %165, align 1, !dbg !3241, !tbaa !2086
  %166 = getelementptr inbounds i8, i8* %156, i64 110, !dbg !3242
  %167 = bitcast i8* %166 to i16*, !dbg !3242
  store i16 536, i16* %167, align 2, !dbg !3243, !tbaa !777
  %168 = getelementptr inbounds i8, i8* %156, i64 124, !dbg !3244
  %169 = bitcast i8* %168 to i16*, !dbg !3244
  store i16 6, i16* %169, align 4, !dbg !3245, !tbaa !738
  %170 = getelementptr inbounds i8, i8* %156, i64 122, !dbg !3246
  %171 = bitcast i8* %170 to i16*, !dbg !3246
  store i16 6, i16* %171, align 2, !dbg !3247, !tbaa !759
  %172 = getelementptr inbounds i8, i8* %156, i64 108, !dbg !3248
  %173 = bitcast i8* %172 to i16*, !dbg !3248
  store i16 -1, i16* %173, align 4, !dbg !3249, !tbaa !729
  %174 = getelementptr inbounds i8, i8* %156, i64 132, !dbg !3250
  %175 = bitcast i8* %174 to i32*, !dbg !3250
  store i32 1, i32* %175, align 4, !dbg !3251, !tbaa !771
  %176 = load i32, i32* @tcp_ticks, align 4, !dbg !3252, !tbaa !414
  %177 = getelementptr inbounds i8, i8* %156, i64 88, !dbg !3253
  %178 = bitcast i8* %177 to i32*, !dbg !3253
  store i32 %176, i32* %178, align 8, !dbg !3254, !tbaa !804
  %179 = load i8, i8* @tcp_timer_ctr, align 1, !dbg !3255, !tbaa !485
  %180 = getelementptr inbounds i8, i8* %156, i64 86, !dbg !3256
  store i8 %179, i8* %180, align 2, !dbg !3257, !tbaa !506
  %181 = getelementptr inbounds i8, i8* %156, i64 136, !dbg !3258
  %182 = bitcast i8* %181 to i32*, !dbg !3258
  store i32 1048576, i32* %182, align 8, !dbg !3259, !tbaa !3260
  %183 = getelementptr inbounds i8, i8* %156, i64 232, !dbg !3261
  %184 = bitcast i8* %183 to i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)**, !dbg !3261
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* @tcp_recv_null, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %184, align 8, !dbg !3262, !tbaa !2834
  %185 = getelementptr inbounds i8, i8* %156, i64 264, !dbg !3263
  %186 = bitcast i8* %185 to i32*, !dbg !3263
  store i32 7200000, i32* %186, align 8, !dbg !3264, !tbaa !822
  br label %187, !dbg !3265

; <label>:187:                                    ; preds = %150, %154
  %188 = phi %struct.tcp_pcb* [ %152, %150 ], [ %155, %154 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3266
  ret %struct.tcp_pcb* %188, !dbg !3266
}

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new() local_unnamed_addr #0 !dbg !3267 {
  %1 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #8, !dbg !3270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3271
  ret %struct.tcp_pcb* %1, !dbg !3271
}

; Function Attrs: noredzone nounwind
define dso_local %struct.tcp_pcb* @tcp_new_ip_type(i8 zeroext) local_unnamed_addr #0 !dbg !3272 {
  %2 = tail call %struct.tcp_pcb* @tcp_alloc(i8 zeroext 64) #8, !dbg !3277
  %3 = icmp eq %struct.tcp_pcb* %2, null, !dbg !3279
  br i1 %3, label %7, label %4, !dbg !3281

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 0, i32 1, !dbg !3282
  store i8 %0, i8* %5, align 4, !dbg !3282, !tbaa !1919
  %6 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %2, i64 0, i32 1, i32 1, !dbg !3285
  store i8 %0, i8* %6, align 4, !dbg !3285, !tbaa !2358
  br label %7, !dbg !3287

; <label>:7:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3288
  ret %struct.tcp_pcb* %2, !dbg !3288
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_arg(%struct.tcp_pcb*, i8*) local_unnamed_addr #0 !dbg !3289 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3297
  br i1 %3, label %6, label %4, !dbg !3299

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 7, !dbg !3300
  store i8* %1, i8** %5, align 8, !dbg !3302, !tbaa !980
  br label %6, !dbg !3303

; <label>:6:                                      ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3304
  ret void, !dbg !3304
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_recv(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*) local_unnamed_addr #0 !dbg !3305 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3313
  br i1 %3, label %11, label %4, !dbg !3315

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3316
  %6 = load i32, i32* %5, align 8, !dbg !3316, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3316
  br i1 %7, label %8, label %9, !dbg !3320

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3321
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3324
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3324
  unreachable, !dbg !3324

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 50, !dbg !3328
  store i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)** %10, align 8, !dbg !3329, !tbaa !2834
  br label %11, !dbg !3330

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  ret void, !dbg !3331
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_sent(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i16)*) local_unnamed_addr #0 !dbg !3332 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3340
  br i1 %3, label %11, label %4, !dbg !3342

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3343
  %6 = load i32, i32* %5, align 8, !dbg !3343, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3343
  br i1 %7, label %8, label %9, !dbg !3347

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !3348
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3351
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3351
  unreachable, !dbg !3351

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 49, !dbg !3355
  store i8 (i8*, %struct.tcp_pcb*, i16)* %1, i8 (i8*, %struct.tcp_pcb*, i16)** %10, align 8, !dbg !3356, !tbaa !3357
  br label %11, !dbg !3358

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3359
  ret void, !dbg !3359
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_err(%struct.tcp_pcb*, void (i8*, i8)*) local_unnamed_addr #0 !dbg !3360 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3368
  br i1 %3, label %11, label %4, !dbg !3370

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3371
  %6 = load i32, i32* %5, align 8, !dbg !3371, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3371
  br i1 %7, label %8, label %9, !dbg !3375

; <label>:8:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !3376
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3379
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3379
  unreachable, !dbg !3379

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 53, !dbg !3383
  store void (i8*, i8)* %1, void (i8*, i8)** %10, align 8, !dbg !3384, !tbaa !926
  br label %11, !dbg !3385

; <label>:11:                                     ; preds = %2, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3386
  ret void, !dbg !3386
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_accept(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*, i8)*) local_unnamed_addr #0 !dbg !3387 {
  %3 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3398
  br i1 %3, label %11, label %4, !dbg !3399

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3400
  %6 = load i32, i32* %5, align 8, !dbg !3400, !tbaa !457
  %7 = icmp eq i32 %6, 1, !dbg !3401
  br i1 %7, label %8, label %11, !dbg !3402

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3404
  %10 = bitcast i16* %9 to i8 (i8*, %struct.tcp_pcb*, i8)**, !dbg !3404
  store i8 (i8*, %struct.tcp_pcb*, i8)* %1, i8 (i8*, %struct.tcp_pcb*, i8)** %10, align 8, !dbg !3405, !tbaa !2142
  br label %11, !dbg !3406

; <label>:11:                                     ; preds = %2, %8, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3407
  ret void, !dbg !3407
}

; Function Attrs: noredzone nounwind
define dso_local void @tcp_poll(%struct.tcp_pcb*, i8 (i8*, %struct.tcp_pcb*)*, i8 zeroext) local_unnamed_addr #0 !dbg !3408 {
  %4 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3418
  br i1 %4, label %5, label %6, !dbg !3421

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3422
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3425
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3425
  unreachable, !dbg !3425

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 8, !dbg !3429
  %8 = load i32, i32* %7, align 8, !dbg !3429, !tbaa !457
  %9 = icmp eq i32 %8, 1, !dbg !3429
  br i1 %9, label %10, label %11, !dbg !3432

; <label>:10:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !3433
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3436
  tail call void @ukplat_terminate(i32 3) #9, !dbg !3436
  unreachable, !dbg !3436

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 52, !dbg !3440
  store i8 (i8*, %struct.tcp_pcb*)* %1, i8 (i8*, %struct.tcp_pcb*)** %12, align 8, !dbg !3441, !tbaa !1017
  %13 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 14, !dbg !3442
  store i8 %2, i8* %13, align 1, !dbg !3443, !tbaa !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3444
  ret void, !dbg !3444
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr*, %struct.netif*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @tcp_netif_ip_addr_changed(%struct.ip_addr* readonly, %struct.ip_addr* readonly) local_unnamed_addr #0 !dbg !3445 {
  %3 = icmp eq %struct.ip_addr* %0, null, !dbg !3454
  br i1 %3, label %221, label %4, !dbg !3456

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 1, !dbg !3454
  %6 = load i8, i8* %5, align 4, !dbg !3454, !tbaa !1820
  %7 = icmp eq i8 %6, 6, !dbg !3454
  %8 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3454
  %9 = load i32, i32* %8, align 4, !dbg !3454, !tbaa !485
  %10 = icmp eq i32 %9, 0, !dbg !3454
  br i1 %7, label %11, label %24, !dbg !3456

; <label>:11:                                     ; preds = %4
  br i1 %10, label %12, label %25, !dbg !3454

; <label>:12:                                     ; preds = %11
  %13 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3454
  %14 = load i32, i32* %13, align 4, !dbg !3454, !tbaa !485
  %15 = icmp eq i32 %14, 0, !dbg !3454
  br i1 %15, label %16, label %25, !dbg !3454

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3454
  %18 = load i32, i32* %17, align 4, !dbg !3454, !tbaa !485
  %19 = icmp eq i32 %18, 0, !dbg !3454
  br i1 %19, label %20, label %25, !dbg !3454

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3454
  %22 = load i32, i32* %21, align 4, !dbg !3454, !tbaa !485
  %23 = icmp eq i32 %22, 0, !dbg !3454
  br i1 %23, label %221, label %25, !dbg !3454

; <label>:24:                                     ; preds = %4
  br i1 %10, label %221, label %25, !dbg !3456

; <label>:25:                                     ; preds = %11, %12, %16, %20, %24
  %26 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !3457, !tbaa !501
  %27 = icmp eq %struct.tcp_pcb* %26, null, !dbg !3474
  br i1 %27, label %78, label %28, !dbg !3475

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %33, !dbg !3475

; <label>:33:                                     ; preds = %76, %28
  %34 = phi i8 [ %6, %28 ], [ %77, %76 ], !dbg !3476
  %35 = phi %struct.tcp_pcb* [ %26, %28 ], [ %74, %76 ]
  %36 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 1, !dbg !3476
  %37 = load i8, i8* %36, align 4, !dbg !3476, !tbaa !1919
  %38 = icmp eq i8 %37, %34, !dbg !3476
  br i1 %38, label %39, label %70, !dbg !3477

; <label>:39:                                     ; preds = %33
  %40 = icmp eq i8 %34, 6, !dbg !3476
  %41 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3476
  %42 = load i32, i32* %41, align 8, !dbg !3476, !tbaa !485
  %43 = load i32, i32* %8, align 4, !dbg !3476, !tbaa !485
  %44 = icmp eq i32 %42, %43, !dbg !3476
  br i1 %40, label %45, label %66, !dbg !3477

; <label>:45:                                     ; preds = %39
  br i1 %44, label %46, label %70, !dbg !3476

; <label>:46:                                     ; preds = %45
  %47 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3476
  %48 = load i32, i32* %47, align 4, !dbg !3476, !tbaa !485
  %49 = load i32, i32* %29, align 4, !dbg !3476, !tbaa !485
  %50 = icmp eq i32 %48, %49, !dbg !3476
  br i1 %50, label %51, label %70, !dbg !3476

; <label>:51:                                     ; preds = %46
  %52 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3476
  %53 = load i32, i32* %52, align 8, !dbg !3476, !tbaa !485
  %54 = load i32, i32* %30, align 4, !dbg !3476, !tbaa !485
  %55 = icmp eq i32 %53, %54, !dbg !3476
  br i1 %55, label %56, label %70, !dbg !3476

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3476
  %58 = load i32, i32* %57, align 4, !dbg !3476, !tbaa !485
  %59 = load i32, i32* %31, align 4, !dbg !3476, !tbaa !485
  %60 = icmp eq i32 %58, %59, !dbg !3476
  br i1 %60, label %61, label %70, !dbg !3476

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3476
  %63 = load i8, i8* %62, align 8, !dbg !3476, !tbaa !485
  %64 = load i8, i8* %32, align 4, !dbg !3476, !tbaa !485
  %65 = icmp eq i8 %63, %64, !dbg !3476
  br i1 %65, label %67, label %70, !dbg !3476

; <label>:66:                                     ; preds = %39
  br i1 %44, label %67, label %70, !dbg !3477

; <label>:67:                                     ; preds = %66, %61
  %68 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 6, !dbg !3478
  %69 = load %struct.tcp_pcb*, %struct.tcp_pcb** %68, align 8, !dbg !3478, !tbaa !533
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %35, i32 1) #7, !dbg !3482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3483
  br label %73, !dbg !3484

; <label>:70:                                     ; preds = %66, %61, %56, %51, %46, %45, %33
  %71 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %35, i64 0, i32 6, !dbg !3485
  %72 = load %struct.tcp_pcb*, %struct.tcp_pcb** %71, align 8, !dbg !3485, !tbaa !533
  br label %73

; <label>:73:                                     ; preds = %70, %67
  %74 = phi %struct.tcp_pcb* [ %72, %70 ], [ %69, %67 ], !dbg !3487
  %75 = icmp eq %struct.tcp_pcb* %74, null, !dbg !3474
  br i1 %75, label %78, label %76, !dbg !3475, !llvm.loop !3488

; <label>:76:                                     ; preds = %73
  %77 = load i8, i8* %5, align 4, !dbg !3476, !tbaa !1820
  br label %33, !dbg !3475

; <label>:78:                                     ; preds = %73, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3491
  %79 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_bound_pcbs, align 8, !dbg !3492, !tbaa !501
  %80 = icmp eq %struct.tcp_pcb* %79, null, !dbg !3497
  br i1 %80, label %129, label %81, !dbg !3498

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %83 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %84 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %85 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %86, !dbg !3498

; <label>:86:                                     ; preds = %126, %81
  %87 = phi %struct.tcp_pcb* [ %79, %81 ], [ %127, %126 ]
  %88 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 1, !dbg !3499
  %89 = load i8, i8* %88, align 4, !dbg !3499, !tbaa !1919
  %90 = load i8, i8* %5, align 4, !dbg !3499, !tbaa !1820
  %91 = icmp eq i8 %89, %90, !dbg !3499
  br i1 %91, label %92, label %123, !dbg !3500

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i8 %89, 6, !dbg !3499
  %94 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3499
  %95 = load i32, i32* %94, align 8, !dbg !3499, !tbaa !485
  %96 = load i32, i32* %8, align 4, !dbg !3499, !tbaa !485
  %97 = icmp eq i32 %95, %96, !dbg !3499
  br i1 %93, label %98, label %119, !dbg !3500

; <label>:98:                                     ; preds = %92
  br i1 %97, label %99, label %123, !dbg !3499

; <label>:99:                                     ; preds = %98
  %100 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3499
  %101 = load i32, i32* %100, align 4, !dbg !3499, !tbaa !485
  %102 = load i32, i32* %82, align 4, !dbg !3499, !tbaa !485
  %103 = icmp eq i32 %101, %102, !dbg !3499
  br i1 %103, label %104, label %123, !dbg !3499

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3499
  %106 = load i32, i32* %105, align 8, !dbg !3499, !tbaa !485
  %107 = load i32, i32* %83, align 4, !dbg !3499, !tbaa !485
  %108 = icmp eq i32 %106, %107, !dbg !3499
  br i1 %108, label %109, label %123, !dbg !3499

; <label>:109:                                    ; preds = %104
  %110 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3499
  %111 = load i32, i32* %110, align 4, !dbg !3499, !tbaa !485
  %112 = load i32, i32* %84, align 4, !dbg !3499, !tbaa !485
  %113 = icmp eq i32 %111, %112, !dbg !3499
  br i1 %113, label %114, label %123, !dbg !3499

; <label>:114:                                    ; preds = %109
  %115 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3499
  %116 = load i8, i8* %115, align 8, !dbg !3499, !tbaa !485
  %117 = load i8, i8* %85, align 4, !dbg !3499, !tbaa !485
  %118 = icmp eq i8 %116, %117, !dbg !3499
  br i1 %118, label %120, label %123, !dbg !3499

; <label>:119:                                    ; preds = %92
  br i1 %97, label %120, label %123, !dbg !3500

; <label>:120:                                    ; preds = %119, %114
  %121 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !3501
  %122 = load %struct.tcp_pcb*, %struct.tcp_pcb** %121, align 8, !dbg !3501, !tbaa !533
  tail call void @tcp_abandon(%struct.tcp_pcb* nonnull %87, i32 1) #7, !dbg !3505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3506
  br label %126, !dbg !3507

; <label>:123:                                    ; preds = %119, %114, %109, %104, %99, %98, %86
  %124 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %87, i64 0, i32 6, !dbg !3508
  %125 = load %struct.tcp_pcb*, %struct.tcp_pcb** %124, align 8, !dbg !3508, !tbaa !533
  br label %126

; <label>:126:                                    ; preds = %123, %120
  %127 = phi %struct.tcp_pcb* [ %125, %123 ], [ %122, %120 ], !dbg !3509
  %128 = icmp eq %struct.tcp_pcb* %127, null, !dbg !3497
  br i1 %128, label %129, label %86, !dbg !3498, !llvm.loop !3488

; <label>:129:                                    ; preds = %126, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3510
  %130 = icmp eq %struct.ip_addr* %1, null, !dbg !3511
  br i1 %130, label %221, label %131, !dbg !3513

; <label>:131:                                    ; preds = %129
  %132 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !3511
  %133 = load i8, i8* %132, align 4, !dbg !3511, !tbaa !1820
  %134 = icmp eq i8 %133, 6, !dbg !3511
  %135 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !3511
  %136 = load i32, i32* %135, align 4, !dbg !3511, !tbaa !485
  %137 = icmp eq i32 %136, 0, !dbg !3511
  br i1 %134, label %138, label %151, !dbg !3513

; <label>:138:                                    ; preds = %131
  br i1 %137, label %139, label %152, !dbg !3511

; <label>:139:                                    ; preds = %138
  %140 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !3511
  %141 = load i32, i32* %140, align 4, !dbg !3511, !tbaa !485
  %142 = icmp eq i32 %141, 0, !dbg !3511
  br i1 %142, label %143, label %152, !dbg !3511

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !3511
  %145 = load i32, i32* %144, align 4, !dbg !3511, !tbaa !485
  %146 = icmp eq i32 %145, 0, !dbg !3511
  br i1 %146, label %147, label %152, !dbg !3511

; <label>:147:                                    ; preds = %143
  %148 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !3511
  %149 = load i32, i32* %148, align 4, !dbg !3511, !tbaa !485
  %150 = icmp eq i32 %149, 0, !dbg !3511
  br i1 %150, label %221, label %152, !dbg !3511

; <label>:151:                                    ; preds = %131
  br i1 %137, label %221, label %152, !dbg !3513

; <label>:152:                                    ; preds = %151, %147, %143, %139, %138
  %153 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** getelementptr inbounds (%union.tcp_listen_pcbs_t, %union.tcp_listen_pcbs_t* @tcp_listen_pcbs, i64 0, i32 0), align 8, !dbg !3515, !tbaa !485
  %154 = icmp eq %struct.tcp_pcb_listen* %153, null, !dbg !3519
  br i1 %154, label %221, label %155, !dbg !3520

; <label>:155:                                    ; preds = %152
  %156 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 1
  %157 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1
  %158 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2
  %159 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3
  %160 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1
  %161 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 2
  %162 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 0, i64 3
  %163 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %0, i64 0, i32 0, i32 0, i32 1
  br label %164, !dbg !3520

; <label>:164:                                    ; preds = %155, %217
  %165 = phi %struct.tcp_pcb_listen* [ %153, %155 ], [ %219, %217 ]
  %166 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 1, !dbg !3521
  %167 = load i8, i8* %166, align 4, !dbg !3521, !tbaa !2053
  %168 = load i8, i8* %5, align 4, !dbg !3521, !tbaa !1820
  %169 = icmp eq i8 %167, %168, !dbg !3521
  br i1 %169, label %170, label %217, !dbg !3524

; <label>:170:                                    ; preds = %164
  %171 = icmp eq i8 %167, 6, !dbg !3521
  %172 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 0, !dbg !3521
  %173 = load i32, i32* %172, align 8, !dbg !3521, !tbaa !485
  %174 = load i32, i32* %8, align 4, !dbg !3521, !tbaa !485
  %175 = icmp eq i32 %173, %174, !dbg !3521
  br i1 %171, label %176, label %197, !dbg !3524

; <label>:176:                                    ; preds = %170
  br i1 %175, label %177, label %217, !dbg !3521

; <label>:177:                                    ; preds = %176
  %178 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3521
  %179 = load i32, i32* %178, align 4, !dbg !3521, !tbaa !485
  %180 = load i32, i32* %156, align 4, !dbg !3521, !tbaa !485
  %181 = icmp eq i32 %179, %180, !dbg !3521
  br i1 %181, label %182, label %217, !dbg !3521

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3521
  %184 = load i32, i32* %183, align 8, !dbg !3521, !tbaa !485
  %185 = load i32, i32* %161, align 4, !dbg !3521, !tbaa !485
  %186 = icmp eq i32 %184, %185, !dbg !3521
  br i1 %186, label %187, label %217, !dbg !3521

; <label>:187:                                    ; preds = %182
  %188 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3521
  %189 = load i32, i32* %188, align 4, !dbg !3521, !tbaa !485
  %190 = load i32, i32* %162, align 4, !dbg !3521, !tbaa !485
  %191 = icmp eq i32 %189, %190, !dbg !3521
  br i1 %191, label %192, label %217, !dbg !3521

; <label>:192:                                    ; preds = %187
  %193 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3521
  %194 = load i8, i8* %193, align 8, !dbg !3521, !tbaa !485
  %195 = load i8, i8* %163, align 4, !dbg !3521, !tbaa !485
  %196 = icmp eq i8 %194, %195, !dbg !3521
  br i1 %196, label %198, label %217, !dbg !3521

; <label>:197:                                    ; preds = %170
  br i1 %175, label %198, label %217, !dbg !3524

; <label>:198:                                    ; preds = %197, %192
  %199 = load i8, i8* %132, align 4, !dbg !3525, !tbaa !1820
  store i8 %199, i8* %166, align 4, !dbg !3525, !tbaa !2053
  %200 = load i8, i8* %132, align 4, !dbg !3529, !tbaa !1820
  %201 = icmp eq i8 %200, 6, !dbg !3529
  %202 = load i32, i32* %135, align 4, !dbg !3531, !tbaa !485
  store i32 %202, i32* %172, align 8, !dbg !3531, !tbaa !485
  br i1 %201, label %203, label %212, !dbg !3534

; <label>:203:                                    ; preds = %198
  %204 = load i32, i32* %157, align 4, !dbg !3531, !tbaa !485
  %205 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3531
  store i32 %204, i32* %205, align 4, !dbg !3531, !tbaa !485
  %206 = load i32, i32* %158, align 4, !dbg !3531, !tbaa !485
  %207 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3531
  store i32 %206, i32* %207, align 8, !dbg !3531, !tbaa !485
  %208 = load i32, i32* %159, align 4, !dbg !3531, !tbaa !485
  %209 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3531
  store i32 %208, i32* %209, align 4, !dbg !3531, !tbaa !485
  %210 = load i8, i8* %160, align 4, !dbg !3531, !tbaa !485
  %211 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3531
  store i8 %210, i8* %211, align 8, !dbg !3531, !tbaa !485
  br label %217, !dbg !3535

; <label>:212:                                    ; preds = %198
  %213 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 3, !dbg !3536
  store i32 0, i32* %213, align 4, !dbg !3536, !tbaa !485
  %214 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 2, !dbg !3536
  store i32 0, i32* %214, align 8, !dbg !3536, !tbaa !485
  %215 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 0, i64 1, !dbg !3536
  store i32 0, i32* %215, align 4, !dbg !3536, !tbaa !485
  %216 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3536
  store i8 0, i8* %216, align 8, !dbg !3536, !tbaa !485
  br label %217

; <label>:217:                                    ; preds = %164, %176, %177, %182, %187, %192, %197, %212, %203
  %218 = getelementptr inbounds %struct.tcp_pcb_listen, %struct.tcp_pcb_listen* %165, i64 0, i32 6, !dbg !3539
  %219 = load %struct.tcp_pcb_listen*, %struct.tcp_pcb_listen** %218, align 8, !dbg !3515, !tbaa !485
  %220 = icmp eq %struct.tcp_pcb_listen* %219, null, !dbg !3519
  br i1 %220, label %221, label %164, !dbg !3520, !llvm.loop !3540

; <label>:221:                                    ; preds = %217, %152, %147, %151, %129, %2, %24, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3542
  ret void, !dbg !3542
}

; Function Attrs: noredzone nounwind
define dso_local i8* @tcp_debug_state_str(i32) local_unnamed_addr #0 !dbg !3543 {
  %2 = zext i32 %0 to i64, !dbg !3549
  %3 = getelementptr inbounds [11 x i8*], [11 x i8*]* @tcp_state_str, i64 0, i64 %2, !dbg !3549
  %4 = load i8*, i8** %3, align 8, !dbg !3549, !tbaa !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  ret i8* %4, !dbg !3550
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @tcp_tcp_get_tcp_addrinfo(%struct.tcp_pcb* readonly, i32, %struct.ip_addr*, i16*) local_unnamed_addr #0 !dbg !3551 {
  %5 = icmp eq %struct.tcp_pcb* %0, null, !dbg !3565
  br i1 %5, label %28, label %6, !dbg !3567

; <label>:6:                                      ; preds = %4
  %7 = icmp eq i32 %1, 0, !dbg !3568
  %8 = icmp ne %struct.ip_addr* %2, null, !dbg !3571
  br i1 %7, label %18, label %9, !dbg !3574

; <label>:9:                                      ; preds = %6
  br i1 %8, label %10, label %13, !dbg !3575

; <label>:10:                                     ; preds = %9
  %11 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3577
  %12 = bitcast %struct.tcp_pcb* %0 to i8*, !dbg !3577
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %12, i64 24, i1 false), !dbg !3577, !tbaa.struct !3580
  br label %13, !dbg !3581

; <label>:13:                                     ; preds = %10, %9
  %14 = icmp eq i16* %3, null, !dbg !3582
  br i1 %14, label %28, label %15, !dbg !3584

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 10, !dbg !3585
  %17 = load i16, i16* %16, align 2, !dbg !3585, !tbaa !974
  store i16 %17, i16* %3, align 2, !dbg !3587, !tbaa !445
  br label %28, !dbg !3588

; <label>:18:                                     ; preds = %6
  br i1 %8, label %19, label %23, !dbg !3589

; <label>:19:                                     ; preds = %18
  %20 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 1, !dbg !3590
  %21 = bitcast %struct.ip_addr* %2 to i8*, !dbg !3590
  %22 = bitcast %struct.ip_addr* %20 to i8*, !dbg !3590
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !3590, !tbaa.struct !3580
  br label %23, !dbg !3592

; <label>:23:                                     ; preds = %19, %18
  %24 = icmp eq i16* %3, null, !dbg !3593
  br i1 %24, label %28, label %25, !dbg !3595

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %0, i64 0, i32 11, !dbg !3596
  %27 = load i16, i16* %26, align 8, !dbg !3596, !tbaa !976
  store i16 %27, i16* %3, align 2, !dbg !3598, !tbaa !445
  br label %28, !dbg !3599

; <label>:28:                                     ; preds = %4, %15, %25, %23, %13
  %29 = phi i8 [ 0, %13 ], [ 0, %23 ], [ 0, %25 ], [ 0, %15 ], [ -6, %4 ], !dbg !3600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3601
  ret i8 %29, !dbg !3601
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #2 !dbg !400 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !3602
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #7, !dbg !3604
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #7, !dbg !3606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3607
  ret i32 %2, !dbg !3607
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

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
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

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
!390 = !{i32 601510}
!391 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !389)
!392 = !DILocation(line: 121, column: 2, scope: !383, inlinedAt: !389)
!393 = !DILocation(line: 66, column: 2, scope: !376, inlinedAt: !381)
!394 = !DILocation(line: 120, column: 2, scope: !383, inlinedAt: !395)
!395 = distinct !DILocation(line: 66, column: 2, scope: !376, inlinedAt: !381)
!396 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !395)
!397 = !DILocation(line: 121, column: 2, scope: !383, inlinedAt: !395)
!398 = !DILocation(line: 66, column: 2, scope: !377, inlinedAt: !381)
!399 = !DILocation(line: 65, column: 11, scope: !400, inlinedAt: !405)
!400 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !401, file: !401, line: 60, type: !366, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !402)
!401 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "iflags", scope: !400, file: !401, line: 62, type: !272)
!404 = !DILocalVariable(name: "ret", scope: !400, file: !401, line: 63, type: !368)
!405 = distinct !DILocation(line: 66, column: 2, scope: !406, inlinedAt: !381)
!406 = distinct !DILexicalBlock(scope: !376, file: !365, line: 66, column: 2)
!407 = !DILocation(line: 62, column: 16, scope: !400, inlinedAt: !405)
!408 = !DILocation(line: 66, column: 8, scope: !400, inlinedAt: !405)
!409 = !DILocation(line: 63, column: 8, scope: !400, inlinedAt: !405)
!410 = !DILocation(line: 67, column: 2, scope: !400, inlinedAt: !405)
!411 = !DILocation(line: 69, column: 2, scope: !400, inlinedAt: !405)
!412 = !DILocation(line: 65, column: 8, scope: !364, inlinedAt: !381)
!413 = !DILocation(line: 66, column: 2, scope: !406, inlinedAt: !381)
!414 = !{!415, !415, i64 0}
!415 = !{!"int", !416, i64 0}
!416 = !{!"omnipotent char", !417, i64 0}
!417 = !{!"Simple C/C++ TBAA"}
!418 = !DILocation(line: 120, column: 2, scope: !383, inlinedAt: !419)
!419 = distinct !DILocation(line: 49, column: 21, scope: !420, inlinedAt: !426)
!420 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !421, file: !421, line: 47, type: !422, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !424)
!421 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!422 = !DISubroutineType(types: !423)
!423 = !{!50}
!424 = !{!425}
!425 = !DILocalVariable(name: "sp", scope: !420, file: !421, line: 49, type: !272)
!426 = distinct !DILocation(line: 66, column: 2, scope: !373, inlinedAt: !381)
!427 = !DILocation(line: 118, column: 16, scope: !383, inlinedAt: !419)
!428 = !DILocation(line: 121, column: 2, scope: !383, inlinedAt: !419)
!429 = !DILocation(line: 49, column: 16, scope: !420, inlinedAt: !426)
!430 = !DILocation(line: 50, column: 19, scope: !420, inlinedAt: !426)
!431 = !DILocation(line: 50, column: 11, scope: !420, inlinedAt: !426)
!432 = !DILocation(line: 50, column: 9, scope: !420, inlinedAt: !426)
!433 = !DILocation(line: 50, column: 2, scope: !420, inlinedAt: !426)
!434 = !DILocation(line: 66, column: 2, scope: !373, inlinedAt: !381)
!435 = !{i32 -2146754772, i32 -2146754759, i32 -2146754734, i32 -2146754710, i32 -2146754685, i32 -2146754610, i32 -2146754585, i32 -2146754441, i32 -2146751348, i32 -2146751259, i32 -2146751138, i32 -2146751043, i32 -2146750942, i32 -2146750915, i32 -2146750832, i32 -2146750743, i32 -2146750622, i32 -2146750522, i32 -2146750416, i32 -2146750308, i32 -2146754158, i32 -2146754105, i32 -2146754074, i32 -2146754043, i32 -2146754022, i32 -2146754000, i32 -2146753951, i32 -2146753930, i32 -2146750225, i32 -2146750136, i32 -2146750015, i32 -2146749916, i32 -2146749810, i32 -2146749708, i32 -2146749675, i32 -2146749602, i32 -2146749534, i32 -2146753628, i32 -2146753569, i32 -2146753516, i32 -2146753485, i32 -2146753454, i32 -2146753433, i32 -2146753411, i32 -2146753362, i32 -2146753341, i32 -2146749483, i32 -2146749394, i32 -2146749273, i32 -2146749174, i32 -2146749068, i32 -2146748966, i32 -2146748933, i32 -2146748850, i32 -2146748761, i32 -2146748640, i32 -2146748540, i32 -2146748514, i32 -2146748411, i32 -2146748385, i32 -2146753083, i32 -2146753016, i32 -2146752991, i32 -2146752927, i32 -2146752845, i32 -2146752822, i32 -2146752797, i32 -2146752772}
!436 = !DILocation(line: 66, column: 2, scope: !437, inlinedAt: !381)
!437 = distinct !DILexicalBlock(scope: !438, file: !365, line: 66, column: 2)
!438 = distinct !DILexicalBlock(scope: !373, file: !365, line: 66, column: 2)
!439 = !{i32 -2146751825, i32 -2146751808}
!440 = !DILocation(line: 67, column: 9, scope: !364, inlinedAt: !381)
!441 = !DILocation(line: 68, column: 1, scope: !364, inlinedAt: !381)
!442 = !DILocation(line: 67, column: 2, scope: !364, inlinedAt: !381)
!443 = !DILocation(line: 204, column: 14, scope: !359)
!444 = !DILocation(line: 204, column: 12, scope: !359)
!445 = !{!446, !446, i64 0}
!446 = !{!"short", !416, i64 0}
!447 = !DILocation(line: 206, column: 1, scope: !359)
!448 = distinct !DISubprogram(name: "tcp_free", scope: !3, file: !3, line: 210, type: !449, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !145}
!451 = !{!452}
!452 = !DILocalVariable(name: "pcb", arg: 1, scope: !448, file: !3, line: 210, type: !145)
!453 = !DILocation(line: 210, column: 26, scope: !448)
!454 = !DILocation(line: 212, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !3, line: 212, column: 3)
!456 = distinct !DILexicalBlock(scope: !448, file: !3, line: 212, column: 3)
!457 = !{!458, !416, i64 72}
!458 = !{!"tcp_pcb", !459, i64 0, !459, i64 24, !416, i64 48, !416, i64 49, !416, i64 50, !416, i64 51, !460, i64 56, !460, i64 64, !416, i64 72, !416, i64 76, !446, i64 78, !446, i64 80, !446, i64 82, !416, i64 84, !416, i64 85, !416, i64 86, !415, i64 88, !415, i64 92, !415, i64 96, !415, i64 100, !415, i64 104, !446, i64 108, !446, i64 110, !415, i64 112, !415, i64 116, !446, i64 120, !446, i64 122, !446, i64 124, !416, i64 126, !416, i64 127, !415, i64 128, !415, i64 132, !415, i64 136, !415, i64 140, !415, i64 144, !415, i64 148, !415, i64 152, !415, i64 156, !415, i64 160, !415, i64 164, !415, i64 168, !446, i64 172, !446, i64 174, !415, i64 176, !460, i64 184, !460, i64 192, !460, i64 200, !460, i64 208, !460, i64 216, !460, i64 224, !460, i64 232, !460, i64 240, !460, i64 248, !460, i64 256, !415, i64 264, !416, i64 268, !416, i64 269, !416, i64 270, !416, i64 271, !416, i64 272, !416, i64 273}
!459 = !{!"ip_addr", !416, i64 0, !416, i64 20}
!460 = !{!"any pointer", !416, i64 0}
!461 = !DILocation(line: 212, column: 3, scope: !456)
!462 = !DILocation(line: 212, column: 3, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 212, column: 3)
!464 = distinct !DILexicalBlock(scope: !455, file: !3, line: 212, column: 3)
!465 = !DILocation(line: 212, column: 3, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !3, line: 212, column: 3)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 212, column: 3)
!468 = distinct !DILexicalBlock(scope: !463, file: !3, line: 212, column: 3)
!469 = !DILocation(line: 216, column: 27, scope: !448)
!470 = !DILocation(line: 216, column: 3, scope: !448)
!471 = !DILocation(line: 217, column: 1, scope: !448)
!472 = !DILocation(line: 194, column: 43, scope: !305)
!473 = !DILocation(line: 196, column: 2, scope: !305)
!474 = !DILocation(line: 196, column: 10, scope: !305)
!475 = !DILocation(line: 197, column: 2, scope: !305)
!476 = !DILocation(line: 198, column: 2, scope: !477)
!477 = distinct !DILexicalBlock(scope: !478, file: !306, line: 198, column: 2)
!478 = distinct !DILexicalBlock(scope: !305, file: !306, line: 198, column: 2)
!479 = !DILocation(line: 199, column: 2, scope: !305)
!480 = !DILocation(line: 200, column: 1, scope: !305)
!481 = distinct !DISubprogram(name: "tcp_tmr", scope: !3, file: !3, line: 234, type: !360, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!482 = !DILocation(line: 237, column: 3, scope: !481)
!483 = !DILocation(line: 239, column: 7, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !3, line: 239, column: 7)
!485 = !{!416, !416, i64 0}
!486 = !DILocation(line: 239, column: 19, scope: !484)
!487 = !DILocation(line: 239, column: 7, scope: !481)
!488 = !DILocation(line: 242, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 239, column: 24)
!490 = !DILocation(line: 243, column: 3, scope: !489)
!491 = !DILocation(line: 244, column: 1, scope: !481)
!492 = distinct !DISubprogram(name: "tcp_fasttmr", scope: !3, file: !3, line: 1479, type: !360, isLocal: false, isDefinition: true, scopeLine: 1480, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !493)
!493 = !{!494, !495}
!494 = !DILocalVariable(name: "pcb", scope: !492, file: !3, line: 1481, type: !145)
!495 = !DILocalVariable(name: "next", scope: !496, file: !3, line: 1490, type: !145)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1489, column: 43)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 1489, column: 9)
!498 = distinct !DILexicalBlock(scope: !492, file: !3, line: 1488, column: 23)
!499 = !DILocation(line: 1483, column: 3, scope: !492)
!500 = !DILocation(line: 1486, column: 9, scope: !492)
!501 = !{!460, !460, i64 0}
!502 = !DILocation(line: 1481, column: 19, scope: !492)
!503 = !DILocation(line: 1488, column: 14, scope: !492)
!504 = !DILocation(line: 1488, column: 3, scope: !492)
!505 = !DILocation(line: 1489, column: 14, scope: !497)
!506 = !{!458, !416, i64 86}
!507 = !DILocation(line: 1489, column: 28, scope: !497)
!508 = !DILocation(line: 1489, column: 25, scope: !497)
!509 = !DILocation(line: 1489, column: 9, scope: !498)
!510 = !DILocation(line: 1491, column: 23, scope: !496)
!511 = !DILocation(line: 1493, column: 16, scope: !512)
!512 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1493, column: 11)
!513 = !{!458, !446, i64 82}
!514 = !DILocation(line: 1493, column: 22, scope: !512)
!515 = !DILocation(line: 1493, column: 11, scope: !496)
!516 = !DILocation(line: 1495, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1495, column: 9)
!518 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1493, column: 38)
!519 = !DILocation(line: 1496, column: 9, scope: !518)
!520 = !DILocation(line: 1497, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1497, column: 9)
!522 = !DILocation(line: 1498, column: 7, scope: !518)
!523 = !DILocation(line: 1500, column: 16, scope: !524)
!524 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1500, column: 11)
!525 = !DILocation(line: 1500, column: 22, scope: !524)
!526 = !DILocation(line: 1500, column: 11, scope: !496)
!527 = !DILocation(line: 1502, column: 9, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !3, line: 1502, column: 9)
!529 = distinct !DILexicalBlock(scope: !524, file: !3, line: 1500, column: 38)
!530 = !DILocation(line: 1503, column: 9, scope: !529)
!531 = !DILocation(line: 1504, column: 7, scope: !529)
!532 = !DILocation(line: 1506, column: 19, scope: !496)
!533 = !{!458, !460, i64 56}
!534 = !DILocation(line: 1490, column: 23, scope: !496)
!535 = !DILocation(line: 1509, column: 16, scope: !536)
!536 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1509, column: 11)
!537 = !{!458, !460, i64 208}
!538 = !DILocation(line: 1509, column: 29, scope: !536)
!539 = !DILocation(line: 1509, column: 11, scope: !496)
!540 = !DILocation(line: 1510, column: 33, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !3, line: 1509, column: 38)
!542 = !DILocation(line: 1511, column: 9, scope: !541)
!543 = !DILocation(line: 1512, column: 13, scope: !544)
!544 = distinct !DILexicalBlock(scope: !541, file: !3, line: 1512, column: 13)
!545 = !DILocation(line: 1512, column: 13, scope: !541)
!546 = !DILocation(line: 1519, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1518, column: 12)
!548 = !DILocation(line: 0, scope: !547)
!549 = distinct !{!549, !504, !550}
!550 = !DILocation(line: 1521, column: 3, scope: !492)
!551 = !DILocation(line: 1522, column: 1, scope: !492)
!552 = distinct !DISubprogram(name: "tcp_slowtmr", scope: !3, file: !3, line: 1192, type: !360, isLocal: false, isDefinition: true, scopeLine: 1193, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !569, !572, !580, !581, !584, !585, !586, !587}
!554 = !DILocalVariable(name: "pcb", scope: !552, file: !3, line: 1194, type: !145)
!555 = !DILocalVariable(name: "prev", scope: !552, file: !3, line: 1194, type: !145)
!556 = !DILocalVariable(name: "eff_wnd", scope: !552, file: !3, line: 1195, type: !167)
!557 = !DILocalVariable(name: "pcb_remove", scope: !552, file: !3, line: 1196, type: !91)
!558 = !DILocalVariable(name: "pcb_reset", scope: !552, file: !3, line: 1197, type: !91)
!559 = !DILocalVariable(name: "err", scope: !552, file: !3, line: 1198, type: !140)
!560 = !DILocalVariable(name: "backoff_cnt", scope: !561, file: !3, line: 1241, type: !91)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1240, column: 16)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 1238, column: 13)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1235, column: 37)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1235, column: 11)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 1234, column: 12)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 1231, column: 16)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1228, column: 9)
!568 = distinct !DILexicalBlock(scope: !552, file: !3, line: 1212, column: 23)
!569 = !DILocalVariable(name: "next_slot", scope: !570, file: !3, line: 1246, type: !50)
!570 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1245, column: 48)
!571 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1245, column: 15)
!572 = !DILocalVariable(name: "backoff_idx", scope: !573, file: !3, line: 1287, type: !91)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 1286, column: 41)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1286, column: 17)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1283, column: 109)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 1283, column: 15)
!577 = distinct !DILexicalBlock(scope: !578, file: !3, line: 1275, column: 37)
!578 = distinct !DILexicalBlock(scope: !579, file: !3, line: 1275, column: 13)
!579 = distinct !DILexicalBlock(scope: !564, file: !3, line: 1269, column: 14)
!580 = !DILocalVariable(name: "calc_rto", scope: !573, file: !3, line: 1288, type: !50)
!581 = !DILocalVariable(name: "pcb2", scope: !582, file: !3, line: 1380, type: !145)
!582 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1379, column: 21)
!583 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1379, column: 9)
!584 = !DILocalVariable(name: "err_fn", scope: !582, file: !3, line: 1382, type: !253)
!585 = !DILocalVariable(name: "err_arg", scope: !582, file: !3, line: 1384, type: !88)
!586 = !DILocalVariable(name: "last_state", scope: !582, file: !3, line: 1385, type: !5)
!587 = !DILocalVariable(name: "pcb2", scope: !588, file: !3, line: 1451, type: !145)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 1450, column: 21)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 1450, column: 9)
!590 = distinct !DILexicalBlock(scope: !552, file: !3, line: 1440, column: 23)
!591 = !DILocation(line: 1198, column: 9, scope: !552)
!592 = !DILocation(line: 1202, column: 3, scope: !552)
!593 = !DILocation(line: 1203, column: 3, scope: !552)
!594 = !DILocation(line: 1194, column: 25, scope: !552)
!595 = !DILocation(line: 1208, column: 9, scope: !552)
!596 = !DILocation(line: 1194, column: 19, scope: !552)
!597 = !DILocation(line: 1212, column: 14, scope: !552)
!598 = !DILocation(line: 1212, column: 3, scope: !552)
!599 = !DILocation(line: 1214, column: 5, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 1214, column: 5)
!601 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1214, column: 5)
!602 = !DILocation(line: 1214, column: 5, scope: !601)
!603 = !DILocation(line: 1214, column: 5, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 1214, column: 5)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 1214, column: 5)
!606 = !DILocation(line: 1214, column: 5, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 1214, column: 5)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 1214, column: 5)
!609 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1214, column: 5)
!610 = !DILocation(line: 1215, column: 5, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 1215, column: 5)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 1215, column: 5)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 1215, column: 5)
!614 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1215, column: 5)
!615 = !DILocation(line: 1215, column: 5, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1215, column: 5)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1215, column: 5)
!618 = distinct !DILexicalBlock(scope: !611, file: !3, line: 1215, column: 5)
!619 = !DILocation(line: 1216, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1216, column: 5)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 1216, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1216, column: 5)
!623 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1216, column: 5)
!624 = !DILocation(line: 1216, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 1216, column: 5)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 1216, column: 5)
!627 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1216, column: 5)
!628 = !DILocation(line: 1217, column: 14, scope: !629)
!629 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1217, column: 9)
!630 = !DILocation(line: 1217, column: 28, scope: !629)
!631 = !DILocation(line: 1217, column: 25, scope: !629)
!632 = !DILocation(line: 1217, column: 9, scope: !568)
!633 = !DILocation(line: 1220, column: 18, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 1217, column: 43)
!635 = !DILocation(line: 1221, column: 7, scope: !634)
!636 = distinct !{!636, !598, !637}
!637 = !DILocation(line: 1434, column: 3, scope: !552)
!638 = !DILocation(line: 1223, column: 21, scope: !568)
!639 = !DILocation(line: 1196, column: 8, scope: !552)
!640 = !DILocation(line: 1197, column: 8, scope: !552)
!641 = !DILocation(line: 1228, column: 20, scope: !567)
!642 = !DILocation(line: 0, scope: !566)
!643 = !{!458, !416, i64 126}
!644 = !DILocation(line: 1228, column: 32, scope: !567)
!645 = !DILocation(line: 1228, column: 45, scope: !567)
!646 = !DILocation(line: 1228, column: 9, scope: !568)
!647 = !DILocation(line: 1231, column: 26, scope: !566)
!648 = !DILocation(line: 1231, column: 16, scope: !567)
!649 = !DILocation(line: 1235, column: 16, scope: !564)
!650 = !{!458, !416, i64 269}
!651 = !DILocation(line: 1235, column: 11, scope: !564)
!652 = !DILocation(line: 1235, column: 32, scope: !564)
!653 = !DILocation(line: 1235, column: 11, scope: !565)
!654 = !DILocation(line: 1236, column: 9, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 1236, column: 9)
!656 = distinct !DILexicalBlock(scope: !563, file: !3, line: 1236, column: 9)
!657 = !{!458, !460, i64 192}
!658 = !DILocation(line: 1236, column: 9, scope: !656)
!659 = !DILocation(line: 1236, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 1236, column: 9)
!661 = distinct !DILexicalBlock(scope: !655, file: !3, line: 1236, column: 9)
!662 = !DILocation(line: 1236, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 1236, column: 9)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1236, column: 9)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1236, column: 9)
!666 = !DILocation(line: 1237, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 1237, column: 9)
!668 = distinct !DILexicalBlock(scope: !563, file: !3, line: 1237, column: 9)
!669 = !{!458, !460, i64 184}
!670 = !DILocation(line: 1237, column: 9, scope: !668)
!671 = !DILocation(line: 1237, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 1237, column: 9)
!673 = distinct !DILexicalBlock(scope: !667, file: !3, line: 1237, column: 9)
!674 = !DILocation(line: 1237, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 1237, column: 9)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 1237, column: 9)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1237, column: 9)
!678 = !DILocation(line: 1238, column: 18, scope: !562)
!679 = !{!458, !416, i64 270}
!680 = !DILocation(line: 1238, column: 32, scope: !562)
!681 = !DILocation(line: 1238, column: 13, scope: !563)
!682 = !DILocation(line: 1241, column: 71, scope: !561)
!683 = !DILocation(line: 1241, column: 30, scope: !561)
!684 = !DILocation(line: 1241, column: 16, scope: !561)
!685 = !DILocation(line: 1242, column: 20, scope: !686)
!686 = distinct !DILexicalBlock(scope: !561, file: !3, line: 1242, column: 15)
!687 = !{!458, !416, i64 268}
!688 = !DILocation(line: 1242, column: 32, scope: !686)
!689 = !DILocation(line: 1242, column: 15, scope: !561)
!690 = !DILocation(line: 1243, column: 29, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !3, line: 1242, column: 47)
!692 = !DILocation(line: 1244, column: 11, scope: !691)
!693 = !DILocation(line: 1245, column: 20, scope: !571)
!694 = !DILocation(line: 1245, column: 32, scope: !571)
!695 = !DILocation(line: 1245, column: 15, scope: !561)
!696 = !DILocation(line: 1246, column: 17, scope: !570)
!697 = !DILocation(line: 1248, column: 22, scope: !698)
!698 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1248, column: 17)
!699 = !{!458, !415, i64 160}
!700 = !DILocation(line: 1248, column: 30, scope: !698)
!701 = !DILocation(line: 1248, column: 17, scope: !570)
!702 = !DILocation(line: 1249, column: 19, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 1249, column: 19)
!704 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1248, column: 36)
!705 = !DILocation(line: 1249, column: 46, scope: !703)
!706 = !DILocation(line: 1261, column: 17, scope: !570)
!707 = !DILocation(line: 1254, column: 45, scope: !708)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 1254, column: 19)
!709 = distinct !DILexicalBlock(scope: !698, file: !3, line: 1253, column: 20)
!710 = !DILocation(line: 1254, column: 19, scope: !708)
!711 = !DILocation(line: 1254, column: 66, scope: !708)
!712 = !DILocation(line: 1254, column: 19, scope: !709)
!713 = !DILocation(line: 1255, column: 21, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 1255, column: 21)
!715 = distinct !DILexicalBlock(scope: !708, file: !3, line: 1254, column: 77)
!716 = !DILocation(line: 1255, column: 37, scope: !714)
!717 = !DILocation(line: 1262, column: 32, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 1261, column: 28)
!719 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1261, column: 17)
!720 = !DILocation(line: 1263, column: 24, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 1263, column: 19)
!722 = !DILocation(line: 1263, column: 40, scope: !721)
!723 = !DILocation(line: 1263, column: 19, scope: !718)
!724 = !DILocation(line: 1264, column: 37, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 1263, column: 71)
!726 = !DILocation(line: 1265, column: 15, scope: !725)
!727 = !DILocation(line: 1271, column: 19, scope: !728)
!728 = distinct !DILexicalBlock(scope: !579, file: !3, line: 1271, column: 13)
!729 = !{!458, !446, i64 108}
!730 = !DILocation(line: 1271, column: 25, scope: !728)
!731 = !DILocation(line: 1271, column: 46, scope: !728)
!732 = !DILocation(line: 1271, column: 31, scope: !728)
!733 = !DILocation(line: 1272, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !728, file: !3, line: 1271, column: 57)
!735 = !DILocation(line: 1273, column: 9, scope: !734)
!736 = !DILocation(line: 1275, column: 18, scope: !578)
!737 = !DILocation(line: 1275, column: 32, scope: !578)
!738 = !{!458, !446, i64 124}
!739 = !DILocation(line: 1275, column: 24, scope: !578)
!740 = !DILocation(line: 1275, column: 13, scope: !579)
!741 = !DILocation(line: 1283, column: 16, scope: !576)
!742 = !DILocation(line: 1283, column: 44, scope: !576)
!743 = !DILocation(line: 1283, column: 55, scope: !576)
!744 = !DILocation(line: 1283, column: 65, scope: !576)
!745 = !DILocation(line: 1283, column: 73, scope: !576)
!746 = !DILocation(line: 1283, column: 82, scope: !576)
!747 = !DILocation(line: 1283, column: 91, scope: !576)
!748 = !DILocation(line: 1283, column: 98, scope: !576)
!749 = !DILocation(line: 1283, column: 15, scope: !577)
!750 = !DILocation(line: 1286, column: 22, scope: !574)
!751 = !DILocation(line: 1286, column: 28, scope: !574)
!752 = !DILocation(line: 1286, column: 17, scope: !575)
!753 = !DILocation(line: 1287, column: 34, scope: !573)
!754 = !DILocation(line: 1287, column: 20, scope: !573)
!755 = !DILocation(line: 1288, column: 37, scope: !573)
!756 = !{!458, !446, i64 120}
!757 = !DILocation(line: 1288, column: 40, scope: !573)
!758 = !DILocation(line: 1288, column: 53, scope: !573)
!759 = !{!458, !446, i64 122}
!760 = !DILocation(line: 1288, column: 48, scope: !573)
!761 = !DILocation(line: 1288, column: 46, scope: !573)
!762 = !DILocation(line: 1288, column: 60, scope: !573)
!763 = !DILocation(line: 1288, column: 57, scope: !573)
!764 = !DILocation(line: 1288, column: 19, scope: !573)
!765 = !DILocation(line: 1289, column: 33, scope: !573)
!766 = !DILocation(line: 1289, column: 26, scope: !573)
!767 = !DILocation(line: 1289, column: 24, scope: !573)
!768 = !DILocation(line: 1290, column: 13, scope: !573)
!769 = !DILocation(line: 1293, column: 24, scope: !575)
!770 = !DILocation(line: 1296, column: 23, scope: !575)
!771 = !{!458, !415, i64 132}
!772 = !DILocation(line: 1195, column: 17, scope: !552)
!773 = !DILocation(line: 1297, column: 37, scope: !575)
!774 = !DILocation(line: 1297, column: 18, scope: !575)
!775 = !DILocation(line: 1298, column: 54, scope: !776)
!776 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1298, column: 17)
!777 = !{!458, !446, i64 110}
!778 = !DILocation(line: 1298, column: 49, scope: !776)
!779 = !DILocation(line: 1298, column: 58, scope: !776)
!780 = !DILocation(line: 1298, column: 31, scope: !776)
!781 = !DILocation(line: 1298, column: 17, scope: !575)
!782 = !DILocation(line: 0, scope: !783)
!783 = distinct !DILexicalBlock(scope: !776, file: !3, line: 1298, column: 65)
!784 = !DILocation(line: 1301, column: 23, scope: !575)
!785 = !DILocation(line: 1305, column: 18, scope: !575)
!786 = !DILocation(line: 1305, column: 30, scope: !575)
!787 = !{!458, !415, i64 176}
!788 = !DILocation(line: 1309, column: 13, scope: !575)
!789 = !DILocation(line: 1310, column: 11, scope: !575)
!790 = !DILocation(line: 0, scope: !568)
!791 = !DILocation(line: 1315, column: 14, scope: !792)
!792 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1315, column: 9)
!793 = !DILocation(line: 1315, column: 20, scope: !792)
!794 = !DILocation(line: 1315, column: 9, scope: !568)
!795 = !DILocation(line: 1317, column: 16, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1317, column: 11)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 1315, column: 35)
!798 = !DILocation(line: 1317, column: 22, scope: !796)
!799 = !DILocation(line: 1317, column: 11, scope: !797)
!800 = !DILocation(line: 1320, column: 21, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 1320, column: 13)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 1317, column: 37)
!803 = !DILocation(line: 1320, column: 38, scope: !801)
!804 = !{!458, !415, i64 88}
!805 = !DILocation(line: 1320, column: 31, scope: !801)
!806 = !DILocation(line: 1320, column: 43, scope: !801)
!807 = !DILocation(line: 1320, column: 13, scope: !802)
!808 = !DILocation(line: 0, scope: !809)
!809 = distinct !DILexicalBlock(scope: !567, file: !3, line: 1228, column: 63)
!810 = !DILocation(line: 1329, column: 9, scope: !811)
!811 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1329, column: 9)
!812 = !{!458, !416, i64 49}
!813 = !DILocation(line: 1329, column: 43, scope: !811)
!814 = !DILocation(line: 1330, column: 38, scope: !811)
!815 = !DILocation(line: 1332, column: 19, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1332, column: 11)
!817 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1331, column: 39)
!818 = !DILocation(line: 1332, column: 36, scope: !816)
!819 = !DILocation(line: 1332, column: 29, scope: !816)
!820 = !DILocation(line: 1332, column: 11, scope: !816)
!821 = !DILocation(line: 1333, column: 17, scope: !816)
!822 = !{!458, !415, i64 264}
!823 = !DILocation(line: 1333, column: 12, scope: !816)
!824 = !DILocation(line: 1333, column: 27, scope: !816)
!825 = !DILocation(line: 1333, column: 48, scope: !816)
!826 = !DILocation(line: 1332, column: 41, scope: !816)
!827 = !DILocation(line: 1332, column: 11, scope: !817)
!828 = !DILocation(line: 1338, column: 9, scope: !829)
!829 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1333, column: 69)
!830 = !DILocation(line: 1340, column: 7, scope: !829)
!831 = !DILocation(line: 1341, column: 41, scope: !832)
!832 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1340, column: 18)
!833 = !{!458, !416, i64 271}
!834 = !DILocation(line: 1341, column: 36, scope: !832)
!835 = !DILocation(line: 1341, column: 55, scope: !832)
!836 = !DILocation(line: 1341, column: 34, scope: !832)
!837 = !DILocation(line: 1342, column: 18, scope: !832)
!838 = !DILocation(line: 1340, column: 48, scope: !832)
!839 = !DILocation(line: 1340, column: 18, scope: !816)
!840 = !DILocation(line: 1343, column: 15, scope: !841)
!841 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1342, column: 39)
!842 = !DILocation(line: 1344, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1344, column: 13)
!844 = !DILocation(line: 1344, column: 13, scope: !841)
!845 = !DILocation(line: 1345, column: 29, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1344, column: 28)
!847 = !DILocation(line: 1346, column: 9, scope: !846)
!848 = !DILocation(line: 0, scope: !849)
!849 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1321, column: 55)
!850 = !DILocation(line: 1354, column: 14, scope: !851)
!851 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1354, column: 9)
!852 = !{!458, !460, i64 200}
!853 = !DILocation(line: 1354, column: 20, scope: !851)
!854 = !DILocation(line: 1354, column: 28, scope: !851)
!855 = !DILocation(line: 1355, column: 10, scope: !851)
!856 = !DILocation(line: 1355, column: 27, scope: !851)
!857 = !DILocation(line: 1355, column: 20, scope: !851)
!858 = !DILocation(line: 1355, column: 46, scope: !851)
!859 = !DILocation(line: 1355, column: 34, scope: !851)
!860 = !DILocation(line: 1355, column: 50, scope: !851)
!861 = !DILocation(line: 1355, column: 31, scope: !851)
!862 = !DILocation(line: 1354, column: 9, scope: !568)
!863 = !DILocalVariable(name: "seg", arg: 1, scope: !864, file: !3, line: 1608, type: !198)
!864 = distinct !DISubprogram(name: "tcp_segs_free", scope: !3, file: !3, line: 1608, type: !865, isLocal: false, isDefinition: true, scopeLine: 1609, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !198}
!867 = !{!863, !868}
!868 = !DILocalVariable(name: "next", scope: !869, file: !3, line: 1611, type: !198)
!869 = distinct !DILexicalBlock(scope: !864, file: !3, line: 1610, column: 23)
!870 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !871)
!871 = distinct !DILocation(line: 2389, column: 5, scope: !872, inlinedAt: !877)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 2388, column: 19)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 2388, column: 7)
!874 = distinct !DISubprogram(name: "tcp_free_ooseq", scope: !3, file: !3, line: 2386, type: !449, isLocal: false, isDefinition: true, scopeLine: 2387, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !875)
!875 = !{!876}
!876 = !DILocalVariable(name: "pcb", arg: 1, scope: !874, file: !3, line: 2386, type: !145)
!877 = distinct !DILocation(line: 1357, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !851, file: !3, line: 1355, column: 72)
!879 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !871)
!880 = !{!881, !460, i64 0}
!881 = !{!"tcp_seg", !460, i64 0, !460, i64 8, !446, i64 16, !416, i64 18, !460, i64 24}
!882 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !871)
!883 = !DILocalVariable(name: "seg", arg: 1, scope: !884, file: !3, line: 1623, type: !198)
!884 = distinct !DISubprogram(name: "tcp_seg_free", scope: !3, file: !3, line: 1623, type: !865, isLocal: false, isDefinition: true, scopeLine: 1624, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !885)
!885 = !{!883}
!886 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !887)
!887 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !871)
!888 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !887)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 1626, column: 9)
!890 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1625, column: 20)
!891 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1625, column: 7)
!892 = !{!881, !460, i64 8}
!893 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !887)
!894 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !887)
!895 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !887)
!896 = distinct !DILexicalBlock(scope: !889, file: !3, line: 1626, column: 25)
!897 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !887)
!898 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !887)
!899 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !887)
!900 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !887)
!901 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !871)
!902 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !871)
!903 = distinct !{!903, !904, !905}
!904 = !DILocation(line: 1610, column: 3, scope: !864)
!905 = !DILocation(line: 1614, column: 3, scope: !864)
!906 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !871)
!907 = !DILocation(line: 2390, column: 16, scope: !872, inlinedAt: !877)
!908 = !DILocation(line: 2395, column: 1, scope: !874, inlinedAt: !877)
!909 = !DILocation(line: 1358, column: 5, scope: !878)
!910 = !DILocation(line: 1362, column: 14, scope: !911)
!911 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1362, column: 9)
!912 = !DILocation(line: 1362, column: 9, scope: !568)
!913 = !DILocation(line: 1372, column: 11, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1371, column: 33)
!915 = distinct !DILexicalBlock(scope: !568, file: !3, line: 1371, column: 9)
!916 = !DILocation(line: 0, scope: !917)
!917 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1372, column: 11)
!918 = !DILocation(line: 0, scope: !914)
!919 = !DILocation(line: 1379, column: 9, scope: !583)
!920 = !DILocation(line: 0, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1364, column: 53)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1363, column: 11)
!923 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1362, column: 33)
!924 = !DILocation(line: 1379, column: 9, scope: !568)
!925 = !DILocation(line: 1382, column: 32, scope: !582)
!926 = !{!458, !460, i64 256}
!927 = !DILocation(line: 1382, column: 18, scope: !582)
!928 = !DILocation(line: 1386, column: 7, scope: !582)
!929 = !DILocation(line: 1388, column: 16, scope: !930)
!930 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1388, column: 11)
!931 = !DILocation(line: 0, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !3, line: 1389, column: 9)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1389, column: 9)
!934 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1388, column: 25)
!935 = !DILocation(line: 1388, column: 11, scope: !582)
!936 = !DILocation(line: 1389, column: 9, scope: !932)
!937 = !DILocation(line: 1389, column: 9, scope: !933)
!938 = !DILocation(line: 1389, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 1389, column: 9)
!940 = distinct !DILexicalBlock(scope: !932, file: !3, line: 1389, column: 9)
!941 = !DILocation(line: 1389, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1389, column: 9)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1389, column: 9)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1389, column: 9)
!945 = !DILocation(line: 1390, column: 27, scope: !934)
!946 = !DILocation(line: 1390, column: 15, scope: !934)
!947 = !DILocation(line: 1390, column: 20, scope: !934)
!948 = !DILocation(line: 1391, column: 7, scope: !934)
!949 = !DILocation(line: 1393, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1393, column: 9)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 1393, column: 9)
!952 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1391, column: 14)
!953 = !DILocation(line: 1393, column: 9, scope: !951)
!954 = !DILocation(line: 1393, column: 9, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 1393, column: 9)
!956 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1393, column: 9)
!957 = !DILocation(line: 1393, column: 9, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 1393, column: 9)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 1393, column: 9)
!960 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1393, column: 9)
!961 = !DILocation(line: 1394, column: 32, scope: !952)
!962 = !DILocation(line: 1394, column: 25, scope: !952)
!963 = !DILocation(line: 1397, column: 11, scope: !964)
!964 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1397, column: 11)
!965 = !DILocation(line: 1397, column: 11, scope: !582)
!966 = !DILocation(line: 1398, column: 27, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !3, line: 1397, column: 22)
!968 = !{!458, !415, i64 144}
!969 = !DILocation(line: 1398, column: 41, scope: !967)
!970 = !{!458, !415, i64 92}
!971 = !DILocation(line: 1398, column: 56, scope: !967)
!972 = !DILocation(line: 1398, column: 72, scope: !967)
!973 = !DILocation(line: 1399, column: 22, scope: !967)
!974 = !{!458, !446, i64 78}
!975 = !DILocation(line: 1399, column: 39, scope: !967)
!976 = !{!458, !446, i64 80}
!977 = !DILocation(line: 1398, column: 9, scope: !967)
!978 = !DILocation(line: 1400, column: 7, scope: !967)
!979 = !DILocation(line: 1402, column: 22, scope: !582)
!980 = !{!458, !460, i64 64}
!981 = !DILocation(line: 1384, column: 13, scope: !582)
!982 = !DILocation(line: 1385, column: 22, scope: !582)
!983 = !DILocation(line: 1380, column: 23, scope: !582)
!984 = !DILocation(line: 1405, column: 18, scope: !582)
!985 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !986)
!986 = distinct !DILocation(line: 1406, column: 7, scope: !582)
!987 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !986)
!988 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !986)
!989 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !986)
!990 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !986)
!991 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !986)
!992 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !986)
!993 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !986)
!994 = !DILocation(line: 1408, column: 31, scope: !582)
!995 = !DILocation(line: 1409, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !997, file: !3, line: 1409, column: 7)
!997 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1409, column: 7)
!998 = !DILocation(line: 1409, column: 7, scope: !997)
!999 = !DILocation(line: 1410, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !582, file: !3, line: 1410, column: 11)
!1001 = !DILocation(line: 1416, column: 18, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !583, file: !3, line: 1413, column: 12)
!1003 = !DILocation(line: 1419, column: 15, scope: !1002)
!1004 = !DILocation(line: 1419, column: 7, scope: !1002)
!1005 = !{!458, !416, i64 84}
!1006 = !DILocation(line: 1420, column: 34, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1420, column: 11)
!1008 = !{!458, !416, i64 85}
!1009 = !DILocation(line: 1420, column: 25, scope: !1007)
!1010 = !DILocation(line: 1420, column: 11, scope: !1002)
!1011 = !DILocation(line: 1421, column: 23, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1420, column: 48)
!1013 = !DILocation(line: 1423, column: 33, scope: !1012)
!1014 = !DILocation(line: 1424, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 1424, column: 9)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1424, column: 9)
!1017 = !{!458, !460, i64 248}
!1018 = !DILocation(line: 1424, column: 9, scope: !1016)
!1019 = !DILocation(line: 1425, column: 13, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1425, column: 13)
!1021 = !DILocation(line: 1425, column: 13, scope: !1012)
!1022 = !DILocation(line: 1429, column: 17, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1429, column: 13)
!1024 = !DILocation(line: 1429, column: 13, scope: !1012)
!1025 = !DILocation(line: 1430, column: 11, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 1429, column: 28)
!1027 = !DILocation(line: 1431, column: 9, scope: !1026)
!1028 = !DILocation(line: 1439, column: 9, scope: !552)
!1029 = !DILocation(line: 1440, column: 14, scope: !552)
!1030 = !DILocation(line: 1440, column: 3, scope: !552)
!1031 = !DILocation(line: 0, scope: !588)
!1032 = !DILocation(line: 1441, column: 5, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 1441, column: 5)
!1034 = distinct !DILexicalBlock(scope: !590, file: !3, line: 1441, column: 5)
!1035 = !DILocation(line: 1441, column: 5, scope: !1034)
!1036 = !DILocation(line: 1441, column: 5, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1441, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 1441, column: 5)
!1039 = !DILocation(line: 1441, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 1441, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1441, column: 5)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1441, column: 5)
!1043 = !DILocation(line: 1445, column: 17, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !590, file: !3, line: 1445, column: 9)
!1045 = !DILocation(line: 1445, column: 34, scope: !1044)
!1046 = !DILocation(line: 1445, column: 27, scope: !1044)
!1047 = !DILocation(line: 1445, column: 39, scope: !1044)
!1048 = !DILocation(line: 1450, column: 9, scope: !590)
!1049 = !DILocation(line: 1452, column: 7, scope: !588)
!1050 = !DILocation(line: 1454, column: 16, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !588, file: !3, line: 1454, column: 11)
!1052 = !DILocation(line: 0, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 1455, column: 9)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1455, column: 9)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 1454, column: 25)
!1056 = !DILocation(line: 1454, column: 11, scope: !588)
!1057 = !DILocation(line: 1455, column: 9, scope: !1053)
!1058 = !DILocation(line: 1455, column: 9, scope: !1054)
!1059 = !DILocation(line: 1455, column: 9, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 1455, column: 9)
!1061 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 1455, column: 9)
!1062 = !DILocation(line: 1455, column: 9, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 1455, column: 9)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 1455, column: 9)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 1455, column: 9)
!1066 = !DILocation(line: 1456, column: 27, scope: !1055)
!1067 = !DILocation(line: 1456, column: 15, scope: !1055)
!1068 = !DILocation(line: 1456, column: 20, scope: !1055)
!1069 = !DILocation(line: 1457, column: 7, scope: !1055)
!1070 = !DILocation(line: 1459, column: 9, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 1459, column: 9)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 1459, column: 9)
!1073 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 1457, column: 14)
!1074 = !DILocation(line: 1459, column: 9, scope: !1072)
!1075 = !DILocation(line: 1459, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1459, column: 9)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1459, column: 9)
!1078 = !DILocation(line: 1459, column: 9, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1459, column: 9)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1459, column: 9)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 1459, column: 9)
!1082 = !DILocation(line: 1460, column: 28, scope: !1073)
!1083 = !DILocation(line: 1460, column: 21, scope: !1073)
!1084 = !DILocation(line: 1451, column: 23, scope: !588)
!1085 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 1464, column: 7, scope: !588)
!1087 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1086)
!1088 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1086)
!1089 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1086)
!1090 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1086)
!1091 = !DILocation(line: 1463, column: 18, scope: !588)
!1092 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1086)
!1093 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1086)
!1094 = !DILocation(line: 1465, column: 5, scope: !588)
!1095 = !DILocation(line: 1467, column: 18, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !589, file: !3, line: 1465, column: 12)
!1097 = !DILocation(line: 0, scope: !1096)
!1098 = distinct !{!1098, !1030, !1099}
!1099 = !DILocation(line: 1469, column: 3, scope: !552)
!1100 = !DILocation(line: 1470, column: 1, scope: !552)
!1101 = distinct !DISubprogram(name: "tcp_close", scope: !3, file: !3, line: 484, type: !1102, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1104)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!140, !145}
!1104 = !{!1105}
!1105 = !DILocalVariable(name: "pcb", arg: 1, scope: !1101, file: !3, line: 484, type: !145)
!1106 = !DILocation(line: 484, column: 27, scope: !1101)
!1107 = !DILocation(line: 488, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 488, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 488, column: 3)
!1110 = !DILocation(line: 488, column: 3, scope: !1109)
!1111 = !DILocation(line: 488, column: 3, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 488, column: 3)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 488, column: 3)
!1114 = !DILocation(line: 488, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 488, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 488, column: 3)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 488, column: 3)
!1118 = !DILocation(line: 493, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 493, column: 7)
!1120 = !DILocation(line: 493, column: 18, scope: !1119)
!1121 = !DILocation(line: 493, column: 7, scope: !1101)
!1122 = !DILocation(line: 495, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 495, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 493, column: 29)
!1125 = !DILocation(line: 496, column: 3, scope: !1124)
!1126 = !DILocation(line: 498, column: 10, scope: !1101)
!1127 = !DILocation(line: 499, column: 1, scope: !1101)
!1128 = distinct !DISubprogram(name: "tcp_close_shutdown", scope: !3, file: !3, line: 348, type: !1129, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!140, !145, !91}
!1131 = !{!1132, !1133, !1134, !1143}
!1132 = !DILocalVariable(name: "pcb", arg: 1, scope: !1128, file: !3, line: 348, type: !145)
!1133 = !DILocalVariable(name: "rst_on_unacked_data", arg: 2, scope: !1128, file: !3, line: 348, type: !91)
!1134 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1135, file: !3, line: 364, type: !145)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 364, column: 7)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 364, column: 7)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 364, column: 7)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 364, column: 7)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 353, column: 76)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 353, column: 9)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 352, column: 91)
!1142 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 352, column: 7)
!1143 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1144, file: !3, line: 388, type: !145)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 388, column: 9)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 388, column: 9)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 388, column: 9)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 387, column: 33)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 387, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 378, column: 23)
!1150 = !DILocation(line: 348, column: 36, scope: !1128)
!1151 = !DILocation(line: 348, column: 46, scope: !1128)
!1152 = !DILocation(line: 350, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 350, column: 3)
!1154 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 350, column: 3)
!1155 = !DILocation(line: 350, column: 3, scope: !1154)
!1156 = !DILocation(line: 350, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 350, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 350, column: 3)
!1159 = !DILocation(line: 350, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 350, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 350, column: 3)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 350, column: 3)
!1163 = !DILocation(line: 352, column: 7, scope: !1142)
!1164 = !DILocation(line: 0, scope: !1142)
!1165 = !DILocation(line: 352, column: 27, scope: !1142)
!1166 = !DILocation(line: 352, column: 59, scope: !1142)
!1167 = !DILocation(line: 353, column: 15, scope: !1140)
!1168 = !DILocation(line: 353, column: 28, scope: !1140)
!1169 = !DILocation(line: 353, column: 37, scope: !1140)
!1170 = !DILocation(line: 356, column: 7, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 356, column: 7)
!1172 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 356, column: 7)
!1173 = !DILocation(line: 353, column: 46, scope: !1140)
!1174 = !{!458, !415, i64 96}
!1175 = !DILocation(line: 353, column: 57, scope: !1140)
!1176 = !DILocation(line: 353, column: 54, scope: !1140)
!1177 = !DILocation(line: 353, column: 9, scope: !1141)
!1178 = !DILocation(line: 356, column: 7, scope: !1172)
!1179 = !DILocation(line: 356, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 356, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 356, column: 7)
!1182 = !DILocation(line: 356, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 356, column: 7)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 356, column: 7)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 356, column: 7)
!1186 = !DILocation(line: 360, column: 25, scope: !1139)
!1187 = !DILocation(line: 360, column: 39, scope: !1139)
!1188 = !DILocation(line: 360, column: 54, scope: !1139)
!1189 = !DILocation(line: 360, column: 70, scope: !1139)
!1190 = !DILocation(line: 361, column: 20, scope: !1139)
!1191 = !DILocation(line: 361, column: 37, scope: !1139)
!1192 = !DILocation(line: 360, column: 7, scope: !1139)
!1193 = !DILocation(line: 363, column: 7, scope: !1139)
!1194 = !DILocation(line: 364, column: 7, scope: !1136)
!1195 = !DILocation(line: 364, column: 7, scope: !1137)
!1196 = !DILocation(line: 364, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 364, column: 7)
!1198 = !DILocation(line: 364, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1135, file: !3, line: 364, column: 7)
!1200 = !DILocation(line: 364, column: 7, scope: !1135)
!1201 = !DILocation(line: 364, column: 7, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 364, column: 7)
!1203 = !DILocation(line: 364, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 364, column: 7)
!1205 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 364, column: 7)
!1206 = !DILocation(line: 364, column: 7, scope: !1205)
!1207 = distinct !{!1207, !1198, !1198}
!1208 = !DILocation(line: 364, column: 7, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 364, column: 7)
!1210 = !DILocation(line: 364, column: 7, scope: !1138)
!1211 = !DILocation(line: 366, column: 11, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 366, column: 11)
!1213 = !DILocation(line: 366, column: 25, scope: !1212)
!1214 = !DILocation(line: 366, column: 11, scope: !1139)
!1215 = !DILocation(line: 368, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 366, column: 33)
!1217 = !DILocation(line: 369, column: 7, scope: !1216)
!1218 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 370, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 369, column: 14)
!1221 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1219)
!1222 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1219)
!1223 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1219)
!1224 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1219)
!1225 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1219)
!1226 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1219)
!1227 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1219)
!1228 = !DILocation(line: 378, column: 3, scope: !1128)
!1229 = !DILocation(line: 387, column: 16, scope: !1148)
!1230 = !DILocation(line: 387, column: 27, scope: !1148)
!1231 = !DILocation(line: 387, column: 11, scope: !1149)
!1232 = !DILocation(line: 388, column: 9, scope: !1145)
!1233 = !DILocation(line: 388, column: 9, scope: !1146)
!1234 = !DILocation(line: 388, column: 9, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 388, column: 9)
!1236 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 390, column: 7, scope: !1149)
!1238 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1237)
!1239 = !DILocation(line: 388, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 388, column: 9)
!1241 = !DILocation(line: 388, column: 9, scope: !1144)
!1242 = !DILocation(line: 388, column: 9, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 388, column: 9)
!1244 = !DILocation(line: 388, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 388, column: 9)
!1246 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 388, column: 9)
!1247 = !DILocation(line: 388, column: 9, scope: !1246)
!1248 = distinct !{!1248, !1239, !1239}
!1249 = !DILocation(line: 388, column: 9, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 388, column: 9)
!1251 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1237)
!1252 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1237)
!1253 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1237)
!1254 = !DILocation(line: 391, column: 7, scope: !1149)
!1255 = !DILocalVariable(name: "pcb", arg: 1, scope: !1256, file: !3, line: 269, type: !145)
!1256 = distinct !DISubprogram(name: "tcp_listen_closed", scope: !3, file: !3, line: 269, type: !449, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1257)
!1257 = !{!1255, !1258}
!1258 = !DILocalVariable(name: "i", scope: !1256, file: !3, line: 272, type: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1260, line: 40, baseType: !1261)
!1260 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !1262, line: 129, baseType: !272)
!1262 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!1263 = !DILocation(line: 269, column: 35, scope: !1256, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 393, column: 7, scope: !1149)
!1265 = !DILocation(line: 272, column: 10, scope: !1256, inlinedAt: !1264)
!1266 = !DILocation(line: 276, column: 25, scope: !1267, inlinedAt: !1264)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 275, column: 55)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 275, column: 3)
!1269 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 275, column: 3)
!1270 = !DILocalVariable(name: "list", arg: 1, scope: !1271, file: !3, line: 251, type: !145)
!1271 = distinct !DISubprogram(name: "tcp_remove_listener", scope: !3, file: !3, line: 251, type: !1272, isLocal: true, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !145, !98}
!1274 = !{!1270, !1275, !1276}
!1275 = !DILocalVariable(name: "lpcb", arg: 2, scope: !1271, file: !3, line: 251, type: !98)
!1276 = !DILocalVariable(name: "pcb", scope: !1271, file: !3, line: 253, type: !145)
!1277 = !DILocation(line: 251, column: 37, scope: !1271, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 276, column: 5, scope: !1267, inlinedAt: !1264)
!1279 = !DILocation(line: 251, column: 66, scope: !1271, inlinedAt: !1278)
!1280 = !DILocation(line: 253, column: 19, scope: !1271, inlinedAt: !1278)
!1281 = !DILocation(line: 257, column: 24, scope: !1282, inlinedAt: !1278)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 257, column: 3)
!1283 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 257, column: 3)
!1284 = !DILocation(line: 257, column: 3, scope: !1283, inlinedAt: !1278)
!1285 = !DILocation(line: 258, column: 14, scope: !1286, inlinedAt: !1278)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 258, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 257, column: 50)
!1288 = !{!458, !460, i64 216}
!1289 = !DILocation(line: 258, column: 23, scope: !1286, inlinedAt: !1278)
!1290 = !DILocation(line: 258, column: 9, scope: !1287, inlinedAt: !1278)
!1291 = !DILocation(line: 259, column: 21, scope: !1292, inlinedAt: !1278)
!1292 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 258, column: 32)
!1293 = !DILocation(line: 260, column: 5, scope: !1292, inlinedAt: !1278)
!1294 = !DILocation(line: 257, column: 44, scope: !1282, inlinedAt: !1278)
!1295 = distinct !{!1295, !1296, !1297}
!1296 = !DILocation(line: 257, column: 3, scope: !1283)
!1297 = !DILocation(line: 261, column: 3, scope: !1283)
!1298 = !DILocation(line: 262, column: 1, scope: !1271, inlinedAt: !1278)
!1299 = !DILocation(line: 280, column: 1, scope: !1256, inlinedAt: !1264)
!1300 = !DILocation(line: 394, column: 7, scope: !1149)
!1301 = !DILocalVariable(name: "pcb", arg: 1, scope: !1302, file: !3, line: 221, type: !145)
!1302 = distinct !DISubprogram(name: "tcp_free_listen", scope: !3, file: !3, line: 221, type: !449, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1303)
!1303 = !{!1301}
!1304 = !DILocation(line: 221, column: 33, scope: !1302, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 395, column: 7, scope: !1149)
!1306 = !DILocation(line: 223, column: 3, scope: !1307, inlinedAt: !1305)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 223, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 223, column: 3)
!1309 = !DILocation(line: 223, column: 3, scope: !1308, inlinedAt: !1305)
!1310 = !DILocation(line: 223, column: 3, scope: !1311, inlinedAt: !1305)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 223, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 223, column: 3)
!1313 = !DILocation(line: 223, column: 3, scope: !1314, inlinedAt: !1305)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 223, column: 3)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 223, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 223, column: 3)
!1317 = !DILocation(line: 227, column: 34, scope: !1302, inlinedAt: !1305)
!1318 = !DILocation(line: 227, column: 3, scope: !1302, inlinedAt: !1305)
!1319 = !DILocation(line: 228, column: 1, scope: !1302, inlinedAt: !1305)
!1320 = !DILocation(line: 396, column: 7, scope: !1149)
!1321 = !DILocation(line: 398, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 398, column: 7)
!1323 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1324)
!1324 = distinct !DILocation(line: 399, column: 7, scope: !1149)
!1325 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1324)
!1326 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1324)
!1327 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1324)
!1328 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1324)
!1329 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1324)
!1330 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1324)
!1331 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1324)
!1332 = !DILocation(line: 401, column: 7, scope: !1149)
!1333 = !DILocation(line: 403, column: 14, scope: !1149)
!1334 = !DILocation(line: 403, column: 7, scope: !1149)
!1335 = !DILocation(line: 0, scope: !1128)
!1336 = !DILocation(line: 406, column: 1, scope: !1128)
!1337 = distinct !DISubprogram(name: "tcp_shutdown", scope: !3, file: !3, line: 515, type: !1338, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1340)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!140, !145, !50, !50}
!1340 = !{!1341, !1342, !1343}
!1341 = !DILocalVariable(name: "pcb", arg: 1, scope: !1337, file: !3, line: 515, type: !145)
!1342 = !DILocalVariable(name: "shut_rx", arg: 2, scope: !1337, file: !3, line: 515, type: !50)
!1343 = !DILocalVariable(name: "shut_tx", arg: 3, scope: !1337, file: !3, line: 515, type: !50)
!1344 = !DILocation(line: 515, column: 30, scope: !1337)
!1345 = !DILocation(line: 515, column: 39, scope: !1337)
!1346 = !DILocation(line: 515, column: 52, scope: !1337)
!1347 = !DILocation(line: 519, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 519, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 519, column: 3)
!1350 = !DILocation(line: 519, column: 3, scope: !1349)
!1351 = !DILocation(line: 519, column: 3, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 519, column: 3)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 519, column: 3)
!1354 = !DILocation(line: 519, column: 3, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 519, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 519, column: 3)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 519, column: 3)
!1358 = !DILocation(line: 521, column: 12, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 521, column: 7)
!1360 = !DILocation(line: 521, column: 18, scope: !1359)
!1361 = !DILocation(line: 521, column: 7, scope: !1337)
!1362 = !DILocation(line: 524, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 524, column: 7)
!1364 = !DILocation(line: 524, column: 7, scope: !1337)
!1365 = !DILocation(line: 526, column: 5, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 526, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 524, column: 16)
!1368 = !DILocation(line: 527, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 527, column: 9)
!1370 = !DILocation(line: 527, column: 9, scope: !1367)
!1371 = !DILocation(line: 529, column: 14, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 527, column: 18)
!1373 = !DILocation(line: 529, column: 7, scope: !1372)
!1374 = !DILocation(line: 532, column: 14, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 532, column: 9)
!1376 = !DILocation(line: 532, column: 27, scope: !1375)
!1377 = !DILocation(line: 532, column: 9, scope: !1367)
!1378 = !DILocation(line: 533, column: 7, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !3, line: 532, column: 36)
!1380 = !DILocation(line: 534, column: 25, scope: !1379)
!1381 = !DILocation(line: 535, column: 5, scope: !1379)
!1382 = !DILocation(line: 537, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 537, column: 7)
!1384 = !DILocation(line: 537, column: 7, scope: !1337)
!1385 = !DILocation(line: 540, column: 5, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 537, column: 16)
!1387 = !DILocation(line: 544, column: 16, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 540, column: 25)
!1389 = !DILocation(line: 544, column: 9, scope: !1388)
!1390 = !DILocation(line: 0, scope: !1337)
!1391 = !DILocation(line: 552, column: 1, scope: !1337)
!1392 = distinct !DISubprogram(name: "tcp_abandon", scope: !3, file: !3, line: 563, type: !1393, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{null, !145, !50}
!1395 = !{!1396, !1397, !1398, !1399, !1400, !1401, !1402, !1405, !1406, !1407}
!1396 = !DILocalVariable(name: "pcb", arg: 1, scope: !1392, file: !3, line: 563, type: !145)
!1397 = !DILocalVariable(name: "reset", arg: 2, scope: !1392, file: !3, line: 563, type: !50)
!1398 = !DILocalVariable(name: "seqno", scope: !1392, file: !3, line: 565, type: !95)
!1399 = !DILocalVariable(name: "ackno", scope: !1392, file: !3, line: 565, type: !95)
!1400 = !DILocalVariable(name: "errf", scope: !1392, file: !3, line: 567, type: !253)
!1401 = !DILocalVariable(name: "errf_arg", scope: !1392, file: !3, line: 569, type: !88)
!1402 = !DILocalVariable(name: "send_rst", scope: !1403, file: !3, line: 585, type: !50)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 584, column: 10)
!1404 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 581, column: 7)
!1405 = !DILocalVariable(name: "local_port", scope: !1403, file: !3, line: 586, type: !81)
!1406 = !DILocalVariable(name: "last_state", scope: !1403, file: !3, line: 587, type: !5)
!1407 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1408, file: !3, line: 597, type: !145)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 597, column: 9)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 597, column: 9)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 597, column: 9)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 595, column: 33)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 595, column: 11)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 594, column: 31)
!1414 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 594, column: 9)
!1415 = !DILocation(line: 563, column: 29, scope: !1392)
!1416 = !DILocation(line: 563, column: 38, scope: !1392)
!1417 = !DILocation(line: 573, column: 3, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 573, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 573, column: 3)
!1420 = !DILocation(line: 573, column: 3, scope: !1419)
!1421 = !DILocation(line: 573, column: 3, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 573, column: 3)
!1423 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 573, column: 3)
!1424 = !DILocation(line: 573, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 573, column: 3)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 573, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 573, column: 3)
!1428 = !DILocation(line: 576, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 576, column: 3)
!1430 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 576, column: 3)
!1431 = !DILocation(line: 576, column: 3, scope: !1430)
!1432 = !DILocation(line: 576, column: 3, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 576, column: 3)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 576, column: 3)
!1435 = !DILocation(line: 576, column: 3, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 576, column: 3)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 576, column: 3)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 576, column: 3)
!1439 = !DILocation(line: 582, column: 5, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 581, column: 32)
!1441 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 583, column: 5, scope: !1440)
!1443 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1442)
!1444 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1442)
!1445 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1442)
!1446 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1442)
!1447 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1442)
!1448 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1442)
!1449 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1442)
!1450 = !DILocation(line: 584, column: 3, scope: !1440)
!1451 = !DILocation(line: 585, column: 9, scope: !1403)
!1452 = !DILocation(line: 586, column: 11, scope: !1403)
!1453 = !DILocation(line: 588, column: 18, scope: !1403)
!1454 = !DILocation(line: 565, column: 9, scope: !1392)
!1455 = !DILocation(line: 589, column: 18, scope: !1403)
!1456 = !DILocation(line: 565, column: 16, scope: !1392)
!1457 = !DILocation(line: 591, column: 17, scope: !1403)
!1458 = !DILocation(line: 567, column: 14, scope: !1392)
!1459 = !DILocation(line: 593, column: 21, scope: !1403)
!1460 = !DILocation(line: 569, column: 9, scope: !1392)
!1461 = !DILocation(line: 594, column: 20, scope: !1414)
!1462 = !DILocation(line: 0, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 599, column: 12)
!1464 = !DILocation(line: 594, column: 9, scope: !1403)
!1465 = !DILocation(line: 595, column: 27, scope: !1412)
!1466 = !DILocation(line: 595, column: 11, scope: !1413)
!1467 = !DILocation(line: 597, column: 9, scope: !1409)
!1468 = !DILocation(line: 597, column: 9, scope: !1410)
!1469 = !DILocation(line: 597, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 597, column: 9)
!1471 = !DILocation(line: 597, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 597, column: 9)
!1473 = !DILocation(line: 597, column: 9, scope: !1408)
!1474 = !DILocation(line: 597, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 597, column: 9)
!1476 = !DILocation(line: 597, column: 9, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 597, column: 9)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 597, column: 9)
!1479 = !DILocation(line: 597, column: 9, scope: !1478)
!1480 = distinct !{!1480, !1471, !1471}
!1481 = !DILocation(line: 597, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 597, column: 9)
!1483 = !DILocation(line: 598, column: 7, scope: !1411)
!1484 = !DILocation(line: 602, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 602, column: 7)
!1486 = !DILocation(line: 604, column: 14, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 604, column: 9)
!1488 = !DILocation(line: 604, column: 22, scope: !1487)
!1489 = !DILocation(line: 604, column: 9, scope: !1403)
!1490 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 605, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 604, column: 31)
!1493 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !1491)
!1494 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !1491)
!1495 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !1491)
!1497 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !1496)
!1498 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !1496)
!1499 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !1496)
!1500 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !1496)
!1501 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !1496)
!1502 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !1496)
!1503 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !1496)
!1504 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !1496)
!1505 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !1491)
!1506 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !1491)
!1507 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !1491)
!1508 = !DILocation(line: 606, column: 5, scope: !1492)
!1509 = !DILocation(line: 607, column: 14, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 607, column: 9)
!1511 = !DILocation(line: 607, column: 21, scope: !1510)
!1512 = !DILocation(line: 607, column: 9, scope: !1403)
!1513 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 608, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 607, column: 30)
!1516 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !1514)
!1517 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !1514)
!1518 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !1514)
!1520 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !1519)
!1521 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !1519)
!1522 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !1519)
!1523 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !1519)
!1524 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !1519)
!1525 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !1519)
!1526 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !1519)
!1527 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !1519)
!1528 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !1514)
!1529 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !1514)
!1530 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !1514)
!1531 = !DILocation(line: 609, column: 5, scope: !1515)
!1532 = !DILocation(line: 611, column: 14, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 611, column: 9)
!1534 = !DILocation(line: 611, column: 20, scope: !1533)
!1535 = !DILocation(line: 611, column: 9, scope: !1403)
!1536 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !1537)
!1537 = distinct !DILocation(line: 612, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 611, column: 29)
!1539 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !1537)
!1540 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !1537)
!1541 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !1537)
!1543 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !1542)
!1544 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !1542)
!1545 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !1542)
!1546 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !1542)
!1547 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !1542)
!1548 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !1542)
!1549 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !1542)
!1550 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !1542)
!1551 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !1537)
!1552 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !1537)
!1553 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !1537)
!1554 = !DILocation(line: 613, column: 5, scope: !1538)
!1555 = !DILocation(line: 616, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 616, column: 9)
!1557 = !DILocation(line: 616, column: 9, scope: !1403)
!1558 = !DILocation(line: 618, column: 40, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 616, column: 19)
!1560 = !DILocation(line: 618, column: 56, scope: !1559)
!1561 = !DILocation(line: 618, column: 84, scope: !1559)
!1562 = !DILocation(line: 618, column: 7, scope: !1559)
!1563 = !DILocation(line: 619, column: 5, scope: !1559)
!1564 = !DILocation(line: 587, column: 20, scope: !1403)
!1565 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 621, column: 5, scope: !1403)
!1567 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !1566)
!1568 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !1566)
!1569 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !1566)
!1570 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !1566)
!1571 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !1566)
!1572 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !1566)
!1573 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !1566)
!1574 = !DILocation(line: 622, column: 5, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 622, column: 5)
!1576 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 622, column: 5)
!1577 = !DILocation(line: 622, column: 5, scope: !1576)
!1578 = !DILocation(line: 624, column: 1, scope: !1392)
!1579 = distinct !DISubprogram(name: "tcp_pcb_remove", scope: !3, file: !3, line: 2177, type: !1580, isLocal: false, isDefinition: true, scopeLine: 2178, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1582)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !279, !145}
!1582 = !{!1583, !1584, !1585}
!1583 = !DILocalVariable(name: "pcblist", arg: 1, scope: !1579, file: !3, line: 2177, type: !279)
!1584 = !DILocalVariable(name: "pcb", arg: 2, scope: !1579, file: !3, line: 2177, type: !145)
!1585 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !1586, file: !3, line: 2182, type: !145)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 2182, column: 3)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 2182, column: 3)
!1588 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2182, column: 3)
!1589 = !DILocation(line: 2177, column: 33, scope: !1579)
!1590 = !DILocation(line: 2177, column: 58, scope: !1579)
!1591 = !DILocation(line: 2179, column: 3, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 2179, column: 3)
!1593 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2179, column: 3)
!1594 = !DILocation(line: 2179, column: 3, scope: !1593)
!1595 = !DILocation(line: 2179, column: 3, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 2179, column: 3)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 2179, column: 3)
!1598 = !DILocation(line: 2179, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !3, line: 2179, column: 3)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 2179, column: 3)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 2179, column: 3)
!1602 = !DILocation(line: 2180, column: 3, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 2180, column: 3)
!1604 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2180, column: 3)
!1605 = !DILocation(line: 2180, column: 3, scope: !1604)
!1606 = !DILocation(line: 2180, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 2180, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 2180, column: 3)
!1609 = !DILocation(line: 2180, column: 3, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 2180, column: 3)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 2180, column: 3)
!1612 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 2180, column: 3)
!1613 = !DILocation(line: 2182, column: 3, scope: !1587)
!1614 = !DILocation(line: 2182, column: 3, scope: !1588)
!1615 = !DILocation(line: 2182, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 2182, column: 3)
!1617 = !DILocation(line: 2182, column: 3, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 2182, column: 3)
!1619 = !DILocation(line: 2182, column: 3, scope: !1586)
!1620 = !DILocation(line: 2182, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 2182, column: 3)
!1622 = !DILocation(line: 2182, column: 3, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 2182, column: 3)
!1624 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 2182, column: 3)
!1625 = !DILocation(line: 2182, column: 3, scope: !1624)
!1626 = distinct !{!1626, !1617, !1617}
!1627 = !DILocation(line: 2182, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 2182, column: 3)
!1629 = !DILocation(line: 2184, column: 3, scope: !1579)
!1630 = !DILocation(line: 2187, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2187, column: 7)
!1632 = !DILocation(line: 2187, column: 33, scope: !1631)
!1633 = !DILocation(line: 2189, column: 13, scope: !1631)
!1634 = !DILocation(line: 2189, column: 19, scope: !1631)
!1635 = !DILocation(line: 2187, column: 7, scope: !1579)
!1636 = !DILocation(line: 2190, column: 5, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 2190, column: 5)
!1638 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 2189, column: 36)
!1639 = !DILocation(line: 2191, column: 5, scope: !1638)
!1640 = !DILocation(line: 2194, column: 12, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 2194, column: 7)
!1642 = !DILocation(line: 2192, column: 3, scope: !1638)
!1643 = !DILocation(line: 2194, column: 18, scope: !1641)
!1644 = !DILocation(line: 2194, column: 7, scope: !1579)
!1645 = !DILocation(line: 2195, column: 5, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 2195, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 2195, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 2194, column: 29)
!1649 = !DILocation(line: 2195, column: 5, scope: !1647)
!1650 = !DILocation(line: 2195, column: 5, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 2195, column: 5)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 2195, column: 5)
!1653 = !DILocation(line: 2195, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 2195, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 2195, column: 5)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 2195, column: 5)
!1657 = !DILocation(line: 2196, column: 5, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 2196, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 2196, column: 5)
!1660 = !DILocation(line: 2196, column: 5, scope: !1659)
!1661 = !DILocation(line: 2196, column: 5, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 2196, column: 5)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 2196, column: 5)
!1664 = !DILocation(line: 2196, column: 5, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 2196, column: 5)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 2196, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !3, line: 2196, column: 5)
!1668 = !DILocation(line: 2198, column: 5, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 2198, column: 5)
!1670 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 2198, column: 5)
!1671 = !DILocation(line: 2198, column: 5, scope: !1670)
!1672 = !DILocation(line: 2198, column: 5, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 2198, column: 5)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 2198, column: 5)
!1675 = !DILocation(line: 2198, column: 5, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 2198, column: 5)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 2198, column: 5)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 2198, column: 5)
!1679 = !DILocation(line: 2202, column: 14, scope: !1579)
!1680 = !DILocation(line: 2204, column: 8, scope: !1579)
!1681 = !DILocation(line: 2204, column: 19, scope: !1579)
!1682 = !DILocation(line: 2207, column: 1, scope: !1579)
!1683 = !DILocation(line: 1608, column: 31, scope: !864)
!1684 = !DILocation(line: 1610, column: 14, scope: !864)
!1685 = !DILocation(line: 1611, column: 33, scope: !869)
!1686 = !DILocation(line: 1611, column: 21, scope: !869)
!1687 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1612, column: 5, scope: !869)
!1689 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !1688)
!1690 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !1688)
!1691 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !1688)
!1692 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !1688)
!1693 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !1688)
!1694 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !1688)
!1695 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !1688)
!1696 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !1688)
!1697 = !DILocation(line: 1615, column: 1, scope: !864)
!1698 = distinct !DISubprogram(name: "tcp_abort", scope: !3, file: !3, line: 638, type: !449, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1699)
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "pcb", arg: 1, scope: !1698, file: !3, line: 638, type: !145)
!1701 = !DILocation(line: 638, column: 27, scope: !1698)
!1702 = !DILocation(line: 640, column: 3, scope: !1698)
!1703 = !DILocation(line: 641, column: 1, scope: !1698)
!1704 = distinct !DISubprogram(name: "tcp_bind", scope: !3, file: !3, line: 661, type: !1705, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1707)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!140, !145, !267, !81}
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!1708 = !DILocalVariable(name: "pcb", arg: 1, scope: !1704, file: !3, line: 661, type: !145)
!1709 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !1704, file: !3, line: 661, type: !267)
!1710 = !DILocalVariable(name: "port", arg: 3, scope: !1704, file: !3, line: 661, type: !81)
!1711 = !DILocalVariable(name: "i", scope: !1704, file: !3, line: 663, type: !50)
!1712 = !DILocalVariable(name: "max_pcb_list", scope: !1704, file: !3, line: 664, type: !50)
!1713 = !DILocalVariable(name: "cpcb", scope: !1704, file: !3, line: 665, type: !145)
!1714 = !DILocalVariable(name: "zoned_ipaddr", scope: !1704, file: !3, line: 667, type: !102)
!1715 = !DILocalVariable(name: "selected_netif", scope: !1716, file: !3, line: 703, type: !1719)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 703, column: 5)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 701, column: 79)
!1718 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 701, column: 7)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !76, line: 260, size: 2240, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1730, !1732, !1734, !1735, !1740, !1747, !1752, !1759, !1764, !1765, !1766, !1768, !1769, !1770, !1771, !1773, !1774, !1775, !1779, !1780, !1781, !1782}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1720, file: !76, line: 263, baseType: !1719, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !1720, file: !76, line: 268, baseType: !102, size: 192, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !1720, file: !76, line: 269, baseType: !102, size: 192, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !1720, file: !76, line: 270, baseType: !102, size: 192, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !1720, file: !76, line: 274, baseType: !1727, size: 576, offset: 640)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 576, elements: !1728)
!1728 = !{!1729}
!1729 = !DISubrange(count: 3)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !1720, file: !76, line: 277, baseType: !1731, size: 24, offset: 1216)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !1728)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !1720, file: !76, line: 282, baseType: !1733, size: 96, offset: 1248)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 96, elements: !1728)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !1720, file: !76, line: 283, baseType: !1733, size: 96, offset: 1344)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !1720, file: !76, line: 288, baseType: !1736, size: 64, offset: 1472)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !76, line: 178, baseType: !1737)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!140, !204, !1719}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1720, file: !76, line: 294, baseType: !1741, size: 64, offset: 1536)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !76, line: 189, baseType: !1742)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!140, !1719, !204, !1745}
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !1720, file: !76, line: 299, baseType: !1748, size: 64, offset: 1600)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !76, line: 212, baseType: !1749)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!140, !1719, !204}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !1720, file: !76, line: 305, baseType: !1753, size: 64, offset: 1664)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !76, line: 202, baseType: !1754)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!140, !1719, !204, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !1720, file: !76, line: 310, baseType: !1760, size: 64, offset: 1728)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !76, line: 214, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1719}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !1720, file: !76, line: 319, baseType: !1760, size: 64, offset: 1792)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1720, file: !76, line: 323, baseType: !88, size: 64, offset: 1856)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1720, file: !76, line: 325, baseType: !1767, size: 64, offset: 1920)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !325)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !1720, file: !76, line: 332, baseType: !81, size: 16, offset: 1984)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1720, file: !76, line: 335, baseType: !81, size: 16, offset: 2000)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !1720, file: !76, line: 338, baseType: !81, size: 16, offset: 2016)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !1720, file: !76, line: 341, baseType: !1772, size: 48, offset: 2032)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !333)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !1720, file: !76, line: 343, baseType: !91, size: 8, offset: 2080)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !76, line: 345, baseType: !91, size: 8, offset: 2088)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1720, file: !76, line: 347, baseType: !1776, size: 16, offset: 2096)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16, elements: !1777)
!1777 = !{!1778}
!1778 = !DISubrange(count: 2)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1720, file: !76, line: 350, baseType: !91, size: 8, offset: 2112)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !1720, file: !76, line: 353, baseType: !91, size: 8, offset: 2120)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !1720, file: !76, line: 357, baseType: !91, size: 8, offset: 2128)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !1720, file: !76, line: 377, baseType: !1783, size: 64, offset: 2176)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !76, line: 222, baseType: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!140, !1719, !1757, !75}
!1787 = !DILocation(line: 661, column: 26, scope: !1704)
!1788 = !DILocation(line: 661, column: 48, scope: !1704)
!1789 = !DILocation(line: 661, column: 62, scope: !1704)
!1790 = !DILocation(line: 664, column: 7, scope: !1704)
!1791 = !DILocation(line: 667, column: 3, scope: !1704)
!1792 = !DILocation(line: 674, column: 14, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 674, column: 7)
!1794 = !DILocation(line: 674, column: 7, scope: !1704)
!1795 = !DILocation(line: 681, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !3, line: 681, column: 3)
!1797 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 681, column: 3)
!1798 = !DILocation(line: 681, column: 3, scope: !1797)
!1799 = !DILocation(line: 681, column: 3, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !3, line: 681, column: 3)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 681, column: 3)
!1802 = !DILocation(line: 681, column: 3, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 681, column: 3)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 681, column: 3)
!1805 = distinct !DILexicalBlock(scope: !1800, file: !3, line: 681, column: 3)
!1806 = !DILocation(line: 683, column: 3, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 683, column: 3)
!1808 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 683, column: 3)
!1809 = !DILocation(line: 683, column: 3, scope: !1808)
!1810 = !DILocation(line: 683, column: 3, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 683, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 683, column: 3)
!1813 = !DILocation(line: 683, column: 3, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !3, line: 683, column: 3)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 683, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 683, column: 3)
!1817 = !DILocation(line: 691, column: 7, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 691, column: 7)
!1819 = !DILocation(line: 701, column: 7, scope: !1718)
!1820 = !{!459, !416, i64 20}
!1821 = !DILocation(line: 701, column: 24, scope: !1718)
!1822 = !DILocation(line: 701, column: 27, scope: !1718)
!1823 = !DILocation(line: 701, column: 7, scope: !1704)
!1824 = !DILocation(line: 702, column: 5, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 702, column: 5)
!1826 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 702, column: 5)
!1827 = !DILocation(line: 702, column: 5, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !3, line: 702, column: 5)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 702, column: 5)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 702, column: 5)
!1831 = !DILocation(line: 703, column: 5, scope: !1716)
!1832 = !DILocation(line: 703, column: 5, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 703, column: 5)
!1834 = !DILocation(line: 703, column: 5, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 703, column: 5)
!1836 = !{!1837, !416, i64 264}
!1837 = !{!"netif", !460, i64 0, !459, i64 8, !459, i64 32, !459, i64 56, !416, i64 80, !416, i64 152, !416, i64 156, !416, i64 168, !460, i64 184, !460, i64 192, !460, i64 200, !460, i64 208, !460, i64 216, !460, i64 224, !460, i64 232, !416, i64 240, !446, i64 248, !446, i64 250, !446, i64 252, !416, i64 254, !416, i64 260, !416, i64 261, !416, i64 262, !416, i64 264, !416, i64 265, !416, i64 266, !460, i64 272}
!1838 = !DILocation(line: 0, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 674, column: 23)
!1840 = !DILocation(line: 708, column: 12, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 708, column: 7)
!1842 = !DILocation(line: 708, column: 7, scope: !1704)
!1843 = !DILocation(line: 663, column: 7, scope: !1704)
!1844 = !DILocation(line: 715, column: 5, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 715, column: 5)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 713, column: 10)
!1847 = !DILocalVariable(name: "n", scope: !1848, file: !3, line: 1014, type: !81)
!1848 = distinct !DISubprogram(name: "tcp_new_port", scope: !3, file: !3, line: 1011, type: !1849, isLocal: true, isDefinition: true, scopeLine: 1012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1851)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!81}
!1851 = !{!1852, !1847, !1853}
!1852 = !DILocalVariable(name: "i", scope: !1848, file: !3, line: 1013, type: !91)
!1853 = !DILocalVariable(name: "pcb", scope: !1848, file: !3, line: 1015, type: !145)
!1854 = !DILocation(line: 1014, column: 9, scope: !1848, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 709, column: 12, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1841, file: !3, line: 708, column: 18)
!1857 = !DILocation(line: 0, scope: !1858, inlinedAt: !1855)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !3, line: 1019, column: 45)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 1019, column: 7)
!1860 = !DILocation(line: 0, scope: !1861, inlinedAt: !1855)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 1024, column: 5)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 1024, column: 5)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1023, column: 43)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1023, column: 3)
!1865 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 1023, column: 3)
!1866 = !DILocation(line: 1015, column: 3, scope: !1848, inlinedAt: !1855)
!1867 = !DILocation(line: 0, scope: !1868, inlinedAt: !1855)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 1025, column: 40)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !3, line: 1025, column: 11)
!1870 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 1024, column: 65)
!1871 = !DILocation(line: 1018, column: 11, scope: !1848, inlinedAt: !1855)
!1872 = !DILocation(line: 1019, column: 16, scope: !1859, inlinedAt: !1855)
!1873 = !DILocation(line: 1019, column: 7, scope: !1848, inlinedAt: !1855)
!1874 = !DILocation(line: 1013, column: 8, scope: !1848, inlinedAt: !1855)
!1875 = !DILocation(line: 1015, column: 19, scope: !1848, inlinedAt: !1855)
!1876 = !DILocation(line: 1024, column: 5, scope: !1862, inlinedAt: !1855)
!1877 = !DILocation(line: 1024, column: 59, scope: !1861, inlinedAt: !1855)
!1878 = !DILocation(line: 1024, column: 39, scope: !1861, inlinedAt: !1855)
!1879 = distinct !{!1879, !1880, !1881}
!1880 = !DILocation(line: 1024, column: 5, scope: !1862)
!1881 = !DILocation(line: 1032, column: 5, scope: !1862)
!1882 = !DILocation(line: 1025, column: 16, scope: !1869, inlinedAt: !1855)
!1883 = !DILocation(line: 1025, column: 27, scope: !1869, inlinedAt: !1855)
!1884 = !DILocation(line: 1025, column: 11, scope: !1870, inlinedAt: !1855)
!1885 = !DILocation(line: 1026, column: 10, scope: !1868, inlinedAt: !1855)
!1886 = !DILocation(line: 1027, column: 15, scope: !1887, inlinedAt: !1855)
!1887 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 1027, column: 13)
!1888 = !DILocation(line: 1027, column: 13, scope: !1868, inlinedAt: !1855)
!1889 = !DILocation(line: 1035, column: 1, scope: !1848, inlinedAt: !1855)
!1890 = !DILocation(line: 710, column: 9, scope: !1856)
!1891 = !DILocation(line: 710, column: 14, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 710, column: 9)
!1893 = !DILocation(line: 739, column: 8, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 739, column: 7)
!1895 = !DILocation(line: 716, column: 20, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !3, line: 716, column: 7)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 715, column: 40)
!1898 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 715, column: 5)
!1899 = !DILocation(line: 665, column: 19, scope: !1704)
!1900 = !DILocation(line: 0, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 716, column: 7)
!1902 = !DILocation(line: 716, column: 43, scope: !1901)
!1903 = !DILocation(line: 716, column: 7, scope: !1896)
!1904 = !DILocation(line: 717, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 717, column: 13)
!1906 = distinct !DILexicalBlock(scope: !1901, file: !3, line: 716, column: 71)
!1907 = !DILocation(line: 717, column: 30, scope: !1905)
!1908 = !DILocation(line: 717, column: 13, scope: !1906)
!1909 = !DILocation(line: 722, column: 16, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 722, column: 15)
!1911 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 717, column: 39)
!1912 = !DILocation(line: 722, column: 50, scope: !1910)
!1913 = !DILocation(line: 723, column: 16, scope: !1910)
!1914 = !DILocation(line: 722, column: 15, scope: !1911)
!1915 = !DILocation(line: 727, column: 18, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 727, column: 17)
!1917 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 725, column: 11)
!1918 = !DILocation(line: 727, column: 38, scope: !1916)
!1919 = !{!458, !416, i64 20}
!1920 = !DILocation(line: 727, column: 35, scope: !1916)
!1921 = !DILocation(line: 727, column: 68, scope: !1916)
!1922 = !DILocation(line: 728, column: 18, scope: !1916)
!1923 = !DILocation(line: 728, column: 49, scope: !1916)
!1924 = !DILocation(line: 729, column: 18, scope: !1916)
!1925 = !DILocation(line: 729, column: 40, scope: !1916)
!1926 = !DILocation(line: 730, column: 18, scope: !1916)
!1927 = !DILocation(line: 727, column: 17, scope: !1917)
!1928 = !DILocation(line: 716, column: 65, scope: !1901)
!1929 = distinct !{!1929, !1903, !1930}
!1930 = !DILocation(line: 735, column: 7, scope: !1896)
!1931 = !DILocation(line: 715, column: 36, scope: !1898)
!1932 = !DILocation(line: 715, column: 19, scope: !1898)
!1933 = distinct !{!1933, !1844, !1934}
!1934 = !DILocation(line: 736, column: 5, scope: !1845)
!1935 = !DILocation(line: 741, column: 7, scope: !1894)
!1936 = !DILocation(line: 741, column: 34, scope: !1894)
!1937 = !DILocation(line: 741, column: 31, scope: !1894)
!1938 = !DILocation(line: 739, column: 7, scope: !1704)
!1939 = !DILocation(line: 744, column: 5, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 744, column: 5)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 744, column: 5)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 744, column: 5)
!1943 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 744, column: 5)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 744, column: 5)
!1945 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 743, column: 8)
!1946 = !DILocation(line: 744, column: 5, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !3, line: 744, column: 5)
!1948 = !DILocation(line: 744, column: 5, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 744, column: 5)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 744, column: 5)
!1951 = !DILocation(line: 744, column: 5, scope: !1944)
!1952 = !DILocation(line: 744, column: 5, scope: !1950)
!1953 = !DILocation(line: 744, column: 5, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 744, column: 5)
!1955 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 744, column: 5)
!1956 = !DILocation(line: 746, column: 8, scope: !1704)
!1957 = !DILocation(line: 746, column: 19, scope: !1704)
!1958 = !DILocation(line: 747, column: 3, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 747, column: 3)
!1960 = !DILocation(line: 749, column: 3, scope: !1704)
!1961 = !DILocation(line: 0, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 730, column: 57)
!1963 = !DILocation(line: 750, column: 1, scope: !1704)
!1964 = distinct !DISubprogram(name: "tcp_bind_netif", scope: !3, file: !3, line: 763, type: !1965, isLocal: false, isDefinition: true, scopeLine: 764, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1969)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !145, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1969 = !{!1970, !1971}
!1970 = !DILocalVariable(name: "pcb", arg: 1, scope: !1964, file: !3, line: 763, type: !145)
!1971 = !DILocalVariable(name: "netif", arg: 2, scope: !1964, file: !3, line: 763, type: !1967)
!1972 = !DILocation(line: 763, column: 32, scope: !1964)
!1973 = !DILocation(line: 763, column: 57, scope: !1964)
!1974 = !DILocation(line: 766, column: 13, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 766, column: 7)
!1976 = !DILocation(line: 766, column: 7, scope: !1964)
!1977 = !DILocation(line: 767, column: 22, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 766, column: 22)
!1979 = !DILocation(line: 768, column: 3, scope: !1978)
!1980 = !DILocation(line: 769, column: 10, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 768, column: 10)
!1982 = !DILocation(line: 769, column: 20, scope: !1981)
!1983 = !DILocation(line: 771, column: 1, scope: !1964)
!1984 = distinct !DISubprogram(name: "tcp_listen_with_backlog", scope: !3, file: !3, line: 825, type: !1985, isLocal: false, isDefinition: true, scopeLine: 826, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!145, !145, !91}
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "pcb", arg: 1, scope: !1984, file: !3, line: 825, type: !145)
!1989 = !DILocalVariable(name: "backlog", arg: 2, scope: !1984, file: !3, line: 825, type: !91)
!1990 = !DILocation(line: 825, column: 41, scope: !1984)
!1991 = !DILocation(line: 825, column: 51, scope: !1984)
!1992 = !DILocation(line: 828, column: 10, scope: !1984)
!1993 = !DILocation(line: 828, column: 3, scope: !1984)
!1994 = distinct !DISubprogram(name: "tcp_listen_with_backlog_and_err", scope: !3, file: !3, line: 848, type: !1995, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1998)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!145, !145, !91, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004}
!1999 = !DILocalVariable(name: "pcb", arg: 1, scope: !1994, file: !3, line: 848, type: !145)
!2000 = !DILocalVariable(name: "backlog", arg: 2, scope: !1994, file: !3, line: 848, type: !91)
!2001 = !DILocalVariable(name: "err", arg: 3, scope: !1994, file: !3, line: 848, type: !1997)
!2002 = !DILocalVariable(name: "lpcb", scope: !1994, file: !3, line: 850, type: !98)
!2003 = !DILocalVariable(name: "res", scope: !1994, file: !3, line: 851, type: !140)
!2004 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !2005, file: !3, line: 900, type: !145)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 900, column: 5)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 900, column: 5)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 900, column: 5)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 899, column: 29)
!2009 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 899, column: 7)
!2010 = !DILocation(line: 848, column: 49, scope: !1994)
!2011 = !DILocation(line: 848, column: 59, scope: !1994)
!2012 = !DILocation(line: 848, column: 75, scope: !1994)
!2013 = !DILocation(line: 850, column: 26, scope: !1994)
!2014 = !DILocation(line: 857, column: 3, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 857, column: 3)
!2016 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 857, column: 3)
!2017 = !DILocation(line: 857, column: 3, scope: !2016)
!2018 = !DILocation(line: 857, column: 3, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !3, line: 857, column: 3)
!2020 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 857, column: 3)
!2021 = !DILocation(line: 857, column: 3, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 857, column: 3)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 857, column: 3)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 857, column: 3)
!2025 = !DILocation(line: 858, column: 3, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 858, column: 3)
!2027 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 858, column: 3)
!2028 = !DILocation(line: 858, column: 3, scope: !2027)
!2029 = !DILocation(line: 858, column: 3, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !3, line: 858, column: 3)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 858, column: 3)
!2032 = !DILocation(line: 858, column: 3, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 858, column: 3)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 858, column: 3)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 858, column: 3)
!2036 = !DILocation(line: 867, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 867, column: 7)
!2038 = !DILocation(line: 867, column: 7, scope: !1994)
!2039 = !DILocation(line: 0, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 871, column: 5)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 871, column: 5)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !3, line: 867, column: 42)
!2043 = !DILocation(line: 871, column: 51, scope: !2040)
!2044 = !DILocation(line: 871, column: 5, scope: !2041)
!2045 = !DILocation(line: 872, column: 18, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !3, line: 872, column: 11)
!2047 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 871, column: 79)
!2048 = !{!2049, !446, i64 78}
!2049 = !{!"tcp_pcb_listen", !459, i64 0, !459, i64 24, !416, i64 48, !416, i64 49, !416, i64 50, !416, i64 51, !460, i64 56, !460, i64 64, !416, i64 72, !416, i64 76, !446, i64 78, !460, i64 80}
!2050 = !DILocation(line: 872, column: 29, scope: !2046)
!2051 = !DILocation(line: 872, column: 49, scope: !2046)
!2052 = !DILocation(line: 873, column: 11, scope: !2046)
!2053 = !{!2049, !416, i64 20}
!2054 = !DILocation(line: 872, column: 11, scope: !2047)
!2055 = !DILocation(line: 871, column: 73, scope: !2040)
!2056 = distinct !{!2056, !2044, !2057}
!2057 = !DILocation(line: 879, column: 5, scope: !2041)
!2058 = !DILocation(line: 882, column: 35, scope: !1994)
!2059 = !DILocation(line: 882, column: 10, scope: !1994)
!2060 = !DILocation(line: 883, column: 12, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 883, column: 7)
!2062 = !DILocation(line: 883, column: 7, scope: !1994)
!2063 = !DILocation(line: 887, column: 29, scope: !1994)
!2064 = !DILocation(line: 887, column: 9, scope: !1994)
!2065 = !DILocation(line: 887, column: 22, scope: !1994)
!2066 = !{!2049, !460, i64 64}
!2067 = !DILocation(line: 888, column: 27, scope: !1994)
!2068 = !DILocation(line: 888, column: 9, scope: !1994)
!2069 = !DILocation(line: 888, column: 20, scope: !1994)
!2070 = !DILocation(line: 889, column: 9, scope: !1994)
!2071 = !DILocation(line: 889, column: 15, scope: !1994)
!2072 = !{!2049, !416, i64 72}
!2073 = !DILocation(line: 890, column: 21, scope: !1994)
!2074 = !{!458, !416, i64 76}
!2075 = !DILocation(line: 890, column: 9, scope: !1994)
!2076 = !DILocation(line: 890, column: 14, scope: !1994)
!2077 = !{!2049, !416, i64 76}
!2078 = !DILocation(line: 891, column: 27, scope: !1994)
!2079 = !DILocation(line: 891, column: 9, scope: !1994)
!2080 = !DILocation(line: 891, column: 20, scope: !1994)
!2081 = !{!2049, !416, i64 49}
!2082 = !DILocation(line: 892, column: 9, scope: !1994)
!2083 = !DILocation(line: 892, column: 19, scope: !1994)
!2084 = !{!2049, !416, i64 48}
!2085 = !DILocation(line: 893, column: 20, scope: !1994)
!2086 = !{!458, !416, i64 51}
!2087 = !DILocation(line: 893, column: 9, scope: !1994)
!2088 = !DILocation(line: 893, column: 13, scope: !1994)
!2089 = !{!2049, !416, i64 51}
!2090 = !DILocation(line: 894, column: 20, scope: !1994)
!2091 = !{!458, !416, i64 50}
!2092 = !DILocation(line: 894, column: 9, scope: !1994)
!2093 = !DILocation(line: 894, column: 13, scope: !1994)
!2094 = !{!2049, !416, i64 50}
!2095 = !DILocation(line: 896, column: 3, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 896, column: 3)
!2097 = !{!2049, !416, i64 44}
!2098 = !DILocation(line: 898, column: 3, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 898, column: 3)
!2100 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 898, column: 3)
!2101 = !DILocation(line: 898, column: 3, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 898, column: 3)
!2103 = !DILocation(line: 898, column: 3, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 898, column: 3)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 898, column: 3)
!2106 = !DILocation(line: 898, column: 3, scope: !2100)
!2107 = !DILocation(line: 898, column: 3, scope: !2105)
!2108 = !DILocation(line: 898, column: 3, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 898, column: 3)
!2110 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 898, column: 3)
!2111 = !DILocation(line: 899, column: 12, scope: !2009)
!2112 = !DILocation(line: 899, column: 23, scope: !2009)
!2113 = !DILocation(line: 899, column: 7, scope: !1994)
!2114 = !DILocation(line: 900, column: 5, scope: !2006)
!2115 = !DILocation(line: 900, column: 5, scope: !2007)
!2116 = !DILocation(line: 900, column: 5, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 900, column: 5)
!2118 = !DILocation(line: 900, column: 5, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 900, column: 5)
!2120 = !DILocation(line: 900, column: 5, scope: !2005)
!2121 = !DILocation(line: 900, column: 5, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 900, column: 5)
!2123 = !DILocation(line: 900, column: 5, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 900, column: 5)
!2125 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 900, column: 5)
!2126 = !DILocation(line: 900, column: 5, scope: !2125)
!2127 = distinct !{!2127, !2118, !2118}
!2128 = !DILocation(line: 900, column: 5, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 900, column: 5)
!2130 = !DILocation(line: 901, column: 3, scope: !2008)
!2131 = !DILocation(line: 210, column: 26, scope: !448, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 906, column: 3, scope: !1994)
!2133 = !DILocation(line: 212, column: 3, scope: !455, inlinedAt: !2132)
!2134 = !DILocation(line: 212, column: 3, scope: !456, inlinedAt: !2132)
!2135 = !DILocation(line: 212, column: 3, scope: !463, inlinedAt: !2132)
!2136 = !DILocation(line: 212, column: 3, scope: !466, inlinedAt: !2132)
!2137 = !DILocation(line: 216, column: 27, scope: !448, inlinedAt: !2132)
!2138 = !DILocation(line: 216, column: 3, scope: !448, inlinedAt: !2132)
!2139 = !DILocation(line: 217, column: 1, scope: !448, inlinedAt: !2132)
!2140 = !DILocation(line: 908, column: 9, scope: !1994)
!2141 = !DILocation(line: 908, column: 16, scope: !1994)
!2142 = !{!2049, !460, i64 80}
!2143 = !DILocation(line: 914, column: 3, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 914, column: 3)
!2145 = !DILocation(line: 851, column: 9, scope: !1994)
!2146 = !DILocation(line: 915, column: 3, scope: !1994)
!2147 = !DILocation(line: 0, scope: !1994)
!2148 = !DILocation(line: 917, column: 11, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 917, column: 7)
!2150 = !DILocation(line: 917, column: 7, scope: !1994)
!2151 = !DILocation(line: 918, column: 10, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 917, column: 20)
!2153 = !DILocation(line: 919, column: 3, scope: !2152)
!2154 = !DILocation(line: 920, column: 10, scope: !1994)
!2155 = !DILocation(line: 920, column: 3, scope: !1994)
!2156 = distinct !DISubprogram(name: "tcp_accept_null", scope: !3, file: !3, line: 778, type: !138, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DILocalVariable(name: "arg", arg: 1, scope: !2156, file: !3, line: 778, type: !88)
!2159 = !DILocalVariable(name: "pcb", arg: 2, scope: !2156, file: !3, line: 778, type: !145)
!2160 = !DILocalVariable(name: "err", arg: 3, scope: !2156, file: !3, line: 778, type: !140)
!2161 = !DILocation(line: 778, column: 23, scope: !2156)
!2162 = !DILocation(line: 778, column: 44, scope: !2156)
!2163 = !DILocation(line: 778, column: 55, scope: !2156)
!2164 = !DILocation(line: 783, column: 3, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 783, column: 3)
!2166 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 783, column: 3)
!2167 = !DILocation(line: 783, column: 3, scope: !2166)
!2168 = !DILocation(line: 783, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2170, file: !3, line: 783, column: 3)
!2170 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 783, column: 3)
!2171 = !DILocation(line: 783, column: 3, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 783, column: 3)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 783, column: 3)
!2174 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 783, column: 3)
!2175 = !DILocation(line: 638, column: 27, scope: !1698, inlinedAt: !2176)
!2176 = distinct !DILocation(line: 785, column: 3, scope: !2156)
!2177 = !DILocation(line: 640, column: 3, scope: !1698, inlinedAt: !2176)
!2178 = !DILocation(line: 641, column: 1, scope: !1698, inlinedAt: !2176)
!2179 = !DILocation(line: 787, column: 3, scope: !2156)
!2180 = distinct !DISubprogram(name: "tcp_update_rcv_ann_wnd", scope: !3, file: !3, line: 930, type: !283, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2181)
!2181 = !{!2182, !2183, !2184}
!2182 = !DILocalVariable(name: "pcb", arg: 1, scope: !2180, file: !3, line: 930, type: !145)
!2183 = !DILocalVariable(name: "new_right_edge", scope: !2180, file: !3, line: 932, type: !95)
!2184 = !DILocalVariable(name: "new_rcv_ann_wnd", scope: !2185, file: !3, line: 948, type: !95)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 946, column: 12)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 942, column: 9)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 941, column: 10)
!2188 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 937, column: 7)
!2189 = !DILocation(line: 930, column: 40, scope: !2180)
!2190 = !DILocation(line: 934, column: 3, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 934, column: 3)
!2192 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 934, column: 3)
!2193 = !DILocation(line: 934, column: 3, scope: !2192)
!2194 = !DILocation(line: 934, column: 3, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 934, column: 3)
!2196 = distinct !DILexicalBlock(scope: !2191, file: !3, line: 934, column: 3)
!2197 = !DILocation(line: 934, column: 3, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 934, column: 3)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 934, column: 3)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 934, column: 3)
!2201 = !DILocation(line: 935, column: 25, scope: !2180)
!2202 = !DILocation(line: 935, column: 40, scope: !2180)
!2203 = !DILocation(line: 935, column: 33, scope: !2180)
!2204 = !DILocation(line: 932, column: 9, scope: !2180)
!2205 = !DILocation(line: 937, column: 7, scope: !2188)
!2206 = !{!458, !415, i64 104}
!2207 = !DILocation(line: 937, column: 7, scope: !2180)
!2208 = !DILocation(line: 942, column: 9, scope: !2186)
!2209 = !DILocation(line: 948, column: 55, scope: !2185)
!2210 = !DILocation(line: 942, column: 9, scope: !2187)
!2211 = !DILocation(line: 0, scope: !2187)
!2212 = !DILocation(line: 0, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 937, column: 97)
!2214 = !{!458, !415, i64 100}
!2215 = !DILocation(line: 956, column: 1, scope: !2180)
!2216 = distinct !DISubprogram(name: "tcp_recved", scope: !3, file: !3, line: 968, type: !2217, isLocal: false, isDefinition: true, scopeLine: 969, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{null, !145, !81}
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DILocalVariable(name: "pcb", arg: 1, scope: !2216, file: !3, line: 968, type: !145)
!2221 = !DILocalVariable(name: "len", arg: 2, scope: !2216, file: !3, line: 968, type: !81)
!2222 = !DILocalVariable(name: "wnd_inflation", scope: !2216, file: !3, line: 970, type: !95)
!2223 = !DILocalVariable(name: "rcv_wnd", scope: !2216, file: !3, line: 971, type: !167)
!2224 = !DILocation(line: 968, column: 28, scope: !2216)
!2225 = !DILocation(line: 968, column: 39, scope: !2216)
!2226 = !DILocation(line: 975, column: 3, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !3, line: 975, column: 3)
!2228 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 975, column: 3)
!2229 = !DILocation(line: 975, column: 3, scope: !2228)
!2230 = !DILocation(line: 975, column: 3, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 975, column: 3)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 975, column: 3)
!2233 = !DILocation(line: 975, column: 3, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 975, column: 3)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 975, column: 3)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 975, column: 3)
!2237 = !DILocation(line: 978, column: 3, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 978, column: 3)
!2239 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 978, column: 3)
!2240 = !DILocation(line: 978, column: 3, scope: !2239)
!2241 = !DILocation(line: 978, column: 3, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !3, line: 978, column: 3)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !3, line: 978, column: 3)
!2244 = !DILocation(line: 978, column: 3, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 978, column: 3)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 978, column: 3)
!2247 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 978, column: 3)
!2248 = !DILocation(line: 981, column: 34, scope: !2216)
!2249 = !DILocation(line: 981, column: 44, scope: !2216)
!2250 = !DILocation(line: 981, column: 42, scope: !2216)
!2251 = !DILocation(line: 971, column: 17, scope: !2216)
!2252 = !DILocation(line: 982, column: 18, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 982, column: 7)
!2254 = !DILocation(line: 982, column: 16, scope: !2253)
!2255 = !DILocation(line: 982, column: 48, scope: !2253)
!2256 = !DILocation(line: 982, column: 36, scope: !2253)
!2257 = !DILocation(line: 0, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 982, column: 65)
!2259 = !DILocation(line: 930, column: 40, scope: !2180, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 990, column: 19, scope: !2216)
!2261 = !DILocation(line: 935, column: 25, scope: !2180, inlinedAt: !2260)
!2262 = !DILocation(line: 932, column: 9, scope: !2180, inlinedAt: !2260)
!2263 = !DILocation(line: 937, column: 7, scope: !2188, inlinedAt: !2260)
!2264 = !DILocation(line: 935, column: 33, scope: !2180, inlinedAt: !2260)
!2265 = !DILocation(line: 937, column: 7, scope: !2180, inlinedAt: !2260)
!2266 = !DILocation(line: 942, column: 9, scope: !2186, inlinedAt: !2260)
!2267 = !DILocation(line: 948, column: 55, scope: !2185, inlinedAt: !2260)
!2268 = !DILocation(line: 942, column: 9, scope: !2187, inlinedAt: !2260)
!2269 = !DILocation(line: 952, column: 12, scope: !2185, inlinedAt: !2260)
!2270 = !DILocation(line: 952, column: 24, scope: !2185, inlinedAt: !2260)
!2271 = !DILocation(line: 956, column: 1, scope: !2180, inlinedAt: !2260)
!2272 = !DILocation(line: 970, column: 9, scope: !2216)
!2273 = !DILocation(line: 996, column: 7, scope: !2216)
!2274 = !DILocation(line: 939, column: 10, scope: !2213, inlinedAt: !2260)
!2275 = !DILocation(line: 939, column: 22, scope: !2213, inlinedAt: !2260)
!2276 = !DILocation(line: 996, column: 21, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2216, file: !3, line: 996, column: 7)
!2278 = !DILocation(line: 997, column: 5, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 997, column: 5)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 996, column: 50)
!2281 = !DILocation(line: 998, column: 5, scope: !2280)
!2282 = !DILocation(line: 999, column: 3, scope: !2280)
!2283 = !DILocation(line: 1003, column: 1, scope: !2216)
!2284 = distinct !DISubprogram(name: "tcp_connect", scope: !3, file: !3, line: 1067, type: !2285, isLocal: false, isDefinition: true, scopeLine: 1069, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!140, !145, !267, !81, !246}
!2287 = !{!2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2299, !2304, !2305}
!2288 = !DILocalVariable(name: "pcb", arg: 1, scope: !2284, file: !3, line: 1067, type: !145)
!2289 = !DILocalVariable(name: "ipaddr", arg: 2, scope: !2284, file: !3, line: 1067, type: !267)
!2290 = !DILocalVariable(name: "port", arg: 3, scope: !2284, file: !3, line: 1067, type: !81)
!2291 = !DILocalVariable(name: "connected", arg: 4, scope: !2284, file: !3, line: 1068, type: !246)
!2292 = !DILocalVariable(name: "netif", scope: !2284, file: !3, line: 1070, type: !1719)
!2293 = !DILocalVariable(name: "ret", scope: !2284, file: !3, line: 1071, type: !140)
!2294 = !DILocalVariable(name: "iss", scope: !2284, file: !3, line: 1072, type: !95)
!2295 = !DILocalVariable(name: "old_local_port", scope: !2284, file: !3, line: 1073, type: !81)
!2296 = !DILocalVariable(name: "local_ip", scope: !2297, file: !3, line: 1099, type: !267)
!2297 = distinct !DILexicalBlock(scope: !2298, file: !3, line: 1098, column: 38)
!2298 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1098, column: 7)
!2299 = !DILocalVariable(name: "cpcb", scope: !2300, file: !3, line: 1126, type: !145)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1123, column: 44)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1123, column: 9)
!2302 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1121, column: 10)
!2303 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1116, column: 7)
!2304 = !DILocalVariable(name: "i", scope: !2300, file: !3, line: 1127, type: !50)
!2305 = !DILocalVariable(name: "tcp_tmp_pcb", scope: !2306, file: !3, line: 1174, type: !145)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1174, column: 7)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 1174, column: 7)
!2308 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 1174, column: 7)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 1173, column: 30)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1173, column: 9)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 1170, column: 22)
!2312 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1170, column: 7)
!2313 = !DILocation(line: 1067, column: 29, scope: !2284)
!2314 = !DILocation(line: 1067, column: 51, scope: !2284)
!2315 = !DILocation(line: 1067, column: 65, scope: !2284)
!2316 = !DILocation(line: 1068, column: 30, scope: !2284)
!2317 = !DILocation(line: 1070, column: 17, scope: !2284)
!2318 = !DILocation(line: 1077, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 1077, column: 3)
!2320 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1077, column: 3)
!2321 = !DILocation(line: 1077, column: 3, scope: !2320)
!2322 = !DILocation(line: 1077, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 1077, column: 3)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 1077, column: 3)
!2325 = !DILocation(line: 1077, column: 3, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 1077, column: 3)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 1077, column: 3)
!2328 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 1077, column: 3)
!2329 = !DILocation(line: 1078, column: 3, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 1078, column: 3)
!2331 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1078, column: 3)
!2332 = !DILocation(line: 1078, column: 3, scope: !2331)
!2333 = !DILocation(line: 1078, column: 3, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 1078, column: 3)
!2335 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 1078, column: 3)
!2336 = !DILocation(line: 1078, column: 3, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 1078, column: 3)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1078, column: 3)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 1078, column: 3)
!2340 = !DILocation(line: 1080, column: 3, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 1080, column: 3)
!2342 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1080, column: 3)
!2343 = !DILocation(line: 1080, column: 3, scope: !2342)
!2344 = !DILocation(line: 1080, column: 3, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1080, column: 3)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !3, line: 1080, column: 3)
!2347 = !DILocation(line: 1080, column: 3, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !3, line: 1080, column: 3)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 1080, column: 3)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !3, line: 1080, column: 3)
!2351 = !DILocation(line: 1083, column: 3, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !3, line: 1083, column: 3)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1083, column: 3)
!2354 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1083, column: 3)
!2355 = !DILocation(line: 1083, column: 3, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !3, line: 1083, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 1083, column: 3)
!2358 = !{!458, !416, i64 44}
!2359 = !DILocation(line: 1083, column: 3, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !3, line: 1083, column: 3)
!2361 = !DILocation(line: 1083, column: 3, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 1083, column: 3)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1083, column: 3)
!2364 = !DILocation(line: 1083, column: 3, scope: !2354)
!2365 = !DILocation(line: 1083, column: 3, scope: !2363)
!2366 = !DILocation(line: 1083, column: 3, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 1083, column: 3)
!2368 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 1083, column: 3)
!2369 = !DILocation(line: 1084, column: 8, scope: !2284)
!2370 = !DILocation(line: 1084, column: 20, scope: !2284)
!2371 = !DILocation(line: 1086, column: 12, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1086, column: 7)
!2373 = !{!458, !416, i64 48}
!2374 = !DILocation(line: 1086, column: 22, scope: !2372)
!2375 = !DILocation(line: 1086, column: 7, scope: !2284)
!2376 = !DILocation(line: 1087, column: 13, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 1086, column: 41)
!2378 = !DILocation(line: 1088, column: 3, scope: !2377)
!2379 = !DILocation(line: 1090, column: 13, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2372, file: !3, line: 1088, column: 10)
!2381 = !DILocation(line: 0, scope: !2380)
!2382 = !DILocation(line: 1092, column: 13, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1092, column: 7)
!2384 = !DILocation(line: 1092, column: 7, scope: !2284)
!2385 = !DILocation(line: 1098, column: 7, scope: !2298)
!2386 = !DILocation(line: 1098, column: 7, scope: !2284)
!2387 = !DILocation(line: 1099, column: 33, scope: !2297)
!2388 = !DILocation(line: 1099, column: 22, scope: !2297)
!2389 = !DILocation(line: 1100, column: 9, scope: !2297)
!2390 = !DILocation(line: 1100, column: 18, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 1100, column: 9)
!2392 = !DILocation(line: 1103, column: 5, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1103, column: 5)
!2394 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 1103, column: 5)
!2395 = !DILocation(line: 1103, column: 5, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 1103, column: 5)
!2397 = !DILocation(line: 1103, column: 5, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1103, column: 5)
!2399 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 1103, column: 5)
!2400 = !DILocation(line: 1103, column: 5, scope: !2394)
!2401 = !DILocation(line: 1103, column: 5, scope: !2399)
!2402 = !DILocation(line: 1103, column: 5, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 1103, column: 5)
!2404 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 1103, column: 5)
!2405 = !DILocation(line: 1109, column: 7, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1109, column: 7)
!2407 = !DILocation(line: 1109, column: 33, scope: !2406)
!2408 = !DILocation(line: 1110, column: 7, scope: !2406)
!2409 = !DILocation(line: 1109, column: 7, scope: !2284)
!2410 = !DILocation(line: 1111, column: 5, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 1110, column: 68)
!2412 = !DILocation(line: 1112, column: 3, scope: !2411)
!2413 = !DILocation(line: 1115, column: 25, scope: !2284)
!2414 = !DILocation(line: 1073, column: 9, scope: !2284)
!2415 = !DILocation(line: 1116, column: 23, scope: !2303)
!2416 = !DILocation(line: 1116, column: 7, scope: !2284)
!2417 = !DILocation(line: 1014, column: 9, scope: !1848, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 1117, column: 23, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 1116, column: 29)
!2420 = !DILocation(line: 0, scope: !1858, inlinedAt: !2418)
!2421 = !DILocation(line: 0, scope: !1861, inlinedAt: !2418)
!2422 = !DILocation(line: 1015, column: 3, scope: !1848, inlinedAt: !2418)
!2423 = !DILocation(line: 0, scope: !1868, inlinedAt: !2418)
!2424 = !DILocation(line: 1018, column: 11, scope: !1848, inlinedAt: !2418)
!2425 = !DILocation(line: 1019, column: 16, scope: !1859, inlinedAt: !2418)
!2426 = !DILocation(line: 1019, column: 7, scope: !1848, inlinedAt: !2418)
!2427 = !DILocation(line: 1013, column: 8, scope: !1848, inlinedAt: !2418)
!2428 = !DILocation(line: 1015, column: 19, scope: !1848, inlinedAt: !2418)
!2429 = !DILocation(line: 1024, column: 5, scope: !1862, inlinedAt: !2418)
!2430 = !DILocation(line: 1024, column: 59, scope: !1861, inlinedAt: !2418)
!2431 = !DILocation(line: 1024, column: 39, scope: !1861, inlinedAt: !2418)
!2432 = !DILocation(line: 1025, column: 16, scope: !1869, inlinedAt: !2418)
!2433 = !DILocation(line: 1025, column: 27, scope: !1869, inlinedAt: !2418)
!2434 = !DILocation(line: 1025, column: 11, scope: !1870, inlinedAt: !2418)
!2435 = !DILocation(line: 1026, column: 10, scope: !1868, inlinedAt: !2418)
!2436 = !DILocation(line: 1027, column: 15, scope: !1887, inlinedAt: !2418)
!2437 = !DILocation(line: 1027, column: 13, scope: !1868, inlinedAt: !2418)
!2438 = !DILocation(line: 1035, column: 1, scope: !1848, inlinedAt: !2418)
!2439 = !DILocation(line: 1117, column: 21, scope: !2419)
!2440 = !DILocation(line: 1118, column: 9, scope: !2419)
!2441 = !DILocation(line: 1118, column: 25, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 1118, column: 9)
!2443 = !DILocation(line: 1123, column: 9, scope: !2301)
!2444 = !DILocation(line: 1123, column: 9, scope: !2302)
!2445 = !DILocation(line: 1127, column: 11, scope: !2300)
!2446 = !DILocation(line: 1126, column: 23, scope: !2300)
!2447 = !DILocation(line: 0, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 1130, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 1130, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1129, column: 47)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !3, line: 1129, column: 7)
!2452 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1129, column: 7)
!2453 = !DILocation(line: 1130, column: 45, scope: !2448)
!2454 = !DILocation(line: 1130, column: 9, scope: !2449)
!2455 = !DILocation(line: 1131, column: 22, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1131, column: 15)
!2457 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 1130, column: 73)
!2458 = !DILocation(line: 1131, column: 33, scope: !2456)
!2459 = !DILocation(line: 1131, column: 53, scope: !2456)
!2460 = !DILocation(line: 1132, column: 22, scope: !2456)
!2461 = !DILocation(line: 1132, column: 34, scope: !2456)
!2462 = !DILocation(line: 1132, column: 43, scope: !2456)
!2463 = !DILocation(line: 1133, column: 15, scope: !2456)
!2464 = !DILocation(line: 1133, column: 60, scope: !2456)
!2465 = !DILocation(line: 1134, column: 15, scope: !2456)
!2466 = !DILocation(line: 1131, column: 15, scope: !2457)
!2467 = !DILocation(line: 1130, column: 67, scope: !2448)
!2468 = distinct !{!2468, !2454, !2469}
!2469 = !DILocation(line: 1138, column: 9, scope: !2449)
!2470 = !DILocation(line: 2215, column: 30, scope: !282, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 1144, column: 9, scope: !2284)
!2472 = !DILocation(line: 2226, column: 10, scope: !282, inlinedAt: !2471)
!2473 = !DILocation(line: 2226, column: 7, scope: !282, inlinedAt: !2471)
!2474 = !DILocation(line: 2227, column: 3, scope: !282, inlinedAt: !2471)
!2475 = !DILocation(line: 1072, column: 9, scope: !2284)
!2476 = !DILocation(line: 1145, column: 8, scope: !2284)
!2477 = !DILocation(line: 1146, column: 8, scope: !2284)
!2478 = !DILocation(line: 1146, column: 16, scope: !2284)
!2479 = !DILocation(line: 1147, column: 22, scope: !2284)
!2480 = !DILocation(line: 1147, column: 8, scope: !2284)
!2481 = !DILocation(line: 1147, column: 16, scope: !2284)
!2482 = !{!458, !415, i64 128}
!2483 = !DILocation(line: 1148, column: 8, scope: !2284)
!2484 = !DILocation(line: 1148, column: 16, scope: !2284)
!2485 = !{!458, !415, i64 152}
!2486 = !DILocation(line: 1149, column: 8, scope: !2284)
!2487 = !DILocation(line: 1149, column: 16, scope: !2284)
!2488 = !{!458, !415, i64 156}
!2489 = !DILocation(line: 1145, column: 16, scope: !2284)
!2490 = !DILocation(line: 1154, column: 8, scope: !2284)
!2491 = !DILocation(line: 1154, column: 16, scope: !2284)
!2492 = !DILocation(line: 1157, column: 8, scope: !2284)
!2493 = !DILocation(line: 1157, column: 12, scope: !2284)
!2494 = !DILocalVariable(name: "sendmss", arg: 1, scope: !2495, file: !3, line: 2238, type: !81)
!2495 = distinct !DISubprogram(name: "tcp_eff_send_mss_netif", scope: !3, file: !3, line: 2238, type: !2496, isLocal: false, isDefinition: true, scopeLine: 2239, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!81, !81, !1719, !267}
!2498 = !{!2494, !2499, !2500, !2501, !2502, !2503}
!2499 = !DILocalVariable(name: "outif", arg: 2, scope: !2495, file: !3, line: 2238, type: !1719)
!2500 = !DILocalVariable(name: "dest", arg: 3, scope: !2495, file: !3, line: 2238, type: !267)
!2501 = !DILocalVariable(name: "mss_s", scope: !2495, file: !3, line: 2240, type: !81)
!2502 = !DILocalVariable(name: "mtu", scope: !2495, file: !3, line: 2241, type: !81)
!2503 = !DILocalVariable(name: "offset", scope: !2504, file: !3, line: 2269, type: !81)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 2268, column: 17)
!2505 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 2268, column: 7)
!2506 = !DILocation(line: 2238, column: 30, scope: !2495, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 1159, column: 14, scope: !2284)
!2508 = !DILocation(line: 2238, column: 53, scope: !2495, inlinedAt: !2507)
!2509 = !DILocation(line: 2238, column: 77, scope: !2495, inlinedAt: !2507)
!2510 = !DILocation(line: 2249, column: 7, scope: !2495, inlinedAt: !2507)
!2511 = !DILocation(line: 2253, column: 35, scope: !2512, inlinedAt: !2507)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 2251, column: 3)
!2513 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 2249, column: 7)
!2514 = !DILocation(line: 2253, column: 11, scope: !2512, inlinedAt: !2507)
!2515 = !DILocation(line: 2241, column: 9, scope: !2495, inlinedAt: !2507)
!2516 = !DILocation(line: 2254, column: 3, scope: !2512, inlinedAt: !2507)
!2517 = !DILocation(line: 2264, column: 18, scope: !2518, inlinedAt: !2507)
!2518 = distinct !DILexicalBlock(scope: !2513, file: !3, line: 2260, column: 3)
!2519 = !{!1837, !446, i64 250}
!2520 = !DILocation(line: 0, scope: !2518, inlinedAt: !2507)
!2521 = !DILocation(line: 2268, column: 7, scope: !2505, inlinedAt: !2507)
!2522 = !DILocation(line: 2268, column: 11, scope: !2505, inlinedAt: !2507)
!2523 = !DILocation(line: 2268, column: 7, scope: !2495, inlinedAt: !2507)
!2524 = !DILocation(line: 2272, column: 9, scope: !2525, inlinedAt: !2507)
!2525 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 2272, column: 9)
!2526 = !DILocation(line: 2276, column: 5, scope: !2527, inlinedAt: !2507)
!2527 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 2274, column: 5)
!2528 = !DILocation(line: 2286, column: 18, scope: !2504, inlinedAt: !2507)
!2529 = !DILocation(line: 2286, column: 42, scope: !2504, inlinedAt: !2507)
!2530 = !DILocation(line: 2286, column: 13, scope: !2504, inlinedAt: !2507)
!2531 = !DILocation(line: 2291, column: 15, scope: !2504, inlinedAt: !2507)
!2532 = !DILocation(line: 2292, column: 3, scope: !2504, inlinedAt: !2507)
!2533 = !DILocation(line: 0, scope: !2534, inlinedAt: !2507)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 2261, column: 24)
!2535 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 2261, column: 9)
!2536 = !DILocation(line: 2294, column: 1, scope: !2495, inlinedAt: !2507)
!2537 = !DILocation(line: 1159, column: 12, scope: !2284)
!2538 = !DILocation(line: 1161, column: 8, scope: !2284)
!2539 = !DILocation(line: 1161, column: 13, scope: !2284)
!2540 = !DILocation(line: 1163, column: 8, scope: !2284)
!2541 = !DILocation(line: 1163, column: 18, scope: !2284)
!2542 = !{!458, !460, i64 240}
!2543 = !DILocation(line: 1169, column: 9, scope: !2284)
!2544 = !DILocation(line: 1071, column: 9, scope: !2284)
!2545 = !DILocation(line: 1170, column: 11, scope: !2312)
!2546 = !DILocation(line: 1170, column: 7, scope: !2284)
!2547 = !DILocation(line: 1172, column: 16, scope: !2311)
!2548 = !DILocation(line: 1173, column: 9, scope: !2311)
!2549 = !DILocation(line: 1176, column: 5, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 1176, column: 5)
!2551 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 1176, column: 5)
!2552 = !DILocation(line: 1174, column: 7, scope: !2307)
!2553 = !DILocation(line: 1174, column: 7, scope: !2308)
!2554 = !DILocation(line: 1174, column: 7, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2307, file: !3, line: 1174, column: 7)
!2556 = !DILocation(line: 1174, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 1174, column: 7)
!2558 = !DILocation(line: 1174, column: 7, scope: !2306)
!2559 = !DILocation(line: 1174, column: 7, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1174, column: 7)
!2561 = !DILocation(line: 1174, column: 7, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 1174, column: 7)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 1174, column: 7)
!2564 = !DILocation(line: 1174, column: 7, scope: !2563)
!2565 = distinct !{!2565, !2556, !2556}
!2566 = !DILocation(line: 1174, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 1174, column: 7)
!2568 = !DILocation(line: 1175, column: 5, scope: !2309)
!2569 = !DILocation(line: 1176, column: 5, scope: !2551)
!2570 = !DILocation(line: 1179, column: 5, scope: !2311)
!2571 = !DILocation(line: 1180, column: 3, scope: !2311)
!2572 = !DILocation(line: 0, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 1100, column: 27)
!2574 = !DILocation(line: 1182, column: 1, scope: !2284)
!2575 = !DILocation(line: 2215, column: 30, scope: !282)
!2576 = !DILocation(line: 2223, column: 3, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 2223, column: 3)
!2578 = distinct !DILexicalBlock(scope: !282, file: !3, line: 2223, column: 3)
!2579 = !DILocation(line: 2223, column: 3, scope: !2578)
!2580 = !DILocation(line: 2223, column: 3, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 2223, column: 3)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 2223, column: 3)
!2583 = !DILocation(line: 2223, column: 3, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2223, column: 3)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 2223, column: 3)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 2223, column: 3)
!2587 = !DILocation(line: 2226, column: 10, scope: !282)
!2588 = !DILocation(line: 2226, column: 7, scope: !282)
!2589 = !DILocation(line: 2227, column: 3, scope: !282)
!2590 = !DILocation(line: 2238, column: 30, scope: !2495)
!2591 = !DILocation(line: 2238, column: 53, scope: !2495)
!2592 = !DILocation(line: 2238, column: 77, scope: !2495)
!2593 = !DILocation(line: 2245, column: 3, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 2245, column: 3)
!2595 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 2245, column: 3)
!2596 = !DILocation(line: 2245, column: 3, scope: !2595)
!2597 = !DILocation(line: 2245, column: 3, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 2245, column: 3)
!2599 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 2245, column: 3)
!2600 = !DILocation(line: 2245, column: 3, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 2245, column: 3)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 2245, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 2245, column: 3)
!2604 = !DILocation(line: 2249, column: 7, scope: !2513)
!2605 = !DILocation(line: 2249, column: 7, scope: !2495)
!2606 = !DILocation(line: 2253, column: 35, scope: !2512)
!2607 = !DILocation(line: 2253, column: 11, scope: !2512)
!2608 = !DILocation(line: 2241, column: 9, scope: !2495)
!2609 = !DILocation(line: 2254, column: 3, scope: !2512)
!2610 = !DILocation(line: 2261, column: 15, scope: !2535)
!2611 = !DILocation(line: 2261, column: 9, scope: !2518)
!2612 = !DILocation(line: 2264, column: 18, scope: !2518)
!2613 = !DILocation(line: 0, scope: !2518)
!2614 = !DILocation(line: 2268, column: 7, scope: !2505)
!2615 = !DILocation(line: 2268, column: 11, scope: !2505)
!2616 = !DILocation(line: 2268, column: 7, scope: !2495)
!2617 = !DILocation(line: 2272, column: 9, scope: !2525)
!2618 = !DILocation(line: 2276, column: 5, scope: !2527)
!2619 = !DILocation(line: 2286, column: 18, scope: !2504)
!2620 = !DILocation(line: 2286, column: 42, scope: !2504)
!2621 = !DILocation(line: 2286, column: 13, scope: !2504)
!2622 = !DILocation(line: 2291, column: 15, scope: !2504)
!2623 = !DILocation(line: 2292, column: 3, scope: !2504)
!2624 = !DILocation(line: 0, scope: !2534)
!2625 = !DILocation(line: 2294, column: 1, scope: !2495)
!2626 = !DILocation(line: 2386, column: 32, scope: !874)
!2627 = !DILocation(line: 2388, column: 12, scope: !873)
!2628 = !DILocation(line: 2388, column: 7, scope: !873)
!2629 = !DILocation(line: 2388, column: 7, scope: !874)
!2630 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 2389, column: 5, scope: !872)
!2632 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !2631)
!2633 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !2631)
!2634 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !2631)
!2636 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !2635)
!2637 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !2635)
!2638 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !2635)
!2639 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !2635)
!2640 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !2635)
!2641 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !2635)
!2642 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !2635)
!2643 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !2635)
!2644 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !2631)
!2645 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !2631)
!2646 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !2631)
!2647 = !DILocation(line: 2390, column: 16, scope: !872)
!2648 = !DILocation(line: 2394, column: 3, scope: !872)
!2649 = !DILocation(line: 2395, column: 1, scope: !874)
!2650 = distinct !DISubprogram(name: "tcp_pcb_purge", scope: !3, file: !3, line: 2127, type: !449, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2651)
!2651 = !{!2652}
!2652 = !DILocalVariable(name: "pcb", arg: 1, scope: !2650, file: !3, line: 2127, type: !145)
!2653 = !DILocation(line: 2127, column: 31, scope: !2650)
!2654 = !DILocation(line: 2129, column: 3, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 2129, column: 3)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 2129, column: 3)
!2657 = !DILocation(line: 2129, column: 3, scope: !2656)
!2658 = !DILocation(line: 2129, column: 3, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 2129, column: 3)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 2129, column: 3)
!2661 = !DILocation(line: 2129, column: 3, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !3, line: 2129, column: 3)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 2129, column: 3)
!2664 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 2129, column: 3)
!2665 = !DILocation(line: 2131, column: 12, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 2131, column: 7)
!2667 = !DILocation(line: 2131, column: 28, scope: !2666)
!2668 = !DILocation(line: 2139, column: 14, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 2139, column: 9)
!2670 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 2133, column: 29)
!2671 = !DILocation(line: 2139, column: 27, scope: !2669)
!2672 = !DILocation(line: 2139, column: 9, scope: !2670)
!2673 = !DILocation(line: 2141, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2669, file: !3, line: 2139, column: 36)
!2675 = !DILocation(line: 2142, column: 25, scope: !2674)
!2676 = !DILocation(line: 2143, column: 5, scope: !2674)
!2677 = !DILocation(line: 2144, column: 14, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 2144, column: 9)
!2679 = !DILocation(line: 2147, column: 14, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 2147, column: 9)
!2681 = !DILocation(line: 2151, column: 14, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 2151, column: 9)
!2683 = !DILocation(line: 2151, column: 20, scope: !2682)
!2684 = !DILocation(line: 2151, column: 9, scope: !2670)
!2685 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 2389, column: 5, scope: !872, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 2153, column: 7, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 2151, column: 29)
!2689 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !2686)
!2690 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !2686)
!2691 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !2686)
!2693 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !2692)
!2694 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !2692)
!2695 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !2692)
!2696 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !2692)
!2697 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !2692)
!2698 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !2692)
!2699 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !2692)
!2700 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !2692)
!2701 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !2686)
!2702 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !2686)
!2703 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !2686)
!2704 = !DILocation(line: 2390, column: 16, scope: !872, inlinedAt: !2687)
!2705 = !DILocation(line: 2395, column: 1, scope: !874, inlinedAt: !2687)
!2706 = !DILocation(line: 2154, column: 5, scope: !2688)
!2707 = !DILocation(line: 2159, column: 10, scope: !2670)
!2708 = !DILocation(line: 2159, column: 16, scope: !2670)
!2709 = !DILocation(line: 2161, column: 24, scope: !2670)
!2710 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !2711)
!2711 = distinct !DILocation(line: 2161, column: 5, scope: !2670)
!2712 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !2711)
!2713 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !2711)
!2714 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !2711)
!2715 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !2711)
!2716 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !2717)
!2717 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !2711)
!2718 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !2717)
!2719 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !2717)
!2720 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !2717)
!2721 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !2717)
!2722 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !2717)
!2723 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !2717)
!2724 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !2717)
!2725 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !2717)
!2726 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !2711)
!2727 = !DILocation(line: 2162, column: 24, scope: !2670)
!2728 = !DILocation(line: 1608, column: 31, scope: !864, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 2162, column: 5, scope: !2670)
!2730 = !DILocation(line: 1610, column: 14, scope: !864, inlinedAt: !2729)
!2731 = !DILocation(line: 1610, column: 3, scope: !864, inlinedAt: !2729)
!2732 = !DILocation(line: 1611, column: 33, scope: !869, inlinedAt: !2729)
!2733 = !DILocation(line: 1611, column: 21, scope: !869, inlinedAt: !2729)
!2734 = !DILocation(line: 1623, column: 30, scope: !884, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1612, column: 5, scope: !869, inlinedAt: !2729)
!2736 = !DILocation(line: 1626, column: 14, scope: !889, inlinedAt: !2735)
!2737 = !DILocation(line: 1626, column: 16, scope: !889, inlinedAt: !2735)
!2738 = !DILocation(line: 1626, column: 9, scope: !890, inlinedAt: !2735)
!2739 = !DILocation(line: 1627, column: 7, scope: !896, inlinedAt: !2735)
!2740 = !DILocation(line: 1631, column: 5, scope: !896, inlinedAt: !2735)
!2741 = !DILocation(line: 1632, column: 29, scope: !890, inlinedAt: !2735)
!2742 = !DILocation(line: 1632, column: 5, scope: !890, inlinedAt: !2735)
!2743 = !DILocation(line: 1634, column: 1, scope: !884, inlinedAt: !2735)
!2744 = !DILocation(line: 1615, column: 1, scope: !864, inlinedAt: !2729)
!2745 = !DILocation(line: 2163, column: 32, scope: !2670)
!2746 = !DILocation(line: 2165, column: 10, scope: !2670)
!2747 = !DILocation(line: 2165, column: 26, scope: !2670)
!2748 = !{!458, !446, i64 174}
!2749 = !DILocation(line: 2167, column: 3, scope: !2670)
!2750 = !DILocation(line: 2168, column: 1, scope: !2650)
!2751 = distinct !DISubprogram(name: "tcp_close_shutdown_fin", scope: !3, file: !3, line: 409, type: !1102, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2752)
!2752 = !{!2753, !2754}
!2753 = !DILocalVariable(name: "pcb", arg: 1, scope: !2751, file: !3, line: 409, type: !145)
!2754 = !DILocalVariable(name: "err", scope: !2751, file: !3, line: 411, type: !140)
!2755 = !DILocation(line: 409, column: 40, scope: !2751)
!2756 = !DILocation(line: 412, column: 3, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !3, line: 412, column: 3)
!2758 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 412, column: 3)
!2759 = !DILocation(line: 412, column: 3, scope: !2758)
!2760 = !DILocation(line: 412, column: 3, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2762, file: !3, line: 412, column: 3)
!2762 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 412, column: 3)
!2763 = !DILocation(line: 412, column: 3, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !3, line: 412, column: 3)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 412, column: 3)
!2766 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 412, column: 3)
!2767 = !DILocation(line: 414, column: 16, scope: !2751)
!2768 = !DILocation(line: 414, column: 3, scope: !2751)
!2769 = !DILocation(line: 416, column: 13, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 414, column: 23)
!2771 = !DILocation(line: 411, column: 9, scope: !2751)
!2772 = !DILocation(line: 417, column: 15, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 417, column: 11)
!2774 = !DILocation(line: 417, column: 11, scope: !2770)
!2775 = !DILocation(line: 424, column: 13, scope: !2770)
!2776 = !DILocation(line: 425, column: 15, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 425, column: 11)
!2778 = !DILocation(line: 425, column: 11, scope: !2770)
!2779 = !DILocation(line: 431, column: 13, scope: !2770)
!2780 = !DILocation(line: 432, column: 15, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 432, column: 11)
!2782 = !DILocation(line: 432, column: 11, scope: !2770)
!2783 = !DILocation(line: 0, scope: !2770)
!2784 = !DILocation(line: 442, column: 7, scope: !2751)
!2785 = !DILocation(line: 0, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 432, column: 26)
!2787 = !DILocation(line: 448, column: 5, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 442, column: 22)
!2789 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 442, column: 7)
!2790 = !DILocation(line: 449, column: 3, scope: !2788)
!2791 = !DILocation(line: 451, column: 5, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 451, column: 5)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 449, column: 30)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 449, column: 14)
!2795 = !DILocation(line: 457, column: 5, scope: !2793)
!2796 = !DILocation(line: 0, scope: !2793)
!2797 = !DILocation(line: 460, column: 1, scope: !2751)
!2798 = distinct !DISubprogram(name: "tcp_process_refused_data", scope: !3, file: !3, line: 1539, type: !1102, isLocal: false, isDefinition: true, scopeLine: 1540, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2799)
!2799 = !{!2800, !2801, !2802, !2804, !2805}
!2800 = !DILocalVariable(name: "pcb", arg: 1, scope: !2798, file: !3, line: 1539, type: !145)
!2801 = !DILocalVariable(name: "rest", scope: !2798, file: !3, line: 1542, type: !204)
!2802 = !DILocalVariable(name: "err", scope: !2803, file: !3, line: 1551, type: !140)
!2803 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1550, column: 3)
!2804 = !DILocalVariable(name: "refused_flags", scope: !2803, file: !3, line: 1552, type: !91)
!2805 = !DILocalVariable(name: "refused_data", scope: !2803, file: !3, line: 1555, type: !204)
!2806 = !DILocation(line: 1539, column: 42, scope: !2798)
!2807 = !DILocation(line: 1542, column: 3, scope: !2798)
!2808 = !DILocation(line: 1545, column: 3, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 1545, column: 3)
!2810 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 1545, column: 3)
!2811 = !DILocation(line: 1545, column: 3, scope: !2810)
!2812 = !DILocation(line: 1548, column: 15, scope: !2798)
!2813 = !DILocation(line: 1548, column: 28, scope: !2798)
!2814 = !DILocation(line: 1548, column: 3, scope: !2798)
!2815 = !DILocation(line: 1545, column: 3, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 1545, column: 3)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !3, line: 1545, column: 3)
!2818 = !DILocation(line: 1545, column: 3, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1545, column: 3)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 1545, column: 3)
!2821 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 1545, column: 3)
!2822 = !DILocation(line: 1552, column: 45, scope: !2803)
!2823 = !{!2824, !416, i64 21}
!2824 = !{!"pbuf", !460, i64 0, !460, i64 8, !446, i64 16, !446, i64 18, !416, i64 20, !416, i64 21, !416, i64 22, !416, i64 23}
!2825 = !DILocation(line: 1552, column: 10, scope: !2803)
!2826 = !DILocation(line: 1555, column: 18, scope: !2803)
!2827 = !DILocation(line: 1542, column: 16, scope: !2798)
!2828 = !DILocation(line: 1557, column: 5, scope: !2803)
!2829 = !DILocation(line: 1558, column: 25, scope: !2803)
!2830 = !DILocation(line: 1558, column: 23, scope: !2803)
!2831 = !DILocation(line: 1564, column: 5, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 1564, column: 5)
!2833 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1564, column: 5)
!2834 = !{!458, !460, i64 232}
!2835 = !DILocation(line: 1564, column: 5, scope: !2833)
!2836 = !DILocalVariable(name: "arg", arg: 1, scope: !2837, file: !3, line: 1684, type: !88)
!2837 = distinct !DISubprogram(name: "tcp_recv_null", scope: !3, file: !3, line: 1684, type: !243, isLocal: false, isDefinition: true, scopeLine: 1685, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2838)
!2838 = !{!2836, !2839, !2840, !2841}
!2839 = !DILocalVariable(name: "pcb", arg: 2, scope: !2837, file: !3, line: 1684, type: !145)
!2840 = !DILocalVariable(name: "p", arg: 3, scope: !2837, file: !3, line: 1684, type: !204)
!2841 = !DILocalVariable(name: "err", arg: 4, scope: !2837, file: !3, line: 1684, type: !140)
!2842 = !DILocation(line: 1684, column: 21, scope: !2837, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 1564, column: 5, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 1564, column: 5)
!2845 = !DILocation(line: 1684, column: 42, scope: !2837, inlinedAt: !2843)
!2846 = !DILocation(line: 1684, column: 60, scope: !2837, inlinedAt: !2843)
!2847 = !DILocation(line: 1684, column: 69, scope: !2837, inlinedAt: !2843)
!2848 = !DILocation(line: 1691, column: 24, scope: !2849, inlinedAt: !2843)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1690, column: 18)
!2850 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1690, column: 7)
!2851 = !{!2824, !446, i64 16}
!2852 = !DILocation(line: 1691, column: 5, scope: !2849, inlinedAt: !2843)
!2853 = !DILocation(line: 1692, column: 5, scope: !2849, inlinedAt: !2843)
!2854 = !DILocation(line: 1697, column: 1, scope: !2837, inlinedAt: !2843)
!2855 = !DILocation(line: 1551, column: 11, scope: !2803)
!2856 = !DILocation(line: 1565, column: 9, scope: !2803)
!2857 = !DILocation(line: 1564, column: 5, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 1564, column: 5)
!2859 = !DILocation(line: 1567, column: 26, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !3, line: 1567, column: 11)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1565, column: 24)
!2862 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 1565, column: 9)
!2863 = !DILocation(line: 1569, column: 15, scope: !2860)
!2864 = !DILocation(line: 1569, column: 20, scope: !2860)
!2865 = !DILocation(line: 1569, column: 11, scope: !2860)
!2866 = !DILocation(line: 1574, column: 18, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 1574, column: 13)
!2868 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 1571, column: 12)
!2869 = !DILocation(line: 1574, column: 29, scope: !2867)
!2870 = !DILocation(line: 1574, column: 26, scope: !2867)
!2871 = !DILocation(line: 1574, column: 13, scope: !2868)
!2872 = !DILocation(line: 1575, column: 23, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 1574, column: 47)
!2874 = !DILocation(line: 1576, column: 9, scope: !2873)
!2875 = !DILocation(line: 1577, column: 9, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 1577, column: 9)
!2877 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 1577, column: 9)
!2878 = !DILocation(line: 1577, column: 9, scope: !2877)
!2879 = !DILocation(line: 1577, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 1577, column: 9)
!2881 = !DILocation(line: 1578, column: 17, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 1578, column: 13)
!2883 = !DILocation(line: 1578, column: 13, scope: !2868)
!2884 = !DILocation(line: 1591, column: 11, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 1591, column: 11)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 1588, column: 12)
!2887 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1582, column: 16)
!2888 = !DILocation(line: 1591, column: 16, scope: !2885)
!2889 = !DILocation(line: 1591, column: 11, scope: !2886)
!2890 = !DILocation(line: 1592, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 1591, column: 25)
!2892 = !DILocation(line: 1593, column: 7, scope: !2891)
!2893 = !DILocation(line: 1595, column: 25, scope: !2886)
!2894 = !DILocation(line: 1596, column: 7, scope: !2886)
!2895 = !DILocation(line: 0, scope: !2798)
!2896 = !DILocation(line: 1600, column: 1, scope: !2798)
!2897 = distinct !DISubprogram(name: "tcp_txnow", scope: !3, file: !3, line: 1526, type: !360, isLocal: false, isDefinition: true, scopeLine: 1527, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2898)
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "pcb", scope: !2897, file: !3, line: 1528, type: !145)
!2900 = !DILocation(line: 1528, column: 19, scope: !2897)
!2901 = !DILocation(line: 0, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 1530, column: 3)
!2903 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1530, column: 3)
!2904 = !DILocation(line: 1530, column: 35, scope: !2902)
!2905 = !DILocation(line: 1530, column: 3, scope: !2903)
!2906 = !DILocation(line: 1531, column: 14, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1531, column: 9)
!2908 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 1530, column: 61)
!2909 = !DILocation(line: 1531, column: 20, scope: !2907)
!2910 = !DILocation(line: 1531, column: 9, scope: !2908)
!2911 = !DILocation(line: 1532, column: 7, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1531, column: 38)
!2913 = !DILocation(line: 1533, column: 5, scope: !2912)
!2914 = !DILocation(line: 1530, column: 55, scope: !2902)
!2915 = distinct !{!2915, !2905, !2916}
!2916 = !DILocation(line: 1534, column: 3, scope: !2903)
!2917 = !DILocation(line: 1535, column: 1, scope: !2897)
!2918 = !DILocation(line: 1684, column: 21, scope: !2837)
!2919 = !DILocation(line: 1684, column: 42, scope: !2837)
!2920 = !DILocation(line: 1684, column: 60, scope: !2837)
!2921 = !DILocation(line: 1684, column: 69, scope: !2837)
!2922 = !DILocation(line: 1688, column: 3, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 1688, column: 3)
!2924 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 1688, column: 3)
!2925 = !DILocation(line: 1688, column: 3, scope: !2924)
!2926 = !DILocation(line: 1688, column: 3, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1688, column: 3)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1688, column: 3)
!2929 = !DILocation(line: 1688, column: 3, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1688, column: 3)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1688, column: 3)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1688, column: 3)
!2933 = !DILocation(line: 1690, column: 9, scope: !2850)
!2934 = !DILocation(line: 1690, column: 7, scope: !2837)
!2935 = !DILocation(line: 1691, column: 24, scope: !2849)
!2936 = !DILocation(line: 1691, column: 5, scope: !2849)
!2937 = !DILocation(line: 1692, column: 5, scope: !2849)
!2938 = !DILocation(line: 1693, column: 3, scope: !2849)
!2939 = !DILocation(line: 1693, column: 18, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1693, column: 14)
!2941 = !DILocation(line: 1693, column: 14, scope: !2850)
!2942 = !DILocation(line: 484, column: 27, scope: !1101, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 1694, column: 12, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1693, column: 29)
!2945 = !DILocation(line: 493, column: 12, scope: !1119, inlinedAt: !2943)
!2946 = !DILocation(line: 493, column: 18, scope: !1119, inlinedAt: !2943)
!2947 = !DILocation(line: 493, column: 7, scope: !1101, inlinedAt: !2943)
!2948 = !DILocation(line: 495, column: 5, scope: !1123, inlinedAt: !2943)
!2949 = !DILocation(line: 496, column: 3, scope: !1124, inlinedAt: !2943)
!2950 = !DILocation(line: 498, column: 10, scope: !1101, inlinedAt: !2943)
!2951 = !DILocation(line: 499, column: 1, scope: !1101, inlinedAt: !2943)
!2952 = !DILocation(line: 1694, column: 5, scope: !2944)
!2953 = !DILocation(line: 0, scope: !2944)
!2954 = !DILocation(line: 1697, column: 1, scope: !2837)
!2955 = !DILocation(line: 1623, column: 30, scope: !884)
!2956 = !DILocation(line: 1625, column: 11, scope: !891)
!2957 = !DILocation(line: 1625, column: 7, scope: !884)
!2958 = !DILocation(line: 1626, column: 14, scope: !889)
!2959 = !DILocation(line: 1626, column: 16, scope: !889)
!2960 = !DILocation(line: 1626, column: 9, scope: !890)
!2961 = !DILocation(line: 1627, column: 7, scope: !896)
!2962 = !DILocation(line: 1631, column: 5, scope: !896)
!2963 = !DILocation(line: 1632, column: 29, scope: !890)
!2964 = !DILocation(line: 1632, column: 5, scope: !890)
!2965 = !DILocation(line: 1633, column: 3, scope: !890)
!2966 = !DILocation(line: 1634, column: 1, scope: !884)
!2967 = distinct !DISubprogram(name: "tcp_setprio", scope: !3, file: !3, line: 1644, type: !2968, isLocal: false, isDefinition: true, scopeLine: 1645, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{null, !145, !91}
!2970 = !{!2971, !2972}
!2971 = !DILocalVariable(name: "pcb", arg: 1, scope: !2967, file: !3, line: 1644, type: !145)
!2972 = !DILocalVariable(name: "prio", arg: 2, scope: !2967, file: !3, line: 1644, type: !91)
!2973 = !DILocation(line: 1644, column: 29, scope: !2967)
!2974 = !DILocation(line: 1644, column: 39, scope: !2967)
!2975 = !DILocation(line: 1648, column: 3, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1648, column: 3)
!2977 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 1648, column: 3)
!2978 = !DILocation(line: 1648, column: 3, scope: !2977)
!2979 = !DILocation(line: 1648, column: 3, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1648, column: 3)
!2981 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 1648, column: 3)
!2982 = !DILocation(line: 1648, column: 3, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1648, column: 3)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1648, column: 3)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1648, column: 3)
!2986 = !DILocation(line: 1650, column: 8, scope: !2967)
!2987 = !DILocation(line: 1650, column: 13, scope: !2967)
!2988 = !DILocation(line: 1651, column: 1, scope: !2967)
!2989 = distinct !DISubprogram(name: "tcp_seg_copy", scope: !3, file: !3, line: 1662, type: !2990, isLocal: false, isDefinition: true, scopeLine: 1663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!198, !198}
!2992 = !{!2993, !2994}
!2993 = !DILocalVariable(name: "seg", arg: 1, scope: !2989, file: !3, line: 1662, type: !198)
!2994 = !DILocalVariable(name: "cseg", scope: !2989, file: !3, line: 1664, type: !198)
!2995 = !DILocation(line: 1662, column: 30, scope: !2989)
!2996 = !DILocation(line: 1666, column: 3, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1666, column: 3)
!2998 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1666, column: 3)
!2999 = !DILocation(line: 1666, column: 3, scope: !2998)
!3000 = !DILocation(line: 1666, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 1666, column: 3)
!3002 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1666, column: 3)
!3003 = !DILocation(line: 1666, column: 3, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1666, column: 3)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 1666, column: 3)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1666, column: 3)
!3007 = !DILocation(line: 1668, column: 28, scope: !2989)
!3008 = !DILocation(line: 1669, column: 12, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1669, column: 7)
!3010 = !DILocation(line: 1669, column: 7, scope: !2989)
!3011 = !DILocation(line: 1668, column: 10, scope: !2989)
!3012 = !DILocation(line: 1664, column: 19, scope: !2989)
!3013 = !DILocation(line: 1672, column: 3, scope: !2989)
!3014 = !DILocation(line: 1673, column: 18, scope: !2989)
!3015 = !DILocation(line: 1673, column: 3, scope: !2989)
!3016 = !DILocation(line: 1674, column: 3, scope: !2989)
!3017 = !DILocation(line: 0, scope: !2989)
!3018 = !DILocation(line: 1675, column: 1, scope: !2989)
!3019 = distinct !DISubprogram(name: "tcp_alloc", scope: !3, file: !3, line: 1834, type: !3020, isLocal: false, isDefinition: true, scopeLine: 1835, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!145, !91}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "prio", arg: 1, scope: !3019, file: !3, line: 1834, type: !91)
!3024 = !DILocalVariable(name: "pcb", scope: !3019, file: !3, line: 1836, type: !145)
!3025 = !DILocation(line: 1834, column: 16, scope: !3019)
!3026 = !DILocation(line: 1840, column: 27, scope: !3019)
!3027 = !DILocation(line: 1836, column: 19, scope: !3019)
!3028 = !DILocation(line: 1841, column: 11, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1841, column: 7)
!3030 = !DILocation(line: 1841, column: 7, scope: !3019)
!3031 = !DILocation(line: 1813, column: 25, scope: !3032, inlinedAt: !3037)
!3032 = distinct !DISubprogram(name: "tcp_handle_closepend", scope: !3, file: !3, line: 1811, type: !360, isLocal: true, isDefinition: true, scopeLine: 1812, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "pcb", scope: !3032, file: !3, line: 1813, type: !145)
!3035 = !DILocalVariable(name: "next", scope: !3036, file: !3, line: 1816, type: !145)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1815, column: 23)
!3037 = distinct !DILocation(line: 1843, column: 5, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1841, column: 20)
!3039 = !DILocation(line: 1813, column: 19, scope: !3032, inlinedAt: !3037)
!3040 = !DILocation(line: 1815, column: 14, scope: !3032, inlinedAt: !3037)
!3041 = !DILocation(line: 1815, column: 3, scope: !3032, inlinedAt: !3037)
!3042 = !DILocation(line: 1816, column: 33, scope: !3036, inlinedAt: !3037)
!3043 = !DILocation(line: 1816, column: 21, scope: !3036, inlinedAt: !3037)
!3044 = !DILocation(line: 1818, column: 14, scope: !3045, inlinedAt: !3037)
!3045 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 1818, column: 9)
!3046 = !DILocation(line: 1818, column: 20, scope: !3045, inlinedAt: !3037)
!3047 = !DILocation(line: 1818, column: 9, scope: !3036, inlinedAt: !3037)
!3048 = !DILocation(line: 1820, column: 7, scope: !3049, inlinedAt: !3037)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 1820, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1818, column: 36)
!3051 = !DILocation(line: 1821, column: 7, scope: !3050, inlinedAt: !3037)
!3052 = !DILocation(line: 1822, column: 5, scope: !3050, inlinedAt: !3037)
!3053 = distinct !{!3053, !3054, !3055}
!3054 = !DILocation(line: 1815, column: 3, scope: !3032)
!3055 = !DILocation(line: 1824, column: 3, scope: !3032)
!3056 = !DILocation(line: 1825, column: 1, scope: !3032, inlinedAt: !3037)
!3057 = !DILocalVariable(name: "inactivity", scope: !3058, file: !3, line: 1787, type: !95)
!3058 = distinct !DISubprogram(name: "tcp_kill_timewait", scope: !3, file: !3, line: 1784, type: !360, isLocal: true, isDefinition: true, scopeLine: 1785, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3059)
!3059 = !{!3060, !3061, !3057}
!3060 = !DILocalVariable(name: "pcb", scope: !3058, file: !3, line: 1786, type: !145)
!3061 = !DILocalVariable(name: "inactive", scope: !3058, file: !3, line: 1786, type: !145)
!3062 = !DILocation(line: 1787, column: 9, scope: !3058, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 1847, column: 5, scope: !3038)
!3064 = !DILocation(line: 1786, column: 25, scope: !3058, inlinedAt: !3063)
!3065 = !DILocation(line: 1786, column: 19, scope: !3058, inlinedAt: !3063)
!3066 = !DILocation(line: 0, scope: !3067, inlinedAt: !3063)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1792, column: 3)
!3068 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1792, column: 3)
!3069 = !DILocation(line: 1792, column: 31, scope: !3067, inlinedAt: !3063)
!3070 = !DILocation(line: 1792, column: 3, scope: !3068, inlinedAt: !3063)
!3071 = !DILocation(line: 1793, column: 34, scope: !3072, inlinedAt: !3063)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 1793, column: 9)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1792, column: 57)
!3074 = !DILocation(line: 1793, column: 27, scope: !3072, inlinedAt: !3063)
!3075 = !DILocation(line: 1793, column: 39, scope: !3072, inlinedAt: !3063)
!3076 = !DILocation(line: 1793, column: 9, scope: !3073, inlinedAt: !3063)
!3077 = !DILocation(line: 1792, column: 51, scope: !3067, inlinedAt: !3063)
!3078 = distinct !{!3078, !3079, !3080}
!3079 = !DILocation(line: 1792, column: 3, scope: !3068)
!3080 = !DILocation(line: 1797, column: 3, scope: !3068)
!3081 = !DILocation(line: 1798, column: 16, scope: !3082, inlinedAt: !3063)
!3082 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1798, column: 7)
!3083 = !DILocation(line: 1798, column: 7, scope: !3058, inlinedAt: !3063)
!3084 = !DILocation(line: 638, column: 27, scope: !1698, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 1801, column: 5, scope: !3086, inlinedAt: !3063)
!3086 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1798, column: 25)
!3087 = !DILocation(line: 640, column: 3, scope: !1698, inlinedAt: !3085)
!3088 = !DILocation(line: 641, column: 1, scope: !1698, inlinedAt: !3085)
!3089 = !DILocation(line: 1802, column: 3, scope: !3086, inlinedAt: !3063)
!3090 = !DILocation(line: 1803, column: 1, scope: !3058, inlinedAt: !3063)
!3091 = !DILocation(line: 1849, column: 29, scope: !3038)
!3092 = !DILocation(line: 1850, column: 13, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1850, column: 9)
!3094 = !DILocation(line: 1850, column: 9, scope: !3038)
!3095 = !DILocalVariable(name: "state", arg: 1, scope: !3096, file: !3, line: 1752, type: !5)
!3096 = distinct !DISubprogram(name: "tcp_kill_state", scope: !3, file: !3, line: 1752, type: !3097, isLocal: true, isDefinition: true, scopeLine: 1753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{null, !5}
!3099 = !{!3095, !3100, !3101, !3102}
!3100 = !DILocalVariable(name: "pcb", scope: !3096, file: !3, line: 1754, type: !145)
!3101 = !DILocalVariable(name: "inactive", scope: !3096, file: !3, line: 1754, type: !145)
!3102 = !DILocalVariable(name: "inactivity", scope: !3096, file: !3, line: 1755, type: !95)
!3103 = !DILocation(line: 1752, column: 31, scope: !3096, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 1853, column: 7, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1850, column: 22)
!3106 = !DILocation(line: 0, scope: !3107, inlinedAt: !3104)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1763, column: 3)
!3108 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1763, column: 3)
!3109 = !DILocation(line: 1755, column: 9, scope: !3096, inlinedAt: !3104)
!3110 = !DILocation(line: 1754, column: 25, scope: !3096, inlinedAt: !3104)
!3111 = !DILocation(line: 1754, column: 19, scope: !3096, inlinedAt: !3104)
!3112 = !DILocation(line: 1763, column: 35, scope: !3107, inlinedAt: !3104)
!3113 = !DILocation(line: 1763, column: 3, scope: !3108, inlinedAt: !3104)
!3114 = !DILocation(line: 1764, column: 14, scope: !3115, inlinedAt: !3104)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1764, column: 9)
!3116 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1763, column: 61)
!3117 = !DILocation(line: 1764, column: 20, scope: !3115, inlinedAt: !3104)
!3118 = !DILocation(line: 1764, column: 9, scope: !3116, inlinedAt: !3104)
!3119 = !DILocation(line: 1765, column: 36, scope: !3120, inlinedAt: !3104)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 1765, column: 11)
!3121 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1764, column: 30)
!3122 = !DILocation(line: 1765, column: 29, scope: !3120, inlinedAt: !3104)
!3123 = !DILocation(line: 1765, column: 41, scope: !3120, inlinedAt: !3104)
!3124 = !DILocation(line: 1765, column: 11, scope: !3121, inlinedAt: !3104)
!3125 = !DILocation(line: 0, scope: !3096, inlinedAt: !3104)
!3126 = !DILocation(line: 1763, column: 55, scope: !3107, inlinedAt: !3104)
!3127 = distinct !{!3127, !3128, !3129}
!3128 = !DILocation(line: 1763, column: 3, scope: !3108)
!3129 = !DILocation(line: 1770, column: 3, scope: !3108)
!3130 = !DILocation(line: 1771, column: 16, scope: !3131, inlinedAt: !3104)
!3131 = distinct !DILexicalBlock(scope: !3096, file: !3, line: 1771, column: 7)
!3132 = !DILocation(line: 1771, column: 7, scope: !3096, inlinedAt: !3104)
!3133 = !DILocation(line: 1775, column: 5, scope: !3134, inlinedAt: !3104)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 1771, column: 25)
!3135 = !DILocation(line: 1776, column: 3, scope: !3134, inlinedAt: !3104)
!3136 = !DILocation(line: 1777, column: 1, scope: !3096, inlinedAt: !3104)
!3137 = !DILocation(line: 1855, column: 31, scope: !3105)
!3138 = !DILocation(line: 1856, column: 15, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1856, column: 11)
!3140 = !DILocation(line: 1856, column: 11, scope: !3105)
!3141 = !DILocation(line: 1752, column: 31, scope: !3096, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 1859, column: 9, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1856, column: 24)
!3144 = !DILocation(line: 0, scope: !3107, inlinedAt: !3142)
!3145 = !DILocation(line: 1755, column: 9, scope: !3096, inlinedAt: !3142)
!3146 = !DILocation(line: 1754, column: 25, scope: !3096, inlinedAt: !3142)
!3147 = !DILocation(line: 1754, column: 19, scope: !3096, inlinedAt: !3142)
!3148 = !DILocation(line: 1763, column: 35, scope: !3107, inlinedAt: !3142)
!3149 = !DILocation(line: 1763, column: 3, scope: !3108, inlinedAt: !3142)
!3150 = !DILocation(line: 1764, column: 14, scope: !3115, inlinedAt: !3142)
!3151 = !DILocation(line: 1764, column: 20, scope: !3115, inlinedAt: !3142)
!3152 = !DILocation(line: 1764, column: 9, scope: !3116, inlinedAt: !3142)
!3153 = !DILocation(line: 1765, column: 36, scope: !3120, inlinedAt: !3142)
!3154 = !DILocation(line: 1765, column: 29, scope: !3120, inlinedAt: !3142)
!3155 = !DILocation(line: 1765, column: 41, scope: !3120, inlinedAt: !3142)
!3156 = !DILocation(line: 1765, column: 11, scope: !3121, inlinedAt: !3142)
!3157 = !DILocation(line: 0, scope: !3096, inlinedAt: !3142)
!3158 = !DILocation(line: 1763, column: 55, scope: !3107, inlinedAt: !3142)
!3159 = !DILocation(line: 1771, column: 16, scope: !3131, inlinedAt: !3142)
!3160 = !DILocation(line: 1771, column: 7, scope: !3096, inlinedAt: !3142)
!3161 = !DILocation(line: 1775, column: 5, scope: !3134, inlinedAt: !3142)
!3162 = !DILocation(line: 1776, column: 3, scope: !3134, inlinedAt: !3142)
!3163 = !DILocation(line: 1777, column: 1, scope: !3096, inlinedAt: !3142)
!3164 = !DILocation(line: 1861, column: 33, scope: !3143)
!3165 = !DILocation(line: 1862, column: 17, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 1862, column: 13)
!3167 = !DILocation(line: 1862, column: 13, scope: !3143)
!3168 = !DILocalVariable(name: "prio", arg: 1, scope: !3169, file: !3, line: 1706, type: !91)
!3169 = distinct !DISubprogram(name: "tcp_kill_prio", scope: !3, file: !3, line: 1706, type: !3170, isLocal: true, isDefinition: true, scopeLine: 1707, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !91}
!3172 = !{!3168, !3173, !3174, !3175, !3176}
!3173 = !DILocalVariable(name: "pcb", scope: !3169, file: !3, line: 1708, type: !145)
!3174 = !DILocalVariable(name: "inactive", scope: !3169, file: !3, line: 1708, type: !145)
!3175 = !DILocalVariable(name: "inactivity", scope: !3169, file: !3, line: 1709, type: !95)
!3176 = !DILocalVariable(name: "mprio", scope: !3169, file: !3, line: 1710, type: !91)
!3177 = !DILocation(line: 1706, column: 20, scope: !3169, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1865, column: 11, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 1862, column: 26)
!3180 = !DILocation(line: 1712, column: 11, scope: !3169, inlinedAt: !3178)
!3181 = !DILocation(line: 1710, column: 8, scope: !3169, inlinedAt: !3178)
!3182 = !DILocation(line: 1717, column: 13, scope: !3183, inlinedAt: !3178)
!3183 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1717, column: 7)
!3184 = !DILocation(line: 1717, column: 7, scope: !3169, inlinedAt: !3178)
!3185 = !DILocation(line: 1709, column: 9, scope: !3169, inlinedAt: !3178)
!3186 = !DILocation(line: 1708, column: 25, scope: !3169, inlinedAt: !3178)
!3187 = !DILocation(line: 1708, column: 19, scope: !3169, inlinedAt: !3178)
!3188 = !DILocation(line: 0, scope: !3189, inlinedAt: !3178)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 1730, column: 3)
!3190 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1730, column: 3)
!3191 = !DILocation(line: 1730, column: 35, scope: !3189, inlinedAt: !3178)
!3192 = !DILocation(line: 1730, column: 3, scope: !3190, inlinedAt: !3178)
!3193 = !DILocation(line: 1726, column: 8, scope: !3169, inlinedAt: !3178)
!3194 = !DILocation(line: 1732, column: 15, scope: !3195, inlinedAt: !3178)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 1732, column: 9)
!3196 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 1730, column: 61)
!3197 = !DILocation(line: 1732, column: 20, scope: !3195, inlinedAt: !3178)
!3198 = !DILocation(line: 1732, column: 29, scope: !3195, inlinedAt: !3178)
!3199 = !DILocation(line: 1735, column: 37, scope: !3200, inlinedAt: !3178)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1734, column: 82)
!3201 = !DILocation(line: 1735, column: 30, scope: !3200, inlinedAt: !3178)
!3202 = !DILocation(line: 1734, column: 21, scope: !3195, inlinedAt: !3178)
!3203 = !DILocation(line: 1734, column: 31, scope: !3195, inlinedAt: !3178)
!3204 = !DILocation(line: 1734, column: 60, scope: !3195, inlinedAt: !3178)
!3205 = !DILocation(line: 1734, column: 53, scope: !3195, inlinedAt: !3178)
!3206 = !DILocation(line: 1734, column: 65, scope: !3195, inlinedAt: !3178)
!3207 = !DILocation(line: 1732, column: 9, scope: !3196, inlinedAt: !3178)
!3208 = !DILocation(line: 1738, column: 5, scope: !3200, inlinedAt: !3178)
!3209 = !DILocation(line: 0, scope: !3169, inlinedAt: !3178)
!3210 = !DILocation(line: 1730, column: 55, scope: !3189, inlinedAt: !3178)
!3211 = distinct !{!3211, !3212, !3213}
!3212 = !DILocation(line: 1730, column: 3, scope: !3190)
!3213 = !DILocation(line: 1739, column: 3, scope: !3190)
!3214 = !DILocation(line: 1740, column: 16, scope: !3215, inlinedAt: !3178)
!3215 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 1740, column: 7)
!3216 = !DILocation(line: 1740, column: 7, scope: !3169, inlinedAt: !3178)
!3217 = !DILocation(line: 638, column: 27, scope: !1698, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 1743, column: 5, scope: !3219, inlinedAt: !3178)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1740, column: 25)
!3220 = !DILocation(line: 640, column: 3, scope: !1698, inlinedAt: !3218)
!3221 = !DILocation(line: 641, column: 1, scope: !1698, inlinedAt: !3218)
!3222 = !DILocation(line: 1744, column: 3, scope: !3219, inlinedAt: !3178)
!3223 = !DILocation(line: 0, scope: !3019)
!3224 = !DILocation(line: 1888, column: 7, scope: !3019)
!3225 = !DILocation(line: 1745, column: 1, scope: !3169, inlinedAt: !3178)
!3226 = !DILocation(line: 1867, column: 35, scope: !3179)
!3227 = !DILocation(line: 1888, column: 11, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1888, column: 7)
!3229 = !DILocation(line: 1890, column: 5, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 1888, column: 20)
!3231 = !DILocation(line: 1891, column: 10, scope: !3230)
!3232 = !DILocation(line: 1891, column: 15, scope: !3230)
!3233 = !DILocation(line: 1892, column: 10, scope: !3230)
!3234 = !DILocation(line: 1892, column: 18, scope: !3230)
!3235 = !{!458, !415, i64 168}
!3236 = !DILocation(line: 1895, column: 25, scope: !3230)
!3237 = !DILocation(line: 1895, column: 37, scope: !3230)
!3238 = !DILocation(line: 1895, column: 10, scope: !3230)
!3239 = !DILocation(line: 1895, column: 18, scope: !3230)
!3240 = !DILocation(line: 1896, column: 10, scope: !3230)
!3241 = !DILocation(line: 1896, column: 14, scope: !3230)
!3242 = !DILocation(line: 1899, column: 10, scope: !3230)
!3243 = !DILocation(line: 1899, column: 14, scope: !3230)
!3244 = !DILocation(line: 1900, column: 10, scope: !3230)
!3245 = !DILocation(line: 1900, column: 14, scope: !3230)
!3246 = !DILocation(line: 1901, column: 10, scope: !3230)
!3247 = !DILocation(line: 1901, column: 13, scope: !3230)
!3248 = !DILocation(line: 1902, column: 10, scope: !3230)
!3249 = !DILocation(line: 1902, column: 16, scope: !3230)
!3250 = !DILocation(line: 1903, column: 10, scope: !3230)
!3251 = !DILocation(line: 1903, column: 15, scope: !3230)
!3252 = !DILocation(line: 1904, column: 16, scope: !3230)
!3253 = !DILocation(line: 1904, column: 10, scope: !3230)
!3254 = !DILocation(line: 1904, column: 14, scope: !3230)
!3255 = !DILocation(line: 1905, column: 23, scope: !3230)
!3256 = !DILocation(line: 1905, column: 10, scope: !3230)
!3257 = !DILocation(line: 1905, column: 21, scope: !3230)
!3258 = !DILocation(line: 1913, column: 10, scope: !3230)
!3259 = !DILocation(line: 1913, column: 19, scope: !3230)
!3260 = !{!458, !415, i64 136}
!3261 = !DILocation(line: 1916, column: 10, scope: !3230)
!3262 = !DILocation(line: 1916, column: 15, scope: !3230)
!3263 = !DILocation(line: 1920, column: 10, scope: !3230)
!3264 = !DILocation(line: 1920, column: 21, scope: !3230)
!3265 = !DILocation(line: 1926, column: 3, scope: !3230)
!3266 = !DILocation(line: 1927, column: 3, scope: !3019)
!3267 = distinct !DISubprogram(name: "tcp_new", scope: !3, file: !3, line: 1945, type: !3268, isLocal: false, isDefinition: true, scopeLine: 1946, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !362)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!145}
!3270 = !DILocation(line: 1947, column: 10, scope: !3267)
!3271 = !DILocation(line: 1947, column: 3, scope: !3267)
!3272 = distinct !DISubprogram(name: "tcp_new_ip_type", scope: !3, file: !3, line: 1962, type: !3020, isLocal: false, isDefinition: true, scopeLine: 1963, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3273)
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "type", arg: 1, scope: !3272, file: !3, line: 1962, type: !91)
!3275 = !DILocalVariable(name: "pcb", scope: !3272, file: !3, line: 1964, type: !145)
!3276 = !DILocation(line: 1962, column: 22, scope: !3272)
!3277 = !DILocation(line: 1965, column: 9, scope: !3272)
!3278 = !DILocation(line: 1964, column: 19, scope: !3272)
!3279 = !DILocation(line: 1967, column: 11, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1967, column: 7)
!3281 = !DILocation(line: 1967, column: 7, scope: !3272)
!3282 = !DILocation(line: 1968, column: 5, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 1968, column: 5)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 1967, column: 20)
!3285 = !DILocation(line: 1969, column: 5, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 1969, column: 5)
!3287 = !DILocation(line: 1970, column: 3, scope: !3284)
!3288 = !DILocation(line: 1974, column: 3, scope: !3272)
!3289 = distinct !DISubprogram(name: "tcp_arg", scope: !3, file: !3, line: 1988, type: !3290, isLocal: false, isDefinition: true, scopeLine: 1989, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3292)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null, !145, !88}
!3292 = !{!3293, !3294}
!3293 = !DILocalVariable(name: "pcb", arg: 1, scope: !3289, file: !3, line: 1988, type: !145)
!3294 = !DILocalVariable(name: "arg", arg: 2, scope: !3289, file: !3, line: 1988, type: !88)
!3295 = !DILocation(line: 1988, column: 25, scope: !3289)
!3296 = !DILocation(line: 1988, column: 36, scope: !3289)
!3297 = !DILocation(line: 1993, column: 11, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1993, column: 7)
!3299 = !DILocation(line: 1993, column: 7, scope: !3289)
!3300 = !DILocation(line: 1994, column: 10, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 1993, column: 20)
!3302 = !DILocation(line: 1994, column: 23, scope: !3301)
!3303 = !DILocation(line: 1995, column: 3, scope: !3301)
!3304 = !DILocation(line: 1996, column: 1, scope: !3289)
!3305 = distinct !DISubprogram(name: "tcp_recv", scope: !3, file: !3, line: 2011, type: !3306, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !145, !241}
!3308 = !{!3309, !3310}
!3309 = !DILocalVariable(name: "pcb", arg: 1, scope: !3305, file: !3, line: 2011, type: !145)
!3310 = !DILocalVariable(name: "recv", arg: 2, scope: !3305, file: !3, line: 2011, type: !241)
!3311 = !DILocation(line: 2011, column: 26, scope: !3305)
!3312 = !DILocation(line: 2011, column: 43, scope: !3305)
!3313 = !DILocation(line: 2014, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 2014, column: 7)
!3315 = !DILocation(line: 2014, column: 7, scope: !3305)
!3316 = !DILocation(line: 2015, column: 5, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !3, line: 2015, column: 5)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 2015, column: 5)
!3319 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 2014, column: 20)
!3320 = !DILocation(line: 2015, column: 5, scope: !3318)
!3321 = !DILocation(line: 2015, column: 5, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 2015, column: 5)
!3323 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 2015, column: 5)
!3324 = !DILocation(line: 2015, column: 5, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 2015, column: 5)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 2015, column: 5)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 2015, column: 5)
!3328 = !DILocation(line: 2016, column: 10, scope: !3319)
!3329 = !DILocation(line: 2016, column: 15, scope: !3319)
!3330 = !DILocation(line: 2017, column: 3, scope: !3319)
!3331 = !DILocation(line: 2018, column: 1, scope: !3305)
!3332 = distinct !DISubprogram(name: "tcp_sent", scope: !3, file: !3, line: 2031, type: !3333, isLocal: false, isDefinition: true, scopeLine: 2032, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !145, !236}
!3335 = !{!3336, !3337}
!3336 = !DILocalVariable(name: "pcb", arg: 1, scope: !3332, file: !3, line: 2031, type: !145)
!3337 = !DILocalVariable(name: "sent", arg: 2, scope: !3332, file: !3, line: 2031, type: !236)
!3338 = !DILocation(line: 2031, column: 26, scope: !3332)
!3339 = !DILocation(line: 2031, column: 43, scope: !3332)
!3340 = !DILocation(line: 2034, column: 11, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3332, file: !3, line: 2034, column: 7)
!3342 = !DILocation(line: 2034, column: 7, scope: !3332)
!3343 = !DILocation(line: 2035, column: 5, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !3, line: 2035, column: 5)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 2035, column: 5)
!3346 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 2034, column: 20)
!3347 = !DILocation(line: 2035, column: 5, scope: !3345)
!3348 = !DILocation(line: 2035, column: 5, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 2035, column: 5)
!3350 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 2035, column: 5)
!3351 = !DILocation(line: 2035, column: 5, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !3, line: 2035, column: 5)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 2035, column: 5)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !3, line: 2035, column: 5)
!3355 = !DILocation(line: 2036, column: 10, scope: !3346)
!3356 = !DILocation(line: 2036, column: 15, scope: !3346)
!3357 = !{!458, !460, i64 224}
!3358 = !DILocation(line: 2037, column: 3, scope: !3346)
!3359 = !DILocation(line: 2038, column: 1, scope: !3332)
!3360 = distinct !DISubprogram(name: "tcp_err", scope: !3, file: !3, line: 2057, type: !3361, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !145, !253}
!3363 = !{!3364, !3365}
!3364 = !DILocalVariable(name: "pcb", arg: 1, scope: !3360, file: !3, line: 2057, type: !145)
!3365 = !DILocalVariable(name: "err", arg: 2, scope: !3360, file: !3, line: 2057, type: !253)
!3366 = !DILocation(line: 2057, column: 25, scope: !3360)
!3367 = !DILocation(line: 2057, column: 41, scope: !3360)
!3368 = !DILocation(line: 2060, column: 11, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 2060, column: 7)
!3370 = !DILocation(line: 2060, column: 7, scope: !3360)
!3371 = !DILocation(line: 2061, column: 5, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 2061, column: 5)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 2061, column: 5)
!3374 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 2060, column: 20)
!3375 = !DILocation(line: 2061, column: 5, scope: !3373)
!3376 = !DILocation(line: 2061, column: 5, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 2061, column: 5)
!3378 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 2061, column: 5)
!3379 = !DILocation(line: 2061, column: 5, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 2061, column: 5)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 2061, column: 5)
!3382 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 2061, column: 5)
!3383 = !DILocation(line: 2062, column: 10, scope: !3374)
!3384 = !DILocation(line: 2062, column: 15, scope: !3374)
!3385 = !DILocation(line: 2063, column: 3, scope: !3374)
!3386 = !DILocation(line: 2064, column: 1, scope: !3360)
!3387 = distinct !DISubprogram(name: "tcp_accept", scope: !3, file: !3, line: 2076, type: !3388, isLocal: false, isDefinition: true, scopeLine: 2077, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3390)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !145, !136}
!3390 = !{!3391, !3392, !3393}
!3391 = !DILocalVariable(name: "pcb", arg: 1, scope: !3387, file: !3, line: 2076, type: !145)
!3392 = !DILocalVariable(name: "accept", arg: 2, scope: !3387, file: !3, line: 2076, type: !136)
!3393 = !DILocalVariable(name: "lpcb", scope: !3394, file: !3, line: 2080, type: !98)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 2079, column: 48)
!3395 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 2079, column: 7)
!3396 = !DILocation(line: 2076, column: 28, scope: !3387)
!3397 = !DILocation(line: 2076, column: 47, scope: !3387)
!3398 = !DILocation(line: 2079, column: 12, scope: !3395)
!3399 = !DILocation(line: 2079, column: 21, scope: !3395)
!3400 = !DILocation(line: 2079, column: 30, scope: !3395)
!3401 = !DILocation(line: 2079, column: 36, scope: !3395)
!3402 = !DILocation(line: 2079, column: 7, scope: !3387)
!3403 = !DILocation(line: 2080, column: 28, scope: !3394)
!3404 = !DILocation(line: 2081, column: 11, scope: !3394)
!3405 = !DILocation(line: 2081, column: 18, scope: !3394)
!3406 = !DILocation(line: 2082, column: 3, scope: !3394)
!3407 = !DILocation(line: 2083, column: 1, scope: !3387)
!3408 = distinct !DISubprogram(name: "tcp_poll", scope: !3, file: !3, line: 2105, type: !3409, isLocal: false, isDefinition: true, scopeLine: 2106, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3411)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{null, !145, !248, !91}
!3411 = !{!3412, !3413, !3414}
!3412 = !DILocalVariable(name: "pcb", arg: 1, scope: !3408, file: !3, line: 2105, type: !145)
!3413 = !DILocalVariable(name: "poll", arg: 2, scope: !3408, file: !3, line: 2105, type: !248)
!3414 = !DILocalVariable(name: "interval", arg: 3, scope: !3408, file: !3, line: 2105, type: !91)
!3415 = !DILocation(line: 2105, column: 26, scope: !3408)
!3416 = !DILocation(line: 2105, column: 43, scope: !3408)
!3417 = !DILocation(line: 2105, column: 54, scope: !3408)
!3418 = !DILocation(line: 2109, column: 3, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 2109, column: 3)
!3420 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 2109, column: 3)
!3421 = !DILocation(line: 2109, column: 3, scope: !3420)
!3422 = !DILocation(line: 2109, column: 3, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 2109, column: 3)
!3424 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 2109, column: 3)
!3425 = !DILocation(line: 2109, column: 3, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 2109, column: 3)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 2109, column: 3)
!3428 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 2109, column: 3)
!3429 = !DILocation(line: 2110, column: 3, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !3, line: 2110, column: 3)
!3431 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 2110, column: 3)
!3432 = !DILocation(line: 2110, column: 3, scope: !3431)
!3433 = !DILocation(line: 2110, column: 3, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 2110, column: 3)
!3435 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 2110, column: 3)
!3436 = !DILocation(line: 2110, column: 3, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 2110, column: 3)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 2110, column: 3)
!3439 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 2110, column: 3)
!3440 = !DILocation(line: 2113, column: 8, scope: !3408)
!3441 = !DILocation(line: 2113, column: 13, scope: !3408)
!3442 = !DILocation(line: 2117, column: 8, scope: !3408)
!3443 = !DILocation(line: 2117, column: 21, scope: !3408)
!3444 = !DILocation(line: 2118, column: 1, scope: !3408)
!3445 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed", scope: !3, file: !3, line: 2331, type: !3446, isLocal: false, isDefinition: true, scopeLine: 2332, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !267, !267}
!3448 = !{!3449, !3450, !3451}
!3449 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3445, file: !3, line: 2331, type: !267)
!3450 = !DILocalVariable(name: "new_addr", arg: 2, scope: !3445, file: !3, line: 2331, type: !267)
!3451 = !DILocalVariable(name: "lpcb", scope: !3445, file: !3, line: 2333, type: !98)
!3452 = !DILocation(line: 2331, column: 44, scope: !3445)
!3453 = !DILocation(line: 2331, column: 71, scope: !3445)
!3454 = !DILocation(line: 2335, column: 8, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 2335, column: 7)
!3456 = !DILocation(line: 2335, column: 7, scope: !3445)
!3457 = !DILocation(line: 2336, column: 49, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 2335, column: 33)
!3459 = !DILocalVariable(name: "old_addr", arg: 1, scope: !3460, file: !3, line: 2299, type: !267)
!3460 = distinct !DISubprogram(name: "tcp_netif_ip_addr_changed_pcblist", scope: !3, file: !3, line: 2299, type: !3461, isLocal: true, isDefinition: true, scopeLine: 2300, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{null, !267, !145}
!3463 = !{!3459, !3464, !3465, !3466}
!3464 = !DILocalVariable(name: "pcb_list", arg: 2, scope: !3460, file: !3, line: 2299, type: !145)
!3465 = !DILocalVariable(name: "pcb", scope: !3460, file: !3, line: 2301, type: !145)
!3466 = !DILocalVariable(name: "next", scope: !3467, file: !3, line: 2315, type: !145)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 2313, column: 10)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 2308, column: 9)
!3469 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 2306, column: 23)
!3470 = !DILocation(line: 2299, column: 52, scope: !3460, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 2336, column: 5, scope: !3458)
!3472 = !DILocation(line: 2299, column: 78, scope: !3460, inlinedAt: !3471)
!3473 = !DILocation(line: 2301, column: 19, scope: !3460, inlinedAt: !3471)
!3474 = !DILocation(line: 2306, column: 14, scope: !3460, inlinedAt: !3471)
!3475 = !DILocation(line: 2306, column: 3, scope: !3460, inlinedAt: !3471)
!3476 = !DILocation(line: 2308, column: 9, scope: !3468, inlinedAt: !3471)
!3477 = !DILocation(line: 2308, column: 9, scope: !3469, inlinedAt: !3471)
!3478 = !DILocation(line: 2315, column: 35, scope: !3467, inlinedAt: !3471)
!3479 = !DILocation(line: 2315, column: 23, scope: !3467, inlinedAt: !3471)
!3480 = !DILocation(line: 638, column: 27, scope: !1698, inlinedAt: !3481)
!3481 = distinct !DILocation(line: 2317, column: 7, scope: !3467, inlinedAt: !3471)
!3482 = !DILocation(line: 640, column: 3, scope: !1698, inlinedAt: !3481)
!3483 = !DILocation(line: 641, column: 1, scope: !1698, inlinedAt: !3481)
!3484 = !DILocation(line: 2319, column: 5, scope: !3467, inlinedAt: !3471)
!3485 = !DILocation(line: 2320, column: 18, scope: !3486, inlinedAt: !3471)
!3486 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 2319, column: 12)
!3487 = !DILocation(line: 0, scope: !3467, inlinedAt: !3471)
!3488 = distinct !{!3488, !3489, !3490}
!3489 = !DILocation(line: 2306, column: 3, scope: !3460)
!3490 = !DILocation(line: 2322, column: 3, scope: !3460)
!3491 = !DILocation(line: 2323, column: 1, scope: !3460, inlinedAt: !3471)
!3492 = !DILocation(line: 2337, column: 49, scope: !3458)
!3493 = !DILocation(line: 2299, column: 52, scope: !3460, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 2337, column: 5, scope: !3458)
!3495 = !DILocation(line: 2299, column: 78, scope: !3460, inlinedAt: !3494)
!3496 = !DILocation(line: 2301, column: 19, scope: !3460, inlinedAt: !3494)
!3497 = !DILocation(line: 2306, column: 14, scope: !3460, inlinedAt: !3494)
!3498 = !DILocation(line: 2306, column: 3, scope: !3460, inlinedAt: !3494)
!3499 = !DILocation(line: 2308, column: 9, scope: !3468, inlinedAt: !3494)
!3500 = !DILocation(line: 2308, column: 9, scope: !3469, inlinedAt: !3494)
!3501 = !DILocation(line: 2315, column: 35, scope: !3467, inlinedAt: !3494)
!3502 = !DILocation(line: 2315, column: 23, scope: !3467, inlinedAt: !3494)
!3503 = !DILocation(line: 638, column: 27, scope: !1698, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 2317, column: 7, scope: !3467, inlinedAt: !3494)
!3505 = !DILocation(line: 640, column: 3, scope: !1698, inlinedAt: !3504)
!3506 = !DILocation(line: 641, column: 1, scope: !1698, inlinedAt: !3504)
!3507 = !DILocation(line: 2319, column: 5, scope: !3467, inlinedAt: !3494)
!3508 = !DILocation(line: 2320, column: 18, scope: !3486, inlinedAt: !3494)
!3509 = !DILocation(line: 0, scope: !3467, inlinedAt: !3494)
!3510 = !DILocation(line: 2323, column: 1, scope: !3460, inlinedAt: !3494)
!3511 = !DILocation(line: 2339, column: 10, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 2339, column: 9)
!3513 = !DILocation(line: 2339, column: 9, scope: !3458)
!3514 = !DILocation(line: 2333, column: 26, scope: !3445)
!3515 = !DILocation(line: 0, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 2341, column: 7)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !3, line: 2341, column: 7)
!3518 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 2339, column: 35)
!3519 = !DILocation(line: 2341, column: 53, scope: !3516)
!3520 = !DILocation(line: 2341, column: 7, scope: !3517)
!3521 = !DILocation(line: 2343, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 2343, column: 13)
!3523 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 2341, column: 81)
!3524 = !DILocation(line: 2343, column: 13, scope: !3523)
!3525 = !DILocation(line: 2346, column: 11, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 2346, column: 11)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 2346, column: 11)
!3528 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 2343, column: 53)
!3529 = !DILocation(line: 2346, column: 11, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 2346, column: 11)
!3531 = !DILocation(line: 2346, column: 11, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !3, line: 2346, column: 11)
!3533 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 2346, column: 11)
!3534 = !DILocation(line: 2346, column: 11, scope: !3527)
!3535 = !DILocation(line: 2346, column: 11, scope: !3533)
!3536 = !DILocation(line: 2346, column: 11, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 2346, column: 11)
!3538 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 2346, column: 11)
!3539 = !DILocation(line: 2341, column: 75, scope: !3516)
!3540 = distinct !{!3540, !3520, !3541}
!3541 = !DILocation(line: 2348, column: 7, scope: !3517)
!3542 = !DILocation(line: 2351, column: 1, scope: !3445)
!3543 = distinct !DISubprogram(name: "tcp_debug_state_str", scope: !3, file: !3, line: 2354, type: !3544, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3546)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!309, !5}
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "s", arg: 1, scope: !3543, file: !3, line: 2354, type: !5)
!3548 = !DILocation(line: 2354, column: 36, scope: !3543)
!3549 = !DILocation(line: 2356, column: 10, scope: !3543)
!3550 = !DILocation(line: 2356, column: 3, scope: !3543)
!3551 = distinct !DISubprogram(name: "tcp_tcp_get_tcp_addrinfo", scope: !3, file: !3, line: 2360, type: !3552, isLocal: false, isDefinition: true, scopeLine: 2361, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3556)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!140, !145, !50, !3554, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!3556 = !{!3557, !3558, !3559, !3560}
!3557 = !DILocalVariable(name: "pcb", arg: 1, scope: !3551, file: !3, line: 2360, type: !145)
!3558 = !DILocalVariable(name: "local", arg: 2, scope: !3551, file: !3, line: 2360, type: !50)
!3559 = !DILocalVariable(name: "addr", arg: 3, scope: !3551, file: !3, line: 2360, type: !3554)
!3560 = !DILocalVariable(name: "port", arg: 4, scope: !3551, file: !3, line: 2360, type: !3555)
!3561 = !DILocation(line: 2360, column: 42, scope: !3551)
!3562 = !DILocation(line: 2360, column: 51, scope: !3551)
!3563 = !DILocation(line: 2360, column: 69, scope: !3551)
!3564 = !DILocation(line: 2360, column: 82, scope: !3551)
!3565 = !DILocation(line: 2362, column: 7, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 2362, column: 7)
!3567 = !DILocation(line: 2362, column: 7, scope: !3551)
!3568 = !DILocation(line: 2363, column: 9, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 2363, column: 9)
!3570 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 2362, column: 12)
!3571 = !DILocation(line: 0, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2371, column: 11)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 2370, column: 12)
!3574 = !DILocation(line: 2363, column: 9, scope: !3570)
!3575 = !DILocation(line: 2364, column: 11, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 2363, column: 16)
!3577 = !DILocation(line: 2365, column: 22, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 2364, column: 17)
!3579 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 2364, column: 11)
!3580 = !{i64 0, i64 16, !485, i64 16, i64 1, !485, i64 0, i64 4, !414, i64 20, i64 1, !485}
!3581 = !DILocation(line: 2366, column: 7, scope: !3578)
!3582 = !DILocation(line: 2367, column: 11, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3576, file: !3, line: 2367, column: 11)
!3584 = !DILocation(line: 2367, column: 11, scope: !3576)
!3585 = !DILocation(line: 2368, column: 22, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 2367, column: 17)
!3587 = !DILocation(line: 2368, column: 15, scope: !3586)
!3588 = !DILocation(line: 2369, column: 7, scope: !3586)
!3589 = !DILocation(line: 2371, column: 11, scope: !3573)
!3590 = !DILocation(line: 2372, column: 22, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 2371, column: 17)
!3592 = !DILocation(line: 2373, column: 7, scope: !3591)
!3593 = !DILocation(line: 2374, column: 11, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2374, column: 11)
!3595 = !DILocation(line: 2374, column: 11, scope: !3573)
!3596 = !DILocation(line: 2375, column: 22, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3594, file: !3, line: 2374, column: 17)
!3598 = !DILocation(line: 2375, column: 15, scope: !3597)
!3599 = !DILocation(line: 2376, column: 7, scope: !3597)
!3600 = !DILocation(line: 0, scope: !3551)
!3601 = !DILocation(line: 2381, column: 1, scope: !3551)
!3602 = !DILocation(line: 65, column: 11, scope: !400)
!3603 = !DILocation(line: 62, column: 16, scope: !400)
!3604 = !DILocation(line: 66, column: 8, scope: !400)
!3605 = !DILocation(line: 63, column: 8, scope: !400)
!3606 = !DILocation(line: 67, column: 2, scope: !400)
!3607 = !DILocation(line: 69, column: 2, scope: !400)
